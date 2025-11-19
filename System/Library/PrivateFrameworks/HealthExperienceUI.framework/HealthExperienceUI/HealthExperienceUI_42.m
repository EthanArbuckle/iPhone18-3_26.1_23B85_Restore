uint64_t sub_1BA3831CC()
{
  sub_1BA385C7C(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A38E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v7 = sub_1BA4A3938();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1BA3878D4(v2, sub_1BA385C7C);
    return 0;
  }

  if ((*(v8 + 88))(v2, v7) != *MEMORY[0x1E69A3888])
  {
    (*(v8 + 8))(v2, v7);
    return 0;
  }

  (*(v8 + 96))(v2, v7);
  (*(v4 + 32))(v6, v2, v3);
  v9 = sub_1BA4A38D8();
  v10 = *(v9 + 16);
  if (v10)
  {
    v14 = v4;
    v11 = sub_1BA021990(v10, 0);
    v15 = sub_1BA0238B0(&v16, v11 + 4, v10, v9);

    sub_1B9F52E48();
    if (v15 != v10)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v4 = v14;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = v11;
  sub_1BA0B7F58(&v16);

  sub_1BA387A94(0, &qword_1EDC6B670);
  sub_1BA3877D0(&qword_1EDC6B660, &qword_1EDC6B670);
  v13 = sub_1BA4A66D8();

  (*(v4 + 8))(v6, v3);
  return v13;
}

uint64_t sub_1BA383574()
{
  v0 = sub_1BA4A1728();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for InternalSettingsFeatureState();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  sub_1BA38770C(&v13[*(v11 + 32)], v9, sub_1B9F7B6A0);
  sub_1BA3878D4(v13, type metadata accessor for InternalSettingsFeatureState);
  sub_1BA38770C(v9, v6, sub_1B9F7B6A0);
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    v14 = 7104878;
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    v15 = sub_1BA382EC0();
    v16 = sub_1BA4A16B8();
    v17 = [v15 stringFromDate_];

    v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    (*(v1 + 8))(v3, v0);
  }

  sub_1BA3878D4(v9, sub_1B9F7B6A0);
  return v14;
}

uint64_t sub_1BA383854()
{
  v0 = type metadata accessor for InternalSettingsFeatureState();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v4 = *&v3[*(v1 + 52)];

  sub_1BA3878D4(v3, type metadata accessor for InternalSettingsFeatureState);
  if (v4)
  {
    sub_1BA387774();
    result = sub_1BA4A8068();
    v6 = result;
    v7 = 0;
    v8 = v4 + 64;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 64);
    v12 = (v9 + 63) >> 6;
    v33 = result + 64;
    v34 = result;
    if (v11)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_11:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = *(v4 + 56);
        v19 = v4;
        v20 = (*(v4 + 48) + 16 * v16);
        v21 = v20[1];
        v35 = *v20;
        sub_1B9F0AD9C(v18 + 32 * v16, v37);
        sub_1B9F0AD9C(v37, v36);

        v22 = sub_1BA4A6808();
        v24 = v23;
        result = __swift_destroy_boxed_opaque_existential_1(v37);
        v25 = (v16 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v26 = 1 << v16;
        v6 = v34;
        *(v33 + v25) |= v26;
        v27 = (v6[6] + v17);
        *v27 = v35;
        v27[1] = v21;
        v28 = (v6[7] + v17);
        *v28 = v22;
        v28[1] = v24;
        v29 = v6[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          break;
        }

        v6[2] = v31;
        v4 = v19;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          return v6;
        }

        v15 = *(v8 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v11 = (v15 - 1) & v15;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BA383AC4()
{
  v1 = v0;
  v2 = sub_1BA4A3908();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BA4A3938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA385C7C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_1BA3878D4(v12, sub_1BA385C7C);
    return sub_1B9FDC120(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_1BA3878D4(v12, sub_1BA385C7C);
    sub_1BA383DB0(v5);
    (*(v7 + 8))(v9, v6);
    v14 = sub_1BA4A38F8();
    v15 = (*(v3 + 8))(v5, v2);
    MEMORY[0x1EEE9AC00](v15);
    *&v17[-16] = v1;
    v16 = sub_1BA387420(v14, sub_1BA387304);

    return v16;
  }
}

uint64_t sub_1BA383DB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18[1] = a1;
  v3 = sub_1BA4A38B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A38E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3938();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v2, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x1E69A3888])
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    sub_1BA4A38A8();
    return (*(v8 + 8))(v10, v7);
  }

  else if (v16 == *MEMORY[0x1E69A3880])
  {
    (*(v12 + 96))(v15, v11);
    (*(v4 + 32))(v6, v15, v3);
    sub_1BA4A38A8();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA3840D8(uint64_t a1)
{
  v1 = sub_1BA4A76A8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v3 = v1;
    sub_1BA067158(0, v2, 0);
    result = v3;
    v5 = 0;
    v6 = v18;
    v7 = (v3 + 40);
    v16 = v3;
    while (v5 < *(result + 16))
    {
      v8 = v2;
      v9 = *v7;
      v10 = *(v7 - 1);
      v11 = sub_1BA3850EC(v10, a1);
      v12 = sub_1BA385658(v10);

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1BA067158((v13 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v11;
      ++v5;
      *(v15 + 40) = v9;
      *(v15 + 41) = v12;
      v7 += 2;
      v2 = v8;
      result = v16;
      if (v8 == v5)
      {

        return v6;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1BA384224()
{
  v0 = *(sub_1BA383AC4() + 16);

  result = sub_1BA383AC4();
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(*(result + 56) + ((v7 << 9) | (8 * v8))) + 16))
    {

      return v0 != 0;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return 0;
    }

    v5 = *(result + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1BA3842F4()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
  v2 = sub_1BA4A6758();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1BA386344;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BA454240;
  v6[3] = &block_descriptor_54_0;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v1 setCurrentOnboardingVersionCompletedForCountryCode:v2 countryCodeProvenance:101 date:0 settings:0 completion:v4];
  _Block_release(v4);
}

void sub_1BA384400(char a1, void *a2, void *a3)
{
  sub_1BA385CB0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  if (a1)
  {
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v12, qword_1EBC09940);
    v13 = a2;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v47 = v17;
      *v16 = 136315138;
      v18 = [*&v13[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = v20;

      v22 = sub_1B9F0B82C(v19, v21, &v47);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[Internal Settings] Completed onboarding for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    sub_1BA382848();
  }

  else
  {
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v23 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v23, qword_1EBC09940);
    v24 = a2;
    v25 = a3;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();

    v28 = os_log_type_enabled(v26, v27);
    v45 = v24;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315394;
      v31 = [*&v24[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v34 = v33;

      v35 = sub_1B9F0B82C(v32, v34, &v47);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      v46 = a3;
      sub_1BA38781C(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
      v36 = sub_1BA4A7A98();
      v38 = sub_1B9F0B82C(v36, v37, &v47);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[Internal Settings] Failed to complete onboarding for %s: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    if (a3)
    {
      v39 = a3;
      v40 = a3;
      sub_1BA4A1788();
      v41 = type metadata accessor for ErrorMessage(0);
      *&v11[*(v41 + 20)] = a3;
      v42 = &v11[*(v41 + 24)];
      *v42 = 0xD00000000000001BLL;
      *(v42 + 1) = 0x80000001BA503990;
      (*(*(v41 - 8) + 56))(v11, 0, 1, v41);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA38770C(v11, v8, sub_1BA385CB0);
      v43 = v45;
      sub_1BA4A4F38();

      sub_1BA3878D4(v11, sub_1BA385CB0);
    }
  }
}

uint64_t sub_1BA38490C(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v9 = sub_1BA4A6478();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A64C8();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v15 = sub_1BA4A7308();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a3;
  *(v16 + 32) = a2;
  aBlock[4] = v21;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = v22;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = a2;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA38793C(&qword_1EDC5E8E0, 255, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1BA38793C(&qword_1EDC5E6A0, 255, sub_1B9F3F378);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v14, v11, v17);
  _Block_release(v17);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

void sub_1BA384C08(char a1, void *a2, void *a3)
{
  sub_1BA385CB0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  if (a1)
  {
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v12, qword_1EBC09940);
    v13 = a2;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v47 = v17;
      *v16 = 136315138;
      v18 = [*&v13[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = v20;

      v22 = sub_1B9F0B82C(v19, v21, &v47);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[Internal Settings] Reset onboarding for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    sub_1BA382848();
  }

  else
  {
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v23 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v23, qword_1EBC09940);
    v24 = a2;
    v25 = a3;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();

    v28 = os_log_type_enabled(v26, v27);
    v45 = v24;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315394;
      v31 = [*&v24[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v34 = v33;

      v35 = sub_1B9F0B82C(v32, v34, &v47);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      v46 = a3;
      sub_1BA38781C(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
      v36 = sub_1BA4A7A98();
      v38 = sub_1B9F0B82C(v36, v37, &v47);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[Internal Settings] Failed to reset onboarding for %s: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    if (a3)
    {
      v39 = a3;
      v40 = a3;
      sub_1BA4A1788();
      v41 = type metadata accessor for ErrorMessage(0);
      *&v11[*(v41 + 20)] = a3;
      v42 = &v11[*(v41 + 24)];
      *v42 = 0xD00000000000001ALL;
      *(v42 + 1) = 0x80000001BA503860;
      (*(*(v41 - 8) + 56))(v11, 0, 1, v41);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA38770C(v11, v8, sub_1BA385CB0);
      v43 = v45;
      sub_1BA4A4F38();

      sub_1BA3878D4(v11, sub_1BA385CB0);
    }
  }
}

uint64_t sub_1BA3850EC(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = type metadata accessor for InternalSettingsFeatureState();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v8 = *&v7[*(v5 + 56)];
  v9 = v8;
  sub_1BA3878D4(v7, type metadata accessor for InternalSettingsFeatureState);
  if (!v8)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA5038E0);
    v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    MEMORY[0x1BFAF1350](v30);

    MEMORY[0x1BFAF1350](0xD000000000000024, 0x80000001BA503900);
    while (1)
    {
LABEL_26:
      sub_1BA4A8018();
      __break(1u);
LABEL_27:

      v35 = 0;
      v36 = 0xE000000000000000;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA5038E0);
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      MEMORY[0x1BFAF1350](v28);

      MEMORY[0x1BFAF1350](0xD000000000000022, 0x80000001BA503930);
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      MEMORY[0x1BFAF1350](v29);

      MEMORY[0x1BFAF1350](0x6F66206572657720, 0xEB00000000646E75);
    }
  }

  v10 = [v9 requirementsByContext];
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1BA38781C(0, &qword_1EBBF15D0, sub_1BA3862E0, MEMORY[0x1E69E62F8]);
  sub_1BA38793C(&qword_1EBBE9420, 255, type metadata accessor for HKFeatureAvailabilityContext);
  v11 = sub_1BA4A6628();

  if (!*(v11 + 16))
  {
    goto LABEL_27;
  }

  v12 = sub_1B9F4E588(a2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if (v14 >> 62)
  {
    goto LABEL_24;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = a2;
  v32 = v9;
  if (!v15)
  {
LABEL_25:
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA5038E0);
    v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    MEMORY[0x1BFAF1350](v26);

    MEMORY[0x1BFAF1350](0xD00000000000002BLL, 0x80000001BA503960);
    v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    MEMORY[0x1BFAF1350](v27);

    goto LABEL_26;
  }

LABEL_6:
  v16 = 0;
  v34 = v14 & 0xC000000000000001;
  a2 = v14 & 0xFFFFFFFFFFFFFF8;
  while (!v34)
  {
    if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_24:
      v15 = sub_1BA4A7CC8();
      v31 = a2;
      v32 = v9;
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_6;
    }

    v17 = *(v14 + 8 * v16 + 32);
    swift_unknownObjectRetain();
    v18 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      goto LABEL_19;
    }

LABEL_10:
    v9 = v15;
    swift_getObjectType();
    v2 = [swift_getObjCClassFromMetadata() requirementIdentifier];
    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = v20;
    if (v19 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v21 == v22)
    {
      goto LABEL_20;
    }

    v24 = sub_1BA4A8338();

    if (v24)
    {

      return v17;
    }

    swift_unknownObjectRelease();
    ++v16;
    v15 = v9;
    if (v18 == v9)
    {
      goto LABEL_25;
    }
  }

  v17 = MEMORY[0x1BFAF2860](v16, v14);
  v18 = (v16 + 1);
  if (!__OFADD__(v16, 1))
  {
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  return v17;
}

uint64_t sub_1BA385658(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v4 = [objc_allocWithZone(MEMORY[0x1E696C148]) initWithFeatureIdentifier_];

  v5 = [v4 overriddenSatisfactionOfRequirementWithIdentifier_];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 BOOLValue];

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1BA385724(uint64_t a1, char a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v6 = [objc_allocWithZone(MEMORY[0x1E696C148]) initWithFeatureIdentifier_];

  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA38793C(&qword_1EBBF15C8, 255, type metadata accessor for InternalSettingsFeatureStateModel);
  sub_1BA4A4D78();
  sub_1BA4A4E08();

  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360);
    v7 = sub_1BA4A7758();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 overrideSatisfactionOfRequirementWithIdentifier:a1 isSatisfied:?];
}

id sub_1BA3858B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettingsFeatureStateModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA385AB8()
{
  sub_1BA38781C(319, &qword_1EBBF1510, type metadata accessor for InternalSettingsFeatureState, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1BA38781C(319, &qword_1EBBF1518, sub_1BA385C7C, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1BA38781C(319, &qword_1EBBF1528, sub_1BA385CB0, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BA385D04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternalSettingsFeatureStateModel(0);
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

void sub_1BA385D44(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

unint64_t sub_1BA385DD0()
{
  result = sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    result = sub_1B9FED358();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BA385EA8(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 BOOLValue];

    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_1BA385F08@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360);
    result = sub_1BA4A7758();
  }

  *a1 = result;
  return result;
}

uint64_t sub_1BA385F68()
{
  v1 = *v0;
  sub_1BA4A8488();
  sub_1BA380B30(v3, v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA385FB8()
{
  v1 = *v0;
  sub_1BA4A8488();
  sub_1BA380B30(v3, v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA385FFC()
{
  v1 = 0x5920646563726F46;
  if (*v0 != 1)
  {
    v1 = 0x4E20646563726F46;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61727574614ELL;
  }
}

unint64_t sub_1BA386064()
{
  result = qword_1EBBF15C0;
  if (!qword_1EBBF15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF15C0);
  }

  return result;
}

uint64_t sub_1BA3860C4()
{
  v0 = sub_1BA4A3EA8();
  __swift_allocate_value_buffer(v0, qword_1EBC09940);
  __swift_project_value_buffer(v0, qword_1EBC09940);
  return sub_1BA4A3E98();
}

uint64_t sub_1BA38613C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

uint64_t sub_1BA3861B8(uint64_t a1, void **a2)
{
  sub_1BA385C7C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1BA38770C(a1, &v13 - v8, sub_1BA385C7C);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA38770C(v9, v6, sub_1BA385C7C);
  v11 = v10;
  sub_1BA4A4F38();
  return sub_1BA3878D4(v9, sub_1BA385C7C);
}

unint64_t sub_1BA3862E0()
{
  result = qword_1EBBF15D8;
  if (!qword_1EBBF15D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBF15D8);
  }

  return result;
}

uint64_t sub_1BA386390(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BA4A82B8();
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
        type metadata accessor for InternalSettingsFeatureStateModel(0);
        v6 = sub_1BA4A6B98();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1BA386648(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1BA386494(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA386494(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v6 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
      v9 = v6;
      v10 = v7;
      v11 = [v8 featureIdentifier];
      v12 = NSStringFromHKFeatureIdentifier();
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v14 = v13;

      v15 = [*&v10[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v16 = NSStringFromHKFeatureIdentifier();
      v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v19 = v18;

      if (v29 == v17 && v14 == v19)
      {

LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v21 = sub_1BA4A8338();

      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v22 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BA386648(id **a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v8 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v104 = v4;
LABEL_109:
      v105 = v6;
      v129 = v104;
      v4 = *(v104 + 2);
      if (v4 >= 2)
      {
        while (*v8)
        {
          v6 = v4 - 1;
          v106 = *&v104[16 * v4];
          v107 = v104;
          v108 = *&v104[16 * v4 + 24];
          sub_1BA386E98((*v8 + 8 * v106), (*v8 + 8 * *&v104[16 * v4 + 16]), (*v8 + 8 * v108), v7);
          if (v105)
          {
            goto LABEL_117;
          }

          if (v108 < v106)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1BA442D80(v107);
          }

          if (v4 - 2 >= *(v107 + 2))
          {
            goto LABEL_134;
          }

          v109 = &v107[16 * v4];
          *v109 = v106;
          *(v109 + 1) = v108;
          v129 = v107;
          sub_1BA442CF4(v4 - 1);
          v104 = v129;
          v4 = *(v129 + 2);
          if (v4 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

LABEL_140:
    v104 = sub_1BA442D80(v4);
    goto LABEL_109;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v121 = v12;
    }

    else
    {
      v114 = v10;
      v4 = *v7;
      v128 = *(*v7 + v12);
      v127 = *(v4 + 8 * v11);
      v13 = v127;
      v14 = v6;
      v15 = v128;
      v16 = v13;
      v125 = sub_1BA38125C(&v128, &v127);
      if (v14)
      {

        return;
      }

      v17 = v11 + 2;
      if (v11 + 2 >= v8)
      {
        v121 = v11 + 2;
        v10 = v114;
      }

      else
      {
        v110 = v11;
        v18 = (v4 + 8 * v11 + 16);
        v123 = v8;
        do
        {
          v121 = v17;
          v19 = *(v18 - 1);
          v20 = *(*v18 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore);
          v21 = *v18;
          v8 = v19;
          v22 = [v20 featureIdentifier];
          v23 = NSStringFromHKFeatureIdentifier();
          v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v26 = v25;

          v27 = [*(v8 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
          v4 = NSStringFromHKFeatureIdentifier();
          v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v30 = v29;

          if (v24 == v28 && v26 == v30)
          {

            if (v125)
            {
              v10 = v114;
              v6 = 0;
              v7 = a3;
              v11 = v110;
              goto LABEL_22;
            }
          }

          else
          {
            v4 = sub_1BA4A8338();

            if ((v125 ^ v4))
            {
              goto LABEL_20;
            }
          }

          v8 = v123;
          v17 = v121 + 1;
          ++v18;
        }

        while (v123 != v121 + 1);
        v121 = v123;
LABEL_20:
        v10 = v114;
        v11 = v110;
      }

      v6 = 0;
      v7 = a3;
      if (v125)
      {
LABEL_22:
        v32 = v121;
        if (v121 < v11)
        {
          goto LABEL_137;
        }

        if (v11 < v121)
        {
          v33 = 8 * v121 - 8;
          v34 = 8 * v11;
          v35 = v11;
          do
          {
            if (v35 != --v32)
            {
              v37 = *v7;
              if (!*v7)
              {
                goto LABEL_143;
              }

              v36 = *&v37[v34];
              *&v37[v34] = *&v37[v33];
              *&v37[v33] = v36;
            }

            ++v35;
            v33 -= 8;
            v34 += 8;
          }

          while (v35 < v32);
        }
      }
    }

    v38 = v7[1];
    if (v121 < v38)
    {
      if (__OFSUB__(v121, v11))
      {
        goto LABEL_136;
      }

      if (v121 - v11 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v121 < v11)
    {
      goto LABEL_135;
    }

    v58 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v58;
    }

    else
    {
      v10 = sub_1BA27F470(0, *(v58 + 2) + 1, 1, v58);
    }

    v4 = *(v10 + 2);
    v59 = *(v10 + 3);
    v60 = v4 + 1;
    if (v4 >= v59 >> 1)
    {
      v10 = sub_1BA27F470((v59 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v60;
    v61 = &v10[16 * v4];
    *(v61 + 4) = v11;
    *(v61 + 5) = v121;
    v62 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v8 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v10 + 4);
          v64 = *(v10 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_73:
          if (v66)
          {
            goto LABEL_124;
          }

          v79 = &v10[16 * v60];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_127;
          }

          v85 = &v10[16 * v8 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_131;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v8 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v89 = &v10[16 * v60];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_87:
        if (v84)
        {
          goto LABEL_126;
        }

        v92 = &v10[16 * v8];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_129;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_94:
        v4 = v8 - 1;
        if (v8 - 1 >= v60)
        {
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
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v7)
        {
          goto LABEL_142;
        }

        v100 = v10;
        v101 = *&v10[16 * v4 + 32];
        v102 = *&v10[16 * v8 + 40];
        sub_1BA386E98(*v7 + v101, *v7 + *&v10[16 * v8 + 32], *v7 + v102, v62);
        if (v6)
        {
          goto LABEL_117;
        }

        if (v102 < v101)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1BA442D80(v100);
        }

        if (v4 >= *(v100 + 2))
        {
          goto LABEL_121;
        }

        v103 = &v100[16 * v4];
        *(v103 + 4) = v101;
        *(v103 + 5) = v102;
        v129 = v100;
        sub_1BA442CF4(v8);
        v10 = v129;
        v60 = *(v129 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v10[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_122;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_123;
      }

      v74 = &v10[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_125;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_128;
      }

      if (v78 >= v70)
      {
        v96 = &v10[16 * v8 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_132;
        }

        if (v65 < v99)
        {
          v8 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v121;
    if (v121 >= v8)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_138;
  }

  if (v11 + a4 >= v38)
  {
    v39 = v7[1];
  }

  else
  {
    v39 = (v11 + a4);
  }

  if (v39 < v11)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v121 == v39)
  {
    goto LABEL_53;
  }

  v115 = v10;
  v116 = v6;
  v124 = *v7;
  v40 = *v7 + 8 * v121 - 8;
  v111 = v11;
  v41 = v11 - v121;
  v42 = v121;
  v118 = v39;
LABEL_42:
  v120 = v40;
  v122 = v42;
  v43 = v124[v42];
  v119 = v41;
  while (1)
  {
    v44 = *v40;
    v45 = *&v43[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
    v8 = v43;
    v46 = v44;
    v47 = [v45 featureIdentifier];
    v48 = NSStringFromHKFeatureIdentifier();
    v126 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v50 = v49;

    v4 = [*&v46[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
    v51 = NSStringFromHKFeatureIdentifier();
    v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v54 = v53;

    if (v126 == v52 && v50 == v54)
    {

LABEL_41:
      v42 = v122 + 1;
      v40 = v120 + 8;
      v41 = v119 - 1;
      if (v122 + 1 == v118)
      {
        v121 = v118;
        v10 = v115;
        v6 = v116;
        v7 = a3;
        v11 = v111;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v4 = sub_1BA4A8338();

    if ((v4 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v124)
    {
      break;
    }

    v56 = *v40;
    v43 = *(v40 + 8);
    *v40 = v43;
    *(v40 + 8) = v56;
    v40 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

uint64_t sub_1BA386E98(id *__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v33 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v33;
    }

    v62 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v55 = a4;
      v59 = v6;
LABEL_31:
      v61 = v5;
      v34 = v5 - 1;
      v35 = v4;
      v36 = v62;
      v54 = v5 - 1;
      do
      {
        v37 = *--v36;
        v38 = *v34;
        v39 = *&v37[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
        v57 = v37;
        v40 = v38;
        v41 = [v39 featureIdentifier];
        v42 = NSStringFromHKFeatureIdentifier();
        v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v45 = v44;

        v46 = [*&v40[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
        v47 = NSStringFromHKFeatureIdentifier();
        v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v50 = v49;

        if (v43 == v48 && v45 == v50)
        {

          v4 = (v35 - 8);
        }

        else
        {
          v52 = sub_1BA4A8338();

          v4 = (v35 - 8);
          if (v52)
          {
            if (v35 != v61)
            {
              *v4 = *v54;
            }

            v13 = v55;
            if (v62 <= v55 || (v5 = v54, v54 <= v59))
            {
              v5 = v54;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v34 = v54;
        if (v62 != v35)
        {
          *v4 = *v36;
        }

        v62 = v36;
        v35 = v4;
      }

      while (v36 > v55);
      v62 = v36;
      v13 = v55;
      v5 = v61;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v62 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v56 = v4;
      while (1)
      {
        v58 = v6;
        v60 = v5;
        v14 = *v13;
        v15 = *(*v5 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore);
        v16 = *v5;
        v17 = v14;
        v18 = [v15 featureIdentifier];
        v19 = NSStringFromHKFeatureIdentifier();
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v22 = v21;

        v23 = [*&v17[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
        v24 = NSStringFromHKFeatureIdentifier();
        v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v27 = v26;

        v28 = v20 == v25 && v22 == v27;
        if (v28)
        {
          break;
        }

        v29 = sub_1BA4A8338();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }

        v30 = v58;
        v31 = v60;
        v5 = v60 + 1;
        v32 = v56;
        if (v58 != v60)
        {
          goto LABEL_21;
        }

LABEL_22:
        v6 = v30 + 1;
        if (v13 >= v62 || v5 >= v32)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v31 = v13;
      v30 = v58;
      v5 = v60;
      v28 = v58 == v13++;
      v32 = v56;
      if (v28)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v30 = *v31;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_48:
  if (v5 != v13 || v5 >= (v13 + ((v62 - v13 + (v62 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v62 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1BA38730C(uint64_t a1, void *a2, void **a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v12 = *i;
      v9 = v12;
      sub_1BA380FB0(&v12, a2, a3, &v11);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x1BFAF1510]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_1BA387420(uint64_t a1, uint64_t (*a2)(id, id))
{
  v3 = *(a1 + 16);
  type metadata accessor for HKFeatureAvailabilityContext(0);
  v5 = v4;
  sub_1BA387A94(0, &qword_1EBBEA690);
  v7 = v6;
  v8 = sub_1BA38793C(&qword_1EBBE9420, 255, type metadata accessor for HKFeatureAvailabilityContext);
  v9 = MEMORY[0x1BFAF1080](v3, v5, v7, v8);
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v42 = a1;

  v15 = 0;
  v39 = v14;
  v40 = a1 + 64;
  while (v13)
  {
    v16 = v15;
LABEL_11:
    v17 = (v16 << 9) | (8 * __clz(__rbit64(v13)));
    v18 = *(*(v42 + 48) + v17);
    v19 = *(*(v42 + 56) + v17);
    v20 = v18;
    v21 = v19;
    if (!v18)
    {
LABEL_21:

      return v9;
    }

    v22 = v21;
    v23 = v20;
    v24 = v22;
    v25 = a2(v23, v24);

    v43 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_1B9F4E588(v23);
    v29 = v9[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v9[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BA0F32D8();
      }
    }

    else
    {
      sub_1BA0F5D7C(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1B9F4E588(v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_25;
      }

      v28 = v33;
    }

    v13 &= v13 - 1;
    if (v32)
    {
      *(v9[7] + 8 * v28) = v25;
    }

    else
    {
      v9[(v28 >> 6) + 8] |= 1 << v28;
      *(v9[6] + 8 * v28) = v23;
      *(v9[7] + 8 * v28) = v25;

      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_24;
      }

      v9[2] = v37;
    }

    v15 = v16;
    v14 = v39;
    v10 = v40;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_21;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA38770C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA387774()
{
  if (!qword_1EDC5E000)
  {
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E000);
    }
  }
}

uint64_t sub_1BA3877D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BA387A94(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA38781C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA387880()
{
  result = qword_1EBBF1610;
  if (!qword_1EBBF1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1610);
  }

  return result;
}

uint64_t sub_1BA3878D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA38793C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1BA3879A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1BA3879F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA387A94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A6BF8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1BA387AE4()
{
  result = qword_1EBBF1630;
  if (!qword_1EBBF1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1630);
  }

  return result;
}

id static ProfileViewController.makeProfileViewController(healthStore:pinnedContentManager:)(void *a1, uint64_t a2)
{
  sub_1B9F0A534(a2, v15);
  v3 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  v4 = v16;
  v5 = v17;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v10 + 16))(v9, v7);
  v11 = a1;
  v12 = sub_1BA38A128(v11, v9, v3, v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

id static ProfileViewController.makeProfileNavigationController(healthStore:pinnedContentManager:configurator:)(void *a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_project_boxed_opaque_existential_1(a2, v8);

  return sub_1BA389F58(a1, v10, a3, a4, v4, v8, v9);
}

uint64_t ProfileViewController.handleRestoration(restorationType:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if ([v1 isViewLoaded])
  {
    v13 = sub_1B9F23FB0();
    type metadata accessor for CompoundSectionedDataSource();
    sub_1B9F0D950(0, &qword_1EBBF1648);
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(&v10, v14);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      *&v10 = v3;
      *(&v10 + 1) = v2;
      LOBYTE(v11) = v4;
      sub_1BA1A8818(&v10, v1);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1BA38A268(&v10);
  }

  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  v8 = *(v6 + 1);
  *v6 = v3;
  *(v6 + 1) = v2;
  v9 = v6[16];
  v6[16] = v4;
  sub_1BA38A23C(v3, v2, v4);
  return sub_1BA38A254(v7, v8, v9);
}

id ProfileViewController.__allocating_init(healthStore:pinnedContentManager:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_1BA38A2DC(a1, v7, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void sub_1BA387EF4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA387F54()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA387FA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA388058()
{
  sub_1BA142B40();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_1BA3882E8() + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_profileHeaderDataSource);

  v12 = *(v5 + qword_1EDC6A560);
  v6 = MEMORY[0x1E695BF98];
  sub_1BA38A3D0(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA38A45C(&qword_1EDC6B730, &qword_1EDC6B720, v6);

  v7 = sub_1BA4A4F98();

  v12 = v7;
  v8 = MEMORY[0x1E695BED0];
  sub_1BA38A3D0(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1B9F0CDE8(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0);
  sub_1BA38A45C(&qword_1EDC6B740, &qword_1EDC6B738, v8);
  sub_1BA4A4FE8();
  sub_1B9F46FD8(&qword_1EBBEC7C0, sub_1BA142B40);
  v9 = sub_1BA4A4F98();

  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_1BA3882E8()
{
  swift_getObjectType();
  sub_1B9F23FB0();
  type metadata accessor for ProfileCompoundDataSource();
  result = swift_dynamicCastClass();
  if (!result)
  {

    sub_1BA4A7DF8();
    sub_1BA4A85D8();

    MEMORY[0x1BFAF1350](0xD00000000000001FLL, 0x80000001BA503BB0);
    type metadata accessor for CompoundSectionedDataSource();
    sub_1B9F46FD8(&qword_1EBBF09F0, type metadata accessor for CompoundSectionedDataSource);

    v1 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v1);

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA388464()
{
  sub_1BA3304E4(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore) profileIdentifier];
  v6 = [v5 type];

  result = 0;
  if (v6 != 1)
  {
    sub_1BA3882E8();

    sub_1BA1F8E68(v4);

    v8 = sub_1BA4A2888();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_1BA330538(v4, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
      return 0;
    }

    else
    {
      v10 = sub_1BA4A2AE8();
      (*(v9 + 8))(v4, v8);
      return v10;
    }
  }

  return result;
}

id ProfileViewController.init(healthStore:pinnedContentManager:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_1BA38A128(a1, v10, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

void sub_1BA3888C0()
{
  v1 = type metadata accessor for ProfileViewController();
  v14[3] = v1;
  v14[4] = &protocol witness table for ProfileViewController;
  v14[0] = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  v3 = v0;
  sub_1B9F10C48(v14, v0 + v2);
  swift_endAccess();
  v13.receiver = v3;
  v13.super_class = v1;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v4 = [v3 collectionView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [objc_opt_self() systemGroupedBackgroundColor];
  [v5 setBackgroundColor_];

  v7 = [v3 collectionView];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  [v7 setContentInset_];

  v9 = [v3 collectionView];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BA4A6AE8();
    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
    sub_1BA389444();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BA388AB0()
{
  v1 = v0;
  sub_1B9F36938();
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  sub_1B9FF515C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  sub_1B9FF5190();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  sub_1B9FF5260();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  sub_1B9FF5D70();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  sub_1B9FF5688();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  sub_1B9FF5DA4();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  sub_1B9F39D20();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F3C(v11, v12);
}

void sub_1BA388D14()
{
  v1 = v0;
  v2 = sub_1BA4A3678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  (*(v3 + 104))(v5, *MEMORY[0x1E69A2C28], v2);
  v6 = sub_1BA4A35B8();

  (*(v3 + 8))(v5, v2);
  v7 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore] profileIdentifier];
  sub_1BA4A7098();

  [v1 setUserActivity_];
}

void sub_1BA388F08(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F7F8(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17C5F4();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA090900;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_103;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA3891A8(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileViewController();
  objc_msgSendSuper2(&v23, sel_scrollViewDidScroll_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F7F8(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17C5F4();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA091E04;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_7_0;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA389444()
{
  v1 = [v0 navigationItem];
  v2 = [v0 presentingViewController];
  if (v2)
  {

    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v0 action:sel_dismissProfile_];
  }

  else
  {
    v3 = 0;
  }

  [v1 setLeftBarButtonItem_];

  v4 = [v0 navigationItem];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v5 = sub_1BA4A6758();

  [v4 setBackButtonTitle_];

  v6 = [v0 navigationItem];
  [v6 setBackButtonDisplayMode_];

  sub_1BA17B88C();
}

id ProfileViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_1BA389788()
{
  sub_1BA38A254(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad + 8), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad + 16));

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_pinnedContentManager);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView);
}

id ProfileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ProfileViewController.dataSource(for:)()
{
  UIViewController.resolvedHealthExperienceStore.getter(v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v1 = sub_1BA4A1B68();
  __swift_destroy_boxed_opaque_existential_1(v6);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore);
  type metadata accessor for ProfileCompoundDataSource();
  swift_allocObject();
  v3 = v2;
  v4 = sub_1BA1A9848(v3, v1);

  return v4;
}

uint64_t sub_1BA389A88()
{
  v1 = *v0;
  UIViewController.resolvedHealthExperienceStore.getter(v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = sub_1BA4A1B68();
  __swift_destroy_boxed_opaque_existential_1(v7);
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore);
  type metadata accessor for ProfileCompoundDataSource();
  swift_allocObject();
  v4 = v3;
  v5 = sub_1BA1A9848(v4, v2);

  return v5;
}

Swift::Void __swiftcall ProfileViewController.restoreUserActivityState(_:)(NSUserActivity a1)
{
  v3 = sub_1BA4A3EA8();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1BA4A3678();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for ProfileViewController();
  v26.receiver = v1;
  v26.super_class = v16;
  objc_msgSendSuper2(&v26, sel_restoreUserActivityState_, a1.super.isa);
  v17 = [(objc_class *)a1.super.isa activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BA330538(v8, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    sub_1BA4A3E48();
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6F98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B9F07000, v18, v19, "Cannot handle this activity type", v20, 2u);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v22 + 8))(v5, v23);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x1E69A2C70])
    {
      v24 = xmmword_1BA4C92B0;
      v25 = 2;
      ProfileViewController.handleRestoration(restorationType:)(&v24);
      (*(v10 + 8))(v15, v9);
    }

    else
    {
      v21 = *(v10 + 8);
      v21(v15, v9);
      v21(v12, v9);
    }
  }
}

id sub_1BA389F58(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[1] = a4;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  v18 = *(v11 + 16);
  v18(v25 - v16, v15);
  v19 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  (v18)(v13, v17, a6);
  v20 = a1;
  v21 = sub_1BA38A128(v20, v13, v19, a6, a7);

  v22 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v23 = [v22 navigationBar];
  [v23 setPrefersLargeTitles_];

  a3(v21);
  (*(v11 + 8))(v17, a6);
  return v22;
}

id sub_1BA38A128(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = &a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = -1;
  *&a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView] = 0;
  *&a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore] = a1;
  sub_1B9F0A534(v17, &a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_pinnedContentManager]);
  v11 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v12 = a1;
  v13 = [v11 init];
  v16.receiver = a3;
  v16.super_class = type metadata accessor for ProfileViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithCollectionViewLayout_, v13);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_1BA38A23C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1BA38A254(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BA24A460(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1BA38A268(uint64_t a1)
{
  sub_1B9F0CDE8(0, &qword_1EBBF1650, &qword_1EBBF1648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA38A2DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  (*(v9 + 16))(v11, a2, a4);
  return sub_1BA38A128(a1, v11, v12, a4, a5);
}

void sub_1BA38A3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA3304E4(255, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA38A45C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA38A3D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI18ProfileDeepLinkRowO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BA38A600(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return sub_1BA38A7B4(sub_1BA38B5A8);
}

uint64_t sub_1BA38A6C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1BA38A7B4(sub_1BA38B5A8);
}

uint64_t (*sub_1BA38A738(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA38A79C;
}

uint64_t sub_1BA38A7B4(uint64_t a1)
{
  v23 = a1;
  v2 = v1;
  v3 = sub_1BA4A1798();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v22 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360();
  v7 = swift_allocObject();
  *(v7 + 16) = v22;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  v11 = *(v2 + v10);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = type metadata accessor for SegmentedControlItem();
  v14 = swift_allocObject();
  v26 = type metadata accessor for SegmentedControlCell();
  sub_1BA3785A0();

  v14[2] = sub_1BA4A6808();
  v14[3] = v15;
  v14[4] = v9;
  v14[5] = v11;
  v14[6] = v23;
  v14[7] = v12;

  *(v7 + 56) = v13;
  *(v7 + 64) = sub_1BA3785E8();
  *(v7 + 32) = v14;
  sub_1BA4A1788();
  v16 = sub_1BA4A1748();
  v18 = v17;
  (*(v24 + 8))(v5, v25);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v20 = Array<A>.identifierToIndexDict()(v19);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v7;
  *(inited + 56) = v20;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

uint64_t sub_1BA38AA2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA38AA70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1BA38A7B4(sub_1BA38B5A8);
}

uint64_t (*sub_1BA38AAD8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA38A79C;
}

uint64_t sub_1BA38AB3C(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA38A7B4(a3);
  }

  return result;
}

uint64_t SegmentedControlDataSource.init(segments:initiallySelectedSegmentIndex:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BA4A1798();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments) = a1;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex) = a2;
  if (qword_1EBBE8848 != -1)
  {
    swift_once();
  }

  v47[4] = xmmword_1EDC67D78;
  v47[5] = *&qword_1EDC67D88;
  v47[6] = xmmword_1EDC67D98;
  v47[7] = unk_1EDC67DA8;
  v47[0] = xmmword_1EDC67D38;
  v47[1] = *&qword_1EDC67D48;
  v47[2] = xmmword_1EDC67D58;
  v47[3] = *&qword_1EDC67D68;
  v43 = xmmword_1EDC67D38;
  v44 = qword_1EDC67D48;
  v7 = unk_1EDC67D50;
  v9 = xmmword_1EDC67D58;
  v8 = qword_1EDC67D68;
  v39 = *(&xmmword_1EDC67D78 + 8);
  v40 = unk_1EDC67D90;
  v41 = *(&xmmword_1EDC67D98 + 8);
  v42 = qword_1EDC67DB0;
  v38 = unk_1EDC67D70;
  sub_1B9F1D9A4(v47, &v45);
  sub_1B9F1DA18(v7, v9, *(&v9 + 1), v8);
  v45 = v43;
  *(v46 + 8) = 0u;
  *(&v46[1] + 8) = 0u;
  *(&v46[3] + 8) = v39;
  *(&v46[4] + 8) = v40;
  *(&v46[5] + 8) = v41;
  *&v46[0] = v44;
  *(&v46[6] + 1) = v42;
  *(&v46[2] + 8) = v38;
  v10 = swift_allocObject();
  v11 = v46[4];
  v10[5] = v46[3];
  v10[6] = v11;
  v12 = v46[6];
  v10[7] = v46[5];
  v10[8] = v12;
  v13 = v46[0];
  v10[1] = v45;
  v10[2] = v13;
  v14 = v46[2];
  v10[3] = v46[1];
  v10[4] = v14;
  sub_1B9F1D9A4(&v45, &v38);
  v15 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA38B068, v10);

  sub_1B9FF6758();
  inited = swift_initStackObject();
  v33 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360();
  v17 = swift_allocObject();
  *(v17 + 16) = v33;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  v19 = *(v15 + v18);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  v21 = *(v15 + v20);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = type metadata accessor for SegmentedControlItem();
  v24 = swift_allocObject();
  v37 = type metadata accessor for SegmentedControlCell();
  sub_1BA3785A0();

  v24[2] = sub_1BA4A6808();
  v24[3] = v25;
  v24[4] = v19;
  v24[5] = v21;
  v24[6] = sub_1BA38B378;
  v24[7] = v22;

  *(v17 + 56) = v23;
  *(v17 + 64) = sub_1BA3785E8();
  *(v17 + 32) = v24;
  v26 = v34;
  sub_1BA4A1788();
  v27 = sub_1BA4A1748();
  v29 = v28;
  (*(v35 + 8))(v26, v36);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v31 = Array<A>.identifierToIndexDict()(v30);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v17;
  *(inited + 56) = v31;
  *(inited + 64) = v27;
  *(inited + 72) = v29;
  sub_1BA0E7F10(inited, 1);
  sub_1B9F1DA58(&v45);

  swift_setDeallocating();
  sub_1B9FF7224(inited + 32);
  return v15;
}

id sub_1BA38AFF8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_1BA0117AC();
  v4 = a3[5];
  v10[4] = a3[4];
  v10[5] = v4;
  v5 = a3[7];
  v10[6] = a3[6];
  v10[7] = v5;
  v6 = a3[1];
  v10[0] = *a3;
  v10[1] = v6;
  v7 = a3[3];
  v10[2] = a3[2];
  v10[3] = v7;
  sub_1B9F1D9A4(a3, &v9);
  return sub_1B9F293A8(v10);
}

uint64_t sub_1BA38B094(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
    swift_beginAccess();
    *(v3 + v4) = a1;
    sub_1BA38A7B4(sub_1BA38B5A8);
  }

  return result;
}

uint64_t SegmentedControlDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SegmentedControlDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SegmentedControlDataSource()
{
  result = qword_1EBBF1670;
  if (!qword_1EBBF1670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA38B5C0(uint64_t a1)
{
  sub_1BA38B61C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA38B61C()
{
  if (!qword_1EDC6C148)
  {
    sub_1B9F66B64();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6C148);
    }
  }
}

uint64_t sub_1BA38B674@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = sub_1BA4A1798();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69A3C08];
  sub_1B9F66454(0, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  sub_1BA38C18C(a1, &v26 - v9, &qword_1EDC6ADF8, v7);
  v11 = sub_1BA4A1C68();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BA38C1F8(v10, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
  }

  else
  {
    v13 = sub_1BA38C668();
    v15 = v14;
    (*(v12 + 8))(v10, v11);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v13 = sub_1BA4A1318();
  v15 = v16;

LABEL_7:
  v28 = type metadata accessor for SummarySharingIconWithNameCell();
  sub_1BA38CB34();
  v17 = sub_1BA4A6808();
  v19 = v18;
  v28 = 0xD00000000000001FLL;
  v29 = 0x80000001BA4EF020;
  sub_1BA4A1788();
  v20 = sub_1BA4A1748();
  v22 = v21;
  (*(v4 + 8))(v6, v27);
  MEMORY[0x1BFAF1350](v20, v22);

  v24 = v28;
  v25 = v29;
  *a2 = v17;
  a2[1] = v19;
  a2[2] = v24;
  a2[3] = v25;
  a2[4] = v13;
  a2[5] = v15;
  a2[6] = 0;
  a2[7] = 0;
  return result;
}

id sub_1BA38B994@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF1628(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1EBBE88E0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EBBF16A0;
    v12 = *algn_1EBBF16A8;

    sub_1BA10E1EC(v11);
  }

  else
  {
    if (qword_1EBBE88D8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EBBF1690;
    v12 = *algn_1EBBF1698;
  }

  v26 = type metadata accessor for SummarySharingIconWithNameCell();
  sub_1BA38CB34();
  v14 = sub_1BA4A6808();
  v16 = v15;
  v26 = 0xD00000000000001FLL;
  v27 = 0x80000001BA4EF020;
  sub_1BA4A1788();
  v17 = sub_1BA4A1748();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x1BFAF1350](v17, v19);

  v20 = v26;
  v21 = v27;
  *a3 = v14;
  a3[1] = v16;
  a3[2] = v20;
  a3[3] = v21;
  a3[4] = v13;
  a3[5] = v12;
  v22 = v25;
  a3[6] = 0;
  a3[7] = v22;

  return v22;
}

uint64_t sub_1BA38BC10()
{
  sub_1B9F66454(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13[-1] - v4;
  sub_1BA31D5B4();
  sub_1BA4A4158();
  v6 = sub_1BA4A4168();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = MEMORY[0x1BFAF1F10](v5);
  MEMORY[0x1BFAF1F00](v8);
  if ((*(v7 + 48))(v2, 1, v6))
  {
    v9 = MEMORY[0x1E69DC0D8];
    sub_1BA38C18C(v2, v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v5);
    sub_1BA38C1F8(v2, &qword_1EDC6B770, v9);
  }

  else
  {
    v10 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v2);
  }

  v13[3] = sub_1BA4A4428();
  v13[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v13);
  MEMORY[0x1BFAF2040]();
  return MEMORY[0x1BFAF1EF0](v13);
}

uint64_t sub_1BA38BE10()
{
  v1 = sub_1BA4A4428();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA38C18C(v0 + v5, v27, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v28)
  {
    return sub_1BA38C1F8(v27, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v23;
    v20 = v22[1];
    v7 = v25;
    v18 = v26;
    v21 = v0;
    MEMORY[0x1BFAF2040]();
    v8 = [objc_opt_self() secondaryLabelColor];
    v9 = sub_1BA4A4238();
    sub_1BA4A41F8();
    v9(v22, 0);

    sub_1BA4A43B8();
    sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
    v10 = sub_1BA4A4238();
    sub_1BA4A41E8();
    v10(v22, 0);
    if (v7)
    {
      v11 = v7;
      sub_1BA4A43D8();
      v12 = sub_1BA4A42D8();
      sub_1BA4A4268();
      v12(v22, 0);
      v13 = v18;
      v14 = [v18 color];
      v15 = sub_1BA4A42D8();
      sub_1BA4A42B8();
      v15(v22, 0);
    }

    else
    {
      sub_1BA4A43D8();
      v11 = 0;
      v13 = v18;
    }

    v23 = v1;
    v24 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
    MEMORY[0x1BFAF1EF0](v22);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1BA38C18C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F66454(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA38C1F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F66454(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id SummarySharingIconWithNameCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SummarySharingIconWithNameCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SummarySharingIconWithNameCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SummarySharingIconWithNameCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SummarySharingIconWithNameCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SummarySharingIconWithNameCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SummarySharingIconWithNameCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingIconWithNameCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SummarySharingIconWithNameItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SummarySharingIconWithNameItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SummarySharingIconWithNameItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SummarySharingIconWithNameItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *SummarySharingIconWithNameItem.category.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA38C668()
{
  v1 = v0;
  v2 = sub_1BA4A1C68();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69A3B68] || v7 == *MEMORY[0x1E69A3B90])
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

void *sub_1BA38C828()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA38C87C(uint64_t a1)
{
  v2 = sub_1BA38CB78();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA38C8C8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1680 = result;
  *algn_1EBBF1688 = v1;
  return result;
}

uint64_t sub_1BA38C984()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1690 = result;
  *algn_1EBBF1698 = v1;
  return result;
}

uint64_t sub_1BA38CA40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF16A0 = result;
  *algn_1EBBF16A8 = v1;
  return result;
}

unint64_t sub_1BA38CB34()
{
  result = qword_1EBBE9DF0;
  if (!qword_1EBBE9DF0)
  {
    type metadata accessor for SummarySharingIconWithNameCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DF0);
  }

  return result;
}

unint64_t sub_1BA38CB78()
{
  result = qword_1EBBF16B0;
  if (!qword_1EBBF16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF16B0);
  }

  return result;
}

uint64_t UIViewController.providedRestorationUserActivity.getter()
{
  sub_1B9F21ADC();
  sub_1BA38CC9C();
  v1 = v0;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v6, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1BA38CD00(v6);
    return 0;
  }
}

unint64_t sub_1BA38CC9C()
{
  result = qword_1EDC62278[0];
  if (!qword_1EDC62278[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC62278);
  }

  return result;
}

uint64_t sub_1BA38CD00(uint64_t a1)
{
  sub_1BA38CD5C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA38CD5C()
{
  if (!qword_1EDC62270)
  {
    sub_1BA38CC9C();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC62270);
    }
  }
}

char *DisclosureCellHeaderView.ViewModel.__allocating_init(displayType:detailText:)(void *a1, uint64_t a2)
{
  v53 = a2;
  v57 = a1;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v5;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = sub_1BA4A2F98();
  v18 = *(v17 - 8);
  v55 = v17;
  v56 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 objectType];
  v54 = v21;
  sub_1BA4A2FA8();
  v23 = [a1 displayCategory];
  v24 = [v23 systemImageName];

  v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v51 = v26;
  v52 = v25;

  v27 = [a1 localization];
  v28 = [v27 displayName];

  v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v47 = v30;
  v48 = v29;

  v31 = v16;
  v50 = v16;
  sub_1B9F42CEC(a2, v16, sub_1BA2C0448);
  (*(v18 + 16))(v11, v21, v17);
  v32 = *MEMORY[0x1E69A3250];
  v33 = sub_1BA4A2B98();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v11, v32, v33);
  v35 = *(v34 + 56);
  v35(v11, 0, 1, v33);
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  v36 = swift_allocObject();
  v37 = v49;
  sub_1B9F42CEC(v31, v49, sub_1BA2C0448);
  v38 = v8;
  sub_1B9F42CEC(v11, v8, sub_1B9F20584);
  *(v36 + 5) = 0;
  *(v36 + 4) = 0;
  v39 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v40 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v40 - 8) + 56))(&v36[v39], 1, 1, v40);
  v41 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v35(&v36[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v33);
  v42 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F640E8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v62 = 0;
  v63 = 0;
  v43 = v58;
  sub_1BA4A4EE8();
  (*(v59 + 32))(&v36[v42], v43, v60);
  *&v36[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v44 = v47;
  *(v36 + 2) = v48;
  *(v36 + 3) = v44;
  swift_beginAccess();
  v45 = v51;
  *(v36 + 4) = v52;
  *(v36 + 5) = v45;

  swift_beginAccess();
  sub_1BA2C047C(v37, &v36[v39], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v38, &v36[v41], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v61 = 0;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();

  sub_1B9F4C230(v53, sub_1BA2C0448);
  sub_1B9F4C230(v38, sub_1B9F20584);
  sub_1B9F4C230(v37, sub_1BA2C0448);
  sub_1B9F4C230(v11, sub_1B9F20584);
  sub_1B9F4C230(v50, sub_1BA2C0448);
  (*(v56 + 8))(v54, v55);
  return v36;
}

char *DisclosureCellHeaderView.ViewModel.__allocating_init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v30 = a6;
  v31 = a1;
  v34 = a5;
  v35 = a4;
  v32 = a2;
  v33 = a3;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v29 = *a7;
  sub_1B9F42CEC(a5, v20, sub_1BA2C0448);
  sub_1B9F42CEC(a6, v17, sub_1B9F20584);
  *(v21 + 5) = 0;
  *(v21 + 4) = 0;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v23 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v23 - 8) + 56))(&v21[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v25 = sub_1BA4A2B98();
  (*(*(v25 - 8) + 56))(&v21[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F640E8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v37 = 0;
  v38 = 0;
  sub_1BA4A4EE8();
  (*(v12 + 32))(&v21[v26], v14, v11);
  *&v21[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v27 = v32;
  *(v21 + 2) = v31;
  *(v21 + 3) = v27;
  swift_beginAccess();
  *(v21 + 4) = v33;
  *(v21 + 5) = v35;

  swift_beginAccess();
  sub_1BA2C047C(v20, &v21[v22], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v17, &v21[v24], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v36 = v29;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F4C230(v30, sub_1B9F20584);
  sub_1B9F4C230(v34, sub_1BA2C0448);
  sub_1B9F4C230(v17, sub_1B9F20584);
  sub_1B9F4C230(v20, sub_1BA2C0448);
  return v21;
}

char *DisclosureCellHeaderView.ViewModel.init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v33 = a6;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v30 = a1;
  v31 = a2;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a7;
  sub_1B9F42CEC(a5, v21, sub_1BA2C0448);
  sub_1B9F42CEC(a6, v18, sub_1B9F20584);
  *(v7 + 5) = 0;
  *(v7 + 4) = 0;
  v22 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v23 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v25 = sub_1BA4A2B98();
  (*(*(v25 - 8) + 56))(&v7[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F640E8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v38 = 0;
  v39 = 0;
  sub_1BA4A4EE8();
  (*(v13 + 32))(&v7[v26], v15, v12);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v27 = v31;
  *(v7 + 2) = v30;
  *(v7 + 3) = v27;
  swift_beginAccess();
  v28 = v35;
  *(v7 + 4) = v34;
  *(v7 + 5) = v28;

  swift_beginAccess();
  sub_1BA2C047C(v21, &v7[v22], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v18, &v7[v24], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v37 = v32;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F4C230(v33, sub_1B9F20584);
  sub_1B9F4C230(v36, sub_1BA2C0448);
  sub_1B9F4C230(v18, sub_1B9F20584);
  sub_1B9F4C230(v21, sub_1BA2C0448);
  return v7;
}

char *DisclosureCellHeaderView.ViewModel.init(from:)(uint64_t a1)
{
  sub_1B9F0A534(a1, v4);
  v2 = CellHeaderViewModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DisclosureCellHeaderView.ViewModel.deinit()
{

  sub_1B9F4C230(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, sub_1BA2C0448);
  sub_1B9F4C230(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, sub_1B9F20584);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F640E8(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t DisclosureCellHeaderView.ViewModel.__deallocating_deinit()
{

  sub_1B9F4C230(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, sub_1BA2C0448);
  sub_1B9F4C230(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, sub_1B9F20584);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F640E8(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t DisclosureCellHeaderView.init(viewModel:hideDisclosureInDetail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  DisclosureCellHeaderView.init(_:)(a2);
  v4 = a2 + *(type metadata accessor for DisclosureCellHeaderView(0) + 36);
  sub_1BA4A61A8();

  *v4 = v6;
  *(v4 + 8) = v7;
  return result;
}

uint64_t DisclosureCellHeaderView.init(_:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  *(a1 + 56) = swift_getKeyPath();
  *(a1 + 64) = 0;
  v2 = type metadata accessor for DisclosureCellHeaderView(0);
  v3 = *(v2 + 32);
  *(a1 + v3) = swift_getKeyPath();
  sub_1B9F82218(0);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + *(v2 + 36);
  sub_1BA4A61A8();
  *v4 = v9;
  *(v4 + 8) = v10;
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  sub_1B9F80C3C(qword_1EDC663C8, type metadata accessor for DisclosureCellHeaderView.ViewModel);

  v5 = sub_1BA4A5348();
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7;
  return result;
}

uint64_t DisclosureCellHeaderView.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DisclosureCellHeaderView.$viewModel.getter()
{
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  sub_1B9F80C3C(qword_1EDC663C8, type metadata accessor for DisclosureCellHeaderView.ViewModel);

  return sub_1BA4A5358();
}

id sub_1BA38E2F4()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *(v0 + 40);

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA232F2C(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

uint64_t sub_1BA38E460@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F82218(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DisclosureCellHeaderView(0);
  sub_1B9F42CEC(v1 + *(v10 + 32), v9, sub_1B9F82218);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BA4A53C8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BA4A6FB8();
    v13 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1BA38E664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = sub_1BA4A5778();
  LOBYTE(v30) = 0;
  sub_1BA38EA08(a1, a2, &v32);
  v25 = v38;
  v26 = v39;
  *v27 = v40[0];
  *&v27[9] = *(v40 + 9);
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v19 = v32;
  v20 = v33;
  v28[6] = v38;
  v28[7] = v39;
  v29[0] = v40[0];
  *(v29 + 9) = *(v40 + 9);
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[5] = v37;
  v28[0] = v32;
  v28[1] = v33;
  sub_1B9F42CEC(&v19, v43, sub_1B9F8132C);
  sub_1B9F4C230(v28, sub_1B9F8132C);
  *&v18[103] = v25;
  *&v18[119] = v26;
  *&v18[135] = *v27;
  *&v18[144] = *&v27[9];
  *&v18[39] = v21;
  *&v18[55] = v22;
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[7] = v19;
  *&v18[23] = v20;
  v6 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v7 = v32;
  v8 = sub_1B9F8474C();
  KeyPath = swift_getKeyPath();
  *&v30 = v17;
  *(&v30 + 1) = 0x4020000000000000;
  v31[0] = v6;
  *&v31[97] = *&v18[96];
  *&v31[113] = *&v18[112];
  *&v31[129] = *&v18[128];
  *&v31[145] = *&v18[144];
  *&v31[33] = *&v18[32];
  *&v31[49] = *&v18[48];
  *&v31[65] = *&v18[64];
  *&v31[81] = *&v18[80];
  *&v31[1] = *v18;
  *&v31[17] = *&v18[16];
  v40[0] = *&v31[112];
  v40[1] = *&v31[128];
  v41 = *&v31[144];
  LOBYTE(v42) = v18[159];
  v36 = *&v31[48];
  v37 = *&v31[64];
  v38 = *&v31[80];
  v39 = *&v31[96];
  v32 = v30;
  v33 = *v31;
  v34 = *&v31[16];
  v35 = *&v31[32];
  v10 = *&v31[128];
  *(a3 + 128) = *&v31[112];
  *(a3 + 144) = v10;
  *(a3 + 160) = v41;
  v11 = v42;
  v12 = v37;
  *(a3 + 64) = v36;
  *(a3 + 80) = v12;
  v13 = v39;
  *(a3 + 96) = v38;
  *(a3 + 112) = v13;
  v14 = v33;
  *a3 = v32;
  *(a3 + 16) = v14;
  v15 = v35;
  *(a3 + 32) = v34;
  *(a3 + 48) = v15;
  *(a3 + 176) = v11;
  *(a3 + 184) = v7;
  *(a3 + 200) = v8;
  *(a3 + 208) = KeyPath;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  sub_1B9F42CEC(&v30, v43, sub_1B9F811D0);

  sub_1B9F84D0C(KeyPath, 0, 0);

  sub_1B9F84D1C(KeyPath, 0, 0);
  v51 = *&v18[96];
  v52 = *&v18[112];
  v53 = *&v18[128];
  v54 = *&v18[144];
  v47 = *&v18[32];
  v48 = *&v18[48];
  v49 = *&v18[64];
  v50 = *&v18[80];
  v45 = *v18;
  v43[0] = v17;
  v43[1] = 0x4020000000000000;
  v44 = v6;
  v46 = *&v18[16];
  return sub_1B9F4C230(v43, sub_1B9F811D0);
}

uint64_t sub_1BA38EA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  swift_beginAccess();
  v7 = v5[2];
  v6 = v5[3];
  swift_beginAccess();
  v9 = v5[4];
  v8 = v5[5];
  KeyPath = swift_getKeyPath();
  v29 = 0;

  v11 = sub_1B9F84ADC();
  v12 = swift_getKeyPath();
  v13 = sub_1BA4A5BA8();
  sub_1BA4A5188();
  *&v30 = v7;
  *(&v30 + 1) = v6;
  *&v31 = v9;
  *(&v31 + 1) = v8;
  *v32 = a2;
  *&v32[8] = KeyPath;
  *&v32[16] = 0;
  v33 = 0;
  *&v40[9] = *&v32[9];
  v39 = v31;
  *v40 = *v32;
  v38 = v30;
  v28 = 1;
  LOBYTE(v34) = v11;
  *(&v34 + 1) = v12;
  *&v35 = 0;
  BYTE8(v35) = 0;
  LOBYTE(v36) = v13;
  *(&v36 + 1) = v14;
  *v37 = v15;
  *&v37[8] = v16;
  *&v37[16] = v17;
  v37[24] = 0;
  *&v27[7] = v34;
  *&v27[64] = *&v37[9];
  *&v27[55] = *v37;
  *&v27[39] = v36;
  *&v27[23] = v35;
  v18 = v30;
  v19 = v31;
  v20 = *&v40[16];
  *(a3 + 32) = *v32;
  *(a3 + 48) = v20;
  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  v21 = *&v27[16];
  *(a3 + 73) = *v27;
  v22 = *&v27[32];
  v23 = *&v27[48];
  *(a3 + 137) = *&v27[64];
  *(a3 + 121) = v23;
  *(a3 + 105) = v22;
  *(a3 + 89) = v21;
  v41[0] = v11;
  v42 = v12;
  v43 = 0;
  v44 = 0;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = 0;
  sub_1B9F84D2C(&v30, v25);
  sub_1B9F42CEC(&v34, v25, sub_1B9F813BC);
  sub_1B9F4C230(v41, sub_1B9F813BC);
  v25[0] = v7;
  v25[1] = v6;
  v25[2] = v9;
  v25[3] = v8;
  v25[4] = a2;
  v25[5] = KeyPath;
  v25[6] = 0;
  v26 = 0;
  return sub_1B9F84D64(v25);
}

uint64_t sub_1BA38EC24()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 56);
  v9 = *(v0 + 40);
  v5 = v9;
  if (v10 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v6 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v9);
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return v5;
}

uint64_t sub_1BA38ED90(uint64_t a1)
{
  result = sub_1B9F80C3C(qword_1EDC66200, type metadata accessor for DisclosureCellHeaderView);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA38EE18()
{
  result = qword_1EDC5ED40;
  if (!qword_1EDC5ED40)
  {
    sub_1BA38F12C(255, &qword_1EDC5ED38, sub_1B9F80FDC, sub_1B9F81298, MEMORY[0x1E697F960]);
    sub_1B9F80C3C(&qword_1EDC5EB30, sub_1B9F80FDC);
    sub_1B9F80C3C(&qword_1EDC5EA78, sub_1B9F81298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ED40);
  }

  return result;
}

uint64_t sub_1BA38EF3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BA38EF90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1BA38EFD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BA38F034(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BA38F094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1BA38F0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA38F12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA38F1B0()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  objc_msgSendSuper2(&v9, sel_didMoveToSuperview);
  v2 = [v0 viewController];
  v3 = &selRef_secondarySystemGroupedBackgroundColor;
  if (v2)
  {
    v4 = v2;
    UIViewController.resolvedPresentation.getter(&v8);

    if (((v8 - 4) & 0xF7) == 0)
    {
      v3 = &selRef_tertiarySystemBackgroundColor;
    }
  }

  v5 = [v1 selectedBackgroundView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() *v3];
    [v6 setBackgroundColor_];
  }
}

id CollectionViewListDisclosureCellNonSelectable.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollectionViewListDisclosureCellNonSelectable.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id CollectionViewListDisclosureCellNonSelectable.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CollectionViewListDisclosureCellNonSelectable.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CollectionViewListDisclosureCellNonSelectable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA38F5A0()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
    swift_beginAccess();
    result = sub_1BA04B338(v0 + v3, v4);
    if (v4[3])
    {
      sub_1BA33FB50(v4);

      return __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA38F658()
{
  v1 = [v0 setAccessibilityTraits_];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v1);
  (*((*v2 & *v0) + 0xD0))(v3);
}

void sub_1BA38F710(uint64_t a1, void *a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);

  v7 = v6(a1, a2);
  v8 = (*((*v5 & *v2) + 0x80))(v7);
  if (v8)
  {
    v9 = v8;
    v10.value._countAndFlagsBits = a1;
    v10.value._object = a2;
    v11 = v9;
    CellWithAccessoryView.updateAutomationIdentifiers(with:)(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA38F7F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA38F848(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(v4);
  return sub_1BA0BD670(a1);
}

uint64_t (*sub_1BA38F8E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA38F948;
}

uint64_t sub_1BA38F948(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xC0))(result);
  }

  return result;
}

uint64_t sub_1BA38F9AC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA38FA04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA38FAC4(uint64_t a1, void **a2)
{
  sub_1BA04B338(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xC0))(v5);
  return sub_1BA0BD670(v7);
}

void *sub_1BA38FB64()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA38FBB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA38FC68()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CellWithAccessoryViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  result = v4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [v2 addSubview_];

  result = v4();
  if (result)
  {
    v6 = result;
    v7 = [v0 view];
    [v6 hk:v7 alignConstraintsWithView:?];

    return (*((*v3 & *v0) + 0xC8))();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1BA38FE88()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1BA390038();
  v1 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  sub_1BA4A7FB8();
  v2 = MEMORY[0x1BFAF1350](0x6574496C6C654320, 0xEB00000000203A6DLL);
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(v2);
  if (result)
  {
    v4 = result;
    v5 = [result accessibilityLabel];

    if (v5)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    sub_1B9F2F388();
    v6 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v6);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA390038()
{
  result = qword_1EBBF16D0;
  if (!qword_1EBBF16D0)
  {
    type metadata accessor for CellWithAccessoryViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF16D0);
  }

  return result;
}

id CellWithAccessoryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CellWithAccessoryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_contentView] = 0;
  v6 = &v3[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_baseIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for CellWithAccessoryViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id CellWithAccessoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CellWithAccessoryViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_contentView] = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_baseIdentifier];
  v5 = type metadata accessor for CellWithAccessoryViewController();
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id CellWithAccessoryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CellWithAccessoryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA3904A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xA8))();
  return sub_1B9FCDD98;
}

void *sub_1BA3907CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0xD00000000000001ELL;
  v21 = 0x80000001BA503EA0;
  sub_1BA4A1788();
  sub_1BA390D20(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v8 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v8);

  (*(v5 + 8))(v7, v4);
  v9 = v21;
  *(v1 + 16) = v20;
  *(v1 + 24) = v9;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_1BA4A1318();
  *(v1 + 40) = v10;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  v20 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v1 + 72) = sub_1BA4A6808();
  *(v1 + 80) = v11;
  sub_1B9F25350();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0xD000000000000011;
  *(v12 + 56) = 0x80000001BA503F20;
  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v2[11] = v16;
  v2[12] = v18;
  v2[13] = a1;
  return v2;
}

uint64_t sub_1BA390AA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA390B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA390BB4(uint64_t a1, uint64_t a2)
{
  result = sub_1BA390D20(&qword_1EBBEFF08, a2, type metadata accessor for CharacteristicsDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

void sub_1BA390C54(void *a1)
{
  v3 = *(v1 + 104);
  UIViewController.resolvedHealthExperienceStore.getter(v8);
  v4 = objc_allocWithZone(type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController());
  v7 = sub_1BA06F854(v3, v8);

  [v7 setAccessType_];
  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }
}

uint64_t sub_1BA390D20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1BA390D68()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_1BA390E60()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView);
  }

  else
  {
    v4 = sub_1BA390EC0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA390EC0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = [v0 textContainer];
  [v2 setLineFragmentPadding_];

  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  [v0 setTextContainerInset_];
  [v0 _setInteractiveTextSelectionDisabled_];
  v7 = v0;
  [v7 setContentInset_];
  [v7 setScrollEnabled_];

  v8 = [v7 textContainer];
  [v8 setHeightTracksTextView_];

  return v7;
}

char *sub_1BA39105C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [objc_opt_self() secondaryLabelColor];
  [v10 setColor_];

  *&v4[v9] = v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel;
  *&v4[v12] = sub_1BA390D68();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView] = 0;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_action;
  v14 = type metadata accessor for CloudSyncAction(0);
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLeadingAnchor] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleTopOrCenterAnchor] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_detailTextViewTopAnchor] = 0;
  v45.receiver = v4;
  v45.super_class = type metadata accessor for ActivityIndicatorDetailView(0);
  v15 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView;
  v17 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView];
  v18 = v15;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel;
  [v18 addSubview_];
  v20 = sub_1BA390E60();
  [v18 addSubview_];

  v21 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView;
  v22 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView];
  [v22 setDelegate_];

  v44 = objc_opt_self();
  sub_1B9F109F8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B79E0;
  v24 = [*&v15[v16] leadingAnchor];
  v25 = [v18 &selRef__totalDistance + 1];

  v26 = [v24 constraintEqualToAnchor_];
  *(v23 + 32) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v23 + 40) = v29;
  v30 = [v18 trailingAnchor];

  v31 = [*&v18[v19] trailingAnchor];
  v32 = [v30 constraintGreaterThanOrEqualToAnchor_];

  *(v23 + 48) = v32;
  v33 = [*&v18[v21] leadingAnchor];
  v34 = [v18 leadingAnchor];

  v35 = [v33 &selRef:v34 numberWithInteger:? + 5];
  *(v23 + 56) = v35;
  v36 = [v18 trailingAnchor];

  v37 = [*&v18[v21] trailingAnchor];
  v38 = [v36 &selRef:v37 numberWithInteger:? + 5];

  *(v23 + 64) = v38;
  v39 = [v18 bottomAnchor];

  v40 = [*&v18[v21] bottomAnchor];
  v41 = [v39 &selRef:v40 numberWithInteger:? + 5];

  *(v23 + 72) = v41;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v42 = sub_1BA4A6AE8();

  [v44 activateConstraints_];

  return v18;
}

id sub_1BA3915A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  sub_1BA393478(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v61 - v15;
  v17 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v18 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel];
  if (v17)
  {
    v19 = sub_1BA4A6758();
    [v18 setText_];

    v20 = sub_1BA390E60();
    v21 = a3;
    v22 = a4;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel] setText_];
    v20 = sub_1BA390E60();
    v21 = a1;
    v22 = a2;
  }

  v23 = sub_1BA392040(v21, v22, a5);
  [v20 setAttributedText_];

  sub_1BA0613E4(a5, v16);
  v24 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_action;
  swift_beginAccess();
  sub_1BA05D8D4(v16, &v6[v24]);
  swift_endAccess();
  v25 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLeadingAnchor;
  v26 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLeadingAnchor];
  if (v26)
  {
    [v26 setActive_];
  }

  v27 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleTopOrCenterAnchor;
  v28 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleTopOrCenterAnchor];
  if (v28)
  {
    [v28 setActive_];
  }

  v29 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_detailTextViewTopAnchor;
  v30 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_detailTextViewTopAnchor];
  if (v30)
  {
    [v30 setActive_];
  }

  v31 = [v18 leadingAnchor];
  if (a6)
  {
    v32 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView];
    v33 = [v32 trailingAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:5.0];

    v35 = *&v6[v25];
    *&v6[v25] = v34;

    v36 = [v18 centerYAnchor];
    v37 = [v32 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    v39 = *&v6[v27];
    *&v6[v27] = v38;

    v40 = sub_1BA390E60();
    v41 = [v40 topAnchor];

    v42 = [v32 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor_];

    v44 = *&v6[v29];
    *&v6[v29] = v43;

    [v32 setHidden_];
    v45 = &selRef_startAnimating;
  }

  else
  {
    v46 = [v6 leadingAnchor];
    v47 = [v31 constraintEqualToAnchor_];

    v48 = *&v6[v25];
    *&v6[v25] = v47;

    v49 = [v18 topAnchor];
    v50 = [v6 topAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    v52 = *&v6[v27];
    *&v6[v27] = v51;

    v53 = sub_1BA390E60();
    v54 = [v53 topAnchor];

    v55 = [v18 bottomAnchor];
    v56 = [v54 constraintEqualToAnchor_];

    v57 = *&v6[v29];
    *&v6[v29] = v56;

    v32 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView];
    [v32 setHidden_];
    v45 = &selRef_stopAnimating;
  }

  [v32 *v45];
  v58 = *&v6[v27];
  if (v58)
  {
    [v58 setActive_];
  }

  v59 = *&v6[v25];
  if (v59)
  {
    [v59 setActive_];
  }

  result = *&v6[v29];
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

id sub_1BA391AB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityIndicatorDetailView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA391BB4()
{
  sub_1BA393478(319, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA391DFC()
{
  result = type metadata accessor for CloudSyncTarget(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BA391E78()
{
  result = sub_1BA4A15D8();
  if (v1 <= 0x3F)
  {
    result = sub_1B9F37BB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA391EEC()
{
  sub_1BA393478(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BA4A15D8();
  __swift_allocate_value_buffer(v3, qword_1EBBF16E0);
  v4 = __swift_project_value_buffer(v3, qword_1EBBF16E0);
  sub_1BA4A15C8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id sub_1BA392040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v86 = a1;
  v87 = a2;
  v77 = type metadata accessor for CloudSyncTarget(0);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1BA4A15D8();
  v80 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA393478(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v71 - v6;
  v88 = type metadata accessor for CloudSyncAction(0);
  v84 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v82 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA393478(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v81 = xmmword_1BA4B5460;
  *(inited + 16) = xmmword_1BA4B5460;
  v15 = *MEMORY[0x1E69DDD28];
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  }

  else
  {
    v76 = v10;
    sub_1BA4A3DD8();
    v21 = v15;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v73 = v23;
      v25 = v24;
      v72 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v91 = v74;
      *v25 = 136315906;
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v75 = v21;
      v28 = sub_1B9F0B82C(v26, v27, &v91);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v89 = 0;
      v90 = 1;
      sub_1BA393478(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v91);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      LODWORD(v89) = 0;
      type metadata accessor for SymbolicTraits(0);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v91);
      v21 = v75;

      *(v25 + 24) = v34;
      *(v25 + 32) = 2112;
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v25 + 34) = v35;
      v36 = v72;
      *v72 = v35;
      _os_log_impl(&dword_1B9F07000, v22, v73, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v25, 0x2Au);
      sub_1BA393524(v36, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      v37 = v74;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v76 + 8))(v12, v9);
    v19 = [v16 preferredFontDescriptorWithTextStyle_];
    v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  }

  v38 = v20;

  v39 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v38;
  v40 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v39;
  *(inited + 72) = v40;
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 secondaryLabelColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v43;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  sub_1BA0613E4(v85, v7);
  if ((*(v84 + 48))(v7, 1, v88) == 1)
  {
    sub_1BA061448(v7);
    v44 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v45 = sub_1BA4A6758();
    type metadata accessor for Key(0);
    sub_1BA3934DC(&qword_1EDC5E3D0, type metadata accessor for Key);
    v46 = sub_1BA4A6618();

    v47 = [v44 initWithString:v45 attributes:v46];
  }

  else
  {
    v48 = v82;
    sub_1BA3933B0(v7, v82);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA393478(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v49 = swift_allocObject();
    *(v49 + 16) = v81;
    v50 = MEMORY[0x1E69E6158];
    *(v49 + 56) = MEMORY[0x1E69E6158];
    v51 = sub_1B9F1BE20();
    v52 = v87;
    *(v49 + 32) = v86;
    *(v49 + 40) = v52;
    v53 = *v48;
    v54 = v48[1];
    *(v49 + 96) = v50;
    *(v49 + 104) = v51;
    *(v49 + 64) = v51;
    *(v49 + 72) = v53;
    *(v49 + 80) = v54;

    sub_1BA4A6768();

    v55 = sub_1BA4A6758();
    v56 = sub_1BA4A6758();
    v57 = [v55 rangeOfString_];
    v59 = v58;

    v60 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v61 = sub_1BA4A6758();

    type metadata accessor for Key(0);
    sub_1BA3934DC(&qword_1EDC5E3D0, type metadata accessor for Key);
    v62 = sub_1BA4A6618();

    v47 = [v60 initWithString:v61 attributes:v62];

    if (v57 != sub_1BA4A0E88())
    {
      v63 = *MEMORY[0x1E69DB670];
      v64 = v78;
      sub_1BA393414(v48 + *(v88 + 20), v78);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BA393524(v64, type metadata accessor for CloudSyncTarget);
        v65 = v80;
        v66 = v79;
        if (qword_1EBBE88E8 != -1)
        {
          swift_once();
        }

        v67 = v83;
        v68 = __swift_project_value_buffer(v83, qword_1EBBF16E0);
        (*(v65 + 16))(v66, v68, v67);
      }

      else
      {
        v65 = v80;
        v66 = v79;
        (*(v80 + 32))(v79, v64, v83);
      }

      v69 = sub_1BA4A1548();
      (*(v65 + 8))(v66, v83);
      [v47 addAttribute:v63 value:v69 range:{v57, v59}];
    }

    sub_1BA393524(v48, type metadata accessor for CloudSyncAction);
  }

  return v47;
}

void sub_1BA392BDC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setColor_];

  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel;
  *(v0 + v4) = sub_1BA390D68();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView) = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_action;
  v6 = type metadata accessor for CloudSyncAction(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLeadingAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleTopOrCenterAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_detailTextViewTopAnchor) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA392D40(uint64_t a1)
{
  v46 = a1;
  v2 = sub_1BA4A3EA8();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudSyncTarget(0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = sub_1BA4A15D8();
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  sub_1BA393478(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for CloudSyncAction(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_action;
  swift_beginAccess();
  sub_1BA0613E4(v1 + v21, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1BA061448(v16);
    v22 = v46;
    v23 = v47;
    v24 = v45;
LABEL_12:
    v29 = v42;
    sub_1BA4A3DD8();
    (*(v24 + 16))(v23, v22, v9);
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v24;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48 = v34;
      *v33 = 136446210;
      sub_1BA3934DC(&qword_1EBBF0B10, MEMORY[0x1E6968FB0]);
      v35 = sub_1BA4A82D8();
      v37 = v36;
      (*(v32 + 8))(v23, v9);
      v38 = sub_1B9F0B82C(v35, v37, &v48);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1B9F07000, v30, v31, "Unexpected URL received in text view delegate: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v23, v9);
    }

    (*(v43 + 8))(v29, v44);
    return 0;
  }

  sub_1BA3933B0(v16, v20);
  v25 = *(v17 + 20);
  sub_1BA393414(&v20[v25], v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BA393524(v8, type metadata accessor for CloudSyncTarget);
    v24 = v45;
    v22 = v46;
    if (qword_1EBBE88E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v9, qword_1EBBF16E0);
    (*(v24 + 16))(v13, v26, v9);
    v23 = v47;
  }

  else
  {
    v24 = v45;
    (*(v45 + 32))(v13, v8, v9);
    v22 = v46;
    v23 = v47;
  }

  v27 = sub_1BA4A1578();
  (*(v24 + 8))(v13, v9);
  if ((v27 & 1) == 0)
  {
    sub_1BA393524(v20, type metadata accessor for CloudSyncAction);
    goto LABEL_12;
  }

  v28 = v41;
  sub_1BA393414(&v20[v25], v41);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*v28)(v20);

    sub_1BA393524(v20, type metadata accessor for CloudSyncAction);
    return 0;
  }

  sub_1BA393524(v20, type metadata accessor for CloudSyncAction);
  sub_1BA393524(v28, type metadata accessor for CloudSyncTarget);
  return 1;
}

uint64_t sub_1BA3933B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA393414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA393478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA3934DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA393524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BridgePreferencesHeaderView.init(specifier:)(void *a1)
{
  v72.receiver = v1;
  v72.super_class = type metadata accessor for BridgePreferencesHeaderView();
  v3 = objc_msgSendSuper2(&v72, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setPreservesSuperviewLayoutMargins_];
  v66 = a1;
  if ([a1 propertyForKey_])
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70 = v68;
  v71 = v69;
  if (*(&v69 + 1))
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E370);
    if (swift_dynamicCast())
    {
      v4 = v67;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1B9F23224(&v70);
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setContentMode_];
  [v3 addSubview_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAdjustsFontForContentSizeCategory_];
  v65 = objc_opt_self();
  v7 = [v65 hk:*MEMORY[0x1E69DDD58] preferredFontForTextStyle:32770 symbolicTraits:?];
  [v6 setFont_];

  if ([v66 propertyForKey_])
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70 = v68;
  v71 = v69;
  v64 = v4;
  if (*(&v69 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = sub_1BA4A6758();

      goto LABEL_17;
    }
  }

  else
  {
    sub_1B9F23224(&v70);
  }

  v8 = 0;
LABEL_17:
  [v6 setText_];

  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  [v6 setTextColor_];

  [v6 setTextAlignment_];
  [v6 setNumberOfLines_];
  [v3 addSubview_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v62 = *MEMORY[0x1E69DDCF8];
  v12 = [v65 hk_preferredFontForTextStyle_];
  [v11 setFont_];

  if ([v66 propertyForKey_])
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70 = v68;
  v71 = v69;
  if (!*(&v69 + 1))
  {
    sub_1B9F23224(&v70);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v13 = sub_1BA4A6758();

LABEL_25:
  [v11 setText_];

  v14 = [v9 whiteColor];
  [v11 setTextColor_];

  [v11 setTextAlignment_];
  [v11 setNumberOfLines_];
  [v3 &selRef_centerXAnchor];
  v63 = objc_opt_self();
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B79D0;
  v16 = [v5 topAnchor];
  v17 = [v3 layoutMarginsGuide];
  v18 = [v17 topAnchor];

  v19 = [v65 hk:*MEMORY[0x1E69DDDB8] preferredFontForTextStyle:0x8000 symbolicTraits:?];
  [v19 _scaledValueForValue_];
  v21 = v20;

  v22 = [v16 constraintEqualToAnchor:v18 constant:v21];
  *(v15 + 32) = v22;
  v23 = [v5 centerXAnchor];
  v24 = [v3 &selRef__createTableFooterView + 1];
  v25 = [v24 centerXAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v15 + 40) = v26;
  v27 = [v5 widthAnchor];
  v28 = [v5 heightAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v15 + 48) = v29;
  v30 = [v5 widthAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v15 + 56) = v31;
  v32 = [v6 firstBaselineAnchor];
  v33 = [v5 bottomAnchor];

  v34 = [v32 constraintEqualToSystemSpacingBelowAnchor:v33 multiplier:0.72];
  *(v15 + 64) = v34;
  v35 = [v6 leadingAnchor];
  v36 = [v3 layoutMarginsGuide];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v15 + 72) = v38;
  v39 = [v6 trailingAnchor];
  v40 = [v3 layoutMarginsGuide];
  v41 = [v40 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v42 = [v39 constraintEqualToAnchor_];
  *(v15 + 80) = v42;
  v43 = [v11 firstBaselineAnchor];
  v44 = [v6 lastBaselineAnchor];

  v45 = [v65 hk:v62 preferredFontForTextStyle:?];
  [v45 _scaledValueForValue_];
  v47 = v46;

  v48 = [v43 constraintEqualToAnchor:v44 constant:v47];
  *(v15 + 88) = v48;
  v49 = [v11 leadingAnchor];
  v50 = [v3 layoutMarginsGuide];
  v51 = [v50 leadingAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  *(v15 + 96) = v52;
  v53 = [v11 trailingAnchor];
  v54 = [v3 layoutMarginsGuide];
  v55 = [v54 trailingAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  *(v15 + 104) = v56;
  v57 = [v3 bottomAnchor];

  v58 = [v11 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v15 + 112) = v59;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v60 = sub_1BA4A6AE8();

  [v63 activateConstraints_];

  return v3;
}

id BridgePreferencesHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BridgePreferencesHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgePreferencesHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double BridgePreferencesHeaderView.preferredHeight(forWidth:)(double a1)
{
  [v1 directionalLayoutMargins];
  v4 = a1 - v3;
  [v1 directionalLayoutMargins];
  v6 = v4 - v5;
  LODWORD(v7) = 1148846080;
  LODWORD(v5) = 1112014848;
  [v1 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v7, v5}];
  return v8;
}

uint64_t UICollectionViewCompositionalLayoutSectionProviding.layout(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v8 + 16))(*v9, v9[1], a2, v5);
  if (!result)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v16 = 91;
    v17 = 0xE100000000000000;
    v11 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v11);

    MEMORY[0x1BFAF1350](0xD00000000000002ALL, 0x80000001BA4EB020);
    (*(v4 + 16))(v7, v2, a2);
    v12 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v12);

    v13 = v16;
    v14 = v17;
    sub_1B9FF806C();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA3945E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v4 = a1;
  sub_1B9F57F34(a1, a2, a4);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  LOBYTE(v4) = (*(v6 + 16))(v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v4 & 1;
}

uint64_t DataSourceWithSectionItemLimit<>.layout(for:)(Swift::Int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(*v2 + 80);
  type metadata accessor for DataSourceWithSectionItemLimit();
  swift_unknownObjectRetain();
  v7 = SnapshotDataSource.numberOfItems(in:)(v4);
  v10[4] = sub_1B9F264D0();
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v7;
  v8 = (*(a2 + 8))(v10, v6, a2);
  swift_unknownObjectRelease();
  return v8;
}

id sub_1BA39498C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OrganDonationButtonCell();
  v65.receiver = v1;
  v65.super_class = v6;
  objc_msgSendSuper2(&v65, sel_awakeFromNib);
  v7 = objc_opt_self();
  v8 = [v7 secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v9 = &selRef_preferredContentSizeCategory;
  v10 = [v1 textLabel];
  if (v10)
  {
    v11 = v10;
    v12 = [v7 labelColor];
    [v11 setTextColor_];
  }

  v13 = [v1 textLabel];
  if (v13)
  {
    v14 = v13;
    v15 = *MEMORY[0x1E69DDCF8];
    v16 = objc_opt_self();
    v17 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
    }

    else
    {
      v61 = v16;
      sub_1BA4A3DD8();
      v20 = v15;
      v21 = sub_1BA4A3E88();
      v22 = sub_1BA4A6FB8();

      v60 = v22;
      v23 = v22;
      v24 = v21;
      if (os_log_type_enabled(v21, v23))
      {
        v25 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v64 = v58;
        *v25 = 136315906;
        v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v59 = v20;
        v28 = sub_1B9F0B82C(v26, v27, &v64);
        v57 = v3;
        v29 = v28;

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v62 = 0;
        v63 = 1;
        sub_1BA1508E8();
        v30 = sub_1BA4A6808();
        v32 = sub_1B9F0B82C(v30, v31, &v64);

        *(v25 + 14) = v32;
        *(v25 + 22) = 2080;
        LODWORD(v62) = 0;
        type metadata accessor for SymbolicTraits(0);
        v33 = sub_1BA4A6808();
        v35 = sub_1B9F0B82C(v33, v34, &v64);
        v20 = v59;

        *(v25 + 24) = v35;
        *(v25 + 32) = 2112;
        v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v25 + 34) = v36;
        v37 = v56;
        *v56 = v36;
        _os_log_impl(&dword_1B9F07000, v24, v60, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v25, 0x2Au);
        sub_1B9F44534(v37, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v37, -1, -1);
        v38 = v58;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v38, -1, -1);
        v39 = v25;
        v9 = &selRef_preferredContentSizeCategory;
        MEMORY[0x1BFAF43A0](v39, -1, -1);

        (*(v57 + 8))(v5, v2);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      v18 = [v61 preferredFontDescriptorWithTextStyle_];
      v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
    }

    v40 = v19;

    [v14 setFont_];
  }

  v41 = [v1 v9[226]];
  if (v41)
  {
    v42 = v41;
    [v41 setNumberOfLines_];
  }

  v43 = [v1 v9[226]];
  if (v43)
  {
    v44 = v43;
    [v43 setAdjustsFontForContentSizeCategory_];
  }

  v45 = [objc_opt_self() isRunningStoreDemoMode];
  v46 = [v1 v9[226]];
  v47 = v46;
  if (v45)
  {
    if (v46)
    {
      v48 = [v7 systemGrayColor];
      [v47 setTextColor_];
    }

    [v1 setUserInteractionEnabled_];
  }

  else
  {
    if (v46)
    {
      v49 = [v7 systemBlueColor];
      [v47 setTextColor_];
    }

    v50 = [v1 v9[226]];
    if (v50)
    {
      v51 = v50;
      v52 = [v7 systemBlueColor];
      v53 = [v52 colorWithAlphaComponent_];

      [v51 setHighlightedTextColor_];
    }
  }

  return [v1 setSelectionStyle_];
}

uint64_t sub_1BA39502C()
{
  if ([objc_opt_self() isRunningStoreDemoMode])
  {
    v1 = [v0 textLabel];
    if (v1)
    {
      v2 = v1;
      v3 = [objc_opt_self() systemGrayColor];
      [v2 setTextColor_];
    }

    [v0 setUserInteractionEnabled_];
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v4, v14);
  if (!v15)
  {
    sub_1B9F44534(v14, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    return sub_1B9F44534(&v11, &qword_1EBBF1778, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding, sub_1B9F0D950);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EBBF1780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_1B9F44534(&v11, &qword_1EBBF1778, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding, sub_1B9F0D950);
  }

  if (!*(&v12 + 1))
  {
    return sub_1B9F44534(&v11, &qword_1EBBF1778, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding, sub_1B9F0D950);
  }

  sub_1B9F1134C(&v11, v14);
  v5 = [v0 textLabel];
  if (v5)
  {
    v6 = v5;
    v7 = v15;
    v8 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v8 + 8))(v7, v8);
    v9 = sub_1BA4A6758();

    [v6 setText_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void sub_1BA3952AC(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, SEL *a6)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  sub_1BA4A6D78();
  v10 = a1;
  v11 = a4;
  v12 = [v10 textLabel];
  if (v12)
  {
    v13 = a5 & 1;
    v14 = v12;
    [v12 setHighlighted_];
  }

  v15 = sub_1BA4A6D68();

  v16.receiver = v10;
  v16.super_class = type metadata accessor for OrganDonationButtonCell();
  objc_msgSendSuper2(&v16, *a6, v15, v11);
}

id sub_1BA3953BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrganDonationButtonCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA395464@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA3954BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA39502C();
  return sub_1B9F44534(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t (*sub_1BA395554(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3955B8;
}

uint64_t sub_1BA3955B8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA39502C();
  }

  return result;
}

unint64_t sub_1BA3955EC()
{
  result = qword_1EBBF1788;
  if (!qword_1EBBF1788)
  {
    sub_1B9F0ADF8(255, &qword_1EBBECB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1788);
  }

  return result;
}

uint64_t ResearchStudySourcesDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_1BA395684(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0xD000000000000023;
  v21 = 0x80000001BA504210;
  sub_1BA4A1788();
  sub_1BA396138(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v8 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v8);

  (*(v5 + 8))(v7, v4);
  v9 = v21;
  *(v1 + 16) = v20;
  *(v1 + 24) = v9;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_1BA4A1318();
  *(v1 + 40) = v10;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  v20 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v1 + 80) = sub_1BA4A6808();
  *(v1 + 88) = v11;
  sub_1B9F25350();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0xD000000000000018;
  *(v12 + 56) = 0x80000001BA5042D0;
  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v2[12] = v16;
  v2[13] = v18;
  v2[9] = a1;
  return v2;
}

void sub_1BA395958(uint64_t a1, void *a2)
{
  v4 = [*(v2 + 72) viewControllerFactory];
  v5 = [v4 createResearchStudySourcesViewControllerUsingInsetStyling:1 restorationStudyBundleIdentifier:0];

  type metadata accessor for ProfileViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v11 = a2;
    v8 = [v7 navigationController];
    [v8 pushViewController:v5 animated:1];
  }

  else
  {
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (v9)
    {
      [a2 showAdaptively:v9 sender:a2];
    }

    else
    {
      v10 = [a2 navigationController];
      [v10 pushViewController:v5 animated:1];
    }
  }
}

void sub_1BA395AC0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [*(v4 + 72) viewControllerFactory];
  if (a3)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 createResearchStudySourcesViewControllerUsingInsetStyling:1 restorationStudyBundleIdentifier:v9];

  type metadata accessor for ProfileViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v16 = a1;
    v13 = [v12 navigationController];
    [v13 pushViewController:v10 animated:a4 & 1];
  }

  else
  {
    v14 = swift_dynamicCastObjCProtocolConditional();
    if (v14)
    {
      [a1 showAdaptively:v14 sender:a1];
    }

    else
    {
      v15 = [a1 navigationController];
      [v15 pushViewController:v10 animated:a4 & 1];
    }
  }
}

uint64_t ResearchStudySourcesDataSourceItem.deinit()
{

  return v0;
}

uint64_t ResearchStudySourcesDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA395DAC(uint64_t a1, uint64_t a2)
{
  result = sub_1BA396138(&qword_1EDC61AC0, a2, type metadata accessor for ResearchStudySourcesDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA395E04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA396138(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s18HealthExperienceUI31SearchSectionDataSourceProviderC38makeCategoriesFetchedResultsController7context14sourceProfilesSo09NSFetchedlM0Cy0A8Platform8FeedItemCGSo22NSManagedObjectContextC_SayAI0G7ProfileOGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  sub_1B9F109F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B8B60;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithKey:v8 ascending:1];

  *(v6 + 32) = v9;
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v11 = sub_1BA4A6758();
  v12 = [v10 initWithKey:v11 ascending:0];

  *(v6 + 40) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithKey:v14 ascending:1 selector:sel_localizedStandardCompare_];

  *(v6 + 48) = v15;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v16 = sub_1BA4A1C68();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5480;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x1E69A3BE8], v16);
  v20 = sub_1BA4A0FA8();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = MEMORY[0x1BFAED020](v19, 0, v5, a2);

  sub_1B9F1C1B0(v5);
  v22 = sub_1BA4A7558();

  return v22;
}

uint64_t CellSwipeConfigurationProviding<>.leadingSwipeActionsConfigurationProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v7, a1, a3);
  if (v7[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBE9900);
    if (swift_dynamicCast())
    {
      v3 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v4 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(&v8);
        return v5;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_1B9F43A50(&v8, &qword_1EBBE98F8, &qword_1EBBE9900);
  return 0;
}

uint64_t CellSwipeConfigurationProviding<>.trailingSwipeActionsConfigurationProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v7, a1, a3);
  if (v7[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBE9900);
    if (swift_dynamicCast())
    {
      v3 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v4 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        v5 = (*(v4 + 16))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(&v8);
        return v5;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_1B9F43A50(&v8, &qword_1EBBE98F8, &qword_1EBBE9900);
  return 0;
}

id sub_1BA3967F8(void *a1)
{
  v1 = a1;
  v2 = UIViewController.resolvedHealthToolbox.getter();

  return v2;
}

id UIViewController.resolvedHealthToolbox.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA396A9C();
  if (!result)
  {
    sub_1BA4A3DD8();
    v7 = v0;
    v8 = sub_1BA4A3E88();
    v9 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      v21[1] = ObjectType;
      *v10 = 136446466;
      swift_getMetatypeMetadata();
      v12 = sub_1BA4A6808();
      v14 = sub_1B9F0B82C(v12, v13, v21);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = UIViewController.resolutionDebugDescription.getter();
      v17 = sub_1B9F0B82C(v15, v16, v21);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1B9F07000, v8, v9, "[%{public}s]: No HealthToolbox could be resolved in hierarchy: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v11, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v18 = objc_opt_self();
    v19 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v20 = [v18 sharedInstanceForHealthStore_];

    return v20;
  }

  return result;
}

id sub_1BA396A9C()
{
  v1 = sub_1B9F21ADC();
  v22 = v1;
  v21[0] = v0;
  sub_1B9F0AD9C(v21, v17);
  sub_1BA396D64();
  v2 = v0;
  if (swift_dynamicCast())
  {
    v3 = *(&v19 + 1);
    v4 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v5;
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1BA396DC8(&v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v6 = sub_1BA096838();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_5:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFAF2860](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v7 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v8 = sub_1BA4A7CC8();
          if (!v8)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      v22 = v1;
      v21[0] = v10;
      sub_1B9F0AD9C(v21, v17);
      if (swift_dynamicCast())
      {
        v13 = *(&v19 + 1);
        v14 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        v5 = (*(v14 + 8))(v13, v14);
        __swift_destroy_boxed_opaque_existential_1(&v18);
        __swift_destroy_boxed_opaque_existential_1(v21);

        return v5;
      }

      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      sub_1BA396DC8(&v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      ++v9;
    }

    while (v11 != v8);
  }

  v12 = [v2 parentViewController];
  if (!v12)
  {
    v12 = [v2 presentingViewController];
    if (!v12)
    {
      return 0;
    }
  }

  v15 = v12;
  v5 = [v12 resolvedHealthToolbox];

  return v5;
}

unint64_t sub_1BA396D64()
{
  result = qword_1EDC6DE78;
  if (!qword_1EDC6DE78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6DE78);
  }

  return result;
}

uint64_t sub_1BA396DC8(uint64_t a1)
{
  sub_1BA396E24();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA396E24()
{
  if (!qword_1EDC6DE70)
  {
    sub_1BA396D64();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6DE70);
    }
  }
}

uint64_t DataTypeDetailFeatureStatusDataSource.init(healthStore:pinnedContentManager:managedObjectContext:hkType:container:)(void *a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  v6 = v5;
  v29 = *v5;
  v11 = *a5;
  v12 = sub_1BA39B568(a3, a4);
  sub_1B9F0A534(a2, v32);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  sub_1B9F1134C(v32, v13 + 24);
  *(v13 + 64) = v11;
  *(v13 + 72) = v29;
  sub_1BA1F2BF8(0);
  swift_allocObject();
  v14 = v12;
  v15 = a1;
  v16 = sub_1B9F17A68(v14, sub_1BA39B9A8, v13, 0);

  v17 = OBJC_IVAR____TtC18HealthExperienceUI37DataTypeDetailFeatureStatusDataSource_mainDataSource;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI37DataTypeDetailFeatureStatusDataSource_mainDataSource) = v16;
  v18 = sub_1BA39B568(a3, a4);
  sub_1B9F0A534(a2, v32);
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  sub_1B9F1134C(v32, v19 + 24);
  *(v19 + 64) = v11;
  *(v19 + 72) = v29;
  swift_allocObject();
  v20 = v15;
  v21 = sub_1B9F17A68(v18, sub_1BA39B9BC, v19, 0);
  sub_1BA39B9D0(0);
  swift_allocObject();
  v22 = sub_1BA048508(v21, 1);

  sub_1BA39BA0C(0, &qword_1EDC69048, sub_1BA39B9D0, &protocol witness table for DataSourceWithSectionItemLimit<A>, type metadata accessor for CellRegistering);
  v23 = swift_allocObject();
  v23[4] = v22;
  v23[5] = sub_1BA39971C;
  v23[6] = 0;
  v24 = v22[5];
  v25 = v22[6];
  v23[2] = v24;
  v23[3] = v25;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI37DataTypeDetailFeatureStatusDataSource_footerDataSource) = v23;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5460;
  *(v26 + 32) = *(v6 + v17);
  *(v26 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v26 + 48) = v23;
  *(v26 + 56) = &protocol witness table for CellRegistering<A>;

  v27 = CompoundSectionedDataSource.init(_:)(v26);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v27;
}

uint64_t sub_1BA397214(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v23 = a4;
  v8 = type metadata accessor for ContentConfigurationItem();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39BAF8(0, &qword_1EDC6AD18, MEMORY[0x1E69A3398], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1BA4A30B8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3975A0(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BA39BE98(v13, &qword_1EDC6AD18, MEMORY[0x1E69A3398], MEMORY[0x1E69E6720], sub_1BA39BAF8);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_1B9F0A534(a1, v25);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v18 = v24;
      v25[0] = a5 & 1;
      sub_1BA397CD0(v17, v24, a3, v23, v25, v10);
      sub_1B9F1B4AC(0, &qword_1EDC5DCA0, &qword_1EDC6AD50);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BA4B5480;
      *(v19 + 56) = v8;
      *(v19 + 64) = sub_1B9F25508(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
      sub_1BA39BDE8(v10, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);

      (*(v15 + 8))(v17, v14);
      return v19;
    }

    (*(v15 + 8))(v17, v14);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BA3975A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46[-v9];
  sub_1B9F0A534(a1, v51);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v11 = v49[0];
    v12 = [v49[0] userData];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1BA4A1608();
      v16 = v15;

      sub_1B9F206D4(v14, v16);
      sub_1BA4A3088();
      v44 = sub_1BA4A30B8();
      (*(*(v44 - 8) + 56))(v48, 0, 1, v44);
      sub_1B9F2BB4C(v14, v16);

      return;
    }

    sub_1BA4A3E28();
    v31 = v11;
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51[0] = v47;
      *v34 = 136446466;
      v35 = sub_1BA4A85D8();
      v37 = sub_1B9F0B82C(v35, v36, v51);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v38 = [v31 uniqueIdentifier];
      v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v41 = v40;

      v42 = sub_1B9F0B82C(v39, v41, v51);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_1B9F07000, v32, v33, "%{public}s Invalid Model. Could not access feed item user data: %{public}s", v34, 0x16u);
      v43 = v47;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
    }

    else
    {
    }

    v29 = *(v4 + 8);
    v30 = v10;
    goto LABEL_11;
  }

  sub_1BA4A3E28();
  sub_1B9F0A534(a1, v51);
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FB8();
  if (!os_log_type_enabled(v17, v18))
  {

    __swift_destroy_boxed_opaque_existential_1(v51);
    v29 = *(v4 + 8);
    v30 = v7;
LABEL_11:
    v29(v30, v3);
    goto LABEL_12;
  }

  v19 = swift_slowAlloc();
  v20 = v3;
  v21 = swift_slowAlloc();
  v50 = v21;
  *v19 = 136446466;
  v22 = sub_1BA4A85D8();
  v24 = sub_1B9F0B82C(v22, v23, &v50);

  *(v19 + 4) = v24;
  *(v19 + 12) = 2082;
  sub_1B9F0A534(v51, v49);
  v25 = sub_1BA4A6808();
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(v51);
  v28 = sub_1B9F0B82C(v25, v27, &v50);

  *(v19 + 14) = v28;
  _os_log_impl(&dword_1B9F07000, v17, v18, "%{public}s: Invalid Model. Expected feed item, received: %{public}s", v19, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1BFAF43A0](v21, -1, -1);
  MEMORY[0x1BFAF43A0](v19, -1, -1);

  (*(v4 + 8))(v7, v20);
LABEL_12:
  v45 = sub_1BA4A30B8();
  (*(*(v45 - 8) + 56))(v48, 1, 1, v45);
}

id sub_1BA397CD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v133 = a4;
  v134 = a3;
  v147 = a2;
  v142 = a6;
  v8 = MEMORY[0x1E69E6720];
  sub_1BA39BAF8(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v135 = &v119 - v10;
  v145 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v119 - v13;
  sub_1BA39BAF8(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v127 = &v119 - v15;
  v129 = sub_1BA4A3FB8();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v125 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1BA4A3F18();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1BA4A4428();
  v151 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v19 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A2A88();
  v21 = *(v20 - 8);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v119 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v152 = &v119 - v27;
  *&v153 = 0;
  v141 = *a5;
  *(&v153 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v153 = 0xD00000000000001DLL;
  *(&v153 + 1) = 0x80000001BA504460;
  v28 = sub_1BA4A30A8();
  MEMORY[0x1BFAF1350](v28);

  v139 = *(&v153 + 1);
  v140 = v153;
  sub_1BA4A3018();
  sub_1BA4A4418();
  v121 = a1;
  sub_1BA4A30A8();
  sub_1BA4A43B8();
  v29 = objc_opt_self();
  v30 = [v29 labelColor];
  v31 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v31(&v153, 0);
  v120 = v29;
  v32 = [v29 secondaryLabelColor];
  v33 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v33(&v153, 0);
  v148 = v19;
  sub_1BA4A4188();
  sub_1BA39BAF8(0, &qword_1EBBF1798, MEMORY[0x1E69A31E0], MEMORY[0x1E69E6F90]);
  v34 = *(v21 + 72);
  v35 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4B9FD0;
  v37 = v36 + v35;
  LODWORD(v33) = *MEMORY[0x1E69A31D0];
  v38 = *(v22 + 104);
  v38((v36 + v35), *MEMORY[0x1E69A31D0], v20);
  v39 = *MEMORY[0x1E69A31D8];
  v38((v37 + v34), *MEMORY[0x1E69A31D8], v20);
  v40 = *MEMORY[0x1E69A31B8];
  v131 = v22 + 104;
  v130 = v38;
  v38((v37 + 2 * v34), v40, v20);
  v41 = sub_1B9FF75CC(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = v152;
  v138 = v41;
  v43 = sub_1BA3D33B0(v152, v41);
  v44 = v22;
  v45 = *(v22 + 16);
  v46 = v143;
  v45(v143, v42, v20);
  v149 = v44;
  v150 = v20;
  v47 = (*(v44 + 88))(v46, v20);
  v132 = v33;
  if (v47 == v33)
  {
    v48 = v43;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v49 = v148;
    sub_1BA4A41A8();
    sub_1BA39BAF8(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1BA4B5480;
    v51 = v124;
    v52 = v123;
    v53 = v126;
    (*(v124 + 104))(v123, *MEMORY[0x1E69DBF28], v126);
    v54 = sub_1BA4A3F48();
    (*(*(v54 - 8) + 56))(v127, 1, 1, v54);
    v55 = v125;
    sub_1BA4A3FA8();
    v143 = v50;
    sub_1BA4A3F78();
    (*(v128 + 8))(v55, v129);
    (*(v51 + 8))(v52, v53);
    v56 = v147;
    v58 = v144;
    v57 = v145;
    if (v48)
    {
      goto LABEL_16;
    }

LABEL_12:

    v62 = 0;
    v63 = v146;
    goto LABEL_37;
  }

  if (v47 == v39)
  {
    sub_1BA4A3028();
    v49 = v148;
    sub_1BA4A41A8();
    v59 = [v120 systemBlueColor];
    v60 = v43;
    v61 = sub_1BA4A4318();
    sub_1BA4A41F8();
    (v61)(&v153, 0);
    LOBYTE(v61) = v60;
    v143 = MEMORY[0x1E69E7CC0];
    v56 = v147;
    v58 = v144;
    v57 = v145;
    if ((v61 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v56 = v147;
    v58 = v144;
    v57 = v145;
    if (v47 == *MEMORY[0x1E69A31C8] || v47 == *MEMORY[0x1E69A31C0])
    {
      v49 = v148;
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      sub_1BA4A41A8();
      v143 = MEMORY[0x1E69E7CC0];
      if (v43)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    (*(v149 + 8))(v46, v150);
    v143 = MEMORY[0x1E69E7CC0];
    v49 = v148;
    if ((v43 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_16:
  sub_1B9F0A534(v133, &v153);
  *v58 = xmmword_1BA4B7EA0;
  *(v58 + 16) = xmmword_1BA4B7EA0;
  v64 = v57[11];
  v65 = sub_1BA4A22F8();
  (*(*(v65 - 8) + 56))(v58 + v64, 1, 1, v65);
  v66 = (v58 + v57[13]);
  *v66 = 0;
  v66[1] = 0;
  v67 = [v56 userData];
  if (v67)
  {
    v68 = v67;
    v69 = sub_1BA4A1608();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*v58, *(v58 + 8));
  *v58 = v69;
  *(v58 + 8) = v71;
  v72 = [v56 actionHandlerUserData];
  if (v72)
  {
    v73 = v72;
    v74 = sub_1BA4A1608();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*(v58 + 16), *(v58 + 24));
  *(v58 + 16) = v74;
  *(v58 + 24) = v76;
  v77 = v134;
  *(v58 + 32) = v134;
  sub_1B9F0A534(&v153, v58 + 48);
  v78 = v77;
  v79 = [v56 uniqueIdentifier];
  v80 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v82 = v81;

  *(v58 + 88) = v80;
  *(v58 + 96) = v82;
  sub_1BA4A26B8();
  v83 = v135;
  sub_1BA4A2788();
  sub_1B9F6ACA0(v83, v58 + v64);
  *(v58 + 40) = 4;
  v84 = [v56 baseAutomationIdentifier];
  if (v84)
  {
    v85 = v84;
    v86 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v88 = v87;
  }

  else
  {
    v86 = 0;
    v88 = 0;
  }

  v89 = v137;
  v90 = (v58 + v57[12]);
  *v90 = v86;
  v90[1] = v88;
  if (FeedItem.pluginInfo.getter())
  {
    v91 = sub_1BA4A3AD8();

    v92 = [v56 actionHandlerClassName];
    if (v92)
    {
      v93 = v92;
      v94 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v96 = v95;

      __swift_destroy_boxed_opaque_existential_1(&v153);
      v97 = swift_allocObject();
      *(v97 + 2) = v91;
      *(v97 + 3) = v94;
      *(v97 + 4) = v96;
      v89 = v137;
      *v66 = sub_1BA39BEF8;
      v66[1] = v97;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v153);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v153);
  }

  sub_1BA39BDE8(v58, v89, type metadata accessor for BasicFeedItemViewControllerContext);
  v98 = v136;
  v99 = v150;
  v130(v136, v132, v150);
  sub_1B9F25508(&qword_1EBBE9D90, MEMORY[0x1E69A31E0]);
  v100 = sub_1BA4A6728();
  (*(v149 + 8))(v98, v99);
  v49 = v148;
  if (v100)
  {
    result = [objc_opt_self() sharedBehavior];
    v63 = v146;
    if (!result)
    {
      __break(1u);
      return result;
    }

    v102 = result;

    v103 = [v102 isiPad];

    if (v103)
    {
      v104 = 1;
    }

    else
    {
      v104 = 2;
    }
  }

  else
  {

    v104 = 1;
    v63 = v146;
  }

  v105 = swift_allocObject();
  *(v105 + 16) = v122;
  v154 = v57;
  v155 = &protocol witness table for BasicFeedItemViewControllerContext;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v153);
  sub_1BA39BDE8(v89, boxed_opaque_existential_1, type metadata accessor for BasicFeedItemViewControllerContext);
  type metadata accessor for PlatformActionCellSelectionHandler();
  v62 = swift_allocObject();
  *(v62 + 80) = 0;
  sub_1B9F1134C(&v153, v62 + 16);
  *(v62 + 56) = sub_1BA39BE50;
  *(v62 + 64) = v105;
  *(v62 + 72) = v104;
LABEL_37:
  v154 = v63;
  v155 = MEMORY[0x1E69DC110];
  v107 = __swift_allocate_boxed_opaque_existential_1(&v153);
  (*(v151 + 16))(v107, v49, v63);
  if (v62)
  {
    v108 = type metadata accessor for PlatformActionCellSelectionHandler();
    v109 = &off_1F381BC78;
  }

  else
  {
    v108 = 0;
    v109 = 0;
  }

  v110 = type metadata accessor for ContentConfigurationItem();
  v111 = v110[10];
  v112 = sub_1BA4A4168();
  v113 = v142;
  (*(*(v112 - 8) + 56))(v142 + v111, 1, 1, v112);

  v114 = sub_1BA39BB5C(v56);
  v116 = v115;

  (*(v151 + 8))(v49, v63);
  (*(v149 + 8))(v152, v150);
  *(v113 + v110[12]) = 0;
  *(v113 + v110[13]) = 0;
  v117 = v139;
  *v113 = v140;
  *(v113 + 8) = v117;
  result = sub_1B9F1134C(&v153, v113 + 72);
  *(v113 + 112) = v141;
  *(v113 + 120) = v143;
  *(v113 + 16) = v62;
  *(v113 + 24) = 0;
  *(v113 + 32) = 0;
  *(v113 + 40) = v108;
  *(v113 + 48) = v109;
  *(v113 + 56) = v114;
  *(v113 + 64) = v116;
  v118 = (v113 + v110[11]);
  *v118 = 0;
  v118[1] = 0;
  return result;
}

void *sub_1BA398D28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  sub_1BA39BAF8(0, &qword_1EDC6AD18, MEMORY[0x1E69A3398], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_1BA4A30B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3975A0(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BA39BE98(v11, &qword_1EDC6AD18, MEMORY[0x1E69A3398], MEMORY[0x1E69E6720], sub_1BA39BAF8);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_1B9F0A534(a1, v59);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v13 + 8))(v15, v12);
    return MEMORY[0x1E69E7CC0];
  }

  v16 = v58;
  LOBYTE(v45) = a5 & 1;
  sub_1BA39929C(v15, v58, a3, a4, &v45, &v49);
  v17 = v50;
  if (v50)
  {
    v18 = v49;
    v19 = sub_1BA0712A8();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v17;
    v21 = v56;
    *(v20 + 96) = v55;
    *(v20 + 112) = v21;
    *(v20 + 128) = v57;
    v22 = v52;
    *(v20 + 32) = v51;
    *(v20 + 48) = v22;
    v23 = v54;
    *(v20 + 64) = v53;
    *(v20 + 80) = v23;
    v24 = &type metadata for TextViewItem;
  }

  else
  {
    v20 = 0;
    v24 = 0;
    v19 = 0;
    v48[1] = 0;
    v48[2] = 0;
  }

  v48[0] = v20;
  v48[3] = v24;
  v48[4] = v19;
  sub_1BA39BD0C(&v49, &v45, &unk_1EBBF1790, &type metadata for TextViewItem, MEMORY[0x1E69E6720], sub_1B9F232F8);
  sub_1BA39BD80(v48, &v45, sub_1B9FCD694);
  v40[0] = v45;
  v40[1] = v46;
  v41 = v47;
  if (*(&v46 + 1))
  {
    sub_1B9F1134C(v40, v42);
    v26 = MEMORY[0x1E69E7CC0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v26;
    *&v40[0] = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1B9F281E8(0, v26[2] + 1, 1, v26);
      *&v40[0] = v28;
    }

    v30 = v28[2];
    v29 = v28[3];
    v38 = v16;
    if (v30 >= v29 >> 1)
    {
      v39 = sub_1B9F281E8((v29 > 1), v30 + 1, 1, v28);
      *&v40[0] = v39;
    }

    else
    {
      v39 = v28;
    }

    v31 = v43;
    v32 = v44;
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v34 = MEMORY[0x1EEE9AC00](v33);
    v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v36, v34);
    sub_1B9F1C4F4(v30, v36, v40, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v16 = v38;
  }

  else
  {
    sub_1B9F5AD44(v40, sub_1B9FCD694);
    v39 = MEMORY[0x1E69E7CC0];
  }

  sub_1B9F5AD44(v48, sub_1B9FCD694);
  sub_1BA39BE98(&v49, &unk_1EBBF1790, &type metadata for TextViewItem, MEMORY[0x1E69E6720], sub_1B9F232F8);
  (*(v13 + 8))(v15, v12);
  return v39;
}

uint64_t sub_1BA39929C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a4;
  v46 = a3;
  v51 = a2;
  v9 = sub_1BA4A1798();
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BA4A30B8();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A2A88();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a5;
  result = sub_1BA4A3038();
  if (v19)
  {
    v42 = result;
    v43 = v19;
    sub_1BA4A3018();
    v20 = (*(v15 + 88))(v17, v14);
    if (v20 == *MEMORY[0x1E69A31C8] || v20 == *MEMORY[0x1E69A31C0])
    {
      *&v53[0] = sub_1BA39BB5C(v51);
      *(&v53[0] + 1) = v22;
      MEMORY[0x1BFAF1350](0x7265746F6F462ELL, 0xE700000000000000);
      v40 = *(&v53[0] + 1);
      v41 = *&v53[0];
      (*(v11 + 16))(&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v50);
      sub_1B9F0A534(v44, v53);
      v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
      v44 = v9;
      v28 = swift_allocObject();
      (*(v11 + 32))(v28 + v23, v13, v50);
      v30 = v45;
      v29 = v46;
      *(v28 + v24) = v45;
      *(v28 + v25) = v29;
      sub_1B9F1134C(v53, v28 + v26);
      v31 = v51;
      *(v28 + v27) = v51;
      *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
      strcpy(v52, "TextViewItem_");
      HIWORD(v52[1]) = -4864;
      v32 = v29;
      v33 = v31;

      v34 = v48;
      sub_1BA4A1788();
      sub_1B9F25508(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
      v35 = v44;
      v36 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v36);

      (*(v49 + 8))(v34, v35);

      v37 = v52[1];
      *a6 = v52[0];
      *(a6 + 8) = v37;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      *(a6 + 40) = 0;
      *(a6 + 48) = 0;
      *(a6 + 32) = -1;
      *(a6 + 56) = -1;
      v38 = v43;
      *(a6 + 64) = v42;
      *(a6 + 72) = v38;
      *(a6 + 80) = sub_1BA39BC30;
      *(a6 + 88) = v28;
      *(a6 + 96) = v47;
      v39 = v40;
      *(a6 + 104) = v41;
      *(a6 + 112) = v39;
    }

    else
    {

      *(a6 + 112) = 0;
      *(a6 + 80) = 0u;
      *(a6 + 96) = 0u;
      *(a6 + 48) = 0u;
      *(a6 + 64) = 0u;
      *(a6 + 16) = 0u;
      *(a6 + 32) = 0u;
      *a6 = 0u;
      return (*(v15 + 8))(v17, v14);
    }
  }

  else
  {
    *(a6 + 112) = 0;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
  }

  return result;
}

void *sub_1BA399740(uint64_t *a1)
{
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  if (qword_1EDC6CB88 != -1)
  {
    v21 = v9;
    swift_once();
    v9 = v21;
  }

  v14 = __swift_project_value_buffer(v9, qword_1EDC6CB90);
  sub_1BA39BD80(v14, v11, type metadata accessor for ListLayoutConfiguration);
  if (!v13)
  {
    v15 = *(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI37DataTypeDetailFeatureStatusDataSource_footerDataSource) + 32);
    v16 = qword_1EDC84B68;
    swift_beginAccess();
    (*(v5 + 16))(v7, v15 + v16, v4);
    v17 = sub_1BA4A4538();
    (*(v5 + 8))(v7, v4);
    v18 = *(v17 + 16);

    if (v18)
    {
      *(v11 + 8) = 0;
    }
  }

  v19 = ListLayoutConfiguration.layout(for:)(v12);
  sub_1B9F5AD44(v11, type metadata accessor for ListLayoutConfiguration);
  return v19;
}

void sub_1BA399978(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6 && a1)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    v25 = a1;
    v9(ObjectType, v7);
    v10 = v25;
  }

  else
  {
    sub_1BA4A3E28();
    v11 = a1;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136315394;
      v15 = sub_1BA4A85D8();
      v17 = sub_1B9F0B82C(v15, v16, &v26);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = v11;
      v19 = [v18 description];
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = v21;

      v23 = sub_1B9F0B82C(v20, v22, &v26);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1B9F07000, v12, v13, "%s Unexpected action handler! %s", v14, 0x16u);
      v24 = v25;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1BA399C30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v49 = a2;
  sub_1BA39BAF8(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  v15 = sub_1BA4A3EA8();
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  if ((sub_1BA4A3008() & 1) == 0 || HKImproveHealthAndActivityAnalyticsAllowed())
  {
    sub_1BA39A1A0(a3);
  }

  v21 = sub_1BA39ACE0(a5, a6, a7, a1);
  if (v21 && (swift_getObjectType(), (v22 = swift_conformsToProtocol2()) != 0))
  {
    v23 = v22;
    sub_1BA4A3E28();
    v24 = a7;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50 = v28;
      *v27 = 136315395;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v50);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2081;
      v32 = [v24 uniqueIdentifier];
      v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v35 = v34;

      v36 = sub_1B9F0B82C(v33, v35, &v50);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_1B9F07000, v25, v26, "%s Action handler for feed item %{private}s supports footer link tapping, will let action handler handle action", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v47 + 8))(v20, v48);
    ObjectType = swift_getObjectType();
    (*(v23 + 16))(v49, ObjectType, v23);
  }

  else
  {
    sub_1BA4A3E28();
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136315138;
      v42 = sub_1BA4A85D8();
      v44 = sub_1B9F0B82C(v42, v43, &v50);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1B9F07000, v38, v39, "%s Action handler does not support footer link tapping, will open URL normally", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    (*(v47 + 8))(v17, v48);
    sub_1BA39BD0C(v49, v14, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA39BAF8);
    v45 = sub_1BA4A15D8();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v14, 1, v45) == 1)
    {

      sub_1BA39BE98(v14, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA39BAF8);
    }

    else
    {
      sub_1BA4A1538();

      (*(v46 + 8))(v14, v45);
    }
  }
}

uint64_t sub_1BA39A1A0(uint64_t a1)
{
  v108 = a1;
  v104 = sub_1BA4A30B8();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v2 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v91 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v91 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v91 - v9;
  v106 = sub_1BA4A3EA8();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v91 - v13;
  v15 = sub_1BA4A2A88();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v91 - v23;
  type metadata accessor for DataTypeDetailViewController();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
    v27 = v25;
    swift_beginAccess();
    sub_1B9F0A534(v27 + v26, &v111);
    v101 = v14;
    v28 = *(&v112 + 1);
    v29 = v113;
    __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
    v98 = (*(v29 + 24))(v28, v29);
    v94 = v30;
    __swift_destroy_boxed_opaque_existential_1(&v111);
    v96 = sub_1BA4A3048();
    sub_1BA4A3018();
    sub_1BA4A2F48();
    v99 = sub_1BA4A2F38();
    LOBYTE(v28) = sub_1BA4A2F28();
    v31 = *(v16 + 16);
    v31(v21, v24, v15);
    v31(v18, v24, v15);

    sub_1BA4A2A68();
    v97 = sub_1BA4A6758();

    sub_1BA4A2A68();
    v95 = sub_1BA4A6758();

    sub_1B9F25508(&qword_1EBBE9D90, MEMORY[0x1E69A31E0]);
    v93 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v92 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v32 = sub_1BA4A6758();

    v33 = v98;
    v34 = v94;
    *&v111 = v98;
    *(&v111 + 1) = v94;
    sub_1BA1DB8CC(v28 & 1);

    v35 = sub_1BA4A6758();

    v36 = *(v16 + 8);
    v36(v18, v15);
    v36(v21, v15);
    v36(v24, v15);
    *&v111 = v32;
    *(&v111 + 1) = v35;
    v37 = v101;
    *&v112 = v97;
    *(&v112 + 1) = v95;
    *&v113 = v93;
    *(&v113 + 1) = v92;
    *&v114 = v33;
    *(&v114 + 1) = v34;
    sub_1BA4A3E58();
    v38 = v103;
    v39 = *(v103 + 16);
    v40 = v102;
    v41 = v108;
    v42 = v104;
    v39(v102, v108, v104);
    v39(v107, v41, v42);
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v109[0] = v46;
      *v45 = 136446979;
      *&v110[0] = v100;
      swift_getMetatypeMetadata();
      v47 = sub_1BA4A6808();
      v49 = sub_1B9F0B82C(v47, v48, v109);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      swift_beginAccess();
      v51 = qword_1EBBEDEA0;
      v50 = off_1EBBEDEA8;

      v52 = sub_1B9F0B82C(v51, v50, v109);

      *(v45 + 14) = v52;
      *(v45 + 22) = 2081;
      v53 = sub_1BA4A3048();
      v55 = v54;
      v56 = *(v38 + 8);
      v56(v40, v42);
      v57 = sub_1B9F0B82C(v53, v55, v109);

      *(v45 + 24) = v57;
      *(v45 + 32) = 2081;
      v58 = v107;
      v59 = sub_1BA4A30A8();
      v61 = v60;
      v56(v58, v42);
      v62 = sub_1B9F0B82C(v59, v61, v109);

      *(v45 + 34) = v62;
      _os_log_impl(&dword_1B9F07000, v43, v44, "[%{public}s]: Submitting %s analytics event %{private}s (unavailable) for %{private}s", v45, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);

      (*(v105 + 8))(v101, v106);
    }

    else
    {

      v86 = *(v38 + 8);
      v86(v107, v42);
      v86(v40, v42);
      (*(v105 + 8))(v37, v106);
    }

    v110[0] = v111;
    v110[1] = v112;
    v110[2] = v113;
    v110[3] = v114;
    v87 = sub_1BA4A29B8();
    v88 = sub_1BA4A29A8();
    v109[3] = v87;
    v109[4] = MEMORY[0x1E69A3198];
    v109[0] = v88;
    sub_1BA0C33E0();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v109);
    return sub_1BA0C3434(&v111);
  }

  else
  {
    sub_1BA4A3E58();
    v63 = v103;
    v64 = *(v103 + 16);
    v65 = v108;
    v66 = v104;
    v64(v5, v108, v104);
    v64(v2, v65, v66);
    v67 = sub_1BA4A3E88();
    v68 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *&v110[0] = v108;
      *v69 = 136446979;
      *&v111 = v100;
      swift_getMetatypeMetadata();
      v70 = sub_1BA4A6808();
      LODWORD(v107) = v68;
      v72 = sub_1B9F0B82C(v70, v71, v110);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2080;
      swift_beginAccess();
      v74 = qword_1EBBEDEA0;
      v73 = off_1EBBEDEA8;

      v75 = sub_1B9F0B82C(v74, v73, v110);

      *(v69 + 14) = v75;
      *(v69 + 22) = 2081;
      v76 = sub_1BA4A3048();
      v78 = v77;
      v79 = *(v63 + 8);
      v79(v5, v66);
      v80 = sub_1B9F0B82C(v76, v78, v110);

      *(v69 + 24) = v80;
      *(v69 + 32) = 2081;
      v81 = sub_1BA4A30A8();
      v83 = v82;
      v79(v2, v66);
      v84 = sub_1B9F0B82C(v81, v83, v110);

      *(v69 + 34) = v84;
      _os_log_impl(&dword_1B9F07000, v67, v107, "[%{public}s]: Could not %s analytics event %{private}s (unavailable) for %{private}s", v69, 0x2Au);
      v85 = v108;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v85, -1, -1);
      MEMORY[0x1BFAF43A0](v69, -1, -1);
    }

    else
    {

      v90 = *(v63 + 8);
      v90(v2, v66);
      v90(v5, v66);
    }

    return (*(v105 + 8))(v11, v106);
  }
}

id sub_1BA39ACE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v77 = a4;
  v7 = sub_1BA4A3EA8();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39BAF8(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v73 - v10;
  v12 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v73 - v16;
  sub_1B9F0A534(a2, v80);
  *v14 = xmmword_1BA4B7EA0;
  *(v14 + 1) = xmmword_1BA4B7EA0;
  v17 = v12[11];
  v18 = sub_1BA4A22F8();
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  v19 = &v14[v12[13]];
  *v19 = 0;
  v19[1] = 0;
  v20 = [a3 userData];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1BA4A1608();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*v14, *(v14 + 1));
  *v14 = v22;
  *(v14 + 1) = v24;
  v25 = [a3 actionHandlerUserData];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1BA4A1608();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*(v14 + 2), *(v14 + 3));
  *(v14 + 2) = v27;
  *(v14 + 3) = v29;
  *(v14 + 4) = a1;
  sub_1B9F0A534(v80, (v14 + 48));
  v30 = a1;
  v31 = [a3 uniqueIdentifier];
  v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v34 = v33;

  *(v14 + 11) = v32;
  *(v14 + 12) = v34;
  sub_1BA4A26B8();
  sub_1BA4A2788();
  sub_1B9F6ACA0(v11, &v14[v17]);
  v14[40] = 4;
  v35 = [a3 baseAutomationIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = &v14[v12[12]];
  *v40 = v37;
  v40[1] = v39;
  if (FeedItem.pluginInfo.getter())
  {
    v41 = sub_1BA4A3AD8();

    v42 = [a3 actionHandlerClassName];
    if (v42)
    {
      v43 = v42;
      v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v46 = v45;

      __swift_destroy_boxed_opaque_existential_1(v80);
      v47 = swift_allocObject();
      *(v47 + 2) = v41;
      *(v47 + 3) = v44;
      *(v47 + 4) = v46;
      *v19 = sub_1BA028D88;
      v19[1] = v47;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v80);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v48 = v14;
  v49 = v78;
  sub_1BA39BDE8(v48, v78, type metadata accessor for BasicFeedItemViewControllerContext);
  v50 = v77;
  result = [v77 view];
  if (result)
  {
    v52 = result;
    v81[3] = v12;
    v81[4] = &protocol witness table for BasicFeedItemViewControllerContext;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
    sub_1BA39BD80(v49, boxed_opaque_existential_1, type metadata accessor for BasicFeedItemViewControllerContext);
    v80[0] = v52;
    v80[1] = v50;
    v54 = *(v49 + v12[13]);
    v55 = v76;
    if (v54)
    {
      if (v54(v50))
      {
        type metadata accessor for AnyPlatformFeedItemViewActionHandler();
        v56 = swift_dynamicCastMetatype();
        if (v56)
        {
          v57 = v56;
          sub_1BA02909C(v80, v79);
          v58 = (*(v57 + 88))(v79);
          swift_getObjectType();
          if (swift_conformsToProtocol2() && v58)
          {
            sub_1BA0C3344(v80);
            sub_1B9F5AD44(v49, type metadata accessor for BasicFeedItemViewControllerContext);
            return v58;
          }
        }
      }
    }

    else
    {
      v59 = v50;
    }

    sub_1BA4A3E28();
    v60 = a3;
    v61 = sub_1BA4A3E88();
    v62 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v79[0] = v64;
      *v63 = 136315394;
      v65 = sub_1BA4A85D8();
      v67 = sub_1B9F0B82C(v65, v66, v79);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2082;
      v68 = [v60 uniqueIdentifier];
      v69 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v71 = v70;

      v72 = sub_1B9F0B82C(v69, v71, v79);

      *(v63 + 14) = v72;
      _os_log_impl(&dword_1B9F07000, v61, v62, "%s Could not create actionHandler for %{public}s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v64, -1, -1);
      MEMORY[0x1BFAF43A0](v63, -1, -1);
    }

    (*(v74 + 8))(v55, v75);
    sub_1BA0C3344(v80);
    sub_1B9F5AD44(v49, type metadata accessor for BasicFeedItemViewControllerContext);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA39B400()
{
}

uint64_t DataTypeDetailFeatureStatusDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DataTypeDetailFeatureStatusDataSource.__deallocating_deinit()
{
  DataTypeDetailFeatureStatusDataSource.deinit();

  return swift_deallocClassInstance();
}

char *sub_1BA39B568(uint64_t a1, void *a2)
{
  v35 = a1;
  v3 = MEMORY[0x1E6968130];
  v4 = MEMORY[0x1E69E6720];
  sub_1BA39BAF8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  sub_1BA4A27B8();
  sub_1BA39BAF8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v8 = sub_1BA4A1C68();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69A3B78], v8);
  v12 = sub_1BA4A0FA8();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = MEMORY[0x1E69E6F90];
  sub_1B9F232F8(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5460;
  *(v14 + 32) = sub_1BA4A1D78();
  *(v14 + 40) = 0;
  v15 = MEMORY[0x1BFAED020](v11, 0, v7, v14);

  sub_1BA39BE98(v7, &qword_1EDC6E2A0, v3, v4, sub_1BA39BAF8);
  sub_1B9F232F8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v13);
  v16 = swift_allocObject();
  v34 = xmmword_1BA4B5470;
  *(v16 + 16) = xmmword_1BA4B5470;
  *(v16 + 32) = a2;
  v17 = a2;
  v18 = MEMORY[0x1BFAED000](v16);

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B7510;
  *(v19 + 32) = v15;
  *(v19 + 40) = v18;
  sub_1B9F1BFFC();
  v20 = v15;
  v21 = v18;
  v22 = sub_1BA4A6AE8();

  v23 = [objc_opt_self() andPredicateWithSubpredicates_];

  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v26 = sub_1BA4A6758();
  v27 = [v25 initWithKey:v26 ascending:0];

  *(v24 + 32) = v27;
  v28 = v23;
  v29 = sub_1BA4A7558();

  sub_1B9F126E0();
  v31 = objc_allocWithZone(v30);
  v32 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);

  return v32;
}

void sub_1BA39BA0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t type metadata accessor for DataTypeDetailFeatureStatusDataSource()
{
  result = qword_1EDC69FD8;
  if (!qword_1EDC69FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA39BAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA39BB5C(void *a1)
{
  sub_1BA4A7DF8();
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v8 = v2;
  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA504430);
  v3 = [a1 uniqueIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  return v8;
}

void sub_1BA39BC30(void *a1, uint64_t a2)
{
  v5 = *(sub_1BA4A30B8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA399C30(a1, a2, v2 + v6, v10, v11, v2 + v9, v12);
}

uint64_t sub_1BA39BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA39BD80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA39BDE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_18Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA39BE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA39C070()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v2 = [v0 contentView];
  v18 = v1;
  [v2 addSubview_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B8B60;
  v5 = [v18 topAnchor];

  v6 = [v0 contentView];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:13.0];
  *(v4 + 32) = v8;
  v9 = [v18 bottomAnchor];

  v10 = [v0 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-13.0];
  *(v4 + 40) = v12;
  v13 = [v18 centerXAnchor];

  v14 = [v0 contentView];
  v15 = [v14 centerXAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v4 + 48) = v16;
  sub_1B9F740B0();
  v17 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  [v18 startAnimating];
}

id sub_1BA39C344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadingDataCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA39C3AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19DownloadingDataCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA39C404(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19DownloadingDataCell_item;
  swift_beginAccess();
  sub_1BA176B88(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA39C4E8()
{
  type metadata accessor for DownloadingDataCell();
  sub_1BA39C5DC();
  return sub_1BA4A6808();
}

uint64_t sub_1BA39C520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1BA39C588()
{
  result = qword_1EBBF17A8;
  if (!qword_1EBBF17A8)
  {
    type metadata accessor for DownloadingDataItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF17A8);
  }

  return result;
}

unint64_t sub_1BA39C5DC()
{
  result = qword_1EBBE9E18;
  if (!qword_1EBBE9E18)
  {
    type metadata accessor for DownloadingDataCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E18);
  }

  return result;
}

uint64_t sub_1BA39C624()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_1BA4A85D8();
    v10 = sub_1B9F0B82C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] Categories metadata stream finished", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void *sub_1BA39C7CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v8 = *a1;
  sub_1BA4A3E28();

  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24[0] = v13;
    *v12 = 136315394;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = type metadata accessor for CategoryMetadata();
    v18 = MEMORY[0x1BFAF1560](v8, v17);
    v20 = sub_1B9F0B82C(v18, v19, v24);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received categories: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    (*(v5 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_categoriesMetadata;
  swift_beginAccess();
  *(a2 + v21) = v8;

  swift_beginAccess();
  sub_1BA268864((a2 + v21));
  swift_endAccess();
  return sub_1BA24F418();
}

void sub_1BA39CAA0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D788(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v14)
  {
    v15 = v14;
    v16 = v2;
    sub_1BA4A3A38();
    v17 = sub_1BA4A3A28();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v13, 1, v17) == 1)
    {

LABEL_4:
      sub_1BA39EB64(v13, &qword_1EBBEA078, MEMORY[0x1E69A3910]);
      return;
    }

    sub_1BA39EBD4(v13, v10);
    v19 = (*(v18 + 88))(v10, v17);
    if (v19 == *MEMORY[0x1E69A38E8])
    {
      (*(v18 + 96))(v10, v17);
      v20 = *v10;
      v21 = [v15 displayTypeForObjectType_];
      if (v21)
      {
        v22 = v21;
        [v21 displayCategory];
      }

      else
      {
        sub_1BA4A3E28();
        v27 = v20;
        v28 = sub_1BA4A3E88();
        v29 = sub_1BA4A6FA8();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v46 = v29;
          v31 = v30;
          v47 = swift_slowAlloc();
          v48 = v47;
          *v31 = 136315394;
          v32 = sub_1BA4A85D8();
          v34 = sub_1B9F0B82C(v32, v33, &v48);

          *(v31 + 4) = v34;
          *(v31 + 12) = 2080;
          v35 = v27;
          v36 = [v35 description];
          v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v45 = v28;
          v38 = v37;
          v40 = v39;

          v41 = sub_1B9F0B82C(v38, v40, &v48);

          *(v31 + 14) = v41;
          v42 = v45;
          _os_log_impl(&dword_1B9F07000, v45, v46, "[%s] Received object type with no corresponding display type: %s", v31, 0x16u);
          v43 = v47;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v43, -1, -1);
          MEMORY[0x1BFAF43A0](v31, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v7, v4);
      }

      goto LABEL_4;
    }

    if (v19 == *MEMORY[0x1E69A38F8])
    {
      (*(v18 + 8))(v10, v17);
      v23 = sub_1BA4A6DC8();
      v24 = [v15 displayTypeWithIdentifier_];

      if (v24)
      {
LABEL_11:
        [v24 displayCategory];

        goto LABEL_4;
      }

      __break(1u);
    }

    else
    {
      if (v19 != *MEMORY[0x1E69A38F0])
      {
        if (v19 != *MEMORY[0x1E69A3900])
        {

          (*(v18 + 8))(v10, v17);
          goto LABEL_4;
        }

        (*(v18 + 8))(v10, v17);
        v44 = sub_1BA4A6DC8();
        v24 = [v15 displayTypeWithIdentifier_];

        if (v24)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }

      v25 = [objc_opt_self() menstrualFlowType];
      v26 = [v15 displayTypeForObjectType_];

      if (v26)
      {
        [v26 displayCategory];

        (*(v18 + 8))(v10, v17);
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

unint64_t sub_1BA39D0CC@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 16);

  if (v6)
  {
    v7 = sub_1B9FDA96C(v5);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
      v10 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_7;
      }

      __break(1u);
    }
  }

  v10 = 1;
LABEL_7:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1B9FF250C(v10, v5, isUniquelyReferenced_nonNull_native);
  *a3 = v4;
  return result;
}

uint64_t sub_1BA39D1B0(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_1BA39E2B4(a3, a4);
  return sub_1BA4A6A18();
}

id sub_1BA39D230@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  v7 = *a1;
  v4 = *(type metadata accessor for CategoryMetadata() + 24);
  v5 = sub_1BA4A1728();
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *a2 = v7;
  *(a2 + 1) = v3;

  return v7;
}

id PendingSummarySharingProfileGradientProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PendingSummarySharingProfileGradientProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingSummarySharingProfileGradientProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA39D3D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BA08FD3C;
  *(v7 + 24) = v6;
  v9[4] = sub_1BA114968;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA112CEC;
  v9[3] = &block_descriptor_104;
  v8 = _Block_copy(v9);

  [a3 fetchSharingAuthorizationsWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_1BA39D4E0(uint64_t a1, void *a2)
{
  sub_1BA39E2FC();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39E544();
  v44 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39E600();
  v11 = *(v10 - 8);
  v49 = v10;
  v50 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39E75C();
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39E9E8();
  v17 = *(v16 - 8);
  v53 = v16;
  v54 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39EA94();
  v20 = *(v19 - 8);
  v55 = v19;
  v56 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v23 = sub_1BA4A1758();
  v24 = [v22 initForInvitationUUID_];
  v47 = v24;

  v25 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:a2 recipientIdentifier:v24];
  *(swift_allocObject() + 16) = v25;
  sub_1BA39E4D4();
  swift_allocObject();
  v40 = v25;
  v57 = sub_1BA4A4EA8();
  sub_1BA4A4D08();
  sub_1BA39E424();
  sub_1BA39E2B4(&qword_1EBBEC1E0, sub_1BA39E4D4);
  sub_1BA39E2B4(&qword_1EBBF17F8, sub_1BA39E424);
  sub_1BA4A5078();

  *(swift_allocObject() + 16) = a2;
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0);
  sub_1BA39E2B4(&qword_1EBBF1810, sub_1BA39E2FC);
  v26 = a2;
  v27 = v41;
  sub_1BA4A4FA8();

  (*(v42 + 8))(v6, v27);
  v57 = MEMORY[0x1E69E7CC8];
  sub_1BA39E6AC();
  sub_1BA39E2B4(&qword_1EBBF1828, sub_1BA39E544);
  v28 = v39;
  v29 = v44;
  sub_1BA4A5048();
  (*(v46 + 8))(v9, v29);
  sub_1BA4A4D08();
  sub_1BA39E938();
  sub_1BA39E2B4(&qword_1EBBF1860, sub_1BA39E600);
  sub_1BA39E2B4(&qword_1EBBF1850, sub_1BA39E938);
  v30 = v43;
  v31 = v49;
  sub_1BA4A5078();
  (*(v50 + 8))(v28, v31);
  type metadata accessor for CategoryMetadata();
  sub_1BA39E2B4(&qword_1EBBF1870, sub_1BA39E75C);
  v32 = v45;
  v33 = v51;
  sub_1BA4A4FE8();
  (*(v52 + 8))(v30, v33);
  sub_1BA39E2B4(&qword_1EBBF1880, sub_1BA39E9E8);
  v34 = v48;
  v35 = v53;
  sub_1BA4A5068();
  (*(v54 + 8))(v32, v35);
  sub_1BA39E2B4(&qword_1EBBF1888, sub_1BA39EA94);
  v36 = v55;
  v37 = sub_1BA4A4F98();

  (*(v56 + 8))(v34, v36);
  return v37;
}

void *sub_1BA39DD2C(uint64_t a1, void *a2)
{
  v3 = v2;
  v25 = a1;
  ObjectType = swift_getObjectType();
  v24 = MEMORY[0x1E69E8050];
  sub_1B9F3D788(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  sub_1BA39E104();
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PendingSummarySharingProfileGradientProvider();
  v31.receiver = v3;
  v31.super_class = v13;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  v30 = sub_1BA39D4E0(a1, a2);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v14 = sub_1BA4A7308();
  v29 = v14;
  v15 = sub_1BA4A72A8();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_1BA39E204();
  sub_1BA39E2B4(&qword_1EBBF17C8, sub_1BA39E204);
  sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0);
  sub_1BA4A50A8();
  sub_1BA39EB64(v8, &qword_1EDC6B5B8, v24);

  v16 = swift_allocObject();
  v17 = ObjectType;
  *(v16 + 16) = ObjectType;
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 16) = v23;
  *(v18 + 24) = v17;
  sub_1BA39E2B4(&qword_1EBBF17D0, sub_1BA39E104);
  v20 = v27;
  sub_1BA4A4F88();

  v21 = sub_1BA4A1798();
  (*(*(v21 - 8) + 8))(v25, v21);
  (*(v28 + 8))(v12, v20);
  return v19;
}

void sub_1BA39E104()
{
  if (!qword_1EBBF17B0)
  {
    sub_1BA39E204();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA39E2B4(&qword_1EBBF17C8, sub_1BA39E204);
    sub_1B9F3E1E0(&qword_1EDC6B5B0, &qword_1EDC6B5A0);
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF17B0);
    }
  }
}

void sub_1BA39E204()
{
  if (!qword_1EBBF17B8)
  {
    sub_1B9F3D788(255, &qword_1EBBF17C0, type metadata accessor for CategoryMetadata, MEMORY[0x1E69E62F8]);
    sub_1B9FED358();
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF17B8);
    }
  }
}

uint64_t sub_1BA39E2B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA39E2FC()
{
  if (!qword_1EBBF17D8)
  {
    sub_1BA39E3E8(255);
    sub_1BA39E4D4();
    sub_1BA39E2B4(&qword_1EBBF1800, sub_1BA39E3E8);
    sub_1BA39E2B4(&qword_1EBBEC1E0, sub_1BA39E4D4);
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF17D8);
    }
  }
}

void sub_1BA39E424()
{
  if (!qword_1EBBF17E8)
  {
    sub_1BA11468C();
    sub_1BA39E2B4(&qword_1EBBF17F0, sub_1BA11468C);
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF17E8);
    }
  }
}

void sub_1BA39E4D4()
{
  if (!qword_1EBBEC1D8)
  {
    sub_1BA11468C();
    sub_1B9FED358();
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC1D8);
    }
  }
}

void sub_1BA39E544()
{
  if (!qword_1EBBF1808)
  {
    sub_1BA39E2FC();
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0);
    sub_1BA39E2B4(&qword_1EBBF1810, sub_1BA39E2FC);
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1808);
    }
  }
}

void sub_1BA39E600()
{
  if (!qword_1EBBF1818)
  {
    sub_1BA39E544();
    sub_1BA39E6AC();
    sub_1BA39E2B4(&qword_1EBBF1828, sub_1BA39E544);
    v0 = sub_1BA4A4BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1818);
    }
  }
}

void sub_1BA39E6AC()
{
  if (!qword_1EBBF1820)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0);
    sub_1B9F3E1E0(&qword_1EBBEBEA8, &qword_1EDC6B5C0);
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1820);
    }
  }
}

void sub_1BA39E75C()
{
  if (!qword_1EBBF1830)
  {
    sub_1BA39E848(255);
    sub_1BA39E600();
    sub_1BA39E2B4(&qword_1EBBF1858, sub_1BA39E848);
    sub_1BA39E2B4(&qword_1EBBF1860, sub_1BA39E600);
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1830);
    }
  }
}

void sub_1BA39E884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B9FED358();
    sub_1BA39E2B4(a4, a5);
    v8 = sub_1BA4A4B38();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BA39E938()
{
  if (!qword_1EBBF1840)
  {
    sub_1BA39E6AC();
    sub_1BA39E2B4(&qword_1EBBF1848, sub_1BA39E6AC);
    v0 = sub_1BA4A4C98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1840);
    }
  }
}

void sub_1BA39E9E8()
{
  if (!qword_1EBBF1868)
  {
    sub_1BA39E75C();
    type metadata accessor for CategoryMetadata();
    sub_1BA39E2B4(&qword_1EBBF1870, sub_1BA39E75C);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1868);
    }
  }
}

void sub_1BA39EA94()
{
  if (!qword_1EBBF1878)
  {
    sub_1BA39E9E8();
    sub_1BA39E2B4(&qword_1EBBF1880, sub_1BA39E9E8);
    v0 = sub_1BA4A4C18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF1878);
    }
  }
}

uint64_t sub_1BA39EB64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F3D788(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA39EBD4(uint64_t a1, uint64_t a2)
{
  sub_1B9F3D788(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1BA39EC7C()
{
  result = sub_1BA39EC9C();
  off_1EBBF1890 = result;
  return result;
}

unint64_t sub_1BA39EC9C()
{
  sub_1B9FED290();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4BAF00;
  *(inited + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x80000001BA504610;
  *(inited + 64) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001BA504630;
  *(inited + 96) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 104) = v3;
  *(inited + 112) = 0xD00000000000001BLL;
  *(inited + 120) = 0x80000001BA504650;
  *(inited + 128) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 136) = v4;
  *(inited + 144) = 0xD00000000000001CLL;
  *(inited + 152) = 0x80000001BA504670;
  *(inited + 160) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 168) = v5;
  *(inited + 176) = 0xD000000000000023;
  *(inited + 184) = 0x80000001BA504690;
  *(inited + 192) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 200) = v6;
  *(inited + 208) = 0xD00000000000001BLL;
  *(inited + 216) = 0x80000001BA5046C0;
  *(inited + 224) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 232) = v7;
  *(inited + 240) = 0xD00000000000001FLL;
  *(inited + 248) = 0x80000001BA5046E0;
  *(inited + 256) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(inited + 264) = v8;
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x80000001BA504700;
  v9 = sub_1B9F12744(inited);
  swift_setDeallocating();
  sub_1B9F1D284();
  swift_arrayDestroy();
  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9F248E4(0xD000000000000023, 0x80000001BA504690, v10, v12, isUniquelyReferenced_nonNull_native);

  return v9;
}

id sub_1BA39EEFC(void *a1)
{
  if (qword_1EBBE88F0 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = off_1EBBF1890;
  v2 = [a1 identifier];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  if (!v1[2])
  {

    return 0;
  }

  sub_1B9F24A34(v3, v5);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = qword_1EDC5E100;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDC84A30;
  v10 = sub_1BA4A6758();

  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  return v11;
}

uint64_t EndSharingRelationshipNotificationUserInfo.init(profileUUID:profileType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA4A1798();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EndSharingRelationshipNotificationUserInfo();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for EndSharingRelationshipNotificationUserInfo()
{
  result = qword_1EBBF18B0;
  if (!qword_1EBBF18B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t EndSharingRelationshipNotificationUserInfo.asUserInfoDictionary()()
{
  sub_1BA39FEE4(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v2 = MEMORY[0x1E69E6158];
  sub_1BA4A7D58();
  v3 = sub_1BA4A1748();
  *(inited + 96) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = v4;
  sub_1BA4A7D58();
  v5 = *(v0 + *(type metadata accessor for EndSharingRelationshipNotificationUserInfo() + 20));
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = v5;
  v6 = sub_1B9FDB524(inited);
  swift_setDeallocating();
  sub_1BA1284D4();
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_1BA39F280()
{
  result = sub_1BA4A6758();
  qword_1EDC5E440 = result;
  return result;
}

uint64_t sub_1BA39F2DC()
{
  result = sub_1BA4A6758();
  qword_1EDC5E418 = result;
  return result;
}

uint64_t EndSharingRelationshipNotificationUserInfo.UserInfoDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

HealthExperienceUI::EndSharingRelationshipNotificationUserInfo::UserInfoKeys_optional __swiftcall EndSharingRelationshipNotificationUserInfo.UserInfoKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

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

uint64_t EndSharingRelationshipNotificationUserInfo.UserInfoKeys.rawValue.getter()
{
  if (*v0)
  {
    return 0x54656C69666F7270;
  }

  else
  {
    return 0x55656C69666F7270;
  }
}