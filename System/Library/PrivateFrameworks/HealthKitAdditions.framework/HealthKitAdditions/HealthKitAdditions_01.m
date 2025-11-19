char *sub_1DF6B51DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6B5E78(0, &qword_1ECE4D848, sub_1DF6B5D74);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1DF6B52F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6B5DCC(0, &qword_1ECE4D860);
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

char *sub_1DF6B5440(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, void (*a6)(uint64_t))
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
    sub_1DF6B5E78(0, a5, a6);
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

void *sub_1DF6B5540(void *result, int64_t a2, char a3, void *a4)
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
    sub_1DF6B5E78(0, &qword_1ECE4D868, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s18HealthKitAdditions15StreamPublisherC_12onDisconnectACyxq_Gx_AC010DownstreamG9BehaviourOyxq__Gtcfc_0(uint64_t a1)
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
  *(v1 + 24) = 1;
  return v1;
}

void sub_1DF6B5844(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  v8 = v1[2];
  os_unfair_lock_lock(v8 + 4);
  (*(v4 + 16))(v7, a1, v3);
  sub_1DF6B2428(v7);
  os_unfair_lock_unlock(v8 + 4);
  sub_1DF6B2CF0(a1);
}

uint64_t sub_1DF6B5934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DF6B59B0(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1DF6B5A20(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1DF6B5CAC(uint64_t a1)
{
  v1 = *(a1 + 176);
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

void sub_1DF6B5D74()
{
  if (!qword_1ECE4D850)
  {
    v0 = sub_1DF6F681C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D850);
    }
  }
}

void sub_1DF6B5DCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DF6F6DFC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1DF6B5E18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F6BCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DF6B5E78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F6DFC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DF6B5ECC()
{
  result = qword_1ECE4D878;
  if (!qword_1ECE4D878)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECE4D878);
  }

  return result;
}

uint64_t HKHealthStore.makeSamplePublisher(queryDescriptors:limit:sortDescriptors:debugIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v6;

  v7 = v6;
}

uint64_t HKHealthStore.SamplePublisher.configuration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
}

void sub_1DF6B5FFC(int a1, void *a2, id a3, void (*a4)(void **))
{
  if (a2)
  {
    v6 = a2;
    v7 = 1;
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v6 = a3;
    v7 = 2;
    v5 = a3;
  }

  a4(&v6);
  sub_1DF6B6574(v6, v7);
}

uint64_t sub_1DF6B6074@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
}

uint64_t sub_1DF6B60DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6B6500();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

uint64_t sub_1DF6B6140(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03568, 0x1E696C3A8);
    v5 = sub_1DF6F65AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE15SamplePublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0mG6ResultOySaySo8HKSampleCGGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);

  v12 = sub_1DF6F659C();
  sub_1DF69EF80(0, qword_1EDC046D8, 0x1E696AEB0);
  v13 = sub_1DF6F659C();
  v19[4] = sub_1DF6B6554;
  v19[5] = v10;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1DF6B6140;
  v19[3] = &block_descriptor_3;
  v14 = _Block_copy(v19);
  v15 = [v11 initWithQueryDescriptors:v12 limit:v5 sortDescriptors:v13 resultsHandler:v14];

  _Block_release(v14);

  v16 = v15;
  if (v9)
  {
    v17 = sub_1DF6F63BC();
  }

  else
  {
    v17 = 0;
  }

  [v15 setDebugIdentifier_];

  return v15;
}

unint64_t sub_1DF6B63BC(uint64_t a1)
{
  result = sub_1DF6B63E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6B63E4()
{
  result = qword_1EDC03EA8;
  if (!qword_1EDC03EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03EA8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DF6B644C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DF6B6494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF6B6500()
{
  result = qword_1EDC03EA0;
  if (!qword_1EDC03EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03EA0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6B6574(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_1DF6B65A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a1;
  Descriptor = type metadata accessor for HKSampleCountQueryDescriptor();

  return HKSampleCountQueryDescriptor.samplePredicates.setter(v7, Descriptor);
}

uint64_t HKSampleCountQueryDescriptor.samplePredicates.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  *(v2 + 8) = a1;

  return sub_1DF6B663C(a2);
}

uint64_t sub_1DF6B663C(uint64_t result)
{
  v2 = *(v1 + 8);
  if (*v1 == 1)
  {
    v5 = *(v1 + 8);
    v3 = *(result + 16);
    sub_1DF6F616C();
    sub_1DF6F663C();
    swift_getWitnessTable();
    result = sub_1DF6F67FC();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *(result + 16);
  sub_1DF6F616C();
  sub_1DF6F663C();
  swift_getWitnessTable();
  result = sub_1DF6F67FC();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t *(*HKSampleCountQueryDescriptor.samplePredicates.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_1DF6B673C;
}

uint64_t *sub_1DF6B673C(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result[1];
    return sub_1DF6B663C(*result);
  }

  return result;
}

uint64_t HKSampleCountQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1DF6F613C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HKSampleCountQueryDescriptor.queryAttributes.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1DF6F613C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*HKSampleCountQueryDescriptor.queryAttributes.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t HKSampleCountQueryDescriptor.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for HKSampleCountQueryDescriptor() + 32);
  result = sub_1DF6F610C();
  *a2 = 0;
  *(a2 + 8) = a1;
  return result;
}

uint64_t HKSampleCountQueryDescriptor.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for HKSampleCountQueryDescriptor() + 32);
  sub_1DF6F610C();
  *a1 = 1;
  sub_1DF6F616C();
  result = sub_1DF6F628C();
  *(a1 + 8) = result;
  return result;
}

uint64_t HKSampleCountQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6B6960, 0, 0);
}

uint64_t sub_1DF6B6960()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DF6B6A14;
  v4 = swift_continuation_init();
  sub_1DF6B6B54(v4, v1, v3, *(v2 + 16));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF6B6A14()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 80);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

void sub_1DF6B6B54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  aBlock = v7;
  sub_1DF6F616C();
  v8 = sub_1DF6F663C();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1DF6F67FC();
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a1;
    v12 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
    v35 = sub_1DF6B7C60;
    v36 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1DF6E335C;
    v34 = &block_descriptor_9;
    v13 = _Block_copy(&aBlock);
    v14 = a3;
    v15 = [v12 initWithResultsHandler_];
    v16 = v13;
  }

  else
  {
    aBlock = v7;
    MEMORY[0x1EEE9AC00](v10);
    v29[2] = a4;
    v30 = a4;
    v17 = sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);

    v19 = sub_1DF6DE70C(sub_1DF6B78B0, v29, v8, v17, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

    sub_1DF6E5494(v19);

    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a1;
    v21 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
    sub_1DF69FA98(&qword_1ECE4D900, &qword_1EDC03658, 0x1E696C388);
    v22 = a3;
    v23 = sub_1DF6F671C();

    v35 = sub_1DF6B7C40;
    v36 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1DF6B78D0;
    v34 = &block_descriptor_4;
    v24 = _Block_copy(&aBlock);
    v15 = [v21 initWithQueryDescriptors:v23 resultsHandler:{v24, v30}];

    v16 = v24;
  }

  _Block_release(v16);

  v25 = *(type metadata accessor for HKSampleCountQueryDescriptor() + 32);
  v26 = v15;
  sub_1DF6F611C();
  if (v27)
  {
    v28 = sub_1DF6F63BC();
  }

  else
  {
    v28 = 0;
  }

  [v26 setDebugIdentifier_];

  [v26 setQualityOfService_];
  [a3 executeQuery_];
}

void *sub_1DF6B6F0C(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = sub_1DF6B79DC();
LABEL_19:
      **(*(a5 + 64) + 40) = v8;

      return swift_continuation_throwingResume();
    }

    else
    {
      v28 = a5;
      sub_1DF6B7CC0();
      result = sub_1DF6F6D1C();
      v8 = result;
      v11 = 0;
      v12 = 1 << *(a2 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(a2 + 64);
      v15 = (v12 + 63) >> 6;
      v16 = (result + 8);
      if (v14)
      {
        while (1)
        {
          v17 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
LABEL_15:
          v20 = v17 | (v11 << 6);
          v21 = *(*(a2 + 56) + 8 * v20);
          v22 = *(*(a2 + 48) + 8 * v20);
          result = [v21 integerValue];
          *&v16[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
          *(v8[6] + 8 * v20) = v22;
          *(v8[7] + 8 * v20) = result;
          v23 = v8[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            break;
          }

          v8[2] = v25;
          if (!v14)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        v18 = v11;
        while (1)
        {
          v11 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v11 >= v15)
          {
            a5 = v28;
            goto LABEL_19;
          }

          v19 = *(a2 + 64 + 8 * v11);
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v14 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF6B7C68();
      sub_1DF6F599C();
      v9 = v29;
    }

    sub_1DF69F1E4();
    swift_allocError();
    *v26 = v9;
    v27 = a3;
    return swift_continuation_throwingResumeWithError();
  }

  return result;
}

void sub_1DF6B7180(void *a1@<X8>)
{
  sub_1DF6F616C();
  v2 = sub_1DF6F615C();
  v3 = sub_1DF6F614C();
  v4 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v2 predicate:v3];

  *a1 = v4;
}

uint64_t sub_1DF6B720C(uint64_t a1, unint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (!a2)
  {
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF6B7C68();
      sub_1DF6F599C();
      v12 = v51;
    }

    sub_1DF69F1E4();
    swift_allocError();
    *v43 = v12;
    v44 = a3;
    return swift_continuation_throwingResumeWithError();
  }

  v46 = a5;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_1DF6F6C9C() | 0x8000000000000000;
  }

  else
  {
    v13 = -1 << *(a2 + 32);
    v9 = ~v13;
    v8 = a2 + 64;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v10 = v15 & *(a2 + 64);
    v11 = a2;
  }

  v16 = 0;
  v45 = v9;
  v17 = (v9 + 64) >> 6;
  v18 = MEMORY[0x1E69E7CC8];
  v48 = v11;
  v49 = v17;
  v47 = v8;
  while ((v11 & 0x8000000000000000) != 0)
  {
    if (!sub_1DF6F6CBC())
    {
      goto LABEL_31;
    }

    sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);
    swift_dynamicCast();
    sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
    v25 = v51;
    swift_dynamicCast();
    v26 = v51;
    v21 = v16;
    v22 = v10;
    if (!v51)
    {
LABEL_31:
      sub_1DF6B1D20();
      **(*(v46 + 64) + 40) = v18;
      return swift_continuation_throwingResume();
    }

LABEL_22:
    v50 = v22;
    v27 = [v25 sampleType];
    v28 = v26;
    v29 = [v26 integerValue];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v18;
    v32 = sub_1DF6C350C(v27);
    v33 = v18[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_35;
    }

    v36 = v31;
    if (v18[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DF6E82F4();
      }
    }

    else
    {
      sub_1DF6E3468(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_1DF6C350C(v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_37;
      }

      v32 = v37;
    }

    if (v36)
    {
      *(v18[7] + 8 * v32) = v29;
    }

    else
    {
      v18[(v32 >> 6) + 8] |= 1 << v32;
      *(v18[6] + 8 * v32) = v27;
      *(v18[7] + 8 * v32) = v29;

      v39 = v18[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_36;
      }

      v18[2] = v41;
    }

    v16 = v21;
    v17 = v49;
    v10 = v50;
    v8 = v47;
    v11 = v48;
  }

  v19 = v16;
  v20 = v10;
  v21 = v16;
  if (v10)
  {
LABEL_18:
    v22 = (v20 - 1) & v20;
    v23 = (v21 << 9) | (8 * __clz(__rbit64(v20)));
    v24 = *(*(v11 + 56) + v23);
    v25 = *(*(v11 + 48) + v23);
    v26 = v24;
    if (!v25)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      goto LABEL_31;
    }

    v20 = *(v8 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
  result = sub_1DF6F6E8C();
  __break(1u);
  return result;
}

uint64_t sub_1DF6B762C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1DF6B76D4;

  return HKSampleCountQueryDescriptor.result(for:)(a2, a3);
}

uint64_t sub_1DF6B76D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1DF6B77E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DF6F616C();
  result = sub_1DF6F663C();
  if (v3 <= 0x3F)
  {
    result = sub_1DF6F613C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6B78D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);
    sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
    sub_1DF69FA98(&qword_1ECE4D900, &qword_1EDC03658, 0x1E696C388);
    v5 = sub_1DF6F62AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_1DF6B79DC()
{
  if (sub_1DF6F6A8C())
  {
    sub_1DF6B7CC0();
    v0 = sub_1DF6F6D3C();
  }

  else
  {
    v0 = MEMORY[0x1E69E7CC8];
  }

  v19 = v0;
  sub_1DF6F6C9C();
  swift_unknownObjectRetain();
  v1 = sub_1DF6F6CBC();
  if (v1)
  {
    v2 = v1;
    sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
    v3 = v2;
    do
    {
      v17 = v3;
      swift_dynamicCast();
      sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
      swift_dynamicCast();
      v11 = [v17 integerValue];

      v12 = *(v0 + 16);
      if (*(v0 + 24) <= v12)
      {
        sub_1DF6E3468(v12 + 1, 1);
      }

      v0 = v19;
      v4 = *(v19 + 40);
      result = sub_1DF6F69CC();
      v6 = v19 + 64;
      v7 = -1 << *(v19 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = 0;
        v14 = (63 - v7) >> 6;
        do
        {
          if (++v9 == v14 && (v13 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v15 = v9 == v14;
          if (v9 == v14)
          {
            v9 = 0;
          }

          v13 |= v15;
          v16 = *(v6 + 8 * v9);
        }

        while (v16 == -1);
        v10 = __clz(__rbit64(~v16)) + (v9 << 6);
      }

      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v19 + 48) + 8 * v10) = v18;
      *(*(v19 + 56) + 8 * v10) = v11;
      ++*(v19 + 16);
      v3 = sub_1DF6F6CBC();
    }

    while (v3);
  }

  return v0;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6B7C68()
{
  result = qword_1ECE4D450;
  if (!qword_1ECE4D450)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D450);
  }

  return result;
}

void sub_1DF6B7CC0()
{
  if (!qword_1EDC03540)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF69FA98(&qword_1EDC03EB0, &qword_1EDC03EB8, 0x1E696C3D0);
    v0 = sub_1DF6F6D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03540);
    }
  }
}

uint64_t sub_1DF6B7D64(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = a4;
  v7 = (a3 + 56);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    v17 = *(v7 - 3);
    v18 = v9;
    v19 = v10;

    a1(&v15, &v17);
    if (v4)
    {
      break;
    }

    if ((v16 & 1) == 0)
    {
      v11 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = v20(0, *(v8 + 16) + 1, 1, v8);
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v8 = v20(v12 > 1, v13 + 1, 1, v8);
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11;
    }

    v7 += 4;
    if (!--v5)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1DF6B7EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a3 = 0xD00000000000003ALL;
  a3[1] = 0x80000001DF6FCE20;
  a3[2] = 0xD000000000000028;
  a3[3] = 0x80000001DF6FCDF0;
  return result;
}

uint64_t sub_1DF6B7F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a3 = 0xD00000000000002CLL;
  a3[1] = 0x80000001DF6FCDC0;
  a3[2] = 0xD00000000000002ELL;
  a3[3] = 0x80000001DF6FCD90;
  return result;
}

uint64_t sub_1DF6B8014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a3 = 0xD00000000000002DLL;
  a3[1] = 0x80000001DF6FCD60;
  a3[2] = 0xD00000000000002FLL;
  a3[3] = 0x80000001DF6FCD30;
  return result;
}

void sub_1DF6B80BC()
{
  v1 = v0;
  sub_1DF6B8FA0(0, &qword_1ECE4D860, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DF6F9960;
  sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
  v3 = [swift_getObjCClassFromMetadata() stateOfMindType];
  v4 = [v3 identifier];

  v5 = sub_1DF6F63EC();
  v7 = v6;

  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  [v1 valence];
  *(v2 + 48) = sub_1DF6F66FC();
  *(v2 + 56) = v8;
  [v1 reflectiveInterval];
  v9 = NSStringFromHKStateOfMindReflectiveInterval();
  v10 = sub_1DF6F63EC();
  v12 = v11;

  *(v2 + 64) = v10;
  *(v2 + 72) = v12;
  v63 = v1;
  v13 = sub_1DF6F683C();
  v14 = *(v13 + 16);
  v62 = v2;
  if (v14)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1DF6C38E8(0, v14, 0);
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      v16 = *(v13 + 8 * v15 + 32);
      v17 = NSStringFromHKStateOfMindLabel();
      v18 = sub_1DF6F63EC();
      v20 = v19;

      v22 = *(v64 + 16);
      v21 = *(v64 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DF6C38E8((v21 > 1), v22 + 1, 1);
      }

      ++v15;
      *(v64 + 16) = v22 + 1;
      v23 = v64 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      if (v14 == v15)
      {

        v2 = v62;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_9:
  sub_1DF6B8FA0(0, &qword_1ECE4D910, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DF6B8EA0();
  v24 = sub_1DF6F632C();
  v26 = v25;

  *(v2 + 80) = v24;
  *(v2 + 88) = v26;
  v27 = sub_1DF6F684C();
  v28 = *(v27 + 16);
  if (v28)
  {
    v65 = MEMORY[0x1E69E7CC0];
    sub_1DF6C38E8(0, v28, 0);
    v29 = 0;
    while (v29 < *(v27 + 16))
    {
      v30 = *(v27 + 8 * v29 + 32);
      v31 = NSStringFromHKStateOfMindDomain();
      v32 = sub_1DF6F63EC();
      v34 = v33;

      v36 = *(v65 + 16);
      v35 = *(v65 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1DF6C38E8((v35 > 1), v36 + 1, 1);
      }

      ++v29;
      *(v65 + 16) = v36 + 1;
      v37 = v65 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      if (v28 == v29)
      {

        v2 = v62;
        goto LABEL_17;
      }
    }

LABEL_27:
    __break(1u);
    return;
  }

LABEL_17:
  v38 = sub_1DF6F632C();
  v40 = v39;

  *(v2 + 96) = v38;
  *(v2 + 104) = v40;
  v41 = [v63 context];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1DF6F63EC();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xE000000000000000;
  }

  *(v2 + 112) = v43;
  *(v2 + 120) = v45;
  *(v2 + 128) = sub_1DF6D62E0();
  *(v2 + 136) = v46;
  v47 = [v63 metadata];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1DF6F62AC();
  }

  else
  {
    v49 = 0;
  }

  v50 = sub_1DF6E5B5C(v49);
  if (v61)
  {

    v52 = *(v2 + 136);

    v53 = *(v2 + 120);

    v54 = *(v2 + 104);

    v55 = *(v2 + 88);

    v56 = *(v2 + 72);

    v57 = *(v2 + 56);

    v58 = *(v2 + 40);

    *(v2 + 16) = 0;
  }

  else
  {
    v59 = v50;
    v60 = v51;

    *(v2 + 144) = v59;
    *(v2 + 152) = v60;
    sub_1DF6F632C();
  }
}

uint64_t sub_1DF6B85E4()
{
  v2 = sub_1DF6F5A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  sub_1DF6D14DC();
  if (v1)
  {
    return v0;
  }

  sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
  v10 = [swift_getObjCClassFromMetadata() stateOfMindType];
  v11 = [v10 identifier];

  v12 = sub_1DF6F63EC();
  v14 = v13;

  sub_1DF6D1664(v12, v14);

  sub_1DF6D1834();
  sub_1DF6B8A00();
  sub_1DF6B8B1C(3, sub_1DF6B9134, sub_1DF6B5400);
  v26 = sub_1DF6B8B1C(4, sub_1DF6B9098, sub_1DF6B5420);
  sub_1DF6F5BAC();
  if (v30)
  {
    v15 = swift_dynamicCast();
    if (v15)
    {
      v16 = v27;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v28;
    }

    else
    {
      v17 = 0;
    }

    v24 = v16;
    v25 = v17;
  }

  else
  {
    sub_1DF6B8F1C(v29);
    v24 = 0;
    v25 = 0;
  }

  sub_1DF6D19B0(6, v9);
  sub_1DF6F5BAC();
  if (v30)
  {
    if (swift_dynamicCast())
    {
      v18 = v27;
      v19 = v28;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1DF6B8F1C(v29);
  }

  v18 = 0;
  v19 = 0xE000000000000000;
LABEL_16:
  v20 = sub_1DF6E56B0(v18, v19);
  v23 = 0;
  v22 = v20;

  (*(v3 + 16))(v7, v9, v2);
  if (!v22)
  {
    sub_1DF6C4044(MEMORY[0x1E69E7CC0]);
  }

  sub_1DF69EF80(0, &qword_1ECE4D920, 0x1E696C4B8);
  v0 = sub_1DF6F682C();
  (*(v3 + 8))(v9, v2);
  return v0;
}

id sub_1DF6B8A00()
{
  sub_1DF6F5BAC();
  if (!v8)
  {
    sub_1DF6B8F1C(v7);
LABEL_6:
    v2 = sub_1DF6DA9E8(2);
    v4 = v3;
    sub_1DF6B90E0();
    swift_allocError();
    sub_1DF6B7EC0(v2, v4, v5);

    swift_willThrow();
    return v2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v0 = sub_1DF6F63BC();

  v1 = HKStateOfMindReflectiveIntervalFromNSString();

  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = [v1 integerValue];

  return v2;
}

uint64_t sub_1DF6B8B1C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  sub_1DF6F5BAC();
  if (v16[3])
  {
    if (swift_dynamicCast())
    {
      v6 = v14;
      v7 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF6B8F1C(v16);
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_6:
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v16[0] = v6;
    v16[1] = v7;
    v14 = 31868;
    v15 = 0xE200000000000000;
    sub_1DF6B8FF0();
    sub_1DF6B9044();
    v9 = sub_1DF6F631C();

    MEMORY[0x1EEE9AC00](v10);
    v13[2] = v3;
    v11 = sub_1DF6B7D64(a2, v13, v9, a3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

void sub_1DF6B8C88(void *a1@<X0>, uint64_t (*a2)(void *)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  MEMORY[0x1E12DB850](*a1, a1[1], a1[2], a1[3]);
  v9 = sub_1DF6F63BC();

  v10 = a2(v9);

  if (v10)
  {
    v11 = [v10 integerValue];

    *a5 = v11;
    *(a5 + 8) = 0;
  }

  else
  {
    v12 = sub_1DF6DA9E8(a3);
    v14 = v13;
    sub_1DF6B90E0();
    swift_allocError();
    a4(v12, v14);

    swift_willThrow();
  }
}

unint64_t sub_1DF6B8E48()
{
  result = qword_1ECE4D908;
  if (!qword_1ECE4D908)
  {
    type metadata accessor for Association(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D908);
  }

  return result;
}

unint64_t sub_1DF6B8EA0()
{
  result = qword_1ECE4D918;
  if (!qword_1ECE4D918)
  {
    sub_1DF6B8FA0(255, &qword_1ECE4D910, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D918);
  }

  return result;
}

uint64_t sub_1DF6B8F1C(uint64_t a1)
{
  sub_1DF6B8FA0(0, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DF6B8FA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DF6B8FF0()
{
  result = qword_1ECE4D928;
  if (!qword_1ECE4D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D928);
  }

  return result;
}

unint64_t sub_1DF6B9044()
{
  result = qword_1ECE4D930;
  if (!qword_1ECE4D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D930);
  }

  return result;
}

unint64_t sub_1DF6B90E0()
{
  result = qword_1ECE4D938;
  if (!qword_1ECE4D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D938);
  }

  return result;
}

void sub_1DF6B9190()
{
  if (!qword_1ECE4D940)
  {
    sub_1DF6F590C();
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D940);
    }
  }
}

uint64_t type metadata accessor for StateOfMindDecoder()
{
  result = qword_1ECE4D948;
  if (!qword_1ECE4D948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DF6B9248()
{
  sub_1DF6F5B9C();
  if (v0 <= 0x3F)
  {
    sub_1DF6F5B5C();
    if (v1 <= 0x3F)
    {
      sub_1DF6B9190();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DF6B9350()
{
  result = qword_1ECE4D958;
  if (!qword_1ECE4D958)
  {
    sub_1DF6B93A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D958);
  }

  return result;
}

unint64_t sub_1DF6B93A8()
{
  result = qword_1EDC03810;
  if (!qword_1EDC03810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03810);
  }

  return result;
}

uint64_t sub_1DF6B9438(uint64_t result, void *a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      v17 = *v2;

      sub_1DF6B59B0(v3, 1);
      v5 = a2[2];
      v6 = a2[3];
      v7 = a2[4];
      type metadata accessor for StreamConduitBase();
      swift_getWitnessTable();
      sub_1DF6F678C();
      v8 = v2;
      sub_1DF6F675C();

      v9 = *v2;
      *v8 = v17;
      v10 = *(v8 + 8);
      *(v8 + 8) = 1;

      sub_1DF6B5A20(v9, v10);
    }

    else
    {
      *v2 = result;
      *(v2 + 8) = 0;
    }
  }

  else if (v3 != result)
  {
    v12 = a2[2];
    v11 = a2[3];
    v13 = a2[4];
    v14 = result;
    type metadata accessor for StreamConduitBase();
    sub_1DF6B9BF4();
    swift_allocObject();
    v15 = sub_1DF6F65BC();
    *v16 = v3;
    v16[1] = v14;
    sub_1DF6ABB04(v15);
    sub_1DF6F663C();

    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_1DF6F679C();
    *v2 = result;
    *(v2 + 8) = 1;
  }

  return result;
}

uint64_t (*sub_1DF6B962C(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3, char a4))(uint64_t)
{
  if (!a4)
  {
    return result(a3);
  }

  if (a4 == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for StreamConduitBase();
    swift_getWitnessTable();
    sub_1DF6F678C();
    swift_getWitnessTable();
    return sub_1DF6F655C();
  }

  return result;
}

uint64_t sub_1DF6B9750()
{
  result = sub_1DF6B5A20(*v0, *(v0 + 8));
  *v0 = 0;
  *(v0 + 8) = 2;
  return result;
}

uint64_t sub_1DF6B977C(uint64_t result, void *a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      v4 = v2;
      v11 = *v2;
      v10 = result;
      v6 = a2[2];
      v5 = a2[3];
      v7 = a2[4];
      type metadata accessor for StreamConduitBase();

      swift_getWitnessTable();
      sub_1DF6F678C();
      sub_1DF6F676C();

      v8 = sub_1DF6F674C();
      if (v8 == 1)
      {
        swift_getWitnessTable();
        result = sub_1DF6F67EC();
        if (v10)
        {
          sub_1DF6B5A20(v3, 1);

          *v2 = v10;
          *(v2 + 8) = 0;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v9 = v8;
        result = sub_1DF6B5A20(v3, 1);
        if (v9)
        {
          *v4 = v11;
          *(v4 + 8) = 1;
        }

        else
        {

          *v4 = 0;
          *(v4 + 8) = 2;
        }
      }
    }
  }

  else if (v3 == result)
  {
    result = sub_1DF6B5A20(*v2, 0);
    *v2 = 0;
    *(v2 + 8) = 2;
  }

  return result;
}

uint64_t sub_1DF6B9954()
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v0);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6B99D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18HealthKitAdditions17StreamConduitListOyxq_G(uint64_t a1)
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

uint64_t sub_1DF6B9ACC()
{
  sub_1DF6F6F0C();
  v1 = *v0;
  sub_1DF6B9928();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6B9BC8(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

void sub_1DF6B9BF4()
{
  if (!qword_1EDC034B8)
  {
    v0 = sub_1DF6F6DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC034B8);
    }
  }
}

unint64_t DarwinNotificationPublisher.DarwinNotificationName.rawValue.getter()
{
  v1 = 0xD000000000000031;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000044;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000024;
  }

  *v0;
  return result;
}

HealthKitAdditions::DarwinNotificationPublisher::DarwinNotificationName_optional __swiftcall DarwinNotificationPublisher.DarwinNotificationName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF6F6D6C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF6B9D98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = ".keybagd.lock_status";
  v4 = 0xD000000000000031;
  if (v2 == 1)
  {
    v5 = 0xD000000000000031;
  }

  else
  {
    v5 = 0xD000000000000044;
  }

  if (v2 == 1)
  {
    v6 = ".keybagd.lock_status";
  }

  else
  {
    v6 = "istics.did-change";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000024;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "periodPrediction";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000044;
    v3 = "istics.did-change";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000024;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "periodPrediction";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF6F6E2C();
  }

  return v11 & 1;
}

uint64_t sub_1DF6B9E70()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6B9F0C()
{
  *v0;
  *v0;
  sub_1DF6F645C();
}

uint64_t sub_1DF6B9F94()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

void sub_1DF6BA038(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000024;
  v3 = ".keybagd.lock_status";
  v4 = 0xD000000000000031;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000044;
    v3 = "istics.did-change";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "periodPrediction";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t DarwinNotificationPublisher.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *DarwinNotificationPublisher.__allocating_init(name:queue:)(_BYTE *a1, uint64_t a2)
{
  v4 = 0xD000000000000024;
  v5 = sub_1DF6F697C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF6F696C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1DF6F609C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = ".keybagd.lock_status";
  v15 = 0xD000000000000031;
  if (*a1 != 1)
  {
    v15 = 0xD000000000000044;
    v14 = "istics.did-change";
  }

  if (*a1)
  {
    v4 = v15;
    v16 = v14;
  }

  else
  {
    v16 = "periodPrediction";
  }

  v17 = v16 | 0x8000000000000000;
  result = swift_allocObject();
  result[2] = v4;
  result[3] = v17;
  if (!a2)
  {
    v20 = result;
    v19 = sub_1DF6BA8B8();
    v21 = 0x656873696C627570;
    v22 = 0xEA00000000002E72;

    MEMORY[0x1E12DB8A0](v4, v17);

    sub_1DF6F608C();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1DF6BA904();
    sub_1DF6BBB98(0, &qword_1EDC03F28, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1DF6BA95C();
    sub_1DF6F6A4C();
    (*(v6 + 104))(v9, *MEMORY[0x1E69E8090], v5);
    a2 = sub_1DF6F698C();
    result = v20;
  }

  result[4] = a2;
  return result;
}

void *DarwinNotificationPublisher.__allocating_init(name:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6F697C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF6F696C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1DF6F609C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  if (!a3)
  {
    v17 = result;
    v16 = sub_1DF6BA8B8();
    v18 = 0x656873696C627570;
    v19 = 0xEA00000000002E72;

    MEMORY[0x1E12DB8A0](a1, a2);

    sub_1DF6F608C();
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DF6BA904();
    sub_1DF6BBB98(0, &qword_1EDC03F28, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1DF6BA95C();
    sub_1DF6F6A4C();
    (*(v7 + 104))(v10, *MEMORY[0x1E69E8090], v6);
    a3 = sub_1DF6F698C();
    result = v17;
  }

  result[4] = a3;
  return result;
}

void *DarwinNotificationPublisher.init(name:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DF6F697C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DF6F696C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1DF6F609C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v4[2] = a1;
  v4[3] = a2;
  if (!a3)
  {
    v18[1] = sub_1DF6BA8B8();
    v19 = 0x656873696C627570;
    v20 = 0xEA00000000002E72;

    MEMORY[0x1E12DB8A0](a1, a2);

    v18[0] = v19;
    sub_1DF6F608C();
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DF6BA904();
    sub_1DF6BBB98(0, &qword_1EDC03F28, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1DF6BA95C();
    sub_1DF6F6A4C();
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8090], v8);
    a3 = sub_1DF6F698C();
  }

  v4[4] = a3;
  return v4;
}

unint64_t sub_1DF6BA8B8()
{
  result = qword_1EDC03640;
  if (!qword_1EDC03640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03640);
  }

  return result;
}

unint64_t sub_1DF6BA904()
{
  result = qword_1EDC03648;
  if (!qword_1EDC03648)
  {
    sub_1DF6F696C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03648);
  }

  return result;
}

unint64_t sub_1DF6BA95C()
{
  result = qword_1EDC03F20;
  if (!qword_1EDC03F20)
  {
    sub_1DF6BBB98(255, &qword_1EDC03F28, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03F20);
  }

  return result;
}

uint64_t DarwinNotificationPublisher.receive<A>(subscriber:)(uint64_t a1)
{
  v3 = type metadata accessor for DarwinNotificationPublisher.Inner();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();

  v9 = sub_1DF6BB6A8(a1, v4, v5, v6);
  v11[3] = v3;
  v11[4] = swift_getWitnessTable();
  v11[0] = v9;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void sub_1DF6BAAD0(void *a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 112));
  sub_1DF6BBB98(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  a1[3] = v4;
  a1[4] = &protocol witness table for <A> UnsafeMutablePointer<A>;
  *a1 = v3;
}

char *sub_1DF6BAB50()
{
  v1 = *v0;
  MEMORY[0x1E12DCBA0](*&v0[*(*v0 + 112)], -1, -1);
  v2 = *(v0 + 3);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = type metadata accessor for DownstreamHandlerSubscriptionState();
  (*(*(v6 - 8) + 8))(&v0[v3], v6);

  v7 = *&v0[*(*v0 + 128)];

  return v0;
}

uint64_t sub_1DF6BAC54()
{
  sub_1DF6BAB50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6BACAC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 112));
  sub_1DF6BBB98(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  v5 = v4;
  v25 = v4;
  v26 = &protocol witness table for <A> UnsafeMutablePointer<A>;
  v24[0] = v3;
  __swift_project_boxed_opaque_existential_0(v24, v4);
  v6 = off_1F5AAAF98[0];
  off_1F5AAAF98[0]();
  __swift_destroy_boxed_opaque_existential_1(v24);
  v7 = *(*v1 + 128);
  v8 = *(v1 + *(*v1 + 112));
  if (*(v1 + v7))
  {
    v25 = v5;
    v26 = &protocol witness table for <A> UnsafeMutablePointer<A>;
    v24[0] = v8;
    __swift_project_boxed_opaque_existential_0(v24, v5);
    off_1F5AAAFA0();
  }

  else
  {
    v25 = v5;
    v26 = &protocol witness table for <A> UnsafeMutablePointer<A>;
    v24[0] = v8;
    __swift_project_boxed_opaque_existential_0(v24, v5);
    v23 = off_1F5AAAFA0;
    off_1F5AAAFA0();
    __swift_destroy_boxed_opaque_existential_1(v24);
    v9 = v1[2];
    v10 = v1[3];
    v11 = *(v1 + *(*v1 + 120));
    v22 = v6;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = *(v2 + 80);
    v13[3] = *(v2 + 88);
    v13[4] = v12;
    v14 = sub_1DF6F642C() + 32;
    type metadata accessor for DarwinNotificationObserverToken();
    v15 = swift_allocObject();
    sub_1DF6BBC08();
    v16 = swift_allocObject();
    *(v16 + 16) = 0xFFFFFFFFLL;
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v11;
    v17 = v11;

    DarwinNotificationObserverToken.beginObservation(handler:)(sub_1DF6BBBFC, v13);

    v18 = *(v1 + *(*v1 + 112));
    v25 = v5;
    v26 = &protocol witness table for <A> UnsafeMutablePointer<A>;
    v24[0] = v18;
    __swift_project_boxed_opaque_existential_0(v24, v5);
    v22();
    __swift_destroy_boxed_opaque_existential_1(v24);
    v19 = *(v1 + v7);
    *(v1 + v7) = v15;

    v20 = *(v1 + *(*v1 + 112));
    v25 = v5;
    v26 = &protocol witness table for <A> UnsafeMutablePointer<A>;
    v24[0] = v20;
    __swift_project_boxed_opaque_existential_0(v24, v5);
    (v23)(v5, &protocol witness table for <A> UnsafeMutablePointer<A>);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DF6BB05C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DF6BB0B4();
  }

  return result;
}

uint64_t sub_1DF6BB0B4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for DownstreamHandlerSendFailureReason();
  swift_getWitnessTable();
  v4 = sub_1DF6F6F6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  WitnessTable = swift_getWitnessTable();
  DownstreamHandlerSubscription.sendValueToDownstreamIfNeeded(_:)(WitnessTable, v1, WitnessTable, v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DF6BB22C()
{
  v1 = v0;
  v2 = *(v0 + *(*v0 + 112));
  sub_1DF6BBB98(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  v4 = v3;
  v15 = v3;
  v16 = &protocol witness table for <A> UnsafeMutablePointer<A>;
  v14[0] = v2;
  __swift_project_boxed_opaque_existential_0(v14, v3);
  off_1F5AAAF98[0]();
  __swift_destroy_boxed_opaque_existential_1(v14);
  v5 = *v1;
  v6 = *(*v1 + 128);
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = *(v7 + 24);
    v9 = *(v1 + v6);

    os_unfair_lock_lock(v8 + 5);
    os_unfair_lock_opaque = v8[4]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque != -1)
    {
      notify_cancel(os_unfair_lock_opaque);
      v8[4]._os_unfair_lock_opaque = -1;
    }

    os_unfair_lock_unlock(v8 + 5);

    v11 = *(v1 + v6);
    *(v1 + v6) = 0;

    v5 = *v1;
  }

  v12 = *(v1 + *(v5 + 112));
  v15 = v4;
  v16 = &protocol witness table for <A> UnsafeMutablePointer<A>;
  v14[0] = v12;
  __swift_project_boxed_opaque_existential_0(v14, v4);
  off_1F5AAAFA0();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DF6BB3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 104);
  swift_beginAccess();
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = type metadata accessor for DownstreamHandlerSubscriptionState();
  return (*(*(v8 - 8) + 16))(a2, v2 + v5, v8);
}

uint64_t sub_1DF6BB45C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 104);
  swift_beginAccess();
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = type metadata accessor for DownstreamHandlerSubscriptionState();
  (*(*(v8 - 8) + 40))(v2 + v5, a1, v8);
  return swift_endAccess();
}

uint64_t (*sub_1DF6BB500())()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DF6BB578(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return DownstreamHandlerSubscription.request(_:)(a1, a2, WitnessTable);
}

void sub_1DF6BB5D0()
{
  v1 = *v0;
  swift_getWitnessTable();
  DownstreamHandlerSubscription.cancel()();
}

uint64_t DarwinNotificationPublisher.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DarwinNotificationPublisher.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

char *sub_1DF6BB6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 88);
  v11 = type metadata accessor for DownstreamHandlerSubscriptionState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = *(v8 + 112);
  v17 = swift_slowAlloc();
  *&v4[v16] = v17;
  *v17 = 0;
  *&v4[*(*v4 + 128)] = 0;
  static DownstreamHandlerSubscriptionState.ready(_:)(a1, v9, v15);
  (*(v12 + 32))(&v4[*(*v4 + 104)], v15, v11);
  *(v4 + 2) = a2;
  *(v4 + 3) = a3;
  *&v4[*(*v4 + 120)] = v20;
  return v4;
}

unint64_t sub_1DF6BB850()
{
  result = qword_1ECE4D960;
  if (!qword_1ECE4D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D960);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DarwinNotificationPublisher.DarwinNotificationName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DarwinNotificationPublisher.DarwinNotificationName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DF6BBA58(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for DownstreamHandlerSubscriptionState();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6BBB24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DF6BBB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DF6BBBFC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DF6BB05C();
}

void sub_1DF6BBC08()
{
  if (!qword_1EDC04678)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1DF6F6BCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04678);
    }
  }
}

uint64_t HKProfileStore.createFetchDisplayNamePublisher()()
{
  *(swift_allocObject() + 16) = v0;
  sub_1DF6BBDFC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  return sub_1DF6F5FBC();
}

void sub_1DF6BBCE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DF6BBF24;
  *(v7 + 24) = v6;
  v9[4] = sub_1DF6BC008;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DF6BC010;
  v9[3] = &block_descriptor_5;
  v8 = _Block_copy(v9);

  [a3 fetchDisplayName_];
  _Block_release(v8);
}

void sub_1DF6BBDFC()
{
  if (!qword_1ECE4D968)
  {
    sub_1DF6BBE6C();
    sub_1DF69F1E4();
    v0 = sub_1DF6F5FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D968);
    }
  }
}

void sub_1DF6BBE6C()
{
  if (!qword_1ECE4D970)
  {
    sub_1DF6BBED4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4D970);
    }
  }
}

void sub_1DF6BBED4()
{
  if (!qword_1EDC04798)
  {
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04798);
    }
  }
}

uint64_t sub_1DF6BBF24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return v2(v6);
}

void sub_1DF6BBF68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void (*a6)(id *))
{
  if (a5)
  {
    v9 = a5;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v8 = a5;
    a6(&v9);
  }

  else
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
    v12 = a4;
    v13 = 0;
    a6(&v9);
  }
}

uint64_t sub_1DF6BC010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_1DF6F63EC();
    v10 = v9;
    if (v5)
    {
LABEL_3:
      v11 = sub_1DF6F63EC();
      v5 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:

  v13 = a4;
  v7(v8, v10, v11, v5, a4);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HKAllowedCountries.Category.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 3 || (MEMORY[0x1E12DC330](1), !v1))
  {
    v2 = 0;
    return MEMORY[0x1E12DC330](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1E12DC330](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x1E12DC330](v2);
  }

  MEMORY[0x1E12DC330](3);
  return sub_1DF6F69EC();
}

uint64_t HKAllowedCountries.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1 == 3 || (MEMORY[0x1E12DC330](1), !v1))
  {
    v2 = 0;
  }

  else if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 2)
    {
      MEMORY[0x1E12DC330](3);
      sub_1DF6F69EC();
      return sub_1DF6F6F2C();
    }

    v2 = 2;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BC218()
{
  v1 = *v0;
  if (*v0 == 3 || (MEMORY[0x1E12DC330](1), !v1))
  {
    v2 = 0;
    return MEMORY[0x1E12DC330](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1E12DC330](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x1E12DC330](v2);
  }

  MEMORY[0x1E12DC330](3);
  return sub_1DF6F69EC();
}

uint64_t sub_1DF6BC294()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1 == 3 || (MEMORY[0x1E12DC330](1), !v1))
  {
    v2 = 0;
  }

  else if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 2)
    {
      MEMORY[0x1E12DC330](3);
      sub_1DF6F69EC();
      return sub_1DF6F6F2C();
    }

    v2 = 2;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t HKAllowedCountries.RemoteState.hash(into:)()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    return MEMORY[0x1E12DC330](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1E12DC330](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x1E12DC330](v2);
  }

  MEMORY[0x1E12DC330](3);
  return sub_1DF6F69EC();
}

uint64_t HKAllowedCountries.RemoteState.hashValue.getter()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1E12DC330](3);
        sub_1DF6F69EC();
        return sub_1DF6F6F2C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BC430()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1E12DC330](3);
        sub_1DF6F69EC();
        return sub_1DF6F6F2C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BC4B4()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    return MEMORY[0x1E12DC330](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1E12DC330](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x1E12DC330](v2);
  }

  MEMORY[0x1E12DC330](3);
  return sub_1DF6F69EC();
}

uint64_t sub_1DF6BC52C()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1E12DC330](3);
        sub_1DF6F69EC();
        return sub_1DF6F6F2C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

void HKAllowedCountries.category.getter(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 category];
  if (v3 == 1)
  {
    goto LABEL_14;
  }

  if (v3 != 2)
  {
    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v18, qword_1EDC07CE0);
    v19 = v1;
    v7 = sub_1DF6F5DBC();
    v8 = sub_1DF6F687C();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    v20 = sub_1DF6F6FBC();
    v22 = sub_1DF6A9D50(v20, v21, &v26);

    *(v9 + 4) = v22;
    *(v9 + 12) = 2080;
    [v19 category];
    type metadata accessor for HKAllowedCountriesCategory(0);
    v23 = sub_1DF6F63FC();
    v25 = sub_1DF6A9D50(v23, v24, &v26);

    *(v9 + 14) = v25;
    v17 = "[%{public}s] Unrecognized category value: %s";
    goto LABEL_12;
  }

  sub_1DF6BC8E8(&v26);
  v4 = v26;
  if (v26 == 3)
  {
    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v5, qword_1EDC07CE0);
    v6 = v1;
    v7 = sub_1DF6F5DBC();
    v8 = sub_1DF6F687C();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    v11 = sub_1DF6F6FBC();
    v13 = sub_1DF6A9D50(v11, v12, &v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    [v6 remoteState];
    type metadata accessor for HKRemoteAllowedCountriesState(0);
    v14 = sub_1DF6F63FC();
    v16 = sub_1DF6A9D50(v14, v15, &v26);

    *(v9 + 14) = v16;
    v17 = "[%{public}s] Unrecognized remote state: %s";
LABEL_12:
    _os_log_impl(&dword_1DF69D000, v7, v8, v17, v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12DCBA0](v10, -1, -1);
    MEMORY[0x1E12DCBA0](v9, -1, -1);
LABEL_13:

LABEL_14:
    v4 = 3;
  }

  *a1 = v4;
}

uint64_t sub_1DF6BC8E8@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 category];
  if (result == 2)
  {
    result = [v1 remoteState];
    v4 = 3;
    if (result > 3)
    {
      if (result == 4)
      {
        v4 = 2;
      }

      else if (result == 5)
      {
        result = [v1 remoteCountrySet];
        v4 = 3;
        if (result)
        {
          v4 = result;
        }
      }
    }

    else
    {
      if (result == 3)
      {
        v4 = 1;
      }

      if (result == 2)
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 3;
  }

  *a1 = v4;
  return result;
}

uint64_t _sSo18HKAllowedCountriesC18HealthKitAdditionsE11RemoteStateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v2 = 1;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      sub_1DF6BCFB8();
      sub_1DF6BCF98(v3);
      sub_1DF6BCF98(v2);
      v4 = sub_1DF6F69DC();
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
LABEL_11:
    sub_1DF6BCF98(*a2);
    sub_1DF6BCF98(v2);
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 1;
  v2 = 2;
LABEL_12:
  sub_1DF6BCFA8(v2);
  sub_1DF6BCFA8(v3);
  return v4 & 1;
}

BOOL _sSo18HKAllowedCountriesC18HealthKitAdditionsE8CategoryO2eeoiySbAE_AEtFZ_0(void **a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != 3)
  {
    if (v3 != 3)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          if (v3 == 1)
          {
            v5 = 1;
            sub_1DF6BD004(1);
            sub_1DF6BCF98(1);
            sub_1DF6BCFA8(1);
            sub_1DF6BCFA8(1);
            sub_1DF6BD014(1);
            sub_1DF6BD014(1);
            sub_1DF6BD014(1);
            sub_1DF6BD014(1);
            return v5;
          }
        }

        else if (v2 == 2)
        {
          if (v3 == 2)
          {
            sub_1DF6BD004(2);
            sub_1DF6BCF98(2);
            sub_1DF6BCFA8(2);
            sub_1DF6BCFA8(2);
            sub_1DF6BD014(2);
            sub_1DF6BD014(2);
            sub_1DF6BD014(2);
            v4 = 2;
            goto LABEL_4;
          }
        }

        else if (v3 >= 3)
        {
          sub_1DF6BCFB8();
          sub_1DF6BD004(v3);
          sub_1DF6BD004(v2);
          sub_1DF6BD004(v3);
          sub_1DF6BD004(v2);
          sub_1DF6BD004(v3);
          sub_1DF6BD004(v2);
          v8 = sub_1DF6F69DC();
          sub_1DF6BCFA8(v2);
          sub_1DF6BCFA8(v3);
          sub_1DF6BD014(v2);
          sub_1DF6BD014(v3);
          sub_1DF6BD014(v3);
          sub_1DF6BD014(v2);
          return (v8 & 1) != 0;
        }
      }

      else if (!v3)
      {
        sub_1DF6BD004(0);
        sub_1DF6BCF98(0);
        sub_1DF6BCFA8(0);
        sub_1DF6BCFA8(0);
        sub_1DF6BD014(0);
        sub_1DF6BD014(0);
        sub_1DF6BD014(0);
        v4 = 0;
        goto LABEL_4;
      }

      sub_1DF6BD004(*a2);
      sub_1DF6BD004(v2);
      sub_1DF6BD004(v3);
      sub_1DF6BD004(v2);
      sub_1DF6BD004(v3);
      sub_1DF6BD004(v2);
      sub_1DF6BCFA8(v2);
      sub_1DF6BCFA8(v3);
      sub_1DF6BD014(v2);
      sub_1DF6BD014(v3);
      sub_1DF6BD014(v3);
      v6 = v2;
LABEL_18:
      sub_1DF6BD014(v6);
      return 0;
    }

LABEL_6:
    sub_1DF6BD004(*a2);
    sub_1DF6BD004(v2);
    sub_1DF6BD014(v2);
    v6 = v3;
    goto LABEL_18;
  }

  if (v3 != 3)
  {
    goto LABEL_6;
  }

  sub_1DF6BD014(3);
  v4 = 3;
LABEL_4:
  sub_1DF6BD014(v4);
  return 1;
}

unint64_t sub_1DF6BCCD8()
{
  result = qword_1ECE4D978;
  if (!qword_1ECE4D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D978);
  }

  return result;
}

unint64_t sub_1DF6BCD30()
{
  result = qword_1ECE4D980;
  if (!qword_1ECE4D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D980);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So18HKAllowedCountriesC18HealthKitAdditionsE11RemoteStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_So18HKAllowedCountriesC18HealthKitAdditionsE8CategoryO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF6BCDCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6BCE28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1DF6BCE84(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFC)
  {
    v2 = -2147483645;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_1DF6BCEBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6BCF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1DF6BCF68(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_1DF6BCF98(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1DF6BCFA8(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_1DF6BCFB8()
{
  result = qword_1EDC03558;
  if (!qword_1EDC03558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03558);
  }

  return result;
}

id sub_1DF6BD004(id result)
{
  if (result != 3)
  {
    return sub_1DF6BCF98(result);
  }

  return result;
}

void sub_1DF6BD014(id a1)
{
  if (a1 != 3)
  {
    sub_1DF6BCFA8(a1);
  }
}

uint64_t FeatureStatus.PerContextEvaluation.requirementsEvaluationByContext.getter()
{
  sub_1DF6BD050();

  return sub_1DF6F61BC();
}

void sub_1DF6BD050()
{
  if (!qword_1EDC04FB8)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1DF69EF80(255, &qword_1EDC04F70, 0x1E696C158);
    sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
    sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
    sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
    v0 = sub_1DF6F61EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04FB8);
    }
  }
}

uint64_t FeatureStatus.PerContextEvaluation.requirementsEvaluationByContext.setter()
{
  sub_1DF6BD050();

  return sub_1DF6F61CC();
}

uint64_t (*FeatureStatus.PerContextEvaluation.requirementsEvaluationByContext.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1DF6BD050();
  *(v3 + 32) = sub_1DF6F61AC();
  return sub_1DF6C5FD0;
}

uint64_t FeatureStatus.PerContextEvaluation.init(requirementsEvaluationByContext:)()
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);

  return sub_1DF6F61FC();
}

void FeatureStatus.PerContextEvaluation.init(requirementSatisfactionByContext:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  sub_1DF6BD050();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6BDCD8();
  v6 = sub_1DF6F6D1C();
  v7 = 0;
  v84 = v6;
  v85 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v83 = v6 + 64;
  v81 = v9;
  v82 = v14;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v16 = (v13 - 1) & v13;
LABEL_11:
      v19 = v15 | (v7 << 6);
      v86 = v16;
      v87 = v7;
      v20 = *(v85 + 56);
      v21 = *(*(v85 + 48) + 8 * v19);
      v88 = v21;
      v89 = v19;
      v22 = *(v20 + 8 * v19);
      v23 = *(v22 + 16);
      if (v23)
      {
        break;
      }

      v45 = v21;

LABEL_30:
      v46 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
      v47 = sub_1DF6F659C();

      v92 = [v46 initWithArray_];

      sub_1DF6C3E20();
      v48 = sub_1DF6F6D1C();
      v49 = v48;
      v50 = 0;
      v51 = v22 + 64;
      v52 = 1 << *(v22 + 32);
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      else
      {
        v53 = -1;
      }

      v54 = v53 & *(v22 + 64);
      v55 = (v52 + 63) >> 6;
      for (i = v48 + 64; v54; v22 = v60)
      {
        v56 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
LABEL_40:
        v59 = v56 | (v50 << 6);
        v60 = v22;
        v61 = *(*(v22 + 56) + v59);
        v62 = *(*(v22 + 48) + 8 * v59);
        v63 = sub_1DF6F664C();
        *(i + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        *(v49[6] + 8 * v59) = v62;
        *(v49[7] + 8 * v59) = v63;
        v64 = v49[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_54;
        }

        v49[2] = v66;
      }

      v57 = v50;
      while (1)
      {
        v50 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v50 >= v55)
        {
          break;
        }

        v58 = *(v51 + 8 * v50);
        ++v57;
        if (v58)
        {
          v56 = __clz(__rbit64(v58));
          v54 = (v58 - 1) & v58;
          goto LABEL_40;
        }
      }

      v67 = objc_allocWithZone(MEMORY[0x1E696C158]);
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
      sub_1DF69FA50(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
      v68 = sub_1DF6F629C();

      v69 = v92;
      v70 = [v67 initWithRequirementIdentifiersOrderedByPriority:v92 satisfactionByRequirementIdentifier:v68];

      v71 = v89;
      v72 = v84;
      *(v83 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
      *(v72[6] + 8 * v71) = v88;
      *(v72[7] + 8 * v71) = v70;
      v73 = v72[2];
      v65 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v65)
      {
        goto LABEL_55;
      }

      v72[2] = v74;
      v13 = v86;
      v7 = v87;
      v14 = v82;
      if (!v86)
      {
        goto LABEL_6;
      }
    }

    v96 = MEMORY[0x1E69E7CC0];
    v24 = v21;

    sub_1DF6C3908(0, v23, 0);
    v25 = v96;
    v26 = (v22 + 64);
    v27 = -1 << *(v22 + 32);
    v28 = sub_1DF6F6A5C();
    v29 = 0;
    v90 = v22 + 72;
    v91 = v23;
    v92 = (v22 + 64);
    while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(v22 + 32))
    {
      v31 = v28 >> 6;
      if ((v26[v28 >> 6] & (1 << v28)) == 0)
      {
        goto LABEL_49;
      }

      i = *(v22 + 36);
      v32 = *(*(v22 + 48) + 8 * v28);
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v95 = v33;
      v96 = v25;
      *&v94 = v32;
      v34 = v22;
      v35 = *(v25 + 16);
      v36 = *(v25 + 24);
      v37 = v32;
      if (v35 >= v36 >> 1)
      {
        sub_1DF6C3908((v36 > 1), v35 + 1, 1);
        v25 = v96;
      }

      *(v25 + 16) = v35 + 1;
      sub_1DF6B1E38(&v94, (v25 + 32 * v35 + 32));
      v30 = 1 << *(v34 + 32);
      if (v28 >= v30)
      {
        goto LABEL_50;
      }

      v22 = v34;
      v26 = v92;
      v38 = *(v92 + v31);
      if ((v38 & (1 << v28)) == 0)
      {
        goto LABEL_51;
      }

      if (i != *(v22 + 36))
      {
        goto LABEL_52;
      }

      v39 = v38 & (-2 << (v28 & 0x3F));
      if (v39)
      {
        v30 = __clz(__rbit64(v39)) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v31 << 6;
        v41 = v31 + 1;
        v42 = (v90 + 8 * v31);
        while (v41 < (v30 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_1DF6C3EDC(v28, i, 0);
            v30 = __clz(__rbit64(v43)) + v40;
            goto LABEL_14;
          }
        }

        sub_1DF6C3EDC(v28, i, 0);
      }

LABEL_14:
      ++v29;
      v28 = v30;
      if (v29 == v91)
      {
        goto LABEL_30;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_6:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        type metadata accessor for HKFeatureAvailabilityContext(0);
        sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
        sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
        sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
        sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
        v75 = v77;
        sub_1DF6F61FC();
        (*(v78 + 32))(v80, v75, v79);
        return;
      }

      v18 = *(v81 + 8 * v7);
      ++v17;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v16 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t HKFeatureAvailabilityRequirementsEvaluation.init(satisfactionByRequirementIdentifier:)(uint64_t a1)
{
  swift_getKeyPath();

  sub_1DF6C4508(a1, sub_1DF6C3EE8);

  v2 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v3 = sub_1DF6F659C();

  v24 = [v2 initWithArray_];

  sub_1DF6C3E20();
  result = sub_1DF6F6D1C();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = result + 64;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = *(*(a1 + 56) + v15);
      v17 = *(*(a1 + 48) + 8 * v15);
      result = sub_1DF6F664C();
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v5[6] + 8 * v15) = v17;
      *(v5[7] + 8 * v15) = result;
      v18 = v5[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v5[2] = v20;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
        sub_1DF69FA50(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
        v22 = sub_1DF6F629C();

        v23 = [v21 initWithRequirementIdentifiersOrderedByPriority:v24 satisfactionByRequirementIdentifier:v22];

        return v23;
      }

      v14 = *(a1 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DF6BDCD8()
{
  if (!qword_1ECE4D988)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1DF69EF80(255, &qword_1EDC04F70, 0x1E696C158);
    sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
    v0 = sub_1DF6F6D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D988);
    }
  }
}

id FeatureStatus.PerContextEvaluation.evaluation(for:)(void *a1)
{
  sub_1DF6BD050();
  v2 = sub_1DF6F61BC();
  if (*(v2 + 16) && (v3 = sub_1DF6C35C8(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    return v5;
  }

  else
  {

    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v7, qword_1EDC07CE0);
    v8 = a1;
    v9 = sub_1DF6F5DBC();
    v10 = sub_1DF6F687C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1DF6A9D50(0xD000000000000014, 0x80000001DF6FA090, &v24);
      *(v11 + 12) = 2082;
      v13 = sub_1DF6F63EC();
      v15 = sub_1DF6A9D50(v13, v14, &v24);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_1DF69D000, v9, v10, "[%{public}s] No evaluation present for context '%{public}s'; ensure the context is declared in the feature availability extension's requirements", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12DCBA0](v12, -1, -1);
      MEMORY[0x1E12DCBA0](v11, -1, -1);
    }

    v16 = sub_1DF6F63BC();
    v17 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
    v24 = v16;
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    v18 = v16;
    v19 = [v17 initWithObject_];

    swift_unknownObjectRelease();
    sub_1DF6C4E00(0, &qword_1ECE4D998, sub_1DF6C4778, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DF6FA080;
    *(inited + 32) = sub_1DF6F63BC();
    sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
    *(inited + 40) = sub_1DF6F69BC();
    sub_1DF6C415C(inited);
    swift_setDeallocating();
    sub_1DF69FE90(inited + 32, sub_1DF6C4778);
    v21 = objc_allocWithZone(MEMORY[0x1E696C158]);
    sub_1DF69FA50(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
    v22 = sub_1DF6F629C();

    v23 = [v21 initWithRequirementIdentifiersOrderedByPriority:v19 satisfactionByRequirementIdentifier:v22];

    return v23;
  }
}

uint64_t sub_1DF6BE150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x80000001DF6FCFE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DF6F6E2C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DF6BE1F0(uint64_t a1)
{
  v2 = sub_1DF6C47F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6BE22C(uint64_t a1)
{
  v2 = sub_1DF6C47F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatus.PerContextEvaluation.encode(to:)(void *a1)
{
  sub_1DF6C4CDC(0, &qword_1EDC034E8, sub_1DF6C47F8, &type metadata for FeatureStatus.PerContextEvaluation.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C47F8();
  sub_1DF6F6F8C();
  sub_1DF6BD050();
  sub_1DF69FA50(&qword_1EDC03F68, sub_1DF6BD050);
  sub_1DF6F6DCC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FeatureStatus.PerContextEvaluation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1DF6BD050();
  v4 = v3;
  v23 = *(v3 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC03518, sub_1DF6C47F8, &type metadata for FeatureStatus.PerContextEvaluation.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C47F8();
  v17 = v25;
  sub_1DF6F6F7C();
  if (!v17)
  {
    v18 = v22;
    v19 = v23;
    sub_1DF69FA50(&qword_1EDC03F60, sub_1DF6BD050);
    sub_1DF6F6D9C();
    (*(v18 + 8))(v11, v8);
    (*(v19 + 32))(v15, v24, v4);
    sub_1DF69F970(v15, v21, type metadata accessor for FeatureStatus.PerContextEvaluation);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DF6BE708(void *a1)
{
  sub_1DF6C4CDC(0, &qword_1EDC034E8, sub_1DF6C47F8, &type metadata for FeatureStatus.PerContextEvaluation.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C47F8();
  sub_1DF6F6F8C();
  sub_1DF6BD050();
  sub_1DF69FA50(&qword_1EDC03F68, sub_1DF6BD050);
  sub_1DF6F6DCC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FeatureStatus.OnboardingRecord.settings.getter()
{
  v0 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 20);
  sub_1DF6C4974();
  return sub_1DF6F60BC();
}

uint64_t sub_1DF6BE90C(void **a1)
{
  v1 = *a1;
  v2 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 20);
  sub_1DF6C4974();
  v3 = v1;
  return sub_1DF6F60CC();
}

uint64_t FeatureStatus.OnboardingRecord.settings.setter()
{
  v0 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 20);
  sub_1DF6C4974();
  return sub_1DF6F60CC();
}

uint64_t (*FeatureStatus.OnboardingRecord.settings.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 20);
  sub_1DF6C4974();
  *(v3 + 32) = sub_1DF6F60AC();
  return sub_1DF6BEA3C;
}

void sub_1DF6BEA40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t FeatureStatus.OnboardingRecord.allOnboardedCountryCodes.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 24));
}

uint64_t FeatureStatus.OnboardingRecord.allOnboardedCountryCodes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FeatureStatus.OnboardingRecord.dateOnboardingCompleted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 28);
  v4 = sub_1DF6F5A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeatureStatus.OnboardingRecord.dateOnboardingCompleted.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 28);
  v4 = sub_1DF6F5A7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeatureStatus.OnboardingRecord.init(perContextEvaluation:settings:allOnboardedCountryCodes:dateOnboardingCompleted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1DF69F908(a1, a4, type metadata accessor for FeatureStatus.PerContextEvaluation);
  v8 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v9 = v8[5];
  sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168);
  sub_1DF6F60FC();
  sub_1DF69FE90(a1, type metadata accessor for FeatureStatus.PerContextEvaluation);
  *(a4 + v8[6]) = a2;
  v10 = v8[7];
  v11 = sub_1DF6F5A7C();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t static FeatureStatus.OnboardingRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158);
  if ((sub_1DF6F61DC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v5 = v4[5];
  sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168);
  sub_1DF69FAE8(qword_1EDC03660, &qword_1EDC04FA8, 0x1E696C168);
  if ((sub_1DF6F60DC() & 1) == 0 || (sub_1DF69FCD8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];

  return sub_1DF6F5A5C();
}

uint64_t sub_1DF6BEFBC()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BF030()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v1);
  return sub_1DF6F6F2C();
}

unint64_t sub_1DF6BF074()
{
  v1 = 0x73676E6974746573;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF6BF0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF6C5B68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF6BF130(uint64_t a1)
{
  v2 = sub_1DF6C49DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6BF16C(uint64_t a1)
{
  v2 = sub_1DF6C49DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatus.OnboardingRecord.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DF6C4CDC(0, &qword_1EDC034F8, sub_1DF6C49DC, &type metadata for FeatureStatus.OnboardingRecord.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C49DC();
  sub_1DF6F6F8C();
  v20 = 0;
  type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  sub_1DF69FA50(&qword_1EDC04598, type metadata accessor for FeatureStatus.PerContextEvaluation);
  sub_1DF6F6DCC();
  if (!v2)
  {
    v12 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
    v13 = v12[5];
    v19 = 1;
    sub_1DF6C4974();
    sub_1DF69FA50(&qword_1EDC03F80, sub_1DF6C4974);
    sub_1DF6F6DCC();
    v16[1] = *(v3 + v12[6]);
    v18 = 2;
    sub_1DF6C4A30();
    sub_1DF6C4B2C(&qword_1EDC03ED8);
    sub_1DF6F6DCC();
    v14 = v12[7];
    v17 = 3;
    sub_1DF6F5A7C();
    sub_1DF69FA50(&qword_1EDC04648, MEMORY[0x1E6969530]);
    sub_1DF6F6DCC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FeatureStatus.OnboardingRecord.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1DF6BD050();
  sub_1DF6C484C();
  sub_1DF6F62FC();
  v4 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v5 = v4[5];
  sub_1DF6C4974();
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(a1, *(v2 + v4[6]));
  v6 = v4[7];
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530]);
  return sub_1DF6F62FC();
}

uint64_t FeatureStatus.OnboardingRecord.hashValue.getter()
{
  v1 = v0;
  sub_1DF6F6F0C();
  sub_1DF6BD050();
  sub_1DF6C484C();
  sub_1DF6F62FC();
  v2 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v3 = v2[5];
  sub_1DF6C4974();
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(v6, *(v1 + v2[6]));
  v4 = v2[7];
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530]);
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t FeatureStatus.OnboardingRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = sub_1DF6F5A7C();
  v32 = *(v35 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4974();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v9 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC03528, sub_1DF6C49DC, &type metadata for FeatureStatus.OnboardingRecord.CodingKeys, MEMORY[0x1E69E6F48]);
  v42 = v11;
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C49DC();
  v41 = v14;
  v20 = v43;
  sub_1DF6F6F7C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v36;
  v21 = v37;
  v23 = v38;
  v48 = 0;
  sub_1DF69FA50(&qword_1EDC04590, type metadata accessor for FeatureStatus.PerContextEvaluation);
  sub_1DF6F6D9C();
  v31 = v18;
  sub_1DF69F970(v40, v18, type metadata accessor for FeatureStatus.PerContextEvaluation);
  v47 = 1;
  sub_1DF69FA50(&qword_1EDC03F78, sub_1DF6C4974);
  sub_1DF6F6D9C();
  v24 = v15;
  v25 = *(v15 + 20);
  v26 = v31;
  (*(v21 + 32))(&v31[v25], v8, v23);
  sub_1DF6C4A30();
  v46 = 2;
  sub_1DF6C4B2C(&qword_1EDC03ED0);
  sub_1DF6F6D9C();
  v43 = 0;
  *&v26[*(v24 + 24)] = v44;
  v45 = 3;
  sub_1DF69FA50(&qword_1EDC04640, MEMORY[0x1E6969530]);
  v28 = v34;
  v27 = v35;
  sub_1DF6F6D9C();
  (*(v22 + 8))(v41, v42);
  v29 = v31;
  (*(v32 + 32))(&v31[*(v24 + 28)], v28, v27);
  sub_1DF69F908(v29, v33, type metadata accessor for FeatureStatus.OnboardingRecord);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF69FE90(v29, type metadata accessor for FeatureStatus.OnboardingRecord);
}

uint64_t sub_1DF6BFCD8(int *a1)
{
  v3 = v1;
  sub_1DF6F6F0C();
  sub_1DF6BD050();
  sub_1DF6C484C();
  sub_1DF6F62FC();
  v4 = a1[5];
  sub_1DF6C4974();
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(v7, *(v3 + a1[6]));
  v5 = a1[7];
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530]);
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BFDD0(__int128 *a1, int *a2)
{
  v4 = v2;
  sub_1DF6BD050();
  sub_1DF6C484C();
  sub_1DF6F62FC();
  v6 = a2[5];
  sub_1DF6C4974();
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(a1, *(v4 + a2[6]));
  v7 = a2[7];
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530]);
  return sub_1DF6F62FC();
}

uint64_t sub_1DF6BFEB8(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1DF6F6F0C();
  sub_1DF6BD050();
  sub_1DF6C484C();
  sub_1DF6F62FC();
  v5 = a2[5];
  sub_1DF6C4974();
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(v8, *(v4 + a2[6]));
  v6 = a2[7];
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530]);
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BFFDC(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158);
  if ((sub_1DF6F61DC() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[5];
  sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168);
  sub_1DF69FAE8(qword_1EDC03660, &qword_1EDC04FA8, 0x1E696C168);
  if ((sub_1DF6F60DC() & 1) == 0 || (sub_1DF69FCD8(*(a1 + a3[6]), *(a2 + a3[6])) & 1) == 0)
  {
    return 0;
  }

  v7 = a3[7];

  return sub_1DF6F5A5C();
}

uint64_t sub_1DF6C0278()
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158);

  return sub_1DF6F61DC();
}

uint64_t sub_1DF6C03EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001DF6FD000 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DF6F6E2C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DF6C0480(uint64_t a1)
{
  v2 = sub_1DF6C4B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6C04BC(uint64_t a1)
{
  v2 = sub_1DF6C4B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatus.Eligibility.encode(to:)(void *a1)
{
  sub_1DF6C4CDC(0, &qword_1EDC03500, sub_1DF6C4B8C, &type metadata for FeatureStatus.Eligibility.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4B8C();
  sub_1DF6F6F8C();
  type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  sub_1DF69FA50(&qword_1EDC04598, type metadata accessor for FeatureStatus.PerContextEvaluation);
  sub_1DF6F6DCC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DF6C06A8()
{
  sub_1DF6BD050();
  sub_1DF6C484C();

  return sub_1DF6F62FC();
}

uint64_t sub_1DF6C0700()
{
  sub_1DF6F6F0C();
  sub_1DF6BD050();
  sub_1DF6C484C();
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t FeatureStatus.Eligibility.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC03530, sub_1DF6C4B8C, &type metadata for FeatureStatus.Eligibility.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v22 = *(v6 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for FeatureStatus.Eligibility(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4B8C();
  v16 = v24;
  sub_1DF6F6F7C();
  if (!v16)
  {
    v17 = v22;
    sub_1DF69FA50(&qword_1EDC04590, type metadata accessor for FeatureStatus.PerContextEvaluation);
    v18 = v23;
    sub_1DF6F6D9C();
    (*(v17 + 8))(v10, v7);
    sub_1DF69F970(v18, v14, type metadata accessor for FeatureStatus.PerContextEvaluation);
    sub_1DF69F970(v14, v21, type metadata accessor for FeatureStatus.Eligibility);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DF6C0A10()
{
  sub_1DF6F6F0C();
  sub_1DF6BD050();
  sub_1DF6C484C();
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6C0A7C(void *a1)
{
  sub_1DF6C4CDC(0, &qword_1EDC03500, sub_1DF6C4B8C, &type metadata for FeatureStatus.Eligibility.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4B8C();
  sub_1DF6F6F8C();
  type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  sub_1DF69FA50(&qword_1EDC04598, type metadata accessor for FeatureStatus.PerContextEvaluation);
  sub_1DF6F6DCC();
  return (*(v4 + 8))(v7, v3);
}

BOOL FeatureStatus.isOnboardingRecordPresent.getter()
{
  v1 = type metadata accessor for FeatureStatus(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF69F908(v0, v4, type metadata accessor for FeatureStatus);
  v5 = swift_getEnumCaseMultiPayload() != 1;
  sub_1DF69FE90(v4, type metadata accessor for FeatureStatus);
  return v5;
}

id FeatureStatus.subscript.getter(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FeatureStatus.Eligibility(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeatureStatus(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF69F908(v2, v15, type metadata accessor for FeatureStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DF69F970(v15, v7, type metadata accessor for FeatureStatus.Eligibility);
    v16 = FeatureStatus.PerContextEvaluation.evaluation(for:)(a1);
    v17 = type metadata accessor for FeatureStatus.Eligibility;
    v18 = v7;
  }

  else
  {
    sub_1DF69F970(v15, v11, type metadata accessor for FeatureStatus.OnboardingRecord);
    v16 = FeatureStatus.PerContextEvaluation.evaluation(for:)(a1);
    v17 = type metadata accessor for FeatureStatus.OnboardingRecord;
    v18 = v11;
  }

  sub_1DF69FE90(v18, v17);
  return v16;
}

uint64_t sub_1DF6C0EE4()
{
  if (*v0)
  {
    result = 0x616F626E4F746F6ELL;
  }

  else
  {
    result = 0x656472616F626E6FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1DF6C0F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656472616F626E6FLL && a2 == 0xE900000000000064;
  if (v6 || (sub_1DF6F6E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616F626E4F746F6ELL && a2 == 0xEC00000064656472)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF6F6E2C();

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

uint64_t sub_1DF6C1020(uint64_t a1)
{
  v2 = sub_1DF6C4C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6C105C(uint64_t a1)
{
  v2 = sub_1DF6C4C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF6C10A4(uint64_t a1)
{
  v2 = sub_1DF6C4BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6C10E0(uint64_t a1)
{
  v2 = sub_1DF6C4BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF6C111C()
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](0);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6C1160()
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](0);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6C11A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF6F6E2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF6C1220(uint64_t a1)
{
  v2 = sub_1DF6C4C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6C125C(uint64_t a1)
{
  v2 = sub_1DF6C4C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatus.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1DF6C4CDC(0, &qword_1EDC034E0, sub_1DF6C4BE0, &type metadata for FeatureStatus.NotOnboardedCodingKeys, MEMORY[0x1E69E6F58]);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - v5;
  v36 = type metadata accessor for FeatureStatus.Eligibility(0);
  v6 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC034F0, sub_1DF6C4C34, &type metadata for FeatureStatus.OnboardedCodingKeys, v2);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - v10;
  v32 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeatureStatus(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC03508, sub_1DF6C4C88, &type metadata for FeatureStatus.CodingKeys, v2);
  v19 = v18;
  v42 = *(v18 - 8);
  v20 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4C88();
  sub_1DF6F6F8C();
  sub_1DF69F908(v41, v17, type metadata accessor for FeatureStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v37;
    sub_1DF69F970(v17, v37, type metadata accessor for FeatureStatus.Eligibility);
    v44 = 1;
    sub_1DF6C4BE0();
    v25 = v38;
    sub_1DF6F6DBC();
    sub_1DF69FA50(&qword_1EDC04600, type metadata accessor for FeatureStatus.Eligibility);
    v26 = v40;
    sub_1DF6F6DCC();
    (*(v39 + 8))(v25, v26);
    v27 = type metadata accessor for FeatureStatus.Eligibility;
    v28 = v24;
  }

  else
  {
    sub_1DF69F970(v17, v13, type metadata accessor for FeatureStatus.OnboardingRecord);
    v43 = 0;
    sub_1DF6C4C34();
    v29 = v33;
    sub_1DF6F6DBC();
    sub_1DF69FA50(&qword_1EDC045D8, type metadata accessor for FeatureStatus.OnboardingRecord);
    v30 = v35;
    sub_1DF6F6DCC();
    (*(v34 + 8))(v29, v30);
    v27 = type metadata accessor for FeatureStatus.OnboardingRecord;
    v28 = v13;
  }

  sub_1DF69FE90(v28, v27);
  return (*(v42 + 8))(v22, v19);
}

uint64_t FeatureStatus.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for FeatureStatus.Eligibility(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeatureStatus(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF69F908(v1, v14, type metadata accessor for FeatureStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DF69F970(v14, v6, type metadata accessor for FeatureStatus.Eligibility);
    MEMORY[0x1E12DC330](1);
    sub_1DF6BD050();
    sub_1DF6C484C();
    sub_1DF6F62FC();
    v15 = type metadata accessor for FeatureStatus.Eligibility;
    v16 = v6;
  }

  else
  {
    sub_1DF69F970(v14, v10, type metadata accessor for FeatureStatus.OnboardingRecord);
    MEMORY[0x1E12DC330](0);
    sub_1DF6BD050();
    sub_1DF6C484C();
    sub_1DF6F62FC();
    v17 = v7[5];
    sub_1DF6C4974();
    sub_1DF6C4A88();
    sub_1DF6F62FC();
    sub_1DF6C3CC4(a1, *&v10[v7[6]]);
    v18 = v7[7];
    sub_1DF6F5A7C();
    sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530]);
    sub_1DF6F62FC();
    v15 = type metadata accessor for FeatureStatus.OnboardingRecord;
    v16 = v10;
  }

  return sub_1DF69FE90(v16, v15);
}

uint64_t FeatureStatus.hashValue.getter()
{
  sub_1DF6F6F0C();
  FeatureStatus.hash(into:)(v1);
  return sub_1DF6F6F2C();
}

uint64_t FeatureStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1DF6C4CDC(0, &qword_1EDC03510, sub_1DF6C4BE0, &type metadata for FeatureStatus.NotOnboardedCodingKeys, MEMORY[0x1E69E6F48]);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v51 - v6;
  sub_1DF6C4CDC(0, &qword_1EDC03520, sub_1DF6C4C34, &type metadata for FeatureStatus.OnboardedCodingKeys, v3);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v51 - v9;
  sub_1DF6C4CDC(0, &qword_1EDC03538, sub_1DF6C4C88, &type metadata for FeatureStatus.CodingKeys, v3);
  v61 = v10;
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = type metadata accessor for FeatureStatus(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4C88();
  v25 = v64;
  sub_1DF6F6F7C();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v18;
  v52 = v21;
  v53 = v23;
  v54 = 0;
  v26 = v61;
  v27 = v62;
  v28 = v14;
  v64 = a1;
  v29 = v13;
  v30 = sub_1DF6F6DAC();
  v31 = v30;
  if (*(v30 + 16) != 1)
  {
    v37 = sub_1DF6F6BAC();
    swift_allocError();
    v39 = v38;
    sub_1DF6C4D44();
    v40 = v26;
    v42 = *(v41 + 48);
    *v39 = v28;
    sub_1DF6F6D8C();
    sub_1DF6F6B8C();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v63 + 8))(v29, v40);
    swift_unknownObjectRelease();
    a1 = v64;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if ((*(v30 + 32) & 1) == 0)
  {
    v65 = 0;
    sub_1DF6C4C34();
    v43 = v54;
    sub_1DF6F6D7C();
    if (!v43)
    {
      v45 = v13;
      v54 = v31;
      type metadata accessor for FeatureStatus.OnboardingRecord(0);
      sub_1DF69FA50(&qword_1EDC045D0, type metadata accessor for FeatureStatus.OnboardingRecord);
      v46 = v52;
      v47 = v57;
      sub_1DF6F6D9C();
      v48 = v27;
      v49 = v63;
      (*(v56 + 8))(v48, v47);
      (*(v49 + 8))(v45, v26);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v34 = v53;
      v50 = v46;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v66 = 1;
  sub_1DF6C4BE0();
  v32 = v60;
  v33 = v54;
  sub_1DF6F6D7C();
  v34 = v53;
  if (v33)
  {
LABEL_8:
    (*(v63 + 8))(v29, v26);
    swift_unknownObjectRelease();
    a1 = v64;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v62 = v29;
  v54 = v31;
  type metadata accessor for FeatureStatus.Eligibility(0);
  sub_1DF69FA50(&qword_1EDC045F8, type metadata accessor for FeatureStatus.Eligibility);
  v35 = v51;
  v36 = v59;
  sub_1DF6F6D9C();
  (*(v58 + 8))(v32, v36);
  (*(v63 + 8))(v62, v26);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v50 = v35;
LABEL_11:
  sub_1DF69F970(v50, v34, type metadata accessor for FeatureStatus);
  sub_1DF69F970(v34, v55, type metadata accessor for FeatureStatus);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_1DF6C2218()
{
  sub_1DF6F6F0C();
  FeatureStatus.hash(into:)(v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6C225C()
{
  sub_1DF6F6F0C();
  FeatureStatus.hash(into:)(v1);
  return sub_1DF6F6F2C();
}

uint64_t FeatureStatus.PerContextEvaluation.init(dictionaryLiteral:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DF6BDCD8();
    v1 = sub_1DF6F6D3C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1DF6C3968(v2, 1, &v4);

  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);

  return sub_1DF6F61FC();
}

uint64_t sub_1DF6C2460(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DF6BDCD8();
    v1 = sub_1DF6F6D3C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1DF6C3968(v2, 1, &v4);

  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);

  return sub_1DF6F61FC();
}

uint64_t HKFeatureAvailabilityRequirementsEvaluation.satisfactionByRequirementIdentifier.getter()
{
  v1 = v0;
  v2 = [v0 requirementIdentifiersOrderedByPriority];
  v3 = [v2 array];

  v4 = sub_1DF6F65AC();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DF6AAB1C(v6, v23);
      sub_1DF6B1E38(v23, &v21);
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      if (swift_dynamicCast())
      {
        v8 = v22;
        if (v22)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1DF6B5540(0, v7[2] + 1, 1, v7);
          }

          v10 = v7[2];
          v9 = v7[3];
          if (v10 >= v9 >> 1)
          {
            v7 = sub_1DF6B5540((v9 > 1), v10 + 1, 1, v7);
          }

          v7[2] = v10 + 1;
          v7[v10 + 4] = v8;
        }
      }

      v6 += 32;
      --v5;
    }

    while (v5);

    v11 = v7[2];
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

  v7 = MEMORY[0x1E69E7CC0];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_12:
  *&v23[0] = MEMORY[0x1E69E7CC0];
  sub_1DF6C3928(0, v11, 0);
  v12 = 4;
  v13 = *&v23[0];
  do
  {
    v14 = v7[v12];
    v15 = [v1 isRequirementSatisfiedWithIdentifier_];
    *&v23[0] = v13;
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v17 >= v16 >> 1)
    {
      v19 = v15;
      sub_1DF6C3928((v16 > 1), v17 + 1, 1);
      v15 = v19;
      v13 = *&v23[0];
    }

    *(v13 + 16) = v17 + 1;
    v18 = v13 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    ++v12;
    --v11;
  }

  while (v11);

  return v13;
}

uint64_t sub_1DF6C287C(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

uint64_t FeatureStatus.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  sub_1DF6C4E00(0, &qword_1EDC05240, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v87 = v79 - v7;
  v8 = sub_1DF6F5A7C();
  v92 = *(v8 - 8);
  v9 = *(v92 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v94 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v96 = v79 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v95 = v79 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v90 = v79 - v16;
  v88 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  v17 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeatureStatus.Eligibility(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v85 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (v79 - v27);
  v29 = [a1 requirementsEvaluationByContext];
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF6F62AC();

  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext);
  v30 = a1;
  sub_1DF6F61FC();
  v31 = &off_1E86C1000;
  v32 = [a1 onboardingRecord];
  v33 = &off_1E86C1000;
  v34 = [v32 onboardingState];

  if ((v34 - 2) < 4)
  {
    sub_1DF69F908(v28, v26, type metadata accessor for FeatureStatus.PerContextEvaluation);
    v35 = [a1 onboardingRecord];
    v36 = [v35 featureSettings];

    v37 = v28;
    if (!v36)
    {
      sub_1DF6C4044(MEMORY[0x1E69E7CC0]);
      v38 = objc_allocWithZone(MEMORY[0x1E696C168]);
      v39 = sub_1DF6F629C();

      v36 = [v38 initWithDictionary_];
    }

    v85 = v36;
    v40 = [v30 onboardingRecord];
    v41 = [v40 allOnboardedCountryCodesRegardlessOfSupportedState];

    v42 = sub_1DF6F672C();
    v43 = [v30 onboardingRecord];
    v44 = [v43 allOnboardingCompletionsRegardlessOfSupportedState];

    sub_1DF69EF80(0, &qword_1EDC04FA0, 0x1E696C2F8);
    v45 = sub_1DF6F65AC();

    KeyPath = swift_getKeyPath();
    v97 = v45;
    v98 = 0;
    v99 = sub_1DF6C4E70;
    v100 = KeyPath;
    swift_retain_n();

    v47 = v93;
    sub_1DF6C3EF0(v93);
    v48 = v92;
    v49 = v92 + 48;
    v83 = *(v92 + 48);
    v50 = v83(v47, 1, v8);
    v86 = v37;
    v84 = v42;
    if (v50 == 1)
    {

      sub_1DF6C4E78(v47);
      v51 = v87;
      (*(v48 + 56))(v87, 1, 1, v8);
      v53 = v90;
      v52 = v91;
    }

    else
    {
      v79[2] = v49;
      v81 = v30;
      v54 = v48;
      v55 = v45;
      v56 = *(v54 + 32);
      v30 = (v54 + 32);
      v31 = v56;
      v33 = v95;
      v56(v95, v47, v8);
      v82 = v55;
      v80 = v26;
      v79[1] = KeyPath;
      if (v55 >> 62)
      {
        goto LABEL_32;
      }

      v34 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v57 = v98;
      if (v98 != v34)
      {
        v93 = v82 & 0xC000000000000001;
        v64 = v82 & 0xFFFFFFFFFFFFFF8;
        v65 = v82 + 32;
        v28 = (v92 + 8);
        do
        {
          if (v93)
          {
            v66 = MEMORY[0x1E12DBF80](v57, v82);
            v67 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if ((v57 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              v34 = sub_1DF6F6A8C();
              goto LABEL_8;
            }

            if (v57 >= *(v64 + 16))
            {
              goto LABEL_31;
            }

            v66 = *(v65 + 8 * v57);
            v67 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v98 = v67;
          v68 = v66;
          v69 = [v68 completionDate];
          v70 = v94;
          sub_1DF6F5A6C();

          v33 = v95;
          v71 = v70;
          v72 = v96;
          v31(v96, v71, v8);
          sub_1DF69FA50(&qword_1EDC04F68, MEMORY[0x1E6969530]);
          v73 = sub_1DF6F634C();
          v74 = *v28;
          if (v73)
          {
            v74(v33, v8);
            v31(v33, v72, v8);
          }

          else
          {
            v74(v72, v8);
          }

          v57 = v98;
        }

        while (v98 != v34);
      }

      v51 = v87;
      v31(v87, v33, v8);
      v48 = v92;
      (*(v92 + 56))(v51, 0, 1, v8);
      v53 = v90;
      v52 = v91;
      v30 = v81;
      v26 = v80;
    }

    v58 = v83;
    if (v83(v51, 1, v8) == 1)
    {
      sub_1DF6F5A1C();
      if (v58(v51, 1, v8) != 1)
      {
        sub_1DF6C4E78(v51);
      }
    }

    else
    {
      (*(v48 + 32))(v53, v51, v8);
    }

    v59 = v26;
    v60 = v26;
    v61 = v89;
    sub_1DF69F908(v59, v89, type metadata accessor for FeatureStatus.PerContextEvaluation);
    v62 = v88;
    v63 = *(v88 + 20);
    sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168);
    sub_1DF6F60FC();

    sub_1DF69FE90(v60, type metadata accessor for FeatureStatus.PerContextEvaluation);
    sub_1DF69FE90(v86, type metadata accessor for FeatureStatus.PerContextEvaluation);
    *(v61 + *(v62 + 24)) = v84;
    (*(v48 + 32))(v61 + *(v62 + 28), v53, v8);
    sub_1DF69F970(v61, v52, type metadata accessor for FeatureStatus.OnboardingRecord);
    goto LABEL_29;
  }

LABEL_27:
  if (v34 == 1)
  {

    v75 = v85;
    sub_1DF69F970(v28, v85, type metadata accessor for FeatureStatus.PerContextEvaluation);
    sub_1DF69F970(v75, v91, type metadata accessor for FeatureStatus.Eligibility);
LABEL_29:
    type metadata accessor for FeatureStatus(0);
    return swift_storeEnumTagMultiPayload();
  }

  v97 = 0;
  v98 = 0xE000000000000000;
  sub_1DF6F6B2C();
  MEMORY[0x1E12DB8A0](0xD000000000000012, 0x80000001DF6FCFA0);
  v77 = [v30 *(v31 + 248)];
  v78 = [v77 *(v33 + 249)];

  v101 = v78;
  type metadata accessor for HKFeatureAvailabilityOnboardedCountrySupportedState(0);
  sub_1DF6F6C7C();
  MEMORY[0x1E12DB8A0](0xD00000000000001BLL, 0x80000001DF6FCFC0);
  result = sub_1DF6F6CCC();
  __break(1u);
  return result;
}

void sub_1DF6C3454(id *a1)
{
  v1 = [*a1 completionDate];
  sub_1DF6F5A6C();
}

void sub_1DF6C34B4(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

unint64_t sub_1DF6C350C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DF6F69CC();

  return sub_1DF6C3658(a1, v5);
}

unint64_t sub_1DF6C3550(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  v6 = sub_1DF6F6F2C();

  return sub_1DF6C372C(a1, a2, v6);
}

unint64_t sub_1DF6C35C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DF6F63EC();
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  v4 = sub_1DF6F6F2C();

  return sub_1DF6C37E4(a1, v4);
}

unint64_t sub_1DF6C3658(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DF6F69DC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DF6C372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DF6F6E2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DF6C37E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DF6F63EC();
      v9 = v8;
      if (v7 == sub_1DF6F63EC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1DF6F6E2C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1DF6C38E8(char *a1, int64_t a2, char a3)
{
  result = sub_1DF6E8730(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF6C3908(char *a1, int64_t a2, char a3)
{
  result = sub_1DF6E8854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF6C3928(void *a1, int64_t a2, char a3)
{
  result = sub_1DF6E8980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF6C3948(char *a1, int64_t a2, char a3)
{
  result = sub_1DF6E8ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DF6C3968(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_1DF6C35C8(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_1DF6E396C(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_1DF6C35C8(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for HKFeatureAvailabilityContext(0);
    v11 = sub_1DF6F6E8C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1DF6E85DC();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    sub_1DF69F1E4();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v23[6] + 8 * v11) = v9;
  *(v23[7] + 8 * v11) = v10;
  v24 = v23[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1DF6F6B2C();
    MEMORY[0x1E12DB8A0](0xD00000000000001BLL, 0x80000001DF6FD080);
    type metadata accessor for HKFeatureAvailabilityContext(0);
    sub_1DF6F6C7C();
    MEMORY[0x1E12DB8A0](39, 0xE100000000000000);
    sub_1DF6F6CCC();
    __break(1u);
    return;
  }

  v23[2] = v25;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v27 = *v6;
      v28 = *a3;
      v9 = *(v6 - 1);
      v10 = v27;
      v29 = sub_1DF6C35C8(v9);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1DF6E396C(v33, 1);
        v34 = *a3;
        v29 = sub_1DF6C35C8(v9);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v9;
      *(v36[7] + 8 * v29) = v10;
      v37 = v36[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v38;
      v6 += 2;
      if (v4 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1DF6C3CC4(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_1DF6F6F2C();
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
    sub_1DF6F6F0C();

    sub_1DF6F645C();
    v15 = sub_1DF6F6F2C();
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

      return MEMORY[0x1E12DC330](v8);
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

void sub_1DF6C3E20()
{
  if (!qword_1ECE4D990)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    sub_1DF69EF80(255, &qword_1EDC03560, 0x1E696AD98);
    sub_1DF69FA50(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
    v0 = sub_1DF6F6D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D990);
    }
  }
}

uint64_t sub_1DF6C3EDC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1DF6C3EF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    if (v3 < 0)
    {
      v15 = *v1;
    }

    result = sub_1DF6F6A8C();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[1];
  if (v5 != result)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12DBF80](v1[1], v3);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:
        __break(1u);
        return result;
      }

      result = *(v3 + 8 * v5 + 32);
    }

    v11 = result;
    if (!__OFADD__(v5, 1))
    {
      v1[1] = v5 + 1;
      v12 = v1[2];
      v13 = v1[3];
      v16 = result;
      v12(&v16);

      v14 = sub_1DF6F5A7C();
      v7 = *(*(v14 - 8) + 56);
      v8 = v14;
      v9 = a1;
      v10 = 0;
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v6 = sub_1DF6F5A7C();
  v7 = *(*(v6 - 8) + 56);
  v8 = v6;
  v9 = a1;
  v10 = 1;
LABEL_11:

  return v7(v9, v10, 1, v8);
}

unint64_t sub_1DF6C4044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF6C5EE8();
    v3 = sub_1DF6F6D3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF69F908(v4, &v13, sub_1DF6C5F4C);
      v5 = v13;
      v6 = v14;
      result = sub_1DF6C3550(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DF6B1E38(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF6C415C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF6C3E20();
    v3 = sub_1DF6F6D3C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1DF6C35C8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF6C4248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF6C5E18();
    v3 = sub_1DF6F6D3C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1DF6C350C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF6C4334(uint64_t a1)
{
  sub_1DF6C5CD8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DF6C5D58();
    v9 = sub_1DF6F6D3C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1DF69F908(v11, v7, sub_1DF6C5CD8);
      v13 = *v7;
      result = sub_1DF6C350C(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = sub_1DF6F584C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v7 + v10, v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DF6C4508(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1DF6C3908(0, v2, 0);
  v3 = v30;
  v5 = -1 << *(a1 + 32);
  v26 = a1 + 64;
  result = sub_1DF6F6A5C();
  v7 = result;
  v8 = 0;
  v27 = *(a1 + 36);
  v24 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v26 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = *(*(a1 + 56) + v7);
    v12 = *(*(a1 + 48) + 8 * v7);
    v13 = a2();
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    v29 = v14;

    *&v28 = v13;
    v30 = v3;
    v16 = *(v3 + 16);
    v15 = *(v3 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1DF6C3908((v15 > 1), v16 + 1, 1);
      v3 = v30;
    }

    *(v3 + 16) = v16 + 1;
    result = sub_1DF6B1E38(&v28, (v3 + 32 * v16 + 32));
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v17 = *(v26 + 8 * v10);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1DF6C3EDC(v7, v27, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1DF6C3EDC(v7, v27, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v24)
    {
      return v3;
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
LABEL_26:
  __break(1u);
  return result;
}

void sub_1DF6C4778()
{
  if (!qword_1ECE4D9A0)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    sub_1DF69EF80(255, &qword_1EDC03560, 0x1E696AD98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4D9A0);
    }
  }
}

unint64_t sub_1DF6C47F8()
{
  result = qword_1EDC045B0;
  if (!qword_1EDC045B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045B0);
  }

  return result;
}

unint64_t sub_1DF6C484C()
{
  result = qword_1ECE4D9A8;
  if (!qword_1ECE4D9A8)
  {
    sub_1DF6BD050();
    sub_1DF69FAE8(&qword_1ECE4D9B0, &qword_1EDC04F70, 0x1E696C158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D9A8);
  }

  return result;
}

uint64_t sub_1DF6C4910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DF6C4974()
{
  if (!qword_1EDC04FC0)
  {
    sub_1DF69EF80(255, &qword_1EDC04FA8, 0x1E696C168);
    v0 = sub_1DF6F60EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04FC0);
    }
  }
}

unint64_t sub_1DF6C49DC()
{
  result = qword_1EDC045F0;
  if (!qword_1EDC045F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045F0);
  }

  return result;
}

void sub_1DF6C4A30()
{
  if (!qword_1EDC04FB0)
  {
    v0 = sub_1DF6F678C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04FB0);
    }
  }
}

unint64_t sub_1DF6C4A88()
{
  result = qword_1ECE4D9B8;
  if (!qword_1ECE4D9B8)
  {
    sub_1DF6C4974();
    sub_1DF69FAE8(&qword_1ECE4D9C0, &qword_1EDC04FA8, 0x1E696C168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D9B8);
  }

  return result;
}

uint64_t sub_1DF6C4B2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DF6C4A30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF6C4B8C()
{
  result = qword_1EDC04618;
  if (!qword_1EDC04618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04618);
  }

  return result;
}

unint64_t sub_1DF6C4BE0()
{
  result = qword_1EDC04588;
  if (!qword_1EDC04588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04588);
  }

  return result;
}

unint64_t sub_1DF6C4C34()
{
  result = qword_1EDC045C8;
  if (!qword_1EDC045C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045C8);
  }

  return result;
}

unint64_t sub_1DF6C4C88()
{
  result = qword_1EDC04630;
  if (!qword_1EDC04630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04630);
  }

  return result;
}

void sub_1DF6C4CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DF6C4D44()
{
  if (!qword_1ECE4D9D0)
  {
    sub_1DF6C4DB4();
    sub_1DF6F6B9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4D9D0);
    }
  }
}

unint64_t sub_1DF6C4DB4()
{
  result = qword_1ECE4D9D8;
  if (!qword_1ECE4D9D8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ECE4D9D8);
  }

  return result;
}

void sub_1DF6C4E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DF6C4E78(uint64_t a1)
{
  sub_1DF6C4E00(0, &qword_1EDC05240, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF6C5074()
{
  result = type metadata accessor for FeatureStatus.OnboardingRecord(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeatureStatus.Eligibility(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DF6C5150()
{
  type metadata accessor for FeatureStatus.PerContextEvaluation(319);
  if (v0 <= 0x3F)
  {
    sub_1DF6C4974();
    if (v1 <= 0x3F)
    {
      sub_1DF6C4A30();
      if (v2 <= 0x3F)
      {
        sub_1DF6F5A7C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DF6C5328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureStatus.OnboardingRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureStatus.OnboardingRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF6C553C()
{
  result = qword_1ECE4DA00;
  if (!qword_1ECE4DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA00);
  }

  return result;
}

unint64_t sub_1DF6C5594()
{
  result = qword_1ECE4DA08;
  if (!qword_1ECE4DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA08);
  }

  return result;
}

unint64_t sub_1DF6C55EC()
{
  result = qword_1ECE4DA10;
  if (!qword_1ECE4DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA10);
  }

  return result;
}

unint64_t sub_1DF6C5644()
{
  result = qword_1ECE4DA18;
  if (!qword_1ECE4DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA18);
  }

  return result;
}

unint64_t sub_1DF6C569C()
{
  result = qword_1ECE4DA20;
  if (!qword_1ECE4DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA20);
  }

  return result;
}

unint64_t sub_1DF6C56F4()
{
  result = qword_1ECE4DA28;
  if (!qword_1ECE4DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA28);
  }

  return result;
}

unint64_t sub_1DF6C574C()
{
  result = qword_1EDC04620;
  if (!qword_1EDC04620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04620);
  }

  return result;
}

unint64_t sub_1DF6C57A4()
{
  result = qword_1EDC04628;
  if (!qword_1EDC04628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04628);
  }

  return result;
}

unint64_t sub_1DF6C57FC()
{
  result = qword_1EDC045B8;
  if (!qword_1EDC045B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045B8);
  }

  return result;
}

unint64_t sub_1DF6C5854()
{
  result = qword_1EDC045C0;
  if (!qword_1EDC045C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045C0);
  }

  return result;
}

unint64_t sub_1DF6C58AC()
{
  result = qword_1EDC04578;
  if (!qword_1EDC04578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04578);
  }

  return result;
}

unint64_t sub_1DF6C5904()
{
  result = qword_1EDC04580;
  if (!qword_1EDC04580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04580);
  }

  return result;
}

unint64_t sub_1DF6C595C()
{
  result = qword_1EDC04608;
  if (!qword_1EDC04608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04608);
  }

  return result;
}

unint64_t sub_1DF6C59B4()
{
  result = qword_1EDC04610;
  if (!qword_1EDC04610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04610);
  }

  return result;
}

unint64_t sub_1DF6C5A0C()
{
  result = qword_1EDC045E0;
  if (!qword_1EDC045E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045E0);
  }

  return result;
}

unint64_t sub_1DF6C5A64()
{
  result = qword_1EDC045E8;
  if (!qword_1EDC045E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045E8);
  }

  return result;
}

unint64_t sub_1DF6C5ABC()
{
  result = qword_1EDC045A0;
  if (!qword_1EDC045A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045A0);
  }

  return result;
}

unint64_t sub_1DF6C5B14()
{
  result = qword_1EDC045A8;
  if (!qword_1EDC045A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045A8);
  }

  return result;
}

uint64_t sub_1DF6C5B68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DF6FD000 == a2 || (sub_1DF6F6E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000 || (sub_1DF6F6E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DF6FD020 == a2 || (sub_1DF6F6E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DF6FD040 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DF6F6E2C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1DF6C5CD8()
{
  if (!qword_1ECE4DA30)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF6F584C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4DA30);
    }
  }
}

void sub_1DF6C5D58()
{
  if (!qword_1ECE4DA38)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF6F584C();
    sub_1DF69FAE8(&qword_1EDC03EB0, &qword_1EDC03EB8, 0x1E696C3D0);
    v0 = sub_1DF6F6D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DA38);
    }
  }
}

void sub_1DF6C5E18()
{
  if (!qword_1ECE4DA40)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF69EF80(255, &qword_1EDC03638, 0x1E696C3D8);
    sub_1DF69FAE8(&qword_1EDC03EB0, &qword_1EDC03EB8, 0x1E696C3D0);
    v0 = sub_1DF6F6D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DA40);
    }
  }
}

void sub_1DF6C5EE8()
{
  if (!qword_1ECE4DA48)
  {
    v0 = sub_1DF6F6D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DA48);
    }
  }
}

void sub_1DF6C5F4C()
{
  if (!qword_1ECE4DA50)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4DA50);
    }
  }
}

uint64_t HKHealthStore.makeObserverPublisher(queryDescriptors:debugIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v4;

  v5 = v4;
}

uint64_t HKHealthStore.ObserverPublisher.configuration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

void sub_1DF6C608C(int a1, int a2, int a3, int a4, id a5, void (*a6)(id *))
{
  if (a5)
  {
    v8 = a5;
    v9 = 2;
    v7 = a5;
    a6(&v8);
    sub_1DF6C65D8(v8, v9);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    a6(&v8);
  }
}

uint64_t sub_1DF6C6100@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1DF6C6150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6C64EC();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

uint64_t sub_1DF6C61B4(uint64_t a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF6C6570();
    v7 = sub_1DF6F672C();
  }

  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;

  v13 = a2;
  v14 = a5;
  v10(v13, v7, sub_1DF6C6560, v12, a5);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE17ObserverPublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0mG6ResultOyytGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = objc_allocWithZone(MEMORY[0x1E696C2E8]);
  sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);

  v10 = sub_1DF6F659C();
  v16[4] = sub_1DF6C6540;
  v16[5] = v8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DF6C61B4;
  v16[3] = &block_descriptor_6;
  v11 = _Block_copy(v16);
  v12 = [v9 initWithQueryDescriptors:v10 updateHandler:v11];

  _Block_release(v11);

  v13 = v12;
  if (v7)
  {
    v14 = sub_1DF6F63BC();
  }

  else
  {
    v14 = 0;
  }

  [v12 setDebugIdentifier_];

  return v12;
}

unint64_t sub_1DF6C6450(uint64_t a1)
{
  result = sub_1DF6C6478();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6C6478()
{
  result = qword_1EDC03E98;
  if (!qword_1EDC03E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E98);
  }

  return result;
}

unint64_t sub_1DF6C64EC()
{
  result = qword_1EDC03E90;
  if (!qword_1EDC03E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E90);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6C6570()
{
  result = qword_1EDC03EB0;
  if (!qword_1EDC03EB0)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03EB0);
  }

  return result;
}

void sub_1DF6C65D8(id a1, char a2)
{
  if (a2 == 2)
  {
  }
}

void *DarwinNotificationObserverToken.__allocating_init(notificationName:queue:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1DF6BBC08();
  v9 = swift_allocObject();
  *(v9 + 16) = 0xFFFFFFFFLL;
  v8[2] = a1;
  v8[3] = v9;
  v8[4] = a2;

  DarwinNotificationObserverToken.beginObservation(handler:)(a3, a4);

  return v8;
}

Swift::Void __swiftcall DarwinNotificationObserverToken.cancel()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
    v1[4]._os_unfair_lock_opaque = -1;
  }

  os_unfair_lock_unlock(v1 + 5);
}

void DarwinNotificationObserverToken.beginObservation(handler:)(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  out_token = -1;
  v5 = v2[2];
  v6 = v2[4];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v11[4] = sub_1DF6C68D8;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DF6C6900;
  v11[3] = &block_descriptor_7;
  v8 = _Block_copy(v11);

  notify_register_dispatch(v5, &out_token, v6, v8);
  _Block_release(v8);
  LODWORD(a2) = out_token;
  v9 = v2[3];
  os_unfair_lock_lock(v9 + 5);
  v9[4]._os_unfair_lock_opaque = a2;
  os_unfair_lock_unlock(v9 + 5);
  v10 = *MEMORY[0x1E69E9840];
}

void *DarwinNotificationObserverToken.__allocating_init(notificationName:queue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1DF6BBC08();
  v5 = swift_allocObject();
  *(v5 + 16) = 0xFFFFFFFFLL;
  v4[2] = a1;
  v4[3] = v5;
  v4[4] = a2;
  return v4;
}

void *DarwinNotificationObserverToken.init(notificationName:queue:)(uint64_t a1, uint64_t a2)
{
  sub_1DF6BBC08();
  v5 = swift_allocObject();
  *(v5 + 16) = 0xFFFFFFFFLL;
  v2[2] = a1;
  v2[3] = v5;
  v2[4] = a2;
  return v2;
}

uint64_t sub_1DF6C68D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DF6C6900(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DarwinNotificationObserverToken.deinit()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
    v1[4]._os_unfair_lock_opaque = -1;
  }

  os_unfair_lock_unlock(v1 + 5);

  return v0;
}

uint64_t DarwinNotificationObserverToken.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
    v1[4]._os_unfair_lock_opaque = -1;
  }

  os_unfair_lock_unlock(v1 + 5);
  v3 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall PostDarwinNotification(name:)(Swift::String name)
{
  v1 = sub_1DF6F642C();
  notify_post((v1 + 32));
}

void sub_1DF6C6AF8(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  if (*(v3 + 25) == 1)
  {
    *(v3 + 25) = 0;
    swift_beginAccess();
    v8 = *(v3 + 32);
    *(v3 + 32) = a1;
    v9 = a1;
    sub_1DF6C74E8(v8);
    v10 = swift_beginAccess();
    v11 = *(v3 + 40);
    *(v3 + 40) = 0;
    LOBYTE(v8) = *(v3 + 48);
    *(v3 + 48) = 2;
    (*(*v3 + 408))(v10);
    os_unfair_lock_unlock(v7 + 4);
    MEMORY[0x1EEE9AC00](v12);
    a3(a2);
    sub_1DF6B5A20(v11, v8);
  }

  else
  {

    os_unfair_lock_unlock(v7 + 4);
  }
}

uint64_t HKHealthStore.sharedSummaryTransactionPublisher()()
{
  sub_1DF6C6E4C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s38SharedSummaryTransactionQueryPublisherCMa();
  v7 = swift_allocObject();
  *(v7 + 96) = 0;
  *(v7 + 80) = v0;
  *(v7 + 88) = 0;
  v11[1] = sub_1DF6ABB00(0);
  sub_1DF6C6EF8();
  sub_1DF6C6F68();
  sub_1DF6C7434(&qword_1EDC04450, sub_1DF6C6EF8);
  v8 = v0;
  sub_1DF6F5FFC();

  sub_1DF6C7434(&qword_1EDC040F0, sub_1DF6C6E4C);
  v9 = sub_1DF6F5FEC();
  (*(v3 + 8))(v6, v2);
  return v9;
}

void sub_1DF6C6E4C()
{
  if (!qword_1EDC040E8)
  {
    sub_1DF6C6EF8();
    sub_1DF6C6F68();
    sub_1DF6C7434(&qword_1EDC04450, sub_1DF6C6EF8);
    v0 = sub_1DF6F5DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC040E8);
    }
  }
}

void sub_1DF6C6EF8()
{
  if (!qword_1EDC04448)
  {
    sub_1DF6C6F68();
    sub_1DF69F1E4();
    PublisherBase = type metadata accessor for QueryPublisherBase();
    if (!v1)
    {
      atomic_store(PublisherBase, &qword_1EDC04448);
    }
  }
}

void sub_1DF6C6F68()
{
  if (!qword_1EDC03F10)
  {
    sub_1DF6C6FC0();
    v0 = sub_1DF6F663C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03F10);
    }
  }
}

unint64_t sub_1DF6C6FC0()
{
  result = qword_1EDC03610;
  if (!qword_1EDC03610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03610);
  }

  return result;
}

uint64_t sub_1DF6C700C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 96) = 0;
  *(v2 + 80) = a1;
  *(v2 + 88) = 0;
  return sub_1DF6ABB00(0);
}

uint64_t _s38SharedSummaryTransactionQueryPublisherCMa()
{
  result = qword_1EDC03848;
  if (!qword_1EDC03848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DF6C709C()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = objc_allocWithZone(MEMORY[0x1E696C420]);
  v11 = sub_1DF6C757C;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1DF6C7324;
  v10 = &block_descriptor_8;
  v2 = _Block_copy(&v7);

  v3 = [v1 initWithHandler_];
  _Block_release(v2);

  v4 = swift_allocObject();
  swift_weakInit();
  v11 = sub_1DF6C74CC;
  v12 = v4;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1DF6C7324;
  v10 = &block_descriptor_17;
  v5 = _Block_copy(&v7);

  [v3 setUpdateHandler_];
  _Block_release(v5);
  return v3;
}

void sub_1DF6C7254(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a3)
    {
      v5 = a3;
      v6 = a3;
      sub_1DF6C6AF8(a3, sub_1DF6C7584, sub_1DF6F4258);
    }

    else
    {
      if (a2)
      {
        sub_1DF6F3D24(a2);
      }
    }
  }
}

uint64_t sub_1DF6C7324(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1DF6C6FC0();
    v5 = sub_1DF6F65AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_1DF6C73CC()
{
  if (*(v0 + 88))
  {
    [*(v0 + 80) stopQuery_];
  }

  v1 = sub_1DF6F5124();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6C7434(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6C74E8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t HKDateRangeQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF6F613C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HKDateRangeQueryDescriptor.queryAttributes.setter(uint64_t a1)
{
  v3 = sub_1DF6F613C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HKDateRangeQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6C76BC, 0, 0);
}

uint64_t sub_1DF6C76BC()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_1DF6C7850;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = objc_allocWithZone(MEMORY[0x1E696C620]);
  v0[14] = sub_1DF6C7AE0;
  v0[15] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF6C8924;
  v0[13] = &block_descriptor_9;
  v6 = _Block_copy(v0 + 10);
  v7 = v2;
  v8 = [v5 initWithDateIntervalHandler_];
  _Block_release(v6);
  v9 = v0[15];

  sub_1DF6F699C();
  [v7 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF6C7850()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 128);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_1DF6C7990(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF69FB2C(&qword_1ECE4D450, type metadata accessor for HKError);
      sub_1DF6F599C();
      v9 = v12;
    }

    sub_1DF69F1E4();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1DF6C7AE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DF6B76D4;

  return HKDateRangeQueryDescriptor.result(for:)(a2);
}

uint64_t HKDateRangeQueryDescriptor.Results.Iterator.next()()
{
  v1 = *(MEMORY[0x1E69E87B0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  sub_1DF6C9204(0, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  *v2 = v0;
  v2[1] = sub_1DF6C7C40;

  return MEMORY[0x1EEE6DB98](v0 + 16, v3);
}

uint64_t sub_1DF6C7C40()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1DF6C7D70;
  }

  else
  {
    v3 = sub_1DF6C7D54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF6C7D88(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = *(MEMORY[0x1E69E87B0] + 4);
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  sub_1DF6C9204(0, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  *v3 = v1;
  v3[1] = sub_1DF6C7E4C;

  return MEMORY[0x1EEE6DB98](v1 + 16, v4);
}

uint64_t sub_1DF6C7E4C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1DF6C7F80;
  }

  else
  {
    v3 = sub_1DF6C7F60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF6C7F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_1DF6C8050;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_1DF6C8050()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v15 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 40);
      v6 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_1DF6F665C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1DF6C8204;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      swift_getObjectType();
      v7 = sub_1DF6F665C();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1DF6C81E0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1DF6C8204()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[3] = v1;
  sub_1DF69F1E4();
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t HKDateRangeQueryDescriptor.Results.makeAsyncIterator()()
{
  sub_1DF6C8B30();

  return sub_1DF6F617C();
}

uint64_t sub_1DF6C82D4()
{
  sub_1DF6C8B30();
  sub_1DF6F617C();

  return sub_1DF6C9104(v0);
}

uint64_t HKDateRangeQueryDescriptor.results(for:)(void *a1)
{
  v2 = v1;
  Descriptor = type metadata accessor for HKDateRangeQueryDescriptor(0);
  v5 = *(Descriptor - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  sub_1DF6C8BA8(v2, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1DF6C8C0C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1DF6C8A38();
  v9 = a1;
  return sub_1DF6F618C();
}

id sub_1DF6C8434(uint64_t a1)
{
  sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = aBlock - v6;
  (*(v4 + 16))(aBlock - v6, a1, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v7, v3);
  v10 = objc_allocWithZone(MEMORY[0x1E696C620]);
  aBlock[4] = sub_1DF6C9160;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6C8924;
  aBlock[3] = &block_descriptor_41;
  v11 = _Block_copy(aBlock);
  v12 = [v10 initWithDateIntervalHandler_];
  _Block_release(v11);

  v13 = v12;
  sub_1DF6F699C();

  return v13;
}

uint64_t sub_1DF6C8620(uint64_t a1, void *a2, void *a3)
{
  sub_1DF6C9204(0, &qword_1ECE4DAB8, MEMORY[0x1E69E8780]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  if (a2)
  {
    v15 = a2;
    sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);

    sub_1DF6F66CC();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v12 = a3;
    if (!a3)
    {
      type metadata accessor for HKError(0);
      v14 = 0;
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF69FB2C(&qword_1ECE4D450, type metadata accessor for HKError);
      sub_1DF6F599C();
      v12 = v15;
    }

    v15 = v12;
    v13 = a3;
    sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);
    return sub_1DF6F66DC();
  }
}

uint64_t sub_1DF6C8810(void *a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DF6C8BA8(v5, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1DF6C8C0C(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1DF6C8A38();
  v8 = a1;
  return sub_1DF6F618C();
}

uint64_t sub_1DF6C8924(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1DF6C8AE4();
    sub_1DF6F584C();
    sub_1DF69FB2C(&qword_1EDC03EB0, sub_1DF6C8AE4);
    v5 = sub_1DF6F62AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6C8A38()
{
  if (!qword_1ECE4DA60)
  {
    sub_1DF6C8AE4();
    sub_1DF6F584C();
    sub_1DF69FB2C(&qword_1EDC03EB0, sub_1DF6C8AE4);
    v0 = sub_1DF6F62BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DA60);
    }
  }
}

unint64_t sub_1DF6C8AE4()
{
  result = qword_1EDC03EB8;
  if (!qword_1EDC03EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03EB8);
  }

  return result;
}

void sub_1DF6C8B30()
{
  if (!qword_1ECE4DA68)
  {
    sub_1DF6C8A38();
    v0 = sub_1DF6F619C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DA68);
    }
  }
}

uint64_t sub_1DF6C8BA8(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for HKDateRangeQueryDescriptor(0);
  (*(*(Descriptor - 8) + 16))(a2, a1, Descriptor);
  return a2;
}

uint64_t sub_1DF6C8C0C(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for HKDateRangeQueryDescriptor(0);
  (*(*(Descriptor - 8) + 32))(a2, a1, Descriptor);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DF6C8EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DF6C8F40()
{
  sub_1DF6C9204(319, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(type metadata accessor for HKDateRangeQueryDescriptor(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1DF6F613C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_1DF6C9094(uint64_t a1)
{
  v2 = *(*(type metadata accessor for HKDateRangeQueryDescriptor(0) - 8) + 80);

  return sub_1DF6C8434(a1);
}

uint64_t sub_1DF6C9104(uint64_t a1)
{
  v2 = type metadata accessor for HKDateRangeQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF6C9160(uint64_t a1, void *a2, void *a3)
{
  sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);
  v7 = *(*(v6 - 8) + 80);

  return sub_1DF6C8620(a1, a2, a3);
}

void sub_1DF6C9204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_1DF6C8A38();
    v7 = v6;
    v8 = sub_1DF69F1E4();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t RelativeDate.hashValue.getter(unsigned __int8 a1)
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](a1);
  return sub_1DF6F6F2C();
}

uint64_t RelativeDate.init(day:today:)(char *a1, char *a2)
{
  v4 = sub_1DF6F627C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  sub_1DF6F623C();
  sub_1DF6F620C();
  v12 = sub_1DF6F621C();
  v13 = *(v5 + 8);
  v13(v9, v4);
  if (v12)
  {
    v13(a2, v4);
    v13(a1, v4);
    v13(v11, v4);
    return 0;
  }

  else
  {
    sub_1DF6F620C();
    sub_1DF6C94F0();
    v15 = sub_1DF6F633C();
    v13(a2, v4);
    v13(a1, v4);
    v13(v9, v4);
    v13(v11, v4);
    if (v15)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

unint64_t sub_1DF6C94F0()
{
  result = qword_1ECE4DAC0;
  if (!qword_1ECE4DAC0)
  {
    sub_1DF6F627C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DAC0);
  }

  return result;
}

unint64_t sub_1DF6C954C()
{
  result = qword_1ECE4DAC8;
  if (!qword_1ECE4DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DAC8);
  }

  return result;
}

uint64_t sub_1DF6C97F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Comparable.clamped(within:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6F6E5C();
  v8 = a1 + *(sub_1DF6F639C() + 36);
  sub_1DF6F6E6C();
  return (*(v4 + 8))(v7, a2);
}

uint64_t DownstreamHandlerSubscription.sendValueToDownstreamIfNeeded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v54 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v45 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for DownstreamHandlerSubscriptionState();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v52 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v50 = *(a3 + 32);
  v50(v58, a2, a3);
  v17 = v59;
  v16 = v60;
  __swift_project_boxed_opaque_existential_0(v58, v59);
  v18 = v17;
  v19 = v4;
  (*(v16 + 8))(v18, v16);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v20 = *(a3 + 40);
  v57 = a3;
  v20(a2, a3);
  v49 = v10;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive();
    v22 = *(v21 - 8);
    v23 = v54;
    (*(v22 + 32))(v54, v15, v21);
    (*(v22 + 56))(v23, 0, 1, v21);
    v24 = v57;
LABEL_21:
    type metadata accessor for DownstreamHandlerSendFailureReason();
    swift_getWitnessTable();
    sub_1DF6F6F6C();
    swift_storeEnumTagMultiPayload();
    return sub_1DF6CA9A0(v19, a2, v24);
  }

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *&v15[*(TupleTypeMetadata2 + 48)];
  v27 = v53;
  (*(v53 + 32))(v55, v15, AssociatedTypeWitness);
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  v24 = v57;
  if ((result & 1) == 0)
  {
    if (v26 < 0)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (!v26)
    {
      (*(v27 + 8))(v55, AssociatedTypeWitness);
      v44 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive();
      (*(*(v44 - 8) + 56))(v54, 1, 1, v44);
      goto LABEL_21;
    }
  }

  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  v47 = TupleTypeMetadata2;
  v48 = AssociatedTypeWitness;
  if (result)
  {
    v46 = sub_1DF6F5F0C();
    v29 = v55;
    goto LABEL_11;
  }

  if (v26 < 0)
  {
    goto LABEL_23;
  }

  v29 = v55;
  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v46 = v26 - 1;
LABEL_11:
  v30 = v50;
  v50(v58, a2, v24);
  v31 = v59;
  v32 = v60;
  __swift_project_boxed_opaque_existential_0(v58, v59);
  (*(v32 + 16))(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v33 = v48;
  v51 = sub_1DF6F5E9C();
  v34 = v19;
  v30(v58, a2, v57);
  v35 = v59;
  v36 = v60;
  __swift_project_boxed_opaque_existential_0(v58, v59);
  (*(v36 + 8))(v35, v36);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v38 = v52;
  v37 = v53;
  (*(v53 + 16))(v52, v29, v33);
  sub_1DF6F5F0C();
  v39 = v46;
  v40 = sub_1DF6F5EEC();
  v41 = sub_1DF6F5F0C();
  if (v40)
  {
    v19 = v34;
    v42 = v55;
LABEL_20:
    *&v38[*(v47 + 48)] = v41;
    swift_storeEnumTagMultiPayload();
    v24 = v57;
    (*(v57 + 48))(v38, a2, v57);
    (*(v37 + 8))(v42, v48);
    goto LABEL_21;
  }

  v43 = v51;
  result = sub_1DF6F5EEC();
  v19 = v34;
  v42 = v55;
  if (result)
  {
LABEL_17:
    v41 = sub_1DF6F5F0C();
    goto LABEL_20;
  }

  if ((v43 | v39) < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v39 + v43;
  if (__OFADD__(v39, v43))
  {
    goto LABEL_17;
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t DownstreamHandlerSubscription.sendCompletionToDownstreamIfNeeded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v50 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  v48 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v41 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DownstreamHandlerSubscriptionState();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = *(a3 + 32);
  v20(v54, a2, a3);
  v21 = v55;
  v22 = v56;
  __swift_project_boxed_opaque_existential_0(v54, v55);
  (*(v22 + 8))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v23 = a3;
  (*(a3 + 40))(a2, a3);
  v45 = a2;
  v46 = v4;
  v42 = v20;
  v20(v54, a2, a3);
  v24 = v55;
  v25 = v56;
  __swift_project_boxed_opaque_existential_0(v54, v55);
  (*(v25 + 16))(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v26 = v47;
  v27 = *(v52 + 16);
  v49 = v19;
  v27(v17, v19, v53);
  v28 = v48;
  if (swift_getEnumCaseMultiPayload() == 1 && (*(v28 + 48))(v17, 1, v26) == 1)
  {
    (*(v52 + 8))(v49, v53);
    v29 = v50;
    (*(v28 + 56))(v50, 1, 1, v26);
    v30 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }

  else
  {
    v31 = v41;
    (*(v28 + 32))(v41, v17, v26);
    sub_1DF6F5E7C();
    (*(v28 + 8))(v31, v26);
    v32 = v45;
    v33 = v42;
    v42(v54, v45, v23);
    v34 = v55;
    v35 = v56;
    __swift_project_boxed_opaque_existential_0(v54, v55);
    (*(v35 + 8))(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v36 = v43;
    (*(v28 + 56))(v43, 1, 1, v26);
    v37 = v53;
    swift_storeEnumTagMultiPayload();
    (*(v23 + 48))(v36, v32, v23);
    v33(v54, v32, v23);
    v38 = v55;
    v39 = v56;
    __swift_project_boxed_opaque_existential_0(v54, v55);
    (*(v39 + 16))(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(v54);
    (*(v23 + 88))(v32, v23);
    (*(v52 + 8))(v49, v37);
  }

  type metadata accessor for DownstreamHandlerSendFailureReason();
  swift_getWitnessTable();
  sub_1DF6F6F6C();
  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall DownstreamHandlerSubscription.cancel()()
{
  v2 = v1;
  v3 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for DownstreamHandlerSubscriptionState();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v25 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v26 = *(v2 + 32);
  v26(v27, v3, v2);
  v12 = v28;
  v11 = v29;
  __swift_project_boxed_opaque_existential_0(v27, v28);
  (*(v11 + 8))(v12, v11);
  __swift_destroy_boxed_opaque_existential_1(v27);
  (*(v2 + 40))(v3, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(AssociatedTypeWitness - 8);
    v14 = (*(v13 + 48))(v10, 1, AssociatedTypeWitness);
    v15 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive();
    (*(*(v15 - 8) + 8))(v10, v15);
    if (v14 == 1)
    {
      v26(v27, v3, v2);
      v16 = v28;
      v17 = v29;
      __swift_project_boxed_opaque_existential_0(v27, v28);
      (*(v17 + 16))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v27);
      return;
    }
  }

  else
  {
    (*(v23 + 8))(v10, v5);
    v13 = *(AssociatedTypeWitness - 8);
  }

  v18 = *(v13 + 56);
  v19 = v25;
  v18(v25, 1, 1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  (*(v2 + 48))(v19, v3, v2);
  v26(v27, v3, v2);
  v20 = v28;
  v21 = v29;
  __swift_project_boxed_opaque_existential_0(v27, v28);
  (*(v21 + 16))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v27);
  (*(v2 + 88))(v3, v2);
}

uint64_t static Result<>.success.getter()
{
  sub_1DF6F6F6C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DF6CA9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(v6, a2, a3);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_0(v6, v7);
  (*(v4 + 16))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1DF6CAA28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_30;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_30;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 <= 3)
        {
          v14 = v8;
        }

        else
        {
          v14 = 4;
        }

        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = *a1;
          }
        }

        else if (v14 == 1)
        {
          v15 = *a1;
        }

        else
        {
          v15 = *a1;
        }
      }

      else
      {
        v15 = 0;
      }

      return v7 + (v15 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_1DF6CABB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = v10 - 1;
  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v17 = ~v11 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
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

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v23 = *(v7 + 56);

      v23();
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v20 = ~(-1 << (8 * v9));
    }

    else
    {
      v20 = -1;
    }

    if (v9)
    {
      v21 = v20 & (a2 - v10);
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v9);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}