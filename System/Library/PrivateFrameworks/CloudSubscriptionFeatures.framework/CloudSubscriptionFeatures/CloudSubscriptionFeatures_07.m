uint64_t sub_1DF526944(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382C0, &qword_1DF56C588);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5276D8();
  sub_1DF5652A4();
  sub_1DF564494();
  sub_1DF52772C(&qword_1ED955120, MEMORY[0x1E6969530]);
  sub_1DF565074();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DF526ABC()
{
  if (*v0)
  {
    result = 0x496E6F6973736573;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1DF526B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001DF5728E0 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DF5650D4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DF526BF0(uint64_t a1)
{
  v2 = sub_1DF52744C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF526C2C(uint64_t a1)
{
  v2 = sub_1DF52744C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF526C68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DF5272A0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DF526CBC()
{
  if (*v0)
  {
    result = 0x496E6F6973736573;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1DF526CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF526DD8(uint64_t a1)
{
  v2 = sub_1DF5274A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF526E14(uint64_t a1)
{
  v2 = sub_1DF5274A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF526E50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DF5274F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DF526EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF526F38(uint64_t a1)
{
  v2 = sub_1DF52724C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF526F74(uint64_t a1)
{
  v2 = sub_1DF52724C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF526FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38290, &qword_1DF56C560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF52724C();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_1DF564FD4();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_1DF527114(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38288, &qword_1DF56C558);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF52724C();
  sub_1DF5652A4();
  sub_1DF565064();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF52724C()
{
  result = qword_1ED954B58;
  if (!qword_1ED954B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B58);
  }

  return result;
}

uint64_t sub_1DF5272A0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38298, &qword_1DF56C568);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  sub_1DF52744C();
  sub_1DF565284();
  if (!v1)
  {
    v10[15] = 0;
    LOBYTE(v8) = sub_1DF564FD4();
    v10[14] = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8 & 1;
}

unint64_t sub_1DF52744C()
{
  result = qword_1ED955108;
  if (!qword_1ED955108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED955108);
  }

  return result;
}

unint64_t sub_1DF5274A0()
{
  result = qword_1ECE382B0;
  if (!qword_1ECE382B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382B0);
  }

  return result;
}

uint64_t sub_1DF5274F4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE382B8, &qword_1DF56C580);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5274A0();
  sub_1DF565284();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DF564FC4();
    v11 = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1DF5276D8()
{
  result = qword_1ECE376A8;
  if (!qword_1ECE376A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376A8);
  }

  return result;
}

uint64_t sub_1DF52772C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DF5277B8()
{
  result = qword_1ECE382D0;
  if (!qword_1ECE382D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382D0);
  }

  return result;
}

unint64_t sub_1DF527810()
{
  result = qword_1ECE382D8;
  if (!qword_1ECE382D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382D8);
  }

  return result;
}

unint64_t sub_1DF527868()
{
  result = qword_1ECE382E0;
  if (!qword_1ECE382E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382E0);
  }

  return result;
}

unint64_t sub_1DF5278C0()
{
  result = qword_1ECE382E8;
  if (!qword_1ECE382E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382E8);
  }

  return result;
}

unint64_t sub_1DF527918()
{
  result = qword_1ECE37698;
  if (!qword_1ECE37698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37698);
  }

  return result;
}

unint64_t sub_1DF527970()
{
  result = qword_1ECE376A0;
  if (!qword_1ECE376A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376A0);
  }

  return result;
}

unint64_t sub_1DF5279C8()
{
  result = qword_1ECE382F0;
  if (!qword_1ECE382F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382F0);
  }

  return result;
}

unint64_t sub_1DF527A20()
{
  result = qword_1ECE382F8;
  if (!qword_1ECE382F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE382F8);
  }

  return result;
}

unint64_t sub_1DF527A78()
{
  result = qword_1ED9550F8;
  if (!qword_1ED9550F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9550F8);
  }

  return result;
}

unint64_t sub_1DF527AD0()
{
  result = qword_1ED955100;
  if (!qword_1ED955100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED955100);
  }

  return result;
}

unint64_t sub_1DF527B28()
{
  result = qword_1ED954B48;
  if (!qword_1ED954B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B48);
  }

  return result;
}

unint64_t sub_1DF527B80()
{
  result = qword_1ED954B50;
  if (!qword_1ED954B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954B50);
  }

  return result;
}

CloudSubscriptionFeatures::FollowUp::Feature_optional __swiftcall FollowUp.Feature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF564F54();

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

unint64_t FollowUp.Feature.cfuID.getter()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1DF527CD8(uint64_t a1, uint64_t a2, void (*a3)(_WORD *, uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8 + 16;
  (*(v6 + 16))(v20 - v8 + 16, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = sub_1DF50AF70(0, sub_1DF530480, v11);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956398);
  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1DF47EF6C(0xD000000000000023, 0x80000001DF574470, v20);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, v20);
    _os_log_impl(&dword_1DF47C000, v14, v15, "Sending %s request to %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  a3(v12, a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF52819C(uint64_t a1, uint64_t a2, void (*a3)(_WORD *, uint64_t), uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)())
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = *(v12 + 16);
  v27 = a1;
  v16(&v26 - v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  v19 = sub_1DF50AF70(0, a8, v18);

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v20 = sub_1DF5647B4();
  __swift_project_value_buffer(v20, qword_1ED956398);
  v21 = sub_1DF564794();
  v22 = sub_1DF564C44();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1DF47EF6C(0xD000000000000023, 0x80000001DF574470, v28);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, v28);
    _os_log_impl(&dword_1DF47C000, v21, v22, "Sending %s request to %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v24, -1, -1);
    MEMORY[0x1E12D75F0](v23, -1, -1);
  }

  a3(v19, v27);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF5285F4(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000023, 0x80000001DF574470, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  return sub_1DF564B14();
}

uint64_t sub_1DF5287F0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF5647B4();
  __swift_project_value_buffer(v7, qword_1ED956398);
  v8 = a1;
  v9 = sub_1DF564794();
  v10 = sub_1DF564C24();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DF47EF6C(0xD000000000000023, 0x80000001DF574470, &v19);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1DF5651B4();
    v15 = sub_1DF47EF6C(v13, v14, &v19);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v9, v10, "remote proxy error in %s: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v12, -1, -1);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  sub_1DF498474();
  v16 = swift_allocError();
  *v17 = 1;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1DF564B14();
}

uint64_t FollowUp.Feature.rawValue.getter()
{
  if (*v0)
  {
    return 7169121;
  }

  else
  {
    return 7169633;
  }
}

CloudSubscriptionFeatures::FollowUp::WaitlistCFUEligibilityResult_optional __swiftcall FollowUp.WaitlistCFUEligibilityResult.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id sub_1DF528A28(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  sub_1DF528B00(a1);
  v2 = sub_1DF564A94();

  v7[0] = 0;
  v3 = [v1 clearPendingFollowUpItemsWithUniqueIdentifiers:v2 error:v7];

  if (v3)
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1DF5642F4();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF528B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCED0(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DF4BCED0((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_1DF49A88C(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1DF528C24(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([v1 postFollowUpItem:a1 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1DF5642F4();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF528CF4()
{
  v2 = *v0;
  v3 = sub_1DF528D70();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_1DF528D70()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v2 = [v0 pendingFollowUpItems_];
  v3 = v9[0];
  if (v2)
  {
    v4 = v2;
    sub_1DF4BECB0(0, &qword_1ED954D30, 0x1E6997AD0);
    v1 = sub_1DF564AA4();
    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    sub_1DF5642F4();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t FollowUpError.hashValue.getter()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](v1);
  return sub_1DF565264();
}

unint64_t FollowUp.WaitlistCFUEligibilityResult.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x656C626967696C65;
  if (v1 == 4)
  {
    v2 = 0xD000000000000023;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000014;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DF528FB0()
{
  v1 = *v0;
  v2 = 0x656C626967696C65;
  if (v1 == 4)
  {
    v2 = 0xD000000000000023;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000014;
  if (*v0)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF52907C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DF567CF0;
  *(v1 + 32) = 0x746E6553736168;
  *(v1 + 40) = 0xE700000000000000;
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];
    v4 = v0[4];

    v5 = 2;
    v1 = sub_1DF4A9DAC(1, 2, 1, v1);
    *(v1 + 16) = 2;
    *(v1 + 48) = v3;
    *(v1 + 56) = v2;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[6];
  if (v6)
  {
    v7 = v0[5];
    v8 = *(v1 + 24);

    if (v5 >= v8 >> 1)
    {
      v1 = sub_1DF4A9DAC((v8 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 16) = v5 + 1;
    v9 = v1 + 16 * v5;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;
  }

  else
  {
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF5647B4();
    __swift_project_value_buffer(v10, qword_1ED955C68);
    v11 = sub_1DF564794();
    v12 = sub_1DF564C44();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DF47C000, v11, v12, "Account DSID is nil. CFU hasSent will be keyed on locale only", v13, 2u);
      MEMORY[0x1E12D75F0](v13, -1, -1);
    }
  }

  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  sub_1DF48B2B4(&qword_1ED9551C0, &qword_1ECE37A30, &qword_1DF5676D0);
  v14 = sub_1DF5648C4();
  v16 = v15;

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED955C68);

  v18 = sub_1DF564794();
  v19 = sub_1DF564C44();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1DF47EF6C(v14, v16, &v23);
    _os_log_impl(&dword_1DF47C000, v18, v19, "Returning CFU hasPosted key: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1E12D75F0](v21, -1, -1);
    MEMORY[0x1E12D75F0](v20, -1, -1);
  }

  return v14;
}

uint64_t sub_1DF5293CC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v14, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v15)
  {
    sub_1DF47E390(&v14, v16);
    v3 = v17;
    v4 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    (*(v4 + 24))(&v14, 0x41746E6553736168, 0xEA00000000004D44, v3, v4);
    if (v15)
    {
      v5 = sub_1DF564494();
      v6 = swift_dynamicCast();
      (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }

    else
    {
      sub_1DF47E5B4(&v14, &qword_1ECE378F0, &qword_1DF5686F0);
      v13 = sub_1DF564494();
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_1DF47E5B4(&v14, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED955C68);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v8, v9, "Unable to init UserDefaults, will not read hasSentADMCFU and will return false. User may see CFU erroneously.", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v11 = sub_1DF564494();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_1DF529660(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v30, &qword_1ECE37CE0, &qword_1DF568B40);
  if (*(&v31 + 1))
  {
    sub_1DF47E390(&v30, v32);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF5647B4();
    __swift_project_value_buffer(v10, qword_1ED955C68);
    sub_1DF47E4CC(a1, v9, &qword_1ECE37A10, &qword_1DF567C00);

    v11 = sub_1DF564794();
    v12 = sub_1DF564C44();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v30 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1DF47EF6C(0x41746E6553736168, 0xEA00000000004D44, &v30);
      *(v13 + 12) = 2080;
      v15 = sub_1DF564CF4();
      v17 = v16;
      sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
      v18 = sub_1DF47EF6C(v15, v17, &v30);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1DF47C000, v11, v12, "Updating UserDefaults for key %s to value: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v14, -1, -1);
      MEMORY[0x1E12D75F0](v13, -1, -1);
    }

    else
    {

      sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
    }

    v24 = v33;
    v25 = v34;
    __swift_project_boxed_opaque_existential_0(v32, v33);
    sub_1DF47E4CC(a1, v7, &qword_1ECE37A10, &qword_1DF567C00);
    v26 = sub_1DF564494();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v7, 1, v26) == 1)
    {
      sub_1DF47E5B4(v7, &qword_1ECE37A10, &qword_1DF567C00);
      v30 = 0u;
      v31 = 0u;
    }

    else
    {
      *(&v31 + 1) = v26;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*(v27 + 32))(boxed_opaque_existential_1, v7, v26);
    }

    (*(v25 + 8))(&v30, 0x41746E6553736168, 0xEA00000000004D44, v24, v25);
    sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(&v30, &qword_1ECE378F0, &qword_1DF5686F0);
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    sub_1DF47E5B4(&v30, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DF5647B4();
    __swift_project_value_buffer(v19, qword_1ED955C68);
    v20 = sub_1DF564794();
    v21 = sub_1DF564C24();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DF47C000, v20, v21, "Unable to init UserDefaults, will not update hasSentADMCFU.", v22, 2u);
      MEMORY[0x1E12D75F0](v22, -1, -1);
    }

    return sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
  }
}

void (*sub_1DF529B48(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1DF5293CC(v4);
  return sub_1DF529C04;
}

uint64_t sub_1DF529C1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  sub_1DF47E4CC(a1, &v14 - v10, &qword_1ECE37A10, &qword_1DF567C00);
  v12 = *a2;
  return a5(v11);
}

uint64_t sub_1DF529CD0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v14, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v15)
  {
    sub_1DF47E390(&v14, v16);
    v3 = v16[4];
    __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    v4 = sub_1DF52907C();
    (*(v3 + 24))(&v14, v4);

    if (v15)
    {
      v5 = sub_1DF564494();
      v6 = swift_dynamicCast();
      (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }

    else
    {
      sub_1DF47E5B4(&v14, &qword_1ECE378F0, &qword_1DF5686F0);
      v13 = sub_1DF564494();
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_1DF47E5B4(&v14, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED955C68);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v8, v9, "Unable to init UserDefaults, will not read hasSeenCFU and will return false. User may see CFU erroneously.", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v11 = sub_1DF564494();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_1DF529F68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v37, &qword_1ECE37CE0, &qword_1DF568B40);
  if (*(&v38 + 1))
  {
    sub_1DF47E390(&v37, v39);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF5647B4();
    __swift_project_value_buffer(v10, qword_1ED955C68);
    sub_1DF47E4CC(a1, v9, &qword_1ECE37A10, &qword_1DF567C00);

    v11 = sub_1DF564794();
    v12 = sub_1DF564C44();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v36 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      *&v37 = v15;
      *v14 = 136315394;
      v16 = sub_1DF52907C();
      v18 = sub_1DF47EF6C(v16, v17, &v37);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = sub_1DF564CF4();
      v21 = v20;
      sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
      v22 = sub_1DF47EF6C(v19, v21, &v37);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1DF47C000, v11, v12, "Updating UserDefaults for key %s to value: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v15, -1, -1);
      v23 = v14;
      a1 = v36;
      MEMORY[0x1E12D75F0](v23, -1, -1);
    }

    else
    {

      sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
    }

    v29 = v40;
    v30 = v41;
    __swift_project_boxed_opaque_existential_0(v39, v40);
    sub_1DF47E4CC(a1, v7, &qword_1ECE37A10, &qword_1DF567C00);
    v31 = sub_1DF564494();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v7, 1, v31) == 1)
    {
      sub_1DF47E5B4(v7, &qword_1ECE37A10, &qword_1DF567C00);
      v37 = 0u;
      v38 = 0u;
    }

    else
    {
      *(&v38 + 1) = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
      (*(v32 + 32))(boxed_opaque_existential_1, v7, v31);
    }

    v34 = sub_1DF52907C();
    (*(v30 + 8))(&v37, v34, v35, v29, v30);

    sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(&v37, &qword_1ECE378F0, &qword_1DF5686F0);
    return __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    sub_1DF47E5B4(&v37, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v24 = sub_1DF5647B4();
    __swift_project_value_buffer(v24, qword_1ED955C68);
    v25 = sub_1DF564794();
    v26 = sub_1DF564C24();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DF47C000, v25, v26, "Unable to init UserDefaults, will not update hasSeenCFU.", v27, 2u);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }

    return sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
  }
}

void (*sub_1DF52A46C(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1DF529CD0(v4);
  return sub_1DF52A528;
}

void sub_1DF52A540(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (a2)
  {
    sub_1DF47E4CC(a1[2], v4, &qword_1ECE37A10, &qword_1DF567C00);
    a3(v4);
    sub_1DF47E5B4(v5, &qword_1ECE37A10, &qword_1DF567C00);
  }

  else
  {
    a3(a1[2]);
  }

  free(v5);

  free(v4);
}

uint64_t sub_1DF52A5E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v37[-v3];
  v5 = sub_1DF564494();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37[-v11];
  sub_1DF529CD0(v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v12, v4, v5);
    v17 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED955C68);
    (*(v6 + 16))(v10, v12, v5);
    v19 = v17;
    v20 = sub_1DF564794();
    v21 = sub_1DF564C44();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v22 = 136315138;
      v38 = v21;
      v23 = sub_1DF5643E4();
      v24 = [v19 stringFromDate_];

      v25 = sub_1DF564944();
      v27 = v26;

      v28 = *(v6 + 8);
      v28(v10, v5);
      v29 = sub_1DF47EF6C(v25, v27, &v40);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_1DF47C000, v20, v38, "User saw CFU at %s", v22, 0xCu);
      v30 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1E12D75F0](v30, -1, -1);
      MEMORY[0x1E12D75F0](v22, -1, -1);

      v28(v12, v5);
    }

    else
    {

      v36 = *(v6 + 8);
      v36(v10, v5);
      v36(v12, v5);
    }

    return 1;
  }

  sub_1DF47E5B4(v4, &qword_1ECE37A10, &qword_1DF567C00);
  if (!*(v0 + 48) && (sub_1DF52BF2C() & 1) != 0)
  {
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED955C68);
    v14 = sub_1DF564794();
    v15 = sub_1DF564C44();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DF47C000, v14, v15, "No value for hasSentCFU but previous user has seen CFU. Returning true.", v16, 2u);
      MEMORY[0x1E12D75F0](v16, -1, -1);
    }

    return 1;
  }

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v31 = sub_1DF5647B4();
  __swift_project_value_buffer(v31, qword_1ED955C68);
  v32 = sub_1DF564794();
  v33 = sub_1DF564C44();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1DF47C000, v32, v33, "User has not seen CFU.", v34, 2u);
    MEMORY[0x1E12D75F0](v34, -1, -1);
  }

  return 0;
}

void (*sub_1DF52AB20(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = sub_1DF52A5E8() & 1;
  return sub_1DF52ABB4;
}

uint64_t sub_1DF52ABCC(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = *a2;
  if (*a1 == 1)
  {
    sub_1DF564484();
    v13 = sub_1DF564494();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = sub_1DF564494();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  return a5(v11);
}

BOOL sub_1DF52ACE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v36[-v2];
  v4 = sub_1DF564494();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36[-v10];
  sub_1DF5293CC(v3);
  v12 = (*(v5 + 48))(v3, 1, v4);
  if (v12 == 1)
  {
    sub_1DF47E5B4(v3, &qword_1ECE37A10, &qword_1DF567C00);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v30 = sub_1DF5647B4();
    __swift_project_value_buffer(v30, qword_1ED955C68);
    v31 = sub_1DF564794();
    v32 = sub_1DF564C44();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DF47C000, v31, v32, "User has not seen CFU.", v33, 2u);
      MEMORY[0x1E12D75F0](v33, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    v13 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v14 = sub_1DF5647B4();
    __swift_project_value_buffer(v14, qword_1ED955C68);
    (*(v5 + 16))(v9, v11, v4);
    v15 = v13;
    v16 = sub_1DF564794();
    v17 = sub_1DF564C44();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v39 = v12;
      v19 = v18;
      v38 = swift_slowAlloc();
      v40 = v38;
      *v19 = 136315138;
      v20 = sub_1DF5643E4();
      v21 = [v15 stringFromDate_];
      v37 = v17;
      v22 = v21;

      v23 = sub_1DF564944();
      v25 = v24;

      v26 = *(v5 + 8);
      v26(v9, v4);
      v27 = sub_1DF47EF6C(v23, v25, &v40);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_1DF47C000, v16, v37, "User saw ADM CFU at %s", v19, 0xCu);
      v28 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1E12D75F0](v28, -1, -1);
      v29 = v19;
      v12 = v39;
      MEMORY[0x1E12D75F0](v29, -1, -1);

      v26(v11, v4);
    }

    else
    {

      v34 = *(v5 + 8);
      v34(v9, v4);
      v34(v11, v4);
    }
  }

  return v12 != 1;
}

uint64_t sub_1DF52B168(char a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  if (a1)
  {
    sub_1DF564484();
    v8 = sub_1DF564494();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1DF564494();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  return a2(v7);
}

void (*sub_1DF52B270(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = sub_1DF52ACE4();
  return sub_1DF52B304;
}

void sub_1DF52B31C(uint64_t *a1, uint64_t a2, void (*a3)(void *))
{
  v5 = a1[1];
  if (*(a1 + 16) == 1)
  {
    v6 = a1[1];
    sub_1DF564484();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *a1;
  v9 = sub_1DF564494();
  (*(*(v9 - 8) + 56))(v5, v7, 1, v9);
  a3(v5);

  free(v5);
}

uint64_t sub_1DF52B3D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  sub_1DF52B6DC(&v11 - v6);
  v9 = sub_1DF564494();
  LOBYTE(a1) = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
  result = sub_1DF47E5B4(v7, &qword_1ECE37A10, &qword_1DF567C00);
  *a2 = a1;
  return result;
}

BOOL sub_1DF52B4C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1DF52B6DC(&v7 - v2);
  v4 = sub_1DF564494();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_1DF47E5B4(v3, &qword_1ECE37A10, &qword_1DF567C00);
  return v5;
}

void (*sub_1DF52B5A8(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 8) = v4;
  sub_1DF52B6DC(v4);
  v6 = sub_1DF564494();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_1DF47E5B4(v5, &qword_1ECE37A10, &qword_1DF567C00);
  *(a1 + 16) = v7;
  return sub_1DF52B6A4;
}

void sub_1DF52B6A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1DF52FA2C();

  free(v1);
}

uint64_t sub_1DF52B6DC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v14, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v15)
  {
    sub_1DF47E390(&v14, v16);
    v3 = v17;
    v4 = v18;
    __swift_project_boxed_opaque_existential_0(v16, v17);
    (*(v4 + 24))(&v14, 0xD000000000000017, 0x80000001DF574A90, v3, v4);
    if (v15)
    {
      v5 = sub_1DF564494();
      v6 = swift_dynamicCast();
      (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }

    else
    {
      sub_1DF47E5B4(&v14, &qword_1ECE378F0, &qword_1DF5686F0);
      v13 = sub_1DF564494();
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_1DF47E5B4(&v14, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED955C68);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v8, v9, "Unable to init UserDefaults, will not read hasSentWaitlistCFUDate and will return false. Use may see CFU erroneously.", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    v11 = sub_1DF564494();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_1DF52B970(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, &v30, &qword_1ECE37CE0, &qword_1DF568B40);
  if (*(&v31 + 1))
  {
    sub_1DF47E390(&v30, v32);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF5647B4();
    __swift_project_value_buffer(v10, qword_1ED955C68);
    sub_1DF47E4CC(a1, v9, &qword_1ECE37A10, &qword_1DF567C00);

    v11 = sub_1DF564794();
    v12 = sub_1DF564C44();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v30 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574A90, &v30);
      *(v13 + 12) = 2082;
      v15 = sub_1DF564CF4();
      v17 = v16;
      sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
      v18 = sub_1DF47EF6C(v15, v17, &v30);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1DF47C000, v11, v12, "Updating UserDefaults for key %{public}s to value: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v14, -1, -1);
      MEMORY[0x1E12D75F0](v13, -1, -1);
    }

    else
    {

      sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
    }

    v24 = v33;
    v25 = v34;
    __swift_project_boxed_opaque_existential_0(v32, v33);
    sub_1DF47E4CC(a1, v7, &qword_1ECE37A10, &qword_1DF567C00);
    v26 = sub_1DF564494();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v7, 1, v26) == 1)
    {
      sub_1DF47E5B4(v7, &qword_1ECE37A10, &qword_1DF567C00);
      v30 = 0u;
      v31 = 0u;
    }

    else
    {
      *(&v31 + 1) = v26;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*(v27 + 32))(boxed_opaque_existential_1, v7, v26);
    }

    (*(v25 + 8))(&v30, 0xD000000000000017, 0x80000001DF574A90, v24, v25);
    sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(&v30, &qword_1ECE378F0, &qword_1DF5686F0);
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    sub_1DF47E5B4(&v30, &qword_1ECE37CE0, &qword_1DF568B40);
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DF5647B4();
    __swift_project_value_buffer(v19, qword_1ED955C68);
    v20 = sub_1DF564794();
    v21 = sub_1DF564C24();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DF47C000, v20, v21, "Unable to init UserDefaults, will not update hasSentWaitlistCFUDate.", v22, 2u);
      MEMORY[0x1E12D75F0](v22, -1, -1);
    }

    return sub_1DF47E5B4(a1, &qword_1ECE37A10, &qword_1DF567C00);
  }
}

void (*sub_1DF52BE58(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1DF52B6DC(v4);
  return sub_1DF52BF14;
}

uint64_t sub_1DF52BF2C()
{
  swift_beginAccess();
  sub_1DF47E4CC(v0 + 96, v27, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v28[1])
  {
    sub_1DF47FCEC(v27, v29);
    sub_1DF47E5B4(v27, &qword_1ECE37CE0, &qword_1DF568B40);
    v1 = v30;
    v2 = v31;
    __swift_project_boxed_opaque_existential_0(v29, v30);
    v3 = (*(v2 + 80))(0xD000000000000013, 0x80000001DF5709F0, v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v29);
    if (v3)
    {
      v4 = 1 << *(v3 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(v3 + 64);
      v7 = (v4 + 63) >> 6;

      v8 = 0;
      while (v6)
      {
        v9 = v8;
LABEL_12:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(v3 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_1DF47F24C(*(v3 + 56) + 32 * v11, v28);
        v27[0] = v13;
        v27[1] = v14;

        LOBYTE(v13) = sub_1DF52C36C(v13, v14, v28);
        sub_1DF47E5B4(v27, &qword_1ECE37CB8, &qword_1DF56A510);
        if (v13)
        {
          v15 = 1;
LABEL_20:

          if (qword_1ED9558B8 != -1)
          {
            swift_once();
          }

          v21 = sub_1DF5647B4();
          __swift_project_value_buffer(v21, qword_1ED955C68);
          v22 = sub_1DF564794();
          v23 = sub_1DF564C44();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v27[0] = v25;
            *v24 = 136315394;
            *(v24 + 4) = sub_1DF47EF6C(0xD000000000000015, 0x80000001DF574B70, v27);
            *(v24 + 12) = 1024;
            *(v24 + 14) = v15;
            _os_log_impl(&dword_1DF47C000, v22, v23, "%s returning %{BOOL}d", v24, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v25);
            MEMORY[0x1E12D75F0](v25, -1, -1);
            MEMORY[0x1E12D75F0](v24, -1, -1);
          }

          return v15;
        }
      }

      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v15 = 0;
          goto LABEL_20;
        }

        v6 = *(v3 + 64 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    sub_1DF47E5B4(v27, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  if (qword_1ED9558B8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v16 = sub_1DF5647B4();
  __swift_project_value_buffer(v16, qword_1ED955C68);
  v17 = sub_1DF564794();
  v18 = sub_1DF564C44();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1DF47EF6C(0xD000000000000013, 0x80000001DF5709F0, v27);
    _os_log_impl(&dword_1DF47C000, v17, v18, "No persistent domain for suite %s, no users have been sent CFU.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF52C36C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44[-v8];
  v10 = sub_1DF564494();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44[-v16];
  sub_1DF47F24C(a3, v48);
  v18 = swift_dynamicCast();
  v19 = *(v11 + 56);
  if (v18)
  {
    v19(v9, 0, 1, v10);
    (*(v11 + 32))(v17, v9, v10);
    v20 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v21 = sub_1DF5647B4();
    __swift_project_value_buffer(v21, qword_1ED955C68);
    (*(v11 + 16))(v15, v17, v10);

    v22 = v20;
    v23 = sub_1DF564794();
    v24 = sub_1DF564C44();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v45 = v24;
      v26 = a1;
      v27 = v25;
      v46 = swift_slowAlloc();
      v48[0] = v46;
      *v27 = 136315394;
      *(v27 + 4) = sub_1DF47EF6C(v26, a2, v48);
      *(v27 + 12) = 2080;
      v28 = sub_1DF5643E4();
      v29 = [v22 stringFromDate_];

      v30 = sub_1DF564944();
      v32 = v31;

      v33 = *(v11 + 8);
      v33(v15, v10);
      v34 = sub_1DF47EF6C(v30, v32, v48);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_1DF47C000, v23, v45, "Previous key %s was sent CFU on %s", v27, 0x16u);
      v35 = v46;
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v35, -1, -1);
      MEMORY[0x1E12D75F0](v27, -1, -1);

      v33(v17, v10);
    }

    else
    {

      v42 = *(v11 + 8);
      v42(v15, v10);
      v42(v17, v10);
    }

    return 1;
  }

  else
  {
    v19(v9, 1, 1, v10);
    sub_1DF47E5B4(v9, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47F24C(a3, v48);
    if (swift_dynamicCast())
    {
      v36 = v47;
      if (qword_1ED9558B8 != -1)
      {
        swift_once();
      }

      v37 = sub_1DF5647B4();
      __swift_project_value_buffer(v37, qword_1ED955C68);

      v38 = sub_1DF564794();
      v39 = sub_1DF564C44();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v48[0] = v41;
        *v40 = 136315394;
        *(v40 + 4) = sub_1DF47EF6C(a1, a2, v48);
        *(v40 + 12) = 1024;
        *(v40 + 14) = v36;
        _os_log_impl(&dword_1DF47C000, v38, v39, "Previous key %s was sent CFU without date. Returning %{BOOL}d.", v40, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x1E12D75F0](v41, -1, -1);
        MEMORY[0x1E12D75F0](v40, -1, -1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v36;
}

uint64_t sub_1DF52C8F4()
{
  swift_beginAccess();
  sub_1DF47E4CC(v0 + 96, v8, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v9)
  {
    sub_1DF47FCEC(v8, v5);
    sub_1DF47E5B4(v8, &qword_1ECE37CE0, &qword_1DF568B40);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v3 = (*(v2 + 80))(0xD000000000000013, 0x80000001DF5709F0, v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_1DF47E5B4(v8, &qword_1ECE37CE0, &qword_1DF568B40);
    return 0;
  }

  return v3;
}

uint64_t sub_1DF52C9F4()
{
  v1 = v0;
  v2 = type metadata accessor for FollowUpConfig();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DF5644C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5644B4();
  v11 = sub_1DF5644A4();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v15 = sub_1DF488298(8, v11, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v45 = MEMORY[0x1E12D6280](v15, v17, v19, v21);
  v23 = v22;

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v24 = sub_1DF5647B4();
  __swift_project_value_buffer(v24, qword_1ED955C68);

  v25 = sub_1DF564794();
  v26 = sub_1DF564C44();

  v27 = os_log_type_enabled(v25, v26);
  v44 = "ler";
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 136446210;
    v46 = 91;
    v47 = 0xE100000000000000;
    v48[0] = v29;

    MEMORY[0x1E12D62C0](0xD000000000000011, 0x80000001DF574B20);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v45, v23);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v30 = sub_1DF47EF6C(v46, v47, v48);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1DF47C000, v25, v26, "%{public}s Posting CFU", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1E12D75F0](v29, -1, -1);
    MEMORY[0x1E12D75F0](v28, -1, -1);
  }

  sub_1DF506DCC(v5);
  v31 = sub_1DF506878();
  sub_1DF530368(v5);
  v32 = v1[10];
  v33 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v32);
  v34 = *(v33 + 8);
  v35 = v31;
  v34(v31, v32, v33);

  v36 = sub_1DF564794();
  v37 = sub_1DF564C44();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v44;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 136446210;
    v46 = 91;
    v47 = 0xE100000000000000;
    v48[0] = v41;
    MEMORY[0x1E12D62C0](0xD000000000000011, v39 | 0x8000000000000000);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v45, v23);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v42 = sub_1DF47EF6C(v46, v47, v48);

    *(v40 + 4) = v42;
    _os_log_impl(&dword_1DF47C000, v36, v37, "%{public}s Successfully posted waitlist CFU.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1E12D75F0](v41, -1, -1);
    MEMORY[0x1E12D75F0](v40, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1DF52D07C()
{
  v1 = v0[2];
  if (os_unfair_lock_trylock(v1 + 4))
  {
    v2 = v0[2];
    v3 = sub_1DF52D32C();
    os_unfair_lock_unlock(v1 + 4);
    if (v3)
    {
      v4 = *(v0[2] + 136);
      v5 = swift_task_alloc();
      v0[3] = v5;
      *v5 = v0;
      v5[1] = sub_1DF52D234;

      return sub_1DF5001EC(14);
    }
  }

  else
  {
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED955C68);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v8, v9, "CFU posting was already in progess, not posting CFU", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1DF52D234()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(1);
}

uint64_t sub_1DF52D32C()
{
  if (!sub_1DF52ACE4())
  {
    return sub_1DF52D420() & 1;
  }

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED955C68);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DF47C000, v1, v2, "User has seen ADM CFU before. Will not post ADM CFU.", v3, 2u);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF52D420()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - v4;
  v5 = type metadata accessor for FollowUpConfig();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF5647B4();
  __swift_project_value_buffer(v9, qword_1ED955C68);
  v10 = sub_1DF564794();
  v11 = sub_1DF564C44();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1DF47EF6C(0x434D444174736F70, 0xEC00000029285546, &v30);
    _os_log_impl(&dword_1DF47C000, v10, v11, "%{public}s Attempting to post ADM CFU", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1E12D75F0](v13, -1, -1);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }

  sub_1DF507018(v8);
  v14 = sub_1DF506878();
  sub_1DF530368(v8);
  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DF47C000, v15, v16, "Attempting to post ADM CFU...", v17, 2u);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  v18 = v1[10];
  v19 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v18);
  v20 = *(v19 + 8);
  v21 = v14;
  v20(v14, v18, v19);

  v22 = sub_1DF564794();
  v23 = sub_1DF564C44();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DF47C000, v22, v23, "Successfully posted ADM CFU.", v24, 2u);
    MEMORY[0x1E12D75F0](v24, -1, -1);
  }

  v25 = v29;
  sub_1DF564484();
  v26 = sub_1DF564494();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  sub_1DF529660(v25);

  return 1;
}

uint64_t sub_1DF52D8B4(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_0(v2 + 7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v8 = *(v6 + 16);

  v8(inited, v5, v6);
  swift_setDeallocating();
  return sub_1DF4BF4C8(inited + 32);
}

uint64_t sub_1DF52DB28(_BYTE *a1)
{
  v2 = v1;
  if (*a1)
  {
    v3 = 0xEA00000000004D44;
    v4 = 0x41746E6553736168;
  }

  else
  {
    v4 = sub_1DF52907C();
    v3 = v5;
  }

  swift_beginAccess();
  sub_1DF47E4CC(v1 + 96, v25, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v26)
  {
    sub_1DF47FCEC(v25, v22);
    sub_1DF47E5B4(v25, &qword_1ECE37CE0, &qword_1DF568B40);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_0(v22, v23);
    (*(v7 + 24))(&v27, v4, v3, v6, v7);
    __swift_destroy_boxed_opaque_existential_0(v22);
    if (*(&v28 + 1))
    {
      sub_1DF47E5B4(&v27, &qword_1ECE378F0, &qword_1DF5686F0);
      if (qword_1ED9558B8 != -1)
      {
        swift_once();
      }

      v8 = sub_1DF5647B4();
      __swift_project_value_buffer(v8, qword_1ED955C68);

      v9 = sub_1DF564794();
      v10 = sub_1DF564C44();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_1DF47EF6C(v4, v3, v25);
        _os_log_impl(&dword_1DF47C000, v9, v10, "Resetting value for key %s.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1E12D75F0](v12, -1, -1);
        MEMORY[0x1E12D75F0](v11, -1, -1);
      }

      sub_1DF47E4CC(v2 + 96, v25, &qword_1ECE37CE0, &qword_1DF568B40);
      if (v26)
      {
        sub_1DF47FCEC(v25, v22);
        sub_1DF47E5B4(v25, &qword_1ECE37CE0, &qword_1DF568B40);
        v13 = v23;
        v14 = v24;
        __swift_project_boxed_opaque_existential_0(v22, v23);
        (*(v14 + 16))(v4, v3, v13, v14);

        __swift_destroy_boxed_opaque_existential_0(v22);
      }

      else
      {

        sub_1DF47E5B4(v25, &qword_1ECE37CE0, &qword_1DF568B40);
      }

      return 1;
    }
  }

  else
  {
    sub_1DF47E5B4(v25, &qword_1ECE37CE0, &qword_1DF568B40);
    v27 = 0u;
    v28 = 0u;
  }

  sub_1DF47E5B4(&v27, &qword_1ECE378F0, &qword_1DF5686F0);
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v16 = sub_1DF5647B4();
  __swift_project_value_buffer(v16, qword_1ED955C68);

  v17 = sub_1DF564794();
  v18 = sub_1DF564C24();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136315138;
    v21 = sub_1DF47EF6C(v4, v3, v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_1DF47C000, v17, v18, "Attempted to clear CFU user default %s but no value is stored.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  else
  {
  }

  return 0;
}

id static FollowUp.hasEngagedWithCFU.setter(char a1)
{
  v2 = objc_opt_self();

  return [v2 setHasEngagedWithCFU_];
}

id (*static FollowUp.hasEngagedWithCFU.modify(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  *(a1 + 8) = [v2 hasEngagedWithCFU];
  return sub_1DF52E058;
}

uint64_t FollowUp.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_1DF47E5B4(v0 + 96, &qword_1ECE37CE0, &qword_1DF568B40);

  v3 = *(v0 + 152);

  return v0;
}

uint64_t FollowUp.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_1DF47E5B4(v0 + 96, &qword_1ECE37CE0, &qword_1DF568B40);

  v3 = *(v0 + 152);

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

uint64_t sub_1DF52E144(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7169121;
  }

  else
  {
    v2 = 7169633;
  }

  if (*a2)
  {
    v3 = 7169121;
  }

  else
  {
    v3 = 7169633;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1DF5650D4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1DF52E1B8()
{
  v1 = *v0;
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF52E21C()
{
  *v0;
  sub_1DF5649E4();
}

uint64_t sub_1DF52E264()
{
  v1 = *v0;
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF52E2C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF564F54();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DF52E324(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 7169121;
  }

  else
  {
    v2 = 7169633;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1DF52E37C()
{
  v1 = *(v0 + 49);
  v2 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1DF520E6C;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 48, 0, 0, 0xD00000000000001BLL, 0x80000001DF5744A0, sub_1DF521864, v3, v6);
}

uint64_t sub_1DF52E4BC()
{
  v1 = *(v0 + 41);
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DF52E580;

  return sub_1DF5101CC((v0 + 40));
}

uint64_t sub_1DF52E580(char a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v6 = *v2;
  *(v6 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF52E6E0, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_1DF52E720()
{
  v1 = *(v0 + 48);
  v2 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1DF520A1C;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000012, 0x80000001DF574450, sub_1DF521870, v3, v6);
}

uint64_t sub_1DF52E85C()
{
  v1 = *(v0 + 41);
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DF51B48C;

  return sub_1DF50E8B0((v0 + 40));
}

uint64_t sub_1DF52E940()
{
  v1 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = sub_1DF510B34;
  v2[4] = 0;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1DF52EA68;
  v5 = v0[2];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF52FBB4, v2, &type metadata for FollowUp.WaitlistCFUEligibilityResult);
}

uint64_t sub_1DF52EA68()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF52EBB0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 32);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1DF52EBB0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1DF52EC38()
{
  v1 = _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0();
  v0[6] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1DF52ED04;

    return sub_1DF52F008();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1DF52ED04()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF52EE40, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DF52EE40()
{
  v20 = v0;
  v1 = v0[6];

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED955C68);
  v4 = v2;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_1DF5651B4();
    v16 = sub_1DF47EF6C(v14, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Error clearing legacy CFUs: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DF52F028()
{
  v1 = *(v0 + 104);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1DF52F150;

  return v8(v2, v3);
}

uint64_t sub_1DF52F150(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF52F284, 0, 0);
  }
}

id sub_1DF52F284(__n128 a1)
{
  v2 = v1[15];
  if (v2 >> 62)
  {
LABEL_41:
    v3 = sub_1DF564F04();
    v4 = v1[15];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v1[15];
    if (v3)
    {
LABEL_3:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v47 = v4 + 32;
      v48 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = v1[16];
      a1.n128_u64[0] = 138412290;
      v43 = a1;
      v44 = v2 & 0xC000000000000001;
      v45 = v3;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x1E12D66D0](v5, v1[15]);
        }

        else
        {
          if (v5 >= *(v48 + 16))
          {
            goto LABEL_40;
          }

          v8 = *(v47 + 8 * v5);
        }

        v2 = v8;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v10 = [v8 uniqueIdentifier];
        if (v10)
        {
          break;
        }

LABEL_5:
        ++v5;
        if (v9 == v3)
        {
          v40 = v1[15];
          goto LABEL_34;
        }
      }

      v11 = v10;
      v12 = sub_1DF564944();
      v14 = v13;

      if (v12 == 0xD000000000000017 && 0x80000001DF573FF0 == v14)
      {
      }

      else
      {
        v16 = sub_1DF5650D4();

        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v17 = [v2 extensionIdentifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1DF564944();
        v21 = v20;

        if (v19 == 0xD000000000000021 && 0x80000001DF574B40 == v21)
        {

LABEL_24:
          if (qword_1ED9558B8 != -1)
          {
            swift_once();
          }

          v23 = sub_1DF5647B4();
          __swift_project_value_buffer(v23, qword_1ED955C68);
          v24 = v2;
          v25 = sub_1DF564794();
          v26 = sub_1DF564C44();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v27 = v43.n128_u32[0];
            *(v27 + 4) = v24;
            *v28 = v24;
            v29 = v24;
            _os_log_impl(&dword_1DF47C000, v25, v26, "We found a legacy followup item. Clearing it. %@", v27, 0xCu);
            sub_1DF47E5B4(v28, &unk_1ECE37F10, &qword_1DF567510);
            v1 = v46;
            MEMORY[0x1E12D75F0](v28, -1, -1);
            MEMORY[0x1E12D75F0](v27, -1, -1);
          }

          v30 = v1[13];

          sub_1DF47FCEC(v30 + 56, (v1 + 8));
          v32 = v1[11];
          v31 = v1[12];
          v2 = __swift_project_boxed_opaque_existential_0(v1 + 8, v32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DF567CF0;
          v34 = v24;
          result = [v24 uniqueIdentifier];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v36 = result;
          v37 = sub_1DF564944();
          v39 = v38;

          *(inited + 32) = v37;
          *(inited + 40) = v39;
          (*(v31 + 16))(inited, v32, v31);
          if (v7)
          {
            v42 = v46[15];

            swift_setDeallocating();
            sub_1DF4BF4C8(inited + 32);
            __swift_destroy_boxed_opaque_existential_0(v46 + 8);
            v41 = v46[1];
            goto LABEL_35;
          }

          swift_setDeallocating();
          sub_1DF4BF4C8(inited + 32);
          v1 = v46;
          __swift_destroy_boxed_opaque_existential_0(v46 + 8);
          v6 = v44;
          v3 = v45;
          goto LABEL_32;
        }

        v22 = sub_1DF5650D4();

        if (v22)
        {
          goto LABEL_24;
        }
      }

LABEL_31:

LABEL_32:
      v9 = v5 + 1;
      goto LABEL_5;
    }
  }

LABEL_34:

  v41 = v1[1];
LABEL_35:

  return v41();
}

uint64_t _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6997AC8]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithClientIdentifier_];

  if (v2)
  {
    v3 = sub_1DF481988();
    v4 = [v3 aa_primaryAppleAccount];

    if (v4)
    {
      v5 = [v4 aa_personID];

      if (v5)
      {
        v4 = sub_1DF564944();
        v7 = v6;

LABEL_12:
        v13 = SiriAssistantLocale.current.getter();
        v15 = v14;
        v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
        v17 = sub_1DF564914();
        v18 = [v16 initWithSuiteName_];

        if (v18)
        {
          v19 = sub_1DF4BECB0(0, &qword_1ED9562E0, 0x1E695E000);
          v20 = &off_1F5A8A490;
        }

        else
        {
          v19 = 0;
          v20 = 0;
          v26[1] = 0;
          v26[2] = 0;
        }

        v26[0] = v18;
        v26[3] = v19;
        v26[4] = v20;
        v21 = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
        v24 = sub_1DF4BECB0(0, &qword_1ED9551B0, 0x1E6997AC8);
        v25 = &off_1F5A8BE70;
        *&v23 = v2;
        type metadata accessor for FollowUp();
        v22 = swift_allocObject();
        *(v22 + 16) = 0;
        *(v22 + 112) = 0u;
        *(v22 + 128) = 0;
        *(v22 + 96) = 0u;
        sub_1DF47E390(&v23, v22 + 56);
        *(v22 + 40) = v4;
        *(v22 + 48) = v7;
        *(v22 + 24) = v13;
        *(v22 + 32) = v15;
        swift_beginAccess();
        sub_1DF5304FC(v26, v22 + 96);
        swift_endAccess();
        result = v22;
        *(v22 + 136) = v21;
        *(v22 + 144) = sub_1DF47FD50;
        *(v22 + 152) = 0;
        return result;
      }

      v4 = 0;
    }

    v7 = 0;
    goto LABEL_12;
  }

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF5647B4();
  __swift_project_value_buffer(v8, qword_1ED955C68);
  v9 = sub_1DF564794();
  v10 = sub_1DF564C24();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DF47C000, v9, v10, "Unable to make followup controller. Will not post CFUs.", v11, 2u);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF52FA2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED955C68);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Setting hasSentWaitlistCFU to true.", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  sub_1DF564484();
  v8 = sub_1DF564494();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  return sub_1DF52B970(v3);
}

unint64_t sub_1DF52FC04()
{
  result = qword_1ECE38300;
  if (!qword_1ECE38300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38300);
  }

  return result;
}

unint64_t sub_1DF52FC5C()
{
  result = qword_1ECE38308;
  if (!qword_1ECE38308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38308);
  }

  return result;
}

unint64_t sub_1DF52FCB4()
{
  result = qword_1ECE38310;
  if (!qword_1ECE38310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38310);
  }

  return result;
}

uint64_t sub_1DF52FD9C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF4A3FF4;

  return v9(a1, a2);
}

uint64_t getEnumTagSinglePayload for FollowUp.WaitlistCFUEligibilityResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FollowUp.WaitlistCFUEligibilityResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DF530368(uint64_t a1)
{
  v2 = type metadata accessor for FollowUpConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF530480(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0) - 8) + 80);

  return sub_1DF5285F4(a1);
}

uint64_t sub_1DF5304FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE0, &qword_1DF568B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static Preferences.dateRequestBlocked()@<X0>(uint64_t a1@<X8>)
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      v4 = [v2 valueForKey_];

      if (v4)
      {
        sub_1DF564D24();
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      v13 = v11;
      v14 = v12;
      if (*(&v12 + 1))
      {
        v8 = sub_1DF564494();
        v9 = swift_dynamicCast();
        return (*(*(v8 - 8) + 56))(a1, v9 ^ 1u, 1, v8);
      }
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    sub_1DF47E5B4(&v13, &qword_1ECE378F0, &qword_1DF5686F0);
    v10 = sub_1DF564494();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    v5 = sub_1DF564494();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }
}

id static Preferences.forceTaskLimiterTimeout.getter()
{
  if ((sub_1DF480190() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED956240 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED956248;
  if (!qword_1ED956248)
  {
    return 0;
  }

  v1 = sub_1DF564914();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1DF530824(_BYTE *a1@<X8>)
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      LOBYTE(v2) = [v2 BOOLForKey_];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

void sub_1DF5308D8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      [v2 setBool:v1 forKey:v3];
    }
  }
}

void static Preferences.forceTaskLimiterTimeout.setter(char a1)
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      [v2 setBool:a1 & 1 forKey:v3];
    }
  }
}

void (*static Preferences.forceTaskLimiterTimeout.modify(_BYTE *a1))(unsigned __int8 *a1)
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      LOBYTE(v2) = [v2 BOOLForKey_];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
  return sub_1DF530B38;
}

void sub_1DF530B38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      [v2 setBool:v1 forKey:v3];
    }
  }
}

uint64_t static Preferences.requestIsBlocked()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v5 = sub_1DF564914();
      v6 = [v4 valueForKey_];

      if (v6)
      {
        sub_1DF564D24();
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
      }

      v15 = v13;
      v16 = v14;
      if (*(&v14 + 1))
      {
        v7 = sub_1DF564494();
        v8 = swift_dynamicCast();
        v9 = *(v7 - 8);
        v10 = 1;
        (*(v9 + 56))(v3, v8 ^ 1u, 1, v7);
        if ((*(v9 + 48))(v3, 1, v7) != 1)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    sub_1DF47E5B4(&v15, &qword_1ECE378F0, &qword_1DF5686F0);
  }

  v11 = sub_1DF564494();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
LABEL_14:
  v10 = 0;
LABEL_15:
  sub_1DF47E5B4(v3, &qword_1ECE37A10, &qword_1DF567C00);
  return v10;
}

uint64_t static Preferences.blockRequest()()
{
  v0 = sub_1DF564494();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DF480190();
  if (v5)
  {
    if (qword_1ED956240 != -1)
    {
      v11 = v5;
      swift_once();
      v5 = v11;
    }

    v6 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v7 = v5;
      sub_1DF564484();
      v8 = sub_1DF5643E4();
      (*(v1 + 8))(v4, v0);
      v9 = sub_1DF564914();
      [v6 setObject:v8 forKey:v9];

      v5 = v7;
    }
  }

  return v5 & 1;
}

void static Preferences.unblockRequest()()
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v0 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v1 = sub_1DF564914();
      [v0 setURL:0 forKey:v1];
    }
  }
}

id sub_1DF5310AC()
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v0 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v1 = sub_1DF564914();
      v2 = [v0 dictionaryForKey_];

      if (v2)
      {
        v3 = sub_1DF564874();

        if (*(v3 + 16) && (v4 = sub_1DF480420(0x737574617473, 0xE600000000000000), (v5 & 1) != 0) && (sub_1DF47F24C(*(v3 + 56) + 32 * v4, v19), (swift_dynamicCast() & 1) != 0) && (v6 = objc_allocWithZone(type metadata accessor for TicketStatus()), (v7 = TicketStatus.init(rawValue:)(v17, v18)) != 0))
        {
          v8 = v7;
          if (*(v3 + 16) && (v9 = sub_1DF480420(0x4965727574616566, 0xEA00000000007344), (v10 & 1) != 0))
          {
            sub_1DF47F24C(*(v3 + 56) + 32 * v9, v19);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
            if (swift_dynamicCast())
            {
              v11 = v17;
              v12 = type metadata accessor for WaitlistResult();
              v13 = objc_allocWithZone(v12);
              v14 = &v13[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
              *v14 = 0;
              *(v14 + 1) = 0;
              *&v13[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v8;
              *&v13[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v11;
              v16.receiver = v13;
              v16.super_class = v12;
              return objc_msgSendSuper2(&v16, sel_init);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

void *sub_1DF531308()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {

    v3 = sub_1DF4BECB0(0, &qword_1ED9562E0, 0x1E695E000);
    v4 = &off_1F5A8A490;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v5 = sub_1DF47E8A4();
  v7 = v6;
  type metadata accessor for ConfigCache();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = 0;
  result[4] = 0;
  result[5] = v3;
  result[6] = v4;
  result[7] = v5;
  result[8] = v7;
  return result;
}

uint64_t sub_1DF531410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_1DF564494();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF53154C, v4, 0);
}

uint64_t sub_1DF53154C()
{
  v83 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = *(v1 + 112);

    v6 = sub_1DF480420(v4, v3);
    if (v7)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38440, &qword_1DF56CEF0);
      if (swift_dynamicCast())
      {
        v8 = v0[19];
        v0[37] = v8;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v9 = v0[21];
        v10 = sub_1DF5647B4();
        __swift_project_value_buffer(v10, qword_1ED956068);

        v11 = sub_1DF564794();
        v12 = sub_1DF564C44();

        if (os_log_type_enabled(v11, v12))
        {
          v14 = v0[20];
          v13 = v0[21];
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v82[0] = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_1DF47EF6C(v14, v13, v82);
          _os_log_impl(&dword_1DF47C000, v11, v12, "Reusing existing task for identifier %{public}s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x1E12D75F0](v16, -1, -1);
          MEMORY[0x1E12D75F0](v15, -1, -1);
        }

        v17 = *(MEMORY[0x1E69E86A8] + 4);
        v18 = swift_task_alloc();
        v0[38] = v18;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v18 = v0;
        v18[1] = sub_1DF531FD8;
        v21 = MEMORY[0x1E69E7288];
        v22 = v0 + 18;
        v23 = v8;
        v24 = v19;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v25 = v0[21];
  v26 = sub_1DF5647B4();
  __swift_project_value_buffer(v26, qword_1ED956068);

  v27 = sub_1DF564794();
  v28 = sub_1DF564C44();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = v0[20];
    v29 = v0[21];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v82[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_1DF47EF6C(v30, v29, v82);
    _os_log_impl(&dword_1DF47C000, v27, v28, "Creating new task for identifier %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1E12D75F0](v32, -1, -1);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  v33 = v0[31];
  v35 = v0[24];
  v34 = v0[25];
  v37 = v0[22];
  v36 = v0[23];
  v38 = v0[20];
  v39 = v0[21];
  v40 = sub_1DF564B44();
  v80 = *(*(v40 - 8) + 56);
  v81 = v40;
  v80(v33, 1, 1);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v37;
  v41[5] = v36;

  v42 = sub_1DF515BA8(0, 0, v33, &unk_1DF56CEC8, v41);
  v0[32] = v42;
  v43 = *(v35 + 128);
  v44 = *(v35 + 136);
  v79 = v42;

  sub_1DF483600(v43, v44, v38, v39);

  v45 = sub_1DF564794();
  v46 = sub_1DF564C44();

  if (os_log_type_enabled(v45, v46))
  {
    v48 = v0[20];
    v47 = v0[21];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v82[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_1DF47EF6C(v48, v47, v82);
    _os_log_impl(&dword_1DF47C000, v45, v46, "Performing task operation for identifier %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1E12D75F0](v50, -1, -1);
    MEMORY[0x1E12D75F0](v49, -1, -1);
  }

  v52 = v0[30];
  v51 = v0[31];
  v74 = v0[29];
  v75 = v0[28];
  v53 = v0[27];
  v73 = v0[26];
  v54 = v0[24];
  v77 = v0[21];
  v78 = v0[25];
  v76 = v0[20];
  sub_1DF564484();
  (v80)(v51, 1, 1, v81);
  v72 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v72;
  v55[4] = v54;
  v55[5] = v79;
  swift_retain_n();

  v71 = sub_1DF515B98(0, 0, v51, &unk_1DF56CED8, v55);
  v0[33] = v71;
  (v80)(v51, 1, 1, v81);
  (*(v53 + 16))(v74, v52, v73);
  v56 = (*(v53 + 80) + 72) & ~*(v53 + 80);
  v57 = swift_allocObject();
  *(v57 + 2) = v54;
  *(v57 + 3) = v72;
  *(v57 + 4) = v79;
  *(v57 + 5) = v71;
  *(v57 + 6) = v76;
  *(v57 + 7) = v77;
  *(v57 + 8) = v54;
  (*(v53 + 32))(&v57[v56], v74, v73);
  *&v57[(v75 + v56 + 7) & 0xFFFFFFFFFFFFFFF8] = v78;
  swift_retain_n();

  v58 = sub_1DF515BA8(0, 0, v51, &unk_1DF56CEE8, v57);
  v0[34] = v58;

  v59 = sub_1DF564794();
  v60 = sub_1DF564C44();

  if (os_log_type_enabled(v59, v60))
  {
    v62 = v0[20];
    v61 = v0[21];
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v82[0] = v64;
    *v63 = 136446210;
    *(v63 + 4) = sub_1DF47EF6C(v62, v61, v82);
    _os_log_impl(&dword_1DF47C000, v59, v60, "Storing task for identifier %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1E12D75F0](v64, -1, -1);
    MEMORY[0x1E12D75F0](v63, -1, -1);
  }

  v66 = v0[20];
  v65 = v0[21];
  v82[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38440, &qword_1DF56CEF0);
  v82[4] = &off_1F5A86FC8;
  v82[0] = v58;
  swift_beginAccess();

  sub_1DF484020(v82, v66, v65);
  swift_endAccess();
  v67 = *(MEMORY[0x1E69E86A8] + 4);
  v68 = swift_task_alloc();
  v0[35] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v68 = v0;
  v68[1] = sub_1DF531EAC;
  v21 = MEMORY[0x1E69E7288];
  v22 = v0 + 18;
  v23 = v58;
  v24 = v69;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v22, v23, v24, v20, v21);
}

uint64_t sub_1DF531EAC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1DF54742C;
  }

  else
  {
    v6 = sub_1DF5473F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF531FD8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1DF547424;
  }

  else
  {
    v6 = sub_1DF5473F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF532104()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  (*(v6 + 8))(v4, v5);
  sub_1DF490EE8(v9, v8);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 224);
  v13 = *(v0 + 312);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1DF5321F0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_1DF5323B4;
  }

  else
  {
    v6 = sub_1DF53231C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF53231C()
{
  v1 = *(v0 + 288);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 312);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1DF5323B4()
{
  v1 = v0[36];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[38];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1DF532448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_1DF564494();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF532584, v4, 0);
}

uint64_t sub_1DF532584()
{
  v83 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = *(v1 + 112);

    v6 = sub_1DF480420(v4, v3);
    if (v7)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A8, &qword_1DF56D120);
      if (swift_dynamicCast())
      {
        v8 = v0[19];
        v0[37] = v8;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v9 = v0[21];
        v10 = sub_1DF5647B4();
        __swift_project_value_buffer(v10, qword_1ED956068);

        v11 = sub_1DF564794();
        v12 = sub_1DF564C44();

        if (os_log_type_enabled(v11, v12))
        {
          v14 = v0[20];
          v13 = v0[21];
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v82[0] = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_1DF47EF6C(v14, v13, v82);
          _os_log_impl(&dword_1DF47C000, v11, v12, "Reusing existing task for identifier %{public}s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x1E12D75F0](v16, -1, -1);
          MEMORY[0x1E12D75F0](v15, -1, -1);
        }

        v17 = *(MEMORY[0x1E69E86A8] + 4);
        v18 = swift_task_alloc();
        v0[38] = v18;
        v19 = type metadata accessor for GeoClassificationInfo();
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v18 = v0;
        v18[1] = sub_1DF531FD8;
        v21 = MEMORY[0x1E69E7288];
        v22 = v0 + 18;
        v23 = v8;
        v24 = v19;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v25 = v0[21];
  v26 = sub_1DF5647B4();
  __swift_project_value_buffer(v26, qword_1ED956068);

  v27 = sub_1DF564794();
  v28 = sub_1DF564C44();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = v0[20];
    v29 = v0[21];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v82[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_1DF47EF6C(v30, v29, v82);
    _os_log_impl(&dword_1DF47C000, v27, v28, "Creating new task for identifier %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1E12D75F0](v32, -1, -1);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  v33 = v0[31];
  v35 = v0[24];
  v34 = v0[25];
  v37 = v0[22];
  v36 = v0[23];
  v38 = v0[20];
  v39 = v0[21];
  v40 = sub_1DF564B44();
  v80 = *(*(v40 - 8) + 56);
  v81 = v40;
  v80(v33, 1, 1);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v37;
  v41[5] = v36;

  v42 = sub_1DF51611C(0, 0, v33, &unk_1DF56D0F8, v41);
  v0[32] = v42;
  v43 = *(v35 + 128);
  v44 = *(v35 + 136);
  v79 = v42;

  sub_1DF483600(v43, v44, v38, v39);

  v45 = sub_1DF564794();
  v46 = sub_1DF564C44();

  if (os_log_type_enabled(v45, v46))
  {
    v48 = v0[20];
    v47 = v0[21];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v82[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_1DF47EF6C(v48, v47, v82);
    _os_log_impl(&dword_1DF47C000, v45, v46, "Performing task operation for identifier %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1E12D75F0](v50, -1, -1);
    MEMORY[0x1E12D75F0](v49, -1, -1);
  }

  v52 = v0[30];
  v51 = v0[31];
  v74 = v0[29];
  v75 = v0[28];
  v53 = v0[27];
  v73 = v0[26];
  v54 = v0[24];
  v77 = v0[21];
  v78 = v0[25];
  v76 = v0[20];
  sub_1DF564484();
  (v80)(v51, 1, 1, v81);
  v72 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v72;
  v55[4] = v54;
  v55[5] = v79;
  swift_retain_n();

  v71 = sub_1DF515B98(0, 0, v51, &unk_1DF56D108, v55);
  v0[33] = v71;
  (v80)(v51, 1, 1, v81);
  (*(v53 + 16))(v74, v52, v73);
  v56 = (*(v53 + 80) + 72) & ~*(v53 + 80);
  v57 = swift_allocObject();
  *(v57 + 2) = v54;
  *(v57 + 3) = v72;
  *(v57 + 4) = v79;
  *(v57 + 5) = v71;
  *(v57 + 6) = v76;
  *(v57 + 7) = v77;
  *(v57 + 8) = v54;
  (*(v53 + 32))(&v57[v56], v74, v73);
  *&v57[(v75 + v56 + 7) & 0xFFFFFFFFFFFFFFF8] = v78;
  swift_retain_n();

  v58 = sub_1DF51611C(0, 0, v51, &unk_1DF56D118, v57);
  v0[34] = v58;

  v59 = sub_1DF564794();
  v60 = sub_1DF564C44();

  if (os_log_type_enabled(v59, v60))
  {
    v62 = v0[20];
    v61 = v0[21];
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v82[0] = v64;
    *v63 = 136446210;
    *(v63 + 4) = sub_1DF47EF6C(v62, v61, v82);
    _os_log_impl(&dword_1DF47C000, v59, v60, "Storing task for identifier %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1E12D75F0](v64, -1, -1);
    MEMORY[0x1E12D75F0](v63, -1, -1);
  }

  v66 = v0[20];
  v65 = v0[21];
  v82[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A8, &qword_1DF56D120);
  v82[4] = &off_1F5A86FC8;
  v82[0] = v58;
  swift_beginAccess();

  sub_1DF484020(v82, v66, v65);
  swift_endAccess();
  v67 = *(MEMORY[0x1E69E86A8] + 4);
  v68 = swift_task_alloc();
  v0[35] = v68;
  v69 = type metadata accessor for GeoClassificationInfo();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v68 = v0;
  v68[1] = sub_1DF531EAC;
  v21 = MEMORY[0x1E69E7288];
  v22 = v0 + 18;
  v23 = v58;
  v24 = v69;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v22, v23, v24, v20, v21);
}

uint64_t sub_1DF532ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_1DF564494();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF533008, v4, 0);
}

uint64_t sub_1DF533008()
{
  v83 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = *(v1 + 112);

    v6 = sub_1DF480420(v4, v3);
    if (v7)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38498, &qword_1DF56D0A8);
      if (swift_dynamicCast())
      {
        v8 = v0[19];
        v0[37] = v8;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v9 = v0[21];
        v10 = sub_1DF5647B4();
        __swift_project_value_buffer(v10, qword_1ED956068);

        v11 = sub_1DF564794();
        v12 = sub_1DF564C44();

        if (os_log_type_enabled(v11, v12))
        {
          v14 = v0[20];
          v13 = v0[21];
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v82[0] = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_1DF47EF6C(v14, v13, v82);
          _os_log_impl(&dword_1DF47C000, v11, v12, "Reusing existing task for identifier %{public}s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x1E12D75F0](v16, -1, -1);
          MEMORY[0x1E12D75F0](v15, -1, -1);
        }

        v17 = *(MEMORY[0x1E69E86A8] + 4);
        v18 = swift_task_alloc();
        v0[38] = v18;
        v19 = type metadata accessor for Ticket();
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v18 = v0;
        v18[1] = sub_1DF531FD8;
        v21 = MEMORY[0x1E69E7288];
        v22 = v0 + 18;
        v23 = v8;
        v24 = v19;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v25 = v0[21];
  v26 = sub_1DF5647B4();
  __swift_project_value_buffer(v26, qword_1ED956068);

  v27 = sub_1DF564794();
  v28 = sub_1DF564C44();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = v0[20];
    v29 = v0[21];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v82[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_1DF47EF6C(v30, v29, v82);
    _os_log_impl(&dword_1DF47C000, v27, v28, "Creating new task for identifier %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1E12D75F0](v32, -1, -1);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  v33 = v0[31];
  v35 = v0[24];
  v34 = v0[25];
  v37 = v0[22];
  v36 = v0[23];
  v38 = v0[20];
  v39 = v0[21];
  v40 = sub_1DF564B44();
  v80 = *(*(v40 - 8) + 56);
  v81 = v40;
  v80(v33, 1, 1);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v37;
  v41[5] = v36;

  v42 = sub_1DF516134(0, 0, v33, &unk_1DF56D080, v41);
  v0[32] = v42;
  v43 = *(v35 + 128);
  v44 = *(v35 + 136);
  v79 = v42;

  sub_1DF483600(v43, v44, v38, v39);

  v45 = sub_1DF564794();
  v46 = sub_1DF564C44();

  if (os_log_type_enabled(v45, v46))
  {
    v48 = v0[20];
    v47 = v0[21];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v82[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_1DF47EF6C(v48, v47, v82);
    _os_log_impl(&dword_1DF47C000, v45, v46, "Performing task operation for identifier %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1E12D75F0](v50, -1, -1);
    MEMORY[0x1E12D75F0](v49, -1, -1);
  }

  v52 = v0[30];
  v51 = v0[31];
  v74 = v0[29];
  v75 = v0[28];
  v53 = v0[27];
  v73 = v0[26];
  v54 = v0[24];
  v77 = v0[21];
  v78 = v0[25];
  v76 = v0[20];
  sub_1DF564484();
  (v80)(v51, 1, 1, v81);
  v72 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v72;
  v55[4] = v54;
  v55[5] = v79;
  swift_retain_n();

  v71 = sub_1DF515B98(0, 0, v51, &unk_1DF56D090, v55);
  v0[33] = v71;
  (v80)(v51, 1, 1, v81);
  (*(v53 + 16))(v74, v52, v73);
  v56 = (*(v53 + 80) + 72) & ~*(v53 + 80);
  v57 = swift_allocObject();
  *(v57 + 2) = v54;
  *(v57 + 3) = v72;
  *(v57 + 4) = v79;
  *(v57 + 5) = v71;
  *(v57 + 6) = v76;
  *(v57 + 7) = v77;
  *(v57 + 8) = v54;
  (*(v53 + 32))(&v57[v56], v74, v73);
  *&v57[(v75 + v56 + 7) & 0xFFFFFFFFFFFFFFF8] = v78;
  swift_retain_n();

  v58 = sub_1DF516134(0, 0, v51, &unk_1DF56D0A0, v57);
  v0[34] = v58;

  v59 = sub_1DF564794();
  v60 = sub_1DF564C44();

  if (os_log_type_enabled(v59, v60))
  {
    v62 = v0[20];
    v61 = v0[21];
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v82[0] = v64;
    *v63 = 136446210;
    *(v63 + 4) = sub_1DF47EF6C(v62, v61, v82);
    _os_log_impl(&dword_1DF47C000, v59, v60, "Storing task for identifier %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1E12D75F0](v64, -1, -1);
    MEMORY[0x1E12D75F0](v63, -1, -1);
  }

  v66 = v0[20];
  v65 = v0[21];
  v82[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38498, &qword_1DF56D0A8);
  v82[4] = &off_1F5A86FC8;
  v82[0] = v58;
  swift_beginAccess();

  sub_1DF484020(v82, v66, v65);
  swift_endAccess();
  v67 = *(MEMORY[0x1E69E86A8] + 4);
  v68 = swift_task_alloc();
  v0[35] = v68;
  v69 = type metadata accessor for Ticket();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v68 = v0;
  v68[1] = sub_1DF531EAC;
  v21 = MEMORY[0x1E69E7288];
  v22 = v0 + 18;
  v23 = v58;
  v24 = v69;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v22, v23, v24, v20, v21);
}

uint64_t sub_1DF533950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_1DF564494();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF533A8C, v4, 0);
}

uint64_t sub_1DF533A8C()
{
  v83 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = *(v1 + 112);

    v6 = sub_1DF480420(v4, v3);
    if (v7)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38488, &qword_1DF56D030);
      if (swift_dynamicCast())
      {
        v8 = v0[19];
        v0[37] = v8;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v9 = v0[21];
        v10 = sub_1DF5647B4();
        __swift_project_value_buffer(v10, qword_1ED956068);

        v11 = sub_1DF564794();
        v12 = sub_1DF564C44();

        if (os_log_type_enabled(v11, v12))
        {
          v14 = v0[20];
          v13 = v0[21];
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v82[0] = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_1DF47EF6C(v14, v13, v82);
          _os_log_impl(&dword_1DF47C000, v11, v12, "Reusing existing task for identifier %{public}s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x1E12D75F0](v16, -1, -1);
          MEMORY[0x1E12D75F0](v15, -1, -1);
        }

        v17 = *(MEMORY[0x1E69E86A8] + 4);
        v18 = swift_task_alloc();
        v0[38] = v18;
        v19 = type metadata accessor for WaitlistResult();
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v18 = v0;
        v18[1] = sub_1DF531FD8;
        v21 = MEMORY[0x1E69E7288];
        v22 = v0 + 18;
        v23 = v8;
        v24 = v19;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v25 = v0[21];
  v26 = sub_1DF5647B4();
  __swift_project_value_buffer(v26, qword_1ED956068);

  v27 = sub_1DF564794();
  v28 = sub_1DF564C44();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = v0[20];
    v29 = v0[21];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v82[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_1DF47EF6C(v30, v29, v82);
    _os_log_impl(&dword_1DF47C000, v27, v28, "Creating new task for identifier %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1E12D75F0](v32, -1, -1);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  v33 = v0[31];
  v35 = v0[24];
  v34 = v0[25];
  v37 = v0[22];
  v36 = v0[23];
  v38 = v0[20];
  v39 = v0[21];
  v40 = sub_1DF564B44();
  v80 = *(*(v40 - 8) + 56);
  v81 = v40;
  v80(v33, 1, 1);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v37;
  v41[5] = v36;

  v42 = sub_1DF516414(0, 0, v33, &unk_1DF56D008, v41);
  v0[32] = v42;
  v43 = *(v35 + 128);
  v44 = *(v35 + 136);
  v79 = v42;

  sub_1DF483600(v43, v44, v38, v39);

  v45 = sub_1DF564794();
  v46 = sub_1DF564C44();

  if (os_log_type_enabled(v45, v46))
  {
    v48 = v0[20];
    v47 = v0[21];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v82[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_1DF47EF6C(v48, v47, v82);
    _os_log_impl(&dword_1DF47C000, v45, v46, "Performing task operation for identifier %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1E12D75F0](v50, -1, -1);
    MEMORY[0x1E12D75F0](v49, -1, -1);
  }

  v52 = v0[30];
  v51 = v0[31];
  v74 = v0[29];
  v75 = v0[28];
  v53 = v0[27];
  v73 = v0[26];
  v54 = v0[24];
  v77 = v0[21];
  v78 = v0[25];
  v76 = v0[20];
  sub_1DF564484();
  (v80)(v51, 1, 1, v81);
  v72 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v72;
  v55[4] = v54;
  v55[5] = v79;
  swift_retain_n();

  v71 = sub_1DF515B98(0, 0, v51, &unk_1DF56D018, v55);
  v0[33] = v71;
  (v80)(v51, 1, 1, v81);
  (*(v53 + 16))(v74, v52, v73);
  v56 = (*(v53 + 80) + 72) & ~*(v53 + 80);
  v57 = swift_allocObject();
  *(v57 + 2) = v54;
  *(v57 + 3) = v72;
  *(v57 + 4) = v79;
  *(v57 + 5) = v71;
  *(v57 + 6) = v76;
  *(v57 + 7) = v77;
  *(v57 + 8) = v54;
  (*(v53 + 32))(&v57[v56], v74, v73);
  *&v57[(v75 + v56 + 7) & 0xFFFFFFFFFFFFFFF8] = v78;
  swift_retain_n();

  v58 = sub_1DF516414(0, 0, v51, &unk_1DF56D028, v57);
  v0[34] = v58;

  v59 = sub_1DF564794();
  v60 = sub_1DF564C44();

  if (os_log_type_enabled(v59, v60))
  {
    v62 = v0[20];
    v61 = v0[21];
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v82[0] = v64;
    *v63 = 136446210;
    *(v63 + 4) = sub_1DF47EF6C(v62, v61, v82);
    _os_log_impl(&dword_1DF47C000, v59, v60, "Storing task for identifier %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1E12D75F0](v64, -1, -1);
    MEMORY[0x1E12D75F0](v63, -1, -1);
  }

  v66 = v0[20];
  v65 = v0[21];
  v82[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38488, &qword_1DF56D030);
  v82[4] = &off_1F5A86FC8;
  v82[0] = v58;
  swift_beginAccess();

  sub_1DF484020(v82, v66, v65);
  swift_endAccess();
  v67 = *(MEMORY[0x1E69E86A8] + 4);
  v68 = swift_task_alloc();
  v0[35] = v68;
  v69 = type metadata accessor for WaitlistResult();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v68 = v0;
  v68[1] = sub_1DF531EAC;
  v21 = MEMORY[0x1E69E7288];
  v22 = v0 + 18;
  v23 = v58;
  v24 = v69;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v22, v23, v24, v20, v21);
}

uint64_t sub_1DF5343D4()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];

  (*(v6 + 8))(v4, v5);
  sub_1DF490EE8(v9, v8);
  v10 = v0[36];
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[29];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DF5344B8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1DF53467C;
  }

  else
  {
    v6 = sub_1DF5345E4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5345E4()
{
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[18];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1DF53467C()
{
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[39];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DF53470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = *v5;
  v7 = sub_1DF564494();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v6[28] = *(v8 + 64);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF534848, v5, 0);
}

uint64_t sub_1DF534848()
{
  v81 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = *(v1 + 112);

    v6 = sub_1DF480420(v4, v3);
    if (v7)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38478, &unk_1DF56CFB0);
      if (swift_dynamicCast())
      {
        v8 = v0[18];
        v0[37] = v8;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v9 = v0[21];
        v10 = sub_1DF5647B4();
        __swift_project_value_buffer(v10, qword_1ED956068);

        v11 = sub_1DF564794();
        v12 = sub_1DF564C44();

        if (os_log_type_enabled(v11, v12))
        {
          v14 = v0[20];
          v13 = v0[21];
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v80[0] = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_1DF47EF6C(v14, v13, v80);
          _os_log_impl(&dword_1DF47C000, v11, v12, "Reusing existing task for identifier %{public}s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x1E12D75F0](v16, -1, -1);
          MEMORY[0x1E12D75F0](v15, -1, -1);
        }

        v17 = *(MEMORY[0x1E69E86A8] + 4);
        v18 = swift_task_alloc();
        v0[38] = v18;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v18 = v0;
        v18[1] = sub_1DF535398;
        v20 = v0[19];
        v21 = MEMORY[0x1E69E7288];
        v22 = MEMORY[0x1E69E7CA8] + 8;
        v23 = v8;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v24 = v0[21];
  v25 = sub_1DF5647B4();
  __swift_project_value_buffer(v25, qword_1ED956068);

  v26 = sub_1DF564794();
  v27 = sub_1DF564C44();

  if (os_log_type_enabled(v26, v27))
  {
    v29 = v0[20];
    v28 = v0[21];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v80[0] = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_1DF47EF6C(v29, v28, v80);
    _os_log_impl(&dword_1DF47C000, v26, v27, "Creating new task for identifier %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1E12D75F0](v31, -1, -1);
    MEMORY[0x1E12D75F0](v30, -1, -1);
  }

  v32 = v0[31];
  v34 = v0[24];
  v33 = v0[25];
  v36 = v0[22];
  v35 = v0[23];
  v37 = v0[20];
  v38 = v0[21];
  v39 = sub_1DF564B44();
  v78 = *(*(v39 - 8) + 56);
  v79 = v39;
  v78(v32, 1, 1);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v36;
  v40[5] = v35;

  v41 = sub_1DF515B98(0, 0, v32, &unk_1DF56CF88, v40);
  v0[32] = v41;
  v42 = *(v34 + 128);
  v43 = *(v34 + 136);
  v77 = v41;

  sub_1DF483600(v42, v43, v37, v38);

  v44 = sub_1DF564794();
  v45 = sub_1DF564C44();

  if (os_log_type_enabled(v44, v45))
  {
    v47 = v0[20];
    v46 = v0[21];
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v80[0] = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_1DF47EF6C(v47, v46, v80);
    _os_log_impl(&dword_1DF47C000, v44, v45, "Performing task operation for identifier %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1E12D75F0](v49, -1, -1);
    MEMORY[0x1E12D75F0](v48, -1, -1);
  }

  v51 = v0[30];
  v50 = v0[31];
  v72 = v0[29];
  v73 = v0[28];
  v52 = v0[27];
  v71 = v0[26];
  v53 = v0[24];
  v75 = v0[21];
  v76 = v0[25];
  v74 = v0[20];
  sub_1DF564484();
  (v78)(v50, 1, 1, v79);
  v70 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v70;
  v54[4] = v53;
  v54[5] = v77;
  swift_retain_n();

  v69 = sub_1DF515B98(0, 0, v50, &unk_1DF56CF98, v54);
  v0[33] = v69;
  (v78)(v50, 1, 1, v79);
  (*(v52 + 16))(v72, v51, v71);
  v55 = (*(v52 + 80) + 72) & ~*(v52 + 80);
  v56 = swift_allocObject();
  *(v56 + 2) = v53;
  *(v56 + 3) = v70;
  *(v56 + 4) = v77;
  *(v56 + 5) = v69;
  *(v56 + 6) = v74;
  *(v56 + 7) = v75;
  *(v56 + 8) = v53;
  (*(v52 + 32))(&v56[v55], v72, v71);
  *&v56[(v73 + v55 + 7) & 0xFFFFFFFFFFFFFFF8] = v76;
  swift_retain_n();

  v57 = sub_1DF515B98(0, 0, v50, &unk_1DF56CFA8, v56);
  v0[34] = v57;

  v58 = sub_1DF564794();
  v59 = sub_1DF564C44();

  if (os_log_type_enabled(v58, v59))
  {
    v61 = v0[20];
    v60 = v0[21];
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v80[0] = v63;
    *v62 = 136446210;
    *(v62 + 4) = sub_1DF47EF6C(v61, v60, v80);
    _os_log_impl(&dword_1DF47C000, v58, v59, "Storing task for identifier %{public}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x1E12D75F0](v63, -1, -1);
    MEMORY[0x1E12D75F0](v62, -1, -1);
  }

  v65 = v0[20];
  v64 = v0[21];
  v80[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38478, &unk_1DF56CFB0);
  v80[4] = &off_1F5A86FC8;
  v80[0] = v57;
  swift_beginAccess();

  sub_1DF484020(v80, v65, v64);
  swift_endAccess();
  v66 = *(MEMORY[0x1E69E86A8] + 4);
  v67 = swift_task_alloc();
  v0[35] = v67;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v67 = v0;
  v67[1] = sub_1DF535188;
  v20 = v0[19];
  v21 = MEMORY[0x1E69E7288];
  v22 = MEMORY[0x1E69E7CA8] + 8;
  v23 = v57;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v20, v23, v22, v19, v21);
}

uint64_t sub_1DF535188()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1DF5343D4;
  }

  else
  {
    v6 = sub_1DF5352B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5352B4()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];

  (*(v6 + 8))(v4, v5);
  sub_1DF490EE8(v9, v8);
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[29];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DF535398()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_1DF53467C;
  }

  else
  {
    v6 = sub_1DF5354C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5354C4()
{
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF53554C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1DF48D4B0;

  return v9(a1);
}

uint64_t sub_1DF535644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF535708, a4, 0);
}

uint64_t sub_1DF535708()
{
  v1 = v0[6];
  v2 = *(v0[2] + 120);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1DF5357EC;
  v6 = v0[6];

  return sub_1DF4845F8(v3, v4, 0, 0, 1);
}

uint64_t sub_1DF5357EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1DF513F5C;
  }

  else
  {
    v9 = sub_1DF535974;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DF535974()
{
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF535A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1DF513F5C;
  }

  else
  {
    v9 = sub_1DF535BB4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DF535BB4()
{
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF535C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF535D14, a4, 0);
}

uint64_t sub_1DF535D14()
{
  v1 = v0[6];
  v2 = *(v0[2] + 120);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1DF535DF8;
  v6 = v0[6];

  return sub_1DF4845F8(v3, v4, 0, 0, 1);
}

uint64_t sub_1DF535DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1DF513F5C;
  }

  else
  {
    v9 = sub_1DF535F80;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DF535F80()
{
  v1 = v0[6];
  v2 = v0[3];
  type metadata accessor for GeoClassificationInfo();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF53602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5360F0, a4, 0);
}

uint64_t sub_1DF5360F0()
{
  v1 = v0[6];
  v2 = *(v0[2] + 120);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1DF5361D4;
  v6 = v0[6];

  return sub_1DF4845F8(v3, v4, 0, 0, 1);
}

uint64_t sub_1DF5361D4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1DF513F5C;
  }

  else
  {
    v9 = sub_1DF53635C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DF53635C()
{
  v1 = v0[6];
  v2 = v0[3];
  type metadata accessor for Ticket();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF536408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5364CC, a4, 0);
}

uint64_t sub_1DF5364CC()
{
  v1 = v0[6];
  v2 = *(v0[2] + 120);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1DF5365B0;
  v6 = v0[6];

  return sub_1DF4845F8(v3, v4, 0, 0, 1);
}

uint64_t sub_1DF5365B0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1DF513F5C;
  }

  else
  {
    v9 = sub_1DF536738;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DF536738()
{
  v1 = v0[6];
  v2 = v0[3];
  type metadata accessor for WaitlistResult();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF5367E4()
{
  v1 = v0[6];
  v2 = v0[3];
  type metadata accessor for CloudFeature();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF536890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF536954, a4, 0);
}

uint64_t sub_1DF536954()
{
  v1 = v0[6];
  v2 = *(v0[2] + 120);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1DF536A38;
  v6 = v0[6];

  return sub_1DF4845F8(v3, v4, 0, 0, 1);
}

uint64_t sub_1DF536A38()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1DF513F5C;
  }

  else
  {
    v9 = sub_1DF536BC0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DF536BC0()
{
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF536C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1DF4E5754;

  return sub_1DF543F34(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_1DF536D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1DF4E5754;

  return sub_1DF544214(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_1DF536E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1DF4E5754;

  return sub_1DF5443A4(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_1DF536F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1DF4E5754;

  return sub_1DF544534(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_1DF536FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF537014, a8, 0);
}

uint64_t sub_1DF537014()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v11 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v11;
  *(v5 + 64) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1DF537178;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, v11, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF545518, v5, v9);
}

uint64_t sub_1DF537178()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_1DF5372B4, v4, 0);
  }

  else
  {
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1DF5372B4()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1DF537318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a4;
  v81 = a8;
  v67 = a7;
  v78 = a6;
  v79 = a3;
  v72 = a2;
  v73 = a5;
  v64 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38458, &qword_1DF56CF18);
  v54 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v75 = sub_1DF564494();
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v52 - v19;
  v76 = &v52 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v21 = swift_allocObject();
  v74 = v21;
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  v70 = sub_1DF564B44();
  v22 = *(v70 - 8);
  v69 = *(v22 + 56);
  v71 = v22 + 56;
  v69(v20, 1, 1, v70);
  v23 = *(v15 + 16);
  v66 = v15 + 16;
  v68 = v23;
  v24 = v75;
  v23(&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v75);
  v82 = v11;
  v25 = *(v11 + 16);
  v63 = v11 + 16;
  v65 = v25;
  v55 = v14;
  v25(v14, a1, v10);
  v26 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v62 = v26;
  v27 = *(v15 + 80);
  v28 = (v27 + 80) & ~v27;
  v29 = *(v11 + 80);
  v60 = v28;
  v30 = (v16 + v29 + v28) & ~v29;
  v61 = v27 | v29;
  v56 = v30;
  v53 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v78;
  v33 = v79;
  *(v31 + 2) = v78;
  *(v31 + 3) = v26;
  v34 = v72;
  v35 = v73;
  *(v31 + 4) = v72;
  *(v31 + 5) = v33;
  v36 = v80;
  *(v31 + 6) = v74;
  *(v31 + 7) = v36;
  *(v31 + 8) = v35;
  *(v31 + 9) = v32;
  v37 = *(v15 + 32);
  v58 = v15 + 32;
  v59 = v37;
  v37(&v31[v28], v77, v24);
  v38 = *(v82 + 32);
  v82 += 32;
  v57 = v38;
  v39 = v55;
  v40 = v54;
  v38(&v31[v30], v55, v54);
  v41 = v53;
  *&v31[v53] = v81;
  swift_retain_n();

  v42 = v76;
  sub_1DF4BF520(0, 0, v76, &unk_1DF56CF30, v31);

  v69(v42, 1, 1, v70);
  v43 = v77;
  v44 = v75;
  v68(v77, v67, v75);
  v45 = v40;
  v65(v39, v64, v40);
  v46 = swift_allocObject();
  v47 = v78;
  v48 = v79;
  v49 = v62;
  *(v46 + 2) = v78;
  *(v46 + 3) = v49;
  *(v46 + 4) = v48;
  *(v46 + 5) = v34;
  v50 = v80;
  *(v46 + 6) = v74;
  *(v46 + 7) = v50;
  *(v46 + 8) = v35;
  *(v46 + 9) = v47;
  v59(&v46[v60], v43, v44);
  v57(&v46[v56], v39, v45);
  *&v46[v41] = v81;
  swift_retain_n();

  sub_1DF515B98(0, 0, v76, &unk_1DF56CF40, v46);
}

uint64_t sub_1DF537894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a4;
  v81 = a8;
  v67 = a7;
  v78 = a6;
  v79 = a3;
  v72 = a2;
  v73 = a5;
  v64 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384B0, &qword_1DF56D138);
  v54 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v75 = sub_1DF564494();
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v52 - v19;
  v76 = &v52 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v21 = swift_allocObject();
  v74 = v21;
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  v70 = sub_1DF564B44();
  v22 = *(v70 - 8);
  v69 = *(v22 + 56);
  v71 = v22 + 56;
  v69(v20, 1, 1, v70);
  v23 = *(v15 + 16);
  v66 = v15 + 16;
  v68 = v23;
  v24 = v75;
  v23(&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v75);
  v82 = v11;
  v25 = *(v11 + 16);
  v63 = v11 + 16;
  v65 = v25;
  v55 = v14;
  v25(v14, a1, v10);
  v26 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v62 = v26;
  v27 = *(v15 + 80);
  v28 = (v27 + 80) & ~v27;
  v29 = *(v11 + 80);
  v60 = v28;
  v30 = (v16 + v29 + v28) & ~v29;
  v61 = v27 | v29;
  v56 = v30;
  v53 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v78;
  v33 = v79;
  *(v31 + 2) = v78;
  *(v31 + 3) = v26;
  v34 = v72;
  v35 = v73;
  *(v31 + 4) = v72;
  *(v31 + 5) = v33;
  v36 = v80;
  *(v31 + 6) = v74;
  *(v31 + 7) = v36;
  *(v31 + 8) = v35;
  *(v31 + 9) = v32;
  v37 = *(v15 + 32);
  v58 = v15 + 32;
  v59 = v37;
  v37(&v31[v28], v77, v24);
  v38 = *(v82 + 32);
  v82 += 32;
  v57 = v38;
  v39 = v55;
  v40 = v54;
  v38(&v31[v30], v55, v54);
  v41 = v53;
  *&v31[v53] = v81;
  swift_retain_n();

  v42 = v76;
  sub_1DF4BF520(0, 0, v76, &unk_1DF56D148, v31);

  v69(v42, 1, 1, v70);
  v43 = v77;
  v44 = v75;
  v68(v77, v67, v75);
  v45 = v40;
  v65(v39, v64, v40);
  v46 = swift_allocObject();
  v47 = v78;
  v48 = v79;
  v49 = v62;
  *(v46 + 2) = v78;
  *(v46 + 3) = v49;
  *(v46 + 4) = v48;
  *(v46 + 5) = v34;
  v50 = v80;
  *(v46 + 6) = v74;
  *(v46 + 7) = v50;
  *(v46 + 8) = v35;
  *(v46 + 9) = v47;
  v59(&v46[v60], v43, v44);
  v57(&v46[v56], v39, v45);
  *&v46[v41] = v81;
  swift_retain_n();

  sub_1DF515B98(0, 0, v76, &unk_1DF56D158, v46);
}

uint64_t sub_1DF537E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a4;
  v81 = a8;
  v67 = a7;
  v78 = a6;
  v79 = a3;
  v72 = a2;
  v73 = a5;
  v64 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  v54 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v75 = sub_1DF564494();
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v52 - v19;
  v76 = &v52 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v21 = swift_allocObject();
  v74 = v21;
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  v70 = sub_1DF564B44();
  v22 = *(v70 - 8);
  v69 = *(v22 + 56);
  v71 = v22 + 56;
  v69(v20, 1, 1, v70);
  v23 = *(v15 + 16);
  v66 = v15 + 16;
  v68 = v23;
  v24 = v75;
  v23(&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v75);
  v82 = v11;
  v25 = *(v11 + 16);
  v63 = v11 + 16;
  v65 = v25;
  v55 = v14;
  v25(v14, a1, v10);
  v26 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v62 = v26;
  v27 = *(v15 + 80);
  v28 = (v27 + 80) & ~v27;
  v29 = *(v11 + 80);
  v60 = v28;
  v30 = (v16 + v29 + v28) & ~v29;
  v61 = v27 | v29;
  v56 = v30;
  v53 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v78;
  v33 = v79;
  *(v31 + 2) = v78;
  *(v31 + 3) = v26;
  v34 = v72;
  v35 = v73;
  *(v31 + 4) = v72;
  *(v31 + 5) = v33;
  v36 = v80;
  *(v31 + 6) = v74;
  *(v31 + 7) = v36;
  *(v31 + 8) = v35;
  *(v31 + 9) = v32;
  v37 = *(v15 + 32);
  v58 = v15 + 32;
  v59 = v37;
  v37(&v31[v28], v77, v24);
  v38 = *(v82 + 32);
  v82 += 32;
  v57 = v38;
  v39 = v55;
  v40 = v54;
  v38(&v31[v30], v55, v54);
  v41 = v53;
  *&v31[v53] = v81;
  swift_retain_n();

  v42 = v76;
  sub_1DF4BF520(0, 0, v76, &unk_1DF56D0D0, v31);

  v69(v42, 1, 1, v70);
  v43 = v77;
  v44 = v75;
  v68(v77, v67, v75);
  v45 = v40;
  v65(v39, v64, v40);
  v46 = swift_allocObject();
  v47 = v78;
  v48 = v79;
  v49 = v62;
  *(v46 + 2) = v78;
  *(v46 + 3) = v49;
  *(v46 + 4) = v48;
  *(v46 + 5) = v34;
  v50 = v80;
  *(v46 + 6) = v74;
  *(v46 + 7) = v50;
  *(v46 + 8) = v35;
  *(v46 + 9) = v47;
  v59(&v46[v60], v43, v44);
  v57(&v46[v56], v39, v45);
  *&v46[v41] = v81;
  swift_retain_n();

  sub_1DF515B98(0, 0, v76, &unk_1DF56D0E0, v46);
}

uint64_t sub_1DF53838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a4;
  v81 = a8;
  v67 = a7;
  v78 = a6;
  v79 = a3;
  v72 = a2;
  v73 = a5;
  v64 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  v54 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v75 = sub_1DF564494();
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v52 - v19;
  v76 = &v52 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v21 = swift_allocObject();
  v74 = v21;
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  v70 = sub_1DF564B44();
  v22 = *(v70 - 8);
  v69 = *(v22 + 56);
  v71 = v22 + 56;
  v69(v20, 1, 1, v70);
  v23 = *(v15 + 16);
  v66 = v15 + 16;
  v68 = v23;
  v24 = v75;
  v23(&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v75);
  v82 = v11;
  v25 = *(v11 + 16);
  v63 = v11 + 16;
  v65 = v25;
  v55 = v14;
  v25(v14, a1, v10);
  v26 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v62 = v26;
  v27 = *(v15 + 80);
  v28 = (v27 + 80) & ~v27;
  v29 = *(v11 + 80);
  v60 = v28;
  v30 = (v16 + v29 + v28) & ~v29;
  v61 = v27 | v29;
  v56 = v30;
  v53 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v78;
  v33 = v79;
  *(v31 + 2) = v78;
  *(v31 + 3) = v26;
  v34 = v72;
  v35 = v73;
  *(v31 + 4) = v72;
  *(v31 + 5) = v33;
  v36 = v80;
  *(v31 + 6) = v74;
  *(v31 + 7) = v36;
  *(v31 + 8) = v35;
  *(v31 + 9) = v32;
  v37 = *(v15 + 32);
  v58 = v15 + 32;
  v59 = v37;
  v37(&v31[v28], v77, v24);
  v38 = *(v82 + 32);
  v82 += 32;
  v57 = v38;
  v39 = v55;
  v40 = v54;
  v38(&v31[v30], v55, v54);
  v41 = v53;
  *&v31[v53] = v81;
  swift_retain_n();

  v42 = v76;
  sub_1DF4BF520(0, 0, v76, &unk_1DF56D058, v31);

  v69(v42, 1, 1, v70);
  v43 = v77;
  v44 = v75;
  v68(v77, v67, v75);
  v45 = v40;
  v65(v39, v64, v40);
  v46 = swift_allocObject();
  v47 = v78;
  v48 = v79;
  v49 = v62;
  *(v46 + 2) = v78;
  *(v46 + 3) = v49;
  *(v46 + 4) = v48;
  *(v46 + 5) = v34;
  v50 = v80;
  *(v46 + 6) = v74;
  *(v46 + 7) = v50;
  *(v46 + 8) = v35;
  *(v46 + 9) = v47;
  v59(&v46[v60], v43, v44);
  v57(&v46[v56], v39, v45);
  *&v46[v41] = v81;
  swift_retain_n();

  sub_1DF515B98(0, 0, v76, &unk_1DF56D068, v46);
}

uint64_t sub_1DF538908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a4;
  v81 = a8;
  v67 = a7;
  v78 = a6;
  v79 = a3;
  v72 = a2;
  v73 = a5;
  v64 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v54 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v75 = sub_1DF564494();
  v15 = *(v75 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v52 - v19;
  v76 = &v52 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v21 = swift_allocObject();
  v74 = v21;
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  v70 = sub_1DF564B44();
  v22 = *(v70 - 8);
  v69 = *(v22 + 56);
  v71 = v22 + 56;
  v69(v20, 1, 1, v70);
  v23 = *(v15 + 16);
  v66 = v15 + 16;
  v68 = v23;
  v24 = v75;
  v23(&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v75);
  v82 = v11;
  v25 = *(v11 + 16);
  v63 = v11 + 16;
  v65 = v25;
  v55 = v14;
  v25(v14, a1, v10);
  v26 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v62 = v26;
  v27 = *(v15 + 80);
  v28 = (v27 + 80) & ~v27;
  v29 = *(v11 + 80);
  v60 = v28;
  v30 = (v16 + v29 + v28) & ~v29;
  v61 = v27 | v29;
  v56 = v30;
  v53 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v78;
  v33 = v79;
  *(v31 + 2) = v78;
  *(v31 + 3) = v26;
  v34 = v72;
  v35 = v73;
  *(v31 + 4) = v72;
  *(v31 + 5) = v33;
  v36 = v80;
  *(v31 + 6) = v74;
  *(v31 + 7) = v36;
  *(v31 + 8) = v35;
  *(v31 + 9) = v32;
  v37 = *(v15 + 32);
  v58 = v15 + 32;
  v59 = v37;
  v37(&v31[v28], v77, v24);
  v38 = *(v82 + 32);
  v82 += 32;
  v57 = v38;
  v39 = v55;
  v40 = v54;
  v38(&v31[v30], v55, v54);
  v41 = v53;
  *&v31[v53] = v81;
  swift_retain_n();

  v42 = v76;
  sub_1DF4BF520(0, 0, v76, &unk_1DF56CFC8, v31);

  v69(v42, 1, 1, v70);
  v43 = v77;
  v44 = v75;
  v68(v77, v67, v75);
  v45 = v40;
  v65(v39, v64, v40);
  v46 = swift_allocObject();
  v47 = v78;
  v48 = v79;
  v49 = v62;
  *(v46 + 2) = v78;
  *(v46 + 3) = v49;
  *(v46 + 4) = v48;
  *(v46 + 5) = v34;
  v50 = v80;
  *(v46 + 6) = v74;
  *(v46 + 7) = v50;
  *(v46 + 8) = v35;
  *(v46 + 9) = v47;
  v59(&v46[v60], v43, v44);
  v57(&v46[v56], v39, v45);
  *&v46[v41] = v81;
  swift_retain_n();

  sub_1DF515B98(0, 0, v76, &unk_1DF56CFD8, v46);
}

uint64_t sub_1DF538E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v18;
  *(v8 + 80) = v19;
  *(v8 + 56) = v17;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 88) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 96) = v13;
  *v11 = v8;
  v11[1] = sub_1DF538F88;
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 16, a4, v12, v13, v14);
}

uint64_t sub_1DF538F88()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1DF5391C0;
  }

  else
  {
    v6 = sub_1DF5390B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1DF5390B4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v10 = *(v0 + 64);
  v11 = *(v0 + 48);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v11;
  *(v7 + 40) = v10;
  *(v7 + 56) = v0 + 16;
  *(v7 + 64) = v3;
  os_unfair_lock_lock(v5 + 5);
  sub_1DF545050(&v5[4]);
  os_unfair_lock_unlock(v5 + 5);
  if (!v2)
  {

    v8 = *(v0 + 16);

    v9 = *(v0 + 8);

    v9();
  }
}

uint64_t sub_1DF5391C0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF545028((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

void sub_1DF5392AC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v0 + 104;
  *(v7 + 64) = v3;
  os_unfair_lock_lock((v5 + 20));
  sub_1DF546FBC((v5 + 16));
  os_unfair_lock_unlock((v5 + 20));
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF5393B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v18;
  *(v8 + 80) = v19;
  *(v8 + 56) = v17;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 88) = v11;
  v12 = type metadata accessor for GeoClassificationInfo();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 96) = v13;
  *v11 = v8;
  v11[1] = sub_1DF5394AC;
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 16, a4, v12, v13, v14);
}

uint64_t sub_1DF5394AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1DF5396E4;
  }

  else
  {
    v6 = sub_1DF5395D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1DF5395D8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v0 + 16;
  *(v7 + 64) = v3;
  os_unfair_lock_lock((v5 + 20));
  sub_1DF546F18((v5 + 16));
  os_unfair_lock_unlock((v5 + 20));
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF5396E4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF546EF0((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF5397D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v18;
  *(v8 + 80) = v19;
  *(v8 + 56) = v17;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 88) = v11;
  v12 = type metadata accessor for Ticket();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 96) = v13;
  *v11 = v8;
  v11[1] = sub_1DF5398C8;
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 16, a4, v12, v13, v14);
}

uint64_t sub_1DF5398C8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1DF539B00;
  }

  else
  {
    v6 = sub_1DF5399F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1DF5399F4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v0 + 16;
  *(v7 + 64) = v3;
  os_unfair_lock_lock((v5 + 20));
  sub_1DF546804((v5 + 16));
  os_unfair_lock_unlock((v5 + 20));
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF539B00()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF5467DC((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF539BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v18;
  *(v8 + 80) = v19;
  *(v8 + 56) = v17;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 88) = v11;
  v12 = type metadata accessor for WaitlistResult();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 96) = v13;
  *v11 = v8;
  v11[1] = sub_1DF539CE4;
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 16, a4, v12, v13, v14);
}

uint64_t sub_1DF539CE4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1DF539F1C;
  }

  else
  {
    v6 = sub_1DF539E10;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1DF539E10()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v0 + 16;
  *(v7 + 64) = v3;
  os_unfair_lock_lock((v5 + 20));
  sub_1DF5460F0((v5 + 16));
  os_unfair_lock_unlock((v5 + 20));
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF539F1C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF5460C8((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF53A008()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF547358((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF53A0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 72) = v19;
  *(v8 + 48) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v12;
  *v11 = v8;
  v11[1] = sub_1DF53A1DC;
  v13 = MEMORY[0x1E69E7288];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v12, a4, v14, v12, v13);
}

uint64_t sub_1DF53A1DC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1DF53A400;
  }

  else
  {
    v6 = sub_1DF53A308;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1DF53A308()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 64) = v3;
  os_unfair_lock_lock((v5 + 20));
  sub_1DF545914((v5 + 16));
  os_unfair_lock_unlock((v5 + 20));
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF53A400()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_task_alloc();
  v8 = *(v0 + 56);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF5458EC((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF53A4EC(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a4;
  v37 = a5;
  v38 = a2;
  v14 = sub_1DF564494();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v34 = a7;
    v35 = a6;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v32 = a1;
    v33 = a8;
    v20 = sub_1DF5647B4();
    __swift_project_value_buffer(v20, qword_1ED956068);

    v21 = sub_1DF564794();
    v22 = sub_1DF564C14();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31[1] = v8;
      v24 = v23;
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136446210;
      v26 = v38;
      *(v24 + 4) = sub_1DF47EF6C(v38, a3, &v39);
      _os_log_impl(&dword_1DF47C000, v21, v22, "Timeoutable task %{public}s finished before timeout", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E12D75F0](v25, -1, -1);
      MEMORY[0x1E12D75F0](v24, -1, -1);
    }

    else
    {

      v26 = v38;
    }

    v27 = *(v36 + 128);
    v28 = *(v36 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v30 = v29;
    (*(v15 + 8))(v19, v14);
    sub_1DF48FD84(v27, v28, v26, a3, v30);
    v39 = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38458, &qword_1DF56CF18);
    result = sub_1DF564B24();
    a1 = v32;
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF53A798(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v38 = a5;
  v39 = a2;
  v15 = sub_1DF564494();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v33 = result;
    v35 = a8;
    v36 = a7;
    v37 = a6;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v34 = a1;
    v21 = sub_1DF5647B4();
    __swift_project_value_buffer(v21, qword_1ED956068);

    v22 = sub_1DF564794();
    v23 = sub_1DF564C14();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v8;
      v26 = v25;
      v40 = v25;
      *v24 = 136446210;
      v27 = v39;
      *(v24 + 4) = sub_1DF47EF6C(v39, a3, &v40);
      _os_log_impl(&dword_1DF47C000, v22, v23, "Timeoutable task %{public}s finished before timeout", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1E12D75F0](v26, -1, -1);
      MEMORY[0x1E12D75F0](v24, -1, -1);
    }

    else
    {

      v27 = v39;
    }

    v28 = *(a4 + 128);
    v29 = *(a4 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v31 = v30;
    (*(v16 + 8))(v20, v33);
    sub_1DF48FD84(v28, v29, v27, a3, v31);
    v41 = v36 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    result = sub_1DF564B24();
    a1 = v34;
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF53AA48(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v43 = a4;
  v44 = a2;
  v17 = sub_1DF564494();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v41 = a7;
    v42 = a6;
    v37 = a10;
    v38 = result;
    v36 = a9;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v39 = a5;
    v40 = a8;
    v23 = sub_1DF5647B4();
    __swift_project_value_buffer(v23, qword_1ED956068);

    v24 = sub_1DF564794();
    v25 = sub_1DF564C14();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35[1] = v10;
      v27 = v26;
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136446210;
      v29 = v44;
      *(v27 + 4) = sub_1DF47EF6C(v44, a3, &v45);
      _os_log_impl(&dword_1DF47C000, v24, v25, "Timeoutable task %{public}s finished before timeout", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1E12D75F0](v28, -1, -1);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }

    else
    {

      v29 = v44;
    }

    v30 = *(v43 + 128);
    v31 = *(v43 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v33 = v32;
    (*(v18 + 8))(v22, v38);
    sub_1DF48FD84(v30, v31, v29, a3, v33);
    v45 = v41;
    v34 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    result = sub_1DF564B24();
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF53ACEC(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_1DF564494();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v33 = v18;
    v34 = result;
    v35 = a5;
    v36 = a7;
    v21 = a2;
    v37 = a6;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v22 = sub_1DF5647B4();
    __swift_project_value_buffer(v22, qword_1ED956068);

    v23 = sub_1DF564794();
    v24 = sub_1DF564C14();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32[1] = v7;
      v26 = v25;
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1DF47EF6C(v21, a3, &v38);
      _os_log_impl(&dword_1DF47C000, v23, v24, "Timeoutable task %{public}s finished before timeout", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1E12D75F0](v27, -1, -1);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    v28 = *(a4 + 128);
    v29 = *(a4 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v31 = v30;
    (*(v33 + 8))(v20, v34);
    sub_1DF48FD84(v28, v29, v21, a3, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    result = sub_1DF564B24();
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF53AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 72) = v19;
  *(v8 + 48) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v12;
  *v11 = v8;
  v11[1] = sub_1DF53B05C;
  v13 = MEMORY[0x1E69E7288];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v12, a4, v14, v12, v13);
}

uint64_t sub_1DF53B05C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1DF547428;
  }

  else
  {
    v4 = sub_1DF53B184;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF53B184()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v3;
  os_unfair_lock_lock(v5 + 5);
  sub_1DF544F98(&v5[4]);
  os_unfair_lock_unlock(v5 + 5);
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF53B2A0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1DF547428;
  }

  else
  {
    v4 = sub_1DF53B3C8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF53B3C8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v3;
  os_unfair_lock_lock(v5 + 5);
  sub_1DF546F80(&v5[4]);
  os_unfair_lock_unlock(v5 + 5);
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF53B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 72) = v19;
  *(v8 + 48) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v12;
  *v11 = v8;
  v11[1] = sub_1DF53B5A8;
  v13 = MEMORY[0x1E69E7288];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v12, a4, v14, v12, v13);
}

uint64_t sub_1DF53B5A8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1DF547428;
  }

  else
  {
    v4 = sub_1DF53B6D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF53B6D0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  type metadata accessor for GeoClassificationInfo();
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v3;
  os_unfair_lock_lock(v5 + 5);
  sub_1DF546EB4(&v5[4]);
  os_unfair_lock_unlock(v5 + 5);
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF53B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 72) = v19;
  *(v8 + 48) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v12;
  *v11 = v8;
  v11[1] = sub_1DF53B8C8;
  v13 = MEMORY[0x1E69E7288];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v12, a4, v14, v12, v13);
}

uint64_t sub_1DF53B8C8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1DF547428;
  }

  else
  {
    v4 = sub_1DF53B9F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF53B9F0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  type metadata accessor for Ticket();
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v3;
  os_unfair_lock_lock(v5 + 5);
  sub_1DF5467A0(&v5[4]);
  os_unfair_lock_unlock(v5 + 5);
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF53BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 72) = v19;
  *(v8 + 48) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v12;
  *v11 = v8;
  v11[1] = sub_1DF53BBE8;
  v13 = MEMORY[0x1E69E7288];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v12, a4, v14, v12, v13);
}

uint64_t sub_1DF53BBE8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1DF547428;
  }

  else
  {
    v4 = sub_1DF53BD10;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF53BD10()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  type metadata accessor for WaitlistResult();
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v3;
  os_unfair_lock_lock(v5 + 5);
  sub_1DF54608C(&v5[4]);
  os_unfair_lock_unlock(v5 + 5);
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

void sub_1DF53BE20()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  type metadata accessor for CloudFeature();
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v3;
  os_unfair_lock_lock(v5 + 5);
  sub_1DF5472DC(&v5[4]);
  os_unfair_lock_unlock(v5 + 5);
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF53BF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 72) = v19;
  *(v8 + 48) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v12;
  *v11 = v8;
  v11[1] = sub_1DF53C018;
  v13 = MEMORY[0x1E69E7288];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v12, a4, v14, v12, v13);
}

uint64_t sub_1DF53C018()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1DF547428;
  }

  else
  {
    v4 = sub_1DF53C140;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF53C140()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1DF564B64();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v10;
  *(v7 + 40) = v9;
  *(v7 + 56) = v3;
  os_unfair_lock_lock(v5 + 5);
  sub_1DF5458B0(&v5[4]);
  os_unfair_lock_unlock(v5 + 5);
  if (!v2)
  {

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1DF53C23C(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v40 = a2;
  v41 = a7;
  v16 = sub_1DF564494();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v34 = result;
    v37 = a8;
    v38 = a6;
    v36 = a9;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v35 = a5;
    v39 = a1;
    v22 = sub_1DF5647B4();
    __swift_project_value_buffer(v22, qword_1ED956068);

    v23 = sub_1DF564794();
    v24 = sub_1DF564C24();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v9;
      v27 = v26;
      v42 = v26;
      *v25 = 136446210;
      v28 = v40;
      *(v25 + 4) = sub_1DF47EF6C(v40, a3, &v42);
      _os_log_impl(&dword_1DF47C000, v23, v24, "%{public}s timed out", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1E12D75F0](v27, -1, -1);
      MEMORY[0x1E12D75F0](v25, -1, -1);
    }

    else
    {

      v28 = v40;
    }

    v29 = *(a4 + 128);
    v30 = *(a4 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v32 = v31;
    (*(v17 + 8))(v21, v34);
    sub_1DF5092A0(v29, v30, v28, a3, v32);
    sub_1DF544FD4();
    v42 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v36);
    result = sub_1DF564B14();
    a1 = v39;
  }

  *a1 = 1;
  return result;
}

id DaemonController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonController.init()()
{
  v0 = [objc_opt_self() sharedSessionWithNoUrlCache];
  v1 = [v0 urlSession];

  v2 = objc_allocWithZone(type metadata accessor for DaemonController());
  v3 = DaemonController.init(session:)(v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id DaemonController.init(session:)(void *a1)
{
  v3 = sub_1DF5647B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF564734();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x1E69E9CD0];
  *&v1[OBJC_IVAR___DaemonController_minimumActivityInterval] = *MEMORY[0x1E69E9CD0];
  v15 = 90 * *MEMORY[0x1E69E9CC0];
  if ((*MEMORY[0x1E69E9CC0] * 90) >> 64 == v15 >> 63)
  {
    v88 = v11;
    v89 = v13;
    v90 = v3;
    *&v1[OBJC_IVAR___DaemonController_maximumActivityInterval] = v15;
    *&v1[OBJC_IVAR___DaemonController_failureActivityInterval] = v14;
    v16 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
    v17 = sub_1DF564914();
    v18 = [v16 initWithMachServiceName_];

    *&v1[OBJC_IVAR___DaemonController_listener] = v18;
    v19 = sub_1DF481988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38360, &qword_1DF56CE20);
    v20 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v20 + 112) = v19;
    *&v1[OBJC_IVAR___DaemonController_accountStore] = v20;
    v109 = 0;
    v107 = 0u;
    v108 = 0u;
    v21 = sub_1DF531308();
    type metadata accessor for Config();
    v22 = swift_allocObject();
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    *(v22 + 96) = 0u;
    *(v22 + 16) = v21;
    *(v22 + 24) = &off_1F5A87E78;
    sub_1DF47E5B4(&v107, &qword_1ECE38370, &qword_1DF569E50);
    v23 = &v1[OBJC_IVAR___DaemonController_configStore];
    *v23 = v22;
    v23[1] = &off_1F5A86FD0;
    type metadata accessor for TaskLimiters();
    v24 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v24 + 112) = MEMORY[0x1E69E7CC8];
    v25 = OBJC_IVAR___DaemonController_taskLimiters;
    *&v1[OBJC_IVAR___DaemonController_taskLimiters] = v24;
    *&v1[OBJC_IVAR___DaemonController_urlSession] = a1;
    v26 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v87 = a1;
    v27 = sub_1DF564914();
    v28 = [v26 initWithSuiteName_];

    v29 = sub_1DF4FB5AC(v28);
    *&v1[OBJC_IVAR___DaemonController_geoCache] = v29;
    v30 = *&v1[v25];
    v85 = v29;
    v86 = v30;

    v31 = sub_1DF481988();
    *(&v108 + 1) = sub_1DF4BECB0(0, &qword_1ED954D38, 0x1E6959A40);
    v109 = &off_1F5A86EE8;
    *&v107 = v31;
    v32 = [objc_opt_self() sharedSessionWithNoUrlCache];
    v84 = [v32 urlSession];

    if (qword_1ED955FE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v33 = qword_1ED958B80;
  if (qword_1ED954AC8 != -1)
  {
    swift_once();
  }

  v34 = qword_1ED954AD0;
  v106[3] = type metadata accessor for HardwareChecker();
  v106[4] = &off_1F5A89048;
  v106[0] = v34;
  v105[3] = &type metadata for TapToRadarPoster;
  v105[4] = &protocol witness table for TapToRadarPoster;
  v35 = qword_1ED956018;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = v90;
  v37 = __swift_project_value_buffer(v90, qword_1ED956020);
  (*(v4 + 16))(v7, v37, v36);
  v38 = v89;
  sub_1DF564714();
  v39 = type metadata accessor for AvailabilityClient();
  v103 = v39;
  v104 = &off_1F5A8A840;
  v102[0] = v33;
  v100 = &type metadata for Device;
  v101 = &off_1F5A89060;
  v99[0] = swift_allocObject();
  sub_1DF543D2C(v106, v99[0] + 16);
  v40 = v88;
  v97 = v88;
  v98 = &off_1F5A8A820;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
  (*(v9 + 16))(boxed_opaque_existential_1, v38, v40);
  v80 = type metadata accessor for FeatureRequestHandler();
  v42 = objc_allocWithZone(v80);
  v82 = v33;
  v43 = v42;
  v44 = v103;
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
  v83 = &v79;
  v46 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = (&v79 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = v100;
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v99, v100);
  v81 = &v79;
  v52 = *(v50[-1].Description + 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v79 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 16))(v54);
  v56 = v97;
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v79 = &v79;
  v58 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v79 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v60);
  v62 = *v48;
  v95[3] = v39;
  v95[4] = &off_1F5A8A840;
  v95[0] = v62;
  v94[3] = &type metadata for Device;
  v94[4] = &off_1F5A89060;
  v63 = swift_allocObject();
  v94[0] = v63;
  v64 = *(v54 + 1);
  *(v63 + 16) = *v54;
  *(v63 + 32) = v64;
  *(v63 + 48) = *(v54 + 4);
  v93[3] = v40;
  v93[4] = &off_1F5A8A820;
  v65 = __swift_allocate_boxed_opaque_existential_1(v93);
  (*(v9 + 32))(v65, v60, v40);
  v66 = v85;
  *&v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters] = v86;
  *&v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_geoCache] = v66;
  sub_1DF47FCEC(&v107, &v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore]);
  *&v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_urlSession] = v84;
  sub_1DF47FCEC(v95, &v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_availabilityClient]);
  sub_1DF47FCEC(v94, &v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities]);
  sub_1DF47FCEC(v105, &v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_tapToRadarPoster]);
  v67 = &v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_telemetryProvider];
  *v67 = sub_1DF47FD50;
  v67[1] = 0;
  sub_1DF47FCEC(v93, &v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_signposter]);
  v68 = &v43[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable];
  *v68 = sub_1DF4C6270;
  v68[1] = 0;
  v92.receiver = v43;
  v92.super_class = v80;

  v69 = objc_msgSendSuper2(&v92, sel_init, v79);
  (*(v9 + 8))(v89, v40);
  __swift_destroy_boxed_opaque_existential_0(v105);
  __swift_destroy_boxed_opaque_existential_0(&v107);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  __swift_destroy_boxed_opaque_existential_0(v95);
  __swift_destroy_boxed_opaque_existential_0(v96);
  __swift_destroy_boxed_opaque_existential_0(v99);
  __swift_destroy_boxed_opaque_existential_0(v102);
  sub_1DF543D88(v106);
  *&v1[OBJC_IVAR___DaemonController_requestHandler] = v69;
  v70 = &v1[OBJC_IVAR___DaemonController_telemetryProvider];
  *v70 = sub_1DF47FD50;
  v70[1] = 0;
  v71 = type metadata accessor for DaemonController();
  v91.receiver = v1;
  v91.super_class = v71;
  v72 = objc_msgSendSuper2(&v91, sel_init);
  v73 = qword_1ED956258;
  v74 = v72;
  if (v73 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v90, qword_1ED956260);
  v75 = sub_1DF564794();
  v76 = sub_1DF564C44();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_1DF47C000, v75, v76, "Daemon controller has been initialized!", v77, 2u);
    MEMORY[0x1E12D75F0](v77, -1, -1);
  }

  return v74;
}

void sub_1DF53D14C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  v5 = *(v0 + OBJC_IVAR___DaemonController_listener);
  [v5 setDelegate_];
  [v5 resume];
  v6 = sub_1DF564B44();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1DF515B98(0, 0, v4, &unk_1DF56CE30, v8);

  sub_1DF53E148();
  v7(v4, 1, 1, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1DF4BF520(0, 0, v4, &unk_1DF56CE38, v9);

  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF5647B4();
  __swift_project_value_buffer(v10, qword_1ED956260);
  v11 = sub_1DF564794();
  v12 = sub_1DF564C44();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DF47C000, v11, v12, "Daemon controller did start", v13, 2u);
    MEMORY[0x1E12D75F0](v13, -1, -1);
  }
}

uint64_t sub_1DF53D400()
{
  v1 = (v0[2] + OBJC_IVAR___DaemonController_configStore);
  v0[3] = *v1;
  v2 = v1[1];
  v0[4] = v2;
  ObjectType = swift_getObjectType();
  (*(v2 + 72))(1, ObjectType, v2);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956260);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Start Fetching Subscriber status", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = v0[2];

  v9 = *(v8 + OBJC_IVAR___DaemonController_taskLimiters);
  v0[5] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1DF53D574, v9, 0);
}

uint64_t sub_1DF53D574()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_1DF4929F8(0xD000000000000012, 0x80000001DF5728E0, 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF53D5FC, 0, 0);
}

uint64_t sub_1DF53D5FC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___DaemonController_accountStore);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  swift_unknownObjectRetain();

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1DF53D724;
  v4 = *(v0 + 48);

  return sub_1DF53470C(sub_1DF53470C, 0xD000000000000012, 0x80000001DF5728E0, &unk_1DF56CF70, v2);
}

uint64_t sub_1DF53D724()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1DF53D848;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_1DF513F6C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF53D848()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1DF53D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = swift_task_alloc();
  v4[12] = v5;
  *v5 = v4;
  v5[1] = sub_1DF53D95C;

  return sub_1DF4B9B74();
}

uint64_t sub_1DF53D95C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_1DF53DCCC;
  }

  else
  {
    v5 = sub_1DF53DA74;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF53DA74()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v1, ObjectType, v3);

  return MEMORY[0x1EEE6DFA0](sub_1DF53DB14, v2, 0);
}

uint64_t sub_1DF53DB14()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  swift_beginAccess();
  v3 = *(v2 + 112);
  sub_1DF4A3080(v1);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DF53DBA4, 0, 0);
}

uint64_t sub_1DF53DBA4()
{
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956260);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Subscriber status fetched: %{BOOL,public}d", v5, 8u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DF53DCCC()
{
  v19 = v0;
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956260);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_1DF5651B4();
    v15 = sub_1DF47EF6C(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Subscriber status fetch failed with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DF53DEAC()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_1DF53DFCC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F50, &unk_1DF56A370);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4F5CC4;
  v0[13] = &block_descriptor_267;
  v0[14] = v2;
  [v1 revalidateCFUWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF53DFCC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 144) = v2;
  if (v2)
  {
    v3 = sub_1DF53E0DC;
  }

  else
  {
    v3 = sub_1DF50EC14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF53E0DC()
{
  v1 = *(v0 + 144);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 144);

  return v2();
}

void sub_1DF53E148()
{
  v5[3] = &type metadata for FeatureFlag;
  v5[4] = sub_1DF481614();
  LOBYTE(v5[0]) = 0;
  v0 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (v0)
  {
    sub_1DF53E260();
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF5647B4();
    __swift_project_value_buffer(v1, qword_1ED956260);
    v2 = sub_1DF564794();
    v3 = sub_1DF564C14();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DF47C000, v2, v3, "caching disabled", v4, 2u);
      MEMORY[0x1E12D75F0](v4, -1, -1);
    }
  }
}

void sub_1DF53E260()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956260);
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Preparing for check-in", v6, 2u);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v7 = *MEMORY[0x1E69E9C50];
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = ObjectType;
  v12[4] = sub_1DF54593C;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF53EDC8;
  v12[3] = &block_descriptor_9;
  v9 = _Block_copy(v12);
  v10 = v1;

  v11 = sub_1DF5649B4();
  xpc_activity_register((v11 + 32), v7, v9);

  _Block_release(v9);
}

uint64_t sub_1DF53E430(_xpc_activity_s *a1, char *a2)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v65 - v11;
  v13 = sub_1DF564494();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v65 - v21;
  v68 = a1;
  state = xpc_activity_get_state(a1);
  sub_1DF559EC4();
  v24 = v23;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  sub_1DF4FCF04(v12);
  v25 = *(v14 + 48);
  v69 = v25(v12, 1, v13);
  if (v69 == 1)
  {
    sub_1DF47E5B4(v12, &qword_1ECE37A10, &qword_1DF567C00);
    v26 = 0;
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    sub_1DF564474();
    sub_1DF5643C4();
    v26 = v27;
    v28 = *(v14 + 8);
    v28(v20, v13);
    v28(v22, v13);
  }

  sub_1DF4FCF04(v10);
  if (v25(v10, 1, v13) == 1)
  {
    sub_1DF47E5B4(v10, &qword_1ECE37A10, &qword_1DF567C00);
    v29 = 1;
    v30 = state;
    if (state)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v47 = sub_1DF5647B4();
    __swift_project_value_buffer(v47, qword_1ED956260);
    v48 = sub_1DF564794();
    v49 = sub_1DF564C44();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v72 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v72);
      _os_log_impl(&dword_1DF47C000, v48, v49, "new state: activity %{public}s -> check-in", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1E12D75F0](v51, -1, -1);
      MEMORY[0x1E12D75F0](v50, -1, -1);
    }

    v36 = v70;
    v37 = v69;
    sub_1DF53EE28(v68);
    goto LABEL_26;
  }

  v43 = v67;
  (*(v14 + 32))(v67, v10, v13);
  sub_1DF564474();
  sub_1DF5643C4();
  v45 = v44;
  v46 = *(v14 + 8);
  v46(v20, v13);
  v46(v43, v13);
  v29 = v45 < 0.0;
  v30 = state;
  if (!state)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v30 == 5)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v52 = sub_1DF5647B4();
    __swift_project_value_buffer(v52, qword_1ED956260);
    v53 = sub_1DF564794();
    v54 = sub_1DF564C44();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72 = v56;
      *v55 = 136446210;
      *(v55 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v72);
      _os_log_impl(&dword_1DF47C000, v53, v54, "new state: activity %{public}s -> done", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1E12D75F0](v56, -1, -1);
      MEMORY[0x1E12D75F0](v55, -1, -1);
    }

    v36 = v70;
    v37 = v69;
    goto LABEL_26;
  }

  if (v30 == 2)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v31 = sub_1DF5647B4();
    __swift_project_value_buffer(v31, qword_1ED956260);
    v32 = sub_1DF564794();
    v33 = sub_1DF564C44();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v72 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v72);
      _os_log_impl(&dword_1DF47C000, v32, v33, "new state: activity %{public}s -> run", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1E12D75F0](v35, -1, -1);
      MEMORY[0x1E12D75F0](v34, -1, -1);
    }

    v36 = v70;
    v37 = v69;
    v38 = v68;
    v39 = sub_1DF564B44();
    v40 = v66;
    (*(*(v39 - 8) + 56))(v66, 1, 1, v39);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v36;
    v41[5] = v38;
    v42 = v36;
    swift_unknownObjectRetain();
    sub_1DF4BF520(0, 0, v40, &unk_1DF56CFF0, v41);

LABEL_26:
    v72 = v30;
    v57 = 1;
    goto LABEL_32;
  }

  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v58 = sub_1DF5647B4();
  __swift_project_value_buffer(v58, qword_1ED956260);
  v59 = sub_1DF564794();
  v60 = sub_1DF564C44();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v72 = v62;
    *v61 = 136446466;
    *(v61 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v72);
    *(v61 + 12) = 2050;
    *(v61 + 14) = v30;
    _os_log_impl(&dword_1DF47C000, v59, v60, "new state: activity %{public}s -> %{public}ld [unhandled]", v61, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1E12D75F0](v62, -1, -1);
    MEMORY[0x1E12D75F0](v61, -1, -1);
  }

  v36 = v70;
  v37 = v69;
  v57 = 0;
  v72 = v30;
LABEL_32:
  v73 = v57;
  v74 = v24;
  v75 = v26;
  v76 = v37 == 1;
  v77 = v29;
  v63 = *&v36[OBJC_IVAR___DaemonController_telemetryProvider + 8];
  return sub_1DF4E3520(&v72, *&v36[OBJC_IVAR___DaemonController_telemetryProvider]);
}

uint64_t sub_1DF53ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF53F48C(a5);
}

uint64_t sub_1DF53EDC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DF53EE28(_xpc_activity_s *a1)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  v8 = sub_1DF564494();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  sub_1DF559EC4();
  v19 = v18;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  sub_1DF4FCF04(v7);
  v20 = *(v9 + 48);
  v46 = v20(v7, 1, v8);
  if (v46 == 1)
  {
    sub_1DF47E5B4(v7, &qword_1ECE37A10, &qword_1DF567C00);
    v21 = 0;
  }

  else
  {
    (*(v9 + 32))(v17, v7, v8);
    sub_1DF564474();
    sub_1DF5643C4();
    v21 = v22;
    v23 = *(v9 + 8);
    v23(v15, v8);
    v23(v17, v8);
  }

  sub_1DF4FCF04(v5);
  if (v20(v5, 1, v8) == 1)
  {
    sub_1DF47E5B4(v5, &qword_1ECE37A10, &qword_1DF567C00);
    v24 = 1;
  }

  else
  {
    v25 = v44;
    (*(v9 + 32))(v44, v5, v8);
    sub_1DF564474();
    sub_1DF5643C4();
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v15, v8);
    v28(v25, v8);
    v24 = v27 < 0.0;
  }

  v29 = v45;
  v30 = xpc_activity_copy_criteria(v45);
  v31 = v30;
  if (v30)
  {
    int64 = xpc_dictionary_get_int64(v30, *MEMORY[0x1E69E9C68]);
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v33 = sub_1DF5647B4();
    __swift_project_value_buffer(v33, qword_1ED956260);
    v34 = sub_1DF564794();
    v35 = sub_1DF564C44();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = int64;
      _os_log_impl(&dword_1DF47C000, v34, v35, "current activity delay: %{public}lld", v36, 0xCu);
      MEMORY[0x1E12D75F0](v36, -1, -1);
    }

    sub_1DF559EC4();
    v19 = v37;
    swift_unknownObjectRelease();
    LOBYTE(v48) = 1;
    v38 = v47;
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v39 = sub_1DF5647B4();
    __swift_project_value_buffer(v39, qword_1ED956260);
    v40 = sub_1DF564794();
    v41 = sub_1DF564C44();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DF47C000, v40, v41, "scheduling activity for initial run", v42, 2u);
      MEMORY[0x1E12D75F0](v42, -1, -1);
    }

    v38 = v47;
    sub_1DF54097C(v29, *(v47 + OBJC_IVAR___DaemonController_minimumActivityInterval));
    int64 = 0;
    LOBYTE(v48) = 0;
  }

  *(&v48 + 1) = int64;
  v49 = v31 == 0;
  v50 = v19;
  v51 = v21;
  v52 = v46 == 1;
  v53 = v24;
  return sub_1DF53F380(v38, &v48);
}

uint64_t sub_1DF53F380(uint64_t a1, _OWORD *a2)
{
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956260);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Check-in complete", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = *(a1 + OBJC_IVAR___DaemonController_telemetryProvider);
  v9 = *(a1 + OBJC_IVAR___DaemonController_telemetryProvider + 8);

  return sub_1DF4E2F64(a2, v8);
}

uint64_t sub_1DF53F48C(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v5 = sub_1DF564494();
  v2[45] = v5;
  v6 = *(v5 - 8);
  v2[46] = v6;
  v7 = *(v6 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF53F610, 0, 0);
}

uint64_t sub_1DF53F610()
{
  v106 = v0;
  sub_1DF559EC4();
  v2 = v1;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 352);
  *(v0 + 424) = off_1ED955FF8;
  sub_1DF4FCF04(v5);
  v6 = *(v4 + 48);
  v7 = v6(v5, 1, v3);
  *(v0 + 84) = v7;
  if (v7 == 1)
  {
    sub_1DF47E5B4(*(v0 + 352), &qword_1ECE37A10, &qword_1DF567C00);
    v8 = 0;
  }

  else
  {
    v10 = *(v0 + 408);
    v9 = *(v0 + 416);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    (*(v12 + 32))(v9, *(v0 + 352), v11);
    sub_1DF564474();
    sub_1DF5643C4();
    v8 = v13;
    v14 = *(v12 + 8);
    v14(v10, v11);
    v14(v9, v11);
  }

  *(v0 + 432) = v8;
  v15 = *(v0 + 360);
  v16 = *(v0 + 344);
  sub_1DF4FCF04(v16);
  if (v6(v16, 1, v15) == 1)
  {
    sub_1DF47E5B4(*(v0 + 344), &qword_1ECE37A10, &qword_1DF567C00);
    v17 = 1;
  }

  else
  {
    v18 = *(v0 + 400);
    v19 = *(v0 + 408);
    v20 = *(v0 + 360);
    v21 = *(v0 + 368);
    (*(v21 + 32))(v18, *(v0 + 344), v20);
    sub_1DF564474();
    sub_1DF5643C4();
    v23 = v22;
    v24 = *(v21 + 8);
    v24(v19, v20);
    v24(v18, v20);
    v17 = v23 < 0.0;
  }

  *(v0 + 83) = v17;
  if (xpc_activity_should_defer(*(v0 + 312)))
  {
    v25 = xpc_activity_set_state(*(v0 + 312), 3);
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v26 = sub_1DF5647B4();
    __swift_project_value_buffer(v26, qword_1ED956260);
    v27 = sub_1DF564794();
    v28 = sub_1DF564C44();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67240192;
      *(v29 + 4) = v25;
      _os_log_impl(&dword_1DF47C000, v27, v28, "run deferred, result: %{BOOL,public}d", v29, 8u);
      MEMORY[0x1E12D75F0](v29, -1, -1);
    }

    v30 = v7 == 1;
    v31 = *(v0 + 320);

    v103 = 1;
    v104 = 1;
    v105 = v30;
    *(v0 + 160) = 0;
    *(v0 + 161) = v25;
    *(v0 + 162) = 2;
    *(v0 + 168) = 0;
    *(v0 + 176) = 1;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 1;
    *(v0 + 208) = v2;
    *(v0 + 216) = v8;
    *(v0 + 224) = v30;
    *(v0 + 225) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38470, &qword_1DF56CF60);
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E6158];
    *(v32 + 16) = xmmword_1DF567CF0;
    *(v32 + 56) = v33;
    strcpy((v32 + 32), "Sending event");
    *(v32 + 46) = -4864;
    sub_1DF565224();

    v34 = *(v31 + OBJC_IVAR___DaemonController_telemetryProvider + 8);
    sub_1DF4E3814(v0 + 160, *(v31 + OBJC_IVAR___DaemonController_telemetryProvider));
    goto LABEL_34;
  }

  v35 = (*(v0 + 320) + OBJC_IVAR___DaemonController_configStore);
  v36 = *v35;
  v37 = v35[1];
  ObjectType = swift_getObjectType();
  v39 = (*(v37 + 64))(ObjectType, v37);
  *(v0 + 154) = v39 & 1;
  if (v39)
  {
    v41 = *(v0 + 320);
    v40 = *(v0 + 328);
    v42 = sub_1DF564B44();
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = v41;
    v44 = v41;
    sub_1DF515B98(0, 0, v40, &unk_1DF568C60, v43);
  }

  v45 = *(v0 + 360);
  v46 = *(v0 + 336);
  v47 = *(v0 + 320);
  sub_1DF542C9C(*(v0 + 312), v46);
  if (v6(v46, 1, v45) != 1)
  {
    v101 = v39;
    (*(*(v0 + 368) + 32))(*(v0 + 392), *(v0 + 336), *(v0 + 360));
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 384);
    v56 = *(v0 + 392);
    v59 = *(v0 + 360);
    v58 = *(v0 + 368);
    v60 = sub_1DF5647B4();
    __swift_project_value_buffer(v60, qword_1ED956260);
    (*(v58 + 16))(v57, v56, v59);
    v61 = sub_1DF564794();
    v62 = sub_1DF564C44();
    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 384);
    v66 = *(v0 + 360);
    v65 = *(v0 + 368);
    if (v63)
    {
      v67 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v102 = v100;
      *v67 = 136315138;
      sub_1DF484F10(&qword_1ED954CB0, MEMORY[0x1E6969530]);
      v68 = v17;
      v69 = sub_1DF5650A4();
      v99 = v62;
      v71 = v70;
      v72 = v66;
      v73 = *(v65 + 8);
      v73(v64, v72);
      v74 = v69;
      v17 = v68;
      v75 = sub_1DF47EF6C(v74, v71, &v102);

      *(v67 + 4) = v75;
      _os_log_impl(&dword_1DF47C000, v61, v99, "rebuilding cache deferred to %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x1E12D75F0](v100, -1, -1);
      MEMORY[0x1E12D75F0](v67, -1, -1);
    }

    else
    {

      v76 = v66;
      v73 = *(v65 + 8);
      v73(v64, v76);
    }

    v77 = *(v0 + 392);
    result = sub_1DF564434();
    if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v78 > -9.22337204e18)
    {
      if (v78 < 9.22337204e18)
      {
        v79 = v7 == 1;
        v80 = *(v0 + 392);
        v81 = *(v0 + 360);
        v82 = *(v0 + 368);
        v83 = *(v0 + 320);
        sub_1DF54097C(*(v0 + 312), v78);
        sub_1DF559EC4();
        v85 = v84;
        sub_1DF564434();
        v87 = fabs(v86);
        v73(v80, v81);
        *(v0 + 88) = 513;
        *(v0 + 90) = v101 & 1;
        *(v0 + 96) = v87;
        *(v0 + 104) = 0;
        *(v0 + 112) = 0;
        *(v0 + 120) = 0;
        *(v0 + 128) = 1;
        *(v0 + 136) = v85;
        *(v0 + 144) = v8;
        *(v0 + 152) = v79;
        *(v0 + 153) = v17;
        sub_1DF5407FC(v83, v0 + 88);
LABEL_34:
        v89 = *(v0 + 408);
        v88 = *(v0 + 416);
        v91 = *(v0 + 392);
        v90 = *(v0 + 400);
        v93 = *(v0 + 376);
        v92 = *(v0 + 384);
        v95 = *(v0 + 344);
        v94 = *(v0 + 352);
        v97 = *(v0 + 328);
        v96 = *(v0 + 336);

        v98 = *(v0 + 8);

        return v98();
      }

LABEL_39:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_1DF47E5B4(*(v0 + 336), &qword_1ECE37A10, &qword_1DF567C00);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v48 = sub_1DF5647B4();
  *(v0 + 440) = __swift_project_value_buffer(v48, qword_1ED956260);
  v49 = sub_1DF564794();
  v50 = sub_1DF564C44();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1DF47C000, v49, v50, "rebuilding cache, fetching all features from service", v51, 2u);
    MEMORY[0x1E12D75F0](v51, -1, -1);
  }

  v52 = swift_task_alloc();
  *(v0 + 448) = v52;
  *v52 = v0;
  v52[1] = sub_1DF53FFD0;
  v53 = *(v0 + 376);
  v54 = *(v0 + 320);

  return sub_1DF5410C4(v53);
}

uint64_t sub_1DF53FFD0()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_1DF540384;
  }

  else
  {
    v3 = sub_1DF5400E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5400E4()
{
  v1 = *(v0 + 376);
  result = sub_1DF564434();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 440);
  v5 = *(v0 + 320);
  sub_1DF54097C(*(v0 + 312), v3);
  v6 = v5;
  v7 = sub_1DF564794();
  v8 = sub_1DF564C14();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 320);
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *&v10[OBJC_IVAR___DaemonController_minimumActivityInterval];

    _os_log_impl(&dword_1DF47C000, v7, v8, "Resetting backoff time to %lld", v11, 0xCu);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 154);
  v13 = *(v0 + 83);
  v14 = *(v0 + 432);
  v16 = *(v0 + 368);
  v15 = *(v0 + 376);
  v17 = *(v0 + 360);
  v18 = *(v0 + 320);
  v19 = *(v0 + 84) == 1;
  v20 = *(v18 + OBJC_IVAR___DaemonController_minimumActivityInterval);
  *(v18 + OBJC_IVAR___DaemonController_failureActivityInterval) = v20;
  sub_1DF559EC4();
  v22 = v21;
  (*(v16 + 8))(v15, v17);
  *(v0 + 232) = 517;
  *(v0 + 234) = v12;
  *(v0 + 240) = 0;
  *(v0 + 248) = 1;
  *(v0 + 256) = 0;
  *(v0 + 264) = v20;
  *(v0 + 272) = 0;
  *(v0 + 280) = v22;
  *(v0 + 288) = v14;
  *(v0 + 296) = v19;
  *(v0 + 297) = v13;
  v23 = *(v0 + 320);
  v24 = *(v0 + 248);
  v25 = *(v0 + 280);
  *(v0 + 48) = *(v0 + 264);
  *(v0 + 64) = v25;
  *(v0 + 80) = *(v0 + 296);
  *(v0 + 16) = *(v0 + 232);
  *(v0 + 32) = v24;
  sub_1DF5407FC(v23, v0 + 16);
  sub_1DF54507C(v0 + 232);
  v27 = *(v0 + 408);
  v26 = *(v0 + 416);
  v29 = *(v0 + 392);
  v28 = *(v0 + 400);
  v31 = *(v0 + 376);
  v30 = *(v0 + 384);
  v33 = *(v0 + 344);
  v32 = *(v0 + 352);
  v35 = *(v0 + 328);
  v34 = *(v0 + 336);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1DF540384()
{
  v1 = *(v0 + 456);
  *(v0 + 304) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 440);
    if (*(v0 + 82) == 1)
    {
      v4 = *(v0 + 424);
      v6 = *(v0 + 312);
      v5 = *(v0 + 320);
      sub_1DF4FE1DC();
      v7 = sub_1DF540CB4();
      sub_1DF54097C(v6, v7);
      v8 = sub_1DF564794();
      v9 = sub_1DF564C44();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134349056;
        *(v10 + 4) = v7;
        _os_log_impl(&dword_1DF47C000, v8, v9, "empty response, rescheduling with interval %{public}lld", v10, 0xCu);
        MEMORY[0x1E12D75F0](v10, -1, -1);
      }

      v11 = *(v0 + 154);
      v12 = *(v0 + 83);
      v13 = *(v0 + 432);
      v14 = *(v0 + 84);

      sub_1DF559EC4();
      v16 = v15;

      *(v0 + 232) = 514;
      *(v0 + 234) = v11;
      *(v0 + 240) = 0;
      *(v0 + 248) = 1;
      *(v0 + 256) = 0;
      *(v0 + 264) = v7;
      *(v0 + 272) = 0;
      *(v0 + 280) = v16;
      *(v0 + 288) = v13;
      v17 = v14 == 1;
    }

    else
    {
      v32 = *(v0 + 312);
      v31 = *(v0 + 320);
      v33 = sub_1DF540CB4();
      sub_1DF54097C(v32, v33);
      v34 = sub_1DF564794();
      v35 = sub_1DF564C24();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134349056;
        *(v36 + 4) = v33;
        _os_log_impl(&dword_1DF47C000, v34, v35, "invalid new expiration after successful fetch, rescheduling with interval %{public}lld", v36, 0xCu);
        MEMORY[0x1E12D75F0](v36, -1, -1);
      }

      v37 = *(v0 + 154);
      v12 = *(v0 + 83);
      v38 = *(v0 + 432);
      v39 = *(v0 + 84);

      sub_1DF559EC4();
      v41 = v40;

      *(v0 + 232) = 515;
      *(v0 + 234) = v37;
      *(v0 + 240) = 0;
      *(v0 + 248) = 1;
      *(v0 + 256) = 0;
      *(v0 + 264) = v33;
      *(v0 + 272) = 0;
      *(v0 + 280) = v41;
      *(v0 + 288) = v38;
      v17 = v39 == 1;
    }

    *(v0 + 296) = v17;
    *(v0 + 297) = v12;
  }

  else
  {
    v18 = *(v0 + 440);
    v20 = *(v0 + 312);
    v19 = *(v0 + 320);

    v21 = sub_1DF540CB4();
    sub_1DF54097C(v20, v21);
    v22 = sub_1DF564794();
    v23 = sub_1DF564C24();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134349056;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_1DF47C000, v22, v23, "failed, rescheduling with interval %{public}lld", v24, 0xCu);
      MEMORY[0x1E12D75F0](v24, -1, -1);
    }

    v25 = *(v0 + 456);
    v26 = *(v0 + 154);
    v27 = *(v0 + 83);
    v28 = *(v0 + 432);
    v29 = *(v0 + 84);

    sub_1DF559EC4();
    *(v0 + 232) = 516;
    *(v0 + 234) = v26;
    *(v0 + 240) = 0;
    *(v0 + 248) = 1;
    *(v0 + 256) = v25;
    *(v0 + 264) = v21;
    *(v0 + 272) = 0;
    *(v0 + 280) = v30;
    *(v0 + 288) = v28;
    *(v0 + 296) = v29 == 1;
    *(v0 + 297) = v27;
  }

  v42 = *(v0 + 320);
  v43 = *(v0 + 280);
  *(v0 + 48) = *(v0 + 264);
  *(v0 + 64) = v43;
  *(v0 + 80) = *(v0 + 296);
  v44 = *(v0 + 248);
  *(v0 + 16) = *(v0 + 232);
  *(v0 + 32) = v44;
  sub_1DF5407FC(v42, v0 + 16);
  sub_1DF54507C(v0 + 232);
  v46 = *(v0 + 408);
  v45 = *(v0 + 416);
  v48 = *(v0 + 392);
  v47 = *(v0 + 400);
  v50 = *(v0 + 376);
  v49 = *(v0 + 384);
  v52 = *(v0 + 344);
  v51 = *(v0 + 352);
  v54 = *(v0 + 328);
  v53 = *(v0 + 336);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1DF5407FC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956260);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "run complete", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38470, &qword_1DF56CF60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DF567CF0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 32) = 0xD00000000000001BLL;
  *(v8 + 40) = 0x80000001DF574CF0;
  sub_1DF565224();

  v9 = *(a1 + OBJC_IVAR___DaemonController_telemetryProvider);
  v10 = *(a1 + OBJC_IVAR___DaemonController_telemetryProvider + 8);

  return sub_1DF4E3814(a2, v9);
}

void sub_1DF54097C(_xpc_activity_s *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DF564494();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF5647B4();
  __swift_project_value_buffer(v11, qword_1ED956260);
  v12 = sub_1DF564794();
  v13 = sub_1DF564C44();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = a1;
    v17 = v16;
    v32 = v16;
    *v15 = 134349314;
    *(v15 + 4) = a2;
    *(v15 + 12) = 2082;
    sub_1DF564424();
    sub_1DF484F10(&qword_1ED954CB0, MEMORY[0x1E6969530]);
    v18 = sub_1DF5650A4();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1DF47EF6C(v18, v20, &v32);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1DF47C000, v12, v13, "scheduling cache reload in before %{public}llds (%{public}s)", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    a1 = v30;
    MEMORY[0x1E12D75F0](v22, -1, -1);
    v23 = v15;
    v3 = v31;
    MEMORY[0x1E12D75F0](v23, -1, -1);
  }

  empty = xpc_activity_copy_criteria(a1);
  if (empty)
  {
    goto LABEL_8;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 0);
  if (*MEMORY[0x1E69E9DB8])
  {
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9DB8], 1);
LABEL_8:
    v25 = sub_1DF541008(a2);
    v27 = v26;
    sub_1DF5446C4(empty, v25, v26);
    xpc_activity_set_criteria(a1, empty);
    swift_unknownObjectRelease();
    v28 = *(v3 + OBJC_IVAR___DaemonController_telemetryProvider + 8);
    sub_1DF4E3258(a2, v25, v27, *(v3 + OBJC_IVAR___DaemonController_telemetryProvider));
    return;
  }

  __break(1u);
}

uint64_t sub_1DF540CB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_1DF564494();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR___DaemonController_configStore + 8];
  v12 = *&v0[OBJC_IVAR___DaemonController_configStore];
  ObjectType = swift_getObjectType();
  (*(v11 + 8))(0x726665527478656ELL, 0xEF65746144687365, ObjectType, v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DF47E5B4(v5, &qword_1ECE37A10, &qword_1DF567C00);
    v14 = OBJC_IVAR___DaemonController_failureActivityInterval;
    v6 = *&v0[OBJC_IVAR___DaemonController_failureActivityInterval];
    if (v6 + 0x4000000000000000 >= 0)
    {
      v15 = 2 * v6;
      if (*&v0[OBJC_IVAR___DaemonController_maximumActivityInterval] < 2 * v6)
      {
        v15 = *&v0[OBJC_IVAR___DaemonController_maximumActivityInterval];
      }

      *&v0[OBJC_IVAR___DaemonController_failureActivityInterval] = v15;
      if (qword_1ED956258 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
LABEL_6:
    v16 = sub_1DF5647B4();
    __swift_project_value_buffer(v16, qword_1ED956260);
    v17 = v1;
    v18 = sub_1DF564794();
    v19 = sub_1DF564C14();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v6;
      *(v20 + 12) = 2048;
      *(v20 + 14) = *(v1 + v14);

      _os_log_impl(&dword_1DF47C000, v18, v19, "Backoff time increased. Current backoff: %lld. Next backoff: %lld", v20, 0x16u);
      MEMORY[0x1E12D75F0](v20, -1, -1);
    }

    else
    {
    }

    return v6;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1DF564434();
  v22 = v21;
  v1 = *&v21;
  v23 = *(v7 + 8);
  v14 = v7 + 8;
  result = v23(v10, v6);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v22 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v22 < 9.22337204e18)
  {
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF541008(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___DaemonController_minimumActivityInterval);
  if (v2 <= result)
  {
    v2 = result;
  }

  if (v2 >= *(v1 + OBJC_IVAR___DaemonController_maximumActivityInterval))
  {
    v2 = *(v1 + OBJC_IVAR___DaemonController_maximumActivityInterval);
  }

  if ((*MEMORY[0x1E69E9CC8] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= *MEMORY[0x1E69E9CC8])
  {
    v4 = v2 * 0.2;
    if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v4 <= -9.22337204e18)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v4 >= 9.22337204e18)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    if (v4 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = 1;
  }

  result = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1DF5410C4(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = sub_1DF564494();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF541204, 0, 0);
}

uint64_t sub_1DF541204()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR___DaemonController_accountStore);
  *(v0 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF541230, v1, 0);
}

uint64_t sub_1DF541230()
{
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = [v2 aa_primaryAppleAccount];
  if (v3 && (v4 = v3, v5 = [v3 aa_altDSID], v4, v5))
  {
    v6 = sub_1DF564944();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  v0[29] = v6;
  v0[30] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DF541324, 0, 0);
}

uint64_t sub_1DF541324()
{
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[17];
  v0[31] = off_1ED955FF8;
  v0[32] = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(v1, v2, 1, 1);
  v4 = *(v3 + OBJC_IVAR___DaemonController_taskLimiters);
  v0[33] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DF5413E4, v4, 0);
}

uint64_t sub_1DF5413E4()
{
  v1 = v0[33];
  v0[34] = sub_1DF4929F8(0x75746165466C6C61, 0xEB00000000736572, 300);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_1DF5414E4;

  return sub_1DF531410(0x75746165466C6C61, 0xEB00000000736572, &unk_1DF56CEB0, 0);
}

uint64_t sub_1DF5414E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v9 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = v3[32];
    v6 = v3[30];

    v7 = sub_1DF54255C;
  }

  else
  {
    v7 = sub_1DF54160C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF54160C()
{
  v109 = v0;
  if (qword_1ED954AC8 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v1 = v0[32];
    v2 = qword_1ED954AD0;
    v0[5] = type metadata accessor for HardwareChecker();
    v0[6] = &off_1F5A89048;
    v0[2] = v2;
    if (v1 >> 62)
    {
      v3 = sub_1DF564F04();
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3)
    {
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v0[32] + 32;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x1E12D66D0](v4, v0[32]);
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_101;
          }

          v8 = *(v7 + 8 * v4);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v11 = *&v8[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v8[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL;
        if (v11 || (sub_1DF5650D4() & 1) != 0)
        {
          goto LABEL_19;
        }

        ++v4;
        if (v10 == v3)
        {
          goto LABEL_18;
        }
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

LABEL_18:
    v9 = 0;
LABEL_19:
    v0[38] = v9;
    v12 = v0[36];
    v13 = v0[17] + OBJC_IVAR___DaemonController_telemetryProvider;
    v102 = *(v13 + 8);
    v104 = *v13;
    v14 = *(*__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]) + 16);
    v106 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      v0[36];
      v15 = sub_1DF564F04();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v107 = v12 & 0xC000000000000001;
    v100 = v0[36];
    v17 = (v100 + 32);
    v18 = 256;
    while (1)
    {
      if (v15 == v16)
      {
        v18 = 0;
LABEL_35:
        if (!v15)
        {
          goto LABEL_51;
        }

LABEL_38:
        v23 = 0;
        while (1)
        {
          if (v107)
          {
            v24 = MEMORY[0x1E12D66D0](v23, v0[36]);
          }

          else
          {
            if (v23 >= *(v106 + 16))
            {
              goto LABEL_103;
            }

            v24 = v17[v23];
          }

          v25 = v24;
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_102;
          }

          v27 = *&v24[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v24[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL;
          if (v27 || (sub_1DF5650D4() & 1) != 0)
          {
            v29 = OBJC_IVAR___CloudFeature_canUse;
            swift_beginAccess();
            LODWORD(v29) = v25[v29];

            if (v29)
            {
              v28 = 0x10000;
            }

            else
            {
              v28 = 0;
            }

            goto LABEL_55;
          }

          ++v23;
          if (v26 == v15)
          {
            goto LABEL_51;
          }
        }
      }

      if (v107)
      {
        v19 = MEMORY[0x1E12D66D0](v16, v0[36]);
      }

      else
      {
        if (v16 >= *(v106 + 16))
        {
          goto LABEL_99;
        }

        v19 = v17[v16];
      }

      v20 = v19;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      if (*&v19[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v19[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL)
      {
        break;
      }

      v22 = sub_1DF5650D4();

      ++v16;
      if (v22)
      {
        goto LABEL_35;
      }
    }

    v18 = 256;
    if (v15)
    {
      goto LABEL_38;
    }

LABEL_51:
    v28 = 0;
LABEL_55:
    v30 = MobileGestalt_get_current_device();
    if (!v30)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v30, v31, v32);
    }

    v33 = v30;
    v34 = MobileGestalt_copy_regionCode_obj();

    if (v34)
    {
      v35 = sub_1DF564944();
      v37 = v36;

      v38 = v35;
      v39 = v0[30];
      if (v38 == 18499 && v37 == 0xE200000000000000)
      {

        v40 = 0x1000000;
        if (!v9)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v45 = sub_1DF5650D4();

        if (v45)
        {
          v40 = 0x1000000;
        }

        else
        {
          v40 = 0;
        }

        if (!v9)
        {
LABEL_70:
          v44 = 0;
          v43 = 0;
          goto LABEL_71;
        }
      }
    }

    else
    {
      v41 = v0[30];

      v40 = 0;
      if (!v9)
      {
        goto LABEL_70;
      }
    }

    v42 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    v43 = *(v9 + v42) ? 0x1000000000000 : 0;
    v44 = 0x10000000000;
LABEL_71:
    sub_1DF4E2378(v18 | v14 | v28 | v40 | v44 | v43 | ((v0[30] != 0) << 32), 0, 0, v104);
    if (!v15)
    {
      v62 = v0[36];
      v63 = v0[32];

      if (qword_1ED956258 != -1)
      {
        swift_once();
      }

      v64 = sub_1DF5647B4();
      __swift_project_value_buffer(v64, qword_1ED956260);
      v65 = sub_1DF564794();
      v66 = sub_1DF564C24();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1DF47C000, v65, v66, "no feature availability in response", v67, 2u);
        MEMORY[0x1E12D75F0](v67, -1, -1);
      }

      v68 = v0[34];

      sub_1DF5448BC();
      swift_allocError();
      *v69 = 1;
      swift_willThrow();

      sub_1DF543D88((v0 + 2));
      v71 = v0[26];
      v70 = v0[27];
      v73 = v0[24];
      v72 = v0[25];
      v75 = v0[22];
      v74 = v0[23];
      v76 = v0[21];
      v77 = v0[18];

      v78 = v0[1];

      return v78();
    }

    v46 = v0[31];
    v48 = v0[25];
    v47 = v0[26];
    v49 = v0[19];
    v50 = v0[20];
    sub_1DF4FE1DC();
    sub_1DF5643B4();
    v52 = *(v50 + 16);
    v51 = v50 + 16;
    v0[39] = v52;
    v0[40] = v51 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v52(v48, v47, v49);
    v53 = v0[37];
    if (v107)
    {
      break;
    }

    if (*(v106 + 16))
    {
      v54 = *v17;
      goto LABEL_75;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v54 = MEMORY[0x1E12D66D0](0, v0[36]);
LABEL_75:
  v55 = v54;
  v105 = (v51 - 8);
  v57 = v0[24];
  v56 = v0[25];
  v108[0] = v55;
  sub_1DF542844(v56, v108, v57);
  if (!v53)
  {
    v80 = v0[24];
    v79 = v0[25];
    v81 = v0[19];

    v82 = *v105;
    v0[46] = *v105;
    v101 = v82;
    v82(v79, v81);
    v83 = *(v51 + 16);
    v0[47] = v83;
    v103 = v51 + 16;
    v83(v79, v80, v81);
    if (v15 != 1)
    {
      v90 = (v100 + 40);
      v91 = 1;
      do
      {
        if (v107)
        {
          v92 = MEMORY[0x1E12D66D0](v91, v0[36]);
        }

        else
        {
          if (v91 >= *(v106 + 16))
          {
            goto LABEL_104;
          }

          v92 = *v90;
        }

        v93 = v92;
        v94 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          goto LABEL_105;
        }

        v96 = v0[24];
        v95 = v0[25];
        v108[0] = v93;
        sub_1DF542844(v95, v108, v96);
        v98 = v0[24];
        v97 = v0[25];
        v99 = v0[19];

        v0[46] = v101;
        v101(v97, v99);
        v0[47] = v83;
        v83(v97, v98, v99);
        ++v91;
        ++v90;
      }

      while (v94 != v15);
    }

    v84 = v0[27];
    v85 = v0[28];
    v87 = v0[25];
    v86 = v0[26];
    v88 = v0[19];
    v89 = v0[17];
    v0[41] = v105 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v101(v86, v88);
    v0[42] = v103 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v83(v84, v87, v88);
    sub_1DF4FB970();
    v0[43] = *(v89 + OBJC_IVAR___DaemonController_requestHandler);
    v30 = sub_1DF541F38;
    v31 = v85;
    v32 = 0;

    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }

  v58 = v0[25];
  v59 = v0[19];

  v60 = *v105;

  return v60(v58, v59);
}