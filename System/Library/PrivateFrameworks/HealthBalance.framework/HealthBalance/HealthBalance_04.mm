unint64_t sub_1CFE025C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1CFE04574();
    v2 = sub_1CFE30F14();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1CFDFDB1C(*(a1 + 56) + 40 * v15, v32);
        *&v31 = v17;
        *(&v31 + 1) = v18;
        v28[2] = v31;
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        v19 = v31;
        sub_1CFDFDB80(v29, v24);
        sub_1CFDFDAB8();

        swift_dynamicCast();
        sub_1CFDFDC04(&v25, v27);
        sub_1CFDFDC04(v27, v28);
        sub_1CFDFDC04(v28, &v26);
        result = sub_1CFDFC4A4(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1CFDFDC04(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_1CFDFDC04(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t HealthBalanceOnboardingAnalyticsEvent.OnboardingAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C65636E6163;
  v3 = 1885956979;
  v4 = 0x6E4F6E727574;
  if (v1 != 3)
  {
    v4 = 0x646577656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1954047342;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter()
{
  result = 0x7974697669746341;
  switch(*v0)
  {
    case 1:
      result = 0x79726F6765746143;
      break;
    case 2:
      result = 0x6570795461746144;
      break;
    case 3:
      result = 0x7373656E746946;
      break;
    case 4:
      result = 0x684368746C616548;
      break;
    case 5:
      result = 0x747465536F6E614ELL;
      break;
    case 6:
      result = 0x686372616553;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7972616D6D7553;
      break;
    case 9:
      result = 0x6E776F6E6B6E55;
      break;
    case 0xA:
      result = 0x736C61746956;
      break;
    case 0xB:
      result = 0x7070416863746157;
      break;
    case 0xC:
      result = 0x746567646957;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HealthBalanceOnboardingAnalyticsEvent.OnboardingStep.rawValue.getter()
{
  v1 = 0x6163696669746F4ELL;
  if (*v0 != 1)
  {
    v1 = 0x7065656C53;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D6F636C6557;
  }
}

HealthBalance::HealthBalanceOnboardingAnalyticsEvent::OnboardingAction_optional __swiftcall HealthBalanceOnboardingAnalyticsEvent.OnboardingAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFE02D0C()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE02DD4()
{
  *v0;
  *v0;
  *v0;
  sub_1CFE30984();
}

uint64_t sub_1CFE02E88()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFE02F58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6C65636E6163;
  v5 = 0xE400000000000000;
  v6 = 1885956979;
  v7 = 0x6E4F6E727574;
  if (v2 != 3)
  {
    v7 = 0x646577656976;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 1954047342;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

HealthBalance::HealthBalanceOnboardingAnalyticsEvent::OnboardingProvenance_optional __swiftcall HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFE03038(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  v4 = v3;
  if (v2 == HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1CFE310B4();
  }

  return v7 & 1;
}

uint64_t sub_1CFE030D4()
{
  v1 = *v0;
  sub_1CFE31144();
  HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE0313C()
{
  v2 = *v0;
  HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  sub_1CFE30984();
}

uint64_t sub_1CFE031A0()
{
  v1 = *v0;
  sub_1CFE31144();
  HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  sub_1CFE30984();

  return sub_1CFE31184();
}

unint64_t sub_1CFE03210@<X0>(unint64_t *a1@<X8>)
{
  result = HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HealthBalance::HealthBalanceOnboardingAnalyticsEvent::OnboardingStep_optional __swiftcall HealthBalanceOnboardingAnalyticsEvent.OnboardingStep.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFE03294(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6163696669746F4ELL;
  v4 = 0xED0000736E6F6974;
  if (v2 != 1)
  {
    v3 = 0x7065656C53;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656D6F636C6557;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6163696669746F4ELL;
  v8 = 0xED0000736E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x7065656C53;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656D6F636C6557;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1CFE310B4();
  }

  return v11 & 1;
}

uint64_t sub_1CFE033A8()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE03454()
{
  *v0;
  *v0;
  sub_1CFE30984();
}

uint64_t sub_1CFE034EC()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFE035A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED0000736E6F6974;
  v5 = 0x6163696669746F4ELL;
  if (v2 != 1)
  {
    v5 = 0x7065656C53;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656D6F636C6557;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1CFE03608(void *a1, _BYTE *a2, char *a3, unsigned __int8 *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  if (v5 <= 1)
  {
    if (*a2)
    {
      v8 = 0xE400000000000000;
      v9 = 1954047342;
    }

    else
    {
      v8 = 0xE600000000000000;
      v9 = 0x6C65636E6163;
    }
  }

  else if (v5 == 2)
  {
    v8 = 0xE400000000000000;
    v9 = 1885956979;
  }

  else if (v5 == 3)
  {
    v8 = 0xE600000000000000;
    v9 = 0x6E4F6E727574;
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x646577656976;
  }

  v10 = MEMORY[0x1E69E6158];
  v11 = MEMORY[0x1E69E6180];
  v69 = MEMORY[0x1E69E6158];
  v70 = MEMORY[0x1E69E6180];
  *&v68 = v9;
  *(&v68 + 1) = v8;
  sub_1CFDFDB80(&v68, v66);
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v12;
  v14 = v67;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18);
  sub_1CFE2A158(*v18, v18[1], 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v65);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v20 = v65;
  v71 = v65;
  v64[23] = v6;
  v21 = HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance.rawValue.getter();
  v69 = v10;
  v70 = v11;
  *&v68 = v21;
  *(&v68 + 1) = v22;
  sub_1CFDFDB80(&v68, v66);
  LOBYTE(v14) = swift_isUniquelyReferenced_nonNull_native();
  v65 = v20;
  v23 = v67;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v64[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27);
  sub_1CFE2A158(*v27, v27[1], 0x6E616E65766F7270, 0xEA00000000006563, v14, &v65);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v29 = v65;
  if (v7)
  {
    if (v7 == 1)
    {
      v30 = 0xED0000736E6F6974;
      v31 = 0x6163696669746F4ELL;
    }

    else
    {
      v30 = 0xE500000000000000;
      v31 = 0x7065656C53;
    }
  }

  else
  {
    v30 = 0xE700000000000000;
    v31 = 0x656D6F636C6557;
  }

  v69 = v10;
  v70 = v11;
  *&v68 = v31;
  *(&v68 + 1) = v30;
  sub_1CFDFDB80(&v68, v66);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v29;
  v33 = v67;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v64[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v38 + 16))(v37);
  sub_1CFE2A158(*v37, v37[1], 1885697139, 0xE400000000000000, v32, &v65);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v39 = v65;
  v71 = v65;
  v40 = *MEMORY[0x1E696B4C8];
  v41 = sub_1CFE30924();
  v43 = v42;
  v44 = [a1 activePairedDeviceProductType];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1CFE30924();
    v48 = v47;

    v69 = v10;
    v70 = v11;
    *&v68 = v46;
    *(&v68 + 1) = v48;
    sub_1CFDFDB80(&v68, v66);
    LOBYTE(v48) = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    v49 = v67;
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v51 = *(*(v49 - 8) + 64);
    MEMORY[0x1EEE9AC00](v50);
    v53 = &v64[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v54 + 16))(v53);
    sub_1CFE2A4AC(v53, v41, v43, v48, &v65, v10, v11);

    __swift_destroy_boxed_opaque_existential_1(v66);
    v55 = v65;
    v71 = v65;
  }

  else
  {
    sub_1CFE29EF0(v41, v43, &v68);

    sub_1CFE04470(&v68);
    v55 = v71;
  }

  v56 = *MEMORY[0x1E696B500];
  v57 = sub_1CFE30924();
  v59 = v58;
  v60 = [a1 isImproveHealthAndActivityEnabled];
  v69 = MEMORY[0x1E69E6370];
  v70 = MEMORY[0x1E69E6388];
  LOBYTE(v68) = v60;
  sub_1CFDFDB80(&v68, v66);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v55;
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  sub_1CFE2A348(*v62, v57, v59, v61, &v65);

  __swift_destroy_boxed_opaque_existential_1(v66);
  return v65;
}

uint64_t sub_1CFE03C34(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = sub_1CFE30314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1E69E7CC8];
  v9 = [a1 currentDate];
  sub_1CFE302F4();

  v10 = sub_1CFE302D4();
  (*(v5 + 8))(v8, v4);
  *&v48 = 0;
  v11 = [a2 ageWithCurrentDate:v10 error:&v48];

  if (v11)
  {
    v12 = v48;
    v13 = [v11 integerValue];

    v14 = MEMORY[0x1E69E6530];
    v15 = MEMORY[0x1E69E6550];
    v49 = MEMORY[0x1E69E6530];
    v50 = MEMORY[0x1E69E6550];
    *&v48 = v13;
    sub_1CFDFDB80(&v48, v46);
    v16 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v16;
    v18 = v47;
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x1EEE9AC00](v19);
    v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    sub_1CFE2A4AC(v22, 6645601, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v44, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v45 = v44;
  }

  else
  {
    v24 = v48;
    v25 = sub_1CFE30184();

    swift_willThrow();
    sub_1CFE29EF0(6645601, 0xE300000000000000, &v48);
    sub_1CFE04470(&v48);
  }

  v46[0] = 0;
  v26 = [a2 biologicalSexWithError_];
  if (v26)
  {
    v27 = v26;
    v28 = v46[0];
    v29 = HKAnalyticsPropertyValueForBiologicalSex();

    v30 = sub_1CFE30924();
    v32 = v31;

    v49 = MEMORY[0x1E69E6158];
    v50 = MEMORY[0x1E69E6180];
    *&v48 = v30;
    *(&v48 + 1) = v32;
    sub_1CFDFDB80(&v48, v46);
    v33 = v45;
    LOBYTE(v29) = swift_isUniquelyReferenced_nonNull_native();
    v44 = v33;
    v34 = v47;
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v36 = *(*(v34 - 8) + 64);
    MEMORY[0x1EEE9AC00](v35);
    v38 = (&v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    sub_1CFE2A158(*v38, v38[1], 0x6369676F6C6F6962, 0xED00007865536C61, v29, &v44);
    __swift_destroy_boxed_opaque_existential_1(v46);
    result = v44;
  }

  else
  {
    v41 = v46[0];

    sub_1CFE30184();

    result = swift_willThrow();
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CFE040C8(void *a1)
{
  v3 = [a1 healthDataSource];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 environmentDataSource];
    v6 = sub_1CFE03C34(v5, v4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = v6;

      sub_1CFE025C4(v7);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CFE02570();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_1CFE041AC()
{
  result = qword_1EC509DF0;
  if (!qword_1EC509DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DF0);
  }

  return result;
}

unint64_t sub_1CFE04204()
{
  result = qword_1EC509DF8;
  if (!qword_1EC509DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509DF8);
  }

  return result;
}

unint64_t sub_1CFE0425C()
{
  result = qword_1EC509E00;
  if (!qword_1EC509E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509E00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthBalanceOnboardingAnalyticsEvent.OnboardingProvenance(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CFE04470(uint64_t a1)
{
  sub_1CFE044CC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE044CC()
{
  if (!qword_1EC509E68)
  {
    sub_1CFDFDAB8();
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509E68);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_1CFE04574()
{
  if (!qword_1EC509C70)
  {
    v0 = sub_1CFE30F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509C70);
    }
  }
}

uint64_t HealthBalanceAppLaunchAnalyticsEvent.__allocating_init(needsOnboarding:source:)(char a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = a1;
  *(result + 17) = v5;
  return result;
}

uint64_t HealthBalanceAppLaunchAnalyticsEvent.init(needsOnboarding:source:)(char a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 17) = v3;
  return v2;
}

void HealthBalanceAppLaunchAnalyticsEvent.makeUnrestrictedEventPayload(with:)(void *a1)
{
  v3 = [a1 environmentDataSource];
  v4 = *(v1 + 16);
  v6 = *(v1 + 17);
  v5 = sub_1CFE0497C(v3, v4, &v6);

  if (!v2)
  {
    sub_1CFE025C4(v5);
  }
}

uint64_t sub_1CFE0497C(void *a1, int a2, unsigned __int8 *a3)
{
  v42 = a2;
  v4 = *a3;
  v5 = MEMORY[0x1E69E7CC8];
  v49 = MEMORY[0x1E69E7CC8];
  v6 = [a1 activePairedDeviceProductType];
  v7 = MEMORY[0x1E69E6158];
  v8 = MEMORY[0x1E69E6180];
  if (v6)
  {
    v9 = v6;
    v10 = sub_1CFE30924();
    v12 = v11;

    v47 = v7;
    v48 = v8;
    *&v46 = v10;
    *(&v46 + 1) = v12;
    sub_1CFDFDB80(&v46, v44);
    LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
    v43 = v5;
    v13 = v45;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v15 = *(*(v13 - 8) + 64);
    MEMORY[0x1EEE9AC00](v14);
    v17 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v18 + 16))(v17);
    sub_1CFE2A4AC(v17, 0xD000000000000016, 0x80000001CFE39870, v9, &v43, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v19 = v43;
  }

  else
  {
    sub_1CFE29EF0(0xD000000000000016, 0x80000001CFE39870, &v46);
    sub_1CFE04470(&v46);
    v19 = v49;
  }

  v20 = v8;
  v21 = [a1 isImproveHealthAndActivityEnabled];
  v22 = MEMORY[0x1E69E6370];
  v23 = MEMORY[0x1E69E6388];
  v47 = MEMORY[0x1E69E6370];
  v48 = MEMORY[0x1E69E6388];
  LOBYTE(v46) = v21;
  sub_1CFDFDB80(&v46, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v19;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  sub_1CFE2A348(*v25, 0xD000000000000021, 0x80000001CFE39890, isUniquelyReferenced_nonNull_native, &v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v26 = v43;
  v47 = v22;
  v48 = v23;
  LOBYTE(v46) = (v42 & 1) == 0;
  sub_1CFDFDB80(&v46, v44);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v26;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  sub_1CFE2A348(*v28, 0x72616F626E4F7369, 0xEB00000000646564, v27, &v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  v29 = v43;
  v49 = v43;
  if (v4 <= 4)
  {
    v30 = MEMORY[0x1E69E6158];
    if (v4 <= 1)
    {
      if (v4)
      {
        v31 = 0xE700000000000000;
        v32 = 0x7373656E746966;
      }

      else
      {
        v31 = 0xE800000000000000;
        v32 = 0x7974697669746361;
      }

      goto LABEL_25;
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v31 = 0x80000001CFE384D0;
        v32 = 0xD000000000000015;
      }

      else
      {
        v31 = 0xEC00000073676E69;
        v32 = 0x747465536F6E616ELL;
      }

      goto LABEL_25;
    }

    v32 = 0x704168746C616568;
LABEL_20:
    v31 = 0xE900000000000070;
    goto LABEL_25;
  }

  v30 = MEMORY[0x1E69E6158];
  if (v4 <= 7)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        v31 = 0xE800000000000000;
        v32 = 0x7070416863746177;
      }

      else
      {
        v31 = 0x80000001CFE38510;
        v32 = 0xD000000000000010;
      }

      goto LABEL_25;
    }

    v32 = 0x65656C536F6E616ELL;
    goto LABEL_20;
  }

  if (v4 == 8)
  {
    v31 = 0x80000001CFE38530;
    v32 = 0xD000000000000019;
  }

  else
  {
    if (v4 != 9)
    {
      sub_1CFE29EF0(0x6E616E65766F7270, 0xEA00000000006563, &v46);
      sub_1CFE04470(&v46);
      return v49;
    }

    v31 = 0xE600000000000000;
    v32 = 0x746567646977;
  }

LABEL_25:
  v47 = v30;
  v48 = v20;
  *&v46 = v32;
  *(&v46 + 1) = v31;
  sub_1CFDFDB80(&v46, v44);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v29;
  v34 = v45;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v41[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v39 + 16))(v38);
  sub_1CFE2A4AC(v38, 0x6E616E65766F7270, 0xEA00000000006563, v33, &v43, v30, v20);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v43;
}

uint64_t sub_1CFE04ED0(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = sub_1CFE30314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1E69E7CC8];
  v9 = [a1 currentDate];
  sub_1CFE302F4();

  v10 = sub_1CFE302D4();
  (*(v5 + 8))(v8, v4);
  *&v48 = 0;
  v11 = [a2 ageWithCurrentDate:v10 error:&v48];

  if (v11)
  {
    v12 = v48;
    v13 = [v11 integerValue];

    v14 = MEMORY[0x1E69E6530];
    v15 = MEMORY[0x1E69E6550];
    v49 = MEMORY[0x1E69E6530];
    v50 = MEMORY[0x1E69E6550];
    *&v48 = v13;
    sub_1CFDFDB80(&v48, v46);
    v16 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v16;
    v18 = v47;
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v20 = *(*(v18 - 8) + 64);
    MEMORY[0x1EEE9AC00](v19);
    v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    sub_1CFE2A4AC(v22, 6645601, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v44, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v45 = v44;
  }

  else
  {
    v24 = v48;
    v25 = sub_1CFE30184();

    swift_willThrow();
    sub_1CFE29EF0(6645601, 0xE300000000000000, &v48);
    sub_1CFE04470(&v48);
  }

  v46[0] = 0;
  v26 = [a2 biologicalSexWithError_];
  if (v26)
  {
    v27 = v26;
    v28 = v46[0];
    v29 = HKAnalyticsPropertyValueForBiologicalSex();

    v30 = sub_1CFE30924();
    v32 = v31;

    v49 = MEMORY[0x1E69E6158];
    v50 = MEMORY[0x1E69E6180];
    *&v48 = v30;
    *(&v48 + 1) = v32;
    sub_1CFDFDB80(&v48, v46);
    v33 = v45;
    LOBYTE(v29) = swift_isUniquelyReferenced_nonNull_native();
    v44 = v33;
    v34 = v47;
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v36 = *(*(v34 - 8) + 64);
    MEMORY[0x1EEE9AC00](v35);
    v38 = (&v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    sub_1CFE2A158(*v38, v38[1], 0x6369676F6C6F6962, 0xED00007865536C61, v29, &v44);
    __swift_destroy_boxed_opaque_existential_1(v46);
    result = v44;
  }

  else
  {
    v41 = v46[0];

    sub_1CFE30184();

    result = swift_willThrow();
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CFE05364(void *a1)
{
  v3 = [a1 healthDataSource];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 environmentDataSource];
    v6 = sub_1CFE04ED0(v5, v4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = v6;

      sub_1CFE025C4(v7);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CFE02570();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1CFE05494()
{
  v1 = v0;
  v2 = [v0 minimum];
  v3 = sub_1CFE2D980();

  if ([v1 isMinimumInclusive])
  {
    v4 = 46;
  }

  else
  {
    v4 = 60;
  }

  MEMORY[0x1D3876060](v4, 0xE100000000000000);

  MEMORY[0x1D3876060](46, 0xE100000000000000);
  if ([v1 isMaximumInclusive])
  {
    v5 = 46;
  }

  else
  {
    v5 = 60;
  }

  MEMORY[0x1D3876060](v5, 0xE100000000000000);

  MEMORY[0x1D3876060](0, 0xE000000000000000);

  v6 = v3;
  v7 = [v1 maximum];
  v8 = sub_1CFE2D980();
  v10 = v9;

  MEMORY[0x1D3876060](v8, v10);

  return v6;
}

id static HealthBalanceUtilities.bundle.getter()
{
  v0 = sub_1CFE308F4();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  return v1;
}

uint64_t Optional<A>.formattedValue(for:unit:)(char *a1, HKUnit a2, uint64_t a3)
{
  if (!a3)
  {
    return 0x9380E29380E2;
  }

  v4 = *a1;
  return HKQuantityRange.formattedValue(for:unit:)(&v4, a2)._countAndFlagsBits;
}

uint64_t static Calendar.gregorianPacific.getter()
{
  sub_1CFE068C8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1CFE30404();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E6969868], v4);
  sub_1CFE30414();
  (*(v5 + 8))(v8, v4);
  sub_1CFE304C4();
  v9 = sub_1CFE304E4();
  result = (*(*(v9 - 8) + 48))(v3, 1, v9);
  if (result != 1)
  {
    return sub_1CFE304A4();
  }

  __break(1u);
  return result;
}

uint64_t Calendar.date(matching:onMorningIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v56 = a3;
  v4 = sub_1CFE30434();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFE30444();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE30424();
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v55 - v17;
  sub_1CFE068C8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v55 - v21;
  v23 = sub_1CFE30134();
  v63 = *(v23 - 8);
  v64 = v23;
  v24 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CFE30314();
  v60 = *(v27 - 8);
  v61 = v27;
  v28 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v71 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v59 = &v55 - v32;
  v33 = objc_opt_self();
  v34 = sub_1CFE307A4();
  v35 = sub_1CFE30454();
  v36 = [v33 hk:v34 sleepDayStartForMorningIndex:v35 calendar:?];

  sub_1CFE302F4();
  v37 = sub_1CFE304B4();
  (*(*(v37 - 8) + 56))(v22, 1, 1, v37);
  v38 = sub_1CFE304E4();
  (*(*(v38 - 8) + 56))(v18, 1, 1, v38);
  v57 = a1;
  v58 = v26;
  sub_1CFE30124();
  (*(v73 + 104))(v14, *MEMORY[0x1E69698A0], v72);
  v39 = v65;
  v40 = v66;
  v41 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x1E69699C8], v67);
  v43 = v68;
  v42 = v69;
  v44 = v62;
  (*(v68 + 104))(v62, *MEMORY[0x1E6969998], v69);
  v45 = v59;
  v46 = v14;
  v47 = v39;
  v48 = v44;
  sub_1CFE30484();
  v49 = v42;
  v51 = v60;
  v50 = v61;
  (*(v43 + 8))(v48, v49);
  (*(v40 + 8))(v47, v41);
  (*(v73 + 8))(v46, v72);
  (*(v63 + 8))(v58, v64);
  (*(v51 + 8))(v71, v50);
  if ((*(v51 + 48))(v45, 1, v50) != 1)
  {
    return (*(v51 + 32))(v56, v45, v50);
  }

  sub_1CFE0691C(v45);
  _s5ErrorOMa();
  sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa);
  swift_allocError();
  v52 = v70;
  *v53 = v57;
  v53[1] = v52;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t Calendar.date(onMorningIndex:matchingHour:matchingMinute:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v51 = a2;
  v42[1] = a1;
  v54 = a3;
  v3 = sub_1CFE30434();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFE30444();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30424();
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v42 - v15;
  sub_1CFE068C8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v42 - v19;
  v21 = sub_1CFE30134();
  v46 = *(v21 - 8);
  v47 = v21;
  v22 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1CFE30314();
  v43 = *(v45 - 8);
  v25 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_opt_self();
  v29 = sub_1CFE307A4();
  v30 = sub_1CFE30454();
  v31 = [v28 hk:v29 sleepDayStartForMorningIndex:v30 calendar:?];

  sub_1CFE302F4();
  v32 = sub_1CFE304B4();
  (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
  v33 = sub_1CFE304E4();
  (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  v42[0] = v24;
  sub_1CFE30124();
  v34 = v9;
  (*(v55 + 104))(v12, *MEMORY[0x1E69698A0], v9);
  v36 = v48;
  v35 = v49;
  v37 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x1E69699C8], v50);
  v39 = v52;
  v38 = v53;
  v40 = v44;
  (*(v52 + 104))(v44, *MEMORY[0x1E6969998], v53);
  sub_1CFE30484();
  (*(v39 + 8))(v40, v38);
  (*(v35 + 8))(v36, v37);
  (*(v55 + 8))(v12, v34);
  (*(v46 + 8))(v42[0], v47);
  return (*(v43 + 8))(v27, v45);
}

void sub_1CFE068C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFE0691C(uint64_t a1)
{
  sub_1CFE068C8(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s5ErrorOMa()
{
  result = qword_1EC509E70;
  if (!qword_1EC509E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Calendar.dateInterval(start:end:onMorningIndex:)@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v129 = a3;
  v130 = a4;
  v136 = a2;
  v102 = a6;
  v142 = sub_1CFE30434();
  v146 = *(v142 - 8);
  v8 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v141 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1CFE30444();
  v145 = *(v139 - 8);
  v10 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v140 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1CFE30424();
  v148 = *(v147 - 8);
  v12 = v148[8];
  MEMORY[0x1EEE9AC00](v147);
  v138 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v100 - v16;
  sub_1CFE068C8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v100 - v20;
  v137 = sub_1CFE30134();
  v144 = *(v137 - 8);
  v22 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v24 = v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v127 = v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v131 = (v100 - v29);
  v134 = sub_1CFE30314();
  v132 = *(v134 - 8);
  v30 = v132[8];
  v31 = MEMORY[0x1EEE9AC00](v134);
  v101 = v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v103 = v100 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v143 = v100 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v133 = v100 - v37;
  v38 = objc_opt_self();
  v128 = a5;
  v39 = sub_1CFE307A4();
  v40 = sub_1CFE30454();
  v123 = v38;
  v41 = [v38 hk:v39 sleepDayStartForMorningIndex:v40 calendar:?];

  sub_1CFE302F4();
  v42 = sub_1CFE304B4();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v122 = v42;
  v121 = v44;
  v120 = v43 + 56;
  (v44)(v21, 1, 1);
  v45 = sub_1CFE304E4();
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v119 = v45;
  v118 = v47;
  v117 = v46 + 56;
  (v47)(v17, 1, 1);
  v125 = a1;
  v135 = v24;
  v124 = v21;
  v126 = v17;
  sub_1CFE30124();
  v48 = v148[13];
  v49 = v138;
  v115 = *MEMORY[0x1E69698A0];
  v116 = v148 + 13;
  v114 = v48;
  v48(v138);
  v50 = v145;
  v51 = *(v145 + 104);
  v52 = v140;
  v112 = *MEMORY[0x1E69699C8];
  v53 = v139;
  v113 = v145 + 104;
  v111 = v51;
  v51(v140);
  v54 = v146;
  v55 = *(v146 + 104);
  v56 = v141;
  v109 = *MEMORY[0x1E6969998];
  v57 = v142;
  v110 = v146 + 104;
  v108 = v55;
  v55(v141);
  v58 = v131;
  v59 = v49;
  v60 = v52;
  sub_1CFE30484();
  v61 = *(v54 + 8);
  v146 = v54 + 8;
  v107 = v61;
  v61(v56, v57);
  v62 = *(v50 + 8);
  v63 = v132;
  v145 = v50 + 8;
  v62(v60, v53);
  v64 = v148[1];
  ++v148;
  v106 = v64;
  v64(v59, v147);
  v65 = *(v144 + 8);
  v144 += 8;
  v65(v135, v137);
  v66 = v63 + 1;
  v67 = v63[1];
  v68 = v134;
  v67();
  v69 = v63[6];
  v105 = v63 + 6;
  v104 = v69;
  if (v69(v58, 1, v68) == 1)
  {
    sub_1CFE0691C(v58);
    _s5ErrorOMa();
    sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa);
    swift_allocError();
    v70 = v136;
    *v71 = v125;
    v71[1] = v70;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v73 = v63[4];
    v125 = v63 + 4;
    v100[0] = v73;
    v73(v133, v58, v68);
    v74 = sub_1CFE307A4();
    v75 = sub_1CFE30454();
    v76 = [v123 hk:v74 sleepDayStartForMorningIndex:v75 calendar:?];

    sub_1CFE302F4();
    v121(v124, 1, 1, v122);
    v118(v126, 1, 1, v119);
    v136 = v65;
    v77 = v135;
    sub_1CFE30124();
    v131 = v67;
    v78 = v138;
    v114(v138, v115, v147);
    v128 = v62;
    v79 = v139;
    v80 = v140;
    v111(v140, v112, v139);
    v100[1] = v66;
    v82 = v141;
    v81 = v142;
    v108(v141, v109, v142);
    v83 = v127;
    v84 = v143;
    sub_1CFE30484();
    v107(v82, v81);
    v128(v80, v79);
    v106(v78, v147);
    v85 = v77;
    v86 = v134;
    v136(v85, v137);
    v87 = v131;
    (v131)(v84, v86);
    if (v104(v83, 1, v86) == 1)
    {
      sub_1CFE0691C(v83);
      _s5ErrorOMa();
      sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa);
      swift_allocError();
      v88 = v130;
      *v89 = v129;
      v89[1] = v88;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v87)(v133, v86);
    }

    else
    {
      v90 = v103;
      (v100[0])(v103, v83, v86);
      sub_1CFE07870(&qword_1EDC32030, MEMORY[0x1E6969530]);
      if (sub_1CFE30874())
      {
        v91 = v133;
        v92 = v132[2];
        v92(v84, v133, v86);
        v92(v101, v90, v86);
        sub_1CFE2FFE4();
        (v87)(v90, v86);
        return (v87)(v91, v86);
      }

      else
      {
        v148 = _s5ErrorOMa();
        sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa);
        swift_allocError();
        v94 = v93;
        sub_1CFE078B8();
        v96 = *(v95 + 48);
        v97 = v132[2];
        v98 = v87;
        v99 = v133;
        v97(v94, v133, v86);
        v97(v94 + v96, v90, v86);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (v98)(v90, v86);
        return (v98)(v99, v86);
      }
    }
  }
}

uint64_t sub_1CFE07870(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFE078B8()
{
  if (!qword_1EC509858)
  {
    sub_1CFE30314();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509858);
    }
  }
}

void sub_1CFE07920()
{
  sub_1CFE078B8();
  if (v0 <= 0x3F)
  {
    sub_1CFE07994();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CFE07994()
{
  if (!qword_1EC509E80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509E80);
    }
  }
}

HealthBalance::TrainingLoadBand __swiftcall TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(Swift::Double fractionalDifferenceFromChronicBaseline)
{
  if (qword_1EC509440 != -1)
  {
LABEL_19:
    v13 = v1;
    v14 = fractionalDifferenceFromChronicBaseline;
    result = swift_once();
    fractionalDifferenceFromChronicBaseline = v14;
    v1 = v13;
  }

  v2 = 0;
  v3 = 1 << *(off_1EC509E88 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(off_1EC509E88 + 8);
  v6 = (v3 + 63) >> 6;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v7 >= v6)
        {
          v12 = 4 * (fractionalDifferenceFromChronicBaseline > 0.0);
          goto LABEL_17;
        }

        v5 = *(off_1EC509E88 + v7 + 8);
        ++v2;
        if (v5)
        {
          v2 = v7;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v7 = v2;
LABEL_11:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = v8 | (v7 << 6);
    v10 = (*(off_1EC509E88 + 7) + 16 * v9);
  }

  while (*v10 > fractionalDifferenceFromChronicBaseline || v10[1] <= fractionalDifferenceFromChronicBaseline);
  v12 = *(*(off_1EC509E88 + 6) + v9);
LABEL_17:
  *v1 = v12;
  return result;
}

HealthBalance::TrainingLoadBand __swiftcall TrainingLoadBand.init(value:baseline:)(Swift::Double value, Swift::Double baseline)
{
  v4 = v2;
  if (baseline == 0.0)
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFE30624();
    __swift_project_value_buffer(v5, qword_1EDC32578);
    v6 = sub_1CFE30604();
    v7 = sub_1CFE30C04();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = value;
      _os_log_impl(&dword_1CFDA3000, v6, v7, "Tried to create a band with a baseline of 0 and value of %f", v8, 0xCu);
      MEMORY[0x1D3876FF0](v8, -1, -1);
    }

    result = TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(0.0);
    v10 = v11;
  }

  else
  {
    result = TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)((value - baseline) / baseline);
    v10 = v12;
  }

  *v4 = v10;
  return result;
}

unint64_t TrainingLoadBand.valueRangeForBand(baseline:)(uint64_t a1, char a2)
{
  v5 = *v2;
  if (qword_1EC509440 != -1)
  {
    v13 = *v2;
    swift_once();
    v5 = v13;
  }

  v6 = off_1EC509E88;
  if (!*(off_1EC509E88 + 2))
  {
    goto LABEL_10;
  }

  result = sub_1CFDFC438(v5);
  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = (v6[7] + 16 * result);
  v10 = 0.0;
  v11 = *v9 * *&a1 + *&a1;
  v12 = 1.0;
  if (a2)
  {
    v11 = *v9 + 0.0;
  }

  else
  {
    v12 = *&a1;
    v10 = *&a1;
  }

  if (v11 > v10 + v12 * v9[1])
  {
    __break(1u);
LABEL_10:
    result = sub_1CFE30ED4();
    __break(1u);
  }

  return result;
}

void *sub_1CFE07D64()
{
  result = sub_1CFDFD0EC(&unk_1F4C89F18);
  off_1EC509E88 = result;
  return result;
}

HealthBalance::TrainingLoadBand_optional __swiftcall TrainingLoadBand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1CFE07E78()
{
  result = qword_1EC509E90;
  if (!qword_1EC509E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509E90);
  }

  return result;
}

unint64_t sub_1CFE07ED0()
{
  result = qword_1EC509E98;
  if (!qword_1EC509E98)
  {
    sub_1CFE07F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509E98);
  }

  return result;
}

void sub_1CFE07F28()
{
  if (!qword_1EC509EA0)
  {
    v0 = sub_1CFE30AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509EA0);
    }
  }
}

unint64_t sub_1CFE07F94()
{
  result = qword_1EC509EA8;
  if (!qword_1EC509EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EA8);
  }

  return result;
}

HealthBalance::TrainingLoadQueryType_optional __swiftcall TrainingLoadQueryType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TrainingLoadDaySummaryQueryConfiguration.typeOfDataRequested.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id TrainingLoadDaySummaryQueryConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrainingLoadDaySummaryQueryConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  v3 = sub_1CFE304B4();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA7AD0();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v0[OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested] = 3;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

_OWORD *TrainingLoadDaySummaryQueryConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E6720];
  sub_1CFDB6C90(0, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26[-v10];
  sub_1CFDB6C90(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v7);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26[-v14];
  v29.receiver = v3;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_copyWithZone_, a1);
  sub_1CFE30CE4();
  swift_unknownObjectRelease();
  sub_1CFDAC5F0(v30, v28);
  if (!swift_dynamicCast())
  {
    return sub_1CFDFDC04(v30, a2);
  }

  v16 = v27;
  v17 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  v18 = MEMORY[0x1E6969AE8];
  sub_1CFDA6188(v3 + v17, v15, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v19 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFE08638(v15, v16 + v19, &qword_1EDC32910, v18);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFDA6188(v3 + v20, v11, &qword_1EDC320D8, sub_1CFDA7AD0);
  v21 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFE08638(v11, v16 + v21, &qword_1EDC320D8, sub_1CFDA7AD0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
  swift_beginAccess();
  v23 = *(v3 + v22);
  v24 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
  swift_beginAccess();
  *(v16 + v24) = v23;
  *(a2 + 24) = ObjectType;
  *a2 = v16;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1CFE08638(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDB6C90(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id TrainingLoadDaySummaryQueryConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t TrainingLoadDaySummaryQueryConfiguration.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1CFDA7460();
  v65 = v4;
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1CFDB6C90(0, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = &v56 - v12;
  sub_1CFDB6C90(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v9);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - v15;
  v69 = sub_1CFE307E4();
  v17 = *(v69 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v69);
  v66 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - v21;
  v23 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  v24 = sub_1CFE304B4();
  v25 = *(*(v24 - 8) + 56);
  v25(&v1[v23], 1, 1, v24);
  v26 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA7AD0();
  v28 = *(v27 - 8);
  v62 = *(v28 + 56);
  v63 = v27;
  v61 = v28 + 56;
  v62(&v1[v26], 1, 1);
  v1[OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested] = 3;
  v73.receiver = v1;
  v73.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v73, sel_initWithCoder_, a1);
  if (!v29)
  {

    return v29;
  }

  v67 = v17;
  v30 = sub_1CFE308F4();
  [a1 decodeIntegerForKey_];

  sub_1CFE30744();
  v31 = sub_1CFE308F4();
  v59 = [a1 decodeIntegerForKey_];

  sub_1CFDB6C90(0, &qword_1EDC316F0, sub_1CFE08EF8, MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CFE324E0;
  *(v32 + 32) = sub_1CFE08F44();
  sub_1CFE30C44();

  if (!v72)
  {
    (*(v67 + 8))(v22, v69);

    sub_1CFE09528(v71, sub_1CFDC3B78);
    return 0;
  }

  v58 = a1;
  v33 = swift_dynamicCast();
  v34 = v69;
  if ((v33 & 1) == 0)
  {
    (*(v67 + 8))(v22, v69);

    return 0;
  }

  v57 = v70;
  sub_1CFE30474();
  v25(v16, 0, 1, v24);
  v35 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFE08638(v16, v29 + v35, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  swift_endAccess();
  v36 = v66;
  sub_1CFE30754();
  sub_1CFDA78C8(&qword_1EDC32CA8);
  result = sub_1CFE30874();
  v38 = v67;
  if (result)
  {
    v39 = v60;
    (*(v67 + 16))(v60, v22, v34);
    v40 = v65;
    v41 = *(v38 + 32);
    v41(v39 + *(v65 + 48), v36, v34);
    v42 = v64;
    sub_1CFDE4928(v39, v64);
    v43 = *(v40 + 48);
    v66 = v22;
    v41(v68, v42, v34);
    v44 = *(v38 + 8);
    v44(v42 + v43, v34);
    sub_1CFDE49B0(v39, v42);
    v45 = *(v40 + 48);
    v46 = v63;
    v47 = v68;
    v41(&v68[*(v63 + 36)], (v42 + v45), v34);
    v48 = v42;
    v49 = v34;
    v44(v48, v34);
    (v62)(v47, 0, 1, v46);
    v50 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
    swift_beginAccess();
    sub_1CFE08638(v47, v29 + v50, &qword_1EDC320D8, sub_1CFDA7AD0);
    swift_endAccess();
    v51 = sub_1CFE308F4();
    v52 = v58;
    v53 = [v58 decodeIntegerForKey_];

    v44(v66, v49);
    if (v53 >= 3)
    {
      v54 = 3;
    }

    else
    {
      v54 = v53;
    }

    v55 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
    swift_beginAccess();
    *(v29 + v55) = v54;
    return v29;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFE08EF8()
{
  result = qword_1EDC316E0;
  if (!qword_1EDC316E0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EDC316E0);
  }

  return result;
}

unint64_t sub_1CFE08F44()
{
  result = qword_1EDC31870;
  if (!qword_1EDC31870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC31870);
  }

  return result;
}

Swift::Void __swiftcall TrainingLoadDaySummaryQueryConfiguration.encode(with:)(NSCoder with)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1CFE307E4();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1CFDB6C90(0, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = MEMORY[0x1E6969AE8];
  sub_1CFDB6C90(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v9);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v43 - v19;
  v47.receiver = v2;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, sel_encodeWithCoder_, with.super.isa);
  v21 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFDA6188(&v2[v21], v20, &qword_1EDC32910, v16);
  v22 = sub_1CFE304B4();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v20, 1, v22) != 1)
  {
    v24 = sub_1CFE30454();
    (*(v23 + 8))(v20, v22);
  }

  v25 = sub_1CFE308F4();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];
  swift_unknownObjectRelease();

  v26 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFDA6188(&v2[v26], v15, &qword_1EDC320D8, sub_1CFDA7AD0);
  sub_1CFDA7AD0();
  v28 = v27;
  v29 = *(*(v27 - 8) + 48);
  if (v29(v15, 1, v27) == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v30 = v43;
  v31 = v8;
  v32 = v8;
  v33 = v44;
  (*(v43 + 16))(v32, v15, v44);
  sub_1CFE09528(v15, sub_1CFDA7AD0);
  v34 = sub_1CFE307A4();
  (*(v30 + 8))(v31, v33);
  v35 = sub_1CFE308F4();
  [(objc_class *)with.super.isa encodeInteger:v34 forKey:v35];

  v36 = v45;
  sub_1CFDA6188(&v2[v26], v45, &qword_1EDC320D8, sub_1CFDA7AD0);
  if (v29(v36, 1, v28) == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v37 = *(v28 + 36);
  sub_1CFDA78C8(&unk_1EDC31E78);
  sub_1CFE30CA4();
  v38 = v46;
  sub_1CFE09528(v36, sub_1CFDA7AD0);
  v39 = sub_1CFE308F4();
  [(objc_class *)with.super.isa encodeInteger:v38 forKey:v39];

  v40 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
  swift_beginAccess();
  v41 = v2[v40];
  if (v41 != 3)
  {
    v42 = sub_1CFE308F4();
    [(objc_class *)with.super.isa encodeInteger:v41 forKey:v42];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1CFE09528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id TrainingLoadDaySummaryQueryConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CFE0962C()
{
  result = qword_1EC509EB0;
  if (!qword_1EC509EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EB0);
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadDaySummaryQueryConfiguration()
{
  result = qword_1EDC31E90;
  if (!qword_1EDC31E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE0975C()
{
  sub_1CFDB6C90(319, &qword_1EDC32910, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1CFDB6C90(319, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFE0988C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDB6C90(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1CFE098FC()
{
  result = qword_1EC509EB8;
  if (!qword_1EC509EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EB8);
  }

  return result;
}

unint64_t sub_1CFE099A4()
{
  result = qword_1EC509EC0;
  if (!qword_1EC509EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EC0);
  }

  return result;
}

unint64_t sub_1CFE099FC()
{
  result = qword_1EC509EC8;
  if (!qword_1EC509EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EC8);
  }

  return result;
}

unint64_t sub_1CFE09A54()
{
  result = qword_1EC509ED0;
  if (!qword_1EC509ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509ED0);
  }

  return result;
}

unint64_t sub_1CFE09AAC()
{
  result = qword_1EC509ED8;
  if (!qword_1EC509ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509ED8);
  }

  return result;
}

uint64_t SleepingSampleAggregateDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SleepingSampleAggregateDaySummary()
{
  result = qword_1EDC32720;
  if (!qword_1EDC32720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepingSampleAggregateDaySummary.init(morningIndex:heartRate:bloodOxygen:respiratoryRate:wristTemperature:timeAsleep:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1CFE307E4();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for SleepingSampleAggregateDaySummary();
  sub_1CFE09E34(a2, a7 + v15[5]);
  sub_1CFE09E34(a3, a7 + v15[6]);
  sub_1CFE09E34(a4, a7 + v15[7]);
  sub_1CFE09E34(a5, a7 + v15[8]);
  v16 = a7 + v15[9];

  return sub_1CFE09E34(a6, v16);
}

uint64_t sub_1CFE09E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAggregate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t SleepingSampleAggregateDaySummary.description.getter()
{
  v1 = v0;
  sub_1CFE30DB4();

  sub_1CFE307A4();
  v2 = sub_1CFE31074();
  MEMORY[0x1D3876060](v2);

  MEMORY[0x1D3876060](0x203A7268202CLL, 0xE600000000000000);
  v3 = type metadata accessor for SleepingSampleAggregateDaySummary();
  v4 = v0 + v3[5];
  v5 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v5);

  MEMORY[0x1D3876060](0x203A8282E24F202CLL, 0xA800000000000000);
  v6 = v1 + v3[6];
  v7 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v7);

  MEMORY[0x1D3876060](0x203A7272202CLL, 0xE600000000000000);
  v8 = v1 + v3[7];
  v9 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v9);

  MEMORY[0x1D3876060](0x203A7477202CLL, 0xE600000000000000);
  v10 = v1 + v3[8];
  v11 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v11);

  MEMORY[0x1D3876060](0x203A7A7A20, 0xE500000000000000);
  v12 = v1 + v3[9];
  v13 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v13);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t SleepingSampleAggregateDaySummary.latestSampleEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_1CFE30314();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v44 - v6;
  v7 = sub_1CFE30014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  sub_1CFDDBC88(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SleepingSampleAggregateDaySummary();
  v22 = v1 + *(v21 + 36);
  v23 = *(type metadata accessor for SleepingSampleAggregate() + 28);
  v24 = v1 + *(v21 + 32);
  v25 = *(v17 + 56);
  v26 = MEMORY[0x1E6968130];
  sub_1CFDA9A14(v22 + v23, v20, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  sub_1CFDA9A14(v24 + v23, &v20[v25], &qword_1EDC32C78, v26);
  v27 = *(v8 + 48);
  LODWORD(v17) = v27(v20, 1, v7);
  v28 = v27(&v20[v25], 1, v7);
  if (v17 == 1)
  {
    if (v28 == 1)
    {
      v29 = 1;
      v30 = v51;
LABEL_8:
      v33 = v49;
      v32 = v50;
      return (*(v33 + 56))(v30, v29, 1, v32);
    }

    (*(v8 + 32))(v15, &v20[v25], v7);
LABEL_7:
    v30 = v51;
    sub_1CFE2FFD4();
    (*(v8 + 8))(v15, v7);
    v29 = 0;
    goto LABEL_8;
  }

  v31 = *(v8 + 32);
  if (v28 == 1)
  {
    v31(v15, v20, v7);
    goto LABEL_7;
  }

  v34 = v45;
  v31(v45, v20, v7);
  v35 = v46;
  v31(v46, &v20[v25], v7);
  v36 = v47;
  sub_1CFE2FFD4();
  v37 = v48;
  sub_1CFE2FFD4();
  sub_1CFE0CDF4(&qword_1EDC32030, MEMORY[0x1E6969530]);
  v38 = v50;
  v39 = sub_1CFE30864();
  v40 = *(v8 + 8);
  v40(v35, v7);
  v40(v34, v7);
  v33 = v49;
  if (v39)
  {
    v41 = v36;
  }

  else
  {
    v41 = v37;
  }

  if (v39)
  {
    v42 = v37;
  }

  else
  {
    v42 = v36;
  }

  (*(v49 + 8))(v41, v38);
  v30 = v51;
  (*(v33 + 32))(v51, v42, v38);
  v32 = v38;
  v29 = 0;
  return (*(v33 + 56))(v30, v29, 1, v32);
}

uint64_t sub_1CFE0A4F4()
{
  v1 = *v0;
  v2 = 0x49676E696E726F6DLL;
  v3 = 0x7461726970736572;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x656C7341656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7461527472616568;
  if (v1 != 1)
  {
    v5 = 0x79784F646F6F6C62;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CFE0A5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFE0CBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFE0A600(uint64_t a1)
{
  v2 = sub_1CFE0C790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0A63C(uint64_t a1)
{
  v2 = sub_1CFE0C790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleAggregateDaySummary.encode(to:)(void *a1)
{
  sub_1CFE0C848(0, &qword_1EC509EE0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE0C790();
  sub_1CFE311A4();
  v23 = 0;
  sub_1CFE307E4();
  sub_1CFE0CDF4(&qword_1EDC318C8, MEMORY[0x1E696B418]);
  sub_1CFE31054();
  if (!v1)
  {
    v10 = type metadata accessor for SleepingSampleAggregateDaySummary();
    v11 = v10[5];
    v22 = 1;
    type metadata accessor for SleepingSampleAggregate();
    sub_1CFE0CDF4(&qword_1EDC31950, type metadata accessor for SleepingSampleAggregate);
    sub_1CFE31054();
    v12 = v10[6];
    v21 = 2;
    sub_1CFE31054();
    v13 = v10[7];
    v20 = 3;
    sub_1CFE31054();
    v14 = v10[8];
    v19 = 4;
    sub_1CFE31054();
    v15 = v10[9];
    v18 = 5;
    sub_1CFE31054();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SleepingSampleAggregateDaySummary.hash(into:)()
{
  v124 = sub_1CFE30314();
  v128 = *(v124 - 8);
  v1 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1CFE0C7E4(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v120 = &v109 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v117 = &v109 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v114 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v109 - v14;
  v131 = sub_1CFE30014();
  v127 = *(v131 - 8);
  v15 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v125 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE0C7E4(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v3);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v121 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v118 = &v109 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v115 = &v109 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v112 = &v109 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v109 - v27;
  sub_1CFDAC3A0(0);
  v30 = v29;
  v129 = *(v29 - 8);
  v31 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE0C7E4(0, &qword_1EDC32CB0, sub_1CFDAC3A0, v3);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v119 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v116 = &v109 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v113 = &v109 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v110 = &v109 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v109 - v44;
  v46 = sub_1CFE307E4();
  v47 = sub_1CFE0CDF4(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  v138 = type metadata accessor for SleepingSampleAggregateDaySummary();
  v139 = v47;
  v48 = v138[5];
  v140 = v46;
  v141 = v0;
  v49 = v0 + v48;
  sub_1CFE30834();
  v50 = type metadata accessor for SleepingSampleAggregate();
  v51 = v50[5];
  v52 = sub_1CFE304B4();
  v53 = sub_1CFE0CDF4(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  v137 = v52;
  v134 = v53;
  sub_1CFE30834();
  v54 = v129;
  sub_1CFDA9A14(v49 + v50[6], v45, &qword_1EDC32CB0, sub_1CFDAC3A0);
  v135 = *(v54 + 48);
  v136 = v54 + 48;
  v55 = v135(v45, 1, v30);
  v123 = v33;
  if (v55 == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v54 + 32))(v33, v45, v30);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v54 + 8))(v33, v30);
  }

  sub_1CFDA9A14(v49 + v50[7], v28, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v56 = v127;
  v57 = v131;
  v132 = *(v127 + 48);
  v133 = v127 + 48;
  if (v132(v28, 1, v131) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v58 = v125;
    (*(v56 + 32))(v125, v28, v57);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130]);
    sub_1CFE30834();
    (*(v56 + 8))(v58, v57);
  }

  v59 = v111;
  sub_1CFDA9A14(v49 + v50[8], v111, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v60 = v128;
  v61 = v124;
  v130 = *(v128 + 48);
  v131 = v128 + 48;
  if (v130(v59, 1, v124) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v62 = v126;
    (*(v60 + 32))(v126, v59, v61);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530]);
    sub_1CFE30834();
    v63 = v62;
    v56 = v127;
    (*(v60 + 8))(v63, v61);
  }

  v64 = v129;
  MEMORY[0x1D3876810](*(v49 + v50[9]));
  v65 = v141 + v138[6];
  sub_1CFE30834();
  v66 = v65 + v50[5];
  sub_1CFE30834();
  v67 = v110;
  sub_1CFDA9A14(v65 + v50[6], v110, &qword_1EDC32CB0, sub_1CFDAC3A0);
  if (v135(v67, 1, v30) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v68 = v123;
    (*(v64 + 32))(v123, v67, v30);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v64 + 8))(v68, v30);
  }

  v69 = v124;
  v70 = v112;
  sub_1CFDA9A14(v65 + v50[7], v112, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  if (v132(v70, 1, v57) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v71 = v125;
    (*(v56 + 32))(v125, v70, v57);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130]);
    sub_1CFE30834();
    v72 = v71;
    v64 = v129;
    (*(v56 + 8))(v72, v57);
  }

  v73 = v114;
  sub_1CFDA9A14(v65 + v50[8], v114, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v130(v73, 1, v69) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v74 = v128;
    v75 = v126;
    (*(v128 + 32))(v126, v73, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530]);
    sub_1CFE30834();
    v76 = v75;
    v56 = v127;
    (*(v74 + 8))(v76, v69);
  }

  MEMORY[0x1D3876810](*(v65 + v50[9]));
  v77 = v141 + v138[7];
  sub_1CFE30834();
  v78 = v77 + v50[5];
  sub_1CFE30834();
  v79 = v113;
  sub_1CFDA9A14(v77 + v50[6], v113, &qword_1EDC32CB0, sub_1CFDAC3A0);
  if (v135(v79, 1, v30) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v80 = v123;
    (*(v64 + 32))(v123, v79, v30);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v64 + 8))(v80, v30);
  }

  v81 = v115;
  sub_1CFDA9A14(v77 + v50[7], v115, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  if (v132(v81, 1, v57) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v82 = v125;
    (*(v56 + 32))(v125, v81, v57);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130]);
    sub_1CFE30834();
    v83 = v82;
    v64 = v129;
    (*(v56 + 8))(v83, v57);
  }

  v84 = v117;
  sub_1CFDA9A14(v77 + v50[8], v117, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v130(v84, 1, v69) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v85 = v128;
    v86 = v126;
    (*(v128 + 32))(v126, v84, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530]);
    sub_1CFE30834();
    v87 = v86;
    v56 = v127;
    (*(v85 + 8))(v87, v69);
  }

  MEMORY[0x1D3876810](*(v77 + v50[9]));
  v88 = v141 + v138[8];
  sub_1CFE30834();
  v89 = v88 + v50[5];
  sub_1CFE30834();
  v90 = v116;
  sub_1CFDA9A14(v88 + v50[6], v116, &qword_1EDC32CB0, sub_1CFDAC3A0);
  if (v135(v90, 1, v30) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v91 = v123;
    (*(v64 + 32))(v123, v90, v30);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v64 + 8))(v91, v30);
  }

  v92 = v118;
  sub_1CFDA9A14(v88 + v50[7], v118, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  if (v132(v92, 1, v57) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v93 = v125;
    (*(v56 + 32))(v125, v92, v57);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130]);
    sub_1CFE30834();
    v94 = v93;
    v64 = v129;
    (*(v56 + 8))(v94, v57);
  }

  v95 = v120;
  sub_1CFDA9A14(v88 + v50[8], v120, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v130(v95, 1, v69) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v96 = v128;
    v97 = v126;
    (*(v128 + 32))(v126, v95, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530]);
    sub_1CFE30834();
    v98 = v97;
    v56 = v127;
    (*(v96 + 8))(v98, v69);
  }

  MEMORY[0x1D3876810](*(v88 + v50[9]));
  v99 = v141 + v138[9];
  sub_1CFE30834();
  v100 = v99 + v50[5];
  sub_1CFE30834();
  v101 = v119;
  sub_1CFDA9A14(v99 + v50[6], v119, &qword_1EDC32CB0, sub_1CFDAC3A0);
  if (v135(v101, 1, v30) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v102 = v123;
    (*(v64 + 32))(v123, v101, v30);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v64 + 8))(v102, v30);
  }

  v103 = v121;
  sub_1CFDA9A14(v99 + v50[7], v121, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  if (v132(v103, 1, v57) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v104 = v125;
    (*(v56 + 32))(v125, v103, v57);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130]);
    sub_1CFE30834();
    (*(v56 + 8))(v104, v57);
  }

  v105 = v122;
  sub_1CFDA9A14(v99 + v50[8], v122, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v130(v105, 1, v69) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v106 = v128;
    v107 = v126;
    (*(v128 + 32))(v126, v105, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530]);
    sub_1CFE30834();
    (*(v106 + 8))(v107, v69);
  }

  return MEMORY[0x1D3876810](*(v99 + v50[9]));
}

uint64_t SleepingSampleAggregateDaySummary.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleAggregateDaySummary.hash(into:)();
  return sub_1CFE31184();
}

uint64_t SleepingSampleAggregateDaySummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v41 = type metadata accessor for SleepingSampleAggregate();
  v3 = *(*(v41 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v41);
  v38 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v39 = v36 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v40 = v36 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v43 = v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - v12;
  v14 = sub_1CFE307E4();
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v46 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE0C848(0, &qword_1EC509EF0, MEMORY[0x1E69E6F48]);
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v36 - v19;
  v21 = type metadata accessor for SleepingSampleAggregateDaySummary();
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE0C790();
  v47 = v20;
  v26 = v48;
  sub_1CFE31194();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v13;
  v28 = v43;
  v54 = 0;
  sub_1CFE0CDF4(&qword_1EDC32108, MEMORY[0x1E696B418]);
  sub_1CFE30FD4();
  v29 = *(v42 + 32);
  v48 = v24;
  v30 = v46;
  v46 = v14;
  v29(v24, v30, v14);
  v53 = 1;
  sub_1CFE0CDF4(&qword_1EDC32450, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE30FD4();
  sub_1CFE09E34(v27, &v48[v21[5]]);
  v52 = 2;
  v36[1] = 0;
  sub_1CFE30FD4();
  sub_1CFE09E34(v28, &v48[v21[6]]);
  v51 = 3;
  v31 = v40;
  sub_1CFE30FD4();
  sub_1CFE09E34(v31, &v48[v21[7]]);
  v50 = 4;
  v32 = v39;
  sub_1CFE30FD4();
  sub_1CFE09E34(v32, &v48[v21[8]]);
  v49 = 5;
  v33 = v38;
  sub_1CFE30FD4();
  (*(v44 + 8))(v47, v45);
  v35 = v48;
  sub_1CFE09E34(v33, &v48[v21[9]]);
  sub_1CFDB4818(v35, v37, type metadata accessor for SleepingSampleAggregateDaySummary);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CFE0C8AC(v35, type metadata accessor for SleepingSampleAggregateDaySummary);
}

uint64_t sub_1CFE0C5FC()
{
  sub_1CFE31144();
  SleepingSampleAggregateDaySummary.hash(into:)();
  return sub_1CFE31184();
}

uint64_t sub_1CFE0C640()
{
  sub_1CFE31144();
  SleepingSampleAggregateDaySummary.hash(into:)();
  return sub_1CFE31184();
}

uint64_t _s13HealthBalance33SleepingSampleAggregateDaySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFE0CDF4(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SleepingSampleAggregateDaySummary();
  if ((static SleepingSampleAggregate.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (static SleepingSampleAggregate.== infix(_:_:)(a1 + v4[6], a2 + v4[6]) & 1) == 0 || (static SleepingSampleAggregate.== infix(_:_:)(a1 + v4[7], a2 + v4[7]) & 1) == 0 || (static SleepingSampleAggregate.== infix(_:_:)(a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[9];

  return static SleepingSampleAggregate.== infix(_:_:)(a1 + v5, a2 + v5);
}

unint64_t sub_1CFE0C790()
{
  result = qword_1EC509EE8;
  if (!qword_1EC509EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EE8);
  }

  return result;
}

void sub_1CFE0C7E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFE0C848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE0C790();
    v7 = a3(a1, &type metadata for SleepingSampleAggregateDaySummary.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFE0C8AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFE0C90C(void *a1)
{
  a1[1] = sub_1CFE0CDF4(&qword_1EDC32730, type metadata accessor for SleepingSampleAggregateDaySummary);
  a1[2] = sub_1CFE0CDF4(&qword_1EDC32748, type metadata accessor for SleepingSampleAggregateDaySummary);
  result = sub_1CFE0CDF4(&qword_1EDC32740, type metadata accessor for SleepingSampleAggregateDaySummary);
  a1[3] = result;
  return result;
}

uint64_t sub_1CFE0CA28()
{
  result = sub_1CFE307E4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SleepingSampleAggregate();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CFE0CACC()
{
  result = qword_1EC509EF8;
  if (!qword_1EC509EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EF8);
  }

  return result;
}

unint64_t sub_1CFE0CB24()
{
  result = qword_1EC509F00;
  if (!qword_1EC509F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F00);
  }

  return result;
}

unint64_t sub_1CFE0CB7C()
{
  result = qword_1EC509F08;
  if (!qword_1EC509F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F08);
  }

  return result;
}

uint64_t sub_1CFE0CBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49676E696E726F6DLL && a2 == 0xEC0000007865646ELL;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461527472616568 && a2 == 0xE900000000000065 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79784F646F6F6C62 && a2 == 0xEB000000006E6567 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461726970736572 && a2 == 0xEF6574615279726FLL || (sub_1CFE310B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFE39AD0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C7341656D6974 && a2 == 0xEA00000000007065)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1CFE0CDF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SleepingSampleBaselineAvailability.required.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1CFDAD680();
    v7 = *&v4[*(v6 + 64)];
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return v7;
  }

  else
  {
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return 6;
  }
}

uint64_t SleepingSampleBaselineAvailability.count.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1CFDAD680();
  }

  else
  {
    sub_1CFDCB868();
  }

  v7 = *&v4[*(v6 + 48)];
  sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
  return v7;
}

uint64_t SleepingSampleBaselineAvailability.isInRefinement.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1CFDAD680();
    }

    else
    {
      sub_1CFDCB868();
    }

    v7 = *&v4[*(v6 + 48)];
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return (v7 - 6) < 0xE;
  }

  return result;
}

uint64_t SleepingSampleBaselineAvailability.isEqualToMinimumAvailability.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1CFDAD680();
    }

    else
    {
      sub_1CFDCB868();
    }

    v7 = *&v4[*(v6 + 48)];
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return v7 == 6;
  }

  return result;
}

uint64_t SleepingSampleBaselineAvailability.isGreaterThanMinimumAvailability.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1CFDAD680();
    }

    else
    {
      sub_1CFDCB868();
    }

    v7 = *&v4[*(v6 + 48)];
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return v7 > 6;
  }

  return result;
}

BOOL SleepingSampleBaselineAvailability.isAvailable.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  v6 = EnumCaseMultiPayload != 1;
  sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
  return v6;
}

uint64_t SleepingSampleBaselineAvailability.init(analyzedRange:count:required:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1CFDA7AD0();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SleepingSampleBaselineAvailability();
  v26 = *(v14 - 8);
  v15 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v10 + 48))(a1, 1, v9) != 1)
  {
    sub_1CFDB46C8(a1, v13, sub_1CFDA7AD0);
    if (a2 >= a3)
    {
      sub_1CFDCB868();
      v24 = *(v23 + 48);
      sub_1CFDB46C8(v13, v17, sub_1CFDA7AD0);
      *(v17 + v24) = a2;
    }

    else
    {
      sub_1CFDAD680();
      v21 = *(v20 + 48);
      v22 = *(v20 + 64);
      sub_1CFDB46C8(v13, v17, sub_1CFDA7AD0);
      *(v17 + v21) = a2;
      *(v17 + v22) = a3;
    }

    goto LABEL_10;
  }

  sub_1CFE0E6B8(a1, sub_1CFE0D66C);
  if (!a2)
  {
    *v17 = a3;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_1CFDB46C8(v17, a4, type metadata accessor for SleepingSampleBaselineAvailability);
    return (*(v26 + 56))(a4, 0, 1, v14);
  }

  v18 = *(v26 + 56);

  return v18(a4, 1, 1, v14);
}

void sub_1CFE0D66C()
{
  if (!qword_1EDC320D8)
  {
    sub_1CFDA7AD0();
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC320D8);
    }
  }
}

uint64_t SleepingSampleBaselineAvailability.analyzedRange.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SleepingSampleBaselineAvailability();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v2, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CFDB46C8(v7, a1, sub_1CFDA7AD0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_1CFDA7AD0();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_1CFE0D7CC()
{
  if (*v0)
  {
    result = 0x746E756F63;
  }

  else
  {
    result = 0x64657A796C616E61;
  }

  *v0;
  return result;
}

uint64_t sub_1CFE0D810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657A796C616E61 && a2 == 0xED000065676E6152;
  if (v6 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CFE0D8F0(uint64_t a1)
{
  v2 = sub_1CFDB415C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0D92C(uint64_t a1)
{
  v2 = sub_1CFDB415C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE0D968(uint64_t a1)
{
  v2 = sub_1CFDAF484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0D9A4(uint64_t a1)
{
  v2 = sub_1CFDAF484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE0D9E0(uint64_t a1)
{
  v2 = sub_1CFDB4260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0DA1C(uint64_t a1)
{
  v2 = sub_1CFDB4260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE0DA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFE310B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFE0DAE0(uint64_t a1)
{
  v2 = sub_1CFDAF53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0DB1C(uint64_t a1)
{
  v2 = sub_1CFDAF53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleBaselineAvailability.hash(into:)()
{
  v1 = v0;
  sub_1CFDA7AD0();
  v3 = v2;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepingSampleBaselineAvailability();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFDAF4D8(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDAD680();
      v13 = *(v10 + *(v12 + 48));
      v14 = *(v10 + *(v12 + 64));
      sub_1CFDB46C8(v10, v6, sub_1CFDA7AD0);
      MEMORY[0x1D3876810](1);
      sub_1CFE307E4();
      sub_1CFDA790C(&qword_1EC509638, MEMORY[0x1E696B418]);
      sub_1CFE30834();
      v15 = &v6[*(v3 + 36)];
      sub_1CFE30834();
      MEMORY[0x1D3876810](v13);
      v16 = v14;
    }

    else
    {
      sub_1CFDCB868();
      v20 = *(v10 + *(v19 + 48));
      sub_1CFDB46C8(v10, v6, sub_1CFDA7AD0);
      MEMORY[0x1D3876810](2);
      sub_1CFE307E4();
      sub_1CFDA790C(&qword_1EC509638, MEMORY[0x1E696B418]);
      sub_1CFE30834();
      v21 = &v6[*(v3 + 36)];
      sub_1CFE30834();
      v16 = v20;
    }

    MEMORY[0x1D3876810](v16);
    return sub_1CFE0E6B8(v6, sub_1CFDA7AD0);
  }

  else
  {
    v17 = *v10;
    MEMORY[0x1D3876810](0);
    return MEMORY[0x1D3876810](v17);
  }
}

uint64_t SleepingSampleBaselineAvailability.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleBaselineAvailability.hash(into:)();
  return sub_1CFE31184();
}

uint64_t sub_1CFE0DE4C()
{
  sub_1CFE31144();
  SleepingSampleBaselineAvailability.hash(into:)();
  return sub_1CFE31184();
}

uint64_t sub_1CFE0DE90()
{
  sub_1CFE31144();
  SleepingSampleBaselineAvailability.hash(into:)();
  return sub_1CFE31184();
}

uint64_t _s13HealthBalance34SleepingSampleBaselineAvailabilityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7AD0();
  v49 = v4;
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - v9;
  v11 = type metadata accessor for SleepingSampleBaselineAvailability();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v48 - v19);
  sub_1CFE0E654();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v25[*(v23 + 56)];
  sub_1CFDAF4D8(a1, v25);
  sub_1CFDAF4D8(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDAF4D8(v25, v18);
      sub_1CFDAD680();
      v29 = *(v28 + 48);
      v30 = *&v18[v29];
      v31 = *(v28 + 64);
      v32 = *&v18[v31];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = *&v26[v29];
        v34 = *&v26[v31];
        sub_1CFDB46C8(v26, v10, sub_1CFDA7AD0);
        sub_1CFE307E4();
        sub_1CFDA790C(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
        if (sub_1CFE308B4())
        {
          v35 = *(v49 + 36);
          v36 = sub_1CFE308B4();
          sub_1CFE0E6B8(v10, sub_1CFDA7AD0);
          sub_1CFE0E6B8(v18, sub_1CFDA7AD0);
          if (v32 == v34)
          {
            v37 = v36 & (v30 == v33);
          }

          else
          {
            v37 = 0;
          }

          goto LABEL_19;
        }

        sub_1CFE0E6B8(v10, sub_1CFDA7AD0);
        v46 = v18;
        goto LABEL_18;
      }

      v15 = v18;
      goto LABEL_14;
    }

    sub_1CFDAF4D8(v25, v15);
    sub_1CFDCB868();
    v41 = *(v40 + 48);
    v42 = *&v15[v41];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_14:
      sub_1CFE0E6B8(v15, sub_1CFDA7AD0);
      v37 = 0;
      v39 = sub_1CFE0E654;
      goto LABEL_20;
    }

    v43 = *&v26[v41];
    sub_1CFDB46C8(v26, v8, sub_1CFDA7AD0);
    sub_1CFE307E4();
    sub_1CFDA790C(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
    if ((sub_1CFE308B4() & 1) == 0)
    {
      sub_1CFE0E6B8(v8, sub_1CFDA7AD0);
      v46 = v15;
LABEL_18:
      sub_1CFE0E6B8(v46, sub_1CFDA7AD0);
      v37 = 0;
      goto LABEL_19;
    }

    v44 = *(v49 + 36);
    v45 = sub_1CFE308B4();
    sub_1CFE0E6B8(v8, sub_1CFDA7AD0);
    sub_1CFE0E6B8(v15, sub_1CFDA7AD0);
    v37 = v45 & (v42 == v43);
LABEL_19:
    v39 = type metadata accessor for SleepingSampleBaselineAvailability;
    goto LABEL_20;
  }

  sub_1CFDAF4D8(v25, v20);
  v38 = swift_getEnumCaseMultiPayload();
  v39 = sub_1CFE0E654;
  if (!v38)
  {
    v37 = *v20 == *v26;
    goto LABEL_19;
  }

  v37 = 0;
LABEL_20:
  sub_1CFE0E6B8(v25, v39);
  return v37;
}

void sub_1CFE0E3FC()
{
  sub_1CFE0E484();
  if (v0 <= 0x3F)
  {
    sub_1CFDAD680();
    if (v1 <= 0x3F)
    {
      sub_1CFDCB868();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CFE0E484()
{
  result = qword_1EDC32928;
  if (!qword_1EDC32928)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EDC32928);
  }

  return result;
}

unint64_t sub_1CFE0E4F8()
{
  result = qword_1EC509F18;
  if (!qword_1EC509F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F18);
  }

  return result;
}

unint64_t sub_1CFE0E550()
{
  result = qword_1EC509F20;
  if (!qword_1EC509F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F20);
  }

  return result;
}

unint64_t sub_1CFE0E5A8()
{
  result = qword_1EC509F28;
  if (!qword_1EC509F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F28);
  }

  return result;
}

unint64_t sub_1CFE0E600()
{
  result = qword_1EC509F30;
  if (!qword_1EC509F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F30);
  }

  return result;
}

void sub_1CFE0E654()
{
  if (!qword_1EDC31900)
  {
    type metadata accessor for SleepingSampleBaselineAvailability();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC31900);
    }
  }
}

uint64_t sub_1CFE0E6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id SleepingSampleDaySummaryQuery.__allocating_init(morningIndexRange:gregorianCalendar:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1CFE113A4(a1, a2, a3, a4, a5);

  return v12;
}

uint64_t SleepingSampleDaySummaryQuery.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC36C28;
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id SleepingSampleDaySummaryQuery.init(morningIndexRange:gregorianCalendar:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1CFE113A4(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t sub_1CFE0E88C()
{
  static SleepingSampleDaySummaryQuery.configurationClass()();

  return swift_getObjCClassFromMetadata();
}

Swift::Void __swiftcall SleepingSampleDaySummaryQuery.queue_populateConfiguration(_:)(HKQueryServerConfiguration *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_1CFDA631C(0, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  sub_1CFDA631C(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  [(HKQueryServerConfiguration *)&v23 queue_populateConfiguration:a1];
  type metadata accessor for SleepingSampleDaySummaryQueryConfiguration();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_1EDC36C28;
    v16 = sub_1CFE304B4();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v12, &v1[v15], v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v18 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
    swift_beginAccess();
    v19 = a1;
    sub_1CFE115E4(v12, v14 + v18, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
    swift_endAccess();
    sub_1CFDA6A74(&v1[qword_1EDC36C20], v8, sub_1CFDA68BC);
    sub_1CFDA68BC();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
    swift_beginAccess();
    sub_1CFE115E4(v8, v14 + v21, &qword_1EDC32540, sub_1CFDA68BC);
    swift_endAccess();
  }
}

void sub_1CFE0EBA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SleepingSampleDaySummaryQuery.queue_populateConfiguration(_:)(v4);
}

uint64_t SleepingSampleDaySummaryQuery.queue_deliverError(_:)(void *a1)
{
  v3 = sub_1CFE30634();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30654();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v1[qword_1EDC32800];
  if (v14)
  {
    v25 = v11;
    v15 = *&v1[qword_1EDC32800 + 8];

    v16 = [v1 clientQueue];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      v18[2] = v14;
      v18[3] = v15;
      v18[4] = v1;
      v18[5] = a1;
      aBlock[4] = sub_1CFE11664;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFDAA484;
      aBlock[3] = &block_descriptor_2;
      v19 = _Block_copy(aBlock);
      v24 = v8;
      v20 = v19;
      sub_1CFDA81D0(v14);
      v21 = v1;
      v22 = a1;
      sub_1CFE30644();
      v26 = MEMORY[0x1E69E7CC0];
      sub_1CFDA7954(qword_1EDC32128, MEMORY[0x1E69E7F60]);
      sub_1CFDA631C(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1CFDAA3FC();
      sub_1CFE30D04();
      MEMORY[0x1D38762F0](0, v13, v7, v20);
      _Block_release(v20);

      sub_1CFDAC3D4(v14);
      (*(v4 + 8))(v7, v3);
      (*(v25 + 8))(v13, v24);
    }

    else
    {

      return sub_1CFDAC3D4(v14);
    }
  }

  return result;
}

void sub_1CFE0EF74(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = a1;
  SleepingSampleDaySummaryQuery.queue_deliverError(_:)(v5);
}

uint64_t SleepingSampleDaySummaryQuery.queue_queryDidDeactivate(_:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CFE30334();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_queue_queryDidDeactivate_, v3);

  v4 = &v1[qword_1EDC32800];
  v5 = *&v1[qword_1EDC32800];
  v6 = *&v1[qword_1EDC32800 + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  return sub_1CFDAC3D4(v5);
}

uint64_t sub_1CFE0F048(void *a1)
{
  v2 = sub_1CFE30354();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE30344();
  v7 = a1;
  SleepingSampleDaySummaryQuery.queue_queryDidDeactivate(_:)();

  return (*(v3 + 8))(v6, v2);
}

id static SleepingSampleDaySummaryQuery.clientInterfaceProtocol()()
{
  v0 = sub_1CFE11698();

  return v0;
}

id sub_1CFE0F19C()
{
  swift_getObjCClassMetadata();
  v0 = sub_1CFE11698();

  return v0;
}

void static SleepingSampleDaySummaryQuery.configureClientInterface(_:)(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v30.receiver = ObjCClassFromMetadata;
  v30.super_class = v4;
  v23 = a1;
  objc_msgSendSuper2(&v30, sel_configureClientInterface_, a1);
  sub_1CFDE9D54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFE35FE0;
  *(inited + 32) = sub_1CFDA6E64(0, &qword_1EDC324F0, 0x1E695DEC8);
  sub_1CFE116A4();
  *(inited + 40) = v6;
  sub_1CFE117A8();
  *(inited + 48) = v7;
  *&v27 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1D3876120]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    v8 = sub_1CFE30AC4();
    MEMORY[0x1D3876120](v8);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFE30A94();
    }

    swift_getObjCClassFromMetadata();
    sub_1CFE30AC4();

    MEMORY[0x1D3876120](v9);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFE30A94();
    }

    swift_getObjCClassFromMetadata();
    sub_1CFE30AC4();
    v10 = v27;
    if (!(v27 >> 62))
    {
      v11 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        break;
      }

      goto LABEL_8;
    }

    v11 = sub_1CFE30EE4();
    if (!v11)
    {
      break;
    }

LABEL_8:
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1D3876480](v12, v10);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

LABEL_15:
      *&v27 = v15;
      if (swift_dynamicCast())
      {
        if (*(&v25 + 1))
        {
          v27 = v24;
          v28 = v25;
          v29 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1CFDDDBE8(0, *(v13 + 2) + 1, 1, v13);
          }

          v18 = *(v13 + 2);
          v17 = *(v13 + 3);
          if (v18 >= v17 >> 1)
          {
            v13 = sub_1CFDDDBE8((v17 > 1), v18 + 1, 1, v13);
          }

          *(v13 + 2) = v18 + 1;
          v19 = &v13[40 * v18];
          v20 = v27;
          v21 = v28;
          *(v19 + 8) = v29;
          *(v19 + 2) = v20;
          *(v19 + 3) = v21;
          goto LABEL_11;
        }
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
      }

      sub_1CFE11978(&v24, &unk_1EC509A28);
LABEL_11:
      ++v12;
      if (v16 == v11)
      {
        goto LABEL_29;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v14 = *(v10 + 8 * v12 + 32);
    v15 = swift_unknownObjectRetain();
    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1CFE30A94();
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_29:

  sub_1CFDEA81C(v13);

  v22 = sub_1CFE30B74();

  [v23 setClasses:v22 forSelector:sel_client_deliverSleepingSampleDaySummaries_clearPending_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

void sub_1CFE0F5DC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static SleepingSampleDaySummaryQuery.configureClientInterface(_:)(v4);
}

uint64_t SleepingSampleDaySummaryQuery.client_logErrorAndKeepQueryActivated(error:queryUUID:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v30 = *v2;
  v31 = ObjectType;
  v29 = *MEMORY[0x1E69E7D40];
  v34 = sub_1CFE30634();
  v37 = *(v34 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30654();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE30354();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v2 queue];
  (*(v14 + 16))(v16, a2, v13);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v21 = v29;
  v20 = v30;
  *(v19 + 2) = *((v29 & v30) + 0x50);
  *(v19 + 3) = *((v21 & v20) + 0x58);
  *(v19 + 4) = v3;
  (*(v14 + 32))(&v19[v17], v16, v13);
  v22 = v33;
  *&v19[v18] = v33;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v31;
  aBlock[4] = sub_1CFE118AC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFDAA484;
  aBlock[3] = &block_descriptor_12;
  v23 = _Block_copy(aBlock);
  v24 = v3;
  v25 = v22;
  sub_1CFE30644();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1CFDA7954(qword_1EDC32128, MEMORY[0x1E69E7F60]);
  sub_1CFDA631C(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1CFDAA3FC();
  v26 = v34;
  sub_1CFE30D04();
  v27 = v32;
  MEMORY[0x1D38762F0](0, v12, v8, v23);
  _Block_release(v23);

  (*(v37 + 8))(v8, v26);
  (*(v35 + 8))(v12, v36);
}

void sub_1CFE0FA54(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1CFE30354();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((v9 & v8) + 0x50);
  v16 = sub_1CFE30AA4();
  v17 = qword_1EDC327F0;
  swift_beginAccess();
  v18 = *(a1 + v17);
  *(a1 + v17) = v16;

  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v19 = sub_1CFE30624();
  __swift_project_value_buffer(v19, qword_1EDC32578);
  (*(v11 + 16))(v14, a2, v10);
  v20 = a3;
  v21 = sub_1CFE30604();
  v22 = sub_1CFE30BF4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = a4;
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43[0] = v42;
    *v24 = 136446722;
    v43[4] = v23;
    swift_getMetatypeMetadata();
    v25 = sub_1CFE30944();
    v27 = sub_1CFDAAF6C(v25, v26, v43);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = sub_1CFE30324();
    v30 = v29;
    (*(v11 + 8))(v14, v10);
    v31 = sub_1CFDAAF6C(v28, v30, v43);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2114;
    v32 = a3;
    v33 = a3;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 24) = v34;
    v35 = v41;
    *v41 = v34;
    _os_log_impl(&dword_1CFDA3000, v21, v22, "[%{public}s] Non-deactivating query error %s %{public}@", v24, 0x20u);
    sub_1CFE119D4(v35, sub_1CFDAB038);
    MEMORY[0x1D3876FF0](v35, -1, -1);
    v36 = v42;
    swift_arrayDestroy();
    MEMORY[0x1D3876FF0](v36, -1, -1);
    MEMORY[0x1D3876FF0](v24, -1, -1);
  }

  else
  {
    v33 = a3;

    (*(v11 + 8))(v14, v10);
  }

  v37 = a1 + qword_1EDC36C30;
  v38 = *(a1 + qword_1EDC36C30);
  if (v38)
  {
    v39 = *(v37 + 1);

    v38(v33);
    sub_1CFDAC3D4(v38);
  }
}

uint64_t sub_1CFE0FDEC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1CFE30354();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE30344();
  v10 = a3;
  v11 = a1;
  SleepingSampleDaySummaryQuery.client_logErrorAndKeepQueryActivated(error:queryUUID:)(v10, v9);

  return (*(v6 + 8))(v9, v5);
}

id SleepingSampleDaySummaryQuery.__allocating_init(queryDescriptors:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);
  v2 = sub_1CFE30A74();

  v3 = [v1 initWithQueryDescriptors_];

  return v3;
}

void SleepingSampleDaySummaryQuery.init(queryDescriptors:)()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1CFE11948();
}

void sub_1CFE0FFA8(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1CFE11948();
}

uint64_t sub_1CFE0FFEC(uint64_t a1)
{
  sub_1CFE119D4(a1 + qword_1EDC36C20, sub_1CFDA68BC);
  v2 = qword_1EDC36C28;
  v3 = sub_1CFE304B4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_1EDC32800 + 8);
  sub_1CFDAC3D4(*(a1 + qword_1EDC32800));
  v5 = *(a1 + qword_1EDC327F0);

  v6 = *(a1 + qword_1EDC36C30);
  v7 = *(a1 + qword_1EDC36C30 + 8);

  return sub_1CFDAC3D4(v6);
}

id SleepingSampleDaySummaryQueryConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepingSampleDaySummaryQueryConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  v3 = sub_1CFE304B4();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA68BC();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

_OWORD *SleepingSampleDaySummaryQueryConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E6720];
  sub_1CFDA631C(0, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23[-v10];
  sub_1CFDA631C(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v7);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23[-v14];
  v26.receiver = v3;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_copyWithZone_, a1);
  sub_1CFE30CE4();
  swift_unknownObjectRelease();
  sub_1CFDAC5F0(v27, v25);
  if (!swift_dynamicCast())
  {
    return sub_1CFDFDC04(v27, a2);
  }

  v16 = v24;
  v17 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  v18 = MEMORY[0x1E6969AE8];
  sub_1CFDA6208(v3 + v17, v15, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v19 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFE115E4(v15, v16 + v19, &qword_1EDC32910, v18);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFDA6208(v3 + v20, v11, &qword_1EDC32540, sub_1CFDA68BC);
  v21 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFE115E4(v11, v16 + v21, &qword_1EDC32540, sub_1CFDA68BC);
  swift_endAccess();
  *(a2 + 24) = ObjectType;
  *a2 = v16;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

id SleepingSampleDaySummaryQueryConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SleepingSampleDaySummaryQueryConfiguration.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1CFDA7460();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1CFDA631C(0, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v49 - v13;
  sub_1CFDA631C(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v58 = &v49 - v16;
  v17 = sub_1CFE307E4();
  v59 = *(v17 - 8);
  v18 = v59[8];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v49 - v22;
  v24 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  v25 = sub_1CFE304B4();
  v57 = *(*(v25 - 8) + 56);
  v57(&v1[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA68BC();
  v28 = *(v27 - 8);
  v52 = *(v28 + 56);
  v53 = v27;
  v51 = v28 + 56;
  v52(&v1[v26], 1, 1);
  v63.receiver = v1;
  v63.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v63, sel_initWithCoder_, a1);
  if (!v29)
  {

    return;
  }

  v50 = v5;
  v30 = sub_1CFE308F4();
  [a1 decodeIntegerForKey_];

  sub_1CFE30744();
  v31 = sub_1CFE308F4();
  [a1 decodeIntegerForKey_];

  sub_1CFE30744();
  sub_1CFDA631C(0, &qword_1EDC316F0, sub_1CFE08EF8, MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CFE324E0;
  *(v32 + 32) = sub_1CFDA6E64(0, &qword_1EDC31870, 0x1E695DEE8);
  sub_1CFE30C44();

  if (!v62)
  {

    v47 = v59[1];
    v47(v21, v17);
    v47(v23, v17);
    sub_1CFE11978(v61, &qword_1EC509598);
LABEL_9:

    return;
  }

  v33 = v17;
  if ((swift_dynamicCast() & 1) == 0)
  {

    v48 = v59[1];
    v48(v21, v17);
    v48(v23, v17);
    goto LABEL_9;
  }

  v34 = v60;
  v35 = v58;
  sub_1CFE30474();
  v57(v35, 0, 1, v25);
  v36 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFE115E4(v35, v29 + v36, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  swift_endAccess();
  sub_1CFDA7954(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
  LOBYTE(v36) = sub_1CFE30874();

  if (v36)
  {
    v37 = v59;
    v38 = v59[4];
    v39 = v54;
    v38(v54, v23, v33);
    v40 = v50;
    v38((v39 + *(v50 + 48)), v21, v33);
    v41 = v56;
    sub_1CFDA6A74(v39, v56, sub_1CFDA7460);
    v58 = *(v40 + 48);
    v42 = v55;
    v38(v55, v41, v33);
    v43 = v37[1];
    v43(v41 + v58, v33);
    sub_1CFDE49B0(v39, v41);
    v44 = *(v40 + 48);
    v45 = v53;
    v38((v42 + *(v53 + 36)), (v41 + v44), v33);
    v43(v41, v33);
    (v52)(v42, 0, 1, v45);
    v46 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
    swift_beginAccess();
    sub_1CFE115E4(v42, v29 + v46, &qword_1EDC32540, sub_1CFDA68BC);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SleepingSampleDaySummaryQueryConfiguration.encode(with:)(NSCoder with)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1CFE307E4();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1CFDA631C(0, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - v13;
  v15 = MEMORY[0x1E6969AE8];
  sub_1CFDA631C(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v41 - v18;
  v46.receiver = v1;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, sel_encodeWithCoder_, with.super.isa);
  v20 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  v21 = v1;
  sub_1CFDA6208(v1 + v20, v19, &qword_1EDC32910, v15);
  v22 = sub_1CFE304B4();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v19, 1, v22) != 1)
  {
    v24 = sub_1CFE30454();
    (*(v23 + 8))(v19, v22);
  }

  v25 = v7;
  v26 = sub_1CFE308F4();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v26];
  swift_unknownObjectRelease();

  v27 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  v28 = v21;
  swift_beginAccess();
  sub_1CFDA6208(v21 + v27, v14, &qword_1EDC32540, sub_1CFDA68BC);
  sub_1CFDA68BC();
  v30 = v29;
  v31 = *(v29 - 8);
  v32 = *(v31 + 48);
  isa = with.super.isa;
  v41[1] = v31 + 48;
  v42 = v32;
  if (v32(v14, 1, v29) == 1)
  {
    __break(1u);
  }

  else
  {
    v33 = v43;
    v34 = v25;
    v41[0] = *(v43 + 16);
    (v41[0])(v25, v14, v4);
    sub_1CFE119D4(v14, sub_1CFDA68BC);
    v35 = sub_1CFE307A4();
    v36 = *(v33 + 8);
    v36(v34, v4);
    v37 = sub_1CFE308F4();
    [(objc_class *)isa encodeInteger:v35 forKey:v37];

    v38 = v44;
    sub_1CFDA6208(v28 + v27, v44, &qword_1EDC32540, sub_1CFDA68BC);
    if (v42(v38, 1, v30) != 1)
    {
      (v41[0])(v34, v38 + *(v30 + 36), v4);
      sub_1CFE119D4(v38, sub_1CFDA68BC);
      v39 = sub_1CFE307A4();
      v36(v34, v4);
      v40 = sub_1CFE308F4();
      [(objc_class *)isa encodeInteger:v39 forKey:v40];

      return;
    }
  }

  __break(1u);
}

id _s13HealthBalance29SleepingSampleDaySummaryQueryCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CFE113A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = *v6;
  v13 = *MEMORY[0x1E69E7D40];
  v14 = &v6[qword_1EDC32800];
  *v14 = 0;
  v14[1] = 0;
  v15 = qword_1EDC327F0;
  v16 = *((v13 & v12) + 0x50);
  *&v6[v15] = sub_1CFE30AA4();
  v17 = &v6[qword_1EDC36C30];
  *v17 = 0;
  *(v17 + 1) = 0;
  sub_1CFDA6A74(a1, &v6[qword_1EDC36C20], sub_1CFDA68BC);
  v18 = qword_1EDC36C28;
  v19 = sub_1CFE304B4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v6[v18], a2, v19);
  v6[qword_1EDC36C18] = a3;
  v21 = *v14;
  v22 = v14[1];
  *v14 = a4;
  v14[1] = a5;

  sub_1CFDAC3D4(v21);
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);
  v23 = sub_1CFE30A74();
  v27.receiver = v6;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, sel_initWithQueryDescriptors_, v23);

  (*(v20 + 8))(a2, v19);
  sub_1CFE119D4(a1, sub_1CFDA68BC);
  return v24;
}

uint64_t type metadata accessor for SleepingSampleDaySummaryQueryConfiguration()
{
  result = qword_1EDC32590;
  if (!qword_1EDC32590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFE115E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDA631C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1CFE116A4()
{
  if (!qword_1EDC32558)
  {
    type metadata accessor for SleepingSampleAggregateDaySummary();
    sub_1CFDA7954(&qword_1EDC32730, type metadata accessor for SleepingSampleAggregateDaySummary);
    sub_1CFDA7954(&qword_1EDC32748, type metadata accessor for SleepingSampleAggregateDaySummary);
    sub_1CFDA7954(&qword_1EDC32740, type metadata accessor for SleepingSampleAggregateDaySummary);
    v0 = sub_1CFE306D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC32558);
    }
  }
}

void sub_1CFE117A8()
{
  if (!qword_1EDC32568)
  {
    type metadata accessor for SleepingSampleDaySummary();
    sub_1CFDA7954(&qword_1EDC32810, type metadata accessor for SleepingSampleDaySummary);
    sub_1CFDA7954(&qword_1EDC32828, type metadata accessor for SleepingSampleDaySummary);
    sub_1CFDA7954(&qword_1EDC32820, type metadata accessor for SleepingSampleDaySummary);
    v0 = sub_1CFE306D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC32568);
    }
  }
}

void sub_1CFE118AC()
{
  v1 = *(sub_1CFE30354() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 32);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CFE0FA54(v4, v0 + v2, v5, v6);
}

uint64_t sub_1CFE11978(uint64_t a1, unint64_t *a2)
{
  sub_1CFDB73D8(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFE119D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFE11A38()
{
  sub_1CFDA68BC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1CFE304B4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_1CFE11B74()
{
  sub_1CFDA631C(319, &qword_1EDC32910, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1CFDA631C(319, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFE11C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDA631C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DayIndex.formatted(dateStyle:gregorianCalendar:)()
{
  v0 = sub_1CFE30284();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFE30314();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307D4();
  sub_1CFE30264();
  v10 = sub_1CFE30304();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t static SleepingSampleAggregate.empty(in:calendar:)(uint64_t a1)
{
  sub_1CFDE4C00(0, &qword_1EDC32548, MEMORY[0x1E696B418]);
  v93 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v92 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v75 - v6;
  sub_1CFDA7AD0();
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v75 - v13;
  v99 = sub_1CFE30404();
  v109 = *(v99 - 8);
  v15 = v109[8];
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1CFE304B4();
  v103 = *(v97 - 8);
  v17 = *(v103 + 64);
  v18 = MEMORY[0x1EEE9AC00](v97);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v75 - v21;
  v22 = type metadata accessor for SleepingSampleAggregate();
  v94 = *(v22 - 8);
  v95 = v22;
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CFE307E4();
  v108 = *(v26 - 8);
  v27 = *(v108 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v75 - v31;
  v90 = v8;
  v33 = *(v8 + 36);
  v89 = sub_1CFDA799C(&unk_1EDC31E78, MEMORY[0x1E696B418]);
  sub_1CFE30CA4();
  v34 = v111;
  result = MEMORY[0x1E69E7CC0];
  if (v111)
  {
    v111 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4938(0, v34 & ~(v34 >> 63), 0);
    v107 = v111;
    v36 = v108;
    v104 = *(v108 + 16);
    v105 = v108 + 16;
    result = v104(v32, a1, v26);
    if ((v34 & 0x8000000000000000) == 0)
    {
      v37 = 0;
      v88 = (v109 + 13);
      v87 = (v109 + 1);
      v86 = *MEMORY[0x1E6969868];
      v83 = (v103 + 32);
      v82 = (v103 + 16);
      v109 = (v36 + 8);
      v81 = (v103 + 8);
      v103 = v36 + 32;
      v85 = a1;
      v79 = v20;
      v78 = v25;
      v77 = v14;
      v76 = v32;
      v84 = v33;
      v75 = v34;
      v80 = v30;
      while (!__OFADD__(v37, 1))
      {
        v100 = v37 + 1;
        v101 = v37;
        v39 = v98;
        v38 = v99;
        (*v88)(v98, v86, v99);
        sub_1CFE30414();
        (*v87)(v39, v38);
        sub_1CFE304C4();
        v40 = sub_1CFE304E4();
        result = (*(*(v40 - 8) + 48))(v14, 1, v40);
        if (result == 1)
        {
          goto LABEL_19;
        }

        sub_1CFE304A4();
        v42 = v96;
        v41 = v97;
        (*v83)(v96, v20, v97);
        v43 = v104;
        v104(v30, v32, v26);
        v44 = v32;
        v45 = v95;
        (*v82)(&v25[v95[5]], v42, v41);
        v46 = v45[7];
        v47 = sub_1CFE30014();
        (*(*(v47 - 8) + 56))(&v25[v46], 1, 1, v47);
        v48 = v45[8];
        v49 = sub_1CFE30314();
        (*(*(v49 - 8) + 56))(&v25[v48], 1, 1, v49);
        v43(v25, v30, v26);
        v108 = *v109;
        (v108)(v30, v26);
        v50 = v45[6];
        sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
        (*(*(v51 - 8) + 56))(&v25[v50], 1, 1, v51);
        v25[v45[9]] = 0;
        (*v81)(v42, v41);
        v52 = v107;
        v111 = v107;
        v54 = *(v107 + 16);
        v53 = *(v107 + 24);
        v55 = v26;
        if (v54 >= v53 >> 1)
        {
          sub_1CFDC4938(v53 > 1, v54 + 1, 1);
          v52 = v111;
        }

        *(v52 + 16) = v54 + 1;
        v56 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v107 = v52;
        sub_1CFE09E34(v25, v52 + v56 + *(v94 + 72) * v54);
        v57 = *v103;
        (*v103)(v30, v44, v26);
        v58 = sub_1CFDA799C(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
        v59 = v85;
        v60 = v84;
        result = sub_1CFE30874();
        if ((result & 1) == 0)
        {
          goto LABEL_15;
        }

        v61 = v91;
        v102 = v58;
        v62 = v104;
        v104(v91, v59, v26);
        v63 = v106;
        v64 = v60;
        v65 = v93;
        v62(v61 + *(v93 + 48), v59 + v64, v26);
        v66 = MEMORY[0x1E696B418];
        v67 = v92;
        sub_1CFE17D3C(v61, v92, &qword_1EDC32548, MEMORY[0x1E696B418], "lower upper ", sub_1CFDE4C00);
        v68 = *(v65 + 48);
        v57(v63, v67, v26);
        v69 = v57;
        v70 = v108;
        (v108)(v67 + v68, v55);
        sub_1CFE17C64(v61, v67, &qword_1EDC32548, v66, "lower upper ", sub_1CFDE4C00);
        v69(&v63[*(v90 + 36)], (v67 + *(v65 + 48)), v55);
        v71 = v67;
        v30 = v80;
        v70(v71, v55);
        result = sub_1CFE30874();
        if ((result & 1) == 0)
        {
          goto LABEL_16;
        }

        v26 = v55;
        v72 = v106;
        v73 = sub_1CFE30854();
        result = sub_1CFDA7A74(v72);
        if ((v73 & 1) == 0)
        {
          goto LABEL_17;
        }

        v110 = 1;
        v32 = v76;
        sub_1CFE30C94();
        v74 = v108;
        result = (v108)(v30, v55);
        v37 = v101 + 1;
        v14 = v77;
        v20 = v79;
        v25 = v78;
        if (v100 == v75)
        {
          v74(v32, v55);
          return v107;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t static SleepingSampleAggregate.empty(on:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v38 = MEMORY[0x1E6969530];
  v4 = MEMORY[0x1E69E6720];
  v36 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v31 - v7;
  v37 = MEMORY[0x1E6968130];
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v4);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v32 = &v31 - v10;
  v12 = sub_1CFE304B4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CFE307E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 16);
  v22(v21, v33, v17);
  (*(v13 + 16))(v16, v34, v12);
  v23 = sub_1CFE30014();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = sub_1CFE30314();
  v25 = v35;
  (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
  v22(a3, v21, v17);
  v26 = type metadata accessor for SleepingSampleAggregate();
  (*(v13 + 32))(&a3[v26[5]], v16, v12);
  (*(v18 + 8))(v21, v17);
  v27 = v26[6];
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v28 - 8) + 56))(&a3[v27], 1, 1, v28);
  v29 = v36;
  sub_1CFE17C64(v32, &a3[v26[7]], &qword_1EDC32C78, v37, v36, sub_1CFE17CD8);
  result = sub_1CFE17C64(v25, &a3[v26[8]], &qword_1EDC32C70, v38, v29, sub_1CFE17CD8);
  a3[v26[9]] = 0;
  return result;
}

id static SleepingSampleAggregate.asleep(on:for:ending:created:calendar:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10)
{
  v148 = a8;
  v149 = a7;
  v150 = a6;
  v162 = a5;
  v163 = a4;
  v160 = a1;
  v169 = sub_1CFE30434();
  v13 = *(v169 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v168 = v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1CFE30444();
  v176 = *(v167 - 8);
  v16 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1CFE30424();
  v177 = *(v175 - 8);
  v18 = v177[8];
  MEMORY[0x1EEE9AC00](v175);
  v165 = v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v157 = v118 - v23;
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v20);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v156 = v118 - v26;
  v161 = sub_1CFE30134();
  v174 = *(v161 - 8);
  v27 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v159 = v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1CFE30314();
  v147 = *(v158 - 8);
  v29 = *(v147 + 64);
  v30 = MEMORY[0x1EEE9AC00](v158);
  v118[1] = v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v118[0] = v118 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v151 = v118 - v34;
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v20);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v164 = v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v146 = v118 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v172 = (v118 - v41);
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v20);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v170 = v118 - v44;
  v173 = sub_1CFE304B4();
  v155 = *(v173 - 8);
  v45 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v154 = v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CFE307E4();
  v153 = *(v47 - 8);
  v48 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v152 = v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = objc_opt_self();
  v51 = objc_opt_self();
  result = [v51 minuteUnit];
  v53 = 60 * a2;
  if ((a2 * 60) >> 64 != (60 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v54 = __OFADD__(v53, a3);
  v55 = v53 + a3;
  if (v54)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v56 = result;
  v145 = a9;
  v57 = [v50 quantityWithUnit:result doubleValue:v55];

  v58 = [v51 secondUnit];
  [v57 doubleValueForUnit_];
  v60 = v59;

  v61 = *(v153 + 16);
  v143 = v47;
  v140 = v153 + 16;
  v139 = v61;
  v61(v152, v160, v47);
  v62 = v155;
  v63 = *(v155 + 16);
  v171 = a10;
  v64 = v173;
  v142 = v155 + 16;
  v141 = v63;
  v63(v154, a10, v173);
  v65 = [v51 secondUnit];
  v138 = [v50 quantityWithUnit:v65 doubleValue:v60];

  v66 = objc_opt_self();
  v67 = sub_1CFE307A4();
  v68 = sub_1CFE30454();
  v137 = v66;
  v69 = [v66 hk:v67 sleepDayStartForMorningIndex:v68 calendar:?];

  sub_1CFE302F4();
  v70 = *(v62 + 56);
  v71 = v13;
  v136 = v62 + 56;
  v135 = v70;
  v70(v156, 1, 1, v64);
  v72 = sub_1CFE304E4();
  v73 = *(v72 - 8);
  v74 = *(v73 + 56);
  v134 = v72;
  v133 = v74;
  v132 = v73 + 56;
  (v74)(v157, 1, 1);
  v75 = v159;
  sub_1CFE30124();
  v76 = v177[13];
  v77 = v165;
  v131 = *MEMORY[0x1E69698A0];
  v130 = v177 + 13;
  v129 = v76;
  v76(v165);
  v78 = v176;
  v79 = *(v176 + 104);
  v80 = v166;
  v128 = *MEMORY[0x1E69699C8];
  v81 = v167;
  v127 = v176 + 104;
  v126 = v79;
  v79(v166);
  v82 = *(v71 + 104);
  v83 = v168;
  v125 = *MEMORY[0x1E6969998];
  v84 = v169;
  v124 = v71 + 104;
  v123 = v82;
  v82(v168);
  v85 = v151;
  sub_1CFE30484();
  v86 = *(v71 + 8);
  v144 = v71 + 8;
  v122 = v86;
  v86(v83, v84);
  v87 = *(v78 + 8);
  v176 = v78 + 8;
  v121 = v87;
  v87(v80, v81);
  v88 = v177[1];
  ++v177;
  v120 = v88;
  v88(v77, v175);
  v89 = *(v174 + 8);
  v174 += 8;
  v119 = v89;
  v89(v75, v161);
  v90 = v147;
  v91 = *(v147 + 8);
  v92 = v158;
  v91(v85, v158);
  v93 = v146;
  sub_1CFE17D3C(v172, v146, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  v94 = 1;
  if ((*(v90 + 48))(v93, 1, v92) != 1)
  {
    (*(v90 + 32))(v85, v93, v92);
    v95 = v118[0];
    (*(v90 + 16))(v118[0], v85, v92);
    sub_1CFE302C4();
    sub_1CFE2FFF4();
    v91(v95, v92);
    v91(v85, v92);
    v94 = 0;
  }

  sub_1CFE0691C(v172);
  v96 = sub_1CFE30014();
  (*(*(v96 - 8) + 56))(v170, v94, 1, v96);
  v172 = v91;
  v97 = sub_1CFE307A4();
  v98 = sub_1CFE30454();
  v99 = [v137 hk:v97 sleepDayStartForMorningIndex:v98 calendar:?];

  sub_1CFE302F4();
  v135(v156, 1, 1, v173);
  v133(v157, 1, 1, v134);
  v100 = v159;
  sub_1CFE30124();
  v101 = v165;
  v102 = v175;
  v129(v165, v131, v175);
  v104 = v166;
  v103 = v167;
  v126(v166, v128, v167);
  v105 = v85;
  v107 = v168;
  v106 = v169;
  v123(v168, v125, v169);
  sub_1CFE30484();
  v122(v107, v106);
  v121(v104, v103);
  v120(v101, v102);
  v119(v100, v161);
  v172(v105, v158);
  v108 = v145;
  v109 = v152;
  v110 = v143;
  v139(v145, v152, v143);
  v111 = type metadata accessor for SleepingSampleAggregate();
  v112 = v154;
  v113 = v173;
  v141(v108 + v111[5], v154, v173);
  v114 = v111[6];
  sub_1CFDAD5CC();
  v115 = v138;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v116 - 8) + 56))(v108 + v114, 0, 1, v116);
  (*(v155 + 8))(v112, v113);
  (*(v153 + 8))(v109, v110);

  v117 = MEMORY[0x1E69E6720];
  sub_1CFE17C64(v170, v108 + v111[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  result = sub_1CFE17C64(v164, v108 + v111[8], &qword_1EDC32C70, MEMORY[0x1E6969530], v117, sub_1CFE17CD8);
  *(v108 + v111[9]) = 4;
  return result;
}

uint64_t static SleepingSampleAggregate.asleep(on:seconds:ending:created:calendar:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v158 = a6;
  v159 = a5;
  v160 = a4;
  v162 = a3;
  v165 = a2;
  v161 = a8;
  v171 = sub_1CFE30434();
  v179 = *(v171 - 8);
  v12 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1CFE30444();
  v178 = *(v169 - 8);
  v14 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1CFE30424();
  v180 = *(v177 - 8);
  v16 = v180[8];
  MEMORY[0x1EEE9AC00](v177);
  v167 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v118 - v21;
  v142 = v18;
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v18);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v118 - v25;
  v164 = sub_1CFE30134();
  v176 = *(v164 - 8);
  v27 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v175 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1CFE30314();
  v143 = *(v172 - 8);
  v29 = *(v143 + 64);
  v30 = MEMORY[0x1EEE9AC00](v172);
  v120 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v119 = &v118 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v118 - v34;
  v144 = MEMORY[0x1E6969530];
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v18);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v166 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v141 = &v118 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v137 = &v118 - v42;
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v18);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v173 = &v118 - v45;
  v46 = sub_1CFE304B4();
  v47 = *(v46 - 8);
  v48 = v47[8];
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1CFE307E4();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v55;
  v56 = *(v55 + 16);
  v150 = v54;
  v152 = v57;
  v147 = v55 + 16;
  v146 = v56;
  v56();
  v58 = v47[2];
  v153 = v50;
  v174 = a7;
  v149 = v47 + 2;
  v148 = v58;
  v58(v50, a7, v46);
  v59 = objc_opt_self();
  v60 = [objc_opt_self() secondUnit];
  v145 = [v59 quantityWithUnit:v60 doubleValue:a9];

  v61 = objc_opt_self();
  v157 = a1;
  v62 = sub_1CFE307A4();
  v63 = sub_1CFE30454();
  v140 = v61;
  v64 = [v61 hk:v62 sleepDayStartForMorningIndex:v63 calendar:?];

  v65 = v35;
  sub_1CFE302F4();

  v154 = v47;
  v66 = v47[7];
  v163 = v46;
  v139 = v47 + 7;
  v138 = v66;
  v66(v26, 1, 1, v46);
  v67 = sub_1CFE304E4();
  v68 = *(v67 - 8);
  v69 = *(v68 + 56);
  v136 = v67;
  v135 = v69;
  v134 = v68 + 56;
  (v69)(v22, 1, 1);
  v155 = v26;
  v156 = v22;
  sub_1CFE30124();
  v70 = v180[13];
  v71 = v167;
  v133 = *MEMORY[0x1E69698A0];
  v132 = v180 + 13;
  v131 = v70;
  v70(v167);
  v72 = v178;
  v73 = *(v178 + 104);
  v74 = v168;
  v130 = *MEMORY[0x1E69699C8];
  v75 = v169;
  v129 = v178 + 104;
  v128 = v73;
  v73(v168);
  v76 = v179;
  v77 = *(v179 + 104);
  v78 = v170;
  v127 = *MEMORY[0x1E6969998];
  v79 = v171;
  v126 = v179 + 104;
  v125 = v77;
  v77(v170);
  v80 = v137;
  sub_1CFE30484();
  v81 = *(v76 + 8);
  v179 = v76 + 8;
  v124 = v81;
  v81(v78, v79);
  v82 = v72;
  v83 = v143;
  v84 = *(v82 + 8);
  v85 = v75;
  v86 = v141;
  v178 = v82 + 8;
  v123 = v84;
  v84(v74, v85);
  v87 = v180[1];
  ++v180;
  v122 = v87;
  v87(v71, v177);
  v88 = *(v176 + 8);
  v176 += 8;
  v121 = v88;
  v88(v175, v164);
  v89 = *(v83 + 8);
  v90 = v172;
  v89(v65, v172);
  sub_1CFE17D3C(v80, v86, &qword_1EDC32C70, v144, v142, sub_1CFE17CD8);
  v91 = (*(v83 + 48))(v86, 1, v90);
  v92 = 1;
  if (v91 != 1)
  {
    v93 = v86;
    v94 = v172;
    (*(v83 + 32))(v65, v93, v172);
    v95 = v119;
    (*(v83 + 16))(v119, v65, v94);
    sub_1CFE302C4();
    sub_1CFE2FFF4();
    v89(v95, v94);
    v89(v65, v94);
    v92 = 0;
  }

  sub_1CFE0691C(v80);
  v96 = sub_1CFE30014();
  (*(*(v96 - 8) + 56))(v173, v92, 1, v96);
  v97 = sub_1CFE307A4();
  v98 = sub_1CFE30454();
  v99 = [v140 hk:v97 sleepDayStartForMorningIndex:v98 calendar:?];

  sub_1CFE302F4();
  v138(v155, 1, 1, v163);
  v135(v156, 1, 1, v136);
  v100 = v175;
  sub_1CFE30124();
  v101 = v167;
  v165 = v89;
  v102 = v177;
  v131(v167, v133, v177);
  v104 = v168;
  v103 = v169;
  v128(v168, v130, v169);
  v106 = v170;
  v105 = v171;
  v125(v170, v127, v171);
  sub_1CFE30484();
  v124(v106, v105);
  v123(v104, v103);
  v122(v101, v102);
  v121(v100, v164);
  v165(v65, v172);
  v107 = v161;
  v108 = v150;
  v109 = v152;
  (v146)(v161, v150, v152);
  v110 = type metadata accessor for SleepingSampleAggregate();
  v111 = v153;
  v112 = v163;
  v148(v107 + v110[5], v153, v163);
  v113 = v110[6];
  sub_1CFDAD5CC();
  v114 = v145;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v115 - 8) + 56))(v107 + v113, 0, 1, v115);

  (v154[1])(v111, v112);
  (*(v151 + 8))(v108, v109);
  v116 = MEMORY[0x1E69E6720];
  sub_1CFE17C64(v173, v107 + v110[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  result = sub_1CFE17C64(v166, v107 + v110[8], &qword_1EDC32C70, MEMORY[0x1E6969530], v116, sub_1CFE17CD8);
  *(v107 + v110[9]) = 4;
  return result;
}

uint64_t sub_1CFE15024@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v109 = a2;
  v110 = a1;
  v116 = a4;
  v7 = sub_1CFE30434();
  v114 = *(v7 - 8);
  v115 = v7;
  v8 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1CFE30444();
  v119 = *(v108 - 8);
  v10 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v101 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1CFE30424();
  v120 = *(v118 - 8);
  v12 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v92 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v84 - v17;
  v93 = v14;
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v14);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v84 - v20;
  v22 = sub_1CFE30134();
  v102 = *(v22 - 8);
  v103 = v22;
  v23 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1CFE30314();
  v97 = *(v95 - 8);
  v26 = *(v97 + 64);
  v27 = MEMORY[0x1EEE9AC00](v95);
  v85 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v84 - v29;
  v100 = MEMORY[0x1E6969530];
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v14);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v90 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v88 = &v84 - v35;
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v14);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v117 = &v84 - v38;
  v39 = sub_1CFE304B4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v84 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CFE307E4();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v104 = &v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v47;
  v48 = *(v47 + 16);
  v106 = v49;
  v99 = v47 + 16;
  v98 = v48;
  v48();
  v50 = *(v40 + 16);
  v107 = v43;
  v87 = a3;
  v96 = v40 + 16;
  v94 = v50;
  v50(v43, a3, v39);
  v51 = objc_opt_self();
  v52 = [objc_opt_self() _countPerMinuteUnit];
  v89 = [v51 quantityWithUnit:v52 doubleValue:a5];

  v53 = objc_opt_self();
  v54 = sub_1CFE307A4();
  v55 = sub_1CFE30454();
  v56 = [v53 hk:v54 sleepDayStartForMorningIndex:v55 calendar:?];

  sub_1CFE302F4();
  v112 = v40;
  v113 = v39;
  v57 = 1;
  (*(v40 + 56))(v21, 1, 1, v39);
  v58 = sub_1CFE304E4();
  (*(*(v58 - 8) + 56))(v91, 1, 1, v58);
  v86 = v25;
  sub_1CFE30124();
  v59 = v92;
  (*(v120 + 104))(v92, *MEMORY[0x1E69698A0], v118);
  v60 = v101;
  v61 = v108;
  (*(v119 + 104))(v101, *MEMORY[0x1E69699C8], v108);
  v62 = v114;
  v63 = v115;
  v64 = v111;
  (*(v114 + 104))(v111, *MEMORY[0x1E6969998], v115);
  v65 = v88;
  v66 = v59;
  sub_1CFE30484();
  v67 = v62;
  v68 = v95;
  (*(v67 + 8))(v64, v63);
  v69 = v97;
  v70 = v90;
  (*(v119 + 8))(v60, v61);
  (*(v120 + 8))(v66, v118);
  (*(v102 + 8))(v86, v103);
  v71 = *(v69 + 8);
  v71(v30, v68);
  sub_1CFE17D3C(v65, v70, &qword_1EDC32C70, v100, v93, sub_1CFE17CD8);
  if ((*(v69 + 48))(v70, 1, v68) != 1)
  {
    (*(v69 + 32))(v30, v70, v68);
    (*(v69 + 16))(v85, v30, v68);
    sub_1CFE2FFF4();
    v71(v30, v68);
    v57 = 0;
  }

  sub_1CFE0691C(v65);
  v72 = sub_1CFE30014();
  v73 = v117;
  (*(*(v72 - 8) + 56))(v117, v57, 1, v72);
  v74 = type metadata accessor for SleepingSampleAggregate();
  v75 = v116;
  (*(v69 + 56))(v116 + v74[8], 1, 1, v68);
  v76 = v104;
  v77 = v106;
  (v98)(v75, v104, v106);
  v78 = v107;
  v79 = v113;
  v94(v75 + v74[5], v107, v113);
  v80 = v74[6];
  sub_1CFDAD5CC();
  v81 = v89;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v82 - 8) + 56))(v75 + v80, 0, 1, v82);
  (*(v112 + 8))(v78, v79);
  (*(v105 + 8))(v76, v77);

  result = sub_1CFE17C64(v73, v75 + v74[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  *(v75 + v74[9]) = 4;
  return result;
}

uint64_t static SleepingSampleAggregate.spO2(on:pct:time:calendar:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v113 = a2;
  v114 = a1;
  v120 = a4;
  v7 = sub_1CFE30434();
  v118 = *(v7 - 8);
  v119 = v7;
  v8 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1CFE30444();
  v122 = *(v112 - 8);
  v10 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v105 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1CFE30424();
  v123 = *(v121 - 8);
  v12 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v95 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v87 - v17;
  v97 = v14;
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v14);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v87 - v21;
  v23 = sub_1CFE30134();
  v106 = *(v23 - 8);
  v107 = v23;
  v24 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1CFE30314();
  v100 = *(v104 - 8);
  v27 = *(v100 + 64);
  v28 = MEMORY[0x1EEE9AC00](v104);
  v88 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v90 = &v87 - v30;
  v103 = MEMORY[0x1E6969530];
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v14);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v96 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v93 = &v87 - v35;
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v14);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v92 = &v87 - v38;
  v39 = sub_1CFE304B4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CFE307E4();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v108 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v47;
  v48 = *(v47 + 16);
  v110 = v49;
  v102 = v47 + 16;
  v101 = v48;
  v48();
  v50 = *(v40 + 16);
  v111 = v43;
  v91 = a3;
  v99 = v40 + 16;
  v98 = v50;
  v50(v43, a3, v39);
  v51 = objc_opt_self();
  v52 = [objc_opt_self() percentUnit];
  v94 = [v51 quantityWithUnit:v52 doubleValue:a5 / 100.0];

  v53 = objc_opt_self();
  v54 = sub_1CFE307A4();
  v55 = sub_1CFE30454();
  v56 = [v53 hk:v54 sleepDayStartForMorningIndex:v55 calendar:?];

  sub_1CFE302F4();
  v116 = v40;
  v117 = v39;
  v57 = 1;
  (*(v40 + 56))(v22, 1, 1, v39);
  v58 = sub_1CFE304E4();
  (*(*(v58 - 8) + 56))(v18, 1, 1, v58);
  v89 = v26;
  sub_1CFE30124();
  v59 = v95;
  (*(v123 + 104))(v95, *MEMORY[0x1E69698A0], v121);
  v60 = v105;
  v61 = v112;
  (*(v122 + 104))(v105, *MEMORY[0x1E69699C8], v112);
  v62 = v118;
  v63 = v119;
  v64 = v115;
  (*(v118 + 104))(v115, *MEMORY[0x1E6969998], v119);
  v65 = v93;
  v66 = v90;
  v67 = v59;
  sub_1CFE30484();
  v68 = v63;
  v69 = v92;
  (*(v62 + 8))(v64, v68);
  v70 = v100;
  v71 = v66;
  v72 = v61;
  v73 = v104;
  (*(v122 + 8))(v60, v72);
  v74 = v96;
  (*(v123 + 8))(v67, v121);
  (*(v106 + 8))(v89, v107);
  v75 = *(v70 + 8);
  v75(v71, v73);
  sub_1CFE17D3C(v65, v74, &qword_1EDC32C70, v103, v97, sub_1CFE17CD8);
  if ((*(v70 + 48))(v74, 1, v73) != 1)
  {
    (*(v70 + 32))(v71, v74, v73);
    (*(v70 + 16))(v88, v71, v73);
    sub_1CFE2FFF4();
    v75(v71, v73);
    v57 = 0;
  }

  sub_1CFE0691C(v65);
  v76 = sub_1CFE30014();
  (*(*(v76 - 8) + 56))(v69, v57, 1, v76);
  v77 = type metadata accessor for SleepingSampleAggregate();
  v78 = v120;
  (*(v70 + 56))(v120 + v77[8], 1, 1, v73);
  v79 = v108;
  v80 = v110;
  (v101)(v78, v108, v110);
  v81 = v111;
  v82 = v117;
  v98(v78 + v77[5], v111, v117);
  v83 = v77[6];
  sub_1CFDAD5CC();
  v84 = v94;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v85 - 8) + 56))(v78 + v83, 0, 1, v85);

  (*(v116 + 8))(v81, v82);
  (*(v109 + 8))(v79, v80);
  result = sub_1CFE17C64(v69, v78 + v77[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  *(v78 + v77[9]) = 4;
  return result;
}

uint64_t static SleepingSampleAggregate.wtr(on:degC:start:end:calendar:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v168 = a5;
  v167 = a4;
  v185 = a2;
  v186 = a3;
  v182 = a7;
  v192 = sub_1CFE30434();
  v199 = *(v192 - 8);
  v11 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v191 = v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1CFE30444();
  v198 = *(v190 - 8);
  v13 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v189 = v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFE30424();
  v16 = *(v15 - 8);
  v200 = v15;
  v201 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v188 = v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = (v143 - v22);
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v19);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v143 - v26;
  v187 = sub_1CFE30134();
  v197 = *(v187 - 8);
  v28 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v196 = v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v19);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v165 = v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v169 = v143 - v34;
  v184 = sub_1CFE30314();
  v194 = *(v184 - 8);
  v35 = *(v194 + 64);
  v36 = MEMORY[0x1EEE9AC00](v184);
  v144 = v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v145 = v143 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = v143 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v183 = v143 - v43;
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v19);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v181 = v143 - v46;
  v47 = sub_1CFE304B4();
  v48 = *(v47 - 8);
  v49 = v48[8];
  MEMORY[0x1EEE9AC00](v47);
  v51 = v143 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CFE307E4();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = v143 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v56;
  v57 = *(v56 + 16);
  v176 = v55;
  v178 = v58;
  v175 = v56 + 16;
  v174 = v57;
  v57();
  v59 = v48[2];
  v179 = v51;
  v195 = a6;
  v173 = v48 + 2;
  v172 = v59;
  v59(v51, a6, v47);
  v60 = objc_opt_self();
  v61 = [objc_opt_self() _changeInDegreeCelsiusUnit];
  v171 = [v60 quantityWithUnit:v61 doubleValue:a8];

  v62 = objc_opt_self();
  v166 = a1;
  v63 = sub_1CFE307A4();
  v64 = sub_1CFE30454();
  v162 = v62;
  v65 = [v62 hk:v63 sleepDayStartForMorningIndex:v64 calendar:?];

  v66 = v42;
  sub_1CFE302F4();

  v180 = v48;
  v67 = v48[7];
  v193 = v47;
  v161 = v48 + 7;
  v160 = v67;
  v67(v27, 1, 1, v47);
  v68 = sub_1CFE304E4();
  v69 = *(v68 - 8);
  v70 = *(v69 + 56);
  v159 = v68;
  v158 = v70;
  v157 = v69 + 56;
  (v70)(v23, 1, 1);
  v163 = v27;
  v164 = v23;
  sub_1CFE30124();
  v71 = *(v201 + 104);
  v72 = v188;
  v155 = *MEMORY[0x1E69698A0];
  v156 = v201 + 104;
  v154 = v71;
  v71(v188);
  v73 = v198;
  v74 = *(v198 + 104);
  v75 = v189;
  v152 = *MEMORY[0x1E69699C8];
  v76 = v190;
  v153 = v198 + 104;
  v151 = v74;
  v74(v189);
  v77 = v199;
  v78 = *(v199 + 104);
  v79 = v191;
  v149 = *MEMORY[0x1E6969998];
  v80 = v192;
  v150 = v199 + 104;
  v148 = v78;
  v78(v191);
  v81 = v169;
  v82 = v72;
  v83 = v75;
  v84 = v79;
  sub_1CFE30484();
  v85 = v81;
  v86 = v77 + 8;
  v87 = *(v77 + 8);
  v199 = v86;
  v87(v84, v80);
  v88 = *(v73 + 8);
  v89 = v83;
  v90 = v194;
  v198 = v73 + 8;
  v88(v89, v76);
  v91 = *(v201 + 8);
  v201 += 8;
  v91(v82, v200);
  v92 = *(v197 + 8);
  v197 += 8;
  v92(v196, v187);
  v93 = v90 + 8;
  v94 = *(v90 + 8);
  v170 = v66;
  v95 = v66;
  v96 = v184;
  v94(v95, v184);
  v97 = *(v90 + 48);
  v98 = v96;
  v147 = v90 + 48;
  v146 = v97;
  if (v97(v85, 1, v96) == 1)
  {
    sub_1CFE0691C(v85);
    _s5ErrorOMa();
    sub_1CFDA799C(&qword_1EC509850, _s5ErrorOMa);
    v99 = swift_allocError();
    v100 = v186;
    *v101 = v185;
    v101[1] = v100;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v102 = v181;
    v103 = v98;
LABEL_8:

    v124 = 1;
    goto LABEL_9;
  }

  v104 = *(v90 + 32);
  v143[1] = v90 + 32;
  v143[0] = v104;
  v104(v183, v85, v96);
  v105 = sub_1CFE307A4();
  v106 = sub_1CFE30454();
  v107 = [v162 hk:v105 sleepDayStartForMorningIndex:v106 calendar:?];

  sub_1CFE302F4();
  v160(v163, 1, 1, v193);
  v158(v164, 1, 1, v159);
  v108 = v196;
  sub_1CFE30124();
  v109 = v188;
  v154(v188, v155, v200);
  v185 = v93;
  v169 = v92;
  v110 = v189;
  v166 = v91;
  v111 = v190;
  v151(v189, v152, v190);
  v186 = v94;
  v113 = v191;
  v112 = v192;
  v148(v191, v149, v192);
  v164 = v88;
  v114 = v165;
  v115 = v170;
  sub_1CFE30484();
  v116 = v113;
  v117 = v186;
  v87(v116, v112);
  v164(v110, v111);
  v166(v109, v200);
  (v169)(v108, v187);
  v103 = v184;
  v117(v115, v184);
  if (v146(v114, 1, v103) == 1)
  {
    sub_1CFE0691C(v114);
    _s5ErrorOMa();
    sub_1CFDA799C(&qword_1EC509850, _s5ErrorOMa);
    v99 = swift_allocError();
    v118 = v168;
    *v119 = v167;
    v119[1] = v118;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v117(v183, v103);
    v102 = v181;
    v90 = v194;
    goto LABEL_8;
  }

  v120 = v145;
  (v143[0])(v145, v114, v103);
  sub_1CFDA799C(&qword_1EDC32030, MEMORY[0x1E6969530]);
  if ((sub_1CFE30874() & 1) == 0)
  {
    v201 = _s5ErrorOMa();
    sub_1CFDA799C(&qword_1EC509850, _s5ErrorOMa);
    v99 = swift_allocError();
    v126 = v125;
    sub_1CFDE4C00(0, &qword_1EC509858, MEMORY[0x1E6969530]);
    v128 = *(v127 + 48);
    v90 = v194;
    v129 = *(v194 + 16);
    v130 = v183;
    v129(v126, v183, v103);
    v129(v126 + v128, v120, v103);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v131 = v186;
    v186(v120, v103);
    v131(v130, v103);
    v102 = v181;
    goto LABEL_8;
  }

  v90 = v194;
  v121 = *(v194 + 16);
  v122 = v183;
  v121(v115, v183, v103);
  v121(v144, v120, v103);
  v102 = v181;
  sub_1CFE2FFE4();
  v123 = v186;
  v186(v120, v103);
  v123(v122, v103);
  v124 = 0;
LABEL_9:
  v132 = sub_1CFE30014();
  (*(*(v132 - 8) + 56))(v102, v124, 1, v132);
  v133 = type metadata accessor for SleepingSampleAggregate();
  v134 = v182;
  (*(v90 + 56))(v182 + v133[8], 1, 1, v103);
  v135 = v176;
  v136 = v178;
  (v174)(v134, v176, v178);
  v137 = v179;
  v138 = v193;
  v172(v134 + v133[5], v179, v193);
  v139 = v133[6];
  sub_1CFDAD5CC();
  v140 = v171;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v141 - 8) + 56))(v134 + v139, 0, 1, v141);
  (v180[1])(v137, v138);
  (*(v177 + 8))(v135, v136);

  result = sub_1CFE17C64(v102, v134 + v133[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  *(v134 + v133[9]) = 4;
  return result;
}

uint64_t sub_1CFE17C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1CFE17CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFE17D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t static SleepingSampleBaselineComparison.heart(_:on:calendar:hasBaseline:baselineCount:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v140 = a4;
  v169 = a3;
  v174 = a5;
  v173 = type metadata accessor for SleepingSampleBaseline();
  v170 = *(v173 - 8);
  v9 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v134 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v172 = &v134 - v15;
  v138 = type metadata accessor for SleepingSampleBaselineAvailability();
  v16 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v171 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1CFE30434();
  v165 = *(v168 - 8);
  v18 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1CFE30444();
  v178 = *(v163 - 8);
  v20 = v178[8];
  MEMORY[0x1EEE9AC00](v163);
  v159 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1CFE30424();
  v179 = *(v177 - 8);
  v22 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v154 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v147 = &v134 - v26;
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v134 - v29;
  v156 = sub_1CFE30134();
  v155 = *(v156 - 8);
  v31 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v176 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1CFE30314();
  v153 = *(v152 - 8);
  v33 = *(v153 + 64);
  v34 = MEMORY[0x1EEE9AC00](v152);
  v135 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v142 = &v134 - v36;
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v146 = &v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v144 = &v134 - v41;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v175 = &v134 - v44;
  v45 = sub_1CFE304B4();
  v46 = *(v45 - 8);
  v47 = v46[8];
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v134 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1CFE307E4();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v134 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for SleepingSampleAggregate();
  v55 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v180 = &v134 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v51;
  v57 = *(v51 + 16);
  v157 = v54;
  v161 = v50;
  v151 = v51 + 16;
  v150 = v57;
  v57(v54, a1, v50);
  v58 = v46[2];
  v162 = v49;
  v143 = a2;
  v149 = v46 + 2;
  v148 = v58;
  v58(v49, a2, v45);
  v59 = objc_opt_self();
  v136 = objc_opt_self();
  v60 = [v136 _countPerMinuteUnit];
  v137 = v59;
  v145 = [v59 quantityWithUnit:v60 doubleValue:a6 * 7.0 + 60.0];

  v61 = objc_opt_self();
  v139 = a1;
  v62 = sub_1CFE307A4();
  v63 = sub_1CFE30454();
  v64 = [v61 hk:v62 sleepDayStartForMorningIndex:v63 calendar:?];

  sub_1CFE302F4();
  v164 = v46;
  v65 = v46[7];
  v66 = 1;
  v166 = v45;
  v65(v30, 1, 1, v45);
  v67 = sub_1CFE304E4();
  (*(*(v67 - 8) + 56))(v147, 1, 1, v67);
  sub_1CFE30124();
  v68 = v154;
  (*(v179 + 104))(v154, *MEMORY[0x1E69698A0], v177);
  v69 = v159;
  v70 = v163;
  (v178[13])(v159, *MEMORY[0x1E69699C8], v163);
  v71 = v165;
  v72 = v167;
  v73 = v168;
  (*(v165 + 104))(v167, *MEMORY[0x1E6969998], v168);
  v74 = v144;
  v75 = v142;
  v76 = v68;
  sub_1CFE30484();
  v77 = v71;
  v78 = v152;
  (*(v77 + 8))(v72, v73);
  v79 = v146;
  v80 = v70;
  v81 = v153;
  (v178[1])(v69, v80);
  (*(v179 + 8))(v76, v177);
  (*(v155 + 8))(v176, v156);
  v82 = *(v81 + 8);
  v82(v75, v78);
  sub_1CFDE4AA4(v74, v79);
  if ((*(v81 + 48))(v79, 1, v78) != 1)
  {
    (*(v81 + 32))(v75, v79, v78);
    (*(v81 + 16))(v135, v75, v78);
    sub_1CFE2FFF4();
    v82(v75, v78);
    v66 = 0;
  }

  sub_1CFE1E458(v74, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v83 = sub_1CFE30014();
  v84 = v175;
  (*(*(v83 - 8) + 56))(v175, v66, 1, v83);
  v85 = v158;
  v86 = v180;
  (*(v81 + 56))(v180 + *(v158 + 32), 1, 1, v78);
  v87 = v157;
  v88 = v161;
  v150(v86, v157, v161);
  v89 = v162;
  v90 = v166;
  v148(v86 + v85[5], v162, v166);
  v91 = v85[6];
  v92 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v93 = v145;
  v179 = v92;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v94 - 8) + 56))(v86 + v91, 0, 1, v94);

  (v164[1])(v89, v90);
  (*(v160 + 8))(v87, v88);
  sub_1CFDE4B24(v84, v86 + v85[7]);
  *(v86 + v85[9]) = 4;
  if (v169)
  {
    v95 = v171;
    static SleepingSampleBaselineAvailability.available(on:count:)(v139, v140, v171);
    v96 = v136;
    v97 = [v136 _countPerMinuteUnit];
    v98 = v137;
    v178 = [v137 quantityWithUnit:v97 doubleValue:60.0];

    v99 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v100 = [v96 _countPerMinuteUnit];
    v101 = [v98 quantityWithUnit:v100 doubleValue:53.0];

    v102 = [v96 _countPerMinuteUnit];
    v103 = [v98 quantityWithUnit:v102 doubleValue:67.0];

    v104 = [v99 initWithMinimum:v101 maximum:v103 isMinimumInclusive:1 isMaximumInclusive:1];
    v105 = [v96 _countPerMinuteUnit];
    v106 = [v98 quantityWithUnit:v105 doubleValue:3.5];

    v107 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v108 = [v96 _countPerMinuteUnit];
    v109 = [v98 quantityWithUnit:v108 doubleValue:53.0];

    v110 = v178;
    v111 = [v96 _countPerMinuteUnit];
    v112 = [v98 quantityWithUnit:v111 doubleValue:67.0];

    v113 = [v107 initWithMinimum:v109 maximum:v112 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v104 containsQuantity_])
    {
      v114 = v110;
      v115 = v134;
      sub_1CFE306B4();
      v116 = v173;
      v117 = *(v173 + 20);
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v118 = v104;
      sub_1CFE306B4();
      v119 = *(v116 + 24);
      v120 = v106;
      sub_1CFE306B4();
      v121 = v115 + *(v116 + 28);
      sub_1CFE306B4();

      v122 = v141;
      sub_1CFE1E4B4(v115, v141, type metadata accessor for SleepingSampleBaseline);
      v123 = 0;
    }

    else
    {

      v123 = 1;
      v116 = v173;
      v122 = v141;
    }

    v126 = v170;
    v124 = *(v170 + 56);
    v124(v122, v123, 1, v116);
    v127 = (*(v126 + 48))(v122, 1, v116);
    v125 = v172;
    if (v127)
    {
      sub_1CFE1E458(v122, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v128 = v125;
      v129 = 1;
    }

    else
    {
      sub_1CFE1E4B4(v122, v172, type metadata accessor for SleepingSampleBaseline);
      v128 = v125;
      v129 = 0;
    }

    v124(v128, v129, 1, v116);
  }

  else
  {
    v95 = v171;
    *v171 = 6;
    swift_storeEnumTagMultiPayload();
    v124 = *(v170 + 56);
    v125 = v172;
    v116 = v173;
    v124(v172, 1, 1, v173);
  }

  v130 = type metadata accessor for SleepingSampleBaselineComparison();
  v131 = *(v130 + 24);
  v132 = v174;
  v124(v174 + v131, 1, 1, v116);
  sub_1CFE1E4B4(v180, v132, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v95, v132 + *(v130 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v125, v132 + v131);
}

uint64_t static SleepingSampleBaselineComparison.empty(on:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_1CFE307E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 16);
  v15(v14, a1, v10);
  v16 = type metadata accessor for SleepingSampleAggregate();
  v17 = v16[5];
  v18 = sub_1CFE304B4();
  (*(*(v18 - 8) + 16))(&a3[v17], a2, v18);
  v19 = v16[7];
  v20 = sub_1CFE30014();
  (*(*(v20 - 8) + 56))(&a3[v19], 1, 1, v20);
  v21 = v16[8];
  v22 = sub_1CFE30314();
  (*(*(v22 - 8) + 56))(&a3[v21], 1, 1, v22);
  v15(a3, v14, v10);
  (*(v11 + 8))(v14, v10);
  v23 = v16[6];
  sub_1CFDAC3A0(0);
  (*(*(v24 - 8) + 56))(&a3[v23], 1, 1, v24);
  a3[v16[9]] = 0;
  v25 = type metadata accessor for SleepingSampleBaselineComparison();
  *&a3[*(v25 + 20)] = 6;
  type metadata accessor for SleepingSampleBaselineAvailability();
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for SleepingSampleBaseline();
  v27 = *(*(v26 - 8) + 56);
  v27(v9, 1, 1, v26);
  v28 = *(v25 + 24);
  v27(&a3[v28], 1, 1, v26);
  return sub_1CFDB4730(v9, &a3[v28]);
}

uint64_t static SleepingSampleBaselineComparison.spO2(_:on:calendar:hasBaseline:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v168 = a3;
  v173 = a4;
  v172 = type metadata accessor for SleepingSampleBaseline();
  v169 = *(v172 - 8);
  v8 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v134 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v140 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v133 - v14;
  v138 = type metadata accessor for SleepingSampleBaselineAvailability();
  v15 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v170 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1CFE30434();
  v164 = *(v167 - 8);
  v17 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1CFE30444();
  v177 = *(v162 - 8);
  v19 = v177[8];
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1CFE30424();
  v178 = *(v176 - 8);
  v21 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v153 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v146 = &v133 - v25;
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v133 - v28;
  v155 = sub_1CFE30134();
  v154 = *(v155 - 8);
  v30 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v175 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CFE30314();
  v152 = *(v151 - 8);
  v32 = *(v152 + 64);
  v33 = MEMORY[0x1EEE9AC00](v151);
  v135 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v141 = &v133 - v35;
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v145 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v144 = &v133 - v40;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v174 = &v133 - v43;
  v44 = sub_1CFE304B4();
  v45 = *(v44 - 8);
  v46 = v45[8];
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CFE307E4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v133 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for SleepingSampleAggregate();
  v54 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v179 = &v133 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v50;
  v56 = *(v50 + 16);
  v156 = v53;
  v160 = v49;
  v150 = v50 + 16;
  v149 = v56;
  v56(v53, a1, v49);
  v57 = v45[2];
  v161 = v48;
  v142 = a2;
  v148 = v45 + 2;
  v147 = v57;
  v57(v48, a2, v44);
  v58 = objc_opt_self();
  v136 = objc_opt_self();
  v59 = [v136 percentUnit];
  v137 = v58;
  v143 = [v58 quantityWithUnit:v59 doubleValue:(a5 + 95.0) / 100.0];

  v60 = objc_opt_self();
  v139 = a1;
  v61 = sub_1CFE307A4();
  v62 = sub_1CFE30454();
  v63 = [v60 hk:v61 sleepDayStartForMorningIndex:v62 calendar:?];

  sub_1CFE302F4();
  v163 = v45;
  v64 = v45[7];
  v65 = 1;
  v165 = v44;
  v64(v29, 1, 1, v44);
  v66 = sub_1CFE304E4();
  (*(*(v66 - 8) + 56))(v146, 1, 1, v66);
  sub_1CFE30124();
  v67 = v153;
  (*(v178 + 104))(v153, *MEMORY[0x1E69698A0], v176);
  v68 = v158;
  v69 = v162;
  (v177[13])(v158, *MEMORY[0x1E69699C8], v162);
  v70 = v164;
  v71 = v166;
  v72 = v167;
  (*(v164 + 104))(v166, *MEMORY[0x1E6969998], v167);
  v73 = v144;
  v74 = v141;
  v75 = v67;
  sub_1CFE30484();
  v76 = v70;
  v77 = v151;
  (*(v76 + 8))(v71, v72);
  v78 = v145;
  v79 = v69;
  v80 = v152;
  (v177[1])(v68, v79);
  (*(v178 + 8))(v75, v176);
  (*(v154 + 8))(v175, v155);
  v81 = *(v80 + 8);
  v81(v74, v77);
  sub_1CFDE4AA4(v73, v78);
  if ((*(v80 + 48))(v78, 1, v77) != 1)
  {
    (*(v80 + 32))(v74, v78, v77);
    (*(v80 + 16))(v135, v74, v77);
    sub_1CFE2FFF4();
    v81(v74, v77);
    v65 = 0;
  }

  sub_1CFE1E458(v73, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v82 = sub_1CFE30014();
  v83 = v174;
  (*(*(v82 - 8) + 56))(v174, v65, 1, v82);
  v84 = v157;
  v85 = v179;
  (*(v80 + 56))(v179 + *(v157 + 32), 1, 1, v77);
  v86 = v156;
  v87 = v160;
  v149(v85, v156, v160);
  v88 = v161;
  v89 = v165;
  v147(v85 + v84[5], v161, v165);
  v90 = v84[6];
  v91 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v92 = v143;
  v178 = v91;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v93 - 8) + 56))(v85 + v90, 0, 1, v93);

  (v163[1])(v88, v89);
  (*(v159 + 8))(v86, v87);
  sub_1CFDE4B24(v83, v85 + v84[7]);
  *(v85 + v84[9]) = 4;
  if (v168)
  {
    v94 = v170;
    static SleepingSampleBaselineAvailability.available(on:count:)(v139, 49, v170);
    v95 = v136;
    v96 = [v136 percentUnit];
    v97 = v137;
    v177 = [v137 quantityWithUnit:v96 doubleValue:0.95];

    v98 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v99 = [v95 percentUnit];
    v100 = [v97 quantityWithUnit:v99 doubleValue:0.94];

    v101 = [v95 percentUnit];
    v102 = [v97 quantityWithUnit:v101 doubleValue:0.96];

    v103 = [v98 initWithMinimum:v100 maximum:v102 isMinimumInclusive:1 isMaximumInclusive:1];
    v104 = [v95 percentUnit];
    v105 = [v97 quantityWithUnit:v104 doubleValue:0.005];

    v106 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v107 = [v95 percentUnit];
    v108 = [v97 quantityWithUnit:v107 doubleValue:0.94];

    v109 = v177;
    v110 = [v95 percentUnit];
    v111 = [v97 quantityWithUnit:v110 doubleValue:0.96];

    v112 = [v106 initWithMinimum:v108 maximum:v111 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v103 containsQuantity_])
    {
      v113 = v109;
      v114 = v134;
      sub_1CFE306B4();
      v115 = v172;
      v116 = *(v172 + 20);
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v117 = v103;
      sub_1CFE306B4();
      v118 = *(v115 + 24);
      v119 = v105;
      sub_1CFE306B4();
      v120 = v114 + *(v115 + 28);
      sub_1CFE306B4();

      v121 = v140;
      sub_1CFE1E4B4(v114, v140, type metadata accessor for SleepingSampleBaseline);
      v122 = 0;
    }

    else
    {

      v122 = 1;
      v115 = v172;
      v121 = v140;
    }

    v125 = v169;
    v123 = *(v169 + 56);
    v123(v121, v122, 1, v115);
    v126 = (*(v125 + 48))(v121, 1, v115);
    v124 = v171;
    if (v126)
    {
      sub_1CFE1E458(v121, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v127 = v124;
      v128 = 1;
    }

    else
    {
      sub_1CFE1E4B4(v121, v171, type metadata accessor for SleepingSampleBaseline);
      v127 = v124;
      v128 = 0;
    }

    v123(v127, v128, 1, v115);
  }

  else
  {
    v94 = v170;
    *v170 = 6;
    swift_storeEnumTagMultiPayload();
    v123 = *(v169 + 56);
    v124 = v171;
    v115 = v172;
    v123(v171, 1, 1, v172);
  }

  v129 = type metadata accessor for SleepingSampleBaselineComparison();
  v130 = *(v129 + 24);
  v131 = v173;
  v123(v173 + v130, 1, 1, v115);
  sub_1CFE1E4B4(v179, v131, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v94, v131 + *(v129 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v124, v131 + v130);
}

uint64_t static SleepingSampleBaselineComparison.rr(_:on:calendar:hasBaseline:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v168 = a3;
  v173 = a4;
  v172 = type metadata accessor for SleepingSampleBaseline();
  v169 = *(v172 - 8);
  v8 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v134 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v140 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v133 - v14;
  v138 = type metadata accessor for SleepingSampleBaselineAvailability();
  v15 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v170 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1CFE30434();
  v164 = *(v167 - 8);
  v17 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1CFE30444();
  v177 = *(v162 - 8);
  v19 = v177[8];
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1CFE30424();
  v178 = *(v176 - 8);
  v21 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v153 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v146 = &v133 - v25;
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v133 - v28;
  v155 = sub_1CFE30134();
  v154 = *(v155 - 8);
  v30 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v175 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CFE30314();
  v152 = *(v151 - 8);
  v32 = *(v152 + 64);
  v33 = MEMORY[0x1EEE9AC00](v151);
  v135 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v141 = &v133 - v35;
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v145 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v143 = &v133 - v40;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v174 = &v133 - v43;
  v44 = sub_1CFE304B4();
  v45 = *(v44 - 8);
  v46 = v45[8];
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CFE307E4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v133 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for SleepingSampleAggregate();
  v54 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v179 = &v133 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v50;
  v56 = *(v50 + 16);
  v156 = v53;
  v160 = v49;
  v150 = v50 + 16;
  v149 = v56;
  v56(v53, a1, v49);
  v57 = v45[2];
  v161 = v48;
  v142 = a2;
  v148 = v45 + 2;
  v147 = v57;
  v57(v48, a2, v44);
  v58 = objc_opt_self();
  v136 = objc_opt_self();
  v59 = [v136 _countPerMinuteUnit];
  v137 = v58;
  v144 = [v58 quantityWithUnit:v59 doubleValue:a5 + 15.0];

  v60 = objc_opt_self();
  v139 = a1;
  v61 = sub_1CFE307A4();
  v62 = sub_1CFE30454();
  v63 = [v60 hk:v61 sleepDayStartForMorningIndex:v62 calendar:?];

  sub_1CFE302F4();
  v163 = v45;
  v64 = v45[7];
  v65 = 1;
  v165 = v44;
  v64(v29, 1, 1, v44);
  v66 = sub_1CFE304E4();
  (*(*(v66 - 8) + 56))(v146, 1, 1, v66);
  sub_1CFE30124();
  v67 = v153;
  (*(v178 + 104))(v153, *MEMORY[0x1E69698A0], v176);
  v68 = v158;
  v69 = v162;
  (v177[13])(v158, *MEMORY[0x1E69699C8], v162);
  v70 = v164;
  v71 = v166;
  v72 = v167;
  (*(v164 + 104))(v166, *MEMORY[0x1E6969998], v167);
  v73 = v143;
  v74 = v141;
  v75 = v67;
  sub_1CFE30484();
  v76 = v70;
  v77 = v151;
  (*(v76 + 8))(v71, v72);
  v78 = v145;
  v79 = v69;
  v80 = v152;
  (v177[1])(v68, v79);
  (*(v178 + 8))(v75, v176);
  (*(v154 + 8))(v175, v155);
  v81 = *(v80 + 8);
  v81(v74, v77);
  sub_1CFDE4AA4(v73, v78);
  if ((*(v80 + 48))(v78, 1, v77) != 1)
  {
    (*(v80 + 32))(v74, v78, v77);
    (*(v80 + 16))(v135, v74, v77);
    sub_1CFE2FFF4();
    v81(v74, v77);
    v65 = 0;
  }

  sub_1CFE1E458(v73, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v82 = sub_1CFE30014();
  v83 = v174;
  (*(*(v82 - 8) + 56))(v174, v65, 1, v82);
  v84 = v157;
  v85 = v179;
  (*(v80 + 56))(v179 + *(v157 + 32), 1, 1, v77);
  v86 = v156;
  v87 = v160;
  v149(v85, v156, v160);
  v88 = v161;
  v89 = v165;
  v147(v85 + v84[5], v161, v165);
  v90 = v84[6];
  v91 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v92 = v144;
  v178 = v91;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v93 - 8) + 56))(v85 + v90, 0, 1, v93);

  (v163[1])(v88, v89);
  (*(v159 + 8))(v86, v87);
  sub_1CFDE4B24(v83, v85 + v84[7]);
  *(v85 + v84[9]) = 4;
  if (v168)
  {
    v94 = v170;
    static SleepingSampleBaselineAvailability.available(on:count:)(v139, 49, v170);
    v95 = v136;
    v96 = [v136 _countPerMinuteUnit];
    v97 = v137;
    v177 = [v137 quantityWithUnit:v96 doubleValue:15.0];

    v98 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v99 = [v95 _countPerMinuteUnit];
    v100 = [v97 quantityWithUnit:v99 doubleValue:14.0];

    v101 = [v95 _countPerMinuteUnit];
    v102 = [v97 quantityWithUnit:v101 doubleValue:16.0];

    v103 = [v98 initWithMinimum:v100 maximum:v102 isMinimumInclusive:1 isMaximumInclusive:1];
    v104 = [v95 _countPerMinuteUnit];
    v105 = [v97 quantityWithUnit:v104 doubleValue:0.5];

    v106 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v107 = [v95 _countPerMinuteUnit];
    v108 = [v97 quantityWithUnit:v107 doubleValue:14.0];

    v109 = v177;
    v110 = [v95 _countPerMinuteUnit];
    v111 = [v97 quantityWithUnit:v110 doubleValue:16.0];

    v112 = [v106 initWithMinimum:v108 maximum:v111 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v103 containsQuantity_])
    {
      v113 = v109;
      v114 = v134;
      sub_1CFE306B4();
      v115 = v172;
      v116 = *(v172 + 20);
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v117 = v103;
      sub_1CFE306B4();
      v118 = *(v115 + 24);
      v119 = v105;
      sub_1CFE306B4();
      v120 = v114 + *(v115 + 28);
      sub_1CFE306B4();

      v121 = v140;
      sub_1CFE1E4B4(v114, v140, type metadata accessor for SleepingSampleBaseline);
      v122 = 0;
    }

    else
    {

      v122 = 1;
      v115 = v172;
      v121 = v140;
    }

    v125 = v169;
    v123 = *(v169 + 56);
    v123(v121, v122, 1, v115);
    v126 = (*(v125 + 48))(v121, 1, v115);
    v124 = v171;
    if (v126)
    {
      sub_1CFE1E458(v121, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v127 = v124;
      v128 = 1;
    }

    else
    {
      sub_1CFE1E4B4(v121, v171, type metadata accessor for SleepingSampleBaseline);
      v127 = v124;
      v128 = 0;
    }

    v123(v127, v128, 1, v115);
  }

  else
  {
    v94 = v170;
    *v170 = 6;
    swift_storeEnumTagMultiPayload();
    v123 = *(v169 + 56);
    v124 = v171;
    v115 = v172;
    v123(v171, 1, 1, v172);
  }

  v129 = type metadata accessor for SleepingSampleBaselineComparison();
  v130 = *(v129 + 24);
  v131 = v173;
  v123(v173 + v130, 1, 1, v115);
  sub_1CFE1E4B4(v179, v131, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v94, v131 + *(v129 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v124, v131 + v130);
}

uint64_t static SleepingSampleBaselineComparison.wtr(_:on:calendar:hasBaseline:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v222 = a3;
  v246 = a2;
  v227 = a4;
  v226 = type metadata accessor for SleepingSampleBaseline();
  v224 = *(v226 - 8);
  v7 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v184 = v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v208 = v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v225 = v181 - v13;
  v207 = type metadata accessor for SleepingSampleBaselineAvailability();
  v14 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207);
  v237 = v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1CFE30434();
  v245 = *(v235 - 8);
  v16 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v234 = v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_1CFE30444();
  v244 = *(v233 - 8);
  v18 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v232 = v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1CFE30424();
  v247 = *(v243 - 8);
  v20 = v247[8];
  MEMORY[0x1EEE9AC00](v243);
  v231 = v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (v181 - v24);
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = (v181 - v28);
  v230 = sub_1CFE30134();
  v242 = *(v230 - 8);
  v30 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v241 = v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v204 = v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v209 = v181 - v36;
  v229 = sub_1CFE30314();
  v240 = *(v229 - 8);
  v37 = v240[8];
  v38 = MEMORY[0x1EEE9AC00](v229);
  v182 = v181 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v183 = v181 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v238 = v181 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v228 = v181 - v44;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v221 = v181 - v47;
  v48 = sub_1CFE304B4();
  v49 = *(v48 - 8);
  v50 = v49[8];
  MEMORY[0x1EEE9AC00](v48);
  v52 = v181 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1CFE307E4();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v57 = v181 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for SleepingSampleAggregate();
  v58 = *(*(v216 - 8) + 64);
  MEMORY[0x1EEE9AC00](v216);
  v239 = v181 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v54;
  v60 = *(v54 + 16);
  v215 = v57;
  v218 = v53;
  v214 = v54 + 16;
  v213 = v60;
  v60(v57, a1, v53);
  v61 = v49[2];
  v219 = v52;
  v212 = v49 + 2;
  v211 = v61;
  v61(v52, v246, v48);
  v62 = objc_opt_self();
  v205 = objc_opt_self();
  v63 = [v205 _changeInDegreeCelsiusUnit];
  v206 = v62;
  v210 = [v62 quantityWithUnit:v63 doubleValue:a5];

  v64 = objc_opt_self();
  v223 = a1;
  v65 = sub_1CFE307A4();
  v66 = sub_1CFE30454();
  v201 = v64;
  v67 = [v64 hk:v65 sleepDayStartForMorningIndex:v66 calendar:?];

  sub_1CFE302F4();
  v220 = v49;
  v68 = v49[7];
  v236 = v48;
  v200 = (v49 + 7);
  v199 = v68;
  v68(v29, 1, 1, v48);
  v69 = sub_1CFE304E4();
  v70 = *(v69 - 8);
  v71 = *(v70 + 56);
  v198 = v69;
  v197 = v71;
  v196 = v70 + 56;
  (v71)(v25, 1, 1);
  v202 = v29;
  v203 = v25;
  sub_1CFE30124();
  v72 = v247[13];
  v73 = v231;
  v194 = *MEMORY[0x1E69698A0];
  v195 = v247 + 13;
  v193 = v72;
  v72(v231);
  v74 = v244;
  v75 = *(v244 + 104);
  v76 = v232;
  v191 = *MEMORY[0x1E69699C8];
  v77 = v233;
  v192 = v244 + 104;
  v190 = v75;
  v75(v232);
  v78 = v245;
  v79 = *(v245 + 104);
  v80 = v234;
  v188 = *MEMORY[0x1E6969998];
  v81 = v235;
  v189 = v245 + 104;
  v187 = v79;
  v79(v234);
  v82 = v209;
  v83 = v238;
  v84 = v73;
  v85 = v76;
  v86 = v80;
  sub_1CFE30484();
  v87 = v240;
  v88 = *(v78 + 8);
  v245 = v78 + 8;
  v186 = v88;
  v88(v86, v81);
  v89 = *(v74 + 8);
  v244 = v74 + 8;
  v185 = v89;
  v89(v85, v77);
  v90 = v247[1];
  ++v247;
  v90(v84, v243);
  v91 = *(v242 + 8);
  v242 += 8;
  v91(v241, v230);
  v92 = (v87 + 1);
  v93 = v87[1];
  v94 = v229;
  v93(v83, v229);
  v96 = v87 + 6;
  v95 = v87[6];
  if (v95(v82, 1, v94) == 1)
  {
    sub_1CFE1E458(v82, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    _s5ErrorOMa();
    sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa);
    v97 = swift_allocError();
    *v98 = xmmword_1CFE34CF0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v99 = v221;
    v100 = v94;
  }

  else
  {
    v101 = v87[4];
    v181[1] = v87 + 4;
    v181[0] = v101;
    v101(v228, v82, v94);
    v102 = sub_1CFE307A4();
    v103 = sub_1CFE30454();
    v104 = [v201 hk:v102 sleepDayStartForMorningIndex:v103 calendar:?];

    sub_1CFE302F4();
    v199(v202, 1, 1, v236);
    v197(v203, 1, 1, v198);
    v209 = v92;
    v201 = v93;
    v200 = v90;
    v105 = v241;
    sub_1CFE30124();
    v106 = v231;
    v202 = v91;
    v107 = v243;
    v193(v231, v194, v243);
    v108 = v232;
    v203 = v95;
    v109 = v233;
    v190(v232, v191, v233);
    v111 = v234;
    v110 = v235;
    v187(v234, v188, v235);
    v112 = v204;
    v199 = v96;
    v113 = v238;
    sub_1CFE30484();
    v186(v111, v110);
    v185(v108, v109);
    v200(v106, v107);
    v114 = v105;
    v115 = v201;
    v202(v114, v230);
    v100 = v229;
    v115(v113, v229);
    if (v203(v112, 1, v100) == 1)
    {
      sub_1CFE1E458(v112, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      _s5ErrorOMa();
      sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa);
      v97 = swift_allocError();
      *v116 = xmmword_1CFE34CE0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v115(v228, v100);
    }

    else
    {
      v117 = v113;
      v118 = v183;
      (v181[0])(v183, v112, v100);
      sub_1CFE07870(&qword_1EDC32030, MEMORY[0x1E6969530]);
      if (sub_1CFE30874())
      {
        v119 = v240;
        v120 = v240[2];
        v121 = v228;
        v120(v117, v228, v100);
        v120(v182, v118, v100);
        v99 = v221;
        sub_1CFE2FFE4();
        v115(v118, v100);
        v115(v121, v100);
        v122 = 0;
        goto LABEL_10;
      }

      v247 = _s5ErrorOMa();
      sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa);
      v97 = swift_allocError();
      v124 = v123;
      sub_1CFE078B8();
      v126 = *(v125 + 48);
      v127 = v240[2];
      v128 = v115;
      v129 = v228;
      v127(v124, v228, v100);
      v127(v124 + v126, v118, v100);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v128(v118, v100);
      v128(v129, v100);
    }

    v99 = v221;
  }

  v122 = 1;
  v119 = v240;
LABEL_10:
  v130 = sub_1CFE30014();
  (*(*(v130 - 8) + 56))(v99, v122, 1, v130);
  v131 = v216;
  v132 = v239;
  (v119[7])(v239 + *(v216 + 32), 1, 1, v100);
  v133 = v215;
  v134 = v218;
  v213(v132, v215, v218);
  v135 = v219;
  v136 = v236;
  v211(v132 + v131[5], v219, v236);
  v137 = v131[6];
  v138 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v139 = v99;
  v140 = v210;
  v247 = v138;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v141 - 8) + 56))(v132 + v137, 0, 1, v141);

  (v220[1])(v135, v136);
  (*(v217 + 8))(v133, v134);
  sub_1CFDE4B24(v139, v132 + v131[7]);
  *(v132 + v131[9]) = 4;
  if (v222)
  {
    static SleepingSampleBaselineAvailability.available(on:count:)(v223, 49, v237);
    v142 = v205;
    v143 = [v205 _changeInDegreeCelsiusUnit];
    v144 = v206;
    v145 = [v206 quantityWithUnit:v143 doubleValue:0.0];

    v146 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v147 = [v142 _changeInDegreeCelsiusUnit];
    v148 = [v144 quantityWithUnit:v147 doubleValue:-1.0];

    v149 = [v142 _changeInDegreeCelsiusUnit];
    v150 = [v144 quantityWithUnit:v149 doubleValue:1.0];

    v151 = [v146 initWithMinimum:v148 maximum:v150 isMinimumInclusive:1 isMaximumInclusive:1];
    v152 = [v142 _changeInDegreeCelsiusUnit];
    v153 = [v144 quantityWithUnit:v152 doubleValue:0.5];

    v154 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v155 = [v142 _changeInDegreeCelsiusUnit];
    v156 = [v144 quantityWithUnit:v155 doubleValue:-1.0];

    v157 = [v142 _changeInDegreeCelsiusUnit];
    v158 = [v144 quantityWithUnit:v157 doubleValue:1.0];

    v159 = [v154 initWithMinimum:v156 maximum:v158 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v151 containsQuantity_])
    {
      v160 = v145;
      v161 = v184;
      sub_1CFE306B4();
      v162 = v226;
      v163 = *(v226 + 20);
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v164 = v151;
      sub_1CFE306B4();
      v165 = *(v162 + 24);
      v166 = v153;
      sub_1CFE306B4();
      v167 = v161 + *(v162 + 28);
      sub_1CFE306B4();

      v168 = v208;
      sub_1CFE1E4B4(v161, v208, type metadata accessor for SleepingSampleBaseline);
      v169 = 0;
    }

    else
    {

      v169 = 1;
      v168 = v208;
      v162 = v226;
    }

    v173 = v224;
    v171 = *(v224 + 56);
    v171(v168, v169, 1, v162);
    v174 = (*(v173 + 48))(v168, 1, v162);
    v172 = v225;
    v170 = v237;
    if (v174)
    {
      sub_1CFE1E458(v168, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v175 = v172;
      v176 = 1;
    }

    else
    {
      sub_1CFE1E4B4(v168, v225, type metadata accessor for SleepingSampleBaseline);
      v175 = v172;
      v176 = 0;
    }

    v171(v175, v176, 1, v162);
  }

  else
  {
    v170 = v237;
    *v237 = 6;
    swift_storeEnumTagMultiPayload();
    v171 = *(v224 + 56);
    v172 = v225;
    v162 = v226;
    v171(v225, 1, 1, v226);
  }

  v177 = type metadata accessor for SleepingSampleBaselineComparison();
  v178 = *(v177 + 24);
  v179 = v227;
  v171(v227 + v178, 1, 1, v162);
  sub_1CFE1E4B4(v239, v179, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v170, v179 + *(v177 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v172, v179 + v178);
}

uint64_t static SleepingSampleBaselineComparison.asleep(_:on:calendar:hasBaseline:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v157 = a3;
  v179 = a2;
  v160 = a4;
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v159 = v121 - v9;
  v122 = type metadata accessor for SleepingSampleBaselineAvailability();
  v10 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v158 = v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1CFE30434();
  v178 = *(v171 - 8);
  v12 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v170 = v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1CFE30444();
  v177 = *(v169 - 8);
  v14 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v168 = v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1CFE30424();
  v180 = *(v176 - 8);
  v16 = v180[8];
  MEMORY[0x1EEE9AC00](v176);
  v167 = v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (v121 - v20);
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v121 - v24;
  v166 = sub_1CFE30134();
  v175 = *(v166 - 8);
  v26 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v174 = v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1CFE30314();
  v144 = *(v173 - 8);
  v28 = *(v144 + 64);
  v29 = MEMORY[0x1EEE9AC00](v173);
  v121[1] = v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v121[0] = v121 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v162 = v121 - v33;
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v143 = v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v142 = v121 - v38;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v172 = v121 - v41;
  v42 = sub_1CFE304B4();
  v43 = *(v42 - 8);
  v44 = v43[8];
  MEMORY[0x1EEE9AC00](v42);
  v46 = v121 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CFE307E4();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = v121 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for SleepingSampleAggregate();
  v52 = *(*(v163 - 8) + 64);
  MEMORY[0x1EEE9AC00](v163);
  v165 = v121 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v48;
  v54 = *(v48 + 16);
  v150 = v51;
  v152 = v47;
  v149 = v48 + 16;
  v148 = v54;
  v54(v51, a1, v47);
  v55 = v43[2];
  v153 = v46;
  v147 = v43 + 2;
  v146 = v55;
  v55(v46, v179, v42);
  v56 = objc_opt_self();
  v57 = [objc_opt_self() secondUnit];
  v145 = [v56 quantityWithUnit:v57 doubleValue:a5 * 3600.0 + 25200.0];

  v58 = objc_opt_self();
  v161 = a1;
  v59 = sub_1CFE307A4();
  v60 = sub_1CFE30454();
  v141 = v58;
  v61 = [v58 hk:v59 sleepDayStartForMorningIndex:v60 calendar:?];

  sub_1CFE302F4();
  v154 = v43;
  v62 = v43[7];
  v164 = v42;
  v140 = v43 + 7;
  v139 = v62;
  v62(v25, 1, 1, v42);
  v63 = sub_1CFE304E4();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v138 = v63;
  v137 = v65;
  v136 = v64 + 56;
  (v65)(v21, 1, 1);
  v155 = v25;
  v156 = v21;
  sub_1CFE30124();
  v66 = v180[13];
  v67 = v167;
  v135 = *MEMORY[0x1E69698A0];
  v134 = v180 + 13;
  v133 = v66;
  v66(v167);
  v68 = v177;
  v69 = *(v177 + 104);
  v70 = v168;
  v132 = *MEMORY[0x1E69699C8];
  v71 = v169;
  v131 = v177 + 104;
  v130 = v69;
  v69(v168);
  v72 = v178;
  v73 = *(v178 + 104);
  v74 = v170;
  v129 = *MEMORY[0x1E6969998];
  v75 = v171;
  v128 = v178 + 104;
  v127 = v73;
  v73(v170);
  v76 = v142;
  v77 = v162;
  sub_1CFE30484();
  v78 = *(v72 + 8);
  v178 = v72 + 8;
  v126 = v78;
  v78(v74, v75);
  v79 = v68;
  v80 = v143;
  v81 = *(v79 + 8);
  v177 = v79 + 8;
  v125 = v81;
  v81(v70, v71);
  v82 = v180[1];
  v83 = v144;
  ++v180;
  v124 = v82;
  v82(v67, v176);
  v84 = *(v175 + 8);
  v175 += 8;
  v123 = v84;
  v84(v174, v166);
  v85 = *(v83 + 8);
  v86 = v173;
  v85(v77, v173);
  sub_1CFDE4AA4(v76, v80);
  v87 = 1;
  if ((*(v83 + 48))(v80, 1, v86) != 1)
  {
    v88 = v173;
    (*(v83 + 32))(v77, v80, v173);
    v89 = v121[0];
    (*(v83 + 16))(v121[0], v77, v88);
    sub_1CFE302C4();
    sub_1CFE2FFF4();
    v85(v89, v88);
    v85(v77, v88);
    v87 = 0;
  }

  sub_1CFE1E458(v76, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v90 = sub_1CFE30014();
  (*(*(v90 - 8) + 56))(v172, v87, 1, v90);
  v91 = sub_1CFE307A4();
  v92 = sub_1CFE30454();
  v93 = [v141 hk:v91 sleepDayStartForMorningIndex:v92 calendar:?];

  sub_1CFE302F4();
  v139(v155, 1, 1, v164);
  v137(v156, 1, 1, v138);
  v144 = v83 + 8;
  v94 = v174;
  sub_1CFE30124();
  v95 = v167;
  v96 = v176;
  v133(v167, v135, v176);
  v97 = v168;
  v156 = v85;
  v98 = v169;
  v130(v168, v132, v169);
  v100 = v170;
  v99 = v171;
  v127(v170, v129, v171);
  v101 = v162;
  v102 = v165;
  v103 = v165 + *(v163 + 32);
  sub_1CFE30484();
  v126(v100, v99);
  v125(v97, v98);
  v124(v95, v96);
  v123(v94, v166);
  v156(v101, v173);
  v104 = v150;
  v105 = v152;
  v148(v102, v150, v152);
  v106 = v163;
  v107 = v164;
  v108 = v153;
  v146(v102 + *(v163 + 20), v153, v164);
  v109 = *(v106 + 24);
  v110 = v106;
  sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v111 = v145;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v112 - 8) + 56))(v102 + v109, 0, 1, v112);

  (v154[1])(v108, v107);
  (*(v151 + 8))(v104, v105);
  sub_1CFDE4B24(v172, v102 + *(v110 + 28));
  *(v102 + *(v110 + 36)) = 4;
  v113 = v158;
  if (v157)
  {
    static SleepingSampleBaselineAvailability.available(on:count:)(v161, 49, v158);
    v114 = v159;
    SleepingSampleBaseline.init(s:_:_:)(v159, 21600.0, 25200.0, 28800.0);
  }

  else
  {
    *v158 = 6;
    swift_storeEnumTagMultiPayload();
    v115 = type metadata accessor for SleepingSampleBaseline();
    v114 = v159;
    (*(*(v115 - 8) + 56))(v159, 1, 1, v115);
  }

  v116 = type metadata accessor for SleepingSampleBaselineComparison();
  v117 = *(v116 + 24);
  v118 = type metadata accessor for SleepingSampleBaseline();
  v119 = v160;
  (*(*(v118 - 8) + 56))(v160 + v117, 1, 1, v118);
  sub_1CFE1E4B4(v165, v119, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v113, v119 + *(v116 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v114, v119 + v117);
}

uint64_t sub_1CFE1E458(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1CFDB1824(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFE1E4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HealthBalanceAnalyticsError.hashValue.getter()
{
  sub_1CFE31144();
  MEMORY[0x1D3876810](0);
  return sub_1CFE31184();
}

uint64_t submitAnalytics(for:manager:)(void *a1, void *a2)
{
  sub_1CFDA9D60(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 notification];
  v9 = [v8 request];

  v10 = [v9 content];
  v11 = [v10 categoryIdentifier];

  sub_1CFE30924();
  v12 = sub_1CFE30F54();

  v13 = 0;
  if (!v12)
  {
LABEL_4:
    v14 = [a1 actionIdentifier];
    v15 = sub_1CFE30924();
    v17 = v16;

    v18 = *MEMORY[0x1E69833F8];
    if (v15 == sub_1CFE30924() && v17 == v19)
    {

      v20 = 2;
      if (!a2)
      {
LABEL_7:
        sub_1CFDD36C0();
        v21 = sub_1CFE30C64();
        v22 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
        v23 = [objc_allocWithZone(MEMORY[0x1E696BF00]) initWithLoggingCategory:v21 healthDataSource:v22];

LABEL_13:
        v25 = sub_1CFE30314();
        (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
        v26 = type metadata accessor for HealthBalanceNotificationsAnalyticsEvent();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        v29 = swift_allocObject();
        *(v29 + 16) = v12;
        *(v29 + 24) = v13;
        *(v29 + 25) = v20;
        sub_1CFDA9CFC(v7, v29 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate);
        aBlock[4] = nullsub_1;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CFDD8A08;
        aBlock[3] = &block_descriptor_3;
        v30 = _Block_copy(aBlock);
        v31 = a2;
        [v23 submitEvent:v29 completion:v30];

        _Block_release(v30);

        return 1;
      }
    }

    else
    {
      v24 = sub_1CFE310B4();

      if (v24)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v23 = a2;
    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v12 = 1;
    LOBYTE(v13) = 1;
    goto LABEL_4;
  }

  return v13;
}

unint64_t sub_1CFE1E92C()
{
  result = qword_1EC509F38;
  if (!qword_1EC509F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F38);
  }

  return result;
}

uint64_t TrainingLoadSampleDaySummaryCollection.init(morningIndexRange:daySummaries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDF137C(a1, a3);
  result = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t TrainingLoadSampleDaySummaryCollection.daySummaries.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrainingLoadSampleDaySummaryCollection() + 20));
}

uint64_t TrainingLoadSampleDaySummaryCollection.daySummaries.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TrainingLoadSampleDaySummaryCollection() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t static TrainingLoadSampleDaySummaryCollection.fake(inDayRange:separateByActivityType:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v351 = a2;
  v298 = a3;
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v4 = *(*(BaselineComparison - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](BaselineComparison);
  v313 = &v296 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v359 = &v296 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v312 = &v296 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v350 = &v296 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v311 = &v296 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v349 = &v296 - v15;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v16 = *(*(ChronicBaseline - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](ChronicBaseline);
  v310 = (&v296 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v309 = &v296 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v348 = (&v296 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v347 = (&v296 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v346 = &v296 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v345 = (&v296 - v27);
  sub_1CFDAD280();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v299 = &v296 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v308 = &v296 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v307 = &v296 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v306 = &v296 - v36;
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline();
  v38 = *(*(AcuteBaseline - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](AcuteBaseline - 8);
  v316 = &v296 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v305 = &v296 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v344 = &v296 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v304 = &v296 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v343 = &v296 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v342 = &v296 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v303 = &v296 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v341 = &v296 - v53;
  v54 = sub_1CFE30404();
  v381 = *(v54 - 8);
  v55 = *(v381 + 8);
  MEMORY[0x1EEE9AC00](v54);
  v368 = &v296 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = sub_1CFE304B4();
  v379 = *(v363 - 8);
  v57 = v379[8];
  v58 = MEMORY[0x1EEE9AC00](v363);
  v340 = &v296 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v339 = &v296 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v338 = &v296 - v62;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v337 = *(SampleDaySummary - 8);
  v63 = *(v337 + 64);
  v64 = MEMORY[0x1EEE9AC00](SampleDaySummary);
  v336 = &v296 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v335 = &v296 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v334 = &v296 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v333 = &v296 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v332 = &v296 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v302 = &v296 - v74;
  sub_1CFDA7460();
  v331 = v75;
  v76 = *(*(v75 - 8) + 64);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v330 = &v296 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v329 = &v296 - v79;
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v328 = v80;
  v81 = *(*(v80 - 8) + 64);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v315 = &v296 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x1EEE9AC00](v82);
  v301 = &v296 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v300 = &v296 - v87;
  MEMORY[0x1EEE9AC00](v86);
  v380 = &v296 - v88;
  v89 = sub_1CFE307E4();
  v90 = *(v89 - 8);
  v91 = v90[8];
  v92 = MEMORY[0x1EEE9AC00](v89);
  v358 = &v296 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v327 = &v296 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v326 = &v296 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v100 = &v296 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  v103 = &v296 - v102;
  v104 = MEMORY[0x1EEE9AC00](v101);
  v353 = &v296 - v105;
  MEMORY[0x1EEE9AC00](v104);
  v360 = &v296 - v106;
  sub_1CFDF6B34();
  v357 = v107;
  v108 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v296 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDF6B98();
  v112 = *(*(v111 - 8) + 64);
  v113 = MEMORY[0x1EEE9AC00](v111 - 8);
  v354 = &v296 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = MEMORY[0x1EEE9AC00](v113);
  v355 = &v296 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v314 = &v296 - v118;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v296 - v119;
  sub_1CFDAA2DC(0, &qword_1EDC318C0, MEMORY[0x1E696B418], MEMORY[0x1E69E6720]);
  v122 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121 - 8);
  v356 = &v296 - v123;
  sub_1CFE213AC();
  v125 = v124 - 8;
  v126 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v128 = &v296 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA6ADC(a1, v128, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v129 = *(v125 + 44);
  v130 = v90[2];
  v297 = a1;
  v367[1] = v90 + 2;
  v367[0] = v130;
  v130(&v128[v129], a1, v89);
  v131 = v90[7];
  v90 += 7;
  v375 = v129;
  v376 = v131;
  v131(&v128[v129], 0, 1, v89);
  v132 = (v90 - 1);
  v361 = (v90 - 3);
  v382 = (v90 - 6);
  v366 = *MEMORY[0x1E6969868];
  v365 = (v381 + 104);
  v364 = (v381 + 8);
  v362 = (v379 + 1);
  v379 = MEMORY[0x1E69E7CC0];
  v369 = v54;
  v374 = v90;
  v383 = v89;
  v352 = v100;
  v378 = v103;
  v325 = v110;
  v324 = v120;
  v373 = v128;
  v323 = (v90 - 1);
  while (1)
  {
    v376(v120, 1, 1, v89);
    v141 = *(v357 + 48);
    sub_1CFE217C8(&v128[v375], v110, sub_1CFDF6B98);
    sub_1CFE217C8(v120, &v110[v141], sub_1CFDF6B98);
    v142 = *v132;
    if ((*v132)(v110, 1, v89) == 1)
    {
      sub_1CFE214E4(v120, sub_1CFDF6B98);
      v143 = v142(&v110[v141], 1, v89);
      v144 = v356;
      if (v143 == 1)
      {
        sub_1CFE214E4(v128, sub_1CFE213AC);
        v293 = sub_1CFDF6B98;
        v294 = v110;
LABEL_59:
        sub_1CFE214E4(v294, v293);
        v376(v144, 1, 1, v89);
        v295 = v298;
        sub_1CFDA6ADC(v297, v298, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
        result = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
        *(v295 + *(result + 20)) = v379;
        return result;
      }

      goto LABEL_12;
    }

    v145 = v314;
    sub_1CFE217C8(v110, v314, sub_1CFDF6B98);
    if (v142(&v110[v141], 1, v89) == 1)
    {
      sub_1CFE214E4(v120, sub_1CFDF6B98);
      (*v382)(v145, v89);
      v144 = v356;
LABEL_12:
      sub_1CFE214E4(v110, sub_1CFDF6B34);
      goto LABEL_14;
    }

    v146 = v360;
    (*v361)(v360, &v110[v141], v89);
    sub_1CFDA78C8(&qword_1EDC31AB0);
    v147 = sub_1CFE308B4();
    v148 = *v382;
    (*v382)(v146, v383);
    sub_1CFE214E4(v120, sub_1CFDF6B98);
    v148(v145, v383);
    v89 = v383;
    sub_1CFE214E4(v110, sub_1CFDF6B98);
    v144 = v356;
    if (v147)
    {
      v293 = sub_1CFE213AC;
      v294 = v373;
      goto LABEL_59;
    }

LABEL_14:
    v149 = v373;
    v150 = v375;
    v151 = v355;
    sub_1CFE217C8(&v373[v375], v355, sub_1CFDF6B98);
    result = (v142)(v151, 1, v89);
    if (result == 1)
    {
      goto LABEL_63;
    }

    v153 = *v361;
    (*v361)(v144, v151, v89);
    v154 = v354;
    sub_1CFE21830(&v149[v150], v354, sub_1CFDF6B98);
    result = (v142)(v154, 1, v89);
    if (result == 1)
    {
      goto LABEL_62;
    }

    v155 = v353;
    v153(v353, v154, v89);
    sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    v157 = *(v156 + 36);
    sub_1CFDA78C8(&qword_1EDC31AB0);
    if (sub_1CFE308B4())
    {
      v381 = *v382;
      v381(v155, v89);
      v158 = 1;
    }

    else
    {
      v387 = 1;
      sub_1CFDA78C8(&unk_1EDC31E78);
      sub_1CFE30C94();
      v381 = *v382;
      v381(v155, v89);
      v158 = 0;
    }

    v159 = v376;
    v376(&v149[v150], v158, 1, v89);
    v159(v144, 0, 1, v89);
    v160 = v378;
    v161 = (v153)(v378, v144, v89);
    result = sub_1CFE21724(v161, 200.0, 250.0);
    v163 = v162;
    v164 = v162 * 0.5;
    if (v164 > v163 * 1.5)
    {
      break;
    }

    sub_1CFE21724(result, v164, v163 * 1.5);
    v166 = v165;
    v167 = v360;
    sub_1CFE307B4();
    v168 = v352;
    sub_1CFE307B4();
    sub_1CFDA78C8(&qword_1EDC32CA8);
    result = sub_1CFE30874();
    if ((result & 1) == 0)
    {
      goto LABEL_61;
    }

    v169 = v329;
    v153(v329, v167, v89);
    v170 = v331;
    v153((v169 + *(v331 + 48)), v168, v89);
    v171 = v330;
    sub_1CFE217C8(v169, v330, sub_1CFDA7460);
    v172 = *(v170 + 48);
    v173 = v380;
    v153(v380, v171, v383);
    v174 = v381;
    v381(v171 + v172, v383);
    sub_1CFE21830(v169, v171, sub_1CFDA7460);
    v175 = v383;
    v153((v173 + *(v328 + 36)), (v171 + *(v170 + 48)), v383);
    v174(v171, v175);
    v176 = objc_opt_self();
    v177 = [v176 kilocalorieUnit];
    v178 = *v365;
    v179 = v368;
    v180 = v369;
    (*v365)(v368, v366, v369);
    v371 = v177;
    if (v351)
    {
      sub_1CFE30414();
      v181 = *v364;
      (*v364)(v179, v180);
      v182 = objc_opt_self();
      v183 = [v182 quantityWithUnit:v177 doubleValue:v166];
      v184 = v306;
      v322 = v176;
      v321 = v178;
      v320 = v181;
      v319 = v182;
      if (v183)
      {
        v185 = v183;
        sub_1CFDAD5CC();
        v186 = v185;
        sub_1CFE306B4();
        sub_1CFDAC3A0(0);
        (*(*(v187 - 8) + 56))(v184, 0, 1, v187);
      }

      else
      {
        sub_1CFDAC3A0(0);
        (*(*(v193 - 8) + 56))(v184, 1, 1, v193);
      }

      v194 = v349;
      v195 = v303;
      sub_1CFE21830(v184, v303, sub_1CFDAD280);
      v196 = v195;
      v197 = v341;
      sub_1CFE21830(v196, v341, type metadata accessor for TrainingLoadAcuteBaseline);
      v198 = v345;
      *v345 = v163;
      swift_storeEnumTagMultiPayload();
      v199 = v342;
      sub_1CFE217C8(v197, v342, type metadata accessor for TrainingLoadAcuteBaseline);
      v200 = v346;
      sub_1CFE217C8(v198, v346, type metadata accessor for TrainingLoadChronicBaseline);
      TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)(v199, v200, v194);
      v201 = v326;
      v202 = v160;
      v203 = v383;
      v204 = v367[0];
      (v367[0])(v326, v202, v383);
      v205 = MEMORY[0x1E69E66A8];
      v206 = v300;
      sub_1CFDA6ADC(v380, v300, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
      v207 = v311;
      sub_1CFE217C8(v194, v311, type metadata accessor for TrainingLoadBaselineComparison);
      v208 = SampleDaySummary;
      v209 = v332;
      v318 = *(SampleDaySummary + 28);
      v332[v318] = 5;
      v204(v209, v201, v203);
      sub_1CFDA6ADC(v206, &v209[*(v208 + 20)], &qword_1EDC32C90, v205);
      sub_1CFE217C8(v207, &v209[*(v208 + 32)], type metadata accessor for TrainingLoadBaselineComparison);
      v210 = v207 + *(BaselineComparison + 24);
      if (*(v210 + 8))
      {

        sub_1CFE214E4(v207, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFDA7A74(v206);
        v381(v326, v383);
        sub_1CFE214E4(v349, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFE214E4(v345, type metadata accessor for TrainingLoadChronicBaseline);
        sub_1CFE214E4(v341, type metadata accessor for TrainingLoadAcuteBaseline);
        v211 = *v362;
        (*v362)(v338, v363);
        v212 = 5;
      }

      else
      {
        TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v210);

        sub_1CFE214E4(v207, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFDA7A74(v206);
        v381(v326, v383);
        sub_1CFE214E4(v349, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFE214E4(v345, type metadata accessor for TrainingLoadChronicBaseline);
        sub_1CFE214E4(v341, type metadata accessor for TrainingLoadAcuteBaseline);
        v211 = *v362;
        (*v362)(v338, v363);
        v212 = v384;
      }

      v213 = v302;
      v214 = v379;
      v215 = v332;
      v332[v318] = v212;
      v216 = v215 + *(SampleDaySummary + 24);
      *v216 = 13;
      *(v216 + 8) = 0;
      sub_1CFE21830(v215, v213, type metadata accessor for TrainingLoadSampleDaySummary);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v218 = v347;
      v219 = v307;
      v220 = v378;
      v221 = v320;
      v222 = v319;
      v371 = v211;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v214 = sub_1CFDDDE34(0, v214[2] + 1, 1, v214);
      }

      v223 = v369;
      v225 = v214[2];
      v224 = v214[3];
      if (v225 >= v224 >> 1)
      {
        v214 = sub_1CFDDDE34(v224 > 1, v225 + 1, 1, v214);
      }

      v214[2] = v225 + 1;
      v226 = (*(v337 + 80) + 32) & ~*(v337 + 80);
      v379 = v214;
      v317 = *(v337 + 72);
      sub_1CFE21830(v213, v214 + v226 + v317 * v225, type metadata accessor for TrainingLoadSampleDaySummary);
      v227 = [v322 kilocalorieUnit];
      v228 = v368;
      (v321)(v368, v366, v223);
      sub_1CFE30414();
      v221(v228, v223);
      v322 = v227;
      v229 = [v222 quantityWithUnit:v227 doubleValue:v166];
      v318 = v226;
      if (v229)
      {
        v230 = v229;
        sub_1CFDAD5CC();
        v231 = v230;
        sub_1CFE306B4();
        sub_1CFDAC3A0(0);
        (*(*(v232 - 8) + 56))(v219, 0, 1, v232);
      }

      else
      {
        sub_1CFDAC3A0(0);
        (*(*(v265 - 8) + 56))(v219, 1, 1, v265);
      }

      v266 = v220;
      v267 = v304;
      sub_1CFE21830(v219, v304, sub_1CFDAD280);
      v268 = v267;
      v269 = v343;
      sub_1CFE21830(v268, v343, type metadata accessor for TrainingLoadAcuteBaseline);
      *v218 = v163;
      swift_storeEnumTagMultiPayload();
      v270 = v342;
      sub_1CFE217C8(v269, v342, type metadata accessor for TrainingLoadAcuteBaseline);
      v271 = v346;
      sub_1CFE217C8(v218, v346, type metadata accessor for TrainingLoadChronicBaseline);
      v272 = v350;
      TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)(v270, v271, v350);
      v273 = v327;
      v274 = v383;
      v275 = v367[0];
      (v367[0])(v327, v266, v383);
      v276 = v301;
      v277 = MEMORY[0x1E69E66A8];
      sub_1CFDA6ADC(v380, v301, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
      v278 = v312;
      sub_1CFE217C8(v272, v312, type metadata accessor for TrainingLoadBaselineComparison);
      v279 = SampleDaySummary;
      v280 = v334;
      v321 = *(SampleDaySummary + 28);
      v321[v334] = 5;
      v275(v280, v273, v274);
      sub_1CFDA6ADC(v276, &v280[*(v279 + 20)], &qword_1EDC32C90, v277);
      sub_1CFE217C8(v278, &v280[*(v279 + 32)], type metadata accessor for TrainingLoadBaselineComparison);
      v281 = v278 + *(BaselineComparison + 24);
      if (*(v281 + 8))
      {

        sub_1CFE214E4(v278, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFDA7A74(v276);
        v89 = v383;
        v381(v327, v383);
        sub_1CFE214E4(v350, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFE214E4(v347, type metadata accessor for TrainingLoadChronicBaseline);
        sub_1CFE214E4(v343, type metadata accessor for TrainingLoadAcuteBaseline);
        (v371)(v339, v363);
        v133 = 5;
      }

      else
      {
        TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v281);

        sub_1CFE214E4(v278, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFDA7A74(v276);
        v89 = v383;
        v381(v327, v383);
        sub_1CFE214E4(v350, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFE214E4(v347, type metadata accessor for TrainingLoadChronicBaseline);
        sub_1CFE214E4(v343, type metadata accessor for TrainingLoadAcuteBaseline);
        (v371)(v339, v363);
        v133 = v385;
      }

      v110 = v325;
      v120 = v324;
      v128 = v373;
      v132 = v323;
      v134 = v334;
      v321[v334] = v133;
      v135 = v134 + *(SampleDaySummary + 24);
      *v135 = 37;
      *(v135 + 8) = 0;
      sub_1CFE21830(v134, v333, type metadata accessor for TrainingLoadSampleDaySummary);
      v136 = v379;
      v138 = v379[2];
      v137 = v379[3];
      if (v138 >= v137 >> 1)
      {
        v136 = sub_1CFDDDE34(v137 > 1, v138 + 1, 1, v379);
      }

      sub_1CFDA7A74(v380);
      v381(v378, v89);
      v136[2] = v138 + 1;
      v379 = v136;
      v139 = v136 + v318 + v138 * v317;
      v140 = &v365;
      goto LABEL_6;
    }

    sub_1CFE30414();
    (*v364)(v179, v180);
    v188 = [objc_opt_self() quantityWithUnit:v177 doubleValue:v166];
    if (v188)
    {
      v189 = v188;
      sub_1CFDAD5CC();
      v190 = v189;
      v191 = v308;
      sub_1CFE306B4();
      sub_1CFDAC3A0(0);
      (*(*(v192 - 8) + 56))(v191, 0, 1, v192);
    }

    else
    {
      sub_1CFDAC3A0(0);
      v191 = v308;
      (*(*(v233 - 8) + 56))(v308, 1, 1, v233);
    }

    v234 = v316;
    v235 = v305;
    sub_1CFE21830(v191, v305, sub_1CFDAD280);
    v236 = v344;
    sub_1CFE21830(v235, v344, type metadata accessor for TrainingLoadAcuteBaseline);
    v237 = v348;
    *v348 = v163;
    swift_storeEnumTagMultiPayload();
    sub_1CFE217C8(v236, v234, type metadata accessor for TrainingLoadAcuteBaseline);
    v238 = v237;
    v239 = v309;
    sub_1CFE217C8(v238, v309, type metadata accessor for TrainingLoadChronicBaseline);
    v240 = BaselineComparison;
    v241 = v359;
    v242 = v359 + *(BaselineComparison + 24);
    sub_1CFE217C8(v234, v359, type metadata accessor for TrainingLoadAcuteBaseline);
    v243 = v241;
    sub_1CFE217C8(v239, v241 + *(v240 + 20), type metadata accessor for TrainingLoadChronicBaseline);
    v244 = v310;
    sub_1CFE217C8(v239, v310, type metadata accessor for TrainingLoadChronicBaseline);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1CFE214E4(v239, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v234, type metadata accessor for TrainingLoadAcuteBaseline);
      *v242 = 0;
      *(v242 + 8) = 1;
      sub_1CFE214E4(v244, type metadata accessor for TrainingLoadChronicBaseline);
      v247 = v315;
      v248 = v358;
      goto LABEL_42;
    }

    v245 = *v244;
    v246 = *v244 == 0.0;
    v247 = v315;
    v248 = v358;
    if (v246)
    {
      sub_1CFE214E4(v239, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v316, type metadata accessor for TrainingLoadAcuteBaseline);
      *v242 = 0;
      *(v242 + 8) = 1;
LABEL_42:
      v249 = v378;
      goto LABEL_43;
    }

    v282 = v316;
    v283 = v299;
    sub_1CFE217C8(v316, v299, sub_1CFDAD280);
    sub_1CFDAC3A0(0);
    v285 = v284;
    v286 = *(v284 - 8);
    v287 = (*(v286 + 48))(v283, 1, v284);
    v288 = v378;
    if (v287 == 1)
    {
      sub_1CFE214E4(v283, sub_1CFDAD280);
      sub_1CFE214E4(v239, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v282, type metadata accessor for TrainingLoadAcuteBaseline);
      *v242 = 0;
      *(v242 + 8) = 1;
    }

    else
    {
      v289 = v239;
      v290 = sub_1CFE30684();
      (*(v286 + 8))(v283, v285);
      [v290 _value];
      v292 = v291;

      sub_1CFE214E4(v289, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v282, type metadata accessor for TrainingLoadAcuteBaseline);
      *v242 = (v292 - v245) / v245;
      *(v242 + 8) = 0;
    }

    v243 = v359;
    v247 = v315;
    v248 = v358;
    v249 = v288;
LABEL_43:
    v250 = v383;
    v251 = v367[0];
    (v367[0])(v248, v249, v383);
    v252 = MEMORY[0x1E69E66A8];
    sub_1CFDA6ADC(v380, v247, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    v253 = v313;
    sub_1CFE217C8(v243, v313, type metadata accessor for TrainingLoadBaselineComparison);
    v254 = SampleDaySummary;
    v255 = v336;
    v322 = *(SampleDaySummary + 28);
    *(v322 + v336) = 5;
    v251(v255, v248, v250);
    sub_1CFDA6ADC(v247, &v255[*(v254 + 20)], &qword_1EDC32C90, v252);
    sub_1CFE217C8(v253, &v255[*(v254 + 32)], type metadata accessor for TrainingLoadBaselineComparison);
    v256 = v253 + *(BaselineComparison + 24);
    if (*(v256 + 8))
    {

      sub_1CFE214E4(v253, type metadata accessor for TrainingLoadBaselineComparison);
      sub_1CFDA7A74(v247);
      v89 = v383;
      v381(v358, v383);
      sub_1CFE214E4(v359, type metadata accessor for TrainingLoadBaselineComparison);
      sub_1CFE214E4(v348, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v344, type metadata accessor for TrainingLoadAcuteBaseline);
      (*v362)(v340, v363);
      v257 = 5;
    }

    else
    {
      TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v256);

      sub_1CFE214E4(v253, type metadata accessor for TrainingLoadBaselineComparison);
      sub_1CFDA7A74(v247);
      v89 = v383;
      v381(v358, v383);
      sub_1CFE214E4(v359, type metadata accessor for TrainingLoadBaselineComparison);
      sub_1CFE214E4(v348, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v344, type metadata accessor for TrainingLoadAcuteBaseline);
      (*v362)(v340, v363);
      v257 = v386;
    }

    v110 = v325;
    v128 = v373;
    v132 = v323;
    v258 = v336;
    *(v322 + v336) = v257;
    v259 = v258 + *(SampleDaySummary + 24);
    *v259 = 0;
    *(v259 + 8) = 1;
    sub_1CFE21830(v258, v335, type metadata accessor for TrainingLoadSampleDaySummary);
    v260 = v379;
    v261 = swift_isUniquelyReferenced_nonNull_native();
    v120 = v324;
    if ((v261 & 1) == 0)
    {
      v260 = sub_1CFDDDE34(0, v260[2] + 1, 1, v260);
    }

    v263 = v260[2];
    v262 = v260[3];
    if (v263 >= v262 >> 1)
    {
      v260 = sub_1CFDDDE34(v262 > 1, v263 + 1, 1, v260);
    }

    sub_1CFDA7A74(v380);
    v381(v378, v89);
    v260[2] = v263 + 1;
    v264 = (*(v337 + 80) + 32) & ~*(v337 + 80);
    v379 = v260;
    v139 = v260 + v264 + *(v337 + 72) * v263;
    v140 = v367;
LABEL_6:
    sub_1CFE21830(*(v140 - 32), v139, type metadata accessor for TrainingLoadSampleDaySummary);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void sub_1CFE213AC()
{
  if (!qword_1EC509F40)
  {
    sub_1CFDA7600(255, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    sub_1CFE2142C();
    v0 = sub_1CFE30EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509F40);
    }
  }
}

unint64_t sub_1CFE2142C()
{
  result = qword_1EC509B98;
  if (!qword_1EC509B98)
  {
    sub_1CFDA7600(255, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    sub_1CFDA78C8(&unk_1EDC31E78);
    sub_1CFDF32F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B98);
  }

  return result;
}

uint64_t sub_1CFE214E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static TrainingLoadSampleDaySummaryCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA78C8(&qword_1EDC31AB0);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v5 = *(v4 + 36);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TrainingLoadSampleDaySummaryCollection() + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1CFDD3AE4(v7, v8);
}

uint64_t sub_1CFE21630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE307E4();
  sub_1CFDA78C8(&qword_1EDC31AB0);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v7 = *(v6 + 36);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_1CFDD3AE4(v9, v10);
}

uint64_t sub_1CFE21724(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1D3877000](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1CFE21724(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1CFE217C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE21830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFE21898()
{
  sub_1CFDA7600(319, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if (v0 <= 0x3F)
  {
    sub_1CFDAA2DC(319, &qword_1EDC31A98, type metadata accessor for TrainingLoadSampleDaySummary, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id HKTableFormatter.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleDaySummary();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1CFE30A74();
  v9 = [v7 initWithColumnTitles_];

  v10 = *(a1 + *(type metadata accessor for SleepingSampleDaySummaryCollection() + 20));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(type metadata accessor for GregorianDayRange() + 20);
    v13 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    v15 = v9;
    do
    {
      sub_1CFE23EC4(v13, v6, type metadata accessor for SleepingSampleDaySummary);
      sub_1CFE21B14(v6);
      sub_1CFE23F2C(v6, type metadata accessor for SleepingSampleDaySummary);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  sub_1CFE23F2C(a1, type metadata accessor for SleepingSampleDaySummaryCollection);
  return v9;
}

void sub_1CFE21B14(uint64_t a1)
{
  v280 = sub_1CFE31244();
  v279 = *(v280 - 8);
  v2 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v278 = &v272 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE23C78(0, &qword_1EC5094F0, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968048]);
  v277 = v4;
  v276 = *(v4 - 8);
  v5 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v275 = &v272 - v6;
  sub_1CFE23C78(0, &qword_1EC509500, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968070]);
  v274 = v7;
  v273 = *(v7 - 8);
  v8 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v272 = &v272 - v9;
  v295 = sub_1CFE301E4();
  v294 = *(v295 - 8);
  v10 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v295);
  v293 = &v272 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v289 = &v272 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v287 = &v272 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v285 = &v272 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v283 = &v272 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v282 = &v272 - v22;
  v308 = sub_1CFE30234();
  v314 = *(v308 - 8);
  v23 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v308);
  v310 = &v272 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCC54(0, &qword_1EC509508, sub_1CFDBCC00, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v311 = v25;
  v299 = *(v25 - 8);
  v26 = *(v299 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v292 = &v272 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v313 = &v272 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v307 = &v272 - v31;
  sub_1CFDAD280();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v288 = &v272 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v286 = &v272 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v284 = &v272 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v296 = &v272 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v309 = &v272 - v42;
  v315 = sub_1CFE30204();
  v306 = *(v315 - 1);
  v43 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v315);
  v305 = &v272 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1CFE303F4();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v312 = &v272 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCC54(0, &qword_1EC509518, sub_1CFDBCCBC, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  v49 = *(v48 - 1);
  v303 = v48;
  v304 = v49;
  v50 = *(v49 + 64);
  v51 = MEMORY[0x1EEE9AC00](v48);
  v301 = &v272 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v302 = (&v272 - v53);
  v300 = sub_1CFE30284();
  v54 = *(v300 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v300);
  v57 = &v272 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_1CFE30314();
  v58 = *(v298 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v61 = &v272 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_1CFE302B4();
  v62 = *(v297 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v65 = &v272 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE23E74();
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CFE37B90;
  sub_1CFE30274();
  sub_1CFE307D4();
  sub_1CFE30264();
  v67 = sub_1CFE30304();
  v69 = v68;
  (*(v54 + 8))(v57, v300);
  (*(v58 + 8))(v61, v298);
  v70 = v66;
  (*(v62 + 8))(v65, v297);
  *(v66 + 32) = v67;
  *(v66 + 40) = v69;
  v317 = sub_1CFE307A4();
  sub_1CFE303D4();
  sub_1CFDBCCBC();
  v71 = v301;
  sub_1CFE30144();
  v72 = v305;
  sub_1CFE301F4();
  v74 = v302;
  v73 = v303;
  MEMORY[0x1D3875810](v72, v303);
  (*(v306 + 8))(v72, v315);
  v75 = *(v304 + 8);
  v75(v71, v73);
  sub_1CFDBCD10();
  sub_1CFE30CD4();
  v76 = v309;
  v75(v74, v73);
  v306 = type metadata accessor for SleepingSampleDaySummary();
  v77 = *(v306 + 32);
  v298 = a1;
  v78 = a1 + v77;
  v305 = type metadata accessor for SleepingSampleAggregate();
  v79 = *(v305 + 6);
  v281 = v78;
  sub_1CFE23EC4(v78 + v79, v76, sub_1CFDAD280);
  sub_1CFE23C78(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E696B370]);
  v81 = v80;
  v82 = *(v80 - 8);
  v303 = *(v82 + 48);
  v304 = v82 + 48;
  v83 = v303(v76, 1, v80);
  v84 = v310;
  v85 = v311;
  v86 = v307;
  v87 = v313;
  v315 = v70;
  v297 = v81;
  v291 = v82;
  if (v83 == 1)
  {
    sub_1CFE23F2C(v76, sub_1CFDAD280);
    v88 = 0xA600000000000000;
    v89 = 0x9380E29380E2;
  }

  else
  {
    v90 = sub_1CFE30684();
    v302 = v90;
    (*(v82 + 8))(v76, v81);
    v91 = [objc_opt_self() _countPerMinuteUnit];
    [v90 doubleValueForUnit_];
    v316 = v92;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    sub_1CFE30214();
    MEMORY[0x1D3875870](v84, v85);
    (*(v314 + 8))(v84, v308);
    v93 = *(v299 + 8);
    v93(v87, v85);
    sub_1CFDBCF44();
    v70 = v315;
    sub_1CFE307F4();

    v93(v86, v85);
    v89 = v317;
    v88 = v318;
  }

  v70[8] = v89;
  v70[9] = v88;
  v309 = objc_opt_self();
  v94 = [v309 _countPerMinuteUnit];
  v95 = type metadata accessor for SleepingSampleBaselineComparison();
  v96 = v281;
  v97 = v282;
  sub_1CFE23EC4(v281 + v95[6], v282, sub_1CFDEEC00);
  v98 = type metadata accessor for SleepingSampleBaseline();
  v99 = *(v98 - 8);
  v100 = *(v99 + 48);
  v300 = v99 + 48;
  v301 = v100;
  v101 = (v100)(v97, 1, v98);
  v302 = v95;
  v102 = v283;
  if (v101 == 1)
  {
    sub_1CFE23F2C(v97, sub_1CFDEEC00);
    v103 = v96 + v95[5];
    countAndFlagsBits = sub_1CFE23CE0();
    object = v105;
  }

  else
  {
    v107 = *(v98 + 20);
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v108 = sub_1CFE30684();
    LOBYTE(v317) = 0;
    v109 = HKQuantityRange.formattedValue(for:unit:)(&v317, v94);
    countAndFlagsBits = v109._countAndFlagsBits;
    object = v109._object;

    sub_1CFE23F2C(v97, type metadata accessor for SleepingSampleBaseline);
  }

  v111 = v313;
  v110 = v314;
  v112 = v310;

  v70[10] = countAndFlagsBits;
  v70[11] = object;
  v113 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v114)
  {
    v115 = 0xA600000000000000;
    v116 = 0x9380E29380E2;
  }

  else
  {
    v316 = v113;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v117 = v292;
    sub_1CFE301A4();
    sub_1CFE30214();
    v118 = v311;
    MEMORY[0x1D3875870](v112, v311);
    (*(v110 + 8))(v112, v308);
    v119 = *(v299 + 8);
    v119(v117, v118);
    v120 = v111;
    v121 = v293;
    sub_1CFE301D4();
    v122 = v307;
    MEMORY[0x1D3875850](v121, v118);
    (*(v294 + 8))(v121, v295);
    v119(v120, v118);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v123 = v122;
    v112 = v310;
    v124 = v118;
    v70 = v315;
    v119(v123, v124);
    v116 = v317;
    v115 = v318;
  }

  v125 = v296;
  v296 = v98;
  v70[12] = v116;
  v70[13] = v115;
  v126 = v298 + *(v306 + 36);
  sub_1CFE23EC4(v126 + *(v305 + 6), v125, sub_1CFDAD280);
  v127 = v297;
  if (v303(v125, 1, v297) == 1)
  {
    sub_1CFE23F2C(v125, sub_1CFDAD280);
    v128 = 0xA600000000000000;
    v129 = 0x9380E29380E2;
    v130 = v309;
  }

  else
  {
    v131 = sub_1CFE30684();
    (*(v291 + 8))(v125, v127);
    LOBYTE(v317) = 2;
    v130 = v309;
    v132 = [v309 percentUnit];
    v133 = HKQuantity.formattedValue(for:unit:)(&v317, v132);
    v129 = v133._countAndFlagsBits;
    v128 = v133._object;
  }

  v70[14] = v129;
  v70[15] = v128;
  v134 = [v130 percentUnit];
  v135 = v302;
  sub_1CFE23EC4(v126 + v302[6], v102, sub_1CFDEEC00);
  v136 = v296;
  if ((v301)(v102, 1, v296) == 1)
  {
    sub_1CFE23F2C(v102, sub_1CFDEEC00);
    v137 = v126 + v135[5];
    v138 = sub_1CFE23CE0();
    v140 = v139;
  }

  else
  {
    v141 = *(v136 + 5);
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v142 = sub_1CFE30684();
    LOBYTE(v317) = 2;
    v143 = HKQuantityRange.formattedValue(for:unit:)(&v317, v134);
    v138 = v143._countAndFlagsBits;
    v140 = v143._object;

    sub_1CFE23F2C(v102, type metadata accessor for SleepingSampleBaseline);
  }

  v145 = v313;
  v144 = v314;

  v70[16] = v138;
  v70[17] = v140;
  v146 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v147)
  {
    v148 = 0xA600000000000000;
    v149 = 0x9380E29380E2;
  }

  else
  {
    v316 = v146;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v150 = v292;
    sub_1CFE301A4();
    sub_1CFE30214();
    v151 = v311;
    MEMORY[0x1D3875870](v112, v311);
    (*(v144 + 8))(v112, v308);
    v152 = *(v299 + 8);
    v152(v150, v151);
    v153 = v293;
    sub_1CFE301D4();
    v154 = v307;
    MEMORY[0x1D3875850](v153, v151);
    v155 = v153;
    v145 = v313;
    (*(v294 + 8))(v155, v295);
    v152(v145, v151);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v156 = v151;
    v70 = v315;
    v152(v154, v156);
    v149 = v317;
    v148 = v318;
  }

  v157 = v309;
  v158 = v284;
  v70[18] = v149;
  v70[19] = v148;
  v159 = v298 + *(v306 + 40);
  sub_1CFE23EC4(v159 + *(v305 + 6), v158, sub_1CFDAD280);
  v160 = v297;
  if (v303(v158, 1, v297) == 1)
  {
    sub_1CFE23F2C(v158, sub_1CFDAD280);
    v161 = 0xA600000000000000;
    v162 = 0x9380E29380E2;
    v163 = v285;
    v164 = 0x1E83D0000;
  }

  else
  {
    v165 = sub_1CFE30684();
    v284 = v165;
    (*(v291 + 8))(v158, v160);
    v164 = 0x1E83D0000uLL;
    v283 = [v157 _countPerMinuteUnit];
    [v165 doubleValueForUnit_];
    v316 = v166;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    v317 = 1;
    sub_1CFDBCEEC();
    sub_1CFDA79E4(&qword_1EC509550, sub_1CFDBCEEC);
    v167 = v310;
    sub_1CFE30224();
    v168 = v307;
    v169 = v311;
    MEMORY[0x1D3875870](v167, v311);
    (*(v314 + 8))(v167, v308);
    v170 = *(v299 + 8);
    v170(v145, v169);
    sub_1CFDBCF44();
    sub_1CFE307F4();

    v170(v168, v169);
    v136 = v296;
    v157 = v309;
    v70 = v315;
    v162 = v317;
    v161 = v318;
    v163 = v285;
  }

  v70[20] = v162;
  v70[21] = v161;
  v171 = [v157 *(v164 + 3224)];
  v172 = v302;
  sub_1CFE23EC4(v159 + v302[6], v163, sub_1CFDEEC00);
  if ((v301)(v163, 1, v136) == 1)
  {
    sub_1CFE23F2C(v163, sub_1CFDEEC00);
    v173 = v159 + v172[5];
    v174 = sub_1CFE23CE0();
    v176 = v175;
  }

  else
  {
    v177 = *(v136 + 5);
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v178 = sub_1CFE30684();
    LOBYTE(v317) = 1;
    v179 = HKQuantityRange.formattedValue(for:unit:)(&v317, v171);
    v174 = v179._countAndFlagsBits;
    v176 = v179._object;

    sub_1CFE23F2C(v163, type metadata accessor for SleepingSampleBaseline);
  }

  v180 = v314;

  v70[22] = v174;
  v70[23] = v176;
  v181 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v182)
  {
    v183 = 0xA600000000000000;
    v184 = 0x9380E29380E2;
  }

  else
  {
    v316 = v181;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v185 = v292;
    sub_1CFE301A4();
    v186 = v310;
    sub_1CFE30214();
    v187 = v313;
    v188 = v311;
    MEMORY[0x1D3875870](v186, v311);
    (*(v180 + 8))(v186, v308);
    v189 = *(v299 + 8);
    v189(v185, v188);
    v190 = v293;
    sub_1CFE301D4();
    v191 = v307;
    MEMORY[0x1D3875850](v190, v188);
    (*(v294 + 8))(v190, v295);
    v189(v187, v188);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v192 = v188;
    v70 = v315;
    v189(v191, v192);
    v184 = v317;
    v183 = v318;
  }

  v193 = v298;
  v194 = v297;
  v195 = v286;
  v70[24] = v184;
  v70[25] = v183;
  v196 = v193 + *(v306 + 44);
  sub_1CFE23EC4(v196 + *(v305 + 6), v195, sub_1CFDAD280);
  if (v303(v195, 1, v194) == 1)
  {
    sub_1CFE23F2C(v195, sub_1CFDAD280);
    v197 = 0xA600000000000000;
    v198 = 0x9380E29380E2;
    v199 = v287;
    v200 = v302;
    v201 = v309;
  }

  else
  {
    v202 = sub_1CFE30684();
    (*(v291 + 8))(v195, v194);
    v201 = v309;
    v203 = [v309 _changeInDegreeFahrenheitUnit];
    v204 = v202;
    v205 = v203;
    v206 = v272;
    Measurement<>.init(wristTemperatureForFormatting:unit:)(v204, v205);
    v207 = v275;
    static FormatStyle<>.wristTemperature(unit:)(v205, v275);
    sub_1CFDBCE68();
    v208 = v274;
    v209 = v277;
    sub_1CFE2FFC4();

    v210 = v207;
    v136 = v296;
    (*(v276 + 8))(v210, v209);
    v211 = v208;
    v194 = v297;
    (*(v273 + 8))(v206, v211);
    v198 = v317;
    v197 = v318;
    v199 = v287;
    v200 = v302;
  }

  v70[26] = v198;
  v70[27] = v197;
  v212 = [v201 _changeInDegreeFahrenheitUnit];
  sub_1CFE23EC4(v196 + v200[6], v199, sub_1CFDEEC00);
  if ((v301)(v199, 1, v136) == 1)
  {
    sub_1CFE23F2C(v199, sub_1CFDEEC00);
    v213 = v196 + v200[5];
    v214 = sub_1CFE23CE0();
    v216 = v215;
  }

  else
  {
    v217 = *(v136 + 5);
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v218 = v199;
    v219 = sub_1CFE30684();
    LOBYTE(v317) = 3;
    v220 = HKQuantityRange.formattedValue(for:unit:)(&v317, v212);
    v214 = v220._countAndFlagsBits;
    v216 = v220._object;

    v221 = v218;
    v200 = v302;
    sub_1CFE23F2C(v221, type metadata accessor for SleepingSampleBaseline);
  }

  v70[28] = v214;
  v70[29] = v216;
  v222 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v223)
  {
    v224 = 0xA600000000000000;
    v225 = 0x9380E29380E2;
  }

  else
  {
    v316 = v222;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v226 = v292;
    sub_1CFE301A4();
    v227 = v310;
    sub_1CFE30214();
    v228 = v313;
    v229 = v311;
    MEMORY[0x1D3875870](v227, v311);
    (*(v314 + 8))(v227, v308);
    v230 = *(v299 + 8);
    v230(v226, v229);
    v231 = v293;
    sub_1CFE301D4();
    v232 = v307;
    MEMORY[0x1D3875850](v231, v229);
    v233 = v231;
    v200 = v302;
    (*(v294 + 8))(v233, v295);
    v230(v228, v229);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v234 = v232;
    v193 = v298;
    v235 = v229;
    v70 = v315;
    v230(v234, v235);
    v225 = v317;
    v224 = v318;
  }

  v236 = v289;
  v70[30] = v225;
  v70[31] = v224;
  v237 = v193 + *(v306 + 48);
  v238 = v288;
  sub_1CFE23EC4(v237 + *(v305 + 6), v288, sub_1CFDAD280);
  if (v303(v238, 1, v194) == 1)
  {
    sub_1CFE23F2C(v238, sub_1CFDAD280);
    v239 = 0xA600000000000000;
    v240 = 0x9380E29380E2;
    v241 = v311;
    v242 = v308;
    v243 = v309;
  }

  else
  {
    v244 = sub_1CFE30684();
    (*(v291 + 8))(v238, v194);
    v243 = v309;

    v245 = v244;
    sub_1CFE2F0F4(v245);

    v246 = v278;
    static FormatStyle<>.sleepDuration.getter(v278);
    sub_1CFDA79E4(&qword_1EC509538, MEMORY[0x1E696A218]);
    v247 = v280;
    sub_1CFE31254();

    (*(v279 + 8))(v246, v247);
    v240 = v317;
    v239 = v318;
    v241 = v311;
    v242 = v308;
  }

  v248 = v315;
  v315[32] = v240;
  v248[33] = v239;
  v249 = [v243 secondUnit];
  sub_1CFE23EC4(v237 + v200[6], v236, sub_1CFDEEC00);
  v250 = v296;
  if ((v301)(v236, 1, v296) == 1)
  {
    sub_1CFE23F2C(v236, sub_1CFDEEC00);
    v251 = v237 + v200[5];
    v252 = sub_1CFE23CE0();
    v254 = v253;
  }

  else
  {
    v255 = *(v250 + 5);
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v256 = sub_1CFE30684();
    LOBYTE(v317) = 4;
    v257 = HKQuantityRange.formattedValue(for:unit:)(&v317, v249);
    v252 = v257._countAndFlagsBits;
    v254 = v257._object;

    sub_1CFE23F2C(v236, type metadata accessor for SleepingSampleBaseline);
  }

  v258 = v314;

  v259 = v315;
  v315[34] = v252;
  v259[35] = v254;
  v260 = SleepingSampleBaselineComparison.relativeComparison.getter();
  v261 = 0x9380E29380E2;
  if (v262)
  {
    v263 = 0xA600000000000000;
  }

  else
  {
    v316 = v260;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v264 = v292;
    sub_1CFE301A4();
    v265 = v310;
    sub_1CFE30214();
    v266 = v313;
    MEMORY[0x1D3875870](v265, v241);
    (*(v258 + 8))(v265, v242);
    v267 = *(v299 + 8);
    v267(v264, v241);
    v268 = v293;
    sub_1CFE301D4();
    v269 = v307;
    MEMORY[0x1D3875850](v268, v241);
    (*(v294 + 8))(v268, v295);
    v267(v266, v241);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v267(v269, v241);
    v261 = v317;
    v263 = v318;
  }

  v270 = v315;
  v315[36] = v261;
  v270[37] = v263;
  v271 = sub_1CFE30A74();

  [v290 appendRow_];
}