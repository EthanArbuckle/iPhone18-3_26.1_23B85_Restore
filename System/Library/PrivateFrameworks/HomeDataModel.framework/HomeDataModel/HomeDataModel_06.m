uint64_t Action.hashValue.getter()
{
  sub_1D1E6920C();
  Action.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1760E24()
{
  sub_1D1E6920C();
  Action.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1760E68()
{
  sub_1D1E6920C();
  Action.hash(into:)(v1);
  return sub_1D1E6926C();
}

void Action.init(action:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Action();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v28 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    Action.CharacteristicAction.init(action:)(v18, v17);
    if (v2)
    {
      return;
    }

    swift_storeEnumTagMultiPayload();
    v19 = v17;
    goto LABEL_13;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    Action.MediaPlaybackAction.init(action:)(v20, &v29);
    if (v2)
    {
      return;
    }

    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    *v15 = v29;
    v15[8] = v21;
    *(v15 + 2) = v22;
    v15[24] = v23;
    *(v15 + 4) = v24;
    swift_storeEnumTagMultiPayload();
    v19 = v15;
    goto LABEL_13;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    Action.NaturalLightAction.init(action:)(v25, v12);
    if (v2)
    {
      return;
    }

    swift_storeEnumTagMultiPayload();
    v19 = v12;
    goto LABEL_13;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    sub_1D17718F0();
    swift_allocError();
    swift_willThrow();

    return;
  }

  Action.MatterCommandAction.init(action:)(v26, &v29);
  if (!v2)
  {
    v27 = v30;
    *v9 = v29;
    *(v9 + 1) = v27;
    swift_storeEnumTagMultiPayload();
    v19 = v9;
LABEL_13:
    sub_1D1771B6C(v19, a2, type metadata accessor for Action);
  }
}

HMAction __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Action.createAction(in:)(HMHome in)
{
  v2 = v1;
  v4 = type metadata accessor for Action.NaturalLightAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v56 = *(v8 - 8);
  v9 = v56[8];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v64 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = v53 - v12;
  v13 = type metadata accessor for Action.CharacteristicAction(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Action();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1771BF4(v2, v20, type metadata accessor for Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v49 = *(v20 + 1);
      LOBYTE(v68) = *v20;
      v69 = v49;
      v22 = sub_1D1778E28(in.super.isa);

      return v22;
    }

    sub_1D1771B6C(v20, v7, type metadata accessor for Action.NaturalLightAction);
    v22 = sub_1D1786138(in.super.isa);
    v23 = type metadata accessor for Action.NaturalLightAction;
    v24 = v7;
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D1771B6C(v20, v16, type metadata accessor for Action.CharacteristicAction);
    v22 = Action.CharacteristicAction.createAction(in:)(in.super.isa);
    v23 = type metadata accessor for Action.CharacteristicAction;
    v24 = v16;
LABEL_6:
    sub_1D1771C5C(v24, v23);
    return v22;
  }

  v25 = *v20;
  v26 = *(v20 + 4);
  v27 = [(objc_class *)in.super.isa accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v28 = sub_1D1E67C1C();

  v29 = sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
  v30 = sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
  v66 = v25;

  v55 = v30;
  v68 = MEMORY[0x1D38917C0](0, v29, v30);
  if (v28 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v53[1] = v29;
    v53[2] = v26;
    v32 = 0;
    v59 = v28 & 0xFFFFFFFFFFFFFF8;
    v60 = v28 & 0xC000000000000001;
    v54 = v28;
    v57 = i;
    v58 = v28 + 32;
    v65 = v66 + 7;
    v63 = v56 + 2;
    v29 = (v56 + 1);
    v33 = v64;
    while (1)
    {
      if (v60)
      {
        v35 = MEMORY[0x1D3891EF0](v32, v54);
      }

      else
      {
        if (v32 >= *(v59 + 16))
        {
          goto LABEL_30;
        }

        v35 = *(v58 + 8 * v32);
      }

      v36 = v35;
      if (__OFADD__(v32++, 1))
      {
        break;
      }

      v38 = [v35 mediaProfile];

      if (v38)
      {
        v62 = v32;
        v61 = v38;
        v39 = [v61 uniqueIdentifier];
        sub_1D1E66A5C();

        if (v66[2] && (v40 = v66, v41 = v66[5], sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]), v42 = sub_1D1E676DC(), v43 = -1 << *(v40 + 32), v28 = v42 & ~v43, ((*(v65 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
        {
          v44 = ~v43;
          v45 = v56[9];
          v46 = v56[2];
          while (1)
          {
            v46(v33, v66[6] + v45 * v28, v8);
            sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8]);
            v47 = sub_1D1E6775C();
            v26 = *v29;
            (*v29)(v33, v8);
            if (v47)
            {
              break;
            }

            v28 = (v28 + 1) & v44;
            if (((*(v65 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v26(v67, v8);
          v48 = v61;

          sub_1D1763114(&v70, v48);
        }

        else
        {
LABEL_10:
          (*v29)(v67, v8);
          v34 = v61;
        }

        i = v57;
        v32 = v62;
      }

      if (v32 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_27:

  v50 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
  v51 = sub_1D1E6815C();

  v22 = [v50 initWithMediaProfiles:v51 playbackState:4 volume:0];

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v22;
}

uint64_t Action.Error.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t sub_1D17618F8()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t sub_1D176193C()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

unint64_t Action.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Action.NaturalLightAction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Action.CharacteristicAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Action();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1771BF4(v1, v13, type metadata accessor for Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D1771B6C(v13, v5, type metadata accessor for Action.NaturalLightAction);
      v15 = Action.NaturalLightAction.debugDescription.getter();
      sub_1D1771C5C(v5, type metadata accessor for Action.NaturalLightAction);
      return v15;
    }

    v20 = *(v13 + 1);
    LOBYTE(v23) = *v13;
    v24 = v20;
    v15 = Action.MatterCommandAction.debugDescription.getter();
LABEL_8:

    return v15;
  }

  if (EnumCaseMultiPayload)
  {
    v16 = v13[8];
    v17 = *(v13 + 2);
    v18 = v13[24];
    v19 = *(v13 + 4);
    v23 = *v13;
    LOBYTE(v24) = v16;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v15 = Action.MediaPlaybackAction.debugDescription.getter();

    goto LABEL_8;
  }

  sub_1D1771B6C(v13, v9, type metadata accessor for Action.CharacteristicAction);
  v15 = Action.CharacteristicAction.debugDescription.getter();
  sub_1D1771C5C(v9, type metadata accessor for Action.CharacteristicAction);
  return v15;
}

uint64_t sub_1D1761BE0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D1E6920C();
  v7 = dword_1D1E711E0[a2];
  sub_1D1E6924C();
  v8 = sub_1D1E6926C();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (dword_1D1E711E0[*(*(v5 + 48) + v10)] != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v10);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D193DDDC(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1761CF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticCameraProfile();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticCameraProfile);
      v17 = _s13HomeDataModel19StaticCameraProfileV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticCameraProfile);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticCameraProfile);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticCameraProfile);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticCameraProfile);
    *&v23[0] = *v3;
    sub_1D193DF58(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticCameraProfile);
    return 1;
  }
}

uint64_t sub_1D1761F38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticMediaProfile();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticMediaProfile);
      v17 = _s13HomeDataModel18StaticMediaProfileV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticMediaProfile);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticMediaProfile);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticMediaProfile);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticMediaProfile);
    *&v23[0] = *v3;
    sub_1D193E19C(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticMediaProfile);
    return 1;
  }
}

uint64_t sub_1D1762178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticMediaSystem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticMediaSystem);
      v17 = _s13HomeDataModel17StaticMediaSystemV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticMediaSystem);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticMediaSystem);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticMediaSystem);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticMediaSystem);
    *&v23[0] = *v3;
    sub_1D193E3E0(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticMediaSystem);
    return 1;
  }
}

uint64_t sub_1D17623B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticAccessory(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticAccessory.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticAccessory);
      v17 = _s13HomeDataModel15StaticAccessoryV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticAccessory);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticAccessory);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticAccessory);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticAccessory);
    *&v23[0] = *v3;
    sub_1D193E624(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticAccessory);
    return 1;
  }
}

uint64_t sub_1D17625F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticService.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticService);
      v17 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticService);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticService);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticService);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticService);
    *&v23[0] = *v3;
    sub_1D1951BAC(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticService);
    return 1;
  }
}

uint64_t sub_1D1762838(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticServiceGroup();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticServiceGroup);
      v17 = _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticServiceGroup);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticServiceGroup);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticServiceGroup);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticServiceGroup);
    *&v23[0] = *v3;
    sub_1D193E868(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticServiceGroup);
    return 1;
  }
}

uint64_t sub_1D1762A78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticServiceGroup();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticServiceGroup);
      v17 = _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticServiceGroup);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticServiceGroup);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticServiceGroup);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticServiceGroup);
    *&v23[0] = *v3;
    sub_1D193EAAC(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticServiceGroup);
    return 1;
  }
}

uint64_t sub_1D1762CB8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = sub_1D1E676DC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v23 = sub_1D1E6775C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1D193ECF0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1D1762FC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D1E6920C();
  sub_1D1E678EC();
  v9 = sub_1D1E6926C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D1E6904C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D193F1AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D1763114(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176B448(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D1937C54(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D193F32C(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D176334C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for Action();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  Action.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for Action);
      v17 = _s13HomeDataModel6ActionO2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for Action);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for Action);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for Action);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for Action);
    *&v23[0] = *v3;
    sub_1D193F350(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for Action);
    return 1;
  }
}

uint64_t sub_1D176358C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for Event();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  Event.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for Event);
      v17 = _s13HomeDataModel5EventO2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for Event);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for Event);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for Event);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for Event);
    *&v23[0] = *v3;
    sub_1D193F594(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for Event);
    return 1;
  }
}

uint64_t sub_1D17637CC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176B638(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D193862C(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D193F7D8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D1763A04(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC643058, 0x1E696CB30);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176B828(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D1938640(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC643058, 0x1E696CB30);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D193F98C(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D1763C54(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v4 = type metadata accessor for StaticZone();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v68 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v54 - v8;
  v9 = sub_1D1E66A7C();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v56 = v2;
  v66 = *v2;
  v17 = *(v66 + 40);
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v18 = (a2 + *(v4 + 20));
  v19 = v18[1];
  v59 = *v18;
  v58 = v19;
  sub_1D1E678EC();
  v61 = v4;
  v20 = *(v4 + 24);
  v65 = a2;
  v21 = *(a2 + v20);
  MEMORY[0x1D3892850](*(v21 + 16));
  v72 = v21;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v71 + 16);
    v24 = v72 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v25 = *(v71 + 72);
    v26 = (v71 + 8);
    do
    {
      v23(v16, v24, v9);
      sub_1D1E676EC();
      (*v26)(v16, v9);
      v24 += v25;
      --v22;
    }

    while (v22);
  }

  v27 = sub_1D1E6926C();
  v28 = -1 << *(v66 + 32);
  v29 = v27 & ~v28;
  v63 = v66 + 56;
  if ((*(v66 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
  {
    v60 = ~v28;
    v30 = v68;
    v64 = *(v69 + 72);
    v69 = v71 + 16;
    v31 = (v71 + 8);
    v32 = v73;
    while (1)
    {
      v33 = *(v66 + 48);
      v67 = v29;
      v62 = v64 * v29;
      sub_1D1771BF4(v33 + v64 * v29, v30, type metadata accessor for StaticZone);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v34 = (v68 + *(v61 + 20));
        result = *v34;
        v36 = *v34 == v59 && v34[1] == v58;
        if (v36 || (result = sub_1D1E6904C(), (result & 1) != 0))
        {
          v37 = *(v68 + *(v61 + 24));
          v38 = *(v37 + 16);
          if (v38 == *(v72 + 16))
          {
            break;
          }
        }
      }

LABEL_6:
      v30 = v68;
      sub_1D1771C5C(v68, type metadata accessor for StaticZone);
      v29 = (v67 + 1) & v60;
      if (((*(v63 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (!v38 || v37 == v72)
    {
LABEL_21:
      sub_1D1771C5C(v68, type metadata accessor for StaticZone);
      sub_1D1771C5C(v65, type metadata accessor for StaticZone);
      sub_1D1771BF4(*(v66 + 48) + v62, v57, type metadata accessor for StaticZone);
      return 0;
    }

    else
    {
      v39 = 0;
      v40 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v41 = v37 + v40;
      v42 = v72 + v40;
      while (v39 < *(v37 + 16))
      {
        v43 = *(v71 + 72) * v39;
        v44 = *(v71 + 16);
        result = v44(v32, v41 + v43, v9);
        if (v39 >= *(v72 + 16))
        {
          goto LABEL_24;
        }

        v45 = v70;
        v44(v70, v42 + v43, v9);
        sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v46 = sub_1D1E6775C();
        v47 = *v31;
        v48 = v45;
        v32 = v73;
        (*v31)(v48, v9);
        result = (v47)(v32, v9);
        if ((v46 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (v38 == ++v39)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }
  }

  else
  {
LABEL_22:
    v49 = v56;
    v50 = *v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v65;
    v53 = v55;
    sub_1D1771BF4(v65, v55, type metadata accessor for StaticZone);
    v74 = *v49;
    sub_1D193F9CC(v53, v29, isUniquelyReferenced_nonNull_native);
    *v49 = v74;
    sub_1D1771B6C(v52, v57, type metadata accessor for StaticZone);
    return 1;
  }

  return result;
}

uint64_t sub_1D17642C8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1D1E6920C();
  if (a2 == 2)
  {
    v8 = 2;
  }

  else
  {
    if (a2 != 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6922C();
      if (a2)
      {
        sub_1D176D4E8(v26, a2);
      }

      goto LABEL_8;
    }

    v8 = 0;
  }

  MEMORY[0x1D3892850](v8);
LABEL_8:
  v9 = sub_1D1E6926C();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_29:
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26[0] = *v3;
    sub_1D1771B24(a2);
    sub_1D193FFC4(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = *&v26[0];
    *a1 = a2;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v6 + 48) + 8 * v11);
    if (v13 == 2)
    {
      break;
    }

    if (v13 == 1)
    {
      if (a2 == 1)
      {
        goto LABEL_30;
      }

      v14 = a2;
      v15 = 1;
      v16 = a2;
      goto LABEL_18;
    }

    v16 = a2;
    if ((a2 - 1) < 2)
    {
      goto LABEL_17;
    }

    if (!v13)
    {
      sub_1D1771B24(a2);
      sub_1D1771B24(a2);
      sub_1D1771B24(0);
      sub_1D1771B10(0);
      sub_1D1771B10(a2);
      v16 = a2;
      if (!a2)
      {
        v25 = 0;
        goto LABEL_31;
      }

      goto LABEL_19;
    }

    v17 = *(*(v6 + 48) + 8 * v11);
    if (!a2)
    {
      sub_1D1771B24(0);
      v16 = 0;
      v13 = v17;
LABEL_17:
      v15 = v13;
      sub_1D1771B24(v16);
      v14 = v15;
      goto LABEL_18;
    }

    sub_1D1771B24(a2);
    v18 = v17;
    sub_1D1771B24(v17);
    sub_1D1771B24(a2);
    sub_1D1771B24(v17);
    v19 = sub_1D17A6E98(v17, a2);
    sub_1D1771B10(a2);
    sub_1D1771B10(v18);
    sub_1D1771B10(a2);
    sub_1D1771B10(v18);
    if (v19)
    {
      v25 = a2;
      goto LABEL_31;
    }

LABEL_20:
    v11 = (v11 + 1) & v12;
    if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (a2 != 2)
  {
    v14 = a2;
    v15 = 2;
    v16 = a2;
LABEL_18:
    sub_1D1771B24(v14);
    sub_1D1771B10(v15);
LABEL_19:
    sub_1D1771B10(v16);
    goto LABEL_20;
  }

LABEL_30:
  v23 = *(*(v6 + 48) + 8 * v11);
  sub_1D1771B10(v23);
  v25 = v23;
LABEL_31:
  sub_1D1771B10(v25);
  v24 = *(*(v6 + 48) + 8 * v11);
  *a1 = v24;
  sub_1D1771B24(v24);
  return 0;
}

uint64_t sub_1D17645AC(_BYTE *a1, char a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = v3;
  v8 = *v5;
  v9 = *(*v5 + 40);
  sub_1D1E6920C();
  v10 = a2 & 1;
  MEMORY[0x1D3892850](v10);
  v11 = sub_1D1E6926C();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = *(v8 + 48);
      if (*(v15 + v13) == v10)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v10) = *(v15 + v13);
  }

  else
  {
LABEL_5:
    v16 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    a3(v10, v13, isUniquelyReferenced_nonNull_native);
    *v5 = v19;
    result = 1;
  }

  *a1 = v10;
  return result;
}

uint64_t sub_1D17646BC(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FE8, &qword_1D1EB2A90);
  v4 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v33 = v2;
  v15 = *v2;
  v16 = *(*v2 + 40);
  sub_1D1E6920C();
  v39 = a2;
  sub_1D1771BF4(a2, v14, type metadata accessor for WriteInProgressStatusViewModel.ID);
  MEMORY[0x1D3892850](0);
  v17 = sub_1D1E66A7C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v18 = *(*(v17 - 8) + 8);
  v32 = v14;
  v18(v14, v17);
  v19 = sub_1D1E6926C();
  v38 = v15;
  v20 = -1 << *(v15 + 32);
  v21 = v19 & ~v20;
  v36 = v15 + 56;
  if ((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v35 = ~v20;
    v22 = *(v8 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v38 + 48) + v22 * v21, v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v23 = *(v37 + 48);
      sub_1D1771BF4(v12, v6, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1771BF4(v39, &v6[v23], type metadata accessor for WriteInProgressStatusViewModel.ID);
      v24 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1771C5C(v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v18(&v6[v23], v17);
      v18(v6, v17);
      if (v24)
      {
        break;
      }

      v21 = (v21 + 1) & v35;
      if (((*(v36 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(v39, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D1771BF4(*(v38 + 48) + v22 * v21, v34, type metadata accessor for WriteInProgressStatusViewModel.ID);
    return 0;
  }

  else
  {
LABEL_5:
    v25 = v33;
    v26 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v39;
    v29 = v32;
    sub_1D1771BF4(v39, v32, type metadata accessor for WriteInProgressStatusViewModel.ID);
    v40 = *v25;
    sub_1D1940454(v29, v21, isUniquelyReferenced_nonNull_native);
    *v25 = v40;
    sub_1D1771B6C(v28, v34, type metadata accessor for WriteInProgressStatusViewModel.ID);
    return 1;
  }
}

uint64_t sub_1D1764A98(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176BA18(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D1939118(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D19407F8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D1764CD0(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v4 = type metadata accessor for StaticResident();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54[-v10];
  v61 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticResident.hash(into:)(v63);
  v13 = sub_1D1E6926C();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v5 + 72);
    v57 = v17;
    v58 = ~v14;
    while (1)
    {
      v18 = v17 * v15;
      sub_1D1771BF4(*(v11 + 48) + v17 * v15, v9, type metadata accessor for StaticResident);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        goto LABEL_4;
      }

      v19 = v4[5];
      v20 = *&v9[v19];
      v21 = *&v9[v19 + 8];
      v22 = (a2 + v19);
      v23 = v20 == *v22 && v21 == v22[1];
      if (!v23 && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_4;
      }

      v24 = v4[6];
      v25 = &v9[v24];
      v26 = *&v9[v24 + 8];
      v27 = (a2 + v24);
      v28 = v27[1];
      if (v26)
      {
        if (!v28)
        {
          goto LABEL_4;
        }

        v29 = *v25 == *v27 && v26 == v28;
        if (!v29 && (sub_1D1E6904C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v28)
      {
        goto LABEL_4;
      }

      if ((sub_1D17B30EC(*&v9[v4[7]], *(a2 + v4[7])) & 1) == 0 || (sub_1D17B30EC(*&v9[v4[8]], *(a2 + v4[8])) & 1) == 0)
      {
        goto LABEL_4;
      }

      v30 = v4[9];
      v31 = *&v9[v30];
      v32 = v9[v30 + 8];
      v33 = a2 + v30;
      v34 = *v33;
      v35 = *(v33 + 8);
      v59 = v31;
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          if (v35 != 2)
          {
            goto LABEL_55;
          }

          v37 = v34;
          sub_1D1771B4C(v34, 2);
          v38 = v59;
          sub_1D1771B5C(v59, 2);
          sub_1D1771B5C(v37, 2);
          v39 = v38;
          v40 = v37 ^ v38;
          v17 = v57;
          v16 = v58;
          if ((v40 & 1) != 0 || ((v39 >> 8) & 1) != ((v37 >> 8) & 1))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v31 > 1)
          {
            if (v31 == 2)
            {
              if (v35 != 3 || v34 != 2)
              {
                goto LABEL_55;
              }

              sub_1D1771B4C(2, 3);
              sub_1D1771B5C(2, 3);
              sub_1D1771B5C(2, 3);
              v44 = 2;
            }

            else
            {
              if (v35 != 3 || v34 != 3)
              {
                goto LABEL_55;
              }

              sub_1D1771B4C(3, 3);
              sub_1D1771B5C(3, 3);
              v44 = 3;
            }
          }

          else if (v31)
          {
            if (v35 != 3 || v34 != 1)
            {
              goto LABEL_55;
            }

            sub_1D1771B4C(1, 3);
            sub_1D1771B5C(1, 3);
            sub_1D1771B5C(1, 3);
            v44 = 1;
          }

          else
          {
            if (v35 != 3 || v34)
            {
              goto LABEL_55;
            }

            sub_1D1771B4C(0, 3);
            sub_1D1771B5C(0, 3);
            sub_1D1771B5C(0, 3);
            v44 = 0;
          }

          sub_1D1771B5C(v44, 3);
          v17 = v57;
          v16 = v58;
        }

        goto LABEL_53;
      }

      if (v32)
      {
        break;
      }

      if (v35)
      {
        v36 = v34;
        sub_1D1771B4C(v31, 0);

        v34 = v36;
LABEL_55:
        v46 = v34;
        sub_1D1771B4C(v34, v35);
        v47 = v59;
        sub_1D1771B5C(v59, v32);
        sub_1D1771B5C(v46, v35);
        sub_1D1771B5C(v47, v32);
        v17 = v57;
        v16 = v58;
        goto LABEL_4;
      }

      if (!v31)
      {
        v31 = v34;
        sub_1D1771B4C(v34, 0);
        sub_1D1771B4C(v31, 0);
        sub_1D1771B4C(0, 0);
        sub_1D1771B4C(v31, 0);
        sub_1D1771B4C(0, 0);
        sub_1D1771B5C(0, 0);
        sub_1D1771B5C(v31, 0);
        v17 = v57;
        v16 = v58;
        if (v31)
        {
          sub_1D1771B5C(v31, 0);
LABEL_59:
          sub_1D1771B5C(v31, 0);
          sub_1D1771B5C(0, 0);
          goto LABEL_4;
        }

        sub_1D1771B5C(0, 0);
        sub_1D1771B5C(0, 0);
LABEL_53:
        v45 = v4[10];
        if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
        {
          sub_1D1771C5C(v9, type metadata accessor for StaticResident);
          sub_1D1771C5C(a2, type metadata accessor for StaticResident);
          sub_1D1771BF4(*(v11 + 48) + v18, v62, type metadata accessor for StaticResident);
          return 0;
        }

        goto LABEL_4;
      }

      v17 = v57;
      v16 = v58;
      if (!v34)
      {
        sub_1D1771B4C(0, 0);
        sub_1D1771B4C(v31, 0);
        sub_1D1771B4C(0, 0);
        goto LABEL_59;
      }

      v56 = v34;
      sub_1D1771B4C(v31, 0);
      sub_1D1771B4C(v56, 0);
      sub_1D1771B4C(v31, 0);
      sub_1D1771B4C(v56, 0);
      sub_1D1771B4C(v31, 0);
      v55 = sub_1D17A6E98(v31, v56);
      sub_1D1771B5C(v31, 0);
      sub_1D1771B5C(v56, 0);
      sub_1D1771B5C(v31, 0);
      sub_1D1771B5C(v56, 0);
      sub_1D1771B5C(v31, 0);
      if (v55)
      {
        goto LABEL_53;
      }

LABEL_4:
      sub_1D1771C5C(v9, type metadata accessor for StaticResident);
      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v35 != 1)
    {
      goto LABEL_55;
    }

    v41 = v34;
    sub_1D1771B4C(v34, 1);
    v42 = v59;
    sub_1D1771B5C(v59, 1);
    sub_1D1771B5C(v41, 1);
    v43 = v42;
    v23 = (v41 ^ v42) == 0;
    v17 = v57;
    v16 = v58;
    if (!v23)
    {
      goto LABEL_4;
    }

    sub_1D1771B5C(v43, 1);
    goto LABEL_53;
  }

LABEL_61:
  v48 = v61;
  v49 = *v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v60;
  sub_1D1771BF4(a2, v60, type metadata accessor for StaticResident);
  *&v63[0] = *v48;
  sub_1D194081C(v51, v15, isUniquelyReferenced_nonNull_native);
  v52 = v62;
  *v48 = *&v63[0];
  sub_1D1771B6C(a2, v52, type metadata accessor for StaticResident);
  return 1;
}

uint64_t sub_1D17653AC(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1D3892820](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D1940EF8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1765494(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1D3892820](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D194101C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D176557C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176BC08(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D1939A58(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D1941140(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D17657B4(int *a1, int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D1E6920C();
  sub_1D1E6924C();
  v7 = sub_1D1E6926C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1D1941164(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D17658AC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D1E6920C();
  v7 = dword_1D1E71164[a2];
  sub_1D1E6924C();
  v8 = sub_1D1E6926C();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (dword_1D1E71164[*(*(v5 + 48) + v10)] != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v10);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D19412C0(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D17659C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a2);
  sub_1D1E678EC();
  v30 = a5;
  sub_1D176D34C(v31, a5);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v18 = (*(v10 + 48) + 32 * v14);
      if (*v18 == a2)
      {
        v19 = v18[3];
        v20 = v18[1] == a3 && v18[2] == a4;
        if (v20 || (v21 = v18[2], (sub_1D1E6904C() & 1) != 0))
        {

          v17 = sub_1D17A7B94(v16, v30);

          if (v17)
          {
            break;
          }
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v25 = *(v10 + 48) + 32 * v14;
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    *a1 = *v25;
    *(a1 + 16) = v26;
    *(a1 + 24) = v27;

    return 0;
  }

  else
  {
LABEL_12:
    v22 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[0] = *v28;

    sub_1D194143C(a2, a3, a4, v30, v14, isUniquelyReferenced_nonNull_native);
    *v28 = *&v31[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = v30;
    return 1;
  }
}

uint64_t sub_1D1765BC4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D1E6920C();
  v7 = a2 >> 6;
  sub_1D1E6923C();
  sub_1D1E678EC();
  v8 = sub_1D1E6926C();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v5 + 48);
      v13 = *(v12 + v10);
      if (v13 >> 6)
      {
        if (v13 >> 6 == 1)
        {
          if (v7 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (v7 != 2)
        {
          goto LABEL_4;
        }

        if (((v13 ^ a2) & 0x3F) == 0)
        {
          result = 0;
          LOBYTE(a2) = *(v12 + v10);
          goto LABEL_15;
        }
      }

      else if (a2 <= 0x3Fu && v13 == a2)
      {
        result = 0;
        goto LABEL_15;
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  sub_1D194162C(a2, v10, isUniquelyReferenced_nonNull_native);
  *v2 = v17;
  result = 1;
LABEL_15:
  *a1 = a2;
  return result;
}

uint64_t sub_1D1765D80(_BYTE *a1, uint64_t a2)
{
  v5 = BYTE1(a2);
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E678EC();
  v8 = sub_1D1E6926C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = (*(v6 + 48) + 2 * v10);
      v13 = *v12;
      v14 = v12[1];
      if (v14)
      {
        if (v14 == 1)
        {
          if (v5 != 1)
          {
            goto LABEL_5;
          }
        }

        else if (v5 != 2)
        {
          goto LABEL_5;
        }
      }

      else if (v5)
      {
        goto LABEL_5;
      }

      if (v13 == a2)
      {
        result = 0;
        LOBYTE(v5) = v14;
        goto LABEL_14;
      }

LABEL_5:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  v15 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  sub_1D194182C(a2, v10, isUniquelyReferenced_nonNull_native);
  *v2 = v18;
  result = 1;
LABEL_14:
  *a1 = a2;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D1765F64(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v9 = sub_1D1E6920C();
  (a3)(v9);
  sub_1D1E678EC();

  v10 = sub_1D1E6926C();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v25 = *(*(v7 + 48) + v12);
      v14 = a3();
      v16 = v15;
      if (v14 == a3() && v16 == v17)
      {
        break;
      }

      v19 = sub_1D1E6904C();

      if (v19)
      {
        goto LABEL_11;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v7 + 48) + v12);
  }

  else
  {
LABEL_9:
    v20 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    a4(a2, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v26;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1766130(void *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = sub_1D1E691FC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (*(*(v7 + 48) + 8 * v11) != a2)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    a3(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1766218(uint64_t a1, void *a2)
{
  v57 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v55 = (&v54 - v10);
  v56 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D1E6920C();
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 8))(v13, v14);
  sub_1D1E678EC();

  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  (*(v16 + 16))(v15, v16);
  sub_1D1E678EC();

  v17 = *(v4 + 36);
  sub_1D1E66A7C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v59 = v17;
  sub_1D1E676EC();
  v60 = v4;
  v58 = *(a2 + *(v4 + 40));
  MEMORY[0x1D3892890]();
  v18 = sub_1D1E6926C();
  v19 = v11 + 56;
  v64 = v11 + 56;
  v65 = v11;
  v20 = -1 << *(v11 + 32);
  v21 = v18 & ~v20;
  if ((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v62 = ~v20;
    v63 = *(v5 + 72);
    v22 = &qword_1EC643018;
    v23 = &qword_1D1E9AC00;
    do
    {
      v24 = *(v65 + 48);
      v61 = v63 * v21;
      v25 = v22;
      v26 = v23;
      sub_1D1741C08(v24 + v63 * v21, v9, v22, v23);
      v27 = v9[3];
      v28 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v27);
      v29 = (*(v28 + 8))(v27, v28);
      v31 = v30;
      v33 = a2[3];
      v32 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v33);
      if (v29 == (*(v32 + 8))(v33, v32) && v31 == v34)
      {
      }

      else
      {
        v36 = sub_1D1E6904C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v37 = v9[3];
      v38 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v37);
      v39 = (*(v38 + 16))(v37, v38);
      v41 = v40;
      v42 = a2[3];
      v43 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v42);
      if (v39 == (*(v43 + 16))(v42, v43) && v41 == v44)
      {
      }

      else
      {
        v46 = sub_1D1E6904C();

        if ((v46 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v47 = v9 + *(v60 + 36);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
LABEL_3:
        v22 = v25;
        v23 = v26;
        sub_1D1741A30(v9, v25, v26);
        goto LABEL_4;
      }

      v48 = *(v9 + *(v60 + 40));
      v22 = v25;
      v23 = v26;
      sub_1D1741A30(v9, v25, v26);
      if (v48 == v58)
      {
        sub_1D1741A30(a2, &qword_1EC643018, &qword_1D1E9AC00);
        sub_1D1741C08(*(v65 + 48) + v61, v57, &qword_1EC643018, &qword_1D1E9AC00);
        return 0;
      }

LABEL_4:
      v21 = (v21 + 1) & v62;
    }

    while (((*(v64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  v50 = v56;
  v51 = *v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v55;
  sub_1D1741C08(a2, v55, &qword_1EC643018, &qword_1D1E9AC00);
  v66 = *v50;
  sub_1D1941DD8(v53, v21, isUniquelyReferenced_nonNull_native);
  *v50 = v66;
  sub_1D1741A90(a2, v57, &qword_1EC643018, &qword_1D1E9AC00);
  return 1;
}

uint64_t sub_1D1766770(uint64_t a1, void *a2)
{
  v56 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v54 = (&v54 - v10);
  v55 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D1E6920C();
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 8))(v13, v14);
  sub_1D1E678EC();

  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  (*(v16 + 16))(v15, v16);
  sub_1D1E678EC();

  v17 = *(v4 + 36);
  v18 = sub_1D1E66A7C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v59 = v17;
  sub_1D1E676EC();
  v60 = v4;
  v57 = *(v4 + 40);
  v58 = v18;
  sub_1D1E676EC();
  v19 = sub_1D1E6926C();
  v64 = v11 + 56;
  v65 = v11;
  v20 = -1 << *(v11 + 32);
  v21 = v19 & ~v20;
  if ((*(v11 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v62 = ~v20;
    v63 = *(v5 + 72);
    v22 = &qword_1EC643010;
    v23 = &qword_1D1E90E20;
    do
    {
      v24 = *(v65 + 48);
      v61 = v63 * v21;
      v25 = v22;
      v26 = v23;
      sub_1D1741C08(v24 + v63 * v21, v9, v22, v23);
      v27 = v9[3];
      v28 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v27);
      v29 = (*(v28 + 8))(v27, v28);
      v31 = v30;
      v33 = a2[3];
      v32 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v33);
      if (v29 == (*(v32 + 8))(v33, v32) && v31 == v34)
      {
      }

      else
      {
        v36 = sub_1D1E6904C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v37 = v9[3];
      v38 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v37);
      v39 = (*(v38 + 16))(v37, v38);
      v41 = v40;
      v42 = a2[3];
      v43 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v42);
      if (v39 == (*(v43 + 16))(v42, v43) && v41 == v44)
      {
      }

      else
      {
        v46 = sub_1D1E6904C();

        if ((v46 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v47 = v9 + *(v60 + 36);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
LABEL_3:
        v22 = v25;
        v23 = v26;
        sub_1D1741A30(v9, v25, v26);
        goto LABEL_4;
      }

      v48 = *(v60 + 40);
      sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      LOBYTE(v48) = sub_1D1E6775C();
      v22 = v25;
      v23 = v26;
      sub_1D1741A30(v9, v25, v26);
      if (v48)
      {
        sub_1D1741A30(a2, &qword_1EC643010, &qword_1D1E90E20);
        sub_1D1741C08(*(v65 + 48) + v61, v56, &qword_1EC643010, &qword_1D1E90E20);
        return 0;
      }

LABEL_4:
      v21 = (v21 + 1) & v62;
    }

    while (((*(v64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  v50 = v55;
  v51 = *v55;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v54;
  sub_1D1741C08(a2, v54, &qword_1EC643010, &qword_1D1E90E20);
  v66 = *v50;
  sub_1D19422F0(v53, v21, isUniquelyReferenced_nonNull_native);
  *v50 = v66;
  sub_1D1741A90(a2, v56, &qword_1EC643010, &qword_1D1E90E20);
  return 1;
}

uint64_t sub_1D1766D1C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176BDF8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D193B3B4(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D1942848(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D1766F54(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v4 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v46 - v5;
  v52 = _s7MergeIdVMa();
  v62 = *(v52 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x1EEE9AC00](v52);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v46 - v11;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v56 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v47 = v2;
  v64 = *v2;
  v23 = *(v64 + 40);
  sub_1D1E6920C();
  v65 = a2;
  sub_1D1741C08(a2, v22, &qword_1EC642590, qword_1D1E71260);
  v24 = v13 + 48;
  v57 = *(v13 + 48);
  if (v57(v22, 1, v12) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v13 + 32))(v16, v22, v12);
    sub_1D1E6922C();
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v13 + 8))(v16, v12);
  }

  v25 = (v65 + *(v52 + 20));
  v26 = *v25;
  v58 = v25[1];
  v59 = v26;
  sub_1D1E678EC();
  v27 = sub_1D1E6926C();
  v28 = -1 << *(v64 + 32);
  v29 = v27 & ~v28;
  v63 = v64 + 56;
  v30 = v57;
  if ((*(v64 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
  {
    v50 = v16;
    v61 = ~v28;
    v49 = (v13 + 32);
    v62 = *(v62 + 72);
    v54 = (v13 + 8);
    v31 = v51;
    v55 = v10;
    v53 = v24;
    do
    {
      v32 = *(v64 + 48);
      v60 = v62 * v29;
      sub_1D1771BF4(v32 + v62 * v29, v10, _s7MergeIdVMa);
      v33 = *(v31 + 48);
      sub_1D1741C08(v10, v6, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v65, &v6[v33], &qword_1EC642590, qword_1D1E71260);
      if (v30(v6, 1, v12) == 1)
      {
        if (v30(&v6[v33], 1, v12) != 1)
        {
          goto LABEL_7;
        }

        sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v34 = v56;
        sub_1D1741C08(v6, v56, &qword_1EC642590, qword_1D1E71260);
        if (v30(&v6[v33], 1, v12) == 1)
        {
          (*v54)(v34, v12);
          v10 = v55;
          v30 = v57;
LABEL_7:
          sub_1D1741A30(v6, &qword_1EC642980, &unk_1D1E6E6E0);
          goto LABEL_8;
        }

        v35 = v50;
        (*v49)(v50, &v6[v33], v12);
        sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v36 = sub_1D1E6775C();
        v37 = *v54;
        (*v54)(v35, v12);
        v37(v34, v12);
        v31 = v51;
        sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
        v10 = v55;
        v30 = v57;
        if ((v36 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v38 = &v10[*(v52 + 20)];
      v39 = *v38 == v59 && *(v38 + 1) == v58;
      if (v39 || (sub_1D1E6904C() & 1) != 0)
      {
        sub_1D1771C5C(v10, _s7MergeIdVMa);
        sub_1D1771C5C(v65, _s7MergeIdVMa);
        sub_1D1771BF4(*(v64 + 48) + v60, v48, _s7MergeIdVMa);
        return 0;
      }

LABEL_8:
      sub_1D1771C5C(v10, _s7MergeIdVMa);
      v29 = (v29 + 1) & v61;
    }

    while (((*(v63 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
  }

  v41 = v47;
  v42 = *v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v65;
  v45 = v46;
  sub_1D1771BF4(v65, v46, _s7MergeIdVMa);
  v66 = *v41;
  sub_1D194286C(v45, v29, isUniquelyReferenced_nonNull_native);
  *v41 = v66;
  sub_1D1771B6C(v44, v48, _s7MergeIdVMa);
  return 1;
}

uint64_t sub_1D17676D4(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v4 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v46 - v5;
  v6 = type metadata accessor for StaticMediaSystemComponent();
  v61 = *(v6 - 1);
  v7 = *(v61 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v46 - v11;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v60 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v53 = v2;
  v23 = *v2;
  v24 = *(*v2 + 40);
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v62 = v6[5];
  StaticMediaProfile.hash(into:)(v66);
  v65 = *(a2 + v6[6]);
  MEMORY[0x1D3892850]();
  v63 = *(a2 + v6[7]);
  sub_1D176D4E8(v66, v63);
  v57 = v6[8];
  sub_1D1741C08(a2 + v57, v22, &qword_1EC642590, qword_1D1E71260);
  v55 = *(v13 + 48);
  v56 = v13 + 48;
  v25 = v55(v22, 1, v12);
  v48 = v13;
  if (v25 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v13 + 32))(v16, v22, v12);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v13 + 8))(v16, v12);
  }

  v26 = sub_1D1E6926C();
  v27 = v23 + 56;
  v28 = -1 << *(v23 + 32);
  v29 = v26 & ~v28;
  if (((*(v23 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
LABEL_18:
    v41 = v53;
    v42 = *v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v52;
    sub_1D1771BF4(a2, v52, type metadata accessor for StaticMediaSystemComponent);
    *&v66[0] = *v41;
    sub_1D1942F80(v44, v29, isUniquelyReferenced_nonNull_native);
    *v41 = *&v66[0];
    sub_1D1771B6C(a2, v54, type metadata accessor for StaticMediaSystemComponent);
    return 1;
  }

  v47 = v16;
  v64 = v12;
  v30 = ~v28;
  v46 = (v48 + 4);
  v31 = *(v61 + 72);
  ++v48;
  v32 = v62;
  v49 = v6;
  v51 = v23;
  v50 = a2;
  while (1)
  {
    sub_1D1771BF4(*(v23 + 48) + v31 * v29, v10, type metadata accessor for StaticMediaSystemComponent);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || !_s13HomeDataModel18StaticMediaProfileV2eeoiySbAC_ACtFZ_0(&v10[v6[5]], a2 + v32) || *&v10[v6[6]] != v65 || (sub_1D17A6E98(*&v10[v6[7]], v63) & 1) == 0)
    {
      goto LABEL_8;
    }

    v35 = v6[8];
    v36 = v58;
    v37 = *(v59 + 48);
    sub_1D1741C08(&v10[v35], v58, &qword_1EC642590, qword_1D1E71260);
    v61 = v37;
    sub_1D1741C08(a2 + v57, v36 + v37, &qword_1EC642590, qword_1D1E71260);
    v38 = v55;
    if (v55(v36, 1, v64) == 1)
    {
      break;
    }

    sub_1D1741C08(v36, v60, &qword_1EC642590, qword_1D1E71260);
    if (v38(v36 + v61, 1, v64) == 1)
    {
      (*v48)(v60, v64);
      v34 = v36;
      v23 = v51;
      a2 = v50;
      goto LABEL_7;
    }

    v39 = v64;
    (*v46)(v47, v36 + v61, v64);
    sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8]);
    LODWORD(v61) = sub_1D1E6775C();
    v40 = *v48;
    (*v48)(v47, v39);
    v40(v60, v39);
    sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
    v6 = v49;
    v32 = v62;
    v23 = v51;
    a2 = v50;
    if (v61)
    {
      goto LABEL_21;
    }

LABEL_8:
    sub_1D1771C5C(v10, type metadata accessor for StaticMediaSystemComponent);
    v29 = (v29 + 1) & v30;
    if (((*(v27 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v33 = v38(v36 + v61, 1, v64) == 1;
  v34 = v36;
  v23 = v51;
  a2 = v50;
  if (!v33)
  {
LABEL_7:
    sub_1D1741A30(v34, &qword_1EC642980, &unk_1D1E6E6E0);
    v6 = v49;
    v32 = v62;
    goto LABEL_8;
  }

  sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
LABEL_21:
  sub_1D1771C5C(v10, type metadata accessor for StaticMediaSystemComponent);
  sub_1D1771C5C(a2, type metadata accessor for StaticMediaSystemComponent);
  sub_1D1771BF4(*(v23 + 48) + v31 * v29, v54, type metadata accessor for StaticMediaSystemComponent);
  return 0;
}

uint64_t sub_1D1767EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (a3)
  {
    sub_1D1E678EC();
  }

  v9 = sub_1D1E6926C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D1943728(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_1D1768044(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v4 = type metadata accessor for MatterTilePath(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - v10;
  v38 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v13 = *(a2 + *(v4 + 20));
  MEMORY[0x1D3892890](v13);
  v14 = (a2 + *(v4 + 24));
  v15 = *v14;
  v42 = *(v14 + 2);
  if (v42 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v16 = sub_1D1E6926C();
  v17 = v11 + 56;
  v18 = -1 << *(v11 + 32);
  v19 = v16 & ~v18;
  if ((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v40 = v15;
    v20 = ~v18;
    v21 = *(v5 + 72);
    v41 = v21;
    do
    {
      v22 = v21 * v19;
      sub_1D1771BF4(*(v11 + 48) + v21 * v19, v9, type metadata accessor for MatterTilePath);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && *&v9[*(v4 + 20)] == v13)
      {
        v23 = v20;
        v24 = v17;
        v25 = v13;
        v26 = a2;
        v27 = v4;
        v28 = &v9[*(v4 + 24)];
        v43 = *v28;
        v29 = v28[2];
        sub_1D1771C5C(v9, type metadata accessor for MatterTilePath);
        if (v29)
        {
          v4 = v27;
          a2 = v26;
          v13 = v25;
          v17 = v24;
          v20 = v23;
          v21 = v41;
          if (v42)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v30 = v42;
          if (v43 != v40)
          {
            v30 = 1;
          }

          v4 = v27;
          a2 = v26;
          v13 = v25;
          v17 = v24;
          v20 = v23;
          v21 = v41;
          if ((v30 & 1) == 0)
          {
LABEL_16:
            sub_1D1771C5C(a2, type metadata accessor for MatterTilePath);
            sub_1D1771BF4(*(v11 + 48) + v22, v39, type metadata accessor for MatterTilePath);
            return 0;
          }
        }
      }

      else
      {
        sub_1D1771C5C(v9, type metadata accessor for MatterTilePath);
      }

      v19 = (v19 + 1) & v20;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  v32 = v38;
  v33 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v37;
  sub_1D1771BF4(a2, v37, type metadata accessor for MatterTilePath);
  v44 = *v32;
  sub_1D19438E4(v35, v19, isUniquelyReferenced_nonNull_native);
  *v32 = v44;
  sub_1D1771B6C(a2, v39, type metadata accessor for MatterTilePath);
  return 1;
}

uint64_t sub_1D1768400(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC643048, 0x1E696CBE8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176BFE8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D193C0C0(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC643048, 0x1E696CBE8);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D1943C38(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D1768638(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  v4 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v49 - v5;
  v57 = sub_1D1E66A7C();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v51 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  v52 = v2;
  v64 = *v2;
  v24 = *(v64 + 40);
  sub_1D1E6920C();
  v63 = a2;
  sub_1D1771BF4(a2, v23, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v26 = *(*(v25 - 8) + 48);
  v27 = v26(v23, 3, v25);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }

    goto LABEL_8;
  }

  if (v27)
  {
    v31 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v31);
    goto LABEL_9;
  }

  v61 = v13;
  v28 = v55;
  v29 = v57;
  (*(v55 + 32))(v11, v23, v57);
  MEMORY[0x1D3892850](1);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v30 = v28;
  v13 = v61;
  (*(v30 + 8))(v11, v29);
LABEL_9:
  v32 = v58;
  v33 = sub_1D1E6926C();
  v34 = -1 << *(v64 + 32);
  v35 = v33 & ~v34;
  v61 = v64 + 56;
  if (((*(v64 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
  {
LABEL_26:
    v43 = v52;
    v44 = *v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v63;
    v47 = v51;
    sub_1D1771BF4(v63, v51, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v65 = *v43;
    sub_1D1943C5C(v47, v35, isUniquelyReferenced_nonNull_native);
    *v43 = v65;
    sub_1D1771B6C(v46, v53, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    return 1;
  }

  v59 = ~v34;
  v60 = *(v13 + 72);
  v56 = (v55 + 8);
  v49 = (v55 + 32);
  v50 = v26;
  while (1)
  {
    v36 = v60 * v35;
    sub_1D1771BF4(*(v64 + 48) + v60 * v35, v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v37 = *(v62 + 48);
    sub_1D1771BF4(v19, v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    sub_1D1771BF4(v63, &v6[v37], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v38 = v26(v6, 3, v25);
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        sub_1D1771C5C(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v26(&v6[v37], 3, v25) == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D1771C5C(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v26(&v6[v37], 3, v25) == 3)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_21;
    }

    if (v38)
    {
      sub_1D1771C5C(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      if (v26(&v6[v37], 3, v25) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1D1771BF4(v6, v32, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (!v26(&v6[v37], 3, v25))
    {
      break;
    }

    sub_1D1771C5C(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    (*v56)(v32, v57);
LABEL_21:
    sub_1D1741A30(v6, &qword_1EC642AD8, &unk_1D1E6E820);
LABEL_22:
    v35 = (v35 + 1) & v59;
    if (((*(v61 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v39 = v54;
  v40 = v57;
  (*v49)(v54, &v6[v37], v57);
  LODWORD(v55) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v41 = *v56;
  v42 = v39;
  v32 = v58;
  (*v56)(v42, v40);
  sub_1D1771C5C(v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v41(v32, v40);
  v26 = v50;
  if ((v55 & 1) == 0)
  {
    sub_1D1771C5C(v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    goto LABEL_22;
  }

LABEL_27:
  sub_1D1771C5C(v6, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  sub_1D1771C5C(v63, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  sub_1D1771BF4(*(v64 + 48) + v36, v53, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  return 0;
}

uint64_t sub_1D1768DB8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC643000, 0x1E696CAF8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176C1D8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D193C2DC(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC643000, 0x1E696CAF8);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D19443A0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D1768FF0(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  v4 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v6 = &v57 - v5;
  v7 = sub_1D1E66A7C();
  v70 = *(v7 - 8);
  v8 = *(v70 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v65 = (&v57 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v57 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v57 - v25);
  v58 = v2;
  v27 = *v2;
  v28 = *(*v2 + 40);
  sub_1D1E6920C();
  v72 = a2;
  sub_1D1771BF4(a2, v26, type metadata accessor for StaticAccessory.DeviceIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v24;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v70;
    (*(v70 + 32))(v12, v26, v7);
    MEMORY[0x1D3892850](1);
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v30 + 8))(v12, v7);
  }

  else
  {
    v31 = *v26;
    v32 = v26[1];
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();

    v30 = v70;
  }

  v33 = sub_1D1E6926C();
  v34 = -1 << *(v27 + 32);
  v35 = v33 & ~v34;
  v70 = v27 + 56;
  if (((*(v27 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
  {
LABEL_21:
    v51 = v58;
    v52 = *v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v72;
    v55 = v57;
    sub_1D1771BF4(v72, v57, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v73 = *v51;
    sub_1D19443C4(v55, v35, isUniquelyReferenced_nonNull_native);
    *v51 = v73;
    sub_1D1771B6C(v54, v59, type metadata accessor for StaticAccessory.DeviceIdentifier);
    return 1;
  }

  v68 = ~v34;
  v69 = *(v69 + 72);
  v63 = (v30 + 8);
  v64 = v7;
  v60 = (v30 + 32);
  v36 = v66;
  while (1)
  {
    v37 = v69 * v35;
    sub_1D1771BF4(*(v27 + 48) + v69 * v35, v21, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v38 = &v6[*(v71 + 48)];
    sub_1D1771BF4(v21, v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1771BF4(v72, v38, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1D1771BF4(v6, v36, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v67 = v37;
      v39 = v27;
      v40 = v61;
      v41 = v64;
      (*v60)(v61, v38, v64);
      v62 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v42 = *v63;
      v43 = v40;
      v27 = v39;
      v36 = v66;
      (*v63)(v43, v41);
      sub_1D1771C5C(v21, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v42(v36, v41);
      if (v62)
      {
        goto LABEL_23;
      }

LABEL_19:
      sub_1D1771C5C(v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
      goto LABEL_8;
    }

    sub_1D1771C5C(v21, type metadata accessor for StaticAccessory.DeviceIdentifier);
    (*v63)(v36, v64);
LABEL_7:
    sub_1D1741A30(v6, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_8:
    v35 = (v35 + 1) & v68;
    if (((*(v70 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v67 = v37;
  v44 = v65;
  sub_1D1771BF4(v6, v65, type metadata accessor for StaticAccessory.DeviceIdentifier);
  v46 = *v44;
  v45 = v44[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D1771C5C(v21, type metadata accessor for StaticAccessory.DeviceIdentifier);

    goto LABEL_7;
  }

  v47 = *v38;
  v48 = *(v38 + 1);
  if (v46 != v47 || v45 != v48)
  {
    v50 = sub_1D1E6904C();

    sub_1D1771C5C(v21, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (v50)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_1D1771C5C(v21, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_23:
  sub_1D1771C5C(v6, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1771C5C(v72, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1771BF4(*(v27 + 48) + v67, v59, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return 0;
}

uint64_t sub_1D1769794(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a2);
  v9 = sub_1D1E6926C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (*(*(v7 + 48) + v11) != a2)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    a3(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D176989C(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_1D1CDA80C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v25 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      if (v9 > 3)
      {
        if (*(*(v4 + 48) + v8) > 5u)
        {
          if (v9 == 6)
          {
            v12 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v12 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v9 == 4)
        {
          v12 = "60-AD68-D91053B75F44";
        }

        else
        {
          v12 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v10 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(v4 + 48) + v8))
        {
          v11 = "13-AA62-01754F256DD5";
        }

        else
        {
          v11 = "00-8000-0026BB765291";
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v12 = v11;
        }

        else
        {
          v12 = v10;
        }
      }

      v13 = v12 | 0x8000000000000000;
      v14 = "17-A590-755E1AAC02AE";
      if (a2 != 6)
      {
        v14 = "73-8FBD-0E8978A33403";
      }

      v15 = "60-AD68-D91053B75F44";
      if (a2 != 4)
      {
        v15 = "7E-BE63-1D00B1500545";
      }

      if (a2 <= 5u)
      {
        v14 = v15;
      }

      if (a2 == 2)
      {
        v16 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v16 = "CE-986D-63B28F62C9E3";
      }

      if (a2)
      {
        v17 = "13-AA62-01754F256DD5";
      }

      else
      {
        v17 = "00-8000-0026BB765291";
      }

      if (a2 <= 1u)
      {
        v16 = v17;
      }

      v18 = a2 <= 3u ? v16 : v14;
      if (v13 == (v18 | 0x8000000000000000))
      {
        break;
      }

      v19 = sub_1D1E6904C();

      if (v19)
      {
        goto LABEL_43;
      }

      v8 = (v8 + 1) & v25;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_41:
    v20 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    sub_1D1944C44(a2, v8, isUniquelyReferenced_nonNull_native);
    *v23 = v26;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1769B04(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176C3C8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D193C814(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D1944F00(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D1769D3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for ActionService();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  ActionService.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for ActionService);
      v17 = _s13HomeDataModel13ActionServiceV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for ActionService);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for ActionService);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for ActionService);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for ActionService);
    *&v23[0] = *v3;
    sub_1D1944F24(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for ActionService);
    return 1;
  }
}

uint64_t sub_1D1769F7C(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v4 = type metadata accessor for StaticZone();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v65 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v50 - v8;
  v9 = sub_1D1E66A7C();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v51 = v2;
  v63 = *v2;
  v17 = *(v63 + 40);
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v18 = (a2 + *(v4 + 20));
  v19 = v18[1];
  v55 = *v18;
  v54 = v19;
  sub_1D1E678EC();
  v58 = v4;
  v20 = *(v4 + 24);
  v62 = a2;
  v21 = *(a2 + v20);
  MEMORY[0x1D3892850](*(v21 + 16));
  v57 = v21;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v53 + 16);
    v24 = v57 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v25 = *(v53 + 72);
    v26 = (v53 + 8);
    do
    {
      v23(v16, v24, v9);
      sub_1D1E676EC();
      (*v26)(v16, v9);
      v24 += v25;
      --v22;
    }

    while (v22);
  }

  v27 = sub_1D1E6926C();
  v28 = -1 << *(v63 + 32);
  v29 = v27 & ~v28;
  v60 = v63 + 56;
  if ((*(v63 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
  {
    v69 = v9;
    v56 = ~v28;
    v61 = *(v68 + 72);
    v67 = v53 + 16;
    v68 = v53 + 8;
    v30 = v65;
    do
    {
      v31 = *(v63 + 48);
      v64 = v29;
      v59 = v61 * v29;
      sub_1D1771BF4(v31 + v61 * v29, v30, type metadata accessor for StaticZone);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v32 = (v65 + *(v58 + 20));
        v33 = *v32 == v55 && v32[1] == v54;
        if (v33 || (sub_1D1E6904C() & 1) != 0)
        {
          v34 = *(v65 + *(v58 + 24));
          v35 = *(v34 + 16);
          if (v35 == *(v57 + 16))
          {
            if (!v35 || v34 == v57)
            {
LABEL_19:
              sub_1D1771C5C(v65, type metadata accessor for StaticZone);
              sub_1D1771C5C(v62, type metadata accessor for StaticZone);
              sub_1D1771BF4(*(v63 + 48) + v59, v52, type metadata accessor for StaticZone);
              return 0;
            }

            v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
            v37 = v34 + v36;
            v38 = v57 + v36;
            v66 = *(v53 + 72);
            v39 = *(v53 + 16);
            while (1)
            {
              v40 = v71;
              v39(v71, v37, v9);
              v41 = v70;
              v39(v70, v38, v9);
              sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8]);
              v42 = v40;
              LOBYTE(v40) = sub_1D1E6775C();
              v43 = *v68;
              (*v68)(v41, v9);
              v43(v42, v9);
              if ((v40 & 1) == 0)
              {
                break;
              }

              v38 += v66;
              v37 += v66;
              if (!--v35)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }

      v30 = v65;
      sub_1D1771C5C(v65, type metadata accessor for StaticZone);
      v29 = (v64 + 1) & v56;
    }

    while (((*(v60 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
  }

  v45 = v51;
  v46 = *v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v62;
  v49 = v50;
  sub_1D1771BF4(v62, v50, type metadata accessor for StaticZone);
  v72 = *v45;
  sub_1D1945168(v49, v29, isUniquelyReferenced_nonNull_native);
  *v45 = v72;
  sub_1D1771B6C(v48, v52, type metadata accessor for StaticZone);
  return 1;
}

uint64_t sub_1D176A610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticActionSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticActionSet);
      v17 = _s13HomeDataModel15StaticActionSetV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticActionSet);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticActionSet);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticActionSet);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticActionSet);
    *&v23[0] = *v3;
    sub_1D1945778(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticActionSet);
    return 1;
  }
}

uint64_t sub_1D176A850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for StaticRoom(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D1E6920C();
  StaticRoom.hash(into:)(v23);
  v12 = sub_1D1E6926C();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v10 + 48) + v16 * v14, v9, type metadata accessor for StaticRoom);
      v17 = _s13HomeDataModel10StaticRoomV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_1D1771C5C(v9, type metadata accessor for StaticRoom);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticRoom);
    sub_1D1771BF4(*(v10 + 48) + v16 * v14, v22, type metadata accessor for StaticRoom);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v9, type metadata accessor for StaticRoom);
    *&v23[0] = *v3;
    sub_1D19459BC(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = *&v23[0];
    sub_1D1771B6C(a2, v20, type metadata accessor for StaticRoom);
    return 1;
  }
}

uint64_t sub_1D176AA90(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A00, &qword_1D1E97330);
  v4 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v49 - v5;
  v57 = sub_1D1E66A7C();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for DataModel.StateSubscription.Reason();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v51 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  v52 = v2;
  v64 = *v2;
  v24 = *(v64 + 40);
  sub_1D1E6920C();
  v63 = a2;
  sub_1D1771BF4(a2, v23, type metadata accessor for DataModel.StateSubscription.Reason);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v26 = *(*(v25 - 8) + 48);
  v27 = v26(v23, 3, v25);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }

    goto LABEL_8;
  }

  if (v27)
  {
    v31 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v31);
    goto LABEL_9;
  }

  v61 = v13;
  v28 = v55;
  v29 = v57;
  (*(v55 + 32))(v11, v23, v57);
  MEMORY[0x1D3892850](1);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v30 = v28;
  v13 = v61;
  (*(v30 + 8))(v11, v29);
LABEL_9:
  v32 = v58;
  v33 = sub_1D1E6926C();
  v34 = -1 << *(v64 + 32);
  v35 = v33 & ~v34;
  v61 = v64 + 56;
  if (((*(v64 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
  {
LABEL_26:
    v43 = v52;
    v44 = *v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v63;
    v47 = v51;
    sub_1D1771BF4(v63, v51, type metadata accessor for DataModel.StateSubscription.Reason);
    v65 = *v43;
    sub_1D1945F60(v47, v35, isUniquelyReferenced_nonNull_native);
    *v43 = v65;
    sub_1D1771B6C(v46, v53, type metadata accessor for DataModel.StateSubscription.Reason);
    return 1;
  }

  v59 = ~v34;
  v60 = *(v13 + 72);
  v56 = (v55 + 8);
  v49 = (v55 + 32);
  v50 = v26;
  while (1)
  {
    v36 = v60 * v35;
    sub_1D1771BF4(*(v64 + 48) + v60 * v35, v19, type metadata accessor for DataModel.StateSubscription.Reason);
    v37 = *(v62 + 48);
    sub_1D1771BF4(v19, v6, type metadata accessor for DataModel.StateSubscription.Reason);
    sub_1D1771BF4(v63, &v6[v37], type metadata accessor for DataModel.StateSubscription.Reason);
    v38 = v26(v6, 3, v25);
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        sub_1D1771C5C(v19, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v26(&v6[v37], 3, v25) == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D1771C5C(v19, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v26(&v6[v37], 3, v25) == 3)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_21;
    }

    if (v38)
    {
      sub_1D1771C5C(v19, type metadata accessor for DataModel.StateSubscription.Reason);
      if (v26(&v6[v37], 3, v25) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1D1771BF4(v6, v32, type metadata accessor for DataModel.StateSubscription.Reason);
    if (!v26(&v6[v37], 3, v25))
    {
      break;
    }

    sub_1D1771C5C(v19, type metadata accessor for DataModel.StateSubscription.Reason);
    (*v56)(v32, v57);
LABEL_21:
    sub_1D1741A30(v6, &qword_1EC642A00, &qword_1D1E97330);
LABEL_22:
    v35 = (v35 + 1) & v59;
    if (((*(v61 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v39 = v54;
  v40 = v57;
  (*v49)(v54, &v6[v37], v57);
  LODWORD(v55) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v41 = *v56;
  v42 = v39;
  v32 = v58;
  (*v56)(v42, v40);
  sub_1D1771C5C(v19, type metadata accessor for DataModel.StateSubscription.Reason);
  v41(v32, v40);
  v26 = v50;
  if ((v55 & 1) == 0)
  {
    sub_1D1771C5C(v6, type metadata accessor for DataModel.StateSubscription.Reason);
    goto LABEL_22;
  }

LABEL_27:
  sub_1D1771C5C(v6, type metadata accessor for DataModel.StateSubscription.Reason);
  sub_1D1771C5C(v63, type metadata accessor for DataModel.StateSubscription.Reason);
  sub_1D1771BF4(*(v64 + 48) + v36, v53, type metadata accessor for DataModel.StateSubscription.Reason);
  return 0;
}

uint64_t sub_1D176B210(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D176C5B8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1D193DBA8(v22 + 1);
    }

    v20 = v8;
    sub_1D176D2C8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v11 = *(v6 + 40);
  v12 = sub_1D1E684EC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1D19466A4(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1D1E684FC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1D176B448(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643080, &qword_1D1E71150);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D1937C54(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176B638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643070, &unk_1D1EA0D80);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D193862C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176B828(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643060, &qword_1D1E71140);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC643058, 0x1E696CB30);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D1938640(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176BA18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FF0, &qword_1D1E71108);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D1939118(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176BC08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FF8, &qword_1D1E71110);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D1939A58(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176BDF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643020, &qword_1D1E71120);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D193B3B4(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176BFE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643050, &qword_1D1E71138);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC643048, 0x1E696CBE8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D193C0C0(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176C1D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643008, &qword_1D1E71118);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC643000, 0x1E696CAF8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D193C2DC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176C3C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643030, &qword_1D1E71130);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D193C814(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176C5B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643028, &qword_1D1E71128);
    v2 = sub_1D1E6881C();
    v16 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1D193DBA8(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1D1E684EC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176C7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v9 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticZone();
  v11 = (a1 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  sub_1D1E678EC();
  v26 = v10;
  v27 = a1;
  v14 = *(a1 + *(v10 + 24));
  MEMORY[0x1D3892850](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v16 = v18;
    v19 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    do
    {
      v16(v8, v19, v4);
      sub_1D1E676EC();
      (*(v17 - 8))(v8, v4);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  sub_1D1E6926C();
  v21 = v28;
  v22 = v28 + 56;
  v23 = -1 << *(v28 + 32);
  v24 = sub_1D1E686CC();
  *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
  result = sub_1D1771B6C(v27, *(v21 + 48) + *(*(v26 - 8) + 72) * v24, type metadata accessor for StaticZone);
  ++*(v21 + 16);
  return result;
}

uint64_t sub_1D176CA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v14 = type metadata accessor for StaticMediaSystemComponent();
  v15 = a1 + v14[5];
  StaticMediaProfile.hash(into:)(v20);
  MEMORY[0x1D3892850](*(a1 + v14[6]));
  sub_1D176D4E8(v20, *(a1 + v14[7]));
  sub_1D1741C08(a1 + v14[8], v12, &qword_1EC642590, qword_1D1E71260);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  sub_1D1E6926C();
  v16 = -1 << *(a2 + 32);
  v17 = sub_1D1E686CC();
  *(a2 + 56 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
  result = sub_1D1771B6C(a1, *(a2 + 48) + *(*(v14 - 1) + 72) * v17, type metadata accessor for StaticMediaSystemComponent);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D176CD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1771BF4(a1, v13, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v13, v4);
    MEMORY[0x1D3892850](1);
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = *v13;
    v16 = v13[1];
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();
  }

  sub_1D1E6926C();
  v17 = -1 << *(a2 + 32);
  v18 = sub_1D1E686CC();
  *(a2 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
  result = sub_1D1771B6C(a1, *(a2 + 48) + *(v10 + 72) * v18, type metadata accessor for StaticAccessory.DeviceIdentifier);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D176CFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v27 - v18;
  v20 = *(a2 + 40);
  sub_1D1E6920C();
  sub_1D1771BF4(a1, v19, a4);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v22 = (*(*(v21 - 8) + 48))(v19, 3, v21);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }

    goto LABEL_8;
  }

  if (v22)
  {
    v23 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v23);
    goto LABEL_9;
  }

  (*(v11 + 32))(v14, v19, v10);
  MEMORY[0x1D3892850](1);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  (*(v11 + 8))(v14, v10);
LABEL_9:
  sub_1D1E6926C();
  v24 = -1 << *(a2 + 32);
  v25 = sub_1D1E686CC();
  *(a2 + 56 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
  result = sub_1D1771B6C(a1, *(a2 + 48) + *(v16 + 72) * v25, a5);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D176D2C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1D1E684EC();
  v5 = -1 << *(a2 + 32);
  result = sub_1D1E686CC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D176D34C(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  sub_1D1E6926C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    v11 = *(*(a2 + 48) + (__clz(__rbit64(v5)) | (v9 << 6)));
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v5 &= v5 - 1;
    result = sub_1D1E6926C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1D3892850](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176D4E8(__int128 *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = sub_1D1E6926C();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v22 = sub_1D1E676DC();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x1D3892850](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176D714(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v16[13] = *(a1 + 32);
  *&v16[15] = v3;
  v16[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v16[9] = *a1;
  *&v16[11] = v4;
  sub_1D1E6926C();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_12:
    v15 = *(*(a2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
    sub_1D1E6920C();
    if (v15 == 2)
    {
      v12 = 2;
LABEL_5:
      MEMORY[0x1D3892850](v12);
      goto LABEL_6;
    }

    if (v15 == 1)
    {
      v12 = 0;
      goto LABEL_5;
    }

    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
    if (v15)
    {

      sub_1D176D4E8(v16, v15);
    }

LABEL_6:
    v7 &= v7 - 1;
    v13 = sub_1D1E6926C();
    result = sub_1D1771B10(v15);
    v10 ^= v13;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return MEMORY[0x1D3892850](v10);
    }

    v7 = *(a2 + 56 + 8 * v14);
    ++v11;
    if (v7)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176D8A8(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_1D1E6926C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1D1E6920C();

    sub_1D1E678EC();
    v15 = sub_1D1E6926C();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1D3892850](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176DA04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v22[13] = *(a1 + 32);
  *&v22[15] = v3;
  v22[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v22[9] = *a1;
  *&v22[11] = v4;
  sub_1D1E6926C();
  v21 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  for (i = 0; v8; v11 ^= v20)
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = (*(v21 + 48) + ((v13 << 11) | (32 * v14)));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v16);

    sub_1D1E678EC();
    sub_1D176D34C(v22, v19);
    v20 = sub_1D1E6926C();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1D3892850](v11);
    }

    v8 = *(v5 + 8 * v13);
    ++i;
    if (v8)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176DB8C(__int128 *a1, uint64_t a2)
{
  v16 = a1[2];
  v17 = a1[3];
  v18 = *(a1 + 8);
  v14 = *a1;
  v15 = a1[1];
  result = sub_1D1E6926C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1D1E6920C();
    v13 = dword_1D1E71164[v12];
    sub_1D1E6924C();
    result = sub_1D1E6926C();
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
      return MEMORY[0x1D3892850](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
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

uint64_t sub_1D176DCC0(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1D1E6926C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + ((v10 << 9) | (8 * v11)));
    result = sub_1D1E691FC();
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
      return MEMORY[0x1D3892850](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
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

uint64_t sub_1D176DDD0(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1D1E6926C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v12);
    result = sub_1D1E6926C();
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
      return MEMORY[0x1D3892850](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
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

uint64_t sub_1D176DEFC(__int128 *a1, uint64_t a2)
{
  v39 = sub_1D1E66A7C();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v41 = v35 - v15;
  v16 = a1[3];
  v47 = a1[2];
  v48 = v16;
  v49 = *(a1 + 8);
  v18 = *a1;
  v17 = a1[1];
  v35[1] = a1;
  v45 = v18;
  v46 = v17;
  v40 = sub_1D1E6926C();
  v19 = a2 + 56;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 56);
  v23 = (v20 + 63) >> 6;
  v37 = (v4 + 32);
  v36 = (v4 + 8);

  v25 = 0;
  v26 = 0;
  while (v22)
  {
    v44 = v25;
LABEL_12:
    v31 = v41;
    sub_1D1771BF4(*(a2 + 48) + *(v42 + 72) * (__clz(__rbit64(v22)) | (v26 << 6)), v41, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1771B6C(v31, v14, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1E6920C();
    sub_1D1771BF4(v14, v11, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v38;
      v28 = v39;
      (*v37)(v38, v11, v39);
      MEMORY[0x1D3892850](1);
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      (*v36)(v27, v28);
    }

    else
    {
      v32 = a2;
      v33 = *v11;
      v34 = v11[1];
      MEMORY[0x1D3892850](0);
      a2 = v32;
      sub_1D1E678EC();
    }

    v22 &= v22 - 1;
    v29 = sub_1D1E6926C();
    result = sub_1D1771C5C(v14, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v25 = v29 ^ v44;
  }

  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v23)
    {

      return MEMORY[0x1D3892850](v25);
    }

    v22 = *(v19 + 8 * v30);
    ++v26;
    if (v22)
    {
      v44 = v25;
      v26 = v30;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176E30C(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  sub_1D1E6926C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; i = v10)
  {
    v10 = i;
LABEL_8:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1D1E6920C();
    sub_1D1E678EC();

    result = sub_1D1E6926C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1D3892850](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176E508(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1D1E6926C();
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  for (i = (v7 + 63) >> 6; v9; v5 ^= result)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    result = MEMORY[0x1D3892820](v4, *(*(a2 + 48) + ((v11 << 7) | (2 * v12))), 2);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x1D3892850](v5);
    }

    v9 = *(a2 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176E61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Action();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 48);
  *&v20[13] = *(a1 + 32);
  *&v20[15] = v8;
  v20[17] = *(a1 + 64);
  v9 = *(a1 + 16);
  *&v20[9] = *a1;
  *&v20[11] = v9;
  sub_1D1E6926C();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  for (i = 0; v12; v15 ^= result)
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_1D1771BF4(*(a2 + 48) + *(v19 + 72) * (v18 | (v17 << 6)), v7, type metadata accessor for Action);
    sub_1D1E6920C();
    Action.hash(into:)(v20);
    sub_1D1771C5C(v7, type metadata accessor for Action);
    result = sub_1D1E6926C();
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x1D3892850](v15);
    }

    v12 = *(a2 + 56 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176E808(__int128 *a1, uint64_t a2)
{
  v59 = type metadata accessor for Event.CharacteristicEvent();
  v4 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event.TimeEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Event();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v66 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v55 - v17;
  v18 = a1[3];
  *&v68[13] = a1[2];
  *&v68[15] = v18;
  v68[17] = *(a1 + 8);
  v20 = *a1;
  v19 = a1[1];
  v55 = a1;
  *&v68[9] = v20;
  *&v68[11] = v19;
  v61 = sub_1D1E6926C();
  v21 = a2 + 56;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 56);
  v25 = (v22 + 63) >> 6;

  v27 = 0;
  v28 = 0;
  v64 = v16;
  v58 = v6;
  v56 = a2;
  while (v24)
  {
    v65 = v27;
LABEL_13:
    v34 = v62;
    sub_1D1771BF4(*(a2 + 48) + *(v63 + 72) * (__clz(__rbit64(v24)) | (v28 << 6)), v62, type metadata accessor for Event);
    sub_1D1771B6C(v34, v16, type metadata accessor for Event);
    sub_1D1E6920C();
    sub_1D1771BF4(v16, v66, type metadata accessor for Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v44 = *v66;
      v43 = *(v66 + 8);
      v45 = *(v66 + 16);
      v46 = *(v66 + 24);
      MEMORY[0x1D3892850](0);
      if (v46 == 1)
      {
        MEMORY[0x1D3892850](1);
        if ((v44 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v47 = v44;
        }

        else
        {
          v47 = 0;
        }

        MEMORY[0x1D3892890](v47);
        if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v48 = v43;
        }

        else
        {
          v48 = 0;
        }

        MEMORY[0x1D3892890](v48);
        if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v49 = v45;
        }

        else
        {
          v49 = 0;
        }

        MEMORY[0x1D3892890](v49);
      }

      else
      {
        MEMORY[0x1D3892850](0);
        MEMORY[0x1D3892850](v44);
        if (v43)
        {
          if (v43 == 1)
          {
            MEMORY[0x1D3892850](1);
            v50 = v44;
            v51 = 1;
          }

          else
          {
            MEMORY[0x1D3892850](2);
            sub_1D176D4E8(v68, v43);
            v50 = v44;
            v51 = v43;
          }
        }

        else
        {
          MEMORY[0x1D3892850](0);
          v50 = v44;
          v51 = 0;
        }

        sub_1D1771BD4(v50, v51, v45, 0);
      }

      a2 = v56;
      v6 = v58;
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148);
      v30 = *(v66 + *(v29 + 48));
      v31 = v57;
      sub_1D1771B6C(v66, v57, type metadata accessor for Event.TimeEvent);
      MEMORY[0x1D3892850](1);
      Event.TimeEvent.hash(into:)(v68);
      MEMORY[0x1D3892850](v30);
      sub_1D1771C5C(v31, type metadata accessor for Event.TimeEvent);
LABEL_5:
      v16 = v64;
      goto LABEL_6;
    }

    sub_1D1771B6C(v66, v6, type metadata accessor for Event.CharacteristicEvent);
    MEMORY[0x1D3892850](2);
    sub_1D1E66A7C();
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    v36 = v59;
    v67 = v6[*(v59 + 20)];
    CharacteristicKind.rawValue.getter();
    sub_1D1E678EC();

    v37 = &v6[*(v36 + 24)];
    v38 = *v37;
    v39 = *(v37 + 1);
    v40 = v37[16];
    v41 = v40 >> 6;
    v60 = v38;
    if (v40 >> 6)
    {
      v40 &= 0x3Fu;
      if (v41 == 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = 2;
      }
    }

    else
    {
      v42 = 0;
    }

    MEMORY[0x1D3892850](v42);
    if (v40 > 5)
    {
      if (v40 <= 8)
      {
        if (v40 == 6)
        {
          MEMORY[0x1D3892850](7);
          sub_1D1E6924C();
        }

        else if (v40 == 7)
        {
          MEMORY[0x1D3892850](8);
          if ((v60 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v52 = v60;
          }

          else
          {
            v52 = 0;
          }

          MEMORY[0x1D3892890](v52);
        }

        else
        {
          MEMORY[0x1D3892850](9);
          sub_1D1E678EC();
        }

        goto LABEL_66;
      }

      if (v40 == 9)
      {
        v53 = 10;
LABEL_60:
        MEMORY[0x1D3892850](v53);
        sub_1D1E668CC();
      }

      else
      {
        if (v40 == 10)
        {
          v53 = 11;
          goto LABEL_60;
        }

        MEMORY[0x1D3892850](0);
      }

LABEL_66:
      v16 = v64;
      goto LABEL_67;
    }

    if (v40 <= 2)
    {
      v16 = v64;
      if (v40)
      {
        if (v40 == 1)
        {
          MEMORY[0x1D3892850](2);
          sub_1D1E6922C();
        }

        else
        {
          MEMORY[0x1D3892850](3);
          sub_1D1E6923C();
        }
      }

      else
      {
        MEMORY[0x1D3892850](1);
        sub_1D1E6922C();
      }

      goto LABEL_67;
    }

    v16 = v64;
    if (v40 == 3)
    {
      v54 = 4;
LABEL_64:
      MEMORY[0x1D3892850](v54);
      sub_1D1E6924C();
      goto LABEL_67;
    }

    if (v40 != 4)
    {
      v54 = 6;
      goto LABEL_64;
    }

    MEMORY[0x1D3892850](5);
    MEMORY[0x1D3892890](v60);
LABEL_67:
    sub_1D1771C5C(v6, type metadata accessor for Event.CharacteristicEvent);
LABEL_6:
    v24 &= v24 - 1;
    v32 = sub_1D1E6926C();
    result = sub_1D1771C5C(v16, type metadata accessor for Event);
    v27 = v32 ^ v65;
  }

  while (1)
  {
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v33 >= v25)
    {

      return MEMORY[0x1D3892850](v27);
    }

    v24 = *(v21 + 8 * v33);
    ++v28;
    if (v24)
    {
      v65 = v27;
      v28 = v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D176EF68(__int128 *a1, uint64_t a2)
{
  v20 = a1[2];
  v21 = a1[3];
  v22 = *(a1 + 8);
  v18 = *a1;
  v19 = a1[1];
  sub_1D1E6926C();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1771944(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1E681BC();
    a2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_1D1E6877C())
    {
LABEL_20:
      sub_1D1716918();
      MEMORY[0x1D3892850](v10);
      return;
    }

    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_1D1E684EC();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D176F198(__int128 *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for StaticZone();
  v49 = *(v50 - 8);
  v9 = *(v49 + 64);
  v10 = MEMORY[0x1EEE9AC00](v50);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42 - v13;
  v14 = a1[3];
  v57 = a1[2];
  v58 = v14;
  v59 = *(a1 + 8);
  v16 = *a1;
  v15 = a1[1];
  v42 = a1;
  v55 = v16;
  v56 = v15;
  v46 = sub_1D1E6926C();
  v17 = a2 + 56;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 56);
  v21 = (v18 + 63) >> 6;
  v43 = v5;
  v22 = (v5 + 8);
  v51 = a2;

  v24 = v5 + 16;
  v25 = 0;
  v26 = 0;
  v45 = v17;
  v44 = v21;
  v48 = v12;
  while (v20)
  {
    v53 = v25;
    v29 = v24;
LABEL_11:
    v52 = v20;
    v31 = v47;
    sub_1D1771BF4(*(v51 + 48) + *(v49 + 72) * (__clz(__rbit64(v20)) | (v26 << 6)), v47, type metadata accessor for StaticZone);
    sub_1D1771B6C(v31, v12, type metadata accessor for StaticZone);
    sub_1D1E6920C();
    v54 = sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    v32 = v50;
    v33 = &v12[*(v50 + 20)];
    v34 = *v33;
    v35 = *(v33 + 1);
    sub_1D1E678EC();
    v36 = *&v12[*(v32 + 24)];
    MEMORY[0x1D3892850](*(v36 + 16));
    v37 = *(v36 + 16);
    v38 = v29;
    if (v37)
    {
      v39 = v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v40 = *(v43 + 72);
      v41 = *(v43 + 16);
      do
      {
        v41(v8, v39, v4);
        sub_1D1E676EC();
        (*v22)(v8, v4);
        v39 += v40;
        --v37;
      }

      while (v37);
    }

    v27 = v52;
    v28 = sub_1D1E6926C();
    v12 = v48;
    result = sub_1D1771C5C(v48, type metadata accessor for StaticZone);
    v25 = v28 ^ v53;
    v17 = v45;
    v21 = v44;
    v24 = v38;
    v20 = (v27 - 1) & v27;
  }

  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v21)
    {

      return MEMORY[0x1D3892850](v25);
    }

    v20 = *(v17 + 8 * v30);
    ++v26;
    if (v20)
    {
      v53 = v25;
      v29 = v24;
      v26 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176F5DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActionCommand(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v8);
  if (v8)
  {
    v10 = v3[6];
    v18 = v3[5];
    v11 = &v7[v3[7]];
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v12, v7, type metadata accessor for ActionCommand);
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      MEMORY[0x1D3892890](*&v7[v18]);
      v14 = *&v7[v10];
      sub_1D1E6923C();
      v15 = *(v11 + 4);
      __swift_project_boxed_opaque_existential_1(v11, *(v11 + 3));
      v16 = *(v15 + 8);
      sub_1D1E676EC();
      result = sub_1D1771C5C(v7, type metadata accessor for ActionCommand);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D176F7B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 52);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 3);
      v8 = *(v5 - 8);
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = *(v5 - 16);
      sub_1D1E6924C();
      sub_1D1E6922C();
      if (v8 == 1)
      {
        sub_1D1E6922C();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E6924C();
        if (!v10)
        {
LABEL_9:
          sub_1D1E6922C();
          result = sub_1D1E6924C();
          goto LABEL_4;
        }
      }

      result = sub_1D1E6922C();
LABEL_4:
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D176F87C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1D3892890](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D176F8E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StaticTimer();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v8);
  if (v8)
  {
    v10 = v3[5];
    v24 = v3[6];
    v25 = v10;
    v11 = v3[8];
    v12 = (v7 + v3[7]);
    v13 = v3[10];
    v22 = v3[9];
    v23 = v11;
    v21[1] = v13;
    v14 = v3[11];
    v15 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v15, v7, type metadata accessor for StaticTimer);
      v19 = *v7;
      if (*v7 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x1D3892890](*&v19);
      sub_1D1E669FC();
      sub_1D1771994(&qword_1EC642A50, MEMORY[0x1E6969530]);
      sub_1D1E676EC();
      v20 = *(v7 + v24);
      if (v20 == 0.0)
      {
        v20 = 0.0;
      }

      MEMORY[0x1D3892890](*&v20);
      if (v12[1])
      {
        v17 = *v12;
        sub_1D1E6922C();
        sub_1D1E678EC();
      }

      else
      {
        sub_1D1E6922C();
      }

      MEMORY[0x1D3892850](*(v7 + v23));
      v18 = *(v7 + v22);
      sub_1D1E6922C();
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      result = sub_1D1771C5C(v7, type metadata accessor for StaticTimer);
      v15 += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D176FB98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StaticAlarm();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v8);
  if (v8)
  {
    v10 = 0;
    v11 = *(v3 + 36);
    v21[0] = *(v3 + 40);
    v21[1] = v11;
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v12 + v13 * v10, v7, type metadata accessor for StaticAlarm);
      MEMORY[0x1D3892850](*v7);
      MEMORY[0x1D3892850](*(v7 + 1));
      if (*(v7 + 3))
      {
        v15 = *(v7 + 2);
        sub_1D1E6922C();
        sub_1D1E678EC();
      }

      else
      {
        sub_1D1E6922C();
      }

      v16 = *(v7 + 4);
      v17 = *(v7 + 10);
      MEMORY[0x1D3892850](*(v16 + 16));
      v18 = *(v16 + 16);
      if (v18)
      {
        v19 = (v16 + 32);
        do
        {
          v20 = *v19++;
          MEMORY[0x1D3892850](v20);
          --v18;
        }

        while (v18);
      }

      sub_1D1E6924C();
      v14 = v7[44];
      ++v10;
      sub_1D1E6922C();
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      result = sub_1D1771C5C(v7, type metadata accessor for StaticAlarm);
    }

    while (v10 != v8);
  }

  return result;
}

uint64_t sub_1D176FDE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = *(v3 + 24);
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v12, v7, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      sub_1D1E662EC();
      sub_1D1771994(&qword_1EC643040, MEMORY[0x1E6968278]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      MEMORY[0x1D3892850](*&v7[v11]);
      result = sub_1D1771C5C(v7, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D176FF94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v8);
  if (v8)
  {
    v10 = *(v3 + 24);
    v11 = &v7[*(v3 + 20)];
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v12, v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      v14 = *v11;
      v15 = *(v11 + 1);
      sub_1D1E678EC();
      sub_1D1E676EC();
      result = sub_1D1771C5C(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D1770174(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v5);
  if (v5)
  {
    v7 = (a2 + 32);
    do
    {
      v8 = *v7++;
      a3(result);
      sub_1D1E678EC();

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D1770208(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 49);
    do
    {
      v6 = *(v5 - 17);
      v7 = *(v5 - 9);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (v7 >> 60 == 15)
      {
        sub_1D1E6922C();
        if (v8 != 9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1771B38(v6, v7);
        sub_1D1E668CC();
        if (v8 != 9)
        {
LABEL_8:
          sub_1D1E6922C();
          v10 = byte_1D1E711D4[v8];
        }
      }

      sub_1D1E6922C();
      sub_1D1E6922C();
      result = sub_1D1716AA4(v6, v7);
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D17702F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 + 1);
      v9 = *(v5 + 2);
      v10 = v5[24];
      v12 = *(v5 + 4);
      v11 = *(v5 + 5);
      MEMORY[0x1D3892890](*(v5 - 2));
      MEMORY[0x1D3892890](v6);
      sub_1D1E6922C();
      sub_1D1E6922C();
      sub_1D1771B38(v8, v9);

      if (v9 >> 60 != 15)
      {
        sub_1D1E668CC();
      }

      sub_1D1E6922C();
      sub_1D1E6922C();
      if (v11)
      {
        sub_1D1E678EC();
      }

      sub_1D1716AA4(v8, v9);

      v5 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D1770448(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 16);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v7);
      result = sub_1D1E6922C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D17704D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (*(v5 - 6) == 1)
      {
        sub_1D1E6922C();
        if (v7)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = *(v5 - 4);
        sub_1D1E6922C();
        sub_1D1E6923C();
        if (v7)
        {
LABEL_6:
          sub_1D1E6922C();
          if ((v9 & 1) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_3;
        }
      }

      sub_1D1E6922C();
      sub_1D1E6923C();
      if ((v9 & 1) == 0)
      {
LABEL_10:
        sub_1D1E6922C();
      }

LABEL_3:
      result = sub_1D1E6922C();
      v5 += 10;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D17705AC(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v4);
  if (v4)
  {
    v6 = (a2 + 56);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      MEMORY[0x1D3892850](*(v6 - 3));

      sub_1D1E678EC();
      sub_1D176D34C(a1, v9);

      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D1770648(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 6) == 1)
      {
        sub_1D1E6922C();
        if (v6 == 30)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v9 = *(v5 - 4);
        sub_1D1E6922C();
        sub_1D1E6923C();
        if (v6 == 30)
        {
LABEL_7:
          sub_1D1E6922C();
          if (!v8)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_1D1E6922C();
      v10 = dword_1D1E711E0[v6];
      sub_1D1E6924C();
      if (!v8)
      {
LABEL_11:
        sub_1D1E6922C();
        result = sub_1D1E6924C();
        goto LABEL_4;
      }

LABEL_3:
      result = sub_1D1E6922C();
LABEL_4:
      v5 += 12;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D1770734(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for StaticUserActionPrediction();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v16);
  if (v16)
  {
    v18 = v11[5];
    v28 = v11[6];
    v29 = v18;
    v19 = v11[7];
    v20 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v21 = v24;
    v22 = (v24 + 48);
    v26 = *(v12 + 72);
    v27 = v19;
    v24 += 8;
    v25 = (v21 + 32);
    do
    {
      sub_1D1771BF4(v20, v15, type metadata accessor for StaticUserActionPrediction);
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      v23 = *&v15[v29];
      if (v23 == 0.0)
      {
        v23 = 0.0;
      }

      MEMORY[0x1D3892890](*&v23);
      sub_1D1741C08(&v15[v28], v10, &qword_1EC642590, qword_1D1E71260);
      if ((*v22)(v10, 1, v3) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        (*v25)(v6, v10, v3);
        sub_1D1E6922C();
        sub_1D1E676EC();
        (*v24)(v6, v3);
      }

      MEMORY[0x1D3892850](v15[v27]);
      result = sub_1D1771C5C(v15, type metadata accessor for StaticUserActionPrediction);
      v20 += v26;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_1D1770A8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1D1E6873C();
    MEMORY[0x1D3892850](v8);
    v3 = sub_1D1E6873C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1D3892850](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1D3891EF0](i, a2);
      sub_1D1E6850C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1D1E6850C();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1D1770B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 10);
      v7 = *(v5 - 9);
      v8 = *(v5 - 32);
      v10 = *(v5 - 3);
      v9 = *(v5 - 2);
      v11 = *(v5 - 6);
      v12 = *(v5 - 5);
      v13 = *(v5 - 4);
      v14 = *(v5 - 4);
      v15 = *(v5 - 3);
      v16 = *(v5 - 1);
      v17 = *(v5 - 2);
      v18 = *v5;
      sub_1D1E6924C();
      if (v8 == 1)
      {
        sub_1D1E6922C();
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E6924C();
        if (!v9)
        {
LABEL_6:
          sub_1D1E6922C();
          if (v11)
          {
            goto LABEL_11;
          }

          goto LABEL_7;
        }
      }

      sub_1D1E6922C();

      sub_1D1E678EC();
      if (v11)
      {
LABEL_11:
        sub_1D1E6922C();
        if (v13)
        {
          goto LABEL_12;
        }

LABEL_8:
        sub_1D1E6922C();
        goto LABEL_12;
      }

LABEL_7:
      sub_1D1E6922C();
      sub_1D1E6923C();
      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      sub_1D1E6922C();
      if ((v17 & 1) == 0)
      {
        sub_1D1E6922C();
      }

      sub_1D1E6922C();
      if ((v18 & 1) == 0)
      {
        sub_1D1E6922C();
      }

      sub_1D1E6922C();

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D1770D00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E6680C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SignificantEvent();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v16);
  if (v16)
  {
    v18 = v11[5];
    v34 = v11[6];
    v35 = v18;
    v19 = v11[7];
    v32 = v11[8];
    v33 = v19;
    v20 = v11[9];
    v30 = &v15[v11[10]];
    v31 = v20;
    v21 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v22 = (v4 + 48);
    v26 = (v4 + 8);
    v27 = (v4 + 32);
    v29 = *(v12 + 72);
    do
    {
      sub_1D1771BF4(v21, v15, type metadata accessor for SignificantEvent);
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      MEMORY[0x1D3892850](v15[v34]);
      sub_1D1E669FC();
      sub_1D1771994(&qword_1EC642A50, MEMORY[0x1E6969530]);
      sub_1D1E676EC();
      v23 = v15[v32];
      sub_1D1E6922C();
      if (v23 != 4)
      {
        MEMORY[0x1D3892850](v23);
      }

      sub_1D1741C08(&v15[v31], v10, &qword_1EC642EA8, &qword_1D1E73C60);
      if ((*v22)(v10, 1, v3) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v24 = v28;
        (*v27)(v28, v10, v3);
        sub_1D1E6922C();
        sub_1D1771994(&qword_1EC643068, MEMORY[0x1E6968FB0]);
        sub_1D1E676EC();
        (*v26)(v24, v3);
      }

      if (*(v30 + 1) >> 60 == 15)
      {
        sub_1D1E6922C();
      }

      else
      {
        v25 = *v30;
        sub_1D1E6922C();
        sub_1D1E668CC();
      }

      result = sub_1D1771C5C(v15, type metadata accessor for SignificantEvent);
      v21 += v29;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_1D1771168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorPickerFavorite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v9);
  if (v9)
  {
    v11 = *(v4 + 24);
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_1D1771BF4(v12, v8, type metadata accessor for ColorPickerFavorite);
      v14 = *(v8 + 2);
      v15 = v8[24];
      v17 = *v8;
      v18 = v14;
      v19 = v15;
      LightbulbColor.hash(into:)(a1);
      v16 = *(v8 + 4);
      if (v16 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x1D3892890](*&v16);
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      result = sub_1D1771C5C(v8, type metadata accessor for ColorPickerFavorite);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t _s13HomeDataModel6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Action.NaturalLightAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Action.CharacteristicAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Action();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643088, &qword_1D1E71158);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v50 - v26;
  v28 = &v50 + *(v25 + 56) - v26;
  sub_1D1771BF4(a1, &v50 - v26, type metadata accessor for Action);
  sub_1D1771BF4(a2, v28, type metadata accessor for Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D1771BF4(v27, v17, type metadata accessor for Action);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D1771C5C(v17, type metadata accessor for Action.NaturalLightAction);
        goto LABEL_16;
      }

      v30 = v28;
      v31 = v51;
      sub_1D1771B6C(v30, v51, type metadata accessor for Action.NaturalLightAction);
      v32 = static Action.NaturalLightAction.== infix(_:_:)(v17, v31);
      v33 = type metadata accessor for Action.NaturalLightAction;
      sub_1D1771C5C(v31, type metadata accessor for Action.NaturalLightAction);
      v34 = v17;
      goto LABEL_19;
    }

    sub_1D1771BF4(v27, v14, type metadata accessor for Action);
    v44 = *(v14 + 1);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v45 = *(v28 + 1);
      if (*v14 == *v28)
      {
        v49 = sub_1D17792F4(v44, *(v28 + 1));

        if (v49)
        {
          sub_1D1771C5C(v27, type metadata accessor for Action);
          v32 = 1;
          return v32 & 1;
        }
      }

      else
      {
      }

      sub_1D1771C5C(v27, type metadata accessor for Action);
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D1771BF4(v27, v20, type metadata accessor for Action);
    v35 = *v20;
    v36 = *(v20 + 4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v20[24];
      v38 = *(v20 + 2);
      v39 = v20[8];
      v40 = *v28;
      v41 = v28[8];
      v42 = *(v28 + 2);
      v43 = v28[24];
      v56 = *(v28 + 4);
      v57 = v35;
      v58 = v39;
      v59 = v38;
      v60 = v37;
      v61 = v36;
      v52 = v40;
      v53 = v41;
      v54 = v42;
      v55 = v43;
      v32 = static Action.MediaPlaybackAction.== infix(_:_:)(&v57, &v52);

LABEL_20:
      sub_1D1771C5C(v27, type metadata accessor for Action);
      return v32 & 1;
    }

    goto LABEL_15;
  }

  sub_1D1771BF4(v27, v22, type metadata accessor for Action);
  if (!swift_getEnumCaseMultiPayload())
  {
    v46 = v28;
    v47 = v50;
    sub_1D1771B6C(v46, v50, type metadata accessor for Action.CharacteristicAction);
    v32 = static Action.CharacteristicAction.== infix(_:_:)(v22, v47);
    v33 = type metadata accessor for Action.CharacteristicAction;
    sub_1D1771C5C(v47, type metadata accessor for Action.CharacteristicAction);
    v34 = v22;
LABEL_19:
    sub_1D1771C5C(v34, v33);
    goto LABEL_20;
  }

  sub_1D1771C5C(v22, type metadata accessor for Action.CharacteristicAction);
LABEL_16:
  sub_1D1741A30(v27, &qword_1EC643088, &qword_1D1E71158);
LABEL_17:
  v32 = 0;
  return v32 & 1;
}

uint64_t type metadata accessor for Action()
{
  result = qword_1EC642FD8;
  if (!qword_1EC642FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D17718F0()
{
  result = qword_1EC642FB0;
  if (!qword_1EC642FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642FB0);
  }

  return result;
}

uint64_t sub_1D1771944(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D1741B10(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1771994(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1771A28()
{
  result = qword_1EC642FD0;
  if (!qword_1EC642FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642FD0);
  }

  return result;
}

uint64_t sub_1D1771A7C()
{
  result = type metadata accessor for Action.CharacteristicAction(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Action.NaturalLightAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1771B10(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1D1771B24(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1D1771B38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D1741854(a1, a2);
  }

  return a1;
}

uint64_t sub_1D1771B4C(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D1771B5C(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D1771B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1771BD4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    sub_1D1771BE4(a2);
  }
}

unint64_t sub_1D1771BE4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1D1771BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1771C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1771CC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 28;
  }

  else
  {
    result = sub_1D179084C(result, *(a1 + 36), a1, &v7);
    v6 = v7;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1D1771DBC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = -1 << *(a1 + 32);
  v11 = sub_1D1E6869C();
  v12 = 1;
  if (v11 != 1 << *(a1 + 32))
  {
    sub_1D1777624(v11, *(a1 + 36), a1, a2, a3, a5);
    v12 = 0;
  }

  v13 = a4(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a5, v12, 1, v13);
}

unint64_t sub_1D1771ED8()
{
  v1 = v0[1];
  v12 = *v0;
  v13 = v1;
  v14 = *(v0 + 4);
  result = sub_1D1777C94();
  if (v12 >> 62)
  {
    v3 = result;
    v4 = sub_1D1E6873C();
    result = v3;
    if (v3 == v4)
    {
      return 0;
    }
  }

  else if (result == *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D3891EF0]();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(v12 + 8 * result + 32);
LABEL_9:
  v6 = v5;
  v8 = *(v0 + 5);
  v7 = *(v0 + 6);
  v10 = v5;
  (*(&v12 + 1))(&v11, &v10);

  v9 = v11;
  v10 = v11;
  v8(&v11, &v10);

  return v11;
}

uint64_t sub_1D1771FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = sub_1D1E6869C();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v15 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = sub_1D18D3B20(v7, v9, *(a1 + 36), 0, a1);
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 32))(a2, v7, v13);
    *(a2 + *(v4 + 48)) = v12;
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1D1772210@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = -1 << *(a1 + 32);
  v9 = sub_1D1E6869C();
  v10 = 1;
  if (v9 != 1 << *(a1 + 32))
  {
    a2(v9, *(a1 + 36), 0, a1);
    v10 = 0;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_1D17722E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  if (result == 1 << *(a1 + 32))
  {
    v6 = -16;
  }

  else
  {
    result = sub_1D179084C(result, *(a1 + 36), a1, &v7);
    v6 = v7;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1D1772378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = sub_1D18D3E20(v13, result, *(a1 + 36), 0, a1);
    v7 = v13[0];
    v8 = v13[1];
    v9 = v13[2];
    v10 = v14;
    v12 = v11;
    sub_1D17418FC(v7, v8, v9, v10);
    v6 = v12;
    sub_1D17418FC(v7, v8, v9, v10);

    sub_1D1757A60(v7, v8, v9, v10);
    result = sub_1D1757A60(v7, v8, v9, v10);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_1D1772494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = sub_1D18D3D7C(v12, result, *(a1 + 36), 0, a1);
    v7 = v12[0];
    v8 = v12[1];
    v9 = v13;
    v11 = v10;
    sub_1D1741830(v7, v8, v9);
    v6 = v11;
    sub_1D1741830(v7, v8, v9);

    sub_1D1778940(v7, v8, v9);
    result = sub_1D1778940(v7, v8, v9);
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return result;
}

void *sub_1D1772598(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1D1E6869C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1D17784B8(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

uint64_t sub_1D1772608(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1D1E6869C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1D1790F38(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_1D177269C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1D1E686DC();
    v7 = v6;
    v8 = sub_1D1E6879C();
    v10 = v9;
    v11 = MEMORY[0x1D3891D40](v5, v7, v8, v9);
    sub_1D1716920(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1D1716920(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v5 = sub_1D1E6869C();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v14 = a2(v5, v7, v4 != 0, a1);
  sub_1D1716920(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_1D17727C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = sub_1D1E6869C();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v15 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    sub_1D18D3C80(v7, &v7[v12], v9, *(a1 + 36), 0, a1);
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 32))(a2, v7, v13);
    sub_1D17788D8(&v7[v12], a2 + *(v4 + 48), type metadata accessor for StaticService);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

void Action.CharacteristicAction.init(action:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v42 - v7;
  v8 = sub_1D1E66A7C();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 characteristic];
  v13 = [a1 targetValue];
  v51[3] = swift_getObjectType();
  v51[0] = v13;
  static CharacteristicKind.Value.typedValue(for:value:)(v12, v51, &v52);
  sub_1D1741A30(v51, &qword_1EC649700, &qword_1D1E6E910);
  v14 = v54;
  if (v54 == 255)
  {
    type metadata accessor for Action.CharacteristicAction.Error(0);
    sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error);
    swift_allocError();
    v22 = v21;
    *v21 = [a1 targetValue];
    v22[1] = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v49 = a2;
    v16 = v52;
    v15 = v53;
    sub_1D1778244(v52, v53, v54);
    v17 = [v12 service];
    if (v17)
    {
      v18 = v17;
      sub_1D1778270(v16, v15, v14);
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      v47 = v15;
      v48 = v2;
      v45 = byte_1EE07B288;
      v46 = v16;
      if (byte_1EE07B288 == 1)
      {
        v19 = [v18 name];
        v43 = sub_1D1E6781C();
        v44 = v20;
      }

      else
      {
        v43 = 0;
        v44 = 0;
      }

      v25 = [v18 uniqueIdentifier];
      sub_1D1E66A5C();

      v26 = [v12 characteristicType];
      v27 = sub_1D1E6781C();
      v29 = v28;

      v30._countAndFlagsBits = v27;
      v30._object = v29;
      CharacteristicKind.init(rawValue:)(v30);
      if (LOBYTE(v51[0]) == 174)
      {
        v31 = 0;
      }

      else
      {
        v31 = v51[0];
      }

      v32 = [a1 uniqueIdentifier];
      v33 = v55;
      sub_1D1E66A5C();

      v34 = v50;
      (*(v50 + 56))(v33, 0, 1, v8);
      v35 = v49;
      (*(v34 + 16))(v49, v11, v8);
      v36 = type metadata accessor for Action.CharacteristicAction(0);
      *(v35 + v36[5]) = v31;
      v37 = v35 + v36[6];
      v38 = v47;
      *v37 = v46;
      *(v37 + 8) = v38;
      *(v37 + 16) = v14;
      sub_1D1778308(v33, v35 + v36[7]);
      (*(v34 + 8))(v11, v8);
      if (v45)
      {
        v40 = v43;
        v39 = v44;
      }

      else
      {

        v40 = 0;
        v39 = 0;
      }

      v41 = (v35 + v36[8]);
      *v41 = v40;
      v41[1] = v39;
    }

    else
    {
      type metadata accessor for Action.CharacteristicAction.Error(0);
      sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error);
      swift_allocError();
      *v23 = v12;
      v23[1] = a1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v24 = v12;
      sub_1D1778270(v16, v15, v14);
      sub_1D1778270(v16, v15, v14);
    }
  }
}

uint64_t Action.CharacteristicAction.createAction(in:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v13 = sub_1D1E67C1C();

  v42 = v11;
  v43 = v5;
  v14 = *(v5 + 16);
  v14(v11, v2, v4);
  v47 = v9;
  v44 = v4;
  v45 = v2;
  v15 = v4;
  v16 = v13;
  v14(v9, v2, v15);
  v46 = v13 >> 62;
  if (v13 >> 62)
  {
LABEL_29:
    v48 = v16 & 0xFFFFFFFFFFFFFF8;
    v17 = sub_1D1E6873C();
  }

  else
  {
    v48 = v13 & 0xFFFFFFFFFFFFFF8;
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v16 & 0xC000000000000001;
  v41 = v16 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v20 = v16;
      v21 = MEMORY[0x1D3891EF0](v18, v16);
    }

    else
    {
      if (v18 >= *(v48 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = v16;
      v21 = *(v16 + 8 * v18 + 32);
    }

    v22 = v21;
    v23 = [v21 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v2 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v24);
    *(&v41 - 2) = v47;
    v14 = sub_1D174A6C4(sub_1D1778378, (&v41 - 4), v2);

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
      goto LABEL_28;
    }
  }

  if (!v46)
  {
    if (v17 != *(v48 + 16))
    {
      goto LABEL_16;
    }

LABEL_23:
    v37 = *(v43 + 8);
    v38 = v44;
    v37(v42, v44);

    v37(v47, v38);
    v33 = v45;
    goto LABEL_25;
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
    if (v17 >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v26 = *(v41 + 8 * v17);
  }

  v27 = v26;
  v28 = [v26 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v42;
  *(&v41 - 2) = v42;
  v32 = sub_1D174A6C4(sub_1D177896C, (&v41 - 4), v29);

  v2 = v44;
  v14 = *(v43 + 8);
  (v14)(v31, v44);

  v33 = v45;
  if (v32)
  {

    (v14)(v47, v2);
    v49 = *(v33 + *(type metadata accessor for Action.CharacteristicAction(0) + 20));
    v34 = HMService.subscript.getter(&v49);
    if (v34)
    {
      v35 = v34;
      v36 = Action.CharacteristicAction.createAction(characteristic:)(v34);

      return v36;
    }

LABEL_25:
    v36 = type metadata accessor for Action.CharacteristicAction.Error(0);
    sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error);
    swift_allocError();
    sub_1D1778450(v33, v39, type metadata accessor for Action.CharacteristicAction);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v36;
  }

LABEL_32:
  result = (v14)(v47, v2);
  __break(1u);
  return result;
}

uint64_t Action.CharacteristicAction.debugDescription.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EB89D0);
  v1 = type metadata accessor for Action.CharacteristicAction(0);
  v10 = *(v0 + v1[5]);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](544108320, 0xE400000000000000);
  v2 = (v0 + v1[8]);
  if (*(v2 + 1))
  {
    v11 = *v2;

    MEMORY[0x1D3890F70](10272, 0xE200000000000000);
    sub_1D1E66A7C();
    sub_1D1778398(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v3 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v3);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    v5 = *(&v11 + 1);
    v4 = v11;
  }

  else
  {
    sub_1D1E66A7C();
    sub_1D1778398(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v4 = sub_1D1E68FAC();
    v5 = v6;
  }

  MEMORY[0x1D3890F70](v4, v5);

  MEMORY[0x1D3890F70](544175136, 0xE400000000000000);
  v7 = (v0 + v1[6]);
  v12 = *v7;
  v13 = *(v7 + 16);
  v8 = CharacteristicKind.Value.description.getter();
  MEMORY[0x1D3890F70](v8);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

uint64_t Action.CharacteristicAction.serviceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Action.CharacteristicAction.characteristicKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Action.CharacteristicAction(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Action.CharacteristicAction.targetValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Action.CharacteristicAction(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1D1778244(v4, v5, v6);
}

uint64_t Action.CharacteristicAction.targetValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for Action.CharacteristicAction(0) + 24);
  result = sub_1D1778284(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t Action.CharacteristicAction.originalActionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Action.CharacteristicAction(0) + 28);

  return sub_1D17783E0(v3, a1);
}

uint64_t Action.CharacteristicAction.init(serviceID:characteristicKind:targetValue:originalActionID:serviceName:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a3 + 16);
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a7, a1, v14);
  v16 = type metadata accessor for Action.CharacteristicAction(0);
  *(a7 + v16[5]) = v10;
  v17 = a7 + v16[6];
  *v17 = v12;
  *(v17 + 8) = v11;
  *(v17 + 16) = v13;
  sub_1D17783E0(a4, a7 + v16[7]);
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  v18 = byte_1EE07B288;
  sub_1D1741A30(a4, &qword_1EC642590, qword_1D1E71260);
  result = (*(v15 + 8))(a1, v14);
  if (v18)
  {
    v21 = a5;
    v20 = a6;
  }

  else
  {

    v21 = 0;
    v20 = 0;
  }

  v22 = (a7 + v16[8]);
  *v22 = v21;
  v22[1] = v20;
  return result;
}

unint64_t Action.CharacteristicAction.Error.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Action.CharacteristicAction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Action.CharacteristicAction.Error(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1778450(v1, v9, type metadata accessor for Action.CharacteristicAction.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v17 = *v9;
    v16 = *(v9 + 1);
    v33 = 0;
    v34 = 0xE000000000000000;
    if (EnumCaseMultiPayload)
    {
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD000000000000033, 0x80000001D1EB8AE0);
      v24 = [v17 description];
      v25 = sub_1D1E6781C();
      v27 = v26;

      MEMORY[0x1D3890F70](v25, v27);

      MEMORY[0x1D3890F70](544106784, 0xE400000000000000);
      v28 = [v16 description];
      v29 = sub_1D1E6781C();
      v31 = v30;

      MEMORY[0x1D3890F70](v29, v31);
    }

    else
    {
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD00000000000004ALL, 0x80000001D1EB8B20);
      v36 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643098, &qword_1D1E71278);
      sub_1D1E68ABC();
      MEMORY[0x1D3890F70](544106784, 0xE400000000000000);
      v18 = [v16 description];
      v19 = sub_1D1E6781C();
      v21 = v20;

      MEMORY[0x1D3890F70](v19, v21);
      swift_unknownObjectRelease();
    }

    return v33;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1D17788D8(v9, v5, type metadata accessor for Action.CharacteristicAction);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000021, 0x80000001D1EB8AB0);
    sub_1D1E66A7C();
    sub_1D1778398(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v22 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v22);

    MEMORY[0x1D3890F70](0x646E696B20666F20, 0xE900000000000020);
    LOBYTE(v36) = v5[*(v2 + 20)];
    sub_1D1E68ABC();
    v23 = v33;
    sub_1D1778508(v5, type metadata accessor for Action.CharacteristicAction);
    return v23;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    v13 = v9[16];
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1D1E6884C();
    v36 = v33;
    v37 = v34;
    MEMORY[0x1D3890F70](0xD00000000000002ELL, 0x80000001D1EB8A40);
    v33 = v11;
    v34 = v12;
    v35 = v13;
    v14 = CharacteristicKind.Value.description.getter();
    MEMORY[0x1D3890F70](v14);

    MEMORY[0x1D3890F70](0xD000000000000031, 0x80000001D1EB8A70);
    sub_1D1778284(v11, v12, v13);
    return v36;
  }

  else
  {
    return 0xD000000000000046;
  }
}

uint64_t Action.CharacteristicAction.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  sub_1D1778398(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for Action.CharacteristicAction(0);
  LOBYTE(v16) = *(v0 + v10[5]);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v11 = (v0 + v10[6]);
  v12 = *(v11 + 16);
  v16 = *v11;
  v17 = v12;
  CharacteristicKind.Value.hash(into:)();
  sub_1D17783E0(v0 + v10[7], v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  v13 = (v0 + v10[8]);
  if (!v13[1])
  {
    return sub_1D1E6922C();
  }

  v14 = *v13;
  sub_1D1E6922C();
  return sub_1D1E678EC();
}

uint64_t Action.CharacteristicAction.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  sub_1D1E6920C();
  sub_1D1778398(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for Action.CharacteristicAction(0);
  LOBYTE(v16) = *(v0 + v10[5]);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v11 = (v0 + v10[6]);
  v12 = *(v11 + 16);
  v16 = *v11;
  v17 = v12;
  CharacteristicKind.Value.hash(into:)();
  sub_1D17783E0(v0 + v10[7], v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  v13 = (v0 + v10[8]);
  if (v13[1])
  {
    v14 = *v13;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D177436C(uint64_t a1, int *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  sub_1D1E6920C();
  sub_1D1778398(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  LOBYTE(v18) = *(v2 + a2[5]);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v13 = (v2 + a2[6]);
  v14 = *(v13 + 16);
  v18 = *v13;
  v19 = v14;
  CharacteristicKind.Value.hash(into:)();
  sub_1D17783E0(v2 + a2[7], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  v15 = (v2 + a2[8]);
  if (v15[1])
  {
    v16 = *v15;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t Action.CharacteristicAction.staticCharacteristic.getter(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for StateSnapshot(0);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for StaticService(0);
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1774770, 0, 0);
}

uint64_t sub_1D1774770()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[16] = v1;
  if (v1)
  {
    v0[17] = v1[3];
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1774868;
    v4 = 0;
  }

  else
  {
    v0[18] = sub_1D1E67E1C();
    v0[19] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1774C24;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1774868()
{
  v1 = *(v0 + 136);
  HomeState.AllHomesModel.currentStateSnapshot.getter(*(v0 + 88));

  return MEMORY[0x1EEE6DFA0](sub_1D17748D4, 0, 0);
}

uint64_t sub_1D17748D4()
{
  v1 = v0[11];
  v2 = v0[8];
  if ((*(v0[9] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[16];

    sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
LABEL_9:
    v21 = v0[6];
    v22 = type metadata accessor for StaticCharacteristic();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    goto LABEL_10;
  }

  v4 = *(v1 + *(v2 + 60));

  sub_1D1778508(v1, type metadata accessor for StateSnapshot);
  if (!*(v4 + 16) || (v5 = sub_1D1742188(v0[7]), (v6 & 1) == 0))
  {
    v20 = v0[16];

    goto LABEL_9;
  }

  v7 = v0[15];
  v8 = v0[12];
  sub_1D1778450(*(v4 + 56) + *(v0[13] + 72) * v5, v7, type metadata accessor for StaticService);

  v9 = type metadata accessor for Action.CharacteristicAction(0);
  v10 = *(v7 + *(v8 + 128));
  if (*(v10 + 16))
  {
    v11 = *(v0[7] + *(v9 + 20));

    v12 = sub_1D171D140(v11);
    v13 = v0[16];
    v14 = v0[6];
    if (v15)
    {
      v16 = v12;
      v17 = *(v10 + 56);
      v18 = type metadata accessor for StaticCharacteristic();
      v19 = *(v18 - 8);
      sub_1D1778450(v17 + *(v19 + 72) * v16, v14, type metadata accessor for StaticCharacteristic);
      (*(v19 + 56))(v14, 0, 1, v18);
    }

    else
    {
      v32 = type metadata accessor for StaticCharacteristic();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
    }
  }

  else
  {
    v29 = v0[16];
    v30 = v0[6];
    v31 = type metadata accessor for StaticCharacteristic();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  }

  sub_1D1778508(v0[15], type metadata accessor for StaticService);
LABEL_10:
  v24 = v0[14];
  v23 = v0[15];
  v26 = v0[10];
  v25 = v0[11];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D1774C24()
{
  v1 = *(v0 + 152);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1774CBC, 0, 0);
}

uint64_t sub_1D1774CBC()
{
  v1 = *(v0 + 144);
  *(v0 + 160) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1774D48, v3, v2);
}

uint64_t sub_1D1774D48()
{
  v1 = *(v0 + 160);

  *(v0 + 168) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1774DBC, 0, 0);
}

uint64_t sub_1D1774DBC()
{
  v1 = *(v0 + 144);
  *(v0 + 176) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1774E48, v3, v2);
}

uint64_t sub_1D1774E48()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[10];

  swift_getKeyPath();
  v0[5] = v2;
  sub_1D1778398(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1778450(v2 + v4, v3, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1774F70, 0, 0);
}

uint64_t sub_1D1774F70()
{
  v1 = v0[10];
  v2 = *(v1 + *(v0[8] + 60));

  sub_1D1778508(v1, type metadata accessor for StateSnapshot);
  if (*(v2 + 16) && (v3 = sub_1D1742188(v0[7]), (v4 & 1) != 0))
  {
    v5 = v0[14];
    v6 = v0[12];
    sub_1D1778450(*(v2 + 56) + *(v0[13] + 72) * v3, v5, type metadata accessor for StaticService);

    v7 = type metadata accessor for Action.CharacteristicAction(0);
    v8 = *(v5 + *(v6 + 128));
    if (*(v8 + 16))
    {
      v9 = *(v0[7] + *(v7 + 20));

      v10 = sub_1D171D140(v9);
      v11 = v0[6];
      if (v12)
      {
        v13 = v10;
        v14 = *(v8 + 56);
        v15 = type metadata accessor for StaticCharacteristic();
        v16 = *(v15 - 8);
        sub_1D1778450(v14 + *(v16 + 72) * v13, v11, type metadata accessor for StaticCharacteristic);
        (*(v16 + 56))(v11, 0, 1, v15);
      }

      else
      {
        v21 = type metadata accessor for StaticCharacteristic();
        (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      }
    }

    else
    {
      v19 = v0[6];
      v20 = type metadata accessor for StaticCharacteristic();
      (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    }

    sub_1D1778508(v0[14], type metadata accessor for StaticService);
  }

  else
  {
    v17 = v0[6];

    v18 = type metadata accessor for StaticCharacteristic();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  v23 = v0[14];
  v22 = v0[15];
  v25 = v0[10];
  v24 = v0[11];

  v26 = v0[1];

  return v26();
}