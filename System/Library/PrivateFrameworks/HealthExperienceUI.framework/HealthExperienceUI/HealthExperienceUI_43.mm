uint64_t sub_1BA39F470(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x54656C69666F7270;
  }

  else
  {
    v3 = 0x55656C69666F7270;
  }

  if (v2)
  {
    v4 = 0xEB00000000444955;
  }

  else
  {
    v4 = 0xEB00000000657079;
  }

  if (*a2)
  {
    v5 = 0x54656C69666F7270;
  }

  else
  {
    v5 = 0x55656C69666F7270;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657079;
  }

  else
  {
    v6 = 0xEB00000000444955;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();
  }

  return v8 & 1;
}

uint64_t sub_1BA39F528()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA39F5BC()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA39F63C()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA39F6CC@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A8108();

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

void sub_1BA39F72C(uint64_t *a1@<X8>)
{
  v2 = 0x55656C69666F7270;
  if (*v1)
  {
    v2 = 0x54656C69666F7270;
  }

  v3 = 0xEB00000000444955;
  if (*v1)
  {
    v3 = 0xEB00000000657079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t EndSharingRelationshipNotificationUserInfo.profileUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A1798();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EndSharingRelationshipNotificationUserInfo.profileUUID.setter(uint64_t a1)
{
  v3 = sub_1BA4A1798();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EndSharingRelationshipNotificationUserInfo.profileType.setter(uint64_t a1)
{
  result = type metadata accessor for EndSharingRelationshipNotificationUserInfo();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t EndSharingRelationshipNotificationUserInfo.init(notification:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1BA39FEE4(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A1008();
  if (!v11)
  {
    sub_1BA39FF48();
    swift_allocError();
    *v18 = 0;
    goto LABEL_9;
  }

  v12 = v11;
  *&v34[0] = 0x55656C69666F7270;
  *(&v34[0] + 1) = 0xEB00000000444955;
  sub_1BA4A7D58();
  if (!*(v12 + 16) || (v13 = sub_1B9FDA8E4(v35), (v14 & 1) == 0))
  {

    sub_1B9FDC768(v35);
    sub_1BA39FF48();
    swift_allocError();
    *v17 = 1;
LABEL_9:
    swift_willThrow();
    v19 = sub_1BA4A1018();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  sub_1B9F0AD9C(*(v12 + 56) + 32 * v13, v34);
  sub_1B9FDC768(v35);
  sub_1B9F46920(v34, v36);
  sub_1B9F0AD9C(v36, v35);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1BA39FF48();
    swift_allocError();
    v16 = 2;
    goto LABEL_11;
  }

  sub_1BA4A1738();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_1BA29D560(v6);
    sub_1BA39FF48();
    swift_allocError();
    v16 = 3;
LABEL_11:
    *v15 = v16;
    swift_willThrow();
    v21 = sub_1BA4A1018();
    (*(*(v21 - 8) + 8))(a1, v21);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v22 = v6;
  v23 = *(v8 + 32);
  v23(v10, v22, v7);
  *&v33[0] = 0x54656C69666F7270;
  *(&v33[0] + 1) = 0xEB00000000657079;
  sub_1BA4A7D58();
  if (*(v12 + 16) && (v24 = sub_1B9FDA8E4(v35), (v25 & 1) != 0))
  {
    sub_1B9F0AD9C(*(v12 + 56) + 32 * v24, v33);
    sub_1B9FDC768(v35);

    sub_1B9F46920(v33, v34);
    sub_1B9F0AD9C(v34, v35);
    if (swift_dynamicCast())
    {
      v26 = *&v33[0];
      v27 = sub_1BA4A1018();
      (*(*(v27 - 8) + 8))(a1, v27);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v23(a2, v10, v7);
      result = type metadata accessor for EndSharingRelationshipNotificationUserInfo();
      *&a2[*(result + 20)] = v26;
      return result;
    }

    sub_1BA39FF48();
    swift_allocError();
    *v30 = 5;
    swift_willThrow();
    v31 = sub_1BA4A1018();
    (*(*(v31 - 8) + 8))(a1, v31);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {

    sub_1B9FDC768(v35);
    sub_1BA39FF48();
    swift_allocError();
    *v28 = 4;
    swift_willThrow();
    v29 = sub_1BA4A1018();
    (*(*(v29 - 8) + 8))(a1, v29);
  }

  (*(v8 + 8))(v10, v7);
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

void sub_1BA39FEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BA39FF48()
{
  result = qword_1EBBF1898;
  if (!qword_1EBBF1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1898);
  }

  return result;
}

unint64_t sub_1BA39FFA0()
{
  result = qword_1EBBF18A0;
  if (!qword_1EBBF18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF18A0);
  }

  return result;
}

unint64_t sub_1BA39FFF8()
{
  result = qword_1EBBF18A8;
  if (!qword_1EBBF18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF18A8);
  }

  return result;
}

void sub_1BA3A0074()
{
  sub_1BA4A1798();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKProfileType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id HealthToolboxProviding<>.providedHealthToolbox.getter(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = (*(a2 + 8))(a1, a2);
  v6 = [v4 sharedInstanceForHealthStore_];

  return v6;
}

uint64_t HealthExperienceStoreIncrementalCoreSpotlightOperation.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B9F0A534(a1, v6);
  v4 = sub_1BA4A3AB8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id HealthExperienceStoreIncrementalCoreSpotlightOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3A0260()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_1BA3A0290(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_1BA3A02C8()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_1BA3A02F8(uint64_t a1)
{
  v2 = sub_1B9FE9354();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA3A0344()
{
  sub_1BA3A1F4C(v0, &v11, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  if (!v12)
  {
    v4 = &qword_1EBBF18D8;
    v5 = &qword_1EBBF18E0;
    v6 = &protocol descriptor for RecentSamplesItemModel;
    v7 = &v11;
LABEL_6:
    sub_1BA3A1FD0(v7, v4, v5, v6, sub_1B9F0D950);
    v3 = 0;
    return v3 & 1;
  }

  sub_1B9F1134C(&v11, v14);
  sub_1BA3A1F4C(v0 + 96, &v9, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
  if (!v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v4 = &unk_1EBBEC650;
    v5 = &qword_1EBBF18D0;
    v6 = &protocol descriptor for SampleDescriptionItemTextProviding;
    v7 = &v9;
    goto LABEL_6;
  }

  sub_1B9F1134C(&v9, &v11);
  v1 = v12;
  v2 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, v12);
  v3 = (*(v2 + 24))(v14, v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(&v11);
  return v3 & 1;
}

uint64_t sub_1BA3A04A4()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3A1F4C(v0 + 96, v21, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
  v5 = v22;
  sub_1BA3A1FD0(v21, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding, sub_1B9F0D950);
  if (v5)
  {
    sub_1BA3A1F4C(v0, &v18, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
    if (v19)
    {
      sub_1B9F1134C(&v18, v21);
      sub_1BA3A1F4C(v0 + 96, &v18, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
      v6 = v19;
      if (v19)
      {
        v7 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, v19);
        v8 = (*(v7 + 8))(v21, v6, v7);
        __swift_destroy_boxed_opaque_existential_1(v21);
        __swift_destroy_boxed_opaque_existential_1(&v18);
        return v8;
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      v15 = &unk_1EBBEC650;
      v16 = &qword_1EBBF18D0;
      v17 = &protocol descriptor for SampleDescriptionItemTextProviding;
      goto LABEL_10;
    }

LABEL_8:
    v15 = &qword_1EBBF18D8;
    v16 = &qword_1EBBF18E0;
    v17 = &protocol descriptor for RecentSamplesItemModel;
LABEL_10:
    sub_1BA3A1FD0(&v18, v15, v16, v17, sub_1B9F0D950);
    return 0;
  }

  sub_1BA3A1F4C(v0, &v18, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  if (!v19)
  {
    goto LABEL_8;
  }

  sub_1B9F1134C(&v18, v21);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v11 + 24))(v10, v11);
  v12 = sub_1BA4A16B8();
  (*(v2 + 8))(v4, v1);
  v13 = HKLocalizedStringForDateAndTemplate();

  if (v13)
  {
    v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v14 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v14;
}

uint64_t sub_1BA3A079C()
{
  sub_1BA3A1F4C(v0 + 96, v12, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
  v1 = v13;
  sub_1BA3A1FD0(v12, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding, sub_1B9F0D950);
  if (!v1)
  {
    return sub_1BA3A0954();
  }

  sub_1BA3A1F4C(v0, &v9, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  if (v10)
  {
    sub_1B9F1134C(&v9, v12);
    sub_1BA3A1F4C(v0 + 96, &v9, &unk_1EBBEC650, &qword_1EBBF18D0, &protocol descriptor for SampleDescriptionItemTextProviding);
    v2 = v10;
    if (v10)
    {
      v3 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      v4 = (*(v3 + 16))(v12, v2, v3);
      __swift_destroy_boxed_opaque_existential_1(v12);
      __swift_destroy_boxed_opaque_existential_1(&v9);
      return v4;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    v6 = &unk_1EBBEC650;
    v7 = &qword_1EBBF18D0;
    v8 = &protocol descriptor for SampleDescriptionItemTextProviding;
  }

  else
  {
    v6 = &qword_1EBBF18D8;
    v7 = &qword_1EBBF18E0;
    v8 = &protocol descriptor for RecentSamplesItemModel;
  }

  sub_1BA3A1FD0(&v9, v6, v7, v8, sub_1B9F0D950);
  return 0;
}

uint64_t sub_1BA3A0954()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v108 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v108 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108 - v12;
  sub_1BA3A1F4C(v0, &v114, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  if (!v115)
  {
    sub_1BA3A1FD0(&v114, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v114, v116);
  v14 = v117;
  v15 = v118;
  __swift_project_boxed_opaque_existential_1(v116, v117);
  v16 = (*(v15 + 8))(v14, v15);
  if (!v16)
  {
LABEL_47:
    __swift_destroy_boxed_opaque_existential_1(v116);
    return 0;
  }

  v17 = v16;
  v109 = v7;
  v110 = v2;
  v111 = v1;
  v18 = objc_opt_self();
  v19 = *(v0 + 40);
  v20 = [v18 sharedInstanceForHealthStore_];
  v112 = [v20 createHKUnitPreferenceController];

  v21 = [v17 hk:v19 metadataValueDisplayTypeInStore:?];
  if (v21)
  {
    v22 = v21;
    v23 = [v17 hk_primaryMetadataKey];
    if (!v23)
    {
      goto LABEL_15;
    }

    v108 = v17;
    v24 = v23;
    v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v27 = v26;

    v29 = v117;
    v28 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v30 = (*(v28 + 32))(v29, v28);
    if (v30)
    {
      v31 = v30;
      if (*(v30 + 16))
      {
        v32 = sub_1B9F24A34(v25, v27);
        v34 = v33;

        if (v34)
        {
          sub_1B9F0AD9C(*(v31 + 56) + 32 * v32, &v114);

          sub_1B9F0ADF8(0, &qword_1EDC6E350);
          v35 = swift_dynamicCast();
          v17 = v108;
          if (v35)
          {
            v36 = v113;
            v37 = [v108 hk:v113 formatMetadataValue:v22 displayType:v112 unitPreferencesController:?];
            if (v37)
            {
              v38 = v36;
              v39 = v37;
              v109 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

              sub_1BA4A3DD8();
              v40 = v17;
              v41 = sub_1BA4A3E88();
              v42 = v17;
              v43 = sub_1BA4A6F88();

              if (os_log_type_enabled(v41, v43))
              {
                v44 = swift_slowAlloc();
                v45 = swift_slowAlloc();
                *v44 = 138477827;
                *(v44 + 4) = v40;
                *v45 = v42;
                v46 = v40;
                _os_log_impl(&dword_1B9F07000, v41, v43, "SampleDescriptionItem contains primary metadata value for type %{private}@!", v44, 0xCu);
                sub_1BA3A1FD0(v45, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
                MEMORY[0x1BFAF43A0](v45, -1, -1);
                MEMORY[0x1BFAF43A0](v44, -1, -1);
                v40 = v22;
                v47 = v112;
              }

              else
              {
                v46 = v41;
                v41 = v112;
                v47 = v38;
                v38 = v22;
              }

              (*(v110 + 8))(v13, v111);
              __swift_destroy_boxed_opaque_existential_1(v116);
              return v109;
            }

            goto LABEL_16;
          }

LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v17 = v108;
    goto LABEL_15;
  }

LABEL_16:
  sub_1B9F0A534(v116, &v114);
  sub_1B9F0D950(0, &qword_1EBBF18E0);
  sub_1B9F0ADF8(0, &qword_1EBBF18E8);
  if (swift_dynamicCast())
  {
    v48 = v113;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      if ([Strong respondsToSelector_])
      {
        v51 = v17;
        v52 = [v50 displayTypeController];
        swift_unknownObjectRelease();
        v53 = v117;
        v54 = v118;
        __swift_project_boxed_opaque_existential_1(v116, v117);
        v55 = (*(v54 + 8))(v53, v54);
        v56 = [v52 displayTypeForObjectType_];

        if (v56)
        {
          v57 = [v56 hk_enumeratedValueLabels];

          if (v57)
          {
            sub_1B9F0ADF8(0, &qword_1EDC6E360);
            sub_1B9F2D594();
            v58 = sub_1BA4A6628();

            v59 = [v48 value];
            v60 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            v61 = v60;
            if (*(v58 + 16))
            {
              v62 = sub_1B9FDAA0C(v60);
              if (v63)
              {
                v64 = *(*(v58 + 56) + 16 * v62);

                sub_1BA4A3DD8();
                v65 = v51;
                v66 = v51;
                v67 = sub_1BA4A3E88();
                v68 = sub_1BA4A6F88();

                if (os_log_type_enabled(v67, v68))
                {
                  v69 = swift_slowAlloc();
                  v70 = swift_slowAlloc();
                  *v69 = 138477827;
                  *(v69 + 4) = v66;
                  *v70 = v65;
                  v71 = v66;
                  _os_log_impl(&dword_1B9F07000, v67, v68, "SampleDescriptionItem contains enumerated labels for sample %{private}@", v69, 0xCu);
                  sub_1BA3A1FD0(v70, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
                  MEMORY[0x1BFAF43A0](v70, -1, -1);
                  MEMORY[0x1BFAF43A0](v69, -1, -1);
                }

                else
                {
                  v71 = v67;
                  v67 = v66;
                }

                v106 = v112;

                (*(v110 + 8))(v10, v111);
                __swift_destroy_boxed_opaque_existential_1(v116);
                return v64;
              }
            }
          }
        }

        v17 = v51;
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  sub_1B9F0A534(v116, &v114);
  sub_1B9F0ADF8(0, &unk_1EDC5E2C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v74 = v111;
LABEL_43:
    sub_1BA4A3DD8();
    v97 = v17;
    v98 = sub_1BA4A3E88();
    v99 = v17;
    v100 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v98, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v101 = 138477827;
      *(v101 + 4) = v97;
      *v102 = v99;
      v103 = v97;
      _os_log_impl(&dword_1B9F07000, v98, v100, "SampleDescriptionItem is missing value string parameters for type %{private}@", v101, 0xCu);
      sub_1BA3A1FD0(v102, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v102, -1, -1);
      MEMORY[0x1BFAF43A0](v101, -1, -1);
    }

    else
    {
      v103 = v98;
      v98 = v97;
    }

    v104 = v112;

    (*(v110 + 8))(v4, v74);
    goto LABEL_47;
  }

  v72 = v113;
  v73 = swift_unknownObjectWeakLoadStrong();
  v74 = v111;
  if (!v73)
  {

    goto LABEL_43;
  }

  v75 = v73;
  if (([v73 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v76 = v17;
  v77 = [v75 displayTypeController];
  swift_unknownObjectRelease();
  v78 = v117;
  v79 = v118;
  __swift_project_boxed_opaque_existential_1(v116, v117);
  v80 = (*(v79 + 8))(v78, v79);
  v81 = [v77 displayTypeForObjectType_];

  if (!v81)
  {
    goto LABEL_42;
  }

  v82 = [v81 hk_enumeratedValueLabels];

  if (!v82)
  {
    goto LABEL_42;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  sub_1B9F2D594();
  v83 = sub_1BA4A6628();

  v84 = [v72 categoryValue];
  v85 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v86 = v85;
  if (!*(v83 + 16) || (v87 = sub_1B9FDAA0C(v85), (v88 & 1) == 0))
  {

LABEL_42:

    v17 = v76;
    goto LABEL_43;
  }

  v89 = *(*(v83 + 56) + 16 * v87);

  sub_1BA4A3DD8();
  v90 = v76;
  v91 = v76;
  v92 = sub_1BA4A3E88();
  v93 = sub_1BA4A6F88();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v94 = 138477827;
    *(v94 + 4) = v91;
    *v95 = v90;
    v96 = v91;
    _os_log_impl(&dword_1B9F07000, v92, v93, "SampleDescriptionItem contains enumerated labels for sample %{private}@", v94, 0xCu);
    sub_1BA3A1FD0(v95, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
    MEMORY[0x1BFAF43A0](v95, -1, -1);
    MEMORY[0x1BFAF43A0](v94, -1, -1);
  }

  else
  {
    v96 = v92;
    v92 = v91;
  }

  v107 = v112;

  (*(v110 + 8))(v109, v74);
  __swift_destroy_boxed_opaque_existential_1(v116);
  return v89;
}

uint64_t sub_1BA3A15DC()
{
  v1 = v0;
  sub_1BA001B68(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-1] - v3;
  v5 = sub_1BA4A3FB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3F18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3A1F4C(v1, v20, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  v13 = v21;
  if (v21)
  {
    v19 = v6;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v15 = (*(v14 + 48))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v15)
    {

      if (*(v1 + 136) == 1)
      {
        sub_1BA001B68(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
        sub_1BA4A3FE8();
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1BA4B5480;
        (*(v10 + 104))(v12, *MEMORY[0x1E69DBF28], v9);
        v17 = sub_1BA4A3F48();
        (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
        sub_1BA4A3FA8();
        sub_1BA4A3F78();
        (*(v19 + 8))(v8, v5);
        (*(v10 + 8))(v12, v9);
        return v16;
      }
    }
  }

  else
  {
    sub_1BA3A1FD0(v20, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, sub_1B9F0D950);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BA3A19B8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 136) == 1)
  {
    v4 = result;
    v5 = swift_allocObject();
    result = sub_1B9FE92F8(v2, v5 + 16);
    v6 = &off_1F381AEC8;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v4;
  a2[4] = v6;
  *a2 = v5;
  return result;
}

uint64_t sub_1BA3A1A38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA3A0344())
  {
    sub_1BA4A4198();
  }

  else
  {
    sub_1BA4A4418();
  }

  sub_1BA3A04A4();
  sub_1BA4A43B8();
  sub_1BA3A079C();
  sub_1BA4A41A8();
  v6 = MEMORY[0x1E69DC110];
  a1[3] = v2;
  a1[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v3 + 32))(boxed_opaque_existential_1, v5, v2);
}

void sub_1BA3A1B50(void *a1@<X0>, char *a2@<X8>)
{
  sub_1BA3A1F4C(v2, v20, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  v5 = v21;
  if (!v21)
  {
    v14 = &qword_1EBBF18D8;
    v15 = &qword_1EBBF18E0;
    v16 = &protocol descriptor for RecentSamplesItemModel;
    v17 = v20;
LABEL_10:
    sub_1BA3A1FD0(v17, v14, v15, v16, sub_1B9F0D950);
    goto LABEL_11;
  }

  v6 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v7 = (*(v6 + 48))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v20);
  if (!v7)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  sub_1BA3A1F4C(v2 + 48, &v18, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
  if (!v19)
  {

    v14 = &qword_1EBBF18F0;
    v15 = &qword_1EBBEC590;
    v16 = &protocol descriptor for SampleMetadataViewControllerProviding;
    v17 = &v18;
    goto LABEL_10;
  }

  sub_1B9F1134C(&v18, v20);
  v8 = v21;
  v9 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v10 = (*(v9 + 8))(v7, v8, v9);

  __swift_destroy_boxed_opaque_existential_1(v20);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [a1 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

LABEL_12:
  *a2 = v13;
}

id sub_1BA3A1D40(uint64_t a1)
{
  v2 = WDGetProfileNameForHealthStore();
  if (!v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    goto LABEL_5;
  }

  v3 = v2;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = sub_1BA4A6758();

LABEL_6:
  v8 = [objc_allocWithZone(MEMORY[0x1E69A4350]) initWithSample:a1 usingInsetStyling:1 profileName:v7 delegate:Strong];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1BA3A1E10()
{
  sub_1B9FAB600(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1BA3A1E9C()
{
  result = qword_1EBBF18C0;
  if (!qword_1EBBF18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF18C0);
  }

  return result;
}

void sub_1BA3A1EF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA3A1F4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1BA3A1EF0(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1BA3A1FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA3A1EF0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA3A202C()
{
  sub_1BA3A1F4C(v0, v14, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  v1 = v15;
  if (!v15)
  {
    v8 = &qword_1EBBF18D8;
    v9 = &qword_1EBBF18E0;
    v10 = &protocol descriptor for RecentSamplesItemModel;
    v11 = v14;
LABEL_7:
    sub_1BA3A1FD0(v11, v8, v9, v10, sub_1B9F0D950);
    return 0;
  }

  v2 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v3 = (*(v2 + 48))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v3)
  {
    sub_1BA3A1F4C(v0 + 48, &v12, &qword_1EBBF18F0, &qword_1EBBEC590, &protocol descriptor for SampleMetadataViewControllerProviding);
    if (v13)
    {
      sub_1B9F1134C(&v12, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v6 = (*(v5 + 8))(v3, v4, v5);

      __swift_destroy_boxed_opaque_existential_1(v14);
      return v6;
    }

    v8 = &qword_1EBBF18F0;
    v9 = &qword_1EBBEC590;
    v10 = &protocol descriptor for SampleMetadataViewControllerProviding;
    v11 = &v12;
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1BA3A21BC(void *a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_unknownObjectWeakLoadStrong();
  v7 = sub_1BA3A202C();
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_1B9FE92F8(v1, v21);
    v8 = v7;
    [a1 showAdaptively:v8 sender:sub_1BA4A8398()];

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BA4A3DD8();
    sub_1B9FE92F8(v1, v21);
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6F88();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4D6970, &v20);
      *(v12 + 12) = 2080;
      sub_1BA3A1F4C(v21, v19, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
      sub_1BA3A1EF0(0, &qword_1EBBF18D8, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel, sub_1B9F0D950);
      v14 = sub_1BA4A6808();
      v16 = v15;
      sub_1B9FE93A8(v21);
      v17 = sub_1B9F0B82C(v14, v16, &v20);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1B9F07000, v10, v11, "%s unable to make metadata view controller for %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    else
    {

      sub_1B9FE93A8(v21);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BA3A24A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA3A24EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall UITextField.setInputAccessoryViewToToolbar(items:)(Swift::OpaquePointer items)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD180]) init];
  [v2 setBarStyle_];
  sub_1BA1E8C50();
  v3 = sub_1BA4A6AE8();
  [v2 setItems_];

  v4 = v2;
  [v4 sizeToFit];
  [v1 setInputAccessoryView_];
}

uint64_t AddDataViewControllerProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_1BA3A268C(void *a1)
{
  v3 = sub_1BA4A1728();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = [objc_opt_self() sharedInstanceForHealthStore_];
  sub_1BA4A1718();
  v9 = sub_1BA4A16B8();
  (*(v4 + 8))(v6, v3);
  v10 = [a1 wd:v7 addDataViewControllerWithHealthStore:v8 healthToolBox:v9 initialStartDate:?];

  return v10;
}

uint64_t AddDataViewControllerProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id RoundedImageCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RoundedImageCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for RoundedImageCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = *MEMORY[0x1E69796E8];
  v11 = v9;
  v12 = [v11 layer];
  [v12 setCornerCurve_];

  v13 = [v11 layer];
  [v13 setCornerRadius_];

  v14 = [v11 layer];
  [v14 setMaskedCorners_];

  [v11 setClipsToBounds_];
  return v11;
}

id RoundedImageCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RoundedImageCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedImageCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSCollectionLayoutGroup __swiftcall CollectionViewLayoutSectionProviding.gridGroup(numberOfItemsInRow:itemHeightDimension:interItemSpacing:)(Swift::Int numberOfItemsInRow, NSCollectionLayoutDimension itemHeightDimension, NSCollectionLayoutSpacing interItemSpacing)
{
  v6 = 1.0 / numberOfItemsInRow;
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = objc_opt_self();
  v10 = [v9 sizeWithWidthDimension:v8 heightDimension:itemHeightDimension.super.isa];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  v12 = [v7 fractionalWidthDimension_];
  [(objc_class *)itemHeightDimension.super.isa dimension];
  v13 = [v7 estimatedDimension_];
  v14 = [v9 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() horizontalGroupWithLayoutSize:v14 repeatingSubitem:v11 count:numberOfItemsInRow];
  [v15 setInterItemSpacing_];

  return v15;
}

id static CollectionViewLayoutSectionProviding.defaultItemHeight.getter()
{
  v0 = [objc_opt_self() uniformAcrossSiblingsWithEstimate_];

  return v0;
}

uint64_t SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for DataSourceWithLayout();
  swift_unknownObjectRetain();

  v8 = sub_1BA3A3DD4(v4, a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for DataSourceWithLayout();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = v6;
  swift_unknownObjectRetain_n();

  v13 = sub_1BA3A3DD4(v6, a1, sub_1BA3A3EA4, v12);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t SnapshotDataSource.withLayoutConfiguration(_:collapseEmptySections:)(_OWORD *a1, char a2)
{
  v3 = v2;
  v6 = a1[5];
  v18[4] = a1[4];
  v18[5] = v6;
  v7 = a1[7];
  v18[6] = a1[6];
  v18[7] = v7;
  v8 = a1[1];
  v18[0] = *a1;
  v18[1] = v8;
  v9 = a1[3];
  v18[2] = a1[2];
  v18[3] = v9;
  type metadata accessor for DataSourceWithLayout();
  v10 = swift_allocObject();
  v11 = a1[5];
  v10[5] = a1[4];
  v10[6] = v11;
  v12 = a1[7];
  v10[7] = a1[6];
  v10[8] = v12;
  v13 = a1[1];
  v10[1] = *a1;
  v10[2] = v13;
  v14 = a1[3];
  v10[3] = a1[2];
  v10[4] = v14;
  swift_unknownObjectRetain();
  sub_1B9F1D9A4(v18, &v17);
  v15 = sub_1BA3A3DD4(v3, a2, sub_1BA2637B4, v10);
  swift_unknownObjectRelease();
  return v15;
}

uint64_t DataSourceWithLayout.wrappedDataSource.getter()
{
  sub_1BA3A3D14();

  return swift_unknownObjectRetain();
}

uint64_t DataSourceWithLayout.identifier.getter()
{
  v0 = sub_1B9F1E1B4();

  return v0;
}

uint64_t DataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BA3A3DD4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t *DataSourceWithLayout.init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BA3A3D24(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

{
  v4 = sub_1BA3A3ED0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t *DataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BA3A3ED0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

id sub_1BA3A3380(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = type metadata accessor for DataSourceWithLayout();
  v6 = *(SnapshotDataSource.sectionIdentifiers.getter(v5, &protocol witness table for DataSourceWithLayout<A>) + 16);

  v7 = SnapshotDataSource.sectionIdentifiers.getter(v5, &protocol witness table for DataSourceWithLayout<A>);
  if (v2 >= v6)
  {
    v14 = *(v7 + 16);

    sub_1B9FF806C();
    swift_allocError();
    *v15 = v2;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    return swift_willThrow();
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= *(v7 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7 + 16 * v2;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);

  v11 = SnapshotDataSource.itemIdentifiers(in:)(v9, v10, v5, &protocol witness table for DataSourceWithLayout<A>);

  v12 = *(v11 + 16);

  if (!v12 && *(v1 + 40) == 1)
  {
    if (qword_1EDC6D2F0 == -1)
    {
LABEL_7:
      v23 = xmmword_1EDC6D338;
      v24 = unk_1EDC6D348;
      v25 = xmmword_1EDC6D358;
      v26 = unk_1EDC6D368;
      v19 = xmmword_1EDC6D2F8;
      v20 = *&qword_1EDC6D308;
      v21 = xmmword_1EDC6D318;
      v22 = unk_1EDC6D328;
      sub_1BA0117AC();
      v18[4] = xmmword_1EDC6D338;
      v18[5] = unk_1EDC6D348;
      v18[6] = xmmword_1EDC6D358;
      v18[7] = unk_1EDC6D368;
      v18[0] = xmmword_1EDC6D2F8;
      v18[1] = *&qword_1EDC6D308;
      v18[2] = xmmword_1EDC6D318;
      v18[3] = unk_1EDC6D328;
      sub_1B9F1D9A4(&v19, &v17);
      return sub_1B9F293A8(v18);
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v16 = *(v1 + 48);
  *&v19 = v2;
  *(&v19 + 1) = v3;
  *&v20 = v4;
  return v16(&v19);
}

uint64_t sub_1BA3A35AC()
{
  sub_1BA3A3FD4();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v0 = *(&v5 + 1);
    v1 = v6;
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    v2 = (*(v1 + 8))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(&v4);
    return v2;
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_1B9F3BB6C(&v4);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1BA3A3684(uint64_t a1, uint64_t a2)
{
  sub_1BA3A3FD4();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v4 = *(&v8 + 1);
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v5 + 16))(a1, a2, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    return sub_1B9F3BB6C(&v7);
  }
}

uint64_t DataSourceWithLayout.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DataSourceWithLayout.__deallocating_deinit()
{
  DataSourceWithLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3A37C8()
{
  sub_1BA3A3D14();

  return swift_unknownObjectRetain();
}

uint64_t DataSourceWithLayout<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(*v4 + 80);
  swift_unknownObjectRetain();
  v9(a1, a2, a3, v10, a4);
  return swift_unknownObjectRelease();
}

uint64_t DataSourceWithLayout<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v6 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v5(a1, v6, a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA3A3B74(void *a1, uint64_t (*a2)(void, void))
{
  result = a2(*a1, a1[1]);
  if (!result)
  {
    sub_1BA4A7DF8();

    v3 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v3);

    MEMORY[0x1BFAF1350](0xD00000000000002ALL, 0x80000001BA4EB020);
    swift_unknownObjectRetain();
    v4 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v4);

    sub_1B9FF806C();
    swift_allocError();
    *v5 = 91;
    *(v5 + 8) = 0xE100000000000000;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_1BA3A3C98(uint64_t a1, __int128 *a2)
{
  sub_1BA0117AC();
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  sub_1B9F1D9A4(a2, &v8);
  return sub_1B9F293A8(v9);
}

uint64_t *sub_1BA3A3D24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v4[2] = a1;
  v9 = *(v8 + 88);
  v10 = *(v9 + 8);
  v11 = *(v8 + 80);
  swift_unknownObjectRetain();
  v4[3] = v10(v11, v9);
  v4[4] = v12;
  *(v4 + 40) = a2;
  v4[6] = a3;
  v4[7] = a4;
  return v4;
}

uint64_t sub_1BA3A3DD4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DataSourceWithLayout();
  v8 = swift_allocObject();
  v9 = *v8;
  *(v8 + 16) = a1;
  v10 = *(v9 + 88);
  v11 = *(v10 + 8);
  v12 = *(v9 + 80);
  swift_unknownObjectRetain();
  *(v8 + 24) = v11(v12, v10);
  *(v8 + 32) = v13;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  return v8;
}

uint64_t *sub_1BA3A3ED0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *v4;
  v4[2] = a1;
  *(v4 + 40) = a2;
  v9 = v8;
  v10 = *(v7 + 88);
  v11 = *(v10 + 8);
  v12 = *(v7 + 80);
  swift_unknownObjectRetain();
  v4[3] = v11(v12, v10);
  v4[4] = v13;
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v10;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = v9;
  v4[6] = sub_1BA3A4180;
  v4[7] = v14;
  return v4;
}

unint64_t sub_1BA3A3FD4()
{
  result = qword_1EDC63A40;
  if (!qword_1EDC63A40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC63A40);
  }

  return result;
}

uint64_t dispatch thunk of DataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutSectionProvider:)()
{
  return (*(v0 + 128))();
}

{
  return (*(v0 + 136))();
}

uint64_t static UICollectionLayoutListConfiguration.healthGroupedList()()
{
  v0 = sub_1BA4A47D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A47B8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69DC238], v5);
  sub_1BA4A47E8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC280], v0);
  sub_1BA4A4808();
  v8 = [objc_opt_self() clearColor];
  return sub_1BA4A4818();
}

void *static NSCollectionLayoutSection.healthStandardList(configuration:environment:)(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_1BA4A7368();

  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v3 = sub_1BA4A7638();
  [v3 setContentInsetsReference_];
  sub_1BA4A65A8();
  [v3 setInterGroupSpacing_];
  return v3;
}

id static NSCollectionLayoutBoundarySupplementaryItem.healthFullWidthHeader(height:alignment:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() fractionalWidthDimension_];
  v5 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:a1];

  v6 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:*MEMORY[0x1E69DDC08] alignment:a2];
  return v6;
}

id static NSCollectionLayoutItem.healthFullWidth(heightDimension:)(uint64_t a1)
{
  v2 = [objc_opt_self() fractionalWidthDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v2 heightDimension:a1];

  v4 = [objc_opt_self() itemWithLayoutSize_];
  return v4;
}

id static NSCollectionLayoutGroup.healthOneUp(item:)(void *a1)
{
  v2 = [a1 layoutSize];
  v3 = [objc_opt_self() horizontalGroupWithLayoutSize:v2 repeatingSubitem:a1 count:1];

  return v3;
}

id static NSCollectionLayoutSection.healthStandard(group:widthDesignation:)(uint64_t a1)
{
  v1 = [objc_opt_self() sectionWithGroup_];
  sub_1BA4A75C8();
  [v1 setContentInsets_];
  sub_1BA4A65A8();
  [v1 setInterGroupSpacing_];
  [v1 setContentInsetsReference_];
  [v1 setSupplementaryContentInsetsReference_];
  return v1;
}

id static NSCollectionLayoutSection.healthStandardOneUp(heightDimension:widthDesignation:)(uint64_t a1)
{
  v2 = [objc_opt_self() fractionalWidthDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v2 heightDimension:a1];

  v4 = [objc_opt_self() itemWithLayoutSize_];
  v5 = [v4 layoutSize];
  v6 = [objc_opt_self() horizontalGroupWithLayoutSize:v5 repeatingSubitem:v4 count:1];

  v7 = [objc_opt_self() sectionWithGroup_];
  sub_1BA4A75C8();
  [v7 setContentInsets_];
  sub_1BA4A65A8();
  [v7 setInterGroupSpacing_];
  [v7 setContentInsetsReference_];
  [v7 setSupplementaryContentInsetsReference_];

  return v7;
}

void *static NSCollectionLayoutSection.healthStandardGroupedList(environment:)(void *a1)
{
  v2 = sub_1BA4A47D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A47B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A4848();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC238], v6, v12);
  sub_1BA4A47E8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC280], v2);
  sub_1BA4A4808();
  v15 = [objc_opt_self() clearColor];
  sub_1BA4A4818();
  v16 = [a1 traitCollection];
  sub_1BA4A7368();

  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v17 = sub_1BA4A7638();
  [v17 setContentInsetsReference_];
  sub_1BA4A65A8();
  [v17 setInterGroupSpacing_];
  (*(v11 + 8))(v14, v10);
  return v17;
}

id AllDataDataSourceConstructor.makeFetchedResultsController(with:sectionIdentifier:segment:sourceProfiles:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v11 = sub_1BA4A0FA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0CC30(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  sub_1BA4A0F18();
  sub_1BA4A3C18();
  (*(v12 + 8))(v14, v11);
  v18 = (*(a6 + 32))(a2, v17, a3 & 1, 0, a4, a5, a6);
  sub_1BA4A27B8();
  v19 = MEMORY[0x1BFAED110]();
  [v19 setPredicate_];
  (*(a6 + 8))(a5, a6);
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v20 = sub_1BA4A6AE8();

  [v19 setSortDescriptors_];

  v21 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v22 = [v21 initWithFetchRequest:v19 managedObjectContext:v25 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F1C1B0(v17);
  return v22;
}

id sub_1BA3A4DC8(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1B9F0CC30(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = 0;
  if (a4)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    sub_1B9F0CC30(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5460;
    v14 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1B9F1BE20();
    *(v13 + 64) = v15;
    *(v13 + 32) = 0xD000000000000016;
    *(v13 + 40) = 0x80000001BA4F41D0;
    v16 = sub_1BA4A2738();
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 72) = v16;
    *(v13 + 80) = v17;
    v12 = sub_1BA4A6EE8();
  }

  sub_1BA4A27B8();
  v18 = sub_1BA4A0FA8();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = MEMORY[0x1BFAED020](a1, 0, v11, a5);
  sub_1B9F1C1B0(v11);
  v20 = v19;
  v21 = sub_1BA4A2608();
  v33[4] = v19;
  v33[5] = a2;
  v33[6] = v12;
  v33[7] = v21;
  v32 = MEMORY[0x1E69E7CC0];
  v22 = v12;
  v23 = v21;
  result = a2;
  v25 = 0;
LABEL_4:
  if (v25 <= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v25;
  }

  while (1)
  {
    if (v25 == 4)
    {
      sub_1B9F8AE1C();
      swift_arrayDestroy();
      sub_1B9F0ADF8(0, &qword_1EDC6B630);
      v29 = sub_1BA4A6AE8();

      v30 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v30;
    }

    if (v26 == v25)
    {
      break;
    }

    v27 = v33[v25++ + 4];
    if (v27)
    {
      v28 = v27;
      MEMORY[0x1BFAF1510]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      result = sub_1BA4A6BB8();
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

id sub_1BA3A5128(char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = a6;
  v59 = a4;
  v58 = a3;
  v55 = a2;
  v7 = sub_1BA4A1728();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v48 - v10;
  sub_1B9F0CC30(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - v12;
  v62 = sub_1BA4A0FA8();
  v57 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A3BD8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v22 = *(v16 + 16);
  v50 = a1;
  v22(&v48 - v20, a1, v15, v19);
  v23 = (*(v16 + 88))(v21, v15);
  v24 = *MEMORY[0x1E69A3E30];
  sub_1B9F0CC30(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v25 = sub_1BA4A1C68();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v63 = swift_allocObject();
  v48 = xmmword_1BA4B5480;
  *(v63 + 16) = xmmword_1BA4B5480;
  v28 = *(v26 + 104);
  if (v23 == v24)
  {
    v28(v63 + v27, *MEMORY[0x1E69A3BB8], v25);
  }

  else
  {
    v28(v63 + v27, *MEMORY[0x1E69A3BB0], v25);
    (*(v16 + 8))(v21, v15);
  }

  sub_1BA1FA3F8(v55, v13);
  v29 = v57;
  if ((*(v57 + 48))(v13, 1, v62) == 1)
  {
    sub_1B9F1C1B0(v13);
    v30 = v49;
    (*(v16 + 104))(v49, *MEMORY[0x1E69A3E48], v15);
    sub_1BA3A5D6C();
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    if (v66 == v64 && v67 == v65)
    {
      (*(v16 + 8))(v30, v15);
    }

    else
    {
      v43 = sub_1BA4A8338();
      (*(v16 + 8))(v30, v15);

      if ((v43 & 1) == 0)
      {
        v42 = 0;
        goto LABEL_12;
      }
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    sub_1B9F0CC30(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = v48;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1B9F1BE20();
    *(v44 + 32) = 0x746E6176656C6572;
    *(v44 + 40) = 0xEF65746144646E45;
    v42 = sub_1BA4A6EE8();
  }

  else
  {
    (*(v29 + 32))();
    v55 = sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v50 = "tAllDataDataSource";
    sub_1B9F0CC30(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BA4C9870;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v32 = sub_1B9F1BE20();
    *(v31 + 64) = v32;
    *(v31 + 32) = 0x746E6176656C6572;
    *(v31 + 40) = 0xEF65746144646E45;
    v33 = v51;
    sub_1BA4A0F88();
    v34 = sub_1BA4A16B8();
    v35 = v54;
    v36 = *(v53 + 8);
    v36(v33, v54);
    v37 = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
    *(v31 + 96) = v37;
    v38 = sub_1B9F6A24C();
    *(v31 + 72) = v34;
    *(v31 + 136) = MEMORY[0x1E69E6158];
    *(v31 + 144) = v32;
    *(v31 + 104) = v38;
    *(v31 + 112) = 0x746E6176656C6572;
    *(v31 + 120) = 0xEF65746144646E45;
    v39 = v52;
    v40 = v56;
    sub_1BA4A0F58();
    v41 = sub_1BA4A16B8();
    v36(v39, v35);
    *(v31 + 176) = v37;
    *(v31 + 184) = v38;
    *(v31 + 152) = v41;
    v42 = sub_1BA4A6EE8();
    (*(v29 + 8))(v40, v62);
  }

  v45 = v42;
LABEL_12:
  v46 = sub_1BA3A4DC8(v63, v42, v58 & 1, 0, v59);

  return v46;
}

uint64_t _s18HealthExperienceUI07AllDataE17SourceConstructorPAAE15sortDescriptorsSaySo16NSSortDescriptorCGvg_0()
{
  sub_1B9F109F8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B7510;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = sub_1BA4A6758();
  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = sub_1BA4A6758();
  v6 = [v4 initWithKey:v5 ascending:1 selector:sel_localizedStandardCompare_];

  *(v0 + 40) = v6;
  return v0;
}

id _s18HealthExperienceUI07AllDataE17SourceConstructorPAAE016makePredicateForA14RecordsSegment14sourceProfilesSo11NSPredicateCSay0A8Platform0F7ProfileOGSg_tF_0(uint64_t a1)
{
  sub_1B9F0CC30(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v2 = sub_1BA4A1C68();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69A3BB0], v2);
  v6 = sub_1BA3A4DC8(v5, 0, 1, 0, a1);

  return v6;
}

id _s18HealthExperienceUI07AllDataE17SourceConstructorPAAE04makeA31RecordsFetchedResultsController4with14sourceProfilesSo09NSFetchedkL0Cy0A8Platform8FeedItemCGSo22NSManagedObjectContextC_SayAI0F7ProfileOGSgtF_0(uint64_t a1, uint64_t a2)
{
  sub_1BA4A27B8();
  v4 = MEMORY[0x1BFAED110]();
  v5 = _s18HealthExperienceUI07AllDataE17SourceConstructorPAAE016makePredicateForA14RecordsSegment14sourceProfilesSo11NSPredicateCSay0A8Platform0F7ProfileOGSg_tF_0(a2);
  [v4 setPredicate_];

  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5470;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithKey:v8 ascending:1 selector:sel_localizedStandardCompare_];

  *(v6 + 32) = v9;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v10 = sub_1BA4A6AE8();

  [v4 setSortDescriptors_];

  v11 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v4 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  return v11;
}

unint64_t sub_1BA3A5D6C()
{
  result = qword_1EBBEFB08;
  if (!qword_1EBBEFB08)
  {
    sub_1BA4A3BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFB08);
  }

  return result;
}

uint64_t sub_1BA3A5DC4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442EBC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1BA3A5FDC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BA3A5E3C(uint64_t a1, void *a2)
{
  sub_1BA3A7E84(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA3A7CFC(a1 + *(v7 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1BA3A7D7C(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
LABEL_5:
    v12 = 0;
    return v12 & 1;
  }

  v9 = *(v6 + 7);
  v10 = v9;
  sub_1BA3A7DEC(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v9)
  {
    goto LABEL_5;
  }

  sub_1B9FD8844();
  v11 = a2;
  v12 = sub_1BA4A7798();

  return v12 & 1;
}

uint64_t sub_1BA3A5FDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BA4A82B8();
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
        sub_1BA025410();
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BA3A6278(v7, v8, a1, v4);
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
    return sub_1BA3A60D8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA3A60D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 16 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;

      v9 = v7;

      v10 = [v8 displayName];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      v11 = [v9 displayName];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1B9F252FC();
      v12 = sub_1BA4A7B78();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 16;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v13;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA3A6278(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v105 = result;
    while (1)
    {
      v11 = v9;
      v106 = v9;
      if (v9 + 1 >= v8)
      {
        v20 = v9 + 1;
      }

      else
      {
        v112 = v8;
        v101 = v10;
        v103 = v5;
        v12 = (*v6 + 16 * (v9 + 1));
        v107 = 16 * v9;
        v13 = (*v6 + 16 * v9);
        v14 = *v13;
        v15 = *v12;

        v9 = v14;

        v16 = [v15 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        v17 = [v9 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        sub_1B9F252FC();
        v110 = sub_1BA4A7B78();

        v18 = v11 + 2;
        v19 = v13 + 3;
        while (1)
        {
          v20 = v112;
          if (v112 == v18)
          {
            break;
          }

          v9 = *v19;
          v21 = v19 + 2;
          v22 = *(v19 - 1);
          v23 = v19[1];

          v24 = v22;

          v25 = [v23 displayName];
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

          v26 = [v24 displayName];
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

          v27 = sub_1BA4A7B78();

          ++v18;
          v19 = v21;
          if ((v110 == -1) == (v27 != -1))
          {
            v20 = (v18 - 1);
            break;
          }
        }

        v10 = v101;
        v5 = v103;
        v6 = a3;
        v7 = v105;
        v11 = v106;
        if (v110 == -1)
        {
          if (v20 < v106)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            return result;
          }

          if (v106 < v20)
          {
            v28 = 16 * v20 - 16;
            v29 = v106;
            v30 = v20;
            v31 = v107;
            do
            {
              if (v29 != --v30)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_128;
                }

                v32 = *(v33 + v31);
                *(v33 + v31) = *(v33 + v28);
                *(v33 + v28) = v32;
              }

              ++v29;
              v28 -= 16;
              v31 += 16;
            }

            while (v29 < v30);
            v11 = v106;
          }
        }
      }

      v34 = v6[1];
      if (v20 >= v34)
      {
        break;
      }

      if (__OFSUB__(v20, v11))
      {
        goto LABEL_120;
      }

      if (v20 - v11 >= a4)
      {
        v9 = v20;
        if (v20 < v106)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v11 = v106;
        if (__OFADD__(v106, a4))
        {
          goto LABEL_121;
        }

        if (&v106[a4] >= v34)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = &v106[a4];
        }

        if (v9 < v106)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v20 == v9)
        {
          break;
        }

        v102 = v10;
        v104 = v5;
        v114 = *v6;
        v35 = *v6 + 16 * v20 - 16;
        v36 = &v106[-v20];
        v108 = v9;
        do
        {
          v111 = v35;
          v113 = v20;
          v37 = *(v114 + 16 * v20);
          v109 = v36;
          do
          {
            v38 = *v35;
            v39 = v37;

            v40 = v38;

            v41 = [v39 displayName];
            _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

            v42 = [v40 displayName];
            _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

            sub_1B9F252FC();
            v43 = sub_1BA4A7B78();

            if (v43 != -1)
            {
              break;
            }

            if (!v114)
            {
              goto LABEL_125;
            }

            v44 = *v35;
            v37 = *(v35 + 16);
            *v35 = v37;
            *(v35 + 16) = v44;
            v35 -= 16;
          }

          while (!__CFADD__(v36++, 1));
          v20 = v113 + 1;
          v35 = v111 + 16;
          v9 = v108;
          v36 = v109 - 1;
        }

        while ((v113 + 1) != v108);
        v10 = v102;
        v5 = v104;
        v6 = a3;
        v7 = v105;
        if (v108 < v106)
        {
          goto LABEL_119;
        }
      }

LABEL_41:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BA27F470(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v47 = *(v10 + 16);
      v46 = *(v10 + 24);
      v48 = v47 + 1;
      v49 = v106;
      if (v47 >= v46 >> 1)
      {
        result = sub_1BA27F470((v46 > 1), v47 + 1, 1, v10);
        v49 = v106;
        v10 = result;
      }

      *(v10 + 16) = v48;
      v50 = v10 + 16 * v47;
      *(v50 + 32) = v49;
      *(v50 + 40) = v9;
      v51 = *v7;
      if (!*v7)
      {
        goto LABEL_129;
      }

      if (v47)
      {
        while (1)
        {
          v52 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v53 = *(v10 + 32);
            v54 = *(v10 + 40);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_60:
            if (v56)
            {
              goto LABEL_108;
            }

            v69 = (v10 + 16 * v48);
            v71 = *v69;
            v70 = v69[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_111;
            }

            v75 = (v10 + 32 + 16 * v52);
            v77 = *v75;
            v76 = v75[1];
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_114;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_115;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v48 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v79 = (v10 + 16 * v48);
          v81 = *v79;
          v80 = v79[1];
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_74:
          if (v74)
          {
            goto LABEL_110;
          }

          v82 = v10 + 16 * v52;
          v84 = *(v82 + 32);
          v83 = *(v82 + 40);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_113;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_81:
          v90 = v52 - 1;
          if (v52 - 1 >= v48)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          if (!*v6)
          {
            goto LABEL_126;
          }

          v91 = *(v10 + 32 + 16 * v90);
          v92 = *(v10 + 32 + 16 * v52 + 8);
          sub_1BA3A6AF8((*v6 + 16 * v91), (*v6 + 16 * *(v10 + 32 + 16 * v52)), (*v6 + 16 * v92), v51);
          if (v5)
          {
          }

          if (v92 < v91)
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1BA442D80(v10);
          }

          if (v90 >= *(v10 + 16))
          {
            goto LABEL_105;
          }

          v93 = v10 + 16 * v90;
          *(v93 + 32) = v91;
          *(v93 + 40) = v92;
          result = sub_1BA442CF4(v52);
          v48 = *(v10 + 16);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = v10 + 32 + 16 * v48;
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_106;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_107;
        }

        v64 = (v10 + 16 * v48);
        v66 = *v64;
        v65 = v64[1];
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_109;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_112;
        }

        if (v68 >= v60)
        {
          v86 = (v10 + 32 + 16 * v52);
          v88 = *v86;
          v87 = v86[1];
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_116;
          }

          if (v55 < v89)
          {
            v52 = v48 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v105;
      if (v9 >= v8)
      {
        goto LABEL_92;
      }
    }

    v9 = v20;
    if (v20 < v11)
    {
      goto LABEL_119;
    }

    goto LABEL_41;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_130;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_123:
    result = sub_1BA442D80(v10);
    v10 = result;
  }

  v94 = *(v10 + 16);
  if (v94 >= 2)
  {
    while (*v6)
    {
      v95 = *(v10 + 16 * v94);
      v96 = v10;
      v97 = *(v10 + 16 * (v94 - 1) + 32);
      v10 = *(v10 + 16 * (v94 - 1) + 40);
      sub_1BA3A6AF8((*v6 + 16 * v95), (*v6 + 16 * v97), (*v6 + 16 * v10), v9);
      if (v5)
      {
      }

      if (v10 < v95)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_1BA442D80(v96);
      }

      if (v94 - 2 >= *(v96 + 2))
      {
        goto LABEL_118;
      }

      v98 = &v96[16 * v94];
      *v98 = v95;
      *(v98 + 1) = v10;
      result = sub_1BA442CF4(v94 - 1);
      v10 = v96;
      v94 = *(v96 + 2);
      if (v94 <= 1)
      {
      }
    }

    goto LABEL_127;
  }
}

uint64_t sub_1BA3A6AF8(void **__src, id *__dst, char *a3, void **a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v12] <= a4)
    {
      v22 = a3;
      memmove(a4, __dst, 16 * v12);
      a3 = v22;
    }

    v40 = &v4[2 * v12];
    if (v10 >= 16 && v5 > v6)
    {
      v35 = v6;
LABEL_26:
      v34 = v5 - 2;
      v23 = a3 - 16;
      v24 = v40;
      v39 = v5;
      do
      {
        v37 = v23;
        v25 = (v23 + 16);
        v26 = *(v24 - 2);
        v24 -= 2;
        v27 = *(v5 - 2);
        v28 = v26;

        v29 = v27;

        v30 = [v28 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        v31 = [v29 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        sub_1B9F252FC();
        v32 = sub_1BA4A7B78();

        if (v32 == -1)
        {
          a3 = v37;
          if (v25 != v39)
          {
            *v37 = *v34;
          }

          if (v40 <= v4 || (v5 = v34, v34 <= v35))
          {
            v5 = v34;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        if (v25 != v40)
        {
          *v37 = *v24;
        }

        v23 = v37 - 16;
        v40 = v24;
        v5 = v39;
      }

      while (v24 > v4);
      v40 = v24;
    }
  }

  else
  {
    if (a4 != __src || &__src[2 * v9] <= a4)
    {
      v13 = a3;
      memmove(a4, __src, 16 * v9);
      a3 = v13;
    }

    v40 = &v4[2 * v9];
    if (v7 >= 16 && v5 < a3)
    {
      v36 = a3;
      while (1)
      {
        v38 = v5;
        v14 = *v4;
        v15 = *v5;

        v16 = v14;

        v17 = [v15 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        v18 = [v16 displayName];
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v4;

        sub_1B9F252FC();
        v20 = sub_1BA4A7B78();

        if (v20 != -1)
        {
          break;
        }

        v21 = v38;
        v5 = v38 + 2;
        if (v6 != v38)
        {
          goto LABEL_14;
        }

LABEL_15:
        v6 += 2;
        if (v4 >= v40 || v5 >= v36)
        {
          goto LABEL_36;
        }
      }

      v21 = v4;
      v4 += 2;
      v5 = v38;
      if (v6 == v19)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v6 = *v21;
      goto LABEL_15;
    }

LABEL_36:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v4 || v5 >= (v4 + ((v40 - v4 + (v40 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v4, 16 * ((v40 - v4) / 16));
  }

  return 1;
}

uint64_t _s18HealthExperienceUI031SummarySharingSelectedDataTypesG6SourceC31withCategorySectionsIfNecessary5items5storeSayACGSayAA0de10SelectableG8TypeItemVG_0A8Platform0aB5Store_ptFZ_0(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1BA3A7E84(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v79 - v7;
  sub_1BA3A7E84(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v3);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v79 - v9;
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v79 - v17;
  v19 = *(a1 + 16);
  v85 = v16;
  v86 = v15;
  if (v19)
  {
    v20 = *(v15 + 40);
    v84 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = a1 + v84;
    v22 = MEMORY[0x1E69E7CC8];
    v23 = *(v16 + 72);
    v83 = v20;
    v87 = v23;
    while (1)
    {
      sub_1BA025290(v21, v18);
      sub_1BA3A7CFC(&v18[v20], v10, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v24 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v24 - 8) + 48))(v10, 1, v24) == 1)
      {
        sub_1BA3A7D7C(v10, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

      else
      {
        v25 = *(v10 + 7);
        v88 = v25;
        sub_1BA3A7DEC(v10, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v25)
        {
          if (v22[2] && (v26 = sub_1B9FDA96C(v88), (v27 & 1) != 0))
          {
            v28 = *(v22[7] + 8 * v26);
          }

          else
          {
            v28 = MEMORY[0x1E69E7CC0];
          }

          sub_1BA025290(v18, v13);
          v29 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1BA27F5C8(0, v28[2] + 1, 1, v28);
          }

          v31 = v28[2];
          v30 = v28[3];
          if (v31 >= v30 >> 1)
          {
            v28 = sub_1BA27F5C8(v30 > 1, v31 + 1, 1, v28);
          }

          v28[2] = v31 + 1;
          v32 = v13;
          sub_1BA025350(v13, v28 + v84 + v31 * v87);
          v33 = v29;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = v29;
          v36 = sub_1B9FDA96C(v88);
          v37 = v29[2];
          v38 = (v35 & 1) == 0;
          v39 = v37 + v38;
          if (__OFADD__(v37, v38))
          {
            goto LABEL_60;
          }

          v40 = v35;
          if (v33[3] >= v39)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v22 = v89;
              if ((v35 & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            else
            {
              sub_1BA0F1E00();
              v22 = v89;
              if ((v40 & 1) == 0)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
            sub_1BA0F3F54(v39, isUniquelyReferenced_nonNull_native);
            sub_1B9FD8844();
            v41 = sub_1B9FDA96C(v88);
            if ((v40 & 1) != (v42 & 1))
            {
              sub_1BA4A83B8();
              __break(1u);

              __break(1u);
              return result;
            }

            v36 = v41;
            v22 = v89;
            if ((v40 & 1) == 0)
            {
LABEL_19:
              v22[(v36 >> 6) + 8] |= 1 << v36;
              *(v22[6] + 8 * v36) = v88;
              *(v22[7] + 8 * v36) = v28;
              v43 = v22[2];
              v44 = __OFADD__(v43, 1);
              v45 = v43 + 1;
              if (v44)
              {
                goto LABEL_63;
              }

              v22[2] = v45;
              goto LABEL_24;
            }
          }

          *(v22[7] + 8 * v36) = v28;

LABEL_24:
          v13 = v32;
          v20 = v83;
          v23 = v87;
        }
      }

      sub_1BA3A7DEC(v18, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v21 += v23;
      if (!--v19)
      {
        goto LABEL_28;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC8];
LABEL_28:
  v46 = v22;
  v47 = v22[2];
  v88 = v46;
  if (v47)
  {
    v48 = sub_1BA021A00(v47, 0);
    v49 = sub_1BA023510(&v89, v48 + 4, v47, v46);

    sub_1B9F52E48();
    if (v49 == v47)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v89 = v48;
  v50 = sub_1BA3A5DC4(&v89);
  v51 = v89;
  v19 = v89[2];
  v52 = v19 + 1;
  v53 = 5;
  while (--v52)
  {
    v54 = v89[v53];
    v53 += 2;
    if (*(v54 + 16) >= 5uLL)
    {
      MEMORY[0x1EEE9AC00](v50);
      *(&v79 - 2) = v82;
      v10 = sub_1BA24A8A4(sub_1BA3A7E4C, (&v79 - 4), v51);

      return v10;
    }
  }

  sub_1B9F109F8();
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_1BA4B5470;
  if (!v19)
  {
LABEL_54:

    v66 = type metadata accessor for SummarySharingSelectionFlow(0);
    v19 = v81;
    (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
    sub_1B9F0A534(v82, &v89);
    if (qword_1EBBE83D8 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_55;
  }

  v55 = 0;
  v56 = v51 + 5;
  v57 = MEMORY[0x1E69E7CC0];
  while (v55 < v51[2])
  {
    v58 = *v56;
    v59 = *(*v56 + 16);
    v60 = v57[2];
    v61 = v60 + v59;
    if (__OFADD__(v60, v59))
    {
      goto LABEL_58;
    }

    v62 = swift_isUniquelyReferenced_nonNull_native();
    if (v62 && v61 <= v57[3] >> 1)
    {
      if (*(v58 + 16))
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v60 <= v61)
      {
        v63 = v60 + v59;
      }

      else
      {
        v63 = v60;
      }

      v57 = sub_1BA27F5C8(v62, v63, 1, v57);
      if (*(v58 + 16))
      {
LABEL_50:
        if ((v57[3] >> 1) - v57[2] < v59)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v59)
        {
          v64 = v57[2];
          v44 = __OFADD__(v64, v59);
          v65 = v64 + v59;
          if (v44)
          {
            goto LABEL_62;
          }

          v57[2] = v65;
        }

        goto LABEL_39;
      }
    }

    if (v59)
    {
      goto LABEL_59;
    }

LABEL_39:
    ++v55;
    v56 += 2;
    if (v19 == v55)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  swift_once();
LABEL_55:
  v68 = qword_1EBBEC9F8;
  v67 = unk_1EBBECA00;
  v69 = v80;
  sub_1BA3A7CFC(v19, v80, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  sub_1BA3A7E84(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v70 = sub_1BA4A1C68();
  v71 = *(v70 - 8);
  v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1BA4B5480;
  (*(v71 + 104))(v73 + v72, *MEMORY[0x1E69A3B68], v70);
  type metadata accessor for SummarySharingSelectedDataTypesDataSource();
  v74 = swift_allocObject();
  *(v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(&v89, v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v75 = (v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v75 = v68;
  v75[1] = v67;
  sub_1BA3A7CFC(v69, v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  *(v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v73;
  *(v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 0;
  v76 = (v74 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v76 = 0;
  v76[1] = 0;

  v77 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  sub_1BA3A7D7C(v69, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(&v89);
  sub_1BA3A7D7C(v19, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  *(v10 + 4) = v77;

  return v10;
}

uint64_t sub_1BA3A7984(void *a1, uint64_t a2)
{
  sub_1BA3A7E84(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5 - 8];
  sub_1B9F0A534(a2, v24);
  v7 = [a1 displayName];
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;

  v11 = type metadata accessor for SummarySharingSelectionFlow(0);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1BA3A7E84(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v12 = sub_1BA4A1C68();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5480;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x1E69A3B68], v12);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  type metadata accessor for SummarySharingSelectedDataTypesDataSource();
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v24, v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v18 = (v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v18 = v8;
  v18[1] = v10;
  sub_1BA3A7CFC(v6, v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v15;
  *(v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 0;
  v19 = (v17 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v19 = sub_1BA3A7CF4;
  v19[1] = v16;
  v20 = a1;
  v21 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  sub_1BA3A7D7C(v6, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21;
}

uint64_t sub_1BA3A7CFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA3A7E84(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3A7D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA3A7E84(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA3A7DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA3A7E4C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA3A7984(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

void sub_1BA3A7E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *sub_1BA3A7EE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12[0] = *a1;
  v12[1] = v3;
  v13 = *(a1 + 16);
  v14 = v4;
  v15 = v5;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1BA4A4F28();

  v6 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  sub_1B9F0A534(a2 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager, v10);
  v7 = objc_allocWithZone(type metadata accessor for CategoryViewController());
  v8 = sub_1BA2F93F4(v12, v6, &v11, v10);

  return v8;
}

uint64_t HKTCategoryViewFactory.createViewController(hkTypeGroup:pluginName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v8 = sub_1BA4A3EA8();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v33 = *(a1 + 24);
  v34 = *(a1 + 32);
  sub_1BA44E67C(a2, a3, v41);
  if (!v4)
  {
    v29 = v10;
    v30 = v8;
    v31 = a3;
    v14 = v42;
    v15 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v36 = v12;
    v37 = v11;
    v38 = v13;
    v39 = v33;
    v40 = v34;
    v16 = (*(v15 + 8))(&v36, v35, v14, v15);
    if (v16)
    {
      v8 = v16;
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    else
    {
      v18 = v29;
      sub_1BA4A3E08();
      v19 = v31;

      v20 = sub_1BA4A3E88();
      v21 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v44 = v23;
        *v22 = 136315394;
        *(v22 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA5048D0, &v44);
        *(v22 + 12) = 2082;
        v36 = a2;
        v37 = v19;
        LOBYTE(v38) = 0;

        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v44);
        v19 = v31;

        *(v22 + 14) = v26;
        _os_log_impl(&dword_1B9F07000, v20, v21, "[%s]: %{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v23, -1, -1);
        MEMORY[0x1BFAF43A0](v22, -1, -1);
      }

      (*(v32 + 8))(v18, v30);
      sub_1B9FCB51C();
      v8 = swift_allocError();
      *v27 = a2;
      *(v27 + 8) = v19;
      *(v27 + 16) = 0;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v41);
    }
  }

  return v8;
}

uint64_t sub_1BA3A833C(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1BA3AEDB8(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t InternalSettingsFeatureStateViewController.__allocating_init(featureIdentifier:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1BA3B0820(a1);

  return v4;
}

uint64_t InternalSettingsFeatureStateViewController.init(featureIdentifier:)(void *a1)
{
  v2 = sub_1BA3B0820(a1);

  return v2;
}

Swift::Void __swiftcall InternalSettingsFeatureStateViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  sub_1BA4A7DF8();
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI42InternalSettingsFeatureStateViewController_featureIdentifier];
  v3 = NSStringFromHKFeatureIdentifier();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x6572757461654620, 0xEE00657461745320);
  v4 = sub_1BA4A6758();

  [v0 setTitle_];

  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI42InternalSettingsFeatureStateViewController_host];
  [v1 addChildViewController_];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v5 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v7 addSubview_];

  v10 = [v5 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1BA3B3030(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5890;
  v13 = [v5 view];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v12 + 32) = v19;
  v20 = [v5 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v12 + 40) = v26;
  v27 = [v5 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v12 + 48) = v33;
  v34 = [v5 view];
  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 trailingAnchor];

    v41 = [v36 constraintEqualToAnchor_];
    *(v12 + 56) = v41;
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v42 = sub_1BA4A6AE8();

    [v39 activateConstraints_];

    [v5 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

id InternalSettingsFeatureStateViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InternalSettingsFeatureStateViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InternalSettingsFeatureStateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = sub_1BA4A5938();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B0B28();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B1DBC(0, &qword_1EBBF1978, sub_1BA3B0B28, &qword_1EBBF1980, sub_1BA3B0B28);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = v1[1];
  v30 = *v1;
  v31 = v14;
  sub_1BA3B0BA4();
  sub_1BA4A5D88();
  sub_1BA4A5928();
  v15 = sub_1BA3B0C00(&qword_1EBBF1980, sub_1BA3B0B28);
  v16 = v29;
  sub_1BA4A6018();
  (*(v2 + 8))(v4, v16);
  (*(v7 + 8))(v9, v6);
  v17 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
  v18 = v14;
  v19 = [v17 featureIdentifier];
  v20 = NSStringFromHKFeatureIdentifier();
  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v23 = v22;

  v36 = v21;
  v37 = v23;
  v32 = v6;
  v33 = v29;
  v34 = v15;
  v35 = MEMORY[0x1E697C750];
  swift_getOpaqueTypeConformance2();
  sub_1B9F252FC();
  v24 = v26;
  sub_1BA4A5F58();

  return (*(v27 + 8))(v13, v24);
}

__n128 sub_1BA3A8ED4@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel);
  v4 = a1;
  v5 = sub_1BA4A5348();
  v7 = v6;
  sub_1BA3B3030(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1BA4A61A8();
  result = v9;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  return result;
}

void InternalSettingsFeatureStateView.init(featureIdentifier:healthStore:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  objc_allocWithZone(type metadata accessor for InternalSettingsFeatureStateModel(0));
  v7 = a1;
  v8 = a2;
  sub_1BA3818AC(v7, v8);
  if (v3)
  {
  }

  else
  {
    sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel);
    v9 = sub_1BA4A5348();
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
  }
}

uint64_t sub_1BA3A90B4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v146 = a1;
  sub_1BA3B0CF0(0);
  v144 = *(v3 - 8);
  v145 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v136 = v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B128C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v132 = v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B2BE4(0, &qword_1EBBF19C8, sub_1BA3B10C0);
  v131 = v7;
  v129 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v128 = v123 - v8;
  sub_1BA3B0FC4();
  v135 = v9;
  v134 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v133 = v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v130 = v123 - v12;
  sub_1BA3B0E68();
  v126 = v13;
  v125 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v124 = v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B0DD0(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v127 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v137 = v123 - v18;
  sub_1BA3B0E04(0, &qword_1EBBF1A00, sub_1BA3B0CF0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v151 = v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v150 = v123 - v22;
  v23 = type metadata accessor for InternalSettingsFeatureState();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v140 = v123 - v27;
  sub_1BA3B2BE4(0, &qword_1EBBF1A08, sub_1BA3B12C0);
  v143 = v28;
  v142 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v149 = v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v153 = v123 - v31;
  sub_1BA3B1394();
  v148 = v32;
  v141 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v147 = v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v152 = v123 - v37;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  LODWORD(v138) = *(v2 + 16);
  if (v138)
  {
    v42 = [*(*(v2 + 8) + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
    v43 = NSStringFromHKFeatureIdentifier();
    v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v46 = v45;

    v158 = v44;
    v159 = v46;
    sub_1B9F252FC();
    v47 = sub_1BA4A5E18();
    v49 = v48;
    LOBYTE(v43) = v50;
    sub_1BA4A5D58();
    v51 = sub_1BA4A5DE8();
    v139 = v2;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v123[1] = v57;

    sub_1BA102AF4(v47, v49, v43 & 1);

    v38 = sub_1BA4A5DD8();
    v39 = v58;
    LOBYTE(v47) = v59;
    v41 = v60;
    v61 = v52;
    v2 = v139;
    sub_1BA102AF4(v61, v54, v56 & 1);

    v40 = v47 & 1;
  }

  v158 = v38;
  v159 = v39;
  v160 = v40;
  v161 = v41;
  MEMORY[0x1EEE9AC00](v35);
  sub_1BA3B3030(0, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  sub_1BA3B1428();
  sub_1BA3B14BC();
  sub_1BA4A6338();
  sub_1BA4A57F8();
  v158 = sub_1BA4A5DF8();
  v159 = v62;
  LOBYTE(v160) = v63 & 1;
  v161 = v64;
  sub_1BA4A57F8();
  v154 = sub_1BA4A5DF8();
  v155 = v65;
  v156 = v66 & 1;
  v157 = v67;
  MEMORY[0x1EEE9AC00](v154);
  sub_1BA3B12C0(0);
  sub_1BA3B0C00(&qword_1EBBF1A40, sub_1BA3B12C0);
  sub_1BA4A6348();
  v68 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v140;
  sub_1BA4A4F28();

  v70 = *(v69 + *(v23 + 36));
  v71 = v70;
  sub_1BA3B1520(v69, type metadata accessor for InternalSettingsFeatureState);
  if (v70)
  {
    v72 = [v71 localAttributes];
    v73 = [v72 UDIDeviceIdentifier];

    if (!v73)
    {

      v70 = 0;
      v75 = sub_1BA383854();
      if (!v75)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    v74 = v71;
  }

  v75 = sub_1BA383854();
  if (!v75)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!*(v75 + 16))
  {

    v75 = 0;
  }

LABEL_10:
  v139 = v75;
  v140 = v70;
  if (v138)
  {
    v76 = 1;
    v77 = v150;
  }

  else
  {
    v138 = v68;
    if (sub_1BA384224())
    {
      sub_1BA4A57F8();
      v158 = sub_1BA4A5DF8();
      v159 = v78;
      LOBYTE(v160) = v79 & 1;
      v161 = v80;
      MEMORY[0x1EEE9AC00](v158);
      sub_1BA3B0EF4(0, &qword_1EBBF19A8, sub_1BA3B0F70);
      sub_1BA3B1D6C(&qword_1EBBF1A60, &qword_1EBBF19A8, sub_1BA3B0F70);
      v81 = v124;
      sub_1BA4A6338();
      v82 = v125;
      v83 = v126;
      (v125)[4](v137, v81, v126);
      v84 = 0;
    }

    else
    {
      v84 = 1;
      v83 = v126;
      v82 = v125;
    }

    v85 = v137;
    (v82[7])(v137, v84, 1, v83);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA4A4F28();

    v125 = *&v25[*(v23 + 40)];
    v86 = v125;
    sub_1BA3B1520(v25, type metadata accessor for InternalSettingsFeatureState);
    v126 = v86;
    sub_1BA4A57F8();
    v158 = sub_1BA4A5DF8();
    v159 = v87;
    LOBYTE(v160) = v88 & 1;
    v161 = v89;
    sub_1BA4A57F8();
    v154 = sub_1BA4A5DF8();
    v155 = v90;
    v156 = v91 & 1;
    v157 = v92;
    MEMORY[0x1EEE9AC00](v154);
    sub_1BA3B10C0(0);
    sub_1BA3B0C00(&qword_1EBBF19E8, sub_1BA3B10C0);
    v93 = v128;
    sub_1BA4A6348();
    type metadata accessor for InternalSettingsFeatureStateModel(0);
    sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel);
    v94 = sub_1BA4A5358();
    swift_getKeyPath();
    v95 = v132;
    sub_1BA4A5368();

    type metadata accessor for ErrorMessage(0);
    sub_1BA3B11B0();
    sub_1BA3B0C00(&qword_1EBBF19F0, type metadata accessor for ErrorMessage);
    v96 = v130;
    v97 = v131;
    sub_1BA4A5FC8();
    sub_1BA3B1520(v95, sub_1BA3B128C);
    (*(v129 + 8))(v93, v97);
    v98 = v127;
    sub_1BA3B2180(v85, v127, sub_1BA3B0DD0);
    v99 = v134;
    v100 = *(v134 + 16);
    v101 = v133;
    v102 = v135;
    v100(v133, v96, v135);
    v103 = v136;
    sub_1BA3B2180(v98, v136, sub_1BA3B0DD0);
    sub_1BA3B0D24();
    *(v103 + *(v104 + 48)) = v125;
    v100((v103 + *(v104 + 64)), v101, v102);
    v105 = *(v99 + 8);
    v105(v96, v102);
    sub_1BA3B1520(v85, sub_1BA3B0DD0);
    v105(v101, v102);

    sub_1BA3B1520(v98, sub_1BA3B0DD0);
    v77 = v150;
    sub_1B9FA4C68(v103, v150);
    v76 = 0;
  }

  (*(v144 + 56))(v77, v76, 1, v145);
  v106 = v141;
  v107 = *(v141 + 16);
  v109 = v147;
  v108 = v148;
  v107(v147, v152, v148);
  v110 = v142;
  v111 = *(v142 + 16);
  v112 = v143;
  v111(v149, v153, v143);
  sub_1B9FA4CCC(v77, v151);
  v113 = v146;
  v107(v146, v109, v108);
  sub_1BA3B1580();
  v115 = v114;
  v116 = v149;
  v111(&v113[v114[12]], v149, v112);
  v117 = v140;
  *&v113[v115[16]] = v140;
  *&v113[v115[20]] = v139;
  v118 = v151;
  sub_1B9FA4CCC(v151, &v113[v115[24]]);

  sub_1B9FA4D60(v150);
  v119 = *(v110 + 8);
  v119(v153, v112);
  v120 = *(v106 + 8);
  v121 = v148;
  v120(v152, v148);
  sub_1B9FA4D60(v118);

  v119(v116, v112);
  return (v120)(v147, v121);
}

void sub_1BA3AA2B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [*(*(a1 + 8) + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  *a2 = 0x696669746E656449;
  a2[1] = 0xEA00000000007265;
  a2[2] = v4;
  a2[3] = v6;
}

uint64_t sub_1BA3AA338@<X0>(uint64_t a1@<X8>)
{
  v37 = type metadata accessor for InternalSettingsFeatureState();
  MEMORY[0x1EEE9AC00](v37);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v7 = *v6;
  sub_1BA3B1520(v6, type metadata accessor for InternalSettingsFeatureState);
  v8 = sub_1BA3831CC();
  v39 = v9;
  if (v9)
  {
    v38 = v8;
    v10 = sub_1BA382F5C();
    v11 = 0xD000000000000011;
    if (v10 > 1)
    {
      v11 = 0xD000000000000013;
    }

    v36 = v11;
    if (v10 <= 1)
    {
      v12 = "Country Code State";
    }

    else
    {
      v12 = "Onboarded Country";
    }

    v13 = v12 | 0x8000000000000000;
  }

  else
  {
    v36 = 0;
    v13 = 0;
    v38 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v14 = *(v3 + 1);
  v15 = v3[16];
  sub_1BA3B1520(v3, type metadata accessor for InternalSettingsFeatureState);
  if (v15)
  {
    v34 = 7104878;
    v35 = 0xE300000000000000;
  }

  else
  {
    v40 = v14;
    sub_1BA0CC87C();
    v34 = sub_1BA4A7BE8();
    v35 = v16;
  }

  if (v7)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  if (v7)
  {
    v18 = 5457241;
  }

  else
  {
    v18 = 20302;
  }

  v19 = sub_1BA383574();
  v32 = v20;
  v33 = v19;
  v31 = 0x80000001BA504C20;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  sub_1BA3B1520(v6, type metadata accessor for InternalSettingsFeatureState);
  v21 = NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState();
  v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v24 = v23;

  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x80000001BA504BE0;
  *(a1 + 16) = v18;
  *(a1 + 24) = v17;
  v25 = v36;
  *(a1 + 32) = v36;
  *(a1 + 40) = v13;
  v26 = v39;
  *(a1 + 48) = v38;
  *(a1 + 56) = v26;
  *(a1 + 64) = 0xD000000000000019;
  *(a1 + 72) = 0x80000001BA504C00;
  v27 = v35;
  *(a1 + 80) = v34;
  *(a1 + 88) = v27;
  strcpy((a1 + 96), "Earliest Date");
  *(a1 + 110) = -4864;
  v28 = v32;
  *(a1 + 112) = v33;
  *(a1 + 120) = v28;
  v29 = v31;
  *(a1 + 128) = 0xD000000000000012;
  *(a1 + 136) = v29;
  *(a1 + 144) = v22;
  *(a1 + 152) = v24;

  sub_1BA3B1874(v25, v13);

  sub_1BA34A198(v25, v13);
}

uint64_t sub_1BA3AA750(uint64_t a1)
{
  sub_1BA4A57F8();
  v2 = *(a1 + 8);
  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel);
  v3 = v2;
  sub_1BA4A5348();
  sub_1BA3B0F70();
  return sub_1BA4A5318();
}

uint64_t sub_1BA3AA848@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  sub_1BA3B1158();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v32 - v12;
  sub_1BA4A57F8();
  v38 = v13;
  v35 = v14;
  v36 = v15;
  v16 = *a1;
  v45 = *(a1 + 24);
  v46 = v16;
  v44 = *(a1 + 5);
  v17 = swift_allocObject();
  v18 = a1[1];
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = a1[2];
  v37 = sub_1BA3B16E0;
  sub_1BA3B2180(&v46, v43, sub_1BA3B16E0);
  v34 = MEMORY[0x1E69E6720];
  sub_1BA3B1774(&v45, v43, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1BA3B3030);
  v19 = MEMORY[0x1E69E6720];
  sub_1BA3B1774(&v44, v43, &unk_1EBBF1A78, sub_1BA3B17E8, MEMORY[0x1E69E6720], sub_1BA3B0E04);
  sub_1BA4A61D8();
  v38 = sub_1BA4A57F8();
  v36 = v20;
  v21 = swift_allocObject();
  v22 = a1[1];
  v21[1] = *a1;
  v21[2] = v22;
  v21[3] = a1[2];
  sub_1BA3B2180(&v46, v43, v37);
  sub_1BA3B1774(&v45, v43, &qword_1EDC6E410, MEMORY[0x1E69E6158], v34, sub_1BA3B3030);
  sub_1BA3B1774(&v44, v43, &unk_1EBBF1A78, sub_1BA3B17E8, v19, sub_1BA3B0E04);
  v23 = v39;
  sub_1BA4A61D8();
  v24 = *(v5 + 16);
  v25 = v40;
  v26 = v33;
  v24(v40, v33, v4);
  v27 = v41;
  v24(v41, v23, v4);
  v28 = v42;
  v24(v42, v25, v4);
  sub_1BA3B10F4();
  v24(&v28[*(v29 + 48)], v27, v4);
  v30 = *(v5 + 8);
  v30(v23, v4);
  v30(v26, v4);
  v30(v27, v4);
  return (v30)(v25, v4);
}

void sub_1BA3AAC9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_1BA3B186C;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BA454240;
  v6[3] = &block_descriptor_105;
  v4 = _Block_copy(v6);
  v5 = v1;

  [v2 resetOnboardingWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_1BA3AAD98(uint64_t a1, void **a2)
{
  sub_1BA385CB0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1BA3B2180(a1, &v13 - v8, sub_1BA385CB0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA3B2180(v9, v6, sub_1BA385CB0);
  v11 = v10;
  sub_1BA4A4F38();
  return sub_1BA3B1520(v9, sub_1BA385CB0);
}

uint64_t sub_1BA3AAEC0(uint64_t a1)
{
  sub_1BA3B0E04(0, &qword_1EBBF1A68, MEMORY[0x1E697D628], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = (a1 + *(type metadata accessor for ErrorMessage(0) + 24));
  v6 = v5[1];
  v11 = *v5;
  v12 = v6;
  sub_1B9F252FC();

  sub_1BA4A5E18();
  swift_getErrorValue();
  v11 = sub_1BA4A8418();
  v12 = v7;
  sub_1BA4A5E18();
  v8 = sub_1BA4A6038();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  return sub_1BA4A6028();
}

uint64_t sub_1BA3AB0C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1BA021DA0(*(a1 + 16), 0);
  v4 = sub_1BA023E7C(&v6, v3 + 4, v1, a1);

  sub_1B9F52E48();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_1BA3A833C(&v6, sub_1BA442F20, sub_1BA3B2020, sub_1BA3AF1A4, sub_1BA3AEED4);
  swift_getKeyPath();
  sub_1BA3B1FEC(0);
  sub_1BA3B0C00(&qword_1EBBF1B10, sub_1BA3B1FEC);
  sub_1BA3B14BC();
  return sub_1BA4A62F8();
}

uint64_t sub_1BA3AB298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1BA3AB2E0()
{
  sub_1BA4A57F8();
  sub_1BA4A5DF8();
  sub_1BA3B1F30();
  sub_1BA3B2830(&qword_1EBBF1B18, sub_1BA3B1F30, sub_1BA3B14BC);
  return sub_1BA4A6338();
}

id sub_1BA3AB3D8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  sub_1BA3B2080();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  sub_1BA3B24E8(0, &qword_1EBBF1B28);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  sub_1BA4A57F8();
  v38 = sub_1BA4A5DF8();
  v39 = v19;
  v40 = v20 & 1;
  v41 = v21;
  v37 = a1;
  sub_1BA3B212C();
  sub_1BA4A6338();
  v22 = [a1 pairedAttributes];
  if (!v22)
  {
    v30 = 1;
    goto LABEL_5;
  }

  v23 = v22;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v25 = result;
    [result isAppleWatch];

    sub_1BA4A57F8();
    v38 = sub_1BA4A5DF8();
    v39 = v26;
    v40 = v27 & 1;
    v41 = v28;
    MEMORY[0x1EEE9AC00](v38);
    v29 = v35;
    sub_1BA4A6338();

    (*(v11 + 32))(v8, v29, v10);
    v30 = 0;
LABEL_5:
    (*(v11 + 56))(v8, v30, 1, v10);
    v31 = *(v11 + 16);
    v31(v13, v18, v10);
    sub_1BA3B2180(v8, v5, sub_1BA3B2080);
    v32 = v36;
    v31(v36, v13, v10);
    sub_1BA3B21E8();
    sub_1BA3B2180(v5, &v32[*(v33 + 48)], sub_1BA3B2080);
    sub_1BA3B1520(v8, sub_1BA3B2080);
    v34 = *(v11 + 8);
    v34(v18, v10);
    sub_1BA3B1520(v5, sub_1BA3B2080);
    return (v34)(v13, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA3AB86C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 featureVersion];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v29 = v6;

  v7 = [a1 updateVersion];
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v28 = v9;

  v10 = [a1 UDIDeviceIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = v13;
    v27 = v12;

    v14 = 0xE300000000000000;
    v15 = 4801621;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v26 = 0;
    v27 = 0;
  }

  v16 = [a1 yearOfRelease];
  if (v16)
  {
    v17 = v16;
    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v24 = v19;
    v25 = v18;

    v20 = 0xEF657361656C6552;
    v21 = 0x20666F2072616559;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v24 = 0;
    v25 = 0;
  }

  *a2 = 0x2065727574616546;
  *(a2 + 8) = 0xEF6E6F6973726556;
  *(a2 + 16) = v5;
  *(a2 + 24) = v29;
  strcpy((a2 + 32), "Update Version");
  *(a2 + 47) = -18;
  *(a2 + 48) = v8;
  *(a2 + 56) = v28;
  *(a2 + 64) = v15;
  *(a2 + 72) = v14;
  *(a2 + 80) = v27;
  *(a2 + 88) = v26;
  *(a2 + 96) = v21;
  *(a2 + 104) = v20;
  *(a2 + 112) = v25;
  *(a2 + 120) = v24;
  v22 = v20;

  sub_1BA3B1874(v15, v14);
  sub_1BA3B1874(v21, v22);
  sub_1BA34A198(v21, v22);
  sub_1BA34A198(v15, v14);
}

uint64_t sub_1BA3ABAF4()
{
  sub_1BA4A57F8();
  sub_1BA4A5DF8();
  sub_1BA4A57F8();
  sub_1BA4A5DF8();
  sub_1BA3B1A6C();
  sub_1BA3B1CC8();
  return sub_1BA4A6348();
}

uint64_t sub_1BA3ABC1C(uint64_t a1, void *a2)
{
  v3 = sub_1BA383AC4();
  v4 = sub_1BA3AEAF4(v3);

  v5 = v4[2];
  if (!v5)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v14 = v6;
    sub_1BA3A833C(&v14, sub_1BA442F34, sub_1B9FE97A4, sub_1BA3AF934, sub_1BA3AF018);

    v8 = sub_1B9FE6A4C(v14);

    v14 = v8;
    swift_getKeyPath();
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1BA3B1E98;
    *(v10 + 24) = v9;
    sub_1BA3B1B94(0);
    sub_1BA3B0EF4(0, &qword_1EBBF1AC0, sub_1BA3B1BC8);
    sub_1BA3B0C00(&qword_1EBBF1AD0, sub_1BA3B1B94);
    sub_1BA3B0C00(&qword_1EBBE9420, type metadata accessor for HKFeatureAvailabilityContext);
    sub_1BA3B1D6C(&qword_1EBBF1AE8, &qword_1EBBF1AC0, sub_1BA3B1BC8);
    v11 = a2;
    return sub_1BA4A62F8();
  }

  v6 = sub_1BA021E34(v5, 0);
  v7 = sub_1BA023510(&v14, v6 + 4, v5, v4);

  sub_1B9F52E48();
  if (v7 == v5)
  {
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1BA3ABF0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA3ABFC8(v6, v7);

  sub_1BA3B1BC8();
  sub_1B9F252FC();
  v8 = a4;

  v9 = a1;
  return sub_1BA4A5328();
}

uint64_t sub_1BA3ABFC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B9FF6B78(&unk_1F37FD540);
  swift_arrayDestroy();
  v5 = sub_1BA3AE370(a1, a2);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_22:

    v32 = MEMORY[0x1E69E6158];
    sub_1BA3B3030(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1BA3B1ED0(&qword_1EDC6B660, &qword_1EDC6B670, v32);
    v33 = sub_1BA4A66D8();

    return v33;
  }

  v40 = MEMORY[0x1E69E7CC0];
  result = sub_1B9F1C360(0, v6, 0);
  v8 = 0;
  v34 = v5;
  v35 = v5 + 32;
  v37 = *(v5 + 16);
  v38 = v4 + 56;
  v9 = v4;
  v39 = v4;
  v36 = v6;
  while (v8 != v37)
  {
    if (v8 >= *(v5 + 16))
    {
      goto LABEL_24;
    }

    v10 = (v35 + 32 * v8);
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];

    if (v8)
    {
      v15 = sub_1BA4A7AC8();
      v17 = v16;
      if (*(v9 + 16))
      {
        v18 = v15;
        sub_1BA4A8488();
        sub_1BA4A68C8();
        v19 = sub_1BA4A84D8();
        v20 = -1 << *(v39 + 32);
        v21 = v19 & ~v20;
        if ((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (1)
          {
            v23 = (*(v39 + 48) + 16 * v21);
            v24 = *v23 == v18 && v23[1] == v17;
            if (v24 || (sub_1BA4A8338() & 1) != 0)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v25 = sub_1BA4A7AC8();
          v27 = v31;
          v9 = v39;
          v5 = v34;
          goto LABEL_17;
        }
      }

LABEL_15:

      v9 = v39;
      v5 = v34;
    }

    v25 = MEMORY[0x1BFAF12A0](v11, v12, v14, v13);
    v27 = v26;
LABEL_17:

    v29 = *(v40 + 16);
    v28 = *(v40 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_1B9F1C360((v28 > 1), v29 + 1, 1);
      v9 = v39;
    }

    ++v8;
    *(v40 + 16) = v29 + 1;
    v30 = v40 + 16 * v29;
    *(v30 + 32) = v25;
    *(v30 + 40) = v27;
    if (v8 == v36)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1BA3AC31C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1BA4A5938();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B19C4();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B1DBC(0, &qword_1EBBF1AF0, sub_1BA3B19C4, &qword_1EBBF1AF8, sub_1BA3B19C4);
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v25 = v15;
  sub_1BA3B2BE4(0, &qword_1EBBF1AA8, sub_1BA3B1A6C);
  sub_1BA3B1C1C();
  sub_1BA4A5D88();
  sub_1BA4A5928();
  v16 = sub_1BA3B0C00(&qword_1EBBF1AF8, sub_1BA3B19C4);
  v17 = MEMORY[0x1E697C750];
  sub_1BA4A6018();
  (*(v3 + 8))(v5, v2);
  (*(v8 + 8))(v10, v7);
  sub_1BA4A57F8();
  v26 = v7;
  v27 = v2;
  v28 = v16;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_1BA4A5F48();

  return (*(v22 + 8))(v14, v18);
}

uint64_t sub_1BA3AC698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v29 = a3;
  v27[1] = a2;
  v31 = a4;
  v5 = sub_1BA4A5938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B23F0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B1DBC(0, &qword_1EBBF1BB0, sub_1BA3B23F0, &qword_1EBBF1BB8, sub_1BA3B23F0);
  v30 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - v16;
  v32 = v28;
  v33 = a2;
  v34 = v29;
  sub_1BA3B242C(0);
  sub_1BA3B0C00(&qword_1EBBF1BA8, sub_1BA3B242C);
  sub_1BA4A5D88();
  sub_1BA4A5928();
  v18 = sub_1BA3B0C00(&qword_1EBBF1BB8, sub_1BA3B23F0);
  v19 = MEMORY[0x1E697C750];
  sub_1BA4A6018();
  (*(v6 + 8))(v8, v5);
  (*(v11 + 8))(v13, v10);
  v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v22 = sub_1BA3ABFC8(v20, v21);
  v24 = v23;

  v39 = v22;
  v40 = v24;
  v35 = v10;
  v36 = v5;
  v37 = v18;
  v38 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1B9F252FC();
  v25 = v30;
  sub_1BA4A5F58();

  return (*(v15 + 8))(v17, v25);
}

uint64_t sub_1BA3ACA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v41 = a4;
  sub_1BA3B2544();
  v40 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1BA3B24E8(0, &qword_1EBBF1B78);
  v14 = v13;
  v38 = *(v13 - 8);
  v15 = v38;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v45 = a1;
  v46 = a2;
  v47 = a3;
  sub_1BA3B14BC();
  v37 = v20;
  sub_1BA4A6358();
  sub_1BA4A57F8();
  v51 = sub_1BA4A5DF8();
  v52 = v21;
  v53 = v22 & 1;
  v54 = v23;
  sub_1BA3ACE70(a3, v50);
  v48 = v50[0];
  v49 = v50[1];
  v42 = a1;
  v43 = a2;
  v44 = a3;
  sub_1BA3B25E0();
  sub_1BA3B3030(0, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  sub_1BA3B2830(&qword_1EBBF1BC0, sub_1BA3B25E0, sub_1BA3B28AC);
  sub_1BA3B1428();
  v35 = v12;
  sub_1BA4A6348();
  v24 = *(v15 + 16);
  v36 = v17;
  v24(v17, v20, v14);
  v25 = *(v8 + 16);
  v26 = v39;
  v27 = v12;
  v28 = v40;
  v25(v39, v27, v40);
  v29 = v41;
  v24(v41, v17, v14);
  sub_1BA3B2460();
  v25(&v29[*(v30 + 48)], v26, v28);
  v31 = *(v8 + 8);
  v31(v35, v28);
  v32 = *(v38 + 8);
  v32(v37, v14);
  v31(v26, v28);
  return (v32)(v36, v14);
}

uint64_t sub_1BA3ACE70@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (a1 + 41);
  v4 = *(a1 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 16;
    if (v5)
    {
      sub_1B9F0ADF8(0, &qword_1EDC6E360);

      sub_1BA4A57F8();
      result = sub_1BA4A5DF8();
      v4 = v9 & 1;
      goto LABEL_6;
    }
  }

  result = 0;
  v7 = 0;
  v8 = 0;
LABEL_6:
  *a2 = result;
  a2[1] = v7;
  a2[2] = v4;
  a2[3] = v8;
  return result;
}

uint64_t sub_1BA3ACF48(void *a1, void *a2, uint64_t a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  sub_1BA3B3030(0, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E62F8]);
  sub_1BA3B2704();
  sub_1BA3B1ED0(&qword_1EBBF1BA0, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation);
  sub_1BA3B0C00(&qword_1EBBE9498, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  sub_1BA3B28AC();
  swift_bridgeObjectRetain_n();
  v7 = a1;
  v8 = a2;
  return sub_1BA4A62F8();
}

id sub_1BA3AD0CC@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  result = [swift_getObjCClassFromMetadata() requirementIdentifier];
  *a1 = result;
  return result;
}

uint64_t sub_1BA3AD110(uint64_t a1, void *a2)
{
  sub_1BA3B14BC();
  sub_1BA3B2780();
  v3 = a2;
  swift_unknownObjectRetain();
  return sub_1BA4A5308();
}

uint64_t sub_1BA3AD1C8@<X0>(__int16 a1@<W1>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = HIBYTE(a1);
  swift_getObjectType();
  v5 = [swift_getObjCClassFromMetadata() requirementIdentifier];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  v9 = sub_1BA3ABFC8(v6, v8);
  v11 = v10;

  v12 = 0xE000000000000000;
  v13 = sub_1BA368BAC(v4, 0);
  v14 = (v13 & 1) == 0;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 539568680;
  }

  if (v14)
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x1BFAF1350](v15, v12);

  if (v2)
  {
    v16 = 5457241;
  }

  else
  {
    v16 = 20302;
  }

  if (v2)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  MEMORY[0x1BFAF1350](v16, v17);

  *a2 = v9;
  a2[1] = v11;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t sub_1BA3AD2E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, char *a4@<X8>)
{
  v4 = a3;
  v60 = a4;
  v7 = a3 >> 8;
  sub_1BA3B2BE4(0, &qword_1EBBF1C18, sub_1BA3B2CE0);
  v59 = v8;
  v57 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v54 - v11;
  v12 = sub_1BA4A57E8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1BA3B2BE4(0, &qword_1EBBF1C00, sub_1BA3B2C50);
  v62 = v13;
  v56 = *(v13 - 8);
  v14 = v56;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  sub_1BA4A57D8();
  sub_1BA4A57C8();
  v19 = a2;
  v20 = [a2 requirementDescription];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A57B8();

  sub_1BA4A57C8();
  sub_1BA4A5808();
  v80 = sub_1BA4A5DF8();
  v81 = v21;
  v82 = v22 & 1;
  v83 = v23;
  v68 = a1;
  v69 = v19;
  v70 = v4 & 1;
  v71 = v7;
  sub_1BA3B2C50(0);
  sub_1BA3B0C00(&unk_1EBBF1C70, sub_1BA3B2C50);
  v55 = v18;
  sub_1BA4A6368();
  sub_1BA4A57F8();
  v80 = sub_1BA4A5DF8();
  v81 = v24;
  v82 = v25 & 1;
  v83 = v26;
  v76 = sub_1BA3B3170(a1);
  v77 = v27;
  sub_1B9F252FC();
  v76 = sub_1BA4A5E18();
  v77 = v28;
  v78 = v29 & 1;
  v79 = v30;
  v64 = a1;
  v65 = v19;
  v66 = v4 & 1;
  v67 = v7;
  sub_1BA3B2CE0();
  sub_1BA3B2DE4();
  v32 = v31;
  sub_1BA3B2EB8();
  v34 = v33;
  v35 = sub_1BA4A5918();
  v36 = sub_1BA3B0C00(&qword_1EBBF1C58, sub_1BA3B2EB8);
  v72 = v34;
  v73 = v35;
  v74 = v36;
  v75 = MEMORY[0x1E697C6A0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v32;
  v73 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v63;
  sub_1BA4A6348();
  v39 = *(v14 + 16);
  v40 = v61;
  v41 = v18;
  v42 = v62;
  v39(v61, v41, v62);
  v43 = v57;
  v44 = *(v57 + 16);
  v45 = v58;
  v46 = v38;
  v47 = v59;
  v44(v58, v46, v59);
  v48 = v60;
  v39(v60, v40, v42);
  sub_1BA3B2B18();
  v44(&v48[*(v49 + 48)], v45, v47);
  v50 = *(v43 + 8);
  v50(v63, v47);
  v51 = *(v56 + 8);
  v52 = v62;
  v51(v55, v62);
  v50(v45, v47);
  return (v51)(v61, v52);
}

uint64_t sub_1BA3AD940@<X0>(__int16 a1@<W2>, void *a2@<X8>)
{
  v2 = a1;
  v4 = HIBYTE(a1);
  swift_getObjectType();
  v5 = [swift_getObjCClassFromMetadata() requirementIdentifier];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  v9 = 0xE000000000000000;
  v10 = sub_1BA368BAC(v4, 0);
  v11 = (v10 & 1) == 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 539568680;
  }

  if (v11)
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1BFAF1350](v12, v9);

  if (v2)
  {
    v13 = 5457241;
  }

  else
  {
    v13 = 20302;
  }

  if (v2)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = 0xE200000000000000;
  }

  MEMORY[0x1BFAF1350](v13, v14);

  *a2 = 0x696669746E656449;
  a2[1] = 0xEA00000000007265;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = 0x6569667369746153;
  a2[5] = 0xE900000000000064;
  a2[6] = 0;
  a2[7] = 0xE000000000000000;
}

uint64_t sub_1BA3ADA88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v48 = a4;
  v7 = a3 >> 8;
  v8 = sub_1BA4A5918();
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B2DE4();
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v41 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3B2EB8();
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A57F8();
  v39 = v20;
  v40 = v19;
  v37[1] = v21;
  v38 = v22;
  sub_1BA4A6C68();
  v23 = a1;
  swift_unknownObjectRetain();
  v24 = sub_1BA4A6C58();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  *(v25 + 32) = v23;
  *(v25 + 40) = a2;
  LOBYTE(v24) = v4 & 1;
  *(v25 + 48) = v4 & 1;
  *(v25 + 49) = v7;
  v27 = v23;
  swift_unknownObjectRetain();
  v28 = sub_1BA4A6C58();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  *(v29 + 32) = v27;
  *(v29 + 40) = a2;
  *(v29 + 48) = v24;
  *(v29 + 49) = v7;
  sub_1BA4A62B8();
  sub_1BA3B2F54();
  sub_1BA3B3080();
  sub_1BA3B30D4();
  sub_1BA4A6238();
  sub_1BA4A5908();
  v30 = sub_1BA3B0C00(&qword_1EBBF1C58, sub_1BA3B2EB8);
  v31 = MEMORY[0x1E697C6A0];
  v33 = v41;
  v32 = v42;
  v34 = v44;
  sub_1BA4A5EC8();
  (*(v45 + 8))(v11, v34);
  v49 = v32;
  v50 = v34;
  v51 = v30;
  v52 = v31;
  swift_getOpaqueTypeConformance2();
  v35 = v46;
  sub_1BA4A5EF8();
  (*(v47 + 8))(v33, v35);
  return (*(v43 + 8))(v18, v32);
}

uint64_t sub_1BA3ADEAC()
{
  swift_getKeyPath();
  sub_1BA3B3030(0, &qword_1EBBF1628, &type metadata for FeatureRequirementEvaluation.Method, MEMORY[0x1E69E62F8]);
  sub_1BA3B1ED0(&qword_1EBBF1C40, &qword_1EBBF1628, &type metadata for FeatureRequirementEvaluation.Method);
  sub_1BA3B3080();
  return sub_1BA4A62F8();
}

uint64_t sub_1BA3ADFB0@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F252FC();
  result = sub_1BA4A5E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_1BA3AE064(_BYTE *a1@<X8>)
{
  swift_getObjectType();
  v2 = [swift_getObjCClassFromMetadata() requirementIdentifier];
  v3 = sub_1BA385658(v2);

  *a1 = v3;
}

void sub_1BA3AE0C4(char *a1)
{
  v1 = *a1;
  swift_getObjectType();
  v2 = [swift_getObjCClassFromMetadata() requirementIdentifier];
  sub_1BA385724(v2, v1);
}

uint64_t sub_1BA3AE130()
{
  v1 = sub_1BA4A5938();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA3B29F8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v8) = *(v0 + 16);
  v10 = *(v0 + 17);
  v13 = *v0;
  v14 = v8;
  v15 = v10;
  sub_1BA3B2AE4(0);
  sub_1BA3B0C00(&qword_1EBBF1C60, sub_1BA3B2AE4);
  sub_1BA4A5D88();
  sub_1BA4A5928();
  sub_1BA3B0C00(&qword_1EBBF1C68, sub_1BA3B29F8);
  sub_1BA4A6018();
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1BA3AE370(uint64_t a1, unint64_t a2)
{
  v51 = sub_1BA4A8588();
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    v55 = MEMORY[0x1E69E7CC0];
    v52 = 15;
LABEL_65:

    v40 = sub_1B9F5F260(v52, a1, a2);
    v2 = v43;
    if ((v40 ^ v41) >= 0x4000)
    {
      a1 = v40;
      v3 = v41;
      v11 = v42;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v44 = v55;
      }

      else
      {
LABEL_76:
        v44 = sub_1BA280158(0, *(v55 + 2) + 1, 1, v55);
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1BA280158((v45 > 1), v46 + 1, 1, v44);
      }

      *(v44 + 2) = v46 + 1;
      v47 = &v44[32 * v46];
      *(v47 + 4) = a1;
      *(v47 + 5) = v3;
      *(v47 + 6) = v11;
      *(v47 + 7) = v2;
    }

    else
    {

      return v55;
    }

    return v44;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v54 = 4 * v8;
  v49 = (v6 + 8);
  v55 = MEMORY[0x1E69E7CC0];
  v12 = 15;
  v52 = 15;
  v53 = a2;
  while (1)
  {
    v13 = v11;
    v11 = sub_1BA4A69B8();
    v15 = v14;
    if (!v10)
    {
      goto LABEL_7;
    }

    if ((v10 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if ((v10 & 0x1000000000000000) != 0)
    {
      v21 = sub_1BA4A6898();
    }

    else
    {
      if ((v10 & 0x2000000000000000) != 0)
      {
        v18 = v13;
      }

      else
      {
        if ((v13 & 0x1000000000000000) != 0)
        {
          v17 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v17 = sub_1BA4A7EB8();
        }

        v18 = *v17;
      }

      v19 = v18;
      v20 = (__clz(~v18) - 24) << 16;
      if (v19 < 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 65541;
      }
    }

    v3 = 4 * v16;
    if (4 * v16 != v21 >> 14)
    {
      goto LABEL_25;
    }

    result = sub_1BA22A280(v13, v10);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v2 = v50;
    sub_1BA4A8598();
    v23 = sub_1BA4A8558();
    (*v49)(v2, v51);
    if (v23)
    {
      goto LABEL_35;
    }

LABEL_25:
    if ((sub_1BA4A66B8() & 1) == 0)
    {

      goto LABEL_6;
    }

    if ((v10 & 0x1000000000000000) != 0)
    {
      if (v3 != sub_1BA4A6898() >> 14)
      {
        goto LABEL_32;
      }
    }

    else if (v3 != ((4 * sub_1BA4A7DD8()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_32;
    }

    result = sub_1BA22A280(v13, v10);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_79;
    }

    v2 = v50;
    sub_1BA4A8598();
    v24 = sub_1BA4A8578();
    (*v49)(v2, v51);
    if (v24)
    {
LABEL_35:

      goto LABEL_36;
    }

LABEL_32:
    if ((sub_1BA4A66C8() & 1) == 0)
    {
      goto LABEL_35;
    }

    v25 = sub_1BA4A66B8();

    if (v25)
    {
      goto LABEL_6;
    }

LABEL_36:
    if ((v15 & 0x2000000000000000) != 0)
    {
      v26 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v26 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {
      goto LABEL_74;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v27 = sub_1BA4A6898();
    }

    else
    {
      v27 = sub_1BA4A7DD8() << 16;
    }

    v3 = 4 * v26;
    if (4 * v26 == v27 >> 14)
    {
      result = sub_1BA22A280(v11, v15);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_78;
      }

      v2 = v50;
      sub_1BA4A8598();
      v28 = sub_1BA4A8568();
      (*v49)(v2, v51);
      if (v28)
      {
LABEL_54:
        if (v9 < v52 >> 14)
        {
          goto LABEL_75;
        }

        v30 = sub_1BA4A69E8();
        v32 = v31;
        v34 = v33;
        v36 = v35;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v55;
        }

        else
        {
          v37 = sub_1BA280158(0, *(v55 + 2) + 1, 1, v55);
        }

        v3 = *(v37 + 2);
        v38 = *(v37 + 3);
        v2 = (v3 + 1);
        if (v3 >= v38 >> 1)
        {
          v37 = sub_1BA280158((v38 > 1), v3 + 1, 1, v37);
        }

        *(v37 + 2) = v2;
        v55 = v37;
        v39 = &v37[32 * v3];
        *(v39 + 4) = v30;
        *(v39 + 5) = v32;
        *(v39 + 6) = v34;
        *(v39 + 7) = v36;
        v52 = v12;
        goto LABEL_6;
      }
    }

    if (sub_1BA4A66C8())
    {
      if ((v15 & 0x1000000000000000) != 0)
      {
        if (v3 != sub_1BA4A6898() >> 14)
        {
LABEL_52:
          if ((sub_1BA4A66C8() & 1) == 0 || (sub_1BA4A66B8() & 1) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_6;
        }
      }

      else if (v3 != ((4 * sub_1BA4A7DD8()) & 0x3FFFFFFFFFFFFLL))
      {
        goto LABEL_52;
      }

      result = sub_1BA22A280(v11, v15);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_80;
      }

      v2 = v50;
      sub_1BA4A8598();
      v29 = sub_1BA4A8578();
      (*v49)(v2, v51);
      if (v29)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_6:
    a2 = v53;
LABEL_7:
    v12 = sub_1BA4A68E8();
    v9 = v12 >> 14;
    v10 = v15;
    if (v12 >> 14 >= v54)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_1BA3AE954()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

uint64_t sub_1BA3AE9CC(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for InternalSettingsFeatureState();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1BA3B2180(a1, &v13 - v8, type metadata accessor for InternalSettingsFeatureState);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA3B2180(v9, v6, type metadata accessor for InternalSettingsFeatureState);
  v11 = v10;
  sub_1BA4A4F38();
  return sub_1BA3B1520(v9, type metadata accessor for InternalSettingsFeatureState);
}

unint64_t *sub_1BA3AEAF4(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1BA3AEC54(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1BA3AED40(v8, v4, v2);
  result = MEMORY[0x1BFAF43A0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1BA3AEC54(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1BA202850(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1BA202850(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1BA3AED40(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1BA3AEC54(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1BA3AEDB8(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1BA4A82B8();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      if (v8 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v11 = sub_1BA4A6B98();
        *(v11 + 16) = v8 / 2;
      }

      v13[0] = v11 + 32;
      v13[1] = v8 / 2;
      v12 = v11;
      a3(v13, v14, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1BA3AEED4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 32 * a3 - 32);
    v5 = result - a3;
LABEL_5:
    v19 = v4;
    v20 = a3;
    v6 = (v22 + 32 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v18 = v5;
    while (1)
    {
      v11 = v4[2];
      v12 = v4[3];
      v13 = v7 == *v4 && v8 == v4[1];
      if (v13 || (v21 = v4[2], result = sub_1BA4A8338(), v11 = v21, (result)) && (v9 == v11 ? (v14 = v10 == v12) : (v14 = 0), v14) || (result = sub_1BA4A8338(), (result & 1) == 0))
      {
LABEL_4:
        a3 = v20 + 1;
        v4 = v19 + 4;
        v5 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v7 = v4[4];
      v8 = v4[5];
      v9 = v4[6];
      v10 = v4[7];
      v15 = *(v4 + 1);
      *(v4 + 2) = *v4;
      *(v4 + 3) = v15;
      *v4 = v7;
      v4[1] = v8;
      v4[2] = v9;
      v4[3] = v10;
      v4 -= 4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA3AF018(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v24 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_6:
    v22 = v4;
    v23 = a3;
    v8 = *(v24 + 16 * a3);
    v21 = v5;
    while (1)
    {
      v9 = *v4;
      v10 = v8;
      v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v13 = v12;
      if (v11 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v13 == v14)
      {
        v6 = v10;

        v7 = v9;

LABEL_5:
        a3 = v23 + 1;
        v4 = v22 + 16;
        v5 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_1BA4A8338();
      v17 = v10;

      v18 = v9;

      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      v8 = *(v4 + 16);
      *(v4 + 16) = *v4;
      *v4 = v8;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA3AF1A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v111 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v5 = v10;
    v10 = *v111;
    if (!*v111)
    {
      goto LABEL_159;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_153:
      result = sub_1BA442D80(v5);
      v5 = result;
    }

    v103 = *(v5 + 2);
    if (v103 >= 2)
    {
      while (1)
      {
        v104 = *v7;
        if (!*v7)
        {
          goto LABEL_157;
        }

        v7 = (v103 - 1);
        v105 = *&v5[16 * v103];
        v106 = *&v5[16 * v103 + 24];
        sub_1BA3B011C((v104 + 32 * v105), (v104 + 32 * *&v5[16 * v103 + 16]), (v104 + 32 * v106), v10);
        if (v6)
        {
        }

        if (v106 < v105)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1BA442D80(v5);
        }

        if (v103 - 2 >= *(v5 + 2))
        {
          goto LABEL_147;
        }

        v107 = &v5[16 * v103];
        *v107 = v105;
        *(v107 + 1) = v106;
        result = sub_1BA442CF4(v103 - 1);
        v103 = *(v5 + 2);
        v7 = a3;
        if (v103 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v113 = v10;
    if (v9 + 1 < v8)
    {
      v121 = v8;
      v13 = (*v7 + 32 * v12);
      v14 = v13[2];
      v15 = v13[3];
      v109 = v9;
      v16 = (*v7 + 32 * v9);
      v5 = v16[1];
      v17 = v16[2];
      v18 = v16[3];
      v19 = *v13 == *v16 && v13[1] == v5;
      if (v19 || (result = sub_1BA4A8338(), (result)) && (v14 == v17 ? (v20 = v15 == v18) : (v20 = 0), v20))
      {
        v123 = 0;
      }

      else
      {
        result = sub_1BA4A8338();
        v123 = result;
      }

      v7 = a3;
      v11 = v109;
      v12 = v109 + 2;
      if (v109 + 2 < v121)
      {
        v21 = v16 + 6;
        v22 = v16 + 6;
        while (1)
        {
          v117 = v6;
          v24 = v22[4];
          v22 += 4;
          v23 = v24;
          v25 = v21[5];
          v5 = *(v21 - 2);
          v27 = *v21;
          v26 = v21[1];
          v28 = v21[2] == v5 && v21[3] == *(v21 - 1);
          if (v28 || (result = sub_1BA4A8338(), (result)) && (v23 == v27 ? (v29 = v25 == v26) : (v29 = 0), v29))
          {
            v6 = v117;
            v10 = v113;
            v7 = a3;
            if (v123)
            {
              v11 = v109;
              if (v12 < v109)
              {
                goto LABEL_150;
              }

              goto LABEL_36;
            }
          }

          else
          {
            result = sub_1BA4A8338();
            v6 = v117;
            v10 = v113;
            v7 = a3;
            if ((v123 ^ result))
            {
              goto LABEL_33;
            }
          }

          ++v12;
          v21 = v22;
          if (v121 == v12)
          {
            v12 = v121;
LABEL_33:
            v11 = v109;
            break;
          }
        }
      }

      if (v123)
      {
        if (v12 < v11)
        {
          goto LABEL_150;
        }

LABEL_36:
        if (v11 < v12)
        {
          v30 = 32 * v12 - 16;
          v31 = (32 * v11) | 0x18;
          v32 = v12;
          v33 = v11;
          do
          {
            if (v33 != --v32)
            {
              v34 = *v7;
              if (!*v7)
              {
                goto LABEL_156;
              }

              v35 = (v34 + v31);
              v36 = (v34 + v30);
              v37 = *(v35 - 3);
              v38 = *(v35 - 1);
              v39 = *v35;
              v40 = *v36;
              *(v35 - 3) = *(v36 - 1);
              *(v35 - 1) = v40;
              *(v36 - 1) = v37;
              *v36 = v38;
              *(v36 + 1) = v39;
            }

            ++v33;
            v30 -= 32;
            v31 += 32;
          }

          while (v33 < v32);
        }
      }
    }

    v41 = v7[1];
    if (v12 < v41)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_149;
      }

      if (v12 - v11 < a4)
      {
        v42 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_151;
        }

        if (v42 >= v41)
        {
          v42 = v7[1];
        }

        if (v42 < v11)
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (v12 != v42)
        {
          break;
        }
      }
    }

LABEL_68:
    if (v12 < v11)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA27F470(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v58 = *(v10 + 2);
    v57 = *(v10 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      result = sub_1BA27F470((v57 > 1), v58 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v59;
    v60 = &v10[16 * v58];
    *(v60 + 4) = v11;
    *(v60 + 5) = v12;
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_158;
    }

    v120 = v12;
    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_88:
          if (v65)
          {
            goto LABEL_137;
          }

          v78 = &v10[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_140;
          }

          v84 = &v10[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_143;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_144;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v88 = &v10[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_102:
        if (v83)
        {
          goto LABEL_139;
        }

        v91 = &v10[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_142;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_109:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v7)
        {
          goto LABEL_155;
        }

        v100 = *&v10[16 * v99 + 32];
        v101 = *&v10[16 * v61 + 40];
        sub_1BA3B011C((*v7 + 32 * v100), (*v7 + 32 * *&v10[16 * v61 + 32]), (*v7 + 32 * v101), v5);
        if (v6)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BA442D80(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_134;
        }

        v102 = &v10[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        result = sub_1BA442CF4(v61);
        v59 = *(v10 + 2);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_135;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_136;
      }

      v73 = &v10[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_138;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_141;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_145;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v120;
    if (v120 >= v8)
    {
      goto LABEL_121;
    }
  }

  v118 = v6;
  v124 = *v7;
  v43 = *v7 + 32 * v12 - 32;
  v110 = v11;
  v44 = v11 - v12;
  v112 = v42;
LABEL_52:
  v119 = v12;
  v45 = v124 + 32 * v12;
  v5 = *v45;
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = *(v45 + 24);
  v115 = v44;
  v116 = v43;
  v49 = v43;
  while (1)
  {
    v50 = v49[2];
    v51 = v49[3];
    v52 = v5 == *v49 && v46 == v49[1];
    if (v52 || (v122 = v49[2], v53 = sub_1BA4A8338(), v50 = v122, (v53)) && (v47 == v50 ? (v54 = v48 == v51) : (v54 = 0), v54) || (result = sub_1BA4A8338(), (result & 1) == 0))
    {
LABEL_51:
      v12 = v119 + 1;
      v43 = v116 + 32;
      v44 = v115 - 1;
      if (v119 + 1 != v112)
      {
        goto LABEL_52;
      }

      v12 = v112;
      v6 = v118;
      v10 = v113;
      v7 = a3;
      v11 = v110;
      goto LABEL_68;
    }

    if (!v124)
    {
      break;
    }

    v5 = v49[4];
    v46 = v49[5];
    v47 = v49[6];
    v48 = v49[7];
    v55 = *(v49 + 1);
    *(v49 + 2) = *v49;
    *(v49 + 3) = v55;
    *v49 = v5;
    v49[1] = v46;
    v49[2] = v47;
    v49[3] = v48;
    v49 -= 4;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
  return result;
}

uint64_t sub_1BA3AF934(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v116 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = v8;
    v8 = *v116;
    if (!*v116)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_109:
      v109 = *(v5 + 2);
      if (v109 >= 2)
      {
        while (*a3)
        {
          v110 = *&v5[16 * v109];
          v111 = *&v5[16 * v109 + 24];
          sub_1BA3B0480((*a3 + 16 * v110), (*a3 + 16 * *&v5[16 * v109 + 16]), (*a3 + 16 * v111), v8);
          if (v4)
          {
          }

          if (v111 < v110)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1BA442D80(v5);
          }

          if (v109 - 2 >= *(v5 + 2))
          {
            goto LABEL_133;
          }

          v112 = &v5[16 * v109];
          *v112 = v110;
          *(v112 + 1) = v111;
          result = sub_1BA442CF4(v109 - 1);
          v109 = *(v5 + 2);
          if (v109 <= 1)
          {
          }
        }

        goto LABEL_143;
      }
    }

LABEL_139:
    result = sub_1BA442D80(v5);
    v5 = result;
    goto LABEL_109;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v124 = v8;
    if (v7 + 1 < v6)
    {
      v120 = v6;
      v122 = (v7 + 1);
      v11 = *a3;
      v12 = *(*a3 + 16 * v10);
      v118 = 16 * v7;
      v13 = *(*a3 + 16 * v7);
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v15;
      if (v14 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v16 == v17)
      {
        v126 = 0;
      }

      else
      {
        v126 = sub_1BA4A8338();
      }

      v19 = v12;

      v20 = v13;

      v114 = v9;
      v21 = v9 + 2;
      v22 = v11 + v118 + 40;
      v23 = v118 + 16;
      v24 = v122;
      v8 = v124;
      do
      {
        v28 = v21;
        v5 = v24;
        v29 = v23;
        if (v21 >= v120)
        {
          break;
        }

        v128 = v21;
        v30 = *(v22 - 8);
        v31 = *(v22 - 24);
        v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v34 = v33;
        v36 = v32 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v34 == v35;
        v25 = v36 ? 0 : sub_1BA4A8338();
        v26 = v30;

        v27 = v31;

        v28 = v128;
        v21 = v128 + 1;
        v22 += 16;
        v24 = v5 + 1;
        v23 = v29 + 16;
        v8 = v124;
      }

      while (((v126 ^ v25) & 1) == 0);
      if (v126)
      {
        v9 = v114;
        if (v28 < v114)
        {
          goto LABEL_136;
        }

        if (v114 < v28)
        {
          v37 = v114;
          v38 = v118;
          do
          {
            if (v37 != v5)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v41 = *(v40 + v38);
              *(v40 + v38) = *(v40 + v29);
              *(v40 + v29) = v41;
            }

            ++v37;
            v29 -= 16;
            v38 += 16;
          }

          while (v37 < v5--);
        }

        v10 = v28;
      }

      else
      {
        v10 = v28;
        v9 = v114;
      }
    }

    v42 = a3[1];
    if (v10 >= v42)
    {
      v7 = v10;
LABEL_54:
      if (v7 < v9)
      {
        goto LABEL_134;
      }

      goto LABEL_55;
    }

    v7 = v10;
    v78 = __OFSUB__(v10, v9);
    v43 = v10 - v9;
    if (v78)
    {
      goto LABEL_135;
    }

    if (v43 >= a4)
    {
      goto LABEL_54;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_137;
    }

    if (v9 + a4 >= v42)
    {
      v44 = a3[1];
    }

    else
    {
      v44 = v9 + a4;
    }

    if (v44 < v9)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v7 == v44)
    {
      goto LABEL_54;
    }

    v127 = *a3;
    v45 = *a3 + 16 * v7 - 16;
    v115 = v9;
    v46 = v9 - v7;
    v47 = v7;
    v117 = v44;
LABEL_43:
    v121 = v45;
    v123 = v47;
    v50 = *(v127 + 16 * v47);
    v119 = v46;
LABEL_44:
    v51 = *v45;
    v52 = v50;
    v53 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v55 = v54;
    v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v57;
    if (v53 != v56 || v55 != v57)
    {
      break;
    }

    v48 = v52;

    v49 = v51;

LABEL_42:
    v47 = v123 + 1;
    v45 = v121 + 16;
    v46 = v119 - 1;
    if (v123 + 1 != v117)
    {
      goto LABEL_43;
    }

    v7 = v117;
    v8 = v124;
    v9 = v115;
    if (v117 < v115)
    {
      goto LABEL_134;
    }

LABEL_55:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA27F470(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v64 = *(v8 + 2);
    v63 = *(v8 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      result = sub_1BA27F470((v63 > 1), v64 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v65;
    v66 = &v8[16 * v64];
    *(v66 + 4) = v9;
    *(v66 + 5) = v7;
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_144;
    }

    if (v64)
    {
      while (2)
      {
        v67 = v65 - 1;
        if (v65 >= 4)
        {
          v72 = &v8[16 * v65 + 32];
          v73 = *(v72 - 64);
          v74 = *(v72 - 56);
          v78 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          if (v78)
          {
            goto LABEL_121;
          }

          v77 = *(v72 - 48);
          v76 = *(v72 - 40);
          v78 = __OFSUB__(v76, v77);
          v70 = v76 - v77;
          v71 = v78;
          if (v78)
          {
            goto LABEL_122;
          }

          v79 = &v8[16 * v65];
          v81 = *v79;
          v80 = *(v79 + 1);
          v78 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v78)
          {
            goto LABEL_124;
          }

          v78 = __OFADD__(v70, v82);
          v83 = v70 + v82;
          if (v78)
          {
            goto LABEL_127;
          }

          if (v83 >= v75)
          {
            v101 = &v8[16 * v67 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v78 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v78)
            {
              goto LABEL_131;
            }

            if (v70 < v104)
            {
              v67 = v65 - 2;
            }
          }

          else
          {
LABEL_74:
            if (v71)
            {
              goto LABEL_123;
            }

            v84 = &v8[16 * v65];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_126;
            }

            v90 = &v8[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_129;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_130;
            }

            if (v88 + v93 < v70)
            {
              goto LABEL_88;
            }

            if (v70 < v93)
            {
              v67 = v65 - 2;
            }
          }
        }

        else
        {
          if (v65 == 3)
          {
            v68 = *(v8 + 4);
            v69 = *(v8 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
            goto LABEL_74;
          }

          v94 = &v8[16 * v65];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_88:
          if (v89)
          {
            goto LABEL_125;
          }

          v97 = &v8[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_128;
          }

          if (v100 < v88)
          {
            break;
          }
        }

        v105 = v67 - 1;
        if (v67 - 1 >= v65)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v106 = *&v8[16 * v105 + 32];
        v107 = *&v8[16 * v67 + 40];
        sub_1BA3B0480((*a3 + 16 * v106), (*a3 + 16 * *&v8[16 * v67 + 32]), (*a3 + 16 * v107), v5);
        if (v4)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BA442D80(v8);
        }

        if (v105 >= *(v8 + 2))
        {
          goto LABEL_120;
        }

        v108 = &v8[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        result = sub_1BA442CF4(v67);
        v65 = *(v8 + 2);
        if (v65 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_107;
    }
  }

  v59 = sub_1BA4A8338();
  v60 = v52;

  v61 = v51;

  if ((v59 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v127)
  {
    v50 = *(v45 + 16);
    *(v45 + 16) = *v45;
    *v45 = v50;
    v45 -= 16;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_1BA3B011C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - a2;
  v12 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (__dst != a2 || &a2[32 * v13] <= __dst)
    {
      memmove(__dst, a2, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 < 32 || v6 <= v7)
    {
      v30 = v6;
    }

    else
    {
      v31 = v6;
      __srca = v4;
LABEL_35:
      v32 = 0;
      v33 = v14;
      __dstb = v31;
      v47 = v31 - 32;
      v55 = v5;
      v52 = v14;
      do
      {
        v34 = &v33[v32];
        v35 = &v33[v32 - 32];
        v36 = *&v33[v32 - 16];
        v37 = *&v33[v32 - 8];
        v38 = *(__dstb - 2);
        v39 = *(__dstb - 1);
        v40 = *v35 == *(__dstb - 4) && *&v33[v32 - 24] == *(__dstb - 3);
        if (!v40 && (v48 = *(__dstb - 2), v49 = *&v33[v32 - 8], v41 = sub_1BA4A8338(), v38 = v48, v37 = v49, (v41 & 1) == 0) || (v36 == v38 ? (v42 = v37 == v39) : (v42 = 0), !v42))
        {
          if (sub_1BA4A8338())
          {
            v5 = &v55[v32 - 32];
            v30 = v47;
            if (&v55[v32] != __dstb)
            {
              v45 = *(v47 + 1);
              *v5 = *v47;
              *&v55[v32 - 16] = v45;
            }

            v14 = &v52[v32];
            v4 = __srca;
            if (&v52[v32] <= __srca || (v31 = v47, v47 <= v7))
            {
              v14 = &v52[v32];
              goto LABEL_56;
            }

            goto LABEL_35;
          }
        }

        v43 = &v55[v32];
        v33 = v52;
        if (&v55[v32] != v34)
        {
          v44 = *(v35 + 16);
          *(v43 - 2) = *v35;
          *(v43 - 1) = v44;
        }

        v32 -= 32;
        v14 = &v52[v32];
        v4 = __srca;
      }

      while (&v52[v32] > __srca);
      v30 = __dstb;
    }
  }

  else
  {
    if (__dst != __src || &__src[32 * v10] <= __dst)
    {
      memmove(__dst, __src, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      v54 = v5;
      v51 = &v4[32 * v10];
      while (1)
      {
        v53 = v7;
        v15 = *v6;
        v16 = *(v6 + 1);
        __dsta = v6;
        v17 = *(v6 + 2);
        v18 = *(v6 + 3);
        v19 = *v4;
        v20 = *(v4 + 1);
        v21 = v4;
        v22 = *(v4 + 2);
        v23 = *(v4 + 3);
        v24 = v15 == v19 && v16 == v20;
        if (v24 || (sub_1BA4A8338()) && v17 == v22 && v18 == v23)
        {
          break;
        }

        if ((sub_1BA4A8338() & 1) == 0)
        {
          break;
        }

        v26 = __dsta;
        v6 = __dsta + 32;
        v27 = v53;
        v28 = v54;
        v4 = v21;
        if (v53 != __dsta)
        {
          goto LABEL_25;
        }

LABEL_26:
        v7 = v27 + 32;
        v14 = v51;
        if (v4 >= v51 || v6 >= v28)
        {
          goto LABEL_28;
        }
      }

      v26 = v21;
      v4 = v21 + 32;
      v27 = v53;
      v28 = v54;
      v6 = __dsta;
      if (v53 == v21)
      {
        goto LABEL_26;
      }

LABEL_25:
      v29 = *(v26 + 1);
      *v27 = *v26;
      *(v27 + 1) = v29;
      goto LABEL_26;
    }

LABEL_28:
    v30 = v7;
  }

LABEL_56:
  if (v30 != v4 || v30 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v30, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_1BA3B0480(void **__dst, void **__src, void **a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - __src;
  v10 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 4;
  if (v8 >= v10 >> 4)
  {
    v28 = __src;
    if (a4 != __src || &__src[2 * v11] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 16 * v11);
      a4 = v29;
    }

    v45 = a4;
    v48 = &a4[16 * v11];
    if (v9 < 16)
    {
      v13 = a4;
    }

    else
    {
      v13 = a4;
      if (v28 > v5)
      {
LABEL_30:
        v47 = v28;
        v30 = v28 - 2;
        v4 -= 2;
        v31 = v48;
        v44 = v28 - 2;
        do
        {
          v32 = *(v31 - 2);
          v31 -= 16;
          v33 = *v30;
          v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v36 = v35;
          if (v34 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v36 == v37)
          {
            v39 = 0;
          }

          else
          {
            v39 = sub_1BA4A8338();
          }

          v40 = v32;

          v41 = v33;

          v42 = (v4 + 2);
          if (v39)
          {
            if (v42 != v47)
            {
              *v4 = *v44;
            }

            v13 = v45;
            if (v48 <= v45 || (v28 = v44, v44 <= v5))
            {
              v28 = v44;
              goto LABEL_48;
            }

            goto LABEL_30;
          }

          if (v42 != v48)
          {
            *v4 = *v31;
          }

          v4 -= 2;
          v48 = v31;
          v30 = v44;
        }

        while (v31 > v45);
        v48 = v31;
        v13 = v45;
        v28 = v47;
      }
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[2 * v8] <= a4)
    {
      memmove(a4, __dst, 16 * v8);
    }

    v48 = &v13[2 * v8];
    if (v6 >= 16 && __src < v4)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v14;
        v46 = v14;
        v16 = *v13;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v19 = v18;
        v21 = v17 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v19 == v20;
        if (v21)
        {
          break;
        }

        v22 = sub_1BA4A8338();
        v23 = v15;

        v24 = v16;

        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }

        v25 = v46;
        v14 = v46 + 2;
        if (v5 != v46)
        {
          goto LABEL_21;
        }

LABEL_22:
        v5 += 2;
        if (v13 >= v48 || v14 >= v4)
        {
          goto LABEL_24;
        }
      }

      v26 = v15;

      v27 = v16;

LABEL_20:
      v25 = v13;
      v21 = v5 == v13;
      v13 += 2;
      v14 = v46;
      if (v21)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v25;
      goto LABEL_22;
    }

LABEL_24:
    v28 = v5;
  }

LABEL_48:
  if (v28 != v13 || v28 >= (v13 + ((v48 - v13 + (v48 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v28, v13, 16 * ((v48 - v13) / 16));
  }

  return 1;
}

uint64_t sub_1BA3B0820(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A57E8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI42InternalSettingsFeatureStateViewController_featureIdentifier] = a1;
  v6 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v7 = a1;
  v8 = [v6 init];
  v9 = objc_allocWithZone(type metadata accessor for InternalSettingsFeatureStateModel(0));
  v10 = sub_1BA3818AC(v7, v8);
  sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel);
  v11 = v10;
  v18 = sub_1BA4A5348();
  v19 = v12;
  sub_1BA3B18B8();
  sub_1BA4A6288();

  v13 = sub_1BA4A5A08();

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI42InternalSettingsFeatureStateViewController_host] = v14;
    v17.receiver = v2;
    v17.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);

    return v15;
  }

  else
  {

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1BA3B0B28()
{
  if (!qword_1EBBF1968)
  {
    sub_1BA3B0BA4();
    v0 = sub_1BA4A5D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1968);
    }
  }
}

unint64_t sub_1BA3B0BA4()
{
  result = qword_1EBBF1970;
  if (!qword_1EBBF1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1970);
  }

  return result;
}

uint64_t sub_1BA3B0C00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA3B0D24()
{
  if (!qword_1EBBF1990)
  {
    sub_1BA3B0DD0(255);
    sub_1BA3B3030(255, &qword_1EBBF19B8, &type metadata for InternalSettingsRegionAvailabilitySection, MEMORY[0x1E69E6720]);
    sub_1BA3B0FC4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBF1990);
    }
  }
}

void sub_1BA3B0E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA3B0E68()
{
  if (!qword_1EBBF19A0)
  {
    sub_1BA3B0EF4(255, &qword_1EBBF19A8, sub_1BA3B0F70);
    v0 = sub_1BA4A6378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF19A0);
    }
  }
}

void sub_1BA3B0EF4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1BA4A5338();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA3B0F70()
{
  result = qword_1EBBF19B0;
  if (!qword_1EBBF19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF19B0);
  }

  return result;
}

void sub_1BA3B0FC4()
{
  if (!qword_1EBBF19C0)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF19C8, sub_1BA3B10C0);
    type metadata accessor for ErrorMessage(255);
    sub_1BA3B11B0();
    sub_1BA3B0C00(&qword_1EBBF19F0, type metadata accessor for ErrorMessage);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF19C0);
    }
  }
}

void sub_1BA3B10F4()
{
  if (!qword_1EBBF19D8)
  {
    sub_1BA3B1158();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF19D8);
    }
  }
}

void sub_1BA3B1158()
{
  if (!qword_1EBBEBAD8)
  {
    v0 = sub_1BA4A61F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEBAD8);
    }
  }
}

unint64_t sub_1BA3B11B0()
{
  result = qword_1EBBF19E0;
  if (!qword_1EBBF19E0)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF19C8, sub_1BA3B10C0);
    sub_1BA3B0C00(&qword_1EBBF19E8, sub_1BA3B10C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF19E0);
  }

  return result;
}

void sub_1BA3B12F4()
{
  if (!qword_1EBBF1A18)
  {
    sub_1BA3B3030(255, &qword_1EBBF1A20, &type metadata for InternalSettingsTitleValueItem, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBF1A18);
    }
  }
}

void sub_1BA3B1394()
{
  if (!qword_1EBBF1A28)
  {
    sub_1BA3B3030(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A6378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1A28);
    }
  }
}

unint64_t sub_1BA3B1428()
{
  result = qword_1EBBF1A30;
  if (!qword_1EBBF1A30)
  {
    sub_1BA3B3030(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1A30);
  }

  return result;
}

unint64_t sub_1BA3B14BC()
{
  result = qword_1EBBF1A38;
  if (!qword_1EBBF1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1A38);
  }

  return result;
}

uint64_t sub_1BA3B1520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA3B1580()
{
  if (!qword_1EBBF1A48)
  {
    sub_1BA3B1394();
    sub_1BA3B2BE4(255, &qword_1EBBF1A08, sub_1BA3B12C0);
    v0 = MEMORY[0x1E69E6720];
    sub_1BA3B3030(255, &qword_1EBBF1A50, &type metadata for InternalSettingsPairedFeatureAttributes, MEMORY[0x1E69E6720]);
    sub_1BA3B3030(255, &qword_1EBBF1A58, &type metadata for InternalSettingsFeatureSettings, v0);
    sub_1BA3B0E04(255, &qword_1EBBF1A00, sub_1BA3B0CF0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBF1A48);
    }
  }
}

void sub_1BA3B16E0()
{
  if (!qword_1EBBF1A70)
  {
    type metadata accessor for InternalSettingsFeatureStateModel(255);
    sub_1BA3B0C00(&qword_1EBBF15C8, type metadata accessor for InternalSettingsFeatureStateModel);
    v0 = sub_1BA4A5378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1A70);
    }
  }
}

uint64_t sub_1BA3B1774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1BA3B17E8()
{
  if (!qword_1EBBF1A80)
  {
    sub_1BA3B3030(255, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A51A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1A80);
    }
  }
}

uint64_t sub_1BA3B1874(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BA3B18B8()
{
  result = qword_1EBBF1A88;
  if (!qword_1EBBF1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1A88);
  }

  return result;
}

void sub_1BA3B19C4()
{
  if (!qword_1EBBF1AA0)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF1AA8, sub_1BA3B1A6C);
    sub_1BA3B1C1C();
    v0 = sub_1BA4A5D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1AA0);
    }
  }
}

void sub_1BA3B1A6C()
{
  if (!qword_1EBBF1AB0)
  {
    sub_1BA3B1B94(255);
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1BA3B0EF4(255, &qword_1EBBF1AC0, sub_1BA3B1BC8);
    sub_1BA3B0C00(&qword_1EBBF1AD0, sub_1BA3B1B94);
    sub_1BA3B0C00(&qword_1EBBE9420, type metadata accessor for HKFeatureAvailabilityContext);
    v0 = sub_1BA4A6318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1AB0);
    }
  }
}

unint64_t sub_1BA3B1BC8()
{
  result = qword_1EBBF1AC8;
  if (!qword_1EBBF1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1AC8);
  }

  return result;
}

unint64_t sub_1BA3B1C1C()
{
  result = qword_1EBBF1AD8;
  if (!qword_1EBBF1AD8)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF1AA8, sub_1BA3B1A6C);
    sub_1BA3B1CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1AD8);
  }

  return result;
}

unint64_t sub_1BA3B1CC8()
{
  result = qword_1EBBF1AE0;
  if (!qword_1EBBF1AE0)
  {
    sub_1BA3B1A6C();
    sub_1BA3B1D6C(&qword_1EBBF1AE8, &qword_1EBBF1AC0, sub_1BA3B1BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1AE0);
  }

  return result;
}

uint64_t sub_1BA3B1D6C(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA3B0EF4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3B1DBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BA4A5938();
    sub_1BA3B0C00(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1BA3B1ED0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BA3B3030(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3B1F30()
{
  if (!qword_1EBBF1B00)
  {
    sub_1BA3B1FEC(255);
    sub_1BA3B0C00(&qword_1EBBF1B10, sub_1BA3B1FEC);
    v0 = sub_1BA4A6318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1B00);
    }
  }
}

void sub_1BA3B2020()
{
  if (!qword_1EBBEA6A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEA6A0);
    }
  }
}

void sub_1BA3B2080()
{
  if (!qword_1EBBF1B20)
  {
    sub_1BA3B24E8(255, &qword_1EBBF1B28);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1B20);
    }
  }
}

id sub_1BA3B20F0@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) localAttributes];
  *a1 = result;
  return result;
}

unint64_t sub_1BA3B212C()
{
  result = qword_1EBBF1B30;
  if (!qword_1EBBF1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1B30);
  }

  return result;
}

uint64_t sub_1BA3B2180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA3B21E8()
{
  if (!qword_1EBBF1B38)
  {
    sub_1BA3B24E8(255, &qword_1EBBF1B28);
    sub_1BA3B2080();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1B38);
    }
  }
}

id sub_1BA3B2270@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_1BA3B229C()
{
  result = qword_1EBBF1B40;
  if (!qword_1EBBF1B40)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF1B48, sub_1BA3B1F30);
    sub_1BA3B2830(&qword_1EBBF1B18, sub_1BA3B1F30, sub_1BA3B14BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1B40);
  }

  return result;
}

void sub_1BA3B2460()
{
  if (!qword_1EBBF1B70)
  {
    sub_1BA3B24E8(255, &qword_1EBBF1B78);
    sub_1BA3B2544();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1B70);
    }
  }
}

void sub_1BA3B24E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A6378();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1BA3B2544()
{
  if (!qword_1EBBF1B80)
  {
    sub_1BA3B25E0();
    sub_1BA3B3030(255, &qword_1EBBEEB90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A6378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1B80);
    }
  }
}

void sub_1BA3B25E0()
{
  if (!qword_1EBBF1B88)
  {
    sub_1BA3B3030(255, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E62F8]);
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    sub_1BA3B2704();
    sub_1BA3B1ED0(&qword_1EBBF1BA0, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation);
    sub_1BA3B0C00(&qword_1EBBE9498, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
    v0 = sub_1BA4A6318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1B88);
    }
  }
}

void sub_1BA3B2704()
{
  if (!qword_1EBBF1B90)
  {
    sub_1BA3B14BC();
    sub_1BA3B2780();
    v0 = sub_1BA4A5338();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1B90);
    }
  }
}

unint64_t sub_1BA3B2780()
{
  result = qword_1EBBF1B98;
  if (!qword_1EBBF1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1B98);
  }

  return result;
}

uint64_t sub_1BA3B27E0@<X0>(void *a1@<X8>)
{
  result = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *a1 = 0x747865746E6F43;
  a1[1] = 0xE700000000000000;
  a1[2] = result;
  a1[3] = v3;
  return result;
}

uint64_t sub_1BA3B2830(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3B2944()
{
  if (!qword_1EBBF1BE0)
  {
    sub_1BA3B3030(255, &qword_1EBBF1A20, &type metadata for InternalSettingsTitleValueItem, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EBBF1BE0);
    }
  }
}

void sub_1BA3B2A34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BA3B0C00(a4, a5);
    v8 = sub_1BA4A5D98();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA3B2B18()
{
  if (!qword_1EBBF1BF8)
  {
    sub_1BA3B2BE4(255, &qword_1EBBF1C00, sub_1BA3B2C50);
    sub_1BA3B2BE4(255, &qword_1EBBF1C18, sub_1BA3B2CE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1BF8);
    }
  }
}

void sub_1BA3B2BE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A6378();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA3B2C84()
{
  if (!qword_1EBBF1C10)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1C10);
    }
  }
}

void sub_1BA3B2CE0()
{
  if (!qword_1EBBF1C20)
  {
    sub_1BA3B2DE4();
    sub_1BA3B2EB8();
    sub_1BA4A5918();
    sub_1BA3B0C00(&qword_1EBBF1C58, sub_1BA3B2EB8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF1C20);
    }
  }
}

void sub_1BA3B2DE4()
{
  if (!qword_1EBBF1C28)
  {
    sub_1BA3B2EB8();
    sub_1BA4A5918();
    sub_1BA3B0C00(&qword_1EBBF1C58, sub_1BA3B2EB8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBF1C28);
    }
  }
}

void sub_1BA3B2EB8()
{
  if (!qword_1EBBF1C30)
  {
    sub_1BA3B2F54();
    sub_1BA3B3080();
    sub_1BA3B30D4();
    v0 = sub_1BA4A6248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1C30);
    }
  }
}

void sub_1BA3B2F54()
{
  if (!qword_1EBBF1C38)
  {
    sub_1BA3B3030(255, &qword_1EBBF1628, &type metadata for FeatureRequirementEvaluation.Method, MEMORY[0x1E69E62F8]);
    sub_1BA3B1ED0(&qword_1EBBF1C40, &qword_1EBBF1628, &type metadata for FeatureRequirementEvaluation.Method);
    sub_1BA3B3080();
    v0 = sub_1BA4A6318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1C38);
    }
  }
}

void sub_1BA3B3030(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BA3B3080()
{
  result = qword_1EBBF1C48;
  if (!qword_1EBBF1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1C48);
  }

  return result;
}

unint64_t sub_1BA3B30D4()
{
  result = qword_1EBBF1C50;
  if (!qword_1EBBF1C50)
  {
    sub_1BA3B2F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1C50);
  }

  return result;
}

uint64_t sub_1BA3B3170(uint64_t a1)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000051, 0x80000001BA504E30);
  v2 = [*(a1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);
  return 0;
}

uint64_t objectdestroy_70Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

uint64_t sub_1BA3B3338(uint64_t a1)
{
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39FD0(a1, v4, sub_1B9F0C700);
  return DefaultCloudSyncStateStore.lastKnownFirstRestoreState.setter(v4);
}

void (*DefaultCloudSyncStateStore.lastKnownFirstRestoreState.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1B9F0C700(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  DefaultCloudSyncStateStore.lastKnownFirstRestoreState.getter(v5);
  return sub_1BA3B3498;
}

void sub_1BA3B3498(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B9F39FD0(*(a1 + 16), v2, sub_1B9F0C700);
    DefaultCloudSyncStateStore.lastKnownFirstRestoreState.setter(v2);
    sub_1B9F0DF80(v3, sub_1B9F0C700);
  }

  else
  {
    DefaultCloudSyncStateStore.lastKnownFirstRestoreState.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

void (*sub_1BA3B3534(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1B9F0C700(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  DefaultCloudSyncStateStore.lastKnownFirstRestoreState.getter(v5);
  return sub_1BA3B3498;
}

uint64_t sub_1BA3B35F8@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1BA3B4D98;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1BA3B3698(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA3B4DA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  sub_1B9F0F1B8(v3);
  return v7(v6, v5);
}

uint64_t sub_1BA3B37C0@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1BA3B4D70;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1BA3B3860(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA3B4D48;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB8);
  sub_1B9F0F1B8(v3);
  return v7(v6, v5);
}

void sub_1BA3B39C8(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver);
  if (v3)
  {
    v4 = [v3 status];
    if (v4)
    {
      v7 = v4;
      sub_1BA4A7628();
    }

    else
    {
      v5 = sub_1BA4A1728();
      v6 = *(*(v5 - 8) + 56);

      v6(a1, 1, 1, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA3B3A98()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E68();
  v5 = v0;
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v8 = 136446466;
    v9 = v5;
    v10 = [v9 description];
    v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v1;
    v13 = v12;

    v14 = sub_1B9F0B82C(v11, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_1B9F0B82C(0xD00000000000001CLL, 0x80000001BA504ED0, &v20);
    _os_log_impl(&dword_1B9F07000, v6, v7, "%{public}s - %{public}s", v8, 0x16u);
    v15 = v19;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);

    (*(v2 + 8))(v4, v18);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  result = *&v5[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver];
  if (result)
  {
    return [result startObservingSyncStatus];
  }

  __break(1u);
  return result;
}

id CloudSyncStateObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncStateObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncStateObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s18HealthExperienceUI22CloudSyncStateObserverC05cloudeG0_16syncDidStartWithySo07HKCloudeG0C_So10NSProgressCtF_0()
{
  v1 = sub_1BA4A2D28();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3E68();
  v9 = v0;
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v37 = v2;
    v13 = v12;
    v35 = swift_slowAlloc();
    v38 = v35;
    *v13 = 136446466;
    v14 = v9;
    v33 = v11;
    v15 = v14;
    v16 = [v14 description];
    v36 = v5;
    v17 = v16;
    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v34 = v6;
    v19 = v1;
    v20 = v18;
    v22 = v21;

    v23 = v20;
    v1 = v19;
    v24 = sub_1B9F0B82C(v23, v22, &v38);

    *(v13 + 4) = v24;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA505090, &v38);
    _os_log_impl(&dword_1B9F07000, v10, v33, "%{public}s - %{public}s", v13, 0x16u);
    v25 = v35;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    v26 = v13;
    v2 = v37;
    MEMORY[0x1BFAF43A0](v26, -1, -1);

    (*(v34 + 8))(v8, v36);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v27 = (*(v2 + 104))(v4, *MEMORY[0x1E69A32D8], v1);
  MEMORY[0x1EEE9AC00](v27);
  *&v32[-16] = v9;
  *&v32[-8] = v4;

  sub_1BA4A24E8();

  v29 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x98))(v28);
  if (v29)
  {
    v30 = v29;
    v29(v4);
    sub_1B9F0E310(v30);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t _s18HealthExperienceUI22CloudSyncStateObserverC05cloudegE9CompletedyySo07HKCloudeG0CF_0()
{
  v1 = sub_1BA4A2D28();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3E68();
  v9 = v0;
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v37 = v2;
    v13 = v12;
    v35 = swift_slowAlloc();
    v38 = v35;
    *v13 = 136446466;
    v14 = v9;
    v33 = v11;
    v15 = v14;
    v16 = [v14 description];
    v36 = v5;
    v17 = v16;
    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v34 = v6;
    v19 = v1;
    v20 = v18;
    v22 = v21;

    v23 = v20;
    v1 = v19;
    v24 = sub_1B9F0B82C(v23, v22, &v38);

    *(v13 + 4) = v24;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA505060, &v38);
    _os_log_impl(&dword_1B9F07000, v10, v33, "%{public}s - %{public}s", v13, 0x16u);
    v25 = v35;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    v26 = v13;
    v2 = v37;
    MEMORY[0x1BFAF43A0](v26, -1, -1);

    (*(v34 + 8))(v8, v36);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v27 = (*(v2 + 104))(v4, *MEMORY[0x1E69A32E8], v1);
  MEMORY[0x1EEE9AC00](v27);
  *&v32[-16] = v9;
  *&v32[-8] = v4;

  sub_1BA4A24E8();

  v29 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x98))(v28);
  if (v29)
  {
    v30 = v29;
    v29(v4);
    sub_1B9F0E310(v30);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1BA3B4748(void *a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v7);
  v43 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - v13;
  v15 = a1;
  sub_1BA4A2908();
  sub_1BA4A3E68();
  sub_1B9F39FD0(v14, v11, MEMORY[0x1E69A3190]);
  v16 = v1;
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = v4;
    v20 = v19;
    v41 = swift_slowAlloc();
    v44 = v41;
    *v20 = 136446722;
    v21 = v16;
    v22 = [v21 description];
    v39 = v18;
    v23 = v22;
    v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v38[1] = v7;
    v25 = v24;
    v40 = v3;
    v27 = v26;

    v28 = sub_1B9F0B82C(v25, v27, &v44);

    *(v20 + 4) = v28;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_1B9F0B82C(0xD000000000000029, 0x80000001BA505030, &v44);
    *(v20 + 22) = 2082;
    sub_1B9F39FD0(v11, v43, MEMORY[0x1E69A3190]);
    v29 = sub_1BA4A6808();
    v31 = v30;
    sub_1B9F0DF80(v11, MEMORY[0x1E69A3190]);
    v32 = sub_1B9F0B82C(v29, v31, &v44);

    *(v20 + 24) = v32;
    _os_log_impl(&dword_1B9F07000, v17, v39, "%{public}s - %{public}s, state: %{public}s", v20, 0x20u);
    v33 = v41;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v33, -1, -1);
    MEMORY[0x1BFAF43A0](v20, -1, -1);

    v34 = (*(v42 + 8))(v6, v40);
  }

  else
  {

    sub_1B9F0DF80(v11, MEMORY[0x1E69A3190]);
    v34 = (*(v4 + 8))(v6, v3);
  }

  v35 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0xB0))(v34);
  if (v35)
  {
    v36 = v35;
    v35(v14);
    sub_1B9F0E310(v36);
  }

  return sub_1B9F0DF80(v14, MEMORY[0x1E69A3190]);
}

id sub_1BA3B4DA4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView____lazy_storage___contentView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA3B4FB0()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25AspectFitScalingImageView_image];
  if (v1)
  {
    v2 = v0;
    v36 = v1;
    v3 = COERCE_DOUBLE(sub_1BA4A7748());
    if (v4)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v3;
    }

    [v36 size];
    if (v6 <= 0.0 || ([v36 size], v5 >= v7))
    {
      v29 = v36;
    }

    else
    {
      [v0 bounds];
      v34 = ceil(fabs(v5 * 0.5));
      v39 = CGRectInset(v38, 0.0, v34);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      v35 = v39.size.width;
      height = v39.size.height;
      [v36 size];
      v14 = v12 / v13;
      if (v13 == 0.0)
      {
        v14 = 0.0;
      }

      v40.origin.x = sub_1BA32EAD4(v14, x, y, width, height);
      v15 = v40.origin.x;
      v16 = v40.origin.y;
      v17 = v40.size.width;
      v18 = v40.size.height;
      v31 = CGRectGetHeight(v40);
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = v35;
      v41.size.height = height;
      v30 = CGRectGetHeight(v41);
      v33 = v15;
      v42.origin.x = v15;
      v42.origin.y = v16;
      v32 = v18;
      v42.size.width = v17;
      v42.size.height = v18;
      v19 = CGRectGetHeight(v42);
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = v35;
      v43.size.height = height;
      if (v5 >= vabdd_f64(v19, CGRectGetHeight(v43)))
      {
        v20 = sub_1BA3B4DA4();
        [v2 bounds];
      }

      else
      {
        v20 = sub_1BA3B4DA4();
        v44.origin.x = v33;
        v44.origin.y = v16;
        v44.size.width = v17;
        v44.size.height = v18;
        MinX = CGRectGetMinX(v44);
        v45.origin.x = v33;
        v45.origin.y = v16;
        v45.size.width = v17;
        v45.size.height = v32;
        v22 = v34 + CGRectGetMinY(v45) - v5 * (v31 / v30);
        v46.origin.x = v33;
        v46.origin.y = v16;
        v46.size.width = v17;
        v46.size.height = v32;
        v23 = CGRectGetWidth(v46);
        v47.origin.x = v33;
        v47.origin.y = v16;
        v47.size.width = v17;
        v47.size.height = v32;
        v24 = CGRectGetHeight(v47);
        v25 = v23;
        v26 = v22;
        v27 = v24;
        v28 = MinX;
      }

      [v20 setFrame_];

      v29 = v20;
    }
  }
}

id sub_1BA3B5250()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AspectFitScalingImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3B52F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *v0;

  MEMORY[0x1BFAF1350](v1, v2);
  return v4;
}

uint64_t sub_1BA3B5344(uint64_t a1)
{
  v2 = sub_1BA298604();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA3B5390()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v7], &v39);
  if (!v40)
  {
    sub_1B9F7B644(&v39);
LABEL_6:
    sub_1BA4A3DD8();
    v13 = v1;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v3;
      v18 = v17;
      *&v34 = v17;
      *v16 = 136315394;
      *&v41[0] = ObjectType;
      swift_getMetatypeMetadata();
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, &v34);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      sub_1B9F68124(&v1[v7], v41);
      sub_1B9F0D20C(0, &qword_1EDC6E1A0, sub_1B9FCD918);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v34);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v14, v15, "Unexpected item received in %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);

      return (*(v4 + 8))(v6, v32);
    }

    else
    {

      return (*(v4 + 8))(v6, v3);
    }
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  *v42 = v36;
  *&v42[16] = v37;
  *&v42[32] = v38;
  v41[0] = v34;
  v41[1] = v35;
  [*&v1[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView] setImage_];
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel];
  v9 = sub_1BA4A6758();
  [v8 setText_];

  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel];
  v39 = *&v42[8];
  v11 = *&v42[16];
  if (*&v42[16])
  {
    v12 = v10;
    sub_1B9F87F44(&v39, &v34);
    v11 = sub_1BA4A6758();
    sub_1BA3B86E8(&v39, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F23348);
  }

  else
  {
    v26 = v10;
  }

  [v10 setText_];

  v27 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel];
  v34 = *&v42[24];
  v28 = *&v42[32];
  if (*&v42[32])
  {
    v29 = v27;
    sub_1B9F87F44(&v34, v33);
    v28 = sub_1BA4A6758();
    sub_1BA3B86E8(&v34, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F23348);
  }

  else
  {
    v30 = v27;
  }

  [v27 setText_];

  sub_1BA3B75C0(v41);
  return sub_1BA298658(v41);
}

id sub_1BA3B5848(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v110 = *(v10 - 8);
  v111 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v106 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v106 - v15;
  v17 = &v5[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  v21 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = objc_opt_self();
  v23 = [v22 secondarySystemGroupedBackgroundColor];
  [v21 setBackgroundColor_];

  [v21 hk:40.0 maskAllCornersWithRadius:?];
  *&v5[v20] = v21;
  v24 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView;
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setContentMode_];

  *&v5[v24] = v25;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = [v22 labelColor];
  v28 = &selRef_preferredContentSizeCategory;
  [v26 setTextColor_];

  v29 = *MEMORY[0x1E69DDDB8];
  v112 = objc_opt_self();
  v30 = [v112 preferredFontDescriptorWithTextStyle:v29 compatibleWithTraitCollection:0];
  v31 = [v30 fontDescriptorWithSymbolicTraits_];

  if (v31)
  {
    v32 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];

    v33 = v112;
  }

  else
  {
    sub_1BA4A3DD8();
    v34 = v29;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v115 = v107;
      *v37 = 136315906;
      v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v40 = sub_1B9F0B82C(v38, v39, &v115);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v113 = 0;
      v114 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v41 = sub_1BA4A6808();
      v43 = sub_1B9F0B82C(v41, v42, &v115);

      *(v37 + 14) = v43;
      *(v37 + 22) = 2080;
      LODWORD(v113) = 2;
      type metadata accessor for SymbolicTraits(0);
      v44 = sub_1BA4A6808();
      v46 = sub_1B9F0B82C(v44, v45, &v115);

      *(v37 + 24) = v46;
      *(v37 + 32) = 2112;
      v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v37 + 34) = v47;
      v48 = v106;
      *v106 = v47;
      _os_log_impl(&dword_1B9F07000, v35, v36, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v37, 0x2Au);
      sub_1BA3B86E8(v48, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v48, -1, -1);
      v49 = v107;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v110 + 8))(v16, v111);
    v33 = v112;
    v50 = [v112 preferredFontDescriptorWithTextStyle_];
    v32 = [objc_opt_self() fontWithDescriptor:v50 size:0.0];

    v28 = &selRef_preferredContentSizeCategory;
  }

  v51 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel;
  [v26 setFont_];

  [v26 setNumberOfLines_];
  [v26 setTextAlignment_];
  [v26 setAdjustsFontForContentSizeCategory_];
  *&v5[v51] = v26;
  v52 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v52 setTranslatesAutoresizingMaskIntoConstraints_];
  v53 = [v22 labelColor];
  [v52 setTextColor_];

  v54 = *MEMORY[0x1E69DDD80];
  v55 = [v33 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v55)
  {
    v56 = v55;
    v57 = [objc_opt_self() fontWithDescriptor:v55 size:0.0];
  }

  else
  {
    v58 = v108;
    sub_1BA4A3DD8();
    v59 = v54;
    v60 = sub_1BA4A3E88();
    v61 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v115 = v107;
      *v62 = 136315906;
      v63 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v65 = sub_1B9F0B82C(v63, v64, &v115);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2080;
      v113 = 0;
      v114 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v66 = sub_1BA4A6808();
      v68 = sub_1B9F0B82C(v66, v67, &v115);

      *(v62 + 14) = v68;
      *(v62 + 22) = 2080;
      LODWORD(v113) = 0;
      type metadata accessor for SymbolicTraits(0);
      v69 = sub_1BA4A6808();
      v71 = sub_1B9F0B82C(v69, v70, &v115);

      *(v62 + 24) = v71;
      v33 = v112;
      *(v62 + 32) = 2112;
      v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v62 + 34) = v72;
      v73 = v106;
      *v106 = v72;
      _os_log_impl(&dword_1B9F07000, v60, v61, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v62, 0x2Au);
      sub_1BA3B86E8(v73, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v73, -1, -1);
      v74 = v107;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v74, -1, -1);
      MEMORY[0x1BFAF43A0](v62, -1, -1);

      (*(v110 + 8))(v108, v111);
    }

    else
    {

      (*(v110 + 8))(v58, v111);
    }

    v56 = [v33 preferredFontDescriptorWithTextStyle_];
    v57 = [objc_opt_self() fontWithDescriptor:v56 size:0.0];
    v28 = &selRef_preferredContentSizeCategory;
  }

  v75 = v57;

  v76 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel;
  [v52 setFont_];

  [v52 setNumberOfLines_];
  [v52 setTextAlignment_];
  [v52 setAdjustsFontForContentSizeCategory_];
  *&v5[v76] = v52;
  v77 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v77 setTranslatesAutoresizingMaskIntoConstraints_];
  [v77 setAdjustsFontForContentSizeCategory_];
  v78 = *MEMORY[0x1E69DDD08];
  v79 = [v33 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:0];
  if (v79)
  {
    v80 = v79;
    v81 = [objc_opt_self() fontWithDescriptor:v79 size:0.0];
  }

  else
  {
    v82 = v109;
    sub_1BA4A3DD8();
    v83 = v78;
    v84 = sub_1BA4A3E88();
    v85 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v115 = v108;
      *v86 = 136315906;
      v87 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v89 = sub_1B9F0B82C(v87, v88, &v115);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2080;
      v113 = 0;
      v114 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v90 = sub_1BA4A6808();
      v92 = sub_1B9F0B82C(v90, v91, &v115);

      *(v86 + 14) = v92;
      *(v86 + 22) = 2080;
      LODWORD(v113) = 0;
      type metadata accessor for SymbolicTraits(0);
      v93 = sub_1BA4A6808();
      v95 = sub_1B9F0B82C(v93, v94, &v115);

      *(v86 + 24) = v95;
      v33 = v112;
      *(v86 + 32) = 2112;
      v96 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v86 + 34) = v96;
      v97 = v107;
      *v107 = v96;
      _os_log_impl(&dword_1B9F07000, v84, v85, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v86, 0x2Au);
      sub_1BA3B86E8(v97, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v97, -1, -1);
      v98 = v108;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v98, -1, -1);
      MEMORY[0x1BFAF43A0](v86, -1, -1);

      (*(v110 + 8))(v109, v111);
    }

    else
    {

      (*(v110 + 8))(v82, v111);
    }

    v28 = &selRef_preferredContentSizeCategory;
    v80 = [v33 preferredFontDescriptorWithTextStyle_];
    v81 = [objc_opt_self() fontWithDescriptor:v80 size:0.0];
  }

  v99 = v81;

  v100 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel;
  [v77 setFont_];

  v101 = [v22 secondaryLabelColor];
  [v77 v28[152]];

  [v77 setTextAlignment_];
  [v77 setNumberOfLines_];
  *&v5[v100] = v77;
  v5[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_baseConstraintsActive] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabelConstraints] = MEMORY[0x1E69E7CC0];
  v102 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  v116.receiver = v5;
  v116.super_class = v102;
  v103 = objc_msgSendSuper2(&v116, sel_initWithFrame_, a1, a2, a3, a4);
  v104 = [v22 clearColor];
  [v103 setBackgroundColor_];

  sub_1BA3B74E0();
  return v103;
}

id sub_1BA3B6688(void *a1)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_1BA4A3EA8();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v100 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100 - v9;
  v11 = &v2[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_item];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_containerView;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v12] = v13;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageBackgroundView;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = objc_opt_self();
  v17 = [v16 secondarySystemGroupedBackgroundColor];
  [v15 setBackgroundColor_];

  [v15 hk:40.0 maskAllCornersWithRadius:?];
  *&v2[v14] = v15;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_imageView;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setContentMode_];

  *&v2[v18] = v19;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = [v16 labelColor];
  [v20 setTextColor_];

  v22 = *MEMORY[0x1E69DDDB8];
  v108 = objc_opt_self();
  v23 = [v108 preferredFontDescriptorWithTextStyle:v22 compatibleWithTraitCollection:0];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];

  v102 = v5;
  v103 = v16;
  if (v24)
  {
    v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];

    v26 = &selRef_preferredContentSizeCategory;
    v27 = v108;
    v28 = v104;
  }

  else
  {
    sub_1BA4A3DD8();
    v29 = v22;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v111 = v33;
      *v32 = 136315906;
      v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v36 = sub_1B9F0B82C(v34, v35, &v111);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v109 = 0;
      v110 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v111);

      *(v32 + 14) = v39;
      *(v32 + 22) = 2080;
      LODWORD(v109) = 2;
      type metadata accessor for SymbolicTraits(0);
      v40 = sub_1BA4A6808();
      v42 = sub_1B9F0B82C(v40, v41, &v111);

      *(v32 + 24) = v42;
      v16 = v103;
      *(v32 + 32) = 2112;
      v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v32 + 34) = v43;
      v44 = v101;
      *v101 = v43;
      _os_log_impl(&dword_1B9F07000, v30, v31, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v32, 0x2Au);
      sub_1BA3B86E8(v44, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v44, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
    }

    (*(v106 + 8))(v10, v107);
    v26 = &selRef_preferredContentSizeCategory;
    v27 = v108;
    v28 = v104;
    v45 = [v108 preferredFontDescriptorWithTextStyle_];
    v25 = [objc_opt_self() fontWithDescriptor:v45 size:0.0];

    v5 = v102;
  }

  v46 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_titleLabel;
  [v20 setFont_];

  [v20 setNumberOfLines_];
  [v20 setTextAlignment_];
  [v20 setAdjustsFontForContentSizeCategory_];
  *&v2[v46] = v20;
  v47 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = [v16 labelColor];
  [v47 v26[152]];

  v49 = *MEMORY[0x1E69DDD80];
  v50 = [v27 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:0];
  if (v50)
  {
    v51 = v50;
    v52 = [objc_opt_self() fontWithDescriptor:v50 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v53 = v49;
    v54 = sub_1BA4A3E88();
    v55 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v111 = v104;
      *v56 = 136315906;
      v57 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v59 = sub_1B9F0B82C(v57, v58, &v111);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v109 = 0;
      v110 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v60 = sub_1BA4A6808();
      v62 = sub_1B9F0B82C(v60, v61, &v111);

      *(v56 + 14) = v62;
      *(v56 + 22) = 2080;
      v27 = v108;
      LODWORD(v109) = 0;
      type metadata accessor for SymbolicTraits(0);
      v63 = sub_1BA4A6808();
      v65 = sub_1B9F0B82C(v63, v64, &v111);

      *(v56 + 24) = v65;
      *(v56 + 32) = 2112;
      v66 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v56 + 34) = v66;
      v67 = v101;
      *v101 = v66;
      _os_log_impl(&dword_1B9F07000, v54, v55, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v56, 0x2Au);
      sub_1BA3B86E8(v67, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      v68 = v67;
      v26 = &selRef_preferredContentSizeCategory;
      MEMORY[0x1BFAF43A0](v68, -1, -1);
      v69 = v104;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v69, -1, -1);
      MEMORY[0x1BFAF43A0](v56, -1, -1);
    }

    (*(v106 + 8))(v28, v107);
    v51 = [v27 preferredFontDescriptorWithTextStyle_];
    v52 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];
    v5 = v102;
    v16 = v103;
  }

  v70 = v52;

  v71 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabel;
  [v47 setFont_];

  [v47 setNumberOfLines_];
  [v47 setTextAlignment_];
  [v47 setAdjustsFontForContentSizeCategory_];
  *&v2[v71] = v47;
  v72 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v72 setTranslatesAutoresizingMaskIntoConstraints_];
  [v72 setAdjustsFontForContentSizeCategory_];
  v73 = *MEMORY[0x1E69DDD08];
  v74 = [v27 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:0];
  if (v74)
  {
    v75 = v74;
    v76 = [objc_opt_self() fontWithDescriptor:v74 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v77 = v73;
    v78 = sub_1BA4A3E88();
    v79 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v111 = v104;
      *v80 = 136315906;
      v81 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v83 = sub_1B9F0B82C(v81, v82, &v111);

      *(v80 + 4) = v83;
      *(v80 + 12) = 2080;
      v109 = 0;
      v110 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v84 = sub_1BA4A6808();
      v86 = sub_1B9F0B82C(v84, v85, &v111);

      *(v80 + 14) = v86;
      *(v80 + 22) = 2080;
      v27 = v108;
      LODWORD(v109) = 0;
      type metadata accessor for SymbolicTraits(0);
      v87 = sub_1BA4A6808();
      v89 = sub_1B9F0B82C(v87, v88, &v111);
      v26 = &selRef_preferredContentSizeCategory;

      *(v80 + 24) = v89;
      *(v80 + 32) = 2112;
      v90 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v80 + 34) = v90;
      v91 = v101;
      *v101 = v90;
      _os_log_impl(&dword_1B9F07000, v78, v79, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v80, 0x2Au);
      sub_1BA3B86E8(v91, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F6A804);
      MEMORY[0x1BFAF43A0](v91, -1, -1);
      v92 = v104;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v92, -1, -1);
      MEMORY[0x1BFAF43A0](v80, -1, -1);

      (*(v106 + 8))(v102, v107);
    }

    else
    {

      (*(v106 + 8))(v5, v107);
    }

    v16 = v103;
    v75 = [v27 preferredFontDescriptorWithTextStyle_];
    v76 = [objc_opt_self() fontWithDescriptor:v75 size:0.0];
  }

  v93 = v76;

  v94 = OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabel;
  [v72 setFont_];

  v95 = [v16 secondaryLabelColor];
  [v72 v26[152]];

  [v72 setTextAlignment_];
  [v72 setNumberOfLines_];
  *&v2[v94] = v72;
  v2[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_baseConstraintsActive] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_primaryDescriptionLabelBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI41CenteredIconDescriptionCollectionViewCell_secondaryDescriptionLabelConstraints] = MEMORY[0x1E69E7CC0];
  v96 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  v112.receiver = v2;
  v112.super_class = v96;
  v97 = v105;
  v98 = objc_msgSendSuper2(&v112, sel_initWithCoder_, v105);

  if (v98)
  {
  }

  return v98;
}