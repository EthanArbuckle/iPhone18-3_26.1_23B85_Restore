uint64_t sub_1D542A6C4()
{
  sub_1D56162D8();
  sub_1D5429FF0();
  return sub_1D5616328();
}

uint64_t sub_1D542A70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5429874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D542A734(uint64_t a1)
{
  v2 = sub_1D542A824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D542A770(uint64_t a1)
{
  v2 = sub_1D542A824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D542A7E8()
{
  sub_1D56162D8();
  sub_1D5429FF0();
  return sub_1D5616328();
}

unint64_t sub_1D542A824()
{
  result = qword_1EC7F6650;
  if (!qword_1EC7F6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6650);
  }

  return result;
}

uint64_t sub_1D542A878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformRadioShow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542A8DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D542A934()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C640);
  __swift_project_value_buffer(v0, qword_1EC87C640);
  return sub_1D560FE78();
}

unint64_t sub_1D542A980(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D542AA80(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D542AA00(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D542AA80(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D542AA80(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for StorePlatformRadioShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D542ABA4()
{
  result = qword_1EC7F6660;
  if (!qword_1EC7F6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6660);
  }

  return result;
}

unint64_t sub_1D542ABFC()
{
  result = qword_1EC7F6668;
  if (!qword_1EC7F6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6668);
  }

  return result;
}

unint64_t sub_1D542AC54()
{
  result = qword_1EC7F6670;
  if (!qword_1EC7F6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6670);
  }

  return result;
}

uint64_t sub_1D542ACA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v85 = sub_1D5610088();
  v3 = OUTLINED_FUNCTION_4(v85);
  v71 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v73 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = sub_1D560D838();
  v23 = OUTLINED_FUNCTION_4(v22);
  v77 = v24;
  v78 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v74 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v71 - v30;
  v81 = sub_1D5612478();
  v32 = OUTLINED_FUNCTION_4(v81);
  v84 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v83 = v36 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v86 = &v71 - v39;
  v40 = *(a1 + 16);
  v41 = (a1 + 32);
  v42 = v40;
  v43 = (a1 + 32);
  while (1)
  {
    if (!v42)
    {
      v45 = 2;
      goto LABEL_9;
    }

    if ((*v43 & 1) == 0)
    {
      break;
    }

    v44 = sub_1D5616168();
    OUTLINED_FUNCTION_5_129();
    ++v43;
    --v42;
    if (v44)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_5_129();
LABEL_8:
  v45 = 1;
LABEL_9:
  v79 = v45;
  while (1)
  {
    if (!v40)
    {
      v47 = 2;
      goto LABEL_17;
    }

    if (*v41 == 1)
    {
      break;
    }

    v46 = sub_1D5616168();
    OUTLINED_FUNCTION_5_129();
    ++v41;
    --v40;
    if (v46)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_5_129();
LABEL_16:
  v47 = 1;
LABEL_17:
  v48 = (v80 + *(type metadata accessor for MusicSuggestedSongsEntry() + 20));
  v49 = *v48;
  v50 = v48[1];
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v51)
  {
    v76 = v49;
  }

  else
  {
    v76 = 0;
    v50 = 0;
  }

  sub_1D5613838();
  sub_1D560EC98();
  sub_1D560FFA8();
  v52 = v85;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v85);
  sub_1D560FE48();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v52);
  sub_1D560D4D8();
  sub_1D4E50004(v18, &qword_1EC7EA358, &unk_1D561DF50);
  v53 = v86;
  sub_1D4E50004(v21, &qword_1EC7EA358, &unk_1D561DF50);
  v54 = v78;
  v55 = *(v77 + 8);
  v55(v31, v78);
  sub_1D560EC98();
  LOBYTE(v52) = sub_1D560D7E8();
  v56 = v31;
  v57 = v54;
  v55(v56, v54);
  v58 = v81;
  if (v52)
  {
    LODWORD(v77) = v47;
    v59 = v74;
    sub_1D560EC98();
    v60 = v75;
    sub_1D560D7A8();
    v55(v59, v57);
    v61 = sub_1D560F148();
    if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
    {
      sub_1D4E50004(v60, &unk_1EC7F1970, &qword_1D561F4A0);
    }

    else
    {
      sub_1D560F138();
      (*(*(v61 - 8) + 8))(v60, v61);
      v62 = v73;
      sub_1D5612468();
      v63 = v72;
      sub_1D560FDD8();
      v64 = v71;
      v65 = *(v71 + 8);
      v66 = v85;
      v65(v62, v85);
      (*(v64 + 16))(v62, v63, v66);
      sub_1D560FDE8();
      v67 = v83;
      sub_1D5612438();
      v65(v63, v66);
      v53 = v86;
      v68 = v84;
      (*(v84 + 8))(v86, v58);
      (*(v68 + 32))(v53, v67, v58);
    }

    LOBYTE(v47) = v77;
  }

  v69 = v84;
  (*(v84 + 16))(v83, v53, v58);
  v87 = v76;
  v88 = v50;
  v89 = v79;
  v90 = v47;
  sub_1D5612E68();
  return (*(v69 + 8))(v53, v58);
}

uint64_t MusicSuggestedSongsEntry.init<A>(song:moduleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D5613838();
  OUTLINED_FUNCTION_4(v8);
  v10 = v9;
  (*(v11 + 16))(a4, a1, v8);
  sub_1D56150C8();
  (*(*(a3 - 8) + 8))(a2, a3);
  (*(v10 + 8))(a1, v8);
  result = type metadata accessor for MusicSuggestedSongsEntry();
  v13 = (a4 + *(result + 20));
  *v13 = v14;
  v13[1] = v15;
  return result;
}

uint64_t type metadata accessor for MusicSuggestedSongsEntry()
{
  result = qword_1EC7F66A0;
  if (!qword_1EC7F66A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSuggestedSongsEntry.song.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D5613838();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MusicSuggestedSongsEntry.rawModuleID.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicSuggestedSongsEntry() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

MusicKitInternal::MusicSuggestedSongsEntry::UserInteraction_optional __swiftcall MusicSuggestedSongsEntry.UserInteraction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MusicSuggestedSongsEntry.UserInteraction.rawValue.getter()
{
  if (*v0)
  {
    return 0x6577656976657270;
  }

  else
  {
    return 0x6573736572706D69;
  }
}

uint64_t sub_1D542B648@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSuggestedSongsEntry.UserInteraction.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE900000000000064;
  return result;
}

uint64_t sub_1D542B728(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D4F3CAEC();
}

uint64_t static MusicSuggestedSongsEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D56137A8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MusicSuggestedSongsEntry() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1D5616168();
}

uint64_t sub_1D542B7CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C75646F4D776172 && a2 == 0xEB00000000444965)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D542B898(char a1)
{
  if (a1)
  {
    return 0x6C75646F4D776172;
  }

  else
  {
    return 1735290739;
  }
}

uint64_t sub_1D542B8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D542B7CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D542B900(uint64_t a1)
{
  v2 = sub_1D542BB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D542B93C(uint64_t a1)
{
  v2 = sub_1D542BB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSuggestedSongsEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6678, &qword_1D56641D0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542BB18();
  sub_1D56163D8();
  v20[15] = 0;
  sub_1D5613838();
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v14, v15);
  sub_1D56160C8();
  if (!v2)
  {
    v16 = (v3 + *(type metadata accessor for MusicSuggestedSongsEntry() + 20));
    v17 = *v16;
    v18 = v16[1];
    v20[14] = 1;
    sub_1D5616088();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1D542BB18()
{
  result = qword_1EC7F6680;
  if (!qword_1EC7F6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6680);
  }

  return result;
}

uint64_t MusicSuggestedSongsEntry.hash(into:)()
{
  sub_1D5613838();
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v1, v2);
  sub_1D5614CB8();
  v3 = (v0 + *(type metadata accessor for MusicSuggestedSongsEntry() + 20));
  v4 = *v3;
  v5 = v3[1];

  return sub_1D5614E28();
}

uint64_t MusicSuggestedSongsEntry.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5613838();
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v1, v2);
  sub_1D5614CB8();
  v3 = (v0 + *(type metadata accessor for MusicSuggestedSongsEntry() + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t MusicSuggestedSongsEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1D5613838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v38 = v6;
  v39 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6688, &qword_1D56641D8);
  v11 = OUTLINED_FUNCTION_4(v40);
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = type metadata accessor for MusicSuggestedSongsEntry();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542BB18();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v20;
  v22 = v38;
  v42 = 0;
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v23, v24);
  v25 = v39;
  sub_1D5615FD8();
  (*(v22 + 32))(v35, v10, v25);
  v41 = 1;
  v26 = sub_1D5615F98();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_3_175();
  v30(v29);
  v32 = v35;
  v31 = v36;
  v33 = &v35[*(v15 + 20)];
  *v33 = v26;
  v33[1] = v28;
  sub_1D542C048(v32, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D542C0AC(v32);
}

uint64_t sub_1D542BFB4(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5613838();
  OUTLINED_FUNCTION_0_227();
  sub_1D542C1A8(v4, v5);
  sub_1D5614CB8();
  v6 = (v2 + *(a2 + 20));
  v7 = *v6;
  v8 = v6[1];
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D542C048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedSongsEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542C0AC(uint64_t a1)
{
  v2 = type metadata accessor for MusicSuggestedSongsEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D542C10C()
{
  result = qword_1EC7F6690;
  if (!qword_1EC7F6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6690);
  }

  return result;
}

uint64_t sub_1D542C1A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D542C218()
{
  result = sub_1D5613838();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_1D542C29C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D542C37C()
{
  result = qword_1EC7F66B0;
  if (!qword_1EC7F66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F66B0);
  }

  return result;
}

unint64_t sub_1D542C3D4()
{
  result = qword_1EC7F66B8;
  if (!qword_1EC7F66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F66B8);
  }

  return result;
}

unint64_t sub_1D542C42C()
{
  result = qword_1EC7F66C0;
  if (!qword_1EC7F66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F66C0);
  }

  return result;
}

unint64_t sub_1D542C480()
{
  result = qword_1EC7F66C8;
  if (!qword_1EC7F66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F66C8);
  }

  return result;
}

uint64_t sub_1D542C4D8()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v0[2] = v3;
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D542C56C;

  return sub_1D542CB8C(v2);
}

uint64_t sub_1D542C56C()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v0;
  *(v2 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D542C660, 0, 0);
}

uint64_t sub_1D542C660()
{
  v24 = v0;
  v1 = sub_1D4E62628(v0[5]);
  v2 = v0[5];
  if (v1)
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F66D0, &qword_1D5664530) + 48);
    *v4 = v2;
    v6 = sub_1D5614898();
    (*(*(v6 - 8) + 16))(&v4[v5], v3, v6);
    v7 = type metadata accessor for MusicLibraryIntentDonation();
    swift_storeEnumTagMultiPayload();
    v8 = v4;
    v9 = 0;
    v10 = 1;
    v11 = v7;
  }

  else
  {
    v12 = v0[5];

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82();
    }

    v13 = sub_1D560C758();
    __swift_project_value_buffer(v13, qword_1EDD76AF0);
    v14 = sub_1D560C738();
    v15 = sub_1D56156C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D4E6835C(0xD000000000000014, 0x80000001D568DEF0, &v23);
      OUTLINED_FUNCTION_89_3(&dword_1D4E3F000, v18, v19, "%s: could not produce intent from music items");
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    v20 = v0[2];
    type metadata accessor for MusicLibraryIntentDonation();
    v8 = OUTLINED_FUNCTION_5_130();
  }

  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v21 = v0[1];

  return v21();
}

uint64_t sub_1D542C85C()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1D542C8F0;

  return sub_1D542CB8C(v2);
}

uint64_t sub_1D542C8F0()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v0;
  *(v2 + 32) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D542C9E4, 0, 0);
}

uint64_t sub_1D542C9E4()
{
  v18 = v0;
  if (sub_1D4E62628(v0[4]))
  {
    v1 = v0[2];
    *v1 = v0[4];
    v2 = type metadata accessor for MusicLibraryIntentDonation();
    swift_storeEnumTagMultiPayload();
    v3 = v1;
    v4 = 0;
    v5 = 1;
    v6 = v2;
  }

  else
  {

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82();
    }

    v7 = sub_1D560C758();
    __swift_project_value_buffer(v7, qword_1EDD76AF0);
    v8 = sub_1D560C738();
    v9 = sub_1D56156C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1D4E6835C(0xD000000000000010, 0x80000001D568DED0, &v17);
      OUTLINED_FUNCTION_89_3(&dword_1D4E3F000, v12, v13, "%s: could not produce intent from music items");
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    v14 = v0[2];
    type metadata accessor for MusicLibraryIntentDonation();
    v3 = OUTLINED_FUNCTION_5_130();
  }

  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v15 = v0[1];

  return v15();
}

uint64_t sub_1D542CBAC()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 24);
  v3 = v2[2];
  *(v0 + 32) = v3;
  if (v3)
  {
    *(v0 + 40) = 0;
    *(v0 + 48) = v1;
    OUTLINED_FUNCTION_1_170(v2);
    *(v0 + 73) = *(v0 + 72);
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_0_228(v4);

    return MusicItem.convertToIntentMediaItem(for:)();
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t sub_1D542CC94()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_24_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  *v4 = *v1;
  *(v3 + 64) = v7;

  if (v0)
  {

    v8 = sub_1D542CEE0;
  }

  else
  {
    v8 = sub_1D542CDA4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D542CDA4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = (v0 + 16);
    v3 = v1;
    MEMORY[0x1DA6EAF30]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D56151B8();
    }

    sub_1D56151F8();
  }

  else
  {
    v2 = (v0 + 48);
  }

  v4 = *v2;
  v5 = *(v0 + 40) + 1;
  if (v5 == *(v0 + 32))
  {
    OUTLINED_FUNCTION_50();

    return v6();
  }

  else
  {
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;
    OUTLINED_FUNCTION_1_170((*(v0 + 24) + 40 * v5));
    *(v0 + 73) = *(v0 + 72);
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_0_228();

    return MusicItem.convertToIntentMediaItem(for:)();
  }
}

uint64_t sub_1D542CEE0()
{
  v1 = *(v0 + 40) + 1;
  if (v1 == *(v0 + 32))
  {
    v2 = *(v0 + 48);
    OUTLINED_FUNCTION_50();

    return v3();
  }

  else
  {
    *(v0 + 40) = v1;
    OUTLINED_FUNCTION_1_170((*(v0 + 24) + 40 * v1));
    *(v0 + 73) = *(v0 + 72);
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_1D542CC94;

    return MusicItem.convertToIntentMediaItem(for:)();
  }
}

id sub_1D542CFEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F66D8, qword_1D5664538);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_1D5614898();
  v7 = OUTLINED_FUNCTION_4(v6);
  v47 = v8;
  v48 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D560C968();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  v24 = type metadata accessor for MusicLibraryIntentDonation();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v45 - v29);
  sub_1D542D570(v1, &v45 - v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = *v30;
  if (EnumCaseMultiPayload == 1)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F66D0, &qword_1D5664530);
    (*(v47 + 8))(v30 + *(v32 + 48), v48);
  }

  sub_1D542D570(v1, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v28;

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F66D0, &qword_1D5664530);
    v35 = v47;
    v36 = v28 + *(v34 + 48);
    v37 = v48;
    (*(v47 + 32))(v12, v36, v48);
    v38 = sub_1D56146D8();
    v40 = v39;
    (*(v35 + 8))(v12, v37);
    *v21 = v38;
    v21[1] = v40;
    v41 = MEMORY[0x1E69E8180];
  }

  else
  {
    sub_1D542D5D4(v28);
    v41 = MEMORY[0x1E69E8178];
  }

  (*(v16 + 104))(v21, *v41, v13);
  (*(v16 + 32))(v23, v21, v13);
  (*(v16 + 16))(v5, v23, v13);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
  v42 = objc_allocWithZone(MEMORY[0x1E696E708]);
  v43 = sub_1D542D42C(v46, 0, v5);
  (*(v16 + 8))(v23, v13);
  return v43;
}

uint64_t sub_1D542D3B4()
{
  OUTLINED_FUNCTION_60();
  sub_1D542CFEC();
  OUTLINED_FUNCTION_50();

  return v0();
}

id sub_1D542D42C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    sub_1D5423530();
    v7 = sub_1D5615158();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1D560C968();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v8) != 1)
  {
    v9 = sub_1D560C958();
    (*(*(v8 - 8) + 8))(a3, v8);
  }

  v10 = [v4 initWithMediaItems:v7 mediaSearch:a2 mediaDestination:v9];

  return v10;
}

uint64_t type metadata accessor for MusicLibraryIntentDonation()
{
  result = qword_1EC7F66E0;
  if (!qword_1EC7F66E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D542D570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicLibraryIntentDonation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542D5D4(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibraryIntentDonation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D542D630()
{
  sub_1D542D6A4();
  if (v0 <= 0x3F)
  {
    sub_1D542D6FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D542D6A4()
{
  if (!qword_1EC7F66F0)
  {
    sub_1D5423530();
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F66F0);
    }
  }
}

void sub_1D542D6FC()
{
  if (!qword_1EC7F66F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6700, qword_1D5664570);
    sub_1D5614898();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7F66F8);
    }
  }
}

uint64_t VideoCredit.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VideoCredit.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoCredit() + 20);
  v4 = sub_1D560C0A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for VideoCredit()
{
  result = qword_1EC7F6730;
  if (!qword_1EC7F6730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static VideoCredit.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D5616168() & 1) != 0)
  {
    v5 = type metadata accessor for VideoCredit();
    v6 = *(v5 + 20);
    if (sub_1D560BFB8())
    {
      v7 = *(v5 + 24);
      v8 = *(a1 + v7);
      v9 = *(a2 + v7);

      sub_1D4F286E0();
    }
  }
}

uint64_t sub_1D542D91C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
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

uint64_t sub_1D542DA34(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 0x65756C6156776172;
}

uint64_t sub_1D542DA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D542D91C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D542DAB0(uint64_t a1)
{
  v2 = sub_1D542DD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D542DAEC(uint64_t a1)
{
  v2 = sub_1D542DD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VideoCredit.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6708, &unk_1D5664590);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542DD00();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  v24 = 0;
  sub_1D5616088();
  if (!v2)
  {
    v16 = type metadata accessor for VideoCredit();
    v17 = *(v16 + 20);
    v23 = 1;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_229();
    sub_1D542E6D8(v18, v19);
    OUTLINED_FUNCTION_5_131();
    v22 = *(v3 + *(v16 + 24));
    v21[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_5_131();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1D542DD00()
{
  result = qword_1EC7F6710;
  if (!qword_1EC7F6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6710);
  }

  return result;
}

void VideoCredit.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1D5614E28();
  v4 = type metadata accessor for VideoCredit();
  v5 = *(v4 + 20);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_229();
  sub_1D542E6D8(v6, v7);
  sub_1D5614CB8();
  v8 = *(v1 + *(v4 + 24));

  sub_1D4F31AC0();
}

uint64_t VideoCredit.hashValue.getter()
{
  v1 = v0;
  sub_1D56162D8();
  v2 = *v0;
  v3 = v0[1];
  sub_1D5614E28();
  v4 = type metadata accessor for VideoCredit();
  v5 = *(v4 + 20);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_229();
  sub_1D542E6D8(v6, v7);
  sub_1D5614CB8();
  v8 = *(v1 + *(v4 + 24));
  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t VideoCredit.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1D560C0A8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v31 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6718, &qword_1D56645A0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v32 = v12;
  v33 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  v17 = type metadata accessor for VideoCredit();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542DD00();
  v34 = v16;
  v22 = v35;
  sub_1D5616398();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v17;
  v39 = 0;
  *v20 = sub_1D5615F98();
  v20[1] = v23;
  v29[2] = v23;
  v38 = 1;
  OUTLINED_FUNCTION_0_229();
  sub_1D542E6D8(v24, v25);
  sub_1D5615FD8();
  (*(v31 + 32))(v20 + *(v35 + 20), v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v37 = 2;
  sub_1D4F31CF4();
  v29[1] = 0;
  sub_1D5615FD8();
  v26 = OUTLINED_FUNCTION_2_171();
  v27(v26);
  *(v20 + *(v35 + 24)) = v36;
  sub_1D542E5D0(v20, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D542E634(v20);
}

uint64_t sub_1D542E28C()
{
  sub_1D56162D8();
  VideoCredit.hash(into:)();
  return sub_1D5616328();
}

uint64_t VideoCredit.Category.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VideoCredit.Category.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  sub_1D5616358();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_1_1();
    v6 = sub_1D5616188();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VideoCredit.Category.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D56161A8();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D542E534@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = VideoCredit.Category.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D542E574@<X0>(uint64_t *a1@<X8>)
{
  result = VideoCredit.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D542E5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoCredit();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542E634(uint64_t a1)
{
  v2 = type metadata accessor for VideoCredit();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D542E6D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D542E724()
{
  result = qword_1EC7F6728;
  if (!qword_1EC7F6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6728);
  }

  return result;
}

void sub_1D542E7A0()
{
  sub_1D560C0A8();
  if (v0 <= 0x3F)
  {
    sub_1D4E5CF94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VideoCredit.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D542E924()
{
  result = qword_1EC7F6740;
  if (!qword_1EC7F6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6740);
  }

  return result;
}

unint64_t sub_1D542E97C()
{
  result = qword_1EC7F6748;
  if (!qword_1EC7F6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6748);
  }

  return result;
}

unint64_t sub_1D542E9D4()
{
  result = qword_1EC7F6750;
  if (!qword_1EC7F6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6750);
  }

  return result;
}

uint64_t Composer.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v115 = a4;
  v113 = a5;
  v112 = sub_1D5612B88();
  v8 = OUTLINED_FUNCTION_4(v112);
  v111 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v13 - v12);
  v14 = sub_1D5610088();
  v15 = OUTLINED_FUNCTION_4(v14);
  v103 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v20 - v19);
  v21 = sub_1D560D838();
  v22 = OUTLINED_FUNCTION_4(v21);
  v118 = v23;
  v119 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v101 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB548, &qword_1D56648E0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_48(&v99 - v30);
  v31 = type metadata accessor for ComposerPropertyProvider();
  v32 = OUTLINED_FUNCTION_14(v31);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v100 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v116 = &v99 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v99 - v43;
  v109 = sub_1D5612478();
  v45 = OUTLINED_FUNCTION_4(v109);
  v108 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v51 = v50 - v49;

  v114 = a2;
  sub_1D560F7E8();
  v106 = sub_1D542F42C();
  v105 = sub_1D5614C68();

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v14);
  sub_1D5610028();
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v14);
  sub_1D560D4D8();
  sub_1D4E50004(v42, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v44, &qword_1EC7EA358, &unk_1D561DF50);
  v115 = a3;
  sub_1D4EC76A8(a3, v120);
  v117 = a1;
  v107 = v51;
  if (!v121)
  {
    sub_1D4E50004(v120, &qword_1EC7EEC40, &unk_1D561C070);
    v122 = 0u;
    v123 = 0u;
    v124 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    goto LABEL_8;
  }

  if (!*(&v123 + 1))
  {
LABEL_8:
    sub_1D4E50004(&v122, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v122, &v125);
  __swift_project_boxed_opaque_existential_1(&v125, v126);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v55 = v104;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v31);
    v56 = v100;
    sub_1D4F1A9D4(v55, v100);
    v57 = v116;
    sub_1D542F480(v56, v116);
    v58 = v56 + v31[8];
    v59 = v101;
    sub_1D560D718();
    (*(v118 + 40))(v57 + v31[8], v59, v119);
    v60 = v102;
    sub_1D5612468();
    (*(v103 + 40))(v57 + v31[9], v60, v14);
    v61 = sub_1D5612458();
    v63 = v62;
    sub_1D4F1AA38(v56);
    v64 = (v57 + v31[10]);
    v65 = v64[1];

    *v64 = v61;
    v64[1] = v63;
    __swift_destroy_boxed_opaque_existential_1(&v125);
    v66 = v31;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v31);
  sub_1D4E50004(v55, &qword_1EC7EB548, &qword_1D56648E0);
  __swift_destroy_boxed_opaque_existential_1(&v125);
  a1 = v117;
LABEL_9:
  v67 = v31[5];
  sub_1D560C328();
  v68 = v31;
  v69 = v116;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  v74 = v68[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  (*(v118 + 16))(&v69[v68[8]], a1, v119);
  v66 = v68;
  v79 = &v69[v68[9]];
  sub_1D5612468();
  v104 = sub_1D5612458();
  v81 = v80;
  sub_1D5614A88();
  v82 = OUTLINED_FUNCTION_1_171();
  v83 = OUTLINED_FUNCTION_1_171();
  v84 = OUTLINED_FUNCTION_1_171();
  v85 = OUTLINED_FUNCTION_1_171();
  *v69 = 0;
  *(v69 + 1) = 0;
  if (qword_1EC7E8990 != -1)
  {
    swift_once();
  }

  v86 = qword_1EC87BE50;
  if (qword_1EC87BE50 >> 62)
  {
    sub_1D560CDE8();

    v98 = sub_1D5615E18();

    v86 = v98;
    v69 = v116;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v69[v68[7]] = v86;
  v87 = &v69[v68[10]];
  *v87 = v104;
  *(v87 + 1) = v81;
  *&v69[v68[11]] = v82;
  *&v69[v68[12]] = v83;
  *&v69[v68[13]] = v84;
  *&v69[v68[14]] = v85;
  v57 = v69;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v125) = 1;
  LODWORD(v116) = *MEMORY[0x1E6976668];
  v88 = v111;
  v104 = *(v111 + 104);
  v89 = v110;
  v90 = v112;
  v104(v110);
  v103 = sub_1D542FCB8(&qword_1EC7EB530, type metadata accessor for ComposerPropertyProvider);
  sub_1D5610D68();

  v91 = *(v88 + 8);
  v91(v89, v90);
  swift_getKeyPath();
  LOBYTE(v125) = 0;
  (v104)(v89, v116, v90);
  v92 = v103;
  sub_1D5610D68();

  v91(v89, v90);
  v126 = v66;
  v127 = v92;
  v93 = __swift_allocate_boxed_opaque_existential_0(&v125);
  sub_1D542F480(v57, v93);
  Composer.init(propertyProvider:)(&v125, v113);
  swift_unknownObjectRelease();
  sub_1D4E50004(v115, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v118 + 8))(v117, v119);
  (*(v108 + 8))(v107, v109);
  return sub_1D4F1AA38(v57);
}

unint64_t sub_1D542F42C()
{
  result = qword_1EC7F6758;
  if (!qword_1EC7F6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6758);
  }

  return result;
}

uint64_t sub_1D542F480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposerPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542F4E4()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD54858);
  v1 = __swift_project_value_buffer(v0, qword_1EDD54858);
  v2 = *MEMORY[0x1E6976880];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Composer.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD54850 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EDD54858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Composer.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  sub_1D4ECC83C();
  v11 = sub_1D5614BD8();
  v4 = Composer.name.getter();
  *(&v10 + 1) = MEMORY[0x1E69E6158];
  *&v9 = v4;
  *(&v9 + 1) = v5;
  sub_1D4EC8CD0(&v9, 0);
  if (qword_1EC7E90E8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D560C328();
  sub_1D542FCB8(&qword_1EDD54820, type metadata accessor for Composer);
  sub_1D542FCB8(&qword_1EDD54818, type metadata accessor for Composer);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    sub_1D4E50004(v3, &qword_1EC7EA3B8, &unk_1D561E370);
    v9 = 0u;
    v10 = 0u;
  }

  else
  {
    *(&v10 + 1) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v9);
    (*(*(v6 - 8) + 32))(boxed_opaque_existential_0, v3, v6);
  }

  sub_1D4EC8CD0(&v9, 1);
  return v11;
}

uint64_t Composer.LegacyModelComposerPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t Composer.LegacyModelComposerPropertyKey.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000027;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_1D542F8FC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Composer.LegacyModelComposerPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D542F908@<X0>(unint64_t *a1@<X8>)
{
  result = Composer.LegacyModelComposerPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Composer.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976880];
  v3 = sub_1D5613158();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

unint64_t sub_1D542F9A0()
{
  result = qword_1EC7F6760;
  if (!qword_1EC7F6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6760);
  }

  return result;
}

unint64_t sub_1D542F9FC()
{
  result = qword_1EC7F6768;
  if (!qword_1EC7F6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6768);
  }

  return result;
}

uint64_t sub_1D542FA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D542FCB8(&qword_1EDD54810, type metadata accessor for Composer);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D542FB50()
{
  sub_1D542FCB8(&qword_1EC7EF9A8, type metadata accessor for Composer);

  return sub_1D56132F8();
}

_BYTE *_s30LegacyModelComposerPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D542FCB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D542FD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D5610088();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  if (a2)
  {
    v15 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
    if (v15 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FFB8();
LABEL_8:
      (*(v9 + 32))(a3, v14, v6);
      return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    }

    v17 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
    if (v17 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FFD8();
      goto LABEL_8;
    }

    v18 = a1 == 0x646E617262 && a2 == 0xE500000000000000;
    if (v18 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FFF8();
      goto LABEL_8;
    }

    v19 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
    if (v19 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FE28();
      goto LABEL_8;
    }

    v20 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
    if (v20 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FE38();
      goto LABEL_8;
    }

    v21 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
    if (v21 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D5610038();
      goto LABEL_8;
    }

    v22 = a1 == 1735290739 && a2 == 0xE400000000000000;
    if (v22 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FFA8();
      goto LABEL_8;
    }

    v23 = a1 == 0x6174536F69646172 && a2 == 0xEC0000006E6F6974;
    if (v23 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D5610008();
      goto LABEL_8;
    }

    v24 = a1 == 0x724273656E755469 && a2 == 0xEB00000000646E61;
    if (v24 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FE78();
      goto LABEL_8;
    }

    v25 = a1 == 0x646F736970457674 && a2 == 0xE900000000000065;
    if (v25 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D5610078();
      goto LABEL_8;
    }

    v26 = a1 == 0x6E6F736165537674 && a2 == 0xE800000000000000;
    if (v26 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D5610068();
      goto LABEL_8;
    }

    v27 = a1 == 0x6E617242776F6873 && a2 == 0xE900000000000064;
    if (v27 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FFE8();
      goto LABEL_8;
    }

    v28 = a1 == 0x646564616F6C7075 && a2 == 0xED00006F69647541;
    if (v28 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FF28();
      goto LABEL_8;
    }

    v29 = a1 == 0x646564616F6C7075 && a2 == 0xED00006F65646956;
    if (v29 || (OUTLINED_FUNCTION_0_87() & 1) != 0)
    {

      sub_1D560FF38();
      goto LABEL_8;
    }

    if (a1 == 0x666F725072657375 && a2 == 0xEB00000000656C69)
    {
    }

    else
    {
      v31 = OUTLINED_FUNCTION_0_87();

      if ((v31 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    sub_1D560FE68();
    goto LABEL_8;
  }

LABEL_92:

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
}

uint64_t sub_1D54301F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a3;
  v63 = a4;
  v60 = a2;
  v64 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v57 - v8;
  v10 = sub_1D560F148();
  v11 = OUTLINED_FUNCTION_4(v10);
  v58 = v12;
  v59 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - v17;
  v19 = sub_1D560E728();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_5();
  v61 = v22 - v21;
  v23 = sub_1D560D9A8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = sub_1D5610088();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  sub_1D560FE68();
  v36 = a1;
  v37 = sub_1D4F3B22C();
  (*(v30 + 8))(v35, v27);
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_4_135();
    v39(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v40 = sub_1D560DB08();
    OUTLINED_FUNCTION_4(v40);
    v42 = v41;
    v44 = *(v43 + 72);
    v45 = OUTLINED_FUNCTION_3_176();
    *(v45 + 16) = xmmword_1D561C050;
    (*(v42 + 104))(v45 + v37, *MEMORY[0x1E6975048], v40);

    sub_1D560E718();
    return sub_1D560D748();
  }

  else
  {
    (*(v30 + 16))(v9, v36, v27);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v27);

    sub_1D560F128();
    v47 = v58;
    v48 = v59;
    (*(v58 + 16))(v57, v18, v59);
    v49 = OUTLINED_FUNCTION_4_135();
    v50(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v51 = sub_1D560DB08();
    OUTLINED_FUNCTION_4(v51);
    v53 = v52;
    v55 = *(v54 + 72);
    v56 = OUTLINED_FUNCTION_3_176();
    *(v56 + 16) = xmmword_1D561C050;
    (*(v53 + 104))(v56 + v37, *MEMORY[0x1E6975048], v51);
    sub_1D560E718();
    sub_1D560D798();
    return (*(v47 + 8))(v18, v48);
  }
}

uint64_t MigratedAlbum.init(id:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 40) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(a5 + 24) = a4;
  *(a5 + 32) = v5;
  *(a5 + 48) = 1;
  *(a5 + 56) = 0;
  *(a5 + 64) = 1;
  *(a5 + 72) = 0;
  *(a5 + 80) = 513;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return result;
}

uint64_t MigratedAlbum.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v22 = v0[7];
  v23 = v0[9];
  v9 = *(v0 + 80);
  v25 = *(v0 + 81);
  v24 = v0[11];
  v26 = v0[12];
  OUTLINED_FUNCTION_1_172();
  v28 = v10;
  v29 = v11;
  strcpy(v27, "\n  id: ");
  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  HIDWORD(v27[1]) = -402653184;

  MEMORY[0x1DA6EAC70](v1, v2);
  OUTLINED_FUNCTION_4_136();
  MEMORY[0x1DA6EAC70](v27[0], v27[1]);

  strcpy(v27, ",\n  title: ");
  HIWORD(v27[1]) = -5120;
  MEMORY[0x1DA6EAC70](v3, v4);
  OUTLINED_FUNCTION_4_136();
  MEMORY[0x1DA6EAC70](v27[0], v27[1]);

  v27[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0798, &qword_1D5639040);
  sub_1D513CA30();
  sub_1D56155F8();

  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v27[0] = 0xD00000000000001DLL;
    v27[1] = v19;
    v20 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v20);

    OUTLINED_FUNCTION_3_177();

    if (v8)
    {
LABEL_3:
      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_230();
  sub_1D5615B68();

  v27[0] = 0x6373696420200A2CLL;
  v27[1] = 0xEF203A746E756F43;
  v21 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v21);

  OUTLINED_FUNCTION_3_177();

  if ((v9 & 1) == 0)
  {
LABEL_4:
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v27[0] = 0xD000000000000010;
    v27[1] = v12;
    v13 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v13);

    OUTLINED_FUNCTION_3_177();
  }

LABEL_5:
  if (v25 != 2)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v27[0] = 0xD000000000000013;
    v27[1] = v14;
    if (v25)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v25)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    MEMORY[0x1DA6EAC70](v15, v16);

    OUTLINED_FUNCTION_3_177();
  }

  if (v26)
  {
    OUTLINED_FUNCTION_0_230();
    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    v27[1] = v17;
    MEMORY[0x1DA6EAC70](v24, v26);
    OUTLINED_FUNCTION_4_136();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, v27[1]);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v28;
}

uint64_t MigratedAlbum.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MigratedAlbum.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MigratedAlbum.artists.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MigratedAlbum.releaseDateMilliseconds.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t MigratedAlbum.new_discCount.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t MigratedAlbum.new_discCount.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t MigratedAlbum.new_trackCount.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t MigratedAlbum.new_trackCount.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t MigratedAlbum.artworkImageFilePath.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t MigratedAlbum.artworkImageFilePath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t static MigratedAlbum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v33 = *(a1 + 40);
  v5 = *(a1 + 48);
  v30 = *(a1 + 56);
  v34 = *(a1 + 64);
  v31 = *(a1 + 80);
  v27 = *(a1 + 81);
  v22 = *(a1 + 88);
  v24 = *(a1 + 96);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v28 = *(a2 + 56);
  v11 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a1 + 72);
  v29 = *(a2 + 80);
  v32 = *(a2 + 81);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v21 = *(a2 + 88);
  v23 = *(a2 + 96);
  if (!v12 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v6 && v4 == v7;
  if (!v13 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  sub_1D4EF9FCC();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v33 == v8)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v34)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v30 == v28)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v31)
  {
    v17 = v32;
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    v18 = v29;
    if (v26 != v25)
    {
      v18 = 1;
    }

    v17 = v32;
    if (v18)
    {
      return 0;
    }
  }

  if (v27 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }

LABEL_37:
    if (v24)
    {
      if (!v23)
      {
        return 0;
      }

      v20 = v22 == v21 && v24 == v23;
      if (!v20 && (sub_1D5616168() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v23)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v17 != 2 && ((v17 ^ v27) & 1) == 0)
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t MigratedAlbum.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48);
  v8 = v0[7];
  v9 = *(v0 + 64);
  v10 = *(v0 + 80);
  v11 = *(v0 + 81);
  v13 = v0[9];
  v14 = v0[11];
  v15 = v0[12];
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D4F086FC();
  if (v7 == 1)
  {
    sub_1D56162F8();
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D56162F8();
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D56162F8();
  MEMORY[0x1DA6EC100](v5);
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D56162F8();
  MEMORY[0x1DA6EC100](v8);
  if (!v10)
  {
LABEL_4:
    sub_1D56162F8();
    MEMORY[0x1DA6EC100](v13);
    goto LABEL_8;
  }

LABEL_7:
  sub_1D56162F8();
LABEL_8:
  if (v11 != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (!v15)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t MigratedAlbum.hashValue.getter()
{
  sub_1D56162D8();
  MigratedAlbum.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D5431078()
{
  sub_1D56162D8();
  MigratedAlbum.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D54310B4@<X0>(uint64_t *a1@<X8>)
{
  result = MigratedAlbum.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MigratedAlbum.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_1_172();
  v7 = v5;
  MEMORY[0x1DA6EAC70]();
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  MEMORY[0x1DA6EAC70](v3, v4);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x3A656C746974202CLL, 0xEA00000000002220);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v7;
}

uint64_t MigratedAlbum.releaseDateSeconds.getter()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40) / 1000;
  }
}

void MigratedAlbum.releaseDateSeconds.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
LABEL_4:
    *(v2 + 40) = v3;
    OUTLINED_FUNCTION_5_132(a1, a2);
    return;
  }

  v3 = 1000 * a1;
  if ((a1 * 1000) >> 64 == (1000 * a1) >> 63)
  {
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t *(*MigratedAlbum.releaseDateSeconds.modify(uint64_t a1))(uint64_t *result, char a2)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 40) / 1000;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  return sub_1D5431290;
}

uint64_t *sub_1D5431290(uint64_t *result, char a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    if (result[1])
    {
LABEL_6:
      v3 = 0;
      goto LABEL_8;
    }

    v3 = 1000 * *result;
    if ((*result * 1000) >> 64 == v3 >> 63)
    {
LABEL_8:
      v4 = result[2];
      *(v4 + 40) = v3;
      *(v4 + 48) = v2;
      return result;
    }

    __break(1u);
  }

  if (v2)
  {
    goto LABEL_6;
  }

  v3 = 1000 * *result;
  if ((*result * 1000) >> 64 == v3 >> 63)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t MigratedAlbum.discCount.getter()
{
  if ((*(v0 + 64) & 1) != 0 || !(*(v0 + 56) >> 31))
  {
    return OUTLINED_FUNCTION_5_2(*(v0 + 64));
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5431318@<X0>(uint64_t a1@<X8>)
{
  result = MigratedAlbum.discCount.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MigratedAlbum.discCount.setter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    v2 = 0;
LABEL_5:
    *(v1 + 56) = v2;
    *(v1 + 64) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x80000000) == 0)
  {
    v2 = result & 0x7FFFFFFF;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t *(*MigratedAlbum.discCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *result = v1;
  v2 = *(v1 + 64);
  if (v2)
  {
    LODWORD(v3) = 0;
LABEL_4:
    *(result + 2) = v3;
    *(result + 12) = v2;
    return sub_1D54313C0;
  }

  v3 = *(v1 + 56);
  if (!(v3 >> 31))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D54313C0(uint64_t *result, char a2)
{
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (a2)
  {
    if (*(result + 12))
    {
LABEL_6:
      v2 = 0;
      goto LABEL_8;
    }

    if ((v2 & 0x80000000) == 0)
    {
LABEL_8:
      v4 = *result;
      *(v4 + 56) = v2;
      *(v4 + 64) = v3;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
    goto LABEL_6;
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t MigratedAlbum.trackCount.getter()
{
  if ((*(v0 + 80) & 1) != 0 || !(*(v0 + 72) >> 31))
  {
    return OUTLINED_FUNCTION_5_2(*(v0 + 80));
  }

  __break(1u);
  return result;
}

unint64_t sub_1D543142C@<X0>(uint64_t a1@<X8>)
{
  result = MigratedAlbum.trackCount.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t MigratedAlbum.trackCount.setter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    v2 = 0;
LABEL_5:
    *(v1 + 72) = v2;
    *(v1 + 80) = BYTE4(result) & 1;
    return result;
  }

  if ((result & 0x80000000) == 0)
  {
    v2 = result & 0x7FFFFFFF;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t *(*MigratedAlbum.trackCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *result = v1;
  v2 = *(v1 + 80);
  if (v2)
  {
    LODWORD(v3) = 0;
LABEL_4:
    *(result + 2) = v3;
    *(result + 12) = v2;
    return sub_1D5431518;
  }

  v3 = *(v1 + 72);
  if (!(v3 >> 31))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D5431518(uint64_t *result, char a2)
{
  v2 = *(result + 2);
  v3 = *(result + 12);
  if (a2)
  {
    if (*(result + 12))
    {
LABEL_6:
      v2 = 0;
      goto LABEL_8;
    }

    if ((v2 & 0x80000000) == 0)
    {
LABEL_8:
      v4 = *result;
      *(v4 + 72) = v2;
      *(v4 + 80) = v3;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
    goto LABEL_6;
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5431560()
{
  result = qword_1EC7F6770;
  if (!qword_1EC7F6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6770);
  }

  return result;
}

uint64_t static CloudRealm.internal.getter()
{
  sub_1D510E1C4();
  v0 = sub_1D52FE428();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2D8, &unk_1D561DFF0);
  v1 = sub_1D560BB98();
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1D561C050;
  if ((v0 & 1) == 0)
  {
    if (qword_1EDD5CFA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_1EDD5CFA0 != -1)
  {
LABEL_8:
    OUTLINED_FUNCTION_0_231();
  }

LABEL_5:
  __swift_project_value_buffer(v1, qword_1EDD5CFA8);
  v4 = OUTLINED_FUNCTION_2_172();
  v5(v4);
  v6 = OUTLINED_FUNCTION_1_173();

  return MEMORY[0x1EEDCF708](v6);
}

uint64_t MusicDataRequest.ExecutionMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t static MusicDataRequest.preferredExecutionMethod.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EDD5F568;
  return result;
}

uint64_t sub_1D54318CC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = off_1F50BCB78[byte_1EDD5F568];

    return sub_1D560D318();
  }

  return result;
}

uint64_t sub_1D5431958@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560F5C8();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  a1(v6);
  v7 = sub_1D560D2E8();
  v8 = MEMORY[0x1E6974E68];
  a2[3] = v7;
  a2[4] = v8;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return sub_1D560D2C8();
}

unint64_t sub_1D5431A04()
{
  result = qword_1EC7F6778;
  if (!qword_1EC7F6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6780, &qword_1D5664C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6778);
  }

  return result;
}

unint64_t sub_1D5431A6C()
{
  result = qword_1EC7F6788;
  if (!qword_1EC7F6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6788);
  }

  return result;
}

_BYTE *_s15ExecutionMethodOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D5431B8C(void *a1@<X8>)
{
  v126 = a1;
  v144 = sub_1D5611C78();
  v2 = OUTLINED_FUNCTION_4(v144);
  v149 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = sub_1D56119D8();
  v8 = OUTLINED_FUNCTION_4(v148);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v13);
  v145 = &v120 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  *&v147 = &v120 - v21;
  v22 = sub_1D5612D38();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v120 - v40;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
  sub_1D5610708();
  v42 = sub_1D5612D08();
  v44 = *(v25 + 8);
  v43 = v25 + 8;
  v128 = v44;
  (v44)(v41, v22);
  if (v42)
  {
    v120 = v43;
    v121 = v22;
    v122 = v1;
    v46 = 0;
    v146 = *(v42 + 16);
    v141 = (v10 + 8);
    v142 = v18 + 16;
    v130 = 0x80000001D568DBF0;
    v137 = *MEMORY[0x1E69763E0];
    v136 = (v149 + 104);
    v135 = (v149 + 16);
    v134 = (v149 + 8);
    v132 = 0x80000001D568DBD0;
    v140 = (v18 + 8);
    v127 = MEMORY[0x1E69E7CC0];
    *&v45 = 136315138;
    v131 = v45;
    v138 = v15;
    v41 = v18;
    v139 = v18;
    v143 = v42;
LABEL_3:
    v47 = v147;
    while (1)
    {
      if (v146 == v46)
      {

        v22 = v121;
        goto LABEL_23;
      }

      if (v46 >= *(v42 + 16))
      {
        break;
      }

      v48 = v42 + ((v41[80] + 32) & ~v41[80]);
      v49 = *(v41 + 9);
      v149 = v46;
      (*(v41 + 2))(COERCE_DOUBLE(*&v47), v48 + v49 * v46, v15);
      v50 = v145;
      sub_1D5610708();
      v51 = sub_1D56119C8();
      v53 = v52;
      v54 = *v141;
      (*v141)(v50, v148);
      if (v53)
      {
        *v7 = 0xD000000000000017;
        v55 = v132;
      }

      else
      {
        v56 = v133;
        sub_1D5610708();
        v57 = sub_1D56119A8();
        v59 = v58;
        v54(v56, v148);
        if ((v59 & 1) == 0)
        {
          (*v140)(*&v147, v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v143;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v78 = *(v127 + 16);
            sub_1D4F02340();
            v127 = v79;
          }

          v75 = *(v127 + 16);
          if (v75 >= *(v127 + 24) >> 1)
          {
            sub_1D4F02340();
            v127 = v80;
          }

          v46 = v149 + 1;
          v76 = v127;
          *(v127 + 16) = v75 + 1;
          v77 = v76 + 16 * v75;
          *(v77 + 32) = v51 / 1000.0;
          *(v77 + 40) = v57 / 1000.0;
          v41 = v139;
          goto LABEL_3;
        }

        *v7 = 0xD000000000000014;
        v55 = v130;
        v41 = v139;
      }

      v7[1] = v55;
      v60 = v144;
      (*v136)(v7, v137, v144);
      sub_1D50F96EC();
      v61 = swift_allocError();
      (*v135)(v62, v7, v60);
      swift_willThrow();
      (*v134)(v7, v60);
      if (qword_1EDD5D8A8 != -1)
      {
        swift_once();
      }

      v63 = sub_1D560C758();
      __swift_project_value_buffer(v63, qword_1EDD76DC8);
      v64 = v61;
      v65 = sub_1D560C738();
      v66 = sub_1D56156C8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v150 = v61;
        v151 = v68;
        *v67 = v131;
        v69 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
        v70 = sub_1D5614DB8();
        v72 = sub_1D4E6835C(v70, v71, &v151);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_1D4E3F000, v65, v66, "Unable to decode spatial offset because of %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x1DA6ED200](v68, -1, -1);
        v73 = v67;
        v41 = v139;
        MEMORY[0x1DA6ED200](v73, -1, -1);
      }

      else
      {
      }

      v47 = v147;
      v42 = v143;
      v15 = v138;
      (*v140)(*&v147, v138);
      v46 = v149 + 1;
    }

    __break(1u);
  }

  else
  {
    v127 = 0;
LABEL_23:
    v81 = v123;
    v82 = v129;
    sub_1D5610708();
    v83 = sub_1D5612CB8();
    v85 = v84;
    v86 = v81;
    v87 = v128;
    (v128)(v86, v22);
    v88 = 0.0;
    v89 = 0.0;
    LODWORD(v148) = v85;
    if ((v85 & 1) == 0)
    {
      v89 = v83 / 1000.0;
    }

    v147 = v89;
    OUTLINED_FUNCTION_4_137(&v146);
    sub_1D5612CF8();
    v90 = OUTLINED_FUNCTION_2_173();
    v87(v90);
    LODWORD(v149) = v41;
    if ((v41 & 1) == 0)
    {
      v88 = v83 / 1000.0;
    }

    OUTLINED_FUNCTION_4_137(&v147);
    sub_1D5612CA8();
    v91 = OUTLINED_FUNCTION_2_173();
    v87(v91);
    v92 = 0.0;
    v93 = 0.0;
    LODWORD(v146) = v41;
    if ((v41 & 1) == 0)
    {
      v93 = v83 / 1000.0;
    }

    OUTLINED_FUNCTION_4_137(&v148);
    sub_1D5612CC8();
    v94 = OUTLINED_FUNCTION_2_173();
    v87(v94);
    LODWORD(v145) = v41;
    if ((v41 & 1) == 0)
    {
      v92 = v83 / 1000.0;
    }

    OUTLINED_FUNCTION_4_137(&v149);
    sub_1D5612C98();
    v95 = OUTLINED_FUNCTION_2_173();
    v87(v95);
    v96 = 0.0;
    v97 = 0.0;
    LODWORD(v144) = v41;
    if ((v41 & 1) == 0)
    {
      v97 = v83 / 1000.0;
    }

    OUTLINED_FUNCTION_4_137(&v150);
    sub_1D5612C78();
    v98 = OUTLINED_FUNCTION_2_173();
    v87(v98);
    LODWORD(v143) = v41;
    if ((v41 & 1) == 0)
    {
      v96 = v83 / 1000.0;
    }

    OUTLINED_FUNCTION_150(&v151);
    sub_1D5610708();
    v99 = sub_1D5612CE8();
    v101 = v100;
    (v87)(v82, v22);
    v102 = 0.0;
    v103 = 0.0;
    if ((v101 & 1) == 0)
    {
      v103 = v99 / 1000.0;
    }

    OUTLINED_FUNCTION_150(v152);
    sub_1D5610708();
    LODWORD(v142) = sub_1D5612C68();
    (v87)(v82, v22);
    OUTLINED_FUNCTION_150(v153);
    sub_1D5610708();
    LODWORD(v141) = sub_1D5612C58();
    (v87)(v82, v22);
    OUTLINED_FUNCTION_150(&v154);
    sub_1D5610708();
    v104 = sub_1D5612D28();
    v106 = v105;
    v107 = v22;
    (v87)(v82, v22);
    if ((v106 & 1) == 0)
    {
      v102 = v104 / 1000.0;
    }

    v108 = v124;
    sub_1D5610708();
    v109 = sub_1D5612C88();
    v111 = v110;
    (v87)(v108, v107);
    v112 = 0.0;
    if ((v111 & 1) == 0)
    {
      v112 = v109 / 1000.0;
    }

    v113 = v125;
    sub_1D5610708();
    v114 = sub_1D5612D18();
    v116 = v115;
    (v128)(v113, v107);
    if (v127)
    {
      v117 = v127;
    }

    else
    {
      v117 = MEMORY[0x1E69E7CC0];
    }

    v118 = sub_1D5610718();
    v119 = v126;
    *v126 = v147;
    *(v119 + 8) = v148 & 1;
    *(v119 + 2) = v88;
    *(v119 + 24) = v149 & 1;
    *(v119 + 4) = v93;
    *(v119 + 40) = v146 & 1;
    *(v119 + 6) = v92;
    *(v119 + 56) = v145 & 1;
    *(v119 + 8) = v97;
    *(v119 + 72) = v144 & 1;
    *(v119 + 10) = v96;
    *(v119 + 88) = v143 & 1;
    *(v119 + 12) = v103;
    *(v119 + 104) = v101 & 1;
    *(v119 + 105) = v142;
    *(v119 + 106) = v141;
    *(v119 + 14) = v102;
    *(v119 + 120) = v106 & 1;
    *(v119 + 16) = v112;
    *(v119 + 136) = v111 & 1;
    v119[18] = v114;
    *(v119 + 152) = v116 & 1;
    v119[20] = v117;
    v119[21] = v118;
  }
}

void sub_1D54328C8(uint64_t a1@<X8>)
{
  v74 = a1;
  v76 = sub_1D56119D8();
  v2 = OUTLINED_FUNCTION_4(v76);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v78 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  v11 = OUTLINED_FUNCTION_4(v77);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v47 - v16;
  v18 = sub_1D5612D38();
  v19 = OUTLINED_FUNCTION_4(v18);
  v72 = v20;
  v73 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v70 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v47 - v25;
  v55 = *v1;
  v54 = *(v1 + 8);
  v57 = *(v1 + 16);
  v56 = *(v1 + 24);
  v26 = *(v1 + 32);
  v60 = *(v1 + 40);
  v27 = *(v1 + 48);
  v28 = *(v1 + 56);
  v59 = *(v1 + 64);
  v58 = *(v1 + 72);
  v53 = *(v1 + 80);
  v52 = *(v1 + 88);
  v51 = *(v1 + 96);
  v50 = *(v1 + 104);
  v29 = *(v1 + 105);
  v67 = *(v1 + 106);
  v68 = v29;
  v62 = *(v1 + 112);
  v61 = *(v1 + 120);
  v64 = *(v1 + 128);
  v63 = *(v1 + 136);
  v66 = *(v1 + 144);
  v65 = *(v1 + 152);
  v30 = *(v1 + 160);
  v31 = *(v30 + 16);
  v69 = *(v1 + 168);
  if (v31)
  {
    v47 = v26;
    v48 = v28;
    v49 = v27;
    v79 = MEMORY[0x1E69E7CC0];

    sub_1D4F04A8C();
    v32 = v79;
    v75 = v13 + 32;
    v33 = (v30 + 40);
    v34 = v17;
    while (1)
    {
      v35 = *(v33 - 1) * 1000.0;
      if (v35 <= -9.22337204e18)
      {
        break;
      }

      if (v35 >= 9.22337204e18)
      {
        goto LABEL_16;
      }

      v36 = *v33 * 1000.0;
      v37 = COERCE__INT64(fabs(v36)) > 0x7FEFFFFFFFFFFFFFLL;
      if (COERCE__INT64(fabs(*(v33 - 1) * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL || v37)
      {
        goto LABEL_17;
      }

      if (v36 <= -9.22337204e18)
      {
        goto LABEL_18;
      }

      if (v36 >= 9.22337204e18)
      {
        goto LABEL_19;
      }

      sub_1D56119B8();
      v38 = v76;
      (*(v4 + 16))(v78, v10, v76);
      sub_1D5614A88();
      sub_1D5614BD8();
      sub_1D56106F8();
      (*(v4 + 8))(v10, v38);
      v79 = v32;
      v39 = v34;
      v40 = *(v32 + 16);
      if (v40 >= *(v32 + 24) >> 1)
      {
        sub_1D4F04A8C();
        v32 = v79;
      }

      *(v32 + 16) = v40 + 1;
      (*(v13 + 32))(v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v40, v39, v77);
      v33 += 2;
      --v31;
      v34 = v39;
      if (!v31)
      {
        v27 = v49;
        LOBYTE(v28) = v48;
        v26 = v47;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

LABEL_14:
    v41 = v60;
    v78 = sub_1D5432F58(v51, v50);
    LODWORD(v75) = v42;
    v77 = sub_1D5432F58(v53, v52);
    v60 = v43;
    v76 = sub_1D5432F58(v55, v54);
    v57 = sub_1D5432F58(v57, v56);
    v59 = sub_1D5432F58(v59, v58);
    sub_1D5432F58(v26, v41);
    sub_1D5432F58(v27, v28);
    sub_1D5432F58(v62, v61);
    sub_1D5432F58(v64, v63);
    v44 = v71;
    sub_1D5612CD8();
    v46 = v72;
    v45 = v73;
    (*(v72 + 16))(v70, v44, v73);
    sub_1D56106F8();
    (*(v46 + 8))(v44, v45);
  }
}

uint64_t sub_1D5432F58(uint64_t result, char a2)
{
  if (a2)
  {
    *&result = 0.0;
    return result;
  }

  v2 = *&result * 1000.0;
  if (COERCE__INT64(fabs(*&result * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return v2;
}

uint64_t Playlist.GeoLocation.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Playlist.GeoLocation.countryCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void static Playlist.GeoLocation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D5616168() & 1) == 0)
  {
    return;
  }

  if (!v4)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v9 = v2 == v6 && v4 == v5;
    if (v9 || (sub_1D5616168() & 1) != 0)
    {
LABEL_13:

      sub_1D4F286E0();
    }
  }
}

void Playlist.GeoLocation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D5614E28();
  sub_1D56162F8();
  if (v4)
  {
    sub_1D5614E28();
  }

  sub_1D4F31AC0();
}

uint64_t Playlist.GeoLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D56162F8();
  if (v4)
  {
    sub_1D5614E28();
  }

  sub_1D4F31AC0();
  return sub_1D5616328();
}

uint64_t sub_1D5433218()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[4];
  sub_1D56162D8();
  Playlist.GeoLocation.hash(into:)();
  return sub_1D5616328();
}

uint64_t Playlist.GeoLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v4 = sub_1D5610AE8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECF8, &unk_1D562E640);
  v15 = OUTLINED_FUNCTION_4(v14);
  v44 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  v21 = a1;
  sub_1D4E628D4(a1, v47);
  OUTLINED_FUNCTION_1_174(&qword_1EC7F6790);
  OUTLINED_FUNCTION_2_174(&qword_1EC7F6798);
  v46 = v4;
  sub_1D5610768();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5610708();
  v23 = sub_1D5610AD8();
  v24 = v48;
  v26 = v25;
  v41 = v21;
  v27 = *(v7 + 8);
  v28 = v13;
  v29 = v46;
  v27(v28, v46);
  if (v26)
  {
    v30 = v23;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0xE000000000000000;
  if (v26)
  {
    v31 = v26;
  }

  v42 = v31;
  v43 = v30;
  v32 = v45;
  sub_1D5610708();
  v33 = sub_1D5610AB8();
  v39 = v34;
  v40 = v33;
  v27(v32, v29);
  v35 = sub_1D5610718();
  __swift_destroy_boxed_opaque_existential_1(v41);
  result = (*(v44 + 8))(v20, v14);
  v36 = v42;
  *v24 = v43;
  v24[1] = v36;
  v37 = v39;
  v24[2] = v40;
  v24[3] = v37;
  v24[4] = v35;
  return result;
}

uint64_t Playlist.GeoLocation.encode(to:)(uint64_t a1)
{
  v29 = a1;
  v2 = sub_1D5610AE8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECF8, &unk_1D562E640);
  v27 = OUTLINED_FUNCTION_4(v13);
  v28 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v18 = &v26 - v17;
  v19 = *v1;
  v20 = v1[1];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];

  sub_1D5610AC8();
  (*(v5 + 16))(v10, v12, v2);
  sub_1D56106F8();
  (*(v5 + 8))(v12, v2);
  OUTLINED_FUNCTION_1_174(&qword_1EC7F6790);
  OUTLINED_FUNCTION_2_174(&qword_1EC7F6798);
  v24 = v27;
  sub_1D5610778();
  return (*(v28 + 8))(v18, v24);
}

uint64_t Playlist.GeoLocation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  strcpy(v6, "GeoLocation(");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  MEMORY[0x1DA6EAC70](v1, v2);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70](0x22203A656D616ELL, 0xE700000000000000);

  if (v4)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_4_138();
    OUTLINED_FUNCTION_1_5();
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  else
  {
    OUTLINED_FUNCTION_5_133();
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v6[0];
}

unint64_t Playlist.GeoLocation.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70](0x3A656D616E20200ALL, 0xEA00000000002220);

  if (v2)
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_4_138();
    OUTLINED_FUNCTION_1_5();
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  else
  {
    OUTLINED_FUNCTION_5_133();
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1D5433978(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5610AE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D54339C0()
{
  result = qword_1EC7F67A0;
  if (!qword_1EC7F67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F67A0);
  }

  return result;
}

uint64_t sub_1D5433A24(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = OUTLINED_FUNCTION_12_1();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5433A4C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[4] + 88);
  if ([v1 response])
  {
    v2 = v0[3];
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_61_34([v1 response]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F68F0, &qword_1D5665110);
    OUTLINED_FUNCTION_60_28();
    sub_1D5612878();
    OUTLINED_FUNCTION_55();

    return v3();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[5] = v5;
    *v5 = v6;
    v5[1] = sub_1D4EFC820;
    v7 = v0[3];
    v8 = v0[4];

    return sub_1D54379B4(v7);
  }
}

uint64_t sub_1D5433B74()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6838, &qword_1D5665090);
  v1[5] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_127();
  v1[8] = sub_1D56153C8();
  v1[9] = sub_1D56153B8();
  v7 = swift_task_alloc();
  v1[10] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_26_12(v7);

  return sub_1D5436128();
}

uint64_t sub_1D5433C74()
{
  OUTLINED_FUNCTION_80();
  v2 = v0;
  OUTLINED_FUNCTION_59_1();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = v6[10];
  v8 = v6[9];
  v9 = v6[8];
  v10 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v11 = v10;
  v4[11] = v2;

  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v4[12] = v14;
  v4[13] = v15;
  if (v2)
  {
    v16 = sub_1D5434084;
  }

  else
  {
    v16 = sub_1D5433DB8;
  }

  return MEMORY[0x1EEE6DFA0](v16, v13, v12);
}

uint64_t sub_1D5433DB8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[7];
  v2 = v0[3];
  sub_1D4ECC7A8(0, &unk_1EC7F6848, off_1E84C0340);

  v3 = sub_1D543ECA4();
  v0[14] = v3;
  v4 = OUTLINED_FUNCTION_61_34(v3);
  OUTLINED_FUNCTION_60_28();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_9_116(v5);

  return sub_1D543ED28(v6);
}

uint64_t sub_1D5433E90()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = v1[15];
  v6 = v1[7];
  v7 = v1[6];
  v8 = v1[5];
  *v4 = *v2;
  *(v3 + 128) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_153_4();
  v10 = *(v9 + 104);
  v11 = v1[12];
  if (v0)
  {
    v12 = sub_1D54340E8;
  }

  else
  {
    v12 = sub_1D5434014;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1D5434014()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D5434084()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[7];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D54340E8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 72);

  v2 = *(v0 + 128);
  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5434158()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6838, &qword_1D5665090);
  v1[5] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_127();
  sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[9] = v7;
  v1[10] = v8;
  v9 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5434238()
{
  OUTLINED_FUNCTION_80();
  if (v0[3])
  {
    swift_unknownObjectRetain();
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_47_43(v1);

    return sub_1D5436128();
  }

  else
  {
    v3 = v0[8];

    sub_1D512F120();
    OUTLINED_FUNCTION_121_0();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    swift_willThrow();
    v5 = v0[7];

    OUTLINED_FUNCTION_55();

    return v6();
  }
}

uint64_t sub_1D5434340()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 88);
  *v4 = *v2;
  *(v3 + 96) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 80);
  v8 = *(v1 + 72);
  if (v0)
  {
    v9 = sub_1D5434764;
  }

  else
  {
    v9 = sub_1D5434468;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D5434468()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[7];
  v2 = v0[3];
  sub_1D4ECC7A8(0, &unk_1EC7F6848, off_1E84C0340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561EAC0;
  *(v3 + 32) = v2;
  swift_unknownObjectRetain();
  v4 = sub_1D543ECA4();
  v0[13] = v4;
  v5 = OUTLINED_FUNCTION_61_34(v4);
  OUTLINED_FUNCTION_60_28();
  sub_1D5612878();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_59_30(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_116(v7);

  return sub_1D543ED28(v9);
}

uint64_t sub_1D5434574()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = v1[14];
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_153_4();
  (*(v1[6] + 8))(*(v6 + 56), v1[5]);
  OUTLINED_FUNCTION_153_4();
  v8 = *(v7 + 80);
  v9 = v1[9];
  if (v0)
  {
    v10 = sub_1D54347D4;
  }

  else
  {
    v10 = sub_1D54346E4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D54346E4()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D5434764()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[8];
  v2 = v0[3];

  swift_unknownObjectRelease();
  v3 = v0[12];
  v4 = v0[7];

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D54347D4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  swift_unknownObjectRelease();
  v3 = *(v0 + 120);
  v4 = *(v0 + 56);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D5434850()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  sub_1D56153C8();
  v1[5] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[6] = v3;
  v1[7] = v4;
  v5 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54348D8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  sub_1D5612858();
  v0[8] = v0[2];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_47_43(v2);

  return sub_1D5434158();
}

uint64_t sub_1D5434988()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = v3[7];
    v11 = sub_1D5434A8C;
  }

  else
  {
    v12 = v3[8];
    swift_unknownObjectRelease();
    v9 = v3[6];
    v10 = v3[7];
    v11 = sub_1D52C6C9C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1D5434A8C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[8];
  v2 = v0[5];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_55();
  v4 = v0[10];

  return v3();
}

void sub_1D5434AF4()
{
  v1 = v0;
  v2 = *(v0 + 80);
  sub_1D5612108();
  v3 = *(v1 + 88);
  v4 = [v3 request];
  v5 = [v4 forwardCount];

  v6 = [v3 request];
  v7 = [v6 historyCount];

  v8 = sub_1D5612128();
  v9 = sub_1D4E62628();
  if (v9)
  {
    v10 = v9;
    if (v9 >= 1)
    {
      v11 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1DA6EB9B0](v11, v8);
        }

        else
        {
          v12 = *(v8 + 8 * v11 + 32);
        }

        v13 = *(v12 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components);
        if (OUTLINED_FUNCTION_65_31())
        {
          if (v5 >= 99)
          {
            goto LABEL_17;
          }
        }

        else if (OUTLINED_FUNCTION_64_32())
        {
          if (v5 >= 1)
          {
            goto LABEL_17;
          }
        }

        else if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        if (OUTLINED_FUNCTION_65_31())
        {
          v5 = 99;
        }

        else
        {
          v5 = OUTLINED_FUNCTION_64_32() & 1;
        }

LABEL_17:
        if (OUTLINED_FUNCTION_68_27())
        {
          if (v7 < 49)
          {
            goto LABEL_19;
          }
        }

        else if (v7 < 0)
        {
LABEL_19:
          v14 = OUTLINED_FUNCTION_68_27();

          if (v14)
          {
            v7 = 49;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_24;
        }

LABEL_24:
        if (v10 == ++v11)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    v15 = [v3 request];
    v16 = [v15 forwardCount];

    if (v5 == v16 && (v17 = [v3 request], v18 = objc_msgSend(v17, sel_historyCount), v17, v7 == v18))
    {
      OUTLINED_FUNCTION_118_2();
    }

    else
    {
      v19 = [v3 request];
      [v19 setForwardCount_];

      v20 = [v3 request];
      [v20 setHistoryCount_];

      OUTLINED_FUNCTION_118_2();

      [v21 v22];
    }
  }
}

void sub_1D5434D88()
{
  v1 = v0;
  v2 = *(v0 + 80);
  sub_1D56120F8();
  v3 = sub_1D5612128();
  v4 = sub_1D4E62628();
  v22 = v1;
  if (v4)
  {
    v5 = v4;
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA6EB9B0](v8, v3);
        }

        else
        {
          v9 = *(v3 + 8 * v8 + 32);
        }

        v10 = *(v9 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components);
        if (OUTLINED_FUNCTION_65_31())
        {
          break;
        }

        if ((OUTLINED_FUNCTION_64_32() & 1) != 0 && v7 < 1)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (OUTLINED_FUNCTION_68_27())
        {
          if (v6 >= 49)
          {

            v6 = 49;
          }

          else
          {
            v11 = OUTLINED_FUNCTION_68_27();

            if (v11)
            {
              v6 = 49;
            }

            else
            {
              v6 = 0;
            }
          }
        }

        else
        {
        }

        if (v5 == ++v8)
        {
          goto LABEL_25;
        }
      }

      if (v7 <= 98)
      {
LABEL_12:
        if ((OUTLINED_FUNCTION_65_31() & 1) == 0)
        {
          v7 = OUTLINED_FUNCTION_64_32() & 1;
          goto LABEL_15;
        }
      }

      v7 = 99;
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 0;
LABEL_25:

    v12 = *(v22 + 88);
    v13 = OUTLINED_FUNCTION_66_25();
    v14 = [v13 forwardCount];

    if (v7 == v14 && (v15 = OUTLINED_FUNCTION_66_25(), v16 = [v15 historyCount], v15, v6 == v16))
    {
      OUTLINED_FUNCTION_118_2();
    }

    else
    {
      v17 = OUTLINED_FUNCTION_66_25();
      [v17 setForwardCount_];

      v18 = OUTLINED_FUNCTION_66_25();
      [v18 setHistoryCount_];

      OUTLINED_FUNCTION_118_2();

      [v19 v20];
    }
  }
}

uint64_t sub_1D5434FFC(uint64_t a1, char a2, uint64_t *a3)
{
  if (qword_1EDD5EFC8 != -1)
  {
    OUTLINED_FUNCTION_40_52();
  }

  v5 = qword_1EDD76EC0;
  v6 = *algn_1EDD76EC8;
  v9[0] = qword_1EDD76EC0;
  v9[1] = *algn_1EDD76EC8;
  v10 = xmmword_1EDD76ED0;
  v11 = qword_1EDD76EE0;
  v12 = qword_1EDD76EE8;
  type metadata accessor for InternalMusicPlayer();
  v7 = swift_allocObject();
  sub_1D4E5EEC0(v5, v6);

  swift_unknownObjectRetain();
  result = sub_1D4E5F18C(v9, a2 & 1);
  *a3 = v7;
  return result;
}

uint64_t sub_1D54350F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for InternalMusicPlayer.Queue(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  result = sub_1D525EDAC(v7);
  *a2 = result;
  return result;
}

uint64_t sub_1D543514C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;
  swift_unknownObjectRetain();
  sub_1D51ECB60(0, 0, v5, &unk_1D56651A0, v8);
}

uint64_t sub_1D5435288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54352AC, 0, 0);
}

uint64_t sub_1D54352AC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1D543538C;
    v4 = OUTLINED_FUNCTION_93_0(*(v0 + 56));

    return sub_1D54354C0(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v6();
  }
}

uint64_t sub_1D543538C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D543548C()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_55();
  return v1();
}

uint64_t sub_1D54354C0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(_s5StateC10PropertiesVMa(0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5435550, 0, 0);
}

uint64_t sub_1D5435550()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 72);
  v2 = 0;
  if (v1)
  {
    v3 = [objc_msgSend(*(v0 + 72) musicKit:sel_musicKit_responseTracklist_resetCommand playerResponse:?tracklist)];
    swift_unknownObjectRelease();
    v4 = v3 != 0;
    if (v3)
    {
      swift_unknownObjectRelease();
    }

    v1 = [v1 musicKit_playerResponse_tracklist];
    v5 = [v1 musicKit_responseTracklist_playingItem];
    if (v5)
    {
      [v5 musicKit_playerResponseItem_elapsedTime];
      v2 = v6;
      swift_unknownObjectRelease();
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = 1;
LABEL_8:
  *(v0 + 217) = v4;
  *(v0 + 104) = v1;
  *(v0 + 216) = v7;
  *(v0 + 96) = v2;
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  type metadata accessor for InternalMusicPlayer.State(0);
  OUTLINED_FUNCTION_54_35();
  sub_1D51908E0();
  *(v0 + 112) = sub_1D56153C8();
  *(v0 + 120) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  v10 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D54356D0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[15];
  v2 = v0[10];

  v0[16] = sub_1D543DBF8();
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5435738()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[16];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
  _s5QueueC10PropertiesVMa(0);
  sub_1D52C99A4();
  v0[8] = sub_1D5614BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6950, &qword_1D56651B8);
  v3 = swift_task_alloc();
  v0[17] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0 + 8;
  v4 = *(MEMORY[0x1E69E87D8] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1D543588C;
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1D543588C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[16];
  v5 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54359A8()
{
  OUTLINED_FUNCTION_160();
  v17 = v1;
  v2 = v1[9];
  if (v2)
  {
    v3 = [v2 musicKit_playerPath];
    objc_opt_self();
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRetain();
    v4 = [v0 playerPathWithUnderlyingPlayerPath_];
    if (v4)
    {
      sub_1D4E5D688(v4, v16);
      swift_unknownObjectRelease_n();
      v5 = v16[0];
      v6 = v16[1];
      v7 = v16[2];
      v8 = v16[3];
      v9 = v16[4];
      v10 = v16[5];
      goto LABEL_6;
    }

    swift_unknownObjectRelease_n();
  }

  OUTLINED_FUNCTION_57_1();
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_6:
  v1[23] = v9;
  v1[24] = v10;
  v1[21] = v7;
  v1[22] = v8;
  v1[19] = v5;
  v1[20] = v6;
  v11 = v1[14];
  v1[25] = v1[8];
  v1[2] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v1[6] = v9;
  v1[7] = v10;
  sub_1D543FDBC(v5, v6, v7, v8, v9, v10);
  v1[26] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  v12 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D5435AE8()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 217);
  v4 = *(v0 + 216);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  sub_1D543E778(v8, v3, v5, v4, v6, v2, (v0 + 16));
  sub_1D526CDE8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5435B9C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[25];
  v2 = v0[13];
  v3 = v0[11];
  sub_1D526CDE8(v0[19], v0[20], v0[21], v0[22], v0[23], v0[24]);
  swift_unknownObjectRelease();
  sub_1D543FE08(v3, _s5StateC10PropertiesVMa);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5435C44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D5435CA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1D56153C8();

  v8 = sub_1D56153B8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  sub_1D51ECB60(0, 0, v5, &unk_1D5665190, v9);

  if (qword_1EDD54498 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76AC0);
  v12 = a1;
  v13 = sub_1D560C738();
  v14 = sub_1D56156C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1D4E3F000, v13, v14, "RRC failed due to error: %{public}@. Retrying request.", v15, 0xCu);
    sub_1D4E50004(v16, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v16, -1, -1);
    MEMORY[0x1DA6ED200](v15, -1, -1);
  }

  return 1;
}

uint64_t sub_1D5435F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5435F98, v6, v5);
}

uint64_t sub_1D5435F98()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  if (Strong && (v4 = *(Strong + 72), , , v4))
  {
    sub_1D5500F24(3);

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 40) = v5;
  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D5436040(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_1D5436098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return sub_1D5436128();
}

uint64_t sub_1D5436128()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6870, &qword_1D56650D0);
  v1[4] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_127();
  sub_1D56153C8();
  v1[7] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[8] = v6;
  v1[9] = v7;
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5436208()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[3] + 72);
  v0[10] = v1;
  if (!v1 || *(v1 + 32) == 2)
  {
    v2 = v0[7];

    v3 = v0[6];

    OUTLINED_FUNCTION_22_1();

    return v4();
  }

  else
  {
    if (*(v1 + 32))
    {
    }

    else
    {

      sub_1D5500F24(1);
    }

    v6 = v0[6];
    v0[2] = v1;
    type metadata accessor for InternalPlaybackEngine();

    sub_1D5612878();
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_1D5436348;
    v8 = v0[3];
    v9 = OUTLINED_FUNCTION_93_0(v0[6]);

    return sub_1D5439378(v9);
  }
}

uint64_t sub_1D5436348()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 88);
  *v4 = *v2;
  *(v3 + 96) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 72);
  v8 = *(v1 + 64);
  if (v0)
  {
    v9 = sub_1D54364F8;
  }

  else
  {
    v9 = sub_1D5436470;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D5436470()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];

  v6 = OUTLINED_FUNCTION_15_8();
  v7(v6);
  v8 = v0[6];

  OUTLINED_FUNCTION_22_1();

  return v9();
}

uint64_t sub_1D54364F8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];

  v6 = OUTLINED_FUNCTION_15_8();
  v7(v6);

  OUTLINED_FUNCTION_55();
  v9 = v0[12];

  return v8();
}

uint64_t sub_1D5436590(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return InternalMusicPlayer.queue.setter(v4);
}

uint64_t InternalMusicPlayer.queue.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_71();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_123();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v15[5] = a1;

  OUTLINED_FUNCTION_41_7();
  sub_1D5264534();

  return sub_1D4E50004(v9, &qword_1EC7EB710, &qword_1D561F440);
}

uint64_t InternalMusicPlayer.queue(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = _s5QueueC3KeyVMa(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v12 = *(v11 + 28);
  sub_1D560C368();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v10 = a1;
  v17 = *(v2 + 80);

  sub_1D56120E8();

  InternalMusicPlayer.Queue.player.setter();
  OUTLINED_FUNCTION_26_71();
  sub_1D543FE08(v10, v18);
  return v20;
}

uint64_t sub_1D54367A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54367C8, 0, 0);
}

uint64_t sub_1D54367C8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1D54368A8;
    OUTLINED_FUNCTION_93_0(*(v0 + 56));

    return sub_1D5436ACC();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D54368A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D54369A8()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_22_1();
  return v1();
}

uint64_t sub_1D54369DC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_1D5436A38()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_4(v4);
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D54367A4(v6, v7, v8, v9, v10);
}

uint64_t sub_1D5436ACC()
{
  OUTLINED_FUNCTION_60();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6900, &qword_1D5665128);
  v1[6] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_127();
  v7 = _s5QueueC3KeyVMa(0);
  v1[9] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_127();
  v10 = _s5QueueC4KindOMa(0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5436BC0()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[11];
  v3 = v0[4];
  v2 = v0[5];

  InternalMusicPlayer.Queue.player.setter();
  sub_1D560C368();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_1D526BEEC();
  v9 = v8;
  sub_1D543FE08(v1, _s5QueueC4KindOMa);
  if ((v9 & 1) == 0)
  {
    v10 = v0[10];
    v12 = v0[4];
    v11 = v0[5];
    v13 = *(v12 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components);
    v14 = *(v0[9] + 20);
    sub_1D543FE60();
    *v10 = v13;
    v15 = *(v11 + 80);
    v0[2] = v12;

    sub_1D5612118();
    OUTLINED_FUNCTION_26_71();
    sub_1D543FE08(v10, v16);
  }

  v17 = v0[8];
  v0[3] = v0[4];
  type metadata accessor for InternalMusicPlayer.Queue(0);

  sub_1D5612878();
  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_1D5436D64;
  v19 = v0[5];
  v20 = OUTLINED_FUNCTION_93_0(v0[8]);

  return sub_1D543CD54(v20);
}

uint64_t sub_1D5436D64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5436E5C()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_55_32();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5436EDC()
{
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_55_32();
  v2(v1);

  OUTLINED_FUNCTION_55();
  v4 = *(v0 + 104);

  return v3();
}

uint64_t (*InternalMusicPlayer.queue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = InternalMusicPlayer.queue(for:)(&unk_1F50A4E68);
  return sub_1D5436FB0;
}

uint64_t sub_1D5436FB0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return InternalMusicPlayer.queue.setter(*a1);
  }

  v4 = *a1;

  InternalMusicPlayer.queue.setter(v5);
}

uint64_t InternalMusicPlayer.isStarted.getter()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return [*(v1 + 16) isStarted];
  }

  else
  {
    return 1;
  }
}

uint64_t InternalMusicPlayer.playbackTime.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t InternalMusicPlayer.playbackTime.setter(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  result = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if ((a2 & 1) == 0)
  {
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_123();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v2;
    v16[5] = a1;

    OUTLINED_FUNCTION_41_7();
    sub_1D5264320();

    return sub_1D4E50004(v11, &qword_1EC7EB710, &qword_1D561F440);
  }

  return result;
}

uint64_t sub_1D543716C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 32) = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  *(v5 + 72) = v9;
  v10 = *(v9 - 8);
  *(v5 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  *(v5 + 88) = v12;
  v13 = swift_task_alloc();
  *(v5 + 96) = v13;
  *v13 = v5;
  v13[1] = sub_1D54372E0;

  return sub_1D54377B4(v12);
}

uint64_t sub_1D54372E0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D54373C4()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  OUTLINED_FUNCTION_44_40();
  v4 = OUTLINED_FUNCTION_58_1();
  v5(v4);
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = [*(v0 + 16) musicKit_responseTracklist_playingItem];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    if (v3)
    {
      v8 = [v3 musicKit_playerResponseItem_seekCommand];
      OUTLINED_FUNCTION_82();
      swift_unknownObjectRelease();
      v9 = [v6 musicKit:*(v0 + 40) seekCommand:? changePositionCommandRequestToElapsedInterval:?];
      OUTLINED_FUNCTION_107_5();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 104) = v3;
  v10 = *(v0 + 64);
  OUTLINED_FUNCTION_57_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  OUTLINED_FUNCTION_54_35();
  sub_1D5612878();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_59_30(v11);
  *v12 = v13;
  v12[1] = sub_1D543751C;
  v14 = *(v0 + 32);
  OUTLINED_FUNCTION_93_0(*(v0 + 64));

  return sub_1D5434850();
}

uint64_t sub_1D543751C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5437614()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_63_23();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5437690()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_63_23();
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);

  OUTLINED_FUNCTION_55();
  v4 = *(v0 + 120);

  return v3();
}

uint64_t sub_1D5437710()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_4(v4);

  return sub_1D543716C(v2, v6, v7, v8, v1);
}

uint64_t sub_1D54377B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D54377D4, 0, 0);
}

uint64_t sub_1D54377D4()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[4];
  if (sub_1D5437D04())
  {
    v2 = v0[3];
    v3 = v0[4];
    swift_unknownObjectRelease();
    v4 = sub_1D5437D04();
    OUTLINED_FUNCTION_61_34(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6878, qword_1D56650E8);
    OUTLINED_FUNCTION_60_28();
    sub_1D5612878();
    OUTLINED_FUNCTION_55();

    return v5();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[5] = v7;
    *v7 = v8;
    v7[1] = sub_1D5440128;
    v9 = v0[3];
    v10 = v0[4];

    return sub_1D5437D6C(v9);
  }
}

uint64_t (*InternalMusicPlayer.playbackTime.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
  return sub_1D54378FC;
}

uint64_t InternalMusicPlayer.path.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  sub_1D4E5EEC0(v2, v3);

  return swift_unknownObjectRetain();
}

uint64_t sub_1D54379B4(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D54379D4, 0, 0);
}

uint64_t sub_1D54379D4()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[20] + 96);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D5437AF0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E8, &qword_1D5665108);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D51E7DC0;
  v0[13] = &block_descriptor_59_0;
  v0[14] = v2;
  [v1 performWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D5437AF0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5437BEC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[19];
  v0[10] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F68F0, &qword_1D5665110);
  OUTLINED_FUNCTION_54_35();
  sub_1D5612878();
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5437C68()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[21];
  v2 = v0[19];
  swift_willThrow();
  v0[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F68F0, &qword_1D5665110);
  sub_1D5612878();

  OUTLINED_FUNCTION_55();

  return v3();
}

id sub_1D5437D04()
{
  v1 = [*(v0 + 88) response];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 musicKit_playerResponse_tracklist];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D5437D6C(uint64_t a1)
{
  v1[4] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[7] = v5;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_1D5437E70;

  return sub_1D54379B4(v5);
}

uint64_t sub_1D5437E70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5437F54()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_44_40();
  v4 = OUTLINED_FUNCTION_58_1();
  v5(v4);
  if (*(v0 + 16))
  {
    v6 = [*(v0 + 16) musicKit_playerResponse_tracklist];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  *(v0 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6878, qword_1D56650E8);
  sub_1D5612878();

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t InternalMusicPlayer.setFallbackRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33[-1] - v11;
  v13 = type metadata accessor for MusicPlaybackIntent();
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v34 = a2;
  v35 = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  sub_1D560D838();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_1D5424200(v33, v12, MEMORY[0x1E69E7CC0], 1, v25, v26, v27, v28, v32, v33[0], v33[1], v33[2], v34, v35, v36, v37, v38, v39, v40, v41);
  sub_1D4E50004(v12, &unk_1EC7EEC20, &unk_1D5623F70);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v29 = *(v3 + 72);
  if (v29)
  {
    [*(v29 + 16) musicKit:*v19 setFallbackPlaybackIntent:?];
  }

  OUTLINED_FUNCTION_28_63();
  return sub_1D543FE08(v19, v30);
}

uint64_t InternalMusicPlayer.start()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D5438310();
}

uint64_t sub_1D5438230()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_22_1();

  return v5();
}

uint64_t sub_1D5438310()
{
  *(v1 + 16) = v0;
  sub_1D56153C8();
  *(v1 + 24) = sub_1D56153B8();
  v3 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54383A8, v3, v2);
}

uint64_t sub_1D54383A8()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v2 + 72);
  if (v3)
  {
    [*(v3 + 16) start];
  }

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t InternalMusicPlayer.perform(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F67B0, qword_1D5664EE8);
  v1[4] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v1[7] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_127();
  v11 = _s6DialogV6ActionV17UnderlyingCommandOMa(0);
  v1[10] = v11;
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_127();
  v14 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D5438544()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[2];
  v4 = *(type metadata accessor for InternalMusicPlayer.Dialog.Action(0) + 24);
  sub_1D543FE60();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[11];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[5] + 32))(v0[6], v6, v0[4]);
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_59_30(v7);
    *v8 = v9;
    v8[1] = sub_1D543884C;
    v10 = v0[3];
    OUTLINED_FUNCTION_93_0(v0[6]);

    return sub_1D5438B04();
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v6, v0[7]);
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_1D54386C4;
    v13 = v0[3];
    OUTLINED_FUNCTION_93_0(v0[9]);

    return sub_1D5434850();
  }
}

uint64_t sub_1D54386C4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D54387BC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[11];
  v2 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D543884C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5438944()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[11];
  v2 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D54389D8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5438A6C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5438B04()
{
  OUTLINED_FUNCTION_80();
  v11 = *MEMORY[0x1E69E9840];
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F67B0, qword_1D5664EE8);
  v1[8] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_127();
  v1[11] = sub_1D56153C8();
  v1[12] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  v7 = sub_1D5615338();
  v1[13] = v7;
  v1[14] = v8;
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D5438C24, v7, v8);
}

uint64_t sub_1D5438C24()
{
  OUTLINED_FUNCTION_160();
  v33 = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  v2 = v0[6];
  sub_1D5612858();
  v3 = v0[2];
  v4 = [v3 event];
  v0[15] = v4;

  if (v4)
  {
    v5 = v0[11];
    v6 = [*(v0[7] + 64) musicKit_playerPath_mrPlayerPath];
    v0[16] = v6;
    v7 = sub_1D56153B8();
    v0[17] = v7;
    v8 = swift_task_alloc();
    v0[18] = v8;
    *(v8 + 16) = v4;
    *(v8 + 24) = v6;
    v9 = *(MEMORY[0x1E69E88D0] + 4);
    v10 = swift_task_alloc();
    v0[19] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6920, &qword_1D5665158);
    *v10 = v0;
    v10[1] = sub_1D5438FA4;
    v12 = *MEMORY[0x1E69E9840];
    v13 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v0 + 4, v7, v13, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_1D543FA70, v8, v11);
  }

  else
  {
    v14 = v0[12];

    if (qword_1EDD54498 != -1)
    {
      OUTLINED_FUNCTION_3_116();
    }

    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    v18 = v0[6];
    v19 = sub_1D560C758();
    __swift_project_value_buffer(v19, qword_1EDD76AC0);
    (*(v16 + 16))(v15, v18, v17);
    v20 = sub_1D560C738();
    v21 = sub_1D56156E8();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      sub_1D5612858();
      (*(v24 + 8))(v23, v25);
      v28 = v0[3];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1D4E3F000, v20, v21, "Unable to perform remote action because remoteDialogAction %{public}@ does not have an event.", v26, 0xCu);
      sub_1D4E50004(v27, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v27, -1, -1);
      MEMORY[0x1DA6ED200](v26, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    v29 = v0[10];

    OUTLINED_FUNCTION_55();
    v31 = *MEMORY[0x1E69E9840];

    return v30();
  }
}

uint64_t sub_1D5438FA4()
{
  OUTLINED_FUNCTION_91();
  v11 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v5 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  v7 = *(v1 + 112);
  v8 = *(v1 + 104);
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D543912C, v8, v7);
}

uint64_t sub_1D543912C()
{
  v28 = v0;
  v27 = *MEMORY[0x1E69E9840];
  v1 = v0[12];

  v2 = v0[4];
  if (v2)
  {
    v3 = objc_opt_self();
    v0[5] = 0;
    v4 = [v3 extractDialogFromCommandResult:v2 error:v0 + 5];
    v5 = v4;
    v6 = v0[5];
    if (v6)
    {
      v8 = v0[15];
      v7 = v0[16];
      v6;

      swift_willThrow();
LABEL_10:

      v19 = v0[10];

      OUTLINED_FUNCTION_55();
      v21 = *MEMORY[0x1E69E9840];
      goto LABEL_12;
    }

    v10 = v0[15];
    v13 = v0[16];
    if (v4)
    {
      v15 = v4;
      sub_1D4F27598(v15, v25);
      v16 = v26;
      sub_1D512F120();
      OUTLINED_FUNCTION_121_0();
      v17 = v25[1];
      *v18 = v25[0];
      *(v18 + 16) = v17;
      *(v18 + 32) = v16;
      swift_willThrow();

      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EDD54498 != -1)
    {
      OUTLINED_FUNCTION_3_116();
    }

    v9 = sub_1D560C758();
    __swift_project_value_buffer(v9, qword_1EDD76AC0);
    v10 = sub_1D560C738();
    v11 = sub_1D56156E8();
    v12 = os_log_type_enabled(v10, v11);
    v2 = v0[15];
    v13 = v0[16];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D4E3F000, v10, v11, "While attempting to perform remote action, MRMediaRemoteSendCommandToPlayerWithResult returned nil.", v14, 2u);
      MEMORY[0x1DA6ED200](v14, -1, -1);
    }
  }

  v22 = v0[10];

  OUTLINED_FUNCTION_55();
  v23 = *MEMORY[0x1E69E9840];
LABEL_12:

  return v20();
}

uint64_t sub_1D5439398()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6870, &qword_1D56650D0);
  sub_1D5612858();
  v0[14] = v0[10];
  v2 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D5439414()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_1D543952C;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  swift_beginAccess();
  sub_1D4EFF5A0();
  v4 = *(*(v1 + 24) + 16);
  sub_1D4EFF7E8();
  v5 = *(v1 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = sub_1D543F8AC;
  *(v6 + 40) = v3;
  *(v1 + 24) = v5;
  swift_endAccess();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1D543952C()
{
  OUTLINED_FUNCTION_60();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54395FC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t InternalMusicPlayer.play()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D54396D4();
}

uint64_t sub_1D54396D4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_1D54397EC;

  return sub_1D5436128();
}

uint64_t sub_1D54397EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    sub_1D5615338();
    v11 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v3[11] = v14;
    *v14 = v15;
    v14[1] = sub_1D5439954;
    v16 = v3[6];
    v17 = v3[3];

    return sub_1D5433A24(v16);
  }
}

uint64_t sub_1D5439954()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  *(v2 + 96) = v10;
  *(v2 + 104) = v11;
  v12 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D5439A78()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v2 = OUTLINED_FUNCTION_58_1();
  v3(v2);
  if (*(v1 + 16))
  {
    v4 = [*(v1 + 16) musicKit_playerResponse_playCommandRequest];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v0 = 0;
  }

  *(v1 + 112) = v0;
  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_6_135(v5);

  return sub_1D5434158();
}

uint64_t sub_1D5439B48()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 120);
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 104);
  v8 = *(v1 + 96);
  if (v0)
  {
    v9 = sub_1D5439D44;
  }

  else
  {
    v9 = sub_1D5439C70;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D5439C70()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[6];

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D5439CE0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[6];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5439D44()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[14];
  v2 = v0[8];

  swift_unknownObjectRelease();
  v3 = v0[16];
  v4 = v0[6];

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t InternalMusicPlayer.play(_:)()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D5436ACC();
}

uint64_t sub_1D5439E40()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D5439F54()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 40);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  type metadata accessor for MusicKit_SoftLinking_MPCPlayerEnqueueError();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    sub_1D543A064();
    OUTLINED_FUNCTION_121_0();
    v5 = v4;
    v6 = v3;
    sub_1D52975BC(v6, v5);
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
    v7 = *(v0 + 40);
  }

  OUTLINED_FUNCTION_55();

  return v8();
}

unint64_t sub_1D543A064()
{
  result = qword_1EC7F67B8;
  if (!qword_1EC7F67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F67B8);
  }

  return result;
}

uint64_t sub_1D543A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[10] = v11;
  v12 = swift_task_alloc();
  v4[11] = v12;
  *v12 = v4;
  v12[1] = sub_1D543A248;

  return sub_1D5433A24(v11);
}

uint64_t sub_1D543A248()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D543A32C()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_44_40();
  v4 = OUTLINED_FUNCTION_58_1();
  v5(v4);
  if (*(v0 + 16))
  {
    v6 = [*(v0 + 16) musicKit_playerResponse_pauseCommandRequest];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 96) = v3;
  v7 = *(v0 + 56);
  OUTLINED_FUNCTION_57_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  OUTLINED_FUNCTION_54_35();
  sub_1D5612878();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_42_45(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_9_116(v9);

  return sub_1D5434850();
}

uint64_t sub_1D543A42C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D543A524()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D543A0D8(v5, v6, v7, v1);
}

uint64_t sub_1D543A5D8()
{
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v0;

  sub_1D5264320();

  return sub_1D4E50004(v8, &qword_1EC7EB710, &qword_1D561F440);
}

uint64_t sub_1D543A6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2B60, &unk_1D564A630);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[10] = v11;
  v12 = swift_task_alloc();
  v4[11] = v12;
  *v12 = v4;
  v12[1] = sub_1D543A834;

  return sub_1D5433A24(v11);
}

uint64_t sub_1D543A834()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D543A918()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_44_40();
  v4 = OUTLINED_FUNCTION_58_1();
  v5(v4);
  if (*(v0 + 16))
  {
    v6 = [*(v0 + 16) musicKit_playerResponse_stopCommandRequest];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 96) = v3;
  v7 = *(v0 + 56);
  OUTLINED_FUNCTION_57_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
  OUTLINED_FUNCTION_54_35();
  sub_1D5612878();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_42_45(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_9_116(v9);

  return sub_1D5434850();
}

uint64_t sub_1D543AA18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D543AB10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_62_36();
  v0 = OUTLINED_FUNCTION_15_8();
  v1(v0);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D543AB8C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_62_36();
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);

  OUTLINED_FUNCTION_55();
  v4 = *(v0 + 112);

  return v3();
}

uint64_t sub_1D543AC0C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D543A6C4(v5, v6, v7, v1);
}

uint64_t InternalMusicPlayer.skipToNextEntry()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543AD20();
}

uint64_t sub_1D543AD20()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[6] = v5;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_1D543AE4C;

  return sub_1D54377B4(v5);
}

uint64_t sub_1D543AE4C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  v10 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v10, v11);
  v12 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D543AF6C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  if (*(v2 + 16) && (v5 = [*(v2 + 16) musicKit_responseTracklist_changeItemCommand], OUTLINED_FUNCTION_107_5(), swift_unknownObjectRelease(), v0))
  {
    v6 = [v0 musicKit_changeItemCommand_nextItemCommandRequest];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_42_45(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_6_135(v8);

  return sub_1D5434158();
}

uint64_t sub_1D543B05C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 104);
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 88);
  v8 = *(v1 + 80);
  if (v0)
  {
    v9 = sub_1D5440120;
  }

  else
  {
    v9 = sub_1D544013C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t InternalMusicPlayer.skipToPreviousEntry()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543B204();
}

uint64_t sub_1D543B204()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[6] = v5;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_1D543B330;

  return sub_1D54377B4(v5);
}

uint64_t sub_1D543B330()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  v10 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v10, v11);
  v12 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D543B450()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  if (*(v2 + 16) && (v5 = [*(v2 + 16) musicKit_responseTracklist_changeItemCommand], OUTLINED_FUNCTION_107_5(), swift_unknownObjectRelease(), v0))
  {
    v6 = [v0 musicKit_changeItemCommand_previousItemCommandRequest];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_42_45(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_6_135(v8);

  return sub_1D5434158();
}

uint64_t InternalMusicPlayer.beginSeekingForward()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543B5C0();
}

uint64_t sub_1D543B5C0()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[6] = v5;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_1D543B6EC;

  return sub_1D54377B4(v5);
}

uint64_t sub_1D543B6EC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  v10 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v10, v11);
  v12 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D543B80C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v2 + 16);
  if (v5 && (v6 = [*(v2 + 16) musicKit_responseTracklist_playingItem], OUTLINED_FUNCTION_82(), swift_unknownObjectRelease(), v0))
  {
    v7 = [v0 musicKit_playerResponseItem_seekCommand];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit:1 seekCommand:? beginSeekCommandRequestWithDirection:?];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_42_45(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_6_135(v10);

  return sub_1D5434158();
}

uint64_t InternalMusicPlayer.beginSeekingBackward()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543B9A4();
}

uint64_t sub_1D543B9A4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[6] = v5;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_1D543BAD0;

  return sub_1D54377B4(v5);
}

uint64_t sub_1D543BAD0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  v10 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v10, v11);
  v12 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D543BBF0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v2 + 16);
  if (v5 && (v6 = [*(v2 + 16) musicKit_responseTracklist_playingItem], OUTLINED_FUNCTION_82(), swift_unknownObjectRelease(), v0))
  {
    v7 = [v0 musicKit_playerResponseItem_seekCommand];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit:-1 seekCommand:? beginSeekCommandRequestWithDirection:?];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_42_45(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_6_135(v10);

  return sub_1D5434158();
}

uint64_t InternalMusicPlayer.endSeeking()()
{
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D543BD88();
}

uint64_t sub_1D543BD88()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[6] = v5;
  v1[7] = sub_1D56153C8();
  v1[8] = sub_1D56153B8();
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_1D543BEB4;

  return sub_1D54377B4(v5);
}

uint64_t sub_1D543BEB4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  v10 = sub_1D5615338();
  OUTLINED_FUNCTION_22_69(v10, v11);
  v12 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D543BFD4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_83();
  v3 = OUTLINED_FUNCTION_58_1();
  v4(v3);
  v5 = *(v2 + 16);
  if (v5 && (v6 = [*(v2 + 16) musicKit_responseTracklist_playingItem], OUTLINED_FUNCTION_82(), swift_unknownObjectRelease(), v0))
  {
    v7 = [v0 musicKit_playerResponseItem_seekCommand];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    v8 = [v5 musicKit_seekCommand_endSeekCommandRequest];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v1 = 0;
  }

  *(v2 + 96) = v1;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_42_45(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_6_135(v10);

  return sub_1D5434158();
}

uint64_t sub_1D543C0E8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 104);
  *v4 = *v2;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 88);
  v8 = *(v1 + 80);
  if (v0)
  {
    v9 = sub_1D543C280;
  }

  else
  {
    v9 = sub_1D543C210;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D543C210()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D543C280()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();
  v5 = v0[14];

  return v4();
}

uint64_t InternalMusicPlayer.jump(by:)()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_12(v3);

  return sub_1D543C37C(v1);
}

uint64_t sub_1D543C37C(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6830, &qword_1D5665078);
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  *(v2 + 64) = sub_1D56153C8();
  *(v2 + 72) = sub_1D56153B8();
  v7 = swift_task_alloc();
  *(v2 + 80) = v7;
  *v7 = v2;
  v7[1] = sub_1D543C4AC;

  return sub_1D54377B4(v6);
}

uint64_t sub_1D543C4AC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;

  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  *(v2 + 88) = v10;
  *(v2 + 96) = v11;
  v12 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D543C5D0()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_44_40();
  v4 = OUTLINED_FUNCTION_58_1();
  v5(v4);
  v6 = *(v0 + 16);
  if (v6 && (v7 = [*(v0 + 16) musicKit_responseTracklist_playingItem], OUTLINED_FUNCTION_82(), swift_unknownObjectRelease(), v1))
  {
    v8 = [v1 musicKit_playerResponseItem_seekCommand];
    OUTLINED_FUNCTION_107_5();
    swift_unknownObjectRelease();
    v9 = [v6 musicKit:*(v0 + 24) seekCommand:? jumpCommandRequestByInterval:?];
    OUTLINED_FUNCTION_56_35();
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 104) = v2;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_59_30(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_47_43(v11);

  return sub_1D5434158();
}

uint64_t sub_1D543C6F4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 96);
  v8 = *(v1 + 88);
  if (v0)
  {
    v9 = sub_1D543C88C;
  }

  else
  {
    v9 = sub_1D543C81C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D543C81C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D543C88C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();
  v5 = v0[15];

  return v4();
}

uint64_t InternalMusicPlayer.playabilityStatus<A>(for:)()
{
  OUTLINED_FUNCTION_60();
  v0[16] = v1;
  v0[17] = v2;
  v0[14] = v3;
  v0[15] = v4;
  v5 = *(v1 - 8);
  v0[18] = v5;
  v6 = *(v5 + 64);
  v0[19] = OUTLINED_FUNCTION_127();
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D543C9A4()
{
  OUTLINED_FUNCTION_60();
  (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324((v0 + 56), v0 + 16);
    if (qword_1EDD55F58 != -1)
    {
      swift_once();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 160) = v1;
    *v1 = v2;
    v1[1] = sub_1D543CB2C;

    return sub_1D535ABAC();
  }

  else
  {
    v4 = *(v0 + 112);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1D4E50004(v0 + 56, &qword_1EC7F3B00, &qword_1D5650210);
    *v4 = 9;
    v5 = *(v0 + 152);

    OUTLINED_FUNCTION_22_1();

    return v6();
  }
}

uint64_t sub_1D543CB2C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D543CC24()
{
  OUTLINED_FUNCTION_160();
  v15 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 97);
  v5 = *(v0 + 98);
  v6 = *(v0 + 99);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  type metadata accessor for MusicPlayer.ItemState();
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v13 = v6;
  v14 = v8;
  sub_1D544AB1C((v0 + 16), v12, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v9 = *(v0 + 152);

  OUTLINED_FUNCTION_22_1();

  return v10();
}

uint64_t sub_1D543CCEC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_55();
  v3 = v0[21];

  return v2();
}

uint64_t sub_1D543CD54(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(type metadata accessor for MusicPlaybackIntent() - 8);
  v2[13] = v3;
  v4 = *(v3 + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6908, &qword_1D5665138);
  v2[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6910, &qword_1D5665140) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F68E0, &unk_1D564A6A0);
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  sub_1D56153C8();
  v2[22] = sub_1D56153B8();
  v12 = sub_1D5615338();
  v2[23] = v12;
  v2[24] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D543CF2C, v12, v11);
}

uint64_t sub_1D543CFEC()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D543D100, v6, v5);
}

uint64_t sub_1D543D100()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  sub_1D5612858();
  v4 = OUTLINED_FUNCTION_58_1();
  v5(v4);
  v6 = *(v0 + 72);
  *(v0 + 224) = v6;
  if (v6)
  {
    v7 = [objc_msgSend(v6 musicKit:sel_musicKit_responseTracklist_resetCommand playerResponse:?tracklist)];
    swift_unknownObjectRelease();
    v8 = [objc_msgSend(v6 musicKit:sel_musicKit_responseTracklist_insertCommand playerResponse:?tracklist)];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v54 = v7;
  *(v0 + 232) = v8;
  *(v0 + 240) = v7;
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v11 = *(v0 + 120);
  v12 = *(v0 + 104);
  v13 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v55 = v9;
  v14 = *(v9 + 16);
  v15 = (v10 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_sessionID);
  v52 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_replaceIntent;
  v53 = v10;
  swift_beginAccess();
  v56 = v15;
  swift_beginAccess();
  v16 = 0;
  while (1)
  {
    if (v16 == v14)
    {
      v17 = 1;
      v16 = v14;
    }

    else
    {
      if (v16 >= *(v55 + 16))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        sub_1D56151B8();
LABEL_31:
        sub_1D56151F8();
        v13 = *(v0 + 80);
        swift_unknownObjectRelease();
        goto LABEL_32;
      }

      v18 = *(v0 + 136);
      v19 = *(v0 + 208) + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16;
      v20 = *(v11 + 48);
      **(v0 + 128) = v16;
      sub_1D543FE60();
      sub_1D4FB8058();
      v17 = 0;
      ++v16;
    }

    v21 = *(v0 + 144);
    v22 = *(v0 + 120);
    __swift_storeEnumTagSinglePayload(*(v0 + 136), v17, 1, v22);
    sub_1D4FB8058();
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(v0 + 112);
    v24 = **(v0 + 144);
    v25 = *(v11 + 48);
    sub_1D544005C();
    if (v24)
    {
      if (v8)
      {
        v26 = [v8 musicKit:**(v0 + 112) insertItemsCommand:? insertAtEndOfTracklistCommandRequestWithPlaybackIntent:?];
      }
    }

    else
    {
      if (v54)
      {
        v27 = [v54 musicKit:**(v0 + 112) resetTracklistCommand:qword_1D5665220[*(v53 + v52)] replaceCommandRequestWithPlaybackIntent:? replaceIntent:?];
      }

      else
      {
        v27 = 0;
      }

      if (v56[1] && v27)
      {
        v28 = *v56;
        v29 = v56[1];

        swift_unknownObjectRetain();
        v30 = sub_1D5614D38();

        [v27 musicKit:v30 setSessionID:?];
        swift_unknownObjectRelease();
      }
    }

    v31 = swift_unknownObjectRetain();
    MEMORY[0x1DA6EAF30](v31);
    if (*(*(v0 + 80) + 16) >= *(*(v0 + 80) + 24) >> 1)
    {
      sub_1D56151B8();
    }

    sub_1D56151F8();
    v32 = *(v0 + 112);
    swift_unknownObjectRelease();
    v13 = *(v0 + 80);
    OUTLINED_FUNCTION_28_63();
    sub_1D543FE08(v32, v33);
  }

  v35 = *(v0 + 200);
  v34 = *(v0 + 208);

  v36 = InternalMusicPlayer.Queue.isAutoPlayEnabled.getter();
  if (v36 != 2)
  {
    v37 = v36;
    v38 = [*(*(v0 + 96) + 88) response];
    if (v38)
    {
      v39 = [v38 musicKit_playerResponse_tracklist];
      swift_unknownObjectRelease();
      v40 = [v39 musicKit_responseTracklist_actionAtQueueEndCommand];
      swift_unknownObjectRelease();
      if (v40)
      {
        if ((v37 & 1) != 0 && [v40 musicKit_actionAtQueueEndCommand_isAutoPlaySupported])
        {
          v41 = [v40 musicKit:3 actionAtQueueEndCommand:? setQueueEndActionCommandRequest:?];
        }

        else
        {
          v41 = [v40 musicKit:2 actionAtQueueEndCommand:? setQueueEndActionCommandRequest:?];
        }

        v42 = v41;
        MEMORY[0x1DA6EAF30]();
        if (*(*(v0 + 80) + 16) < *(*(v0 + 80) + 24) >> 1)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }
    }
  }

LABEL_32:
  v43 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v45 = *(v13 + 16);
LABEL_33:
  *(v0 + 248) = v44;
  while (v45 != v43)
  {
    if (v43 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v46 = v13 + 8 * v43++;
    if (*(v46 + 32))
    {
      v47 = *(v46 + 32);
      v48 = swift_unknownObjectRetain();
      MEMORY[0x1DA6EAF30](v48);
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      sub_1D56151F8();
      v44 = v57;
      goto LABEL_33;
    }
  }

  v49 = swift_task_alloc();
  *(v0 + 256) = v49;
  *v49 = v0;
  v49[1] = sub_1D543D6FC;
  v50 = *(v0 + 96);

  return sub_1D5433B74();
}

uint64_t sub_1D543D6FC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[33] = v0;

  if (v0)
  {
    v9 = v3[23];
    v10 = v3[24];
    v11 = sub_1D543D8EC;
  }

  else
  {
    v12 = v3[31];

    v9 = v3[23];
    v10 = v3[24];
    v11 = sub_1D543D800;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1D543D800()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[17];
  v7 = v0[18];
  v13 = v0[16];
  v14 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  sub_1D543D9D8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_22_1();

  return v11();
}

uint64_t sub_1D543D8EC()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v14 = v0[14];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();
  v12 = v0[33];

  return v11();
}

uint64_t sub_1D543D9D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6900, &qword_1D5665128);
  sub_1D5612858();
  v2 = v17[0];
  static ClientInfo.default.getter(v17);
  v3 = v17[8];

  v4 = sub_1D4E4AA8C(v17);
  if (v3)
  {
    v16[0] = 0xD000000000000011;
    v16[1] = 0x80000001D567D5E0;
    MEMORY[0x1EEE9AC00](v4);
    v15[2] = v16;
    v5 = sub_1D4F25A04(sub_1D4FE1F9C, v15, v3);

    if (v5)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = [v6 isPrivateListeningEnabled];

      if ((v7 & 1) == 0)
      {
        v8 = *(v1 + 104);
        if (v8)
        {
          v9 = v8;
          if (([v9 capabilities] & 1) != 0 || objc_msgSend(v9, sel_isMatchEnabled))
          {
            sub_1D5268FB8();
          }

          if (*(v1 + 104))
          {
          }
        }

        v10 = swift_allocObject();
        *(v10 + 16) = sub_1D543FA44;
        *(v10 + 24) = v2;
        swift_beginAccess();

        sub_1D4EFF5A0();
        v11 = *(*(v1 + 128) + 16);
        sub_1D4EFF7E8();
        v12 = *(v1 + 128);
        *(v12 + 16) = v11 + 1;
        v13 = v12 + 16 * v11;
        *(v13 + 32) = sub_1D543FA48;
        *(v13 + 40) = v10;
        *(v1 + 128) = v12;
        swift_endAccess();
      }
    }
  }
}

void *sub_1D543DBF8()
{
  v1 = *(v0 + 80);
  v2 = sub_1D5612128();
  v3 = sub_1D4F0B2D8(v2);
  if (v3)
  {
    v4 = v3;
    v13 = MEMORY[0x1E69E7CC0];
    result = sub_1D4F04ACC(0, v3 & ~(v3 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6EB9B0](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = *(v8 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components);

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D4F04ACC((v10 > 1), v11 + 1, 1);
      }

      ++v6;
      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9;
    }

    while (v4 != v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1D52B6568(v7);

  return sub_1D54E4C8C(v12);
}

uint64_t sub_1D543DD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v6 = *(_s5QueueC10PropertiesVMa(0) - 8);
  v5[14] = v6;
  v7 = *(v6 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6950, &qword_1D56651B8);
  v5[17] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6958, &qword_1D56651D0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6960, &qword_1D56651D8);
  v5[21] = v11;
  v12 = *(v11 - 8);
  v5[22] = v12;
  v13 = *(v12 + 64) + 15;
  v5[23] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D543DF4C, 0, 0);
}

uint64_t sub_1D543DF4C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v33 = **(v0 + 80);
    v34 = *(v0 + 96);
    v3 = (v1 + 32);
    v4 = sub_1D5615458();
    v32 = v4;
    do
    {
      v35 = v2;
      v6 = *(v0 + 192);
      v5 = *(v0 + 200);
      v7 = *(v0 + 96);
      v8 = *v3;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
      OUTLINED_FUNCTION_123();
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = v8;
      sub_1D4FB8150();
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v4);

      swift_unknownObjectRetain();
      v14 = *(v0 + 192);
      if (v6 == 1)
      {
        sub_1D4E50004(*(v0 + 192), &qword_1EC7EB710, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        (*(*(v4 - 8) + 8))(v14, v4);
      }

      if (*v13)
      {
        v15 = v12[3];
        v16 = *v13;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = sub_1D5615338();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = swift_allocObject();
      *(v20 + 16) = &unk_1D56651F0;
      *(v20 + 24) = v12;

      if (v19 | v17)
      {
        v21 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v0 + 200);
      v23 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v21;
      *(v0 + 64) = v33;
      swift_task_create();

      sub_1D4E50004(v22, &qword_1EC7EB710, &qword_1D561F440);
      ++v3;
      v2 = v35 - 1;
      v4 = v32;
    }

    while (v35 != 1);
  }

  v24 = *(v0 + 184);
  v25 = *(v0 + 136);
  v26 = **(v0 + 80);
  sub_1D5615378();
  v27 = *(MEMORY[0x1E69E8588] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 208) = v28;
  *v28 = v29;
  v30 = OUTLINED_FUNCTION_20_87(v28);

  return MEMORY[0x1EEE6D8A8](v30);
}

uint64_t sub_1D543E234()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 208);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D543E318()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[20];
  v2 = v0[17];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = v0[24];
    v3 = v0[25];
    v6 = v0[18];
    v5 = v0[19];
    v8 = v0[15];
    v7 = v0[16];
    (*(v0[22] + 8))(v0[23], v0[21]);

    OUTLINED_FUNCTION_55();

    return v9();
  }

  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[13];
  v15 = *(v2 + 48);
  *v0[19] = *v1;
  sub_1D544005C();
  sub_1D4FB8150();
  v16 = *v11;
  v17 = *(v2 + 48);
  sub_1D544005C();
  sub_1D543FE60();
  v18 = *v14;
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *v14;
  v0[9] = *v14;
  *v14 = 0x8000000000000000;
  v20 = sub_1D4F0E8EC();
  if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
  {
    __break(1u);
    goto LABEL_20;
  }

  v22 = v20;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6968, &qword_1D5665200);
  if ((sub_1D5615D78() & 1) == 0)
  {
LABEL_12:
    v27 = v0[19];
    v29 = v0[15];
    v28 = v0[16];
    v30 = v0[14];
    if (v23)
    {

      v31 = v0[9];
      sub_1D54400B4(v29, v31[7] + *(v30 + 72) * v22);
      OUTLINED_FUNCTION_36_56();
      sub_1D4E50004(v27, &qword_1EC7F6950, &qword_1D56651B8);
      goto LABEL_16;
    }

    v31 = v0[9];
    v31[(v22 >> 6) + 8] |= 1 << v22;
    *(v31[6] + 8 * v22) = v16;
    v32 = v31[7];
    v33 = *(v30 + 72);
    sub_1D544005C();
    OUTLINED_FUNCTION_36_56();
    v20 = sub_1D4E50004(v27, &qword_1EC7F6950, &qword_1D56651B8);
    v34 = v31[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      v31[2] = v36;
LABEL_16:
      v37 = v0[13];
      v38 = *v37;
      *v37 = v31;

      v39 = *(MEMORY[0x1E69E8588] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      v0[26] = v40;
      *v40 = v41;
      v20 = OUTLINED_FUNCTION_20_87();

      return MEMORY[0x1EEE6D8A8](v20);
    }

LABEL_20:
    __break(1u);
    return MEMORY[0x1EEE6D8A8](v20);
  }

  v24 = v0[9];
  v25 = sub_1D4F0E8EC();
  if ((v23 & 1) == (v26 & 1))
  {
    v22 = v25;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);

  return sub_1D5616238();
}

uint64_t sub_1D543E6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D543E6C4, 0, 0);
}

uint64_t sub_1D543E6C4()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for InternalMusicPlayer.Queue(0);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6950, &qword_1D56651B8) + 48);
  sub_1D5266D50(v2);
  *v3 = v1;
  OUTLINED_FUNCTION_55();
  v7 = v5;

  return v7();
}

uint64_t sub_1D543E778(void *a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = v7;
  v64 = _s5QueueC10PropertiesVMa(0);
  v61 = *(v64 - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](v64);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v60 - v19;
  v20 = *a7;
  v65 = a7[1];
  v66 = v20;
  v21 = a7[2];
  v74 = a7[3];
  v75 = v21;
  v22 = a7[4];
  v72 = a7[5];
  v73 = v22;
  v23 = *(v8 + 72);
  if (v23 && *(v23 + 32) != 2 && (a2 & 1) != 0)
  {
    v24 = *(v8 + 72);

    sub_1D5500F24(2);
  }

  *(v8 + 136) = a3;
  *(v8 + 144) = a4 & 1;
  v25 = *(v8 + 16);
  sub_1D5191564();
  v26 = *(v8 + 80);
  v27 = sub_1D5612128();
  result = sub_1D4E62628(v27);
  if (!result)
  {
  }

  if (result >= 1)
  {
    v30 = 0;
    v70 = v27 & 0xC000000000000001;
    *&v29 = 136446466;
    v62 = v29;
    v32 = v65;
    v31 = v66;
    v63 = v18;
    v68 = v27;
    v71 = result;
    do
    {
      if (v70)
      {
        v33 = MEMORY[0x1DA6EB9B0](v30, v27);
      }

      else
      {
        v33 = *(v27 + 8 * v30 + 32);
      }

      v34 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components;
      if (*(a6 + 16) && (v35 = *(v33 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer5Queue_components), v36 = sub_1D4F0E8EC(), (v37 & 1) != 0))
      {
        v38 = *(a6 + 56) + *(v61 + 72) * v36;
        v39 = v60;
        sub_1D543FE60();
        v76 = v31;
        v77 = v32;
        v78 = v75;
        v79 = v74;
        v80 = v73;
        v81 = v72;
        sub_1D52671E4();

        v40 = v39;
      }

      else
      {
        if (qword_1EDD54498 != -1)
        {
          swift_once();
        }

        v41 = sub_1D560C758();
        __swift_project_value_buffer(v41, qword_1EDD76AC0);

        v42 = sub_1D560C738();
        v43 = sub_1D56156C8();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v69 = v34;
          v45 = v44;
          v67 = swift_slowAlloc();
          v76 = v67;
          *v45 = v62;
          v46 = a1;
          v47 = a6;
          v48 = *(v33 + v69);

          v50 = MEMORY[0x1DA6EAF70](v49, &type metadata for InternalMusicPlayer.Queue.Component);
          v52 = v51;
          a6 = v47;
          a1 = v46;
          v31 = v66;

          v53 = sub_1D4E6835C(v50, v52, &v76);

          *(v45 + 4) = v53;
          *(v45 + 12) = 2082;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
          sub_1D52C99A4();
          v54 = sub_1D5614BC8();
          v56 = sub_1D4E6835C(v54, v55, &v76);
          v18 = v63;

          *(v45 + 14) = v56;
          v32 = v65;
          _os_log_impl(&dword_1D4E3F000, v42, v43, "Missed updated queue map match for components: %{public}s with queue properties map: %{public}s", v45, 0x16u);
          v57 = v67;
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v57, -1, -1);
          v58 = v45;
          v34 = v69;
          MEMORY[0x1DA6ED200](v58, -1, -1);
        }

        v27 = v68;
        type metadata accessor for InternalMusicPlayer.Queue(0);
        v59 = *(v33 + v34);

        sub_1D5266D50(a1);

        v76 = v31;
        v77 = v32;
        v78 = v75;
        v79 = v74;
        v80 = v73;
        v81 = v72;
        sub_1D52671E4();

        v40 = v18;
      }

      sub_1D543FE08(v40, _s5QueueC10PropertiesVMa);
      ++v30;
    }

    while (v71 != v30);
  }

  __break(1u);
  return result;
}

id sub_1D543ECA4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6868, &qword_1D56650C8);
  v1 = sub_1D5615158();

  v2 = [v0 initWithCommandRequests_];

  return v2;
}

uint64_t sub_1D543ED28(uint64_t a1)
{
  v1[20] = a1;
  sub_1D56153C8();
  v1[21] = sub_1D56153B8();
  v3 = sub_1D5615338();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D543EDC0, v3, v2);
}

uint64_t sub_1D543EDC0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6838, &qword_1D5665090);
  sub_1D5612858();
  v2 = v0[19];
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D543EEFC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6858, &qword_1D56650B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D543F240;
  v0[13] = &block_descriptor_26;
  v0[14] = v3;
  [v2 performWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D543EEFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 200) = v4;
  v5 = v3[23];
  v6 = v3[22];
  if (v4)
  {
    v7 = sub_1D543F1D0;
  }

  else
  {
    v7 = sub_1D543F01C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D543F01C()
{
  v17 = v0;
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[18];

  result = sub_1D4E62628(v3);
  if (result)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1DA6EB9B0](v6, v3);
        v7 = result;
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * v6 + 32);
        result = swift_unknownObjectRetain();
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 musicKit_commandStatus_type] == 3 && objc_msgSend(v7, sel_musicKit_commandStatus_dialog))
      {

        v10 = swift_unknownObjectRetain();
        sub_1D4F27140(v10, v15);
        v11 = v16;
        sub_1D512F120();
        v13 = v15[1];
        v14 = v15[0];
        OUTLINED_FUNCTION_121_0();
        *v12 = v14;
        *(v12 + 16) = v13;
        *(v12 + 32) = v11;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_55();
        goto LABEL_13;
      }

      result = swift_unknownObjectRelease();
      ++v6;
      if (v8 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_11:

    OUTLINED_FUNCTION_22_1();
LABEL_13:

    return v9();
  }

  return result;
}

uint64_t sub_1D543F1D0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];

  swift_willThrow();

  v4 = v0[25];
  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D543F240(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1D4F23514(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6860, &qword_1D56650C0);
    v7 = sub_1D5615168();

    return sub_1D4F23510(v4, v7);
  }
}

void sub_1D543F2E4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6928, &qword_1D5665160);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  if (!sub_1D543F9AC(a2))
  {
    sub_1D5614BD8();
  }

  [a2 command];
  v9 = sub_1D5614BA8();

  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v10 = sub_1D5615738();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_1D543FA78;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5073308;
  aBlock[3] = &block_descriptor_103_0;
  v13 = _Block_copy(aBlock);

  MRMediaRemoteSendCommandToPlayerWithResult();
  _Block_release(v13);
}

uint64_t sub_1D543F548(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6928, &qword_1D5665160);
  return sub_1D5615358();
}

uint64_t InternalMusicPlayer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_1D4E62868(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 120);
  swift_unknownObjectRelease();
  v8 = *(v0 + 128);

  return v0;
}

uint64_t InternalMusicPlayer.__deallocating_deinit()
{
  InternalMusicPlayer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 145, 7);
}

uint64_t InternalMusicPlayer.state<A>(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  type metadata accessor for MusicPlayer.ItemState();
  (*(v5 + 16))(v9, a1, a2);
  v12 = 0;
  memset(v11, 0, sizeof(v11));

  return MusicPlayer.ItemState.__allocating_init(_:container:player:)(v9, v11, v2);
}

uint64_t InternalMusicPlayer.state<A, B>(for:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  type metadata accessor for MusicPlayer.ItemState();
  (*(v12 + 16))(v16, a1, a3);
  v17 = *(a6 + 8);
  v20[3] = a4;
  v20[4] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);

  return MusicPlayer.ItemState.__allocating_init(_:container:player:)(v16, v20, v6);
}

uint64_t sub_1D543F8B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D544012C;

  return v7(a1);
}

uint64_t sub_1D543F9AC(void *a1)
{
  v1 = [a1 options];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614BB8();

  return v3;
}

uint64_t sub_1D543FA48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D543FA78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6928, &qword_1D5665160);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 80);

  return sub_1D543F548(a1);
}

uint64_t sub_1D543FB08()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_5_4(v3);

  return sub_1D5436098();
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D543FBE8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_25_14();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_4(v3);

  return sub_1D5435F00(v5, v6, v7, v1);
}

uint64_t sub_1D543FC7C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_4(v4);
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D5435288(v6, v7, v8, v9, v10);
}

uint64_t sub_1D543FD10()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v5[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D543DD54(v7, v8, v9, v10, v11);
}

uint64_t sub_1D543FDBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1D4E5EEC0(result, a2);

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D543FE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D543FE60()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t objectdestroy_2Tm(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  a1(v2[4]);
  a2(v2[5]);
  OUTLINED_FUNCTION_123();

  return swift_deallocObject();
}

uint64_t sub_1D543FF1C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_25_14();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_4(v4);
  OUTLINED_FUNCTION_50_36();
  OUTLINED_FUNCTION_153_1();

  return sub_1D543E6A0(v6, v7, v8, v9, v10);
}

uint64_t sub_1D543FFB0()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v6[1] = sub_1D4E73560;

  return sub_1D543F8B4(v2, v4);
}

uint64_t sub_1D544005C()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D54400B4(uint64_t a1, uint64_t a2)
{
  v4 = _s5QueueC10PropertiesVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_20_87(uint64_t a1)
{
  *(a1 + 8) = sub_1D543E234;
  v2 = v1[23];
  result = v1[20];
  v4 = v1[21];
  return result;
}

uint64_t OUTLINED_FUNCTION_47_43(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_35()
{
  *(v1 + 24) = v0;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_62_36()
{
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_65_31()
{

  return sub_1D52F8A78(2, v0);
}

id OUTLINED_FUNCTION_66_25()
{

  return [v0 (v1 + 632)];
}

uint64_t OUTLINED_FUNCTION_68_27()
{

  return sub_1D52F8A78(3, v0);
}

uint64_t type metadata accessor for CloudEditorialElementLink()
{
  result = qword_1EDD55438;
  if (!qword_1EDD55438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D54402B0()
{
  sub_1D500A1D4();
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD55468);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD55458);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

int *sub_1D54403B4@<X0>(char *a1@<X8>)
{
  v79 = a1;
  v1 = sub_1D5611C78();
  v81 = OUTLINED_FUNCTION_4(v1);
  v82 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5();
  v80 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  v13 = type metadata accessor for CloudEditorialElementLink();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  v77 = v17 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v70 - v23;
  v25 = sub_1D560C0A8();
  v26 = OUTLINED_FUNCTION_4(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v78 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v70 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF300, &unk_1D56396A0);
  sub_1D5610708();
  sub_1D50D019C(v24, v12);
  sub_1D5441A2C(v24);
  if (__swift_getEnumTagSinglePayload(v12, 1, v25) == 1)
  {
    sub_1D4E50004(v12, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v38 = v80;
    v37 = v81;
    *v80 = 7107189;
    v38[1] = 0xE300000000000000;
    v39 = v82;
    (*(v82 + 104))(v38, *MEMORY[0x1E69763E0], v37);
    OUTLINED_FUNCTION_3_178();
    sub_1D5441B30(v40, v41);
    OUTLINED_FUNCTION_12_93();
    (*(v39 + 16))(v42, v38, v37);
    swift_willThrow();
    return (*(v39 + 8))(v38, v37);
  }

  v74 = v25;
  v75 = v28;
  v71 = *(v28 + 32);
  v72 = v28 + 32;
  v71(v35, v12, v25);
  v76 = v36;
  sub_1D5610708();
  v73 = v13;
  v44 = &v22[*(v13 + 20)];
  v46 = *v44;
  v45 = *(v44 + 1);

  sub_1D5441A2C(v22);
  v47 = v81;
  v48 = v82;
  v49 = v35;
  v50 = v80;
  if (!v45)
  {
    goto LABEL_22;
  }

  if (v46 == 0x6C616E7265747865 && v45 == 0xE800000000000000)
  {
    v52 = 0;
    goto LABEL_11;
  }

  if ((OUTLINED_FUNCTION_13_91() & 1) == 0)
  {
    if (v46 == 0x6C616E7265746E69 && v45 == 0xE800000000000000)
    {
      v52 = 1;
      goto LABEL_11;
    }

    v66 = OUTLINED_FUNCTION_13_91();

    if (v66)
    {
      v52 = 1;
      v53 = v74;
      v54 = v75;
      v55 = v78;
      v56 = v73;
      goto LABEL_12;
    }

LABEL_22:
    *v50 = 0x746567726174;
    v50[1] = 0xE600000000000000;
    (*(v48 + 104))(v50, *MEMORY[0x1E69763E0], v47);
    OUTLINED_FUNCTION_3_178();
    sub_1D5441B30(v67, v68);
    OUTLINED_FUNCTION_12_93();
    (*(v48 + 16))(v69, v50, v47);
    swift_willThrow();
    (*(v48 + 8))(v50, v47);
    return (*(v75 + 8))(v35, v74);
  }

  v52 = 0;
LABEL_11:

  v53 = v74;
  v54 = v75;
  v55 = v78;
  v56 = v73;
LABEL_12:
  (*(v54 + 16))(v55, v35, v53);
  v57 = v77;
  sub_1D5610708();
  v58 = (v57 + *(v56 + 24));
  v60 = *v58;
  v59 = v58[1];

  sub_1D5441A2C(v57);
  v61 = v49;
  if (v59)
  {
    sub_1D5163C98(v60, v59, &v83);

    v62 = v83;
  }

  else
  {
    v62 = 7;
  }

  v63 = sub_1D5610718();
  (*(v54 + 8))(v61, v53);
  v64 = v79;
  v71(v79, v55, v53);
  result = type metadata accessor for EditorialElementLink();
  v64[result[5]] = v52;
  v64[result[6]] = v62;
  *&v64[result[7]] = v63;
  return result;
}

uint64_t sub_1D544096C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for CloudEditorialElementLink();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = sub_1D560C0A8();
  OUTLINED_FUNCTION_14(v17);
  (*(v18 + 16))(v6, v0, v17);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v17);
  v19 = type metadata accessor for EditorialElementLink();
  v20 = 0xEE006C6C65737075;
  v21 = 0x2D73646E65697266;
  v22 = v19;
  v23 = 0;
  v24 = 0;
  switch(*(v0 + *(v19 + 24)))
  {
    case 1:
      v21 = 0x676E6970756F7267;
      v20 = 0xE900000000000073;
      goto LABEL_8;
    case 2:
      v20 = 0xE900000000000078;
      v21 = 0x656C7069746C756DLL;
      goto LABEL_8;
    case 3:
      v21 = 0x6F6F7269746C756DLL;
      v20 = 0xEA0000000000736DLL;
      goto LABEL_8;
    case 4:
      v20 = 0x80000001D5685EE0;
      v21 = 0xD000000000000012;
      goto LABEL_8;
    case 5:
      v20 = 0xE500000000000000;
      v21 = 0x736D6F6F72;
      goto LABEL_8;
    case 6:
      v20 = 0xEA00000000007374;
      v21 = 0x726168632D706F74;
      goto LABEL_8;
    case 7:
      goto LABEL_9;
    default:
LABEL_8:
      v23 = v21;
      v24 = v20;
LABEL_9:
      if (*(v0 + *(v19 + 20)))
      {
        v25 = 0x6C616E7265746E69;
      }

      else
      {
        v25 = 0x6C616E7265747865;
      }

      sub_1D4F5A3D0(v6, v16);
      v26 = &v16[*(v7 + 20)];
      *v26 = v25;
      v26[1] = 0xE800000000000000;
      v27 = &v16[*(v7 + 24)];
      *v27 = v23;
      *(v27 + 1) = v24;
      sub_1D54419C8(v16, v13);
      v28 = *(v0 + *(v22 + 28));

      sub_1D56106F8();
      return sub_1D5441A2C(v16);
  }
}