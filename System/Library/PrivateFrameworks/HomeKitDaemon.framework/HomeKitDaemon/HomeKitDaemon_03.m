uint64_t sub_229587FF4(uint64_t a1)
{
  v10 = _s21EventMetadataInternalVMa(0);
  v11 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_229564EB8(v1, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, v9);
  sub_22953EAE4(v9, &qword_27D882000, &qword_22A578390);
  v4 = _s24AppleMediaAccessoryStateO5EventVMa();
  v5 = *(v1 + *(v4 + 20));
  v10 = MEMORY[0x277D84CC0];
  v11 = &off_283CDFC58;
  LODWORD(v9[0]) = v5;
  sub_229890DC4(v9, 0xD000000000000013, 0x800000022A58A890);
  v6 = *(v1 + *(v4 + 24));
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v11 = sub_22958872C();
  v9[0] = sub_2295887A8(v12, v6);
  return sub_229890DC4(v9, 0x6F7247616964656DLL, 0xEF73444955557075);
}

uint64_t sub_229588160(__int128 *a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  *(&v16 + 1) = _s21EventMetadataInternalVMa(0);
  v17 = sub_229588C5C(&qword_27D87CC28, _s21EventMetadataInternalVMa);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_229564EB8(v2, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_229679928(KeyPath, &v15);

  if (*(&v16 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v15);
  }

  v6 = _s24AppleMediaAccessoryStateO5EventVMa();
  v7 = *(v2 + *(v6 + 20));
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D320, &qword_22A5784A8) + 36));
  v9 = v8 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0) + 28);
  *v9 = v7;
  v9[4] = 0;
  v10 = *(v2 + *(v6 + 24));
  LOBYTE(v17) = *(a1 + 32);
  v11 = a1[1];
  v15 = *a1;
  v16 = v11;
  v12 = sub_2295887A8(&v15, v10);
  v13 = *v8;

  *v8 = v12;
  return result;
}

uint64_t sub_2295882B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  sub_229564F88(a1 + *(v8 + 24), v7, &qword_27D87CC38, &unk_22A5784B0);
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_229589154(v7, a2, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  }

  sub_22A4DC28C();
  v11 = *(v9 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_27D87DF28;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_22953EAE4(v7, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_229588460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564EB8(a1, v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v9 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0) + 24);
  sub_22953EAE4(a2 + v9, &qword_27D87CC38, &unk_22A5784B0);
  sub_229589154(v8, a2 + v9, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance HMDAppleMediaAccessory(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifier];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  v7 = [v2 identifier];
  v8 = sub_22A4DD5EC();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_22A4DE60C();
  }

  return v12 & 1;
}

unint64_t sub_22958866C()
{
  result = qword_27D87D2C0;
  if (!qword_27D87D2C0)
  {
    sub_229562F68(255, &qword_281401920, off_278666038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D2C0);
  }

  return result;
}

uint64_t _s24AppleMediaAccessoryStateO5EventVMa()
{
  result = qword_27D87D2E0;
  if (!qword_27D87D2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22958872C()
{
  result = qword_27D87D2C8;
  if (!qword_27D87D2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E400, "ll\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D2C8);
  }

  return result;
}

uint64_t sub_2295887A8(uint64_t a1, uint64_t a2)
{
  v48 = sub_22A4DD34C();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v43 - v8;
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v61 = MEMORY[0x277D84F90];
    v56 = v17;
    sub_229583334(0, v17, 0);
    v49 = 0;
    result = v61;
    v21 = *(v10 + 16);
    v20 = v10 + 16;
    v19 = v21;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v45 = a1;
    v52 = *(a1 + 32);
    v51 = *(v20 + 56);
    v44 = (v4 + 8);
    v50 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v57 = v9;
    do
    {
      v55 = result;
      v19(v16, v22, v9);
      if (v52)
      {
        v19(v14, v16, v9);
      }

      else
      {
        v23 = v45;
        v62 = *v45;
        v60 = *v45;
        sub_229588C00(&v62, &v58);
        v24 = v47;
        sub_22A4DD33C();
        v25 = *(v23 + 2);
        v26 = *(v23 + 3);

        *&v60 = sub_22958F6F4(v25, v26);
        *(&v60 + 1) = v27;
        v58 = sub_22970DA38();
        v59 = v28;
        sub_22A4DD36C();
        sub_229588C5C(&qword_27D87D2D0, MEMORY[0x277CC5540]);
        sub_229588CA4();
        v29 = v46;
        sub_22A4DD35C();
        v30 = *v44;
        v31 = v24;
        v32 = v48;
        (*v44)(v31, v48);
        sub_2295798D4(v58, v59);
        sub_2295798D4(v60, *(&v60 + 1));
        v33 = v49;
        sub_22A4DD32C();
        v49 = v33;
        v34 = v29;
        v9 = v57;
        v30(v34, v32);
      }

      v35 = sub_22A4DB76C();
      v37 = v36;
      v38 = *v50;
      v39 = v14;
      (*v50)(v14, v9);
      v38(v16, v9);
      result = v55;
      v61 = v55;
      v41 = *(v55 + 16);
      v40 = *(v55 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_229583334((v40 > 1), v41 + 1, 1);
        result = v61;
      }

      *(result + 16) = v41 + 1;
      v42 = result + 16 * v41;
      *(v42 + 32) = v35;
      *(v42 + 40) = v37;
      v22 += v51;
      v9 = v57;
      --v56;
      v19 = v53;
      v14 = v39;
    }

    while (v56);
  }

  return result;
}

uint64_t sub_229588C5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_229588CA4()
{
  result = qword_27D87D2D8;
  if (!qword_27D87D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D2D8);
  }

  return result;
}

uint64_t sub_229588D4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_229583374(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_229583374((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8 + 32) = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_229588E04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_229583354(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v9 = result;
      v7 = *(result + 16);
      v6 = *(result + 24);
      if (v7 >= v6 >> 1)
      {
        sub_229583354((v6 > 1), v7 + 1, 1);
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 4 * v7 + 32) = v5;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_229588F00()
{
  _s21EventMetadataInternalVMa(319);
  if (v0 <= 0x3F)
  {
    sub_229564D4C();
    if (v1 <= 0x3F)
    {
      sub_229588F9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_229588F9C()
{
  if (!qword_27D87D2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D2F8, &unk_22A585F10);
    sub_22958900C();
    v0 = _s7SecuredVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87D2F0);
    }
  }
}

unint64_t sub_22958900C()
{
  result = qword_27D87D300;
  if (!qword_27D87D300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87D2F8, &unk_22A585F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D300);
  }

  return result;
}

uint64_t sub_2295890D0(uint64_t a1)
{
  *(a1 + 16) = sub_229588C5C(&qword_27D87D310, _s24AppleMediaAccessoryStateO5EventVMa);
  result = sub_229588C5C(&qword_27D87D318, _s24AppleMediaAccessoryStateO5EventVMa);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_229589154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RestrictedGuestFeatureLogEvent.numEnabledResidentsInHome.getter()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numEnabledResidentsInHome;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RestrictedGuestFeatureLogEvent.numEnabledResidentsInHome.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numEnabledResidentsInHome;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RestrictedGuestFeatureLogEvent.init(home:)(void *a1)
{
  v3 = sub_22A4DB7DC();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventName];
  *v6 = 0xD000000000000028;
  v6[1] = 0x800000022A589260;
  v63 = a1;
  v64 = v1;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventOptions] = 2;
  v7 = [a1 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v8 = sub_22A4DD83C();

  if (v8 >> 62)
  {
LABEL_49:
    v67 = v8 & 0xFFFFFFFFFFFFFF8;
    v69 = sub_22A4DE0EC();
  }

  else
  {
    v67 = v8 & 0xFFFFFFFFFFFFFF8;
    v69 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v68 = v8 & 0xC000000000000001;
  v65 = v8;
  v66 = v8 + 32;
  do
  {
    v12 = v9;
    if (v9 == v69)
    {
      break;
    }

    if (v68)
    {
      v13 = MEMORY[0x22AAD13F0](v9, v8);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v9 >= *(v67 + 16))
      {
        goto LABEL_47;
      }

      v13 = *(v66 + 8 * v9);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_46;
      }
    }

    v70 = v13;
    v71 = v14;
    v15 = [v13 services];
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    v16 = sub_22A4DD83C();

    if (v16 >> 62)
    {
      v17 = sub_22A4DE0EC();
      v72 = v12;
      if (v17)
      {
LABEL_11:
        v8 = 0;
        v73 = v16 & 0xC000000000000001;
        v18 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v73)
          {
            v19 = MEMORY[0x22AAD13F0](v8, v16);
          }

          else
          {
            if (v8 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v19 = *(v16 + 8 * v8 + 32);
          }

          v20 = v19;
          v21 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v22 = v17;
          v23 = [v19 serviceType];
          v24 = sub_22A4DD5EC();
          v26 = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_22958A53C(0, *(v18 + 2) + 1, 1, v18);
          }

          v28 = *(v18 + 2);
          v27 = *(v18 + 3);
          if (v28 >= v27 >> 1)
          {
            v18 = sub_22958A53C((v27 > 1), v28 + 1, 1, v18);
          }

          *(v18 + 2) = v28 + 1;
          v29 = &v18[16 * v28];
          *(v29 + 4) = v24;
          *(v29 + 5) = v26;
          ++v8;
          v17 = v22;
          if (v21 == v22)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v72 = v12;
      if (v17)
      {
        goto LABEL_11;
      }
    }

LABEL_4:

    v10 = objc_opt_self();
    v11 = sub_22A4DD81C();

    LOBYTE(v10) = [v10 doesAccessoryHaveRestrictedGuestCapableServiceTypes_];

    v8 = v65;
    v9 = v71;
    v12 = v72;
  }

  while ((v10 & 1) == 0);
  v30 = v12 != v69;

  v31 = v63;
  v64[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_hasRGSupportedAccessory] = v30;
  result = [v31 users];
  if (result)
  {
    v33 = result;
    sub_229562F68(0, &qword_281401790, off_278666348);
    v34 = sub_22A4DD83C();

    if (v34 >> 62)
    {
      v8 = sub_22A4DE0EC();
      if (v8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v8 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_31:
        v35 = 0;
        v36 = 0;
        while (1)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x22AAD13F0](v35, v34);
          }

          else
          {
            if (v35 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v37 = *(v34 + 8 * v35 + 32);
          }

          v38 = v37;
          v39 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          v40 = [v37 isRestrictedGuest];

          if (v40)
          {
            v41 = __OFADD__(v36++, 1);
            if (v41)
            {
              goto LABEL_48;
            }
          }

          ++v35;
          if (v39 == v8)
          {
            goto LABEL_52;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    v36 = 0;
LABEL_52:

    v42 = v63;
    *&v64[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numberOfRGs] = v36;
    v43 = [objc_msgSend(v42 residentDeviceManager)];
    swift_unknownObjectRelease();
    sub_229562F68(0, &qword_281401B10, off_278666300);
    v44 = sub_22A4DD83C();

    if (v44 >> 62)
    {
      goto LABEL_70;
    }

    for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v46 = 0;
      v47 = 0;
      while (1)
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x22AAD13F0](v46, v44);
        }

        else
        {
          if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v48 = *(v44 + 8 * v46 + 32);
        }

        v49 = v48;
        v50 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v51 = [v48 capabilities];
        if (v51)
        {
          v52 = [v51 supportsRestrictedGuest];
          swift_unknownObjectRelease();

          if (v52)
          {
            v41 = __OFADD__(v47++, 1);
            if (v41)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
        }

        ++v46;
        if (v50 == i)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      ;
    }

    v47 = 0;
LABEL_72:

    v54 = v63;
    v53 = v64;
    *&v64[OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numEnabledResidentsInHome] = v47;
    v55 = [v54 uuid];
    v56 = v60;
    sub_22A4DB79C();

    v57 = sub_22A4DB77C();
    (*(v61 + 8))(v56, v62);
    v58 = type metadata accessor for RestrictedGuestFeatureLogEvent();
    v74.receiver = v53;
    v74.super_class = v58;
    v59 = objc_msgSendSuper2(&v74, sel_initWithHomeUUID_, v57);

    return v59;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

unint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761B0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000022A58A8E0;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0x664F7265626D756ELL;
  *(inited + 64) = 0xEB00000000734752;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000022A58A900;
  v2 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_numEnabledResidentsInHome;
  swift_beginAccess();
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v3;
}

uint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventOptions.getter()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RestrictedGuestFeatureLogEvent.coreAnalyticsEventOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon30RestrictedGuestFeatureLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RestrictedGuestFeatureLogEvent.__allocating_init(homeUUID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22A4DB77C();
  v5 = [v3 initWithHomeUUID_];

  v6 = sub_22A4DB7DC();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id RestrictedGuestFeatureLogEvent.__allocating_init(startTime:homeUUID:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22A4DB77C();
  v7 = [v5 initWithStartTime:v6 homeUUID:a2];

  v8 = sub_22A4DB7DC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id RestrictedGuestFeatureLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RestrictedGuestFeatureLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_22958A310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3C0, &qword_22A578540);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22958A414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D458, &qword_22A57BC90);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22958A53C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22958A648(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3E0, &unk_22A578560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for HMFMessageName(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958A794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D3A0, &qword_22A578520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_22958A8B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D370, &qword_22A5784F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D378, &qword_22A5784F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22958A9E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D490, &qword_22A578630);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D498, &qword_22A578638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958AB1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4B8, &qword_22A578650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958AC3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4B0, &qword_22A578648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958AE28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D470, &unk_22A578610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_22958AF40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D480, &qword_22A578620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D488, &qword_22A578628);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958B0B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D1B8, &qword_22A5780E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_22958B23C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x277D84F90];
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

void *sub_22958B44C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1A0, &unk_22A5780D0);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3F0, &unk_22A578570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958B580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3B0, &unk_22A578530);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22958B68C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D3A8, &qword_22A578528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22958B7F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16 = MEMORY[0x277D84F90];
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

void *sub_22958B990(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4C0, &qword_22A578658);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4C8, &qword_22A578660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958BAC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4A8, &qword_22A578640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958BBE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3D0, &unk_22A578550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_22958BD08(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

void *sub_22958BF08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16 = MEMORY[0x277D84F90];
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

uint64_t (*sub_22958C03C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAD13F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22958C1F0;
  }

  __break(1u);
  return result;
}

void (*sub_22958C0E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAD13F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22958C160;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22958C168(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x22AAD13F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_22958C1E8;
  }

  __break(1u);
  return result;
}

id sub_22958C1F4()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v8 = [v1 uuid];
    sub_22A4DB79C();

    v9 = objc_allocWithZone(HMDApplicationData);
    v10 = sub_22A4DB77C();
    v11 = [v9 initWithParentUUID_];

    (*(v3 + 8))(v6, v2);
    return v11;
  }

  return result;
}

uint64_t sub_22958C334(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_22958C358, 0, 0);
}

uint64_t sub_22958C358()
{
  v1 = v0[8];
  v2 = v0[9];
  if (v1)
  {
    v3 = v0[7];
  }

  else
  {
    v3 = 0x53555F6E65;
  }

  if (v1)
  {
    v4 = v0[8];
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_229773768(v2);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {

    goto LABEL_15;
  }

  v7 = sub_229543DBC(v3, v4);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_15:

    v12 = 0;
    goto LABEL_16;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, (v0 + 2));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v10 = swift_dynamicCast();
  v11 = v0[6];
  if (v10)
  {
    v12 = v0[6];
  }

  else
  {
    v12 = 0;
  }

LABEL_16:
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_22958C4A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_229773768(v2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_229543DBC(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16) || (v9 = sub_229543DBC(0x6D614E656E656353, 0xE900000000000065), (v10 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v12 + 56) + 32 * v9, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22958C5E4(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = sub_22A4DB7DC();
  v2[56] = v3;
  v4 = *(v3 - 8);
  v2[57] = v4;
  v5 = *(v4 + 64) + 15;
  v2[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22958C6A4, 0, 0);
}

uint64_t sub_22958C6A4()
{
  v1 = *(v0 + 432);
  if (!*(v1 + 16) || (v2 = *(v0 + 432), v3 = sub_229543DBC(0x6D614E656E656353, 0xE900000000000065), (v4 & 1) == 0))
  {
    v18 = *(v0 + 440);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_22953EAE4(v0 + 256, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 392) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v20 = [v18 shortDescription];
    v21 = sub_22A4DD5EC();
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x800000022A58A9A0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v24 = *(v0 + 384);
LABEL_18:
    swift_willThrow();
    v43 = *(v0 + 464);

    v44 = *(v0 + 8);
    goto LABEL_19;
  }

  v5 = *(v0 + 432);
  sub_2295404B0(*(v5 + 56) + 32 * v3, v0 + 256);
  sub_22953EAE4(v0 + 256, &unk_27D87FC20, &unk_22A578810);
  if (!*(v1 + 16) || (v6 = *(v0 + 432), v7 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265), (v8 & 1) == 0) || (sub_2295404B0(*(v5 + 56) + 32 * v7, v0 + 288), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:
    v35 = MEMORY[0x277D837D0];
    v36 = *(v0 + 440);
    type metadata accessor for HMError(0);
    *(v0 + 408) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v37 = swift_initStackObject();
    *(v37 + 32) = 0x6E6F73616552;
    *(v37 + 16) = xmmword_22A576180;
    *(v37 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v38 = [v36 shortDescription];
    v39 = sub_22A4DD5EC();
    v41 = v40;

    MEMORY[0x22AAD08C0](v39, v41);

    *(v37 + 72) = v35;
    *(v37 + 48) = 0xD00000000000002ALL;
    *(v37 + 56) = 0x800000022A58A9C0;
    sub_22956AD8C(v37);
    swift_setDeallocating();
    sub_22953EAE4(v37 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v42 = *(v0 + 400);
    goto LABEL_18;
  }

  v9 = *(v0 + 456);
  v10 = *(v0 + 464);
  v11 = *(v0 + 448);
  v13 = *(v0 + 352);
  v12 = *(v0 + 360);
  v14 = [*(v0 + 440) uuid];
  sub_22A4DB79C();

  v15 = sub_22A4DB76C();
  v17 = v16;
  (*(v9 + 8))(v10, v11);
  if (v15 != v13 || v17 != v12)
  {
    v25 = sub_22A4DE60C();

    if (v25)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (!*(v1 + 16) || (v26 = *(v0 + 432), v27 = sub_229543DBC(1701869908, 0xE400000000000000), (v28 & 1) == 0) || (sub_2295404B0(*(v5 + 56) + 32 * v27, v0 + 320), (swift_dynamicCast() & 1) == 0))
  {
LABEL_24:
    v48 = *(v0 + 440);
    type metadata accessor for HMError(0);
    *(v0 + 424) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v49 = swift_initStackObject();
    *(v49 + 32) = 0x6E6F73616552;
    *(v49 + 16) = xmmword_22A576180;
    *(v49 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v50 = [v48 shortDescription];
    v51 = sub_22A4DD5EC();
    v53 = v52;

    MEMORY[0x22AAD08C0](v51, v53);

    *(v49 + 72) = MEMORY[0x277D837D0];
    *(v49 + 48) = 0xD000000000000024;
    *(v49 + 56) = 0x800000022A58A9F0;
    sub_22956AD8C(v49);
    swift_setDeallocating();
    sub_22953EAE4(v49 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v54 = *(v0 + 416);
    goto LABEL_18;
  }

  v30 = *(v0 + 368);
  v29 = *(v0 + 376);
  v31 = [*(v0 + 440) type];
  v32 = sub_22A4DD5EC();
  v34 = v33;

  if (v30 != v32 || v29 != v34)
  {
    v46 = sub_22A4DE60C();

    if (v46)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

LABEL_23:
  v47 = *(v0 + 464);

  v44 = *(v0 + 8);
LABEL_19:

  return v44();
}

uint64_t sub_22958CD88()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 name];
  v8 = sub_22A4DD5EC();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  v48 = MEMORY[0x277D837D0];
  v46 = v8;
  v47 = v10;
  sub_229543C58(&v46, v44);
  v12 = MEMORY[0x277D84F98];
  LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
  v43 = v12;
  v13 = v45;
  v14 = __swift_mutable_project_boxed_opaque_existential_0(v44, v45);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  sub_2297FE940(*v17, v17[1], 0x6D614E656E656353, 0xE900000000000065, v8, &v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  v19 = v43;
  v20 = [v1 uuid];
  sub_22A4DB79C();

  v21 = sub_22A4DB76C();
  v23 = v22;
  (*(v3 + 8))(v6, v2);
  v48 = v11;
  v46 = v21;
  v47 = v23;
  sub_229543C58(&v46, v44);
  LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
  v43 = v19;
  v24 = v45;
  v25 = __swift_mutable_project_boxed_opaque_existential_0(v44, v45);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2297FE940(*v28, v28[1], 0x696669746E656449, 0xEA00000000007265, v6, &v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  v30 = v43;
  v31 = [v1 type];
  v32 = sub_22A4DD5EC();
  v34 = v33;

  v48 = v11;
  v46 = v32;
  v47 = v34;
  sub_229543C58(&v46, v44);
  LOBYTE(v31) = swift_isUniquelyReferenced_nonNull_native();
  v43 = v30;
  v35 = v45;
  v36 = __swift_mutable_project_boxed_opaque_existential_0(v44, v45);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = (&v42 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  sub_2297FE940(*v39, v39[1], 1701869908, 0xE400000000000000, v31, &v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  return v43;
}

uint64_t sub_22958D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_22958D268;

  return sub_22958C334(a3, a4);
}

uint64_t sub_22958D268(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_22958D650;
  }

  else
  {
    v5 = sub_22958D37C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22958D37C()
{
  v17 = v0;
  v1 = v0[16];
  if (!v1)
  {
    v2 = v0[14];
    v1 = sub_22958CD88();
  }

  v3 = v0[10];
  v4 = v0[11];
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v3;
  v0[3] = v4;
  sub_229543C58(v0 + 2, v0 + 6);

  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v16 = v1;
  v5 = v0[9];
  v6 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 6), v5);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v5);
  sub_2297FE940(*v9, v9[1], 0x6D614E656E656353, 0xE900000000000065, v4, &v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  v10 = v16;
  v0[18] = v16;
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_22958D534;
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];

  return sub_22958D6CC(v10, v14, v12);
}

uint64_t sub_22958D534()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_22958D668;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22958D668()
{
  v1 = v0[18];

  v2 = v0[20];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22958D6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_22958D6F0, 0, 0);
}

uint64_t sub_22958D6F0()
{
  v1 = v0[14];
  v2 = sub_2298165BC(v0[11]);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_281401C20, off_278666020);
  v0[6] = &off_283CDD088;
  v0[2] = v1;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[7] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22958D81C;
  v5 = v0[12];
  v6 = v0[13];

  return sub_229709F5C((v0 + 2), (v0 + 7), v5, v6);
}

uint64_t sub_22958D81C()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22958D970, 0, 0);
  }

  else
  {
    sub_22953EAE4((v3 + 7), &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_22958D970()
{
  sub_22953EAE4((v0 + 7), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[16];

  return v1();
}

uint64_t sub_22958DA0C()
{
  v1 = v0[7];
  v2 = sub_22958C4A4(0x53555F6E65, 0xE500000000000000);
  v0[8] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_22958DB98;
    v7 = v0[7];

    return sub_22989CCDC(v4, v5);
  }

  else
  {
    v9 = v0[7];
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_281401C20, off_278666020);
    v0[6] = &off_283CDD088;
    v0[2] = v9;
    v10 = v9;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_22958DDA4;

    return sub_22970A4FC((v0 + 2), 0);
  }
}

uint64_t sub_22958DB98()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22958DEE0;
  }

  else
  {
    v3 = sub_22958DCAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22958DCAC()
{
  v1 = v0[8];

  v2 = v0[7];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_281401C20, off_278666020);
  v0[6] = &off_283CDD088;
  v0[2] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_22958DDA4;

  return sub_22970A4FC((v0 + 2), 0);
}

uint64_t sub_22958DDA4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22958DF44, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_22958DEE0()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22958DF44()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[12];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22958DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_229569B30;

  return sub_22958D1B8(a1, a2, a3, a4);
}

id sub_22958E0B0()
{
  v1 = [*v0 home];
  v2 = [v1 backingStore];

  return v2;
}

unint64_t sub_22958E108()
{
  result = qword_27D87D7C0;
  if (!qword_27D87D7C0)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D7C0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_22958E1B0()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v8 = [v1 uuid];
    sub_22A4DB79C();

    v9 = objc_allocWithZone(HMDApplicationData);
    v10 = sub_22A4DB77C();
    v11 = [v9 initWithParentUUID_];

    (*(v3 + 8))(v6, v2);
    return v11;
  }

  return result;
}

uint64_t sub_22958E2F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_229773768(v2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_229543DBC(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16) || (v9 = sub_229543DBC(0x656D614E6D6F6F52, 0xE800000000000000), (v10 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v12 + 56) + 32 * v9, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22958E42C(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_22A4DB7DC();
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22958E4EC, 0, 0);
}

uint64_t sub_22958E4EC()
{
  v1 = *(v0 + 288);
  if (*(v1 + 16) && (v2 = sub_229543DBC(0x656D614E6D6F6F52, 0xE800000000000000), (v3 & 1) != 0))
  {
    v4 = *(v0 + 288);
    sub_2295404B0(*(v4 + 56) + 32 * v2, v0 + 176);
    sub_22953EAE4(v0 + 176, &unk_27D87FC20, &unk_22A578810);
    if (*(v1 + 16))
    {
      v5 = *(v0 + 288);
      v6 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v7)
      {
        sub_2295404B0(*(v4 + 56) + 32 * v6, v0 + 208);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 312);
          v8 = *(v0 + 320);
          v10 = *(v0 + 304);
          v12 = *(v0 + 240);
          v11 = *(v0 + 248);
          v13 = [*(v0 + 296) uuid];
          sub_22A4DB79C();

          v14 = sub_22A4DB76C();
          v16 = v15;
          (*(v9 + 8))(v8, v10);
          if (v14 == v12 && v16 == v11)
          {

LABEL_11:
            v25 = *(v0 + 320);

            v26 = *(v0 + 8);
            goto LABEL_14;
          }

          v24 = sub_22A4DE60C();

          if (v24)
          {
            goto LABEL_11;
          }
        }
      }
    }

    v17 = (v0 + 272);
    v27 = MEMORY[0x277D837D0];
    v28 = *(v0 + 296);
    type metadata accessor for HMError(0);
    *(v0 + 280) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v30 = [v28 shortDescription];
    v31 = sub_22A4DD5EC();
    v33 = v32;

    MEMORY[0x22AAD08C0](v31, v33);

    *(inited + 72) = v27;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x800000022A58AA40;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
  }

  else
  {
    v17 = (v0 + 256);
    v18 = *(v0 + 296);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    sub_22953EAE4(v0 + 176, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 264) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v19 = swift_initStackObject();
    *(v19 + 32) = 0x6E6F73616552;
    *(v19 + 16) = xmmword_22A576180;
    *(v19 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v20 = [v18 shortDescription];
    v21 = sub_22A4DD5EC();
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    *(v19 + 72) = MEMORY[0x277D837D0];
    *(v19 + 48) = 0xD000000000000016;
    *(v19 + 56) = 0x800000022A58AA20;
    sub_22956AD8C(v19);
    swift_setDeallocating();
    sub_22953EAE4(v19 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
  }

  sub_22A4DB3CC();
  v34 = *v17;
  swift_willThrow();
  v35 = *(v0 + 320);

  v26 = *(v0 + 8);
LABEL_14:

  return v26();
}

uint64_t sub_22958E994()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 name];
  v8 = sub_22A4DD5EC();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x277D837D0];
  v35 = v8;
  v36 = v10;
  sub_229543C58(&v35, v33);
  v12 = MEMORY[0x277D84F98];
  LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
  v32 = v12;
  v13 = v34;
  v14 = __swift_mutable_project_boxed_opaque_existential_0(v33, v34);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  sub_2297FE940(*v17, v17[1], 0x656D614E6D6F6F52, 0xE800000000000000, v8, &v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  v19 = v32;
  v20 = [v1 uuid];
  sub_22A4DB79C();

  v21 = sub_22A4DB76C();
  v23 = v22;
  (*(v3 + 8))(v6, v2);
  v37 = v11;
  v35 = v21;
  v36 = v23;
  sub_229543C58(&v35, v33);
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v32 = v19;
  v24 = v34;
  v25 = __swift_mutable_project_boxed_opaque_existential_0(v33, v34);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2297FE940(*v28, v28[1], 0x696669746E656449, 0xEA00000000007265, v2, &v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v32;
}

uint64_t sub_22958ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_22958ED60;

  return sub_22958C334(a3, a4);
}

uint64_t sub_22958ED60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_22958D650;
  }

  else
  {
    v5 = sub_22958EE74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22958EE74()
{
  v17 = v0;
  v1 = v0[16];
  if (!v1)
  {
    v2 = v0[14];
    v1 = sub_22958E994();
  }

  v3 = v0[10];
  v4 = v0[11];
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v3;
  v0[3] = v4;
  sub_229543C58(v0 + 2, v0 + 6);

  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v16 = v1;
  v5 = v0[9];
  v6 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 6), v5);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v5);
  sub_2297FE940(*v9, v9[1], 0x656D614E6D6F6F52, 0xE800000000000000, v4, &v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  v10 = v16;
  v0[18] = v16;
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_22958D534;
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];

  return sub_22958F028(v10, v14, v12);
}

uint64_t sub_22958F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_22958F04C, 0, 0);
}

uint64_t sub_22958F04C()
{
  v1 = v0[14];
  v2 = sub_22981661C(v0[11]);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &unk_2814017A0, off_278666308);
  v0[6] = &off_283CDD0E8;
  v0[2] = v1;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[7] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22958D81C;
  v5 = v0[12];
  v6 = v0[13];

  return sub_229709F5C((v0 + 2), (v0 + 7), v5, v6);
}

uint64_t sub_22958F198()
{
  v1 = v0[7];
  v2 = sub_22958E2F0(0x53555F6E65, 0xE500000000000000);
  v0[8] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_22958F324;
    v7 = v0[7];

    return sub_22989B8C4(v4, v5);
  }

  else
  {
    v9 = v0[7];
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &unk_2814017A0, off_278666308);
    v0[6] = &off_283CDD0E8;
    v0[2] = v9;
    v10 = v9;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_22958DDA4;

    return sub_22970A4FC((v0 + 2), 0);
  }
}

uint64_t sub_22958F324()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22958DEE0;
  }

  else
  {
    v3 = sub_22958F438;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22958F438()
{
  v1 = v0[8];

  v2 = v0[7];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &unk_2814017A0, off_278666308);
  v0[6] = &off_283CDD0E8;
  v0[2] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_22958DDA4;

  return sub_22970A4FC((v0 + 2), 0);
}

uint64_t sub_22958F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_229569B30;

  return sub_22958ECB0(a1, a2, a3, a4);
}

id sub_22958F648()
{
  result = [objc_allocWithZone(MEMORY[0x277D0F8F8]) initWithMajorVersion:1 minorVersion:0 updateVersion:0];
  qword_27D8AB648 = result;
  return result;
}

id sub_22958F6B0(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_22958F6F4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4F0, &qword_22A578750);
  if (swift_dynamicCast())
  {
    sub_229557188(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    sub_22A4DB31C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_229590C48(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22A4DE25C();
  }

  sub_22958FCC0(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2295903E8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_22958FD88(sub_229590CB0);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_22A4DB5DC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2296172C0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22A4DD70C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22A4DD73C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22A4DE25C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2296172C0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22A4DD71C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_22A4DB5EC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_22A4DB5EC();
    sub_229590D18(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_229590D18(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_22956C148(*&__src[0], *(&__src[0] + 1));

  sub_2295798D4(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_22958FC04(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_229590330(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_229590488(v3, v4);
    }

    else
    {
      v6 = sub_229590504(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_22958FCC0@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_229590330(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_22A4DB28C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_22A4DB23C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22A4DB5CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_22958FD88(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_2295798D4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2295798D4(v6, v5);
    *v3 = xmmword_22A578710;
    sub_2295798D4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22A4DB24C() && __OFSUB__(v6, sub_22A4DB27C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_22A4DB28C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_22A4DB22C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_22959022C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_2295798D4(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_22A578710;
    sub_2295798D4(0, 0xC000000000000000);
    sub_22A4DB58C();
    result = sub_22959022C(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22959012C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_229590330(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_229590488(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_229590504(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2295901C0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22959022C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22A4DB24C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22A4DB27C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22A4DB26C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2295902E0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_22A4DE20C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_229590330(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2295903E8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_22A4DB28C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22A4DB25C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22A4DB5CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_229590488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22A4DB28C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22A4DB23C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22A4DB5CC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_229590504(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22A4DB28C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22A4DB23C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_229590588()
{
  v15 = MEMORY[0x277D84F90];
  v0 = 6;
  sub_229583334(0, 6, 0);
  v1 = v15;
  v2 = MEMORY[0x277D84B78];
  v3 = MEMORY[0x277D84BC0];
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22A576180;
    *(v4 + 56) = v2;
    *(v4 + 64) = v3;
    v14 = 0;
    MEMORY[0x22AAD4E70](&v14, 8);
    *(v4 + 32) = v14;
    v5 = sub_22A4DD61C();
    v15 = v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      v10 = v5;
      v11 = v6;
      sub_229583334((v7 > 1), v8 + 1, 1);
      v6 = v11;
      v5 = v10;
      v1 = v15;
    }

    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    --v0;
  }

  while (v0);
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  sub_229590C00(&qword_281401CA8, &qword_27D87E400, "ll\b");
  v12 = sub_22A4DD50C();

  return v12;
}

uint64_t sub_229590750(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4E0, &qword_22A578748);
  v10 = sub_229590C00(&qword_27D87D4E8, &qword_27D87D4E0, &qword_22A578748);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22959012C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_22959082C()
{
  v8 = MEMORY[0x277D84F90];
  v0 = 64;
  sub_2295836F4(0, 64, 0);
  v1 = v8;
  do
  {
    v7 = 0;
    MEMORY[0x22AAD4E70](&v7, 8);
    v2 = v7;
    v8 = v1;
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    if (v4 >= v3 >> 1)
    {
      sub_2295836F4((v3 > 1), v4 + 1, 1);
      v1 = v8;
    }

    *(v1 + 16) = v4 + 1;
    *(v1 + v4 + 32) = v2;
    --v0;
  }

  while (v0);
  v5 = sub_229590750(v1);

  return v5;
}

uint64_t sub_229590908()
{
  v30 = MEMORY[0x277D84F90];
  sub_2295836F4(0, 8, 0);
  v0 = v30;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v1 = v29;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v3 >= v2 >> 1)
  {
    sub_2295836F4((v2 > 1), v3 + 1, 1);
    v0 = v30;
  }

  *(v0 + 16) = v3 + 1;
  *(v0 + v3 + 32) = v1;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v4 = v29;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_2295836F4((v5 > 1), v6 + 1, 1);
    v0 = v30;
  }

  *(v0 + 16) = v6 + 1;
  *(v0 + v6 + 32) = v4;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v7 = v29;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_2295836F4((v8 > 1), v9 + 1, 1);
  }

  v10 = v30;
  *(v30 + 16) = v9 + 1;
  *(v10 + v9 + 32) = v7;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v11 = v29;
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_2295836F4((v12 > 1), v13 + 1, 1);
    v10 = v30;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + v13 + 32) = v11;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v14 = v29;
  v16 = *(v10 + 16);
  v15 = *(v10 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_2295836F4((v15 > 1), v16 + 1, 1);
    v10 = v30;
  }

  *(v10 + 16) = v16 + 1;
  *(v10 + v16 + 32) = v14;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v17 = v29;
  v19 = *(v10 + 16);
  v18 = *(v10 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_2295836F4((v18 > 1), v19 + 1, 1);
  }

  v20 = v30;
  *(v30 + 16) = v19 + 1;
  *(v20 + v19 + 32) = v17;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v21 = v29;
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_2295836F4((v22 > 1), v23 + 1, 1);
    v20 = v30;
  }

  *(v20 + 16) = v23 + 1;
  *(v20 + v23 + 32) = v21;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v24 = v29;
  v26 = *(v20 + 16);
  v25 = *(v20 + 24);
  if (v26 >= v25 >> 1)
  {
    sub_2295836F4((v25 > 1), v26 + 1, 1);
    v20 = v30;
  }

  *(v20 + 16) = v26 + 1;
  *(v20 + v26 + 32) = v24;
  v27 = sub_229590750(v20);

  return v27;
}

uint64_t sub_229590C00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_229590C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4F8, &qword_22A578758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_229590CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2295901C0(sub_229590D2C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_229590D18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2295798D4(a1, a2);
  }

  return a1;
}

void sub_229590D4C()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3E0, &unk_22A578560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A578760;
  *(inited + 32) = sub_22A4DD5AC();
  *(inited + 40) = sub_22A4DD5AC();
  *(inited + 48) = sub_22A4DD5AC();
  *(inited + 56) = sub_22A4DD5AC();
  *(inited + 64) = sub_22A4DD5AC();
  *(inited + 72) = sub_22A4DD5AC();
  v7 = sub_22A4DD5AC();
  v8 = *MEMORY[0x277CD0328];
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v9 = *MEMORY[0x277CD0320];
  *(inited + 96) = *MEMORY[0x277CD0320];
  *(inited + 104) = @"HMD.EL.reset";
  v29 = inited;
  v10 = v8;
  v11 = v9;
  v12 = @"HMD.EL.reset";
  if (isRetailDemoModeV2Enabled())
  {
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_22A576180;
    v14 = *MEMORY[0x277CD2080];
    *(v13 + 32) = *MEMORY[0x277CD2080];
    v15 = v14;
    sub_2296F0760(v13);
  }

  sub_22A4DDBFC();
  v16 = v0;
  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCCC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_229538000, v17, v18, "%@ Deregistering for messages in locked demo mode", v19, 0xCu);
    sub_22953EAE4(v20, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  v22 = v29;
  v23 = *(v29 + 16);
  if (v23)
  {
    v24 = 0;
    while (v24 < *(v22 + 16))
    {
      v25 = *(v22 + 32 + 8 * v24);
      v26 = [v16 messageDispatcher];
      if (!v26)
      {
        goto LABEL_12;
      }

      v27 = v26;
      ++v24;
      [v26 deregisterForMessage:v25 receiver:v16];

      if (v23 == v24)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

id sub_229591184()
{
  result = [v0 homes];
  if (result)
  {
    v2 = result;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v3 = sub_22A4DD83C();

    if (v3 >> 62)
    {
LABEL_16:
      v4 = sub_22A4DE0EC();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    do
    {
      v6 = v5;
      if (v4 == v5)
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = [v7 hasDemoAccessories];

      v5 = v6 + 1;
    }

    while (!v9);

    return (v4 != v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2295912D0(void *a1, uint64_t a2, SEL *a3)
{
  v5 = qword_27D87F8F8;
  if (qword_27D87F8F8)
  {
    v6 = a1;
    v7 = v5;
  }

  else
  {
    v8 = qword_281402220;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v7 = qword_281402230;
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  v10 = [v7 *a3];

  swift_unknownObjectRelease();
  return v10;
}

id sub_229591410()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    result = [v1 uuid];
    if (result)
    {
      v8 = result;
      sub_22A4DB79C();

      v9 = objc_allocWithZone(HMDApplicationData);
      v10 = sub_22A4DB77C();
      v11 = [v9 initWithParentUUID_];

      (*(v3 + 8))(v6, v2);
      return v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_229591558()
{
  result = sub_2297734A8(v0);
  if (result)
  {
    v2 = result;
    if (result[2] && (v3 = sub_229543DBC(0x4C746E6572727543, 0xED0000656C61636FLL), (v4 & 1) != 0))
    {
      sub_2295404B0(v2[7] + 32 * v3, v6);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_229591628()
{
  result = sub_2297734A8(v0);
  if (result)
  {
    v2 = result;
    if (result[2] && (v3 = sub_229543DBC(0x73656C61636F4CLL, 0xE700000000000000), (v4 & 1) != 0))
    {
      sub_2295404B0(v2[7] + 32 * v3, v6);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      if (swift_dynamicCast())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2295916F8(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  return MEMORY[0x2822009F8](sub_22959171C, 0, 0);
}

uint64_t sub_22959171C()
{
  v52 = v0;
  v1 = v0[48];
  v2 = sub_229591558();
  v4 = v3;
  v0[49] = v3;
  v0[50] = v2;
  v5 = sub_229591628();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    if (!v4)
    {
      v4 = 0xE500000000000000;
      v2 = 0x53555F6E65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22A576180;
    *(v6 + 32) = v2;
    *(v6 + 40) = v4;
  }

  v0[51] = v6;
  v7 = v0[47];
  if (v7)
  {
    v8 = v0[46];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22A576180;
    *(v6 + 32) = v8;
    *(v6 + 40) = v7;

    v14 = 1;
    goto LABEL_9;
  }

  v14 = *(v6 + 16);

  if (v14)
  {
LABEL_9:
    v0[52] = v6;
    v0[53] = v14;
    v0[62] = MEMORY[0x277D84F98];
    v0[54] = 0;
    if (*(v6 + 16))
    {
      v15 = v0[48];
      v16 = *(v6 + 32);
      v0[55] = v16;
      v17 = *(v6 + 40);
      v0[56] = v17;

      v9 = [v15 homes];
      if (v9)
      {
        v18 = v9;
        sub_229562F68(0, &qword_2814017B0, off_278666198);
        v19 = sub_22A4DD83C();
        v0[57] = v19;

        v0[43] = v19;
        v20 = swift_task_alloc();
        v0[58] = v20;
        *(v20 + 16) = v16;
        *(v20 + 24) = v17;
        v21 = *(MEMORY[0x277D0F010] + 4);
        v22 = swift_task_alloc();
        v0[59] = v22;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
        v13 = sub_229590C00(&qword_27D87D500, &qword_27D87F2F0, &qword_22A5787B0);
        *v22 = v0;
        v22[1] = sub_229591D68;
        v9 = &unk_22A5787D0;
        v10 = v20;
        v11 = v23;
        v12 = v24;

        return MEMORY[0x282167810](v9, v10, v11, v12, v13);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x282167810](v9, v10, v11, v12, v13);
  }

  v25 = MEMORY[0x277D84F98];
  if (*(MEMORY[0x277D84F98] + 16))
  {
    v26 = v0[50];
    v27 = v0[51];
    v28 = v0[49];
    if (!v28)
    {
      v28 = 0xE500000000000000;
      v26 = 0x53555F6E65;
    }

    v0[30] = MEMORY[0x277D837D0];
    v0[27] = v26;
    v0[28] = v28;
    sub_229543C58(v0 + 27, v0 + 31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v25;
    v30 = v0[34];
    v31 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 31), v30);
    v32 = *(v30 - 8);
    v33 = *(v32 + 64) + 15;
    v34 = swift_task_alloc();
    (*(v32 + 16))(v34, v31, v30);
    sub_2297FE940(*v34, v34[1], 0x4C746E6572727543, 0xED0000656C61636FLL, isUniquelyReferenced_nonNull_native, v51);
    __swift_destroy_boxed_opaque_existential_0(v0 + 31);

    v35 = v51[0];
    v0[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v0[35] = v27;
    sub_229543C58(v0 + 35, v0 + 39);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v35;
    v37 = v0[42];
    v38 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 39), v37);
    v39 = *(v37 - 8);
    v40 = *(v39 + 64) + 15;
    v41 = swift_task_alloc();
    (*(v39 + 16))(v41, v38, v37);
    sub_2297FEB3C(*v41, 0x73656C61636F4CLL, 0xE700000000000000, v36, v51);
    __swift_destroy_boxed_opaque_existential_0(v0 + 39);

    v42 = v51[0];
    v43 = v0[1];

    return v43(v42);
  }

  else
  {
    v45 = v0[51];
    v46 = v0[49];

    type metadata accessor for HMError(0);
    v0[45] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x6E6F73616552;
    v48 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD000000000000048;
    *(inited + 56) = 0x800000022A58AB30;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v48, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v49 = v0[44];
    swift_willThrow();
    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_229591D68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 472);
  v16 = *v2;
  v3[60] = a1;
  v3[61] = v1;

  if (v1)
  {
    v5 = v3[62];
    v6 = v3[57];
    v7 = v3[58];
    v8 = v3[56];
    v10 = v3[51];
    v9 = v3[52];
    v11 = v3[49];

    v12 = sub_2295926CC;
  }

  else
  {
    v13 = v3[57];
    v14 = v3[58];

    v12 = sub_229591EEC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_229591EEC(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = v5;
  v6 = 0;
  v7 = v5[60];
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = *(v7 + 32 + 8 * v6++);
    if (v10)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770((v11 > 1), v12 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v10;
    }
  }

  v13 = v5[60];

  if (v9[2])
  {
    v14 = v5[62];
    v16 = v5[55];
    v15 = v5[56];
    v17 = v5[53];
    v18 = v5[54] + 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881360, &qword_22A5787E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x73656D6F48;
    v20 = inited + 32;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    v21 = sub_22956AEBC(inited);
    swift_setDeallocating();
    sub_22953EAE4(v20, &qword_27D87D508, &qword_22A5787E8);
    v5[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D510, &unk_22A5787F0);
    v5[19] = v21;
    sub_229543C58(v5 + 19, v5 + 23);
    LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v14;
    v22 = v5[26];
    v23 = __swift_mutable_project_boxed_opaque_existential_0((v5 + 23), v22);
    v24 = *(v22 - 8);
    v25 = *(v24 + 64) + 15;
    v26 = swift_task_alloc();
    (*(v24 + 16))(v26, v23, v22);
    sub_2297FEB28(*v26, v16, v15, v21, v71);

    __swift_destroy_boxed_opaque_existential_0(v5 + 23);

    v27 = v71[0];
    if (v18 != v17)
    {
      v28 = v5[54];
      v5[62] = v71[0];
      goto LABEL_22;
    }
  }

  else
  {
    v29 = v5[56];
    v31 = v5[53];
    v30 = v5[54];

    if (v30 + 1 != v31)
    {
      v28 = v5[54];
LABEL_22:
      v52 = v28 + 1;
      v5[54] = v52;
      v53 = v5[52];
      if (v52 >= *(v53 + 16))
      {
        goto LABEL_31;
      }

      v54 = v5[48];
      v55 = v53 + 16 * v52;
      v56 = *(v55 + 32);
      v5[55] = v56;
      v57 = *(v55 + 40);
      v5[56] = v57;

      isUniquelyReferenced_nonNull_native = [v54 homes];
      if (isUniquelyReferenced_nonNull_native)
      {
        v58 = isUniquelyReferenced_nonNull_native;
        sub_229562F68(0, &qword_2814017B0, off_278666198);
        v59 = sub_22A4DD83C();
        v5[57] = v59;

        v5[43] = v59;
        v60 = swift_task_alloc();
        v5[58] = v60;
        *(v60 + 16) = v56;
        *(v60 + 24) = v57;
        v61 = *(MEMORY[0x277D0F010] + 4);
        v62 = swift_task_alloc();
        v5[59] = v62;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
        a5 = sub_229590C00(&qword_27D87D500, &qword_27D87F2F0, &qword_22A5787B0);
        *v62 = v5;
        v62[1] = sub_229591D68;
        isUniquelyReferenced_nonNull_native = &unk_22A5787D0;
        a2 = v60;
        a3 = v63;
        a4 = v64;
      }

      else
      {
LABEL_32:
        __break(1u);
      }

      return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
    }

    v27 = v5[62];
  }

  v32 = v5[52];

  if (*(v27 + 16))
  {
    v33 = v5[50];
    v34 = v5[51];
    v35 = v5[49];
    if (!v35)
    {
      v35 = 0xE500000000000000;
      v33 = 0x53555F6E65;
    }

    v5[30] = MEMORY[0x277D837D0];
    v5[27] = v33;
    v5[28] = v35;
    sub_229543C58(v5 + 27, v5 + 31);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v27;
    v37 = v5[34];
    v38 = __swift_mutable_project_boxed_opaque_existential_0((v5 + 31), v37);
    v39 = *(v37 - 8);
    v40 = *(v39 + 64) + 15;
    v41 = swift_task_alloc();
    (*(v39 + 16))(v41, v38, v37);
    sub_2297FE940(*v41, v41[1], 0x4C746E6572727543, 0xED0000656C61636FLL, v36, v71);
    __swift_destroy_boxed_opaque_existential_0(v5 + 31);

    v42 = v71[0];
    v5[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v5[35] = v34;
    sub_229543C58(v5 + 35, v5 + 39);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v42;
    v44 = v5[42];
    v45 = __swift_mutable_project_boxed_opaque_existential_0((v5 + 39), v44);
    v46 = *(v44 - 8);
    v47 = *(v46 + 64) + 15;
    v48 = swift_task_alloc();
    (*(v46 + 16))(v48, v45, v44);
    sub_2297FEB3C(*v48, 0x73656C61636F4CLL, 0xE700000000000000, v43, v71);
    __swift_destroy_boxed_opaque_existential_0(v5 + 39);

    v49 = v71[0];
    v50 = v5[1];

    return v50(v49);
  }

  else
  {
    v65 = v5[51];
    v66 = v5[49];

    type metadata accessor for HMError(0);
    v5[45] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_22A576180;
    *(v67 + 32) = 0x6E6F73616552;
    v68 = v67 + 32;
    *(v67 + 72) = MEMORY[0x277D837D0];
    *(v67 + 40) = 0xE600000000000000;
    *(v67 + 48) = 0xD000000000000048;
    *(v67 + 56) = 0x800000022A58AB30;
    sub_22956AD8C(v67);
    swift_setDeallocating();
    sub_22953EAE4(v68, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v69 = v5[44];
    swift_willThrow();
    v70 = v5[1];

    return v70();
  }
}

uint64_t sub_2295926E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_229592790;

  return sub_229808024(a3, a4);
}

uint64_t sub_229592790(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2295928DC, 0, 0);
  }
}

id sub_229592900(uint64_t a1, uint64_t a2)
{
  v5 = sub_229591558();
  v148 = MEMORY[0x277D837D0];
  v7 = 0x53555F6E65;
  if (v6)
  {
    v7 = v5;
  }

  v8 = 0xE500000000000000;
  if (v6)
  {
    v8 = v6;
  }

  *&v147 = v7;
  *(&v147 + 1) = v8;
  sub_229543C58(&v147, v156);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v155 = v9;
  v11 = v157;
  v12 = __swift_mutable_project_boxed_opaque_existential_0(v156, v157);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_2297FE940(*v15, v15[1], 0x4C746E6572727543, 0xED0000656C61636FLL, isUniquelyReferenced_nonNull_native, &v155);
  __swift_destroy_boxed_opaque_existential_0(v156);
  v17 = v155;
  v158 = v155;
  v137 = v2;
  v18 = sub_229591628();
  if (!v18)
  {
    sub_2297FCFD4(0x73656C61636F4CLL, 0xE700000000000000, &v147);
    sub_22953EAE4(&v147, &unk_27D87FC20, &unk_22A578810);
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_9:
    v29 = sub_229591628();
    if (v29)
    {
      v27 = v29;
    }

    else
    {
      v27 = &unk_283CDA418;
    }

    v30 = v27[2];

    v135 = v30;
    if (!v30)
    {
      goto LABEL_59;
    }

    goto LABEL_13;
  }

  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v148 = v20;
  *&v147 = v19;
  sub_229543C58(&v147, v156);
  LOBYTE(v19) = swift_isUniquelyReferenced_nonNull_native();
  v155 = v17;
  v21 = v157;
  v22 = __swift_mutable_project_boxed_opaque_existential_0(v156, v157);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  sub_2297FF768(v25, 0x73656C61636F4CLL, 0xE700000000000000, v19, &v155, v20);
  __swift_destroy_boxed_opaque_existential_0(v156);
  v158 = v155;
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v27 = swift_allocObject();
  *(v27 + 1) = xmmword_22A576180;
  v27[4] = a1;
  v27[5] = a2;

  v135 = 1;
LABEL_13:
  v31 = 0;
  v136 = v27 + 4;
  v133 = &unk_22A587F90;
  v134 = v27;
  while (1)
  {
    if (v31 >= v27[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      return result;
    }

    v42 = &v136[2 * v31];
    v43 = v42[1];
    v145 = *v42;
    v154 = MEMORY[0x277D84FA0];
    v155 = MEMORY[0x277D84FA0];
    v152 = MEMORY[0x277D84FA0];
    v153 = MEMORY[0x277D84FA0];
    v150 = MEMORY[0x277D84FA0];
    v151 = MEMORY[0x277D84FA0];

    result = [v137 homes];
    if (!result)
    {
      goto LABEL_70;
    }

    v44 = result;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v45 = sub_22A4DD83C();

    v46 = v45 >> 62 ? sub_22A4DE0EC() : *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v144 = v31;

    if (v46)
    {
      break;
    }

LABEL_29:

    v51 = v155;
    v52 = *(v155 + 16);
    v143 = v155;
    if (v52)
    {
      v53 = sub_229714EC0(v52, 0);
      v54 = sub_229715134(&v147, v53 + 4, v52, v51);

      result = sub_22953EE84();
      if (v54 != v52)
      {
        goto LABEL_64;
      }

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v157 = v55;
      v156[0] = v53;
      sub_229543C58(v156, &v147);
      v56 = MEMORY[0x277D84F98];
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v56;
      v58 = v148;
      v59 = __swift_mutable_project_boxed_opaque_existential_0(&v147, v148);
      v60 = *(*(v58 - 8) + 64);
      MEMORY[0x28223BE20](v59);
      v62 = &v132 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v63 + 16))(v62);
      sub_2297FF768(v62, 0x656D614E656D6F48, 0xE900000000000073, v57, &v146, v55);
      __swift_destroy_boxed_opaque_existential_0(&v147);
      v149 = v146;
      v64 = v154;
    }

    else
    {
      v64 = v154;
      if (!*(v154 + 16) && !*(v153 + 16) && !*(v152 + 16) && !*(v151 + 16))
      {

        type metadata accessor for HMError(0);
        v144 = v129;
        v156[0] = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
        v130 = swift_allocObject();
        *(v130 + 32) = 0x6E6F73616552;
        *(v130 + 16) = xmmword_22A576180;
        *(v130 + 40) = 0xE600000000000000;
        *&v147 = 0;
        *(&v147 + 1) = 0xE000000000000000;
        sub_22A4DE1FC();
        MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A58AB80);
        MEMORY[0x22AAD08C0](v145, v43);

        MEMORY[0x22AAD08C0](0xD000000000000024, 0x800000022A58ABB0);
        v131 = v147;
        *(v130 + 72) = MEMORY[0x277D837D0];
        *(v130 + 48) = v131;
        sub_22956AD8C(v130);
        swift_setDeallocating();
        sub_22953EAE4(v130 + 32, &qword_27D87CDA0, &unk_22A57A930);
        swift_deallocClassInstance();
        sub_22958E108();
        sub_22A4DB3CC();
        swift_willThrow();
        v41 = v150;

        return v41;
      }

      v149 = MEMORY[0x277D84F98];
      sub_2297FCFD4(0x656D614E656D6F48, 0xE900000000000073, &v147);
      sub_22953EAE4(&v147, &unk_27D87FC20, &unk_22A578810);
    }

    v65 = *(v64 + 16);
    v142 = v64;
    if (v65)
    {
      v66 = sub_229714EC0(v65, 0);
      v67 = sub_229715134(&v147, v66 + 4, v65, v64);

      result = sub_22953EE84();
      if (v67 != v65)
      {
        goto LABEL_65;
      }

      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v148 = v68;
      *&v147 = v66;
      sub_229543C58(&v147, v156);
      v69 = v149;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v69;
      v71 = v157;
      v72 = __swift_mutable_project_boxed_opaque_existential_0(v156, v157);
      v73 = *(*(v71 - 8) + 64);
      MEMORY[0x28223BE20](v72);
      v75 = &v132 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v76 + 16))(v75);
      sub_2297FF768(v75, 0x726F737365636341, 0xEE0073656D614E79, v70, &v146, v68);
      __swift_destroy_boxed_opaque_existential_0(v156);
      v149 = v146;
    }

    else
    {
      sub_2297FCFD4(0x726F737365636341, 0xEE0073656D614E79, &v147);
      sub_22953EAE4(&v147, &unk_27D87FC20, &unk_22A578810);
    }

    v77 = v153;
    v78 = *(v153 + 16);
    v141 = v153;
    if (v78)
    {
      v79 = sub_229714EC0(v78, 0);
      v80 = sub_229715134(&v147, v79 + 4, v78, v77);

      result = sub_22953EE84();
      if (v80 != v78)
      {
        goto LABEL_66;
      }

      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v148 = v81;
      *&v147 = v79;
      sub_229543C58(&v147, v156);
      v82 = v149;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v82;
      v84 = v157;
      v85 = __swift_mutable_project_boxed_opaque_existential_0(v156, v157);
      v86 = *(*(v84 - 8) + 64);
      MEMORY[0x28223BE20](v85);
      v88 = &v132 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v89 + 16))(v88);
      sub_2297FF768(v88, 0x656D614E6D6F6F52, 0xE900000000000073, v83, &v146, v81);
      __swift_destroy_boxed_opaque_existential_0(v156);
      v149 = v146;
    }

    else
    {
      sub_2297FCFD4(0x656D614E6D6F6F52, 0xE900000000000073, &v147);
      sub_22953EAE4(&v147, &unk_27D87FC20, &unk_22A578810);
    }

    v90 = v152;
    v91 = *(v152 + 16);
    v140 = v152;
    if (v91)
    {
      v92 = sub_229714EC0(v91, 0);
      v93 = sub_229715134(&v147, v92 + 4, v91, v90);

      result = sub_22953EE84();
      if (v93 != v91)
      {
        goto LABEL_67;
      }

      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v148 = v94;
      *&v147 = v92;
      sub_229543C58(&v147, v156);
      v95 = v149;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v95;
      v97 = v157;
      v98 = __swift_mutable_project_boxed_opaque_existential_0(v156, v157);
      v99 = *(*(v97 - 8) + 64);
      MEMORY[0x28223BE20](v98);
      v101 = &v132 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v102 + 16))(v101);
      sub_2297FF768(v101, 0x6D614E656E656353, 0xEA00000000007365, v96, &v146, v94);
      __swift_destroy_boxed_opaque_existential_0(v156);
      v149 = v146;
    }

    else
    {
      sub_2297FCFD4(0x6D614E656E656353, 0xEA00000000007365, &v147);
      sub_22953EAE4(&v147, &unk_27D87FC20, &unk_22A578810);
    }

    v103 = v151;
    v104 = *(v151 + 16);
    v139 = v151;
    if (v104)
    {
      v105 = sub_229714EC0(v104, 0);
      v106 = sub_229715134(&v147, v105 + 4, v104, v103);

      result = sub_22953EE84();
      if (v106 != v104)
      {
        goto LABEL_68;
      }

      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v148 = v107;
      *&v147 = v105;
      sub_229543C58(&v147, v156);
      v108 = v149;
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v108;
      v110 = v157;
      v111 = __swift_mutable_project_boxed_opaque_existential_0(v156, v157);
      v112 = *(*(v110 - 8) + 64);
      MEMORY[0x28223BE20](v111);
      v114 = &v132 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v115 + 16))(v114);
      sub_2297FF768(v114, 0x4E65636976726553, 0xEC00000073656D61, v109, &v146, v107);
      __swift_destroy_boxed_opaque_existential_0(v156);
      v149 = v146;
    }

    else
    {
      sub_2297FCFD4(0x4E65636976726553, 0xEC00000073656D61, &v147);
      sub_22953EAE4(&v147, &unk_27D87FC20, &unk_22A578810);
    }

    v116 = v150;
    v117 = *(v150 + 16);
    if (v117)
    {
      v118 = sub_229714EC0(*(v150 + 16), 0);
      v119 = sub_229715134(&v147, v118 + 4, v117, v116);
      v138 = v116;

      result = sub_22953EE84();
      if (v119 != v117)
      {
        goto LABEL_69;
      }

      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v148 = v120;
      *&v147 = v118;
      sub_229543C58(&v147, v156);
      v121 = v149;
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v121;
      v123 = v157;
      v124 = __swift_mutable_project_boxed_opaque_existential_0(v156, v157);
      v125 = *(*(v123 - 8) + 64);
      MEMORY[0x28223BE20](v124);
      v127 = &v132 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v128 + 16))(v127);
      sub_2297FF768(v127, 0xD000000000000014, v133 | 0x8000000000000000, v122, &v146, v120);
      __swift_destroy_boxed_opaque_existential_0(v156);
      v32 = v146;
    }

    else
    {
      sub_2297FCFD4(0xD000000000000014, v133 | 0x8000000000000000, &v147);
      sub_22953EAE4(&v147, &unk_27D87FC20, &unk_22A578810);
      v32 = v149;
    }

    v31 = v144 + 1;
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    *&v147 = v32;
    sub_229543C58(&v147, v156);
    v33 = v158;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v33;
    v35 = v157;
    v36 = __swift_mutable_project_boxed_opaque_existential_0(v156, v157);
    v37 = *(*(v35 - 8) + 64);
    MEMORY[0x28223BE20](v36);
    v39 = (&v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    sub_2297FED6C(*v39, v145, v43, v34, &v146);

    __swift_destroy_boxed_opaque_existential_0(v156);

    v41 = v146;
    v158 = v146;

    v27 = v134;
    if (v31 == v135)
    {
      goto LABEL_60;
    }
  }

  v47 = 0;
  while (1)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x22AAD13F0](v47, v45);
    }

    else
    {
      if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v48 = *(v45 + 8 * v47 + 32);
    }

    v49 = v48;
    v50 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    *&v147 = v48;
    sub_229593C58(&v147, v145, v43);

    ++v47;
    if (v50 == v46)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v41 = v158;
LABEL_60:

  return v41;
}

id sub_229593C58(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v107 = a3;
  v100 = v3;
  v4 = sub_229809210(a2, a3);
  if (v5)
  {
    sub_229570788(&v106, v4, v5);
  }

  v6 = [v3 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
LABEL_33:
    v8 = sub_22A4DE0EC();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_34:
    v97 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_34;
  }

LABEL_5:
  v9 = 0;
  v97 = MEMORY[0x277D84F90];
  do
  {
    v10 = v9;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v13 = sub_229773768(v11);
      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = v13;
      if (!*(v13 + 16) || (v15 = sub_229543DBC(a2, v107), (v16 & 1) == 0))
      {

LABEL_8:

        goto LABEL_9;
      }

      sub_2295404B0(*(v14 + 56) + 32 * v15, &v106);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      if (!*(v104 + 16) || (v17 = sub_229543DBC(0x726F737365636341, 0xED0000656D614E79), (v18 & 1) == 0))
      {

        goto LABEL_9;
      }

      sub_2295404B0(*(v104 + 56) + 32 * v17, &v106);

      if (swift_dynamicCast())
      {
        break;
      }

LABEL_9:
      ++v10;
      if (v9 == v8)
      {
        goto LABEL_35;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v97 = sub_22958A53C(0, *(v97 + 2) + 1, 1, v97);
    }

    v21 = *(v97 + 2);
    v20 = *(v97 + 3);
    if (v21 >= v20 >> 1)
    {
      v97 = sub_22958A53C((v20 > 1), v21 + 1, 1, v97);
    }

    *(v97 + 2) = v21 + 1;
    v22 = &v97[16 * v21];
    *(v22 + 4) = v104;
    *(v22 + 5) = v105;
  }

  while (v9 != v8);
LABEL_35:

  sub_22959CFB4(v97);

  v23 = [v100 rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v24 = sub_22A4DD83C();

  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_37;
    }

LABEL_65:
    v27 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

  while (2)
  {
    v25 = sub_22A4DE0EC();
    if (!v25)
    {
      goto LABEL_65;
    }

LABEL_37:
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
LABEL_38:
    v98 = v27;
    v28 = v26;
LABEL_39:
    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x22AAD13F0](v28, v24);
    }

    else
    {
      if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v29 = *(v24 + 8 * v28 + 32);
    }

    v30 = v29;
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      continue;
    }

    break;
  }

  v31 = sub_229773768(v29);
  if (!v31)
  {
    goto LABEL_52;
  }

  v32 = v31;
  if (!*(v31 + 16))
  {
    goto LABEL_51;
  }

  v33 = sub_229543DBC(a2, v107);
  if ((v34 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_2295404B0(*(v32 + 56) + 32 * v33, &v106);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:

LABEL_53:
    ++v28;
    if (v26 == v25)
    {
      v27 = v98;
      goto LABEL_66;
    }

    goto LABEL_39;
  }

  if (!*(v104 + 16) || (v35 = sub_229543DBC(0x656D614E6D6F6F52, 0xE800000000000000), (v36 & 1) == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  sub_2295404B0(*(v104 + 56) + 32 * v35, &v106);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_53;
  }

  v37 = v98;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  if ((v38 & 1) == 0)
  {
    v37 = sub_22958A53C(0, *(v98 + 16) + 1, 1, v98);
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  v41 = v37;
  if (v40 >= v39 >> 1)
  {
    v41 = sub_22958A53C((v39 > 1), v40 + 1, 1, v37);
  }

  *(v41 + 2) = v40 + 1;
  v42 = &v41[16 * v40];
  v27 = v41;
  *(v42 + 4) = v104;
  *(v42 + 5) = v105;
  if (v26 != v25)
  {
    goto LABEL_38;
  }

LABEL_66:

  sub_22959CFB4(v27);

  result = [v100 actionSets];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v44 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v45 = sub_22A4DD83C();

  if (!(v45 >> 62))
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_69;
    }

LABEL_97:
    v48 = MEMORY[0x277D84F90];
    goto LABEL_98;
  }

  while (2)
  {
    v46 = sub_22A4DE0EC();
    if (!v46)
    {
      goto LABEL_97;
    }

LABEL_69:
    v47 = 0;
    v48 = MEMORY[0x277D84F90];
LABEL_70:
    v99 = v48;
    v49 = v47;
LABEL_71:
    if ((v45 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x22AAD13F0](v49, v45);
    }

    else
    {
      if (v49 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v50 = *(v45 + 8 * v49 + 32);
    }

    v51 = v50;
    v47 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_95:
      __break(1u);
      continue;
    }

    break;
  }

  v52 = sub_229773768(v50);
  if (!v52)
  {
    goto LABEL_84;
  }

  v53 = v52;
  if (!*(v52 + 16))
  {
    goto LABEL_83;
  }

  v54 = sub_229543DBC(a2, v107);
  if ((v55 & 1) == 0)
  {
    goto LABEL_83;
  }

  sub_2295404B0(*(v53 + 56) + 32 * v54, &v106);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_84:

LABEL_85:
    ++v49;
    if (v47 == v46)
    {
      goto LABEL_98;
    }

    goto LABEL_71;
  }

  if (!*(v104 + 16) || (v56 = sub_229543DBC(0x6D614E656E656353, 0xE900000000000065), (v57 & 1) == 0))
  {
LABEL_83:

    goto LABEL_84;
  }

  sub_2295404B0(*(v104 + 56) + 32 * v56, &v106);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_85;
  }

  v58 = swift_isUniquelyReferenced_nonNull_native();
  if ((v58 & 1) == 0)
  {
    v99 = sub_22958A53C(0, *(v48 + 16) + 1, 1, v48);
  }

  v60 = *(v99 + 2);
  v59 = *(v99 + 3);
  if (v60 >= v59 >> 1)
  {
    v99 = sub_22958A53C((v59 > 1), v60 + 1, 1, v99);
  }

  *(v99 + 2) = v60 + 1;
  v61 = &v99[16 * v60];
  *(v61 + 4) = v104;
  *(v61 + 5) = v105;
  v48 = v99;
  if (v47 != v46)
  {
    goto LABEL_70;
  }

LABEL_98:

  sub_22959CFB4(v48);

  v62 = [v100 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v63 = sub_22A4DD83C();

  v64 = sub_22954B4DC(v63);
  v65 = v95;

  if (v64 >> 62)
  {
LABEL_128:
    v66 = sub_22A4DE0EC();
    if (!v66)
    {
      goto LABEL_129;
    }

LABEL_100:
    v67 = 0;
    v68 = MEMORY[0x277D84F90];
    v96 = v65;
LABEL_101:
    v101 = v68;
    v69 = v67;
    while (1)
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x22AAD13F0](v69, v64);
      }

      else
      {
        if (v69 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_127;
        }

        v70 = *(v64 + 8 * v69 + 32);
      }

      v65 = v70;
      v67 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v71 = sub_229773768(v70);
      if (!v71)
      {
        goto LABEL_103;
      }

      v72 = v71;
      if (!*(v71 + 16))
      {
        break;
      }

      v73 = sub_229543DBC(a2, v107);
      if ((v74 & 1) == 0)
      {
        break;
      }

      sub_2295404B0(*(v72 + 56) + 32 * v73, &v106);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_103;
      }

      if (*(v104 + 16) && (v75 = sub_229543DBC(0x4E65636976726553, 0xEB00000000656D61), (v76 & 1) != 0))
      {
        sub_2295404B0(*(v104 + 56) + 32 * v75, &v106);

        if (swift_dynamicCast())
        {
          v77 = v101;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          if ((v78 & 1) == 0)
          {
            v77 = sub_22958A53C(0, *(v101 + 2) + 1, 1, v101);
          }

          v80 = *(v77 + 2);
          v79 = *(v77 + 3);
          v81 = v77;
          if (v80 >= v79 >> 1)
          {
            v81 = sub_22958A53C((v79 > 1), v80 + 1, 1, v77);
          }

          *(v81 + 2) = v80 + 1;
          v82 = &v81[16 * v80];
          v68 = v81;
          *(v82 + 4) = v104;
          *(v82 + 5) = v105;
          v65 = v96;
          if (v67 == v66)
          {
            goto LABEL_130;
          }

          goto LABEL_101;
        }
      }

      else
      {
      }

LABEL_104:
      ++v69;
      if (v67 == v66)
      {
        v68 = v101;
        goto LABEL_130;
      }
    }

LABEL_103:

    goto LABEL_104;
  }

  v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v66)
  {
    goto LABEL_100;
  }

LABEL_129:
  v68 = MEMORY[0x277D84F90];
LABEL_130:
  sub_22959CFB4(v68);

  v83 = sub_229594ED8(v64);

  if (v83 >> 62)
  {
LABEL_148:
    v84 = sub_22A4DE0EC();
  }

  else
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = 0;
  v102 = MEMORY[0x277D84F90];
  while (v84 != v85)
  {
    if ((v83 & 0xC000000000000001) != 0)
    {
      v86 = MEMORY[0x22AAD13F0](v85, v83);
    }

    else
    {
      if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_147;
      }

      v86 = *(v83 + 8 * v85 + 32);
    }

    v87 = v86;
    v88 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v89 = sub_22970DF2C(a2, v107);
    v91 = v90;

    ++v85;
    if (v91)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_22958A53C(0, *(v102 + 2) + 1, 1, v102);
      }

      v93 = *(v102 + 2);
      v92 = *(v102 + 3);
      if (v93 >= v92 >> 1)
      {
        v102 = sub_22958A53C((v92 > 1), v93 + 1, 1, v102);
      }

      *(v102 + 2) = v93 + 1;
      v94 = &v102[16 * v93];
      *(v94 + 4) = v89;
      *(v94 + 5) = v91;
      v85 = v88;
    }
  }

  sub_22959CFB4(v102);
}

uint64_t sub_2295948C4(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  v14 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  for (i = (v15 + 63) >> 6; v17; result = sub_22959E6E0(v10))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_22959E67C(*(a1 + 48) + *(v3 + 72) * (v20 | (v19 << 6)), v13);
    sub_22959E73C(v13, v7);
    sub_2295708D8(v10, v7);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229594AA4(uint64_t a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_22957198C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_229594CE4(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229562F68(0, a2, a3);
    sub_22959E62C(a4, a2, a3);
    sub_22A4DDBAC();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_22953EE84();
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22A4DE12C())
      {
        sub_229562F68(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_229594ED8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject characteristics];
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v8 = sub_22A4DD83C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_22A4DE0EC();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_229590C00(&qword_27D87D518, &unk_27D880960, &qword_22A578820);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
              v20 = sub_22958C03C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22959526C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_229562F68(0, &qword_281401C30, off_278665FE8);
      v8 = sub_22A4DD83C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_22A4DE0EC();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_229590C00(&qword_27D881EC0, &qword_27D87D548, &unk_22A578880);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D548, &unk_22A578880);
              v20 = sub_22958C03C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_229595600(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject rooms];
      sub_229562F68(0, &unk_2814017A0, off_278666308);
      v8 = sub_22A4DD83C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_22A4DE0EC();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_229590C00(&qword_27D87D550, &qword_27D87C3D0, &qword_22A576EA8);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D0, &qword_22A576EA8);
              v20 = sub_22958C03C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

id sub_229595994(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
LABEL_48:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_3:
      v2 = 0;
      v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
      v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
      v27 = isUniquelyReferenced_nonNull_bridgeObject;
      v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
      v3 = MEMORY[0x277D84F90];
      v28 = v1;
      while (1)
      {
        if (v31)
        {
          isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v27);
        }

        else
        {
          if (v2 >= *(v30 + 16))
          {
            goto LABEL_43;
          }

          isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
        }

        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }

        result = [isUniquelyReferenced_nonNull_bridgeObject actionSets];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v8 = result;
        sub_229562F68(0, &qword_281401C20, off_278666020);
        v9 = sub_22A4DD83C();

        v10 = v9 >> 62;
        if (v9 >> 62)
        {
          v11 = sub_22A4DE0EC();
        }

        else
        {
          v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = v3 >> 62;
        if (v3 >> 62)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
          v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
          {
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
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        else
        {
          isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
          {
            goto LABEL_41;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v32 = v6;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (v12)
          {
            goto LABEL_22;
          }

          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v12)
          {
LABEL_22:
            sub_22A4DE0EC();
            goto LABEL_23;
          }

          v14 = v3 & 0xFFFFFFFFFFFFFF8;
        }

        v15 = *(v14 + 16);
LABEL_23:
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
        v3 = isUniquelyReferenced_nonNull_bridgeObject;
        v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
        v34 = v3;
        v16 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v10)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
          v18 = isUniquelyReferenced_nonNull_bridgeObject;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
LABEL_4:

            v3 = v34;
            if (v11 > 0)
            {
              goto LABEL_44;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v18)
          {
            goto LABEL_4;
          }
        }

        if (((v17 >> 1) - v16) < v11)
        {
          goto LABEL_45;
        }

        v19 = v14 + 8 * v16 + 32;
        if (v10)
        {
          if (v18 < 1)
          {
            goto LABEL_47;
          }

          sub_229590C00(&qword_27D87D560, &qword_27D87D558, &unk_22A578890);
          for (i = 0; i != v18; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D558, &unk_22A578890);
            v21 = sub_22958C03C(v33, i, v9);
            v23 = *v22;
            (v21)(v33, 0);
            *(v19 + 8 * i) = v23;
          }
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v1 = v28;
        v3 = v34;
        if (v11 >= 1)
        {
          v24 = *(v14 + 16);
          v5 = __OFADD__(v24, v11);
          v25 = v24 + v11;
          if (v5)
          {
            goto LABEL_46;
          }

          *(v14 + 16) = v25;
        }

LABEL_5:
        v2 = v32;
        if (v32 == v1)
        {
          return v3;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229595D30(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_229595D50, 0, 0);
}

uint64_t sub_229595D50()
{
  v1 = sub_22959D130(v0[15]);
  v0[17] = v1;
  v2 = v0[15];
  if (*(v1 + 16))
  {
    v3 = v0[16];
    v0[12] = v1;
    v4 = swift_task_alloc();
    v0[18] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = *(MEMORY[0x277D0F008] + 4);
    v6 = swift_task_alloc();
    v0[19] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v8 = sub_229590C00(&qword_27D87D530, &qword_27D87E400, "ll\b");
    *v6 = v0;
    v6[1] = sub_22959608C;

    return MEMORY[0x282167808](&unk_22A5788D0, v4, v7, v8);
  }

  else
  {

    type metadata accessor for HMError(0);
    v0[14] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000028, 0x800000022A58AC50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v10 = MEMORY[0x277D837D0];
    v11 = sub_22A4DD4DC();
    MEMORY[0x22AAD08C0](v11);

    v12 = MEMORY[0x22AAD08C0](0xD000000000000011, 0x800000022A58AC80);
    MEMORY[0x22AACE9F0](v12);
    v13 = MEMORY[0x22AAD0A20]();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    *(inited + 72) = v10;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v16 = v0[13];
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22959608C()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2295961D4, 0, 0);
  }

  else
  {
    v4 = v3[17];
    v5 = v3[18];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2295961D4()
{
  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[20];
  v4 = v0[1];

  return v4();
}

uint64_t sub_229596240(void *a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v4 = a1[1];
  v3[27] = *a1;
  v3[28] = v4;
  return MEMORY[0x2822009F8](sub_229596268, 0, 0);
}

uint64_t sub_229596268()
{
  if (*(*(v0 + 200) + 16) && (v1 = sub_229543DBC(*(v0 + 216), *(v0 + 224)), (v2 & 1) != 0) && (sub_2295404B0(*(*(v0 + 200) + 56) + 32 * v1, v0 + 96), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(v0 + 176);
    if (*(v3 + 16) && (v4 = sub_229543DBC(0x73656D6F48, 0xE500000000000000), (v5 & 1) != 0))
    {
      sub_2295404B0(*(v3 + 56) + 32 * v4, v0 + 128);

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 224);
        v19 = *(v0 + 208);
        v8 = *(v0 + 184);
        *(v0 + 232) = v8;
        *(v0 + 192) = v8;
        v9 = swift_task_alloc();
        *(v0 + 240) = v9;
        *(v9 + 16) = v19;
        *(v9 + 32) = v7;
        v10 = *(MEMORY[0x277D0F008] + 4);
        v11 = swift_task_alloc();
        *(v0 + 248) = v11;
        v12 = sub_229590C00(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v11 = v0;
        v11[1] = sub_2295965EC;

        return MEMORY[0x282167808](&unk_22A5788E0, v9, v6, v12);
      }
    }

    else
    {
    }

    v17 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    type metadata accessor for HMError(0);
    *(v0 + 168) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    MEMORY[0x22AAD08C0](v14, v13);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x800000022A58ACA0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v16 = *(v0 + 160);
    swift_willThrow();
    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_2295965EC()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229596734, 0, 0);
  }

  else
  {
    v4 = v3[29];
    v5 = v3[30];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_229596734()
{
  v1 = v0[29];
  v2 = v0[30];

  v3 = v0[32];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2295967A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a2;
  v4[15] = a3;
  v5 = *a1;
  v4[16] = a4;
  v4[17] = v5;
  return MEMORY[0x2822009F8](sub_2295967C8, 0, 0);
}

uint64_t sub_2295967C8()
{
  v1 = v0[14];
  v2 = sub_229596C30(v0[17]);
  v0[18] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_229596A54;
    v4 = v0[17];

    return sub_22980934C(v4);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    type metadata accessor for HMError(0);
    v0[13] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000002FLL, 0x800000022A58ACD0);
    MEMORY[0x22AAD08C0](v8, v7);
    MEMORY[0x22AAD08C0](0xD000000000000015, 0x800000022A58AD00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v10 = MEMORY[0x277D837D0];
    v11 = sub_22A4DD4AC();
    MEMORY[0x22AAD08C0](v11);

    *(inited + 72) = v10;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v12 = v0[12];
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_229596A54()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_229596BCC;
  }

  else
  {
    v3 = sub_229596B68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229596B68()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229596BCC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2();
}

id sub_229596C30(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-v6];
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v13 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
    if (v14)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v13, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        sub_22A4DB75C();

        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          sub_22953EAE4(v7, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          (*(v9 + 32))(v12, v7, v8);
          v15 = sub_22A4DB77C();
          v16 = [v2 _homeWithUUID_];

          (*(v9 + 8))(v12, v8);
          result = v16;
          if (v16)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

void *sub_229596E6C()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_229591558();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53555F6E65;
  }

  v66 = MEMORY[0x277D837D0];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v65[0] = v7;
  v65[1] = v8;
  sub_229543C58(v65, v63);

  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v9;
  v11 = v64;
  v12 = __swift_mutable_project_boxed_opaque_existential_0(v63, v64);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_2297FE940(*v15, v15[1], 0x4C746E6572727543, 0xED0000656C61636FLL, isUniquelyReferenced_nonNull_native, &v62);
  __swift_destroy_boxed_opaque_existential_0(v63);
  v17 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881360, &qword_22A5787E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = 0x73656D6F48;
  v19 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  result = [v0 homes];
  if (!result)
  {
    goto LABEL_26;
  }

  v21 = result;
  v58 = v0;
  v59 = v2;

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v22 = sub_22A4DD83C();

  if (v22 >> 62)
  {
    v23 = sub_22A4DE0EC();
    v60 = v1;
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v60 = v1;
    if (v23)
    {
LABEL_10:
      v65[0] = MEMORY[0x277D84F90];
      result = sub_229583714(0, v23 & ~(v23 >> 63), 0);
      if ((v23 & 0x8000000000000000) == 0)
      {
        v56 = inited + 32;
        v57 = v17;
        v24 = 0;
        v25 = v65[0];
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x22AAD13F0](v24, v22);
          }

          else
          {
            v26 = *(v22 + 8 * v24 + 32);
          }

          v27 = v26;
          v28 = sub_22980CAD8();

          v65[0] = v25;
          v30 = *(v25 + 16);
          v29 = *(v25 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_229583714((v29 > 1), v30 + 1, 1);
            v25 = v65[0];
          }

          ++v24;
          *(v25 + 16) = v30 + 1;
          *(v25 + 8 * v30 + 32) = v28;
        }

        while (v23 != v24);

        v17 = v57;
        v19 = v56;
        goto LABEL_21;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_21:
  *(inited + 48) = v25;
  v31 = sub_22956AEBC(inited);
  swift_setDeallocating();
  sub_22953EAE4(v19, &qword_27D87D508, &qword_22A5787E8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D510, &unk_22A5787F0);
  v65[0] = v31;
  sub_229543C58(v65, v63);
  LOBYTE(v31) = swift_isUniquelyReferenced_nonNull_native();
  v62 = v17;
  v32 = v64;
  v33 = __swift_mutable_project_boxed_opaque_existential_0(v63, v64);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (&v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  sub_2297FEB28(*v36, 0x53555F6E65, 0xE500000000000000, v31, &v62);
  __swift_destroy_boxed_opaque_existential_0(v63);
  v38 = v62;
  v39 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  v40 = v61;
  sub_22A4DD06C();
  v41 = v58;
  v42 = sub_22A4DD05C();
  v43 = sub_22A4DDCDC();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v59;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v65[0] = v48;
    *v46 = 138412546;
    *(v46 + 4) = v41;
    *v47 = v41;
    *(v46 + 12) = 2080;
    v49 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v50 = v40;
    v51 = sub_22A4DD4AC();
    v53 = v52;

    v54 = sub_2295A3E30(v51, v53, v65);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_229538000, v42, v43, "%@ Did generate demo configuration: %s", v46, 0x16u);
    sub_22953EAE4(v47, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v46, -1, -1);

    (*(v45 + 8))(v50, v60);
  }

  else
  {

    (*(v45 + 8))(v40, v60);
  }

  return v38;
}

uint64_t sub_229597520()
{
  v1[2] = v0;
  v2 = sub_22A4DD07C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295975E0, 0, 0);
}

uint64_t sub_2295975E0()
{
  v1 = v0[2];
  v2 = sub_229596E6C();
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22959769C;
  v4 = v0[2];

  return (sub_22959D63C)(v2);
}

uint64_t sub_22959769C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2295979D4;
  }

  else
  {
    v3 = sub_2295977B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295977B0()
{
  v26 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v24 = v0[5];
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2080;
    v15 = v11;
    v16 = sub_229591558();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v16 = 45;
      v18 = 0xE100000000000000;
    }

    v19 = sub_2295A3E30(v16, v18, &v25);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_229538000, v5, v6, "%@ Did commit the demo mode configuration. Locale: %s", v12, 0x16u);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v24, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[5];

  v21 = v0[1];
  v22 = v0[6];

  return v21(v22);
}

uint64_t sub_2295979D4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_229597A40(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = swift_task_alloc();
  v2[16] = v3;
  *v3 = v2;
  v3[1] = sub_229597AD8;

  return sub_2295916F8(0, 0);
}

uint64_t sub_229597AD8(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  *(v4 + 136) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229597C0C, 0, 0);
  }
}

uint64_t sub_229597C0C()
{
  if (v0[17])
  {

    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = sub_229597DDC;
    v2 = v0[14];
    v3 = v0[15];

    return sub_22959D63C(v2);
  }

  else
  {
    type metadata accessor for HMError(0);
    v0[13] = 52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x6E6F73616552;
    v6 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD000000000000047;
    *(inited + 56) = 0x800000022A58ADA0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v6, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v7 = v0[12];
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_229597DDC()
{
  v1 = *(*v0 + 144);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_229597ED0(uint64_t a1)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;
  return MEMORY[0x2822009F8](sub_229597EF0, 0, 0);
}

uint64_t sub_229597EF0()
{
  v52 = v0;
  v1 = *(v0 + 312);
  v2 = sub_22959D130(v1);
  if (!*(v1 + 16) || (v3 = *(v0 + 312), v4 = sub_229543DBC(0x53555F6E65, 0xE500000000000000), (v5 & 1) == 0) || (sub_2295404B0(*(*(v0 + 312) + 56) + 32 * v4, v0 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090), (swift_dynamicCast() & 1) == 0) || (v6 = *(v0 + 304)) == 0)
  {
    v11 = 0;
    v50 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  if (*(v6 + 16))
  {
    v7 = *(v0 + 304);

    v8 = sub_229543DBC(0x656D614E656D6F48, 0xE900000000000073);
    if (v9)
    {
      sub_2295404B0(*(v6 + 56) + 32 * v8, v0 + 48);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      if (swift_dynamicCast())
      {
        v10 = *(v0 + 296);
      }

      else
      {
        v10 = 0;
      }

      if (!*(v6 + 16))
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }
  }

  v10 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_29;
  }

LABEL_22:

  v30 = sub_229543DBC(0x726F737365636341, 0xEE0073656D614E79);
  if (v31)
  {
    sub_2295404B0(*(v6 + 56) + 32 * v30, v0 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 288);
    }

    else
    {
      v12 = 0;
    }

    if (!*(v6 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_36;
  }

LABEL_30:

  v32 = sub_229543DBC(0x656D614E6D6F6F52, 0xE900000000000073);
  if (v33)
  {
    sub_2295404B0(*(v6 + 56) + 32 * v32, v0 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v34 = swift_dynamicCast();
    v35 = *(v0 + 280);
    if (!v34)
    {
      v35 = 0;
    }

    v50 = v35;
    if (!*(v6 + 16))
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

LABEL_36:
  v50 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_44;
  }

LABEL_37:

  v36 = sub_229543DBC(0x6D614E656E656353, 0xEA00000000007365);
  if (v37)
  {
    sub_2295404B0(*(v6 + 56) + 32 * v36, v0 + 144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    if (swift_dynamicCast())
    {
      v38 = *(v0 + 272);
    }

    else
    {
      v38 = 0;
    }

    if (*(v6 + 16))
    {
      goto LABEL_45;
    }

LABEL_42:
    v39 = v0;
    goto LABEL_52;
  }

LABEL_44:
  v38 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_42;
  }

LABEL_45:

  v40 = sub_229543DBC(0x4E65636976726553, 0xEC00000073656D61);
  if (v41)
  {
    sub_2295404B0(*(v6 + 56) + 32 * v40, v0 + 176);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v39 = v0;
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 264);
    }

    else
    {
      v11 = 0;
    }

    if (!*(v6 + 16))
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

  v39 = v0;

LABEL_52:
  v11 = 0;
  if (!*(v6 + 16))
  {
LABEL_57:

    v13 = v38;
    v0 = v39;
    goto LABEL_13;
  }

LABEL_53:
  v42 = sub_229543DBC(0xD000000000000014, 0x800000022A587F90);
  if ((v43 & 1) == 0)
  {
    goto LABEL_57;
  }

  v0 = v39;
  sub_2295404B0(*(v6 + 56) + 32 * v42, v39 + 208);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v44 = swift_dynamicCast();
  v45 = *(v39 + 256);
  if (v44)
  {
    v46 = *(v39 + 256);
  }

  v13 = v38;
LABEL_13:
  v14 = *(v0 + 312);
  v15 = *(v0 + 320);
  v16 = MEMORY[0x277D84F90];
  *(v0 + 240) = MEMORY[0x277D84F90];
  v17 = *(v2 + 16);

  v18 = v15;

  v48 = v11;

  if (v17)
  {
    v49 = v12;
    v20 = v19;
    v21 = (v2 + 40);
    do
    {
      v23 = *(v0 + 312);
      v22 = *(v0 + 320);
      v24 = *v21;
      v51[0] = *(v21 - 1);
      v51[1] = v24;

      sub_22959C158(v51, v23, v10, v22, (v0 + 240), v49, v50, v13, v48, v20);

      v21 += 2;
      --v17;
    }

    while (v17);
    v16 = *(v0 + 240);
    v25 = *(v0 + 312);
    v18 = *(v0 + 320);
  }

  *(v0 + 328) = v16;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  *(v0 + 248) = v16;
  v26 = *(MEMORY[0x277D0F008] + 4);

  v27 = swift_task_alloc();
  *(v0 + 336) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D538, &qword_22A578868);
  v29 = sub_229590C00(&qword_27D87D540, &qword_27D87D538, &qword_22A578868);
  *v27 = v0;
  v27[1] = sub_229598650;

  return MEMORY[0x282167808](&unk_22A578860, 0, v28, v29);
}

uint64_t sub_229598650()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  v4 = *(v2 + 328);

  if (v0)
  {
    v5 = sub_2295987D8;
  }

  else
  {
    v5 = sub_229598774;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229598774()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295987D8()
{
  v1 = v0[41];

  v2 = v0[1];
  v3 = v0[43];

  return v2();
}

uint64_t sub_22959883C(void *a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v4 = a1[1];
  v3[15] = *a1;
  v3[16] = v4;
  return MEMORY[0x2822009F8](sub_229598864, 0, 0);
}

uint64_t sub_229598864()
{
  if (*(*(v0 + 104) + 16))
  {
    v1 = sub_229543DBC(*(v0 + 120), *(v0 + 128));
    if (v2)
    {
      sub_2295404B0(*(*(v0 + 104) + 56) + 32 * v1, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        v3 = *(v0 + 80);
        if (*(v3 + 16) && (v4 = sub_229543DBC(0x73656D6F48, 0xE500000000000000), (v5 & 1) != 0))
        {
          sub_2295404B0(*(v3 + 56) + 32 * v4, v0 + 48);

          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
          if (swift_dynamicCast())
          {
            v7 = *(v0 + 128);
            v15 = *(v0 + 112);
            v8 = *(v0 + 88);
            *(v0 + 136) = v8;
            *(v0 + 96) = v8;
            v9 = swift_task_alloc();
            *(v0 + 144) = v9;
            *(v9 + 16) = v15;
            *(v9 + 32) = v7;
            v10 = *(MEMORY[0x277D0F008] + 4);
            v11 = swift_task_alloc();
            *(v0 + 152) = v11;
            v12 = sub_229590C00(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
            *v11 = v0;
            v11[1] = sub_229598AB8;

            return MEMORY[0x282167808](&unk_22A5788B0, v9, v6, v12);
          }
        }

        else
        {
        }
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_229598AB8()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229598C00, 0, 0);
  }

  else
  {
    v4 = v3[17];
    v5 = v3[18];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_229598C00()
{
  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_229598C6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229598C94, 0, 0);
}

uint64_t sub_229598C94()
{
  v1 = v0[2];
  v2 = sub_229596C30(v0[5]);
  v0[6] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_229598D74;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_22980D4C8(v5, v6, v4);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_229598D74()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_229598E88;
  }

  else
  {
    v3 = sub_2295860D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229598E88()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_229598EEC()
{
  v1[7] = v0;
  v2 = sub_22A4DD07C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229598FAC, 0, 0);
}

id sub_229598FAC()
{
  result = [*(v0 + 56) homes];
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v3 = sub_22A4DD83C();
  *(v0 + 88) = v3;

  if (v3 >> 62)
  {
    result = sub_22A4DE0EC();
    *(v0 + 96) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 96) = result;
    if (result)
    {
LABEL_4:
      v4 = *(v0 + 88);
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAD13F0](0);
        goto LABEL_7;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);
LABEL_7:
        *(v0 + 104) = v5;
        *(v0 + 112) = 1;
        v6 = swift_task_alloc();
        *(v0 + 120) = v6;
        *v6 = v0;
        v6[1] = sub_2295991CC;

        return sub_22981047C();
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  v7 = *(v0 + 88);
  v8 = *(v0 + 56);

  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  *(v0 + 40) = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  *(v0 + 48) = &off_283CDD168;
  *(v0 + 16) = v8;
  v9 = v8;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_2295994AC;

  return sub_22970A4FC(v0 + 16, 0);
}

uint64_t sub_2295991CC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);

    v5 = sub_2295997E8;
  }

  else
  {
    v5 = sub_2295992E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2295992E8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = *(v0 + 88);
  if (v1 == v2)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 88);

    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 40) = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    *(v0 + 48) = &off_283CDD168;
    *(v0 + 16) = v4;
    v6 = v4;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_2295994AC;

    sub_22970A4FC(v0 + 16, 0);
    return;
  }

  v8 = *(v0 + 112);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x22AAD13F0](*(v0 + 112));
  }

  else
  {
    if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v9 = *(v3 + 8 * v8 + 32);
  }

  *(v0 + 104) = v9;
  *(v0 + 112) = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_2295991CC;

  sub_22981047C();
}

uint64_t sub_2295994AC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_229599854;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_2295995C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2295995C8()
{
  v25 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v23 = v0[10];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2080;
    v15 = v11;
    v16 = sub_229591558();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v16 = 45;
      v18 = 0xE100000000000000;
    }

    v19 = sub_2295A3E30(v16, v18, &v24);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_229538000, v5, v6, "%@ Did reset the demo mode configuration. Locale: %s", v12, 0x16u);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v23, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2295997E8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229599854()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[18];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2295998C0(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v4 = sub_22A4DD07C();
  v3[40] = v4;
  v5 = *(v4 - 8);
  v3[41] = v5;
  v6 = *(v5 + 64) + 15;
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229599984, 0, 0);
}

uint64_t sub_229599984()
{
  v1 = v0[39];
  v2 = sub_229591628();
  if (v2)
  {
    v3 = v2;
    v0[31] = v0[37];
    v0[32] = v0[38];
    v4 = swift_task_alloc();
    *(v4 + 16) = v0 + 31;
    v5 = sub_22986A5E0(sub_22959E60C, v4, v3);

    if (v5)
    {
      v6 = v0[38];
      v7 = v0[39];
      v8 = v0[37];

      sub_229562F68(0, &qword_27D87D4D8, off_278666048);
      v0[25] = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
      v0[26] = &off_283CDD168;
      v0[22] = v7;
      v0[30] = MEMORY[0x277D837D0];
      v0[27] = v8;
      v0[28] = v6;
      v9 = v7;

      v10 = swift_task_alloc();
      v0[43] = v10;
      *v10 = v0;
      v10[1] = sub_229599D8C;

      return sub_229709F5C((v0 + 22), (v0 + 27), 0x4C746E6572727543, 0xED0000656C61636FLL);
    }

    v12 = v0 + 35;
    type metadata accessor for HMError(0);
    v0[36] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v16 = MEMORY[0x277D837D0];
    v17 = MEMORY[0x22AAD0A20](v3, MEMORY[0x277D837D0]);
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    *(inited + 72) = v16;
    *(inited + 48) = 0xD00000000000002ALL;
    *(inited + 56) = 0x800000022A58AD70;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
  }

  else
  {
    v12 = v0 + 33;
    type metadata accessor for HMError(0);
    v0[34] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_22A576180;
    *(v13 + 32) = 0x6E6F73616552;
    v14 = v13 + 32;
    *(v13 + 72) = MEMORY[0x277D837D0];
    *(v13 + 40) = 0xE600000000000000;
    *(v13 + 48) = 0xD000000000000047;
    *(v13 + 56) = 0x800000022A58AD20;
    sub_22956AD8C(v13);
    swift_setDeallocating();
    sub_22953EAE4(v14, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
  }

  sub_22A4DB3CC();
  v20 = *v12;
  swift_willThrow();
  v21 = v0[42];

  v22 = v0[1];

  return v22();
}

uint64_t sub_229599D8C()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v6 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_22959A220;
  }

  else
  {
    sub_22953EAE4(v2 + 216, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 176));
    v4 = sub_229599EC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229599EC0()
{
  v27 = v0;
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];
  v4 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v5 = v3;

  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  v10 = v0[42];
  v11 = v0[40];
  if (v8)
  {
    v25 = v0[42];
    v13 = v0[38];
    v12 = v0[39];
    v14 = v0[37];
    v24 = v0[40];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v18 = v12;
    *(v15 + 14) = sub_2295A3E30(v14, v13, &v26);
    _os_log_impl(&dword_229538000, v6, v7, "%@ Did select locale: %s as current locale", v15, 0x16u);
    sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AAD4E50](v17, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v9 + 8))(v25, v24);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = swift_task_alloc();
  v0[45] = v19;
  *v19 = v0;
  v19[1] = sub_22959A108;
  v20 = v0[38];
  v21 = v0[39];
  v22 = v0[37];

  return sub_22959A2A4(v22, v20);
}

uint64_t sub_22959A108()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v6 = *v0;

  v3 = *(v1 + 336);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22959A220()
{
  sub_22953EAE4((v0 + 27), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v1 = v0[44];
  v2 = v0[42];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22959A2A4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22A4DD07C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22959A368, 0, 0);
}

uint64_t sub_22959A368()
{
  v1 = [*(v0 + 40) homes];
  if (v1)
  {
    v5 = v1;
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v8 = sub_22A4DD83C();
    *(v0 + 72) = v8;

    *(v0 + 16) = v8;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v6;
    v10 = *(MEMORY[0x277D0F008] + 4);
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
    v4 = sub_229590C00(&qword_27D87D500, &qword_27D87F2F0, &qword_22A5787B0);
    *v11 = v0;
    v11[1] = sub_22959A4E8;
    v1 = &unk_22A5787A8;
    v2 = v9;
    v3 = v12;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282167808](v1, v2, v3, v4);
}

uint64_t sub_22959A4E8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v5 = sub_22959A850;
  }

  else
  {
    v5 = sub_22959A63C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22959A63C()
{
  v25 = v0;
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v5 = v3;

  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v23 = v0[8];
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    v22 = v0[6];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v18 = v12;
    *(v15 + 14) = sub_2295A3E30(v14, v13, &v24);
    _os_log_impl(&dword_229538000, v6, v7, "%@ Did reconfigure homes for %s", v15, 0x16u);
    sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AAD4E50](v17, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v9 + 8))(v23, v22);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t sub_22959A850()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_22959A8B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_229569B30;

  return sub_229811500(a2, a3);
}

unint64_t sub_22959A95C(uint64_t a1, uint64_t a2)
{
  sub_22A4DE1FC();

  MEMORY[0x22AAD08C0](a1, a2);
  return 0xD000000000000010;
}

id sub_22959AA00()
{
  v1 = [*v0 backingStore];

  return v1;
}

uint64_t sub_22959AA38(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_22959A8B4(a1, v5, v4);
}

void sub_22959AB00()
{
  v1 = v0[25];
  v2 = v1[2];
  v0[26] = v2;
  v3 = *(v2 + 16);
  v0[27] = v3;
  v4 = v1[1];
  v0[28] = v4;
  if (v3 != *(v4 + 16))
  {
    type metadata accessor for HMError(0);
    v0[23] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x6E6F73616552;
    v34 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD00000000000002DLL;
    *(inited + 56) = 0x800000022A58ABE0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v34, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    v35 = v0[22];
    swift_willThrow();
    v36 = v0[1];
LABEL_33:

    v36();
    return;
  }

  v5 = *v1;
  v0[29] = v5;
  v6 = *(v5 + 16);
  v0[30] = v6;
  if (!v6)
  {
LABEL_32:
    v36 = v0[1];
    goto LABEL_33;
  }

  v7 = 0;
  while (1)
  {
    v0[31] = v7;
    sub_22957F1C4(v5 + 40 * v7 + 32, (v0 + 12));
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 12;
    v9 = sub_22959BFAC(sub_22959E3E4, v8, v2);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      break;
    }

    sub_22957F1C4((v0 + 12), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D160, &unk_22A578080);
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    v12 = v0[24];
    v0[35] = v12;
    v13 = [v12 characteristics];
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    v14 = sub_22A4DD83C();
    v0[36] = v14;

    if (v14 >> 62)
    {
      v30 = sub_22A4DE0EC();
      v0[37] = v30;
      if (v30)
      {
LABEL_8:
        v16 = 0;
        do
        {
          v17 = v0[36];
          if ((v17 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x22AAD13F0](v16);
          }

          else
          {
            if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v18 = *(v17 + 8 * v16 + 32);
          }

          v19 = v18;
          v0[38] = v18;
          v0[39] = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          if (v0[27])
          {
            v20 = 0;
            for (i = 0; i != v0[27]; ++i)
            {
              v22 = v0[26] + v20;
              v23 = *(v22 + 32);
              v24 = *(v22 + 40);

              v25 = sub_22970DF2C(0x53555F6E65, 0xE500000000000000);
              if (v26)
              {
                if (v23 == v25 && v26 == v24)
                {

LABEL_37:
                  if (i < v0[27])
                  {
                    v37 = v0[25];
                    v38 = v0[28] + v20;
                    v39 = *(v38 + 32);
                    v40 = *(v38 + 40);
                    v0[40] = v40;
                    v41 = *(v37 + 24);
                    v42 = *(v37 + 32);

                    v43 = swift_task_alloc();
                    v0[41] = v43;
                    *v43 = v0;
                    v43[1] = sub_22959B790;

                    sub_22970E398(v39, v40, v41, v42);
                    return;
                  }

LABEL_47:
                  __break(1u);
LABEL_48:
                  __break(1u);
                  return;
                }

                v28 = sub_22A4DE60C();

                if (v28)
                {
                  goto LABEL_37;
                }
              }

              else
              {
              }

              v20 += 16;
            }
          }

          v16 = v0[39];
        }

        while (v16 != v0[37]);
        v12 = v0[35];
        v29 = v0[36];
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[37] = v15;
      if (v15)
      {
        goto LABEL_8;
      }
    }

LABEL_29:
    v31 = v0[30];
    v32 = v0[31] + 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    if (v32 == v31)
    {
      goto LABEL_32;
    }

    v7 = v0[31] + 1;
    v5 = v0[29];
    v2 = v0[26];
  }

  v44 = v0[27];
  v45 = v0[15];
  v46 = v0[16];
  __swift_project_boxed_opaque_existential_0(v0 + 12, v45);
  if (v9 >= v44)
  {
    goto LABEL_48;
  }

  v47 = v0[25];
  v48 = v0[28] + 16 * v9;
  v49 = *(v48 + 32);
  v50 = *(v48 + 40);
  v0[32] = v50;
  v51 = *(v47 + 24);
  v52 = *(v47 + 32);
  v53 = *(v46 + 56);

  v56 = (v53 + *v53);
  v54 = v53[1];
  v55 = swift_task_alloc();
  v0[33] = v55;
  *v55 = v0;
  v55[1] = sub_22959B144;

  v56(v49, v50, v51, v52, v45, v46);
}