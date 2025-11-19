void *sub_1D538BBD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F12E0, &qword_1D564ABD0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[2] = sub_1D560C858();
  v0[3] = 0;
  v4 = sub_1D560F628();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[4] = sub_1D560F618();
  v0[5] = 0;
  return v0;
}

void sub_1D538BC90(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    OUTLINED_FUNCTION_0_212(a1);
  }
}

void sub_1D538BCB0(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    OUTLINED_FUNCTION_0_212(a1);
  }
}

uint64_t sub_1D538BCE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F5068, &qword_1D565A2E0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D4ECF3E8;

  return sub_1D538AEA4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D538BDEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D538BE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v70 = *(a3 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v14 = sub_1D560D838();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v69 = a2;
  result = sub_1D560F0C8();
  if (result)
  {
    *a5 = 6;
    return result;
  }

  v63 = a5;
  v26 = *(a4 + 8);
  v64 = a3;
  v62 = v26;
  v65 = a1;
  sub_1D560EC98();
  sub_1D560D5C8();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v29 = v28;
  v28(v19, v14);
  v30 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v24, 1, v30) == 1)
  {
    sub_1D4E6C9CC(v24, &unk_1EC7EBF20, &unk_1D561F530);
    v31 = v70;
  }

  else
  {
    v32 = sub_1D560D488();
    v34 = v33;
    (*(*(v30 - 8) + 8))(v24, v30);
    v36 = v32 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v34 == v35;
    v31 = v70;
    if (v36)
    {
    }

    else
    {
      v37 = sub_1D5616168();

      if ((v37 & 1) == 0)
      {
        *v63 = 6;
        return result;
      }
    }
  }

  v38 = *(v31 + 16);
  v38(v13, v65, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    result = sub_1D4E6C9CC(&v80, &qword_1EC7EC510, &unk_1D5621040);
LABEL_19:
    *v63 = 0;
    return result;
  }

  v70 = v27;
  v61 = v14;
  sub_1D4E48324(&v80, &v83);
  v39 = v84;
  v40 = v85;
  __swift_project_boxed_opaque_existential_1(&v83, v84);
  (*(v40 + 24))(v79, v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    sub_1D4E6C9CC(&v76, &qword_1EC7EC510, &unk_1D5621040);
    result = __swift_destroy_boxed_opaque_existential_1(&v83);
    goto LABEL_19;
  }

  sub_1D4E48324(&v76, &v80);
  v41 = *(&v81 + 1);
  v42 = v82;
  __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
  sub_1D4F68014(v41, v42, v79);
  v43 = v79[0];
  v44 = v63;
  if (LOBYTE(v79[0]))
  {
    if (LOBYTE(v79[0]) != 1)
    {
      v43 = 2;
    }

    goto LABEL_43;
  }

  v45 = v68;
  sub_1D560EC98();
  v46 = v67;
  sub_1D560D5C8();
  v29(v45, v61);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v30);
  sub_1D4E6C9CC(v46, &unk_1EC7EBF20, &unk_1D561F530);
  if (EnumTagSinglePayload == 1 && (v48 = [objc_opt_self() sharedMonitor], v49 = objc_msgSend(v48, sel_isRemoteServerLikelyReachable), v48, (v49 & 1) == 0))
  {
    v43 = 10;
  }

  else
  {
    v38(v66, v65, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(&v76, v79);
      __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      sub_1D560DB68();
      if (v72)
      {
        if (swift_dynamicCast())
        {
          if (*(&v74 + 1))
          {
            sub_1D4E48324(&v73, &v76);
            v50 = *(&v77 + 1);
            v51 = v78;
            v52 = __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
            sub_1D4F67E14(v52, v50, v51);
            if ((v73 & 0xC0) == 0x40)
            {
              switch(v73 & 0x3F)
              {
                case 1:
                  v53 = 4;
                  break;
                case 2:
                  v53 = 7;
                  break;
                case 3:
                  v53 = 8;
                  break;
                case 4:
                  v53 = 9;
                  break;
                case 5:
                  v53 = 11;
                  break;
                case 6:
                  v53 = 3;
                  break;
                case 7:
                  v53 = 6;
                  break;
                case 8:
                  v53 = 12;
                  break;
                default:
                  v53 = 5;
                  break;
              }

              *v44 = v53;
              __swift_destroy_boxed_opaque_existential_1(&v76);
              __swift_destroy_boxed_opaque_existential_1(v79);
              goto LABEL_44;
            }

            __swift_destroy_boxed_opaque_existential_1(&v76);
            __swift_destroy_boxed_opaque_existential_1(v79);
            goto LABEL_42;
          }
        }

        else
        {
          v75 = 0;
          v74 = 0u;
          v73 = 0u;
        }
      }

      else
      {
        sub_1D4E6C9CC(v71, &qword_1EC7EEC40, &unk_1D561C070);
        v73 = 0u;
        v74 = 0u;
        v75 = 0;
      }

      sub_1D4E6C9CC(&v73, &qword_1EC7EC548, &qword_1D5621090);
      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    else
    {
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      sub_1D4E6C9CC(&v76, &qword_1EC7EC548, &qword_1D5621090);
    }

    v54 = objc_opt_self();
    v55 = [objc_opt_self() autoupdatingActiveAccount];
    v56 = [v54 sharedMonitorForIdentity_];

    v57 = [v56 subscriptionStatus];
    if (!v57 || (v58 = [v57 capabilities], v57, (v58 & 1) != 0))
    {
      v59 = *(sub_1D4E5A1CC() + 48);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v79[0]) == 2 || LOBYTE(v79[0]) != 3 && (v79[0] & 1) == 0)
      {
LABEL_42:
        v43 = 13;
        goto LABEL_43;
      }

      v43 = 4;
    }

    else
    {
      v43 = 3;
    }
  }

LABEL_43:
  *v44 = v43;
LABEL_44:
  __swift_destroy_boxed_opaque_existential_1(&v80);
  return __swift_destroy_boxed_opaque_existential_1(&v83);
}

uint64_t MusicLibrary.FavoriteAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D538C828()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicLibrary.FavoriteAction.UnsupportedReason.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D538C878()
{
  result = qword_1EC7F5090;
  if (!qword_1EC7F5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5090);
  }

  return result;
}

_BYTE *_s14FavoriteActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s14FavoriteActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicSearchResultGroup.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicSearchResultGroup.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MusicSearchResultGroup.items.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicSearchResultGroup() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MusicSearchResultGroup()
{
  result = qword_1EDD5BCB8;
  if (!qword_1EDD5BCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MusicSearchResultGroup.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D5616168()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_1D5616168()) && (v6 = type metadata accessor for MusicSearchResultGroup(), v7 = *(v6 + 24), type metadata accessor for GenericMusicItem(), sub_1D538DAA0(&qword_1EDD5C600, type metadata accessor for GenericMusicItem), sub_1D538DAA0(&qword_1EDD5C5F8, type metadata accessor for GenericMusicItem), (sub_1D560DAA8())))
  {
    v8 = *(a1 + *(v6 + 28)) ^ *(a2 + *(v6 + 28)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D538CCF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001D568CA80 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1D538CE48(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x736D657469;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D538CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D538CCF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D538CEEC(uint64_t a1)
{
  v2 = sub_1D538D2EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538CF28(uint64_t a1)
{
  v2 = sub_1D538D2EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicSearchResultGroup.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1D5614E28();
  v4 = v0[2];
  v5 = v0[3];
  sub_1D5614E28();
  v6 = type metadata accessor for MusicSearchResultGroup();
  v7 = *(v6 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D538D340(&qword_1EC7EB0D8, &qword_1EC7EB0E0);
  sub_1D5614CB8();
  v8 = *(v1 + *(v6 + 28));
  return sub_1D56162F8();
}

uint64_t MusicSearchResultGroup.hashValue.getter()
{
  sub_1D56162D8();
  MusicSearchResultGroup.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D538D074@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSearchResultGroup.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D538D0A8()
{
  sub_1D56162D8();
  MusicSearchResultGroup.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicSearchResultGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5098, &qword_1D565A448);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D538D2EC();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  v22[15] = 0;
  OUTLINED_FUNCTION_10_43();
  sub_1D5616088();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v22[14] = 1;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616088();
    v18 = type metadata accessor for MusicSearchResultGroup();
    v19 = *(v18 + 24);
    v22[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    sub_1D538D340(&qword_1EC7F50A8, &qword_1EC7EF9D0);
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
    v20 = *(v3 + *(v18 + 28));
    v22[12] = 3;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616098();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1D538D2EC()
{
  result = qword_1EC7F50A0;
  if (!qword_1EC7F50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F50A0);
  }

  return result;
}

uint64_t sub_1D538D340(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA650, &qword_1D561C540);
    sub_1D538DAA0(a2, type metadata accessor for GenericMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MusicSearchResultGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v4 = OUTLINED_FUNCTION_4(v3);
  v30 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F50B0, &qword_1D565A450);
  v11 = OUTLINED_FUNCTION_4(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v28 - v15;
  v17 = type metadata accessor for MusicSearchResultGroup();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D538D2EC();
  v33 = v16;
  v22 = v34;
  sub_1D5616398();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v31;
  v38 = 0;
  *v20 = sub_1D5615F98();
  v20[1] = v24;
  v34 = v24;
  v37 = 1;
  v20[2] = sub_1D5615F98();
  v20[3] = v25;
  v36 = 2;
  sub_1D538D340(&qword_1EC7F50B8, &qword_1EC7EAAE0);
  v28[1] = 0;
  sub_1D5615FD8();
  (*(v30 + 32))(v20 + *(v17 + 24), v9, v3);
  v35 = 3;
  v26 = sub_1D5615FA8();
  (*(v23 + 8))(v33, v32);
  *(v20 + *(v17 + 28)) = v26 & 1;
  sub_1D538D7C8(v20, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D538D82C(v20);
}

uint64_t sub_1D538D7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSearchResultGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D538D82C(uint64_t a1)
{
  v2 = type metadata accessor for MusicSearchResultGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D538D8B8()
{
  v4 = 0xD000000000000017;
  v5 = 0x80000001D568CAA0;
  strcpy(v3, "\n  id: ");
  BYTE1(v3[1]) = 0;
  WORD1(v3[1]) = 0;
  HIDWORD(v3[1]) = -402653184;
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v3[0], v3[1]);

  strcpy(v3, ",\n  title: ");
  HIWORD(v3[1]) = -5120;
  MEMORY[0x1DA6EAC70](v0[2], v0[3]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v3[0], v3[1]);

  v1 = *(type metadata accessor for MusicSearchResultGroup() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D538DD80();
  sub_1D56155F8();
  if (sub_1D560DA08())
  {
    MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568CAC0);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v4;
}

uint64_t sub_1D538DAA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D538DB18()
{
  sub_1D53263DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for MusicSearchResultGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D538DC7C()
{
  result = qword_1EC7F50C0;
  if (!qword_1EC7F50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F50C0);
  }

  return result;
}

unint64_t sub_1D538DCD4()
{
  result = qword_1EC7F50C8;
  if (!qword_1EC7F50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F50C8);
  }

  return result;
}

unint64_t sub_1D538DD2C()
{
  result = qword_1EC7F50D0;
  if (!qword_1EC7F50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F50D0);
  }

  return result;
}

unint64_t sub_1D538DD80()
{
  result = qword_1EC7F4448;
  if (!qword_1EC7F4448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA650, &qword_1D561C540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4448);
  }

  return result;
}

uint64_t MusicOffer.formattedPrice.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicOffer.Kind.rawValue.getter()
{
  v1 = sub_1D560F548();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*v0)
  {
    case 1:
      sub_1D560F4F8();
      break;
    case 2:
      sub_1D560F4A8();
      break;
    case 3:
      sub_1D560F4C8();
      break;
    case 4:
      sub_1D560F498();
      break;
    case 5:
      sub_1D560F4B8();
      break;
    case 6:
      sub_1D560F4E8();
      break;
    case 7:
      sub_1D560F518();
      break;
    case 8:
      sub_1D560F508();
      break;
    case 9:
      sub_1D560F528();
      break;
    default:
      sub_1D560F4D8();
      break;
  }

  v9 = sub_1D560F538();
  (*(v4 + 8))(v8, v1);
  return v9;
}

uint64_t sub_1D538DFA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7959906 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69646172 && a2 == 0xE500000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6C6E776F646572 && a2 == 0xEA00000000006461;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1735290732 && a2 == 0xE400000000000000;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x726564726F657270 && a2 == 0xE800000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1D5616168();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_1D538E2A8(char a1)
{
  result = 7959906;
  switch(a1)
  {
    case 1:
      result = 0x6F69646172;
      break;
    case 2:
      result = 0x6F6C6E776F646572;
      break;
    case 3:
      result = 0x7069726373627573;
      break;
    case 4:
      result = 0x64616F6C6E776F64;
      break;
    case 5:
      result = 0x64616F6C6E776F64;
      break;
    case 6:
      result = 1735290732;
      break;
    case 7:
      result = 0x6D756964656DLL;
      break;
    case 8:
      result = 0x74726F6873;
      break;
    case 9:
      result = 0x726564726F657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D538E3BC(uint64_t a1)
{
  v2 = sub_1D538F458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E3F8(uint64_t a1)
{
  v2 = sub_1D538F458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D538DFA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D538E47C(uint64_t a1)
{
  v2 = sub_1D538F110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E4B8(uint64_t a1)
{
  v2 = sub_1D538F110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E4F4(uint64_t a1)
{
  v2 = sub_1D538F308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E530(uint64_t a1)
{
  v2 = sub_1D538F308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E56C(uint64_t a1)
{
  v2 = sub_1D538F2B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E5A8(uint64_t a1)
{
  v2 = sub_1D538F2B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E5E4(uint64_t a1)
{
  v2 = sub_1D538F260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E620(uint64_t a1)
{
  v2 = sub_1D538F260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E65C(uint64_t a1)
{
  v2 = sub_1D538F20C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E698(uint64_t a1)
{
  v2 = sub_1D538F20C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E6D4(uint64_t a1)
{
  v2 = sub_1D538F164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E710(uint64_t a1)
{
  v2 = sub_1D538F164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E74C(uint64_t a1)
{
  v2 = sub_1D538F404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E788(uint64_t a1)
{
  v2 = sub_1D538F404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E7C4(uint64_t a1)
{
  v2 = sub_1D538F3B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E800(uint64_t a1)
{
  v2 = sub_1D538F3B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E83C(uint64_t a1)
{
  v2 = sub_1D538F1B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E878(uint64_t a1)
{
  v2 = sub_1D538F1B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D538E8B4(uint64_t a1)
{
  v2 = sub_1D538F35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D538E8F0(uint64_t a1)
{
  v2 = sub_1D538F35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicOffer.Kind.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F50D8, &qword_1D565A6F0);
  v5 = OUTLINED_FUNCTION_4(v4);
  v112 = v6;
  v113 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v111 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F50E0, &qword_1D565A6F8);
  v12 = OUTLINED_FUNCTION_4(v11);
  v109 = v13;
  v110 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v108 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F50E8, &qword_1D565A700);
  v19 = OUTLINED_FUNCTION_4(v18);
  v106 = v20;
  v107 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v105 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F50F0, &qword_1D565A708);
  v26 = OUTLINED_FUNCTION_4(v25);
  v103 = v27;
  v104 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v102 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F50F8, &qword_1D565A710);
  v33 = OUTLINED_FUNCTION_4(v32);
  v100 = v34;
  v101 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v99 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5100, &qword_1D565A718);
  v40 = OUTLINED_FUNCTION_4(v39);
  v97 = v41;
  v98 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v96 = v45;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5108, &qword_1D565A720);
  OUTLINED_FUNCTION_4(v95);
  v94 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  v93 = v50;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5110, &qword_1D565A728);
  OUTLINED_FUNCTION_4(v92);
  v91 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  v90 = v55;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5118, &qword_1D565A730);
  OUTLINED_FUNCTION_4(v89);
  v88[2] = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v88 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5120, &qword_1D565A738);
  OUTLINED_FUNCTION_4(v62);
  v88[1] = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5128, &qword_1D565A740);
  OUTLINED_FUNCTION_4(v114);
  v68 = v67;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  v73 = v88 - v72;
  v74 = *v2;
  v75 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D538F110();
  sub_1D56163D8();
  v76 = (v68 + 8);
  switch(v74)
  {
    case 1:
      v116 = 1;
      sub_1D538F404();
      v85 = v114;
      sub_1D5616018();
      OUTLINED_FUNCTION_136(&v118);
      v86(v61, v89);
      return (*v76)(v73, v85);
    case 2:
      v117[0] = 2;
      sub_1D538F3B0();
      v82 = v90;
      OUTLINED_FUNCTION_1_123();
      OUTLINED_FUNCTION_136(&v119);
      v77 = v82;
      v83 = &v120;
      goto LABEL_7;
    case 3:
      v117[1] = 3;
      sub_1D538F35C();
      v84 = v93;
      OUTLINED_FUNCTION_1_123();
      OUTLINED_FUNCTION_136(&v121);
      v77 = v84;
      v83 = &v122;
LABEL_7:
      v79 = *(v83 - 32);
      break;
    case 4:
      v117[2] = 4;
      sub_1D538F308();
      v80 = v96;
      OUTLINED_FUNCTION_1_123();
      v81 = v97;
      v79 = v98;
      goto LABEL_13;
    case 5:
      v117[3] = 5;
      sub_1D538F2B4();
      v80 = v99;
      OUTLINED_FUNCTION_1_123();
      v81 = v100;
      v79 = v101;
      goto LABEL_13;
    case 6:
      v117[4] = 6;
      sub_1D538F260();
      v80 = v102;
      OUTLINED_FUNCTION_1_123();
      v81 = v103;
      v79 = v104;
      goto LABEL_13;
    case 7:
      v117[5] = 7;
      sub_1D538F20C();
      v80 = v105;
      OUTLINED_FUNCTION_1_123();
      v81 = v106;
      v79 = v107;
      goto LABEL_13;
    case 8:
      v117[6] = 8;
      sub_1D538F1B8();
      v80 = v108;
      OUTLINED_FUNCTION_1_123();
      v81 = v109;
      v79 = v110;
      goto LABEL_13;
    case 9:
      v117[7] = 9;
      sub_1D538F164();
      v80 = v111;
      OUTLINED_FUNCTION_1_123();
      v81 = v112;
      v79 = v113;
LABEL_13:
      v78 = *(v81 + 8);
      v77 = v80;
      break;
    default:
      v115 = 0;
      sub_1D538F458();
      v61 = v114;
      sub_1D5616018();
      v77 = OUTLINED_FUNCTION_6_90(v117);
      v79 = v62;
      break;
  }

  v78(v77, v79);
  return (*v76)(v73, v61);
}

unint64_t sub_1D538F110()
{
  result = qword_1EC7F5130;
  if (!qword_1EC7F5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5130);
  }

  return result;
}

unint64_t sub_1D538F164()
{
  result = qword_1EC7F5138;
  if (!qword_1EC7F5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5138);
  }

  return result;
}

unint64_t sub_1D538F1B8()
{
  result = qword_1EC7F5140;
  if (!qword_1EC7F5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5140);
  }

  return result;
}

unint64_t sub_1D538F20C()
{
  result = qword_1EC7F5148;
  if (!qword_1EC7F5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5148);
  }

  return result;
}

unint64_t sub_1D538F260()
{
  result = qword_1EC7F5150;
  if (!qword_1EC7F5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5150);
  }

  return result;
}

unint64_t sub_1D538F2B4()
{
  result = qword_1EC7F5158;
  if (!qword_1EC7F5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5158);
  }

  return result;
}

unint64_t sub_1D538F308()
{
  result = qword_1EC7F5160;
  if (!qword_1EC7F5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5160);
  }

  return result;
}

unint64_t sub_1D538F35C()
{
  result = qword_1EC7F5168;
  if (!qword_1EC7F5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5168);
  }

  return result;
}

unint64_t sub_1D538F3B0()
{
  result = qword_1EC7F5170;
  if (!qword_1EC7F5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5170);
  }

  return result;
}

unint64_t sub_1D538F404()
{
  result = qword_1EC7F5178;
  if (!qword_1EC7F5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5178);
  }

  return result;
}

unint64_t sub_1D538F458()
{
  result = qword_1EC7F5180;
  if (!qword_1EC7F5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5180);
  }

  return result;
}

uint64_t MusicOffer.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicOffer.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v144 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5188, &qword_1D565A748);
  v4 = OUTLINED_FUNCTION_4(v3);
  v137 = v5;
  v138 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v143 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5190, &qword_1D565A750);
  v11 = OUTLINED_FUNCTION_4(v10);
  v135 = v12;
  v136 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v142 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5198, &qword_1D565A758);
  v18 = OUTLINED_FUNCTION_4(v17);
  v133 = v19;
  v134 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v147 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51A0, &qword_1D565A760);
  v25 = OUTLINED_FUNCTION_4(v24);
  v131 = v26;
  v132 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v146 = v30;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51A8, &qword_1D565A768);
  OUTLINED_FUNCTION_4(v130);
  v129 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v145 = v35;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51B0, &qword_1D565A770);
  OUTLINED_FUNCTION_4(v128);
  v127 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v141 = v40;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51B8, &qword_1D565A778);
  OUTLINED_FUNCTION_4(v126);
  v125 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v140 = v45;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51C0, &qword_1D565A780);
  OUTLINED_FUNCTION_4(v124);
  v123 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  v139 = v50;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51C8, &qword_1D565A788);
  OUTLINED_FUNCTION_4(v122);
  v121 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v114 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51D0, &qword_1D565A790);
  OUTLINED_FUNCTION_4(v57);
  v120 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v114 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51D8, &unk_1D565A798);
  OUTLINED_FUNCTION_4(v64);
  v66 = v65;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v114 - v70;
  v73 = a1[3];
  v72 = a1[4];
  v148 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v73);
  sub_1D538F110();
  v74 = v149;
  sub_1D5616398();
  if (v74)
  {
    goto LABEL_11;
  }

  v117 = v63;
  v116 = v57;
  v118 = v56;
  v75 = v145;
  v76 = v146;
  v77 = v147;
  v149 = v66;
  v78 = v71;
  v79 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v79, 0);
  if (v82 == v83 >> 1)
  {
    v119 = result;
    v84 = v149;
    v85 = v71;
LABEL_10:
    v98 = sub_1D5615C18();
    swift_allocError();
    v100 = v99;
    v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v100 = &type metadata for MusicOffer.Kind;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v98 - 8) + 104))(v100, *MEMORY[0x1E69E6AF8], v98);
    swift_willThrow();
    OUTLINED_FUNCTION_14_4();
    (*(v84 + 8))(v85, v64);
LABEL_11:
    v102 = v148;
    return __swift_destroy_boxed_opaque_existential_1(v102);
  }

  v115 = 0;
  if (v82 < (v83 >> 1))
  {
    v86 = v64;
    v87 = *(v81 + v82);
    v88 = sub_1D4FE35EC(v82 + 1, v83 >> 1, result, v81, v82, v83);
    v90 = v89;
    v92 = v91;
    swift_unknownObjectRelease();
    v119 = v88;
    v85 = v78;
    if (v90 == v92 >> 1)
    {
      v93 = v87;
      v94 = v144;
      v95 = v115;
      switch(v87)
      {
        case 1:
          v151 = 1;
          sub_1D538F404();
          OUTLINED_FUNCTION_2_121();
          OUTLINED_FUNCTION_14_4();
          v103 = OUTLINED_FUNCTION_6_90(v153);
          v105 = &v154;
          goto LABEL_19;
        case 2:
          v153[0] = 2;
          sub_1D538F3B0();
          OUTLINED_FUNCTION_2_121();
          OUTLINED_FUNCTION_14_4();
          v103 = OUTLINED_FUNCTION_6_90(&v155);
          v105 = &v156;
          goto LABEL_19;
        case 3:
          v153[1] = 3;
          sub_1D538F35C();
          OUTLINED_FUNCTION_2_121();
          OUTLINED_FUNCTION_14_4();
          v103 = OUTLINED_FUNCTION_6_90(&v157);
          v105 = &v158;
          goto LABEL_19;
        case 4:
          v153[2] = 4;
          sub_1D538F308();
          OUTLINED_FUNCTION_2_121();
          OUTLINED_FUNCTION_14_4();
          v103 = OUTLINED_FUNCTION_6_90(&v159);
          v105 = &v160;
LABEL_19:
          v106 = *(v105 - 32);
          goto LABEL_25;
        case 5:
          v153[3] = 5;
          sub_1D538F2B4();
          OUTLINED_FUNCTION_3_121();
          OUTLINED_FUNCTION_14_4();
          v103 = OUTLINED_FUNCTION_6_90(&v161);
          v106 = v130;
          goto LABEL_25;
        case 6:
          v153[4] = 6;
          sub_1D538F260();
          v77 = v76;
          OUTLINED_FUNCTION_3_121();
          OUTLINED_FUNCTION_14_4();
          v107 = v131;
          v106 = v132;
          goto LABEL_24;
        case 7:
          v153[5] = 7;
          sub_1D538F20C();
          OUTLINED_FUNCTION_2_121();
          OUTLINED_FUNCTION_14_4();
          v107 = v133;
          v106 = v134;
          goto LABEL_24;
        case 8:
          v153[6] = 8;
          sub_1D538F1B8();
          v77 = v142;
          OUTLINED_FUNCTION_2_121();
          OUTLINED_FUNCTION_14_4();
          v107 = v135;
          v106 = v136;
          goto LABEL_24;
        case 9:
          v153[7] = 9;
          sub_1D538F164();
          v77 = v143;
          OUTLINED_FUNCTION_2_121();
          OUTLINED_FUNCTION_14_4();
          v107 = v137;
          v106 = v138;
LABEL_24:
          v104 = *(v107 + 8);
          v103 = v77;
LABEL_25:
          v104(v103, v106);
          v112 = OUTLINED_FUNCTION_9_81();
          v113(v112, v75);
          v102 = v148;
          goto LABEL_26;
        default:
          v150 = 0;
          sub_1D538F458();
          v96 = v117;
          sub_1D5615F18();
          if (v95)
          {
            v97 = OUTLINED_FUNCTION_9_81();
            v108(v97, v86);
            OUTLINED_FUNCTION_14_4();
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_14_4();
          OUTLINED_FUNCTION_136(&v152);
          v109(v96, v116);
          v110 = OUTLINED_FUNCTION_9_81();
          v111(v110, v86);
          v102 = v148;
          v93 = v87;
LABEL_26:
          *v94 = v93;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1(v102);
    }

    v84 = v149;
    v64 = v86;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D538FFC8()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicOffer.Kind.hash(into:)();
  return sub_1D5616328();
}

void static MusicOffer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v12 || (sub_1D5616168()) && v2 == v7 && v3 == v8)
  {
    if (v4)
    {
      if (!v9)
      {
        return;
      }

      v14 = v5 == v10 && v4 == v9;
      if (!v14 && (sub_1D5616168() & 1) == 0)
      {
        return;
      }
    }

    else if (v9)
    {
      return;
    }

    sub_1D4F286E0();
  }
}

uint64_t sub_1D5390110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657474616D726F66 && a2 == 0xEE00656369725064;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001D568CAE0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1D53902C4(char a1)
{
  result = 0x657474616D726F66;
  switch(a1)
  {
    case 1:
      result = 0x6563697270;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5390368(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D53903BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5390110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D53903E4(uint64_t a1)
{
  v2 = sub_1D5390B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5390420(uint64_t a1)
{
  v2 = sub_1D5390B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicOffer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51E0, &unk_1D565A7A8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v21 = *(v1 + 24);
  v14 = v1[4];
  v20[1] = v1[5];
  v20[2] = v14;
  v20[0] = v1[6];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5390B38();
  sub_1D56163D8();
  v29 = 0;
  v16 = v22;
  sub_1D5616088();
  if (!v16)
  {
    v17 = v21;
    v18 = v20[0];
    v28 = 1;
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
    v27 = v17;
    v26 = 2;
    sub_1D5390B8C();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    v25 = 3;
    OUTLINED_FUNCTION_22_14();
    sub_1D5616028();
    v24 = v18;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  return (*(v5 + 8))(v10, v3);
}

void MusicOffer.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  sub_1D5614E28();
  v8 = 0.0;
  if (v3 != 0.0)
  {
    v8 = v3;
  }

  MEMORY[0x1DA6EC100](*&v8);
  MEMORY[0x1DA6EC0D0](v4);
  sub_1D56162F8();
  if (v6)
  {
    sub_1D5614E28();
  }

  sub_1D4F31AC0();
}

uint64_t MusicOffer.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 24);
  v6 = *(v0 + 2);
  v7 = v0[6];
  sub_1D56162D8();
  MusicOffer.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicOffer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F51F8, &qword_1D565A7B8);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5390B38();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_11_99();
  v10 = sub_1D5615F98();
  v12 = v11;
  OUTLINED_FUNCTION_11_99();
  sub_1D5615FB8();
  v14 = v13;
  sub_1D5390BE0();
  sub_1D5615FD8();
  OUTLINED_FUNCTION_11_99();
  v19 = sub_1D5615F38();
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  sub_1D4F31CF4();
  sub_1D5615FD8();
  v17 = OUTLINED_FUNCTION_8_112();
  v18(v17);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v22;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5390AD0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 24);
  v6 = *(v0 + 2);
  v7 = v0[6];
  sub_1D56162D8();
  MusicOffer.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D5390B38()
{
  result = qword_1EC7F51E8;
  if (!qword_1EC7F51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F51E8);
  }

  return result;
}

unint64_t sub_1D5390B8C()
{
  result = qword_1EC7F51F0;
  if (!qword_1EC7F51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F51F0);
  }

  return result;
}

unint64_t sub_1D5390BE0()
{
  result = qword_1EC7F5200;
  if (!qword_1EC7F5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5200);
  }

  return result;
}

unint64_t sub_1D5390C38()
{
  result = qword_1EC7F5208;
  if (!qword_1EC7F5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5208);
  }

  return result;
}

unint64_t sub_1D5390C90()
{
  result = qword_1EC7F5210;
  if (!qword_1EC7F5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5210);
  }

  return result;
}

uint64_t sub_1D5390CE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5390D24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5390E6C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5390FEC()
{
  result = qword_1EC7F5218;
  if (!qword_1EC7F5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5218);
  }

  return result;
}

unint64_t sub_1D5391044()
{
  result = qword_1EC7F5220;
  if (!qword_1EC7F5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5220);
  }

  return result;
}

unint64_t sub_1D539109C()
{
  result = qword_1EC7F5228;
  if (!qword_1EC7F5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5228);
  }

  return result;
}

unint64_t sub_1D53910F4()
{
  result = qword_1EC7F5230;
  if (!qword_1EC7F5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5230);
  }

  return result;
}

unint64_t sub_1D539114C()
{
  result = qword_1EC7F5238;
  if (!qword_1EC7F5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5238);
  }

  return result;
}

unint64_t sub_1D53911A4()
{
  result = qword_1EC7F5240;
  if (!qword_1EC7F5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5240);
  }

  return result;
}

unint64_t sub_1D53911FC()
{
  result = qword_1EC7F5248;
  if (!qword_1EC7F5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5248);
  }

  return result;
}

unint64_t sub_1D5391254()
{
  result = qword_1EC7F5250;
  if (!qword_1EC7F5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5250);
  }

  return result;
}

unint64_t sub_1D53912AC()
{
  result = qword_1EC7F5258;
  if (!qword_1EC7F5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5258);
  }

  return result;
}

unint64_t sub_1D5391304()
{
  result = qword_1EC7F5260;
  if (!qword_1EC7F5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5260);
  }

  return result;
}

unint64_t sub_1D539135C()
{
  result = qword_1EC7F5268;
  if (!qword_1EC7F5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5268);
  }

  return result;
}

unint64_t sub_1D53913B4()
{
  result = qword_1EC7F5270;
  if (!qword_1EC7F5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5270);
  }

  return result;
}

unint64_t sub_1D539140C()
{
  result = qword_1EC7F5278;
  if (!qword_1EC7F5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5278);
  }

  return result;
}

unint64_t sub_1D5391464()
{
  result = qword_1EC7F5280;
  if (!qword_1EC7F5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5280);
  }

  return result;
}

unint64_t sub_1D53914BC()
{
  result = qword_1EC7F5288;
  if (!qword_1EC7F5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5288);
  }

  return result;
}

unint64_t sub_1D5391514()
{
  result = qword_1EC7F5290;
  if (!qword_1EC7F5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5290);
  }

  return result;
}

unint64_t sub_1D539156C()
{
  result = qword_1EC7F5298;
  if (!qword_1EC7F5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5298);
  }

  return result;
}

unint64_t sub_1D53915C4()
{
  result = qword_1EC7F52A0;
  if (!qword_1EC7F52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F52A0);
  }

  return result;
}

unint64_t sub_1D539161C()
{
  result = qword_1EC7F52A8;
  if (!qword_1EC7F52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F52A8);
  }

  return result;
}

unint64_t sub_1D5391674()
{
  result = qword_1EC7F52B0;
  if (!qword_1EC7F52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F52B0);
  }

  return result;
}

unint64_t sub_1D53916CC()
{
  result = qword_1EC7F52B8;
  if (!qword_1EC7F52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F52B8);
  }

  return result;
}

unint64_t sub_1D5391724()
{
  result = qword_1EC7F52C0;
  if (!qword_1EC7F52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F52C0);
  }

  return result;
}

unint64_t sub_1D539177C()
{
  result = qword_1EC7F52C8;
  if (!qword_1EC7F52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F52C8);
  }

  return result;
}

unint64_t sub_1D53917D4()
{
  result = qword_1EC7F52D0;
  if (!qword_1EC7F52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F52D0);
  }

  return result;
}

unint64_t sub_1D539182C()
{
  result = qword_1EC7F52D8;
  if (!qword_1EC7F52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F52D8);
  }

  return result;
}

unint64_t sub_1D5391884()
{
  result = qword_1EC7F52E0[0];
  if (!qword_1EC7F52E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F52E0);
  }

  return result;
}

void sub_1D53918E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 40);
    type metadata accessor for MusicLibraryKeepLocalChangeRequest.KeepLocalStatus();
    if (v4 <= 0x3F)
    {
      sub_1D56152D8();
      if (v5 <= 0x3F)
      {
        sub_1D5391D34();
        if (v6 <= 0x3F)
        {
          sub_1D4ECC7A8(319, qword_1EC7F5370, &off_1E84C0360);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D53919E4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((v6 + result) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = (((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D5391B28(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if ((((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *(v17 + 8) = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if ((((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if ((((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, (((((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1D5391D34()
{
  if (!qword_1EC7F5368)
  {
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F5368);
    }
  }
}

_BYTE *sub_1D5391D84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D5391E6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for MusicLibraryKeepLocalChangeRequest();
  v16 = v15[16];
  *(a9 + v16) = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  v17 = *(a5 - 8);
  (*(v17 + 16))(a9, a1, a5);
  *(a9 + v15[13]) = a2;
  *(a9 + v15[14]) = a3;
  *(a9 + v15[15]) = a4;

  sub_1D5391FC0(a1, v15);
  sub_1D5392240(a2, v15);
  sub_1D5392264(a3, v15);

  sub_1D5392508(a4, v15);

  return (*(v17 + 8))(a1, a5);
}

uint64_t sub_1D5391FC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D56131C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v14 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v20, v22);
    v15 = *(v2 + *(a2 + 64));
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v6 + 104))(v10, *MEMORY[0x1E6976988], v5);
    v18 = sub_1D5159364(v10, v16, v17);
    (*(v6 + 8))(v10, v5);
    [v15 setModelObject_];

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1D539263C(v20);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D5392264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D56131C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  v10 = sub_1D5615EE8();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v23 = a2;
      v24 = v2;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v22[1] = v11;
      v13 = v11 + 32;
      v14 = *MEMORY[0x1E6976988];
      v15 = (v5 + 104);
      v16 = (v5 + 8);
      do
      {
        sub_1D4E628D4(v13, v25);
        v17 = v26;
        v18 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*v15)(v8, v14, v4);
        sub_1D5159364(v8, v17, v18);
        (*v16)(v8, v4);
        __swift_destroy_boxed_opaque_existential_1(v25);
        sub_1D5615C88();
        v19 = *(v28 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v13 += 40;
        --v12;
      }

      while (v12);

      a2 = v23;
      v2 = v24;
    }

    else
    {
    }

    v20 = *(v2 + *(a2 + 64));
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v21 = sub_1D5615158();

    [v20 setRelatedModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

id sub_1D5392508(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v4 |= qword_1D565B438[v6];
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return [*(v2 + *(a2 + 64)) setConstraints_];
}

uint64_t sub_1D5392550()
{
  type metadata accessor for MusicLibraryKeepLocalChangeRequest.KeepLocalStatus();
  sub_1D5616108();
  swift_allocObject();
  v0 = sub_1D5615198();
  *v1 = 50462976;
  *(v1 + 4) = 4;
  return sub_1D5047750(v0);
}

uint64_t sub_1D53925C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1D5392550();
  *a2 = result;
  return result;
}

uint64_t sub_1D53925FC()
{
  sub_1D56162D8();
  sub_1D4EA72BC(v2, *v0);
  return sub_1D5616328();
}

uint64_t sub_1D539263C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED400, &qword_1D5620CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicShareableItemRequest.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D5392740()
{
  result = qword_1EC7F53F8;
  if (!qword_1EC7F53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F53F8);
  }

  return result;
}

_BYTE *_s5ErrorOwst_2(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t MusicLibrary.DownloadWarning.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t MusicLibrary.DownloadWarning.description.getter()
{
  result = 0x6B736944776F6C2ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 6:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5392A18()
{
  result = qword_1EC7F5400;
  if (!qword_1EC7F5400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC4F0, &qword_1D565B520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5400);
  }

  return result;
}

unint64_t sub_1D5392A80()
{
  result = qword_1EC7F5408;
  if (!qword_1EC7F5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5408);
  }

  return result;
}

_BYTE *_s15DownloadWarningOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void CloudMusicMovie.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v40 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v41 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v42 = v13;
  v14 = type metadata accessor for CloudMusicMovie.Attributes(0);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5428, &qword_1D565B650);
  OUTLINED_FUNCTION_4(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_71_1();
  v25 = type metadata accessor for CloudMusicMovie(0);
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v43 = (v31 - v30);
  v44 = *(v29 + 32);
  *(v31 - v30 + v44) = 1;
  v32 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D539F094();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D4EA7410(*(v43 + v44));
  }

  else
  {
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615FD8();
    *v43 = v45;
    v43[1] = v46;
    OUTLINED_FUNCTION_25_56();
    sub_1D539F0E8(v33);
    sub_1D5615FD8();
    sub_1D539F018(v20, v43 + v25[5], type metadata accessor for CloudMusicMovie.Attributes);
    type metadata accessor for CloudMusicMovie.Relationships(0);
    OUTLINED_FUNCTION_81_24();
    sub_1D539F0E8(v34);
    sub_1D5615F78();
    sub_1D4F39A1C(v42, v43 + v25[6], &qword_1EC7EF310, &qword_1D565B640);
    type metadata accessor for CloudMusicMovie.Associations(0);
    LOBYTE(v45) = 3;
    OUTLINED_FUNCTION_80_14();
    sub_1D539F0E8(v35);
    sub_1D5615F78();
    sub_1D4F39A1C(v41, v43 + v25[7], &qword_1EC7ECD30, &unk_1D5622F30);
    sub_1D539F12C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    v36 = OUTLINED_FUNCTION_26_18();
    v37(v36);
    sub_1D4EA7410(*(v43 + v44));
    *(v43 + v44) = v45;
    OUTLINED_FUNCTION_77_17();
    sub_1D539F180(v43, v40, v38);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_30_55();
    sub_1D539EFC0(v43, v39);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t CloudMusicMovie.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5430, &qword_1D565B658);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D539F094();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  v17 = *v0;
  v19 = v0[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_32_9();
  sub_1D56160C8();
  if (!v1)
  {
    v9 = type metadata accessor for CloudMusicMovie(0);
    v10 = v9[5];
    type metadata accessor for CloudMusicMovie.Attributes(0);
    OUTLINED_FUNCTION_25_56();
    sub_1D539F0E8(v11);
    OUTLINED_FUNCTION_54_2();
    sub_1D56160C8();
    v12 = v9[6];
    type metadata accessor for CloudMusicMovie.Relationships(0);
    OUTLINED_FUNCTION_81_24();
    sub_1D539F0E8(v13);
    OUTLINED_FUNCTION_54_2();
    sub_1D5616068();
    v14 = v9[7];
    type metadata accessor for CloudMusicMovie.Associations(0);
    OUTLINED_FUNCTION_80_14();
    sub_1D539F0E8(v15);
    OUTLINED_FUNCTION_54_2();
    sub_1D5616068();
    v18 = *(v0 + v9[8]);
    sub_1D50A24E4(v18);
    sub_1D52852B8();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    sub_1D4EA7410(v18);
  }

  return (*(v5 + 8))(v2, v3);
}

void MusicMovie.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_47();
  v628 = v3;
  v637 = v4;
  v635[1] = v5;
  v7 = v6;
  v9 = v8;
  v620 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v579 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_71_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
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
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v48 = OUTLINED_FUNCTION_22(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_59_0();
  v53 = v51 - v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v81);
  *&v603 = sub_1D56128C8();
  v82 = OUTLINED_FUNCTION_4(v603);
  *&v602 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v88 = OUTLINED_FUNCTION_22(v87);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v92);
  v598 = sub_1D5610788();
  v93 = OUTLINED_FUNCTION_4(v598);
  v597 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v97);
  v596 = sub_1D56107C8();
  v98 = OUTLINED_FUNCTION_4(v596);
  v594 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v103);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v109 = OUTLINED_FUNCTION_22(v108);
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v115 = OUTLINED_FUNCTION_22(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v118);
  v120 = v579 - v119;
  v121 = type metadata accessor for CloudVideoOffer();
  v122 = OUTLINED_FUNCTION_22(v121);
  v124 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB90, &unk_1D565B670);
  OUTLINED_FUNCTION_22(v126);
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v131);
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v136);
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v141);
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v145);
  v641 = type metadata accessor for MusicMoviePropertyProvider();
  v146 = OUTLINED_FUNCTION_14(v641);
  v148 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_5();
  v151 = (v150 - v149);
  v635[0] = sub_1D560D838();
  v152 = OUTLINED_FUNCTION_4(v635[0]);
  v634 = v153;
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v157);
  v159 = *(v158 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_38_2();
  v640 = type metadata accessor for CloudMusicMovie(0);
  v161 = OUTLINED_FUNCTION_14(v640);
  v163 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_5();
  v166 = v165 - v164;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  v638 = v166;
  v631 = v167;
  sub_1D5610648();
  if (qword_1EDD53180 != -1)
  {
    swift_once();
  }

  v589 = v120;
  v579[3] = v16;
  v618 = v1;
  v636 = v7;
  v168 = sub_1D56109D8();
  __swift_project_value_buffer(v168, qword_1EDD767D8);
  sub_1D4FFC7E0();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v579[4] = v0;
  v619 = v53;
  v169 = sub_1D560D9A8();
  __swift_project_value_buffer(v169, qword_1EDD53D50);
  v170 = v633;
  v632 = v2;
  sub_1D56105B8();
  v171 = v641;
  v172 = v641[5];
  sub_1D56140F8();
  v581 = v172;
  OUTLINED_FUNCTION_33();
  v580 = v173;
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v173);
  v177 = v171[6];
  sub_1D560F928();
  v582 = v177;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);
  v182 = v171[10];
  v183 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v184, v185, v186, v183);
  v187 = v171[14];
  v188 = sub_1D5610978();
  v584 = v187;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v189, v190, v191, v188);
  v192 = v171[18];
  v193 = sub_1D560C0A8();
  v585 = v192;
  v194 = OUTLINED_FUNCTION_33_51();
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v193);
  v197 = v171[21];
  sub_1D5613178();
  v198 = OUTLINED_FUNCTION_33_51();
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v201);
  v202 = v171[22];
  sub_1D5613198();
  v203 = OUTLINED_FUNCTION_33_51();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
  v207 = v171[23];
  sub_1D56134E8();
  v208 = OUTLINED_FUNCTION_33_51();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v211);
  v212 = v171[24];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v213, v214, v215, v183);
  v216 = v171[25];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v217, v218, v219, v183);
  v220 = v171[26];
  sub_1D5614A78();
  v221 = OUTLINED_FUNCTION_33_51();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v224);
  v225 = OUTLINED_FUNCTION_40_5(v171[28]);
  *&v639 = v188;
  __swift_storeEnumTagSinglePayload(v225, v226, v227, v188);
  v228 = v171[30];
  sub_1D56109F8();
  v586 = v228;
  v229 = OUTLINED_FUNCTION_33_51();
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v232);
  v233 = OUTLINED_FUNCTION_40_5(v171[31]);
  __swift_storeEnumTagSinglePayload(v233, v234, v235, v183);
  v236 = OUTLINED_FUNCTION_40_5(v171[37]);
  __swift_storeEnumTagSinglePayload(v236, v237, v238, v193);
  v239 = v171[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v592 = v239;
  OUTLINED_FUNCTION_33();
  v591 = v240;
  __swift_storeEnumTagSinglePayload(v241, v242, v243, v240);
  v244 = v171[39];
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  v599 = v244;
  v246 = OUTLINED_FUNCTION_33_51();
  __swift_storeEnumTagSinglePayload(v246, v247, v248, v245);
  v249 = OUTLINED_FUNCTION_40_5(v171[40]);
  __swift_storeEnumTagSinglePayload(v249, v250, v251, v245);
  v252 = v171[41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v608 = v252;
  v253 = OUTLINED_FUNCTION_33_51();
  v607 = v254;
  __swift_storeEnumTagSinglePayload(v253, v255, v256, v254);
  v257 = v171[42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v612 = v257;
  v258 = OUTLINED_FUNCTION_33_51();
  v611 = v259;
  __swift_storeEnumTagSinglePayload(v258, v260, v261, v259);
  v262 = OUTLINED_FUNCTION_40_5(v171[43]);
  v625 = v245;
  __swift_storeEnumTagSinglePayload(v262, v263, v264, v245);
  (*(v634 + 16))(&v151[v171[46]], v170, v635[0]);
  v265 = &v151[v171[47]];
  sub_1D5610658();
  v266 = sub_1D5610618();
  v268 = v267;
  v269 = sub_1D56105C8();
  v270 = sub_1D56105F8();
  v271 = sub_1D56105E8();
  v621 = v9;
  v272 = sub_1D56105A8();
  v151[v171[17]] = 2;
  v151[v171[19]] = 2;
  v273 = &v151[v171[29]];
  *v273 = xmmword_1D5626F70;
  *(v273 + 3) = 0;
  *(v273 + 4) = 0;
  *(v273 + 2) = 0;
  v274 = &v151[v171[35]];
  *(v274 + 2) = 0u;
  *(v274 + 3) = 0u;
  *v274 = 0u;
  *(v274 + 1) = 0u;
  v588 = v274;
  if (qword_1EDD5B368 != -1)
  {
    swift_once();
  }

  v275 = qword_1EDD76D30;
  if (qword_1EDD76D30 >> 62)
  {
    sub_1D560CDE8();

    v578 = sub_1D5615E18();

    v275 = v578;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v276 = v639;
  v277 = v641;
  *&v151[v641[45]] = v275;
  v278 = &v151[v277[48]];
  *v278 = v266;
  v278[1] = v268;
  *&v151[v277[49]] = v269;
  v279 = v277;
  *&v151[v277[50]] = v270;
  *&v151[v277[51]] = v271;
  *&v151[v277[52]] = v272;
  OUTLINED_FUNCTION_137();
  v281 = (v638 + *(v280 + 20));
  v282 = v281[1];
  *v151 = *v281;
  *(v151 + 1) = v282;
  v283 = type metadata accessor for CloudMusicMovie.Attributes(0);
  v284 = v281 + v283[5];
  OUTLINED_FUNCTION_122_0(&v604);
  sub_1D4F39AB0(v285, v286, v287, v288);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v290 = OUTLINED_FUNCTION_95_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v290, v291, v289);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v272, &qword_1EC7EB5B8, &unk_1D56206A0);
    v293 = 1;
    EnumTagSinglePayload = v583;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v605);
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v295 = *(v294 + 8);
    v296 = OUTLINED_FUNCTION_86_0();
    v297(v296);
    v293 = 0;
  }

  __swift_storeEnumTagSinglePayload(EnumTagSinglePayload, v293, 1, v580);
  OUTLINED_FUNCTION_61_2(&v603);
  sub_1D4E68940(EnumTagSinglePayload, v298, v299, v300);
  OUTLINED_FUNCTION_25_56();
  v302 = sub_1D539F0E8(v301);
  OUTLINED_FUNCTION_172(&v606);
  OUTLINED_FUNCTION_45_5();
  sub_1D5612A68();
  OUTLINED_FUNCTION_61_2(&v603 + 8);
  sub_1D4E68940(v289, v303, v304, v305);
  v306 = *(v281 + v283[15]);
  if (v306)
  {
    v306 = sub_1D50ABBD4(v306);
  }

  v307 = v587;
  *&v151[v279[7]] = v306;
  v308 = *(v281 + v283[6]);
  if (v308)
  {
    v308 = sub_1D511C2A4(v308);
  }

  v309 = &v151[v279[9]];
  *&v151[v279[8]] = v308;
  v310 = (v281 + v283[7]);
  v311 = v310[1];
  *v309 = *v310;
  *(v309 + 1) = v311;
  v312 = *(v281 + v283[17]);
  if (v312)
  {
    v587 = v302;
    sub_1D4EC9F44(v312);
    v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
    v314 = OUTLINED_FUNCTION_35_1();
    __swift_getEnumTagSinglePayload(v314, v315, v313);
    OUTLINED_FUNCTION_82();

    if (v307 == 1)
    {
      sub_1D4E50004(v307, &qword_1EC7EDB90, &unk_1D565B670);
      v316 = 1;
      v317 = 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_56_30(&v599);
      sub_1D5610708();
      OUTLINED_FUNCTION_24_0(v313);
      (*(v318 + 8))(v307, v313);
      v319 = *v276;
      v307 = *(v276 + 8);
      sub_1D539EFC0(v276, type metadata accessor for CloudVideoOffer);
      if (v307)
      {
        v316 = 1;
        v317 = 0.0;
      }

      else
      {
        v316 = 0;
        v317 = v319 / 1000.0;
      }
    }
  }

  else
  {

    v316 = 1;
    v317 = 0.0;
  }

  v320 = v279[12];
  v321 = &v151[v279[11]];
  *v321 = v317;
  *(v321 + 8) = v316;
  *&v151[v320] = *(v281 + v283[9]);
  v322 = *(v281 + v283[10]);

  if (v322)
  {
    v323 = sub_1D50C4BD4(v322);
  }

  else
  {
    v323 = 0;
  }

  *&v151[v279[13]] = v323;
  OUTLINED_FUNCTION_133_8(v281 + v283[11], &qword_1EC7EC960, &unk_1D56334C0, &v613);
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v325 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v325, v326, v324);
  if (v429)
  {
    sub_1D4E50004(v307, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v324);
    (*(v327 + 8))(v307, v324);
  }

  OUTLINED_FUNCTION_157_8();
  __swift_storeEnumTagSinglePayload(v328, v329, v330, v331);
  v332 = v279[15];
  v333 = v279[16];
  v334 = v279[20];
  OUTLINED_FUNCTION_61_2(&v606 + 8);
  sub_1D4E68940(v335, v336, v337, v338);
  *&v151[v332] = *(v281 + v283[12]);
  *&v151[v333] = *(v281 + v283[13]);
  v339 = v283[14];

  OUTLINED_FUNCTION_61_2(&v607);
  sub_1D5000C8C(v340, v341, v342, v343);
  v344 = OUTLINED_FUNCTION_45_5();
  v151[v334] = MEMORY[0x1DA6E8830](v344) & 1;
  if (v312)
  {
    sub_1D501B268();
  }

  else
  {
    v345 = 0;
  }

  v346 = v632;
  v347 = v590;
  *&v151[v641[27]] = v345;
  OUTLINED_FUNCTION_133_8(v281 + v283[18], &qword_1EC7EC960, &unk_1D56334C0, &v616);
  v348 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v348, v349, v324);
  if (v429)
  {
    sub_1D4E50004(v281, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v324);
    (*(v350 + 8))(v281, v324);
  }

  OUTLINED_FUNCTION_157_8();
  __swift_storeEnumTagSinglePayload(v351, v352, v353, v354);
  OUTLINED_FUNCTION_61_2(&v608);
  sub_1D4E68940(v347, v355, v356, v357);
  OUTLINED_FUNCTION_61_2(&v609);
  sub_1D5000C8C(v346, v358, v359, v360);
  v361 = v593;
  sub_1D56107A8();
  v362 = (v281 + v283[19]);
  v363 = *v362;
  v364 = v362[1];
  v365 = *MEMORY[0x1E6975DC8];
  OUTLINED_FUNCTION_118_5(&v625);
  v367 = v595;
  v368 = v598;
  (*(v366 + 104))(v595);
  OUTLINED_FUNCTION_150(&v619);
  OUTLINED_FUNCTION_165();
  sub_1D5610798();
  v370 = *(v324 + 8);
  v369 = v324 + 8;
  v370(v367, v368);
  OUTLINED_FUNCTION_136(&v622);
  v371(v361, v596);
  OUTLINED_FUNCTION_61_2(&v610);
  sub_1D4E68940(v347, v372, v373, v374);
  v375 = v283[8];
  OUTLINED_FUNCTION_133_8(v281 + v375, &qword_1EC7EC978, &unk_1D56222A0, &v626);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_1(v361);
  if (v429)
  {
    sub_1D4E50004(v361, &qword_1EC7EC978, &unk_1D56222A0);
    v380 = 0;
    v382 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_118_5(&v629);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v377 = *(v376 + 8);
    v378 = OUTLINED_FUNCTION_159();
    v379(v378);
    v380 = sub_1D56128A8();
    v382 = v381;
    (*(v602 + 8))(v369, v603);
  }

  v383 = v641;
  v384 = &v151[v641[32]];
  *v384 = v380;
  v384[1] = v382;
  OUTLINED_FUNCTION_133_8(v281 + v375, &qword_1EC7EC978, &unk_1D56222A0, &v628);
  OUTLINED_FUNCTION_1(v380);
  if (v429)
  {
    sub_1D4E50004(v380, &qword_1EC7EC978, &unk_1D56222A0);
    v389 = 0;
    v391 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_150(&v629);
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v386 = *(v385 + 8);
    v387 = OUTLINED_FUNCTION_159();
    v388(v387);
    v389 = sub_1D56128B8();
    v391 = v390;
    OUTLINED_FUNCTION_136(&v630);
    v392(v382, v603);
  }

  v393 = v638;
  v394 = v606;
  v395 = &v151[v383[33]];
  v396 = &v151[v383[34]];
  *v395 = v389;
  v395[1] = v391;
  v397 = (v281 + v283[20]);
  v398 = v397[1];
  *v396 = *v397;
  *(v396 + 1) = v398;
  sub_1D4F39AB0(v281 + v283[21], v394, &qword_1EC7ED9B0, &unk_1D5631050);
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  v400 = OUTLINED_FUNCTION_95_0();
  v402 = __swift_getEnumTagSinglePayload(v400, v401, v399);

  if (v402 == 1)
  {
    sub_1D4E50004(v394, &qword_1EC7ED9B0, &unk_1D5631050);
    v403 = 0uLL;
    v639 = 0u;
    v606 = 0u;
    v603 = 0u;
    v404 = &v630;
  }

  else
  {
    sub_1D5138FDC(v646);
    OUTLINED_FUNCTION_15_1();
    v575 = *(v574 + 8);
    v576 = OUTLINED_FUNCTION_86_0();
    v577(v576);
    v606 = v646[1];
    v639 = v646[0];
    v602 = v647;
    v403 = v646[2];
    v404 = &v632;
  }

  *(v404 - 16) = v403;
  v405 = v630;
  OUTLINED_FUNCTION_153_5();
  v406 = &v151[v383[36]];
  v407 = v588;
  v408 = *(v588 + 1);
  v645[0] = *v588;
  v645[1] = v408;
  v409 = *(v588 + 3);
  v645[2] = *(v588 + 2);
  v645[3] = v409;
  sub_1D4E50004(v645, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v410 = v606;
  *v407 = v639;
  *(v407 + 1) = v410;
  v411 = v602;
  *(v407 + 2) = v603;
  *(v407 + 3) = v411;
  v412 = (v281 + v283[16]);
  v413 = v412[1];
  *v406 = *v412;
  *(v406 + 1) = v413;
  v414 = v283[22];

  OUTLINED_FUNCTION_61_2(&v615);
  sub_1D5000C8C(v415, v416, v417, v418);
  OUTLINED_FUNCTION_137();
  v420 = v609;
  sub_1D4F39AB0(v393 + *(v419 + 24), v609, &qword_1EC7EF310, &qword_1D565B640);
  type metadata accessor for CloudMusicMovie.Relationships(0);
  v421 = OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_57(v421, 1, v422);
  v423 = v629;
  if (v429)
  {
    sub_1D4E50004(v420, &qword_1EC7EF310, &qword_1D565B640);
    v424 = 1;
    v425 = v626;
    v426 = v625;
    v427 = v610;
  }

  else
  {
    OUTLINED_FUNCTION_133_8(v420, &qword_1EC7EA7F0, &unk_1D561E8C0, &v600);
    OUTLINED_FUNCTION_27_60();
    sub_1D539EFC0(v420, v428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_1(v407);
    v430 = v625;
    v427 = v610;
    if (v429)
    {
      sub_1D4E50004(v407, &qword_1EC7EA7F0, &unk_1D561E8C0);
      v424 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_137_12();
      v432 = *(v431 - 256);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_183_6(v433, v434, v435, v436);
      v394 = sub_1D5613C48();
      OUTLINED_FUNCTION_79_20();
      sub_1D539F0E8(v437);
      OUTLINED_FUNCTION_53_30();
      OUTLINED_FUNCTION_32_52();
      sub_1D5612368();
      OUTLINED_FUNCTION_153_5();
      OUTLINED_FUNCTION_128_9();
      v438 = v432;
      v423 = v629;
      sub_1D4E50004(v438, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v440 = *(v439 + 8);
      v441 = OUTLINED_FUNCTION_159();
      v442(v441);
      v424 = 0;
    }

    v426 = v430;
    v425 = v626;
  }

  __swift_storeEnumTagSinglePayload(v427, v424, 1, v591);
  OUTLINED_FUNCTION_61_2(&v620);
  sub_1D4E68940(v427, v443, v444, v445);
  OUTLINED_FUNCTION_137();
  v447 = v393;
  *&v639 = *(v446 + 28);
  v448 = v393 + v639;
  v449 = v614;
  sub_1D4F39AB0(v448, v614, &qword_1EC7ECD30, &unk_1D5622F30);
  v450 = type metadata accessor for CloudMusicMovie.Associations(0);
  OUTLINED_FUNCTION_1(v449);
  v451 = v615;
  if (v429)
  {
    sub_1D4E50004(v449, &qword_1EC7ECD30, &unk_1D5622F30);
    v452 = 1;
  }

  else
  {
    sub_1D4F39AB0(v449, v615, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_0_213();
    sub_1D539EFC0(v449, v453);
    v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    OUTLINED_FUNCTION_5_1(v451);
    if (v455)
    {
      sub_1D4E50004(v451, &qword_1EC7ECD28, &unk_1D565B660);
      v452 = 1;
    }

    else
    {
      sub_1D560CD98();
      v456 = v627;
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_183_6(v457, v458, v459, v460);
      type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_76_18();
      sub_1D539F0E8(v461);
      OUTLINED_FUNCTION_39_3();
      v447 = v638;
      sub_1D539F0E8(v462);
      OUTLINED_FUNCTION_53_30();
      OUTLINED_FUNCTION_32_52();
      OUTLINED_FUNCTION_94_17();
      v425 = v626;
      sub_1D5612368();
      OUTLINED_FUNCTION_153_5();
      OUTLINED_FUNCTION_128_9();
      sub_1D4E50004(v456, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v426 = v625;
      (*(v463 + 8))(v451, v454);
      v452 = 0;
    }

    v423 = v629;
  }

  v464 = v622;
  __swift_storeEnumTagSinglePayload(v622, v452, 1, v426);
  OUTLINED_FUNCTION_61_2(&v627);
  sub_1D4E68940(v464, v465, v466, v467);
  v468 = v447;
  OUTLINED_FUNCTION_25_52();
  sub_1D4F39AB0(v447 + v469, v394, v470, v471);
  OUTLINED_FUNCTION_1(v394);
  if (v429)
  {
    v472 = &qword_1EC7ECD30;
    v473 = &unk_1D5622F30;
    v474 = v394;
  }

  else
  {
    sub_1D4F39AB0(v394 + v450[5], v423, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_0_213();
    sub_1D539EFC0(v394, v475);
    v476 = v423;
    v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    OUTLINED_FUNCTION_5_1(v476);
    if (!v478)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_137_12();
      v480 = *(v479 - 256);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_183_6(v481, v482, v483, v484);
      v405 = type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_76_18();
      sub_1D539F0E8(v485);
      OUTLINED_FUNCTION_39_3();
      v394 = v638;
      sub_1D539F0E8(v486);
      OUTLINED_FUNCTION_53_30();
      OUTLINED_FUNCTION_32_52();
      v425 = v626;
      sub_1D5612368();
      OUTLINED_FUNCTION_128_9();
      v487 = v480;
      v468 = v394;
      sub_1D4E50004(v487, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v488 + 8))(v476, v477);
      v489 = 0;
      goto LABEL_65;
    }

    v472 = &qword_1EC7ECD28;
    v473 = &unk_1D565B660;
    v474 = v476;
  }

  sub_1D4E50004(v474, v472, v473);
  v489 = 1;
LABEL_65:
  v490 = v641;
  v491 = v623;
  __swift_storeEnumTagSinglePayload(v623, v489, 1, v426);
  OUTLINED_FUNCTION_61_2(v635);
  sub_1D4E68940(v491, v492, v493, v494);
  OUTLINED_FUNCTION_25_52();
  sub_1D4F39AB0(v468 + v495, v405, v496, v497);
  OUTLINED_FUNCTION_1(v405);
  if (v429)
  {
    v498 = &qword_1EC7ECD30;
    v499 = &unk_1D5622F30;
    v500 = v405;
  }

  else
  {
    sub_1D4F39AB0(v405 + v450[6], v425, &qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_0_213();
    sub_1D539EFC0(v405, v501);
    v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_5_1(v425);
    if (!v503)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_137_12();
      v394 = *(v504 - 256);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_183_6(v505, v506, v507, v508);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_75_22();
      sub_1D539F0E8(v509);
      OUTLINED_FUNCTION_53_30();
      OUTLINED_FUNCTION_32_52();
      OUTLINED_FUNCTION_94_17();
      sub_1D5612368();
      v468 = v638;
      sub_1D4E50004(v394, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v510 + 8))(v425, v502);
      v511 = 0;
      goto LABEL_72;
    }

    v498 = &qword_1EC7EB5A8;
    v499 = &unk_1D5622F00;
    v500 = v425;
  }

  sub_1D4E50004(v500, v498, v499);
  v511 = 1;
LABEL_72:
  v512 = v618;
  v513 = v624;
  __swift_storeEnumTagSinglePayload(v624, v511, 1, v607);
  OUTLINED_FUNCTION_61_2(&v638);
  sub_1D4E68940(v513, v514, v515, v516);
  OUTLINED_FUNCTION_25_52();
  OUTLINED_FUNCTION_133_8(v468 + v517, v518, v519, v644);
  OUTLINED_FUNCTION_1(v513);
  if (v429)
  {
    sub_1D4E50004(v513, &qword_1EC7ECD30, &unk_1D5622F30);
    v520 = 1;
  }

  else
  {
    v521 = v513 + v450[7];
    OUTLINED_FUNCTION_122_0(&v601);
    sub_1D4F39AB0(v522, v523, v524, v525);
    OUTLINED_FUNCTION_0_213();
    sub_1D539EFC0(v513, v526);
    v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_5_1(v394);
    if (v528)
    {
      sub_1D4E50004(v394, &qword_1EC7ECD18, &qword_1D5631040);
      v520 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_137_12();
      v530 = *(v529 - 256);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_183_6(v531, v532, v533, v534);
      sub_1D5614898();
      OUTLINED_FUNCTION_74_25();
      sub_1D539F0E8(v535);
      OUTLINED_FUNCTION_53_30();
      OUTLINED_FUNCTION_32_52();
      OUTLINED_FUNCTION_94_17();
      v513 = v394;
      sub_1D5612368();
      sub_1D4E50004(v530, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v536 + 8))(v394, v527);
      v520 = 0;
    }

    v468 = v638;
  }

  __swift_storeEnumTagSinglePayload(v512, v520, 1, v611);
  OUTLINED_FUNCTION_61_2(&v641);
  sub_1D4E68940(v512, v537, v538, v539);
  OUTLINED_FUNCTION_25_52();
  v541 = v617;
  sub_1D4F39AB0(v468 + v540, v617, v542, v543);
  OUTLINED_FUNCTION_1(v541);
  if (v429)
  {
    sub_1D4E50004(v541, &qword_1EC7ECD30, &unk_1D5622F30);
    v544 = 1;
    v545 = v621;
    v546 = v619;
  }

  else
  {
    OUTLINED_FUNCTION_133_8(v541 + v450[8], &qword_1EC7ECD28, &unk_1D565B660, &v602);
    OUTLINED_FUNCTION_0_213();
    sub_1D539EFC0(v541, v547);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    OUTLINED_FUNCTION_1(v513);
    v545 = v621;
    v546 = v619;
    if (!v548)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_137_12();
      v550 = *(v549 - 256);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_183_6(v551, v552, v553, v554);
      type metadata accessor for MusicMovie();
      sub_1D539F0E8(&qword_1EC7EF320);
      OUTLINED_FUNCTION_39_3();
      sub_1D539F0E8(v555);
      OUTLINED_FUNCTION_53_30();
      OUTLINED_FUNCTION_32_52();
      v490 = v641;
      v556 = v632;
      v468 = v638;
      sub_1D5612368();
      v557 = v550;
      v426 = v625;
      sub_1D4E50004(v557, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      v559 = *(v558 + 8);
      v560 = OUTLINED_FUNCTION_159();
      v561(v560);
      v544 = 0;
      goto LABEL_86;
    }

    sub_1D4E50004(v513, &qword_1EC7ECD28, &unk_1D565B660);
    v544 = 1;
  }

  v556 = v632;
LABEL_86:
  __swift_storeEnumTagSinglePayload(v546, v544, 1, v426);
  OUTLINED_FUNCTION_61_2(&v642);
  sub_1D4E68940(v546, v562, v563, v564);
  OUTLINED_FUNCTION_137();
  v566 = *(v565 + 32);
  v567 = *(v468 + v566);
  if (v567 == 1)
  {
    v568 = 0;
  }

  else
  {
    v568 = *(v468 + v566);
  }

  *&v151[v490[44]] = v568;
  v644[1] = v490;
  v644[2] = sub_1D539F0E8(&qword_1EDD5B358);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v643);
  sub_1D539F180(v151, boxed_opaque_existential_0, type metadata accessor for MusicMoviePropertyProvider);
  sub_1D50A24E4(v567);
  MusicMovie.init(propertyProvider:)(v643, v620);

  OUTLINED_FUNCTION_24_0(v637);
  (*(v570 + 8))(v636);
  OUTLINED_FUNCTION_24_0(v631);
  (*(v571 + 8))(v545);
  OUTLINED_FUNCTION_136(&v647 + 8);
  v572(v633, v635[0]);
  sub_1D4E50004(v556, &qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_30_55();
  sub_1D539EFC0(v468, v573);
  sub_1D539EFC0(v151, type metadata accessor for MusicMoviePropertyProvider);
  OUTLINED_FUNCTION_46();
}

void MusicMovie.convertToCloudResource<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v424 = v25;
  v423 = v26;
  v422 = v27;
  v412 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v33);
  v34 = sub_1D5610088();
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v48);
  v409 = sub_1D5612B78();
  v49 = OUTLINED_FUNCTION_4(v409);
  v408 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v54 = OUTLINED_FUNCTION_48(v53);
  v406 = type metadata accessor for CloudMusicMovie(v54);
  v55 = OUTLINED_FUNCTION_14(v406);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v71 = OUTLINED_FUNCTION_22(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v78 = OUTLINED_FUNCTION_22(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v84 = OUTLINED_FUNCTION_22(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  v90 = OUTLINED_FUNCTION_22(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD30, &unk_1D5622F30);
  v100 = OUTLINED_FUNCTION_22(v99);
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v104);
  v421 = sub_1D5613578();
  v105 = OUTLINED_FUNCTION_4(v421);
  v420[1] = v106;
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v110);
  v112 = *(v111 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v114);
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4(v402);
  v383 = v115;
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  v121 = OUTLINED_FUNCTION_22(v120);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v126);
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v130);
  v430 = sub_1D5610788();
  v131 = OUTLINED_FUNCTION_4(v430);
  v401 = v132;
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v136);
  v138 = *(v137 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v140);
  v399 = sub_1D56107C8();
  v141 = OUTLINED_FUNCTION_4(v399);
  v143 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v145);
  v147 = *(v146 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v149);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v151 = OUTLINED_FUNCTION_22(v150);
  v153 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v155);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v157 = OUTLINED_FUNCTION_22(v156);
  v159 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v161);
  v162 = sub_1D56128C8();
  v163 = OUTLINED_FUNCTION_4(v162);
  v165 = v164;
  v167 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_5();
  v170 = v169 - v168;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v171);
  v173 = *(v172 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v175);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v176);
  v178 = *(v177 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v179);
  OUTLINED_FUNCTION_47_5();
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v180);
  v182 = *(v181 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v183);
  OUTLINED_FUNCTION_13_3();
  v185 = OUTLINED_FUNCTION_48(v184);
  v186 = type metadata accessor for CloudMusicMovie.Attributes(v185);
  v187 = OUTLINED_FUNCTION_14(v186);
  v189 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v190);
  v396 = MusicMovie.artistName.getter();
  v395 = v191;
  if (qword_1EDD541B8 != -1)
  {
    swift_once();
  }

  v192 = sub_1D56140F8();
  v193 = sub_1D539F0E8(&qword_1EDD59308);
  v435 = sub_1D539F0E8(&qword_1EDD59300);
  v425 = v21;
  sub_1D560EC28();
  v194 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v194, v195, v192);
  if (v196)
  {
    sub_1D4E50004(v20, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v201 = 1;
    v24 = v415;
  }

  else
  {
    OUTLINED_FUNCTION_118_5(&v439 + 8);
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0(v192);
    v198 = *(v197 + 8);
    v199 = OUTLINED_FUNCTION_165();
    v200(v199);
    v201 = 0;
  }

  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v24, v201, 1, v202);
  if (qword_1EDD54300 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_10_100();
  sub_1D560EC28();
  if (v443)
  {
    v203 = v443;
  }

  else
  {
    v203 = MEMORY[0x1E69E7CC0];
  }

  v204 = sub_1D511C730(v203);
  OUTLINED_FUNCTION_180_5(v204, v420);
  if (qword_1EDD54198 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  v205 = v443;
  if (qword_1EDD54270 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  if (qword_1EDD54228 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  OUTLINED_FUNCTION_165();
  sub_1D56128D8();
  OUTLINED_FUNCTION_172(v440);
  sub_1D5612898();
  (*(v165 + 8))(v170, v162);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v206, v207, v208, v209);
  if (qword_1EDD54250 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_10_100();
  sub_1D560EC28();
  v210 = v417;
  if (qword_1EDD542D8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  OUTLINED_FUNCTION_10_100();
  sub_1D560EC28();
  if (v443)
  {
    v211 = v443;
  }

  else
  {
    v211 = MEMORY[0x1E69E7CC0];
  }

  v212 = sub_1D50C4F58(v211);
  OUTLINED_FUNCTION_180_5(v212, v418);
  if (qword_1EDD542C8 != -1)
  {
    swift_once();
  }

  v213 = sub_1D5610978();
  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v391);
  if (v196)
  {
    sub_1D4E50004(v391, &qword_1EC7EAC98, &unk_1D561DA80);
    v218 = 1;
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v213);
    v215 = *(v214 + 8);
    v216 = OUTLINED_FUNCTION_81_0();
    v217(v216);
    v218 = 0;
  }

  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v416[1], v218, 1, v219);
  sub_1D4F84A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_10_100();
  sub_1D560EC28();

  if (qword_1EDD54360 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_10_100();
  sub_1D560EC28();
  v220 = v443;
  if (off_1EDD54320 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  if (qword_1EDD541E8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF318, &qword_1D563DD60);
  OUTLINED_FUNCTION_10_100();
  sub_1D560EC28();
  v221 = OUTLINED_FUNCTION_162_8();
  v222 = sub_1D50ABDF0(v221);
  OUTLINED_FUNCTION_180_5(v222, v416);
  v390 = MusicMovie.title.getter();
  v389 = v223;
  if (qword_1EDD541C0 != -1)
  {
    swift_once();
  }

  v224 = qword_1EDD76980;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_10_100();
  sub_1D560EC28();
  OUTLINED_FUNCTION_162_8();
  sub_1D501B598();
  OUTLINED_FUNCTION_180_5(v225, &v412);
  if (qword_1EDD54238 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_172(&v417);
  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v224);
  if (v196)
  {
    sub_1D4E50004(v224, &qword_1EC7EAC98, &unk_1D561DA80);
    v230 = 1;
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v213);
    v227 = *(v226 + 8);
    v228 = OUTLINED_FUNCTION_81_0();
    v229(v228);
    v230 = 0;
  }

  v231 = v393;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v210, v230, 1, v232);
  sub_1D56107A8();
  if (qword_1EDD54338 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  v233 = v430;
  (*(v401 + 104))(v400, *MEMORY[0x1E6975DC8], v430);
  v394 = sub_1D56107B8();
  v392 = v234;
  (*(v401 + 8))(v400, v233);
  sub_1D4E50004(v397, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_136(&v424);
  v235(v231, v399);
  if (qword_1EDD54350 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  v236 = v443;
  v237 = MEMORY[0x1E69E7CC0];
  if (qword_1EDD54268 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  v238 = v415;
  if (*(&v443 + 1))
  {
    v436 = v443;
    v437 = v444;
    v438 = v445;
    v439 = v446;
    sub_1D51394FC(v398);
    v440[0] = v436;
    v440[1] = v437;
    v440[2] = v438;
    v441 = v439;
    sub_1D5000CD8(v440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v239 = OUTLINED_FUNCTION_17_2();
    v241 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    v239 = OUTLINED_FUNCTION_45_1();
  }

  __swift_storeEnumTagSinglePayload(v239, v241, 1, v240);
  v430 = v193;
  if (qword_1EDD541F8 != -1)
  {
    swift_once();
  }

  v242 = v427;
  v243 = v427 + v186[22];
  v244 = v425;
  sub_1D560EC28();
  if (v220)
  {
    v237 = v220;
  }

  *v242 = v396;
  v242[1] = v395;
  sub_1D4F39A1C(v238, v242 + v186[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_148_1(v186[6]);
  *(v242 + v186[7]) = v205;
  sub_1D4F39A1C(v416[0], v242 + v186[8], &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_148_1(v186[9]);
  OUTLINED_FUNCTION_148_1(v186[10]);
  v245 = v242 + v186[11];
  OUTLINED_FUNCTION_159_9();
  sub_1D4F39A1C(v246, v247, v248, v249);
  OUTLINED_FUNCTION_148_1(v186[12]);
  *(v242 + v186[13]) = v237;
  sub_1D4F39A1C(v418[0], v242 + v186[14], &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_148_1(v186[15]);
  v250 = (v242 + v186[16]);
  *v250 = v390;
  v250[1] = v389;
  OUTLINED_FUNCTION_148_1(v186[17]);
  v251 = v242 + v186[18];
  OUTLINED_FUNCTION_159_9();
  sub_1D4F39A1C(v252, v253, v254, v255);
  v256 = (v242 + v186[19]);
  *v256 = v394;
  v256[1] = v392;
  *(v242 + v186[20]) = v236;
  sub_1D4F39A1C(v398, v242 + v186[21], &qword_1EC7ED9B0, &unk_1D5631050);
  v257 = type metadata accessor for CloudMusicMovie.Relationships(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v258, v259, v260, v257);
  if (qword_1EDD541D0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_150(&v429);
  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v186, 1, v402);
  v261 = v244;
  v262 = v419;
  if (v196)
  {
    sub_1D4E50004(v186, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    v263 = *(v383 + 32);
    v264 = OUTLINED_FUNCTION_45_5();
    v265(v264);
    sub_1D5613C48();
    OUTLINED_FUNCTION_79_20();
    sub_1D539F0E8(v266);
    OUTLINED_FUNCTION_90_18(v420[0]);
    OUTLINED_FUNCTION_56_30(&v404);
    OUTLINED_FUNCTION_122_9();
    sub_1D560DA98();
    OUTLINED_FUNCTION_68_25();
    OUTLINED_FUNCTION_125_12();
    v267();
    (*(v383 + 8))(v382, v402);
    v262 = v419;
    v268 = v432;
    sub_1D4E50004(v432, &qword_1EC7EF310, &qword_1D565B640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v269, v270, v271, v272);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v273, v274, v275, v257);
    OUTLINED_FUNCTION_182_4(&unk_1D56334C0, v268);
  }

  v276 = v413;
  v277 = type metadata accessor for CloudMusicMovie.Associations(0);
  OUTLINED_FUNCTION_136_11();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v278, v279, v280, v277);
  v281 = v426;
  if (qword_1EDD54288 != -1)
  {
    swift_once();
  }

  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  if (qword_1EDD54340 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  if (qword_1EDD54308 != -1)
  {
    swift_once();
  }

  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  if (qword_1EDD54180 != -1)
  {
    swift_once();
  }

  v418[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  if (qword_1EDD54258 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_77();
  sub_1D560EC28();
  OUTLINED_FUNCTION_5_1(v433);
  if (!v196 || (OUTLINED_FUNCTION_5_1(v431), !v196) || (OUTLINED_FUNCTION_57(v429, 1, v283), !v196) || (OUTLINED_FUNCTION_57(v281, 1, v418[0]), !v196) || (OUTLINED_FUNCTION_5_1(v428), !v196))
  {
    OUTLINED_FUNCTION_133_8(v433, &qword_1EC7EF308, &qword_1D5631048, &v405);
    OUTLINED_FUNCTION_5_1(v244);
    v417 = v277;
    if (v196)
    {
      sub_1D4E50004(v244, &qword_1EC7EF308, &qword_1D5631048);
    }

    else
    {
      type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_11_100();
      sub_1D539F0E8(v284);
      OUTLINED_FUNCTION_118_5(&v441 + 8);
      OUTLINED_FUNCTION_89_18();
      OUTLINED_FUNCTION_90_18(v285);
      OUTLINED_FUNCTION_110_12();
      sub_1D560DA98();
      OUTLINED_FUNCTION_68_25();
      OUTLINED_FUNCTION_125_12();
      v286();
      OUTLINED_FUNCTION_56_0();
      v288 = *(v287 + 8);
      v289 = OUTLINED_FUNCTION_128();
      v290(v289);
    }

    v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    OUTLINED_FUNCTION_24_8(v262, v292, v293, v291);
    sub_1D4F39AB0(v431, v403, &qword_1EC7EF308, &qword_1D5631048);
    OUTLINED_FUNCTION_5_1(v403);
    if (v196)
    {
      sub_1D4E50004(v403, &qword_1EC7EF308, &qword_1D5631048);
    }

    else
    {
      type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_11_100();
      sub_1D539F0E8(v294);
      OUTLINED_FUNCTION_118_5(&v441 + 8);
      OUTLINED_FUNCTION_89_18();
      OUTLINED_FUNCTION_90_18(v295);
      OUTLINED_FUNCTION_110_12();
      sub_1D560DA98();
      OUTLINED_FUNCTION_68_25();
      OUTLINED_FUNCTION_125_12();
      v296();
      OUTLINED_FUNCTION_56_0();
      (*(v297 + 8))(v403, v282);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    v298 = OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_24_8(v298, v299, v300, v301);
    sub_1D4F39AB0(v429, v384, &off_1EC7EB5B0, &unk_1D5632170);
    v302 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v302, v303, v283);
    if (v196)
    {
      sub_1D4E50004(v384, &off_1EC7EB5B0, &unk_1D5632170);
    }

    else
    {
      sub_1D5613EF8();
      OUTLINED_FUNCTION_75_22();
      sub_1D539F0E8(v304);
      OUTLINED_FUNCTION_172(&v441 + 8);
      OUTLINED_FUNCTION_89_18();
      OUTLINED_FUNCTION_90_18(v305);
      OUTLINED_FUNCTION_122_9();
      sub_1D560DA98();
      OUTLINED_FUNCTION_68_25();
      OUTLINED_FUNCTION_125_12();
      v306();
      OUTLINED_FUNCTION_24_0(v283);
      (*(v307 + 8))(v384, v283);
    }

    v261 = v425;
    v308 = v418[0];
    v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_24_8(v276, v310, v311, v309);
    v312 = OUTLINED_FUNCTION_200();
    sub_1D4F39AB0(v312, v313, v314, v315);
    OUTLINED_FUNCTION_1(v385);
    if (v196)
    {
      sub_1D4E50004(v385, &qword_1EC7EB620, &unk_1D561E5B0);
      v283 = v388;
    }

    else
    {
      sub_1D5614898();
      OUTLINED_FUNCTION_74_25();
      v317 = v308;
      v308 = sub_1D539F0E8(v316);
      OUTLINED_FUNCTION_153_5();
      OUTLINED_FUNCTION_90_18(v384);
      OUTLINED_FUNCTION_56_30(&v411);
      OUTLINED_FUNCTION_122_9();
      v276 = v413;
      sub_1D560DA98();
      OUTLINED_FUNCTION_68_25();
      OUTLINED_FUNCTION_125_12();
      v318();
      OUTLINED_FUNCTION_24_0(v317);
      (*(v319 + 8))(v385, v317);
    }

    v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_24_8(v283, v321, v322, v320);
    sub_1D4F39AB0(v428, v386, &qword_1EC7EF308, &qword_1D5631048);
    OUTLINED_FUNCTION_5_1(v386);
    if (v196)
    {
      v323 = OUTLINED_FUNCTION_136_11();
      sub_1D4E50004(v323, v324, v325);
      sub_1D4E50004(v386, &qword_1EC7EF308, &qword_1D5631048);
      v308 = v387;
    }

    else
    {
      type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_11_100();
      sub_1D539F0E8(v326);
      OUTLINED_FUNCTION_56_30(&v441 + 8);
      OUTLINED_FUNCTION_90_18(v327);
      OUTLINED_FUNCTION_172(&v410);
      OUTLINED_FUNCTION_122_9();
      sub_1D560DA98();
      OUTLINED_FUNCTION_136(&v442);
      OUTLINED_FUNCTION_125_12();
      v328();
      v329 = OUTLINED_FUNCTION_136_11();
      sub_1D4E50004(v329, v330, v331);
      OUTLINED_FUNCTION_56_0();
      (*(v332 + 8))(v386, v282);
    }

    v333 = v419;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    v334 = OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_24_8(v334, v335, v336, v337);
    OUTLINED_FUNCTION_122_0(&v409);
    OUTLINED_FUNCTION_182_4(v338, v339);
    v340 = v417;
    OUTLINED_FUNCTION_182_4(v414, v333 + v417[5]);
    sub_1D4F39A1C(v276, v333 + v340[6], &qword_1EC7EB5A8, &unk_1D5622F00);
    sub_1D4F39A1C(v283, v333 + v340[7], &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_182_4(v308, v333 + v340[8]);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v341, v342, v343, v340);
    sub_1D4F39A1C(v333, v434, &qword_1EC7ECD30, &unk_1D5622F30);
  }

  v344 = type metadata accessor for MusicMovie();
  OUTLINED_FUNCTION_11_100();
  sub_1D539F0E8(v345);
  v346 = sub_1D560CBD8();
  if (v346 <= 1)
  {
    v347 = 1;
  }

  else
  {
    v347 = v346;
  }

  v349 = *v261;
  v348 = v261[1];
  v350 = v406;
  v351 = v406[5];
  OUTLINED_FUNCTION_28_58();
  v352 = v407;
  sub_1D539F180(v427, v407 + v353, v354);
  sub_1D4F39AB0(v432, v352 + v350[6], &qword_1EC7EF310, &qword_1D565B640);
  v355 = v350[7];
  v356 = OUTLINED_FUNCTION_136_11();
  sub_1D4F39AB0(v356, v357, v358, v359);
  *v352 = v349;
  v352[1] = v348;
  *(v352 + v350[8]) = v347;
  v360 = *(v344 + 20);

  OUTLINED_FUNCTION_150(&v432);
  sub_1D5611A28();
  sub_1D560D838();
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_183_6(v361, v362, v363, v364);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v365, v366, v367, v368);
  sub_1D5612B38();
  OUTLINED_FUNCTION_77_17();
  sub_1D539F180(v352, v418[1], v369);
  OUTLINED_FUNCTION_118_5(&v437);
  sub_1D5611A98();
  v435 = sub_1D5611A88();
  v430 = v370;
  v371 = v408;
  v372 = *(v408 + 16);
  v373 = OUTLINED_FUNCTION_122_1();
  v374 = v409;
  v375(v373);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v376, v377, v378, v374);
  v425 = sub_1D5611A38();
  v424 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D539F0E8(&qword_1EDD5C6E0);
  sub_1D5610628();
  (*(v371 + 8))(v418[2], v374);
  OUTLINED_FUNCTION_30_55();
  sub_1D539EFC0(v352, v379);
  v380 = OUTLINED_FUNCTION_136_11();
  sub_1D4E50004(v380, &qword_1EC7ECD30, &unk_1D5622F30);
  sub_1D4E50004(v432, &qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_31_46();
  sub_1D539EFC0(v427, v381);
  OUTLINED_FUNCTION_146_8(&a12);
  OUTLINED_FUNCTION_146_8(&v446 + 8);
  sub_1D4E50004(v426, &qword_1EC7EB620, &unk_1D561E5B0);
  sub_1D4E50004(v429, &off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_146_8(&a10);
  OUTLINED_FUNCTION_46();
}

uint64_t CloudMusicMovie.Metadata.init(snippets:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

void static CloudMusicMovie.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4(v286);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B8, &unk_1D5626FA0);
  OUTLINED_FUNCTION_14(v282);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v41);
  v42 = sub_1D560C0A8();
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_171_6(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v50 = OUTLINED_FUNCTION_22(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13();
  v287 = v53;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_2();
  v292 = v55;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v56 = OUTLINED_FUNCTION_14(v293);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13();
  v288 = v59;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  v294 = v61;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v300);
  v297 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  v295 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v68 = OUTLINED_FUNCTION_22(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13();
  v289 = v71;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_2();
  v296 = v73;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  v74 = OUTLINED_FUNCTION_14(v299);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13();
  v290 = v77;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13_2();
  v298 = v79;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v306);
  v303 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_168_7(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13_3();
  v302 = v89;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14(v304);
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_124_11(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v94);
  v96 = v95;
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_19_0();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v100);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_71_1();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v104);
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_9();
  v108 = v28[1];
  v109 = v26[1];
  if (!v108)
  {
    if (v109)
    {
      goto LABEL_20;
    }

LABEL_10:
    v278 = v45;
    v279 = v42;
    v280 = type metadata accessor for CloudMusicMovie.Attributes(0);
    v111 = v280[5];
    v112 = *(v104 + 48);
    v281 = v28;
    sub_1D4F39AB0(v28 + v111, v21, &qword_1EC7EB5B8, &unk_1D56206A0);
    sub_1D4F39AB0(v26 + v111, v21 + v112, &qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_57(v21, 1, v94);
    if (v110)
    {
      OUTLINED_FUNCTION_57(v21 + v112, 1, v94);
      if (v110)
      {
        sub_1D4E50004(v21, &qword_1EC7EB5B8, &unk_1D56206A0);
        goto LABEL_22;
      }
    }

    else
    {
      sub_1D4F39AB0(v21, v22, &qword_1EC7EB5B8, &unk_1D56206A0);
      OUTLINED_FUNCTION_57(v21 + v112, 1, v94);
      if (!v113)
      {
        (*(v96 + 32))(v20, v21 + v112, v94);
        sub_1D4F39858();
        v117 = sub_1D5614D18();
        v118 = *(v96 + 8);
        v118(v20, v94);
        v118(v22, v94);
        sub_1D4E50004(v21, &qword_1EC7EB5B8, &unk_1D56206A0);
        if ((v117 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_22:
        v119 = v280[6];
        v120 = *(v26 + v119);
        if (*(v28 + v119))
        {
          if (!v120)
          {
            goto LABEL_20;
          }

          v121 = *(v26 + v119);

          sub_1D4F2C07C();
          v123 = v122;

          if ((v123 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v120)
        {
          goto LABEL_20;
        }

        v124 = v280[7];
        v125 = *(v26 + v124 + 8);
        if (*(v28 + v124 + 8))
        {
          if (!v125)
          {
            goto LABEL_20;
          }

          OUTLINED_FUNCTION_31_0((v28 + v124));
          v128 = v110 && v126 == v127;
          if (!v128 && (sub_1D5616168() & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else if (v125)
        {
          goto LABEL_20;
        }

        v129 = v280[8];
        v130 = *(v304 + 48);
        v131 = &unk_1D56222A0;
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v132, v133, v134, v135);
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v136, v137, v138, v139);
        OUTLINED_FUNCTION_57(v305, 1, v306);
        if (v110)
        {
          OUTLINED_FUNCTION_5_1(v305 + v130);
          if (v110)
          {
            sub_1D4E50004(v305, &qword_1EC7EC978, &unk_1D56222A0);
LABEL_46:
            OUTLINED_FUNCTION_61_32(v280[9]);
            v148 = *(v26 + v147);
            if (v131)
            {
              if (!v148)
              {
                goto LABEL_20;
              }

              v149 = *(v26 + v147);

              OUTLINED_FUNCTION_159();
              sub_1D4F28F1C();
              OUTLINED_FUNCTION_82();

              if ((v131 & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            else if (v148)
            {
              goto LABEL_20;
            }

            OUTLINED_FUNCTION_61_32(v280[10]);
            v151 = *(v26 + v150);
            if (v131)
            {
              if (!v151)
              {
                goto LABEL_20;
              }

              v152 = *(v26 + v150);

              OUTLINED_FUNCTION_159();
              sub_1D4F2D3E4();
              OUTLINED_FUNCTION_82();

              if ((v131 & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            else if (v151)
            {
              goto LABEL_20;
            }

            v153 = v280[11];
            v154 = *(v299 + 48);
            v155 = &unk_1D56334C0;
            OUTLINED_FUNCTION_20_8();
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v156, v157, v158, v159);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v160, v161, v162, v163);
            OUTLINED_FUNCTION_4_18(v298, 1);
            if (v110)
            {
              OUTLINED_FUNCTION_4_18(v298 + v154, 1);
              if (v110)
              {
                sub_1D4E50004(v298, &qword_1EC7EC960, &unk_1D56334C0);
                goto LABEL_66;
              }
            }

            else
            {
              sub_1D4F39AB0(v298, v296, &qword_1EC7EC960, &unk_1D56334C0);
              OUTLINED_FUNCTION_4_18(v298 + v154, 1);
              if (!v164)
              {
                OUTLINED_FUNCTION_40_3();
                v165(v295, v298 + v154, v300);
                sub_1D4F7BF60();
                v166 = OUTLINED_FUNCTION_185_1();
                v155 = v297 + 8;
                v167 = *(v297 + 8);
                v167(v295, v300);
                v167(v296, v300);
                sub_1D4E50004(v298, &qword_1EC7EC960, &unk_1D56334C0);
                if ((v166 & 1) == 0)
                {
                  goto LABEL_20;
                }

LABEL_66:
                OUTLINED_FUNCTION_61_32(v280[12]);
                v169 = *(v26 + v168);
                if (v155)
                {
                  if (!v169)
                  {
                    goto LABEL_20;
                  }

                  v170 = *(v26 + v168);

                  OUTLINED_FUNCTION_159();
                  sub_1D4F29174();
                  OUTLINED_FUNCTION_82();

                  if ((v155 & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v169)
                {
                  goto LABEL_20;
                }

                v171 = v280[13];
                v172 = *(v281 + v171);
                v173 = *(v26 + v171);
                if (v172)
                {
                  if (!v173 || (sub_1D4EF81E0(v172, v173) & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v173)
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_30_6();
                v175 = *(v174 + 56);
                v176 = *(v293 + 48);
                v177 = &unk_1D561D1D0;
                OUTLINED_FUNCTION_20_8();
                OUTLINED_FUNCTION_8_1();
                sub_1D4F39AB0(v178, v179, v180, v181);
                OUTLINED_FUNCTION_47_40();
                v182 = OUTLINED_FUNCTION_95_0();
                OUTLINED_FUNCTION_57(v182, v183, v279);
                if (v110)
                {
                  v184 = OUTLINED_FUNCTION_57_2(v294);
                  OUTLINED_FUNCTION_57(v184, v185, v279);
                  if (!v110)
                  {
                    goto LABEL_83;
                  }

                  sub_1D4E50004(v294, &unk_1EC7E9CA8, &unk_1D561D1D0);
                }

                else
                {
                  sub_1D4F39AB0(v294, v292, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  v186 = OUTLINED_FUNCTION_72_1();
                  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v186, v187, v279);
                  if (EnumTagSinglePayload == 1)
                  {
                    OUTLINED_FUNCTION_136(&a9);
                    v189(v292, v279);
LABEL_83:
                    v114 = &qword_1EC7E9FB0;
                    v115 = &qword_1D562C590;
                    v116 = v294;
                    goto LABEL_19;
                  }

                  OUTLINED_FUNCTION_40_3();
                  v190(v291, v294 + v176, v279);
                  OUTLINED_FUNCTION_1_157();
                  sub_1D539F0E8(v191);
                  v192 = OUTLINED_FUNCTION_185_1();
                  v177 = v278 + 8;
                  v193 = *(v278 + 8);
                  v194 = OUTLINED_FUNCTION_122_1();
                  v193(v194);
                  (v193)(v292, v279);
                  sub_1D4E50004(v294, &unk_1EC7E9CA8, &unk_1D561D1D0);
                  if ((v192 & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                OUTLINED_FUNCTION_30_6();
                OUTLINED_FUNCTION_61_32(*(v195 + 60));
                v197 = *(v26 + v196);
                if (v177)
                {
                  if (!v197)
                  {
                    goto LABEL_20;
                  }

                  v198 = *(v26 + v196);

                  OUTLINED_FUNCTION_159();
                  sub_1D4EFC46C();
                  OUTLINED_FUNCTION_82();

                  if ((v177 & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v197)
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_30_6();
                v200 = *(v199 + 64);
                OUTLINED_FUNCTION_35_54();
                if (v203)
                {
                  if (!v201)
                  {
                    goto LABEL_20;
                  }

                  OUTLINED_FUNCTION_31_0(v202);
                  v206 = v110 && v204 == v205;
                  if (!v206 && (sub_1D5616168() & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v201)
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_30_6();
                OUTLINED_FUNCTION_61_32(*(v207 + 68));
                v209 = *(v26 + v208);
                if (v177)
                {
                  if (!v209)
                  {
                    goto LABEL_20;
                  }

                  v210 = *(v26 + v208);

                  OUTLINED_FUNCTION_159();
                  sub_1D4EF9F7C();
                  OUTLINED_FUNCTION_82();

                  if ((v177 & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v209)
                {
                  goto LABEL_20;
                }

                OUTLINED_FUNCTION_30_6();
                v212 = *(v211 + 72);
                v213 = *(v299 + 48);
                OUTLINED_FUNCTION_20_8();
                OUTLINED_FUNCTION_8_1();
                sub_1D4F39AB0(v214, v215, v216, v217);
                OUTLINED_FUNCTION_47_40();
                v218 = OUTLINED_FUNCTION_95_0();
                OUTLINED_FUNCTION_57(v218, v219, v300);
                if (v110)
                {
                  v220 = OUTLINED_FUNCTION_57_2(v290);
                  OUTLINED_FUNCTION_57(v220, v221, v300);
                  if (v110)
                  {
                    sub_1D4E50004(v290, &qword_1EC7EC960, &unk_1D56334C0);
                    goto LABEL_114;
                  }
                }

                else
                {
                  sub_1D4F39AB0(v290, v289, &qword_1EC7EC960, &unk_1D56334C0);
                  v222 = OUTLINED_FUNCTION_72_1();
                  OUTLINED_FUNCTION_57(v222, v223, v300);
                  if (!v224)
                  {
                    OUTLINED_FUNCTION_81();
                    v225(v295, v290 + v213, v300);
                    sub_1D4F7BF60();
                    OUTLINED_FUNCTION_157_0();
                    v226 = OUTLINED_FUNCTION_51();
                    (unk_1D56334C0)(v226);
                    (unk_1D56334C0)(v289, v300);
                    sub_1D4E50004(v290, &qword_1EC7EC960, &unk_1D56334C0);
                    if ((v290 & 1) == 0)
                    {
                      goto LABEL_20;
                    }

LABEL_114:
                    OUTLINED_FUNCTION_30_6();
                    v228 = *(v227 + 76);
                    OUTLINED_FUNCTION_35_54();
                    if (v231)
                    {
                      if (!v229)
                      {
                        goto LABEL_20;
                      }

                      OUTLINED_FUNCTION_31_0(v230);
                      v234 = v110 && v232 == v233;
                      if (!v234 && (sub_1D5616168() & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }

                    else if (v229)
                    {
                      goto LABEL_20;
                    }

                    OUTLINED_FUNCTION_30_6();
                    v236 = *(v235 + 80);
                    OUTLINED_FUNCTION_35_54();
                    if (v239)
                    {
                      if (!v237)
                      {
                        goto LABEL_20;
                      }

                      OUTLINED_FUNCTION_31_0(v238);
                      v242 = v110 && v240 == v241;
                      if (!v242 && (sub_1D5616168() & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }

                    else if (v237)
                    {
                      goto LABEL_20;
                    }

                    OUTLINED_FUNCTION_30_6();
                    v244 = *(v243 + 84);
                    v245 = *(v282 + 48);
                    OUTLINED_FUNCTION_20_8();
                    OUTLINED_FUNCTION_122_0(&a16);
                    OUTLINED_FUNCTION_8_1();
                    sub_1D4F39AB0(v246, v247, v248, v249);
                    OUTLINED_FUNCTION_47_40();
                    v250 = OUTLINED_FUNCTION_95_0();
                    OUTLINED_FUNCTION_57(v250, v251, v286);
                    if (v110)
                    {
                      v252 = OUTLINED_FUNCTION_57_2(v284);
                      OUTLINED_FUNCTION_57(v252, v253, v286);
                      if (!v110)
                      {
                        goto LABEL_139;
                      }

                      sub_1D4E50004(v284, &qword_1EC7ED9B0, &unk_1D5631050);
                    }

                    else
                    {
                      sub_1D4F39AB0(v284, v283, &qword_1EC7ED9B0, &unk_1D5631050);
                      v254 = OUTLINED_FUNCTION_72_1();
                      v256 = __swift_getEnumTagSinglePayload(v254, v255, v286);
                      if (v256 == 1)
                      {
                        OUTLINED_FUNCTION_136(&a18);
                        v257(v283, v286);
LABEL_139:
                        v114 = &qword_1EC7ED9B8;
                        v115 = &unk_1D5626FA0;
                        v116 = v284;
                        goto LABEL_19;
                      }

                      OUTLINED_FUNCTION_81();
                      v258(v285, v284 + v245, v286);
                      sub_1D4FF1130();
                      OUTLINED_FUNCTION_157_0();
                      v259 = OUTLINED_FUNCTION_51();
                      (unk_1D5631050)(v259);
                      (unk_1D5631050)(v283, v286);
                      sub_1D4E50004(v284, &qword_1EC7ED9B0, &unk_1D5631050);
                      if ((v284 & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }

                    OUTLINED_FUNCTION_30_6();
                    v261 = *(v260 + 88);
                    v262 = *(v293 + 48);
                    OUTLINED_FUNCTION_20_8();
                    OUTLINED_FUNCTION_8_1();
                    sub_1D4F39AB0(v263, v264, v265, v266);
                    OUTLINED_FUNCTION_47_40();
                    v267 = OUTLINED_FUNCTION_95_0();
                    OUTLINED_FUNCTION_57(v267, v268, v279);
                    if (v110)
                    {
                      v269 = OUTLINED_FUNCTION_57_2(v288);
                      OUTLINED_FUNCTION_57(v269, v270, v279);
                      if (v110)
                      {
                        sub_1D4E50004(v288, &unk_1EC7E9CA8, &unk_1D561D1D0);
                        goto LABEL_20;
                      }
                    }

                    else
                    {
                      sub_1D4F39AB0(v288, v287, &unk_1EC7E9CA8, &unk_1D561D1D0);
                      v271 = OUTLINED_FUNCTION_72_1();
                      v273 = __swift_getEnumTagSinglePayload(v271, v272, v279);
                      if (v273 != 1)
                      {
                        OUTLINED_FUNCTION_81();
                        v275(v291, v288 + v262, v279);
                        OUTLINED_FUNCTION_1_157();
                        sub_1D539F0E8(v276);
                        OUTLINED_FUNCTION_157_0();
                        v277 = OUTLINED_FUNCTION_51();
                        (unk_1D561D1D0)(v277);
                        (unk_1D561D1D0)(v287, v279);
                        sub_1D4E50004(v288, &unk_1EC7E9CA8, &unk_1D561D1D0);
                        goto LABEL_20;
                      }

                      OUTLINED_FUNCTION_136(&a9);
                      v274(v287, v279);
                    }

                    v114 = &qword_1EC7E9FB0;
                    v115 = &qword_1D562C590;
                    v116 = v288;
                    goto LABEL_19;
                  }

                  (*(v297 + 8))(v289, v300);
                }

                v114 = &qword_1EC7EC968;
                v115 = &unk_1D5622290;
                v116 = v290;
                goto LABEL_19;
              }

              (*(v297 + 8))(v296, v300);
            }

            v114 = &qword_1EC7EC968;
            v115 = &unk_1D5622290;
            v116 = v298;
LABEL_19:
            sub_1D4E50004(v116, v114, v115);
            goto LABEL_20;
          }
        }

        else
        {
          sub_1D4F39AB0(v305, v302, &qword_1EC7EC978, &unk_1D56222A0);
          OUTLINED_FUNCTION_5_1(v305 + v130);
          if (!v140)
          {
            OUTLINED_FUNCTION_40_3();
            v144(v301, v305 + v130, v306);
            sub_1D4F7C058();
            OUTLINED_FUNCTION_200();
            v145 = sub_1D5614D18();
            v131 = *(v303 + 8);
            v131(v301, v306);
            v146 = OUTLINED_FUNCTION_45_5();
            (v131)(v146);
            sub_1D4E50004(v305, &qword_1EC7EC978, &unk_1D56222A0);
            if ((v145 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_46;
          }

          v141 = *(v303 + 8);
          v142 = OUTLINED_FUNCTION_45_5();
          v143(v142);
        }

        v114 = &qword_1EC7EC980;
        v115 = &qword_1D5628710;
        v116 = v305;
        goto LABEL_19;
      }

      (*(v96 + 8))(v22, v94);
    }

    v114 = &qword_1EC7EC330;
    v115 = &qword_1D56222C0;
    v116 = v21;
    goto LABEL_19;
  }

  if (v109)
  {
    v110 = *v28 == *v26 && v108 == v109;
    if (v110 || (sub_1D5616168() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D539975C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xED0000647261436CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696C436569766F6DLL && a2 == 0xEA00000000007370;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 1701667182 && a2 == 0xE400000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x614E6F6964757473 && a2 == 0xEA0000000000656DLL;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000010 && 0x80000001D56811C0 == a2;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1D5616168();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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

unint64_t sub_1D5399D34(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6867697279706F63;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
    case 8:
      result = 0x6169726F74696465;
      break;
    case 9:
      result = 0x6D614E65726E6567;
      break;
    case 10:
      result = 0x76697372656D6D69;
      break;
    case 11:
      result = 0x696C436569766F6DLL;
      break;
    case 12:
      result = 1701667182;
      break;
    case 13:
      result = 0x73726566666FLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x44657361656C6572;
      break;
    case 16:
      result = 0x614E6F6964757473;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5399F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D539975C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5399F80(uint64_t a1)
{
  v2 = sub_1D539F1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5399FBC(uint64_t a1)
{
  v2 = sub_1D539F1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMusicMovie.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5438, &qword_1D565B680);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_102_1();
  sub_1D539F1DC();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v1)
  {
    v10 = type metadata accessor for CloudMusicMovie.Attributes(0);
    v11 = v10[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_42_2(v10[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_35_5(v10[7]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v12 = v10[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7CF5C();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_42_2(v10[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4FC7B20();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_42_2(v10[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED080, &qword_1D5623EC8);
    sub_1D4FC7BAC();
    OUTLINED_FUNCTION_20_3();
    v13 = v10[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v10[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4FC7D20();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_42_2(v10[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&qword_1EC7ECA00);
    OUTLINED_FUNCTION_20_3();
    v21 = v10[14];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_1_157();
    sub_1D539F0E8(v14);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v10[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3940, qword_1D564F0C0);
    sub_1D539F230();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_35_5(v10[16]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v10[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
    sub_1D4F7D290();
    OUTLINED_FUNCTION_20_3();
    v15 = v10[18];
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_35_5(v10[19]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v10[20]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v16 = v10[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF2700();
    OUTLINED_FUNCTION_21_0();
    v17 = v10[22];
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  v18 = *(v4 + 8);
  v19 = OUTLINED_FUNCTION_86_0();
  v20(v19);
  OUTLINED_FUNCTION_26();
}

void CloudMusicMovie.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4(v111);
  v101 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v100 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v109 = v13;
  v14 = sub_1D560C0A8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v113 = v16;
  v114 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_124_11(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v110 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v104 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v28 = OUTLINED_FUNCTION_4(v27);
  v107 = v29;
  v108 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v106 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v35 = OUTLINED_FUNCTION_22(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v105 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_2();
  v103 = v40;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v102);
  v99 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_171_6(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_16_0();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v50);
  v52 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_38_2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_19_0();
  if (v0[1])
  {
    v60 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v61 = type metadata accessor for CloudMusicMovie.Attributes(0);
  sub_1D4F39AB0(v0 + v61[5], v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  v62 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v62, v63, v50);
  if (v64)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_170_6();
    v65(v3, v2, v50);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v52 + 8))(v3, v50);
  }

  if (*(v0 + v61[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v66 = (v0 + v61[7]);
  if (v66[1])
  {
    v67 = *v66;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v61[8], v1, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(v1, 1, v102);
  if (v64)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v99 + 32))(v98, v1, v102);
    OUTLINED_FUNCTION_27();
    sub_1D4F88554();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v99 + 8))(v98, v102);
  }

  if (*(v0 + v61[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v61[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F38244();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v61[11], v103, &qword_1EC7EC960, &unk_1D56334C0);
  v68 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v68, v69, v108);
  if (v64)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v70 = OUTLINED_FUNCTION_92_15();
    v71(v70);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v107 + 8))(v106, v108);
  }

  if (*(v0 + v61[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v61[13]))
  {
    OUTLINED_FUNCTION_27();
    v72 = OUTLINED_FUNCTION_128();
    sub_1D4F06928(v72, v73);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v61[14], v104, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v74 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v74, v75, v114);
  if (v64)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v76 = OUTLINED_FUNCTION_92_15();
    v77(v76);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_157();
    sub_1D539F0E8(v78);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v113 + 8))(v112, v114);
  }

  if (*(v0 + v61[15]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F0A3C8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v79 = (v0 + v61[16]);
  if (v79[1])
  {
    v80 = *v79;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v61[17]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F085F8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v61[18], v105, &qword_1EC7EC960, &unk_1D56334C0);
  v81 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v81, v82, v108);
  if (v64)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v83 = OUTLINED_FUNCTION_92_15();
    v84(v83);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v107 + 8))(v106, v108);
  }

  v85 = (v0 + v61[19]);
  if (v85[1])
  {
    v86 = *v85;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v87 = (v0 + v61[20]);
  if (v87[1])
  {
    v88 = *v87;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v61[21], v109, &qword_1EC7ED9B0, &unk_1D5631050);
  v89 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v89, v90, v111);
  if (v64)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v91(v100, v109, v111);
    OUTLINED_FUNCTION_27();
    sub_1D4FFFE38();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v101 + 8))(v100, v111);
  }

  sub_1D4F39AB0(v0 + v61[22], v110, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v92 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v92, v93, v114);
  if (v64)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v94 = *(v113 + 32);
    v95 = OUTLINED_FUNCTION_116();
    v96(v95);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_157();
    sub_1D539F0E8(v97);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v113 + 8))(v112, v114);
  }

  OUTLINED_FUNCTION_46();
}

void CloudMusicMovie.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v128 = v11;
  v16 = v15;
  v122 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v120 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v121 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_168_7(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_25_13();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v115 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_47_5();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_114();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5440, &qword_1D565B688);
  OUTLINED_FUNCTION_4(v124);
  v46 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_38_2();
  v127 = type metadata accessor for CloudMusicMovie.Attributes(0);
  v50 = OUTLINED_FUNCTION_14(v127);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v126 = v53;
  v55 = v16[3];
  v54 = v16[4];
  v115 = v16;
  v56 = __swift_project_boxed_opaque_existential_1(v16, v55);
  sub_1D539F1DC();
  v125 = v14;
  v57 = v128;
  sub_1D5616398();
  if (v57)
  {
    v128 = v57;
    v61 = 0;
    v62 = 0;
    OUTLINED_FUNCTION_113_5();
    v63 = 0;
    v64 = 0;
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    v58 = v10;
    v59 = v36;
    v119 = v12;
    LODWORD(v36) = v46;
    v63 = v124;
    v60 = sub_1D5615F38();
    v76 = v126;
    *v126 = v60;
    v76[1] = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(a10) = 1;
    sub_1D4F886BC();
    OUTLINED_FUNCTION_188();
    sub_1D5615F78();
    v78 = v127;
    sub_1D4F39A1C(v13, v76 + v127[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v129 = 2;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_13_85();
    sub_1D5615F78();
    *(v76 + v78[6]) = a10;
    v79 = sub_1D5615F38();
    v80 = (v76 + v78[7]);
    *v80 = v79;
    v80[1] = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    LOBYTE(a10) = 4;
    sub_1D4F888C0();
    OUTLINED_FUNCTION_188();
    sub_1D5615F78();
    sub_1D4F39A1C(v58, v76 + v78[8], &qword_1EC7EC978, &unk_1D56222A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v129 = 5;
    sub_1D4FCE3FC();
    OUTLINED_FUNCTION_13_85();
    sub_1D5615F78();
    *(v76 + v78[9]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED080, &qword_1D5623EC8);
    v129 = 6;
    sub_1D4FCE488();
    OUTLINED_FUNCTION_13_85();
    sub_1D5615F78();
    v61 = 0;
    v62 = v36;
    *(v76 + v78[10]) = a10;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(a10) = 7;
    sub_1D4F88A24();
    OUTLINED_FUNCTION_188();
    v13 = v59;
    v64 = v82;
    v118 = v83;
    sub_1D5615F78();
    sub_1D4F39A1C(v13, v76 + v78[11], &qword_1EC7EC960, &unk_1D56334C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v129 = 8;
    sub_1D4FCE5FC();
    OUTLINED_FUNCTION_13_85();
    sub_1D5615F78();
    v128 = 0;
    *(v76 + v78[12]) = a10;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v129 = 9;
    sub_1D4F88BF4(&qword_1EDD52778);
    OUTLINED_FUNCTION_13_85();
    v84 = v128;
    sub_1D5615F78();
    v128 = v84;
    if (v84)
    {
      v85 = OUTLINED_FUNCTION_82_21();
      v86(v85);
      LODWORD(v120) = 0;
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      LODWORD(v124) = 0;
      OUTLINED_FUNCTION_3_163();
      LODWORD(v13) = 1;
      v116 = 1;
      v117 = 1;
    }

    else
    {
      *(v126 + v127[13]) = a10;
      sub_1D560C0A8();
      LOBYTE(a10) = 10;
      OUTLINED_FUNCTION_1_157();
      sub_1D539F0E8(v87);
      v56 = v125;
      v88 = v128;
      sub_1D5615F78();
      v128 = v88;
      if (v88)
      {
        v89 = OUTLINED_FUNCTION_82_21();
        v90(v89);
        LODWORD(v121) = 0;
        LODWORD(v122) = 0;
        LODWORD(v124) = 0;
        OUTLINED_FUNCTION_3_163();
        LODWORD(v13) = 1;
        v116 = 1;
        v117 = 1;
        LODWORD(v120) = 1;
      }

      else
      {
        sub_1D4F39A1C(v123, v126 + v127[14], &unk_1EC7E9CA8, &unk_1D561D1D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3940, qword_1D564F0C0);
        v129 = 11;
        sub_1D53A0508();
        OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_147_9();
        v128 = 0;
        *(v126 + v127[15]) = a10;
        v91 = OUTLINED_FUNCTION_116_15(12);
        v128 = 0;
        v92 = (v126 + v127[16]);
        *v92 = v91;
        v92[1] = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
        v129 = 13;
        sub_1D4F88C5C();
        OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_147_9();
        v128 = 0;
        *(v126 + v127[17]) = a10;
        v56 = v125;
        v94 = v128;
        sub_1D5615F78();
        v128 = v94;
        if (!v94)
        {
          sub_1D4F39A1C(v119, v126 + v127[18], &qword_1EC7EC960, &unk_1D56334C0);
          v99 = OUTLINED_FUNCTION_116_15(15);
          LODWORD(v123) = 1;
          v128 = 0;
          v100 = (v126 + v127[19]);
          *v100 = v99;
          v100[1] = v101;
          v102 = OUTLINED_FUNCTION_116_15(16);
          v128 = 0;
          v105 = (v126 + v127[20]);
          *v105 = v102;
          v105[1] = v106;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
          sub_1D5000184();
          OUTLINED_FUNCTION_188();
          OUTLINED_FUNCTION_147_9();
          v128 = 0;
          sub_1D4F39A1C(v120, v126 + v127[21], &qword_1EC7ED9B0, &unk_1D5631050);
          v56 = v125;
          v107 = v128;
          sub_1D5615F78();
          v128 = v107;
          if (!v107)
          {
            v110 = OUTLINED_FUNCTION_82_21();
            v111(v110);
            v112 = v126;
            sub_1D4F39A1C(v121, v126 + v127[22], &unk_1EC7E9CA8, &unk_1D561D1D0);
            OUTLINED_FUNCTION_28_58();
            sub_1D539F180(v112, v122, v113);
            __swift_destroy_boxed_opaque_existential_1(v115);
            OUTLINED_FUNCTION_31_46();
            sub_1D539EFC0(v112, v114);
            goto LABEL_42;
          }

          v108 = OUTLINED_FUNCTION_82_21();
          v109(v108);
          LODWORD(v118) = 1;
          LODWORD(v119) = 1;
          __swift_destroy_boxed_opaque_existential_1(v115);
          OUTLINED_FUNCTION_6_119();
          OUTLINED_FUNCTION_55_29(v103);
          LODWORD(v124) = v104;
          LODWORD(v125) = v104;
          v67 = 1;
          v65 = v126;
          v66 = v127;
LABEL_6:
          v68 = v65[1];

          if (v62)
          {
            goto LABEL_7;
          }

          goto LABEL_25;
        }

        v95 = OUTLINED_FUNCTION_82_21();
        v96(v95);
        v61 = 1;
        OUTLINED_FUNCTION_6_119();
        OUTLINED_FUNCTION_55_29(v97);
        LODWORD(v124) = v98;
        LODWORD(v125) = v98;
      }
    }
  }

  v65 = v126;
  v66 = v127;
  __swift_destroy_boxed_opaque_existential_1(v115);
  if (v61)
  {
    v67 = 0;
    LODWORD(v123) = 0;
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    goto LABEL_6;
  }

  LODWORD(v119) = 0;
  LODWORD(v118) = 0;
  LODWORD(v123) = 0;
  v67 = 0;
  if (v62)
  {
LABEL_7:
    sub_1D4E50004(v65 + v66[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v36 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v36)
  {
LABEL_8:
    if (v56)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v73 = *(v65 + v66[6]);

  if (v56)
  {
LABEL_9:
    OUTLINED_FUNCTION_46_4(v66[7]);
    if ((v63 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v63)
  {
LABEL_10:
    if (v64)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D4E50004(v65 + v66[8], &qword_1EC7EC978, &unk_1D56222A0);
  if (v64)
  {
LABEL_11:
    v69 = *(v65 + v66[9]);

    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v13)
  {
LABEL_12:
    if (v116)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v74 = *(v65 + v66[10]);

  if (v116)
  {
LABEL_13:
    sub_1D4E50004(v65 + v66[11], &qword_1EC7EC960, &unk_1D56334C0);
    if ((v117 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v117)
  {
LABEL_14:
    if (v120)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v75 = *(v65 + v66[12]);

  if (v120)
  {
LABEL_15:
    v70 = *(v65 + v66[13]);

    if ((v121 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v121)
  {
LABEL_16:
    if (v122)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_1D4E50004(v65 + v66[14], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v122)
  {
LABEL_17:
    v71 = *(v65 + v66[15]);

    if ((v124 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v124)
  {
LABEL_18:
    if (v125)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  OUTLINED_FUNCTION_46_4(v66[16]);
  if (v125)
  {
LABEL_19:
    v72 = *(v65 + v66[17]);

    if ((v67 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v67)
  {
LABEL_20:
    if (v123)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  sub_1D4E50004(v65 + v66[18], &qword_1EC7EC960, &unk_1D56334C0);
  if (v123)
  {
LABEL_21:
    OUTLINED_FUNCTION_46_4(v66[19]);
    if ((v118 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v118)
  {
LABEL_22:
    if (!v119)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  OUTLINED_FUNCTION_46_4(v66[20]);
  if (v119)
  {
LABEL_41:
    sub_1D4E50004(v65 + v66[21], &qword_1EC7ED9B0, &unk_1D5631050);
  }

LABEL_42:
  OUTLINED_FUNCTION_26();
}

uint64_t CloudMusicMovie.Relationships.CodingKeys.init(rawValue:)()
{
  OUTLINED_FUNCTION_132_11();
  v1 = sub_1D5615EF8();

  *v0 = v1 != 0;
  return result;
}

uint64_t CloudMusicMovie.Relationships.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_132_11();
  v1 = sub_1D5615EF8();

  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1D539BDF8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return CloudMusicMovie.Relationships.CodingKeys.init(rawValue:)();
}

uint64_t sub_1D539BE34(uint64_t a1)
{
  v2 = sub_1D528603C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D539BE70(uint64_t a1)
{
  v2 = sub_1D528603C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudMusicMovie.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_47_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA68, &unk_1D5622330);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_0();
  v18 = *(v17 + 56);
  OUTLINED_FUNCTION_159_9();
  sub_1D4F39AB0(v19, v20, v21, v22);
  OUTLINED_FUNCTION_159_9();
  sub_1D4F39AB0(v23, v24, v25, v26);
  OUTLINED_FUNCTION_57(v1, 1, v3);
  if (!v27)
  {
    sub_1D4F39AB0(v1, v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_57(v1 + v18, 1, v3);
    if (!v27)
    {
      (*(v5 + 32))(v0, v1 + v18, v3);
      sub_1D4F88E6C();
      sub_1D5614D18();
      v31 = *(v5 + 8);
      v32 = OUTLINED_FUNCTION_71();
      v31(v32);
      v33 = OUTLINED_FUNCTION_116();
      v31(v33);
      sub_1D4E50004(v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
      goto LABEL_10;
    }

    v28 = *(v5 + 8);
    v29 = OUTLINED_FUNCTION_116();
    v30(v29);
LABEL_9:
    sub_1D4E50004(v1, &qword_1EC7ECA68, &unk_1D5622330);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57(v1 + v18, 1, v3);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudMusicMovie.Relationships.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5448, &qword_1D565B690);
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_102_1();
  sub_1D528603C();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  sub_1D4F89134();
  sub_1D5616068();
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_122_1();
  return v8(v7);
}

uint64_t CloudMusicMovie.Relationships.hash(into:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v0, v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_1(v2);
  if (v13)
  {
    return sub_1D56162F8();
  }

  OUTLINED_FUNCTION_170_6();
  v14(v1, v2, v3);
  sub_1D56162F8();
  sub_1D4F89490();
  OUTLINED_FUNCTION_51_4();
  sub_1D5614CB8();
  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_98();
  return v17(v16);
}

uint64_t CloudMusicMovie.Relationships.hashValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1D56162D8();
  v13 = OUTLINED_FUNCTION_116();
  sub_1D4F39AB0(v13, v14, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_1(v12);
  if (v15)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_113_9();
    v16(v0, v12, v1);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    v17 = *(v3 + 8);
    v18 = OUTLINED_FUNCTION_98();
    v19(v18);
  }

  return sub_1D5616328();
}

void CloudMusicMovie.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v26 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5450, &qword_1D565B698);
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_114();
  v15 = type metadata accessor for CloudMusicMovie.Relationships(0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D528603C();
  sub_1D5616398();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89704();
    sub_1D5615F78();
    (*(v11 + 8))(v1, v9);
    sub_1D4F39A1C(v26, v21, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_26_66();
    v23 = OUTLINED_FUNCTION_200();
    sub_1D539F018(v23, v24, v25);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D539C764()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  sub_1D56162D8();
  sub_1D4F39AB0(v1, v10, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1D5616328();
}

MusicKitInternal::CloudMusicMovie::Associations::CodingKeys_optional __swiftcall CloudMusicMovie.Associations.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_132_11();
  v2 = sub_1D5615EF8();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

MusicKitInternal::CloudMusicMovie::Associations::CodingKeys_optional __swiftcall CloudMusicMovie.Associations.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudMusicMovie.Associations.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1D539C9D4()
{
  result = 0x2D6E692D65726F6DLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x72612D636973756DLL;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D539CAC4@<X0>(uint64_t *a1@<X8>)
{
  result = CloudMusicMovie.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D539CB08(uint64_t a1)
{
  v2 = sub_1D5285FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D539CB44(uint64_t a1)
{
  v2 = sub_1D5285FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudMusicMovie.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v173);
  v169 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v166 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_171_6(v14);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDA98, &unk_1D5627020);
  OUTLINED_FUNCTION_14(v171);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v172 = v18;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v178);
  v175 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v170 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v174 = v28;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDAA0, &unk_1D5627040);
  OUTLINED_FUNCTION_14(v176);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v177 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  OUTLINED_FUNCTION_4(v33);
  v183 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v180 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v40 = OUTLINED_FUNCTION_22(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_59_0();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  v179 = v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v165 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5458, &qword_1D565B6A0);
  v52 = OUTLINED_FUNCTION_14(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  v167 = v55;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_25_13();
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v165 - v59;
  v181 = v4;
  v182 = v58;
  v61 = *(v58 + 48);
  sub_1D4F39AB0(v4, &v165 - v59, &qword_1EC7ECD28, &unk_1D565B660);
  sub_1D4F39AB0(v2, &v60[v61], &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v60);
  if (v62)
  {
    OUTLINED_FUNCTION_32_1(&v60[v61]);
    if (v62)
    {
      v165 = v45;
      sub_1D4E50004(v60, &qword_1EC7ECD28, &unk_1D565B660);
      goto LABEL_11;
    }

LABEL_9:
    v66 = &qword_1EC7F5458;
    v67 = &qword_1D565B6A0;
    v68 = v60;
LABEL_51:
    sub_1D4E50004(v68, v66, v67);
    goto LABEL_52;
  }

  sub_1D4F39AB0(v60, v50, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(&v60[v61]);
  if (v62)
  {
    v63 = *(v183 + 8);
    v64 = OUTLINED_FUNCTION_81_0();
    v65(v64);
    goto LABEL_9;
  }

  v165 = v45;
  v69 = v183;
  OUTLINED_FUNCTION_113_9();
  v70 = v180;
  v71(v180, &v60[v61], v33);
  sub_1D53A058C();
  OUTLINED_FUNCTION_17_2();
  v72 = sub_1D5614D18();
  v73 = *(v69 + 8);
  v73(v70, v33);
  v74 = OUTLINED_FUNCTION_81_0();
  (v73)(v74);
  sub_1D4E50004(v60, &qword_1EC7ECD28, &unk_1D565B660);
  if ((v72 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_11:
  v75 = type metadata accessor for CloudMusicMovie.Associations(0);
  v76 = *(v75 + 20);
  v77 = *(v182 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v78, v79, v80, v81);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v82, v83, v84, v85);
  OUTLINED_FUNCTION_32_1(v0);
  if (v62)
  {
    OUTLINED_FUNCTION_32_1(v0 + v77);
    if (v62)
    {
      sub_1D4E50004(v0, &qword_1EC7ECD28, &unk_1D565B660);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v86 = v179;
  sub_1D4F39AB0(v0, v179, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v0 + v77);
  if (v87)
  {
    v88 = *(v183 + 8);
    v89 = OUTLINED_FUNCTION_81_0();
    v90(v89);
LABEL_19:
    v66 = &qword_1EC7F5458;
    v67 = &qword_1D565B6A0;
    v68 = v0;
    goto LABEL_51;
  }

  v91 = v183;
  v92 = v75;
  v93 = v180;
  (*(v183 + 32))(v180, v0 + v77, v33);
  sub_1D53A058C();
  OUTLINED_FUNCTION_17_2();
  v94 = v86;
  v95 = sub_1D5614D18();
  v96 = *(v91 + 8);
  v97 = v93;
  v75 = v92;
  v96(v97, v33);
  v96(v94, v33);
  sub_1D4E50004(v0, &qword_1EC7ECD28, &unk_1D565B660);
  if ((v95 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_21:
  v179 = v75;
  v98 = *(v75 + 24);
  v99 = v177;
  v100 = *(v176 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v101, v102, v103, v104);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v105, v106, v107, v108);
  v109 = OUTLINED_FUNCTION_67_18();
  v110 = v178;
  OUTLINED_FUNCTION_4_18(v109, v111);
  if (v62)
  {
    v112 = OUTLINED_FUNCTION_118_13();
    OUTLINED_FUNCTION_4_18(v112, v113);
    if (v62)
    {
      sub_1D4E50004(v99, &qword_1EC7EB5A8, &unk_1D5622F00);
      goto LABEL_31;
    }

LABEL_29:
    v66 = &qword_1EC7EDAA0;
    v67 = &unk_1D5627040;
LABEL_50:
    v68 = v99;
    goto LABEL_51;
  }

  sub_1D4F39AB0(v99, v174, &qword_1EC7EB5A8, &unk_1D5622F00);
  v114 = OUTLINED_FUNCTION_118_13();
  OUTLINED_FUNCTION_4_18(v114, v115);
  if (v116)
  {
    v117 = *(v175 + 8);
    v118 = OUTLINED_FUNCTION_200();
    v119(v118);
    goto LABEL_29;
  }

  (*(v175 + 32))(v170, v99 + v100, v110);
  sub_1D5000458();
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_185_1();
  v120 = OUTLINED_FUNCTION_30_30();
  (unk_1D5622F00)(v120);
  v121 = OUTLINED_FUNCTION_200();
  (unk_1D5622F00)(v121);
  sub_1D4E50004(v99, &qword_1EC7EB5A8, &unk_1D5622F00);
  if ((&qword_1EC7EB5A8 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_31:
  v122 = *(v179 + 28);
  v99 = v172;
  v123 = *(v171 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v124, v125, v126, v127);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v128, v129, v130, v131);
  v132 = OUTLINED_FUNCTION_67_18();
  v133 = v173;
  OUTLINED_FUNCTION_4_18(v132, v134);
  if (!v62)
  {
    sub_1D4F39AB0(v99, v168, &qword_1EC7ECD18, &qword_1D5631040);
    v137 = OUTLINED_FUNCTION_118_13();
    OUTLINED_FUNCTION_4_18(v137, v138);
    if (!v139)
    {
      (*(v169 + 32))(v166, v99 + v123, v133);
      sub_1D50003B4();
      OUTLINED_FUNCTION_45_5();
      OUTLINED_FUNCTION_185_1();
      v143 = OUTLINED_FUNCTION_30_30();
      (qword_1D5631040)(v143);
      v144 = OUTLINED_FUNCTION_200();
      (qword_1D5631040)(v144);
      sub_1D4E50004(v99, &qword_1EC7ECD18, &qword_1D5631040);
      if ((&qword_1EC7ECD18 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_41;
    }

    v140 = *(v169 + 8);
    v141 = OUTLINED_FUNCTION_200();
    v142(v141);
    goto LABEL_39;
  }

  v135 = OUTLINED_FUNCTION_118_13();
  OUTLINED_FUNCTION_4_18(v135, v136);
  if (!v62)
  {
LABEL_39:
    v66 = &qword_1EC7EDA98;
    v67 = &unk_1D5627020;
    goto LABEL_50;
  }

  sub_1D4E50004(v99, &qword_1EC7ECD18, &qword_1D5631040);
LABEL_41:
  v145 = *(v179 + 32);
  v146 = *(v182 + 48);
  v99 = v167;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v147, v148, v149, v150);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v151, v152, v153, v154);
  OUTLINED_FUNCTION_32_1(v99);
  if (!v62)
  {
    sub_1D4F39AB0(v99, v165, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_32_1(v99 + v146);
    if (!v155)
    {
      v159 = v183;
      OUTLINED_FUNCTION_81();
      v160 = v99 + v146;
      v161 = v180;
      v162(v180, v160, v33);
      sub_1D53A058C();
      sub_1D5614D18();
      v163 = *(v159 + 8);
      v163(v161, v33);
      v164 = OUTLINED_FUNCTION_15_2();
      (v163)(v164);
      sub_1D4E50004(v99, &qword_1EC7ECD28, &unk_1D565B660);
      goto LABEL_52;
    }

    v156 = *(v183 + 8);
    v157 = OUTLINED_FUNCTION_15_2();
    v158(v157);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_32_1(v99 + v146);
  if (!v62)
  {
LABEL_49:
    v66 = &qword_1EC7F5458;
    v67 = &qword_1D565B6A0;
    goto LABEL_50;
  }

  sub_1D4E50004(v99, &qword_1EC7ECD28, &unk_1D565B660);
LABEL_52:
  OUTLINED_FUNCTION_46();
}

void CloudMusicMovie.Associations.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5468, &qword_1D565B6A8);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_1();
  sub_1D5285FE8();
  OUTLINED_FUNCTION_43_5();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  sub_1D53A0610();
  OUTLINED_FUNCTION_38();
  if (!v0)
  {
    v8 = type metadata accessor for CloudMusicMovie.Associations(0);
    v9 = v8[5];
    OUTLINED_FUNCTION_38();
    v11 = v8[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D5000530();
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    v12 = v8[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D500069C();
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    v10 = v8[8];
    OUTLINED_FUNCTION_38();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_26();
}

void CloudMusicMovie.Associations.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v82 = v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v81);
  v77 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_168_7(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_124_11(v13);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v78);
  v75 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v74 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_31();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  OUTLINED_FUNCTION_4(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_71_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v30 = OUTLINED_FUNCTION_22(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v79 = v33;
  OUTLINED_FUNCTION_23();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v73 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v73 - v38;
  sub_1D4F39AB0(v0, &v73 - v38, &qword_1EC7ECD28, &unk_1D565B660);
  v40 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v40, v41, v23);
  if (v42)
  {
    sub_1D56162F8();
  }

  else
  {
    v43 = OUTLINED_FUNCTION_129_7();
    v44(v43, v39, v23);
    sub_1D56162F8();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_51_4();
    sub_1D5614CB8();
    v45 = OUTLINED_FUNCTION_160_8();
    v46(v45);
  }

  v47 = type metadata accessor for CloudMusicMovie.Associations(0);
  v48 = v0;
  sub_1D4F39AB0(v0 + v47[5], v37, &qword_1EC7ECD28, &unk_1D565B660);
  v49 = OUTLINED_FUNCTION_67_18();
  OUTLINED_FUNCTION_57(v49, v50, v23);
  if (v42)
  {
    sub_1D56162F8();
  }

  else
  {
    v51 = OUTLINED_FUNCTION_129_7();
    v52(v51, v37, v23);
    sub_1D56162F8();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_51_4();
    sub_1D5614CB8();
    v53 = OUTLINED_FUNCTION_160_8();
    v54(v53);
  }

  sub_1D4F39AB0(v0 + v47[6], v1, &qword_1EC7EB5A8, &unk_1D5622F00);
  v55 = v78;
  OUTLINED_FUNCTION_57(v1, 1, v78);
  if (v42)
  {
    sub_1D56162F8();
  }

  else
  {
    v56 = v74;
    v57 = v75;
    (*(v75 + 32))(v74, v1, v55);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v57 + 8))(v56, v55);
  }

  v58 = v80;
  sub_1D4F39AB0(v48 + v47[7], v80, &qword_1EC7ECD18, &qword_1D5631040);
  v59 = OUTLINED_FUNCTION_35_1();
  v60 = v81;
  OUTLINED_FUNCTION_4_18(v59, v61);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v63 = v76;
    v62 = v77;
    OUTLINED_FUNCTION_170_6();
    v64(v63, v58, v60);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B41C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v65 = *(v62 + 8);
    v66 = OUTLINED_FUNCTION_200();
    v67(v66);
  }

  v68 = v79;
  sub_1D4F39AB0(v48 + v47[8], v79, &qword_1EC7ECD28, &unk_1D565B660);
  v69 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v69, v70, v23);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v71 = OUTLINED_FUNCTION_129_7();
    v72(v71, v68, v23);
    OUTLINED_FUNCTION_27();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v25 + 8))(v2, v23);
  }

  OUTLINED_FUNCTION_46();
}

void CloudMusicMovie.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4(v78);
  v75 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v74 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v77 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4(v14);
  v73 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_171_6(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_31();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  OUTLINED_FUNCTION_4(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v76 = v34;
  OUTLINED_FUNCTION_23();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = v72 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = v72 - v39;
  sub_1D56162D8();
  v79 = v3;
  sub_1D4F39AB0(v3, v40, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v40);
  if (v41)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    (*(v26 + 32))(v2, v40, v24);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_114_8();
    v42 = *(v26 + 8);
    v43 = OUTLINED_FUNCTION_15_2();
    v44(v43);
  }

  v45 = v26;
  v46 = type metadata accessor for CloudMusicMovie.Associations(0);
  v47 = v79;
  sub_1D4F39AB0(v79 + v46[5], v38, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v38);
  if (v41)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    OUTLINED_FUNCTION_113_9();
    v48(v2, v38, v24);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_114_8();
    v49 = *(v45 + 8);
    v50 = OUTLINED_FUNCTION_15_2();
    v51(v50);
  }

  sub_1D4F39AB0(v47 + v46[6], v1, &qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_57(v1, 1, v14);
  if (v41)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v53 = v72[1];
    v52 = v73;
    OUTLINED_FUNCTION_170_6();
    v54(v53, v1, v14);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v52 + 8))(v53, v14);
  }

  v55 = v77;
  sub_1D4F39AB0(v47 + v46[7], v77, &qword_1EC7ECD18, &qword_1D5631040);
  v56 = OUTLINED_FUNCTION_35_1();
  v57 = v78;
  OUTLINED_FUNCTION_4_18(v56, v58);
  if (v41)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    v59 = v45;
    v61 = v74;
    v60 = v75;
    OUTLINED_FUNCTION_113_9();
    v62(v61, v55, v57);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    v63 = *(v60 + 8);
    v64 = OUTLINED_FUNCTION_200();
    v65(v64);
    v45 = v59;
    v47 = v79;
  }

  v66 = v47 + v46[8];
  v67 = v76;
  sub_1D4F39AB0(v66, v76, &qword_1EC7ECD28, &unk_1D565B660);
  OUTLINED_FUNCTION_32_1(v67);
  if (v41)
  {
    OUTLINED_FUNCTION_41_42();
  }

  else
  {
    OUTLINED_FUNCTION_113_9();
    v68(v2, v67, v24);
    OUTLINED_FUNCTION_183_0();
    sub_1D4F8B398();
    OUTLINED_FUNCTION_114_8();
    v69 = *(v45 + 8);
    v70 = OUTLINED_FUNCTION_15_2();
    v71(v70);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudMusicMovie.Associations.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v60 = v0;
  v3 = v2;
  v53 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_168_7(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v55 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v21 = v19 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_124_11(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5478, &qword_1D565B6B0);
  v28 = OUTLINED_FUNCTION_4(v27);
  v56 = v29;
  v57 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_19_0();
  v33 = type metadata accessor for CloudMusicMovie.Associations(0);
  v34 = OUTLINED_FUNCTION_14(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v40 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5285FE8();
  v59 = v1;
  v41 = v60;
  sub_1D5616398();
  if (v41)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v52 = v21;
    v60 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
    v42 = sub_1D53A0694();
    OUTLINED_FUNCTION_127_9();
    sub_1D5615F78();
    v43 = v58;
    v58 = v39;
    sub_1D4F39A1C(v43, v39, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_127_9();
    sub_1D5615F78();
    v51 = v42;
    sub_1D4F39A1C(v25, v58 + v33[5], &qword_1EC7ECD28, &unk_1D565B660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D5000808();
    v44 = v55;
    OUTLINED_FUNCTION_138_11();
    sub_1D5615F78();
    v45 = v58;
    sub_1D4F39A1C(v44, v58 + v33[6], &qword_1EC7EB5A8, &unk_1D5622F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D5000974();
    v46 = v54;
    OUTLINED_FUNCTION_138_11();
    sub_1D5615F78();
    sub_1D4F39A1C(v46, v45 + v33[7], &qword_1EC7ECD18, &qword_1D5631040);
    v47 = v52;
    OUTLINED_FUNCTION_127_9();
    sub_1D5615F78();
    v48 = OUTLINED_FUNCTION_62_31();
    v49(v48);
    sub_1D4F39A1C(v47, v45 + v33[8], &qword_1EC7ECD28, &unk_1D565B660);
    sub_1D539F180(v45, v53, type metadata accessor for CloudMusicMovie.Associations);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_0_213();
    sub_1D539EFC0(v45, v50);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D539E82C(uint64_t a1, int *a2)
{
  v52 = a2;
  v53 = a1;
  v3 = v2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  v48 = *(v51 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v49 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v45 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v45 - v28;
  sub_1D56162D8();
  v53 = v3;
  sub_1D4F39AB0(v3, v29, &qword_1EC7ECD28, &unk_1D565B660);
  if (__swift_getEnumTagSinglePayload(v29, 1, v16) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v17 + 32))(v20, v29, v16);
    sub_1D56162F8();
    sub_1D4F8B398();
    sub_1D5614CB8();
    (*(v17 + 8))(v20, v16);
  }

  v30 = v17;
  v32 = v52;
  v31 = v53;
  sub_1D4F39AB0(v53 + v52[5], v27, &qword_1EC7ECD28, &unk_1D565B660);
  if (__swift_getEnumTagSinglePayload(v27, 1, v16) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v30 + 32))(v20, v27, v16);
    sub_1D56162F8();
    sub_1D4F8B398();
    sub_1D5614CB8();
    (*(v30 + 8))(v20, v16);
  }

  v33 = v51;
  sub_1D4F39AB0(v31 + v32[6], v15, &qword_1EC7EB5A8, &unk_1D5622F00);
  v34 = v9;
  if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v36 = v45;
    v35 = v46;
    (*(v46 + 32))(v45, v15, v34);
    sub_1D56162F8();
    sub_1D4F8B290();
    sub_1D5614CB8();
    (*(v35 + 8))(v36, v34);
  }

  v37 = v50;
  sub_1D4F39AB0(v31 + v32[7], v50, &qword_1EC7ECD18, &qword_1D5631040);
  if (__swift_getEnumTagSinglePayload(v37, 1, v33) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v38 = v48;
    v39 = v30;
    v40 = v47;
    (*(v48 + 32))(v47, v37, v33);
    sub_1D56162F8();
    sub_1D4F8B41C();
    sub_1D5614CB8();
    v41 = v40;
    v30 = v39;
    v31 = v53;
    (*(v38 + 8))(v41, v33);
  }

  v42 = v31 + v32[8];
  v43 = v49;
  sub_1D4F39AB0(v42, v49, &qword_1EC7ECD28, &unk_1D565B660);
  if (__swift_getEnumTagSinglePayload(v43, 1, v16) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v30 + 32))(v20, v43, v16);
    sub_1D56162F8();
    sub_1D4F8B398();
    sub_1D5614CB8();
    (*(v30 + 8))(v20, v16);
  }

  return sub_1D5616328();
}

uint64_t CloudMusicMovie.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static CloudMusicMovie.Metadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *a2;

      OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C();
      OUTLINED_FUNCTION_82();

      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D539EFC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D539F018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

unint64_t sub_1D539F094()
{
  result = qword_1EDD5C870[0];
  if (!qword_1EDD5C870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5C870);
  }

  return result;
}

unint64_t sub_1D539F0E8(uint64_t a1)
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

unint64_t sub_1D539F12C()
{
  result = qword_1EDD5C6F0[0];
  if (!qword_1EDD5C6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5C6F0);
  }

  return result;
}

uint64_t sub_1D539F180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

unint64_t sub_1D539F1DC()
{
  result = qword_1EDD5C978[0];
  if (!qword_1EDD5C978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5C978);
  }

  return result;
}

unint64_t sub_1D539F230()
{
  result = qword_1EC7F3968;
  if (!qword_1EC7F3968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F3940, qword_1D564F0C0);
    sub_1D52DB900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3968);
  }

  return result;
}

uint64_t sub_1D539F2B4(uint64_t a1)
{
  v2 = sub_1D53A0718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D539F2F0(uint64_t a1)
{
  v2 = sub_1D53A0718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMusicMovie.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5488, &qword_1D565B6B8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = *v0;
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D53A0718();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  sub_1D4FCEB00();
  OUTLINED_FUNCTION_21_0();

  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_86_0();
  v13(v12);
  OUTLINED_FUNCTION_26();
}

void CloudMusicMovie.Metadata.hash(into:)()
{
  if (*v0)
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_98();

    sub_1D4F068B4();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t CloudMusicMovie.Metadata.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4();
  }

  return sub_1D5616328();
}

void CloudMusicMovie.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5498, &unk_1D565B6D0);
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9();
  v21 = v12[3];
  v22 = v12[4];
  v23 = OUTLINED_FUNCTION_165();
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1D53A0718();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEC6C();
    sub_1D5615F78();
    v25 = *(v17 + 8);
    v26 = OUTLINED_FUNCTION_15_2();
    v27(v26);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudMusicMovie.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudMusicMovie.attributes.getter()
{
  v2 = *(OUTLINED_FUNCTION_179_7() + 20);
  OUTLINED_FUNCTION_28_58();
  return sub_1D539F180(v1 + v3, v0, v4);
}

uint64_t static CloudMusicMovie.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7F5410 = a1;
}

uint64_t (*static CloudMusicMovie.relationshipCodingKeys.modify())()
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D539F844@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F5410;
}

uint64_t sub_1D539F894(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F5410 = v1;
}

uint64_t CloudMusicMovie.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_179_7() + 32));
  *v0 = v2;

  return sub_1D50A24E4(v2);
}

uint64_t CloudMusicMovie.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudMusicMovie(0) + 32);
  result = sub_1D4EA7410(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1D539FA08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FE28();
  qword_1EDD5C7A8 = v3;
  return result;
}

uint64_t static CloudMusicMovie.catalogTypes.getter()
{
  if (qword_1EDD5C7A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D539FB1C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D539FBB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D539FC04(uint64_t a1)
{
  v2 = sub_1D539F094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D539FC40(uint64_t a1)
{
  v2 = sub_1D539F094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudMusicMovie.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v5 = OUTLINED_FUNCTION_4(v4);
  v42 = v6;
  v43 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_124_11(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_114();
  v15 = type metadata accessor for CloudMusicMovie.Relationships(0);
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_38_2();
  v26 = *v0;
  v27 = v0[1];
  sub_1D5614E28();
  v28 = type metadata accessor for CloudMusicMovie(0);
  v29 = v0 + v28[5];
  CloudMusicMovie.Attributes.hash(into:)();
  sub_1D4F39AB0(v3 + v28[6], v2, &qword_1EC7EF310, &qword_1D565B640);
  OUTLINED_FUNCTION_57(v2, 1, v15);
  if (v33)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_26_66();
    sub_1D539F018(v2, v21, v30);
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v21, v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
    v31 = OUTLINED_FUNCTION_67_18();
    OUTLINED_FUNCTION_4_18(v31, v32);
    if (v33)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_40_3();
      v34(v41, v1, v43);
      OUTLINED_FUNCTION_27();
      sub_1D4F89490();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v35 = *(v42 + 8);
      v36 = OUTLINED_FUNCTION_200();
      v37(v36);
    }

    OUTLINED_FUNCTION_27_60();
    sub_1D539EFC0(v21, v38);
  }

  v39 = v3 + v28[7];
  sub_1D4F87F60();
  v40 = *(v3 + v28[8]);
  if (v40 == 1 || (OUTLINED_FUNCTION_27(), !v40))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F068B4();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D539FF2C(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

uint64_t sub_1D539FF98(uint64_t a1)
{
  v2 = sub_1D539F0E8(&unk_1EC7F5548);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D53A0058(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void CloudMusicMovie.Attributes.offerKinds.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_47_5();
  v7 = sub_1D560F548();
  v8 = OUTLINED_FUNCTION_4(v7);
  v42 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v46 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_4(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9();
  v19 = *(v1 + *(type metadata accessor for CloudMusicMovie.Attributes(0) + 68));
  if (v19)
  {
    swift_getKeyPath();
    v20 = *(v19 + 16);
    if (v20)
    {
      v22 = *(v15 + 16);
      v21 = v15 + 16;
      v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v44 = *(v21 + 56);
      v45 = v22;
      v24 = (v21 - 8);
      v43 = (v42 + 32);
      v25 = MEMORY[0x1E69E7CC0];
      v40 = v13;
      v41 = v7;
      do
      {
        v45(v2, v23, v13);
        swift_getAtKeyPath();
        v26 = *v24;
        v27 = OUTLINED_FUNCTION_15_2();
        v28(v27);
        v29 = OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_57(v29, v30, v7);
        if (v31)
        {
          sub_1D4E50004(v0, &qword_1EC7EAC58, &unk_1D561DA70);
        }

        else
        {
          v32 = v21;
          v33 = *v43;
          (*v43)(v46, v0, v7);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = *(v25 + 16);
            OUTLINED_FUNCTION_157_8();
            sub_1D4F00C24();
            v25 = v38;
          }

          v35 = *(v25 + 16);
          if (v35 >= *(v25 + 24) >> 1)
          {
            OUTLINED_FUNCTION_157_8();
            sub_1D4F00C24();
            v25 = v39;
          }

          *(v25 + 16) = v35 + 1;
          v36 = v25 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v35;
          v7 = v41;
          v33(v36, v46, v41);
          v21 = v32;
          v13 = v40;
        }

        v23 += v44;
        --v20;
      }

      while (v20);
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D53A03A8()
{
  sub_1D539F0E8(&unk_1EDD5C960);

  return sub_1D5612A28();
}