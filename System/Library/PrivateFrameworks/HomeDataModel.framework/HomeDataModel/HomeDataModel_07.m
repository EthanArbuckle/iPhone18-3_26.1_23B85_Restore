uint64_t Action.CharacteristicAction.characteristic.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D177534C, 0, 0);
}

uint64_t sub_1D177534C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[14] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D177543C;
    v4 = 0;
  }

  else
  {
    v0[16] = sub_1D1E67E1C();
    v0[17] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1776070;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D177543C()
{
  v98 = v1;
  v3 = v1[14];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v97 = sub_1D1749970(v6);
    v0 = 0;
    sub_1D1747DDC(&v97);

    v7 = v97;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v1[12];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[5];
  v12 = *(v10 + 16);
  (v12)(v1[13], v11, v9);
  v86 = v12;
  v87 = (v10 + 16);
  (v12)(v8, v11, v9);
  v81 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_76:
    v90 = v7 & 0xFFFFFFFFFFFFFF8;
    v89 = sub_1D1E6873C();
  }

  else
  {
    v90 = v7 & 0xFFFFFFFFFFFFFF8;
    v89 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v88 = v7 & 0xC000000000000001;
  v82 = v7;
  v14 = (v1[7] + 8);
  v94 = v1;
  v84 = v14;
  v85 = v7 + 32;
  while (1)
  {
    if (v13 == v89)
    {
      v35 = v89;
      if (v81)
      {
        goto LABEL_55;
      }

      goto LABEL_34;
    }

    v93 = v13;
    if (v88)
    {
      v15 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v13 >= *(v90 + 16))
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v15 = *(v85 + 8 * v13);
    }

    v17 = v1[11];
    v16 = v1[12];
    v18 = v1[10];
    v19 = v1[6];
    v91 = v15;
    v20 = [v15 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v2 = v21;
    v1 = v86;
    (v86)(v17, v16, v19);
    (v86)(v18, v16, v19);
    v92 = (v21 >> 62);
    v95 = v21 & 0xFFFFFFFFFFFFFF8;
    v7 = v21 >> 62 ? sub_1D1E6873C() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = 0;
    v23 = v21 & 0xC000000000000001;
    v83 = v21 + 32;
    while (v7 != v22)
    {
      if (v23)
      {
        v24 = v2;
        v25 = MEMORY[0x1D3891EF0](v22, v2);
      }

      else
      {
        if (v22 >= *(v95 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v24 = v2;
        v25 = *(v2 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = v94[10];
      v28 = [v25 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v29 = sub_1D1E67C1C();

      v30 = swift_task_alloc();
      *(v30 + 16) = v27;
      v0 = 0;
      v1 = sub_1D174A6C4(sub_1D1749C64, v30, v29);

      if (v1)
      {
        v7 = v22;
        v2 = v24;
        break;
      }

      v31 = __OFADD__(v22++, 1);
      v2 = v24;
      if (v31)
      {
        goto LABEL_71;
      }
    }

    if (!v92)
    {
      break;
    }

    if (v7 != sub_1D1E6873C())
    {
      goto LABEL_50;
    }

LABEL_28:
    v1 = v94;
    v32 = v94[10];
    v33 = v94[6];
    v14 = v84;
    v34 = *v84;
    (*v84)(v94[11], v33);

    v34(v32, v33);

    v13 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_73;
    }
  }

  if (v7 == *(v95 + 16))
  {
    goto LABEL_28;
  }

LABEL_50:
  if (v23)
  {
    goto LABEL_82;
  }

  if (v7 < *(v95 + 16))
  {
    for (i = *(v83 + 8 * v7); ; i = MEMORY[0x1D3891EF0](v7, v2))
    {
      v51 = i;
      v1 = v94;
      v52 = v94[11];
      v53 = v94[6];
      v54 = [i services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v55 = sub_1D1E67C1C();

      v56 = swift_task_alloc();
      *(v56 + 16) = v52;
      v57 = sub_1D174A6C4(sub_1D1778988, v56, v55);

      v14 = v84;
      v58 = *v84;
      (*v84)(v52, v53);

      v59 = v94[10];
      v0 = v94[6];
      if (!v57)
      {
        goto LABEL_86;
      }

      v58(v59, v0);

      v35 = v93;
      if (v81)
      {
LABEL_55:
        if (v35 == sub_1D1E6873C())
        {
LABEL_56:
          v60 = v1[12];
          v61 = v1[6];
          v62 = *v14;
          (*v14)(v1[13], v61);

          v62(v60, v61);
          v63 = sub_1D1775EE4;
          goto LABEL_67;
        }
      }

      else
      {
LABEL_34:
        if (v35 == *(v90 + 16))
        {
          goto LABEL_56;
        }
      }

      if (v88)
      {
        v36 = MEMORY[0x1D3891EF0](v35, v82);
      }

      else
      {
        if (v35 >= *(v90 + 16))
        {
          __break(1u);
LABEL_80:
          v65 = MEMORY[0x1D3891EF0](v35, v2);
LABEL_65:
          v59 = v65;
          v66 = v0[9];
          v67 = v0;
          v68 = v0[6];
          v69 = [v65 services];
          sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v58 = sub_1D1E67C1C();

          v70 = swift_task_alloc();
          *(v70 + 16) = v66;
          v0 = sub_1D174A6C4(sub_1D1778988, v70, v58);
          v67[15] = v0;

          v71 = *v84;
          (*v84)(v66, v68);

          if (!v0)
          {
            goto LABEL_85;
          }

          v73 = v67[12];
          v72 = v67[13];
          v74 = v67[8];
          v75 = v67[6];

          v71(v74, v75);
          v71(v72, v75);

          v71(v73, v75);
          v63 = sub_1D1775F90;
LABEL_67:
          v76 = v63;
          v77 = 0;
          v78 = 0;

          return MEMORY[0x1EEE6DFA0](v76, v77, v78);
        }

        v36 = *(v85 + 8 * v35);
      }

      v37 = v1[13];
      v39 = v1[8];
      v38 = v1[9];
      v40 = v1[6];
      v92 = v36;
      v41 = [v36 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v2 = sub_1D1E67C1C();

      v1 = v87;
      (v86)(v38, v37, v40);
      (v86)(v39, v37, v40);
      v93 = v2 >> 62;
      v96 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v2 >> 62)
      {
        v35 = sub_1D1E6873C();
      }

      else
      {
        v35 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = 0;
      v42 = v2 & 0xC000000000000001;
      v91 = (v2 + 32);
      v0 = v94;
      while (v35 != v7)
      {
        if (v42)
        {
          v43 = v2;
          v44 = MEMORY[0x1D3891EF0](v7, v2);
        }

        else
        {
          if (v7 >= *(v96 + 16))
          {
            goto LABEL_74;
          }

          v43 = v2;
          v44 = *(v2 + 8 * v7 + 32);
        }

        v45 = v44;
        v46 = v0[8];
        v47 = [v44 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v48 = sub_1D1E67C1C();

        v1 = swift_task_alloc();
        v1[2] = v46;
        v49 = sub_1D174A6C4(sub_1D1778988, v1, v48);

        if (v49)
        {
          v35 = v7;
          v0 = v94;
          v2 = v43;
          break;
        }

        v31 = __OFADD__(v7++, 1);
        v0 = v94;
        v2 = v43;
        if (v31)
        {
          goto LABEL_75;
        }
      }

      if (v93)
      {
        v64 = sub_1D1E6873C();
      }

      else
      {
        v64 = *(v96 + 16);
      }

      if (v35 == v64)
      {
        goto LABEL_84;
      }

      if (v42)
      {
        goto LABEL_80;
      }

      if (v35 < *(v96 + 16))
      {
        v65 = *(v91 + v35);
        goto LABEL_65;
      }

      __break(1u);
LABEL_82:
      ;
    }
  }

  __break(1u);
LABEL_84:
  v67 = v0[12];
  v59 = v0[13];
  v58 = v0[8];
  v79 = v0[9];
  v0 = v0[6];
  v71 = *v84;
  (*v84)(v79, v0);

  v71(v58, v0);
  v71(v59, v0);

  v71(v67, v0);
  __break(1u);
LABEL_85:
  v71(v67[8], v67[6]);
  __break(1u);
LABEL_86:
  v76 = (v58)(v59, v0);
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v76, v77, v78);
}

uint64_t sub_1D1775EE4()
{
  v1 = v0[14];

  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1D1775F90()
{
  v14 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[5];
  v13 = *(v3 + *(type metadata accessor for Action.CharacteristicAction(0) + 20));
  v4 = HMService.subscript.getter(&v13);

  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11(v4);
}

uint64_t sub_1D1776070()
{
  v1 = *(v0 + 136);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1776108, 0, 0);
}

uint64_t sub_1D1776108()
{
  v1 = *(v0 + 128);
  *(v0 + 144) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1776194, v3, v2);
}

uint64_t sub_1D1776194()
{
  v1 = *(v0 + 144);

  *(v0 + 152) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1776208, 0, 0);
}

uint64_t sub_1D1776208()
{
  v1 = v0[16];
  v2 = v0[5];
  v0[20] = sub_1D1E66A2C();
  v0[21] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17762A0, v4, v3);
}

uint64_t sub_1D17762A0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v0[22] = [v3 serviceFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1776330, 0, 0);
}

uint64_t sub_1D1776330()
{
  v13 = v0;
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[5];
    v12 = *(v2 + *(type metadata accessor for Action.CharacteristicAction(0) + 20));
    v3 = HMService.subscript.getter(&v12);
  }

  else
  {
    v3 = 0;
  }

  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  v10 = v0[1];

  return v10(v3);
}

uint64_t Action.CharacteristicAction.staticCharacteristic(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v11 + 16) && (v12 = sub_1D1742188(v3), (v13 & 1) != 0))
  {
    sub_1D1778450(*(v11 + 56) + *(v7 + 72) * v12, v10, type metadata accessor for StaticService);
    v14 = type metadata accessor for Action.CharacteristicAction(0);
    v15 = *&v10[*(v6 + 128)];
    if (*(v15 + 16))
    {
      v16 = *(v3 + *(v14 + 20));
      v17 = *&v10[*(v6 + 128)];

      v18 = sub_1D171D140(v16);
      if (v19)
      {
        v20 = v18;
        v21 = *(v15 + 56);
        v22 = type metadata accessor for StaticCharacteristic();
        v23 = *(v22 - 8);
        sub_1D1778450(v21 + *(v23 + 72) * v20, a2, type metadata accessor for StaticCharacteristic);
        (*(v23 + 56))(a2, 0, 1, v22);
      }

      else
      {
        v28 = type metadata accessor for StaticCharacteristic();
        (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
      }
    }

    else
    {
      v27 = type metadata accessor for StaticCharacteristic();
      (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    }

    return sub_1D1778508(v10, type metadata accessor for StaticService);
  }

  else
  {
    v24 = type metadata accessor for StaticCharacteristic();
    v25 = *(*(v24 - 8) + 56);

    return v25(a2, 1, 1, v24);
  }
}

uint64_t Action.CharacteristicAction.containingStaticService(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v4 + 16) && (v5 = sub_1D1742188(v2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for StaticService(0);
    v16 = *(v9 - 8);
    sub_1D1778450(v8 + *(v16 + 72) * v7, a2, type metadata accessor for StaticService);
    v10 = *(v16 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for StaticService(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t Action.CharacteristicAction.init(service:characteristicKind:targetValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31[-v10];
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a2;
  v18 = *a3;
  v33 = a3[1];
  v34 = v18;
  v32 = *(a3 + 16);
  v19 = *(v13 + 16);
  v19(v16, a1, v12);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = *(type metadata accessor for StaticService(0) + 20);
  v35 = a1;
  v21 = (a1 + v20);
  v23 = *v21;
  v22 = v21[1];
  v19(a4, v16, v12);
  v24 = type metadata accessor for Action.CharacteristicAction(0);
  a4[v24[5]] = v17;
  v25 = &a4[v24[6]];
  v26 = v33;
  *v25 = v34;
  *(v25 + 1) = v26;
  v25[16] = v32;
  sub_1D17783E0(v11, &a4[v24[7]]);
  v27 = qword_1EE07B280;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = byte_1EE07B288;
  sub_1D1778508(v35, type metadata accessor for StaticService);
  sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
  result = (*(v13 + 8))(v16, v12);
  if (v28 != 1)
  {

    v23 = 0;
    v22 = 0;
  }

  v30 = &a4[v24[8]];
  *v30 = v23;
  v30[1] = v22;
  return result;
}

uint64_t Action.CharacteristicAction.createAction()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1776B54;

  return Action.CharacteristicAction.characteristic.getter();
}

uint64_t sub_1D1776B54(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1776C54, 0, 0);
}

uint64_t sub_1D1776C54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = Action.CharacteristicAction.createAction(characteristic:)(*(v0 + 32));

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    type metadata accessor for Action.CharacteristicAction.Error(0);
    sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error);
    swift_allocError();
    sub_1D1778450(v2, v6, type metadata accessor for Action.CharacteristicAction);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t *Action.CharacteristicAction.createAction(characteristic:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  v60 = a1;
  v20 = [a1 characteristicType];
  v21 = sub_1D1E6781C();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  CharacteristicKind.init(rawValue:)(v24);
  if (v62 == 174)
  {
    v25 = 0;
  }

  else
  {
    v25 = v62;
  }

  v57 = type metadata accessor for Action.CharacteristicAction(0);
  v26 = *(v57 + 20);
  v61 = v2;
  LOBYTE(v26) = *(v2 + v26);
  LOBYTE(v62) = v25;
  v64 = v26;
  v27 = CharacteristicKind.rawValue.getter();
  v29 = v28;
  v30 = CharacteristicKind.rawValue.getter();
  v32 = v31;
  if (v27 == v30 && v29 == v31)
  {
  }

  else
  {
    v33 = sub_1D1E6904C();

    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v34 = [v60 service];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 uniqueIdentifier];

    sub_1D1E66A5C();
    v37 = *(v5 + 56);
    v37(v19, 0, 1, v4);
  }

  else
  {
    v37 = *(v5 + 56);
    v37(v19, 1, 1, v4);
  }

  (*(v5 + 16))(v17, v61, v4);
  v37(v17, 0, 1, v4);
  v38 = *(v59 + 48);
  sub_1D17783E0(v19, v10);
  sub_1D17783E0(v17, &v10[v38]);
  v39 = *(v5 + 48);
  if (v39(v10, 1, v4) != 1)
  {
    v40 = v58;
    sub_1D17783E0(v10, v58);
    if (v39(&v10[v38], 1, v4) == 1)
    {
      v41 = v40;
      v32 = qword_1D1E71260;
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
      (*(v5 + 8))(v41, v4);
      goto LABEL_16;
    }

    v43 = &v10[v38];
    v44 = v56;
    (*(v5 + 32))(v56, v43, v4);
    sub_1D1778398(&qword_1EE07D170, MEMORY[0x1E69695A8]);
    v45 = v40;
    LODWORD(v59) = sub_1D1E6775C();
    v46 = *(v5 + 8);
    v46(v44, v4);
    v32 = &qword_1EC642590;
    sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
    v46(v45, v4);
    sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
    if (v59)
    {
      goto LABEL_21;
    }

LABEL_17:
    type metadata accessor for Action.CharacteristicAction.Error(0);
    sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  v32 = qword_1D1E71260;
  sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v19, &qword_1EC642590, qword_1D1E71260);
  if (v39(&v10[v38], 1, v4) != 1)
  {
LABEL_16:
    sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_17;
  }

  sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
LABEL_21:
  v47 = (v61 + *(v57 + 24));
  v48 = *(v47 + 16);
  v62 = *v47;
  v63 = v48;
  v49 = CharacteristicKind.Value.rawObjectValue.getter();
  if (v49)
  {
    v50 = v49;
    v51 = objc_allocWithZone(MEMORY[0x1E696CB68]);
    v32 = [v51 initWithCharacteristic:v60 targetValue:v50];

    return v32;
  }

  type metadata accessor for Action.CharacteristicAction.Error(0);
  sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error);
  swift_allocError();
  v32 = *v47;
  v52 = *(v47 + 1);
  v53 = *(v47 + 16);
  *v54 = v32;
  *(v54 + 8) = v52;
  *(v54 + 16) = v53;
  swift_storeEnumTagMultiPayload();
  sub_1D1778244(v32, v52, v53);
LABEL_18:
  swift_willThrow();
  return v32;
}

uint64_t sub_1D17774A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1778398(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  return sub_1D1778450(v3 + v4, a2, type metadata accessor for StateSnapshot);
}

uint64_t sub_1D1777584(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1778450(a1, v7, type metadata accessor for StateSnapshot);
  v8 = *a2;
  return sub_1D1DE5D08(v7);
}

uint64_t sub_1D1777624@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  if (result < 0 || (v6 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v9 = *(a3 + 56);
    v10 = a4(0);
    return sub_1D1778450(v9 + *(*(v10 - 8) + 72) * v6, a6, a5);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D17776CC()
{
  v39 = sub_1D1E66A7C();
  v1 = *(v39 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v29 - v6;
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[3];
  v37 = v0[2];
  v38 = v7;
  v35 = v0[4];
  v36 = v9;
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  result = sub_1D1E6869C();
  v13 = result;
  v14 = *(v8 + 36);
  v15 = 1 << *(v8 + 32);
  if (result == v15)
  {
    return result;
  }

  else
  {
    v31 = v1 + 8;
    v32 = v1 + 16;
    v29 = v8 + 64;
    v30 = v1;
    v17 = v39;
    while ((v13 & 0x8000000000000000) == 0 && v13 < v15)
    {
      v18 = v13 >> 6;
      if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v40 = v14;
      v19 = v34;
      (*(v1 + 16))(v34, *(v8 + 48) + *(v1 + 72) * v13, v17);
      v20 = v33;
      v38(v19);
      (*(v1 + 8))(v19, v17);
      v21 = v36(v20);
      result = sub_1D1741A30(v20, &qword_1EC6430E8, &unk_1D1E71440);
      if (v21)
      {
        return v13;
      }

      v16 = 1 << *(v8 + 32);
      if (v13 >= v16)
      {
        goto LABEL_23;
      }

      v22 = *(v10 + 8 * v18);
      if ((v22 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v40 != *(v8 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v13 & 0x3F));
      if (v23)
      {
        v16 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v18 << 6;
        v25 = v18 + 1;
        v26 = (v29 + 8 * v18);
        while (v25 < (v16 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1D1716920(v13, v40, 0);
            v16 = __clz(__rbit64(v27)) + v24;
            goto LABEL_5;
          }
        }

        result = sub_1D1716920(v13, v40, 0);
      }

LABEL_5:
      v14 = *(v8 + 36);
      v15 = 1 << *(v8 + 32);
      v13 = v16;
      v1 = v30;
      if (v16 == v15)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17779F4()
{
  v1 = type metadata accessor for Event();
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[3];
  v27 = v0[2];
  v28 = v5;
  v26 = v7;
  v8 = v0[4];
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  result = sub_1D1E6869C();
  v12 = result;
  v13 = *(v6 + 36);
  v14 = 1 << *(v6 + 32);
  if (result == v14)
  {
    return v12;
  }

  else
  {
    v25 = v6 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < v14)
    {
      v16 = v12 >> 6;
      if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      sub_1D1778450(*(v6 + 48) + *(v29 + 72) * v12, v4, type metadata accessor for Event);
      v28(&v32, v4);
      sub_1D1778508(v4, type metadata accessor for Event);
      v30 = v32;
      v31 = v33;
      result = v26(&v30);
      if (result)
      {
        return v12;
      }

      v15 = 1 << *(v6 + 32);
      if (v12 >= v15)
      {
        goto LABEL_22;
      }

      v17 = *(v9 + 8 * v16);
      if ((v17 & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (v13 != *(v6 + 36))
      {
        goto LABEL_24;
      }

      v18 = v17 & (-2 << (v12 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (v25 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1D1716920(v12, v13, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_6;
          }
        }

        result = sub_1D1716920(v12, v13, 0);
      }

LABEL_6:
      v13 = *(v6 + 36);
      v14 = 1 << *(v6 + 32);
      v12 = v15;
      if (v15 == v14)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1777C94()
{
  v1 = *v0;
  v12 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0 >> 62)
  {
LABEL_17:
    v3 = sub_1D1E6873C();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D3891EF0](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    v13 = v7;
    v12(&v14, &v13);

    v9 = v14;
    v13 = v14;
    v0 = v6(&v13);

    if (v0)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }

  return v3;
}

uint64_t _s13HomeDataModel6ActionO014CharacteristicD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v47 = v5;
  v48 = type metadata accessor for Action.CharacteristicAction(0);
  v17 = v48[5];
  v18 = *(a1 + v17);
  LOBYTE(v17) = *(a2 + v17);
  LOBYTE(v52) = v18;
  LOBYTE(v49) = v17;
  v19 = CharacteristicKind.rawValue.getter();
  v21 = v20;
  if (v19 == CharacteristicKind.rawValue.getter() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_1D1E6904C();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v46 = v8;
  v24 = v48;
  v25 = v48[6];
  v26 = *(a1 + v25 + 8);
  v27 = *(a1 + v25 + 16);
  v52 = *(a1 + v25);
  v53 = v26;
  v54 = v27;
  v28 = a2 + v25;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  v49 = *v28;
  v29 = v49;
  v50 = v30;
  v51 = v31;
  sub_1D1778244(v52, v26, v27);
  sub_1D1778244(v29, v30, v31);
  LOBYTE(v29) = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v52, &v49);
  sub_1D1778284(v49, v50, v51);
  sub_1D1778284(v52, v53, v54);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v32 = v24[7];
  v33 = *(v13 + 48);
  sub_1D17783E0(a1 + v32, v16);
  sub_1D17783E0(a2 + v32, &v16[v33]);
  v34 = v47;
  v35 = *(v47 + 48);
  if (v35(v16, 1, v4) != 1)
  {
    sub_1D17783E0(v16, v12);
    if (v35(&v16[v33], 1, v4) != 1)
    {
      v37 = v46;
      (*(v34 + 32))(v46, &v16[v33], v4);
      sub_1D1778398(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v38 = sub_1D1E6775C();
      v39 = *(v34 + 8);
      v39(v37, v4);
      v39(v12, v4);
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v34 + 8))(v12, v4);
LABEL_12:
    sub_1D1741A30(v16, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  if (v35(&v16[v33], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
LABEL_16:
  v40 = v48[8];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (v44 && (*v41 == *v43 && v42 == v44 || (sub_1D1E6904C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v44)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D1778244(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 10 || a3 == 9)
  {
    return sub_1D1741854(result, a2);
  }

  if (a3 == 8)
  {
  }

  return result;
}

uint64_t sub_1D1778270(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D1778284(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D1778284(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 10 || a3 == 9)
  {
    return sub_1D174E7C4(result, a2);
  }

  if (a3 == 8)
  {
  }

  return result;
}

uint64_t sub_1D17782D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1778308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1778398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D17783E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1778450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17784B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D1778508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D17785D8()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D177868C();
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

void sub_1D177868C()
{
  if (!qword_1EE07E018)
  {
    sub_1D1E66A7C();
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07E018);
    }
  }
}

void sub_1D17786E4()
{
  if (!qword_1EE07D1F8[0])
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, qword_1EE07D1F8);
    }
  }
}

void sub_1D1778734()
{
  sub_1D17787C4();
  if (v0 <= 0x3F)
  {
    sub_1D177884C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Action.CharacteristicAction(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D17787C4()
{
  if (!qword_1EC6430C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643098, &qword_1D1E71278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6430D0, &qword_1D1E71410);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6430C8);
    }
  }
}

void sub_1D177884C()
{
  if (!qword_1EC6430D8)
  {
    sub_1D1741B10(255, &qword_1EE079CD0, 0x1E696CB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6430D0, &qword_1D1E71410);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6430D8);
    }
  }
}

uint64_t sub_1D17788D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1778940(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_1D174E7C4(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t Action.MatterCommandAction.init(action:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430F0, &qword_1D1E71450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30[-v6];
  v8 = type metadata accessor for ActionCommand(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v30[-v15];
  v31 = [a1 enforceExecutionOrder];
  v33 = a1;
  v16 = [a1 commands];
  sub_1D1741B10(0, &qword_1EC6430F8, 0x1E696CBD8);
  v17 = sub_1D1E67C1C();

  if (v17 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v19 = 0;
    v41 = v17 & 0xC000000000000001;
    v39 = v14;
    v40 = v17 & 0xFFFFFFFFFFFFFF8;
    v37 = (v36 + 48);
    v38 = (v36 + 56);
    v43 = MEMORY[0x1E69E7CC0];
    v34 = v8;
    while (v41)
    {
      v20 = MEMORY[0x1D3891EF0](v19, v17);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v14 = v17;
      v22 = v20;
      v23 = v39;
      ActionCommand.init(command:)(v22, v39);
      if (v2)
      {
      }

      sub_1D1779544(v23, v7);
      (*v38)(v7, 0, 1, v8);

      if ((*v37)(v7, 1, v8) == 1)
      {
        sub_1D1741A30(v7, &qword_1EC6430F0, &qword_1D1E71450);
      }

      else
      {
        v24 = v35;
        sub_1D1779544(v7, v35);
        sub_1D1779544(v24, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1D17800DC(0, v43[2] + 1, 1, v43, &qword_1EC6434B8, &qword_1D1E71930, type metadata accessor for ActionCommand);
        }

        v26 = v43[2];
        v25 = v43[3];
        if (v26 >= v25 >> 1)
        {
          v43 = sub_1D17800DC(v25 > 1, v26 + 1, 1, v43, &qword_1EC6434B8, &qword_1D1E71930, type metadata accessor for ActionCommand);
        }

        v27 = v43;
        v43[2] = v26 + 1;
        sub_1D1779544(v42, v27 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v26);
        v8 = v34;
      }

      v17 = v14;
      ++v19;
      if (v21 == i)
      {
        goto LABEL_24;
      }
    }

    if (v19 >= *(v40 + 16))
    {
      goto LABEL_21;
    }

    v20 = *(v17 + 8 * v19 + 32);
    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v29 = v32;
  *v32 = v31;
  *(v29 + 1) = v43;
  return result;
}

uint64_t sub_1D1778E28(void *a1)
{
  v42 = sub_1D1E66A7C();
  v37 = *(v42 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v1;
  v34 = *(v1 + 1);
  v5 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v6 = sub_1D1E67C1C();

  v7 = sub_1D18D6B70(MEMORY[0x1E69E7CC0]);
  if (v6 >> 62)
  {
LABEL_26:
    v8 = sub_1D1E6873C();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_27:

    LOBYTE(v43) = v35;
    v44 = v34;
    v32 = sub_1D177C7EC(v7);

    return v32;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_3:
  v9 = 0;
  v40 = v6 & 0xFFFFFFFFFFFFFF8;
  v41 = v6 & 0xC000000000000001;
  v36 = v37 + 16;
  v38 = v6;
  v39 = (v37 + 8);
  while (1)
  {
    if (v41)
    {
      v12 = MEMORY[0x1D3891EF0](v9, v6);
    }

    else
    {
      if (v9 >= *(v40 + 16))
      {
        goto LABEL_23;
      }

      v12 = *(v6 + 8 * v9 + 32);
    }

    v13 = v12;
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = [v12 uniqueIdentifier];
    v16 = v45;
    sub_1D1E66A5C();

    v17 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v7;
    v6 = v7;
    v20 = sub_1D1742188(v16);
    v21 = v7[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v7[3] < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = v43;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D1734504();
      v7 = v43;
      if (v24)
      {
LABEL_4:
        v10 = v7[7];
        v11 = *(v10 + 8 * v20);
        *(v10 + 8 * v20) = v17;

        (*v39)(v45, v42);
        goto LABEL_5;
      }
    }

LABEL_17:
    v7[(v20 >> 6) + 8] |= 1 << v20;
    v27 = v37;
    v28 = v45;
    v6 = v42;
    (*(v37 + 16))(v7[6] + *(v37 + 72) * v20, v45, v42);
    *(v7[7] + 8 * v20) = v17;

    (*(v27 + 8))(v28, v6);
    v29 = v7[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_25;
    }

    v7[2] = v31;
LABEL_5:
    ++v9;
    v6 = v38;
    if (v14 == v8)
    {
      goto LABEL_27;
    }
  }

  sub_1D1721444(v23, isUniquelyReferenced_nonNull_native);
  v25 = sub_1D1742188(v45);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    v7 = v43;
    if (v24)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t Action.MatterCommandAction.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D1E6884C();

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](8236, 0xE200000000000000);
  v5 = type metadata accessor for ActionCommand(0);
  v6 = MEMORY[0x1D38912A0](v2, v5);
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

uint64_t Action.MatterCommandAction.init(enforceExecutionOrder:commands:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

BOOL sub_1D17792F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionCommand(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1D178078C(v14, v11, type metadata accessor for ActionCommand);
      sub_1D178078C(v15, v8, type metadata accessor for ActionCommand);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *&v11[v4[5]] != *&v8[v4[5]] || *&v11[v4[6]] != *&v8[v4[6]])
      {
        break;
      }

      v17 = &v11[v4[7]];
      v18 = *(v17 + 3);
      v19 = *(v17 + 4);
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v20 = MatterCommand.isEqual(_:)(&v8[v4[7]], v18, v19);
      sub_1D178083C(v8, type metadata accessor for ActionCommand);
      sub_1D178083C(v11, type metadata accessor for ActionCommand);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20;
    }

    sub_1D178083C(v8, type metadata accessor for ActionCommand);
    sub_1D178083C(v11, type metadata accessor for ActionCommand);
    return 0;
  }

  return 1;
}

uint64_t sub_1D1779544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionCommand(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D17795D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 && a1 != a2)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);
    do
    {
      v15 = *v5;
      v14 = *v6;
      v7 = a3();
      v9 = v8;
      if (v7 == a3() && v9 == v10)
      {
      }

      else
      {
        v12 = sub_1D1E6904C();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v5;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_1D17796E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1D17807F4(&qword_1EE07D170, MEMORY[0x1E69695A8]);
    v22 = sub_1D1E6775C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17798F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAlarm();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_29:
    v28 = 0;
    return v28 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(v9 + 72);
  while (1)
  {
    result = sub_1D178078C(v15 + v17 * v13, v11, type metadata accessor for StaticAlarm);
    if (v13 == v12)
    {
      break;
    }

    sub_1D178078C(v16 + v17 * v13, v8, type metadata accessor for StaticAlarm);
    if (*v11 != *v8 || *(v11 + 1) != *(v8 + 1))
    {
      goto LABEL_28;
    }

    v19 = *(v11 + 3);
    v20 = *(v8 + 3);
    if (v19)
    {
      if (!v20 || (*(v11 + 2) != *(v8 + 2) || v19 != v20) && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v20)
    {
      goto LABEL_28;
    }

    v21 = *(v11 + 4);
    v22 = *(v8 + 4);
    v23 = *(v21 + 16);
    if (v23 != *(v22 + 16))
    {
      goto LABEL_28;
    }

    if (v23 && v21 != v22)
    {
      v24 = (v21 + 32);
      v25 = (v22 + 32);
      while (*v24 == *v25)
      {
        ++v24;
        ++v25;
        if (!--v23)
        {
          goto LABEL_21;
        }
      }

LABEL_28:
      sub_1D178083C(v8, type metadata accessor for StaticAlarm);
      sub_1D178083C(v11, type metadata accessor for StaticAlarm);
      goto LABEL_29;
    }

LABEL_21:
    if (*(v11 + 10) != *(v8 + 10))
    {
      goto LABEL_28;
    }

    if (v11[44] != v8[44])
    {
      goto LABEL_28;
    }

    v26 = *(v4 + 36);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_28;
    }

    v27 = *(v4 + 40);
    v28 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    sub_1D178083C(v8, type metadata accessor for StaticAlarm);
    sub_1D178083C(v11, type metadata accessor for StaticAlarm);
    if ((v28 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1779BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTimer();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v28 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_25:
    v26 = 0;
    return v26 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1D178078C(v14, v11, type metadata accessor for StaticTimer);
      sub_1D178078C(v15, v8, type metadata accessor for StaticTimer);
      if (*v11 != *v8)
      {
        break;
      }

      v17 = v4[5];
      if ((sub_1D1E669AC() & 1) == 0 || *(v11 + v4[6]) != *(v8 + v4[6]))
      {
        break;
      }

      v18 = v4[7];
      v19 = (v11 + v18);
      v20 = *(v11 + v18 + 8);
      v21 = (v8 + v18);
      v22 = v21[1];
      if (v20)
      {
        if (!v22)
        {
          break;
        }

        v23 = *v19 == *v21 && v20 == v22;
        if (!v23 && (sub_1D1E6904C() & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        break;
      }

      if (*(v11 + v4[8]) != *(v8 + v4[8]))
      {
        break;
      }

      if (*(v11 + v4[9]) != *(v8 + v4[9]))
      {
        break;
      }

      v24 = v4[10];
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v25 = v4[11];
      v26 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D178083C(v8, type metadata accessor for StaticTimer);
      sub_1D178083C(v11, type metadata accessor for StaticTimer);
      if (v26)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v26 & 1;
    }

    sub_1D178083C(v8, type metadata accessor for StaticTimer);
    sub_1D178083C(v11, type metadata accessor for StaticTimer);
    goto LABEL_25;
  }

  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1D1779E84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 40)
  {
    sub_1D17417AC(v3, v14);
    sub_1D17417AC(i, v13);
    sub_1D17417AC(v14, v9);
    sub_1D17417AC(v13, v11);
    if (v10 <= 2u)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          sub_1D17417AC(v9, v8);
          if (v12 != 1)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_1D17417AC(v9, v8);
          if (v12 != 2)
          {
            goto LABEL_33;
          }
        }

        v5 = v8[0] == v11[0];
      }

      else
      {
        sub_1D17417AC(v9, v8);
        if (v12)
        {
          goto LABEL_33;
        }

        v5 = LOBYTE(v8[0]) ^ LOBYTE(v11[0]) ^ 1;
      }

      goto LABEL_7;
    }

    if (v10 > 4u)
    {
      break;
    }

    if (v10 == 3)
    {
      sub_1D17417AC(v9, v8);
      if (v12 != 3)
      {
        goto LABEL_32;
      }

      if (v8[0] == v11[0] && v8[1] == v11[1])
      {
        v5 = 1;
        goto LABEL_29;
      }

      v6 = sub_1D1E6904C();
LABEL_28:
      v5 = v6;
LABEL_29:

LABEL_7:
      sub_1D17805D8(v9);
      sub_1D17805D8(v13);
      sub_1D17805D8(v14);
      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v12 != 4)
    {
      goto LABEL_33;
    }

    sub_1D17805D8(v11);
    sub_1D17805D8(v9);
    sub_1D17805D8(v13);
    sub_1D17805D8(v14);
LABEL_8:
    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v10 != 5)
  {
    goto LABEL_33;
  }

  sub_1D17417AC(v9, v8);
  if (v12 == 5)
  {
    v6 = sub_1D1779E84(v8[0], v11[0]);
    goto LABEL_28;
  }

LABEL_32:

LABEL_33:
  sub_1D1741A30(v9, &qword_1EC643118, &qword_1D1E71570);
  sub_1D17805D8(v13);
  sub_1D17805D8(v14);
  return 0;
}

uint64_t sub_1D177A0E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177A140(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 52);
  for (i = (a1 + 52); ; i += 24)
  {
    result = 0;
    if (*(i - 5) != *(v3 - 5) || *(i - 16) != *(v3 - 16))
    {
      break;
    }

    v7 = *(v3 - 8);
    if (*(i - 8))
    {
      if (!*(v3 - 8))
      {
        return 0;
      }
    }

    else
    {
      if (*(i - 3) != *(v3 - 3))
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }
    }

    if (*i)
    {
      if (!*v3)
      {
        return 0;
      }
    }

    else
    {
      if (*(i - 1) == *(v3 - 1))
      {
        v5 = *v3;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D177A200(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177A25C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177A2B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v5 = *(a1 + v3 + 35);
      v6 = *(a2 + v3 + 34);
      v7 = *(a2 + v3 + 35);
      if (*(a1 + v3 + 34))
      {
        if (!*(a2 + v3 + 34))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 32) != *(a2 + v3 + 32))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (v5 == 30)
      {
        if (v7 != 30)
        {
          return 0;
        }
      }

      else if (v7 == 30 || dword_1D1E7193C[v5] != dword_1D1E7193C[v7])
      {
        return 0;
      }

      if (*(a1 + v3 + 40))
      {
        if (!*(a2 + v3 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 36) == *(a2 + v3 + 36))
        {
          v4 = *(a2 + v3 + 40);
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

      v3 += 12;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D177A394(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v5 = (0xFE060504030201uLL >> (8 * *(a1 + v3 + 32))) != (0xFE060504030201uLL >> (8 * *(a2 + v3 + 32))) || *(a1 + v3 + 40) != *(a2 + v3 + 40);
    v6 = v5 | *(a1 + v3 + 48) ^ *(a2 + v3 + 48);
    if (v6)
    {
      break;
    }

    v3 += 24;
    --v2;
  }

  while (v2);
  return (v6 ^ 1) & 1;
}

uint64_t sub_1D177A44C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1D17806DC(v24, v15);
    sub_1D17806DC(v27, v15);
    v13 = _s13HomeDataModel16ThermostatPresetV2eeoiySbAC_ACtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1D1780738(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1D1780738(v31);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_1D177A568(uint64_t a1, uint64_t a2)
{
  v45[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_76;
  }

  if (!v2 || a1 == a2)
  {
LABEL_71:
    result = 1;
    goto LABEL_77;
  }

  v3 = (a2 + 49);
  v4 = (a1 + 49);
  while (1)
  {
    v5 = *(v4 - 17);
    v6 = *(v4 - 9);
    v7 = *v4;
    v8 = *(v3 - 17);
    v9 = *(v3 - 9);
    v10 = *(v3 - 1);
    v11 = *v3;
    v43 = *(v4 - 1);
    if (v6 >> 60 == 15)
    {
      if (v9 >> 60 != 15)
      {
        goto LABEL_72;
      }

      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      goto LABEL_41;
    }

    if (v9 >> 60 == 15)
    {
LABEL_72:
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1716AA4(v5, v6);
      v36 = v8;
      v37 = v9;
      goto LABEL_75;
    }

    v12 = v6 >> 62;
    v13 = v9 >> 62;
    if (v6 >> 62 == 3)
    {
      v14 = 0;
      if (!v5 && v6 == 0xC000000000000000 && v9 >> 62 == 3)
      {
        v14 = 0;
        if (!v8 && v9 == 0xC000000000000000)
        {
          sub_1D1771B38(0, 0xC000000000000000);
          sub_1D1771B38(0, 0xC000000000000000);
          sub_1D1771B38(0, 0xC000000000000000);
          sub_1D1771B38(0, 0xC000000000000000);
          v15 = 0;
          v16 = 0xC000000000000000;
          goto LABEL_40;
        }
      }

LABEL_26:
      if (v13 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v22 = *(v5 + 16);
        v21 = *(v5 + 24);
        v19 = __OFSUB__(v21, v22);
        v14 = v21 - v22;
        if (v19)
        {
          goto LABEL_80;
        }

        goto LABEL_26;
      }

      v14 = 0;
      if (v13 <= 1)
      {
        goto LABEL_27;
      }
    }

    else if (v12)
    {
      LODWORD(v14) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_79;
      }

      v14 = v14;
      if (v13 <= 1)
      {
LABEL_27:
        if (v13)
        {
          LODWORD(v20) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_78;
          }

          v20 = v20;
        }

        else
        {
          v20 = BYTE6(v9);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v14 = BYTE6(v6);
      if (v13 <= 1)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    if (v13 != 2)
    {
      if (v14)
      {
        break;
      }

LABEL_39:
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      v15 = v8;
      v16 = v9;
LABEL_40:
      sub_1D1716AA4(v15, v16);
LABEL_41:
      sub_1D1716AA4(v5, v6);
      goto LABEL_42;
    }

    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (v19)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

LABEL_33:
    if (v14 != v20)
    {
      break;
    }

    if (v14 < 1)
    {
      goto LABEL_39;
    }

    v42 = *v3;
    v41 = *(v3 - 1);
    if (v12 > 1)
    {
      v40 = *v4;
      if (v12 == 2)
      {
        v31 = *(v5 + 16);
        v39 = *(v5 + 24);
        sub_1D1771B38(v5, v6);
        sub_1D1771B38(v8, v9);
        sub_1D1771B38(v5, v6);
        sub_1D1771B38(v8, v9);
        sub_1D1771B38(v8, v9);
        v32 = sub_1D1E6616C();
        if (v32)
        {
          v33 = sub_1D1E6619C();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_83;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v39, v31))
        {
          goto LABEL_82;
        }

LABEL_66:
        sub_1D1E6618C();
        sub_1D199EDB4(v32, v8, v9, v45);
        sub_1D1716AA4(v8, v9);
        sub_1D1716AA4(v8, v9);
        v35 = v45[0];
      }

      else
      {
        memset(v45, 0, 14);
        sub_1D1771B38(v5, v6);
        sub_1D1771B38(v8, v9);
        sub_1D1771B38(v5, v6);
        sub_1D1771B38(v8, v9);
        sub_1D1771B38(v8, v9);
        sub_1D199EDB4(v45, v8, v9, &v44);
        sub_1D1716AA4(v8, v9);
        sub_1D1716AA4(v8, v9);
        v35 = v44;
      }

      sub_1D1716AA4(v5, v6);
      if ((v35 & 1) == 0)
      {
        goto LABEL_74;
      }

      v7 = v40;
      goto LABEL_70;
    }

    if (v12)
    {
      v40 = *v4;
      if (v5 >> 32 < v5)
      {
        goto LABEL_81;
      }

      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1771B38(v8, v9);
      v32 = sub_1D1E6616C();
      if (v32)
      {
        v34 = sub_1D1E6619C();
        if (__OFSUB__(v5, v34))
        {
          goto LABEL_84;
        }

        v32 += v5 - v34;
      }

      goto LABEL_66;
    }

    v23 = *v4;
    v45[0] = *(v4 - 17);
    LOWORD(v45[1]) = v6;
    BYTE2(v45[1]) = BYTE2(v6);
    BYTE3(v45[1]) = BYTE3(v6);
    BYTE4(v45[1]) = BYTE4(v6);
    BYTE5(v45[1]) = BYTE5(v6);
    sub_1D1771B38(v5, v6);
    sub_1D1771B38(v8, v9);
    sub_1D1771B38(v5, v6);
    sub_1D1771B38(v8, v9);
    sub_1D1771B38(v8, v9);
    sub_1D199EDB4(v45, v8, v9, &v44);
    sub_1D1716AA4(v8, v9);
    sub_1D1716AA4(v8, v9);
    v24 = v44;
    sub_1D1716AA4(v5, v6);
    if (!v24)
    {
      goto LABEL_74;
    }

    v7 = v23;
LABEL_70:
    v11 = v42;
    v10 = v41;
LABEL_42:
    if (v43 == 9)
    {
      sub_1D1716AA4(v8, v9);
      sub_1D1716AA4(v5, v6);
      result = 0;
      if (v10 != 9 || ((v7 ^ v11) & 1) != 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v10 == 9)
      {
        goto LABEL_74;
      }

      v26 = v10;
      v27 = v7;
      v28 = byte_1D1E719B4[v43];
      v29 = v8;
      v30 = byte_1D1E719B4[v26];
      sub_1D1716AA4(v29, v9);
      sub_1D1716AA4(v5, v6);
      result = 0;
      if (v28 != v30 || ((v27 ^ v11) & 1) != 0)
      {
        goto LABEL_77;
      }
    }

    v4 += 24;
    v3 += 24;
    if (!--v2)
    {
      goto LABEL_71;
    }
  }

  sub_1D1771B38(v5, v6);
  sub_1D1771B38(v8, v9);
  sub_1D1771B38(v5, v6);
  sub_1D1771B38(v8, v9);
  sub_1D1716AA4(v8, v9);
  sub_1D1716AA4(v5, v6);
LABEL_74:
  sub_1D1716AA4(v8, v9);
  v36 = v5;
  v37 = v6;
LABEL_75:
  sub_1D1716AA4(v36, v37);
LABEL_76:
  result = 0;
LABEL_77:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D177AC5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3); i += 4)
    {
      v5 = *v3;
      v6 = *i;
      if (*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1))
      {
        v8 = *(v3 - 1);
        v9 = *(i - 1);
        if ((sub_1D1E6904C() & 1) == 0)
        {
          break;
        }
      }

      v10 = sub_1D17A7B94(v5, v6);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D177AD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = *v3;
        v9 = v14;
        sub_1D1780654(v15, v5, v6);
        sub_1D1780654(v7, v8, v9);
        v10 = static AttributeValue.== infix(_:_:)(&v15, &v12);
        sub_1D1780698(v12, v13, v14);
        sub_1D1780698(v15, v16, v17);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 24;
        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D177AE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_1D178078C(v14, v11, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    if (!v12)
    {
      break;
    }

    sub_1D178078C(v15, v8, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    if ((MEMORY[0x1D388F840](v11, v8) & 1) == 0 || (MEMORY[0x1D388F840](&v11[*(v4 + 20)], &v8[*(v4 + 20)]) & 1) == 0)
    {
      sub_1D178083C(v8, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      sub_1D178083C(v11, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      return 0;
    }

    v18 = *&v11[*(v4 + 24)];
    sub_1D178083C(v11, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    v19 = *&v8[*(v4 + 24)];
    sub_1D178083C(v8, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    result = v18 == v19;
    v20 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177B0AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    v4 = (a1 + 40);
    do
    {
      v6 = *(v3 - 6);
      if (*(v4 - 6))
      {
        if (!*(v3 - 6))
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 4) != *(v3 - 4))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (*(v4 - 2))
      {
        if (!*(v3 - 2))
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 2) == *(v3 - 2))
        {
          v7 = *(v3 - 2);
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

      if (*v4)
      {
        if (!*v3)
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 1) == *(v3 - 1))
        {
          v5 = *v3;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 10;
      v4 += 10;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D177B1D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - v15;
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = a1 + v18;
      v20 = a2 + v18;
      v21 = *(v14 + 72);
      do
      {
        sub_1D178078C(v19, v16, a4);
        sub_1D178078C(v20, v13, a4);
        v22 = a5(v16, v13);
        sub_1D178083C(v13, a4);
        sub_1D178083C(v16, a4);
        if ((v22 & 1) == 0)
        {
          break;
        }

        v20 += v21;
        v19 += v21;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1D177B36C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v41 = a2;
    v42 = a1;
    while (1)
    {
      v6 = a1 + v3;
      v7 = a2 + v3;
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32))
      {
        break;
      }

      v8 = *(v6 + 48);
      v9 = *(v6 + 56);
      v10 = *(v6 + 64);
      v11 = *(v6 + 66);
      v12 = *(v6 + 67);
      v13 = *(v6 + 68);
      v14 = *(v6 + 69);
      v15 = *(v6 + 70);
      v16 = *(v6 + 71);
      v17 = *(v6 + 72);
      v18 = *(v7 + 56);
      v19 = *(v7 + 64);
      v20 = *(v7 + 66);
      v21 = *(v7 + 67);
      v22 = *(v7 + 68);
      v23 = *(v7 + 69);
      v24 = *(v7 + 70);
      v25 = *(v7 + 71);
      v26 = *(v7 + 72);
      if (*(v6 + 40))
      {
        if (!*(v7 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(v6 + 36) == *(v7 + 36))
        {
          v27 = *(v7 + 40);
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
        if (!v18)
        {
          return 0;
        }

        if (v8 != *(v7 + 48) || v9 != v18)
        {
          v49 = *(v7 + 69);
          v50 = *(v7 + 71);
          v44 = *(v7 + 67);
          v45 = v10;
          v28 = v16;
          v29 = v17;
          v30 = *(v7 + 72);
          v47 = *(v7 + 68);
          v48 = v13;
          v31 = v14;
          v32 = v15;
          v46 = v11;
          v33 = *(v7 + 70);
          v43 = *(v7 + 64);
          v34 = v12;
          v35 = sub_1D1E6904C();
          v12 = v34;
          v24 = v33;
          v15 = v32;
          v11 = v46;
          v22 = v47;
          v14 = v31;
          v13 = v48;
          v26 = v30;
          v19 = v43;
          v21 = v44;
          v17 = v29;
          v23 = v49;
          v25 = v50;
          v16 = v28;
          v10 = v45;
          v36 = v35;
          a2 = v41;
          a1 = v42;
          if ((v36 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v18)
      {
        return 0;
      }

      if (v11)
      {
        if (!v20)
        {
          return 0;
        }
      }

      else
      {
        if (v10 == v19)
        {
          v37 = v20;
        }

        else
        {
          v37 = 1;
        }

        if (v37)
        {
          return 0;
        }
      }

      if (v13)
      {
        if (!v22)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == v21)
        {
          v38 = v22;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          return 0;
        }
      }

      if (v15)
      {
        if (!v24)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == v23)
        {
          v39 = v24;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          return 0;
        }
      }

      if (v17)
      {
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == v25)
        {
          v4 = v26;
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

      v3 += 48;
      v5 = 1;
      if (!--v2)
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t sub_1D177B590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 4) == *(i - 4); i += 3)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D1E6904C() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D177B670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v37 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v11 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v37 - v12;
  v14 = type metadata accessor for StaticUserActionPrediction();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v37 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v37 = (v5 + 32);
  v38 = (v5 + 8);
  v40 = *(v19 + 72);
  v41 = (v5 + 48);
  v46 = v4;
  v44 = v14;
  while (1)
  {
    result = sub_1D178078C(v24, v21, type metadata accessor for StaticUserActionPrediction);
    if (!v22)
    {
      break;
    }

    sub_1D178078C(v25, v18, type metadata accessor for StaticUserActionPrediction);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *&v21[*(v14 + 20)] != *&v18[*(v14 + 20)])
    {
LABEL_18:
      sub_1D178083C(v18, type metadata accessor for StaticUserActionPrediction);
      sub_1D178083C(v21, type metadata accessor for StaticUserActionPrediction);
      return 0;
    }

    v27 = *(v14 + 24);
    v28 = *(v43 + 48);
    sub_1D17783E0(&v21[v27], v13);
    sub_1D17783E0(&v18[v27], &v13[v28]);
    v29 = *v41;
    if ((*v41)(v13, 1, v4) == 1)
    {
      if (v29(&v13[v28], 1, v4) != 1)
      {
        sub_1D178083C(v18, type metadata accessor for StaticUserActionPrediction);
        sub_1D178083C(v21, type metadata accessor for StaticUserActionPrediction);
        goto LABEL_21;
      }

      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      sub_1D17783E0(v13, v45);
      if (v29(&v13[v28], 1, v4) == 1)
      {
        sub_1D178083C(v18, type metadata accessor for StaticUserActionPrediction);
        sub_1D178083C(v21, type metadata accessor for StaticUserActionPrediction);
        (*v38)(v45, v4);
LABEL_21:
        sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
        return 0;
      }

      v30 = v42;
      (*v37)(v42, &v13[v28], v4);
      sub_1D17807F4(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v31 = sub_1D1E6775C();
      v32 = v46;
      v39 = v31;
      v33 = *v38;
      (*v38)(v30, v46);
      v33(v45, v32);
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      if ((v39 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v34 = v44;
    v35 = v21[*(v44 + 28)];
    sub_1D178083C(v21, type metadata accessor for StaticUserActionPrediction);
    LODWORD(v34) = v18[*(v34 + 28)];
    sub_1D178083C(v18, type metadata accessor for StaticUserActionPrediction);
    result = v35 == v34;
    if (v35 == v34)
    {
      v25 += v40;
      v24 += v40;
      v36 = v22-- == 1;
      v4 = v46;
      v14 = v44;
      if (!v36)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177BC00(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177BC5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D1E6904C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D177BCEC(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for ColorPickerFavorite();
  v4 = *(*(v27 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v26 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v24 = 0;
    return v24 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D178078C(v13, v10, type metadata accessor for ColorPickerFavorite);
      sub_1D178078C(v14, v7, type metadata accessor for ColorPickerFavorite);
      v16 = *(v10 + 1);
      v17 = *(v10 + 2);
      v18 = v10[24];
      v32 = *v10;
      v33 = v16;
      v34 = v17;
      v35 = v18;
      v20 = *(v7 + 1);
      v21 = *(v7 + 2);
      v22 = v7[24];
      v28 = *v7;
      v19 = v28;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      sub_1D178062C(v32, v16, v17, v18);
      sub_1D178062C(v19, v20, v21, v22);
      LOBYTE(v19) = static LightbulbColor.== infix(_:_:)(&v32, &v28);
      sub_1D1780640(v28, v29, v30, v31);
      sub_1D1780640(v32, v33, v34, v35);
      if ((v19 & 1) == 0 || *(v10 + 4) != *(v7 + 4))
      {
        break;
      }

      v23 = *(v27 + 24);
      v24 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D178083C(v7, type metadata accessor for ColorPickerFavorite);
      sub_1D178083C(v10, type metadata accessor for ColorPickerFavorite);
      if (v24)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v24 & 1;
    }

    sub_1D178083C(v7, type metadata accessor for ColorPickerFavorite);
    sub_1D178083C(v10, type metadata accessor for ColorPickerFavorite);
    goto LABEL_12;
  }

  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1D177BFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_16:
    v23 = 0;
    return v23 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1D178078C(v14, v11, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D178078C(v15, v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v11[v17 + 8];
      v20 = &v8[v17];
      v21 = v18 == *v20 && v19 == *(v20 + 1);
      if (!v21 && (sub_1D1E6904C() & 1) == 0)
      {
        break;
      }

      v22 = *(v4 + 24);
      v23 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D178083C(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D178083C(v11, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      if (v23)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_1D178083C(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    sub_1D178083C(v11, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    goto LABEL_16;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1D177C1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1D184DC4C(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D177C2A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = *v4++;

        v7 = sub_1D1E67F3C();

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D177C3A4(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1D1741B10(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1D3891EF0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1D3891EF0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1D1E684FC();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1D1E684FC();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1D1E6873C();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1D1E6873C();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t Action.MatterCommandAction.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1D1E6922C();

  return sub_1D176F5DC(a1, v4);
}

uint64_t Action.MatterCommandAction.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D176F5DC(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D177C6BC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D176F5DC(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D177C71C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1D1E6922C();

  return sub_1D176F5DC(a1, v4);
}

uint64_t sub_1D177C76C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D176F5DC(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D177C7EC(uint64_t a1)
{
  v3 = type metadata accessor for ActionCommand(0);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v31) = *v1;
  v9 = *(v1 + 1);
  v10 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v33 = *(v9 + 16);
  if (v33)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      sub_1D178078C(v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v11, v8, type metadata accessor for ActionCommand);
      if (!*(a1 + 16) || (v12 = sub_1D1742188(v8), (v13 & 1) == 0))
      {
        type metadata accessor for ActionCommand.Error(0);
        sub_1D17807F4(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error);
        swift_allocError();
        v24 = v29;
        v30 = sub_1D1E66A7C();
        (*(*(v30 - 8) + 16))(v24, v8, v30);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_14:
        sub_1D178083C(v8, type metadata accessor for ActionCommand);

        return v24;
      }

      v32 = v10;
      v14 = a1;
      v15 = *(*(a1 + 56) + 8 * v12);
      v16 = v34;
      v17 = &v8[*(v34 + 28)];
      v18 = *(v17 + 3);
      v19 = *(v17 + 4);
      v20 = __swift_project_boxed_opaque_existential_1(v17, v18);
      v21 = *&v8[*(v16 + 24)];
      v22 = v15;
      v23 = v18;
      v24 = v20;
      if (!MatterCommand.hm_matterCommand(for:endpointID:)(v22, v21, v23, v19))
      {
        type metadata accessor for ActionCommand.Error(0);
        sub_1D17807F4(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_14;
      }

      v25 = sub_1D178083C(v8, type metadata accessor for ActionCommand);
      MEMORY[0x1D3891220](v25);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      ++v11;
      result = sub_1D1E67CAC();
      v10 = v36;
      a1 = v14;
      if (v33 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v27 = objc_allocWithZone(MEMORY[0x1E696CBE0]);
    sub_1D1741B10(0, &qword_1EC6430F8, 0x1E696CBD8);
    v28 = sub_1D1E67BFC();

    v24 = [v27 initWithMatterCommands:v28 enforceExecutionOrder:HIDWORD(v31)];

    if (!v24)
    {
      type metadata accessor for ActionCommand.Error(0);
      sub_1D17807F4(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    return v24;
  }

  return result;
}

uint64_t ActionCommand.debugDescription.getter()
{
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x6D6D6F63206E7572, 0xEC00000020646E61);
  v1 = type metadata accessor for ActionCommand(0);
  v2 = (v0 + v1[7]);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 40))(&v14, v3, v4);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](46, 0xE100000000000000);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = (*(v6 + 24))(v5, v6);
  LODWORD(v14) = v7;
  BYTE4(v14) = BYTE4(v7) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643100, &qword_1D1E71458);
  v8 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v8);

  MEMORY[0x1D3890F70](0x70646E65206E6F20, 0xED000020746E696FLL);
  LOWORD(v14) = *(v0 + v1[6]);
  v9 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v9);

  MEMORY[0x1D3890F70](0x206E696874697720, 0xE800000000000000);
  v14 = 3828584;
  v15 = 0xE300000000000000;
  sub_1D1E66A7C();
  sub_1D17807F4(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v10 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v10);

  MEMORY[0x1D3890F70](3829039, 0xE300000000000000);
  v13 = *(v0 + v1[5]);
  v11 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v11);

  MEMORY[0x1D3890F70](v14, v15);

  return v16;
}

char *sub_1D177CF00(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1D177D0D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643250, &qword_1D1E716A8);
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

char *sub_1D177D1F4(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1D177D3DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643488, &qword_1D1E71908);
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

char *sub_1D177D4E8(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1D177D648(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D177D8F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643218, &qword_1D1E71670);
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

char *sub_1D177D9EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643228, &qword_1D1E71680);
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
  v14 = 48 * v8;
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

char *sub_1D177DB24(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_1D177DD60(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1D177DE70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
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

char *sub_1D177DF74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643368, &unk_1D1E717D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177E09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
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

char *sub_1D177E1C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433E0, &qword_1D1E71858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 10);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 10 * v8;
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

char *sub_1D177E2EC(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1D177E3FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1D177E530(void *result, int64_t a2, char a3, void *a4)
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

void *sub_1D177E6AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_1D177E7E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431C8, &unk_1D1E71620);
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

char *sub_1D177E950(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1D177EA74(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_1D177EB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433D8, &qword_1D1E71850);
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

char *sub_1D177ECA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *sub_1D177ED98(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1D177EEB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643120, &qword_1D1E71578);
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

void *sub_1D177EFB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643358, &qword_1D1E717C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643360, &qword_1D1E717C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177F110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431B0, &unk_1D1E71F40);
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

void *sub_1D177F2DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_1D177F440(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D177F560(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1D177F724(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643268, &qword_1D1E716C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643270, &qword_1D1E716C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177F858(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1D177F978(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_1D177FAA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D177FBD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643230, &qword_1D1E71688);
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

char *sub_1D177FD04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431F8, &qword_1D1E71650);
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

char *sub_1D177FE74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431D8, &unk_1D1E71630);
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

void *sub_1D177FF80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431A0, &qword_1D1E715F8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431A8, &unk_1D1E71600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D17800DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

size_t sub_1D1780300(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

unint64_t sub_1D17804EC()
{
  result = qword_1EC643108;
  if (!qword_1EC643108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643108);
  }

  return result;
}

uint64_t sub_1D1780540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D1780588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D178062C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return result;
}

uint64_t sub_1D1780640(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return result;
}

id sub_1D1780654(id result, id a2, unsigned __int8 a3)
{
  if (a3 > 7u)
  {
    if (a3 == 8)
    {
      return result;
    }

    else if (a3 == 9)
    {
    }
  }

  else if (a3 == 6 || a3 == 7)
  {
  }

  return result;
}

void sub_1D1780698(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 > 7u)
  {
    if (a3 == 8)
    {
    }

    else if (a3 == 9)
    {
LABEL_4:
    }
  }

  else if (a3 == 6 || a3 == 7)
  {
    goto LABEL_4;
  }
}

uint64_t sub_1D178078C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17807F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D178083C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void Action.MediaPlaybackAction.init(action:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 state];
  v5 = [a1 mediaProfiles];
  sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
  sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
  v6 = sub_1D1E6816C();

  v7 = sub_1D178101C(v6);

  v8 = sub_1D17841EC(v7);

  v9 = [a1 volume];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v13 = [a1 mediaProfiles];
    v14 = sub_1D1E6816C();

    sub_1D1780D24(v14);
    v16 = v15;

    v17 = sub_1D1784988(v16);
  }

  else
  {

    v17 = 0;
  }

  v18 = 0x5000403020100uLL >> (8 * v4);
  *a2 = v8;
  if (v4 >= 7)
  {
    LOBYTE(v18) = 0;
  }

  *(a2 + 8) = v18;
  *(a2 + 16) = v12;
  *(a2 + 24) = v10 == 0;
  *(a2 + 32) = v17;
}

uint64_t Action.MediaPlaybackAction.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001ALL, 0x80000001D1EB8B90);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x6F76206874697720, 0xED000020656D756CLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434C0, &qword_1D1E719C0);
  v6 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](544108320, 0xE400000000000000);
  if (v5)
  {
    v13 = sub_1D1E6817C();
    v14 = v7;
    MEMORY[0x1D3890F70](10272, 0xE200000000000000);
    sub_1D1E66A7C();
    sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v8 = sub_1D1E6817C();
    MEMORY[0x1D3890F70](v8);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    v9 = v13;
    v10 = v14;
  }

  else
  {
    sub_1D1E66A7C();
    sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v9 = sub_1D1E6817C();
    v10 = v11;
  }

  MEMORY[0x1D3890F70](v9, v10);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

void sub_1D1780D24(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
    sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
    sub_1D1E681BC();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v23 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1D1E6877C() || (sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0), swift_dynamicCast(), (v11 = v29) == 0))
    {
LABEL_24:
      sub_1D1716918();
      return;
    }

LABEL_17:
    v12 = v11;
    v13 = [v12 accessory];
    if (v13)
    {
      v14 = v13;
      v15 = [v14 name];
      v21 = sub_1D1E6781C();
      v22 = v16;

      v17 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D177CF00(0, *(v23 + 2) + 1, 1, v23);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1D177CF00((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v23 = v17;
      v20 = &v17[16 * v19];
      *(v20 + 4) = v21;
      *(v20 + 5) = v22;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t Action.MediaPlaybackAction.volume.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1D178101C(uint64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
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
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_1D1E686DC();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_1D1E6869C();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_1D17908A0(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 uniqueIdentifier];
        sub_1D1E66A5C();

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D178CEFC(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_1D1E686FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643580, &unk_1D1E71AB0);
          v14 = sub_1D1E681AC();
          sub_1D1E687AC();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_1D1716920(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_1D1716920(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_1D1716920(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
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

uint64_t sub_1D1781428(uint64_t a1)
{
  v2 = type metadata accessor for StaticCameraProfile();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC643520, type metadata accessor for StaticCameraProfile);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticCameraProfile))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticCameraProfile);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticCameraProfile);
    sub_1D1761CF8(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D178166C(uint64_t a1)
{
  v2 = type metadata accessor for StaticMediaProfile();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EE07A810, type metadata accessor for StaticMediaProfile);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticMediaProfile))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticMediaProfile);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticMediaProfile);
    sub_1D1761F38(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17818B0(uint64_t a1)
{
  v2 = type metadata accessor for StaticMediaSystem();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(qword_1EE07A8D8, type metadata accessor for StaticMediaSystem);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticMediaSystem))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticMediaSystem);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticMediaSystem);
    sub_1D1762178(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1781AF4(uint64_t a1)
{
  v2 = type metadata accessor for StaticAccessory(0);
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EE07AB10, type metadata accessor for StaticAccessory);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticAccessory))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticAccessory);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticAccessory);
    sub_1D17623B8(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1781D38(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EE07AB20, type metadata accessor for StaticService);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticService))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticService);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticService);
    sub_1D17625F8(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1781F7C(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceGroup();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC643518, type metadata accessor for StaticServiceGroup);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticServiceGroup))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticServiceGroup);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticServiceGroup);
    sub_1D1762838(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17821C0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceGroup();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC643518, type metadata accessor for StaticServiceGroup);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticServiceGroup))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticServiceGroup);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticServiceGroup);
    sub_1D1762A78(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1782404(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v4 = sub_1D1771944(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
  v5 = 0;
  v12[1] = MEMORY[0x1D38917C0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1D1764A98(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D1782540(uint64_t a1)
{
  v2 = type metadata accessor for StaticResident();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC643560, type metadata accessor for StaticResident);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticResident))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticResident);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticResident);
    sub_1D1764CD0(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1782784(uint64_t a1)
{
  v2 = type metadata accessor for StaticMediaSystemComponent();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC643558, type metadata accessor for StaticMediaSystemComponent);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticMediaSystemComponent))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticMediaSystemComponent);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticMediaSystemComponent);
    sub_1D17676D4(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17829C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D17857C0();
  result = MEMORY[0x1D38917C0](v2, &type metadata for CharacteristicKind, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1D1765F38(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1782AC0(uint64_t a1)
{
  v2 = type metadata accessor for ActionService();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC643508, type metadata accessor for ActionService);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for ActionService))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for ActionService);
    sub_1D1785AB4(v11, v6, type metadata accessor for ActionService);
    sub_1D1769D3C(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1782D04(uint64_t a1)
{
  v2 = type metadata accessor for StaticZone();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EE07B4E8, type metadata accessor for StaticZone);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticZone))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticZone);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticZone);
    sub_1D1769F7C(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1782F48(uint64_t a1)
{
  v2 = type metadata accessor for StaticActionSet();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC643500, type metadata accessor for StaticActionSet);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticActionSet))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticActionSet);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticActionSet);
    sub_1D176A610(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D178318C(uint64_t a1)
{
  v2 = type metadata accessor for StaticRoom(0);
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC6434F8, type metadata accessor for StaticRoom);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D1785B84(v9, type metadata accessor for StaticRoom))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v22 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for StaticRoom);
    sub_1D1785AB4(v11, v6, type metadata accessor for StaticRoom);
    sub_1D176A850(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17833D0(uint64_t a1)
{
  v2 = type metadata accessor for StaticUser();
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v43 - v12;
  v13 = *(a1 + 16);
  v14 = sub_1D1784A20(&qword_1EC6434F0, type metadata accessor for StaticUser);
  v53 = v2;
  result = MEMORY[0x1D38917C0](v13, v2, v14);
  v54 = result;
  v16 = 0;
  v49 = a1;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v45 = v23;
  v46 = v18;
  if ((v21 & v17) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v54;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      do
      {
LABEL_9:
        v25 = *(v48 + 72);
        v26 = v47;
        sub_1D1785B1C(*(v49 + 56) + v25 * (__clz(__rbit64(v22)) | (v16 << 6)), v47, type metadata accessor for StaticUser);
        sub_1D1785AB4(v26, v11, type metadata accessor for StaticUser);
        v27 = *(v54 + 40);
        sub_1D1E6920C();
        v51 = sub_1D1E66A7C();
        sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
        sub_1D1E676EC();
        v28 = v53;
        v29 = &v11[v53[5]];
        v31 = *v29;
        v30 = *(v29 + 1);
        sub_1D1E678EC();
        v52 = v28[6];
        sub_1D1E676EC();
        v51 = v28[7];
        MEMORY[0x1D3892850](v11[v51]);
        v50 = v28[8];
        MEMORY[0x1D3892850](v11[v50]);
        v32 = sub_1D1E6926C();
        v33 = v54 + 56;
        v34 = -1 << *(v54 + 32);
        v35 = v32 & ~v34;
        if ((*(v54 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          while (1)
          {
            sub_1D1785B1C(*(v54 + 48) + v35 * v25, v6, type metadata accessor for StaticUser);
            if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
            {
              v37 = &v6[v53[5]];
              v38 = *v37 == v31 && *(v37 + 1) == v30;
              if (v38 || (sub_1D1E6904C() & 1) != 0)
              {
                v39 = &v6[v53[6]];
                if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && v6[v53[7]] == v11[v51] && v6[v53[8]] == v11[v50])
                {
                  break;
                }
              }
            }

            sub_1D1785B84(v6, type metadata accessor for StaticUser);
            v35 = (v35 + 1) & v36;
            if (((*(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_1D1785B84(v6, type metadata accessor for StaticUser);
        }

        else
        {
LABEL_22:
          v40 = v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v44;
          sub_1D1785B1C(v11, v44, type metadata accessor for StaticUser);
          v55 = v40;
          sub_1D1945C00(v42, v35, isUniquelyReferenced_nonNull_native);
          v54 = v55;
        }

        v22 &= v22 - 1;
        result = sub_1D1785B84(v11, type metadata accessor for StaticUser);
        v23 = v45;
        v18 = v46;
      }

      while (v22);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17838AC(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v26 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1D38917C0](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_1D1762CB8(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1783B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v7 = sub_1D1771944(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
  v20[1] = MEMORY[0x1D38917C0](0, v6, v7);
  sub_1D178401C(a1, a2, a3, v21);
  v8 = v21[0];
  v9 = v21[1];
  v10 = v21[3];
  v11 = v21[4];
  v18 = v21[5];
  v12 = (v21[2] + 64) >> 6;
  while (v8 < 0)
  {
    if (!sub_1D1E6877C() || (swift_dynamicCast(), v17 = v19, v15 = v10, v16 = v11, !v19))
    {
LABEL_15:
      sub_1D1716918();

      return;
    }

LABEL_13:
    v20[0] = v17;
    if (v18(v20))
    {
      sub_1D1764A98(v20, v17);
    }

    else
    {
    }

    v10 = v15;
    v11 = v16;
  }

  v13 = v10;
  v14 = v11;
  v15 = v10;
  if (v11)
  {
LABEL_9:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v8 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_15;
    }

    v14 = *(v9 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t Action.MediaPlaybackAction.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  sub_1D176D4E8(a1, *v2);
  MEMORY[0x1D3892850](v4);
  if (v6 != 1)
  {
    sub_1D1E6922C();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1D3892890](v9);
    if (v7)
    {
      goto LABEL_3;
    }

    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (!v7)
  {
    return sub_1D1E6922C();
  }

LABEL_3:
  sub_1D1E6922C();

  return sub_1D176D8A8(a1, v7);
}

uint64_t Action.MediaPlaybackAction.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1D1E6920C();
  Action.MediaPlaybackAction.hash(into:)(v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1783E1C()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1D1E6920C();
  Action.MediaPlaybackAction.hash(into:)(v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1783E8C()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1D1E6920C();
  Action.MediaPlaybackAction.hash(into:)(v6);
  return sub_1D1E6926C();
}

uint64_t Action.MediaPlaybackAction.mediaAccessoriesDescription.getter()
{
  v1 = *v0;
  if (v0[4])
  {
    v4 = sub_1D1E6817C();
    MEMORY[0x1D3890F70](10272, 0xE200000000000000);
    sub_1D1E66A7C();
    sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v2 = sub_1D1E6817C();
    MEMORY[0x1D3890F70](v2);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v4;
  }

  else
  {
    sub_1D1E66A7C();
    sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    return sub_1D1E6817C();
  }
}

uint64_t sub_1D178401C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1771944(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1E681BC();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t _s13HomeDataModel6ActionO013MediaPlaybackD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_1D17A6E98(*a1, *a2);
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6)
  {
    if (v4)
    {
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (v3 == v7)
      {
        v12 = v8;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (!v9)
      {
        return 0;
      }

      v13 = sub_1D17A7248(v5, v9);

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    return 1;
  }

  return result;
}