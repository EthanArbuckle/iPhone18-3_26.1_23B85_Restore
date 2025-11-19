uint64_t LockProviding.synchronized(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8))(a3, a4);
  a1(v7);
  v8 = *(a4 + 16);

  return v8(a3, a4);
}

uint64_t LockProviding.synchronized<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  v9 = *(a5 + 16);

  return v9(a3, a5);
}

uint64_t sub_1DF69E888(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Publisher.retainingSink(receiveCompletion:receiveValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DF69EB20();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1DF6F5EDC();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v9;

  sub_1DF6F5ECC();
  swift_getWitnessTable();
  sub_1DF6F606C();
  sub_1DF6F5F4C();

  swift_getWitnessTable();
  v11 = sub_1DF6F5F5C();
  os_unfair_lock_lock((v9 + 24));
  sub_1DF69EBB0((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));

  return v11;
}

uint64_t sub_1DF69EAE0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1DF69EB20()
{
  if (!qword_1EDC04680)
  {
    sub_1DF6D0A60();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1DF6F6BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04680);
    }
  }
}

uint64_t sub_1DF69EB88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1DF69EBB0(uint64_t *a1)
{
  v3 = *a1;

  *a1 = v1;
}

uint64_t HKHealthStore.cloudSyncStatusPublisher()()
{
  sub_1DF69EE70();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC04760 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC04770;
  MEMORY[0x1EEE9AC00]();
  *(&v10 - 2) = v0;
  os_unfair_lock_lock((v7 + 24));
  sub_1DF6A00C4((v7 + 16), &v11);
  os_unfair_lock_unlock((v7 + 24));
  sub_1DF69EF18(0, &qword_1EDC04A80, &qword_1EDC046C8, 0x1E696BFE8, type metadata accessor for CloudSyncStatusPublisherImpl);
  sub_1DF69F164();
  sub_1DF69FF10();
  sub_1DF6F5FFC();
  sub_1DF6A02A0(qword_1EDC047C0, sub_1DF69EE70);
  v8 = sub_1DF6F5FEC();

  (*(v3 + 8))(v6, v2);
  return v8;
}

void sub_1DF69EE70()
{
  if (!qword_1EDC047B8)
  {
    sub_1DF69EF18(255, &qword_1EDC04A80, &qword_1EDC046C8, 0x1E696BFE8, type metadata accessor for CloudSyncStatusPublisherImpl);
    sub_1DF69F164();
    sub_1DF69FF10();
    v0 = sub_1DF6F5DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC047B8);
    }
  }
}

void sub_1DF69EF18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DF69EF80(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DF69EF80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1DF69F054(void *a1)
{
  v2 = a1[11];
  v3 = a1[12];
  sub_1DF6F5EBC();
  result = sub_1DF6F6A0C();
  if (v5 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v6 = a1[10];
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1DF69F164()
{
  if (!qword_1EDC04660)
  {
    sub_1DF69EF80(255, &qword_1EDC046C0, 0x1E696BFF0);
    sub_1DF69F1E4();
    v0 = sub_1DF6F6F6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04660);
    }
  }
}

unint64_t sub_1DF69F1E4()
{
  result = qword_1EDC05250;
  if (!qword_1EDC05250)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC05250);
  }

  return result;
}

uint64_t _s18HealthKitAdditions13FeatureStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for FeatureStatus.Eligibility(0) - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v7 = *(*(v30 - 1) + 64);
  (MEMORY[0x1EEE9AC00])();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for FeatureStatus(0) - 8) + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  sub_1DF69F8A4();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 56);
  sub_1DF69F908(a1, v20, type metadata accessor for FeatureStatus);
  sub_1DF69F908(a2, &v20[v21], type metadata accessor for FeatureStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DF69F908(v20, v13, type metadata accessor for FeatureStatus);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DF69F970(&v20[v21], v6, type metadata accessor for FeatureStatus.Eligibility);
      type metadata accessor for HKFeatureAvailabilityContext(0);
      sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
      sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
      sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
      sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
      sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158);
      v22 = sub_1DF6F61DC();
      sub_1DF69FE90(v6, type metadata accessor for FeatureStatus.Eligibility);
      sub_1DF69FE90(v13, type metadata accessor for FeatureStatus.Eligibility);
LABEL_14:
      v25 = type metadata accessor for FeatureStatus;
      goto LABEL_15;
    }

    v23 = type metadata accessor for FeatureStatus.Eligibility;
    v24 = v13;
  }

  else
  {
    sub_1DF69F908(v20, v15, type metadata accessor for FeatureStatus);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DF69F970(&v20[v21], v9, type metadata accessor for FeatureStatus.OnboardingRecord);
      type metadata accessor for HKFeatureAvailabilityContext(0);
      sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
      sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
      sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
      sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
      sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158);
      if (sub_1DF6F61DC() & 1) != 0 && (v26 = v30[5], sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168), sub_1DF69FAE8(qword_1EDC03660, &qword_1EDC04FA8, 0x1E696C168), (sub_1DF6F60DC()) && (sub_1DF69FCD8(*&v15[v30[6]], *&v9[v30[6]]) & 1) != 0 && (v27 = v30[7], (sub_1DF6F5A5C()))
      {
        sub_1DF69FE90(v9, type metadata accessor for FeatureStatus.OnboardingRecord);
        sub_1DF69FE90(v15, type metadata accessor for FeatureStatus.OnboardingRecord);
        v22 = 1;
      }

      else
      {
        sub_1DF69FE90(v9, type metadata accessor for FeatureStatus.OnboardingRecord);
        sub_1DF69FE90(v15, type metadata accessor for FeatureStatus.OnboardingRecord);
        v22 = 0;
      }

      goto LABEL_14;
    }

    v23 = type metadata accessor for FeatureStatus.OnboardingRecord;
    v24 = v15;
  }

  sub_1DF69FE90(v24, v23);
  v22 = 0;
  v25 = sub_1DF69F8A4;
LABEL_15:
  sub_1DF69FE90(v20, v25);
  return v22 & 1;
}

void sub_1DF69F8A4()
{
  if (!qword_1EDC04568)
  {
    type metadata accessor for FeatureStatus(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC04568);
    }
  }
}

uint64_t sub_1DF69F908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF69F970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DF69FA00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DF69FA50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF69FA98(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DF69EF80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF69FAE8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DF69EF80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF69FB2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DF69FB7C()
{
  if (!qword_1EDC05240)
  {
    sub_1DF6F5A7C();
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC05240);
    }
  }
}

uint64_t sub_1DF69FBD4()
{
  v1 = *v0;
  sub_1DF6F63EC();
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  v2 = sub_1DF6F6F2C();

  return v2;
}

uint64_t sub_1DF69FC50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DF6F63EC();
  v6 = v5;
  if (v4 == sub_1DF6F63EC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF6F6E2C();
  }

  return v9 & 1;
}

uint64_t sub_1DF69FCD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1DF6F6F0C();

    sub_1DF6F645C();
    v17 = sub_1DF6F6F2C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1DF6F6E2C() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF69FE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DF69FF10()
{
  result = qword_1EDC04A88[0];
  if (!qword_1EDC04A88[0])
  {
    sub_1DF69EF18(255, &qword_1EDC04A80, &qword_1EDC046C8, 0x1E696BFE8, type metadata accessor for CloudSyncStatusPublisherImpl);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC04A88);
  }

  return result;
}

uint64_t sub_1DF69FF94()
{
  type metadata accessor for PublisherCache();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() weakToWeakObjectsMapTable];
  sub_1DF6A0034();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EDC04770 = result;
  return result;
}

void sub_1DF6A0034()
{
  if (!qword_1EDC04690)
  {
    type metadata accessor for PublisherCache();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1DF6F6BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04690);
    }
  }
}

id sub_1DF6A00E0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = [*(*a1 + 16) objectForKey_];
  if (!result)
  {
    sub_1DF69EF18(0, &qword_1EDC04A80, &qword_1EDC046C8, 0x1E696BFE8, type metadata accessor for CloudSyncStatusPublisherImpl);
    v7 = swift_allocObject();
    v7[10] = a2;
    v7[11] = 0;
    v7[13] = 0;
    v7[14] = 0;
    v7[12] = 0;
    v8 = sub_1DF6A0228(0, 255);
    [*(v5 + 16) setObject:v8 forKey:a2];
    result = v8;
  }

  *a3 = result;
  return result;
}

void sub_1DF6A01C4()
{
  if (!qword_1EDC04670)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1DF6F6BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04670);
    }
  }
}

uint64_t sub_1DF6A0228(uint64_t a1, char a2)
{
  sub_1DF6A01C4();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 16) = v5;
  *(v2 + 32) = 0;
  *(v2 + 40) = 2;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  *(v2 + 24) = 16777472;
  return v2;
}

uint64_t sub_1DF6A02A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF6A0344(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_1DF6A03D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6A0468(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t static DownstreamHandlerSubscriptionState.ready(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  (*(v5 + 56))(a3, 0, 1, a2);
  type metadata accessor for DownstreamHandlerSubscriptionState();

  return swift_storeEnumTagMultiPayload();
}

uint64_t DownstreamHandlerSubscription.request(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v41 - v10;
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DownstreamHandlerSubscriptionState();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v41 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v46 = *(a3 + 32);
  v47 = a3 + 32;
  v46(v50, a2, a3);
  v21 = v51;
  v20 = v52;
  __swift_project_boxed_opaque_existential_0(v50, v51);
  (*(v20 + 8))(v21, v20);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v22 = *(a3 + 40);
  v48 = v3;
  v22(a2, a3);
  v45 = v11;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v49;
    if ((*(v49 + 48))(v19, 1, AssociatedTypeWitness) != 1)
    {
      v34 = v42;
      (*(v23 + 32))(v42, v19, AssociatedTypeWitness);
      v35 = *(swift_getTupleTypeMetadata2() + 48);
      v36 = v41;
      (*(v23 + 16))(v41, v34, AssociatedTypeWitness);
      *&v36[v35] = v44;
      swift_storeEnumTagMultiPayload();
      (*(a3 + 48))(v36, a2, a3);
      v46(v50, a2, a3);
      v37 = v51;
      v38 = v52;
      __swift_project_boxed_opaque_existential_0(v50, v51);
      (*(v38 + 16))(v37, v38);
      __swift_destroy_boxed_opaque_existential_1(v50);
      (*(a3 + 80))(a2, a3);
      return (*(v23 + 8))(v34, AssociatedTypeWitness);
    }

    v46(v50, a2, a3);
    v24 = v51;
    v25 = v52;
    __swift_project_boxed_opaque_existential_0(v50, v51);
    (*(v25 + 16))(v24, v25);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *&v19[*(TupleTypeMetadata2 + 48)];
  v28 = v49;
  v29 = v43;
  (*(v49 + 32))(v43, v19, AssociatedTypeWitness);
  (*(v28 + 16))(v15, v29, AssociatedTypeWitness);
  sub_1DF6F5F0C();
  v30 = sub_1DF6F5EEC();
  v31 = sub_1DF6F5F0C();
  if ((v30 & 1) == 0)
  {
    v32 = v44;
    result = sub_1DF6F5EEC();
    if ((result & 1) == 0)
    {
      if ((v27 | v32) < 0)
      {
        __break(1u);
        goto LABEL_16;
      }

      v31 = v27 + v32;
      if (!__OFADD__(v27, v32))
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
        return result;
      }
    }

    v31 = sub_1DF6F5F0C();
  }

LABEL_12:
  *&v15[*(TupleTypeMetadata2 + 48)] = v31;
  swift_storeEnumTagMultiPayload();
  (*(a3 + 48))(v15, a2, a3);
  v46(v50, a2, a3);
  v39 = v51;
  v40 = v52;
  __swift_project_boxed_opaque_existential_0(v50, v51);
  (*(v40 + 16))(v39, v40);
  (*(v28 + 8))(v29, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DF6A0BC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1DF6A0C08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DF6A0C84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DF6F63EC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DF6A0CB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A0D34()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DF6A0DB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF6F5DDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_1DF6A0E60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF6F5DDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF6A0F08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A0F54()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A0F8C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF6A0FCC()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1DF6B03FC(*(v0 + 24), v1);
  }

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF6A1024()
{
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1DF6F5A7C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v2 | 7);
}

uint64_t sub_1DF6A116C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF6A11AC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF6A11F4()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DF6A1244()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF6A1290()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1DF6A12CC(id a1, char a2)
{
  if (a2)
  {
  }
}

__n128 sub_1DF6A13C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DF6A13D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF6F613C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF6A14E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF6F613C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF6A1584()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A15C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6F5B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1DF6F5B5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1DF6B9190();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1DF6A1700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DF6F5B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1DF6F5B5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1DF6B9190();
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1DF6A184C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A1884()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF6A18BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A18F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1984@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF6BD050();
  result = sub_1DF6F61BC();
  *a1 = result;
  return result;
}

uint64_t sub_1DF6A19B8(uint64_t *a1)
{
  v1 = *a1;
  sub_1DF6BD050();

  return sub_1DF6F61CC();
}

uint64_t sub_1DF6A1A00@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 20);
  sub_1DF6C4974();
  result = sub_1DF6F60BC();
  *a1 = result;
  return result;
}

uint64_t sub_1DF6A1A80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1DF6C4974();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1DF6F5A7C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

void sub_1DF6A1BF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_1DF6C4974();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1DF6F5A7C();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1DF6A1DA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1DD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A1E10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1E48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A1E80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1F18(uint64_t a1, uint64_t a2)
{
  sub_1DF6C9204(0, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF6A1FA0(uint64_t a1, uint64_t a2)
{
  sub_1DF6C9204(0, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF6A2030()
{
  sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF6A20D8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 1, v2 | 7);
}

uint64_t sub_1DF6A215C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DF6A21DC()
{
  MEMORY[0x1E12DCC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A2214()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A224C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A22B0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_1DF6F5DDC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1DF6F5B5C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

char *sub_1DF6A2444(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    *(result + 1) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = sub_1DF6F5DDC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1DF6F5B5C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[7]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1DF6A25E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A2620(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF6F5DDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DF6A26CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF6F5DDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF6A2780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF6D96D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1DF6F613C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DF6A2870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DF6D96D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1DF6F613C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DF6A296C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A29A4()
{
  MEMORY[0x1E12DCC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A29E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A2A1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF6A2A58()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for HKUserDomainConceptQueryDescriptor() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;

  v7 = *(v6 + 8);

  v8 = v2[12];
  v9 = sub_1DF6F613C();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DF6A2B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF6F613C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF6A2C14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF6F613C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF6A2CB8(uint64_t a1, uint64_t a2)
{
  sub_1DF6E04B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF6A2D24(uint64_t a1, uint64_t a2)
{
  sub_1DF6E04B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF6A2D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF6E0C48(0, &qword_1EDC03EE0, MEMORY[0x1E69E87B8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1DF6A2E78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DF6E0C48(0, &qword_1EDC03EE0, MEMORY[0x1E69E87B8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }
}

uint64_t sub_1DF6A2F4C()
{
  sub_1DF6E0C48(0, &qword_1EDC03EE8, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DF6A3004()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A303C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DF6A3078()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A30B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A30EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A3124()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A31F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HKHealthStore.StatisticsCollectionPublisher.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DF6A32B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HKHealthStore.StatisticsCollectionPublisher.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF6A3368(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1DF6F5A7C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1DF6F590C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_1DF6F1E2C();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[9]];

  return v16(v17, a2, v15);
}

char *sub_1DF6A34D4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1DF6F5A7C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1DF6F590C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_1DF6F1E2C();
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1DF6A3640()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

id sub_1DF6A3680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_1DF6F4D38(v2, v3);
}

uint64_t sub_1DF6A3698(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t HKSharingRecipientAuthorizationStore.getAuthorizationIdentifiers()()
{
  *(swift_allocObject() + 16) = v0;
  sub_1DF6A3844();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_1DF6F5FBC();
}

void sub_1DF6A372C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DF6A4EC8;
  *(v7 + 24) = v6;
  v9[4] = sub_1DF6A4F08;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DF6A3F90;
  v9[3] = &block_descriptor;
  v8 = _Block_copy(v9);

  [a3 fetchSharingAuthorizationsWithCompletion_];
  _Block_release(v8);
}

void sub_1DF6A3844()
{
  if (!qword_1ECE4D1E0)
  {
    sub_1DF69FA00(255, &qword_1ECE4D1E8, &type metadata for HKSharingAuthorizationIdentifier, MEMORY[0x1E69E62F8]);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D1E0);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF6A3960(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6A3980(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1DF6A39DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6A39FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1DF6A3CD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6A3CF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_1DF6A3D20(unint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);

    return;
  }

  if (!a1)
  {
    a3(MEMORY[0x1E69E7CC0], 0);
    return;
  }

  if (a1 >> 62)
  {
LABEL_28:
    v7 = sub_1DF6F6A8C();
    if (v7)
    {
LABEL_8:
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = v8;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1E12DBF80](v10, a1);
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v11 = *(a1 + 8 * v10 + 32);
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

          HKSharingAuthorizationIdentifier.init(_:)(v11, &v30);
          v12 = v36;
          if (v36 != 255)
          {
            break;
          }

          sub_1DF6A4F74(v30, v31, v32, v33, v34, v35, 255);
          ++v10;
          if (v8 == v7)
          {
            goto LABEL_30;
          }
        }

        v28 = v31;
        v29 = v30;
        v24 = v32;
        v25 = v33;
        v26 = v34;
        v27 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DF6B4F68(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v15 = v14 + 1;
        v17 = v26;
        v16 = v27;
        v19 = v24;
        v18 = v25;
        v20 = v28;
        v21 = v29;
        if (v14 >= v13 >> 1)
        {
          v23 = sub_1DF6B4F68((v13 > 1), v14 + 1, 1, v9);
          v15 = v14 + 1;
          v19 = v24;
          v16 = v27;
          v20 = v28;
          v18 = v25;
          v17 = v26;
          v9 = v23;
          v21 = v29;
        }

        *(v9 + 2) = v15;
        v22 = &v9[56 * v14];
        *(v22 + 4) = v21;
        *(v22 + 5) = v20;
        *(v22 + 6) = v19;
        *(v22 + 7) = v18;
        *(v22 + 8) = v17;
        *(v22 + 9) = v16;
        v22[80] = v12;
      }

      while (v8 != v7);
      goto LABEL_30;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_30:
  a3(v9, 0);
}

uint64_t sub_1DF6A3F90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1DF6A4F28();
    v4 = sub_1DF6F65AC();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1DF6A4024(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D418, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF6A4090(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D418, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DF6A4100(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1DF6A4174()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A41BC()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A4200(uint64_t a1, id *a2)
{
  result = sub_1DF6F63CC();
  *a2 = 0;
  return result;
}

uint64_t sub_1DF6A4278(uint64_t a1, id *a2)
{
  v3 = sub_1DF6F63DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DF6A42F8@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF6F63EC();
  v2 = sub_1DF6F63BC();

  *a1 = v2;
  return result;
}

uint64_t sub_1DF6A434C(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1DF6A43B8(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1DF6A4424(void *a1, uint64_t a2)
{
  v4 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1DF6A44D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1DF6A4554()
{
  v2 = *v0;
  sub_1DF6F6F0C();
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A45B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1DF6A4638(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
  v3 = sub_1DF6A4784(&qword_1ECE4D390, type metadata accessor for HKFeatureAvailabilityContext);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF6A4784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF6A47CC(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v3 = sub_1DF6A4784(&qword_1ECE4D388, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF6A4918(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D370, type metadata accessor for HKQuantityTypeIdentifier);
  v3 = sub_1DF6A4784(&qword_1ECE4D378, type metadata accessor for HKQuantityTypeIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF6A4A64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF6F63BC();

  *a2 = v5;
  return result;
}

uint64_t sub_1DF6A4AAC(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D360, type metadata accessor for HKCategoryTypeIdentifier);
  v3 = sub_1DF6A4784(&qword_1ECE4D368, type metadata accessor for HKCategoryTypeIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF6A4B68()
{
  v1 = *v0;
  v2 = sub_1DF6F63EC();
  v3 = MEMORY[0x1E12DB920](v2);

  return v3;
}

uint64_t sub_1DF6A4BA4()
{
  v1 = *v0;
  sub_1DF6F63EC();
  sub_1DF6F645C();
}

uint64_t sub_1DF6A4EC8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6A4F28()
{
  result = qword_1ECE4D3F8;
  if (!qword_1ECE4D3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE4D3F8);
  }

  return result;
}

void sub_1DF6A4F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_1DF6A4F88(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1DF6A4F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 3 || a7 == 1)
  {
  }

  else if (!a7)
  {
  }
}

unint64_t sub_1DF6A5264()
{
  result = qword_1ECE4D440;
  if (!qword_1ECE4D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D440);
  }

  return result;
}

uint64_t HKQueryPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v28 = a5;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 8);
  swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for HKQueryPublisherInner();
  (*(v13 + 16))(v16, a1, a3);
  v20 = v30;
  v29 = (*(a4 + 32))(a2, a4);
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, a2);
  v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  *(v22 + 4) = a4;
  *(v22 + 5) = v28;
  (*(v9 + 32))(&v22[v21], &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v23 = *(v19 + 48);
  v24 = *(v19 + 52);
  v25 = swift_allocObject();
  sub_1DF6A5C90(v16, v29, sub_1DF6A5780, v22);
  v32[3] = v19;
  v32[4] = swift_getWitnessTable();
  v32[0] = v25;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_1DF6A563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(a6 + 24))(a4, a6);
  v15 = (*(a6 + 40))(v14, a1, a2, a4, a6);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

uint64_t sub_1DF6A57C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_1DF6A5C90(a1, a2, a3, a4);
  return v11;
}

unint64_t sub_1DF6A5828(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1DF69F1E4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6A58A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1DF6A59B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1DF6A5BC8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1DF6F6A0C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1DF6A5C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = sub_1DF6F6A0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(v5 + 112);
  v13 = *(v6 - 8);
  v14 = *(v13 + 56);
  v14(&v4[v12], 1, 1, v6);
  v15 = *(*v4 + 120);
  v16 = swift_slowAlloc();
  *v16 = 0;
  *&v4[v15] = v16;
  v17 = *(*v4 + 136);
  *&v4[v17] = sub_1DF6F5EFC();
  (*(v13 + 32))(v11, v23, v6);
  v14(v11, 0, 1, v6);
  swift_beginAccess();
  (*(v8 + 40))(&v4[v12], v11, v7);
  swift_endAccess();
  v18 = v25;
  *(v4 + 2) = v24;
  v19 = &v4[*(*v4 + 128)];
  v20 = v26;
  *v19 = v18;
  *(v19 + 1) = v20;
  v19[16] = 0;
  return v4;
}

id *sub_1DF6A5EB4()
{
  v1 = *v0;
  MEMORY[0x1E12DCBA0](*(v0 + *(*v0 + 15)), -1, -1);

  v2 = *(*v0 + 14);
  v3 = v1[10];
  v4 = sub_1DF6F6A0C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  sub_1DF6A7480(*(v0 + *(*v0 + 16)), *(v0 + *(*v0 + 16) + 8), *(v0 + *(*v0 + 16) + 16));
  return v0;
}

uint64_t sub_1DF6A5F90()
{
  sub_1DF6A5EB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6A5FE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18HealthKitAdditions21HKQueryPublisherInnerC5StateOyxq__G(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF6A6060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF6A60A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DF6A60EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1DF6A611C(unint64_t a1)
{
  v3 = sub_1DF6F5EFC();
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v4 = sub_1DF6F5EEC();
    if (v3 >= a1 || (v4 & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  v5 = *(v1 + *(*v1 + 120));
  os_unfair_lock_lock(v5);
  v6 = v1 + *(*v1 + 128);
  if (*(v6 + 16))
  {

    os_unfair_lock_unlock(v5);
    return;
  }

  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(*v1 + 136);
  swift_beginAccess();
  v10 = *(v1 + v9);

  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v11 = sub_1DF6F5EEC();
    v12 = sub_1DF6F5F0C();
    if (v11)
    {
LABEL_12:
      *(v1 + v9) = v12;
      goto LABEL_18;
    }

    if ((sub_1DF6F5EEC() & 1) == 0)
    {
      if (((v10 | a1) & 0x8000000000000000) != 0)
      {
LABEL_27:
        __break(1u);
        return;
      }

      v12 = v10 + a1;
      if (!__OFADD__(v10, a1))
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    *(v1 + v9) = sub_1DF6F5F0C();
  }

LABEL_18:
  swift_endAccess();

  v13 = v1;
  v14 = v7(sub_1DF6A74A8, v1);

  v15 = *v6;
  v16 = *(v6 + 8);
  *v6 = v14;
  *(v6 + 8) = 0;
  v17 = *(v6 + 16);
  *(v6 + 16) = 1;
  v18 = v14;
  sub_1DF6A7480(v15, v16, v17);
  os_unfair_lock_unlock(v5);
  v19 = *(v13 + 16);
  [v19 executeQuery_];
  os_unfair_lock_lock(v5);
  v20 = *v6;
  v21 = *(v6 + 8);
  v22 = *(v6 + 16);
  if (v22 != 3 || v21 | v20)
  {
    *v6 = v14;
    *(v6 + 8) = 0;
    v23 = 2;
  }

  else
  {

    [v19 stopQuery_];
    v20 = *v6;
    v21 = *(v6 + 8);
    *v6 = xmmword_1DF6F8BA0;
    LOBYTE(v22) = *(v6 + 16);
    v23 = 3;
  }

  *(v6 + 16) = v23;
  sub_1DF6A7480(v20, v21, v22);
  os_unfair_lock_unlock(v5);

  sub_1DF6A7480(v7, v8, 0);
}

void sub_1DF6A6404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *v1;
  v50 = a1;
  v51 = v4;
  v5 = *(v3 + 80);
  v6 = sub_1DF6F6A0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v46 - v13;
  v15 = *(v5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v46 - v17;
  v18 = *(v2 + *(v3 + 120));
  os_unfair_lock_lock(v18);
  v19 = *(*v2 + 136);
  swift_beginAccess();
  v20 = *(v2 + v19);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    if (!v20)
    {
LABEL_6:
      os_unfair_lock_unlock(v18);
      return;
    }
  }

  v21 = *(*v2 + 112);
  swift_beginAccess();
  (*(v7 + 16))(v14, v2 + v21, v6);
  if ((*(v15 + 48))(v14, 1, v5) == 1)
  {
    (*(v7 + 8))(v14, v6);
    goto LABEL_6;
  }

  v49 = v15;
  (*(v15 + 32))(v52, v14, v5);
  v22 = v2 + *(*v2 + 128);
  v23 = *(v22 + 16);
  if ((v23 - 1) > 1u || (v47 = *(v51 + 88), v24 = *v22, sub_1DF6A74AC(*v22, *(v22 + 8), v23), (v48 = v24) == 0))
  {
    os_unfair_lock_unlock(v18);
    (*(v49 + 8))(v52, v5);
    return;
  }

  v25 = type metadata accessor for HKQueryPublisherResult();
  v47 = v2;
  v26 = sub_1DF6A6F68(v25);
  v27 = v47;
  v28 = 0;
  if (v26)
  {
    (*(v49 + 56))(v11, 1, 1, v5);
    swift_beginAccess();
    (*(v7 + 40))(&v27[v21], v11, v6);
    swift_endAccess();
    v29 = *v22;
    v30 = *(v22 + 8);
    *v22 = 0;
    *(v22 + 8) = 0;
    v31 = *(v22 + 16);
    *(v22 + 16) = 3;
    v28 = v48;
    v32 = v48;
    sub_1DF6A7480(v29, v30, v31);
  }

  swift_beginAccess();
  v33 = *&v27[v19];
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
      v34 = sub_1DF6F5F0C();
LABEL_19:
      *&v27[v19] = v34;
      goto LABEL_20;
    }

    if ((v33 & 0x8000000000000000) == 0)
    {
      if (v33)
      {
        v34 = v33 - 1;
        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_20:
  swift_endAccess();
  os_unfair_lock_unlock(v18);
  if (v28)
  {
    v35 = *(v27 + 2);
    v36 = v28;
    [v35 stopQuery_];
    os_unfair_lock_lock(v18);
    v37 = &v27[*(*v27 + 128)];
    v38 = *v37;
    v39 = *(v37 + 1);
    *v37 = xmmword_1DF6F8BA0;
    v40 = v37[16];
    v37[16] = 3;
    sub_1DF6A7480(v38, v39, v40);
    os_unfair_lock_unlock(v18);
  }

  v41 = v28;
  v42 = v52;
  v43 = sub_1DF6A7054(v50);
  if (v44)
  {
    (*(v49 + 8))(v42, v5);
  }

  else
  {
    v45 = v43;
    os_unfair_lock_lock(v18);
    sub_1DF6A71E8(v47, v45);
    os_unfair_lock_unlock(v18);

    (*(v49 + 8))(v42, v5);
  }
}

void sub_1DF6A6934()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1DF6F6A0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v27 - v7;
  v9 = *(v2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v27 - v11;
  v13 = *(v0 + *(v1 + 120));
  os_unfair_lock_lock(v13);
  v14 = *v0;
  v15 = v0 + *(*v0 + 128);
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (*(v15 + 16))
  {
    if (v18 == 2)
    {
      v28 = *(v15 + 8);
      v19 = *(v14 + 112);
      swift_beginAccess();
      (*(v4 + 16))(v8, v0 + v19, v3);
      if ((*(v9 + 48))(v8, 1, v2) == 1)
      {
        v20 = *(v4 + 8);
        v21 = v17;
        v20(v8, v3);
        os_unfair_lock_unlock(v13);
        sub_1DF6A7480(v17, v28, 2);
      }

      else
      {
        v24 = (*(v9 + 32))(v12, v8, v2);
        MEMORY[0x1EEE9AC00](v24);
        *(&v27 - 2) = v0;
        *(&v27 - 1) = v17;
        v25 = v17;
        sub_1DF6A6E90(v12, sub_1DF6A74D4, (&v27 - 4), v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v26);
        sub_1DF6A7480(v17, v28, 2);
        (*(v9 + 8))(v12, v2);
      }

      return;
    }
  }

  else
  {
    *v15 = xmmword_1DF6F8BA0;
    *(v15 + 16) = 3;
    sub_1DF6A7480(v17, v16, 0);
    v18 = *(v15 + 16);
  }

  if (v18 == 1)
  {
    v22 = *v15;
    v23 = *(v15 + 8);
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 3;
    sub_1DF6A7480(v22, v23, 1);
  }

  os_unfair_lock_unlock(v13);
}

void sub_1DF6A6CB8(id *a1, uint64_t a2)
{
  v4 = *(*a1 + 10);
  v5 = sub_1DF6F6A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  (*(*(v4 - 8) + 56))(&v16 - v8, 1, 1, v4);
  v10 = *(*a1 + 14);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v10, v9, v5);
  swift_endAccess();
  v11 = *(a1 + *(*a1 + 15));
  os_unfair_lock_unlock(v11);
  [a1[2] stopQuery_];
  os_unfair_lock_lock(v11);
  v12 = a1 + *(*a1 + 16);
  v13 = *v12;
  v14 = *(v12 + 1);
  *v12 = xmmword_1DF6F8BA0;
  v15 = v12[16];
  v12[16] = 3;
  sub_1DF6A7480(v13, v14, v15);
  os_unfair_lock_unlock(v11);
}

uint64_t sub_1DF6A6E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1DF6A6F68(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = 6u >> (swift_getEnumCaseMultiPayload() & 7);
  (*(v2 + 8))(v5, a1);
  return v6 & 1;
}

uint64_t sub_1DF6A7054(uint64_t a1)
{
  v2 = v1[11];
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HKQueryPublisherResult();
  sub_1DF6A72C4(v7, v6);
  v8 = v1[10];
  v9 = v1[12];
  v10 = sub_1DF6F5E9C();
  if (sub_1DF6A6F68(v7))
  {
    v12 = 0;
    sub_1DF6F5E7C();
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return v10;
  }
}

uint64_t sub_1DF6A71E8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  swift_beginAccess();
  v5 = *(a1 + v4);
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    return swift_endAccess();
  }

  sub_1DF6F5F0C();
  v6 = sub_1DF6F5EEC();
  v7 = sub_1DF6F5F0C();
  if (v6)
  {
LABEL_9:
    *(a1 + v4) = v7;
    return swift_endAccess();
  }

  result = sub_1DF6F5EEC();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v5 | a2) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
LABEL_7:
    v7 = sub_1DF6F5F0C();
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DF6A72C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }

  v9 = *v6;
  return swift_willThrow();
}

void sub_1DF6A7480(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

id sub_1DF6A74AC(id result, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1DF6A75CC(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DF6A7694(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DF6A7694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F663C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id DateComponents.age(withCurrentDate:)()
{
  v0 = sub_1DF6F58CC();
  v1 = sub_1DF6F5A4C();
  v2 = [v0 hk:v1 ageWithCurrentDate:?];

  return v2;
}

id HKHealthStore.makeSampleIteratorPublisher(queryDescriptors:sortDescriptors:batchSize:following:upToAndIncluding:distinctBy:debugIdentifier:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);
  v16 = sub_1DF6F659C();
  if (a1)
  {
    sub_1DF69EF80(0, qword_1EDC046D8, 0x1E696AEB0);
    a1 = sub_1DF6F659C();
  }

  if (a5)
  {
    a5 = sub_1DF6F659C();
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E696C3C0]) initWithQueryDescriptors:v16 sortDescriptors:a1 followingAnchor:a3 upToAndIncludingAnchor:a4 distinctByKeyPaths:a5];

  *a8 = v17;
  a8[1] = a2;
  a8[2] = a6;
  a8[3] = a7;
  a8[4] = v19;

  return v19;
}

id HKHealthStore.makeSampleIteratorPublisher(cursor:batchSize:debugIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v5;

  v7 = a1;

  return v9;
}

id HKHealthStore.SampleIteratorPublisher.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;

  return v4;
}

uint64_t HKHealthStore.SampleIteratorPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v11 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v23 = *(v3 + 32);
  v15 = sub_1DF69F1E4();
  v25 = a2;
  v26 = v15;
  v27 = a3;
  v28 = MEMORY[0x1E69E7288];
  v16 = _s23SampleIteratorPublisherV5InnerCMa();
  (*(v7 + 16))(v10, a1, a2);
  v25 = v12;
  v26 = v11;
  v27 = v13;
  v28 = v14;
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = v12;

  sub_1DF6A7B5C(v10, &v25, v23);
  v28 = v16;
  WitnessTable = swift_getWitnessTable();
  v25 = v19;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(&v25);
}

uint64_t sub_1DF6A7AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1DF6A7B5C(a1, a2, a3);
  return v9;
}

uint64_t *sub_1DF6A7B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v23 = a1;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v26 = sub_1DF6F6A0C();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v23 - v9;
  v11 = v5;
  v12 = *a2;
  v25 = *(a2 + 8);
  v24 = *(a2 + 24);
  v13 = *(v11 + 128);
  v14 = *(v6 - 8);
  v15 = *(v14 + 56);
  v15(v3 + v13, 1, 1, v6);
  v16 = *(*v3 + 136);
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v3 + v16) = v17;
  v18 = *(*v3 + 144);
  *(v3 + v18) = sub_1DF6F5EFC();
  (*(v14 + 32))(v10, v23, v6);
  v15(v10, 0, 1, v6);
  swift_beginAccess();
  (*(v7 + 40))(v3 + v13, v10, v26);
  swift_endAccess();
  v3[2] = v12;
  *(v3 + 3) = v25;
  v19 = v27;
  v3[5] = v24;
  v3[6] = v19;
  v20 = v3 + *(*v3 + 152);
  *v20 = v12;
  *(v20 + 8) = 0;
  v21 = v12;
  return v3;
}

uint64_t *sub_1DF6A7DA8()
{
  v1 = *v0;
  MEMORY[0x1E12DCBA0](*(v0 + *(*v0 + 136)), -1, -1);
  v2 = v0[5];

  v3 = *(*v0 + 128);
  v4 = *(v1 + 80);
  v5 = sub_1DF6F6A0C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_1DF6A91B4(*(v0 + *(*v0 + 152)), *(v0 + *(*v0 + 152) + 8));
  return v0;
}

uint64_t sub_1DF6A7E98()
{
  sub_1DF6A7DA8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DF6A7EF0(unint64_t a1)
{
  v2 = sub_1DF6F5EFC();
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return;
    }
  }

  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v3 = sub_1DF6F5EEC();
    if (v2 >= a1 || (v3 & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  sub_1DF6A7F84(a1);
}

void sub_1DF6A7F84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 10);
  v5 = sub_1DF6F6A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = *(v1 + v3[17]);
  os_unfair_lock_lock(v10);
  v11 = *(*v1 + 18);
  swift_beginAccess();
  v12 = *(v1 + v11);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v13 = sub_1DF6F5EEC();
    v14 = sub_1DF6F5F0C();
    if ((v13 & 1) == 0)
    {
      if (sub_1DF6F5EEC())
      {
        goto LABEL_7;
      }

      if ((v12 | a1) < 0)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v14 = v12 + a1;
      if (__OFADD__(v12, a1))
      {
LABEL_7:
        v14 = sub_1DF6F5F0C();
      }

      else if (v14 < 0)
      {
LABEL_20:
        __break(1u);
        return;
      }
    }

    *(v1 + v11) = v14;
  }

  swift_endAccess();
  v15 = *(*v1 + 16);
  swift_beginAccess();
  (*(v6 + 16))(v9, v1 + v15, v5);
  v16 = (*(*(v4 - 8) + 48))(v9, 1, v4);
  (*(v6 + 8))(v9, v5);
  if (v16 == 1)
  {
    goto LABEL_15;
  }

  v17 = *(v1 + v11);
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    goto LABEL_14;
  }

  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v17)
  {
LABEL_14:
    v18 = v1 + *(*v1 + 19);
    if (!v18[8])
    {
      v19 = *v18;
      v20 = sub_1DF6A86A4(*v18);
      v21 = *v18;
      *v18 = v20;
      v22 = v18[8];
      v18[8] = 1;
      v23 = v20;
      sub_1DF6A91B4(v21, v22);
      os_unfair_lock_unlock(v10);
      [v1[6] executeQuery_];

      sub_1DF6A91B4(v19, 0);
      return;
    }
  }

LABEL_15:
  os_unfair_lock_unlock(v10);
}

void sub_1DF6A826C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1DF6F6A0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - v7;
  v9 = *(v2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v16 - v11;
  v13 = *(v0 + *(v1 + 136));
  os_unfair_lock_lock(v13);
  v14 = *(*v0 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v8, v0 + v14, v3);
  if ((*(v9 + 48))(v8, 1, v2) == 1)
  {
    (*(v4 + 8))(v8, v3);
    os_unfair_lock_unlock(v13);
  }

  else
  {
    (*(v9 + 32))(v12, v8, v2);
    sub_1DF6A6E90(v12, sub_1DF6A92BC, v0, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
    (*(v9 + 8))(v12, v2);
  }
}

void sub_1DF6A84D8(id *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = sub_1DF6F6A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = a1 + v2[19];
  v10 = *v9;
  v11 = v9[8];
  *v9 = 0;
  v9[8] = 2;
  (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
  v12 = *(*a1 + 16);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v12, v8, v4);
  swift_endAccess();
  os_unfair_lock_unlock(*(a1 + *(*a1 + 17)));
  if (v11 == 1)
  {
    [a1[6] stopQuery_];
  }

  sub_1DF6A91B4(v10, v11);
}

id sub_1DF6A86A4(uint64_t a1)
{
  v3 = v1[3];
  v4 = objc_allocWithZone(MEMORY[0x1E696C3B8]);
  v12[4] = sub_1DF6A91C8;
  v13 = v1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF6A91D0;
  v12[3] = &block_descriptor_0;
  v5 = _Block_copy(v12);

  v6 = [v4 initWithQueryCursor:a1 limit:v3 resultsHandler:v5];
  _Block_release(v5);

  if (v1[5])
  {
    v7 = v1[4];
    v8 = v6;
    v9 = sub_1DF6F63BC();
  }

  else
  {
    v10 = v6;
    v9 = 0;
  }

  [v6 setDebugIdentifier_];

  return v6;
}

void sub_1DF6A87D8(int a1, unint64_t a2, void *a3, id a4)
{
  if (a2)
  {
    sub_1DF6A884C(a2, a3, 0);
  }

  else if (a4)
  {
    v5 = a4;
    sub_1DF6A884C(a4, 0, 1);
  }
}

void sub_1DF6A884C(unint64_t a1, void *a2, int a3)
{
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v36 = *v3;
  v4 = v36;
  v5 = v36[10];
  v6 = sub_1DF6F6A0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v33 - v16;
  v18 = *(v3 + v4[17]);
  os_unfair_lock_lock(v18);
  v19 = *(*v3 + 18);
  swift_beginAccess();
  v20 = *(v3 + v19);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (!v20)
    {
LABEL_6:
      os_unfair_lock_unlock(v18);
      return;
    }
  }

  v21 = *(*v3 + 16);
  swift_beginAccess();
  (*(v7 + 16))(v13, v3 + v21, v6);
  if ((*(v14 + 48))(v13, 1, v5) == 1)
  {
    (*(v7 + 8))(v13, v6);
    goto LABEL_6;
  }

  (*(v14 + 32))(v17, v13, v5);
  swift_beginAccess();
  v22 = *(v3 + v19);
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    goto LABEL_14;
  }

  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if ((v22 & 0x8000000000000000) == 0)
    {
      if (v22)
      {
        v23 = v22 - 1;
        goto LABEL_13;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = sub_1DF6F5F0C();
LABEL_13:
  *(v3 + v19) = v23;
LABEL_14:
  swift_endAccess();
  v24 = v3 + *(*v3 + 19);
  v33 = *v24;
  v34 = v24[8];
  if ((v39 & 1) != 0 || (v25 = v38, v26 = v38, !v25))
  {
    *v24 = 0;
    v24[8] = 2;
    v27 = v35;
    (*(v14 + 56))(v35, 1, 1, v5);
    swift_beginAccess();
    (*(v7 + 40))(v3 + v21, v27, v6);
    swift_endAccess();
  }

  else
  {
    *v24 = v38;
    v24[8] = 0;
  }

  v28 = v37;
  os_unfair_lock_unlock(v18);
  v29 = v34;
  v30 = v33;
  if (v34 == 1)
  {
    [v3[6] stopQuery_];
  }

  v31 = sub_1DF6A8CC8(v28, v38, v39 & 1);
  if (v32)
  {
    (*(v14 + 8))(v17, v5);
    sub_1DF6A91B4(v30, v29);
  }

  else
  {
    sub_1DF6A7F84(v31);
    sub_1DF6A91B4(v30, v29);
    (*(v14 + 8))(v17, v5);
  }
}

uint64_t sub_1DF6A8CC8(unint64_t a1, void *a2, char a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  if ((a3 & 1) == 0 || (swift_willThrow(), v9 = a1, !a1))
  {
    if (a1 >> 62)
    {
      v10 = sub_1DF6F6A8C();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v11 = sub_1DF6F5E9C();
      if (a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      if (a3)
      {
LABEL_12:
        sub_1DF6F5E7C();
        return 0;
      }
    }

    v12 = a2;
    if (a2)
    {

      return v11;
    }

    goto LABEL_12;
  }

  sub_1DF6F5E7C();

  return 0;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF6A8E40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DF6A8E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF6A8EEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DF6A8F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF6A8F84(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1DF6F6A0C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6A9054()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_So13HKHealthStoreC18HealthKitAdditionsE23SampleIteratorPublisherV5InnerC5StateOy__xq__G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DF6A90C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF6A9108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DF6A914C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1DF6A91B4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_1DF6A91D0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03568, 0x1E696C3A8);
    v7 = sub_1DF6F65AC();
  }

  v11 = a2;
  v12 = a4;
  v13 = a5;
  v10(v11, v7, a4, a5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DefaultOnlyLoggingCategory.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DF6F6D6C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DF6A9378()
{
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A93E4()
{
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A9434@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF6F6D6C();

  *a2 = v5 != 0;
  return result;
}

uint64_t SensitiveLogger.init(subsystem:sensitiveLogger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v31 = a6;
  v30 = a5;
  v34 = a2;
  v33 = a1;
  v32 = a9;
  v29 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v18 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v28 - v19;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  v21 = *(type metadata accessor for SensitiveLogger() + 68);
  v22 = sub_1DF6F5DDC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a9 + v21, a3, v22);
  sub_1DF6F6B4C();
  swift_getTupleTypeMetadata2();
  v24 = sub_1DF6F65DC();
  v25 = sub_1DF6AA480(v24, a4, v22, a8);

  v44 = v25;
  v36 = a4;
  v37 = v30;
  v38 = v31;
  v39 = a7;
  v40 = a8;
  v41 = v29;
  v42 = v33;
  v43 = v34;
  sub_1DF6F62BC();
  v26 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1DF6F654C();

  (*(v23 + 8))(a3, v22);
  result = (*(v35 + 8))(v20, AssociatedTypeWitness);
  *v32 = v45;
  return result;
}

uint64_t sub_1DF6A97B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[1] = a1;
  sub_1DF6AA7A0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v17 + 16))(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a5);
  v18 = *(a7 + 8);

  v18(a5, a7);
  sub_1DF6F5DCC();
  v19 = sub_1DF6F5DDC();
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  sub_1DF6F62BC();
  return sub_1DF6F62DC();
}

uint64_t sub_1DF6A99AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (HKShowSensitiveLogItems())
  {
    v7 = *(a2 + 68);
    v8 = sub_1DF6F5DDC();
    v15 = *(v8 - 8);
    (*(v15 + 16))(a3, &v3[v7], v8);
    v9 = *(v15 + 56);

    return v9(a3, 0, 1, v8);
  }

  else
  {
    v11 = *v3;
    v12 = *(a2 + 16);
    v13 = sub_1DF6F5DDC();
    v14 = *(a2 + 48);

    return MEMORY[0x1EEE68948](a1, v11, v12, v13, v14);
  }
}

uint64_t sub_1DF6A9B44(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1DF6AA7A0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6A99AC(a1, a4, v12);
  v13 = sub_1DF6F5DDC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1DF6AA7F8(v12);
  }

  v16 = sub_1DF6F5DBC();
  v17 = a5();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    v20 = a2();
    v22 = sub_1DF6A9D50(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1DF69D000, v16, v17, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1E12DCBA0](v19, -1, -1);
    MEMORY[0x1E12DCBA0](v18, -1, -1);
  }

  return (*(v14 + 8))(v12, v13);
}

uint64_t sub_1DF6A9D50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DF6A9E1C(v11, 0, 0, 1, a1, a2);
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
    sub_1DF6AAB1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DF6A9E1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DF6A9F28(a5, a6);
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
    result = sub_1DF6F6BDC();
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

uint64_t sub_1DF6A9F28(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF6A9F74(a1, a2);
  sub_1DF6AA0A4(&unk_1F5AA85E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DF6A9F74(uint64_t a1, unint64_t a2)
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

  v6 = sub_1DF6E8268(v5, 0);
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

  result = sub_1DF6F6BDC();
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
        v10 = sub_1DF6F649C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DF6E8268(v10, 0);
        result = sub_1DF6F6B0C();
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

uint64_t sub_1DF6AA0A4(uint64_t result)
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

  result = sub_1DF6AA190(result, v12, 1, v3);
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

char *sub_1DF6AA190(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6AAB78(0, qword_1ECE4D620, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
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

unint64_t sub_1DF6AA29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1DF6F62EC();

  return sub_1DF6AA2F8(a1, v9, a2, a3);
}

unint64_t sub_1DF6AA2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1DF6F63AC();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1DF6AA480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DF6F661C())
  {
    sub_1DF6F6D4C();
    v13 = sub_1DF6F6D3C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1DF6F661C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DF6F65FC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DF6F6B5C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DF6AA29C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1DF6AA76C(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  return sub_1DF6A97B8(a1, a2, v2[8], v2[9], v2[2], v2[3], v2[4]);
}

void sub_1DF6AA7A0()
{
  if (!qword_1EDC04108)
  {
    sub_1DF6F5DDC();
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04108);
    }
  }
}

uint64_t sub_1DF6AA7F8(uint64_t a1)
{
  sub_1DF6AA7A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DF6AA858()
{
  result = qword_1EDC04238[0];
  if (!qword_1EDC04238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC04238);
  }

  return result;
}

unint64_t sub_1DF6AA8B0()
{
  result = qword_1EDC03F38;
  if (!qword_1EDC03F38)
  {
    sub_1DF6AAB78(255, &qword_1EDC03F40, &type metadata for DefaultOnlyLoggingCategory, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03F38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultOnlyLoggingCategory(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DefaultOnlyLoggingCategory(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1DF6AAA44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DF6F5DDC();
  v5 = v4;
  v6 = *(a1 + 48);
  result = sub_1DF6F62BC();
  if (v8 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6AAB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1DF6AAB78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OSAllocatedUnfairRecursiveLock.Ownership.hashValue.getter(char a1)
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](a1 & 1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6AAC68()
{
  sub_1DF6F6F0C();
  OSAllocatedUnfairRecursiveLock.Ownership.hash(into:)(v2, *v0);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6AACC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for FeatureStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DF6AAF78(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DF6F5DDC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DF6F5DCC();
}

uint64_t sub_1DF6AB014@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF6F5DDC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t HKHealthStore.sharedSummaryPublisher(transaction:package:includedIdentifiers:includedObjectTypes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DF6AB334();
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s27SharedSummaryQueryPublisherCMa();
  v16 = swift_allocObject();
  *(v16 + 104) = a1;
  *(v16 + 112) = a2;
  *(v16 + 120) = a3;
  *(v16 + 128) = a4;
  *(v16 + 136) = a5;
  *(v16 + 96) = 0;
  *(v16 + 80) = v5;
  *(v16 + 88) = 0;
  v26 = sub_1DF6ABA94(0);
  sub_1DF6AB3E0();
  v23 = v17;
  sub_1DF6AB450();
  sub_1DF6AB970(qword_1EDC04460, sub_1DF6AB3E0);
  v18 = a1;

  v19 = v5;
  sub_1DF6F5FFC();

  sub_1DF6AB970(&qword_1EDC04100, sub_1DF6AB334);
  v20 = v24;
  v21 = sub_1DF6F5FEC();
  (*(v25 + 8))(v15, v20);
  return v21;
}

void sub_1DF6AB334()
{
  if (!qword_1EDC040F8)
  {
    sub_1DF6AB3E0();
    sub_1DF6AB450();
    sub_1DF6AB970(qword_1EDC04460, sub_1DF6AB3E0);
    v0 = sub_1DF6F5DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC040F8);
    }
  }
}

void sub_1DF6AB3E0()
{
  if (!qword_1EDC04458)
  {
    sub_1DF6AB450();
    sub_1DF69F1E4();
    PublisherBase = type metadata accessor for QueryPublisherBase();
    if (!v1)
    {
      atomic_store(PublisherBase, &qword_1EDC04458);
    }
  }
}

void sub_1DF6AB450()
{
  if (!qword_1EDC03F30)
  {
    sub_1DF69EF80(255, &qword_1EDC03800, 0x1E696C400);
    v0 = sub_1DF6F663C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03F30);
    }
  }
}

uint64_t _s27SharedSummaryQueryPublisherCMa()
{
  result = qword_1EDC03BF8;
  if (!qword_1EDC03BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DF6AB504()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = swift_allocObject();
  swift_weakInit();
  if (v4)
  {

    v8 = sub_1DF6F63BC();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (v5)
  {
LABEL_3:
    v5 = sub_1DF6F671C();
  }

LABEL_4:
  if (v6)
  {
    sub_1DF69EF80(0, &qword_1EDC03EC8, 0x1E696C2E0);
    sub_1DF6ABA2C();
    v6 = sub_1DF6F671C();
  }

  v9 = objc_allocWithZone(MEMORY[0x1E696C410]);
  v13[4] = sub_1DF6ABA0C;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6AB898;
  v13[3] = &block_descriptor_1;
  v10 = _Block_copy(v13);
  v11 = [v9 initWithTransaction:v2 package:v8 includedIdentifiers:v5 includedObjectTypes:v6 resultsHandler:v10];

  _Block_release(v10);

  return v11;
}

void sub_1DF6AB6C0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a4)
    {
      v7 = a4;
      v8 = a4;
      sub_1DF6C6ACC(a4);
    }

    else
    {
      if (a2)
      {
        sub_1DF6F3CDC(a2);
        if (a3)
        {
          sub_1DF6C6ACC(0);
        }
      }
    }
  }
}

uint64_t sub_1DF6AB7A8()
{
  v1 = v0[13];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
}

uint64_t sub_1DF6AB800()
{
  if (*(v0 + 88))
  {
    [*(v0 + 80) stopQuery_];
  }

  v1 = sub_1DF6F5124();

  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6AB898(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03800, 0x1E696C400);
    v7 = sub_1DF6F65AC();
  }

  v11 = a2;
  v12 = a5;
  v10(v11, v7, a4, a5);
}

uint64_t sub_1DF6AB970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6ABA2C()
{
  result = qword_1EDC03EC0;
  if (!qword_1EDC03EC0)
  {
    sub_1DF69EF80(255, &qword_1EDC03EC8, 0x1E696C2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03EC0);
  }

  return result;
}

uint64_t sub_1DF6ABA94(uint64_t a1)
{
  sub_1DF6A01C4();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  *(v1 + 32) = xmmword_1DF6F8BA0;
  *(v1 + 48) = 2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = v4;
  *(v1 + 24) = 257;
  return v1;
}

uint64_t HKKeyValueDomain.publisher<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = v3;
  a3[1] = a1;
  a3[2] = a2;
  v4 = v3;
}

uint64_t HKKeyValueDomain.Publisher.init(keyValueDomain:key:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t HKKeyValueDomain.makePublisherWithCurrentValue<A>(forKey:observingChanges:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v40 = a3;
  v38 = a1;
  v39 = a2;
  ObjectType = swift_getObjectType();
  v36 = sub_1DF6F6A0C();
  sub_1DF6F663C();
  sub_1DF69F1E4();
  swift_getWitnessTable();
  sub_1DF6F5E6C();
  type metadata accessor for HKKeyValueDomain.Publisher();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v34 = sub_1DF6F5E1C();
  sub_1DF6F6F3C();
  v30[1] = swift_getWitnessTable();
  v9 = sub_1DF6F5FDC();
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v41 = v34;
  v42 = v9;
  v10 = v9;
  v30[0] = v9;
  v43 = WitnessTable;
  v44 = v32;
  v11 = sub_1DF6F5E5C();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v30 - v14;
  v31 = *(v10 - 8);
  v16 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = v30 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = a5;
  v21 = v6;
  v22 = v38;
  *(v19 + 32) = v6;
  *(v19 + 40) = v22;
  v23 = v39;
  *(v19 + 48) = v39;
  *(v19 + 56) = v40;
  *(v19 + 64) = ObjectType;
  v24 = v21;

  sub_1DF6F5FCC();
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = v20;
  v25[4] = v24;
  v25[5] = v22;
  v25[6] = v23;
  v26 = v24;

  sub_1DF6F5F0C();
  v27 = v30[0];
  sub_1DF6F604C();

  swift_getWitnessTable();
  v28 = sub_1DF6F5FEC();
  (*(v35 + 8))(v15, v11);
  (*(v31 + 8))(v18, v27);
  return v28;
}

uint64_t sub_1DF6ABFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[4] = a5;
  v7 = sub_1DF6F6A0C();
  sub_1DF69F1E4();
  v17 = sub_1DF6F6F6C();
  v8 = *(*(v17 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v17);
  v16[6] = v16 - v10;
  v11 = *(*(v7 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v16[5] = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  sub_1DF6AC438(a6, v16 - v14);
  return sub_1DF6F6F5C();
}

uint64_t sub_1DF6AC438@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1DF69FB7C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (swift_dynamicCastMetatype())
  {
    result = sub_1DF6F68EC();
    if (v2)
    {
      return result;
    }

    v8 = &unk_1EDC03EF8;
    goto LABEL_7;
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_1DF6F68FC();
    if (v2)
    {
      return result;
    }

    v8 = &unk_1EDC04650;
    goto LABEL_7;
  }

  sub_1DF6F5A7C();
  if (swift_dynamicCastMetatype())
  {
    result = sub_1DF6F690C();
    if (!v2)
    {
      v13 = swift_dynamicCast();
      v10 = *(*(a1 - 8) + 56);
      if (v13)
      {
        v12 = a2;
        v11 = 0;
      }

      else
      {
        v12 = a2;
        v11 = 1;
      }

      return v10(v12, v11, 1, a1);
    }

    return result;
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_1DF6F693C();
    if (v2)
    {
      return result;
    }

    v8 = &qword_1EDC04788;
    goto LABEL_7;
  }

  sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {
      result = sub_1DF6F692C();
      if (v2)
      {
        return result;
      }

      v8 = &qword_1EDC04798;
    }

    else
    {
      result = sub_1DF6F68CC();
      if (v2)
      {
        return result;
      }

      v8 = &qword_1EDC034A0;
    }

LABEL_7:
    sub_1DF6AE368(0, v8);
LABEL_8:
    v9 = swift_dynamicCast();
    v10 = *(*(a1 - 8) + 56);
    v11 = v9 ^ 1u;
    v12 = a2;
    return v10(v12, v11, 1, a1);
  }

  result = sub_1DF6F691C();
  if (!v2)
  {
    sub_1DF6AE310(0, &qword_1ECE4D788, &qword_1EDC03560, 0x1E696AD98);
    goto LABEL_8;
  }

  return result;
}

void sub_1DF6AC74C(uint64_t a1, void *a2)
{
  v3 = a2;

  v9 = v3;
  v4 = sub_1DF6F6A0C();
  sub_1DF6F6DFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  swift_allocObject();
  sub_1DF6F65BC();
  (*(v5 + 16))(v8, a1, v4);
  sub_1DF6F663C();
  type metadata accessor for HKKeyValueDomain.Publisher();
  swift_getWitnessTable();
  sub_1DF6F605C();
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1DF6AC910(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  sub_1DF6AC74C(a1, *(v1 + 32));
}

uint64_t HKKeyValueDomain.Publisher.key.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t HKKeyValueDomain.Publisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v6 = *(v4 + 8);
  v8 = *(v4 + 16);
  v9 = *(a2 + 24);
  v16[0] = *(a2 + 16);
  v16[1] = a3;
  v16[2] = v9;
  v17 = a4;
  v10 = _s12SubscriptionCMa();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v7;

  v14 = sub_1DF6AD8D0(v13, v6, v8, a1);

  v17 = v10;
  WitnessTable = swift_getWitnessTable();
  v16[0] = v14;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1DF6ACA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(_s17SubscriptionStateVMa() + 32);
  v7 = sub_1DF6F6A0C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

void sub_1DF6ACB04()
{
  v1 = *(v0 + *(*v0 + 128));
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 96);
  _s17SubscriptionStateVMa();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1DF6AE280((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1DF6ACBF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if ((result & 1) == 0)
  {
    sub_1DF6F5F0C();
    v6 = sub_1DF6F5EEC();
    result = sub_1DF6F5F0C();
    v7 = result;
    if ((v6 & 1) == 0)
    {
      result = sub_1DF6F5EEC();
      if ((result & 1) == 0)
      {
        if ((v4 | a2) < 0)
        {
          __break(1u);
          goto LABEL_12;
        }

        v7 = v4 + a2;
        if (!__OFADD__(v4, a2))
        {
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_12:
          __break(1u);
          return result;
        }
      }

      result = sub_1DF6F5F0C();
      v7 = result;
    }

LABEL_9:
    *a1 = v7;
  }

  return result;
}

void sub_1DF6ACC9C()
{
  v1 = v0;
  v2 = *(v0 + *(*v0 + 128));
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 96);
  _s17SubscriptionStateVMa();
  sub_1DF6AE310(0, &qword_1EDC036F0, qword_1EDC036F8, 0x1E696C210);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1DF6AE2A4(v2 + v3, &v8);
  os_unfair_lock_unlock((v2 + v4));
  v5 = v8;
  if (v8)
  {
    [v8 stopObservation_];
  }
}

uint64_t sub_1DF6ACDD4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1DF6F6A0C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = *(v0 + *(v2 + 128));
  v22 = v3;
  v21 = *(v2 + 88);
  v23 = v21;
  v24 = *(v2 + 104);
  _s17SubscriptionStateVMa();
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1DF6AE2D4((v8 + v9), &v25);
  os_unfair_lock_unlock((v8 + v10));
  v11 = v25;
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if (result)
  {
    goto LABEL_4;
  }

  if (v11 < 0)
  {
    __break(1u);
    return result;
  }

  if (v11)
  {
LABEL_4:
    v13 = (v1 + *(*v1 + 120));
    v14 = *v13;
    v15 = v13[1];
    v16 = sub_1DF6AC438(v3, v7);
    MEMORY[0x1EEE9AC00](v16);
    *(&v19 - 2) = v7;
    *(&v19 - 1) = v1;
    v17 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
    v18 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v8 + v18));
    sub_1DF6AE2F4((v8 + v17));
    os_unfair_lock_unlock((v8 + v18));
    return (*(v20 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1DF6AD0D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if ((result & 1) == 0)
  {
    if (v4 < 0)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if (result)
  {
LABEL_11:
    *a2 = v4;
    return result;
  }

  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if (result)
  {
    result = sub_1DF6F5F0C();
LABEL_10:
    *a1 = result;
    goto LABEL_11;
  }

  if (v4 < 0)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    result = v4 - 1;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DF6AD174(uint64_t *a1, char *a2, void *a3)
{
  v56 = a2;
  v50 = *a3;
  v48 = a3;
  v4 = *(v50 + 80);
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v43 - v6;
  v7 = sub_1DF6F6A0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v43 - v11;
  v13 = *(v7 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - v17;
  v19 = *(_s17SubscriptionStateVMa() + 32);
  v20 = v13[2];
  v51 = a1;
  v47 = v19;
  v20(v18, a1 + v19, v7);
  v46 = TupleTypeMetadata2;
  v21 = *(TupleTypeMetadata2 + 48);
  v20(v12, v56, v7);
  v52 = v21;
  v20(&v12[v21], v18, v7);
  v22 = *(v55 + 48);
  v53 = v4;
  v23 = v22(v12, 1, v4);
  v54 = v13;
  if (v23 == 1)
  {
    v24 = v13[1];
    v24(v18, v7);
    if (v22(&v12[v52], 1, v53) == 1)
    {
      return (v24)(v12, v7);
    }

    goto LABEL_6;
  }

  v26 = v49;
  v20(v49, v12, v7);
  v28 = v52;
  v27 = v53;
  if (v22(&v12[v52], 1, v53) == 1)
  {
    (v54[1])(v18, v7);
    (*(v55 + 8))(v26, v27);
LABEL_6:
    (*(v45 + 8))(v12, v46);
    v30 = v50;
    v29 = v51;
    goto LABEL_7;
  }

  v38 = v55;
  v39 = v44;
  (*(v55 + 32))(v44, &v12[v28], v27);
  v30 = v50;
  v40 = *(v50 + 96);
  LODWORD(v52) = sub_1DF6F63AC();
  v41 = *(v38 + 8);
  v41(v39, v27);
  v42 = v54[1];
  v42(v18, v7);
  v41(v49, v27);
  result = (v42)(v12, v7);
  v29 = v51;
  if (v52)
  {
    return result;
  }

LABEL_7:
  (v54[3])(v29 + v47, v56, v7);
  v31 = *(v30 + 88);
  v32 = *(v30 + 104);
  v33 = v48 + *(*v48 + 112);
  v34 = sub_1DF6F5E9C();
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if ((result & 1) == 0)
  {
    if (v34 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!v34)
    {
      return result;
    }
  }

  v35 = *v29;
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if (result)
  {
    return result;
  }

  sub_1DF6F5F0C();
  v36 = sub_1DF6F5EEC();
  result = sub_1DF6F5F0C();
  v37 = result;
  if ((v36 & 1) == 0)
  {
    result = sub_1DF6F5EEC();
    if (result)
    {
LABEL_16:
      result = sub_1DF6F5F0C();
      v37 = result;
      goto LABEL_20;
    }

    if (((v35 | v34) & 0x8000000000000000) == 0)
    {
      v37 = v35 + v34;
      if (!__OFADD__(v35, v34))
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_24:
        __break(1u);
        return result;
      }

      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_20:
  *v29 = v37;
  return result;
}

uint64_t sub_1DF6AD6BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1DF6ACDD4();
}

uint64_t sub_1DF6AD70C()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));
  v1 = *(v0 + *(*v0 + 120) + 8);

  v2 = *(v0 + *(*v0 + 128));

  return v0;
}

uint64_t sub_1DF6AD7B8()
{
  v0 = *sub_1DF6AD70C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6AD854()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1DF6F6BCC();
  return sub_1DF6F6BBC();
}

uint64_t *sub_1DF6AD8D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = sub_1DF6F6A0C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  v14 = _s17SubscriptionStateVMa();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  (*(*(v9 - 8) + 56))(v13, 1, 1, v9);
  sub_1DF6ACA74(0, a1, v13, v18);
  v19 = a1;
  *(v4 + *(*v4 + 128)) = sub_1DF6AD854();
  (*(*(*(v8 + 88) - 8) + 16))(v4 + *(*v4 + 112), a4);
  v20 = (v4 + *(*v4 + 120));
  v21 = v24;
  *v20 = a2;
  v20[1] = v21;
  [v19 startObservation_];
  (*(v15 + 8))(v18, v14);
  return v4;
}

uint64_t sub_1DF6ADB1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF6ADB6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DF6ADBB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF6ADBF4(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DF6ADCA0(uint64_t a1)
{
  sub_1DF6AE310(319, &qword_1EDC036F0, qword_1EDC036F8, 0x1E696C210);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1DF6F6A0C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DF6ADD50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1DF6ADF20(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 8) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v21 = a2;
  }
}

uint64_t sub_1DF6AE280(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1DF6ACBF0(a1, v1[6]);
}

id sub_1DF6AE2A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

uint64_t sub_1DF6AE2D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1DF6AD0D0(a1, a2);
}

void sub_1DF6AE310(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1DF69EF80(255, a3, a4);
    v5 = sub_1DF6F6A0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DF6AE368(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DF6F6A0C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1DF6AE3B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void sub_1DF6AE480(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_1DF6F63BC();
  v8 = swift_allocObject();
  v8[2] = sub_1DF6B21D4;
  v8[3] = v6;
  v8[4] = a3;
  v11[4] = sub_1DF6B2148;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DF6AE6E0;
  v11[3] = &block_descriptor_192;
  v9 = _Block_copy(v11);
  v10 = a3;

  [v10 numberForKey:v7 completion:v9];
  _Block_release(v9);
}

void sub_1DF6AE5C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AE480(a1, a2, *(v2 + 16));
}

void sub_1DF6AE5D0()
{
  if (!qword_1EDC03FE0)
  {
    sub_1DF6AE368(255, &qword_1EDC03EF8);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03FE0);
    }
  }
}

void sub_1DF6AE650(void *a1, void *a2, void (*a3)(void *, BOOL))
{
  if (a1)
  {
    v5 = [a1 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  v7 = a2;
  a3(v6, a2 != 0);

  sub_1DF6A12CC(v6, a2 != 0);
}

void sub_1DF6AE6E0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1DF6AE7A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_1DF6F63BC();
  v8 = swift_allocObject();
  v8[2] = sub_1DF6B2098;
  v8[3] = v6;
  v8[4] = a3;
  v11[4] = sub_1DF6B20DC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DF6AEA04;
  v11[3] = &block_descriptor_183;
  v9 = _Block_copy(v11);
  v10 = a3;

  [v10 dataForKey:v7 completion:v9];
  _Block_release(v9);
}

void sub_1DF6AE8E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AE7A0(a1, a2, *(v2 + 16));
}

void sub_1DF6AE8F0()
{
  if (!qword_1EDC04008)
  {
    sub_1DF6AE368(255, &qword_1EDC04650);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04008);
    }
  }
}

void sub_1DF6AE970(uint64_t a1, unint64_t a2, id a3, void (*a4)(id, unint64_t, BOOL))
{
  if (a3)
  {
    v6 = 0;
    v7 = a3;
  }

  else
  {
    v6 = a2;
    v7 = a1;
    sub_1DF6B0468(a1, a2);
  }

  v8 = a3;
  a4(v7, v6, a3 != 0);

  sub_1DF6B20FC(v7, v6, a3 != 0);
}

uint64_t sub_1DF6AEA04(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1DF6F5A0C();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1DF6B20E8(v4, v9);
}

void sub_1DF6AEAE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1DF6F63BC();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v10[4] = sub_1DF6B1FA0;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DF6AEDAC;
  v10[3] = &block_descriptor_174;
  v8 = _Block_copy(v10);

  v9 = a3;

  [v9 dateForKey:v6 completion:v8];
  _Block_release(v8);
}

void sub_1DF6AEBF4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AEAE4(a1, a2, *(v2 + 16));
}

void sub_1DF6AEC00()
{
  if (!qword_1EDC04000)
  {
    sub_1DF6AF3E8(255, &qword_1EDC05240, MEMORY[0x1E6969530]);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04000);
    }
  }
}

uint64_t sub_1DF6AEC8C(uint64_t a1, void *a2, void (*a3)(void *))
{
  sub_1DF6B200C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = (&v13 - v9);
  if (a2)
  {
    *v10 = a2;
  }

  else
  {
    sub_1DF6B1124(a1, &v13 - v9, &qword_1EDC05240, MEMORY[0x1E6969530], sub_1DF6AF3E8);
  }

  swift_storeEnumTagMultiPayload();
  v11 = a2;
  a3(v10);
  return sub_1DF6B1E48(v10, sub_1DF6B200C);
}

uint64_t sub_1DF6AEDAC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1DF6F5A6C();
    v12 = sub_1DF6F5A7C();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1DF6F5A7C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_1DF6B1FAC(v9, &qword_1EDC05240, MEMORY[0x1E6969530], sub_1DF6AF3E8);
}

void sub_1DF6AEF64(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_1DF6F63BC();
  v8 = swift_allocObject();
  v8[2] = sub_1DF6B1F44;
  v8[3] = v6;
  v8[4] = a3;
  v11[4] = sub_1DF6B1F88;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DF6AE6E0;
  v11[3] = &block_descriptor_168;
  v9 = _Block_copy(v11);
  v10 = a3;

  [v10 numberForKey:v7 completion:v9];
  _Block_release(v9);
}

void sub_1DF6AF0A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AEF64(a1, a2, *(v2 + 16));
}

void sub_1DF6AF0B4()
{
  if (!qword_1EDC03FD8)
  {
    sub_1DF6AE368(255, &qword_1EDC04788);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03FD8);
    }
  }
}

void sub_1DF6AF134(id a1, unint64_t a2, void (*a3)(id, void))
{
  v5 = a1;
  if (a1)
  {
    a1 = [a1 integerValue];
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = (a2 | v5) == 0;
  v8 = a2;
  a3(v6, v7 | ((a2 != 0) << 8));

  sub_1DF6B1F94(v6, v7, a2 != 0);
}

void sub_1DF6AF20C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_1DF6F63BC();
  v8 = swift_allocObject();
  v8[2] = sub_1DF6B21D4;
  v8[3] = v6;
  v8[4] = a3;
  v11[4] = sub_1DF6B1F2C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DF6AE6E0;
  v11[3] = &block_descriptor_159;
  v9 = _Block_copy(v11);
  v10 = a3;

  [v10 numberForKey:v7 completion:v9];
  _Block_release(v9);
}

void sub_1DF6AF350(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AF20C(a1, a2, *(v2 + 16));
}

void sub_1DF6AF35C()
{
  if (!qword_1ECE4D790)
  {
    sub_1DF6AF3E8(255, &qword_1ECE4D788, sub_1DF6AF43C);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D790);
    }
  }
}

void sub_1DF6AF3E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F6A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DF6AF43C()
{
  result = qword_1EDC03560;
  if (!qword_1EDC03560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03560);
  }

  return result;
}

void sub_1DF6AF488(void *a1, id a2, void (*a3)(id, BOOL))
{
  v5 = a2;
  if (!a2)
  {
    v5 = a1;
    v6 = a1;
  }

  v7 = a2;
  a3(v5, a2 != 0);

  sub_1DF6B1F38(v5);
}

void sub_1DF6AF53C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1DF6F63BC();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v10[4] = sub_1DF6B1E2C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DF6AF78C;
  v10[3] = &block_descriptor_150;
  v8 = _Block_copy(v10);

  v9 = a3;

  [v9 propertyListValueForKey:v6 completion:v8];
  _Block_release(v8);
}

void sub_1DF6AF64C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AF53C(a1, a2, *(v2 + 16));
}

void sub_1DF6AF658()
{
  if (!qword_1EDC03FD0)
  {
    sub_1DF6AE368(255, &qword_1EDC034A0);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03FD0);
    }
  }
}

uint64_t sub_1DF6AF6DC(uint64_t a1, id a2, void (*a3)(void *))
{
  if (a2)
  {
    v7[0] = a2;
  }

  else
  {
    sub_1DF6B1124(a1, v7, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, sub_1DF6AE368);
  }

  v8 = a2 != 0;
  v5 = a2;
  a3(v7);
  return sub_1DF6B1E48(v7, sub_1DF6B1EA8);
}

uint64_t sub_1DF6AF78C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_1DF6B1E38(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_1DF6B1FAC(v11, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, sub_1DF6AE368);
}

uint64_t sub_1DF6AF888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = a4(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = v4;

  return sub_1DF6F5FBC();
}

void sub_1DF6AF918(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_1DF6F63BC();
  v8 = swift_allocObject();
  v8[2] = sub_1DF6B218C;
  v8[3] = v6;
  v8[4] = a3;
  v11[4] = sub_1DF6B1E10;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DF6AFBC0;
  v11[3] = &block_descriptor_144;
  v9 = _Block_copy(v11);
  v10 = a3;

  [v10 stringForKey:v7 completion:v9];
  _Block_release(v9);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DF6AFA9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AF918(a1, a2, *(v2 + 16));
}

void sub_1DF6AFAA8()
{
  if (!qword_1EDC047A0)
  {
    sub_1DF6AE368(255, &qword_1EDC04798);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC047A0);
    }
  }
}

void sub_1DF6AFB28(void *a1, uint64_t a2, id a3, void (*a4)(id, uint64_t, BOOL))
{
  if (a3)
  {
    v6 = 0;
    v7 = a3;
  }

  else
  {
    v6 = a2;
    v7 = a1;
  }

  v8 = a3;
  a4(v7, v6, a3 != 0);

  sub_1DF6B1E1C(v7, v6, a3 != 0);
}

uint64_t sub_1DF6AFBC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1DF6F63EC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t HKKeyValueDomain.getAllValues()()
{
  *(swift_allocObject() + 16) = v0;
  sub_1DF6AFDF8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_1DF6F5FBC();
}

void sub_1DF6AFCD4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_1DF6B1DF4;
  v7[3] = v6;
  v7[4] = a3;
  v10[4] = sub_1DF6B1DF8;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DF6AFF1C;
  v10[3] = &block_descriptor_135;
  v8 = _Block_copy(v10);

  v9 = a3;

  [v9 allValuesWithCompletion_];
  _Block_release(v8);
}

void sub_1DF6AFDF8()
{
  if (!qword_1EDC03FF8)
  {
    sub_1DF6B1A50(255, &qword_1EDC03F58, MEMORY[0x1E69E5E28]);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03FF8);
    }
  }
}

void sub_1DF6AFE84(uint64_t a1, id a2, void (*a3)(id, BOOL))
{
  if (a1)
  {
    v5 = a2;
    if (!a2)
    {
    }
  }

  else if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v6 = a2;
  a3(v5, a2 != 0);

  sub_1DF6B1E04(v5, a2 != 0);
}

uint64_t sub_1DF6AFF1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1DF6F62AC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t HKKeyValueDomain.setBool(_:for:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  sub_1DF6B0160();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v3;

  return sub_1DF6F5FBC();
}

uint64_t sub_1DF6B0068(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_1DF6B21CC;
  v7[3] = v6;
  v7[4] = a3;

  v8 = a3;
  sub_1DF6F694C();
}

uint64_t sub_1DF6B0150(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  return sub_1DF6B0068(a1, a2, *(v2 + 16));
}

void sub_1DF6B0160()
{
  if (!qword_1EDC03FC0)
  {
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03FC0);
    }
  }
}

uint64_t HKKeyValueDomain.setData(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  sub_1DF6B0160();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v4;
  sub_1DF6B0468(a1, a2);

  return sub_1DF6F5FBC();
}

void sub_1DF6B027C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  if (a5 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1DF6F59FC();
  }

  v11 = sub_1DF6F63BC();
  v12 = swift_allocObject();
  v12[2] = sub_1DF6B21CC;
  v12[3] = v9;
  v12[4] = a3;
  v15[4] = sub_1DF6B21D0;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1DF6CDA24;
  v15[3] = &block_descriptor_119;
  v13 = _Block_copy(v15);
  v14 = a3;

  [v14 setData:v10 forKey:v11 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1DF6B03FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DF6B0468(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF6B047C(a1, a2);
  }

  return a1;
}

uint64_t sub_1DF6B047C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t HKKeyValueDomain.setDate(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E6969530];
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v21 - v11;
  sub_1DF6B1124(a1, &v21 - v11, &qword_1EDC05240, v7, sub_1DF6AF3E8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  sub_1DF6B08D8(v12, v14 + v13);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  sub_1DF6B0160();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v3;

  return sub_1DF6F5FBC();
}

void sub_1DF6B0664(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = MEMORY[0x1E6969530];
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = aBlock - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1DF6B1124(a4, v12, &qword_1EDC05240, v8, sub_1DF6AF3E8);
  v14 = sub_1DF6F5A7C();
  v15 = *(v14 - 8);
  LODWORD(a1) = (*(v15 + 48))(v12, 1, v14);

  v16 = 0;
  if (a1 != 1)
  {
    v16 = sub_1DF6F5A4C();
    (*(v15 + 8))(v12, v14);
  }

  v17 = sub_1DF6F63BC();
  v18 = swift_allocObject();
  v18[2] = sub_1DF6B21CC;
  v18[3] = v13;
  v18[4] = a3;
  aBlock[4] = sub_1DF6B21D0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6CDA24;
  aBlock[3] = &block_descriptor_109;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  [v20 setDate:v16 forKey:v17 completion:v19];
  _Block_release(v19);
}

uint64_t sub_1DF6B08D8(uint64_t a1, uint64_t a2)
{
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DF6B0958(uint64_t a1, uint64_t a2)
{
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1DF6B0664(a1, a2, v8, v2 + v7);
}

uint64_t HKKeyValueDomain.setInteger(_:for:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2 & 1;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  sub_1DF6B0160();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v4;

  return sub_1DF6F5FBC();
}

uint64_t sub_1DF6B0AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_1DF6B21CC;
  v7[3] = v6;
  v7[4] = a3;

  v8 = a3;
  sub_1DF6F68DC();
}

uint64_t sub_1DF6B0BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_1DF6B0AD0(a1, a2, *(v2 + 16));
}

uint64_t HKKeyValueDomain.setNumber(_:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  sub_1DF6B0160();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = a1;

  v12 = v3;
  return sub_1DF6F5FBC();
}

void sub_1DF6B0C70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1DF6F63BC();
  v10 = swift_allocObject();
  v10[2] = sub_1DF6B21CC;
  v10[3] = v8;
  v10[4] = a3;
  v13[4] = sub_1DF6B21D0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6CDA24;
  v13[3] = &block_descriptor_92;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v12 setNumber:a4 forKey:v9 completion:v11];
  _Block_release(v11);
}

void sub_1DF6B0DC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  sub_1DF6B0C70(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t HKKeyValueDomain.setPropertyListValue(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF6B1124(a1, v13, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, sub_1DF6AE368);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = v13[1];
  *(v6 + 24) = v13[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  sub_1DF6B0160();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v3;

  return sub_1DF6F5FBC();
}

void sub_1DF6B0EA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1DF6B1124(a4, aBlock, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, sub_1DF6AE368);
  v9 = v21;
  if (v21)
  {
    v10 = __swift_project_boxed_opaque_existential_0(aBlock, v21);
    v11 = *(v9 - 1);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10);
    v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);

    v15 = sub_1DF6F6E1C();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {

    v15 = 0;
  }

  v16 = sub_1DF6F63BC();
  v17 = swift_allocObject();
  v17[2] = sub_1DF6B21CC;
  v17[3] = v8;
  v17[4] = a3;
  v22 = sub_1DF6B1D8C;
  v23 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6CDA24;
  v21 = &block_descriptor_82;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [v19 setPropertyListValue:v15 forKey:v16 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF6B1124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1DF6B1194(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  sub_1DF6B0EA4(a1, a2, *(v2 + 16), v2 + 24);
}

uint64_t HKKeyValueDomain.setString(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  sub_1DF6B0160();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = v4;
  return sub_1DF6F5FBC();
}

void sub_1DF6B1250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  if (a5)
  {
    a5 = sub_1DF6F63BC();
  }

  v10 = sub_1DF6F63BC();
  v11 = swift_allocObject();
  v11[2] = sub_1DF6B21CC;
  v11[3] = v9;
  v11[4] = a3;
  v14[4] = sub_1DF6B21D0;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DF6CDA24;
  v14[3] = &block_descriptor_72;
  v12 = _Block_copy(v14);
  v13 = a3;

  [v13 setString:a5 forKey:v10 completion:v12];
  _Block_release(v12);
}

uint64_t HKKeyValueDomain.removeValues(for:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_1DF6B0160();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v1;

  return sub_1DF6F5FBC();
}

void sub_1DF6B1484(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1DF6E53FC(v7);

  v8 = sub_1DF6F671C();

  v9 = swift_allocObject();
  v9[2] = sub_1DF6B1D68;
  v9[3] = v6;
  v9[4] = a3;
  v12[4] = sub_1DF6B21D0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF6CDA24;
  v12[3] = &block_descriptor_2;
  v10 = _Block_copy(v12);
  v11 = a3;

  [v11 removeValuesForKeys:v8 completion:v10];
  _Block_release(v10);
}

uint64_t HKKeyValueDomain.removeAllValues()()
{
  sub_1DF6B1988();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6B1ABC();
  v8 = *(v7 - 8);
  v21 = v7;
  v22 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  sub_1DF6AFDF8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = v0;
  v23 = sub_1DF6F5FBC();
  sub_1DF6B1A50(0, &qword_1ECE4D7A0, MEMORY[0x1E69E5D88]);
  sub_1DF6B1CD8(&qword_1ECE4D7A8, sub_1DF6AFDF8);
  sub_1DF6F600C();

  *(swift_allocObject() + 16) = v15;
  v16 = v15;
  sub_1DF6F5F0C();
  sub_1DF6B0160();
  sub_1DF6B1CD8(&qword_1ECE4D7B8, sub_1DF6B1988);
  sub_1DF6B1CD8(&qword_1EDC03FC8, sub_1DF6B0160);
  sub_1DF6F604C();

  (*(v3 + 8))(v6, v2);
  sub_1DF6B1CD8(qword_1ECE4D7C0, sub_1DF6B1ABC);
  v17 = v21;
  v18 = sub_1DF6F5FEC();
  (*(v22 + 8))(v11, v17);
  return v18;
}

void sub_1DF6B1988()
{
  if (!qword_1ECE4D798)
  {
    sub_1DF6AFDF8();
    sub_1DF6B1A50(255, &qword_1ECE4D7A0, MEMORY[0x1E69E5D88]);
    sub_1DF6B1CD8(&qword_1ECE4D7A8, sub_1DF6AFDF8);
    v0 = sub_1DF6F5E2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D798);
    }
  }
}

void sub_1DF6B1A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DF6B1ABC()
{
  if (!qword_1ECE4D7B0)
  {
    sub_1DF6B0160();
    sub_1DF6B1988();
    sub_1DF6B1CD8(&qword_1EDC03FC8, sub_1DF6B0160);
    sub_1DF6B1CD8(&qword_1ECE4D7B8, sub_1DF6B1988);
    v0 = sub_1DF6F5E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D7B0);
    }
  }
}

uint64_t sub_1DF6B1BA8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v7 = sub_1DF6E81CC(v6, 0);
  v8 = sub_1DF6EA18C(&v16, v7 + 4, v6, v5);

  result = sub_1DF6B1D20();
  if (v8 == v6)
  {
    v4 = a3;
LABEL_5:
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = v7;
    sub_1DF6B0160();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = a2;
    result = sub_1DF6F5FBC();
    *v4 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF6B1CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_44Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6B1D90(int a1, id a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2 != 0;
  v7 = a2;
  v5(a2, v6);

  sub_1DF6A12CC(a2, v6);
}

void sub_1DF6B1DF8(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AFE84(a1, a2, *(v2 + 16));
}

void sub_1DF6B1E04(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1DF6B1E10(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_1DF6AFB28(a1, a2, a3, *(v3 + 16));
}

void sub_1DF6B1E1C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DF6B1E2C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1DF6AF6DC(a1, a2, *(v2 + 16));
}

_OWORD *sub_1DF6B1E38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DF6B1E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DF6B1EA8()
{
  if (!qword_1EDC034A8)
  {
    sub_1DF6AE368(255, &qword_1EDC034A0);
    sub_1DF69F1E4();
    v0 = sub_1DF6F6F6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC034A8);
    }
  }
}

void sub_1DF6B1F2C(void *a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AF488(a1, a2, *(v2 + 16));
}

uint64_t sub_1DF6B1F44(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 0x1FF;
  return v3(&v6);
}

void sub_1DF6B1F88(void *a1, unint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AF134(a1, a2, *(v2 + 16));
}

void sub_1DF6B1F94(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1DF6B1FA0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1DF6AEC8C(a1, a2, *(v2 + 16));
}

uint64_t sub_1DF6B1FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1DF6B200C()
{
  if (!qword_1EDC034B0)
  {
    sub_1DF6AF3E8(255, &qword_1EDC05240, MEMORY[0x1E6969530]);
    sub_1DF69F1E4();
    v0 = sub_1DF6F6F6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC034B0);
    }
  }
}

uint64_t sub_1DF6B209C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

void sub_1DF6B20DC(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_1DF6AE970(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_1DF6B20E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF6B03FC(a1, a2);
  }

  return a1;
}

void sub_1DF6B20FC(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1DF6B20E8(a1, a2);
  }
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DF6B2148(void *a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6AE650(a1, a2, *(v2 + 16));
}

uint64_t sub_1DF6B21E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  sub_1DF6F5EBC();
  v7 = sub_1DF6F6A0C();
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t sub_1DF6B22B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  sub_1DF6F5EBC();
  v7 = sub_1DF6F6A0C();
  (*(*(v7 - 8) + 40))(v1 + v4, a1, v7);
  return swift_endAccess();
}

uint64_t sub_1DF6B2388@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DF6B2428(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void sub_1DF6B2508(uint64_t a1@<X8>)
{
  os_unfair_lock_lock((*(v1 + 16) + 16));
  sub_1DF6B2388(a1);
  v3 = (*(v1 + 16) + 16);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1DF6B2554(uint64_t a1)
{
  v3 = *v1;
  sub_1DF6B5844(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_1DF6B25D0(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1DF6B2508(v9);
  return sub_1DF6B26E4;
}

void sub_1DF6B26E4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1DF6B5844(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1DF6B5844((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DF6B27C0(void *a1)
{
  v3 = v1[2];
  os_unfair_lock_lock(v3 + 4);
  sub_1DF6B5934(a1, v11);
  v4 = *(*v1 + 152);
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DF6B5090(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1DF6B5090((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  sub_1DF6A3698(v11, &v5[5 * v8 + 4]);
  *(v1 + v4) = v5;
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6F5F0C();
  return sub_1DF6F5F2C();
}

uint64_t sub_1DF6B28F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a3;
  v32 = *v3;
  v5 = v32[11];
  v33 = v32[12];
  v34 = v5;
  v6 = sub_1DF6F5EBC();
  v7 = sub_1DF6F6A0C();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v30 - v15;
  v17 = *(a2 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + 16);
  os_unfair_lock_lock(v21 + 4);
  if (*(v3 + 25) == 1)
  {
    v37[0] = v32[10];
    v37[1] = v34;
    v37[2] = a2;
    v38 = v36;
    v22 = type metadata accessor for StreamPublisher.StreamConduit();
    (*(v17 + 16))(v20, v35, a2);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();

    v26 = sub_1DF6B3A54(v25, v20);
    v27 = *(*v3 + 136);
    swift_beginAccess();
    v28 = type metadata accessor for StreamConduitList();
    sub_1DF6B9438(v26, v28);
    swift_endAccess();
    os_unfair_lock_unlock(v21 + 4);
    v38 = v22;
    WitnessTable = swift_getWitnessTable();
    v37[0] = v26;
    sub_1DF6F5E8C();
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_1DF6B21E8(v11);
    if ((*(v12 + 48))(v11, 1, v6) == 1)
    {
      result = (*(v31 + 8))(v11, v7);
      __break(1u);
    }

    else
    {
      (*(v12 + 32))(v16, v11, v6);
      os_unfair_lock_unlock(v21 + 4);
      sub_1DF6F5F3C();
      sub_1DF6F5E8C();
      __swift_destroy_boxed_opaque_existential_1(v37);
      sub_1DF6F5E7C();
      return (*(v12 + 8))(v16, v6);
    }
  }

  return result;
}

void sub_1DF6B2CF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - v7;
  v9 = v1[2];
  os_unfair_lock_lock(v9 + 4);
  if (*(v1 + 25) == 1)
  {
    v10 = v1 + *(*v1 + 136);
    swift_beginAccess();
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    (*(v5 + 16))(v8, a1, v4);
    sub_1DF6B59B0(v11, v10);
    sub_1DF6B2428(v8);
    os_unfair_lock_unlock(v9 + 4);
    MEMORY[0x1EEE9AC00](v12);
    *(&v15 - 2) = a1;
    v13 = *(v3 + 88);
    v14 = *(v3 + 96);
    sub_1DF6B962C(sub_1DF6B59CC, (&v15 - 4), v11, v10);
    sub_1DF6B5A20(v11, v10);
  }

  else
  {

    os_unfair_lock_unlock(v9 + 4);
  }
}

void sub_1DF6B2EFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = sub_1DF6F5EBC();
  v7 = sub_1DF6F6A0C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21[-v9];
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  if (*(v1 + 25) == 1)
  {
    *(v1 + 25) = 0;
    v12 = *(v6 - 8);
    (*(v12 + 16))(v10, a1, v6);
    (*(v12 + 56))(v10, 0, 1, v6);
    v13 = v1;
    sub_1DF6B22B4(v10);
    v14 = v1 + *(*v1 + 136);
    swift_beginAccess();
    v15 = *v14;
    v16 = *(*v13 + 136);
    v17 = *(v14 + 8);
    swift_beginAccess();
    sub_1DF6B59B0(v15, v17);
    v18 = *(v3 + 80);
    type metadata accessor for StreamConduitList();
    sub_1DF6B9750();
    v19 = swift_endAccess();
    (*(*v13 + 408))(v19);
    os_unfair_lock_unlock(v11 + 4);
    MEMORY[0x1EEE9AC00](v20);
    *&v21[-16] = a1;
    sub_1DF6B962C(sub_1DF6B5A3C, &v21[-32], v15, v17);
    sub_1DF6B5A20(v15, v17);
  }

  else
  {

    os_unfair_lock_unlock(v11 + 4);
  }
}

void sub_1DF6B3208(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[12];
  v7 = sub_1DF6F5EBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = v2[2];
  os_unfair_lock_lock(v12 + 4);
  if (*(v2 + 25) == 1)
  {
    v13 = *(*v2 + 136);
    swift_beginAccess();
    v14 = v4[10];
    v15 = type metadata accessor for StreamConduitList();
    sub_1DF6B977C(a1, v15);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
    if (*(v2 + 24) == 1)
    {
      (*(*(v5 - 8) + 56))(v11, 1, 1, v5);
      sub_1DF6B2EFC(v11);
      (*(v8 + 8))(v11, v7);
    }
  }

  else
  {

    os_unfair_lock_unlock(v12 + 4);
  }
}

void sub_1DF6B3434()
{
  v1 = v0[2];
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 160);
  if ((*(v0 + v2) & 1) == 0)
  {
    *(v0 + v2) = 1;
    (*(*v0 + 400))();
  }

  os_unfair_lock_unlock(v1 + 4);
}

uint64_t StreamPublisher.DownstreamDisconnectBehaviour.hashValue.getter()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6B3558()
{
  sub_1DF6F6F0C();
  StreamPublisher.DownstreamDisconnectBehaviour.hash(into:)();
  return sub_1DF6F6F2C();
}

uint64_t StreamPublisher.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  StreamPublisher.init(_:)(a1);
  return v5;
}

uint64_t StreamPublisher.init(_:)(uint64_t a1)
{
  v3 = *v1;
  sub_1DF6B5E18(0, &qword_1EDC04670, type metadata accessor for os_unfair_lock_s);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 16) = v4;
  *(v1 + 25) = 1;
  v5 = v3[16];
  v6 = v3[11];
  v7 = v3[12];
  v8 = sub_1DF6F5EBC();
  (*(*(v8 - 8) + 56))(v1 + v5, 1, 1, v8);
  v9 = v1 + *(*v1 + 136);
  v10 = v3[10];
  *v9 = sub_1DF6B942C();
  *(v9 + 8) = v11;
  *(v1 + *(*v1 + 152)) = MEMORY[0x1E69E7CC0];
  *(v1 + *(*v1 + 160)) = 0;
  (*(*(v10 - 8) + 32))(v1 + *(*v1 + 144), a1, v10);
  *(v1 + 24) = 0;
  return v1;
}

uint64_t StreamPublisher.__allocating_init(_:onDisconnect:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return _s18HealthKitAdditions15StreamPublisherC_12onDisconnectACyxq_Gx_AC010DownstreamG9BehaviourOyxq__Gtcfc_0(a1);
}

char *StreamPublisher.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 152);
  swift_beginAccess();
  v4 = *&v0[v3];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = *&v0[v3];

    do
    {
      sub_1DF6B5934(v6, v17);
      v8 = v17[4];
      __swift_project_boxed_opaque_existential_0(v17, v17[3]);
      v9 = *(v8 + 8);
      sub_1DF6F5EAC();
      __swift_destroy_boxed_opaque_existential_1(v17);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v10 = *(v1 + 2);

  v11 = *(*v1 + 128);
  v12 = v2[11];
  v13 = v2[12];
  sub_1DF6F5EBC();
  v14 = sub_1DF6F6A0C();
  (*(*(v14 - 8) + 8))(&v1[v11], v14);
  sub_1DF6B5A20(*&v1[*(*v1 + 136)], v1[*(*v1 + 136) + 8]);
  (*(*(v2[10] - 8) + 8))(&v1[*(*v1 + 144)]);
  v15 = *&v1[v3];

  return v1;
}

uint64_t StreamPublisher.__deallocating_deinit()
{
  StreamPublisher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6B39FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1DF6B3A54(a1, a2);
}

uint64_t sub_1DF6B3A54(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = sub_1DF6F6A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  *(v2 + 2) = 0;
  v10 = *(v3 + 200);
  v11 = *(v4 - 8);
  v12 = *(v11 + 56);
  v12(&v2[v10], 1, 1, v4);
  v2[*(*v2 + 208)] = 0;
  v13 = *(*v2 + 216);
  *&v2[v13] = sub_1DF6F5EFC();
  v14 = *(*v2 + 224);
  sub_1DF6B5E18(0, &qword_1EDC04670, type metadata accessor for os_unfair_lock_s);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v2[v14] = v15;
  v16 = *(*v2 + 232);
  sub_1DF6B5E18(0, &qword_1EDC04668, type metadata accessor for os_unfair_recursive_lock_s);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *&v2[v16] = v17;
  v2[*(*v2 + 240)] = 0;
  v18 = *(v2 + 2);
  *(v2 + 2) = v21;

  (*(v11 + 32))(v9, v22, v4);
  v12(v9, 0, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(&v2[v10], v9, v5);
  swift_endAccess();
  return sub_1DF6B9920();
}

void sub_1DF6B3CFC(uint64_t a1)
{
  v29 = *v1;
  v2 = v29;
  v30 = a1;
  v3 = *(v29 + 176);
  v4 = sub_1DF6F6A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v28 - v12;
  v14 = *(v1 + *(v2 + 224));
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 216);
  swift_beginAccess();
  v16 = *(v1 + v15);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (!v16)
    {
LABEL_6:
      *(v1 + *(*v1 + 240)) = 0;
      os_unfair_lock_unlock(v14 + 4);
      return;
    }
  }

  v17 = *(*v1 + 200);
  swift_beginAccess();
  (*(v5 + 16))(v9, v1 + v17, v4);
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  v18 = v13;
  (*(v10 + 32))(v13, v9, v3);
  swift_beginAccess();
  v19 = *(v1 + v15);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
      v20 = sub_1DF6F5F0C();
    }

    else
    {
      if (v19 < 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (!v19)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v20 = v19 - 1;
    }

    *(v1 + v15) = v20;
  }

  swift_endAccess();
  *(v1 + *(*v1 + 240)) = 1;
  os_unfair_lock_unlock(v14 + 4);
  v21 = v1;
  v22 = *(v1 + *(*v1 + 232));
  os_unfair_recursive_lock_lock_with_options();
  v23 = *(v29 + 184);
  v24 = sub_1DF6F5E9C();
  os_unfair_recursive_lock_unlock();
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
LABEL_17:
    os_unfair_lock_lock(v14 + 4);
    swift_beginAccess();
    v25 = *(v21 + v15);
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
LABEL_26:
      swift_endAccess();
      os_unfair_lock_unlock(v14 + 4);
      goto LABEL_27;
    }

    sub_1DF6F5F0C();
    v26 = sub_1DF6F5EEC();
    v27 = sub_1DF6F5F0C();
    if (v26)
    {
LABEL_25:
      *(v21 + v15) = v27;
      goto LABEL_26;
    }

    if (sub_1DF6F5EEC())
    {
LABEL_23:
      v27 = sub_1DF6F5F0C();
      goto LABEL_25;
    }

    if (((v25 | v24) & 0x8000000000000000) == 0)
    {
      v27 = v25 + v24;
      if (!__OFADD__(v25, v24))
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

LABEL_34:
        __break(1u);
        return;
      }

      goto LABEL_23;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v24 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v24)
  {
    goto LABEL_17;
  }

LABEL_27:
  (*(v10 + 8))(v18, v3);
}

void sub_1DF6B4148(uint64_t a1)
{
  v22[0] = *v1;
  v2 = v22[0];
  v22[1] = a1;
  v3 = *(v22[0] + 176);
  v4 = sub_1DF6F6A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v22 - v11;
  v13 = *(v3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v22 - v15;
  v17 = *&v1[*(v2 + 224)];
  os_unfair_lock_lock(v17 + 4);
  v18 = *(*v1 + 200);
  swift_beginAccess();
  (*(v5 + 16))(v12, &v1[v18], v4);
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v5 + 8))(v12, v4);
    os_unfair_lock_unlock(v17 + 4);
  }

  else
  {
    (*(v13 + 32))(v16, v12, v3);
    (*(v13 + 56))(v9, 1, 1, v3);
    swift_beginAccess();
    (*(v5 + 40))(&v1[v18], v9, v4);
    swift_endAccess();
    v19 = *(v1 + 2);
    *(v1 + 2) = 0;
    os_unfair_lock_unlock(v17 + 4);
    if (v19)
    {

      sub_1DF6B3208(v1);
    }

    v20 = *&v1[*(*v1 + 232)];
    os_unfair_recursive_lock_lock_with_options();
    v21 = *(v22[0] + 184);
    sub_1DF6F5E7C();
    os_unfair_recursive_lock_unlock();

    (*(v13 + 8))(v16, v3);
  }
}

void sub_1DF6B4498(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v47 = *(*v2 + 160);
  v48 = *(v47 - 8);
  v5 = *(v48 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v45 - v9;
  v11 = *(v10 + 176);
  v12 = sub_1DF6F6A0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v45 - v20;
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_4:
  v46 = v4;
  v50 = v21;
  v22 = *&v2[*(*v2 + 224)];
  os_unfair_lock_lock(v22 + 4);
  v23 = *(*v2 + 200);
  swift_beginAccess();
  (*(v13 + 16))(v17, &v2[v23], v12);
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
    (*(v13 + 8))(v17, v12);
    os_unfair_lock_unlock(v22 + 4);
    return;
  }

  v24 = v50;
  (*(v18 + 32))(v50, v17, v11);
  v25 = *(*v2 + 216);
  swift_beginAccess();
  v26 = *&v2[v25];
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v27 = sub_1DF6F5EEC();
    v28 = sub_1DF6F5F0C();
    if ((v27 & 1) == 0)
    {
      if (sub_1DF6F5EEC())
      {
        goto LABEL_12;
      }

      if ((v26 | a1) < 0)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v28 = v26 + a1;
      if (__OFADD__(v26, a1))
      {
LABEL_12:
        v28 = sub_1DF6F5F0C();
      }

      else if (v28 < 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    *&v2[v25] = v28;
  }

  swift_endAccess();
  v29 = *(*v2 + 208);
  if ((v2[v29] & 1) == 0)
  {
    v2[v29] = 1;
    if (*(v2 + 2))
    {
      v30 = *(v2 + 2);

      sub_1DF6B3434();
    }
  }

  v31 = *(*v2 + 240);
  if ((v2[v31] & 1) == 0 && *(v2 + 2))
  {
    v32 = *(v2 + 2);

    sub_1DF6B2508(v8);

    v33 = v8;
    v34 = v47;
    (*(v48 + 32))(v49, v33, v47);
    v2[v31] = 1;
    swift_beginAccess();
    v35 = *&v2[v25];
    sub_1DF6F5F0C();
    if ((sub_1DF6F5EEC() & 1) == 0)
    {
      sub_1DF6F5F0C();
      if (sub_1DF6F5EEC())
      {
        v36 = sub_1DF6F5F0C();
      }

      else
      {
        if (v35 < 0)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (!v35)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v36 = v35 - 1;
      }

      *&v2[v25] = v36;
    }

    swift_endAccess();
    os_unfair_lock_unlock(v22 + 4);
    v37 = *&v2[*(*v2 + 232)];
    os_unfair_recursive_lock_lock_with_options();
    v38 = *(v46 + 184);
    v39 = sub_1DF6F5E9C();
    os_unfair_recursive_lock_unlock();
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
LABEL_31:
      os_unfair_lock_lock(v22 + 4);
      swift_beginAccess();
      v40 = *&v2[v25];
      sub_1DF6F5F0C();
      v41 = sub_1DF6F5EEC();
      v24 = v50;
      if (v41)
      {
LABEL_42:
        swift_endAccess();
        os_unfair_lock_unlock(v22 + 4);
        (*(v48 + 8))(v49, v34);
        goto LABEL_43;
      }

      sub_1DF6F5F0C();
      v42 = sub_1DF6F5EEC();
      v43 = sub_1DF6F5F0C();
      if (v42)
      {
        v34 = v47;
LABEL_41:
        *&v2[v25] = v43;
        goto LABEL_42;
      }

      v44 = sub_1DF6F5EEC();
      v34 = v47;
      if (v44)
      {
        goto LABEL_38;
      }

      if (((v40 | v39) & 0x8000000000000000) == 0)
      {
        v43 = v40 + v39;
        if (!__OFADD__(v40, v39))
        {
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

LABEL_53:
          __break(1u);
          return;
        }

LABEL_38:
        v43 = sub_1DF6F5F0C();
        goto LABEL_41;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if ((v39 & 0x8000000000000000) == 0)
    {
      if (!v39)
      {
        (*(v48 + 8))(v49, v34);
        (*(v18 + 8))(v50, v11);
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_47;
  }

  os_unfair_lock_unlock(v22 + 4);
LABEL_43:
  (*(v18 + 8))(v24, v11);
}

void sub_1DF6B4AD0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = sub_1DF6F6A0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = *&v0[*(v1 + 224)];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v0 + 200);
  swift_beginAccess();
  (*(v4 + 16))(v10, &v0[v12], v3);
  v13 = *(v2 - 8);
  LODWORD(v1) = (*(v13 + 48))(v10, 1, v2);
  (*(v4 + 8))(v10, v3);
  if (v1 == 1)
  {
    os_unfair_lock_unlock(v11 + 4);
  }

  else
  {
    (*(v13 + 56))(v8, 1, 1, v2);
    swift_beginAccess();
    (*(v4 + 40))(&v0[v12], v8, v3);
    swift_endAccess();
    v14 = *(v0 + 2);
    *(v0 + 2) = 0;
    os_unfair_lock_unlock(v11 + 4);
    if (v14)
    {

      sub_1DF6B3208(v0);
    }
  }
}

uint64_t sub_1DF6B4D3C()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 200);
  v4 = *(v1 + 176);
  v5 = sub_1DF6F6A0C();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *&v0[*(*v0 + 224)];

  v7 = *&v0[*(*v0 + 232)];
}

char *sub_1DF6B4E10()
{
  v1 = *v0;
  v2 = sub_1DF6B9920();
  v3 = *(v2 + 2);

  v4 = *(*v2 + 200);
  v5 = *(v1 + 176);
  v6 = sub_1DF6F6A0C();
  (*(*(v6 - 8) + 8))(&v2[v4], v6);
  v7 = *&v2[*(*v2 + 224)];

  v8 = *&v2[*(*v2 + 232)];

  return v2;
}

uint64_t sub_1DF6B4EE4()
{
  v0 = *sub_1DF6B4E10();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1DF6B4F68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6B5DCC(0, &qword_1ECE4D858);
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

void *sub_1DF6B5090(void *result, int64_t a2, char a3, void *a4)
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
    sub_1DF6B5E78(0, &qword_1ECE4D870, sub_1DF6B5ECC);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1DF6B5ECC();
    swift_arrayInitWithCopy();
  }

  return v10;
}