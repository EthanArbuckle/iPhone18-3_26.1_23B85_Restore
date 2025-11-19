uint64_t Playlist.Entry.Reaction.LegacyModelPlaylistEntryReactionPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D5376AD4@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Playlist.Entry.Reaction.LegacyModelPlaylistEntryReactionPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D5376AE0@<X0>(unint64_t *a1@<X8>)
{
  result = Playlist.Entry.Reaction.LegacyModelPlaylistEntryReactionPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.Entry.Reaction.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976818];
  v3 = sub_1D5613158();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D5376B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5376FAC(&qword_1EC7EB810, type metadata accessor for Playlist.Entry.Reaction);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D5376C2C()
{
  sub_1D5376FAC(&qword_1EC7EB820, type metadata accessor for Playlist.Entry.Reaction);

  return sub_1D56132F8();
}

uint64_t sub_1D5376CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistEntryReactionPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5376D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D5376D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D5376DD4()
{
  result = qword_1EC7F4D60;
  if (!qword_1EC7F4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4D60);
  }

  return result;
}

unint64_t sub_1D5376E30()
{
  result = qword_1EC7F4D68;
  if (!qword_1EC7F4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4D68);
  }

  return result;
}

_BYTE *_s43LegacyModelPlaylistEntryReactionPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D5376FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5376FF8(uint64_t a1)
{
  v2 = sub_1D53770B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5377034(uint64_t a1)
{
  v2 = sub_1D53770B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D53770B4()
{
  result = qword_1EC7F4D90;
  if (!qword_1EC7F4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4D90);
  }

  return result;
}

uint64_t sub_1D5377188(uint64_t a1)
{
  v2 = sub_1D5377244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53771C4(uint64_t a1)
{
  v2 = sub_1D5377244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D5377244()
{
  result = qword_1EC7F4DA0;
  if (!qword_1EC7F4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4DA0);
  }

  return result;
}

uint64_t sub_1D53772B8(uint64_t a1)
{
  v2 = sub_1D5377374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53772F4(uint64_t a1)
{
  v2 = sub_1D5377374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D5377374()
{
  result = qword_1EC7F4DB0;
  if (!qword_1EC7F4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4DB0);
  }

  return result;
}

uint64_t sub_1D53773E8(uint64_t a1)
{
  v2 = sub_1D53775A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5377424(uint64_t a1)
{
  v2 = sub_1D53775A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D53774A4()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_108();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1D56163D8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D53775A0()
{
  result = qword_1EC7F4DC0;
  if (!qword_1EC7F4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4DC0);
  }

  return result;
}

void LegacyModelCodableMusicPinItem.id.getter()
{
  OUTLINED_FUNCTION_47();
  v5 = sub_1D5614A18();
  v6 = OUTLINED_FUNCTION_4(v5);
  v46 = v7;
  v47 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v45 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610588();
  v12 = OUTLINED_FUNCTION_4(v11);
  v43 = v13;
  v44 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v16 = sub_1D560D068();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v20 = sub_1D560F7A8();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v24 = sub_1D560F308();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_0();
  v28 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v29 = OUTLINED_FUNCTION_14(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v1, v0, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v42(v4, v0, v20);
      sub_1D560F6F8();
      OUTLINED_FUNCTION_44_10();
      v36 = v4;
      v37 = v20;
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_33_1();
      v40(v3, v0, v16);
      sub_1D560CFB8();
      OUTLINED_FUNCTION_44_10();
      v36 = v3;
      v37 = v16;
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_11_18();
      v41(v2, v0, v44);
      sub_1D56104A8();
      (*(v43 + 8))(v2, v44);
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v38 = OUTLINED_FUNCTION_159();
      v39(v38);
      sub_1D5614968();
      (*(v46 + 8))(v45, v47);
      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_33_1();
      v33 = OUTLINED_FUNCTION_159();
      v34(v33);
      sub_1D560F248();
      OUTLINED_FUNCTION_44_10();
      v36 = v1;
      v37 = v24;
LABEL_7:
      v35(v36, v37);
LABEL_8:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t type metadata accessor for LegacyModelCodableMusicPinItem()
{
  result = qword_1EC7F4E68;
  if (!qword_1EC7F4E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5377B14()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F4D70);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F4D70);
  v2 = *MEMORY[0x1E6976870];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static LegacyModelCodableMusicPinItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E94E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EC7F4D70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void static LegacyModelCodableMusicPinItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v101 = v3;
  v102 = v4;
  v5 = sub_1D5614A18();
  v6 = OUTLINED_FUNCTION_4(v5);
  v99 = v7;
  v100 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v90 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610588();
  v12 = OUTLINED_FUNCTION_4(v11);
  v97 = v13;
  v98 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v89 = v16;
  OUTLINED_FUNCTION_70_0();
  v17 = sub_1D560D068();
  v18 = OUTLINED_FUNCTION_4(v17);
  v95 = v19;
  v96 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v88 = v22;
  OUTLINED_FUNCTION_70_0();
  v23 = sub_1D560F7A8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v93 = v25;
  v94 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v87 = v28;
  OUTLINED_FUNCTION_70_0();
  v29 = sub_1D560F308();
  v30 = OUTLINED_FUNCTION_4(v29);
  v91 = v31;
  v92 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v34 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_0();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_48_36();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v87 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v87 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v87 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DC8, &unk_1D5658BE0);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_40_2();
  v56 = *(v55 + 56);
  sub_1D537F56C(v101, v0, type metadata accessor for LegacyModelCodableMusicPinItem);
  sub_1D537F56C(v102, v0 + v56, type metadata accessor for LegacyModelCodableMusicPinItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_205();
      sub_1D537F56C(v0, v48, v77);
      if (OUTLINED_FUNCTION_115_10() == 1)
      {
        v79 = v93;
        v78 = v94;
        OUTLINED_FUNCTION_40_3();
        v80 = v87;
        v81(v87, v0 + v56, v78);
        sub_1D560F6E8();
        v82 = *(v79 + 8);
        v82(v80, v78);
        v82(v48, v78);
        goto LABEL_20;
      }

      (*(v93 + 8))(v48, v94);
      goto LABEL_17;
    case 2u:
      OUTLINED_FUNCTION_0_205();
      sub_1D537F56C(v0, v45, v66);
      if (OUTLINED_FUNCTION_115_10() == 2)
      {
        v68 = v95;
        v67 = v96;
        OUTLINED_FUNCTION_11_18();
        v69 = v88;
        v70(v88, v0 + v56, v67);
        sub_1D560CFA8();
        v63 = *(v68 + 8);
        v63(v69, v67);
        v64 = v45;
        v65 = v67;
        goto LABEL_8;
      }

      (*(v95 + 8))(v45, v96);
      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_0_205();
      sub_1D537F56C(v0, v1, v71);
      if (OUTLINED_FUNCTION_115_10() == 3)
      {
        v73 = v97;
        v72 = v98;
        OUTLINED_FUNCTION_40_3();
        v74 = v89;
        v75(v89, v0 + v56, v72);
        sub_1D5610498();
        v76 = *(v73 + 8);
        v76(v74, v72);
        v76(v1, v72);
        goto LABEL_20;
      }

      (*(v97 + 8))(v1, v98);
      goto LABEL_17;
    case 4u:
      OUTLINED_FUNCTION_0_205();
      sub_1D537F56C(v0, v40, v58);
      if (OUTLINED_FUNCTION_115_10() != 4)
      {
        (*(v99 + 8))(v40, v100);
        goto LABEL_17;
      }

      v60 = v99;
      v59 = v100;
      OUTLINED_FUNCTION_11_18();
      v61 = v90;
      v62(v90, v0 + v56, v59);
      sub_1D5614958();
      v63 = *(v60 + 8);
      v63(v61, v59);
      v64 = v40;
      v65 = v59;
LABEL_8:
      v63(v64, v65);
      goto LABEL_20;
    default:
      OUTLINED_FUNCTION_0_205();
      sub_1D537F56C(v0, v50, v57);
      if (OUTLINED_FUNCTION_115_10())
      {
        (*(v91 + 8))(v50, v92);
LABEL_17:
        sub_1D4E50004(v0, &qword_1EC7F4DC8, &unk_1D5658BE0);
      }

      else
      {
        v84 = v91;
        v83 = v92;
        OUTLINED_FUNCTION_40_3();
        v85(v2, v0 + v56, v83);
        sub_1D560F238();
        v86 = *(v84 + 8);
        v86(v2, v83);
        v86(v50, v83);
LABEL_20:
        sub_1D5378268(v0);
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t sub_1D5378268(uint64_t a1)
{
  v2 = type metadata accessor for LegacyModelCodableMusicPinItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void LegacyModelCodableMusicPinItem.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v5 = sub_1D5614A18();
  v6 = OUTLINED_FUNCTION_4(v5);
  v54 = v7;
  v55 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v53 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610588();
  v12 = OUTLINED_FUNCTION_4(v11);
  v51 = v13;
  v52 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v16 = sub_1D560D068();
  v17 = OUTLINED_FUNCTION_4(v16);
  v50 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v21 = sub_1D560F7A8();
  v22 = OUTLINED_FUNCTION_4(v21);
  v49 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v26 = sub_1D560F308();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  v32 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v33 = OUTLINED_FUNCTION_14(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v1, v1, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v49 + 32))(v4, v1, v21);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_60_25();
      sub_1D537FB0C(v47, v48);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v49 + 8))(v4, v21);
      break;
    case 2u:
      (*(v50 + 32))(v3, v1, v16);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_62_29();
      sub_1D537FB0C(v42, v43);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v50 + 8))(v3, v16);
      break;
    case 3u:
      OUTLINED_FUNCTION_33_1();
      v44(v2, v1, v52);
      MEMORY[0x1DA6EC0D0](3);
      OUTLINED_FUNCTION_61_31();
      sub_1D537FB0C(v45, v46);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v51 + 8))(v2, v52);
      break;
    case 4u:
      OUTLINED_FUNCTION_33_1();
      v39(v53, v1, v55);
      MEMORY[0x1DA6EC0D0](4);
      OUTLINED_FUNCTION_63_21();
      sub_1D537FB0C(v40, v41);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v54 + 8))(v53, v55);
      break;
    default:
      (*(v29 + 32))(v0, v1, v26);
      MEMORY[0x1DA6EC0D0](0);
      OUTLINED_FUNCTION_64_26();
      sub_1D537FB0C(v37, v38);
      OUTLINED_FUNCTION_51_4();
      sub_1D5614CB8();
      (*(v29 + 8))(v0, v26);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t LegacyModelCodableMusicPinItem.hashValue.getter()
{
  sub_1D56162D8();
  LegacyModelCodableMusicPinItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D53787E0()
{
  sub_1D56162D8();
  LegacyModelCodableMusicPinItem.hash(into:)();
  return sub_1D5616328();
}

void LegacyModelCodableMusicPinItem.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v83 = sub_1D56148C8();
  v4 = OUTLINED_FUNCTION_14(v83);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v84 = sub_1D5614A18();
  v7 = OUTLINED_FUNCTION_4(v84);
  v82 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v81 = v11;
  OUTLINED_FUNCTION_70_0();
  v79 = sub_1D56100B8();
  v12 = OUTLINED_FUNCTION_14(v79);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v80 = sub_1D5610588();
  v15 = OUTLINED_FUNCTION_4(v80);
  v78 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v77 = v19;
  OUTLINED_FUNCTION_70_0();
  v75 = sub_1D560CF18();
  v20 = OUTLINED_FUNCTION_14(v75);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v76 = sub_1D560D068();
  v23 = OUTLINED_FUNCTION_4(v76);
  v74 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v27);
  v71 = sub_1D560F648();
  v28 = OUTLINED_FUNCTION_14(v71);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v72 = sub_1D560F7A8();
  v31 = OUTLINED_FUNCTION_4(v72);
  v70 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v35 = sub_1D560F1A8();
  v36 = OUTLINED_FUNCTION_14(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v39 = sub_1D560F308();
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_0();
  v45 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v46 = OUTLINED_FUNCTION_14(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v51 = v50 - v49;
  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v0, v51, v52);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_14_74();
      OUTLINED_FUNCTION_151();
      v68();
      OUTLINED_FUNCTION_114_7();
      sub_1D560F658();
      sub_1D5614C38();
      (*(v70 + 8))(v3, v2);
      break;
    case 2u:
      v59 = v74;
      OUTLINED_FUNCTION_11_18();
      v60 = v73;
      v64 = OUTLINED_FUNCTION_21_1();
      v62 = v76;
      v65(v64);
      OUTLINED_FUNCTION_114_7();
      sub_1D560CF28();
      goto LABEL_8;
    case 3u:
      v59 = v78;
      OUTLINED_FUNCTION_11_18();
      v60 = v77;
      v66 = OUTLINED_FUNCTION_21_1();
      v62 = v80;
      v67(v66);
      OUTLINED_FUNCTION_114_7();
      sub_1D56100C8();
      goto LABEL_8;
    case 4u:
      v59 = v82;
      OUTLINED_FUNCTION_11_18();
      v60 = v81;
      v61 = OUTLINED_FUNCTION_21_1();
      v62 = v84;
      v63(v61);
      OUTLINED_FUNCTION_114_7();
      sub_1D56148D8();
LABEL_8:
      sub_1D5614C38();
      (*(v59 + 8))(v60, v62);
      break;
    default:
      v53 = *(v42 + 32);
      v54 = OUTLINED_FUNCTION_21_1();
      v55(v54);
      OUTLINED_FUNCTION_114_7();
      sub_1D560F1B8();
      sub_1D5614C38();
      if (v1)
      {
        v56 = *(v42 + 8);
      }

      else
      {
        v69 = *(v42 + 8);
      }

      v57 = OUTLINED_FUNCTION_121();
      v58(v57);
      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void LegacyModelCodableMusicPinItem.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE0, &unk_1D564AD68);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_57(v9);
  v10 = sub_1D5614A18();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v94 = v18;
  OUTLINED_FUNCTION_70_0();
  v19 = sub_1D5610588();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF8, &unk_1D564AD90);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_3();
  v27 = sub_1D560D068();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D10, &unk_1D564ADB0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32_33();
  v35 = sub_1D560F7A8();
  v93 = OUTLINED_FUNCTION_4(v35);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_40_2();
  v45 = sub_1D560F308();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_0();
  v51 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v52 = OUTLINED_FUNCTION_14(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  sub_1D5614A88();
  sub_1D5614BD8();
  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v1, v2, v55);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v82(v40, v2, v93);
      sub_1D560F6B8();
      v83 = sub_1D560F6A8();
      OUTLINED_FUNCTION_35_3(v3, v84, v83);
      if (v60)
      {
        v85 = OUTLINED_FUNCTION_44_34();
        v86(v85);
        v63 = &qword_1EC7F2D10;
        v64 = &unk_1D564ADB0;
        v76 = v3;
        goto LABEL_18;
      }

      sub_1D4E50004(v3, &qword_1EC7F2D10, &unk_1D564ADB0);
      OUTLINED_FUNCTION_91_17();
      sub_1D560F6D8();
      sub_1D526EDE0();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_88_15();
      v91 = OUTLINED_FUNCTION_44_34();
      v92(v91);
      break;
    case 2u:
      v70 = OUTLINED_FUNCTION_14_74();
      v71(v70);
      sub_1D560CF78();
      v72 = sub_1D560CF68();
      OUTLINED_FUNCTION_35_3(v4, v73, v72);
      if (!v60)
      {

        sub_1D4E50004(v4, &qword_1EC7F2CF8, &unk_1D564AD90);
        OUTLINED_FUNCTION_91_17();
        sub_1D560CF98();
        sub_1D526F07C();
        goto LABEL_19;
      }

      v74 = OUTLINED_FUNCTION_22_66();
      v75(v74);
      v63 = &qword_1EC7F2CF8;
      v64 = &unk_1D564AD90;
      v76 = v4;
      goto LABEL_18;
    case 3u:
      v77 = OUTLINED_FUNCTION_14_74();
      v78(v77);
      v0 = v94;
      OUTLINED_FUNCTION_119_10();
      sub_1D5610468();
      v79 = sub_1D5610458();
      OUTLINED_FUNCTION_9_80(v79);
      if (!v60)
      {

        sub_1D4E50004(v94, &qword_1EC7ECF48, &qword_1D5623AE0);
        OUTLINED_FUNCTION_91_17();
        sub_1D5610488();
        sub_1D526F0C4();
        goto LABEL_19;
      }

      v80 = OUTLINED_FUNCTION_22_66();
      v81(v80);
      v63 = &qword_1EC7ECF48;
      v64 = &qword_1D5623AE0;
      goto LABEL_14;
    case 4u:
      v65 = OUTLINED_FUNCTION_14_74();
      v66(v65);
      v0 = v95;
      OUTLINED_FUNCTION_119_10();
      sub_1D5614928();
      v67 = sub_1D5614918();
      OUTLINED_FUNCTION_9_80(v67);
      if (v60)
      {
        v68 = OUTLINED_FUNCTION_22_66();
        v69(v68);
        v63 = &qword_1EC7F2CE0;
        v64 = &unk_1D564AD68;
        goto LABEL_14;
      }

      sub_1D4E50004(v95, &qword_1EC7F2CE0, &unk_1D564AD68);
      OUTLINED_FUNCTION_91_17();
      sub_1D5614948();
      sub_1D526F19C();
LABEL_19:
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_88_15();
      v87 = OUTLINED_FUNCTION_22_66();
      v88(v87);
      break;
    default:
      v56 = *(v48 + 32);
      v57 = OUTLINED_FUNCTION_21_1();
      v58(v57);
      sub_1D560F208();
      v59 = sub_1D560F1F8();
      OUTLINED_FUNCTION_9_80(v59);
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_42_41();
        v62(v61);
        v63 = &qword_1EC7F2D18;
        v64 = &unk_1D565D110;
LABEL_14:
        v76 = v0;
LABEL_18:
        sub_1D4E50004(v76, v63, v64);
      }

      else
      {

        sub_1D4E50004(v0, &qword_1EC7F2D18, &unk_1D565D110);
        OUTLINED_FUNCTION_91_17();
        sub_1D560F228();
        sub_1D526ED98();

        sub_1D5614C18();
        v89 = OUTLINED_FUNCTION_42_41();
        v90(v89);
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void LegacyModelCodableMusicPinItem.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D28, &unk_1D564ADC0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_57(v9);
  v10 = sub_1D5614A18();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v94 = v18;
  OUTLINED_FUNCTION_70_0();
  v19 = sub_1D5610588();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D40, &unk_1D5658BF0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_3();
  v27 = sub_1D560D068();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D58, &unk_1D565D140);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32_33();
  v35 = sub_1D560F7A8();
  v93 = OUTLINED_FUNCTION_4(v35);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_40_2();
  v45 = sub_1D560F308();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_0();
  v51 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v52 = OUTLINED_FUNCTION_14(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  sub_1D5614A88();
  sub_1D5614BD8();
  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v1, v2, v55);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v82(v40, v2, v93);
      sub_1D560F748();
      v83 = sub_1D560F678();
      OUTLINED_FUNCTION_35_3(v3, v84, v83);
      if (v60)
      {
        v85 = OUTLINED_FUNCTION_44_34();
        v86(v85);
        v63 = &qword_1EC7F2D58;
        v64 = &unk_1D565D140;
        v76 = v3;
        goto LABEL_18;
      }

      sub_1D4E50004(v3, &qword_1EC7F2D58, &unk_1D565D140);
      OUTLINED_FUNCTION_91_17();
      sub_1D560F6C8();
      sub_1D526F28C();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_88_15();
      v91 = OUTLINED_FUNCTION_44_34();
      v92(v91);
      break;
    case 2u:
      v70 = OUTLINED_FUNCTION_14_74();
      v71(v70);
      sub_1D560D008();
      v72 = sub_1D560CF48();
      OUTLINED_FUNCTION_35_3(v4, v73, v72);
      if (!v60)
      {

        sub_1D4E50004(v4, &qword_1EC7F2D40, &unk_1D5658BF0);
        OUTLINED_FUNCTION_91_17();
        sub_1D560CF88();
        sub_1D526F2F4();
        goto LABEL_19;
      }

      v74 = OUTLINED_FUNCTION_22_66();
      v75(v74);
      v63 = &qword_1EC7F2D40;
      v64 = &unk_1D5658BF0;
      v76 = v4;
      goto LABEL_18;
    case 3u:
      v77 = OUTLINED_FUNCTION_14_74();
      v78(v77);
      v0 = v94;
      OUTLINED_FUNCTION_119_10();
      sub_1D5610518();
      v79 = sub_1D5610138();
      OUTLINED_FUNCTION_9_80(v79);
      if (!v60)
      {

        sub_1D4E50004(v94, &qword_1EC7ECF40, &unk_1D5623AC0);
        OUTLINED_FUNCTION_91_17();
        sub_1D5610478();
        sub_1D526F33C();
        goto LABEL_19;
      }

      v80 = OUTLINED_FUNCTION_22_66();
      v81(v80);
      v63 = &qword_1EC7ECF40;
      v64 = &unk_1D5623AC0;
      goto LABEL_14;
    case 4u:
      v65 = OUTLINED_FUNCTION_14_74();
      v66(v65);
      v0 = v95;
      OUTLINED_FUNCTION_119_10();
      sub_1D56149B8();
      v67 = sub_1D56148F8();
      OUTLINED_FUNCTION_9_80(v67);
      if (v60)
      {
        v68 = OUTLINED_FUNCTION_22_66();
        v69(v68);
        v63 = &qword_1EC7F2D28;
        v64 = &unk_1D564ADC0;
        goto LABEL_14;
      }

      sub_1D4E50004(v95, &qword_1EC7F2D28, &unk_1D564ADC0);
      OUTLINED_FUNCTION_91_17();
      sub_1D5614938();
      sub_1D526F154();
LABEL_19:
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_88_15();
      v87 = OUTLINED_FUNCTION_22_66();
      v88(v87);
      break;
    default:
      v56 = *(v48 + 32);
      v57 = OUTLINED_FUNCTION_21_1();
      v58(v57);
      sub_1D560F298();
      v59 = sub_1D560F1D8();
      OUTLINED_FUNCTION_9_80(v59);
      if (v60)
      {
        v61 = OUTLINED_FUNCTION_42_41();
        v62(v61);
        v63 = &qword_1EC7F2D60;
        v64 = &unk_1D564ADF0;
LABEL_14:
        v76 = v0;
LABEL_18:
        sub_1D4E50004(v76, v63, v64);
      }

      else
      {

        sub_1D4E50004(v0, &qword_1EC7F2D60, &unk_1D564ADF0);
        OUTLINED_FUNCTION_91_17();
        sub_1D560F218();
        sub_1D526F244();

        sub_1D5614C18();
        v89 = OUTLINED_FUNCTION_42_41();
        v90(v89);
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void LegacyModelCodableMusicPinItem.decodeRawMetadata(from:skippingValuesFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  a10 = v21;
  v145 = v25;
  v146 = v20;
  v144 = v26;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D70, &unk_1D564AE00);
  v27 = OUTLINED_FUNCTION_14(v129);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_2();
  v140 = v31;
  OUTLINED_FUNCTION_70_0();
  v32 = sub_1D5614A18();
  v33 = OUTLINED_FUNCTION_4(v32);
  v142 = v34;
  v143 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v141 = v37;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  v38 = OUTLINED_FUNCTION_14(v128);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  v136 = v42;
  OUTLINED_FUNCTION_70_0();
  v43 = sub_1D5610588();
  v44 = OUTLINED_FUNCTION_4(v43);
  v138 = v45;
  v139 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v137 = v48;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D90, &qword_1D564AE28);
  v49 = OUTLINED_FUNCTION_14(v127);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_2();
  v132 = v53;
  OUTLINED_FUNCTION_70_0();
  v54 = sub_1D560D068();
  v55 = OUTLINED_FUNCTION_4(v54);
  v134 = v56;
  v135 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  v133 = v59;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DA8, &unk_1D564AE40);
  v60 = OUTLINED_FUNCTION_14(v126);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v124 - v64;
  v131 = sub_1D560F7A8();
  v66 = OUTLINED_FUNCTION_4(v131);
  v130 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5();
  v72 = v71 - v70;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  v73 = OUTLINED_FUNCTION_14(v125);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v124 - v77;
  v79 = sub_1D560F308();
  v80 = OUTLINED_FUNCTION_4(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_0();
  v85 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v86 = OUTLINED_FUNCTION_14(v85);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D5614A88();
  v147 = sub_1D5614BD8();
  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v146, v22, v89);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v130 + 32))(v72, v22, v131);
      sub_1D560F728();
      v115 = sub_1D560F798();
      OUTLINED_FUNCTION_9_80(v115);
      if (v94)
      {
        v116 = OUTLINED_FUNCTION_93_16();
        v117(v116);
        v97 = &qword_1EC7F2DA8;
        v98 = &unk_1D564AE40;
        goto LABEL_17;
      }

      sub_1D4E50004(v65, &qword_1EC7F2DA8, &unk_1D564AE40);
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_172(&a9);
      sub_1D560F728();
      OUTLINED_FUNCTION_111_11();
      OUTLINED_FUNCTION_68_20();
      sub_1D5614C28();
      v122 = OUTLINED_FUNCTION_93_16();
      v123(v122);
      goto LABEL_20;
    case 2u:
      v105 = OUTLINED_FUNCTION_35_53(v134);
      v106(v105);
      v65 = v132;
      sub_1D560CFE8();
      v107 = sub_1D560D058();
      OUTLINED_FUNCTION_9_80(v107);
      if (!v94)
      {

        sub_1D4E50004(v65, &qword_1EC7F2D90, &qword_1D564AE28);
        OUTLINED_FUNCTION_113_11();
        OUTLINED_FUNCTION_172(&a11);
        sub_1D560CFE8();
        OUTLINED_FUNCTION_111_11();
        OUTLINED_FUNCTION_68_20();
        v118 = &a12;
        goto LABEL_19;
      }

      v108 = OUTLINED_FUNCTION_45_31();
      v109(v108);
      v97 = &qword_1EC7F2D90;
      v98 = &qword_1D564AE28;
      goto LABEL_17;
    case 3u:
      v110 = OUTLINED_FUNCTION_35_53(v138);
      v111(v110);
      v65 = v136;
      sub_1D56104F8();
      v112 = sub_1D5610578();
      OUTLINED_FUNCTION_9_80(v112);
      if (!v94)
      {

        sub_1D4E50004(v65, &qword_1EC7F2D88, &qword_1D564AE20);
        OUTLINED_FUNCTION_113_11();
        OUTLINED_FUNCTION_172(&a13);
        sub_1D56104F8();
        OUTLINED_FUNCTION_111_11();
        OUTLINED_FUNCTION_68_20();
        v118 = &a14;
        goto LABEL_19;
      }

      v113 = OUTLINED_FUNCTION_45_31();
      v114(v113);
      v97 = &qword_1EC7F2D88;
      v98 = &qword_1D564AE20;
      goto LABEL_17;
    case 4u:
      v100 = OUTLINED_FUNCTION_35_53(v142);
      v101(v100);
      v65 = v140;
      sub_1D5614998();
      v102 = sub_1D5614A08();
      OUTLINED_FUNCTION_9_80(v102);
      if (!v94)
      {

        sub_1D4E50004(v65, &qword_1EC7F2D70, &unk_1D564AE00);
        OUTLINED_FUNCTION_113_11();
        OUTLINED_FUNCTION_172(&a15);
        sub_1D5614998();
        OUTLINED_FUNCTION_111_11();
        OUTLINED_FUNCTION_68_20();
        v118 = &a16;
        goto LABEL_19;
      }

      v103 = OUTLINED_FUNCTION_45_31();
      v104(v103);
      v97 = &qword_1EC7F2D70;
      v98 = &unk_1D564AE00;
LABEL_17:
      v99 = v65;
      goto LABEL_18;
    default:
      v90 = OUTLINED_FUNCTION_35_53(v82);
      v91(v90);
      sub_1D560F278();
      v92 = sub_1D560F2F8();
      OUTLINED_FUNCTION_35_3(v78, v93, v92);
      if (v94)
      {
        v95 = OUTLINED_FUNCTION_45_31();
        v96(v95);
        v97 = &qword_1EC7F2DB0;
        v98 = &unk_1D565D170;
        v99 = v78;
LABEL_18:
        sub_1D4E50004(v99, v97, v98);
      }

      else
      {

        sub_1D4E50004(v78, &qword_1EC7F2DB0, &unk_1D565D170);
        OUTLINED_FUNCTION_113_11();
        sub_1D560F278();
        OUTLINED_FUNCTION_111_11();
        v118 = &v148;
LABEL_19:
        v119 = *(v118 - 32);
        sub_1D5614C28();
        v120 = OUTLINED_FUNCTION_45_31();
        v121(v120);
      }

LABEL_20:
      OUTLINED_FUNCTION_248();
      OUTLINED_FUNCTION_26();
      return;
  }
}

void LegacyModelCodableMusicPinItem.mergeAttributes(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v26;
  a20 = v27;
  v28 = sub_1D56148C8();
  v29 = OUTLINED_FUNCTION_4(v28);
  v107 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v33 = sub_1D5614A18();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v37 = sub_1D56100B8();
  v38 = OUTLINED_FUNCTION_4(v37);
  v106 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v42 = sub_1D5610588();
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D560CF18();
  v47 = OUTLINED_FUNCTION_4(v46);
  v105 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v51 = sub_1D560D068();
  v52 = OUTLINED_FUNCTION_4(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v104 = sub_1D560F648();
  v55 = OUTLINED_FUNCTION_4(v104);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v103 = sub_1D560F7A8();
  v58 = OUTLINED_FUNCTION_4(v103);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v61 = sub_1D560F1A8();
  v62 = OUTLINED_FUNCTION_4(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v65 = sub_1D560F308();
  v66 = OUTLINED_FUNCTION_4(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_0();
  v71 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v72 = OUTLINED_FUNCTION_14(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v20, v24, v75);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_56_30(&a15);
      (*(v92 + 32))(v23, v24, v103);
      sub_1D560F658();
      sub_1D537FB0C(&qword_1EC7F2E28, MEMORY[0x1E6975768]);
      OUTLINED_FUNCTION_125_11();
      OUTLINED_FUNCTION_136(&a17);
      v93(v22, v104);
      v94 = OUTLINED_FUNCTION_19_71();
      v95(v94);
      goto LABEL_18;
    case 2u:
      OUTLINED_FUNCTION_40_3();
      v83 = OUTLINED_FUNCTION_94_16();
      v84(v83);
      sub_1D560CF28();
      sub_1D537FB0C(&qword_1EC7F2E08, MEMORY[0x1E6974D70]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_125_11();
      if (v21)
      {
        v82 = v105;
        goto LABEL_11;
      }

      v96 = v105;
      goto LABEL_16;
    case 3u:
      OUTLINED_FUNCTION_40_3();
      v85 = OUTLINED_FUNCTION_94_16();
      v86(v85);
      sub_1D56100C8();
      sub_1D537FB0C(&qword_1EC7F2E00, MEMORY[0x1E6975C00]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_125_11();
      if (v21)
      {
        v82 = v106;
        goto LABEL_11;
      }

      v96 = v106;
      goto LABEL_16;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v80 = OUTLINED_FUNCTION_94_16();
      v81(v80);
      sub_1D56148D8();
      sub_1D537FB0C(&qword_1EC7F2DE0, MEMORY[0x1E6977410]);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_125_11();
      if (v21)
      {
        v82 = v107;
LABEL_11:
        v87 = *(v82 + 8);
        v88 = OUTLINED_FUNCTION_13_8();
        v89(v88);
        v90 = OUTLINED_FUNCTION_45_31();
        v91(v90);
      }

      else
      {
        v96 = v107;
LABEL_16:
        v97 = *(v96 + 8);
        v98 = OUTLINED_FUNCTION_13_8();
        v99(v98);
        v100 = OUTLINED_FUNCTION_45_31();
        v101(v100);
      }

LABEL_18:
      OUTLINED_FUNCTION_26();
      return;
    default:
      (*(v68 + 32))(v20, v24, v65);
      sub_1D560F1B8();
      sub_1D537FB0C(&qword_1EC7F2E30, MEMORY[0x1E69755F8]);
      sub_1D5614C48();
      OUTLINED_FUNCTION_136(&a14);
      v76(v25, v61);
      if (v21)
      {
        v77 = *(v68 + 8);
      }

      else
      {
        v102 = *(v68 + 8);
      }

      v78 = OUTLINED_FUNCTION_121();
      v79(v78);
      goto LABEL_18;
  }
}

void LegacyModelCodableMusicPinItem.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_70_23(v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CE0, &unk_1D564AD68);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_64(v32);
  v165 = sub_1D5614918();
  v33 = OUTLINED_FUNCTION_4(v165);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v36);
  v37 = sub_1D5614A18();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_27_59(v45);
  v163 = sub_1D5610458();
  v46 = OUTLINED_FUNCTION_4(v163);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v49);
  v50 = sub_1D5610588();
  v51 = OUTLINED_FUNCTION_4(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CF8, &unk_1D564AD90);
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  v160 = v58;
  OUTLINED_FUNCTION_70_0();
  v161 = sub_1D560CF68();
  v59 = OUTLINED_FUNCTION_4(v161);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v62);
  v63 = sub_1D560D068();
  v64 = OUTLINED_FUNCTION_4(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_97_14(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D10, &unk_1D564ADB0);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_32_33();
  v159 = sub_1D560F6A8();
  v72 = OUTLINED_FUNCTION_4(v159);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v158 = sub_1D560F7A8();
  v76 = OUTLINED_FUNCTION_4(v158);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_15_3();
  v83 = sub_1D560F1F8();
  v84 = OUTLINED_FUNCTION_4(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v87 = sub_1D560F308();
  v88 = OUTLINED_FUNCTION_4(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13_0();
  v91 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v92 = v20;
  v93 = OUTLINED_FUNCTION_14(v91);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_78_23();
  if (v96)
  {
  }

  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v166, v21, v97);
  OUTLINED_FUNCTION_13_8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v124 = OUTLINED_FUNCTION_32_50();
      v125(v124);
      sub_1D560F6B8();
      OUTLINED_FUNCTION_37_39(v22, 1);
      if (v100)
      {
        v126 = OUTLINED_FUNCTION_19_71();
        v127(v126);
        v103 = &qword_1EC7F2D10;
        v104 = &unk_1D564ADB0;
        v105 = v22;
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_35_0(&a10);
      v148 = OUTLINED_FUNCTION_58_31();
      v149(v148);
      sub_1D537FB0C(&qword_1EC7F2E88, MEMORY[0x1E69757E0]);
      OUTLINED_FUNCTION_72_25();
      v150 = OUTLINED_FUNCTION_40_49();
      v151(v150);
      v152 = OUTLINED_FUNCTION_19_71();
      v153(v152);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_98();
      OUTLINED_FUNCTION_116_14();
      v113();
      v108 = v160;
      OUTLINED_FUNCTION_71_22();
      sub_1D560CF78();
      v114 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v114, v115);
      if (!v100)
      {

        OUTLINED_FUNCTION_35_0(&a12);
        v132 = OUTLINED_FUNCTION_9_103();
        v133(v132);
        v130 = &unk_1EC7F2E68;
        v131 = MEMORY[0x1E6974DB0];
        goto LABEL_21;
      }

      v116 = OUTLINED_FUNCTION_13_84();
      v117(v116);
      v103 = &qword_1EC7F2CF8;
      v104 = &unk_1D564AD90;
      goto LABEL_16;
    case 3u:
      v118 = OUTLINED_FUNCTION_10_98();
      v119(v118);
      v108 = v162;
      OUTLINED_FUNCTION_71_22();
      sub_1D5610468();
      v120 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v120, v121);
      if (!v100)
      {

        OUTLINED_FUNCTION_35_0(&a14);
        v134 = OUTLINED_FUNCTION_9_103();
        v135(v134);
        v130 = &qword_1EC7F2E60;
        v131 = MEMORY[0x1E6975CA0];
        goto LABEL_21;
      }

      v122 = OUTLINED_FUNCTION_13_84();
      v123(v122);
      v103 = &qword_1EC7ECF48;
      v104 = &qword_1D5623AE0;
      goto LABEL_16;
    case 4u:
      v106 = OUTLINED_FUNCTION_10_98();
      v107(v106);
      v108 = v164;
      OUTLINED_FUNCTION_71_22();
      sub_1D5614928();
      v109 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v109, v110);
      if (v100)
      {
        v111 = OUTLINED_FUNCTION_13_84();
        v112(v111);
        v103 = &qword_1EC7F2CE0;
        v104 = &unk_1D564AD68;
LABEL_16:
        v105 = v108;
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_35_0(&a16);
      v128 = OUTLINED_FUNCTION_9_103();
      v129(v128);
      v130 = &unk_1EC7F2E40;
      v131 = MEMORY[0x1E6977440];
LABEL_21:
      sub_1D537FB0C(v130, v131);
      OUTLINED_FUNCTION_74_24();
      if (v92)
      {
        v136 = OUTLINED_FUNCTION_41_45();
        v137(v136);
        v138 = OUTLINED_FUNCTION_13_84();
        goto LABEL_26;
      }

      v140 = OUTLINED_FUNCTION_41_45();
      v141(v140);
      v142 = OUTLINED_FUNCTION_13_84();
      v143(v142);
      break;
    default:
      v98 = OUTLINED_FUNCTION_34_52();
      v99(v98);
      sub_1D560F208();
      OUTLINED_FUNCTION_101_9();
      if (v100)
      {
        v101 = OUTLINED_FUNCTION_25_54();
        v102(v101);
        v103 = &qword_1EC7F2D18;
        v104 = &unk_1D565D110;
        v105 = v23;
LABEL_20:
        sub_1D4E50004(v105, v103, v104);
      }

      else
      {

        v144 = OUTLINED_FUNCTION_36_47();
        v145(v144);
        sub_1D537FB0C(&qword_1EC7F2E90, MEMORY[0x1E6975638]);
        OUTLINED_FUNCTION_73_22();
        if (v20)
        {
          v146 = OUTLINED_FUNCTION_43_35();
          v147(v146);
          v138 = OUTLINED_FUNCTION_25_54();
LABEL_26:
          v139(v138);
        }

        else
        {
          v154 = OUTLINED_FUNCTION_43_35();
          v155(v154);
          v156 = OUTLINED_FUNCTION_25_54();
          v157(v156);
        }
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void LegacyModelCodableMusicPinItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_70_23(v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D28, &unk_1D564ADC0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_64(v32);
  v165 = sub_1D56148F8();
  v33 = OUTLINED_FUNCTION_4(v165);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v36);
  v37 = sub_1D5614A18();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_27_59(v45);
  v163 = sub_1D5610138();
  v46 = OUTLINED_FUNCTION_4(v163);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v49);
  v50 = sub_1D5610588();
  v51 = OUTLINED_FUNCTION_4(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D40, &unk_1D5658BF0);
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  v160 = v58;
  OUTLINED_FUNCTION_70_0();
  v161 = sub_1D560CF48();
  v59 = OUTLINED_FUNCTION_4(v161);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v62);
  v63 = sub_1D560D068();
  v64 = OUTLINED_FUNCTION_4(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_97_14(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D58, &unk_1D565D140);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_32_33();
  v159 = sub_1D560F678();
  v72 = OUTLINED_FUNCTION_4(v159);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v158 = sub_1D560F7A8();
  v76 = OUTLINED_FUNCTION_4(v158);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_15_3();
  v83 = sub_1D560F1D8();
  v84 = OUTLINED_FUNCTION_4(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v87 = sub_1D560F308();
  v88 = OUTLINED_FUNCTION_4(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13_0();
  v91 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v92 = v20;
  v93 = OUTLINED_FUNCTION_14(v91);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_78_23();
  if (v96)
  {
  }

  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v166, v21, v97);
  OUTLINED_FUNCTION_13_8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v124 = OUTLINED_FUNCTION_32_50();
      v125(v124);
      sub_1D560F748();
      OUTLINED_FUNCTION_37_39(v22, 1);
      if (v100)
      {
        v126 = OUTLINED_FUNCTION_19_71();
        v127(v126);
        v103 = &qword_1EC7F2D58;
        v104 = &unk_1D565D140;
        v105 = v22;
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_35_0(&a10);
      v148 = OUTLINED_FUNCTION_58_31();
      v149(v148);
      sub_1D537FB0C(&qword_1EC7F2EE8, MEMORY[0x1E6975788]);
      OUTLINED_FUNCTION_72_25();
      v150 = OUTLINED_FUNCTION_40_49();
      v151(v150);
      v152 = OUTLINED_FUNCTION_19_71();
      v153(v152);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_98();
      OUTLINED_FUNCTION_116_14();
      v113();
      v108 = v160;
      OUTLINED_FUNCTION_71_22();
      sub_1D560D008();
      v114 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v114, v115);
      if (!v100)
      {

        OUTLINED_FUNCTION_35_0(&a12);
        v132 = OUTLINED_FUNCTION_9_103();
        v133(v132);
        v130 = &unk_1EC7F2EC8;
        v131 = MEMORY[0x1E6974D90];
        goto LABEL_21;
      }

      v116 = OUTLINED_FUNCTION_13_84();
      v117(v116);
      v103 = &qword_1EC7F2D40;
      v104 = &unk_1D5658BF0;
      goto LABEL_16;
    case 3u:
      v118 = OUTLINED_FUNCTION_10_98();
      v119(v118);
      v108 = v162;
      OUTLINED_FUNCTION_71_22();
      sub_1D5610518();
      v120 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v120, v121);
      if (!v100)
      {

        OUTLINED_FUNCTION_35_0(&a14);
        v134 = OUTLINED_FUNCTION_9_103();
        v135(v134);
        v130 = &qword_1EC7F2EC0;
        v131 = MEMORY[0x1E6975C20];
        goto LABEL_21;
      }

      v122 = OUTLINED_FUNCTION_13_84();
      v123(v122);
      v103 = &qword_1EC7ECF40;
      v104 = &unk_1D5623AC0;
      goto LABEL_16;
    case 4u:
      v106 = OUTLINED_FUNCTION_10_98();
      v107(v106);
      v108 = v164;
      OUTLINED_FUNCTION_71_22();
      sub_1D56149B8();
      v109 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v109, v110);
      if (v100)
      {
        v111 = OUTLINED_FUNCTION_13_84();
        v112(v111);
        v103 = &qword_1EC7F2D28;
        v104 = &unk_1D564ADC0;
LABEL_16:
        v105 = v108;
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_35_0(&a16);
      v128 = OUTLINED_FUNCTION_9_103();
      v129(v128);
      v130 = &unk_1EC7F2EA0;
      v131 = MEMORY[0x1E6977420];
LABEL_21:
      sub_1D537FB0C(v130, v131);
      OUTLINED_FUNCTION_74_24();
      if (v92)
      {
        v136 = OUTLINED_FUNCTION_41_45();
        v137(v136);
        v138 = OUTLINED_FUNCTION_13_84();
        goto LABEL_26;
      }

      v140 = OUTLINED_FUNCTION_41_45();
      v141(v140);
      v142 = OUTLINED_FUNCTION_13_84();
      v143(v142);
      break;
    default:
      v98 = OUTLINED_FUNCTION_34_52();
      v99(v98);
      sub_1D560F298();
      OUTLINED_FUNCTION_101_9();
      if (v100)
      {
        v101 = OUTLINED_FUNCTION_25_54();
        v102(v101);
        v103 = &qword_1EC7F2D60;
        v104 = &unk_1D564ADF0;
        v105 = v23;
LABEL_20:
        sub_1D4E50004(v105, v103, v104);
      }

      else
      {

        v144 = OUTLINED_FUNCTION_36_47();
        v145(v144);
        sub_1D537FB0C(&qword_1EC7F2EF0, MEMORY[0x1E6975618]);
        OUTLINED_FUNCTION_73_22();
        if (v20)
        {
          v146 = OUTLINED_FUNCTION_43_35();
          v147(v146);
          v138 = OUTLINED_FUNCTION_25_54();
LABEL_26:
          v139(v138);
        }

        else
        {
          v154 = OUTLINED_FUNCTION_43_35();
          v155(v154);
          v156 = OUTLINED_FUNCTION_25_54();
          v157(v156);
        }
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void LegacyModelCodableMusicPinItem.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_70_23(v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D70, &unk_1D564AE00);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_64(v32);
  v165 = sub_1D5614A08();
  v33 = OUTLINED_FUNCTION_4(v165);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v36);
  v37 = sub_1D5614A18();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_27_59(v45);
  v163 = sub_1D5610578();
  v46 = OUTLINED_FUNCTION_4(v163);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v49);
  v50 = sub_1D5610588();
  v51 = OUTLINED_FUNCTION_4(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D90, &qword_1D564AE28);
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  v160 = v58;
  OUTLINED_FUNCTION_70_0();
  v161 = sub_1D560D058();
  v59 = OUTLINED_FUNCTION_4(v161);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v62);
  v63 = sub_1D560D068();
  v64 = OUTLINED_FUNCTION_4(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_97_14(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DA8, &unk_1D564AE40);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_32_33();
  v159 = sub_1D560F798();
  v72 = OUTLINED_FUNCTION_4(v159);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v158 = sub_1D560F7A8();
  v76 = OUTLINED_FUNCTION_4(v158);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  OUTLINED_FUNCTION_22(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_15_3();
  v83 = sub_1D560F2F8();
  v84 = OUTLINED_FUNCTION_4(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_2();
  v87 = sub_1D560F308();
  v88 = OUTLINED_FUNCTION_4(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13_0();
  v91 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v92 = v20;
  v93 = OUTLINED_FUNCTION_14(v91);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_78_23();
  if (v96)
  {
  }

  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v166, v21, v97);
  OUTLINED_FUNCTION_13_8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v124 = OUTLINED_FUNCTION_32_50();
      v125(v124);
      sub_1D560F728();
      OUTLINED_FUNCTION_37_39(v22, 1);
      if (v100)
      {
        v126 = OUTLINED_FUNCTION_19_71();
        v127(v126);
        v103 = &qword_1EC7F2DA8;
        v104 = &unk_1D564AE40;
        v105 = v22;
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_35_0(&a10);
      v148 = OUTLINED_FUNCTION_58_31();
      v149(v148);
      sub_1D537FB0C(&qword_1EC7F2F48, MEMORY[0x1E69757F0]);
      OUTLINED_FUNCTION_72_25();
      v150 = OUTLINED_FUNCTION_40_49();
      v151(v150);
      v152 = OUTLINED_FUNCTION_19_71();
      v153(v152);
      break;
    case 2u:
      OUTLINED_FUNCTION_10_98();
      OUTLINED_FUNCTION_116_14();
      v113();
      v108 = v160;
      OUTLINED_FUNCTION_71_22();
      sub_1D560CFE8();
      v114 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v114, v115);
      if (!v100)
      {

        OUTLINED_FUNCTION_35_0(&a12);
        v132 = OUTLINED_FUNCTION_9_103();
        v133(v132);
        v130 = &unk_1EC7F2F28;
        v131 = MEMORY[0x1E6974DC0];
        goto LABEL_21;
      }

      v116 = OUTLINED_FUNCTION_13_84();
      v117(v116);
      v103 = &qword_1EC7F2D90;
      v104 = &qword_1D564AE28;
      goto LABEL_16;
    case 3u:
      v118 = OUTLINED_FUNCTION_10_98();
      v119(v118);
      v108 = v162;
      OUTLINED_FUNCTION_71_22();
      sub_1D56104F8();
      v120 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v120, v121);
      if (!v100)
      {

        OUTLINED_FUNCTION_35_0(&a14);
        v134 = OUTLINED_FUNCTION_9_103();
        v135(v134);
        v130 = &qword_1EC7F2F20;
        v131 = MEMORY[0x1E6975CD8];
        goto LABEL_21;
      }

      v122 = OUTLINED_FUNCTION_13_84();
      v123(v122);
      v103 = &qword_1EC7F2D88;
      v104 = &qword_1D564AE20;
      goto LABEL_16;
    case 4u:
      v106 = OUTLINED_FUNCTION_10_98();
      v107(v106);
      v108 = v164;
      OUTLINED_FUNCTION_71_22();
      sub_1D5614998();
      v109 = OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_37_39(v109, v110);
      if (v100)
      {
        v111 = OUTLINED_FUNCTION_13_84();
        v112(v111);
        v103 = &qword_1EC7F2D70;
        v104 = &unk_1D564AE00;
LABEL_16:
        v105 = v108;
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_35_0(&a16);
      v128 = OUTLINED_FUNCTION_9_103();
      v129(v128);
      v130 = &unk_1EC7F2F00;
      v131 = MEMORY[0x1E6977450];
LABEL_21:
      sub_1D537FB0C(v130, v131);
      OUTLINED_FUNCTION_74_24();
      if (v92)
      {
        v136 = OUTLINED_FUNCTION_41_45();
        v137(v136);
        v138 = OUTLINED_FUNCTION_13_84();
        goto LABEL_26;
      }

      v140 = OUTLINED_FUNCTION_41_45();
      v141(v140);
      v142 = OUTLINED_FUNCTION_13_84();
      v143(v142);
      break;
    default:
      v98 = OUTLINED_FUNCTION_34_52();
      v99(v98);
      sub_1D560F278();
      OUTLINED_FUNCTION_101_9();
      if (v100)
      {
        v101 = OUTLINED_FUNCTION_25_54();
        v102(v101);
        v103 = &qword_1EC7F2DB0;
        v104 = &unk_1D565D170;
        v105 = v23;
LABEL_20:
        sub_1D4E50004(v105, v103, v104);
      }

      else
      {

        v144 = OUTLINED_FUNCTION_36_47();
        v145(v144);
        sub_1D537FB0C(&qword_1EC7F2F50, MEMORY[0x1E6975648]);
        OUTLINED_FUNCTION_73_22();
        if (v20)
        {
          v146 = OUTLINED_FUNCTION_43_35();
          v147(v146);
          v138 = OUTLINED_FUNCTION_25_54();
LABEL_26:
          v139(v138);
        }

        else
        {
          v154 = OUTLINED_FUNCTION_43_35();
          v155(v154);
          v156 = OUTLINED_FUNCTION_25_54();
          v157(v156);
        }
      }

      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D537CCF8(uint64_t a1)
{
  v2 = sub_1D537D938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D537CD34(uint64_t a1)
{
  v2 = sub_1D537D938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LegacyModelCodableMusicPinItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v150 = sub_1D5615C08();
  v27 = OUTLINED_FUNCTION_4(v150);
  v149 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v31);
  v151 = sub_1D5614A18();
  v32 = OUTLINED_FUNCTION_4(v151);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v35);
  v152 = sub_1D5610588();
  v36 = OUTLINED_FUNCTION_4(v152);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v153 = v39;
  OUTLINED_FUNCTION_70_0();
  v40 = sub_1D560D068();
  v41 = OUTLINED_FUNCTION_4(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v154 = v44;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1D560F7A8();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  v155 = v49;
  OUTLINED_FUNCTION_70_0();
  v157 = sub_1D560F308();
  v50 = OUTLINED_FUNCTION_4(v157);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v156 = v53;
  OUTLINED_FUNCTION_70_0();
  v54 = sub_1D5610088();
  v55 = OUTLINED_FUNCTION_4(v54);
  v159 = v56;
  v160 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_48_36();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  v161 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DD0, &unk_1D5658C00);
  OUTLINED_FUNCTION_4(v62);
  v158 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_83_5();
  v67 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v68 = OUTLINED_FUNCTION_14(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5();
  v71 = v26[3];
  v72 = v26[4];
  a10 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v71);
  sub_1D537D938();
  sub_1D5616398();
  if (!v20)
  {
    OUTLINED_FUNCTION_20_75();
    sub_1D537FB0C(v73, v74);
    sub_1D5615FD8();
    v75 = v62;
    (*(v159 + 16))(v22, v161, v160);
    sub_1D560F1E8();
    v77 = OUTLINED_FUNCTION_110_11();

    v76 = a10;
    if (v77)
    {
      v78 = v62;
      v79 = *(v159 + 8);
    }

    else
    {
      OUTLINED_FUNCTION_186(&a10);
      sub_1D560F1C8();
      OUTLINED_FUNCTION_20_75();
      sub_1D537FB0C(v80, v81);
      OUTLINED_FUNCTION_47_38();
      *(v83 - 256) = v82;
      v84 = sub_1D5614D18();
      v147 = *(v159 + 8);
      v147(v77, v160);
      if ((v84 & 1) == 0)
      {
        sub_1D560F698();
        OUTLINED_FUNCTION_110_11();
        OUTLINED_FUNCTION_124_10();
        if (v21)
        {
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_79_19();
        sub_1D560F668();
        OUTLINED_FUNCTION_47_38();
        v92 = *(v91 - 256);
        sub_1D5614D18();
        OUTLINED_FUNCTION_183();
        OUTLINED_FUNCTION_15_81();
        v94(v93);
        if (v84)
        {
LABEL_13:
          OUTLINED_FUNCTION_15_81();
          v96(v95);
          OUTLINED_FUNCTION_112_12();
          sub_1D560F708();
          OUTLINED_FUNCTION_15_81();
          v99(v98);
          v100 = OUTLINED_FUNCTION_30_53();
          v101(v100, v62);
          v102 = OUTLINED_FUNCTION_29_51();
          v103(v102, v155);
        }

        else
        {
          sub_1D560CF58();
          OUTLINED_FUNCTION_110_11();
          OUTLINED_FUNCTION_124_10();
          if (v21)
          {
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_79_19();
          sub_1D560CF38();
          OUTLINED_FUNCTION_47_38();
          v105 = *(v104 - 256);
          sub_1D5614D18();
          OUTLINED_FUNCTION_183();
          OUTLINED_FUNCTION_15_81();
          v107(v106);
          if (v84)
          {
LABEL_16:
            OUTLINED_FUNCTION_15_81();
            v109(v108);
            OUTLINED_FUNCTION_112_12();
            sub_1D560CFC8();
            OUTLINED_FUNCTION_15_81();
            v111(v110);
            v112 = OUTLINED_FUNCTION_30_53();
            v113(v112, v62);
            v114 = OUTLINED_FUNCTION_29_51();
            v115(v114, v154);
          }

          else
          {
            sub_1D5610278();
            OUTLINED_FUNCTION_110_11();
            OUTLINED_FUNCTION_124_10();
            if (v21)
            {
              goto LABEL_19;
            }

            OUTLINED_FUNCTION_79_19();
            sub_1D56100D8();
            OUTLINED_FUNCTION_47_38();
            v117 = *(v116 - 256);
            sub_1D5614D18();
            OUTLINED_FUNCTION_183();
            OUTLINED_FUNCTION_15_81();
            v119(v118);
            if (v84)
            {
LABEL_19:
              OUTLINED_FUNCTION_15_81();
              v121(v120);
              OUTLINED_FUNCTION_112_12();
              sub_1D56104D8();
              OUTLINED_FUNCTION_15_81();
              v123(v122);
              v124 = OUTLINED_FUNCTION_30_53();
              v125(v124, v62);
              v126 = OUTLINED_FUNCTION_29_51();
              v127(v126, v153, v152);
            }

            else
            {
              sub_1D5614908();
              OUTLINED_FUNCTION_110_11();
              OUTLINED_FUNCTION_124_10();
              if (v21)
              {
                OUTLINED_FUNCTION_52_32();
                v129(v128);
                OUTLINED_FUNCTION_106_12();
              }

              else
              {
                OUTLINED_FUNCTION_79_19();
                sub_1D56148E8();
                sub_1D5614D18();
                v130 = OUTLINED_FUNCTION_183();
                v147(v130, v160);
                v131 = OUTLINED_FUNCTION_13_8();
                (v147)(v131);
                OUTLINED_FUNCTION_106_12();
                if ((v160 & 1) == 0)
                {
                  v136 = v76[4];
                  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
                  OUTLINED_FUNCTION_82();
                  sub_1D5616348();
                  sub_1D5615B68();
                  MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5689350);
                  OUTLINED_FUNCTION_20_75();
                  sub_1D537FB0C(v137, v138);
                  v139 = sub_1D56160F8();
                  MEMORY[0x1DA6EAC70](v139);

                  MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D568C850);
                  sub_1D5615BF8();
                  v140 = sub_1D5615C18();
                  swift_allocError();
                  v142 = v141;
                  v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
                  *v142 = sub_1D56131F8();
                  (*(v149 + 16))(v142 + v143, v148, v150);
                  (*(*(v140 - 8) + 104))(v142, *MEMORY[0x1E69E6AF8], v140);
                  swift_willThrow();
                  (*(v149 + 8))(v148, v150);
                  OUTLINED_FUNCTION_52_32();
                  v145(v144);
                  v146 = OUTLINED_FUNCTION_30_53();
                  v97(v146, v75);
                  goto LABEL_4;
                }
              }

              OUTLINED_FUNCTION_112_12();
              OUTLINED_FUNCTION_56_30(&a16);
              sub_1D5614978();
              OUTLINED_FUNCTION_52_32();
              v133(v132);
              (*(v158 + 8))(v22, v62);
              v134 = OUTLINED_FUNCTION_29_51();
              v135(v134, v62, v151);
            }
          }
        }

        goto LABEL_10;
      }

      v78 = v62;
    }

    OUTLINED_FUNCTION_15_81();
    v85();
    OUTLINED_FUNCTION_112_12();
    sub_1D560F258();
    OUTLINED_FUNCTION_15_81();
    v86();
    (*(v158 + 8))(v21, v78);
    v87 = OUTLINED_FUNCTION_29_51();
    v88(v87, v156, v157);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    v89 = OUTLINED_FUNCTION_159();
    sub_1D537D98C(v89, v90);
    goto LABEL_4;
  }

  v76 = a10;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v76);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D537D938()
{
  result = qword_1EC7F4DD8;
  if (!qword_1EC7F4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4DD8);
  }

  return result;
}

uint64_t sub_1D537D98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyModelCodableMusicPinItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void LegacyModelCodableMusicPinItem.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v5 = sub_1D5614A18();
  v44 = OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v43 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D5610588();
  v42 = OUTLINED_FUNCTION_4(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v12 = sub_1D560D068();
  v41 = OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_3();
  v15 = sub_1D560F7A8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v19 = sub_1D560F308();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_0();
  v25 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_0_205();
  sub_1D537F56C(v1, v0, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_40_3();
      v39 = OUTLINED_FUNCTION_13_8();
      v40(v39);
      sub_1D560F758();
      OUTLINED_FUNCTION_123_11();
      v36 = v2;
      goto LABEL_7;
    case 2u:
      v15 = v41;
      OUTLINED_FUNCTION_40_3();
      v37(v4, v0, v41);
      sub_1D560D018();
      OUTLINED_FUNCTION_123_11();
      v36 = v4;
      goto LABEL_7;
    case 3u:
      v15 = v42;
      OUTLINED_FUNCTION_40_3();
      v38(v3, v0, v42);
      sub_1D5610528();
      OUTLINED_FUNCTION_123_11();
      v36 = v3;
      goto LABEL_7;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v33 = OUTLINED_FUNCTION_159();
      v15 = v44;
      v34(v33);
      sub_1D56149C8();
      OUTLINED_FUNCTION_123_11();
      v36 = v43;
LABEL_7:
      v35(v36, v15);
      break;
    default:
      v30 = *(v22 + 32);
      v31 = OUTLINED_FUNCTION_159();
      v32(v31);
      sub_1D560F2A8();
      (*(v22 + 8))(v1, v19);
      break;
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void MusicPin.Item.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v261[0] = v23;
  v261[1] = v24;
  v26 = v25;
  v262 = v27;
  v29 = v28;
  v264 = v30;
  v242 = sub_1D5613838();
  v31 = OUTLINED_FUNCTION_4(v242);
  v241 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v35);
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v36 = OUTLINED_FUNCTION_4(v240);
  v239 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v41);
  v42 = sub_1D5614A18();
  v43 = OUTLINED_FUNCTION_4(v42);
  v255 = v44;
  v256 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v254 = v47;
  OUTLINED_FUNCTION_70_0();
  v238 = sub_1D5614898();
  v48 = OUTLINED_FUNCTION_4(v238);
  v237 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v52);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v53 = OUTLINED_FUNCTION_4(v236);
  v235 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v58);
  v59 = sub_1D5610588();
  v60 = OUTLINED_FUNCTION_4(v59);
  v252 = v61;
  v253 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  v251 = v64;
  OUTLINED_FUNCTION_70_0();
  v233 = sub_1D560EEA8();
  v65 = OUTLINED_FUNCTION_4(v233);
  v232 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v69);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  v70 = OUTLINED_FUNCTION_4(v231);
  v230 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v75);
  v76 = sub_1D560D068();
  v77 = OUTLINED_FUNCTION_4(v76);
  v249 = v78;
  v250 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  v248 = v81;
  OUTLINED_FUNCTION_70_0();
  v228 = sub_1D5613EF8();
  v82 = OUTLINED_FUNCTION_4(v228);
  v226 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v86);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  v87 = OUTLINED_FUNCTION_4(v257);
  v225 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v92);
  v93 = sub_1D560F7A8();
  v94 = OUTLINED_FUNCTION_4(v93);
  v246 = v95;
  v247 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v98);
  v263 = v26;
  v99 = *(v26 - 8);
  v100 = v99[8];
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  v259 = v102;
  OUTLINED_FUNCTION_70_0();
  v222 = sub_1D5613AF8();
  v103 = OUTLINED_FUNCTION_4(v222);
  v221[2] = v104;
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v107);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v108 = OUTLINED_FUNCTION_4(v244);
  v221[0] = v109;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_59_0();
  v114 = v112 - v113;
  MEMORY[0x1EEE9AC00](v115);
  v117 = v221 - v116;
  v118 = sub_1D560F308();
  v119 = OUTLINED_FUNCTION_4(v118);
  v243 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v123 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v124 = OUTLINED_FUNCTION_14(v123);
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_59_0();
  v129 = v127 - v128;
  MEMORY[0x1EEE9AC00](v130);
  v132 = v221 - v131;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  v265 = v29;
  sub_1D5610648();
  OUTLINED_FUNCTION_0_205();
  v260 = v132;
  sub_1D537F56C(v132, v129, v134);
  v135 = (v99 + 2);
  v136 = (v99 + 1);
  HIDWORD(v258) = swift_getEnumCaseMultiPayload();
  switch(HIDWORD(v258))
  {
    case 1:
      (*(v246 + 32))(v245, v129, v247);
      OUTLINED_FUNCTION_60_25();
      sub_1D537FB0C(v207, v208);
      v209 = v224;
      OUTLINED_FUNCTION_67_31();
      v210 = v225;
      (*(v225 + 16))(v223, v209, v257);
      v211 = *v135;
      OUTLINED_FUNCTION_69_30();
      v213(v212);
      OUTLINED_FUNCTION_186(&v251);
      OUTLINED_FUNCTION_118_12();
      sub_1D5613F08();
      v214 = *v136;
      v215 = OUTLINED_FUNCTION_159();
      v216(v215);
      v217 = *(*(v133 - 1) + 1);
      v218 = OUTLINED_FUNCTION_100_12();
      v219(v218);
      (*(v210 + 8))(v209, v257);
      (*(v246 + 8))(v245, v247);
      sub_1D5378268(v260);
      v150 = OUTLINED_FUNCTION_17_76(&v252);
      v152 = &v254;
      break;
    case 2:
      v171 = OUTLINED_FUNCTION_95_15(v249);
      v172(v171);
      OUTLINED_FUNCTION_62_29();
      sub_1D537FB0C(v173, v174);
      v175 = v229;
      OUTLINED_FUNCTION_67_31();
      v257 = v133 - 1;
      OUTLINED_FUNCTION_56_30(&v256);
      v177 = v231;
      (*(v176 + 16))(v227, v175, v231);
      v178 = *v135;
      OUTLINED_FUNCTION_69_30();
      v180(v179);
      OUTLINED_FUNCTION_186(&v258);
      OUTLINED_FUNCTION_118_12();
      sub_1D560EEB8();
      v181 = v99[1];
      v182 = OUTLINED_FUNCTION_159();
      v183(v182);
      OUTLINED_FUNCTION_117_12();
      v185 = *(v184 + 8);
      v186 = OUTLINED_FUNCTION_100_12();
      v187(v186);
      (*v133)(v175, v177);
      (*(v249 + 8))(v248, v250);
      sub_1D5378268(v260);
      v150 = OUTLINED_FUNCTION_17_76(&v259);
      v152 = v261;
      break;
    case 3:
      v188 = OUTLINED_FUNCTION_95_15(v252);
      v189(v188);
      OUTLINED_FUNCTION_61_31();
      sub_1D537FB0C(v190, v191);
      v192 = v234;
      OUTLINED_FUNCTION_67_31();
      v193 = v235;
      v194 = *(v235 + 16);
      v257 = v133 - 1;
      OUTLINED_FUNCTION_151();
      v196(v195);
      v197 = *v135;
      OUTLINED_FUNCTION_69_30();
      v199(v198);
      OUTLINED_FUNCTION_186(&v264);
      OUTLINED_FUNCTION_118_12();
      sub_1D56148A8();
      v200 = v99[1];
      v201 = OUTLINED_FUNCTION_159();
      v202(v201);
      OUTLINED_FUNCTION_117_12();
      v204 = *(v203 + 8);
      v205 = OUTLINED_FUNCTION_100_12();
      v206(v205);
      (*(v193 + 8))(v192, v114);
      (*(v252 + 8))(v251, v253);
      sub_1D5378268(v260);
      v150 = OUTLINED_FUNCTION_17_76(&v265);
      v152 = &a9;
      break;
    case 4:
      v153 = OUTLINED_FUNCTION_95_15(v255);
      v154(v153);
      OUTLINED_FUNCTION_63_21();
      sub_1D537FB0C(v155, v156);
      v257 = v133 - 1;
      OUTLINED_FUNCTION_56_30(&a10);
      OUTLINED_FUNCTION_67_31();
      v157 = v239;
      v158 = *(v239 + 16);
      OUTLINED_FUNCTION_151();
      v160(v159);
      v161 = *v135;
      OUTLINED_FUNCTION_69_30();
      v163(v162);
      OUTLINED_FUNCTION_186(&a13);
      OUTLINED_FUNCTION_118_12();
      sub_1D5613848();
      v164 = *v136;
      v165 = OUTLINED_FUNCTION_159();
      v166(v165);
      OUTLINED_FUNCTION_117_12();
      v168 = *(v167 + 8);
      v169 = OUTLINED_FUNCTION_100_12();
      v170(v169);
      (*(v157 + 8))((v133 - 1), v114);
      (*(v255 + 8))(v254, v256);
      sub_1D5378268(v260);
      v150 = OUTLINED_FUNCTION_17_76(&a14);
      v152 = &a15;
      break;
    default:
      v137 = *(v243 + 32);
      OUTLINED_FUNCTION_2_59();
      v139(v138);
      OUTLINED_FUNCTION_64_26();
      sub_1D537FB0C(v140, v141);
      v257 = v133 - 1;
      sub_1D5610598();
      v256 = v118;
      OUTLINED_FUNCTION_172(&v244);
      (*(v142 + 16))(v114, v117, v244);
      v143 = v262;
      v144 = v263;
      (*v135)(v259, v262, v263);
      OUTLINED_FUNCTION_186(&v245);
      sub_1D5613B08();
      (*v136)(v143, v144);
      OUTLINED_FUNCTION_117_12();
      v146 = *(v145 + 8);
      v147 = OUTLINED_FUNCTION_100_12();
      v148(v147);
      (*(v118 + 8))(v117, v244);
      OUTLINED_FUNCTION_136(&a16);
      v149(v20, v256);
      sub_1D5378268(v260);
      v150 = OUTLINED_FUNCTION_17_76(&v246);
      v152 = &v247;
      break;
  }

  v220 = *(v152 - 32);
  v151(v150);
  type metadata accessor for MusicPin.Item();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_46();
}

void MusicPin.Item.convertToLegacyModelCodableResource<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v24;
  a20 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v27 = OUTLINED_FUNCTION_4(v26);
  v136 = v28;
  v137 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_64(v32);
  v33 = sub_1D5613838();
  v34 = OUTLINED_FUNCTION_4(v33);
  v133 = v35;
  v134 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v132 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v40 = OUTLINED_FUNCTION_4(v39);
  v130 = v41;
  v131 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v129 = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D5614898();
  v47 = OUTLINED_FUNCTION_4(v46);
  v128 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_97_14(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  v53 = OUTLINED_FUNCTION_4(v52);
  v125 = v54;
  v126 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  v124 = v58;
  OUTLINED_FUNCTION_70_0();
  v123 = sub_1D560EEA8();
  v59 = OUTLINED_FUNCTION_4(v123);
  v122 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v63);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  OUTLINED_FUNCTION_4(v120);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_32_33();
  v119 = sub_1D5613EF8();
  v67 = OUTLINED_FUNCTION_4(v119);
  v118 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  v138 = type metadata accessor for LegacyModelCodableMusicPinItem();
  v71 = OUTLINED_FUNCTION_14(v138);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5();
  v76 = v75 - v74;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_4(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_18_3();
  v81 = sub_1D5613AF8();
  v82 = OUTLINED_FUNCTION_4(v81);
  v84 = v83;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5();
  v89 = v88 - v87;
  v90 = type metadata accessor for MusicPin.Item();
  v91 = OUTLINED_FUNCTION_14(v90);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_23_7();
  sub_1D537F56C(v20, v20, type metadata accessor for MusicPin.Item);
  OUTLINED_FUNCTION_159();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_11_18();
      OUTLINED_FUNCTION_151();
      v114(v113);
      OUTLINED_FUNCTION_23_52();
      sub_1D5613E78();
      sub_1D5610648();
      OUTLINED_FUNCTION_75_21();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_115();
      sub_1D537FB0C(v115, v116);
      OUTLINED_FUNCTION_56_31();
      OUTLINED_FUNCTION_2_59();
      sub_1D5610598();
      sub_1D5378268(v76);
      OUTLINED_FUNCTION_136(&a14);
      v117(v23, v120);
      (*(v118 + 8))(v21, v77);
      break;
    case 2u:
      v100 = v122;
      OUTLINED_FUNCTION_11_18();
      v101 = v121;
      OUTLINED_FUNCTION_151();
      v103(v102);
      v104 = v124;
      OUTLINED_FUNCTION_23_52();
      sub_1D560EDF8();
      v105 = v126;
      sub_1D5610648();
      OUTLINED_FUNCTION_75_21();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_115();
      sub_1D537FB0C(v106, v107);
      OUTLINED_FUNCTION_56_31();
      OUTLINED_FUNCTION_2_59();
      sub_1D5610598();
      sub_1D5378268(v76);
      v108 = v125;
      goto LABEL_6;
    case 3u:
      v101 = v127;
      v100 = v128;
      OUTLINED_FUNCTION_11_18();
      OUTLINED_FUNCTION_116_14();
      v110(v109);
      v104 = v129;
      OUTLINED_FUNCTION_23_52();
      sub_1D5614638();
      v105 = v131;
      sub_1D5610648();
      OUTLINED_FUNCTION_75_21();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_115();
      sub_1D537FB0C(v111, v112);
      OUTLINED_FUNCTION_56_31();
      OUTLINED_FUNCTION_2_59();
      sub_1D5610598();
      sub_1D5378268(v76);
      v108 = v130;
LABEL_6:
      (*(v108 + 8))(v104, v105);
      (*(v100 + 8))(v101, v77);
      break;
    case 4u:
      OUTLINED_FUNCTION_40_3();
      v97(v132, v20, v134);
      OUTLINED_FUNCTION_23_52();
      sub_1D5613738();
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_115();
      sub_1D537FB0C(v98, v99);
      OUTLINED_FUNCTION_56_31();
      sub_1D5610598();
      sub_1D5378268(v76);
      (*(v136 + 8))(v135, v137);
      (*(v133 + 8))(v132, v134);
      break;
    default:
      (*(v84 + 32))(v89, v20, v81);
      OUTLINED_FUNCTION_23_52();
      sub_1D56139D8();
      sub_1D5610648();
      OUTLINED_FUNCTION_75_21();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_115();
      sub_1D537FB0C(v94, v95);
      OUTLINED_FUNCTION_56_31();
      sub_1D5610598();
      sub_1D5378268(v76);
      OUTLINED_FUNCTION_136(&a11);
      v96(v22, v77);
      (*(v84 + 8))(v89, v81);
      break;
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D537F56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1D537F5D0()
{
  result = qword_1EC7F4DF0;
  if (!qword_1EC7F4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4DF0);
  }

  return result;
}

unint64_t sub_1D537F628()
{
  result = qword_1EC7F4DF8;
  if (!qword_1EC7F4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4DF8);
  }

  return result;
}

unint64_t sub_1D537F680()
{
  result = qword_1EC7F4E00;
  if (!qword_1EC7F4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E00);
  }

  return result;
}

unint64_t sub_1D537F6D8()
{
  result = qword_1EC7F4E08;
  if (!qword_1EC7F4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E08);
  }

  return result;
}

unint64_t sub_1D537F808()
{
  result = qword_1EC7F4E20;
  if (!qword_1EC7F4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E20);
  }

  return result;
}

unint64_t sub_1D537F860()
{
  result = qword_1EC7F4E28;
  if (!qword_1EC7F4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E28);
  }

  return result;
}

unint64_t sub_1D537F8B8()
{
  result = qword_1EC7F4E30;
  if (!qword_1EC7F4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E30);
  }

  return result;
}

unint64_t sub_1D537F910()
{
  result = qword_1EC7F4E38;
  if (!qword_1EC7F4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E38);
  }

  return result;
}

unint64_t sub_1D537F968()
{
  result = qword_1EC7F4E40;
  if (!qword_1EC7F4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E40);
  }

  return result;
}

unint64_t sub_1D537F9C0()
{
  result = qword_1EC7F4E48;
  if (!qword_1EC7F4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E48);
  }

  return result;
}

unint64_t sub_1D537FA18()
{
  result = qword_1EC7F4E50;
  if (!qword_1EC7F4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E50);
  }

  return result;
}

unint64_t sub_1D537FA70()
{
  result = qword_1EC7F4E58;
  if (!qword_1EC7F4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E58);
  }

  return result;
}

uint64_t sub_1D537FB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D537FB5C()
{
  result = sub_1D560F308();
  if (v1 <= 0x3F)
  {
    result = sub_1D560F7A8();
    if (v2 <= 0x3F)
    {
      result = sub_1D560D068();
      if (v3 <= 0x3F)
      {
        result = sub_1D5610588();
        if (v4 <= 0x3F)
        {
          result = sub_1D5614A18();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

_BYTE *sub_1D537FC4C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D537FD3C()
{
  result = qword_1EC7F4E78;
  if (!qword_1EC7F4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E78);
  }

  return result;
}

unint64_t sub_1D537FD94()
{
  result = qword_1EC7F4E80;
  if (!qword_1EC7F4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E80);
  }

  return result;
}

unint64_t sub_1D537FDEC()
{
  result = qword_1EC7F4E88;
  if (!qword_1EC7F4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E88);
  }

  return result;
}

unint64_t sub_1D537FE44()
{
  result = qword_1EC7F4E90;
  if (!qword_1EC7F4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E90);
  }

  return result;
}

unint64_t sub_1D537FE9C()
{
  result = qword_1EC7F4E98;
  if (!qword_1EC7F4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4E98);
  }

  return result;
}

unint64_t sub_1D537FEF4()
{
  result = qword_1EC7F4EA0;
  if (!qword_1EC7F4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4EA0);
  }

  return result;
}

unint64_t sub_1D537FF4C()
{
  result = qword_1EC7F4EA8;
  if (!qword_1EC7F4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4EA8);
  }

  return result;
}

unint64_t sub_1D537FFA4()
{
  result = qword_1EC7F4EB0;
  if (!qword_1EC7F4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4EB0);
  }

  return result;
}

unint64_t sub_1D537FFFC()
{
  result = qword_1EC7F4EB8;
  if (!qword_1EC7F4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4EB8);
  }

  return result;
}

unint64_t sub_1D5380054()
{
  result = qword_1EC7F4EC0;
  if (!qword_1EC7F4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4EC0);
  }

  return result;
}

unint64_t sub_1D53800AC()
{
  result = qword_1EC7F4EC8;
  if (!qword_1EC7F4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4EC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_67_31()
{
  v2 = *(v0 - 96);

  return sub_1D5610598();
}

void OUTLINED_FUNCTION_70_23(uint64_t a1, uint64_t a2)
{
  *(v4 - 72) = v3;
  *(v4 - 104) = v2;
  *(v4 - 120) = a2;
}

uint64_t OUTLINED_FUNCTION_72_25()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 72);

  return sub_1D5614C48();
}

uint64_t OUTLINED_FUNCTION_74_24()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 72);

  return sub_1D5614C48();
}

uint64_t OUTLINED_FUNCTION_75_21()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_91_17()
{
  v2 = *(v0 - 152);

  return sub_1D4E628D4(v2, v0 - 128);
}

void OUTLINED_FUNCTION_106_12()
{
  v1 = *(v0 - 192);
  v2 = *(v0 - 368);
  v3 = *(v0 - 344);
}

uint64_t OUTLINED_FUNCTION_110_11()
{

  return sub_1D5615298();
}

uint64_t OUTLINED_FUNCTION_111_11()
{
  v2 = *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_113_11()
{
  v2 = *(v0 - 160);

  return sub_1D4E628D4(v2, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_114_7()
{
  v2 = *(v0 - 136);

  return sub_1D4E628D4(v2, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_115_10()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_124_10()
{
}

uint64_t OUTLINED_FUNCTION_125_11()
{
  v2 = *(v0 - 72);

  return sub_1D5614C48();
}

uint64_t static MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = *a1 == *a2 && v3 == v9;
    if (!v15 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v12)
    {
      return 0;
    }

    v16 = v4 == v10 && v6 == v12;
    if (!v16 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }

    if (v5 != v11 || v7 != v13)
    {
      OUTLINED_FUNCTION_71();
      if ((sub_1D5616168() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_28:
    if (v8 == 2)
    {
      if (v14 != 2)
      {
        return 0;
      }
    }

    else if (v14 == 2 || ((v14 ^ v8) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  return 0;
}

unint64_t MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.debugDescription.getter()
{
  v5 = OUTLINED_FUNCTION_4_120();
  if (v6)
  {
    v13 = 0x656D616E20202020;
    v14 = 0xEA0000000000203ALL;
    MEMORY[0x1DA6EAC70](v5);
    MEMORY[0x1DA6EAC70](0x656D616E20202020, 0xEA0000000000203ALL);
  }

  if (v3)
  {
    OUTLINED_FUNCTION_0_206();
    if (v7)
    {
      OUTLINED_FUNCTION_6_114();
    }

    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_7_116();
    MEMORY[0x1DA6EAC70](v2, v3);
    MEMORY[0x1DA6EAC70](v13, v14);
  }

  if (v1)
  {
    OUTLINED_FUNCTION_0_206();
    if (v8)
    {
      OUTLINED_FUNCTION_6_114();
    }

    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_7_116();
    MEMORY[0x1DA6EAC70](v0, v1);
    OUTLINED_FUNCTION_3_158();
  }

  if (v4 != 2)
  {
    OUTLINED_FUNCTION_0_206();
    if (v9)
    {
      OUTLINED_FUNCTION_6_114();
    }

    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    if (v4)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v4)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v10, v11);

    OUTLINED_FUNCTION_3_158();
  }

  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1DA6EAC70]();

  MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.description.getter()
{
  v5 = OUTLINED_FUNCTION_4_120();
  if (v6)
  {
    v14 = 0x203A656D616ELL;
    MEMORY[0x1DA6EAC70](v5);
    MEMORY[0x1DA6EAC70](0x203A656D616ELL, 0xE600000000000000);
  }

  if (v3)
  {
    OUTLINED_FUNCTION_0_206();
    if (v7)
    {
      OUTLINED_FUNCTION_5_116();
    }

    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v14 = 0xD000000000000011;
    v15 = v8;
    MEMORY[0x1DA6EAC70](v2, v3);
    MEMORY[0x1DA6EAC70](0xD000000000000011, v15);
  }

  if (v1)
  {
    OUTLINED_FUNCTION_0_206();
    if (v9)
    {
      OUTLINED_FUNCTION_5_116();
    }

    OUTLINED_FUNCTION_2_137();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_7_116();
    MEMORY[0x1DA6EAC70](v0, v1);
    OUTLINED_FUNCTION_3_158();
  }

  if (v4 != 2)
  {
    OUTLINED_FUNCTION_0_206();
    if (v10)
    {
      OUTLINED_FUNCTION_5_116();
    }

    v14 = 0x63696C6275507369;
    if (v4)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v4)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v11, v12);

    OUTLINED_FUNCTION_3_158();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_7_116();
  MEMORY[0x1DA6EAC70]();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v14;
}

uint64_t MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.descriptionText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.coverArtworkRecipe.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v5 = *(v0 + 48);
  if (v0[1])
  {
    v6 = *v0;
    sub_1D56162F8();
    sub_1D5614E28();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D56162F8();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D56162F8();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D56162F8();
  sub_1D5614E28();
  if (v4)
  {
LABEL_4:
    sub_1D56162F8();
    sub_1D5614E28();
    goto LABEL_8;
  }

LABEL_7:
  sub_1D56162F8();
LABEL_8:
  if (v5 != 2)
  {
    sub_1D56162F8();
  }

  return sub_1D56162F8();
}

uint64_t MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5380B34()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Delta.UpdatedAttributes.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D5380B90()
{
  result = qword_1EC7F4ED0;
  if (!qword_1EC7F4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4ED0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D5380C08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5380C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformMusicVideo()
{
  result = qword_1EDD5CB80;
  if (!qword_1EDD5CB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5380D50()
{
  sub_1D4E518A0(319, &qword_1EDD53A08);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D511651C(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    v1 = v9;
    if (v10 > 0x3F)
    {
      return v1;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    v1 = v11;
    if (v12 > 0x3F)
    {
      return v1;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    v1 = v13;
    if (v14 > 0x3F)
    {
      return v1;
    }

    sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
    v1 = v15;
    if (v16 > 0x3F)
    {
      return v1;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
    v1 = v17;
    if (v18 > 0x3F)
    {
      return v1;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550);
    v1 = v19;
    if (v20 > 0x3F)
    {
      return v1;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD60, &qword_1EC7EDD68, qword_1D56285B0);
    if (v21 > 0x3F)
    {
      return v7;
    }

    sub_1D4E518A0(319, &qword_1EDD52708);
    v1 = v22;
    if (v23 <= 0x3F)
    {
      sub_1D511651C(319, &qword_1EDD56980, type metadata accessor for StorePlatformUber);
      v1 = v24;
      if (v25 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1D53810C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v98 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v104 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v22 = v20 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v92 - v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_75();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v92 - v28;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4EE0, &qword_1D5659828);
  OUTLINED_FUNCTION_4(v102);
  v100 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_68();
  v106 = type metadata accessor for StorePlatformMusicVideo();
  v34 = OUTLINED_FUNCTION_14(v106);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v105 = (v38 - v37);
  v39 = a1[3];
  v40 = a1[4];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1D5384EA8();
  v101 = v2;
  sub_1D5616398();
  if (v3)
  {
    v104 = v3;
    LOBYTE(v4) = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    LODWORD(v47) = 0;
    LODWORD(v48) = 0;
    LODWORD(v94) = 0;
    OUTLINED_FUNCTION_4_121();
  }

  else
  {
    v41 = v29;
    v96 = v22;
    v97 = v4;
    v95 = v26;
    v108 = 0;
    v42 = sub_1D4F89C9C();
    v45 = v101;
    v46 = v102;
    sub_1D5615F78();
    v61 = v105;
    *v105 = v107;
    OUTLINED_FUNCTION_33_7(1);
    *(v61 + 2) = sub_1D5615F38();
    *(v61 + 3) = v62;
    v63 = sub_1D560C0A8();
    LOBYTE(v107) = 2;
    OUTLINED_FUNCTION_0_207();
    v65 = sub_1D53850BC(v64);
    sub_1D5615F78();
    v92[1] = v65;
    v93 = v63;
    v94 = v42;
    v48 = v106;
    sub_1D4F39A1C(v41, v61 + v106[6], &unk_1EC7E9CA8, &unk_1D561D1D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    v43 = v61;
    LOBYTE(v107) = 3;
    sub_1D5384EFC(&qword_1EDD531B8);
    v47 = v104;
    OUTLINED_FUNCTION_33_50();
    sub_1D5615F78();
    sub_1D4F39A1C(v47, v61 + v48[7], &qword_1EC7EB5B8, &unk_1D56206A0);
    v108 = 4;
    sub_1D5615F78();
    v44 = v100;
    *(v61 + v48[8]) = v107;
    OUTLINED_FUNCTION_33_7(5);
    v66 = sub_1D5615F38();
    v67 = (v61 + v48[9]);
    *v67 = v66;
    v67[1] = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v108 = 6;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_33_50();
    sub_1D5615F78();
    *(v61 + v48[10]) = v107;
    OUTLINED_FUNCTION_33_7(7);
    v69 = sub_1D5615F38();
    v70 = (v61 + v48[11]);
    *v70 = v69;
    v70[1] = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v108 = 8;
    sub_1D4FCE3FC();
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_33_50();
    sub_1D5615F78();
    v104 = 0;
    *(v105 + v106[12]) = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v108 = 9;
    sub_1D4FCE5FC();
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_33_50();
    v72 = v104;
    sub_1D5615F78();
    v104 = v72;
    if (!v72)
    {
      *(v105 + v106[13]) = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
      v108 = 10;
      sub_1D4F88BF4(&qword_1EDD52778);
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_32_51();
      v104 = 0;
      *(v105 + v106[14]) = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
      v108 = 11;
      sub_1D500E5CC();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_32_51();
      v104 = 0;
      *(v105 + v106[15]) = v107;
      v108 = 12;
      sub_1D5615FD8();
      v104 = 0;
      v75 = *(&v107 + 1);
      v76 = (v105 + v106[16]);
      *v76 = v107;
      v76[1] = v75;
      LOBYTE(v107) = 13;
      OUTLINED_FUNCTION_42_42();
      v104 = 0;
      sub_1D4F39A1C(v97, v105 + v106[17], &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_20_76(14);
      v77 = sub_1D5615F48();
      v104 = 0;
      *(v105 + v106[18]) = v77;
      OUTLINED_FUNCTION_20_76(15);
      v78 = sub_1D5615F38();
      v104 = 0;
      v79 = (v105 + v106[19]);
      *v79 = v78;
      v79[1] = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD68, qword_1D56285B0);
      v108 = 16;
      sub_1D500E680();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_32_51();
      v104 = 0;
      *(v105 + v106[20]) = v107;
      OUTLINED_FUNCTION_33_7(17);
      v81 = sub_1D5615F38();
      v104 = 0;
      v82 = (v105 + v106[21]);
      *v82 = v81;
      v82[1] = v83;
      LOBYTE(v107) = 18;
      OUTLINED_FUNCTION_42_42();
      v104 = 0;
      sub_1D4F39A1C(v95, v105 + v106[22], &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_20_76(19);
      v84 = sub_1D5615F48();
      v104 = 0;
      *(v105 + v106[23]) = v84;
      OUTLINED_FUNCTION_20_76(20);
      v85 = sub_1D5615F68();
      v104 = 0;
      v86 = v105 + v106[24];
      *v86 = v85;
      v86[8] = v87 & 1;
      type metadata accessor for StorePlatformUber();
      LOBYTE(v107) = 21;
      OUTLINED_FUNCTION_29_52();
      sub_1D53850BC(v88);
      OUTLINED_FUNCTION_32_51();
      v104 = 0;
      sub_1D4F39A1C(v98, v105 + v106[25], &qword_1EC7EFBD0, &qword_1D5634650);
      LOBYTE(v107) = 22;
      OUTLINED_FUNCTION_42_42();
      v104 = 0;
      v89 = OUTLINED_FUNCTION_12_82();
      v90(v89);
      v91 = v105;
      sub_1D4F39A1C(v96, v105 + v106[26], &unk_1EC7E9CA8, &unk_1D561D1D0);
      sub_1D5384FC0(v91, v99, type metadata accessor for StorePlatformMusicVideo);
      __swift_destroy_boxed_opaque_existential_1(v103);
      return sub_1D5385064(v91, type metadata accessor for StorePlatformMusicVideo);
    }

    v73 = OUTLINED_FUNCTION_12_82();
    v74(v73);
    OUTLINED_FUNCTION_4_121();
    OUTLINED_FUNCTION_1_153();
  }

  v49 = v105;
  result = __swift_destroy_boxed_opaque_existential_1(v103);
  if (v4)
  {
    v51 = v48;
    LODWORD(v103) = 0;
    LODWORD(v93) = 0;
    v52 = *(v49 + 1);

    v53 = v106;
    if (v43)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v51 = v48;
    LODWORD(v93) = 0;
    LODWORD(v103) = 0;
    v53 = v106;
    if (v43)
    {
LABEL_6:
      v54 = *(v49 + 3);

      if ((v44 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_25:
      result = sub_1D4E50004(v49 + v53[6], &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_26;
    }
  }

  if (v44)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (!v45)
  {
    if (!v46)
    {
      goto LABEL_28;
    }

LABEL_9:
    result = OUTLINED_FUNCTION_46_4(v53[9]);
    if (v47)
    {
      goto LABEL_29;
    }

LABEL_10:
    if (!v51)
    {
      goto LABEL_30;
    }

LABEL_11:
    result = OUTLINED_FUNCTION_46_4(v53[11]);
    if (v94)
    {
      goto LABEL_31;
    }

LABEL_12:
    if (!v95)
    {
      goto LABEL_32;
    }

LABEL_13:
    v55 = *(v49 + v53[13]);

    if (v96)
    {
      goto LABEL_33;
    }

LABEL_14:
    if (!v97)
    {
      goto LABEL_34;
    }

LABEL_15:
    v56 = *(v49 + v53[15]);

    if (v98)
    {
      goto LABEL_35;
    }

LABEL_16:
    if (!v99)
    {
      goto LABEL_36;
    }

LABEL_17:
    result = sub_1D4E50004(v49 + v53[17], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if (v100)
    {
      goto LABEL_37;
    }

LABEL_18:
    if (!v101)
    {
      goto LABEL_38;
    }

LABEL_19:
    v57 = *(v49 + v53[20]);

    if (v102)
    {
      goto LABEL_39;
    }

LABEL_20:
    if (!v103)
    {
      goto LABEL_40;
    }

    goto LABEL_21;
  }

  result = OUTLINED_FUNCTION_46_4(v53[8]);
  if (v46)
  {
    goto LABEL_9;
  }

LABEL_28:
  if (!v47)
  {
    goto LABEL_10;
  }

LABEL_29:
  v58 = *(v49 + v53[10]);

  if (v51)
  {
    goto LABEL_11;
  }

LABEL_30:
  if (!v94)
  {
    goto LABEL_12;
  }

LABEL_31:
  v59 = *(v49 + v53[12]);

  if (v95)
  {
    goto LABEL_13;
  }

LABEL_32:
  if (!v96)
  {
    goto LABEL_14;
  }

LABEL_33:
  v60 = *(v49 + v53[14]);

  if (v97)
  {
    goto LABEL_15;
  }

LABEL_34:
  if (!v98)
  {
    goto LABEL_16;
  }

LABEL_35:
  result = OUTLINED_FUNCTION_46_4(v53[16]);
  if (v99)
  {
    goto LABEL_17;
  }

LABEL_36:
  if (!v100)
  {
    goto LABEL_18;
  }

LABEL_37:
  result = OUTLINED_FUNCTION_46_4(v53[19]);
  if (v101)
  {
    goto LABEL_19;
  }

LABEL_38:
  if (!v102)
  {
    goto LABEL_20;
  }

LABEL_39:
  result = OUTLINED_FUNCTION_46_4(v53[21]);
  if ((v103 & 1) == 0)
  {
LABEL_40:
    if (!v93)
    {
      return result;
    }

    return sub_1D4E50004(v49 + v53[25], &qword_1EC7EFBD0, &qword_1D5634650);
  }

LABEL_21:
  result = sub_1D4E50004(v49 + v53[22], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v93 & 1) == 0)
  {
    return result;
  }

  return sub_1D4E50004(v49 + v53[25], &qword_1EC7EFBD0, &qword_1D5634650);
}

uint64_t sub_1D5381FAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4EF0, &qword_1D5659830);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5384EA8();
  sub_1D56163D8();
  v38 = *v3;
  v39 = 0;
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_19_39();
  OUTLINED_FUNCTION_29_0();
  sub_1D5616068();
  if (!v2)
  {
    v14 = *(v3 + 2);
    v15 = *(v3 + 3);
    OUTLINED_FUNCTION_7(1);
    sub_1D5616028();
    v37 = type metadata accessor for StorePlatformMusicVideo();
    v16 = v37[6];
    LOBYTE(v38) = 2;
    v17 = sub_1D560C0A8();
    OUTLINED_FUNCTION_0_207();
    v19 = sub_1D53850BC(v18);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v36[1] = v19;
    v36[2] = v17;
    v20 = v37;
    v21 = v37[7];
    LOBYTE(v38) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D5384EFC(&qword_1EC7EC350);
    OUTLINED_FUNCTION_21_0();
    v38 = *(v3 + v20[8]);
    v39 = 4;
    OUTLINED_FUNCTION_19_39();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_35_5(v20[9]);
    OUTLINED_FUNCTION_7(5);
    sub_1D5616028();
    OUTLINED_FUNCTION_61_1(v20[10]);
    v39 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35_5(v20[11]);
    OUTLINED_FUNCTION_7(7);
    sub_1D5616028();
    OUTLINED_FUNCTION_61_1(v20[12]);
    v39 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4FC7B20();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v20[13]);
    v39 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4FC7D20();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v20[14]);
    v39 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v37[15]);
    v39 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
    sub_1D500E7A4();
    OUTLINED_FUNCTION_8_2();
    v22 = (v3 + v37[16]);
    v24 = *v22;
    v23 = v22[1];
    *&v38 = v24;
    *(&v38 + 1) = v23;
    v39 = 12;
    OUTLINED_FUNCTION_19_39();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    v25 = v37[17];
    LOBYTE(v38) = 13;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v26 = *(v3 + v37[18]);
    LOBYTE(v38) = 14;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v37[19]);
    OUTLINED_FUNCTION_7(15);
    sub_1D5616028();
    OUTLINED_FUNCTION_61_1(v37[20]);
    v39 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD68, qword_1D56285B0);
    sub_1D500E858();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35_5(v37[21]);
    OUTLINED_FUNCTION_7(17);
    sub_1D5616028();
    v27 = v37[22];
    LOBYTE(v38) = 18;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v28 = *(v3 + v37[23]);
    LOBYTE(v38) = 19;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v29 = (v3 + v37[24]);
    v30 = *v29;
    v31 = *(v29 + 8);
    OUTLINED_FUNCTION_7(20);
    sub_1D5616058();
    v32 = v37[25];
    LOBYTE(v38) = 21;
    type metadata accessor for StorePlatformUber();
    OUTLINED_FUNCTION_29_52();
    sub_1D53850BC(v33);
    OUTLINED_FUNCTION_21_0();
    v34 = v37[26];
    LOBYTE(v38) = 22;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v12, v5);
}

BOOL sub_1D5382590(void *a1, void *a2)
{
  v294 = type metadata accessor for StorePlatformUber();
  v5 = OUTLINED_FUNCTION_14(v294);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v293 = v15;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14(v296);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v295 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v281 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v297 = v32;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v299);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v300 = v36;
  v37 = sub_1D560C0A8();
  v38 = OUTLINED_FUNCTION_4(v37);
  v302 = v39;
  v303 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v298 = v43 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v45 = OUTLINED_FUNCTION_22(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_59_0();
  v292 = v48 - v49;
  OUTLINED_FUNCTION_23();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v281 - v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_9_75();
  MEMORY[0x1EEE9AC00](v54);
  v301 = &v281 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v57 = OUTLINED_FUNCTION_14(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_59_0();
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = &v281 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v281 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v69 = a1;
  v71 = &v281 - v70;
  v72 = a2;
  v73 = v69[1];
  v74 = a2[1];
  if (v73)
  {
    if (!v74)
    {
      return 0;
    }

    v75 = *v69 == *a2 && v73 == v74;
    if (!v75)
    {
      v288 = v27;
      v290 = v22;
      v291 = v20;
      v76 = v66;
      v77 = v2;
      v78 = v63;
      v79 = v53;
      v80 = v68;
      v81 = v67;
      v82 = v72;
      v83 = v10;
      v84 = v69;
      v85 = sub_1D5616168();
      v69 = v84;
      v10 = v83;
      v72 = v82;
      v67 = v81;
      v68 = v80;
      v53 = v79;
      v63 = v78;
      v2 = v77;
      v66 = v76;
      v22 = v290;
      v20 = v291;
      v27 = v288;
      if ((v85 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v74)
  {
    return 0;
  }

  v86 = v69[3];
  v87 = v72[3];
  if (v86)
  {
    if (!v87)
    {
      return 0;
    }

    v285 = v67;
    v286 = v68;
    v287 = v69;
    v88 = v72;
    v89 = v69[2] == v72[2] && v86 == v87;
    if (!v89 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v286 = v68;
    v287 = v69;
    v88 = v72;
    v285 = v67;
    if (v87)
    {
      return 0;
    }
  }

  v288 = v27;
  v290 = v22;
  v291 = v20;
  v283 = v63;
  v284 = v2;
  v282 = v53;
  v281 = v10;
  v90 = type metadata accessor for StorePlatformMusicVideo();
  v289 = v88;
  v91 = v303;
  v92 = v90[6];
  v93 = v286;
  v94 = *(v286 + 48);
  sub_1D4F39AB0(v287 + v92, v71, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v95 = v289 + v92;
  v96 = v289;
  sub_1D4F39AB0(v95, &v71[v94], &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v71, 1, v91);
  if (v75)
  {
    OUTLINED_FUNCTION_57(&v71[v94], 1, v91);
    if (v75)
    {
      sub_1D4E50004(v71, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_29;
    }

LABEL_27:
    v99 = &qword_1EC7E9FB0;
    v100 = &qword_1D562C590;
    v101 = v71;
    goto LABEL_38;
  }

  v97 = v301;
  sub_1D4F39AB0(v71, v301, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(&v71[v94], 1, v91);
  if (v98)
  {
    (*(v302 + 8))(v97, v91);
    goto LABEL_27;
  }

  v102 = v302;
  (*(v302 + 32))(v298, &v71[v94], v91);
  OUTLINED_FUNCTION_0_207();
  sub_1D53850BC(v103);
  v104 = sub_1D5614D18();
  v105 = *(v102 + 8);
  v106 = OUTLINED_FUNCTION_29_12();
  v105(v106);
  (v105)(v97, v91);
  v96 = v289;
  sub_1D4E50004(v71, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v301 = v66;
  v107 = v90[7];
  v108 = v300;
  v109 = *(v299 + 48);
  v110 = v287;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v111, v112, v113, v114);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v115, v116, v117, v118);
  v119 = v291;
  OUTLINED_FUNCTION_57(v108, 1, v291);
  if (v75)
  {
    OUTLINED_FUNCTION_57(v108 + v109, 1, v119);
    if (v75)
    {
      sub_1D4E50004(v108, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_42;
    }

LABEL_37:
    v99 = &qword_1EC7EC330;
    v100 = &qword_1D56222C0;
    v101 = v108;
    goto LABEL_38;
  }

  v120 = v297;
  sub_1D4F39AB0(v108, v297, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v108 + v109, 1, v119);
  if (v121)
  {
    (*(v290 + 8))(v120, v119);
    goto LABEL_37;
  }

  v123 = v290;
  v124 = v108 + v109;
  v125 = v288;
  (*(v290 + 32))(v288, v124, v119);
  sub_1D4F39858();
  OUTLINED_FUNCTION_29_12();
  v126 = v119;
  v127 = sub_1D5614D18();
  v128 = *(v123 + 8);
  v128(v125, v126);
  v128(v120, v126);
  sub_1D4E50004(v300, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v127 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v129 = v90[8];
  OUTLINED_FUNCTION_34_53();
  if (v132)
  {
    if (!v130)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v131);
    v135 = v75 && v133 == v134;
    if (!v135 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v130)
  {
    return 0;
  }

  v136 = v90[9];
  OUTLINED_FUNCTION_34_53();
  if (v139)
  {
    if (!v137)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v138);
    v142 = v75 && v140 == v141;
    if (!v142 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v137)
  {
    return 0;
  }

  v143 = v90[10];
  v144 = *(v110 + v143);
  v145 = *(v96 + v143);
  if (v144)
  {
    if (!v145)
    {
      return 0;
    }

    v146 = *(v96 + v143);

    OUTLINED_FUNCTION_159();
    sub_1D4F2C07C();
    OUTLINED_FUNCTION_70_2();
    if ((v144 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v145)
  {
    return 0;
  }

  v147 = v90[11];
  OUTLINED_FUNCTION_34_53();
  if (v150)
  {
    if (!v148)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v149);
    v153 = v75 && v151 == v152;
    if (!v153 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v148)
  {
    return 0;
  }

  v154 = v90[12];
  v155 = *(v110 + v154);
  v156 = *(v96 + v154);
  if (v155)
  {
    if (!v156)
    {
      return 0;
    }

    v157 = *(v96 + v154);

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v155 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v156)
  {
    return 0;
  }

  v158 = v90[13];
  v159 = *(v110 + v158);
  v160 = *(v96 + v158);
  if (v159)
  {
    if (!v160)
    {
      return 0;
    }

    v161 = v110;
    v162 = *(v96 + v158);

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v159 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v161 = v110;
    if (v160)
    {
      return 0;
    }
  }

  v163 = v93;
  v164 = v296;
  v165 = v90[14];
  v166 = *(v161 + v165);
  v167 = *(v96 + v165);
  if (v166)
  {
    if (!v167 || (sub_1D4EF81E0(v166, v167) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v167)
  {
    return 0;
  }

  OUTLINED_FUNCTION_64_27(v90[15]);
  if (v159)
  {
    if (!v160)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF8BA4();
    OUTLINED_FUNCTION_70_2();
    if ((v159 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v160)
  {
    return 0;
  }

  v168 = v90[16];
  v169 = *(v287 + v168);
  v170 = *(v287 + v168 + 8);
  v171 = (v289 + v168);
  v172 = v169 == *v171 && v170 == v171[1];
  if (!v172 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v173 = v90[17];
  v174 = *(v163 + 48);
  v175 = &unk_1EC7E9CA8;
  v176 = &unk_1D561D1D0;
  OUTLINED_FUNCTION_62_30();
  v177 = v301;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v178, v179, v180, v181);
  OUTLINED_FUNCTION_58_32();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v182, v183, v184, v185);
  OUTLINED_FUNCTION_25_8(v177);
  if (v75)
  {
    OUTLINED_FUNCTION_25_8(v174 + v301);
    if (v75)
    {
      sub_1D4E50004(v301, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_109;
    }

LABEL_107:
    v99 = &qword_1EC7E9FB0;
    v100 = &qword_1D562C590;
    v101 = v301;
    goto LABEL_38;
  }

  v186 = v301;
  sub_1D4F39AB0(v301, v284, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_25_8(v174 + v186);
  if (v187)
  {
    (*(v302 + 8))(v284, v303);
    goto LABEL_107;
  }

  v175 = v301;
  v188 = v303;
  (*(v302 + 32))(v298, v174 + v301, v303);
  OUTLINED_FUNCTION_0_207();
  sub_1D53850BC(v189);
  v190 = v284;
  OUTLINED_FUNCTION_29_12();
  v176 = v188;
  LODWORD(v300) = sub_1D5614D18();
  v191 = OUTLINED_FUNCTION_59_26();
  v174(v191);
  (v174)(v190, v188);
  sub_1D4E50004(v175, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v300 & 1) == 0)
  {
    return 0;
  }

LABEL_109:
  OUTLINED_FUNCTION_50_33(v90[18]);
  if (v75)
  {
    if (v192 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v192 == 2 || ((v192 ^ v193) & 1) != 0)
    {
      return result;
    }
  }

  v194 = v90[19];
  OUTLINED_FUNCTION_45_39();
  if (v197)
  {
    if (!v195)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v196);
    v200 = v75 && v198 == v199;
    if (!v200 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v195)
  {
    return 0;
  }

  OUTLINED_FUNCTION_64_27(v90[20]);
  if (v176)
  {
    if (!v175)
    {
      return 0;
    }

    v201 = OUTLINED_FUNCTION_159();
    sub_1D4EF905C(v201, v202, v203, v204, v205, v206, v207, v208, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292);
    OUTLINED_FUNCTION_70_2();
    if ((v176 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v175)
  {
    return 0;
  }

  v209 = v90[21];
  OUTLINED_FUNCTION_45_39();
  if (v212)
  {
    if (!v210)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v211);
    v215 = v75 && v213 == v214;
    if (!v215 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v210)
  {
    return 0;
  }

  v216 = v90[22];
  v217 = *(v163 + 48);
  OUTLINED_FUNCTION_62_30();
  v218 = v283;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v219, v220, v221, v222);
  OUTLINED_FUNCTION_58_32();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v223, v224, v225, v226);
  OUTLINED_FUNCTION_25_8(v218);
  if (!v75)
  {
    v227 = v283;
    sub_1D4F39AB0(v283, v282, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_25_8(v217 + v227);
    if (!v228)
    {
      v229 = v303;
      v230 = v283;
      (*(v302 + 32))(v298, v217 + v283, v303);
      OUTLINED_FUNCTION_0_207();
      sub_1D53850BC(v231);
      v232 = v282;
      OUTLINED_FUNCTION_29_12();
      LODWORD(v301) = sub_1D5614D18();
      v233 = OUTLINED_FUNCTION_59_26();
      v217(v233);
      (v217)(v232, v229);
      sub_1D4E50004(v230, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v301 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_148;
    }

    (*(v302 + 8))(v282, v303);
LABEL_146:
    v99 = &qword_1EC7E9FB0;
    v100 = &qword_1D562C590;
    v101 = v283;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_25_8(v217 + v283);
  if (!v75)
  {
    goto LABEL_146;
  }

  sub_1D4E50004(v283, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_148:
  OUTLINED_FUNCTION_50_33(v90[23]);
  if (v75)
  {
    if (v234 != 2)
    {
      return 0;
    }

LABEL_154:
    v236 = v90[24];
    v237 = (v287 + v236);
    v238 = *(v287 + v236 + 8);
    v239 = (v289 + v236);
    v240 = *(v289 + v236 + 8);
    if (v238)
    {
      if (!v240)
      {
        return 0;
      }
    }

    else
    {
      if (*v237 != *v239)
      {
        LOBYTE(v240) = 1;
      }

      if (v240)
      {
        return 0;
      }
    }

    v241 = v90[25];
    v242 = *(v164 + 48);
    OUTLINED_FUNCTION_62_30();
    v243 = v295;
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v244, v245, v246, v247);
    OUTLINED_FUNCTION_58_32();
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v248, v249, v250, v251);
    OUTLINED_FUNCTION_57(v243, 1, v294);
    if (v75)
    {
      OUTLINED_FUNCTION_57(v295 + v242, 1, v294);
      if (v75)
      {
        sub_1D4E50004(v295, &qword_1EC7EFBD0, &qword_1D5634650);
LABEL_170:
        v260 = v90[26];
        v261 = *(v163 + 48);
        OUTLINED_FUNCTION_62_30();
        v262 = v285;
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v263, v264, v265, v266);
        OUTLINED_FUNCTION_58_32();
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v267, v268, v269, v270);
        v271 = v262;
        OUTLINED_FUNCTION_25_8(v262);
        if (v75)
        {
          OUTLINED_FUNCTION_25_8(v262 + v261);
          if (v75)
          {
            sub_1D4E50004(v262, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return 1;
          }
        }

        else
        {
          sub_1D4F39AB0(v262, v292, &unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_25_8(v262 + v261);
          if (!v272)
          {
            v273 = v302;
            v274 = v262 + v261;
            v275 = v298;
            v276 = v303;
            (*(v302 + 32))(v298, v274, v303);
            OUTLINED_FUNCTION_0_207();
            sub_1D53850BC(v277);
            v278 = v292;
            v279 = sub_1D5614D18();
            v280 = *(v273 + 8);
            v280(v275, v276);
            v280(v278, v276);
            sub_1D4E50004(v271, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return (v279 & 1) != 0;
          }

          (*(v302 + 8))(v292, v303);
        }

        v99 = &qword_1EC7E9FB0;
        v100 = &qword_1D562C590;
        v101 = v262;
LABEL_38:
        sub_1D4E50004(v101, v99, v100);
        return 0;
      }
    }

    else
    {
      v252 = v295;
      sub_1D4F39AB0(v295, v293, &qword_1EC7EFBD0, &qword_1D5634650);
      OUTLINED_FUNCTION_57(v252 + v242, 1, v294);
      if (!v253)
      {
        v255 = v295;
        v256 = v295 + v242;
        v257 = v281;
        sub_1D5119188(v256, v281);
        v258 = v293;
        v259 = sub_1D54D5E40(v293, v257);
        sub_1D5385064(v257, type metadata accessor for StorePlatformUber);
        sub_1D5385064(v258, type metadata accessor for StorePlatformUber);
        sub_1D4E50004(v255, &qword_1EC7EFBD0, &qword_1D5634650);
        if (!v259)
        {
          return 0;
        }

        goto LABEL_170;
      }

      OUTLINED_FUNCTION_30_54();
      sub_1D5385064(v293, v254);
    }

    v99 = &qword_1EC7EFDD8;
    v100 = &unk_1D5639570;
    v101 = v295;
    goto LABEL_38;
  }

  result = 0;
  if (v234 != 2 && ((v234 ^ v235) & 1) == 0)
  {
    goto LABEL_154;
  }

  return result;
}

uint64_t sub_1D538365C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449747369747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7255747369747261 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x697463656C6C6F63 && a2 == 0xEC00000064496E6FLL;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00656D614E6E6FLL;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 25705 && a2 == 0xE200000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6C725574726F6873 && a2 == 0xE800000000000000;
                                      if (v23 || (sub_1D5616168() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000016 && 0x80000001D5681620 == a2;
                                        if (v24 || (sub_1D5616168() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                          if (v25 || (sub_1D5616168() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 1919246965 && a2 == 0xE400000000000000;
                                            if (v26 || (sub_1D5616168() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_1D5616168();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D5383D40(char a1)
{
  result = 0x6449747369747261;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x7255747369747261;
      break;
    case 3:
      result = 0x6B726F77747261;
      break;
    case 4:
    case 5:
      result = 0x697463656C6C6F63;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x6867697279706F63;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6169726F74696465;
      break;
    case 10:
      result = 0x6D614E65726E6567;
      break;
    case 11:
      result = 0x7365726E6567;
      break;
    case 12:
      result = 25705;
      break;
    case 13:
      result = 0x76697372656D6D69;
      break;
    case 14:
      result = 0x616C696176417369;
      break;
    case 15:
      result = 1701667182;
      break;
    case 16:
      result = 0x73726566666FLL;
      break;
    case 17:
      result = 0x44657361656C6572;
      break;
    case 18:
      result = 0x6C725574726F6873;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x6D754E6B63617274;
      break;
    case 21:
      result = 1919246965;
      break;
    case 22:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5383FB0()
{
  v1 = v0;
  v113 = type metadata accessor for StorePlatformUber();
  v2 = OUTLINED_FUNCTION_14(v113);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v117 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v116 = v11;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v118);
  v112 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v111 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v109 = v21 - v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v108 - v24;
  v26 = sub_1D560C0A8();
  v27 = OUTLINED_FUNCTION_4(v26);
  v119 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v33 = (v32 - v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_0();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v115 = &v108 - v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  v114 = &v108 - v44;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v108 - v46;
  if (v0[1])
  {
    v48 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v0[3])
  {
    v49 = v0[2];
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v50 = type metadata accessor for StorePlatformMusicVideo();
  sub_1D4F39AB0(v0 + v50[6], v47, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v47, 1, v26);
  if (v98)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v51 = v119;
    (*(v119 + 32))(v33, v47, v26);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_207();
    sub_1D53850BC(v52);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v53 = OUTLINED_FUNCTION_47_39(v51);
    v54(v53);
  }

  v55 = v118;
  sub_1D4F39AB0(v0 + v50[7], v25, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v25, 1, v55);
  if (v98)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v56 = v112;
    v57 = *(v112 + 32);
    v110 = v40;
    v58 = OUTLINED_FUNCTION_63_22();
    v59(v58);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v60 = v33;
    v33 = v25;
    v40 = v110;
    (*(v56 + 8))(v60, v55);
  }

  OUTLINED_FUNCTION_49_32(v50[8]);
  if (v55)
  {
    OUTLINED_FUNCTION_38_40(v61);
    OUTLINED_FUNCTION_39_46();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_49_32(v50[9]);
  if (v55)
  {
    OUTLINED_FUNCTION_38_40(v62);
    OUTLINED_FUNCTION_39_46();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v63 = *(v0 + v50[10]);
  if (v63)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_182_0();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_49_32(v50[11]);
  if (v63)
  {
    OUTLINED_FUNCTION_38_40(v64);
    OUTLINED_FUNCTION_39_46();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v50[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_182_0();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v50[13]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_182_0();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v50[14]))
  {
    OUTLINED_FUNCTION_27();
    v65 = OUTLINED_FUNCTION_182_0();
    sub_1D4F06928(v65, v66);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v67 = *(v0 + v50[15]);
  if (v67)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_182_0();
    sub_1D4F08318();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v68 = (v0 + v50[16]);
  v69 = *v68;
  v70 = v68[1];
  sub_1D5614E28();
  sub_1D4F39AB0(v0 + v50[17], v114, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v71 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v71, v72, v26);
  if (v98)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v73 = OUTLINED_FUNCTION_43_36();
    v74(v73);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_207();
    sub_1D53850BC(v75);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v76 = OUTLINED_FUNCTION_47_39(v67);
    v77(v76);
  }

  v78 = *(v0 + v50[18]);
  if (v78 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_49_32(v50[19]);
  if (v78)
  {
    OUTLINED_FUNCTION_38_40(v79);
    OUTLINED_FUNCTION_39_46();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v80 = *(v0 + v50[20]);
  if (v80)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_182_0();
    sub_1D4F080F8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_49_32(v50[21]);
  if (v80)
  {
    OUTLINED_FUNCTION_38_40(v81);
    OUTLINED_FUNCTION_39_46();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v82 = v118;
  sub_1D4F39AB0(v0 + v50[22], v115, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v83 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v83, v84, v26);
  if (v98)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v85 = OUTLINED_FUNCTION_43_36();
    v86(v85);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_207();
    sub_1D53850BC(v87);
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v88 = OUTLINED_FUNCTION_47_39(v80);
    v89(v88);
  }

  if (*(v0 + v50[23]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v90 = v0 + v50[24];
  if (v90[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v91 = *v90;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v91);
  }

  v92 = v116;
  v93 = v117;
  sub_1D4F39AB0(v1 + v50[25], v116, &qword_1EC7EFBD0, &qword_1D5634650);
  v94 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v94, v95, v113);
  if (v98)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D5119188(v92, v93);
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v93, v109, &qword_1EC7EB5B8, &unk_1D56206A0);
    v96 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v96, v97, v82);
    if (v98)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v110 = v40;
      v99 = v112;
      v100 = *(v112 + 32);
      v101 = OUTLINED_FUNCTION_63_22();
      v102(v101);
      OUTLINED_FUNCTION_27();
      sub_1D4F395F4();
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v103 = v33;
      v33 = v25;
      (*(v99 + 8))(v103, v82);
      v40 = v110;
    }

    OUTLINED_FUNCTION_30_54();
    sub_1D5385064(v93, v104);
  }

  sub_1D4F39AB0(v1 + v50[26], v40, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v40, 1, v26);
  if (v98)
  {
    return OUTLINED_FUNCTION_36();
  }

  v105 = v119;
  (*(v119 + 32))(v33, v40, v26);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_207();
  sub_1D53850BC(v106);
  OUTLINED_FUNCTION_33_6();
  sub_1D5614CB8();
  return (*(v105 + 8))(v33, v26);
}

uint64_t sub_1D53848A0()
{
  sub_1D56162D8();
  sub_1D5383FB0();
  return sub_1D5616328();
}

uint64_t sub_1D53848E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D538365C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5384910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5383D38();
  *a1 = result;
  return result;
}

uint64_t sub_1D5384938(uint64_t a1)
{
  v2 = sub_1D5384EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5384974(uint64_t a1)
{
  v2 = sub_1D5384EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53849EC()
{
  sub_1D56162D8();
  sub_1D5383FB0();
  return sub_1D5616328();
}

uint64_t sub_1D5384A28()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_68();
  v6 = sub_1D560F548();
  v7 = OUTLINED_FUNCTION_4(v6);
  v40 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for StorePlatformOffer(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = *(v1 + *(type metadata accessor for StorePlatformMusicVideo() + 80));
  if (!v23)
  {
    return 0;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = *(v14 + 20);
  v26 = v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v27 = *(v17 + 72);
  v41 = (v40 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  v42 = v13;
  v39 = v25;
  do
  {
    sub_1D5384FC0(v26, v22, type metadata accessor for StorePlatformOffer);
    sub_1D4F39AB0(v22 + v25, v0, &qword_1EC7EAC58, &unk_1D561DA70);
    sub_1D5385064(v22, type metadata accessor for StorePlatformOffer);
    OUTLINED_FUNCTION_57(v0, 1, v6);
    if (v29)
    {
      sub_1D4E50004(v0, &qword_1EC7EAC58, &unk_1D561DA70);
    }

    else
    {
      v30 = v6;
      v31 = *v41;
      v32 = v30;
      (*v41)(v42, v0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v28 + 16);
        sub_1D4F00C24();
        v28 = v36;
      }

      v34 = *(v28 + 16);
      if (v34 >= *(v28 + 24) >> 1)
      {
        sub_1D4F00C24();
        v28 = v37;
      }

      *(v28 + 16) = v34 + 1;
      (v31)(v28 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, v42, v32);
      v6 = v32;
      v25 = v39;
    }

    v26 += v27;
    --v24;
  }

  while (v24);
  return v28;
}

uint64_t sub_1D5384D2C()
{
  v1 = *(v0 + *(type metadata accessor for StorePlatformMusicVideo() + 72));
  if (v1 != 2)
  {
    return v1 & 1;
  }

  sub_1D53850BC(&qword_1EC7EFC20);
  sub_1D53850BC(&qword_1EC7EFC28);

  return sub_1D5612A28();
}

uint64_t sub_1D5384E28()
{
  sub_1D53850BC(&qword_1EC7EFC28);

  return sub_1D5612A28();
}

unint64_t sub_1D5384EA8()
{
  result = qword_1EC7F4EE8;
  if (!qword_1EC7F4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4EE8);
  }

  return result;
}

unint64_t sub_1D5384EFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D53850BC(&unk_1EDD533A8);
    sub_1D53850BC(&unk_1EDD533B0);
    result = OUTLINED_FUNCTION_65_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D5384FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D538501C()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C588);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FE38();
}

uint64_t sub_1D5385064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D53850BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorePlatformMusicVideo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorePlatformMusicVideo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5385268()
{
  result = qword_1EC7F4EF8;
  if (!qword_1EC7F4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4EF8);
  }

  return result;
}

unint64_t sub_1D53852C0()
{
  result = qword_1EC7F4F00;
  if (!qword_1EC7F4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4F00);
  }

  return result;
}

unint64_t sub_1D5385318()
{
  result = qword_1EC7F4F08;
  if (!qword_1EC7F4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4F08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_76@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v4 = *(v1 - 144);
  v3 = *(v1 - 136);
  v5 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_42()
{
  v3 = *(v0 - 216);
  v2 = *(v0 - 208);
  v5 = *(v0 - 144);
  v4 = *(v0 - 136);
  v6 = *(v0 - 120);

  return sub_1D5615F78();
}

uint64_t MusicRecentlySearchedViewModel.Entry.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t MusicRecentlySearchedViewModel.Entry.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicRecentlySearchedViewModel.Entry() + 24);
  v4 = sub_1D560C328();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1D5385530(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D5385644(char a1)
{
  if (!a1)
  {
    return 1835365481;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0x6564644165746164;
}

uint64_t sub_1D538569C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5385530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D53856C4(uint64_t a1)
{
  v2 = sub_1D5385938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5385700(uint64_t a1)
{
  v2 = sub_1D5385938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicRecentlySearchedViewModel.Entry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4F10, &qword_1D5659950);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5385938();
  sub_1D56163D8();
  v21[15] = 0;
  type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_3_160();
  sub_1D53862CC(v14, v15);
  OUTLINED_FUNCTION_9_104();
  if (!v2)
  {
    v16 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
    v21[14] = *(v3 + *(v16 + 20));
    v21[13] = 1;
    sub_1D5356314();
    sub_1D56160C8();
    v17 = *(v16 + 24);
    v21[12] = 2;
    sub_1D560C328();
    OUTLINED_FUNCTION_0_208();
    sub_1D53862CC(v18, v19);
    OUTLINED_FUNCTION_9_104();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1D5385938()
{
  result = qword_1EC7F4F18;
  if (!qword_1EC7F4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4F18);
  }

  return result;
}

uint64_t MusicRecentlySearchedViewModel.Entry.hashValue.getter()
{
  sub_1D56162D8();
  GenericMusicItem.hash(into:)(v13, v0, v1, v2, v3, v4, v5, v6, v12, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10]);
  v7 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  OUTLINED_FUNCTION_6_116(v7);
  sub_1D5614E28();

  v8 = *(v7 + 24);
  sub_1D560C328();
  OUTLINED_FUNCTION_0_208();
  sub_1D53862CC(v9, v10);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicRecentlySearchedViewModel.Entry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = sub_1D560C328();
  v4 = OUTLINED_FUNCTION_4(v48);
  v46 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v50 = type metadata accessor for GenericMusicItem();
  v11 = OUTLINED_FUNCTION_14(v50);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v51 = v15 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4F20, &qword_1D5659958);
  v16 = OUTLINED_FUNCTION_4(v52);
  v49 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v45 - v20;
  v22 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  v23 = OUTLINED_FUNCTION_14(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5385938();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v49;
  v31 = v28;
  v32 = v10;
  v56 = 0;
  OUTLINED_FUNCTION_3_160();
  sub_1D53862CC(v33, v34);
  v35 = v51;
  OUTLINED_FUNCTION_8_110();
  v36 = v35;
  v37 = v31;
  sub_1D5061C5C(v36, v31);
  v54 = 1;
  sub_1D5356204();
  OUTLINED_FUNCTION_8_110();
  v51 = v22;
  *(v31 + *(v22 + 20)) = v55;
  v53 = 2;
  OUTLINED_FUNCTION_0_208();
  sub_1D53862CC(v38, v39);
  v40 = v30;
  v41 = v32;
  v42 = v48;
  v43 = v52;
  sub_1D5615FD8();
  (*(v40 + 8))(v21, v43);
  (*(v46 + 32))(v37 + *(v51 + 24), v41, v42);
  sub_1D5386040(v37, v47);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D516AD2C(v37, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
}

uint64_t sub_1D5385F48(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  GenericMusicItem.hash(into:)(v14, v4, v5, v6, v7, v8, v9, v10, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10]);
  *(v2 + *(a2 + 20));
  *(v2 + *(a2 + 20));
  sub_1D5614E28();

  v11 = *(a2 + 24);
  sub_1D560C328();
  sub_1D53862CC(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5386040(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v6 = v5(v4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t static MusicRecentlySearchedViewModel.Entry.< infix(_:_:)()
{
  OUTLINED_FUNCTION_147();
  v0 = *(type metadata accessor for MusicRecentlySearchedViewModel.Entry() + 24);

  return sub_1D560C2D8();
}

uint64_t MusicRecentlySearchedViewModel.Entry.id.getter()
{
  v1 = v0;
  GenericMusicItem.innerItem.getter(&v12);
  __swift_project_boxed_opaque_existential_1(&v12, v14);
  v2 = sub_1D560EC18();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v12 = v2;
  v13 = v4;

  MEMORY[0x1DA6EAC70](95, 0xE100000000000000);

  v5 = v12;
  v6 = v13;
  v7 = type metadata accessor for MusicRecentlySearchedViewModel.Entry();
  v8 = *(v1 + *(v7 + 20)) == 0;
  if (*(v1 + *(v7 + 20)))
  {
    v9 = 0x7972617262694CLL;
  }

  else
  {
    v9 = 0x754D2E656C707041;
  }

  if (v8)
  {
    v10 = 0xEB00000000636973;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v12 = v5;
  v13 = v6;

  MEMORY[0x1DA6EAC70](v9, v10);

  return v12;
}

uint64_t sub_1D53861FC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicRecentlySearchedViewModel.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicRecentlySearchedViewModel.Entry.mappingContent.getter()
{
  OUTLINED_FUNCTION_2_153();
  sub_1D5386040(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D18, &qword_1D563C1D0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D53862CC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s5EntryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5386420()
{
  result = qword_1EC7F4F30;
  if (!qword_1EC7F4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4F30);
  }

  return result;
}

unint64_t sub_1D5386478()
{
  result = qword_1EC7F4F38;
  if (!qword_1EC7F4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4F38);
  }

  return result;
}

unint64_t sub_1D53864D0()
{
  result = qword_1EC7F4F40;
  if (!qword_1EC7F4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4F40);
  }

  return result;
}

uint64_t sub_1D5386528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_1D511C2A4(a1);
  if (*(v8 + 16))
  {
    v9 = *(v8 + 80);
    v10 = *(v8 + 88);

    v11 = sub_1D56106B8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
    if ((v10 & 1) == 0)
    {
      sub_1D5386714(v7);
      v12 = MEMORY[0x1E6975D50];
      if (v9 >= 500)
      {
        v12 = MEMORY[0x1E6975D58];
      }

      (*(*(v11 - 8) + 104))(v7, *v12, v11);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    }

    return sub_1D53866A4(v7, a2);
  }

  else
  {

    v14 = sub_1D56106B8();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }
}

uint64_t sub_1D53866A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5386714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D538677C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicSuggestedPivotEntry();
  v7 = OUTLINED_FUNCTION_4(v6);
  v55 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4F68, &qword_1D5659C88);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v49 - v26;
  v53 = a1;
  v54 = a3;
  sub_1D5386FC8(a1, a3, type metadata accessor for MusicSuggestedPivotNode);
  sub_1D5386F1C(&qword_1EC7F1908, type metadata accessor for MusicSuggestedPivotEntry);
  v49 = v6;
  v28 = sub_1D5614BD8();
  v29 = *(v18 + 16);
  v52 = a2;
  v29(v22, a2, v15);
  v29(v27, v22, v15);
  v30 = *(v24 + 44);
  sub_1D5386F64();
  sub_1D5615608();
  v50 = *(v18 + 8);
  v51 = v18 + 8;
  v50(v22, v15);
  while (1)
  {
    sub_1D5615648();
    if (*&v27[v30] == v57[0])
    {
      v50(v52, v15);
      sub_1D5387094(v53, type metadata accessor for MusicSuggestedPivotNode);
      sub_1D53870F4(v27);
      result = type metadata accessor for MusicSuggestedPivotRound();
      *(v54 + *(result + 20)) = v28;
      return result;
    }

    v31 = sub_1D5615688();
    OUTLINED_FUNCTION_1_154();
    v32 = v56;
    sub_1D5386FC8(v33, v56, v34);
    v31(v57, 0);
    sub_1D5615658();
    sub_1D5387030(v32, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v57[0] = v28;
    v35 = sub_1D4F0DDE0(v13);
    if (__OFADD__(*(v28 + 16), (v36 & 1) == 0))
    {
      break;
    }

    v37 = v35;
    v38 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB418, &unk_1D5659C90);
    if (sub_1D5615D78())
    {
      v39 = sub_1D4F0DDE0(v13);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_14;
      }

      v37 = v39;
    }

    v28 = v57[0];
    if (v38)
    {
      OUTLINED_FUNCTION_0_209();
    }

    else
    {
      *(v57[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
      v41 = *(v28 + 48);
      v42 = *(v55 + 72);
      OUTLINED_FUNCTION_1_154();
      sub_1D5386FC8(v13, v43, v44);
      OUTLINED_FUNCTION_0_209();
      v45 = *(v28 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_13;
      }

      *(v28 + 16) = v47;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

void static MusicSuggestedPivotRound.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static MusicSuggestedPivotNode.== infix(_:_:)(a1, a2))
  {
    v4 = *(type metadata accessor for MusicSuggestedPivotRound() + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);

    sub_1D4F2E468();
  }
}

uint64_t type metadata accessor for MusicSuggestedPivotRound()
{
  result = qword_1EC7F4F50;
  if (!qword_1EC7F4F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MusicSuggestedPivotRound.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  MusicSuggestedPivotNode.hash(into:)();
  v22 = *(v20 + *(type metadata accessor for MusicSuggestedPivotRound() + 20));

  sub_1D4F3148C(a1, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t MusicSuggestedPivotRound.hashValue.getter()
{
  sub_1D56162D8();
  MusicSuggestedPivotNode.hash(into:)();
  v1 = type metadata accessor for MusicSuggestedPivotRound();
  sub_1D4F3148C(v10, *(v0 + *(v1 + 20)), v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t sub_1D5386D3C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  MusicSuggestedPivotNode.hash(into:)();
  sub_1D4F3148C(v12, *(v2 + *(a2 + 20)), v4, v5, v6, v7, v8, v9, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10]);
  return sub_1D5616328();
}

void sub_1D5386DFC()
{
  type metadata accessor for MusicSuggestedPivotNode();
  if (v0 <= 0x3F)
  {
    sub_1D5386E80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5386E80()
{
  if (!qword_1EC7F4F60)
  {
    type metadata accessor for MusicSuggestedPivotEntry();
    sub_1D5386F1C(&qword_1EC7F1908, type metadata accessor for MusicSuggestedPivotEntry);
    v0 = sub_1D5614C78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F4F60);
    }
  }
}

uint64_t sub_1D5386F1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5386F64()
{
  result = qword_1EC7F4F70;
  if (!qword_1EC7F4F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4F70);
  }

  return result;
}

uint64_t sub_1D5386FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5387030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedPivotEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5387094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D53870F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4F68, &qword_1D5659C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for UnknownMusicItemPropertyProvider()
{
  result = qword_1EC7F4F78;
  if (!qword_1EC7F4F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D53871D0()
{
  sub_1D4F4E49C();
  if (v0 <= 0x3F)
  {
    sub_1D560D838();
    if (v1 <= 0x3F)
    {
      sub_1D5610088();
      if (v2 <= 0x3F)
      {
        sub_1D4F18AF4();
        if (v3 <= 0x3F)
        {
          sub_1D4E5CF94();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D53872E8()
{
  OUTLINED_FUNCTION_1_155();
  OUTLINED_FUNCTION_0_210();
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_154();
  __break(1u);
}

void sub_1D5387370()
{
  OUTLINED_FUNCTION_1_155();
  OUTLINED_FUNCTION_0_210();
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_154();
  __break(1u);
}

void sub_1D53873F8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_1_155();
  OUTLINED_FUNCTION_0_210();
  v2 = *(v1 + *MEMORY[0x1E6974E08]);
  sub_1D560D0C8();
  sub_1D5616138();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_154();
  __break(1u);
}

void sub_1D53874AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_1D4EF6F7C();
  if ((v6 & 1) == 0)
  {
    return;
  }

  v7 = type metadata accessor for UnknownMusicItemPropertyProvider();
  v8 = v7[5];
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return;
  }

  v9 = v7[6];
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    return;
  }

  v10 = v7[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_1D5616168() & 1) == 0)
    {
      return;
    }
  }

  else if (v14)
  {
    return;
  }

  OUTLINED_FUNCTION_44_0(v7[8]);
  sub_1D4F286E0();
  if (v16)
  {
    OUTLINED_FUNCTION_44_0(v7[9]);
    sub_1D4F286E0();
    if (v17)
    {
      OUTLINED_FUNCTION_44_0(v7[10]);
      sub_1D4F286E0();
      if (v18)
      {
        OUTLINED_FUNCTION_44_0(v7[11]);

        sub_1D4F286E0();
      }
    }
  }
}

void sub_1D53875BC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D4F070FC();
  v3 = type metadata accessor for UnknownMusicItemPropertyProvider();
  v4 = v3[5];
  sub_1D560D838();
  sub_1D5387C18(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_22_2();
  v5 = v3[6];
  sub_1D5610088();
  sub_1D5387C18(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_22_2();
  v6 = (v1 + v3[7]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  OUTLINED_FUNCTION_32_2(v3[8]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v3[9]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v3[10]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v3[11]);

  sub_1D4F31AC0();
}

uint64_t sub_1D5387710()
{
  sub_1D56162D8();
  sub_1D53875BC();
  return sub_1D5616328();
}

uint64_t sub_1D53877A0()
{
  sub_1D56162D8();
  sub_1D53875BC();
  return sub_1D5616328();
}

uint64_t sub_1D5387824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D5387C18(&qword_1EC7F4F98, type metadata accessor for UnknownMusicItemPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D53878C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D5387934(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D53879A8(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1D53879CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D5387A40(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D5387A84(uint64_t a1)
{
  v2 = sub_1D5387C18(&qword_1EC7F4F98, type metadata accessor for UnknownMusicItemPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D5387B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5387C18(&qword_1EC7F4F88, type metadata accessor for UnknownMusicItemPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5387B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5387C18(&qword_1EC7F4F90, type metadata accessor for UnknownMusicItemPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D5387C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Playlist.Collaborator.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v153 = a2;
  v154 = a4;
  v151 = a5;
  v152 = a3;
  v6 = sub_1D5610218();
  v7 = OUTLINED_FUNCTION_4(v6);
  v134 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FA0, &qword_1D5659E08);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v148 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FA8, &qword_1D5659E10);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v147 = v27;
  OUTLINED_FUNCTION_70_0();
  v28 = sub_1D56101B8();
  v157 = OUTLINED_FUNCTION_4(v28);
  v158 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_59_0();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_11_3(v133 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v143 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  v144 = v46;
  OUTLINED_FUNCTION_70_0();
  v47 = sub_1D5610268();
  v48 = OUTLINED_FUNCTION_4(v47);
  v149 = v49;
  v150 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v54 = v53 - v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  v60 = v133 - v59;
  v61 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
  OUTLINED_FUNCTION_24_0(v61);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5();
  v67 = v66 - v65;
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v141 = v68;
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
  v72 = v61[11];
  sub_1D560C0A8();
  v145 = v72;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  if (qword_1EC7E9490 != -1)
  {
    swift_once();
  }

  v77 = sub_1D560D9A8();
  __swift_project_value_buffer(v77, qword_1EC7F4728);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v82 = v61[14];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FB0, &qword_1D5659E18);
  sub_1D56105B8();
  sub_1D4E7661C(v60, &qword_1EC7EB5C0, &unk_1D56223C0);
  v84 = v67 + v61[15];
  sub_1D5610658();
  v140 = sub_1D5610618();
  v139 = v85;
  v138 = sub_1D56105C8();
  v137 = sub_1D56105F8();
  v86 = sub_1D56105E8();
  v156 = v83;
  v87 = sub_1D56105A8();
  *(v67 + v61[6]) = 2;
  *(v67 + v61[7]) = 2;
  v146 = v61[12];
  *(v67 + v146) = 2;
  if (qword_1EC7E8960 != -1)
  {
    swift_once();
  }

  v88 = qword_1EC87BE40;
  if (qword_1EC87BE40 >> 62)
  {
    v131 = qword_1EC87BE40 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87BE40 < 0)
    {
      v131 = qword_1EC87BE40;
    }

    v133[1] = v131;
    sub_1D560CDE8();

    v132 = sub_1D5615E18();

    v88 = v132;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v67 + v61[13]) = v88;
  v89 = (v67 + v61[16]);
  v90 = v139;
  *v89 = v140;
  v89[1] = v90;
  *(v67 + v61[17]) = v138;
  *(v67 + v61[18]) = v137;
  *(v67 + v61[19]) = v86;
  *(v67 + v61[20]) = v87;
  sub_1D5610648();
  v91 = v142;
  sub_1D56101C8();
  v92 = v143;
  sub_1D5610198();
  v93 = *(v158 + 8);
  v158 += 8;
  v93(v91, v157);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, 1, v94);
  v155 = a1;
  v136 = v6;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v92, &qword_1EC7EB5B8, &unk_1D56206A0);
    v96 = 1;
    v97 = v144;
  }

  else
  {
    v97 = v144;
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0(v94);
    (*(v98 + 8))(v92, v94);
    v96 = 0;
  }

  __swift_storeEnumTagSinglePayload(v97, v96, 1, v141);
  v99 = (v67 + v61[5]);
  v100 = v61[9];
  v142 = v61[8];
  v101 = (v67 + v61[10]);
  v143 = v100;
  v144 = v101;
  sub_1D5373C9C(v97, v67, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_12_83();
  v102 = sub_1D5610178();
  v104 = v103;
  v93(v34, v157);
  *v99 = v102;
  v99[1] = v104;
  OUTLINED_FUNCTION_12_83();
  LOBYTE(v102) = sub_1D56101A8();
  v105 = OUTLINED_FUNCTION_130();
  (v93)(v105);
  *(v67 + v142) = v102;
  OUTLINED_FUNCTION_12_83();
  LOBYTE(v102) = sub_1D5610148();
  v106 = OUTLINED_FUNCTION_130();
  (v93)(v106);
  *(v67 + v143) = v102;
  OUTLINED_FUNCTION_12_83();
  v107 = sub_1D5610168();
  v109 = v108;
  v110 = OUTLINED_FUNCTION_130();
  (v93)(v110);
  v111 = v144;
  *v144 = v107;
  v111[1] = v109;
  OUTLINED_FUNCTION_12_83();
  v112 = v147;
  sub_1D5610158();
  v113 = OUTLINED_FUNCTION_130();
  (v93)(v113);
  sub_1D5373C9C(v112, v67 + v145, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v114 = v148;
  sub_1D5610228();
  v115 = sub_1D5610258();
  if (__swift_getEnumTagSinglePayload(v114, 1, v115) == 1)
  {
    sub_1D4E7661C(v114, &qword_1EC7F4FA0, &qword_1D5659E08);
    v116 = 2;
    v117 = v155;
  }

  else
  {
    v118 = v135;
    sub_1D5610238();
    OUTLINED_FUNCTION_24_0(v115);
    (*(v119 + 8))(v114, v115);
    v120 = v136;
    v121 = __swift_getEnumTagSinglePayload(v118, 1, v136);
    v117 = v155;
    if (v121 == 1)
    {
      sub_1D4E7661C(v118, &qword_1EC7F4FA8, &qword_1D5659E10);
      v116 = 2;
    }

    else
    {
      sub_1D5610208();
      OUTLINED_FUNCTION_6_117();
      sub_1D53895A0(v122, v123);
      v124 = sub_1D5614D18();
      v125 = *(v134 + 8);
      v126 = OUTLINED_FUNCTION_130();
      v125(v126);
      (v125)(v118, v120);
      v116 = (v124 & 1) == 0;
    }
  }

  *(v67 + v146) = v116;
  v159[3] = v61;
  v159[4] = sub_1D53895A0(&qword_1EC7E9D70, type metadata accessor for PlaylistCollaboratorPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v159);
  sub_1D53887BC(v67, boxed_opaque_existential_0);
  Playlist.Collaborator.init(propertyProvider:)(v159, v151);

  OUTLINED_FUNCTION_24_0(v154);
  (*(v128 + 8))();
  OUTLINED_FUNCTION_24_0(v156);
  (*(v129 + 8))(v117);
  (*(v149 + 8))(v54, v150);
  return sub_1D4EC5738(v67);
}

uint64_t CloudPlaylist.Collaborator.Role.convertToRole()@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5610218();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1D5610208();
  OUTLINED_FUNCTION_6_117();
  sub_1D53895A0(v11, v12);
  v13 = sub_1D5614D18();
  result = (*(v5 + 8))(v10, v2);
  *a1 = (v13 & 1) == 0;
  return result;
}

uint64_t sub_1D53887BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.Collaborator.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v149 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v148 = v7;
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5610088();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v154 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v142 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v141 = v23;
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D5612B78();
  v25 = OUTLINED_FUNCTION_4(v24);
  v146 = v26;
  v147 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v145 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FC0, &qword_1D5659E20);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v140 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FC8, &qword_1D5659E28);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v139 = v40;
  OUTLINED_FUNCTION_70_0();
  v41 = sub_1D5610268();
  v42 = OUTLINED_FUNCTION_4(v41);
  v143 = v43;
  v144 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_59_0();
  v152 = v46 - v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  v153 = &v131 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FA8, &qword_1D5659E10);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FA0, &qword_1D5659E08);
  v56 = OUTLINED_FUNCTION_22(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_59_0();
  v138 = v59 - v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v61);
  v132 = &v131 - v62;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v131 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_3();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v131 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v131 - v80;
  v82 = sub_1D56101B8();
  v83 = OUTLINED_FUNCTION_4(v82);
  v150 = v84;
  v151 = v83;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_59_0();
  v137 = v87 - v88;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v89);
  v155 = &v131 - v90;
  if (qword_1EC7E9430 != -1)
  {
    swift_once();
  }

  v91 = sub_1D56140F8();
  sub_1D53895A0(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  sub_1D53895A0(&qword_1EC7F3BB8, type metadata accessor for Playlist.Collaborator);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v75, 1, v91) == 1)
  {
    sub_1D4E7661C(v75, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v92 = 1;
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0(v91);
    (*(v93 + 8))(v75, v91);
    v92 = 0;
  }

  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v81, v92, 1, v94);
  if (qword_1EC7E9438 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_161();
  v136 = v156;
  v135 = v157;
  if (qword_1EC7E9450 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_161();
  v134 = v156;
  if (qword_1EC7E9458 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_161();
  if (qword_1EC7E9460 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_161();
  if (qword_1EC7E9468 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  sub_1D560EC28();
  sub_1D5610188();
  v95 = sub_1D5610258();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v95);
  if (qword_1EC7E9470 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_161();
  if (v156 != 2)
  {
    if (v156)
    {
      v99 = 1;
      v100 = v133;
    }

    else
    {
      v100 = v133;
      sub_1D5610208();
      v99 = 0;
    }

    v101 = sub_1D5610218();
    __swift_storeEnumTagSinglePayload(v100, v99, 1, v101);
    v102 = v132;
    sub_1D5610248();
    sub_1D4E7661C(v65, &qword_1EC7F4FA0, &qword_1D5659E08);
    __swift_storeEnumTagSinglePayload(v102, 0, 1, v95);
    sub_1D5389474(v102, v65);
  }

  v103 = *v2;
  v104 = v2[1];
  (*(v150 + 16))(v137, v155, v151);
  sub_1D56101E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
  sub_1D56101D8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  sub_1D5389404(v65, v138);

  v113 = v153;
  sub_1D56101F8();
  v114 = *(type metadata accessor for Playlist.Collaborator() + 20);
  v115 = v141;
  sub_1D5611A28();
  v116 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v115, 0, 1, v116);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
  v121 = v145;
  sub_1D5612B38();
  v123 = v143;
  v122 = v144;
  (*(v143 + 16))(v152, v113, v144);
  sub_1D5611A98();
  v124 = sub_1D5611A88();
  v140 = v125;
  v141 = v124;
  v126 = v146;
  v127 = *(v146 + 16);
  v128 = v148;
  v142 = v65;
  v129 = v147;
  v127(v148, v121, v147);
  __swift_storeEnumTagSinglePayload(v128, 0, 1, v129);
  v139 = sub_1D5611A38();
  v138 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D53895A0(&qword_1EC7F4FD0, MEMORY[0x1E6975C48]);
  sub_1D5610628();
  (*(v126 + 8))(v121, v129);
  (*(v123 + 8))(v153, v122);
  sub_1D4E7661C(v142, &qword_1EC7F4FA0, &qword_1D5659E08);
  return (*(v150 + 8))(v155, v151);
}

uint64_t Playlist.Collaborator.Role.convertToCloudRole()@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = 1;
  }

  else
  {
    sub_1D5610208();
    v3 = 0;
  }

  v4 = sub_1D5610218();

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v4);
}

uint64_t sub_1D5389404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FA0, &qword_1D5659E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5389474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4FA0, &qword_1D5659E08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5389534()
{
  sub_1D53895A0(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator);

  return sub_1D5612668();
}

uint64_t sub_1D53895A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D53895E8@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v26[3] = a1;
  v27 = a2;
  v2 = sub_1D560F5C8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - v11;
  v13 = sub_1D560CD48();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  sub_1D560E688();
  sub_1D560F5A8();
  sub_1D560F598();
  v21 = *(v5 + 8);
  v21(v10, v2);
  v21(v12, v2);
  v22 = sub_1D5610A48();

  if (v22)
  {
    sub_1D5389968(v22, &v28);

    v23 = v28;
  }

  else
  {
    v23 = 0;
  }

  result = (*(v16 + 8))(v20, v13);
  v25 = v27;
  *v27 = v23;
  *(v25 + 8) = v22 == 0;
  return result;
}

MusicKitInternal::Presto_AudioTraits sub_1D5389844@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = Presto_AudioTraits.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D5389884@<X0>(uint64_t *a1@<X8>)
{
  result = Presto_AudioTraits.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Presto_AudioTraits.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1D4E628D4(a1, v7);
  sub_1D5610A58();
  sub_1D538A3AC(&qword_1EC7EFD98);
  v5 = sub_1D5615308();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5389968(v5, v7);

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v7[0];
  return result;
}

uint64_t sub_1D5389968@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = sub_1D5610A58();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x1E6975EE0];
  v12 = v6 + 104;
  v13 = *(v6 + 104);
  v14 = OUTLINED_FUNCTION_8_111();
  v13(v14);
  v78 = v10;
  v15 = sub_1D4F25AA0(sub_1D538A5FC, v77, a1);
  v16 = *(v6 + 8);
  v16(v10, v3);
  v75 = v6 + 8;
  v76 = a1;
  v72 = v16;
  v21 = 1;
  if (!v15)
  {
    v17 = *MEMORY[0x1E6975EF0];
    v18 = OUTLINED_FUNCTION_8_111();
    v19 = (v13)(v18);
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_1_156();
    v15 = sub_1D4F25AA0(sub_1D538A61C, v20, a1);
    v16(v10, v3);
    if (!v15)
    {
      v21 = 0;
    }
  }

  v22 = *MEMORY[0x1E6975EF8];
  v23 = OUTLINED_FUNCTION_8_111();
  v13(v23);
  OUTLINED_FUNCTION_10_99();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1_156();
  v25 = v76;
  sub_1D4F25AA0(sub_1D538A61C, v26, v76);
  v27 = OUTLINED_FUNCTION_2_155();
  v73 = v13;
  v28 = v72;
  v72(v27);
  if (v15)
  {
    v21 |= 8uLL;
  }

  v29 = *MEMORY[0x1E6975EE8];
  v30 = OUTLINED_FUNCTION_8_111();
  v13(v30);
  OUTLINED_FUNCTION_10_99();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_156();
  sub_1D4F25AA0(sub_1D538A61C, v32, v25);
  v33 = OUTLINED_FUNCTION_2_155();
  v28(v33);
  v34 = v21 | 0x10;
  if (!v15)
  {
    v34 = v21;
  }

  v74 = v34;
  v35 = *MEMORY[0x1E6975EC8];
  v36 = OUTLINED_FUNCTION_8_111();
  v73(v36);
  OUTLINED_FUNCTION_10_99();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1_156();
  sub_1D4F25AA0(sub_1D538A61C, v38, v25);
  v39 = OUTLINED_FUNCTION_2_155();
  v28(v39);
  v71 = v12;
  if (v15)
  {
    v40 = v3;
    v41 = v74;
  }

  else
  {
    v41 = v74;
    v42 = *MEMORY[0x1E6975ED8];
    v43 = OUTLINED_FUNCTION_8_111();
    v45 = v44(v43);
    MEMORY[0x1EEE9AC00](v45);
    OUTLINED_FUNCTION_1_156();
    v15 = sub_1D4F25AA0(sub_1D538A61C, v46, v76);
    v40 = v3;
    (v28)(v10, v3);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  if ((v41 & 2) == 0)
  {
    v41 |= 2uLL;
  }

LABEL_14:
  v74 = v41;
  v47 = v40;
  v48 = v40;
  v49 = v73;
  (v73)(v10, *MEMORY[0x1E6975EC0], v48);
  OUTLINED_FUNCTION_10_99();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_1_156();
  v51 = v76;
  sub_1D4F25AA0(sub_1D538A61C, v52, v76);
  v53 = OUTLINED_FUNCTION_2_155();
  v54 = v72;
  v72(v53);
  if (v15)
  {
    v55 = v54;
    v68 = v74;
    if ((v74 & 4) == 0)
    {
      v68 = v74 | 4;
    }
  }

  else
  {
    v56 = *MEMORY[0x1E6975EB8];
    v57 = OUTLINED_FUNCTION_8_111();
    v49(v57);
    OUTLINED_FUNCTION_10_99();
    MEMORY[0x1EEE9AC00](v58);
    OUTLINED_FUNCTION_1_156();
    sub_1D4F25AA0(sub_1D538A61C, v59, v51);
    v60 = OUTLINED_FUNCTION_2_155();
    (v54)(v60);
    v55 = v54;
    v49 = v73;
    v68 = v74;
  }

  v61 = *MEMORY[0x1E6975ED0];
  v62 = OUTLINED_FUNCTION_8_111();
  v49(v62);
  OUTLINED_FUNCTION_10_99();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_1_156();
  v65 = sub_1D4F25AA0(sub_1D538A61C, v64, v76);
  result = v55(v10, v47);
  v67 = v68 | 0x20;
  if (!v65)
  {
    v67 = v68;
  }

  *v70 = v67;
  return result;
}

uint64_t Presto_AudioTraits.encode(to:)(void *a1)
{
  v5[0] = *v1;
  sub_1D5389F78();
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFD70, ":Q\a");
  sub_1D50F86AC();
  sub_1D56161C8();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1D5389F78()
{
  v2 = sub_1D5610A58();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v62 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v62 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v62 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - v21;
  v23 = *v0;
  if ((*v0 & 1) == 0)
  {
    v24 = MEMORY[0x1E69E7CC0];
    if ((v23 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v25 = *MEMORY[0x1E6975EE0];
  OUTLINED_FUNCTION_89_1();
  v26(v22);
  sub_1D4EFF9AC();
  v24 = v27;
  v1 = *(v27 + 16);
  v0 = (v1 + 1);
  if (v1 >= *(v27 + 24) >> 1)
  {
    OUTLINED_FUNCTION_3_162();
    v24 = v51;
  }

  v28 = OUTLINED_FUNCTION_0_211();
  v29(v28, v22, v2);
  if ((v23 & 8) != 0)
  {
LABEL_7:
    v30 = *MEMORY[0x1E6975EF8];
    OUTLINED_FUNCTION_89_1();
    v31(v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_122();
      v24 = v52;
    }

    OUTLINED_FUNCTION_6_118();
    if (v32)
    {
      OUTLINED_FUNCTION_3_162();
      v24 = v53;
    }

    v33 = OUTLINED_FUNCTION_0_211();
    v34(v33, v20, v2);
  }

LABEL_12:
  if ((v23 & 0x10) != 0)
  {
    v35 = *MEMORY[0x1E6975EE8];
    OUTLINED_FUNCTION_89_1();
    v36(v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_122();
      v24 = v54;
    }

    OUTLINED_FUNCTION_6_118();
    if (v32)
    {
      OUTLINED_FUNCTION_3_162();
      v24 = v55;
    }

    v37 = OUTLINED_FUNCTION_0_211();
    v38(v37, v17, v2);
    if ((v23 & 2) == 0)
    {
LABEL_14:
      if ((v23 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_14;
  }

  v39 = *MEMORY[0x1E6975EC8];
  OUTLINED_FUNCTION_89_1();
  v40(v14);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_122();
    v24 = v56;
  }

  OUTLINED_FUNCTION_6_118();
  if (v32)
  {
    OUTLINED_FUNCTION_3_162();
    v24 = v57;
  }

  v41 = OUTLINED_FUNCTION_0_211();
  v42(v41, v14, v2);
  if ((v23 & 4) == 0)
  {
LABEL_15:
    if ((v23 & 0x20) == 0)
    {
      return v24;
    }

    goto LABEL_32;
  }

LABEL_27:
  v43 = *MEMORY[0x1E6975EC0];
  OUTLINED_FUNCTION_89_1();
  v44(v63);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_122();
    v24 = v58;
  }

  OUTLINED_FUNCTION_6_118();
  if (v32)
  {
    OUTLINED_FUNCTION_3_162();
    v24 = v59;
  }

  v45 = OUTLINED_FUNCTION_0_211();
  v46(v45, v63, v2);
  if ((v23 & 0x20) != 0)
  {
LABEL_32:
    v47 = *MEMORY[0x1E6975ED0];
    OUTLINED_FUNCTION_89_1();
    v48 = v62;
    v49(v62);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_122();
      v24 = v60;
    }

    OUTLINED_FUNCTION_6_118();
    if (v32)
    {
      OUTLINED_FUNCTION_3_162();
      v24 = v61;
    }

    *(v24 + 16) = v0;
    (*(v5 + 32))(v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v1, v48, v2);
  }

  return v24;
}

uint64_t sub_1D538A3AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5610A58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Presto_AudioTraits.description.getter()
{
  v5 = *v0;
  v1 = sub_1D5389F78();
  v2 = sub_1D5610A58();
  v3 = MEMORY[0x1DA6EAF70](v1, v2);

  return v3;
}

unint64_t sub_1D538A490()
{
  result = qword_1EC7F4FD8;
  if (!qword_1EC7F4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4FD8);
  }

  return result;
}

unint64_t sub_1D538A4E8()
{
  result = qword_1EC7F4FE0;
  if (!qword_1EC7F4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4FE0);
  }

  return result;
}

unint64_t sub_1D538A53C()
{
  result = qword_1EC7F4FE8;
  if (!qword_1EC7F4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4FE8);
  }

  return result;
}

unint64_t sub_1D538A594()
{
  result = qword_1EC7F4FF0;
  if (!qword_1EC7F4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4FF0);
  }

  return result;
}

uint64_t static MusicDataRequest.Source.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7F4FF8 = a1;
}

uint64_t sub_1D538A72C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F4FF8;
}

uint64_t sub_1D538A77C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F4FF8 = v1;
}

uint64_t MusicDataRequest.Source.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D538A868@<X0>(uint64_t *a1@<X8>)
{
  result = static MusicDataRequest.Source.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D538A8A0()
{
  result = qword_1EC7F5000;
  if (!qword_1EC7F5000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5008, &qword_1D565A120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5000);
  }

  return result;
}

unint64_t sub_1D538A908()
{
  result = qword_1EC7F5010;
  if (!qword_1EC7F5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5010);
  }

  return result;
}

_BYTE *_s6SourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D538AA38()
{
  v0 = type metadata accessor for MusicRoutingController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1D538AAD4();
  qword_1EC7F5020 = v3;
  return result;
}

uint64_t static MusicRoutingController.shared.getter()
{
  if (qword_1EC7E94F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D538AAD4()
{
  v1 = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = [objc_allocWithZone(MusicKit_SoftLinking_MPAVRoutingController) init];
  type metadata accessor for MusicRoutingController.Monitor();
  v2 = swift_allocObject();
  sub_1D538BBD4();
  v9[0] = v2;
  sub_1D538B874();
  sub_1D5610A88();
  v3 = *(v1 + 24);
  v9[4] = sub_1D538BCE0;
  v9[5] = v1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D538AFC4;
  v9[3] = &block_descriptor_22;
  v4 = _Block_copy(v9);
  v5 = v3;

  [v5 setRoutesDidUpdate_];
  _Block_release(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5030, &unk_1D565A1F0);
  sub_1D5610A98();
  v6 = *(v1 + 24);
  v7 = v6;
  sub_1D538B92C(v6);

  return v1;
}

uint64_t sub_1D538AC64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F5068, &qword_1D565A2E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - v13;
  v19[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5088, &qword_1D565A2F8);
  sub_1D5612878();
  v15 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  (*(v9 + 32))(&v17[v16], v12, v8);

  sub_1D4F405A0(0, 0, v7, &unk_1D565A308, v17);

  sub_1D538BDEC(v7);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1D538AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D538AEC4, 0, 0);
}

uint64_t sub_1D538AEC4()
{
  sub_1D56153C8();
  *(v0 + 32) = sub_1D56153B8();
  v2 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D538AF58, v2, v1);
}

uint64_t sub_1D538AF58()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1D538B294();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D538AFC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F5078, &unk_1D565A2E8);
  v3 = sub_1D5615168();

  v2(v3);
}

uint64_t sub_1D538B044(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D538B0A8(v4);
}

uint64_t sub_1D538B070()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1D538B0A8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1D538B140()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5030, &unk_1D565A1F0);
  sub_1D4E62A60(&unk_1EC7F5038, &qword_1EC7F5030, &unk_1D565A1F0);
  return sub_1D560C938();
}

uint64_t sub_1D538B1CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5030, &unk_1D565A1F0);
  sub_1D5610A98();
  v0 = *(v2 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F12E0, &qword_1D564ABD0);
  sub_1D4E62A60(&unk_1EDD5D880, &qword_1EC7F12E0, &qword_1D564ABD0);
  sub_1D560C8A8();
}

char *sub_1D538B294()
{
  v1 = v0;
  v33 = sub_1D560C368();
  v2 = OUTLINED_FUNCTION_4(v33);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F5068, &qword_1D565A2E0);
  sub_1D5612858();
  v8 = v35;
  v9 = sub_1D4F0B2D8(v35);
  if (v9)
  {
    v10 = v9;
    v36 = MEMORY[0x1E69E7CC0];
    result = sub_1D4F04914(0, v9 & ~(v9 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = v36;
    v34 = v8 & 0xC000000000000001;
    v30 = v0;
    v31 = (v4 + 8);
    v14 = v8;
    do
    {
      if (v34)
      {
        v15 = MEMORY[0x1DA6EB9B0](v12, v8);
      }

      else
      {
        v15 = *(v8 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [swift_unknownObjectRetain() musicKit_avRoute_routeUID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1D5614D68();
        v20 = v19;

        swift_unknownObjectRelease();
      }

      else
      {
        v21 = v32;
        sub_1D560C358();
        v18 = sub_1D560C338();
        v20 = v22;
        swift_unknownObjectRelease();
        (*v31)(v21, v33);
      }

      v36 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D4F04914((v23 > 1), v24 + 1, 1);
        v13 = v36;
      }

      ++v12;
      *(v13 + 16) = v24 + 1;
      v25 = (v13 + 24 * v24);
      v25[4] = v18;
      v25[5] = v20;
      v25[6] = v15;
      v8 = v14;
    }

    while (v10 != v12);

    v1 = v30;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v26 = *(v1 + 16);

  v27 = sub_1D4EFC53C(v13, v26);

  if ((v27 & 1) == 0)
  {
    sub_1D538B1CC();
    v28 = *(v1 + 16);
    *(v1 + 16) = v13;
  }
}

uint64_t MusicRoutingController.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MusicKitInternal22MusicRoutingController_activeMonitoringPublisher;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5030, &unk_1D565A1F0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t MusicRoutingController.__deallocating_deinit()
{
  MusicRoutingController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D538B614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D538B140();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MusicRoutingController()
{
  result = qword_1EC7F5048;
  if (!qword_1EC7F5048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D538B690()
{
  sub_1D538B7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D538B7E4()
{
  if (!qword_1EC7F5058)
  {
    type metadata accessor for MusicRoutingController.Monitor();
    sub_1D538B874();
    v0 = sub_1D5610AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F5058);
    }
  }
}

unint64_t sub_1D538B874()
{
  result = qword_1EC7F5060;
  if (!qword_1EC7F5060)
  {
    type metadata accessor for MusicRoutingController.Monitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5060);
  }

  return result;
}

uint64_t sub_1D538B8C8(void *a1)
{
  result = sub_1D538B984();
  if (result)
  {
    v4 = *(v1 + 24);
    if (v4)
    {
      [v4 beginRouteDiscovery];
    }

    return [a1 endRouteDiscovery];
  }

  return result;
}

void sub_1D538B92C(void *a1)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v2 = a1;
  sub_1D538B8C8(v3);
}

uint64_t sub_1D538B984()
{
  v1 = *(v0 + 32);

  sub_1D560F608();

  return v3;
}

uint64_t sub_1D538B9F8()
{
  v1 = v0;
  v2 = *(v0 + 32);

  sub_1D560F608();

  if (v4 == 1)
  {
    [*(v1 + 24) beginRouteDiscovery];
  }

  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F12E0, &qword_1D564ABD0);
  sub_1D4E62A60(&qword_1EDD5D870, &qword_1EC7F12E0, &qword_1D564ABD0);
  return sub_1D560C938();
}

id sub_1D538BAE4()
{
  v1 = v0;
  v2 = *(v0 + 32);

  sub_1D560F608();

  if (v4 == 1)
  {
    return [*(v1 + 24) endRouteDiscovery];
  }

  return result;
}

uint64_t sub_1D538BB70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1D538BBA0()
{
  sub_1D538BB70();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}