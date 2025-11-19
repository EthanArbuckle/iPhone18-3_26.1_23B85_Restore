uint64_t sub_1D1AF9740()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[35];
  swift_willThrow();

  v6 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v7 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v8 = v0[40];
    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[29];

    sub_1D1E6706C();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[30] + 8))(v0[31], v0[29]);
      v12 = "";
    }

    v13 = v0[35];
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v6, v7, v15, "MediaSetPowerState", v12, v14, 2u);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  v17 = v0[41];
  v16 = v0[42];
  v18 = v0[35];
  v19 = v0[33];
  v20 = v0[28];
  v31 = v0[27];
  v21 = v0[22];
  v22 = v0[23];
  v23 = v0[19];

  v17(v18, v19);
  v24 = *(v21 + 144);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v26 = [v23 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v20 + v25) = sub_1D1785BE4(v27);
  swift_storeEnumTagMultiPayload();
  v28 = swift_task_alloc();
  v0[45] = v28;
  *v28 = v0;
  v28[1] = sub_1D1AF99B8;
  v29 = v0[28];

  return sub_1D1AB6894(v29, 0, 0, 0, 0);
}

uint64_t sub_1D1AF99B8(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 368) = a1;

  sub_1D1AFB0C4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AF9AEC, 0, 0);
}

uint64_t sub_1D1AF9AEC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 208);
  v3 = [*(v0 + 152) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v0 + 368);
  if (*(v1 + 16))
  {
    v5 = sub_1D1742188(*(v0 + 208));
    v6 = *(v0 + 352);
    v7 = *(v0 + 320);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 192);
    v11 = *(v0 + 144);
    if (v12)
    {
      v13 = v5;
      v14 = *(*(v0 + 368) + 56);
      v36 = *(v0 + 208);
      v37 = type metadata accessor for StateSnapshot(0);
      v15 = v11;
      v16 = *(v37 - 8);
      sub_1D1AFB124(v14 + *(v16 + 72) * v13, v15, type metadata accessor for StateSnapshot);

      (*(v9 + 8))(v36, v10);

      (*(v16 + 56))(v15, 0, 1, v37);
    }

    else
    {
      v24 = *(v0 + 320);

      (*(v9 + 8))(v8, v10);
      v25 = type metadata accessor for StateSnapshot(0);
      (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    }
  }

  else
  {
    v17 = *(v0 + 352);
    v18 = *(v0 + 320);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v21 = *(v0 + 192);
    v22 = *(v0 + 144);

    (*(v20 + 8))(v19, v21);
    v23 = type metadata accessor for StateSnapshot(0);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  }

  v27 = *(v0 + 296);
  v26 = *(v0 + 304);
  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v31 = *(v0 + 248);
  v30 = *(v0 + 256);
  v32 = *(v0 + 224);
  v33 = *(v0 + 208);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D1AF9DC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D17C4BFC;

  return sub_1D1AF16E8(a1, a2, a3, a4, a5, v14, a7);
}

void sub_1D1AF9EB0(unint64_t a1, unint64_t *a2, unint64_t a3)
{
  v39 = sub_1D1E66A7C();
  v33 = *(v39 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_27:
    v9 = sub_1D1E6873C();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v37 = a1 & 0xFFFFFFFFFFFFFF8;
      v38 = a1 & 0xC000000000000001;
      v32[2] = v33 + 16;
      v35 = (v33 + 8);
      v36 = a1;
      v34 = v9;
      do
      {
        if (v38)
        {
          v13 = MEMORY[0x1D3891EF0](v10, a1);
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v10 >= *(v37 + 16))
          {
            goto LABEL_24;
          }

          v13 = *(a1 + 8 * v10 + 32);
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v40 = v14;
        v15 = v13;
        v16 = [v13 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_beginAccess();
        v17 = a3;
        v18 = a3;
        v19 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *a2;
        a1 = v41;
        v21 = a2;
        *a2 = 0x8000000000000000;
        a2 = v8;
        a3 = sub_1D1742188(v8);
        v23 = *(a1 + 16);
        v24 = (v22 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_25;
        }

        v26 = v22;
        if (*(a1 + 24) >= v25)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            a1 = v41;
            if (v22)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1D173C4C0();
            a1 = v41;
            if (v26)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1D172E458(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_1D1742188(a2);
          if ((v26 & 1) != (v28 & 1))
          {
            sub_1D1E690FC();
            __break(1u);
            return;
          }

          a3 = v27;
          a1 = v41;
          if (v26)
          {
LABEL_4:
            v11 = *(a1 + 56);
            v12 = *(v11 + 8 * a3);
            *(v11 + 8 * a3) = v17;
            a3 = v17;

            v8 = a2;
            goto LABEL_5;
          }
        }

        *(a1 + 8 * (a3 >> 6) + 64) |= 1 << a3;
        v8 = a2;
        (*(v33 + 16))(*(a1 + 48) + *(v33 + 72) * a3, a2, v39);
        *(*(a1 + 56) + 8 * a3) = v17;
        v29 = *(a1 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_26;
        }

        a3 = v17;
        *(a1 + 16) = v31;
LABEL_5:
        (*v35)(v8, v39);
        a2 = v21;
        *v21 = a1;
        swift_endAccess();

        ++v10;
        a1 = v36;
      }

      while (v40 != v34);
    }
  }
}

uint64_t sub_1D1AFA21C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1AFA264(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = (a1 + *(type metadata accessor for StaticLightProfile() + 24));
  v4 = *v3;
  v5 = v3[1];
  if (v5 == 2)
  {
    v5 = v4;
  }

  return (v2 ^ v5) & 1;
}

uint64_t sub_1D1AFA2C0(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_1D17560EC(v5, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_1D1AFA32C(uint64_t a1)
{
  v3 = v2;
  v4 = *(v1 + 32);
  v15 = *(v1 + 40);
  v5 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + v6);
  v12 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1AF239C(a1, v7, v8, v9, v10, v1 + v5, v11);
}

uint64_t sub_1D1AFA488(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v15 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 88);
  v12 = *(v2 + 32);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1AF6704(a1, a2, v5, v6, v12, v7, v8, v9);
}

uint64_t sub_1D1AFA594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v10 = *(v1 + 88);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1AF6F64(a1, v4, v5, v6, v7, v11, v8, v9);
}

unint64_t sub_1D1AFA694()
{
  result = qword_1EC64A9D8;
  if (!qword_1EC64A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A9D8);
  }

  return result;
}

uint64_t sub_1D1AFA6E8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1AF8080(v6, a1, v4, v5, v7, v8, v9);
}

uint64_t sub_1D1AFA7C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 72);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4BFC;

  return sub_1D1AF7688(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D1AFA8B8(uint64_t a1)
{
  v16 = *(v1 + 16);
  v14 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1AF7B04(a1, v16, v14, v4, v5, v6, v7, v9);
}

uint64_t sub_1D1AFA9E8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 81) = a4;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1AFAA10, 0, 0);
}

uint64_t sub_1D1AFAA10()
{
  v1 = *(v0 + 81);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v0 + 40) = v6;
  *(v6 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v7 = swift_allocObject();
  *(v0 + 48) = v7;
  *(v7 + 16) = MEMORY[0x1E69E7CD0];
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *(v8 + 16) = "LightProfileSetNaturalLightEnabled";
  *(v8 + 24) = 34;
  *(v8 + 32) = 2;
  *(v8 + 40) = v3;
  *(v8 + 48) = &unk_1D1E97590;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *(v8 + 80) = v2;
  *(v8 + 88) = v1 & 1;
  v9 = *(MEMORY[0x1E69E88A0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_1D1AFABC0;
  v11 = MEMORY[0x1E69E7CA8] + 8;
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v10, v11, v12, 0, 0, &unk_1D1E97598, v8, v13);
}

uint64_t sub_1D1AFABC0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1D1AFAD54;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1D1AFACDC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1AFACDC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1AFAD54()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[9];

  return v5();
}

uint64_t sub_1D1AFADDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1AF56B8(a1, v4);
}

uint64_t sub_1D1AFAE78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1AF9DC8(a1, v4, v5, v6, v7, (v1 + 48), v8);
}

uint64_t sub_1D1AFAF68(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D17C4BFC;

  return sub_1D1AF8F58(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_1D1AFB0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AFB124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AFB18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HomeState.init(stateSnapshot:matterSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = type metadata accessor for MatterStateSnapshot();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - v16;
  v18 = type metadata accessor for StateSnapshot(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_1D1741C08(a1, v17, &unk_1EC649E30, &unk_1D1E91250);
  v23 = *(v19 + 48);
  if (v23(v17, 1, v18) == 1)
  {
    if (qword_1EE07D9E0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v18, qword_1EE07D9E8);
    sub_1D1AFBC94(v24, v22, type metadata accessor for StateSnapshot);
    v25 = v23(v17, 1, v18);
    v26 = v41;
    v27 = v39;
    if (v25 != 1)
    {
      sub_1D1741A30(v17, &unk_1EC649E30, &unk_1D1E91250);
    }
  }

  else
  {
    sub_1D1AFBD48(v17, v22, type metadata accessor for StateSnapshot);
    v26 = v41;
    v27 = v39;
  }

  sub_1D1AFBD48(v22, v26, type metadata accessor for StateSnapshot);
  sub_1D1741C08(v27, v9, &unk_1EC64F390, &qword_1D1E92B10);
  v28 = *(v11 + 48);
  v29 = v28(v9, 1, v10);
  v30 = v38;
  if (v29 == 1)
  {
    v31 = v37;
    if (qword_1EE07D498 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v10, qword_1EE07D4A0);
    sub_1D1AFBC94(v32, v31, type metadata accessor for MatterStateSnapshot);
    if (v28(v9, 1, v10) != 1)
    {
      sub_1D1741A30(v9, &unk_1EC64F390, &qword_1D1E92B10);
    }
  }

  else
  {
    v31 = v37;
    sub_1D1AFBD48(v9, v37, type metadata accessor for MatterStateSnapshot);
  }

  v33 = type metadata accessor for HomeState();
  sub_1D1AFBD48(v31, v26 + *(v33 + 24), type metadata accessor for MatterStateSnapshot);
  sub_1D1741C08(v27, v30, &unk_1EC64F390, &qword_1D1E92B10);
  if (v28(v30, 1, v10) == 1)
  {
    sub_1D1741A30(v30, &unk_1EC64F390, &qword_1D1E92B10);
    v34 = sub_1D18D6954(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v34 = *(v30 + *(v10 + 28));

    sub_1D1AFBDB0(v30);
  }

  sub_1D1741A30(v27, &unk_1EC64F390, &qword_1D1E92B10);
  result = sub_1D1741A30(v40, &unk_1EC649E30, &unk_1D1E91250);
  *(v26 + *(v33 + 20)) = v34;
  return result;
}

uint64_t HomeState.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StateSnapshot(0) + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomeState.endpointPathsDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomeState() + 20));
}

uint64_t HomeState.endpointPathsDictionary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HomeState() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

BOOL static HomeState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomeState();
  if ((sub_1D184A6D8(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0((a1 + v5), (a2 + v5));
}

uint64_t HomeState.hash(into:)(__int128 *a1)
{
  StateSnapshot.hash(into:)(a1);
  v3 = type metadata accessor for HomeState();
  sub_1D185893C(a1, *(v1 + *(v3 + 20)));
  v4 = v1 + *(v3 + 24);
  return MatterStateSnapshot.hash(into:)(a1);
}

uint64_t HomeState.hashValue.getter()
{
  sub_1D1E6920C();
  StateSnapshot.hash(into:)(v4);
  v1 = type metadata accessor for HomeState();
  sub_1D185893C(v4, *(v0 + *(v1 + 20)));
  v2 = v0 + *(v1 + 24);
  MatterStateSnapshot.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AFBB04(uint64_t a1)
{
  sub_1D1E6920C();
  StateSnapshot.hash(into:)(v5);
  sub_1D185893C(v5, *(v1 + *(a1 + 20)));
  v3 = v1 + *(a1 + 24);
  MatterStateSnapshot.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1AFBB68(__int128 *a1, uint64_t a2)
{
  StateSnapshot.hash(into:)(a1);
  sub_1D185893C(a1, *(v2 + *(a2 + 20)));
  v5 = v2 + *(a2 + 24);
  return MatterStateSnapshot.hash(into:)(a1);
}

uint64_t sub_1D1AFBBB8(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  StateSnapshot.hash(into:)(v6);
  sub_1D185893C(v6, *(v2 + *(a2 + 20)));
  v4 = v2 + *(a2 + 24);
  MatterStateSnapshot.hash(into:)(v6);
  return sub_1D1E6926C();
}

BOOL sub_1D1AFBC18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0 || (sub_1D184A6D8(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0((a1 + v6), (a2 + v6));
}

uint64_t sub_1D1AFBC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for HomeState()
{
  result = qword_1EC64AA18;
  if (!qword_1EC64AA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1AFBD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AFBDB0(uint64_t a1)
{
  v2 = type metadata accessor for MatterStateSnapshot();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1AFBE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D1AFBEE4()
{
  type metadata accessor for StateSnapshot(319);
  if (v0 <= 0x3F)
  {
    sub_1D1A31440();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MatterStateSnapshot();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1AFBF80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HomeState.AllHomesModel.currentStateSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v33 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v14 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D1741C08(v1 + v14, v8, &qword_1EC642590, qword_1D1E71260);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v15 = &qword_1EC642590;
    v16 = qword_1D1E71260;
    goto LABEL_10;
  }

  (*(v10 + 32))(v13, v8, v9);
  swift_getKeyPath();
  v32 = v1;
  sub_1D1E66CAC();

  v17 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_7;
  }

  v19 = sub_1D1742188(v13);
  if ((v20 & 1) == 0)
  {

LABEL_7:
    (*(v10 + 8))(v13, v9);
    v23 = type metadata accessor for HomeState();
    v8 = v30;
    (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
    goto LABEL_8;
  }

  v21 = v19;
  v22 = *(v18 + 56);
  v23 = type metadata accessor for HomeState();
  v24 = *(v23 - 8);
  v25 = v22 + *(v24 + 72) * v21;
  v8 = v30;
  sub_1D1B013D8(v25, v30, type metadata accessor for HomeState);
  (*(v10 + 8))(v13, v9);

  (*(v24 + 56))(v8, 0, 1, v23);
LABEL_8:
  type metadata accessor for HomeState();
  if (!(*(*(v23 - 8) + 48))(v8, 1, v23))
  {
    v27 = v31;
    sub_1D1B013D8(v8, v31, type metadata accessor for StateSnapshot);
    sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
    v26 = 0;
    goto LABEL_11;
  }

  v15 = &qword_1EC649148;
  v16 = &qword_1D1E96490;
LABEL_10:
  sub_1D1741A30(v8, v15, v16);
  v26 = 1;
  v27 = v31;
LABEL_11:
  v28 = type metadata accessor for StateSnapshot(0);
  return (*(*(v28 - 8) + 56))(v27, v26, 1, v28);
}

uint64_t HomeState.AllHomesModel.homeStates.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v1 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t HomeState.AllHomesModel.currentMatterSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v33 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v14 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D1741C08(v1 + v14, v8, &qword_1EC642590, qword_1D1E71260);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v15 = &qword_1EC642590;
    v16 = qword_1D1E71260;
    goto LABEL_10;
  }

  (*(v10 + 32))(v13, v8, v9);
  swift_getKeyPath();
  v32 = v1;
  sub_1D1E66CAC();

  v17 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_7;
  }

  v19 = sub_1D1742188(v13);
  if ((v20 & 1) == 0)
  {

LABEL_7:
    (*(v10 + 8))(v13, v9);
    v23 = type metadata accessor for HomeState();
    v8 = v30;
    (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
    goto LABEL_8;
  }

  v21 = v19;
  v22 = *(v18 + 56);
  v23 = type metadata accessor for HomeState();
  v24 = *(v23 - 8);
  v25 = v22 + *(v24 + 72) * v21;
  v8 = v30;
  sub_1D1B013D8(v25, v30, type metadata accessor for HomeState);
  (*(v10 + 8))(v13, v9);

  (*(v24 + 56))(v8, 0, 1, v23);
LABEL_8:
  type metadata accessor for HomeState();
  if (!(*(*(v23 - 8) + 48))(v8, 1, v23))
  {
    v27 = v31;
    sub_1D1B013D8(&v8[*(v23 + 24)], v31, type metadata accessor for MatterStateSnapshot);
    sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
    v26 = 0;
    goto LABEL_11;
  }

  v15 = &qword_1EC649148;
  v16 = &qword_1D1E96490;
LABEL_10:
  sub_1D1741A30(v8, v15, v16);
  v26 = 1;
  v27 = v31;
LABEL_11:
  v28 = type metadata accessor for MatterStateSnapshot();
  return (*(*(v28 - 8) + 56))(v27, v26, 1, v28);
}

uint64_t sub_1D1AFCA44(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  v9 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  if (*(v2 + v4) < v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1E66C9C();

    v8[0] = v3;
    v7 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel_signpostState;
    swift_beginAccess();
    sub_1D1AFFBE8(v8, (v2 + v7));
    return swift_endAccess();
  }

  return result;
}

void (*HomeState.AllHomesModel.homeStates.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1AFCD24;
}

uint64_t sub_1D1AFCD30(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v90 = &v82 - v6;
  v7 = type metadata accessor for HomeState();
  v101 = *(v7 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StateSnapshot(0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v82 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA98, &qword_1D1EB19B0);
  v14 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v16 = &v82 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v88 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v91 = (&v82 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v82 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v82 - v30;
  v32 = sub_1D1E66A7C();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v87 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v82 - v36;
  v99 = v10;
  v100 = a1;
  v38 = *(v10 + 20);
  v93 = v39;
  v40 = *(v39 + 16);
  v96 = v41;
  v86 = v39 + 16;
  v85 = v40;
  (v40)(&v82 - v36, a1 + v38);
  swift_getKeyPath();
  v42 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  v104 = v2;
  v97 = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  v98 = v42;
  sub_1D1E66CAC();

  v43 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v92 = v43;
  v44 = *(v2 + v43);
  v45 = *(v44 + 16);
  v95 = v37;
  if (v45)
  {

    v46 = sub_1D1742188(v37);
    if (v47)
    {
      sub_1D1B013D8(*(v44 + 56) + *(v101 + 72) * v46, v20, type metadata accessor for HomeState);
      v48 = 0;
    }

    else
    {
      v48 = 1;
    }
  }

  else
  {
    v48 = 1;
  }

  v49 = v101;
  v50 = 1;
  (*(v101 + 56))(v20, v48, 1, v7);
  if (!(*(v49 + 48))(v20, 1, v7))
  {
    sub_1D1B013D8(v20, v31, type metadata accessor for StateSnapshot);
    v50 = 0;
  }

  sub_1D1741A30(v20, &qword_1EC649148, &qword_1D1E96490);
  v51 = v11[7];
  v52 = v99;
  v51(v31, v50, 1, v99);
  sub_1D1B013D8(v100, v29, type metadata accessor for StateSnapshot);
  v84 = v11 + 7;
  v83 = v51;
  v51(v29, 0, 1, v52);
  v53 = *(v94 + 48);
  sub_1D1741C08(v31, v16, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741C08(v29, &v16[v53], &unk_1EC649E30, &unk_1D1E91250);
  v54 = v11[6];
  if (v54(v16, 1, v52) != 1)
  {
    v58 = v91;
    sub_1D1741C08(v16, v91, &unk_1EC649E30, &unk_1D1E91250);
    if (v54(&v16[v53], 1, v52) != 1)
    {
      v78 = &v16[v53];
      v79 = v82;
      sub_1D1B01A1C(v78, v82, type metadata accessor for StateSnapshot);
      v80 = v58;
      v81 = _s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(v58, v79);
      sub_1D1B019BC(v79, type metadata accessor for StateSnapshot);
      sub_1D1741A30(v29, &unk_1EC649E30, &unk_1D1E91250);
      sub_1D1741A30(v31, &unk_1EC649E30, &unk_1D1E91250);
      sub_1D1B019BC(v80, type metadata accessor for StateSnapshot);
      sub_1D1741A30(v16, &unk_1EC649E30, &unk_1D1E91250);
      v52 = v99;
      v59 = v100;
      v56 = v95;
      v57 = v96;
      if (v81)
      {
        goto LABEL_25;
      }

LABEL_15:
      KeyPath = swift_getKeyPath();
      v103 = v2;
      sub_1D1E66CAC();

      v103 = v2;
      swift_getKeyPath();
      sub_1D1E66CCC();

      v61 = v92;
      swift_beginAccess();
      v62 = *(v2 + v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = *(v2 + v61);
      v64 = v102;
      *(v2 + v61) = 0x8000000000000000;
      v66 = sub_1D1742188(v56);
      v67 = v64[2];
      v68 = (v65 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
        __break(1u);
      }

      else
      {
        KeyPath = v65;
        if (v64[3] < v69)
        {
          sub_1D172D7F4(v69, isUniquelyReferenced_nonNull_native);
          v64 = v102;
          v70 = sub_1D1742188(v56);
          if ((KeyPath & 1) != (v71 & 1))
          {
            result = sub_1D1E690FC();
            __break(1u);
            return result;
          }

          v66 = v70;
          *(v2 + v61) = v64;
          if (KeyPath)
          {
LABEL_23:
            sub_1D1B01954(v59, v64[7] + *(v101 + 72) * v66, type metadata accessor for StateSnapshot);
            swift_endAccess();
            v103 = v2;
            swift_getKeyPath();
            sub_1D1E66CBC();

            (*(v93 + 8))(v56, v57);
            return 1;
          }

LABEL_22:
          v72 = v88;
          v83(v88, 1, 1, v52);
          v73 = type metadata accessor for MatterStateSnapshot();
          v74 = v90;
          (*(*(v73 - 8) + 56))(v90, 1, 1, v73);
          v75 = v89;
          HomeState.init(stateSnapshot:matterSnapshot:)(v72, v74, v89);
          v76 = v87;
          v85(v87, v56, v57);
          sub_1D19DC04C(v66, v76, v75, v64);
          goto LABEL_23;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          *(v2 + v61) = v64;
          if (v65)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

      sub_1D173BC84();
      v64 = v102;
      *(v2 + v61) = v102;
      if (KeyPath)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    sub_1D1741A30(v29, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1741A30(v31, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1B019BC(v58, type metadata accessor for StateSnapshot);
    v52 = v99;
    v56 = v95;
LABEL_14:
    sub_1D1741A30(v16, &qword_1EC64AA98, &qword_1D1EB19B0);
    v59 = v100;
    v57 = v96;
    goto LABEL_15;
  }

  sub_1D1741A30(v29, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741A30(v31, &unk_1EC649E30, &unk_1D1E91250);
  v55 = v54(&v16[v53], 1, v52);
  v56 = v95;
  if (v55 != 1)
  {
    goto LABEL_14;
  }

  sub_1D1741A30(v16, &unk_1EC649E30, &unk_1D1E91250);
  v57 = v96;
LABEL_25:
  (*(v93 + 8))(v56, v57);
  return 0;
}

uint64_t sub_1D1AFD7B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = &v90 - v6;
  v7 = type metadata accessor for HomeState();
  v115 = *(v7 - 8);
  v8 = v115[8];
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MatterStateSnapshot();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v91 = (&v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491B0, &qword_1D1E92B08);
  v14 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v16 = &v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v104 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v101 = &v90 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v98 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v90 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v93 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v95 = (&v90 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v90 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v90 - v36;
  v38 = sub_1D1E66A7C();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v102 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v90 - v42;
  v114 = v10;
  v44 = *(v10 + 20);
  v108 = v45;
  v46 = *(v45 + 16);
  v116 = v47;
  v117 = a1;
  v100 = v45 + 16;
  v99 = v46;
  (v46)(&v90 - v42, a1 + v44);
  swift_getKeyPath();
  v48 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  v120 = v2;
  v112 = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  v113 = v48;
  sub_1D1E66CAC();

  v49 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v103 = v2;
  v111 = v49;
  v50 = *(v2 + v49);
  v51 = *(v50 + 16);
  v118 = v43;
  if (v51)
  {

    v52 = sub_1D1742188(v43);
    if (v53)
    {
      sub_1D1B013D8(*(v50 + 56) + v115[9] * v52, v26, type metadata accessor for HomeState);
      v54 = 0;
    }

    else
    {
      v54 = 1;
    }
  }

  else
  {
    v54 = 1;
  }

  v55 = v115;
  v56 = 1;
  v109 = v115[7];
  v110 = v115 + 7;
  v109(v26, v54, 1, v7);
  v57 = v55[6];
  v97 = v55 + 6;
  v96 = v57;
  if (!v57(v26, 1, v7))
  {
    sub_1D1B013D8(&v26[*(v7 + 24)], v37, type metadata accessor for MatterStateSnapshot);
    v56 = 0;
  }

  v106 = v7;
  sub_1D1741A30(v26, &qword_1EC649148, &qword_1D1E96490);
  v58 = v11[7];
  v59 = v114;
  v58(v37, v56, 1, v114);
  sub_1D1B013D8(v117, v35, type metadata accessor for MatterStateSnapshot);
  v92 = v58;
  v58(v35, 0, 1, v59);
  v60 = *(v107 + 48);
  sub_1D1741C08(v37, v16, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741C08(v35, &v16[v60], &unk_1EC64F390, &qword_1D1E92B10);
  v61 = v11[6];
  if (v61(v16, 1, v59) == 1)
  {
    sub_1D1741A30(v35, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1741A30(v37, &unk_1EC64F390, &qword_1D1E92B10);
    if (v61(&v16[v60], 1, v59) == 1)
    {
      sub_1D1741A30(v16, &unk_1EC64F390, &qword_1D1E92B10);
      v62 = v118;
LABEL_19:
      (*(v108 + 8))(v62, v116);
      return 0;
    }

    goto LABEL_14;
  }

  v63 = v95;
  sub_1D1741C08(v16, v95, &unk_1EC64F390, &qword_1D1E92B10);
  if (v61(&v16[v60], 1, v59) == 1)
  {
    sub_1D1741A30(v35, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1741A30(v37, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1B019BC(v63, type metadata accessor for MatterStateSnapshot);
    v59 = v114;
LABEL_14:
    sub_1D1741A30(v16, &qword_1EC6491B0, &qword_1D1E92B08);
    v64 = v106;
    v62 = v118;
    goto LABEL_15;
  }

  v75 = v91;
  sub_1D1B01A1C(&v16[v60], v91, type metadata accessor for MatterStateSnapshot);
  v76 = v63;
  v77 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(v63, v75);
  sub_1D1B019BC(v75, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v35, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741A30(v37, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1B019BC(v76, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v16, &unk_1EC64F390, &qword_1D1E92B10);
  v64 = v106;
  v59 = v114;
  v62 = v118;
  if (v77)
  {
    goto LABEL_19;
  }

LABEL_15:
  swift_getKeyPath();
  v65 = v103;
  v119 = v103;
  sub_1D1E66CAC();

  v66 = *(v65 + v111);
  if (*(v66 + 16))
  {
    v67 = *(v65 + v111);

    v68 = sub_1D1742188(v62);
    v69 = v105;
    v70 = v101;
    v71 = v98;
    if (v72)
    {
      sub_1D1B013D8(*(v66 + 56) + v115[9] * v68, v98, type metadata accessor for HomeState);
      v73 = v71;
      v74 = 0;
    }

    else
    {
      v73 = v98;
      v74 = 1;
    }

    v109(v73, v74, 1, v64);
  }

  else
  {
    v71 = v98;
    v109(v98, 1, 1, v64);

    v69 = v105;
    v70 = v101;
  }

  sub_1D1B018E4(v71, v70);
  if (v96(v70, 1, v64) == 1)
  {
    v79 = type metadata accessor for StateSnapshot(0);
    v80 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
    v81 = v93;
    v92(v93, 1, 1, v59);
    HomeState.init(stateSnapshot:matterSnapshot:)(v80, v81, v69);

    sub_1D1741A30(v70, &qword_1EC649148, &qword_1D1E96490);
  }

  else
  {

    sub_1D1B01A1C(v70, v69, type metadata accessor for HomeState);
  }

  v82 = v117;
  sub_1D1B01954(v117, v69 + *(v64 + 24), type metadata accessor for MatterStateSnapshot);
  v83 = *(v82 + *(v59 + 28));
  v84 = v64;
  v85 = *(v64 + 20);
  v86 = *(v69 + v85);

  *(v69 + v85) = v83;
  v87 = v102;
  v99(v102, v118, v116);
  v88 = v104;
  sub_1D1B013D8(v69, v104, type metadata accessor for HomeState);
  v78 = 1;
  v109(v88, 0, 1, v84);
  swift_getKeyPath();
  v119 = v65;
  sub_1D1E66CAC();

  v119 = v65;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  sub_1D1B0ED54(v88, v87);
  swift_endAccess();
  v119 = v65;
  swift_getKeyPath();
  sub_1D1E66CBC();

  (*(v108 + 8))(v118, v116);
  sub_1D1B019BC(v69, type metadata accessor for HomeState);
  return v78;
}

uint64_t HomeState.AllHomesModel.latestSetupMilestone.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_1D1AFE514()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1D1AFE608;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, 0, 0, 0xD000000000000014, 0x80000001D1EC46A0, sub_1D1AE88B8, v2, v5);
}

uint64_t sub_1D1AFE608()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D17ED45C, 0, 0);
}

uint64_t HomeState.AllHomesModel.currentHomeID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  return sub_1D1741C08(v5 + v3, a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1AFE7F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  return sub_1D1741C08(v3 + v4, a2, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1AFE8D0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D1741C08(a1, &v10 - v6, &qword_1EC642590, qword_1D1E71260);
  v8 = *a2;
  return HomeState.AllHomesModel.currentHomeID.setter(v7);
}

uint64_t type metadata accessor for HomeState.AllHomesModel()
{
  result = qword_1EC64AA88;
  if (!qword_1EC64AA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeState.AllHomesModel.currentHomeID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D1741C08(v1 + v7, v6, &qword_1EC642590, qword_1D1E71260);
  v8 = sub_1D1B01440(v6, a1);
  sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
    sub_1D1E66C9C();
  }

  else
  {
    swift_beginAccess();
    sub_1D17E695C(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_1D1741A30(a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1AFEBB4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D17E695C(a2, a1 + v4);
  return swift_endAccess();
}

void (*HomeState.AllHomesModel.currentHomeID.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1AFED68;
}

uint64_t HomeState.AllHomesModel.currentResident.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v1 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1D1AFEE34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1AFEEFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return HomeState.AllHomesModel.currentResident.setter(v4);
}

uint64_t HomeState.AllHomesModel.currentResident.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D1AFF058(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*HomeState.AllHomesModel.currentResident.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1AFF210;
}

uint64_t sub_1D1AFF21C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1AFF2E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return HomeState.AllHomesModel.homeStates.setter(v4);
}

uint64_t HomeState.AllHomesModel.homeStates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1D18542F8(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D1AFF460(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1D1AFF4D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D1AFF594(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return HomeState.AllHomesModel.latestSetupMilestone.setter(&v4);
}

uint64_t HomeState.AllHomesModel.latestSetupMilestone.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
    sub_1D1E66C9C();
  }

  return result;
}

void (*HomeState.AllHomesModel.latestSetupMilestone.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  return sub_1D1AFF838;
}

void sub_1D1AFF844(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1D1E66CBC();

  free(v1);
}

uint64_t sub_1D1AFF8C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22[-v6];
  v8 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  v9 = sub_1D1E66A7C();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  updated = type metadata accessor for HomeState.Stream.ResidentUpdateController();
  v11 = *(updated + 48);
  v12 = *(updated + 52);
  v13 = swift_allocObject();
  sub_1D1E66CDC();
  *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident) = v13;
  *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates) = sub_1D18DA7F8(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone) = 0;
  *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel_signpostState) = 0;
  sub_1D1E66CDC();
  v24 = 0;
  v23 = 0;
  sub_1D1AFFBE8(&v23, &v24);
  sub_1D1E67E3C();
  v14 = sub_1D1E67E7C();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  v15 = v24;
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v15;
  sub_1D1741C08(v7, v5, &unk_1EC6442C0, &qword_1D1E741A0);
  v17 = qword_1EC642358;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EC64ABE8;
  v19 = sub_1D1B01A84(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = sub_1D1B01C4C;
  v20[5] = v16;

  sub_1D17C6EF0(0, 0, v5, &unk_1D1E96480, v20);

  sub_1D1741A30(v7, &unk_1EC6442C0, &qword_1D1E741A0);

  return v0;
}

uint64_t sub_1D1AFFBE8(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1D1E6702C();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D1E66FDC();
  v10 = *(v66 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v66);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - v17;
  v63 = *a1;
  if (qword_1EC642338 != -1)
  {
    swift_once();
  }

  v19 = sub_1D1E6709C();
  __swift_project_value_buffer(v19, qword_1EC64AA28);

  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6835C();

  v22 = os_log_type_enabled(v20, v21);
  v65 = a2;
  if (v22)
  {
    v61 = v6;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v67 = v3;
    v68 = v24;
    *v23 = 136315394;
    v25 = sub_1D1E6789C();
    v27 = sub_1D1B1312C(v25, v26, &v68);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    if (v63 > 3)
    {
      v34 = 0x80000001D1EC43B0;
      v35 = 0xD00000000000001BLL;
      if (v63 == 6)
      {
        v35 = 0xD00000000000001ALL;
      }

      else
      {
        v34 = 0x80000001D1EC4390;
      }

      v36 = 0xD000000000000013;
      v37 = 0x80000001D1EC43F0;
      if (v63 != 4)
      {
        v36 = 0xD000000000000019;
        v37 = 0x80000001D1EC43D0;
      }

      if (v63 <= 5)
      {
        v32 = v36;
      }

      else
      {
        v32 = v35;
      }

      if (v63 <= 5)
      {
        v33 = v37;
      }

      else
      {
        v33 = v34;
      }
    }

    else
    {
      v28 = 0xE800000000000000;
      v29 = 0x6576697463616E69;
      v30 = 0x80000001D1EC3CF0;
      v31 = 0xD000000000000012;
      if (v63 != 2)
      {
        v31 = 0x63655273656D6F68;
        v30 = 0xED00006465766965;
      }

      if (v63)
      {
        v29 = 0xD000000000000013;
        v28 = 0x80000001D1EC4410;
      }

      if (v63 <= 1)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      if (v63 <= 1)
      {
        v33 = v28;
      }

      else
      {
        v33 = v30;
      }
    }

    v38 = sub_1D1B1312C(v32, v33, &v68);

    *(v23 + 14) = v38;
    _os_log_impl(&dword_1D16EC000, v20, v21, "HomeState.Observable(%s) reached %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v24, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);

    a2 = v65;
    v6 = v61;
  }

  else
  {
  }

  if (*a2)
  {
    if (qword_1EC642340 != -1)
    {
      swift_once();
    }

    v39 = sub_1D1E6701C();
    __swift_project_value_buffer(v39, qword_1EC64AA40);
    v40 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v41 = sub_1D1E683DC();
    if (sub_1D1E6855C())
    {

      sub_1D1E6706C();

      v42 = v62;
      if ((*(v62 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v43 = "[Error] Interval already ended";
      }

      else
      {
        (*(v42 + 8))(v9, v6);
        v43 = "";
      }

      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v40, v41, v45, "HomeState.Observable.SetupMilestone", v43, v44, 2u);
      MEMORY[0x1D3893640](v44, -1, -1);
    }

    (*(v10 + 8))(v18, v66);
    a2 = v65;
  }

  if (qword_1EC642340 != -1)
  {
    swift_once();
  }

  v46 = sub_1D1E6701C();
  __swift_project_value_buffer(v46, qword_1EC64AA40);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v47 = sub_1D1E66FFC();
  v48 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v68 = v50;
    *v49 = 136446210;
    LOBYTE(v67) = v63;
    v51 = HomeState.Stream.SetupMilestone.signpostDescription.getter();
    v53 = sub_1D1B1312C(v51, v52, &v68);

    *(v49 + 4) = v53;
    v54 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v47, v48, v54, "HomeState.Observable.SetupMilestone", "%{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1D3893640](v50, -1, -1);
    MEMORY[0x1D3893640](v49, -1, -1);
  }

  v55 = v66;
  (*(v10 + 16))(v64, v16, v66);
  v56 = sub_1D1E6705C();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = sub_1D1E6704C();
  result = (*(v10 + 8))(v16, v55);
  *a2 = v59;
  return result;
}

uint64_t sub_1D1B0030C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel_signpostState;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t HomeState.AllHomesModel.currentSnapshotState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v27 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v1;
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v12 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID;
  swift_beginAccess();
  sub_1D1741C08(v2 + v12, v6, &qword_1EC642590, qword_1D1E71260);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    v13 = type metadata accessor for HomeState();
    return (*(*(v13 - 8) + 56))(v28, 1, 1, v13);
  }

  else
  {
    v15 = v28;
    (*(v8 + 32))(v11, v6, v7);
    swift_getKeyPath();
    v29 = v2;
    sub_1D1E66CAC();

    v16 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_1D1742188(v11);
      v19 = v15;
      if (v20)
      {
        v21 = v18;
        v22 = *(v17 + 56);
        v23 = type metadata accessor for HomeState();
        v24 = *(v23 - 8);
        sub_1D1B013D8(v22 + *(v24 + 72) * v21, v19, type metadata accessor for HomeState);
        (*(v8 + 8))(v11, v7);

        return (*(v24 + 56))(v19, 0, 1, v23);
      }

      else
      {

        (*(v8 + 8))(v11, v7);
        v26 = type metadata accessor for HomeState();
        return (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
      }
    }

    else
    {
      (*(v8 + 8))(v11, v7);
      v25 = type metadata accessor for HomeState();
      return (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
    }
  }
}

uint64_t sub_1D1B007C8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_1D1E67E7C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC64ABE8;
  v15 = sub_1D1B01A84(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v16 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *(v17 + 32) = a2;
  (*(v5 + 32))(v17 + v16, v8, v4);

  sub_1D17C6EF0(0, 0, v12, &unk_1D1E977A8, v17);
}

uint64_t sub_1D1B00A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 97) = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AAA0, &qword_1D1E977B0);
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AAA8, &qword_1D1E977B8);
  *(v5 + 48) = v9;
  v10 = *(v9 - 8);
  *(v5 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC64ABE8;
  *(v5 + 72) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B00B9C, v12, 0);
}

uint64_t sub_1D1B00B9C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_1D1B01A84(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
  v0[10] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;

  sub_1D1E66D3C();
  sub_1D1E66D0C();
  v7 = v0[9];
  v8 = v0[10];
  v9 = *(MEMORY[0x1E69E81F8] + 4);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_1D1B00D08;
  v11 = v0[5];
  v12 = v0[3];

  return MEMORY[0x1EEE6CEB0](v0 + 12, v7, v8, v12);
}

uint64_t sub_1D1B00D08()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 72);

    return MEMORY[0x1EEE6DFA0](sub_1D1B00E18, v5, 0);
  }

  return result;
}

uint64_t sub_1D1B00E18()
{
  v1 = *(v0 + 96);
  if (v1 != 8)
  {
    if (v1 < *(v0 + 97))
    {
      v3 = *(v0 + 72);
      v2 = *(v0 + 80);
      v4 = *(MEMORY[0x1E69E81F8] + 4);
      v5 = swift_task_alloc();
      *(v0 + 88) = v5;
      *v5 = v0;
      v5[1] = sub_1D1B00D08;
      v6 = *(v0 + 40);
      v7 = *(v0 + 24);

      return MEMORY[0x1EEE6CEB0](v0 + 96, v3, v2, v7);
    }

    v8 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
    sub_1D1E67D6C();
  }

  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  (*(v10 + 8))(v9, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1B00F84@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(_s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0() + 3);

  swift_getKeyPath();
  sub_1D1B01A84(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  swift_beginAccess();
  *a1 = *(v2 + v3);
}

uint64_t HomeState.AllHomesModel.deinit()
{
  sub_1D1741A30(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID, &qword_1EC642590, qword_1D1E71260);
  v1 = *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident);

  v2 = *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates);

  v3 = *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel_signpostState);

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  v5 = sub_1D1E66CEC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t HomeState.AllHomesModel.__deallocating_deinit()
{
  sub_1D1741A30(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentHomeID, &qword_1EC642590, qword_1D1E71260);
  v1 = *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__currentResident);

  v2 = *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates);

  v3 = *(v0 + OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel_signpostState);

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel___observationRegistrar;
  v5 = sub_1D1E66CEC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1B01214()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64AA28);
  __swift_project_value_buffer(v0, qword_1EC64AA28);
  return sub_1D1E6708C();
}

uint64_t sub_1D1B0129C()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v5, qword_1EC64AA40);
  __swift_project_value_buffer(v5, qword_1EC64AA40);
  if (qword_1EC642338 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC64AA28);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1D1E66FEC();
}

uint64_t sub_1D1B013D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B01440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D1741C08(a1, &v24 - v16, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(a2, &v17[v18], &qword_1EC642590, qword_1D1E71260);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1D1741C08(v17, v12, &qword_1EC642590, qword_1D1E71260);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1D1B01A84(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v21 = sub_1D1E6775C();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v17, &qword_1EC642980, &unk_1D1E6E6E0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
  v20 = 0;
  return v20 & 1;
}

void sub_1D1B017D4()
{
  sub_1D177868C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D1E66CEC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D1B018E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B01954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B019BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B01A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B01A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B01ACC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428) - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B00A2C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D1B01BD0@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D1B00F84(a1);
}

uint64_t sub_1D1B01BF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1D1B01C6C()
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
  v1 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v3 = &v63 - v2;
  v64 = type metadata accessor for StateSnapshot(0);
  v4 = *(v0 + *(v64 + 52));
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v66 = v0;
  v67 = v4;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
LABEL_10:
    v14 = __clz(__rbit64(v8)) | (v11 << 6);
    v15 = v67;
    v16 = *(v67 + 48);
    v17 = sub_1D1E66A7C();
    (*(*(v17 - 8) + 16))(v3, v16 + *(*(v17 - 8) + 72) * v14, v17);
    v18 = *(v15 + 56);
    v19 = type metadata accessor for StaticRoom(0);
    sub_1D1B0229C(v18 + *(*(v19 - 8) + 72) * v14, &v3[*(v65 + 48)]);
    LOBYTE(v71) = 8;
    v20 = type metadata accessor for HomeState();
    v21 = StaticRoom.orderedVisibleTileInfos(filterCategory:matterSnapshot:forDashboard:forStatus:)(&v71, v66 + *(v20 + 24), 0, 0);
    result = sub_1D1B02300(v3);
    v22 = *(v21 + 16);
    v23 = v12[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v24 > v12[3] >> 1)
    {
      if (v23 <= v24)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      result = sub_1D177F2B8(result, v25, 1, v12);
      v12 = result;
    }

    v8 &= v8 - 1;
    if (*(v21 + 16))
    {
      if ((v12[3] >> 1) - v12[2] < v22)
      {
        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v26 = v12[2];
        v27 = __OFADD__(v26, v22);
        v28 = v26 + v22;
        if (v27)
        {
          goto LABEL_47;
        }

        v12[2] = v28;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  v29 = v12[2];
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v31 = 0;
    v32 = (v12 + 4);
    v33 = MEMORY[0x1E69E7CC0];
    while (v31 < v12[2])
    {
      sub_1D17419CC(v32, &v71);
      v34 = v72;
      v35 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, v72);
      if ((*(v35 + 120))(v34, v35))
      {
        sub_1D16EEE20(&v71, v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178CF40(0, *(v33 + 16) + 1, 1);
          v33 = v74;
        }

        v38 = *(v33 + 16);
        v37 = *(v33 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1D178CF40((v37 > 1), v38 + 1, 1);
        }

        v39 = v69;
        v40 = v70;
        v41 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
        v42 = *(*(v39 - 8) + 64);
        MEMORY[0x1EEE9AC00](v41);
        v44 = &v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v45 + 16))(v44);
        sub_1D1D20ADC(v38, v44, &v74, v39, v40);
        result = __swift_destroy_boxed_opaque_existential_1(v68);
        v33 = v74;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v71);
      }

      ++v31;
      v32 += 40;
      if (v29 == v31)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_43;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v46 = *(v33 + 16);
  if (v46)
  {
    v74 = v30;
    sub_1D178CF40(0, v46, 0);
    v47 = v74;
    v48 = v33 + 32;
    do
    {
      sub_1D17419CC(v48, v68);
      v49 = v69;
      v50 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      sub_1D1E17CA8(v49, v50, &v71);
      __swift_destroy_boxed_opaque_existential_1(v68);
      v74 = v47;
      v52 = *(v47 + 16);
      v51 = *(v47 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1D178CF40((v51 > 1), v52 + 1, 1);
      }

      v53 = v72;
      v54 = v73;
      v55 = __swift_mutable_project_boxed_opaque_existential_1(&v71, v72);
      v56 = *(*(v53 - 8) + 64);
      MEMORY[0x1EEE9AC00](v55);
      v58 = &v63 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v58);
      sub_1D1D20ADC(v52, v58, &v74, v53, v54);
      __swift_destroy_boxed_opaque_existential_1(&v71);
      v47 = v74;
      v48 += 40;
      --v46;
    }

    while (v46);
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  v60 = v66 + *(v64 + 20);
  v61 = type metadata accessor for StaticHome();
  v62 = sub_1D1D07DC4(*(v60 + *(v61 + 60)), v47);

  return v62;
}

uint64_t sub_1D1B0229C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B02300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1B02368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D1741C08(a3, v24 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D1E67D4C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D1E678CC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D1B02614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D1741C08(a3, v24 - v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D1E67D4C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D1E678CC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1741A30(a3, &unk_1EC6442C0, &qword_1D1E741A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t CharacteristicValueModerator.fetchValues<A>(for:in:timeout:snapshotPreference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v8;
  *(v9 + 80) = a4;
  *(v9 + 88) = a7;
  *(v9 + 288) = a5;
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  *(v9 + 56) = a1;
  v13 = *v8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v9 + 112) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = *(a8 + 8);
  *(v9 + 144) = swift_getAssociatedTypeWitness();
  v17 = *(v13 + 88);
  *(v9 + 152) = v17;
  v18 = *(v17 + 16);
  *(v9 + 160) = *(v13 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(v9 + 168) = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  *(v9 + 176) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v19 = sub_1D1E680DC();
  *(v9 + 184) = v19;
  v20 = *(v19 - 8);
  *(v9 + 192) = v20;
  *(v9 + 200) = *(v20 + 64);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  v21 = *(a7 - 8);
  *(v9 + 224) = v21;
  *(v9 + 232) = *(v21 + 64);
  v22 = swift_task_alloc();
  v23 = *a6;
  *(v9 + 240) = v22;
  *(v9 + 248) = v23;

  return MEMORY[0x1EEE6DFA0](sub_1D1B02C00, v8, 0);
}

uint64_t sub_1D1B02C00()
{
  v63 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 104);
  v5 = *(*(v0 + 224) + 16);
  v60 = *(v0 + 88);
  v5(*(v0 + 240), *(v0 + 64), *(v0 + 88));
  v6 = swift_task_alloc();
  *(v6 + 16) = v60;
  *(v6 + 32) = v4;
  v7 = sub_1D1E67A8C();

  *(v0 + 40) = v7;
  swift_beginAccess();
  v8 = *(v1 + 16);
  sub_1D1E681FC();
  sub_1D1E67D1C();

  swift_getWitnessTable();
  sub_1D1E681EC();
  swift_endAccess();
  *(v0 + 48) = v7;
  swift_getWitnessTable();
  if (sub_1D1E682AC())
  {
    v9 = *(v0 + 56);
    v10 = type metadata accessor for StateSnapshot(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = *(v0 + 240);
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v55 = *(v0 + 248);
    v58 = *(v0 + 240);
    v46 = *(v0 + 224);
    v47 = *(v0 + 232);
    v18 = *(v0 + 216);
    v61 = *(v0 + 208);
    v49 = *(v0 + 200);
    v44 = v5;
    v57 = *(v0 + 192);
    v59 = *(v0 + 184);
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    v21 = *(v0 + 144);
    v22 = *(v0 + 152);
    v23 = *(v0 + 128);
    v48 = v23;
    v54 = *(v0 + 96);
    v24 = *(v0 + 88);
    v56 = *(v0 + 288);
    v25 = *(v0 + 72);
    v50 = v25;
    v51 = *(v0 + 104);
    v43 = *(v0 + 64);
    sub_1D16EE910(v7, v62);

    sub_1D1B03774(v62, v20, v22, v18);

    v53 = sub_1D1E67E7C();
    v52 = *(*(v53 - 8) + 56);
    v52(v23, 1, 1, v53);
    v44(v58, v43, v24);
    (*(v57 + 16))(v61, v18, v59);
    type metadata accessor for CharacteristicValueModerator();
    WitnessTable = swift_getWitnessTable();
    v26 = (*(v46 + 80) + 72) & ~*(v46 + 80);
    v27 = (v47 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (*(v57 + 80) + v27 + 8) & ~*(v57 + 80);
    v29 = (v49 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 2) = v51;
    *(v30 + 3) = WitnessTable;
    *(v30 + 4) = v20;
    *(v30 + 5) = v24;
    *(v30 + 6) = v22;
    *(v30 + 7) = v54;
    *(v30 + 8) = v55;
    (*(v46 + 32))(&v30[v26], v58);
    *&v30[v27] = v51;
    (*(v57 + 32))(&v30[v28], v61, v59);
    *&v30[v29] = v50;
    *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v7;
    swift_retain_n();
    swift_unknownObjectRetain();
    v31 = sub_1D1B02614(0, 0, v48, &unk_1D1E977D8, v30);
    *(v0 + 256) = v31;
    v52(v48, 1, 1, v53);
    v32 = *(v0 + 128);
    if (v56)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = v31;

      v34 = &unk_1D1E960C8;
    }

    else
    {
      v35 = *(v0 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = v31;
      *(v33 + 40) = v35;
      *(v33 + 48) = 1;

      v34 = &unk_1D1E961A8;
    }

    v36 = sub_1D1B02614(0, 0, v32, v34, v33);
    *(v0 + 264) = v36;
    v37 = *(MEMORY[0x1E69E86A8] + 4);
    v38 = swift_task_alloc();
    *(v0 + 272) = v38;
    *v38 = v0;
    v38[1] = sub_1D1B03200;
    v39 = *(v0 + 176);
    v41 = *(v0 + 112);
    v40 = *(v0 + 120);
    v42 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v40, v36, v41, v39, v42);
  }
}

uint64_t sub_1D1B03200()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 104);

  if (v0)
  {
    v7 = sub_1D1B03420;
  }

  else
  {
    v7 = sub_1D1B03348;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D1B03348()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[15];
  v6 = v0[7];

  (*(v4 + 8))(v2, v3);
  sub_1D1B0ABE4(v5, v6);
  v7 = v0[30];
  v8 = v0[26];
  v9 = v0[27];
  v11 = v0[15];
  v10 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1B03420()
{
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[23];
  v6 = v0[24];
  v8 = v0[15];
  v7 = v0[16];

  (*(v6 + 8))(v3, v5);

  v9 = v0[1];
  v10 = v0[35];

  return v9();
}

void *CharacteristicValueModerator.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CharacteristicValueModerator.__deallocating_deinit()
{
  CharacteristicValueModerator.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

BOOL sub_1D1B035B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a2[15];
  v8 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v9 = *(*(v6 + 88) + 16);
  v10 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 16);

  v12 = sub_1D1E681CC();

  return (v12 & 1) == 0;
}

uint64_t sub_1D1B03774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v175 = a1;
  v157 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v164 = v129 - v8;
  v162 = sub_1D1E66FDC();
  v149 = *(v162 - 8);
  v9 = *(v149 + 64);
  v10 = MEMORY[0x1EEE9AC00](v162);
  v163 = v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v172 = v129 - v12;
  v179 = a3;
  v13 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  v147 = v13;
  v185 = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v154 = AssociatedTypeWitness;
  v146 = AssociatedConformanceWitness;
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v153 = sub_1D1E6808C();
  v16 = *(v153 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v19 = v129 - v18;
  v177 = sub_1D1E680BC();
  v167 = *(v177 - 8);
  v20 = *(v167 + 64);
  v21 = MEMORY[0x1EEE9AC00](v177);
  v145 = v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v143 = v129 - v24;
  v144 = v25;
  MEMORY[0x1EEE9AC00](v23);
  v181 = v129 - v26;
  v156 = sub_1D1E680DC();
  v155 = *(v156 - 8);
  v27 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v174 = v129 - v28;
  v176 = sub_1D1E66A7C();
  v166 = *(v176 - 8);
  v29 = *(v166 + 64);
  v30 = MEMORY[0x1EEE9AC00](v176);
  v171 = v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = v129 - v32;
  v34 = sub_1D1E6709C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v184 = v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v38;
  MEMORY[0x1EEE9AC00](v37);
  v183 = v129 - v39;
  v40 = sub_1D1E6701C();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v178 = v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v158 = v44;
  MEMORY[0x1EEE9AC00](v43);
  v46 = v129 - v45;
  v47 = *v175;
  if (qword_1EC642350 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v40, qword_1EC6BE198);
  v165 = v41;
  v49 = *(v41 + 16);
  v182 = v40;
  v160 = v41 + 16;
  v159 = v49;
  v49(v46, v48, v40);
  v50 = v46;
  if (qword_1EC642348 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v34, qword_1EC6BE180);
  v175 = v35;
  v52 = v35 + 16;
  v53 = *(v35 + 16);
  v54 = v183;
  v169 = v52;
  v168 = v53;
  v53(v183, v51, v34);
  sub_1D1E66A6C();

  v55 = v47;
  v56 = swift_checkMetadataState();
  v57 = sub_1D1E67CBC();
  v180 = v34;
  v58 = v57;
  sub_1D1B07784(v19);
  v59 = v181;
  sub_1D1E6804C();
  (*(v16 + 8))(v19, v153);
  if (v58 < 1)
  {

    sub_1D1E67D8C();
    v123 = v33;
    sub_1D1B0C084(&qword_1EC6486C8, MEMORY[0x1E69E8550]);
    v124 = swift_allocError();
    sub_1D1E6759C();
    v186 = v124;
    v125 = v177;
    sub_1D1E680AC();
    (*(v167 + 8))(v59, v125);
    (*(v166 + 8))(v123, v176);
    (*(v165 + 8))(v50, v182);
  }

  else
  {
    v60 = v50;
    v151 = v50;
    sub_1D1E66FFC();
    v61 = v172;
    sub_1D1E66FAC();
    v62 = v179;
    v63 = v185;
    v154 = sub_1D1B07C0C(v33, v58, v60, v61, "BatchCharacteristicRead", 23, 2, v54, v185, v179);
    v64 = v33;
    v152 = v33;
    v186 = v55;
    v142 = v55;
    MEMORY[0x1EEE9AC00](v154);
    v129[-4] = v63;
    v129[-3] = v62;
    v128 = v54;
    v133 = v56;
    sub_1D1E67D1C();
    swift_getWitnessTable();
    sub_1D1E67ADC();

    v65 = v166;
    v66 = *(v166 + 16);
    v138 = v166 + 16;
    v139 = v66;
    v67 = v171;
    v68 = v64;
    v69 = v176;
    v66(v171, v68, v176);
    v168(v184, v54, v180);
    v159(v178, v60, v182);
    v70 = *(v65 + 80);
    v71 = (v70 + 32) & ~v70;
    v136 = v70;
    v72 = *(v175 + 80);
    v73 = (v161 + v72 + v71) & ~v72;
    v74 = v165;
    v131 = *(v165 + 80);
    v75 = (v170 + v131 + v73) & ~v131;
    v137 = v72 | v70 | v131 | 7;
    v130 = ((v75 + v158 + 7) & 0xFFFFFFFFFFFFFFF8);
    v76 = (v75 + v158 + 31) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    v78 = v179;
    *(v77 + 16) = v185;
    *(v77 + 24) = v78;
    v79 = *(v65 + 32);
    v140 = v65 + 32;
    v141 = v79;
    v79(v77 + v71, v67, v69);
    v80 = *(v175 + 32);
    v150 = v175 + 32;
    v153 = v80;
    v81 = v184;
    v82 = v180;
    v80(v77 + v73, v184, v180);
    v83 = *(v74 + 32);
    v134 = v74 + 32;
    v135 = v83;
    v83((v77 + v75), v178, v182);
    v84 = v130 + v77;
    *v84 = "BatchCharacteristicRead";
    *(v84 + 1) = 23;
    v84[16] = 2;
    *(v77 + v76) = v154;

    v85 = v177;
    v86 = v181;
    sub_1D1E6807C();
    v168(v81, v183, v82);
    v87 = v167;
    v130 = *(v167 + 16);
    v88 = v143;
    v130(v143, v86, v85);
    v89 = (v72 + 32) & ~v72;
    v132 = v72;
    v90 = *(v87 + 80);
    v91 = v87;
    v92 = (v89 + v170 + v90) & ~v90;
    v129[1] = v90 | 7;
    v93 = swift_allocObject();
    v94 = v184;
    v95 = v179;
    *(v93 + 16) = v185;
    *(v93 + 24) = v95;
    v153(v93 + v89, v94, v82);
    v96 = *(v91 + 32);
    v97 = v88;
    v98 = v177;
    v96(v93 + v92, v97, v177);
    v99 = v145;
    v130(v145, v181, v98);
    v100 = (v90 + 32) & ~v90;
    v101 = swift_allocObject();
    v102 = v185;
    *(v101 + 16) = v185;
    *(v101 + 24) = v95;
    v96(v101 + v100, v99, v98);
    sub_1D1A768EC(sub_1D1B0C2EC, v93, sub_1D1B0C500, v101, &v186);
    v145 = v186;
    v146 = v188;
    v143 = ((v131 + 48) & ~v131);
    v103 = &v143[v158 + 7] & 0xFFFFFFFFFFFFFFF8;
    v133 = v103;
    v158 = v187;
    v186 = 0x6165526863746142;
    *&v187 = 0xEA00000000002D64;
    v104 = (*(v147 + 136))(v102);
    MEMORY[0x1D3890F70](v104);

    v147 = v186;
    v144 = v187;
    v105 = v164;
    sub_1D1E67F8C();
    v106 = sub_1D1E67E7C();
    (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
    v107 = v182;
    v159(v178, v151, v182);
    v108 = v149;
    (*(v149 + 16))(v163, v172, v162);
    v109 = v180;
    v168(v184, v183, v180);
    v139(v171, v152, v176);
    v110 = (v103 + *(v108 + 80) + 17) & ~*(v108 + 80);
    v111 = (v148 + v132 + v110) & ~v132;
    v112 = (v170 + v136 + v111) & ~v136;
    v113 = (v161 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
    v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
    v115 = swift_allocObject();
    *(v115 + 16) = 0;
    *(v115 + 24) = 0;
    v116 = v178;
    v117 = v179;
    *(v115 + 32) = v185;
    *(v115 + 40) = v117;
    v135(&v143[v115], v116, v107);
    v118 = (v115 + v133);
    *v118 = "BatchCharacteristicRead";
    *(v118 + 1) = 23;
    v118[16] = 2;
    v119 = (v115 + v110);
    v120 = v162;
    (*(v108 + 32))(v119, v163, v162);
    v153(v115 + v111, v184, v109);
    v121 = v176;
    v141(v115 + v112, v171, v176);
    *(v115 + v113) = v173;
    *(v115 + v114) = v142;
    v122 = (v115 + ((v114 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v122 = v145;
    *(v122 + 8) = v158;
    *(v122 + 3) = v146;

    swift_unknownObjectRetain();

    v54 = v183;
    sub_1D17C6EF0(v147, v144, v164, &unk_1D1E97AE0, v115);

    (*(v108 + 8))(v172, v120);
    (*(v167 + 8))(v181, v177);
    (*(v166 + 8))(v152, v121);
    (*(v165 + 8))(v151, v182);
  }

  v126 = v180;
  (*(v155 + 32))(v157, v174, v156);
  return (*(v175 + 8))(v54, v126);
}

uint64_t sub_1D1B04A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[49] = v30;
  v8[50] = v31;
  v8[47] = a8;
  v8[48] = v29;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  v8[42] = a1;
  v10 = *a6;
  v11 = *(v31 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[51] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[52] = v13;
  v8[53] = *(v13 + 64);
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v14 = sub_1D1E66A7C();
  v8[57] = v14;
  v15 = *(v14 - 8);
  v8[58] = v15;
  v16 = *(v15 + 64) + 15;
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v17 = *(v10 + 88);
  v8[62] = v17;
  v8[63] = *(v17 + 16);
  v8[64] = *(v10 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8[65] = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  v8[66] = sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v18 = sub_1D1E680DC();
  v8[67] = v18;
  v19 = *(v18 - 8);
  v8[68] = v19;
  v20 = *(v19 + 64) + 15;
  v8[69] = swift_task_alloc();
  v8[70] = swift_getWitnessTable();
  v21 = type metadata accessor for AsyncBatchedSequence();
  v8[71] = v21;
  v22 = *(v21 - 8);
  v8[72] = v22;
  v23 = *(v22 + 64) + 15;
  v8[73] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v8[78] = updated;
  v26 = *(*(updated - 8) + 64) + 15;
  v8[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B04E5C, a6, 0);
}

uint64_t sub_1D1B04E5C()
{
  v41 = v0;
  if (*(v0 + 344))
  {
    v22 = *(v0 + 632);
    v23 = *(v0 + 624);
    v24 = *(v0 + 520);
    v25 = *(v0 + 400);
    v26 = *(v0 + 408);
    v27 = *(v0 + 392);
    v28 = *(v0 + 352);
    v29 = *(v0 + 360);
    v38 = 0uLL;
    v40 = 0;
    v39 = 0;
    sub_1D1B07430(v28, &v38, v26, v27, v24, v25);
    *(v0 + 640) = *(v29 + 112);

    sub_1D1ABE6AC(v24, v0 + 232);

    v30 = *(v0 + 248);
    *v22 = *(v0 + 232);
    *(v22 + 16) = v30;
    swift_storeEnumTagMultiPayload();
    v31 = swift_task_alloc();
    *(v0 + 648) = v31;
    *v31 = v0;
    v31[1] = sub_1D1B051E8;
    v32 = *(v0 + 632);

    return sub_1D1AB6894(v32, 0, 0, 0, 0);
  }

  else
  {
    v1 = *(v0 + 616);
    v2 = *(v0 + 584);
    v3 = *(v0 + 576);
    v4 = *(v0 + 568);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    v7 = *(v0 + 536);
    v8 = *(v0 + 520);
    v37 = *(v0 + 512);
    v35 = *(v0 + 560);
    v36 = *(v0 + 496);
    v9 = *(v0 + 408);
    v34 = *(v0 + 368);
    v10 = type metadata accessor for StateSnapshot(0);
    *(v0 + 656) = v10;
    v11 = *(v10 - 8);
    *(v0 + 664) = v11;
    v12 = *(v11 + 56);
    *(v0 + 672) = v12;
    *(v0 + 680) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v1, 1, 1, v10);
    *(v0 + 688) = *(v8 + 16);
    *(v0 + 256) = sub_1D1E6757C();
    (*(v6 + 16))(v5, v34, v7);
    sub_1D1D758D4(1, v7, v2);
    v13 = sub_1D1D7595C(v4);
    (*(v3 + 8))(v2, v4);
    *(v0 + 264) = v13;
    type metadata accessor for CharacteristicValueModerator();
    WitnessTable = swift_getWitnessTable();
    *(v0 + 696) = WitnessTable;
    v15 = *(v0 + 560);
    v16 = *(v0 + 536);
    v17 = *(v0 + 360);
    v18 = *(MEMORY[0x1E69E85D8] + 4);
    v19 = swift_task_alloc();
    *(v0 + 704) = v19;
    v20 = type metadata accessor for AsyncBatchedSequence.Iterator();
    v21 = swift_getWitnessTable();
    *v19 = v0;
    v19[1] = sub_1D1B055A4;

    return MEMORY[0x1EEE6D8E0](v0 + 272, v17, WitnessTable, v20, v21, v0 + 280);
  }
}

uint64_t sub_1D1B051E8()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 360);
  v6 = *v0;

  sub_1D1AB1124(v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1B05344, v4, 0);
}

uint64_t sub_1D1B05344()
{
  v1 = v0[77];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[65];
  v26 = v0[64];
  v24 = v0[70];
  v25 = v0[62];
  v9 = v0[51];
  v23 = v0[46];
  v10 = type metadata accessor for StateSnapshot(0);
  v0[82] = v10;
  v11 = *(v10 - 8);
  v0[83] = v11;
  v12 = *(v11 + 56);
  v0[84] = v12;
  v0[85] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v1, 1, 1, v10);
  v0[86] = *(v8 + 16);
  v0[32] = sub_1D1E6757C();
  (*(v6 + 16))(v5, v23, v7);
  sub_1D1D758D4(1, v7, v2);
  v13 = sub_1D1D7595C(v4);
  (*(v3 + 8))(v2, v4);
  v0[33] = v13;
  type metadata accessor for CharacteristicValueModerator();
  WitnessTable = swift_getWitnessTable();
  v0[87] = WitnessTable;
  v15 = v0[70];
  v16 = v0[67];
  v17 = v0[45];
  v18 = *(MEMORY[0x1E69E85D8] + 4);
  v19 = swift_task_alloc();
  v0[88] = v19;
  v20 = type metadata accessor for AsyncBatchedSequence.Iterator();
  v21 = swift_getWitnessTable();
  *v19 = v0;
  v19[1] = sub_1D1B055A4;

  return MEMORY[0x1EEE6D8E0](v0 + 34, v17, WitnessTable, v20, v21, v0 + 35);
}

uint64_t sub_1D1B055A4()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v7 = *v1;
  *(*v1 + 712) = v0;

  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_1D1B06A98;
  }

  else
  {
    v5 = sub_1D1B056BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1B056BC()
{
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v0 + 712);
    v3 = *(v0 + 528);
    v4 = *(v0 + 512);
    v5 = *(v0 + 496);
    v6 = *(v0 + 400);
    v59 = *(v0 + 408);
    v56 = v6;
    v57 = v5;
    v7 = *(v0 + 392);
    v61 = *(v0 + 360);
    v63 = *(v0 + 688);
    v65 = *(v0 + 344);
    *(v0 + 312) = v1;
    v8 = swift_task_alloc();
    v8[2] = v4;
    v8[3] = v7;
    v8[4] = v5;
    v8[5] = v6;
    sub_1D1E67D1C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v9 = sub_1D1E67ACC();

    v58 = v9;
    *(v0 + 320) = v9;
    v10 = swift_task_alloc();
    *v10 = v4;
    v10[1] = v7;
    v10[2] = v57;
    v10[3] = v6;
    KeyPath = swift_getKeyPath();

    v12 = swift_task_alloc();
    v12[2] = v4;
    v12[3] = v7;
    v12[4] = v57;
    v12[5] = v56;
    v12[6] = KeyPath;
    WitnessTable = swift_getWitnessTable();
    v15 = sub_1D18CE91C(sub_1D1B0C100, v12, v3, v59, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);

    *(v0 + 328) = v15;
    swift_beginAccess();
    sub_1D1E681FC();
    sub_1D1E67D1C();
    swift_getWitnessTable();
    sub_1D1E681DC();
    swift_endAccess();

    if (!v65 || (v16 = *(v0 + 688), v17 = *(v0 + 344), sub_1D1B07554(v58, *(v0 + 408), *(v0 + 520)), , sub_1D1E6769C(), , sub_1D1E6764C(), (v17 & 2) == 0))
    {

      v34 = *(v0 + 696);
      v35 = *(v0 + 560);
      v36 = *(v0 + 536);
      v37 = *(v0 + 360);
      v38 = *(MEMORY[0x1E69E85D8] + 4);
      v39 = swift_task_alloc();
      *(v0 + 704) = v39;
      v40 = type metadata accessor for AsyncBatchedSequence.Iterator();
      v41 = swift_getWitnessTable();
      *v39 = v0;
      v39[1] = sub_1D1B055A4;

      return MEMORY[0x1EEE6D8E0](v0 + 272, v37, v34, v40, v41, v0 + 280);
    }

    v42 = *(v0 + 632);
    v43 = *(v0 + 624);
    v44 = *(v0 + 520);
    v45 = *(v0 + 408);
    *(v0 + 720) = *(*(v0 + 360) + 112);

    sub_1D1ABE6AC(v44, v0 + 208);

    v46 = *(v0 + 224);
    *v42 = *(v0 + 208);
    *(v42 + 16) = v46;
    swift_storeEnumTagMultiPayload();
    v47 = swift_task_alloc();
    *(v0 + 728) = v47;
    *v47 = v0;
    v48 = sub_1D1B05DA8;
    goto LABEL_14;
  }

  v18 = *(v0 + 344);
  v19 = *(v0 + 264);

  v20 = *(v0 + 688);
  v21 = *(v0 + 408);
  v22 = *(v0 + 360);
  *(v0 + 304) = *(v0 + 384);
  swift_beginAccess();
  sub_1D1E681FC();
  sub_1D1E67D1C();
  swift_getWitnessTable();
  sub_1D1E681DC();
  swift_endAccess();
  if ((v18 & 4) != 0)
  {
    v49 = *(v0 + 632);
    v50 = *(v0 + 624);
    v51 = *(v0 + 520);
    v52 = *(v0 + 408);
    *(v0 + 744) = *(*(v0 + 360) + 112);
    v53 = *(v0 + 256);

    sub_1D1ABE6AC(v51, v0 + 184);
    v54 = *(v0 + 200);
    *v49 = *(v0 + 184);
    *(v49 + 16) = v54;
    swift_storeEnumTagMultiPayload();
    v47 = swift_task_alloc();
    *(v0 + 752) = v47;
    *v47 = v0;
    v48 = sub_1D1B06164;
LABEL_14:
    v47[1] = v48;
    v55 = *(v0 + 632);

    return sub_1D1AB6894(v55, 0, 0, 0, 0);
  }

  v23 = *(v0 + 632);
  v24 = *(v0 + 608);
  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v27 = *(v0 + 584);
  v28 = *(v0 + 552);
  v29 = *(v0 + 480);
  v30 = *(v0 + 488);
  v60 = *(v0 + 472);
  v62 = *(v0 + 448);
  v64 = *(v0 + 440);
  v66 = *(v0 + 432);
  sub_1D1B0ABE4(*(v0 + 616), *(v0 + 336));
  v31 = *(v0 + 256);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1D1B05DA8(uint64_t a1)
{
  v2 = *(*v1 + 728);
  v3 = *(*v1 + 720);
  v4 = *(*v1 + 632);
  v5 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 736) = a1;

  sub_1D1AB1124(v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1B05F00, v5, 0);
}

uint64_t sub_1D1B05F00()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 488);
  v3 = *(v0 + 376);
  (*(*(v0 + 504) + 128))(*(v0 + 512));
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 488));
    if (v5)
    {
      v6 = *(v0 + 616);
      v7 = *(v0 + 488);
      v8 = *(v0 + 456);
      v9 = *(v0 + 464);
      sub_1D18CE730(*(*(v0 + 736) + 56) + *(*(v0 + 664) + 72) * v4, *(v0 + 608));
      (*(v9 + 8))(v7, v8);
      sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);

      v10 = 0;
      goto LABEL_7;
    }

    v17 = *(v0 + 616);
    v18 = *(v0 + 488);
    v19 = *(v0 + 456);
    v20 = *(v0 + 464);

    (*(v20 + 8))(v18, v19);
    v16 = v17;
  }

  else
  {
    v11 = *(v0 + 616);
    v12 = *(v0 + 488);
    v13 = *(v0 + 456);
    v14 = *(v0 + 464);
    v15 = *(v0 + 736);

    (*(v14 + 8))(v12, v13);
    v16 = v11;
  }

  sub_1D1741A30(v16, &unk_1EC649E30, &unk_1D1E91250);
  v10 = 1;
LABEL_7:
  v21 = *(v0 + 680);
  v22 = *(v0 + 616);
  v23 = *(v0 + 608);
  (*(v0 + 672))(v23, v10, 1, *(v0 + 656));
  sub_1D1B0ABE4(v23, v22);
  v24 = *(v0 + 696);
  v25 = *(v0 + 560);
  v26 = *(v0 + 536);
  v27 = *(v0 + 360);
  v28 = *(MEMORY[0x1E69E85D8] + 4);
  v29 = swift_task_alloc();
  *(v0 + 704) = v29;
  v30 = type metadata accessor for AsyncBatchedSequence.Iterator();
  WitnessTable = swift_getWitnessTable();
  *v29 = v0;
  v29[1] = sub_1D1B055A4;

  return MEMORY[0x1EEE6D8E0](v0 + 272, v27, v24, v30, WitnessTable, v0 + 280);
}

uint64_t sub_1D1B06164(uint64_t a1)
{
  v2 = *(*v1 + 752);
  v3 = *(*v1 + 744);
  v4 = *(*v1 + 632);
  v5 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 760) = a1;

  sub_1D1AB1124(v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1B062BC, v5, 0);
}

uint64_t sub_1D1B062BC()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 480);
  v3 = *(v0 + 376);
  (*(*(v0 + 504) + 128))(*(v0 + 512));
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 480));
    if (v5)
    {
      v6 = *(v0 + 616);
      v7 = *(v0 + 480);
      v8 = *(v0 + 456);
      v9 = *(v0 + 464);
      sub_1D18CE730(*(*(v0 + 760) + 56) + *(*(v0 + 664) + 72) * v4, *(v0 + 600));
      (*(v9 + 8))(v7, v8);
      sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);

      v10 = 0;
      goto LABEL_7;
    }

    v17 = *(v0 + 616);
    v18 = *(v0 + 480);
    v19 = *(v0 + 456);
    v20 = *(v0 + 464);

    (*(v20 + 8))(v18, v19);
    v16 = v17;
  }

  else
  {
    v11 = *(v0 + 616);
    v12 = *(v0 + 480);
    v13 = *(v0 + 456);
    v14 = *(v0 + 464);
    v15 = *(v0 + 760);

    (*(v14 + 8))(v12, v13);
    v16 = v11;
  }

  sub_1D1741A30(v16, &unk_1EC649E30, &unk_1D1E91250);
  v10 = 1;
LABEL_7:
  v21 = *(v0 + 680);
  v22 = *(v0 + 616);
  v23 = *(v0 + 600);
  (*(v0 + 672))(v23, v10, 1, *(v0 + 656));
  sub_1D1B0ABE4(v23, v22);
  v24 = *(v0 + 632);
  v25 = *(v0 + 608);
  v26 = *(v0 + 600);
  v27 = *(v0 + 592);
  v28 = *(v0 + 584);
  v29 = *(v0 + 552);
  v30 = *(v0 + 480);
  v31 = *(v0 + 488);
  v35 = *(v0 + 472);
  v36 = *(v0 + 448);
  v37 = *(v0 + 440);
  v38 = *(v0 + 432);
  sub_1D1B0ABE4(*(v0 + 616), *(v0 + 336));
  v32 = *(v0 + 256);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D1B0654C(uint64_t a1)
{
  v2 = *(*v1 + 776);
  v3 = *(*v1 + 768);
  v4 = *(*v1 + 632);
  v5 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 784) = a1;

  sub_1D1AB1124(v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1B066A4, v5, 0);
}

uint64_t sub_1D1B066A4()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 472);
  v3 = *(v0 + 376);
  (*(*(v0 + 504) + 128))(*(v0 + 512));
  if (*(v1 + 16))
  {
    v4 = *(v0 + 784);
    v5 = sub_1D1742188(*(v0 + 472));
    v6 = *(v0 + 792);
    if (v7)
    {
      v8 = *(v0 + 616);
      v10 = *(v0 + 464);
      v9 = *(v0 + 472);
      v11 = *(v0 + 456);
      sub_1D18CE730(*(*(v0 + 784) + 56) + *(*(v0 + 664) + 72) * v5, *(v0 + 592));

      (*(v10 + 8))(v9, v11);
      sub_1D1741A30(v8, &unk_1EC649E30, &unk_1D1E91250);

      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v0 + 792);
    v13 = *(v0 + 784);
  }

  v14 = *(v0 + 616);
  v16 = *(v0 + 464);
  v15 = *(v0 + 472);
  v17 = *(v0 + 456);

  (*(v16 + 8))(v15, v17);
  sub_1D1741A30(v14, &unk_1EC649E30, &unk_1D1E91250);
  v12 = 1;
LABEL_6:
  v18 = *(v0 + 680);
  v19 = *(v0 + 616);
  v20 = *(v0 + 592);
  (*(v0 + 672))(v20, v12, 1, *(v0 + 656));
  sub_1D1B0ABE4(v20, v19);
  v21 = *(v0 + 344);
  v22 = *(v0 + 688);
  v23 = *(v0 + 408);
  v24 = *(v0 + 360);
  *(v0 + 304) = *(v0 + 384);
  swift_beginAccess();
  sub_1D1E681FC();
  sub_1D1E67D1C();
  swift_getWitnessTable();
  sub_1D1E681DC();
  swift_endAccess();
  if ((v21 & 4) != 0)
  {
    v36 = *(v0 + 632);
    v37 = *(v0 + 624);
    v38 = *(v0 + 520);
    v39 = *(v0 + 408);
    *(v0 + 744) = *(*(v0 + 360) + 112);
    v40 = *(v0 + 256);

    sub_1D1ABE6AC(v38, v0 + 184);
    v41 = *(v0 + 200);
    *v36 = *(v0 + 184);
    *(v36 + 16) = v41;
    swift_storeEnumTagMultiPayload();
    v42 = swift_task_alloc();
    *(v0 + 752) = v42;
    *v42 = v0;
    v42[1] = sub_1D1B06164;
    v43 = *(v0 + 632);

    return sub_1D1AB6894(v43, 0, 0, 0, 0);
  }

  else
  {
    v25 = *(v0 + 632);
    v26 = *(v0 + 608);
    v27 = *(v0 + 600);
    v28 = *(v0 + 592);
    v29 = *(v0 + 584);
    v30 = *(v0 + 552);
    v31 = *(v0 + 480);
    v32 = *(v0 + 488);
    v44 = *(v0 + 472);
    v45 = *(v0 + 448);
    v46 = *(v0 + 440);
    v47 = *(v0 + 432);
    sub_1D1B0ABE4(*(v0 + 616), *(v0 + 336));
    v33 = *(v0 + 256);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1D1B06A98()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 264);

  v5 = *(v0 + 280);
  *(v0 + 792) = v5;
  v6 = v5;
  v7 = sub_1D1E6655C();
  v71 = [v7 code];
  v8 = [v7 domain];
  v9 = sub_1D1E6781C();
  v69 = v10;
  v70 = v9;

  v67 = v5;
  *(v0 + 288) = sub_1D1E6757C();
  if (sub_1D1E67CBC())
  {
    v11 = 0;
    v12 = *(v0 + 416);
    v66 = *(v0 + 424);
    v75 = (v12 + 32);
    v77 = (v12 + 16);
    v73 = (v12 + 8);
    v68 = v12;
    do
    {
      v20 = *(v0 + 408);
      v21 = *(v0 + 384);
      v22 = sub_1D1E67C9C();
      sub_1D1E67C4C();
      if (v22)
      {
        v23 = *(v12 + 16);
        v23(*(v0 + 432), *(v0 + 384) + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11, *(v0 + 408));
        v24 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v30 = *(v0 + 408);
        v31 = *(v0 + 384);
        result = sub_1D1E688AC();
        if (v66 != 8)
        {
          __break(1u);
          return result;
        }

        v33 = *(v0 + 432);
        v34 = *(v0 + 408);
        *(v0 + 296) = result;
        v23 = *v77;
        (*v77)(v33, v0 + 296, v34);
        swift_unknownObjectRelease();
        v24 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      v25 = *(v0 + 688);
      (*v75)(*(v0 + 448), *(v0 + 432), *(v0 + 408));
      v26 = *(v0 + 256);
      sub_1D1E676AC();
      v27 = *(v0 + 40);
      if (v27 == 255)
      {
        v13 = *(v0 + 688);
        v15 = *(v0 + 440);
        v14 = *(v0 + 448);
        v16 = *(v0 + 408);
        v23(v15, v14, v16);
        *(v0 + 48) = v71;
        *(v0 + 56) = v70;
        *(v0 + 64) = v69;
        *(v0 + 72) = 2;
        sub_1D1E6769C();
        swift_bridgeObjectRetain_n();
        sub_1D1E676BC();
        v23(v15, v14, v16);
        *(v0 + 80) = v71;
        *(v0 + 88) = v70;
        *(v0 + 96) = v69;
        *(v0 + 104) = 2;
        sub_1D1E676BC();
        v17 = v16;
        v12 = v68;
        (*v73)(v14, v17);
      }

      else
      {
        v28 = *(v0 + 448);
        v29 = *(v0 + 408);
        sub_1D1B0C0CC(*(v0 + 16), *(v0 + 24), *(v0 + 32), v27);
        (*v73)(v28, v29);
      }

      v18 = *(v0 + 408);
      v19 = *(v0 + 384);
      ++v11;
    }

    while (v24 != sub_1D1E67CBC());
  }

  v35 = *(v0 + 344);

  if ((v35 & 4) == 0)
  {
    v36 = *(v0 + 632);
    v37 = *(v0 + 624);
    v38 = *(v0 + 520);
    v39 = *(v0 + 408);
    *(v0 + 768) = *(*(v0 + 360) + 112);
    v40 = *(v0 + 288);

    sub_1D1ABE6AC(v38, v0 + 160);

    v41 = *(v0 + 176);
    *v36 = *(v0 + 160);
    *(v36 + 16) = v41;
    swift_storeEnumTagMultiPayload();
    v42 = swift_task_alloc();
    *(v0 + 776) = v42;
    *v42 = v0;
    v43 = sub_1D1B0654C;
LABEL_20:
    v42[1] = v43;
    v65 = *(v0 + 632);

    return sub_1D1AB6894(v65, 0, 0, 0, 0);
  }

  v44 = *(v0 + 288);

  v45 = *(v0 + 344);
  v46 = *(v0 + 688);
  v47 = *(v0 + 408);
  v48 = *(v0 + 360);
  *(v0 + 304) = *(v0 + 384);
  swift_beginAccess();
  sub_1D1E681FC();
  sub_1D1E67D1C();
  swift_getWitnessTable();
  sub_1D1E681DC();
  swift_endAccess();
  if ((v45 & 4) != 0)
  {
    v59 = *(v0 + 632);
    v60 = *(v0 + 624);
    v61 = *(v0 + 520);
    v62 = *(v0 + 408);
    *(v0 + 744) = *(*(v0 + 360) + 112);
    v63 = *(v0 + 256);

    sub_1D1ABE6AC(v61, v0 + 184);
    v64 = *(v0 + 200);
    *v59 = *(v0 + 184);
    *(v59 + 16) = v64;
    swift_storeEnumTagMultiPayload();
    v42 = swift_task_alloc();
    *(v0 + 752) = v42;
    *v42 = v0;
    v43 = sub_1D1B06164;
    goto LABEL_20;
  }

  v49 = *(v0 + 632);
  v50 = *(v0 + 608);
  v51 = *(v0 + 600);
  v52 = *(v0 + 592);
  v53 = *(v0 + 584);
  v54 = *(v0 + 552);
  v55 = *(v0 + 480);
  v56 = *(v0 + 488);
  v72 = *(v0 + 472);
  v74 = *(v0 + 448);
  v76 = *(v0 + 440);
  v78 = *(v0 + 432);
  sub_1D1B0ABE4(*(v0 + 616), *(v0 + 336));
  v57 = *(v0 + 256);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_1D1B0714C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[6];
  v20 = (*(*(v1[5] - 8) + 80) + 72) & ~*(*(v1[5] - 8) + 80);
  v6 = (*(*(v1[5] - 8) + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1[7] + 8);
  swift_getAssociatedTypeWitness();
  v8 = *(v5 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v9 = *(sub_1D1E680DC() - 8);
  v10 = (v6 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[8];
  v15 = *(v1 + v6);
  v16 = *(v1 + v11);
  v17 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1D17C4BFC;

  return sub_1D1B04A1C(a1, v12, v13, v14, v1 + v20, v15, v1 + v10, v16);
}

uint64_t sub_1D1B07430(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *a2;
  v9 = *(a2 + 2);
  v10 = *(a2 + 24);
  swift_getTupleTypeMetadata2();
  v11 = sub_1D1E67C7C();
  sub_1D1AC25F8(v11, a3, &type metadata for StaticCharacteristic.LoadingState, *(a5 + 16));

  sub_1D1E6769C();
  v12 = *(a6 + 8);
  sub_1D1E67A9C();
  return v15;
}

uint64_t sub_1D1B07554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2();
  v5 = sub_1D1E67C7C();
  sub_1D1AC25F8(v5, a2, &type metadata for StaticCharacteristic.LoadingState, *(a3 + 16));

  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  sub_1D1E6769C();
  swift_getWitnessTable();
  sub_1D1E67A9C();
  return v7;
}

uint64_t sub_1D1B07678@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  *(a2 + 24) = v5;
  return sub_1D17418FC(v2, v3, v4, v5);
}

uint64_t sub_1D1B076BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1B076DC, 0, 0);
}

uint64_t sub_1D1B076DC()
{
  v1 = v0[2];
  sub_1D18CE730(v0[3], v1);
  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1B07784@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v3 = sub_1D1E6808C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D1B07828()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC6BE180);
  __swift_project_value_buffer(v0, qword_1EC6BE180);
  return sub_1D1E6708C();
}

uint64_t sub_1D1B078B0()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v5, qword_1EC6BE198);
  __swift_project_value_buffer(v5, qword_1EC6BE198);
  if (qword_1EC642348 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC6BE180);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1D1E66FEC();
}

void sub_1D1B079EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + *(type metadata accessor for BatchCharacteristicRequest.Response() + 36));
  if (v12)
  {
    v13 = v12;
    v14 = v12;
    v15 = sub_1D1E6655C();
    v33 = a2;
    v16 = v15;
    v27 = [v15 code];
    v17 = [v16 domain];
    v26 = a4;
    v18 = v17;
    v19 = sub_1D1E6781C();
    v28 = a1;
    v20 = v19;
    v22 = v21;

    (*(v8 + 16))(v11, v33, a3);
    v29 = v27;
    v30 = v20;
    v31 = v22;
    v32 = 2;
    v23 = *(v26 + 16);
    sub_1D1E6769C();
    sub_1D1E676BC();
  }

  else
  {
    (*(v8 + 16))(v11, a2, a3);
    v30 = 0;
    v31 = 0;
    v29 = 1;
    v32 = 3;
    v24 = *(a4 + 16);
    sub_1D1E6769C();
    sub_1D1E676BC();
  }
}

uint64_t sub_1D1B07C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a8;
  v53 = a2;
  v55 = a1;
  v57 = sub_1D1E66A7C();
  v54 = *(v57 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x1EEE9AC00](v57);
  v52 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - v16;
  v18 = sub_1D1E66FDC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D1E66FFC();
  v24 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if (result)
  {
    if ((a7 & 1) == 0)
    {
      if (a5)
      {
LABEL_9:
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v53;
        v27 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v23, v24, v27, a5, "#characteristics: %ld", v26, 0xCu);
        MEMORY[0x1D3893640](v26, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (a5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a5 & 0xFFFFF800) == 0xD800)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      if (a5 >> 16 <= 0x10)
      {
        a5 = &v58;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:

  (*(v19 + 16))(v22, a4, v18);
  v28 = sub_1D1E6705C();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1D1E6704C();
  v32 = v54;
  v33 = v57;
  (*(v54 + 16))(v17, v55, v57);
  swift_unknownObjectRetain_n();
  v34 = sub_1D1E6707C();
  v35 = sub_1D1E6831C();
  if (os_log_type_enabled(v34, v35))
  {
    v51 = a10;
    v36 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59 = v55;
    *v36 = 134218754;
    *(v36 + 4) = v53;
    *(v36 + 12) = 2082;
    sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v56 = v31;
    LODWORD(v53) = v35;
    v37 = sub_1D1E68FAC();
    v39 = v38;
    v54 = *(v32 + 8);
    (v54)(v17, v33);
    v40 = sub_1D1B1312C(v37, v39, &v59);

    *(v36 + 14) = v40;
    *(v36 + 22) = 2080;
    v41 = *(v51 + 16);
    v42 = (*(v41 + 136))(a9, v41);
    v44 = sub_1D1B1312C(v42, v43, &v59);

    *(v36 + 24) = v44;
    *(v36 + 32) = 2082;
    v45 = v52;
    (*(v41 + 128))(a9, v41);
    swift_unknownObjectRelease();
    v31 = v56;
    v46 = sub_1D1E68FAC();
    v48 = v47;
    swift_unknownObjectRelease();
    (v54)(v45, v33);
    v49 = sub_1D1B1312C(v46, v48, &v59);

    *(v36 + 34) = v49;
    _os_log_impl(&dword_1D16EC000, v34, v53, "Starting batch characteristic read operation with %ld characteristics (ID: %{public}s, home: %s (%{public}s))", v36, 0x2Au);
    v50 = v55;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v50, -1, -1);
    MEMORY[0x1D3893640](v36, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
    (*(v32 + 8))(v17, v33);
  }

  return v31;
}

uint64_t sub_1D1B08138(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v74 = a2;
  v6 = sub_1D1E66A7C();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  v11 = *(v77 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1D1E685AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v67 - v22;
  v24 = *(v17 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v21);
  v75 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v67 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v78 = &v67 - v31;
  (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(v24 + 48))(v23, 1, v17) == 1)
  {
    return (*(v19 + 8))(v23, v18);
  }

  v33 = v78;
  (*(v24 + 32))(v78, v23, v17);
  v34 = *(v77 + 16);
  v34(v15, a1, AssociatedTypeWitness);
  v34(v76, a1, AssociatedTypeWitness);
  v35 = *(v24 + 16);
  v35(v30, v33, v17);
  v35(v75, v33, v17);
  v36 = sub_1D1E6707C();
  v37 = sub_1D1E6832C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v74 = v38;
    v70 = swift_slowAlloc();
    v81 = v70;
    *v38 = 136315906;
    v67 = *(AssociatedConformanceWitness + 128);
    v69 = v37;
    v67(&v80, AssociatedTypeWitness, AssociatedConformanceWitness);
    v39 = sub_1D1E6789C();
    v41 = v40;
    v68 = v36;
    v77 = *(v77 + 8);
    (v77)(v15, AssociatedTypeWitness);
    v42 = sub_1D1B1312C(v39, v41, &v81);

    v43 = v74;
    *(v74 + 1) = v42;
    *(v43 + 6) = 2080;
    v44 = v76;
    v67(&v79, AssociatedTypeWitness, AssociatedConformanceWitness);
    v45 = sub_1D1D8227C();
    v47 = v46;
    (v77)(v44, AssociatedTypeWitness);
    v48 = sub_1D1B1312C(v45, v47, &v81);

    v49 = v74;
    *(v74 + 14) = v48;
    *(v49 + 11) = 2080;
    v50 = swift_getAssociatedConformanceWitness();
    v51 = (*(v50 + 64))(v17, v50);
    v53 = v52;
    v54 = *(v24 + 8);
    v54(v30, v17);
    v55 = sub_1D1B1312C(v51, v53, &v81);

    *(v49 + 3) = v55;
    *(v49 + 16) = 2082;
    v56 = v71;
    v57 = v75;
    (*(v50 + 56))(v17, v50);
    v54(v57, v17);
    sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v58 = v73;
    v59 = sub_1D1E68FAC();
    v61 = v60;
    (*(v72 + 8))(v56, v58);
    v62 = sub_1D1B1312C(v59, v61, &v81);

    *(v49 + 34) = v62;
    v63 = v68;
    _os_log_impl(&dword_1D16EC000, v68, v69, "\t %s/%s - %s (%{public}s)", v49, 0x2Au);
    v64 = v70;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v64, -1, -1);
    MEMORY[0x1D3893640](v49, -1, -1);

    return (v54)(v78, v17);
  }

  else
  {
    v65 = *(v24 + 8);
    v65(v75, v17);

    v65(v30, v17);
    v66 = *(v77 + 8);
    v66(v76, AssociatedTypeWitness);
    v66(v15, AssociatedTypeWitness);
    return (v65)(v78, v17);
  }
}

uint64_t sub_1D1B08964(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned __int8 a7, NSObject **a8, uint64_t a9, uint64_t a10)
{
  v131 = a4;
  v132 = a8;
  v134 = a5;
  v128 = a2;
  v129 = a3;
  v127 = a1;
  v123 = a7;
  v124 = sub_1D1E6702C();
  v133 = *(v124 - 8);
  v10 = *(v133 + 64);
  v11 = MEMORY[0x1EEE9AC00](v124);
  v117 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v116 = &v115 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v115 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v115 - v17;
  v18 = sub_1D1E66FDC();
  v125 = *(v18 - 8);
  v126 = v18;
  v19 = *(v125 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v120 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v121 = &v115 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v119 = &v115 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v115 - v26;
  v130 = sub_1D1E66A7C();
  v27 = *(v130 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x1EEE9AC00](v130);
  v31 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v115 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v115 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v115 - v38;
  v40 = *(a10 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v41 = sub_1D1E6805C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = (&v115 - v44);
  (*(v42 + 16))(&v115 - v44, v127, v41);
  v46 = (*(v42 + 88))(v45, v41);
  if (v46 != *MEMORY[0x1E69E8758])
  {
    v61 = v27[2];
    if (v46 == *MEMORY[0x1E69E8760])
    {
      v62 = v130;
      (v61)(v34, v128, v130);
      v63 = sub_1D1E6707C();
      v41 = sub_1D1E6833C();
      if (os_log_type_enabled(v63, v41))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v138 = v65;
        *v64 = 136446210;
        sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v66 = sub_1D1E68FAC();
        v68 = v67;
        (v27[1])(v34, v62);
        v69 = sub_1D1B1312C(v66, v68, &v138);

        *(v64 + 4) = v69;
        _os_log_impl(&dword_1D16EC000, v63, v41, "Batch read operation cancelled (ID: %{public}s)", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x1D3893640](v65, -1, -1);
        MEMORY[0x1D3893640](v64, -1, -1);
      }

      else
      {

        (v27[1])(v34, v62);
      }

      v45 = v132;
      v27 = v133;
      v47 = sub_1D1E66FFC();
      v42 = v121;
      sub_1D1E6703C();
      v70 = sub_1D1E683DC();
      result = sub_1D1E6855C();
      v92 = v134;
      if ((result & 1) == 0)
      {
        goto LABEL_56;
      }

      if (v123)
      {
        v93 = v124;
        if (HIDWORD(v134))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if ((v134 & 0xFFFFF800) == 0xD800)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (v134 >> 16 > 0x10)
        {
          goto LABEL_74;
        }

        v92 = &v137;
      }

      else
      {
        v93 = v124;
        if (!v134)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v103 = v116;
      sub_1D1E6706C();

      if ((v27[11])(v103, v93) == *MEMORY[0x1E69E93E8])
      {
        v104 = "[Error] Interval already ended";
      }

      else
      {
        (v27[1])(v103, v93);
        v104 = "Batch read canceled";
      }

      v107 = swift_slowAlloc();
      *v107 = 0;
      v108 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v47, v70, v108, v92, v104, v107, 2u);
      MEMORY[0x1D3893640](v107, -1, -1);
      goto LABEL_56;
    }

    v34 = v130;
    (v61)(v31, v128, v130);
    v70 = sub_1D1E6707C();
    v71 = sub_1D1E6833C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v128 = v72;
      v129 = swift_slowAlloc();
      v138 = v129;
      *v72 = 136446210;
      sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v73 = sub_1D1E68FAC();
      v75 = v74;
      (v27[1])(v31, v34);
      v76 = sub_1D1B1312C(v73, v75, &v138);

      v77 = v128;
      *(v128 + 1) = v76;
      v78 = v77;
      _os_log_impl(&dword_1D16EC000, v70, v71, "Batch read operation terminated with unknown reason (ID: %{public}s)", v77, 0xCu);
      v79 = v129;
      __swift_destroy_boxed_opaque_existential_1(v129);
      MEMORY[0x1D3893640](v79, -1, -1);
      MEMORY[0x1D3893640](v78, -1, -1);

      goto LABEL_24;
    }

LABEL_23:

    (v27[1])(v31, v34);
LABEL_24:
    v34 = v134;
    v94 = sub_1D1E66FFC();
    v95 = v120;
    v27 = v132;
    sub_1D1E6703C();
    v37 = sub_1D1E683DC();
    result = sub_1D1E6855C();
    v96 = v133;
    if (result)
    {
      LODWORD(v134) = v37;
      if (v123)
      {
        v80 = v124;
        if (HIDWORD(v34))
        {
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        if ((v34 & 0xFFFFF800) == 0xD800)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v34 >> 16 > 0x10)
        {
          goto LABEL_75;
        }

        v34 = &v139;
      }

      else
      {
        v80 = v124;
        if (!v34)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      v105 = v117;
      sub_1D1E6706C();

      if ((*(v96 + 88))(v105, v80) == *MEMORY[0x1E69E93E8])
      {
        v106 = "[Error] Interval already ended";
      }

      else
      {
        (*(v96 + 8))(v105, v80);
        v106 = "Batch read canceled";
      }

      v109 = swift_slowAlloc();
      *v109 = 0;
      v110 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v94, v134, v110, v34, v106, v109, 2u);
      MEMORY[0x1D3893640](v109, -1, -1);
    }

    (*(v125 + 8))(v95, v126);
    return (*(v42 + 8))(v45, v41);
  }

  (*(v42 + 96))(v45, v41);
  v47 = *v45;
  if (*v45)
  {
    v48 = v130;
    (v27[2])(v39, v128, v130);
    v49 = v47;
    v50 = sub_1D1E6707C();
    v51 = sub_1D1E6833C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v138 = v53;
      *v52 = 136446466;
      sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v54 = sub_1D1E68FAC();
      v56 = v55;
      (v27[1])(v39, v48);
      v57 = sub_1D1B1312C(v54, v56, &v138);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      swift_getErrorValue();
      v58 = sub_1D1E6915C();
      v60 = sub_1D1B1312C(v58, v59, &v138);

      *(v52 + 14) = v60;
      _os_log_impl(&dword_1D16EC000, v50, v51, "Batch read operation failed (ID: %{public}s): %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v53, -1, -1);
      MEMORY[0x1D3893640](v52, -1, -1);
    }

    else
    {

      (v27[1])(v39, v48);
    }

    v42 = v134;
    v34 = v122;
    v87 = sub_1D1E66FFC();
    sub_1D1E6703C();
    LOBYTE(v88) = sub_1D1E683DC();
    result = sub_1D1E6855C();
    v90 = v133;
    if ((result & 1) == 0)
    {
      goto LABEL_17;
    }

    if ((v123 & 1) == 0)
    {
      v91 = v124;
      if (!v42)
      {
        __break(1u);
LABEL_17:

        return (*(v125 + 8))(v34, v126);
      }

LABEL_37:

      v99 = v118;
      sub_1D1E6706C();

      if ((v90[11])(v99, v91) == *MEMORY[0x1E69E93E8])
      {
        v100 = "[Error] Interval already ended";
      }

      else
      {
        (v90[1])(v99, v91);
        v100 = "Batch read terminated successfully";
      }

      v101 = swift_slowAlloc();
      *v101 = 0;
      v102 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v87, v88, v102, v42, v100, v101, 2u);
      MEMORY[0x1D3893640](v101, -1, -1);

      return (*(v125 + 8))(v34, v126);
    }

    goto LABEL_33;
  }

  v42 = v130;
  (v27[2])(v37, v128, v130);
  v80 = sub_1D1E6707C();
  v81 = sub_1D1E6835C();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v138 = v83;
    *v82 = 136446210;
    sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v84 = sub_1D1E68FAC();
    v34 = v85;
    (v27[1])(v37, v42);
    v86 = sub_1D1B1312C(v84, v34, &v138);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_1D16EC000, v80, v81, "Batch read operation completed successfully (ID: %{public}s)", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x1D3893640](v83, -1, -1);
    MEMORY[0x1D3893640](v82, -1, -1);

    goto LABEL_29;
  }

LABEL_28:

  (v27[1])(v37, v42);
LABEL_29:
  v88 = v133;
  v97 = v134;
  v90 = v132;
  v47 = sub_1D1E66FFC();
  v42 = v119;
  sub_1D1E6703C();
  v87 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {
LABEL_56:

    return (*(v125 + 8))(v42, v126);
  }

  if (v123)
  {
    v98 = v124;
    if (HIDWORD(v97))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if ((v97 & 0xFFFFF800) == 0xD800)
    {
LABEL_81:
      __break(1u);
      return result;
    }

    if (v97 >> 16 > 0x10)
    {
      goto LABEL_77;
    }

    v97 = &v136;
  }

  else
  {
    v98 = v124;
    if (!v97)
    {
      __break(1u);
LABEL_33:
      v91 = v124;
      if (HIDWORD(v42))
      {
        __break(1u);
      }

      else
      {
        if ((v42 & 0xFFFFF800) == 0xD800)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (v42 >> 16 <= 0x10)
        {
          v42 = &v135;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_72;
    }
  }

  v111 = v115;
  sub_1D1E6706C();

  if ((*(v88 + 88))(v111, v98) == *MEMORY[0x1E69E93E8])
  {
    v112 = "[Error] Interval already ended";
  }

  else
  {
    (*(v88 + 8))(v111, v98);
    v112 = "Batch read terminated successfully";
  }

  v113 = swift_slowAlloc();
  *v113 = 0;
  v114 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v47, v87, v114, v97, v112, v113, 2u);
  MEMORY[0x1D3893640](v113, -1, -1);

  return (*(v125 + 8))(v42, v126);
}

uint64_t sub_1D1B09AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v29 = a2;
  v30 = a5;
  v7 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  v25 = sub_1D1E67D1C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v26 = sub_1D1E6806C();
  v24 = *(v26 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v22 = &v20 - v9;
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  v21 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  if (!sub_1D1E67CBC())
  {
LABEL_11:
    v31 = a1;
    sub_1D1E680BC();

    v19 = v22;
    sub_1D1E6809C();
    return (*(v24 + 8))(v19, v26);
  }

  v14 = 0;
  while (1)
  {
    v15 = sub_1D1E67C9C();
    sub_1D1E67C4C();
    if (v15)
    {
      (*(v11 + 16))(v13, a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14, v10);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1D1E688AC();
    if (v21 != 8)
    {
      break;
    }

    v31 = result;
    (*(v11 + 16))(v13, &v31, v10);
    swift_unknownObjectRelease();
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    v17 = swift_checkMetadataState();
    sub_1D1B09EAC(v13, v29, a4, v17, v30, AssociatedConformanceWitness);
    (*(v11 + 8))(v13, v10);
    ++v14;
    if (v16 == sub_1D1E67CBC())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1B09EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a4;
  v8 = type metadata accessor for BatchCharacteristicRequest.Response();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v63 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v63 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v63 - v21;
  v23 = *(a1 + *(v20 + 36));
  if (v23)
  {
    v24 = v9[2];
    v24(v16, a1, v8);
    v24(v13, a1, v8);
    v25 = v23;
    v26 = v23;
    v27 = sub_1D1E6707C();
    v28 = sub_1D1E6833C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v64 = v29;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = v69;
      *v29 = 136315650;
      v67 = v28;
      v65 = *(a6 + 128);
      v66 = v27;
      v65(&v71, v70, a6);
      v30 = sub_1D1E6789C();
      v32 = v31;
      v33 = v9[1];
      v33(v16, v8);
      v34 = sub_1D1B1312C(v30, v32, &v72);

      v36 = v64;
      v35 = v65;
      *(v64 + 1) = v34;
      *(v36 + 6) = 2080;
      v35(&v71, v70, a6);
      v37 = sub_1D1D8227C();
      v39 = v38;
      v33(v13, v8);
      v40 = sub_1D1B1312C(v37, v39, &v72);

      *(v36 + 14) = v40;
      *(v36 + 11) = 2114;
      v41 = v23;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 3) = v42;
      v43 = v68;
      v68->isa = v42;
      v44 = v66;
      _os_log_impl(&dword_1D16EC000, v66, v67, "\t❌ Failed to read characteristic: %s/%s with error: %{public}@", v36, 0x20u);
      sub_1D1741A30(v43, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v43, -1, -1);
      v45 = v69;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v45, -1, -1);
      MEMORY[0x1D3893640](v36, -1, -1);
    }

    else
    {

      v61 = v9[1];
      v61(v13, v8);
      v61(v16, v8);
    }
  }

  else
  {
    v46 = v9[2];
    v46(&v63 - v21, a1, v8);
    v46(v19, a1, v8);
    v47 = sub_1D1E6707C();
    v48 = sub_1D1E6832C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = v69;
      *v49 = 136315394;
      v66 = *(a6 + 128);
      v68 = v47;
      v67 = v48;
      (v66)(&v71, v70, a6);
      v50 = sub_1D1E6789C();
      v52 = v51;
      v53 = v9[1];
      v53(v22, v8);
      v54 = sub_1D1B1312C(v50, v52, &v72);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      (v66)(&v71, v70, a6);
      v55 = sub_1D1D8227C();
      v57 = v56;
      v53(v19, v8);
      v58 = sub_1D1B1312C(v55, v57, &v72);

      *(v49 + 14) = v58;
      v59 = v68;
      _os_log_impl(&dword_1D16EC000, v68, v67, "\t✅ Successfully read characteristic: %s/%s", v49, 0x16u);
      v60 = v69;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v60, -1, -1);
      MEMORY[0x1D3893640](v49, -1, -1);
    }

    else
    {

      v62 = v9[1];
      v62(v19, v8);
      v62(v22, v8);
    }
  }
}

uint64_t sub_1D1B0A48C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E680BC();
  return sub_1D1E680AC();
}

uint64_t sub_1D1B0A604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v18;
  *(v8 + 120) = v19;
  *(v8 + 80) = v16;
  *(v8 + 96) = v17;
  *(v8 + 48) = v14;
  *(v8 + 64) = v15;
  *(v8 + 32) = a5;
  *(v8 + 40) = a8;
  *(v8 + 152) = a7;
  *(v8 + 24) = a4;
  v9 = sub_1D1E66A7C();
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B0A6E8, 0, 0);
}

uint64_t sub_1D1B0A6E8()
{
  v30 = v0;
  v1 = *(v0 + 24);
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683FC();
  result = sub_1D1E6855C();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 152) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 40);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v8, v5, "Starting HomeKit batch operation", v7, 2u);
        MEMORY[0x1D3893640](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_10:

  v9 = *(v0 + 48);
  (*(*(v0 + 136) + 16))(*(v0 + 144), *(v0 + 56), *(v0 + 128));
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6831C();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v15 = *(v0 + 128);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v29[0] = v17;
    *v16 = 136446210;
    sub_1D1B0C084(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v18 = sub_1D1E68FAC();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_1D1B1312C(v18, v20, v29);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1D16EC000, v10, v11, "Starting HomeKit batch operation (ID: %{public}s)", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = *(v0 + 144);
  v23 = *(v0 + 112);
  v24 = *(v0 + 120);
  v25 = *(v0 + 64);
  v28 = *(v0 + 72);
  v26 = *(v0 + 96);
  v29[0] = *(v0 + 80);
  v29[1] = v26;
  (*(v24 + 96))(&v28, v29, v23);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1D1B0A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(*(a7 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v19 = a6;
  sub_1D17418FC(a3, a4, a5, a6);
  v16 = *(a9 + 16);
  sub_1D1E6769C();
  return sub_1D1E676BC();
}

uint64_t sub_1D1B0AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(MEMORY[0x1E69E86A8] + 4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  *v8 = v4;
  v8[1] = sub_1D17C4BFC;
  v11 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a4, v9, v10, v11);
}

uint64_t sub_1D1B0ABE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B0AC54(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 32) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1B0AC7C, 0, 0);
}

uint64_t sub_1D1B0AC7C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = *(MEMORY[0x1E69E88A0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1D1B0AD98;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v8, v4, v4, 0, 0, &unk_1D1E97A80, v5, v4);
}

uint64_t sub_1D1B0AD98()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A0477C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

unint64_t sub_1D1B0AED8()
{
  result = qword_1EC64AAB0;
  if (!qword_1EC64AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AAB0);
  }

  return result;
}

unint64_t sub_1D1B0AF30()
{
  result = qword_1EC64AAB8;
  if (!qword_1EC64AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AAB8);
  }

  return result;
}

unint64_t sub_1D1B0AF88()
{
  result = qword_1EC64AAC0;
  if (!qword_1EC64AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AAC0);
  }

  return result;
}

unint64_t sub_1D1B0AFE0()
{
  result = qword_1EC64AAC8[0];
  if (!qword_1EC64AAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64AAC8);
  }

  return result;
}

uint64_t sub_1D1B0B0CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  *(v5 + 88) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E58, &qword_1D1E91248) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B0B1B8, 0, 0);
}

uint64_t sub_1D1B0B1B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = sub_1D1E67E7C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;

  sub_1D1A01DEC(v1, &unk_1D1E97A98, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  *(v9 + 48) = v2;

  sub_1D1A01DEC(v1, &unk_1D1E97AA8, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(MEMORY[0x1E69E8708] + 4);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC64AB50, &qword_1D1E97AB0);
  *v11 = v0;
  v11[1] = sub_1D1B0B3CC;
  v13 = *(v0 + 56);
  v14 = *(v0 + 24);

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v12);
}

uint64_t sub_1D1B0B3CC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1D1B0B638;
  }

  else
  {
    v3 = sub_1D1B0B4E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B0B4E0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = **(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  sub_1D1741C08(v2, v1, &qword_1EC648E58, &qword_1D1E91248);
  result = (*(*(v4 - 8) + 48))(v1, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = *(v0 + 16);
    sub_1D1741A30(*(v0 + 56), &qword_1EC648E58, &qword_1D1E91248);
    sub_1D1B0ABE4(v7, v8);

    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

uint64_t sub_1D1B0B638()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1D1B0B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(MEMORY[0x1E69E86A8] + 4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  *v8 = v4;
  v8[1] = sub_1D17C4CF0;
  v11 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a4, v9, v10, v11);
}

uint64_t sub_1D1B0B798(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 88) = a6;
  *(v6 + 32) = a5;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  v7 = sub_1D1E68A4C();
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B0B864, 0, 0);
}

uint64_t sub_1D1B0B864()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1D1B0B940;
  v7 = v0[7];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1B0B940()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D1B0BC6C;
  }

  else
  {
    v6 = sub_1D1B0BAB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1B0BAB0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67F5C();
  if (v1 == 1)
  {
    sub_1D1E67D8C();
    sub_1D1B0C084(&qword_1EC6486C8, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1D1E6759C();
    swift_willThrow();
    v5 = *(v0 + 56);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(MEMORY[0x1E69E86A8] + 4);
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_1D1B0BCD0;
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    v12 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v11, v10, v3, v4, v12);
  }
}

uint64_t sub_1D1B0BC6C()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1B0BCD0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D1B0BE3C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B0B0CC(a1, a2, v6, v8, v7);
}

uint64_t sub_1D1B0BF04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1B0B6B0(a1, v4, v5, v6);
}

uint64_t sub_1D1B0BFB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B0B798(a1, v6, v4, v5, v7, v8);
}

uint64_t sub_1D1B0C084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B0C0CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D1757A60(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D1B0C160(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = *(sub_1D1E66A7C() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1D1E6709C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1D1E6701C() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  return sub_1D1B08964(a1, (v2 + v7), (v2 + v10), v2 + v13, *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8)), v4, v5);
}

uint64_t sub_1D1B0C2EC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1D1E6709C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v9 = *(sub_1D1E680BC() - 8);
  v10 = v1 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1D1B09AB0(a1, v1 + v6, v10, v3, v4);
}

uint64_t sub_1D1B0C500(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BatchCharacteristicRequest.Response();
  sub_1D1E67D1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v6 = *(sub_1D1E680BC() - 8);
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1D1B0A48C(a1, v7, v3, v4);
}

uint64_t sub_1D1B0C6B0(uint64_t a1)
{
  v30 = v1[4];
  v29 = v1[5];
  v2 = *(sub_1D1E6701C() - 8);
  v28 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1D1E66FDC() - 8);
  v5 = (v3 + *(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1D1E6709C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1D1E66A7C() - 8);
  v11 = (*(v10 + 64) + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = v1[3];
  v26 = v1[2];
  v14 = v1 + v3;
  v15 = *(v1 + v3);
  v16 = *(v14 + 1);
  v17 = *(v1 + v11);
  v18 = *(v1 + v12);
  v24 = *(v1 + v13);
  v19 = *(v1 + v13 + 16);
  v20 = *(v1 + v13 + 24);
  v21 = v14[16];
  v22 = swift_task_alloc();
  *(v27 + 16) = v22;
  *v22 = v27;
  v22[1] = sub_1D17C4BFC;

  return sub_1D1B0A604(a1, v26, v25, v1 + v28, v15, v16, v21, v1 + v5);
}

uint64_t sub_1D1B0C97C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1D1E669FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D174E818(a2, v8);
    v14 = sub_1D1E66A7C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D1741A30(v8, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1752780(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1D1E66A7C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1D1B0CBA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643F88, &unk_1D1E97C60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC643F88, &unk_1D1E97C60);
    v15 = *v3;
    v16 = sub_1D17420B0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D1734858();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_1D174F3D0(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D1741A30(v9, &qword_1EC643F88, &unk_1D1E97C60);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1D17529C4(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1D1B0CE00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1D16EEE38(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1D1752B38(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1D1741A30(a1, &qword_1EC645D58, &unk_1D1E7E530);
    v8 = *v2;
    v9 = sub_1D171D140(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1D1734AC8();
        v14 = v16;
      }

      sub_1D16EEE38((*(v14 + 56) + 32 * v11), v17);
      sub_1D1757DE8(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1D1741A30(v17, &qword_1EC645D58, &unk_1D1E7E530);
  }

  return result;
}

uint64_t sub_1D1B0CF04(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for StaticAccessory(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D174EA20(a2, v8);
    v14 = sub_1D1E66A7C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D1741A30(v8, &qword_1EC6436C8, &unk_1D1E97C40);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for StaticAccessory);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1753298(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1D1E66A7C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1D1B0D124(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for StaticService(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D174E9CC(a2, v8);
    v14 = sub_1D1E66A7C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D1741A30(v8, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for StaticService);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1752D1C(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1D1E66A7C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1D1B0D344(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for StateSnapshot(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D174EC34(a2, v8);
    v14 = sub_1D1E66A7C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D1741A30(v8, &unk_1EC649E30, &unk_1D1E91250);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for StateSnapshot);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1753764(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1D1E66A7C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1D1B0D564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1D1753AF4(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1D1E66A7C();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1D1742188(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1D1737C44();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1D1E66A7C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1D1757DE0(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1D1E66A7C();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1D1B0D724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1D1753B34(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1D1E66A7C();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1D1742188(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1D1737C58();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1D1E66A7C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1D1757DE0(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1D1E66A7C();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1D1B0D938(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for IconTextValueStringDataHolder();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC644C58, &unk_1D1E77530);
    sub_1D174ED2C(a2, v8);
    sub_1D1757BF8(a2);
    return sub_1D1741A30(v8, &qword_1EC644C58, &unk_1D1E77530);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for IconTextValueStringDataHolder);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1D1754068(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D1757BF8(a2);
    *v2 = v18;
  }

  return result;
}

unint64_t sub_1D1B0DAF8(uint64_t a1, int a2)
{
  v3 = v2;
  if (*(a1 + 32) == 255)
  {
    sub_1D1741A30(a1, &qword_1EC648B70, &qword_1D1E90DF0);
    v9 = *v2;
    v10 = sub_1D171D4E0(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D17392DC();
        v15 = v20;
      }

      v16 = *(v15 + 56) + 40 * v12;
      v17 = *(v16 + 32);
      v18 = *(v16 + 16);
      v21 = *v16;
      v22 = v18;
      v23 = v17;
      sub_1D175076C(v12, v15);
      *v3 = v15;
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v23 = -1;
    }

    return sub_1D1741A30(&v21, &qword_1EC648B70, &qword_1D1E90DF0);
  }

  else
  {
    v5 = *(a1 + 16);
    v21 = *a1;
    v22 = v5;
    v23 = *(a1 + 32);
    v6 = *v2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    result = sub_1D1754888(&v21, a2, v7);
    *v2 = v19;
  }

  return result;
}

_OWORD *sub_1D1B0DC1C(uint64_t a1, int a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1D16EEE38(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1D17549AC(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1D1741A30(a1, &qword_1EC645D58, &unk_1D1E7E530);
    v8 = *v2;
    v9 = sub_1D171D4E0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1D173946C();
        v14 = v16;
      }

      sub_1D16EEE38((*(v14 + 56) + 32 * v11), v17);
      sub_1D1750920(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1D1741A30(v17, &qword_1EC645D58, &unk_1D1E7E530);
  }

  return result;
}

uint64_t sub_1D1B0DD20(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for StaticCluster();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC646AF8, &unk_1D1E97C50);
    v15 = *v3;
    v16 = sub_1D171D278(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D1739780();
        v21 = v26;
      }

      sub_1D1B13984(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for StaticCluster);
      sub_1D1750AB4(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D1741A30(v9, &qword_1EC646AF8, &unk_1D1E97C50);
  }

  else
  {
    sub_1D1B13984(a1, v14, type metadata accessor for StaticCluster);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1D1754AD8(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1D1B0DF74(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for StaticEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC644780, &qword_1D1E91AA0);
    v15 = *v3;
    v16 = sub_1D171D15C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D17399B4();
        v21 = v26;
      }

      sub_1D1B13984(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for StaticEndpoint);
      sub_1D1750C8C(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
  }

  else
  {
    sub_1D1B13984(a1, v14, type metadata accessor for StaticEndpoint);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1D1754C2C(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1D1B0E1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_1D1754F24(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = sub_1D1E66A7C();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_1D1742188(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_1D1739E50();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = sub_1D1E66A7C();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15);
      swift_unknownObjectRelease();
      sub_1D1750F5C(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = sub_1D1E66A7C();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t sub_1D1B0E394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for StaticMatterDevice();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC643650, &qword_1D1E71D40);
    v15 = *v3;
    v16 = sub_1D17420B0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D173A0D0();
        v21 = v26;
      }

      sub_1D1B13984(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for StaticMatterDevice);
      sub_1D1751214(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
  }

  else
  {
    sub_1D1B13984(a1, v14, type metadata accessor for StaticMatterDevice);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1D1755100(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1D1B0E5E8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for MatterStateSnapshot();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D174EFB8(a2, v8);
    v14 = sub_1D1E66A7C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D1741A30(v8, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for MatterStateSnapshot);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1755254(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1D1E66A7C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1D1B0E85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (*(a1 + 24))
  {
    sub_1D16EEE38(a1, v25);
    v10 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    result = a3(v25, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v23;
  }

  else
  {
    sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
    v16 = *v6;
    v17 = a4(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v24 = *v7;
      if (!v21)
      {
        a6();
        v22 = v24;
      }

      sub_1D16EEE38((*(v22 + 56) + 32 * v19), v25);
      a5(v19, v22);
      *v7 = v22;
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    return sub_1D1741A30(v25, &qword_1EC649700, &qword_1D1E6E910);
  }

  return result;
}

uint64_t sub_1D1B0E988(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ActionEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC646C40, &unk_1D1E825E0);
    v15 = *v3;
    v16 = sub_1D171D15C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D173AA00();
        v21 = v26;
      }

      sub_1D1B13984(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for ActionEndpoint);
      sub_1D17515B4(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D1741A30(v9, &qword_1EC646C40, &unk_1D1E825E0);
  }

  else
  {
    sub_1D1B13984(a1, v14, type metadata accessor for ActionEndpoint);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1D1755554(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

unint64_t sub_1D1B0EBDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32) == 255)
  {
    sub_1D1741A30(a1, &qword_1EC648B70, &qword_1D1E90DF0);
    v9 = *v2;
    v10 = sub_1D171D1A4(a2 & 0xFFFFFFFFFFLL);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D173AF4C();
        v15 = v20;
      }

      v16 = *(v15 + 56) + 40 * v12;
      v17 = *(v16 + 32);
      v18 = *(v16 + 16);
      v21 = *v16;
      v22 = v18;
      v23 = v17;
      sub_1D17518F4(v12, v15);
      *v3 = v15;
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v23 = -1;
    }

    return sub_1D1741A30(&v21, &qword_1EC648B70, &qword_1D1E90DF0);
  }

  else
  {
    v5 = *(a1 + 16);
    v21 = *a1;
    v22 = v5;
    v23 = *(a1 + 32);
    v6 = *v2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    result = sub_1D17557EC(&v21, a2 & 0xFFFFFFFFFFLL, v7);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_1D1B0ED54(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for HomeState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC649148, &qword_1D1E96490);
    sub_1D174F00C(a2, v8);
    v14 = sub_1D1E66A7C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for HomeState);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D1755D44(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1D1E66A7C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1D1B0EF74(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for StaticLightProfile();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC6430E8, &unk_1D1E71440);
    sub_1D174F060(a2, v8);
    v14 = sub_1D1E66A7C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1D1741A30(v8, &qword_1EC6430E8, &unk_1D1E71440);
  }

  else
  {
    sub_1D1B13984(a1, v12, type metadata accessor for StaticLightProfile);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1D17568C4(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1D1E66A7C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1D1B0F194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for StaticCharacteristic();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC643630, &qword_1D1E71D10);
    v15 = *v3;
    v16 = sub_1D171D140(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D173DAEC();
        v21 = v26;
      }

      sub_1D1B13984(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for StaticCharacteristic);
      sub_1D1751FA0(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1D1741A30(v9, &qword_1EC643630, &qword_1D1E71D10);
  }

  else
  {
    sub_1D1B13984(a1, v14, type metadata accessor for StaticCharacteristic);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1D1756A98(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1D1B0F3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ABD8, &unk_1D1E97C30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RoomType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1D1741A30(a1, &qword_1EC64ABD8, &unk_1D1E97C30);
    sub_1D174F0B4(a2, a3, v10);

    return sub_1D1741A30(v10, &qword_1EC64ABD8, &unk_1D1E97C30);
  }

  else
  {
    sub_1D1B13984(a1, v14, type metadata accessor for RoomType);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1D1756BEC(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1D1B0F5BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_1D1757410(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1D1E66A7C();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1D1742188(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_1D173EFA0();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_1D1E66A7C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_1D1757DE0(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_1D1E66A7C();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t RecommendationsModerator2.currentUserActionPredictions(manager:for:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v3[24] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[26] = v5;
  v6 = *(v5 - 8);
  v3[27] = v6;
  v7 = *(v6 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B0F8B8, v2, 0);
}

uint64_t sub_1D1B0F8B8()
{
  v59 = v0;
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  swift_beginAccess();
  v5 = *(v3 + 144);
  v6 = *(v2 + 88);
  v0[31] = v6;
  v7 = *(v6 + 16);
  v0[32] = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[33] = AssociatedTypeWitness;
  v56 = AssociatedTypeWitness;
  v0[34] = sub_1D1E67D1C();
  v0[35] = sub_1D174A5FC(qword_1EE07DD78);

  sub_1D1E676AC();

  v10 = v0[17];
  if (v10)
  {
    if (qword_1EE07A0C8 != -1)
    {
      swift_once();
    }

    v11 = v0[30];
    v12 = v0[26];
    v13 = v0[27];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[21];
    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE07A0D0);
    (*(v13 + 16))(v11, v14, v12);
    v18 = v10;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();

    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();

    swift_unknownObjectRelease();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[30];
    v24 = v0[26];
    v23 = v0[27];
    if (v21)
    {
      v53 = v0[21];
      v25 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = v55;
      *v25 = 136315394;
      v54 = v20;
      swift_getAssociatedTypeWitness();
      v26 = swift_getAssociatedConformanceWitness();
      v27 = sub_1D1B136D4(v53, v26, v22);
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_1D1B1312C(v27, v29, &v58);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = MEMORY[0x1D3891260](v18, v56);
      v33 = v32;
      swift_bridgeObjectRelease_n();
      v34 = sub_1D1B1312C(v31, v33, &v58);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_1D16EC000, v19, v54, "%s existing predictions: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v55, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      (*(v23 + 8))(v22, v24);
    }

    goto LABEL_13;
  }

  v35 = v0[26];
  v36 = v0[22];
  v37 = v0[23];
  swift_beginAccess();
  v38 = *(v37 + 136);

  v39 = swift_checkMetadataState();
  sub_1D1E676AC();

  if (!v0[18])
  {
    goto LABEL_12;
  }

  v40 = v0[26];
  v41 = v0[22];
  swift_unknownObjectRelease();
  swift_beginAccess();
  v42 = *(v37 + 136);

  sub_1D1E676AC();

  v43 = v0[19];
  v0[36] = v43;
  if (!v43)
  {
LABEL_12:
    v18 = sub_1D1E67C7C();
LABEL_13:
    v49 = v0[29];
    v48 = v0[30];
    v50 = v0[28];
    v51 = v0[25];

    v52 = v0[1];

    return v52(v18);
  }

  v44 = *(AssociatedConformanceWitness + 56);
  v57 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  v0[37] = v46;
  *v46 = v0;
  v46[1] = sub_1D1B0FEC0;

  return v57(v39, AssociatedConformanceWitness);
}

uint64_t sub_1D1B0FEC0(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B0FFD8, v3, 0);
}

uint64_t sub_1D1B0FFD8()
{
  v47 = v0;
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[23];
  v4 = *(v0[27] + 16);
  v4(v1, v0[22], v0[26]);
  sub_1D1E669EC();
  v5 = sub_1D1E669FC();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  swift_beginAccess();
  sub_1D1B0C97C(v2, v1);
  swift_endAccess();
  if (qword_1EE07A0C8 != -1)
  {
    swift_once();
  }

  v6 = v0[38];
  v7 = v0[28];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EE07A0D0);
  v4(v7, v10, v8);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[38];
  if (v15)
  {
    v45 = v4;
    v17 = v0[31];
    v18 = v0[32];
    v19 = v0[27];
    v20 = v0[28];
    v42 = v0[26];
    v43 = v0[33];
    v41 = v0[21];
    v21 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v21 = 136315394;
    v46 = v44;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v4 = v45;
    v23 = sub_1D1B136D4(v41, AssociatedConformanceWitness, v20);
    v25 = v24;
    (*(v19 + 8))(v20, v42);
    v26 = sub_1D1B1312C(v23, v25, &v46);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = MEMORY[0x1D3891260](v16, v43);
    v29 = v28;
    swift_bridgeObjectRelease_n();
    v30 = sub_1D1B1312C(v27, v29, &v46);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_1D16EC000, v13, v14, "%s freshly fetched predictions: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v44, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  else
  {
    v32 = v0[27];
    v31 = v0[28];
    v33 = v0[26];
    v34 = v0[38];
    swift_bridgeObjectRelease_n();

    (*(v32 + 8))(v31, v33);
  }

  v35 = v0[38];
  v37 = v0[34];
  v36 = v0[35];
  v38 = v0[23];
  v4(v0[29], v0[22], v0[26]);
  v0[20] = v35;
  swift_beginAccess();
  sub_1D1E6769C();

  sub_1D1E676BC();
  swift_endAccess();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v39 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B10438, v39, 0);
}

uint64_t sub_1D1B10438()
{
  v1 = v0[23];
  v0[39] = swift_unknownObjectWeakLoadStrong();
  v0[40] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1B104B0, v1, 0);
}

uint64_t sub_1D1B104B0()
{
  if (v0[39])
  {
    v1 = v0[40];
    v2 = v0[38];
    v3 = v0[36];
    v4 = v0[39];
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v0[36];
  }

  swift_unknownObjectRelease();
  v7 = v0[38];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v11 = v0[25];

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_1D1B10594(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  v3 = sub_1D1E66A7C();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B106A0, v1, 0);
}

uint64_t sub_1D1B106A0()
{
  v106 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v103 = *(v0 + 256);
  swift_beginAccess();
  v4 = *(v3 + 136);
  v5 = *(v1 + 88);
  *(v0 + 328) = *(v5 + 16);
  v6 = *(v1 + 80);
  *(v0 + 336) = v6;
  *(v0 + 344) = swift_getAssociatedTypeWitness();
  v7 = sub_1D174A5FC(qword_1EE07DD78);
  *(v0 + 352) = v7;
  v99 = v7;
  *(v0 + 160) = nullsub_2(v4);
  v100 = v2;
  v8 = sub_1D1E6763C();

  WitnessTable = swift_getWitnessTable();
  v88 = sub_1D18CE91C(sub_1D18CFDFC, 0, v8, v2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 48);
  v96 = v12;
  v13 = swift_checkMetadataState();
  *(v0 + 168) = v12(v13, AssociatedConformanceWitness);
  v14 = swift_task_alloc();
  *(v14 + 16) = v6;
  *(v14 + 24) = v5;
  swift_getAssociatedTypeWitness();
  v98 = sub_1D1E67D1C();
  v15 = swift_getWitnessTable();
  v93 = sub_1D18CE91C(sub_1D1B13948, v14, v98, v100, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  *(v0 + 360) = v93;

  *(v0 + 184) = v96(v13, AssociatedConformanceWitness);
  swift_getTupleTypeMetadata2();
  v17 = sub_1D1E67C7C();
  v18 = sub_1D1AC25F8(v17, v100, v6, v99);

  *(v0 + 192) = v18;
  v19 = swift_task_alloc();
  *(v19 + 16) = v6;
  *(v19 + 24) = v5;
  sub_1D1E6769C();
  swift_getWitnessTable();
  sub_1D1E67A9C();

  *(v0 + 368) = *(v0 + 176);
  v20 = *(v88 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = *(v0 + 288);
    v23 = *(v22 + 16);
    v22 += 16;
    v101 = v23;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v91 = *(v0 + 264);
    v97 = v88 + v24;
    v25 = *(v22 + 56);
    v26 = v93;
    v95 = v93 + v24;
    v94 = (v22 - 8);
    v92 = *(v88 + 16);
    do
    {
      v104 = v21 + 1;
      v101(*(v0 + 320), v97 + v21 * v25, *(v0 + 280));
      v28 = *(v26 + 16) + 1;
      v29 = v95;
      while (1)
      {
        v30 = *(v0 + 320);
        if (!--v28)
        {
          break;
        }

        v31 = *(v0 + 280);
        sub_1D174A5FC(&qword_1EE07D170);
        v29 += v25;
        if (sub_1D1E6775C())
        {
          (*v94)(*(v0 + 320), *(v0 + 280));
          goto LABEL_5;
        }
      }

      v32 = *(v0 + 312);
      v33 = *(v0 + 280);
      v101(v32, *(v0 + 320), v33);
      *(v0 + 240) = 0;
      swift_beginAccess();
      sub_1D1E6769C();
      sub_1D1E676BC();
      swift_endAccess();
      v101(v32, v30, v33);
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      *(v0 + 248) = sub_1D1E67C7C();
      swift_beginAccess();
      sub_1D1E67D1C();
      sub_1D1E6769C();
      sub_1D1E676BC();
      swift_endAccess();
      if (qword_1EE07A0C8 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 320);
      v35 = *(v0 + 304);
      v36 = *(v0 + 280);
      v37 = sub_1D1E6709C();
      __swift_project_value_buffer(v37, qword_1EE07A0D0);
      v101(v35, v34, v36);
      v38 = sub_1D1E6707C();
      v39 = sub_1D1E6835C();
      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 320);
      v42 = *(v0 + 304);
      v43 = *(v0 + 280);
      if (v40)
      {
        v44 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v105 = v89;
        *v44 = 136315138;
        sub_1D174A5FC(&qword_1EE07B250);
        v45 = sub_1D1E68FAC();
        v90 = v41;
        v47 = v46;
        v48 = *v94;
        (*v94)(v42, v43);
        v49 = sub_1D1B1312C(v45, v47, &v105);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_1D16EC000, v38, v39, "updateUserActionPredictionControllers(...) removing %s, unsubscribing from recommendations and clearing delegate.", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x1D3893640](v89, -1, -1);
        MEMORY[0x1D3893640](v44, -1, -1);

        v48(v90, v43);
      }

      else
      {

        v27 = *v94;
        (*v94)(v42, v43);
        v27(v41, v43);
      }

      v26 = v93;
      v20 = v92;
LABEL_5:
      v21 = v104;
    }

    while (v104 != v20);
  }

  else
  {

    v26 = v93;
  }

  v50 = *(v26 + 16);
  *(v0 + 376) = v50;
  if (!v50)
  {
LABEL_24:

    v68 = *(v0 + 368);
    v69 = *(v0 + 312);
    v70 = *(v0 + 320);
    v72 = *(v0 + 296);
    v71 = *(v0 + 304);

    v73 = *(v0 + 8);

    return v73();
  }

  v51 = 0;
  v52 = *(v0 + 288);
  *(v0 + 480) = *(v52 + 80);
  *(v0 + 384) = *(v52 + 72);
  *(v0 + 392) = *(v52 + 16);
  while (1)
  {
    *(v0 + 400) = 0;
    *(v0 + 408) = v51;
    v53 = *(v0 + 368);
    v54 = *(v0 + 352);
    v55 = *(v0 + 336);
    v56 = *(v0 + 288) + 16;
    (*(v0 + 392))(*(v0 + 296), *(v0 + 360) + ((*(v0 + 480) + 32) & ~*(v0 + 480)) + *(v0 + 384) * v51, *(v0 + 280));
    sub_1D1E676AC();
    v57 = *(v0 + 200);
    *(v0 + 416) = v57;
    if (v57)
    {
      break;
    }

    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
LABEL_19:
    v51 = *(v0 + 408) + 1;
    if (v51 == *(v0 + 376))
    {
      v67 = *(v0 + 360);
      goto LABEL_24;
    }
  }

  v59 = *(v0 + 344);
  v58 = *(v0 + 352);
  v60 = *(v0 + 296);
  v61 = *(v0 + 280);
  v62 = *(v0 + 264);
  swift_beginAccess();
  v63 = *(v62 + 136);

  sub_1D1E676AC();

  if (*(v0 + 208))
  {
    v65 = *(v0 + 288);
    v64 = *(v0 + 296);
    v66 = *(v0 + 280);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v64, v66);
    goto LABEL_19;
  }

  v75 = *(v0 + 392);
  v76 = *(v0 + 344);
  v102 = *(v0 + 352);
  v77 = *(v0 + 312);
  v78 = *(v0 + 296);
  v79 = *(v0 + 280);
  v80 = *(v0 + 264);
  v81 = (*(*(v0 + 328) + 320))(*(v0 + 336));
  *(v0 + 424) = v81;
  v75(v77, v78, v79);
  *(v0 + 216) = v81;
  swift_beginAccess();
  sub_1D1E6769C();
  swift_unknownObjectRetain();
  sub_1D1E676BC();
  swift_endAccess();
  if (v81)
  {
    v82 = qword_1EC642358;
    swift_unknownObjectRetain();
    if (v82 != -1)
    {
      swift_once();
    }

    v83 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1B112AC, v83, 0);
  }

  else
  {
    v84 = swift_task_alloc();
    *(v0 + 448) = v84;
    *v84 = v0;
    v84[1] = sub_1D1B11430;
    v85 = *(v0 + 296);
    v86 = *(v0 + 256);
    v87 = *(v0 + 264);

    return RecommendationsModerator2.currentUserActionPredictions(manager:for:)(v86, v85);
  }
}

uint64_t sub_1D1B112AC()
{
  v1 = v0[33];
  v0[54] = swift_unknownObjectWeakLoadStrong();
  v0[55] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1B11324, v1, 0);
}

uint64_t sub_1D1B11324()
{
  v1 = v0[54];
  if (v1)
  {
    v2 = *(v0[55] + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[53];
  v4 = v0[42];
  v5 = v0[43];
  v6 = v0[41];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v1, v2, v5, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v8 = swift_task_alloc();
  v0[56] = v8;
  *v8 = v0;
  v8[1] = sub_1D1B11430;
  v9 = v0[37];
  v10 = v0[32];
  v11 = v0[33];

  return RecommendationsModerator2.currentUserActionPredictions(manager:for:)(v10, v9);
}

uint64_t sub_1D1B11430()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1B1154C, v2, 0);
}

uint64_t sub_1D1B1154C()
{
  if (qword_1EE07AF78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE07AF80);
  v1 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    type metadata accessor for HomeState.Stream();
    swift_allocObject();
    v2 = HomeState.Stream.init()();
  }

  else
  {
    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v2 = *(v0 + 232);
    if (!v2)
    {
      if (qword_1EC642310 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC649BC0);
      if (off_1EC649BC8)
      {
        v3 = off_1EC649BC8;
      }

      else
      {
        type metadata accessor for HomeState.Stream();
        swift_allocObject();
        off_1EC649BC8 = HomeState.Stream.init()();
        v3 = off_1EC649BC8;
      }

      os_unfair_lock_unlock(&dword_1EC649BC0);
      v2 = v3;
    }
  }

  *(v0 + 456) = v2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B11734, v4, 0);
}

uint64_t sub_1D1B11734()
{
  v1 = v0[57];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = v0[50];
  if (v2)
  {
    v4 = [v2 homes];
    sub_1D1821898();
    sub_1D1E67C1C();

    v0[28] = sub_1D1749970(v5);
    sub_1D1747DDC(v0 + 28);
    if (v3)
    {

      v6 = v0[28];
    }

    v8 = v0[28];
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = v0[57];
  v10 = v0[37];
  v11 = v0[33];
  v12 = swift_task_alloc();
  *(v12 + 16) = v10;
  v0[58] = sub_1D174A6C4(sub_1D1749C64, v12, v8);
  v0[59] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1B118C8, v11, 0);
}

uint64_t sub_1D1B118C8()
{
  v62 = v0;
  v1 = *(v0 + 464);
  if (v1)
  {
    if (qword_1EE07A0C8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EE07A0D0);
    v3 = v1;
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 416);
    v7 = *(v0 + 424);
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v11 = *(v0 + 280);
    if (v6)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v61 = v13;
      *v12 = 136315138;
      v59 = v9;
      v14 = [v3 name];
      v58 = v11;
      v15 = sub_1D1E6781C();
      v17 = v16;

      v18 = sub_1D1B1312C(v15, v17, &v61);

      *(v12 + 4) = v18;
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v10 + 8))(v59, v58);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v10 + 8))(v9, v11);
    }
  }

  else
  {
    v19 = *(v0 + 416);
    v20 = *(v0 + 424);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v21 = *(v0 + 408) + 1;
  if (v21 == *(v0 + 376))
  {
LABEL_9:
    v22 = *(v0 + 360);

    v23 = *(v0 + 368);
    v24 = *(v0 + 312);
    v25 = *(v0 + 320);
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);

    v28 = *(v0 + 8);

    return v28();
  }

  v30 = *(v0 + 472);
  while (1)
  {
    *(v0 + 400) = v30;
    *(v0 + 408) = v21;
    v31 = *(v0 + 368);
    v32 = *(v0 + 352);
    v33 = *(v0 + 336);
    v34 = *(v0 + 288) + 16;
    (*(v0 + 392))(*(v0 + 296), *(v0 + 360) + ((*(v0 + 480) + 32) & ~*(v0 + 480)) + *(v0 + 384) * v21, *(v0 + 280));
    sub_1D1E676AC();
    v35 = *(v0 + 200);
    *(v0 + 416) = v35;
    if (v35)
    {
      break;
    }

    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
LABEL_14:
    v21 = *(v0 + 408) + 1;
    if (v21 == *(v0 + 376))
    {
      goto LABEL_9;
    }
  }

  v37 = *(v0 + 344);
  v36 = *(v0 + 352);
  v38 = *(v0 + 296);
  v39 = *(v0 + 280);
  v40 = *(v0 + 264);
  swift_beginAccess();
  v41 = *(v40 + 136);

  sub_1D1E676AC();

  if (*(v0 + 208))
  {
    v43 = *(v0 + 288);
    v42 = *(v0 + 296);
    v44 = *(v0 + 280);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v42, v44);
    goto LABEL_14;
  }

  v45 = *(v0 + 392);
  v46 = *(v0 + 344);
  v60 = *(v0 + 352);
  v47 = *(v0 + 312);
  v48 = *(v0 + 296);
  v49 = *(v0 + 280);
  v50 = *(v0 + 264);
  v51 = (*(*(v0 + 328) + 320))(*(v0 + 336));
  *(v0 + 424) = v51;
  v45(v47, v48, v49);
  *(v0 + 216) = v51;
  swift_beginAccess();
  sub_1D1E6769C();
  swift_unknownObjectRetain();
  sub_1D1E676BC();
  swift_endAccess();
  if (v51)
  {
    v52 = qword_1EC642358;
    swift_unknownObjectRetain();
    if (v52 != -1)
    {
      swift_once();
    }

    v53 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1B112AC, v53, 0);
  }

  else
  {
    v54 = swift_task_alloc();
    *(v0 + 448) = v54;
    *v54 = v0;
    v54[1] = sub_1D1B11430;
    v55 = *(v0 + 296);
    v56 = *(v0 + 256);
    v57 = *(v0 + 264);

    return RecommendationsModerator2.currentUserActionPredictions(manager:for:)(v56, v55);
  }
}

uint64_t RecommendationsModerator2.updateUserActionPredictions(manager:currentHomeID:for:predictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v5[15] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  v5[19] = v10;
  v11 = *(v6 + 88);
  v5[20] = v11;
  v5[21] = *(v11 + 16);
  v5[22] = *(v6 + 80);
  v5[23] = swift_getAssociatedTypeWitness();
  v5[24] = swift_getTupleTypeMetadata2();
  v12 = sub_1D1E685AC();
  v5[25] = v12;
  v13 = *(v12 - 8);
  v5[26] = v13;
  v14 = *(v13 + 64) + 15;
  v5[27] = swift_task_alloc();
  v15 = *(v10 - 8);
  v5[28] = v15;
  v16 = *(v15 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B120A0, v4, 0);
}

uint64_t sub_1D1B120A0()
{
  v96 = v0;
  v1 = v0 + 27;
  v2 = v0[23];
  v90 = v0[27];
  v93 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[19];
  v6 = v0[14];
  v7 = v0[12];
  swift_beginAccess();
  v0[8] = *(v6 + 136);
  v8 = swift_task_alloc();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v7;
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = sub_1D1B13818;
  v9[5] = v8;
  sub_1D174A5FC(qword_1EE07DD78);
  sub_1D1E6769C();

  swift_getWitnessTable();
  sub_1D1E67A7C();

  if ((*(*(v93 - 8) + 48))(v90, 1) == 1)
  {
    v10 = v0 + 25;
    v11 = (v0[26] + 8);
LABEL_15:
    v64 = *v1;
    v65 = v0[31];
    v66 = v0[32];
    v68 = v0[29];
    v67 = v0[30];
    v69 = v0[27];
    v71 = v0[17];
    v70 = v0[18];
    v72 = v0[16];
    (*v11)(v64, *v10);

    v73 = v0[1];

    return v73();
  }

  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[30];
  v16 = v0[27];
  v15 = v0[28];
  v91 = v0[23];
  v87 = v0[21];
  v89 = v0[22];
  v17 = v0[19];
  v18 = v0[13];
  v85 = v0[14];
  v19 = *(v16 + *(v0[24] + 48));
  swift_unknownObjectRelease();
  v20 = *(v15 + 32);
  v20(v13, v16, v17);
  v84 = v20;
  v20(v12, v13, v17);
  v21 = *(v15 + 16);
  v21(v14, v12, v17);
  v0[9] = v18;
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  sub_1D1E6769C();

  sub_1D1E676BC();
  swift_endAccess();
  if (qword_1EE07A0C8 != -1)
  {
    swift_once();
  }

  v22 = v0[32];
  v23 = v0[29];
  v24 = v0[19];
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[10];
  v28 = sub_1D1E6709C();
  __swift_project_value_buffer(v28, qword_1EE07A0D0);
  v94 = v21;
  v21(v23, v22, v24);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v29 = sub_1D1E6707C();
  v30 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  v31 = os_log_type_enabled(v29, v30);
  v33 = v0[28];
  v32 = v0[29];
  if (v31)
  {
    v34 = v0[22];
    v35 = v0[20];
    v86 = v0[19];
    v88 = v0[13];
    v83 = v0[10];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v95[0] = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_1D1B1312C(0xD000000000000043, 0x80000001D1EC4930, v95);
    *(v36 + 12) = 2080;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v39 = sub_1D1B136D4(v83, AssociatedConformanceWitness, v32);
    v41 = v40;
    v42 = *(v33 + 8);
    v42(v32, v86);
    v43 = sub_1D1B1312C(v39, v41, v95);

    *(v36 + 14) = v43;
    *(v36 + 22) = 2080;
    v44 = MEMORY[0x1D3891260](v88, AssociatedTypeWitness);
    v46 = v45;
    swift_bridgeObjectRelease_n();
    v47 = sub_1D1B1312C(v44, v46, v95);

    *(v36 + 24) = v47;
    _os_log_impl(&dword_1D16EC000, v29, v30, "%s %s new predictions from DataModel+HomeKitDelegates.swift: %s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v37, -1, -1);
    MEMORY[0x1D3893640](v36, -1, -1);
  }

  else
  {
    v48 = v0[19];
    v49 = v0[13];
    swift_bridgeObjectRelease_n();

    v42 = *(v33 + 8);
    v42(v32, v48);
  }

  v0[33] = v42;
  v50 = v0[28];
  v52 = v0[18];
  v51 = v0[19];
  v54 = v0[15];
  v53 = v0[16];
  v55 = v0[11];
  v94(v52, v0[32], v51);
  (*(v50 + 56))(v52, 0, 1, v51);
  v56 = *(v54 + 48);
  sub_1D17783E0(v55, v53);
  sub_1D17783E0(v52, v53 + v56);
  v57 = *(v50 + 48);
  v58 = v57(v53, 1, v51);
  v59 = v0[19];
  if (v58 != 1)
  {
    sub_1D17783E0(v0[16], v0[17]);
    if (v57(v53 + v56, 1, v59) != 1)
    {
      v75 = v0[30];
      v76 = v0[28];
      v78 = v0[18];
      v77 = v0[19];
      v80 = v0[16];
      v79 = v0[17];
      v84(v75, v53 + v56, v77);
      sub_1D174A5FC(&qword_1EE07D170);
      v81 = sub_1D1E6775C();
      v42(v75, v77);
      sub_1D1741A30(v78, &qword_1EC642590, qword_1D1E71260);
      v42(v79, v77);
      sub_1D1741A30(v80, &qword_1EC642590, qword_1D1E71260);
      if (v81)
      {
        goto LABEL_19;
      }

LABEL_14:
      v1 = v0 + 32;
      v11 = (v0 + 33);
      v63 = v0[28] + 8;
      v10 = v0 + 19;
      goto LABEL_15;
    }

    v60 = v0[28];
    v61 = v0[19];
    v62 = v0[17];
    sub_1D1741A30(v0[18], &qword_1EC642590, qword_1D1E71260);
    v42(v62, v61);
LABEL_13:
    sub_1D1741A30(v0[16], &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_14;
  }

  sub_1D1741A30(v0[18], &qword_1EC642590, qword_1D1E71260);
  if (v57(v53 + v56, 1, v59) != 1)
  {
    goto LABEL_13;
  }

  sub_1D1741A30(v0[16], &qword_1EC642590, qword_1D1E71260);
LABEL_19:
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v82 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B129C0, v82, 0);
}

uint64_t sub_1D1B129C0()
{
  v1 = v0[14];
  v0[34] = swift_unknownObjectWeakLoadStrong();
  v0[35] = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1B12A38, v1, 0);
}

uint64_t sub_1D1B12A38()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 104);
    v3 = *(v0 + 272);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = *(v0 + 144);
  v10 = *(v0 + 224) + 8;
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  (*(v0 + 264))(*(v0 + 256), *(v0 + 152));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1B12B54()
{
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_1D1B12B74()
{
  sub_1D1B1384C();
}

uint64_t sub_1D1B12B9C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

void *RecommendationsModerator2.deinit()
{
  sub_1D1A62A04((v0 + 14));
  v1 = v0[16];

  v2 = v0[17];

  v3 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecommendationsModerator2.__deallocating_deinit()
{
  RecommendationsModerator2.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1B12C78(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1E66A7C();
  v8 = *(a5 + 16);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48))) & 1;
}

uint64_t sub_1D1B12D2C(uint64_t *a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 16);
  v3 = *(v2 + 128);
  v4 = swift_checkMetadataState();
  return v3(v4, v2);
}

uint64_t sub_1D1B12E30(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = *a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = *(*(swift_getAssociatedConformanceWitness() + 16) + 128);
  swift_checkMetadataState();
  v6();
  swift_unknownObjectRetain();
  swift_dynamicCast();
  sub_1D174A5FC(qword_1EE07DD78);
  sub_1D1E6769C();
  return sub_1D1E676BC();
}

uint64_t sub_1D1B13014(uint64_t *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  (*(*(v7 + 16) + 128))(ObjectType);
  LOBYTE(v7) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1D1B1312C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D1B131F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D1741970(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D1B131F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D1B13304(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D1E6893C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D1B13304(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D1B13350(a1, a2);
  sub_1D1B13480(&unk_1F4D5EE78);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D1B13350(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D1B1356C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D1E6893C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D1E6795C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D1B1356C(v10, 0);
        result = sub_1D1E6883C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D1B13480(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D1B135E0(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D1B1356C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ABE0, &qword_1D1E97C70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D1B135E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ABE0, &qword_1D1E97C70);
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

uint64_t sub_1D1B136D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  (*(a2 + 48))();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DC0, &qword_1D1E6F378);
  v5 = sub_1D1E68AAC();

  v12[2] = a3;
  v6 = sub_1D1746A6C(sub_1D174A6A4, v12, v5);
  v8 = v7;

  if (!v6)
  {
    return 0x206E776F6E6B6E75;
  }

  ObjectType = swift_getObjectType();
  v10 = (*(*(v8 + 16) + 136))(ObjectType);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1D1B13948(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D1B12D2C(a1);
}

uint64_t sub_1D1B13968(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D1B12E30(a1, a2);
}

uint64_t sub_1D1B13984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Collection.keyed<A>(by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*a1 + *MEMORY[0x1E69E77B0]);
  v8 = *v6;
  v7 = v6[1];
  swift_getTupleTypeMetadata2();
  v9 = sub_1D1E67C7C();
  sub_1D1AC25F8(v9, v7, v8, a4);

  sub_1D1E6769C();
  v10 = *(a3 + 8);
  sub_1D1E67A9C();
  return v12;
}

uint64_t sub_1D1B13B14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*a3 + *MEMORY[0x1E69E77B0]);
  v5 = *v4;
  v6 = sub_1D1E685AC();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v14 - v9;
  v11 = (*(*(v4[1] - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  swift_getAtKeyPath();
  v12 = *(v5 - 8);
  (*(v12 + 16))(v10, a2, v5);
  (*(v12 + 56))(v10, 0, 1, v5);
  sub_1D1E6769C();
  return sub_1D1E676BC();
}

uint64_t sub_1D1B13CC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_1D1B13B14(a1, a2, *(v2 + 40));
}

uint64_t sub_1D1B13CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29[-1] - v13;
  v30[0] = a4;
  v30[1] = a5;
  sub_1D1A08410(a3, &v29[-1] - v13);
  v15 = sub_1D1E67E7C();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_1D1B14EB4(v14);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v16 + 8))(v14, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_1D1E67D4C();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_1D1E678CC();
      v24 = *(v23 + 16);
      sub_1D1B14F1C(v23 + 32, v30, a6, v29);

      v25 = v29[0];
      sub_1D1B14EB4(a3);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D1B14EB4(a3);
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a4;
  v26[4] = a5;
  if (v22 | v20)
  {
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = v20;
    v29[4] = v22;
  }

  return swift_task_create();
}

uint64_t static HomeDataActor.fire(name:priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  sub_1D1A08410(a3, &v19 - v12);
  v14 = qword_1EC642358;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC64ABE8;
  v16 = sub_1D1AD642C();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = a4;
  v17[5] = a5;

  sub_1D17C6EF0(a1, a2, v13, &unk_1D1E96480, v17);
}

uint64_t sub_1D1B1409C()
{
  type metadata accessor for HomeDataActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC64ABE8 = v0;
  return result;
}

uint64_t static HomeDataActor.shared.getter()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }
}

uint64_t static HomeDataActor.run<A>(name:priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B141DC, 0, 0);
}

{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B14638, 0, 0);
}

uint64_t sub_1D1B141DC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  sub_1D1A08410(*(v0 + 40), *(v0 + 72));
  v3 = qword_1EC642358;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = qword_1EC64ABE8;
  v9 = sub_1D1AD642C();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v4;
  *(v10 + 40) = *(v0 + 48);

  v11 = sub_1D1B13CE4(v7, v6, v5, &unk_1D1E97C90, v10, v4);
  *(v0 + 80) = v11;
  v12 = *(MEMORY[0x1E69E86C0] + 4);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1D1B14360;
  v14 = *(v0 + 64);
  v15 = *(v0 + 16);

  return MEMORY[0x1EEE6DA40](v15, v11, v14);
}

uint64_t sub_1D1B14360()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D1B1448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B14528, v6, 0);
}

uint64_t sub_1D1B14528()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1B14638()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  sub_1D1A08410(*(v0 + 40), *(v0 + 72));
  v3 = qword_1EC642358;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = qword_1EC64ABE8;
  v9 = sub_1D1AD642C();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v4;
  *(v10 + 40) = *(v0 + 48);

  v11 = sub_1D1B150D0(v7, v6, v5, &unk_1D1E97CA8, v10);
  *(v0 + 80) = v11;
  v12 = *(MEMORY[0x1E69E86A8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  *v13 = v0;
  v13[1] = sub_1D1B147DC;
  v15 = *(v0 + 64);
  v16 = *(v0 + 16);
  v17 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v16, v11, v15, v14, v17);
}

uint64_t sub_1D1B147DC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D1B1495C;
  }

  else
  {
    v3 = sub_1D1B148F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B148F0()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1B1495C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1D1B149C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B14A64, v6, 0);
}

uint64_t sub_1D1B14A64()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1B14AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1B14B80, v6, 0);
}

uint64_t sub_1D1B14B80()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1B14C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B1448C(a1, v4, v5, v7, v8);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1B14D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B149C8(a1, v4, v5, v7, v8);
}

uint64_t HomeDataActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1B14E38()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1B14EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1B14F1C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B15008(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1A08480(a1, v5);
}

uint64_t sub_1D1B150D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_1D1A08410(a3, &v26[-1] - v11);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1B14EB4(v12);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC();
      v22 = *(v21 + 16);
      sub_1D1B16B34(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_1D1B14EB4(a3);

      return v23;
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

  sub_1D1B14EB4(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}