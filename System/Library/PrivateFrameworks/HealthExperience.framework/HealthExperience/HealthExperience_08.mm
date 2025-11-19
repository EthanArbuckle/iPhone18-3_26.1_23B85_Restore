unint64_t sub_1D0FCFE0C()
{
  result = qword_1EC5FD3C8;
  if (!qword_1EC5FD3C8)
  {
    sub_1D0FCFDB0(255, &qword_1EC5FC7F0, &qword_1EE070DE0, 0x1E695CD58, sub_1D0F1ACD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD3C8);
  }

  return result;
}

void sub_1D0FCFEC4()
{
  if (!qword_1EC5FD3E8)
  {
    sub_1D0FCEEB0();
    sub_1D0F25ECC(255, &qword_1EE071010);
    v0 = sub_1D0FF6408();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD3E8);
    }
  }
}

void sub_1D0FCFF44()
{
  if (!qword_1EC5FD3F0)
  {
    sub_1D0FCFEC4();
    sub_1D0FD0030(255, &qword_1EC5FD3F8, sub_1D0FCEEB0, MEMORY[0x1E695C000]);
    sub_1D0FCF218(&qword_1EC5FD400, sub_1D0FCFEC4);
    sub_1D0FD0094();
    v0 = sub_1D0FF4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD3F0);
    }
  }
}

void sub_1D0FD0030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D0FD0094()
{
  result = qword_1EC5FD408;
  if (!qword_1EC5FD408)
  {
    sub_1D0FD0030(255, &qword_1EC5FD3F8, sub_1D0FCEEB0, MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD408);
  }

  return result;
}

id sub_1D0FD011C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  result = sub_1D0FCEA30(v8, v4, v5, v6, v7);
  *a2 = result;
  return result;
}

id static AnalyticsTransforming.nilNumberValue.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v0 initWithInteger_];
}

id static AnalyticsTransforming.transformedValue(for:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v3 = sel_initWithInteger_;
    v4 = -1;
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v3 = sel_initWithDouble_;
  }

  return [v2 v3];
}

id static AnalyticsTransforming.bucketedValue(for:bucketWidth:)(double a1, double a2)
{
  v2 = a1 / a2;
  if (v2 > 100.0)
  {
    v2 = 100.0;
  }

  v3 = round(v2);
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v4 initWithDouble_];
}

id static AnalyticsTransforming.transformedValue(for:bucketWidth:)(void *a1, double a2)
{
  if (a1)
  {
    v3 = a1;
    [v3 doubleValue];
    v5 = v4 / a2;
    if (v5 > 100.0)
    {
      v5 = 100.0;
    }

    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

    return v6;
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    return [v8 initWithInteger_];
  }
}

uint64_t static AnalyticsTransforming.closestNumber(to:in:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = 0;
  v4 = (a2 + 32);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 > a1)
    {
      break;
    }

    if (-v2 == --v3)
    {
      return *(a2 + 8 * v2 + 24);
    }
  }

  if (v3)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1 - v5;
  if (__OFSUB__(a1, v5))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 < 0)
  {
    v10 = __OFSUB__(0, v9);
    v9 = v5 - a1;
    if (v10)
    {
      goto LABEL_23;
    }
  }

  v11 = v8 - v3;
  if (v11 >= v2)
  {
    goto LABEL_21;
  }

  v12 = *(a2 + 32 + 8 * v11);
  v13 = a1 - v12;
  if (__OFSUB__(a1, v12))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1D0FF5F98();
    __break(1u);
    return result;
  }

  if (v13 < 0)
  {
    v10 = __OFSUB__(0, v13);
    v13 = v12 - a1;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  if (v9 >= v13)
  {
    return *(a2 + 32 + 8 * v11);
  }

  else
  {
    return v5;
  }
}

id static AnalyticsTransforming.joinedTupleString(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D0FD0C6C(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x1D3880AC0](v4, v5);
      MEMORY[0x1D3880AC0](41, 0xE100000000000000);

      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D0FD0C6C((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = 40;
      *(v8 + 40) = 0xE100000000000000;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  sub_1D0F23A10(0, &qword_1EE070E18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D0F7420C();
  sub_1D0FF5388();

  v9 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v10 = sub_1D0FF53E8();

  v11 = [v9 initWithString_];

  return v11;
}

id static AnalyticsTransforming.numberOrNilSentinel(for:nilSentinel:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    a3 = a1;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v4 initWithInteger_];
}

uint64_t sub_1D0FD06BC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D0FF5428();
    v7 = v6;

    v8 = MEMORY[0x1E69E6158];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v11[2] = 0;
  }

  v11[0] = v5;
  v11[1] = v7;
  v11[3] = v8;
  v9 = static AnalyticsTransforming.valueOrNilString(for:)(v11);
  sub_1D0F23B7C(v11);
  return v9;
}

uint64_t static AnalyticsTransforming.addDeviceContextPayloadValuesToEvent(from:event:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  if (!a1)
  {
    sub_1D0FF4BE8();
    v19 = sub_1D0FF4C08();
    v20 = sub_1D0FF5958();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136315138;
      v23 = sub_1D0FF6468();
      v25 = sub_1D0F1AE0C(v23, v24, &v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D0F17000, v19, v20, "%s Error adding devicecounts to event: input dictionary was nil or not provided. ", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1D3882680](v22, -1, -1);
      MEMORY[0x1D3882680](v21, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_14;
  }

  swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (!v11 || !a2)
  {
    sub_1D0FF4BE8();
    swift_unknownObjectRetain();
    v26 = sub_1D0FF4C08();
    v27 = sub_1D0FF5958();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44 = v29;
      *v28 = 136315394;
      v30 = sub_1D0FF6468();
      v32 = sub_1D0F1AE0C(v30, v31, &v44);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v43 = a2;
      sub_1D0FD0CEC();
      swift_unknownObjectRetain();
      v33 = sub_1D0FF5448();
      v35 = sub_1D0F1AE0C(v33, v34, &v44);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_1D0F17000, v26, v27, "%s Error adding device counts to event: %s - event was not of type DeviceCountAnalyticsProviding", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v29, -1, -1);
      MEMORY[0x1D3882680](v28, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
LABEL_14:
    swift_unknownObjectRetain();
    return a2;
  }

  v12 = v11;
  sub_1D0F1ACD4(0, &qword_1EE070DF0);
  swift_unknownObjectRetain();
  v13 = sub_1D0FF5BD8();
  v14 = sub_1D0F232F4(v13, a1);

  if (!v14)
  {
    v14 = sub_1D0FF5BD8();
  }

  ObjectType = swift_getObjectType();
  v12[2](v14, ObjectType, v12);
  v16 = sub_1D0FF5BD8();
  v17 = sub_1D0F232F4(v16, a1);

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = sub_1D0FF5BD8();
  }

  v12[5](v18, ObjectType, v12);
  v36 = sub_1D0FF5BD8();
  v37 = sub_1D0F232F4(v36, a1);

  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = sub_1D0FF5BD8();
  }

  v12[8](v38, ObjectType, v12);
  v39 = sub_1D0FF5BD8();
  v40 = sub_1D0F232F4(v39, a1);

  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = sub_1D0FF5BD8();
  }

  v12[11](v41, ObjectType, v12);
  return a2;
}

size_t sub_1D0FD0C4C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D0F7C8E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D0FD0C6C(char *a1, int64_t a2, char a3)
{
  result = sub_1D0F7CAE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D0FD0C8C(char *a1, int64_t a2, char a3)
{
  result = sub_1D0F7CC04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D0FD0CAC(void *a1, int64_t a2, char a3)
{
  result = sub_1D0F7CD10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D0FD0CCC(char *a1, int64_t a2, char a3)
{
  result = sub_1D0F7CE5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1D0FD0CEC()
{
  result = qword_1EC5FD420;
  if (!qword_1EC5FD420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC5FD420);
  }

  return result;
}

unint64_t sub_1D0FD0E40()
{
  v1 = *v0;
  sub_1D0FF5DE8();

  if (v1 <= 3)
  {
    v10 = 0xE900000000000065;
    v11 = 0x6C62697369567369;
    v12 = 0x80000001D1003360;
    v13 = 0xD000000000000016;
    if (v1 != 2)
    {
      v13 = 0xD000000000000019;
      v12 = 0x80000001D1003380;
    }

    if (v1)
    {
      v11 = 0xD00000000000001ALL;
      v10 = 0x80000001D1003340;
    }

    if (v1 <= 1)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    if (v1 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v2 = 0x80000001D10033E0;
    v3 = 0xD000000000000020;
    v4 = 0x80000001D1003410;
    v5 = 0xD000000000000017;
    if (v1 != 7)
    {
      v5 = 0xD00000000000001ALL;
      v4 = 0x80000001D1003430;
    }

    if (v1 != 6)
    {
      v3 = v5;
      v2 = v4;
    }

    v6 = 0x80000001D10033A0;
    v7 = 0xD00000000000001CLL;
    if (v1 != 4)
    {
      v7 = 0xD000000000000019;
      v6 = 0x80000001D10033C0;
    }

    if (v1 <= 5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v1 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }
  }

  MEMORY[0x1D3880AC0](v8, v9);

  return 0xD000000000000023;
}

unint64_t HealthSharingFeatureManager.Configuration.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6C62697369567369;
    v7 = 0xD000000000000016;
    if (v1 != 2)
    {
      v7 = 0xD000000000000019;
    }

    if (*v0)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000017;
    if (v1 != 7)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001CLL;
    if (v1 != 4)
    {
      v4 = 0xD000000000000019;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t HealthSharingFeatureManager.Configuration.userDefault.getter()
{
  sub_1D0FD0E40();
  sub_1D0FB9878();
  sub_1D0FF59A8();
  return sub_1D0FF4598();
}

HealthExperience::HealthSharingFeatureManager::Configuration_optional __swiftcall HealthSharingFeatureManager.Configuration.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D0FF6088();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D0FD11E4()
{
  sub_1D0FF6338();
  sub_1D0FB9E74();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FD1234()
{
  sub_1D0FF6338();
  sub_1D0FB9E74();
  return sub_1D0FF6378();
}

unint64_t sub_1D0FD1284@<X0>(unint64_t *a1@<X8>)
{
  result = HealthSharingFeatureManager.Configuration.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static HealthSharingFeatureManager.isFeatureFlagEnabled.getter()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 features];

    if (v2)
    {
      [v2 sharingPlus];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void static HealthSharingFeatureManager.isFeatureVisible(_:)(char *a1)
{
  sub_1D0FD1550();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  v8 = [objc_opt_self() sharedBehavior];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v8 features];

  if (!v10)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v11 = [v10 sharingPlus];

  if (v11)
  {
    sub_1D0FB9878();
    sub_1D0FF59A8();
    v13[15] = 0;
    sub_1D0FF4598();
    sub_1D0FF4578();
    v12 = *(v4 + 8);
    v12(v6, v3);
    if (v13[14] == 1)
    {
      v13[13] = v7;
      sub_1D0FD0E40();
      sub_1D0FF59A8();
      v13[12] = 0;
      sub_1D0FF4598();
      sub_1D0FF4578();
      v12(v6, v3);
    }
  }
}

void sub_1D0FD1550()
{
  if (!qword_1EE06F838)
  {
    v0 = sub_1D0FF45A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F838);
    }
  }
}

unint64_t sub_1D0FD15A4()
{
  result = qword_1EC5FD428;
  if (!qword_1EC5FD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD428);
  }

  return result;
}

uint64_t sub_1D0FD1618@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_1D0FD1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1];
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
}

void sub_1D0FD164C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001D1005690;
  *(a1 + 16) = 0;
}

uint64_t SnapshotDataSourceItemCellRegistration.init<A, B>(typedRegistration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, id (**a5)(uint64_t a1, uint64_t a2, uint64_t a3)@<X8>)
{
  v10 = sub_1D0FF5AC8();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  result = (*(v11 + 32))(&v13[v12], a1, v10);
  *a5 = sub_1D0FD1CBC;
  a5[1] = v13;
  return result;
}

id sub_1D0FD176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41[5] = a5;
  v41[3] = a4;
  v41[2] = a2;
  v41[4] = a1;
  v8 = sub_1D0FF4C18();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D0FF5C38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v41 - v16;
  v18 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F39694(a3, v48);
  v41[1] = sub_1D0FD1EE4();
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if (v21)
  {
    v22(v17, 0, 1, a6);
    (*(v18 + 32))(v20, v17, a6);
    (*(v18 + 16))(v14, v20, a6);
    v22(v14, 0, 1, a6);
    v23 = sub_1D0FF5AD8();
    (*(v11 + 8))(v14, v10);
    (*(v18 + 8))(v20, a6);
    return v23;
  }

  else
  {
    v22(v17, 1, 1, a6);
    (*(v11 + 8))(v17, v10);
    v25 = v42;
    sub_1D0FF4B78();
    sub_1D0F39694(a3, v48);
    sub_1D0F39694(a3, v47);
    v26 = sub_1D0FF4C08();
    v27 = sub_1D0FF5958();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = v29;
      *v28 = 136315906;
      *(v28 + 4) = sub_1D0F1AE0C(0xD000000000000026, 0x80000001D1000FF0, &v46);
      *(v28 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      swift_getDynamicType();
      v30 = sub_1D0FF6468();
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      v33 = sub_1D0F1AE0C(v30, v32, &v46);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      v45[0] = a6;
      swift_getMetatypeMetadata();
      v34 = sub_1D0FF5448();
      v36 = sub_1D0F1AE0C(v34, v35, &v46);

      *(v28 + 24) = v36;
      *(v28 + 32) = 2080;
      sub_1D0F39694(v47, v45);
      v37 = sub_1D0FF5448();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v40 = sub_1D0F1AE0C(v37, v39, &v46);

      *(v28 + 34) = v40;
      _os_log_impl(&dword_1D0F17000, v26, v27, "[%s]: Item passed to dequeue block is of type %s instead of %s: %s", v28, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v29, -1, -1);
      MEMORY[0x1D3882680](v28, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
    }

    (*(v43 + 8))(v25, v44);
    return [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }
}

id sub_1D0FD1CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(sub_1D0FF5AC8() - 8);
  v10 = v3 + ((*(v9 + 80) + 40) & ~*(v9 + 80));

  return sub_1D0FD176C(a1, a2, a3, v10, v7, v8);
}

uint64_t SnapshotDataSourceItemCellRegistration.init<A>(existingRegistration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2, uint64_t a3)@<X8>)
{
  sub_1D0FD1EE4();
  v6 = sub_1D0FF5AC8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  result = (*(v7 + 32))(v9 + v8, a1, v6);
  *a3 = sub_1D0FD1F48;
  a3[1] = v9;
  return result;
}

uint64_t sub_1D0FD1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0F39694(a3, v5);
  sub_1D0FD1EE4();
  v3 = sub_1D0FF5AD8();
  sub_1D0FD20F4(v5);
  return v3;
}

unint64_t sub_1D0FD1EE4()
{
  result = qword_1EE06EF58[0];
  if (!qword_1EE06EF58[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE06EF58);
  }

  return result;
}

uint64_t sub_1D0FD1F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FD1EE4();
  sub_1D0FF5AC8();

  return sub_1D0FD1E68(a1, a2, a3);
}

uint64_t sub_1D0FD2018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0FD2054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D0FD209C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D0FD20CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
}

uint64_t sub_1D0FD20E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_1D0FD20F4(uint64_t a1)
{
  sub_1D0FD2150();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D0FD2150()
{
  if (!qword_1EE06EF50)
  {
    sub_1D0FD1EE4();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06EF50);
    }
  }
}

uint64_t sub_1D0FD21AC()
{
  v1 = type metadata accessor for SharingEntryProfileInformation();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D0FF4348();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD556C(v0 + *(v1 + 40), v6, sub_1D0F3F904);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D0FD2974(v6, sub_1D0F3F904);
    sub_1D0FD556C(v0, v3, type metadata accessor for SharingEntryProfileInformation);
    v11 = &v3[*(v1 + 60)];
    v12 = *v11;
    v13 = v11[8];
    sub_1D0FD2974(v3, type metadata accessor for SharingEntryProfileInformation);
    if ((v13 & 1) != 0 || v12 <= 0)
    {
      if (qword_1EE06E2E0 != -1)
      {
        swift_once();
      }

      return sub_1D0FF4108();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (qword_1EC5FBDB8 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC607FA8;
    v16 = sub_1D0FF42E8();
    v17 = [v15 stringFromDate_];

    v18 = sub_1D0FF5428();
    (*(v8 + 8))(v10, v7);
    return v18;
  }
}

uint64_t SyncStatusProviding.localizedSyncStatus.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D0FF4348();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D0FD2974(v10, sub_1D0F3F904);
    (*(v5 + 16))(v7, v2, a1);
    sub_1D0FD2910();
    if (swift_dynamicCast())
    {
      v15 = *(&v26 + 1);
      v16 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v17 = (*(v16 + 8))(v15, v16);
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(&v25);
      if ((v19 & 1) == 0 && v17 >= 1)
      {
        return 0;
      }
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_1D0FD2974(&v25, sub_1D0FD29D4);
    }

    if (qword_1EE06E2E0 != -1)
    {
      swift_once();
    }

    return sub_1D0FF4108();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (qword_1EC5FBDB8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EC607FA8;
    v22 = sub_1D0FF42E8();
    v23 = [v21 stringFromDate_];

    v24 = sub_1D0FF5428();
    (*(v12 + 8))(v14, v11);
    return v24;
  }
}

unint64_t sub_1D0FD2910()
{
  result = qword_1EC5FD430;
  if (!qword_1EC5FD430)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC5FD430);
  }

  return result;
}

uint64_t sub_1D0FD2974(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D0FD2A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t HKCloudSyncObserverStatus.lastPushOrPullDate.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_1D0FF4348();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  v40 = v4;
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  sub_1D0FD2A08(0, &qword_1EC5FD440, sub_1D0F3F904, MEMORY[0x1E69E6F90]);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v42 = *(v5 + 72);
  v38 = swift_allocObject();
  v18 = v38 + v17;
  v19 = v39;
  v20 = [v39 lastPushDate];
  if (v20)
  {
    v21 = v20;
    sub_1D0FF4328();

    v22 = v2[7];
    v22(v16, 0, 1, v1);
  }

  else
  {
    v22 = v2[7];
    v22(v16, 1, 1, v1);
  }

  sub_1D0FB015C(v16, v18);
  v23 = [v19 lastPullDate];
  if (v23)
  {
    v24 = v23;
    sub_1D0FF4328();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v22(v14, v25, 1, v1);
  sub_1D0FB015C(v14, v18 + v42);
  sub_1D0FD556C(v18, v11, sub_1D0F3F904);
  sub_1D0FB015C(v11, v8);
  v26 = v2[6];
  v27 = (v2 + 4);
  v28 = v26(v8, 1, v1);
  v39 = v2;
  if (v28 == 1)
  {
    sub_1D0FD2974(v8, sub_1D0F3F904);
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v37 = *v27;
    v37(v43, v8, v1);
    v29 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1D0F5016C(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1D0F5016C(v30 > 1, v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v37(&v29[((v39[80] + 32) & ~v39[80]) + *(v39 + 9) * v31], v43, v1);
  }

  sub_1D0FD556C(v18 + v42, v11, sub_1D0F3F904);
  sub_1D0FB015C(v11, v8);
  if (v26(v8, 1, v1) == 1)
  {
    sub_1D0FD2974(v8, sub_1D0F3F904);
  }

  else
  {
    v32 = *v27;
    (*v27)(v43, v8, v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1D0F5016C(0, *(v29 + 2) + 1, 1, v29);
    }

    v34 = *(v29 + 2);
    v33 = *(v29 + 3);
    if (v34 >= v33 >> 1)
    {
      v29 = sub_1D0F5016C(v33 > 1, v34 + 1, 1, v29);
    }

    *(v29 + 2) = v34 + 1;
    v32(&v29[((v39[80] + 32) & ~v39[80]) + *(v39 + 9) * v34], v43, v1);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FD4624(v29, v41);
}

id sub_1D0FD2FF0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  result = [v0 setDoesRelativeDateFormatting_];
  qword_1EC607FA8 = v0;
  return result;
}

uint64_t CloudSyncStatusProviding.showSyncActivity.getter(uint64_t a1, uint64_t a2)
{
  sub_1D0FD4A28(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(a2 + 8) + 32))(a1);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = v7;
    (*(a2 + 16))(a1, a2);
    v11 = type metadata accessor for CloudSyncResponse();
    v12 = (*(*(v11 - 8) + 48))(v6, 1, v11);
    v13 = sub_1D0FD4A28;
    if (v12 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = CloudSyncResponse.showSyncActivity(for:)(v10, 0);
      v13 = type metadata accessor for CloudSyncResponse;
    }

    sub_1D0FD2974(v6, v13);
  }

  return v9 & 1;
}

uint64_t CloudSyncResponse.showSyncActivity(for:)(uint64_t a1, char a2)
{
  v5 = sub_1D0FF4608();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD4AA8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD4B0C(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    if ((a1 - 2) >= 2)
    {
      if (a1 == 1)
      {
        v39 = v5;
        sub_1D0FD4B40(0);
        v25 = sub_1D0FF52B8();
        v26 = [v25 syncEnabled];

        if (v26)
        {
          v27 = sub_1D0FF52B8();
          v28 = [v27 restoreCompletionDate];

          if (v28)
          {
            sub_1D0FF4328();

            v29 = sub_1D0FF4348();
            (*(*(v29 - 8) + 56))(v20, 0, 1, v29);
            sub_1D0FD2974(v20, sub_1D0F3F904);
            v30 = v39;
          }

          else
          {
            v31 = sub_1D0FF4348();
            v21 = 1;
            (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
            sub_1D0FD2974(v20, sub_1D0F3F904);
            v32 = type metadata accessor for CloudSyncResponse();
            v30 = v39;
            if (*(v2 + *(v32 + 24)) != 1)
            {
              return v21 & 1;
            }
          }

          v33 = *(type metadata accessor for CloudSyncResponse() + 20);
          v34 = v40;
          (*(v40 + 104))(v17, *MEMORY[0x1E69A3CA0], v30);
          (*(v34 + 56))(v17, 0, 1, v30);
          v35 = *(v9 + 48);
          sub_1D0FD556C(v2 + v33, v11, sub_1D0FD4B0C);
          sub_1D0FD556C(v17, &v11[v35], sub_1D0FD4B0C);
          v36 = *(v34 + 48);
          if (v36(v11, 1, v30) == 1)
          {
            sub_1D0FD2974(v17, sub_1D0FD4B0C);
            if (v36(&v11[v35], 1, v30) == 1)
            {
              sub_1D0FD2974(v11, sub_1D0FD4B0C);
              v21 = 1;
              return v21 & 1;
            }
          }

          else
          {
            sub_1D0FD556C(v11, v15, sub_1D0FD4B0C);
            if (v36(&v11[v35], 1, v30) != 1)
            {
              (*(v34 + 32))(v7, &v11[v35], v30);
              sub_1D0FD5024(&qword_1EC5FD450, MEMORY[0x1E69A3CA8]);
              v37 = v34;
              v21 = sub_1D0FF53D8();
              v38 = *(v37 + 8);
              v38(v7, v30);
              sub_1D0FD2974(v17, sub_1D0FD4B0C);
              v38(v15, v30);
              sub_1D0FD2974(v11, sub_1D0FD4B0C);
              return v21 & 1;
            }

            sub_1D0FD2974(v17, sub_1D0FD4B0C);
            (*(v34 + 8))(v15, v30);
          }

          sub_1D0FD2974(v11, sub_1D0FD4AA8);
        }
      }
    }

    else
    {
      sub_1D0FD4B40(0);
      v23 = sub_1D0FF52B8();
      v24 = [v23 dataUploadRequestStatus];

      if (v24 == 3)
      {
        v21 = *(v2 + *(type metadata accessor for CloudSyncResponse() + 24)) ^ 1;
        return v21 & 1;
      }
    }
  }

  v21 = 0;
  return v21 & 1;
}

uint64_t CloudSyncResponse.observerStatus.getter()
{
  sub_1D0FD4B40(0);

  return sub_1D0FF52B8();
}

uint64_t CloudSyncResponse.observerStatus.setter()
{
  sub_1D0FD4B40(0);

  return sub_1D0FF52C8();
}

void (*CloudSyncResponse.observerStatus.modify(uint64_t *a1))(void *a1)
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
  sub_1D0FD4B40(0);
  *(v3 + 32) = sub_1D0FF52A8();
  return sub_1D0F6F304;
}

uint64_t CloudSyncResponse.activeSyncState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudSyncResponse() + 20);

  return sub_1D0FD4BC0(a1, v3);
}

uint64_t CloudSyncResponse.timedOut.setter(char a1)
{
  result = type metadata accessor for CloudSyncResponse();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t CloudSyncResponse.init(_:activeSyncState:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CloudSyncResponse();
  v5 = *(v4 + 20);
  v6 = sub_1D0FF4608();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *(a2 + *(v4 + 24)) = 0;
  sub_1D0FD4B74();
  sub_1D0FF52F8();

  return sub_1D0FD4BC0(a1, a2 + v5);
}

uint64_t sub_1D0FD3AFC()
{
  v1 = 0x7953657669746361;
  if (*v0 != 1)
  {
    v1 = 0x74754F64656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726576726573626FLL;
  }
}

uint64_t sub_1D0FD3B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FD5444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0FD3B98(uint64_t a1)
{
  v2 = sub_1D0FD4FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FD3BD4(uint64_t a1)
{
  v2 = sub_1D0FD4FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudSyncResponse.encode(to:)(void *a1)
{
  sub_1D0FD5114(0, &qword_1EE06E1B0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FD4FD0();
  sub_1D0FF6438();
  v9[15] = 0;
  sub_1D0FD4B40(0);
  sub_1D0FD5024(&qword_1EE06E4C8, sub_1D0FD4B40);
  sub_1D0FF6208();
  if (!v1)
  {
    type metadata accessor for CloudSyncResponse();
    v9[14] = 1;
    sub_1D0FF4608();
    sub_1D0FD5024(&qword_1EE06F830, MEMORY[0x1E69A3CA8]);
    sub_1D0FF61B8();
    v9[13] = 2;
    sub_1D0FF61D8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CloudSyncResponse.hash(into:)()
{
  v1 = sub_1D0FF4608();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD4B0C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD4B40(0);
  sub_1D0FD506C();
  sub_1D0FF5378();
  v8 = type metadata accessor for CloudSyncResponse();
  sub_1D0FD556C(v0 + *(v8 + 20), v7, sub_1D0FD4B0C);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D0FF6358();
    sub_1D0FD5024(&qword_1EC5FD468, MEMORY[0x1E69A3CA8]);
    sub_1D0FF5378();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D0FF6358();
}

uint64_t CloudSyncResponse.hashValue.getter()
{
  sub_1D0FF6338();
  CloudSyncResponse.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t CloudSyncResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1D0FD4B0C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD4B40(0);
  v29 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD5114(0, &qword_1EE06F968, MEMORY[0x1E69E6F48]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for CloudSyncResponse();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 20);
  v16 = sub_1D0FF4608();
  v17 = *(*(v16 - 8) + 56);
  v32 = v15;
  v17(&v14[v15], 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FD4FD0();
  v18 = v31;
  sub_1D0FF6428();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v23 = sub_1D0FD4B0C;
    v24 = &v14[v32];
  }

  else
  {
    v35 = 0;
    sub_1D0FD5024(&qword_1EE06FA98, sub_1D0FD4B40);
    v19 = v27;
    sub_1D0FF6148();
    (*(v26 + 32))(v14, v19, v29);
    v34 = 1;
    sub_1D0FD5024(&qword_1EE06F828, MEMORY[0x1E69A3CA8]);
    sub_1D0FF60F8();
    sub_1D0FD4BC0(v5, &v14[v32]);
    v33 = 2;
    v21 = sub_1D0FF6118();
    v22 = *(v11 + 24);
    (*(v28 + 8))(v10, v30);
    v14[v22] = v21 & 1;
    sub_1D0FD556C(v14, v25, type metadata accessor for CloudSyncResponse);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v23 = type metadata accessor for CloudSyncResponse;
    v24 = v14;
  }

  return sub_1D0FD2974(v24, v23);
}

uint64_t sub_1D0FD45A0()
{
  sub_1D0FF6338();
  CloudSyncResponse.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FD45E4()
{
  sub_1D0FF6338();
  CloudSyncResponse.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FD4624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D0FF4348();
  v5 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1D0FD5024(&qword_1EE06F878, MEMORY[0x1E6969530]);
        v20 = sub_1D0FF53A8();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1D0FD48D4(uint64_t a1, uint64_t a2)
{
  sub_1D0FD4A28(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(a2 + 32))(a1, a2);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8;
    sub_1D0FD556C(v2 + *(a1 + 48), v7, sub_1D0FD4A28);
    v12 = type metadata accessor for CloudSyncResponse();
    v13 = (*(*(v12 - 8) + 48))(v7, 1, v12);
    v14 = sub_1D0FD4A28;
    if (v13 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = CloudSyncResponse.showSyncActivity(for:)(v11, 0);
      v14 = type metadata accessor for CloudSyncResponse;
    }

    sub_1D0FD2974(v7, v14);
  }

  return v10 & 1;
}

uint64_t type metadata accessor for CloudSyncResponse()
{
  result = qword_1EE070530;
  if (!qword_1EE070530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D0FD4AA8()
{
  if (!qword_1EC5FD448)
  {
    sub_1D0FD4B0C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FD448);
    }
  }
}

unint64_t sub_1D0FD4B74()
{
  result = qword_1EE071068;
  if (!qword_1EE071068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE071068);
  }

  return result;
}

uint64_t sub_1D0FD4BC0(uint64_t a1, uint64_t a2)
{
  sub_1D0FD4B0C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16HealthExperience17CloudSyncResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4608();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD4B0C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD4AA8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD4B74();
  sub_1D0FD5024(&qword_1EC5FD480, sub_1D0FD4B74);
  if ((sub_1D0FF52D8() & 1) == 0)
  {
    goto LABEL_8;
  }

  v23 = type metadata accessor for CloudSyncResponse();
  v15 = *(v23 + 20);
  v16 = *(v12 + 48);
  sub_1D0FD556C(a1 + v15, v14, sub_1D0FD4B0C);
  sub_1D0FD556C(a2 + v15, &v14[v16], sub_1D0FD4B0C);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_1D0FD2974(v14, sub_1D0FD4B0C);
LABEL_11:
      v18 = *(a1 + *(v23 + 24)) ^ *(a2 + *(v23 + 24)) ^ 1;
      return v18 & 1;
    }

    goto LABEL_7;
  }

  sub_1D0FD556C(v14, v10, sub_1D0FD4B0C);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D0FD2974(v14, sub_1D0FD4AA8);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_1D0FD5024(&qword_1EC5FD450, MEMORY[0x1E69A3CA8]);
  v20 = sub_1D0FF53D8();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1D0FD2974(v14, sub_1D0FD4B0C);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_1D0FD4FD0()
{
  result = qword_1EE070558[0];
  if (!qword_1EE070558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE070558);
  }

  return result;
}

uint64_t sub_1D0FD5024(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D0FD506C()
{
  result = qword_1EC5FD458;
  if (!qword_1EC5FD458)
  {
    sub_1D0FD4B40(255);
    sub_1D0FD5024(&qword_1EC5FD460, sub_1D0FD4B74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD458);
  }

  return result;
}

void sub_1D0FD5114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0FD4FD0();
    v7 = a3(a1, &type metadata for CloudSyncResponse.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D0FD52A0()
{
  sub_1D0FD4B40(319);
  if (v0 <= 0x3F)
  {
    sub_1D0FD4B0C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D0FD5340()
{
  result = qword_1EC5FD478;
  if (!qword_1EC5FD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD478);
  }

  return result;
}

unint64_t sub_1D0FD5398()
{
  result = qword_1EE070548;
  if (!qword_1EE070548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070548);
  }

  return result;
}

unint64_t sub_1D0FD53F0()
{
  result = qword_1EE070550;
  if (!qword_1EE070550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070550);
  }

  return result;
}

uint64_t sub_1D0FD5444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576726573626FLL && a2 == 0xEE00737574617453;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7953657669746361 && a2 == 0xEF6574617453636ELL || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74754F64656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D0FD556C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D0FD55D4(uint64_t a1, uint64_t a2)
{
  sub_1D0FD7484(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1D0FF4348();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D0F58BBC(a1);
    sub_1D0FEB498(a2, v7);
    v12 = sub_1D0FF43A8();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D0F58BBC(v7);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D0FC9398(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D0FF43A8();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D0FD5804()
{
  sub_1D0F53B20(MEMORY[0x1E69E7CC0]);
  sub_1D0FD7484(0, &qword_1EC5FD490, sub_1D0FD74E8, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  result = sub_1D0FF4938();
  qword_1EC5FD488 = result;
  return result;
}

void *ProfileSyncHandler.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696BFE0]) initWithHealthStore_];
  type metadata accessor for ProfileSyncHandler();
  result = swift_allocObject();
  v4 = MEMORY[0x1E69E7CD0];
  result[3] = v2;
  result[4] = v4;
  result[2] = a1;
  return result;
}

uint64_t sub_1D0FD5914()
{
  v1 = *v0;
  v2 = sub_1D0FF5BA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultCenter];
  sub_1D0FF5BB8();

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  sub_1D0FD7594(&qword_1EE070B18, MEMORY[0x1E6969F20]);
  sub_1D0FF5188();

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  sub_1D0FF4E88();
  swift_endAccess();
}

uint64_t sub_1D0FD5B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D0FF4348();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D0FF4C18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4BF8();
  v12 = sub_1D0FF4C08();
  v13 = sub_1D0FF5978();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v5;
    v17 = v16;
    v30[0] = v16;
    v30[1] = a3;
    *v15 = 136446210;
    swift_getMetatypeMetadata();
    v18 = sub_1D0FF5448();
    v20 = sub_1D0F1AE0C(v18, v19, v30);
    v27 = v8;
    v21 = v20;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1D0F17000, v12, v13, "[%{public}s]: application foregrounded, triggering sync if needed", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v22 = v17;
    v5 = v28;
    MEMORY[0x1D3882680](v22, -1, -1);
    v23 = v15;
    v4 = v29;
    MEMORY[0x1D3882680](v23, -1, -1);

    (*(v9 + 8))(v11, v27);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D0FF4338();
    v25 = sub_1D0FD5EFC(v7);
    (*(v5 + 8))(v7, v4);
    if (v25)
    {
      sub_1D0FD6888(0, 0);
    }
  }

  return result;
}

void sub_1D0FD5DF0(void (*a1)(void), uint64_t a2)
{
  v4 = sub_1D0FF4348();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4338();
  v8 = sub_1D0FD5EFC(v7);
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_1D0FD6888(a1, a2);
  }

  else if (a1)
  {
    a1(0);
  }
}

uint64_t sub_1D0FD5EFC(uint64_t a1)
{
  v2 = v1;
  v69 = a1;
  v3 = *v1;
  v4 = sub_1D0FF4C18();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v65 - v8;
  v9 = sub_1D0FF43A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D0FF4348();
  v72 = *(v70 - 8);
  v13 = MEMORY[0x1EEE9AC00](v70);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - v15;
  if (qword_1EC5FBDC0 != -1)
  {
    swift_once();
  }

  sub_1D0FF4908();

  v17 = v76;
  v71 = v2[2];
  v18 = [v71 profileIdentifier];
  v19 = [v18 identifier];

  sub_1D0FF4388();
  if (!*(v17 + 16) || (v20 = sub_1D0F1B60C(v12), (v21 & 1) == 0))
  {

    (*(v10 + 8))(v12, v9);
    sub_1D0FF4BF8();

    v28 = sub_1D0FF4C08();
    v29 = sub_1D0FF5978();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v75 = v31;
      v76 = v3;
      *v30 = 136446466;
      swift_getMetatypeMetadata();
      v32 = sub_1D0FF5448();
      v34 = sub_1D0F1AE0C(v32, v33, &v75);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = [v71 profileIdentifier];
      v36 = [v35 description];
      v37 = sub_1D0FF5428();
      v39 = v38;

      v40 = sub_1D0F1AE0C(v37, v39, &v75);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_1D0F17000, v28, v29, "[%{public}s]: Last sync date is nil for profile %s.", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v31, -1, -1);
      MEMORY[0x1D3882680](v30, -1, -1);
    }

    (*(v73 + 8))(v7, v74);
    return 1;
  }

  v66 = v3;
  v22 = v72;
  v23 = v72[2];
  v24 = v70;
  v23(v16, *(v17 + 56) + v72[9] * v20, v70);
  (*(v10 + 8))(v12, v9);

  sub_1D0FF4308();
  v26 = v25;
  sub_1D0FF4308();
  if (v26 - v27 > 120.0)
  {
    (v22[1])(v16, v24);
    return 1;
  }

  v42 = v68;
  sub_1D0FF4BF8();
  v43 = v67;
  v23(v67, v16, v24);

  v44 = sub_1D0FF4C08();
  v45 = sub_1D0FF5978();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v75 = v69;
    *v46 = 136446722;
    v76 = v66;
    swift_getMetatypeMetadata();
    v47 = sub_1D0FF5448();
    v49 = v43;
    v50 = sub_1D0F1AE0C(v47, v48, &v75);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = [v71 profileIdentifier];
    v52 = [v51 description];
    v53 = sub_1D0FF5428();
    v71 = v16;
    v55 = v54;

    v56 = sub_1D0F1AE0C(v53, v55, &v75);

    *(v46 + 14) = v56;
    *(v46 + 22) = 2082;
    sub_1D0FD7594(&qword_1EE06F870, MEMORY[0x1E6969530]);
    v57 = v70;
    v58 = sub_1D0FF6238();
    v60 = v59;
    v61 = v72[1];
    v61(v49, v57);
    v62 = sub_1D0F1AE0C(v58, v60, &v75);

    *(v46 + 24) = v62;
    _os_log_impl(&dword_1D0F17000, v44, v45, "[%{public}s]: The threshold for syncing profile %s has not been met. Last sync date: %{public}s", v46, 0x20u);
    v63 = v69;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v63, -1, -1);
    MEMORY[0x1D3882680](v46, -1, -1);

    (*(v73 + 8))(v42, v74);
    v61(v71, v57);
  }

  else
  {

    v64 = v72[1];
    v64(v43, v24);
    (*(v73 + 8))(v42, v74);
    v64(v16, v24);
  }

  return 0;
}

uint64_t sub_1D0FD66D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FD7484(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1D0FF43A8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a2 + 16) profileIdentifier];
  v12 = [v11 identifier];

  sub_1D0FF4388();
  v13 = sub_1D0FF4348();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, a3, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  return sub_1D0FD55D4(v7, v10);
}

void sub_1D0FD6888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D0FF4C18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4BF8();

  v11 = sub_1D0FF4C08();
  v12 = sub_1D0FF5978();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39 = v8;
    v14 = v13;
    v37 = swift_slowAlloc();
    v41 = v37;
    aBlock[0] = v6;
    *v14 = 136446466;
    swift_getMetatypeMetadata();
    v15 = sub_1D0FF5448();
    v38 = v7;
    v17 = sub_1D0F1AE0C(v15, v16, &v41);
    v40 = v6;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = [v3[2] profileIdentifier];
    v20 = [v19 description];
    v21 = sub_1D0FF5428();
    v36 = v11;
    v22 = v12;
    v23 = a2;
    v24 = v21;
    v26 = v25;

    v6 = v40;
    v27 = v24;
    a2 = v23;
    v28 = sub_1D0F1AE0C(v27, v26, &v41);

    *(v14 + 14) = v28;
    v29 = v22;
    v30 = v36;
    _os_log_impl(&dword_1D0F17000, v36, v29, "[%{public}s]: Requesting data refresh for profile: %s.", v14, 0x16u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v31, -1, -1);
    MEMORY[0x1D3882680](v14, -1, -1);

    (*(v39 + 8))(v10, v38);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v32 = v3[3];
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = a1;
  v34[4] = a2;
  v34[5] = v6;
  aBlock[4] = sub_1D0FD7470;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0FCA978;
  aBlock[3] = &block_descriptor_19;
  v35 = _Block_copy(aBlock);
  sub_1D0F1C500(a1);

  [v32 requestDataRefreshWithCompletion_];
  _Block_release(v35);
}

uint64_t sub_1D0FD6C1C(int a1, void *a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5, void *a6)
{
  v72 = a5;
  v73 = a4;
  LODWORD(v8) = a1;
  v9 = sub_1D0FF4348();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1D0FF4C18();
  v74 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v66[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v66[-v19];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (v8)
    {
      sub_1D0FF4BF8();

      v23 = sub_1D0FF4C08();
      v24 = sub_1D0FF5978();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v67 = v24;
        v26 = v25;
        v68 = swift_slowAlloc();
        v75 = v68;
        *v26 = 136446466;
        v76 = a6;
        swift_getMetatypeMetadata();
        v27 = sub_1D0FF5448();
        v29 = sub_1D0F1AE0C(v27, v28, &v75);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        v30 = [*(v22 + 16) profileIdentifier];
        v31 = [v30 description];
        v32 = sub_1D0FF5428();
        v69 = v12;
        v33 = v32;
        v35 = v34;

        v36 = sub_1D0F1AE0C(v33, v35, &v75);

        *(v26 + 14) = v36;
        _os_log_impl(&dword_1D0F17000, v23, v67, "[%{public}s]: Data refresh for profile: %s, completed with success", v26, 0x16u);
        v37 = v68;
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v37, -1, -1);
        MEMORY[0x1D3882680](v26, -1, -1);

        (*(v74 + 8))(v18, v69);
      }

      else
      {

        (*(v74 + 8))(v18, v12);
      }

      v65 = sub_1D0FF4338();
      if (qword_1EC5FBDC0 != -1)
      {
        v65 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v65);
      *&v66[-16] = v22;
      *&v66[-8] = v11;

      sub_1D0FF4918();

      (*(v70 + 8))(v11, v71);
    }

    else
    {
      sub_1D0FF4BF8();

      v47 = a2;
      v48 = sub_1D0FF4C08();
      v49 = sub_1D0FF5958();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v75 = v70;
        *v50 = 136446722;
        v76 = a6;
        swift_getMetatypeMetadata();
        v51 = sub_1D0FF5448();
        LODWORD(v71) = v8;
        v53 = sub_1D0F1AE0C(v51, v52, &v75);

        *(v50 + 4) = v53;
        v69 = v12;
        *(v50 + 12) = 2080;
        v54 = [*(v22 + 16) profileIdentifier];
        v55 = [v54 description];
        v56 = v49;
        v57 = sub_1D0FF5428();
        v8 = v58;

        v59 = sub_1D0F1AE0C(v57, v8, &v75);

        *(v50 + 14) = v59;
        *(v50 + 22) = 2080;
        v76 = a2;
        v60 = a2;
        sub_1D0FD7484(0, &qword_1EE071008, sub_1D0F1E940, MEMORY[0x1E69E6720]);
        v61 = sub_1D0FF5448();
        v63 = sub_1D0F1AE0C(v61, v62, &v75);

        *(v50 + 24) = v63;
        LOBYTE(v8) = v71;
        _os_log_impl(&dword_1D0F17000, v48, v56, "[%{public}s]: Data refresh for profile: %s, completed with error: %s", v50, 0x20u);
        v64 = v70;
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v64, -1, -1);
        MEMORY[0x1D3882680](v50, -1, -1);

        (*(v74 + 8))(v20, v69);
      }

      else
      {

        (*(v74 + 8))(v20, v12);
      }
    }

    if (v73)
    {
      v73(v8 & 1);
    }
  }

  else
  {
    sub_1D0FF4BF8();
    v38 = sub_1D0FF4C08();
    v39 = sub_1D0FF5958();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v12;
      v42 = swift_slowAlloc();
      v75 = v42;
      *v40 = 136446210;
      v76 = a6;
      swift_getMetatypeMetadata();
      v43 = sub_1D0FF5448();
      v45 = sub_1D0F1AE0C(v43, v44, &v75);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1D0F17000, v38, v39, "[%{public}s]: We've been deallocated.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1D3882680](v42, -1, -1);
      MEMORY[0x1D3882680](v40, -1, -1);

      return (*(v74 + 8))(v15, v41);
    }

    else
    {

      return (*(v74 + 8))(v15, v12);
    }
  }
}

uint64_t ProfileSyncHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D0FD7484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D0FD74E8()
{
  if (!qword_1EC5FD498)
  {
    sub_1D0FF43A8();
    sub_1D0FF4348();
    sub_1D0FD7594(&qword_1EE071250, MEMORY[0x1E69695A8]);
    v0 = sub_1D0FF5358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD498);
    }
  }
}

uint64_t sub_1D0FD7594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FeatureStatusAdvertisableFeatureSourceProviding.queue_performPrerequisiteWorkIfNecessaryForStagedDeliveryFeature(_:logger:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v32 = a6;
  v33 = a3;
  v27 = a2;
  v28 = a5;
  v34 = a4;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = sub_1D0FF4C18();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusProvider], *&a1[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusProvider + 24]);
  v31 = sub_1D0FF49F8();
  (*(v10 + 16))(v12, v27, v9);
  v13 = v28;
  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v28);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = v32;
  *(v17 + 16) = v13;
  *(v17 + 24) = v18;
  (*(v10 + 32))(v17 + v14, v12, v26);
  v19 = (v17 + v15);
  v20 = v34;
  *v19 = v33;
  v19[1] = v20;
  (*(v7 + 32))(v17 + v16, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v21 = v29;
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_1D0FD8484;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1DC0C;
  aBlock[3] = &block_descriptor_20;
  v22 = _Block_copy(aBlock);

  v23 = v21;

  [v31 isCurrentOnboardingVersionCompletedWithCompletion_];
  _Block_release(v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D0FD78D4(void *a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t), uint64_t a9)
{
  v107 = a7;
  v113 = a6;
  v114 = a8;
  v115 = a4;
  v116 = a5;
  v109 = *(a8 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1D0FF48C8();
  v104 = *(v112 - 8);
  v13 = MEMORY[0x1EEE9AC00](v112);
  v108 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v103 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v103 - v18;
  v106 = sub_1D0FF4348();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D0FF48F8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD8AEC();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v45 = a2;
    v46 = sub_1D0FF4C08();
    v47 = sub_1D0FF5958();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&aBlock = v50;
      *v48 = 136446466;
      v51 = sub_1D0FF6468();
      v53 = sub_1D0F1AE0C(v51, v52, &aBlock);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2112;
      if (a2)
      {
        v54 = a2;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        v56 = v55;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      *(v48 + 14) = v55;
      *v49 = v56;
      _os_log_impl(&dword_1D0F17000, v46, v47, "[%{public}s] Error while retrieving whether onboarding was completed: %@", v48, 0x16u);
      sub_1D0FDB9BC(v49, sub_1D0FDBA1C);
      MEMORY[0x1D3882680](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1D3882680](v50, -1, -1);
      MEMORY[0x1D3882680](v48, -1, -1);
    }

    *&aBlock = a2;
    v101 = a2;
    sub_1D0FDB30C(0, &qword_1EE071008, sub_1D0F1E940, MEMORY[0x1E69E6720]);
    *&aBlock = sub_1D0FF5448();
    *(&aBlock + 1) = v102;
    LOBYTE(v120) = 1;
    v115(&aBlock);
    v79 = *(&aBlock + 1);
    v78 = aBlock;
    v80 = v120;
    return sub_1D0F2D710(v78, v79, v80);
  }

  v103 = v20;
  v27 = a1;
  if ([v27 BOOLValue])
  {
    v28 = v109;
    v29 = v114;
    (*(v109 + 16))(v12, v113, v114);
    v30 = sub_1D0FF4C08();
    v31 = sub_1D0FF5978();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&aBlock = v113;
      *v32 = 136446466;
      v33 = sub_1D0FF6468();
      v35 = v27;
      v36 = v29;
      v37 = sub_1D0F1AE0C(v33, v34, &aBlock);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v38 = (*(a9 + 16))(v36, a9);
      v39 = sub_1D0FF5428();
      v41 = v40;

      v42 = v36;
      v27 = v35;
      (*(v28 + 8))(v12, v42);
      v43 = sub_1D0F1AE0C(v39, v41, &aBlock);

      *(v32 + 14) = v43;
      _os_log_impl(&dword_1D0F17000, v30, v31, "[%{public}s] %s already onboarded, no need to onboard again", v32, 0x16u);
      v44 = v113;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v44, -1, -1);
      MEMORY[0x1D3882680](v32, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v12, v29);
    }

    sub_1D0F51870();
    sub_1D0FF63F8();
    v117 = aBlock;
    v118 = v120;
    v115(&v117);

    v79 = *(&v117 + 1);
    v78 = v117;
    v80 = v118;
    return sub_1D0F2D710(v78, v79, v80);
  }

  (*(a9 + 24))(v114, a9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = v104;
    v58 = v111;
    v59 = v26;
    v60 = v112;
    (*(v104 + 32))(v111, v59, v112);
    v61 = *(v57 + 16);
    v61(v17, v58, v60);
    v62 = sub_1D0FF4C08();
    v63 = sub_1D0FF5978();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      LODWORD(v110) = v63;
      v65 = v64;
      v113 = swift_slowAlloc();
      *&aBlock = v113;
      *v65 = 136446466;
      v66 = sub_1D0FF6468();
      v68 = sub_1D0F1AE0C(v66, v67, &aBlock);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      v69 = v108;
      v61(v108, v17, v112);
      v70 = sub_1D0FF5448();
      v72 = v71;
      v114 = v61;
      v73 = *(v57 + 8);
      v73(v17, v112);
      v74 = sub_1D0F1AE0C(v70, v72, &aBlock);

      *(v65 + 14) = v74;
      v60 = v112;
      _os_log_impl(&dword_1D0F17000, v62, v110, "[%{public}s] failed to retrieve country code with error: %s", v65, 0x16u);
      v75 = v113;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v75, -1, -1);
      v76 = v65;
      v77 = v114;
      MEMORY[0x1D3882680](v76, -1, -1);
    }

    else
    {

      v77 = v61;
      v73 = *(v57 + 8);
      v73(v17, v60);
      v69 = v108;
    }

    v99 = v111;
    v77(v69, v111, v60);
    *&aBlock = sub_1D0FF5448();
    *(&aBlock + 1) = v100;
    LOBYTE(v120) = 1;
    v115(&aBlock);

    sub_1D0F2D710(aBlock, *(&aBlock + 1), v120);
    return (v73)(v99, v60);
  }

  else
  {
    v81 = *(v22 + 32);
    v113 = v21;
    v81(v110, v26, v21);
    v82 = sub_1D0FF4C08();
    v83 = sub_1D0FF5978();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&aBlock = v85;
      *v84 = 136446210;
      v86 = sub_1D0FF6468();
      v88 = sub_1D0F1AE0C(v86, v87, &aBlock);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_1D0F17000, v82, v83, "[%{public}s] country code record retrieval success", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x1D3882680](v85, -1, -1);
      MEMORY[0x1D3882680](v84, -1, -1);
    }

    v89 = v103;
    __swift_project_boxed_opaque_existential_1((v107 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusProvider), *(v107 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusProvider + 24));
    v90 = sub_1D0FF49F8();
    v91 = v110;
    sub_1D0FF48D8();
    v92 = sub_1D0FF53E8();

    v93 = sub_1D0FF48E8();
    sub_1D0FF4338();
    v94 = sub_1D0FF42E8();
    (*(v105 + 8))(v89, v106);
    v95 = swift_allocObject();
    v96 = v116;
    *(v95 + 16) = v115;
    *(v95 + 24) = v96;
    v122 = sub_1D0FDBA84;
    v123 = v95;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v120 = sub_1D0FCA978;
    v121 = &block_descriptor_40;
    v97 = _Block_copy(&aBlock);

    [v90 setCurrentOnboardingVersionCompletedForCountryCode:v92 countryCodeProvenance:v93 date:v94 settings:0 completion:v97];
    _Block_release(v97);

    swift_unknownObjectRelease();
    return (*(v22 + 8))(v91, v113);
  }
}

uint64_t sub_1D0FD8484(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_1D0FF4C18() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(*(v5 - 1) + 80) + 16) & ~*(*(v5 - 1) + 80);
  return sub_1D0FD78D4(a1, a2, v2 + v8, *(v2 + v9), *(v2 + v9 + 8), v2 + v10, *(v2 + ((*(*(v5 - 1) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_1D0FD85A8(char a1, id a2, void (*a3)(__int128 *))
{
  if (a1)
  {
    sub_1D0F51870();
    sub_1D0FF63F8();
    v10 = v12;
    v11 = v13;
    a3(&v10);
    v5 = *(&v10 + 1);
    v4 = v10;
    v6 = v11;
  }

  else
  {
    v7 = a2;
    sub_1D0FDB30C(0, &qword_1EE071008, sub_1D0F1E940, MEMORY[0x1E69E6720]);
    *&v12 = sub_1D0FF5448();
    *(&v12 + 1) = v8;
    v13 = 1;
    a3(&v12);
    v5 = *(&v12 + 1);
    v4 = v12;
    v6 = v13;
  }

  return sub_1D0F2D710(v4, v5, v6);
}

uint64_t sub_1D0FD868C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider), v1);
  return (*(v2 + 8))(v1, v2);
}

id FeatureStatusAdvertisableFeatureSource.__allocating_init(context:advertisableFeatureSourceProvider:)(uint64_t *a1, void *a2)
{
  v40 = a2;
  v3 = sub_1D0FF48C8();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF48F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FD8AEC();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = a1[6];
  v17 = a1[7];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 3, v16);
  (*(v17 + 8))(v16, v17);
  v39 = v15;
  sub_1D0FD8B98(v15, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v36;
    v18 = v37;
    (*(v36 + 32))(v5, v13, v37);
    sub_1D0FDB7B0(&qword_1EC5FD4B8, MEMORY[0x1E69A3D30]);
    swift_willThrowTypedImpl();
    (*(v19 + 8))(v5, v18);
    v20 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    sub_1D0FF48D8();
    v20 = v21;
    (*(v7 + 8))(v9, v6);
  }

  v22 = v38;
  v23 = v38[1];
  v24 = v40;
  v25 = v40[3];
  v26 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v25);
  v27 = *(v26 + 16);
  v28 = v23;
  v29 = v27(v25, v26);
  v30 = *v22;
  if (v20)
  {
    v31 = sub_1D0FF53E8();
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_allocWithZone(MEMORY[0x1E696C178]) initWithFeatureIdentifier:v29 healthStore:v30 currentCountryCode:v31];

  sub_1D0F39694(v24, v41);
  v33 = objc_allocWithZone(type metadata accessor for FeatureStatusAdvertisableFeatureSource());
  v34 = sub_1D0FDAE6C(v28, v32, v41, v33);

  sub_1D0FDB9BC(v39, sub_1D0FD8AEC);
  sub_1D0FDAF8C(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v34;
}

void sub_1D0FD8AEC()
{
  if (!qword_1EC5FD4B0)
  {
    sub_1D0FF48F8();
    sub_1D0FF48C8();
    sub_1D0FDB7B0(&qword_1EC5FD4B8, MEMORY[0x1E69A3D30]);
    v0 = sub_1D0FF6418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD4B0);
    }
  }
}

uint64_t sub_1D0FD8B98(uint64_t a1, uint64_t a2)
{
  sub_1D0FD8AEC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id FeatureStatusAdvertisableFeatureSource.__allocating_init(queue:featureStatusProvider:advertisableFeatureSourceProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = sub_1D0FDB178(a1, v9, a3, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v10;
}

id FeatureStatusAdvertisableFeatureSource.init(queue:featureStatusProvider:advertisableFeatureSourceProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_1D0FDB030(a1, v11, a3, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v13;
}

uint64_t sub_1D0FD8DF4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D0FD8E60(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D0FD8F00;
}

uint64_t sub_1D0FD8F04(uint64_t a1, uint64_t a2)
{
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1D0FF49A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D0FD8FFC(v6, a1, a2);
  return sub_1D0FDB274(v6);
}

uint64_t sub_1D0FD8FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1D0FF5248();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D0FF5268();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v22 - v14;
  v26 = *(v3 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_queue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D0FDB6AC(v23, v15);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v16;
  v18[3] = v19;
  v18[4] = a3;
  sub_1D0FDB864(v15, v18 + v17);
  *(v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_1D0FDB8F8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1E1EC;
  aBlock[3] = &block_descriptor_34;
  v20 = _Block_copy(aBlock);

  sub_1D0FF5258();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D0FDB7B0(&qword_1EE071288, MEMORY[0x1E69E7F60]);
  sub_1D0FDB30C(0, &qword_1EE071280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D0F9E680();
  sub_1D0FF5CC8();
  MEMORY[0x1D3881150](0, v10, v7, v20);
  _Block_release(v20);
  (*(v27 + 8))(v7, v5);
  (*(v8 + 8))(v10, v28);
}

void sub_1D0FD93FC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D0FDA528(a4, a2, a3);
  }

  else
  {
    sub_1D0FF5DE8();

    v10 = 91;
    v11 = 0xE100000000000000;
    v9 = sub_1D0FF6468();
    MEMORY[0x1D3880AC0](v9);

    MEMORY[0x1D3880AC0](23389, 0xE200000000000000);
    MEMORY[0x1D3880AC0](0xD000000000000033, 0x80000001D1005AC0);
    MEMORY[0x1D3880AC0](0xD000000000000020, 0x80000001D1005A60);
    v12 = 1;
    a2(&v10);
    sub_1D0F2D710(v10, v11, v12);
  }
}

uint64_t sub_1D0FD9550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D0FF5248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D0FF5268();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = ObjectType;
  aBlock[4] = sub_1D0FDB300;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1E1EC;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  sub_1D0FF5258();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D0FDB7B0(&qword_1EE071288, MEMORY[0x1E69E7F60]);
  sub_1D0FDB30C(0, &qword_1EE071280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D0F9E680();
  sub_1D0FF5CC8();
  MEMORY[0x1D3881150](0, v13, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

void sub_1D0FD9870(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 24);
    v7 = *(Strong + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 32);
    v8 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider), v6);
    (*(v7 + 48))(v8, a2, a3, v6, v7);
  }

  else
  {
    sub_1D0FF5DE8();

    v10 = 91;
    v11 = 0xE100000000000000;
    v9 = sub_1D0FF6468();
    MEMORY[0x1D3880AC0](v9);

    MEMORY[0x1D3880AC0](23389, 0xE200000000000000);
    MEMORY[0x1D3880AC0](0xD00000000000002FLL, 0x80000001D1005A90);
    MEMORY[0x1D3880AC0](0xD000000000000020, 0x80000001D1005A60);
    v12 = 1;
    a2(&v10);
    sub_1D0F2D710(v10, v11, v12);
  }
}

uint64_t sub_1D0FD99F0(int a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_1D0FF5248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1D0FF5268();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v3 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = v19;
  *(v15 + 48) = ObjectType;
  aBlock[4] = sub_1D0FDB3BC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F1E1EC;
  aBlock[3] = &block_descriptor_16;
  v16 = _Block_copy(aBlock);

  sub_1D0FF5258();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D0FDB7B0(&qword_1EE071288, MEMORY[0x1E69E7F60]);
  sub_1D0FDB30C(0, &qword_1EE071280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D0F9E680();
  sub_1D0FF5CC8();
  MEMORY[0x1D3881150](0, v13, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v21);
}

void sub_1D0FD9D1C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 24);
    v9 = *(Strong + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 32);
    v10 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider), v8);
    (*(v9 + 56))(v10, a4 & 1, a2, a3, v8, v9);
  }

  else
  {
    sub_1D0FF5DE8();

    v12 = 91;
    v13 = 0xE100000000000000;
    v11 = sub_1D0FF6468();
    MEMORY[0x1D3880AC0](v11);

    MEMORY[0x1D3880AC0](23389, 0xE200000000000000);
    MEMORY[0x1D3880AC0](0xD00000000000001FLL, 0x80000001D1005A40);
    MEMORY[0x1D3880AC0](0xD000000000000020, 0x80000001D1005A60);
    v14 = 1;
    a2(&v12);
    sub_1D0F2D710(v12, v13, v14);
  }
}

uint64_t sub_1D0FD9EA8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider), v3);
  return (*(v4 + 64))(v1, a1, v3, v4);
}

uint64_t sub_1D0FD9F14(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider), v3);
  v6 = v2;
  return (*(v4 + 32))(&v6, v3, v4);
}

uint64_t sub_1D0FD9F94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = ObjectType;
  sub_1D0FDB748();
  sub_1D0FDB7B0(&qword_1EC5FD4F0, sub_1D0FDB748);

  v5 = sub_1D0FF5188();

  *(v1 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusChange) = v5;
}

uint64_t sub_1D0FDA0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_1D0FF49A8();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, a1, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = a3;
    v13 = v9;
    sub_1D0FD8FFC(v7, sub_1D0FDB7F8, v12);

    return sub_1D0FDB274(v7);
  }

  return result;
}

uint64_t sub_1D0FDA27C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(a1 + 16))
  {
    v9 = *(a1 + 8);
    sub_1D0FF4BB8();

    v10 = sub_1D0FF4C08();
    v11 = sub_1D0FF5958();
    sub_1D0F2D710(v8, v9, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v12 = 136315394;
      v13 = sub_1D0FF6468();
      v15 = sub_1D0F1AE0C(v13, v14, &v29);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v26 = v8;
      v27 = v9;
      v28 = 1;
      sub_1D0FDB800();

      v16 = sub_1D0FF5448();
      v18 = sub_1D0F1AE0C(v16, v17, &v29);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_1D0F17000, v10, v11, "[%s] Unable to determine should advertise after feature status manager observer called (%s, not notifying delegate", v12, 0x16u);
      v19 = v25;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v19, -1, -1);
      MEMORY[0x1D3882680](v12, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v21 = a2 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 8))(a2, &protocol witness table for FeatureStatusAdvertisableFeatureSource, v8 & 1, ObjectType, v22);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D0FDA528(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_1D0FF4C18();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v38 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = v36 - v11;
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v36 - v13;
  v15 = sub_1D0FF49A8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FDB6AC(a1, v14);
  v19 = *(v16 + 48);
  v20 = v19(v14, 1, v15);
  v43 = v15;
  if (v20 == 1)
  {
    v36[1] = a3;
    v37 = a2;
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusProvider), *(v4 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusProvider + 24));
    sub_1D0FF4A08();
    v35 = v19(v14, 1, v43);
    a2 = v37;
    if (v35 != 1)
    {
      sub_1D0FDB274(v14);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
  }

  v21 = (v4 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider);
  v22 = *(v4 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider + 24);
  v23 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v24 = (*(v23 + 40))(v18, v22, v23);
  v25 = v42;
  sub_1D0FF4B98();
  v26 = sub_1D0FF4C08();
  v27 = sub_1D0FF5978();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v38 = v24;
    v24 = v28;
    v29 = swift_slowAlloc();
    v44[0] = v29;
    *v24 = 136315394;
    v30 = sub_1D0FF6468();
    v32 = sub_1D0F1AE0C(v30, v31, v44);

    *(v24 + 4) = v32;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1D0F1AE0C(0xD000000000000039, 0x80000001D1005A00, v44);
    _os_log_impl(&dword_1D0F17000, v26, v27, "[%s.%s] Successfully determine should advertise status", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v29, -1, -1);
    v33 = v24;
    LOBYTE(v24) = v38;
    MEMORY[0x1D3882680](v33, -1, -1);

    (*(v40 + 8))(v42, v41);
  }

  else
  {

    (*(v40 + 8))(v25, v41);
  }

  v44[0] = v24 & 1;
  v44[1] = 0;
  v45 = 0;
  a2(v44);
  return (*(v16 + 8))(v18, v43);
}

uint64_t sub_1D0FDAB90()
{
  if (*(v0 + OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusChange))
  {

    sub_1D0FF4E98();
  }

  return result;
}

id FeatureStatusAdvertisableFeatureSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureStatusAdvertisableFeatureSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStatusAdvertisableFeatureSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1D0FDAD3C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D0FDBAAC;
}

void sub_1D0FDADDC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_1D0FDAE6C(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v12[3] = sub_1D0F1ACD4(0, &qword_1EC5FD500);
  v12[4] = MEMORY[0x1E69A39B0];
  v12[0] = a2;
  *&a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusChange] = 0;
  *&a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_queue] = a1;
  sub_1D0F39694(a3, &a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider]);
  sub_1D0F39694(v12, &a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusProvider]);
  v8 = a1;
  *&a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusPublisher] = sub_1D0FF4A28();
  v11.receiver = a4;
  v11.super_class = type metadata accessor for FeatureStatusAdvertisableFeatureSource();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1D0FD9F94();

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v9;
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

id sub_1D0FDB030(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v16[3] = a5;
  v16[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a2, a5);
  *&a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusChange] = 0;
  *&a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_queue] = a1;
  sub_1D0F39694(a3, &a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_advertisableFeatureSourceProvider]);
  sub_1D0F39694(v16, &a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusProvider]);
  v12 = a1;
  *&a4[OBJC_IVAR____TtC16HealthExperience38FeatureStatusAdvertisableFeatureSource_featureStatusPublisher] = sub_1D0FF4A18();
  v15.receiver = a4;
  v15.super_class = type metadata accessor for FeatureStatusAdvertisableFeatureSource();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_1D0FD9F94();

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

id sub_1D0FDB178(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for FeatureStatusAdvertisableFeatureSource());
  (*(v11 + 16))(v13, a2, a5);
  return sub_1D0FDB030(a1, v13, a3, v14, a5, a6);
}

uint64_t sub_1D0FDB274(uint64_t a1)
{
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D0FDB30C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_5Tm_2(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D0FDB6AC(uint64_t a1, uint64_t a2)
{
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D0FDB748()
{
  if (!qword_1EC5FD4E8)
  {
    sub_1D0FF49A8();
    v0 = sub_1D0FF4E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD4E8);
    }
  }
}

uint64_t sub_1D0FDB7B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0FDB800()
{
  if (!qword_1EC5FD4F8)
  {
    sub_1D0F51870();
    v0 = sub_1D0FF6418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FD4F8);
    }
  }
}

uint64_t sub_1D0FDB864(uint64_t a1, uint64_t a2)
{
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D0FDB8F8()
{
  sub_1D0FDB30C(0, &qword_1EC5FD4C8, MEMORY[0x1E69A3890], MEMORY[0x1E69E6720]);
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  sub_1D0FD93FC(v3, v4, v5, v6);
}

uint64_t sub_1D0FDB9BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D0FDBA1C()
{
  if (!qword_1EE06F990)
  {
    sub_1D0F1ACD4(255, &qword_1EE071060);
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06F990);
    }
  }
}

unint64_t FeatureStatusKind.analyticsString.getter()
{
  v1 = *v0;
  v2 = 0x657669746361;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x766552736465656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6576697463616E69;
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

uint64_t sub_1D0FDBB70(uint64_t a1)
{
  v2 = sub_1D0FDC678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FDBBAC(uint64_t a1)
{
  v2 = sub_1D0FDC678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D0FDBBE8()
{
  v1 = *v0;
  v2 = 0x657669746361;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x766552736465656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6576697463616E69;
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

uint64_t sub_1D0FDBC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FDE7CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0FDBCC8(uint64_t a1)
{
  v2 = sub_1D0FDC6CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FDBD04(uint64_t a1)
{
  v2 = sub_1D0FDC6CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FDBD40(uint64_t a1)
{
  v2 = sub_1D0FDC624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FDBD7C(uint64_t a1)
{
  v2 = sub_1D0FDC624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FDBDB8(uint64_t a1)
{
  v2 = sub_1D0FDC528();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FDBDF4(uint64_t a1)
{
  v2 = sub_1D0FDC528();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FDBE30(uint64_t a1)
{
  v2 = sub_1D0FDC5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FDBE6C(uint64_t a1)
{
  v2 = sub_1D0FDC5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FDBEA8(uint64_t a1)
{
  v2 = sub_1D0FDC57C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FDBEE4(uint64_t a1)
{
  v2 = sub_1D0FDC57C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatusKind.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1D0FDCEF4(0, &qword_1EE06E190, sub_1D0FDC528, &type metadata for FeatureStatusKind.NeedsReviewCodingKeys, MEMORY[0x1E69E6F58]);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v32 - v6;
  sub_1D0FDCEF4(0, &qword_1EE06E188, sub_1D0FDC57C, &type metadata for FeatureStatusKind.UnavailableNotSupportedCodingKeys, v4);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v32 - v8;
  sub_1D0FDCEF4(0, &qword_1EE06E180, sub_1D0FDC5D0, &type metadata for FeatureStatusKind.UnavailableInvalidSettingsCodingKeys, v4);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v32 - v10;
  sub_1D0FDCEF4(0, &qword_1EE06E198, sub_1D0FDC624, &type metadata for FeatureStatusKind.InactiveCodingKeys, v4);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v32 - v12;
  sub_1D0FDCEF4(0, &qword_1EE06E1A0, sub_1D0FDC678, &type metadata for FeatureStatusKind.ActiveCodingKeys, v4);
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  sub_1D0FDCEF4(0, &qword_1EE06E1A8, sub_1D0FDC6CC, &type metadata for FeatureStatusKind.CodingKeys, v4);
  v46 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FDC6CC();
  sub_1D0FF6438();
  v22 = (v18 + 8);
  if (v21 <= 1)
  {
    v28 = v43;
    v27 = v44;
    v29 = v45;
    if (!v21)
    {
      v47 = 0;
      sub_1D0FDC678();
      v30 = v46;
      sub_1D0FF6178();
      (*(v33 + 8))(v16, v14);
      return (*v22)(v20, v30);
    }

    v48 = 1;
    sub_1D0FDC624();
    v24 = v46;
    sub_1D0FF6178();
    (*(v27 + 8))(v28, v29);
  }

  else
  {
    if (v21 == 2)
    {
      v49 = 2;
      sub_1D0FDC5D0();
      v23 = v34;
      v24 = v46;
      sub_1D0FF6178();
      v26 = v35;
      v25 = v36;
    }

    else if (v21 == 3)
    {
      v50 = 3;
      sub_1D0FDC57C();
      v23 = v37;
      v24 = v46;
      sub_1D0FF6178();
      v26 = v38;
      v25 = v39;
    }

    else
    {
      v51 = 4;
      sub_1D0FDC528();
      v23 = v40;
      v24 = v46;
      sub_1D0FF6178();
      v26 = v41;
      v25 = v42;
    }

    (*(v26 + 8))(v23, v25);
  }

  return (*v22)(v20, v24);
}

unint64_t sub_1D0FDC528()
{
  result = qword_1EE06F4B8;
  if (!qword_1EE06F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4B8);
  }

  return result;
}

unint64_t sub_1D0FDC57C()
{
  result = qword_1EE06F4A0;
  if (!qword_1EE06F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4A0);
  }

  return result;
}

unint64_t sub_1D0FDC5D0()
{
  result = qword_1EE06F488;
  if (!qword_1EE06F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F488);
  }

  return result;
}

unint64_t sub_1D0FDC624()
{
  result = qword_1EE06F4D0;
  if (!qword_1EE06F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4D0);
  }

  return result;
}

unint64_t sub_1D0FDC678()
{
  result = qword_1EE06F4E8;
  if (!qword_1EE06F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4E8);
  }

  return result;
}

unint64_t sub_1D0FDC6CC()
{
  result = qword_1EE06F500;
  if (!qword_1EE06F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F500);
  }

  return result;
}

uint64_t FeatureStatusKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v46 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D0FDCEF4(0, &qword_1EC5FD588, sub_1D0FDC528, &type metadata for FeatureStatusKind.NeedsReviewCodingKeys, MEMORY[0x1E69E6F48]);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v37 - v5;
  sub_1D0FDCEF4(0, &qword_1EC5FD590, sub_1D0FDC57C, &type metadata for FeatureStatusKind.UnavailableNotSupportedCodingKeys, v3);
  v45 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v37 - v7;
  sub_1D0FDCEF4(0, &qword_1EC5FD598, sub_1D0FDC5D0, &type metadata for FeatureStatusKind.UnavailableInvalidSettingsCodingKeys, v3);
  v41 = v8;
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v37 - v9;
  sub_1D0FDCEF4(0, &qword_1EC5FD5A0, sub_1D0FDC624, &type metadata for FeatureStatusKind.InactiveCodingKeys, v3);
  v40 = v10;
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v37 - v11;
  sub_1D0FDCEF4(0, &qword_1EC5FD5A8, sub_1D0FDC678, &type metadata for FeatureStatusKind.ActiveCodingKeys, v3);
  v13 = v12;
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  sub_1D0FDCEF4(0, &qword_1EC5FD5B0, sub_1D0FDC6CC, &type metadata for FeatureStatusKind.CodingKeys, v3);
  v17 = v16;
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  v20 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D0FDC6CC();
  v21 = v53;
  sub_1D0FF6428();
  if (v21)
  {
    goto LABEL_9;
  }

  v53 = v13;
  v23 = v48;
  v22 = v49;
  v24 = v50;
  v25 = v51;
  v26 = sub_1D0FF6158();
  v27 = (2 * *(v26 + 16)) | 1;
  v54 = v26;
  v55 = v26 + 32;
  v56 = 0;
  v57 = v27;
  v28 = sub_1D0F32228();
  v29 = v19;
  if (v28 == 5 || v56 != v57 >> 1)
  {
    v32 = sub_1D0FF5E38();
    swift_allocError();
    v34 = v33;
    sub_1D0F35154();
    *v34 = &type metadata for FeatureStatusKind;
    sub_1D0FF60B8();
    sub_1D0FF5E18();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v47 + 8))(v19, v17);
    swift_unknownObjectRelease();
LABEL_9:
    v35 = v52;
    return __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  v58 = v28;
  if (v28 <= 1u)
  {
    if (v28)
    {
      v59 = 1;
      sub_1D0FDC624();
      sub_1D0FF60A8();
      (*(v38 + 8))(v23, v40);
    }

    else
    {
      v59 = 0;
      sub_1D0FDC678();
      sub_1D0FF60A8();
      (*(v37 + 8))(v15, v53);
    }

    (*(v47 + 8))(v19, v17);
    swift_unknownObjectRelease();
    v35 = v52;
    v30 = v46;
  }

  else
  {
    v30 = v46;
    if (v28 == 2)
    {
      v59 = 2;
      sub_1D0FDC5D0();
      sub_1D0FF60A8();
      v31 = v47;
      (*(v39 + 8))(v22, v41);
    }

    else
    {
      v31 = v47;
      if (v28 == 3)
      {
        v59 = 3;
        sub_1D0FDC57C();
        sub_1D0FF60A8();
        (*(v42 + 8))(v24, v45);
      }

      else
      {
        v59 = 4;
        sub_1D0FDC528();
        sub_1D0FF60A8();
        (*(v43 + 8))(v25, v44);
      }
    }

    (*(v31 + 8))(v29, v17);
    swift_unknownObjectRelease();
    v35 = v52;
  }

  *v30 = v58;
  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

void sub_1D0FDCEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t FeatureStatusKind.hash(into:)()
{
  sub_1D0FF5488();
}

uint64_t FeatureStatusKind.hashValue.getter()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0FDD164()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0FDD244()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

id static FeatureStatusSupport.hasMultipleWatches()()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result getPairedDevices];
    if (v2)
    {
      v3 = v2;
      sub_1D0FDD42C();
      v4 = sub_1D0FF5608();

      if (v4 >> 62)
      {
        v5 = sub_1D0FF5D18();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v5 > 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_1D0FDD42C()
{
  result = qword_1EE06E2E8;
  if (!qword_1EE06E2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06E2E8);
  }

  return result;
}

uint64_t static FeatureStatusSupport.isHealthChecklistAvailablePublisher()()
{
  sub_1D0FDEAAC();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FDEB40();
  sub_1D0FDEBA4(&qword_1EE06E638, sub_1D0FDEB40);
  sub_1D0FF5008();
  sub_1D0FDEBA4(&qword_1EE06E520, sub_1D0FDEAAC);
  v5 = sub_1D0FF5098();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1D0FDD5E4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D0FDFA7C(0, &qword_1EE06E5B8, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-v5];
  v7 = [objc_opt_self() shared];
  v8 = [v7 isHealthChecklistAvailable];

  v11[15] = v8;
  sub_1D0FF4FD8();
  sub_1D0FDFA00();
  v9 = sub_1D0FF5098();
  result = (*(v4 + 8))(v6, v3);
  *a1 = v9;
  return result;
}

uint64_t sub_1D0FDD740()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EE06F030 = result;
  unk_1EE06F038 = v1;
  return result;
}

uint64_t sub_1D0FDD814()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EC5FD508 = result;
  unk_1EC5FD510 = v1;
  return result;
}

uint64_t sub_1D0FDD8E8()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EC5FD518 = result;
  unk_1EC5FD520 = v1;
  return result;
}

uint64_t sub_1D0FDD9BC()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EE06F018 = result;
  unk_1EE06F020 = v1;
  return result;
}

uint64_t sub_1D0FDDA90()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EE06F000 = result;
  *algn_1EE06F008 = v1;
  return result;
}

uint64_t sub_1D0FDDB64()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EC5FD528 = result;
  unk_1EC5FD530 = v1;
  return result;
}

uint64_t sub_1D0FDDC38()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EC5FD538 = result;
  unk_1EC5FD540 = v1;
  return result;
}

uint64_t sub_1D0FDDD0C()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EC5FD548 = result;
  unk_1EC5FD550 = v1;
  return result;
}

uint64_t sub_1D0FDDDE0()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EC5FD558 = result;
  unk_1EC5FD560 = v1;
  return result;
}

uint64_t sub_1D0FDDEB4()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EC5FD568 = result;
  unk_1EC5FD570 = v1;
  return result;
}

uint64_t sub_1D0FDDF88()
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  result = sub_1D0FF4108();
  qword_1EC5FD578 = result;
  unk_1EC5FD580 = v1;
  return result;
}

uint64_t sub_1D0FDE05C(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

uint64_t static FeatureStatusSupport.secondaryDescription(for:isAvailableOnPhone:isAvailableOnWatch:customInvalidSettingsString:)(unsigned __int8 *a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = [objc_opt_self() hasPairedWatch];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      if (qword_1EE06F010 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EE06F018;
      goto LABEL_25;
    }
  }

  else if (v9 >= 2)
  {
    if (!a5)
    {
      if (qword_1EC5FBDD8 != -1)
      {
        swift_once();
      }

      a4 = qword_1EC5FD518;
    }

    goto LABEL_26;
  }

  if ((a2 & 1) == 0)
  {
    if (a3 & v10)
    {
      if (qword_1EC5FBE00 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EC5FD568;
      goto LABEL_25;
    }

    return 0;
  }

  if ((a3 & 1) == 0)
  {
    if (v10)
    {
      if (qword_1EC5FBDF8 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EC5FD558;
      goto LABEL_25;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  if (qword_1EC5FBE08 != -1)
  {
    swift_once();
  }

  v11 = &qword_1EC5FD578;
LABEL_25:
  a4 = *v11;
LABEL_26:

  return a4;
}

uint64_t static FeatureStatusSupport.dataTypeDetailFooterDescription(with:from:appendLearnMoreString:)(_BYTE *a1, uint64_t a2, char a3)
{
  if ((*a1 & 0xFE) != 2)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v3 = a2 + 16;
  v4 = v5;
  if (!v5 || v4 != 1)
  {
    return 0;
  }

  v6 = (v3 + 16 * v4);
  v8 = *v6;
  v7 = v6[1];
  if (a3)
  {

    v8 = _s16HealthExperience20FeatureStatusSupportV26learnMoreFooterDescription20unavailabilityStringS2S_tFZ_0(v8, v7);
  }

  else
  {
  }

  return v8;
}

uint64_t static FeatureStatusSupport.settingsDeviceStatus(for:isPhoneOnly:isWatchOnly:hasPairedWatch:)(_BYTE *a1, char a2, char a3, char a4)
{
  v5 = *a1;
  v6 = *a1 == 0;
  if (v5 > 1)
  {
    v7 = v5 == 4;
    if ((a2 & 1) == 0)
    {
      v6 = 0;
      a4 &= v7;
      if ((a3 & 1) == 0)
      {
        return _s16HealthExperience20FeatureStatusSupportV014settingsDeviceD018isAvailableOnPhone0h7EnabledjK00hiJ5Watch0hljM0SSSgSb_S3btFZ_0(v7, v6, a4 & 1, v6);
      }

      goto LABEL_10;
    }

    if (v5 != 4)
    {
      return 0;
    }

LABEL_7:
    v9 = [objc_opt_self() currentDeviceDisplayName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D0FF5428();
      v13 = v12;
    }

    else
    {
      if (qword_1EE06E2E0 != -1)
      {
        swift_once();
      }

      v11 = sub_1D0FF4108();
      v13 = v18;
    }

    if (v5)
    {
      if (qword_1EE06E2E0 == -1)
      {
        goto LABEL_26;
      }
    }

    else if (qword_1EE06E2E0 == -1)
    {
LABEL_26:
      sub_1D0FF4108();
      sub_1D0FBED94();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D0FFA320;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1D0FDF45C();
      *(v19 + 32) = v11;
      *(v19 + 40) = v13;
      v20 = sub_1D0FF53F8();

      return v20;
    }

    swift_once();
    goto LABEL_26;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v7 = 1;
  if ((a3 & 1) == 0)
  {
    return _s16HealthExperience20FeatureStatusSupportV014settingsDeviceD018isAvailableOnPhone0h7EnabledjK00hiJ5Watch0hljM0SSSgSb_S3btFZ_0(v7, v6, a4 & 1, v6);
  }

LABEL_10:
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v14 = _s16HealthExperience20FeatureStatusSupportV22activePairedDeviceNameSSSgyFZ_0();
  if (!v15)
  {
    if (qword_1EE06E2E0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D0FF4108();
  }

  v16 = v14;
  v17 = v15;
  if (v5)
  {
    if (qword_1EE06E2E0 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (qword_1EE06E2E0 != -1)
  {
LABEL_31:
    swift_once();
  }

LABEL_28:
  sub_1D0FF4108();
  sub_1D0FBED94();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D0FFA320;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1D0FDF45C();
  *(v21 + 32) = v16;
  *(v21 + 40) = v17;
  v22 = sub_1D0FF53F8();

  return v22;
}

uint64_t sub_1D0FDE7CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xE800000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1004970 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1004950 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x766552736465656ELL && a2 == 0xEB00000000776569)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id _s16HealthExperience20FeatureStatusSupportV22activePairedDeviceNameSSSgyFZ_0()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v1 = result;
  v2 = [result getActivePairedDevice];

  if (!v2)
  {
    v5 = 0u;
    v6 = 0u;
LABEL_12:
    sub_1D0F23B7C(&v5);
    return 0;
  }

  if ([v2 valueForProperty_])
  {
    sub_1D0FF5CA8();
    swift_unknownObjectRelease();
  }

  else
  {

    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void sub_1D0FDEAAC()
{
  if (!qword_1EE06E518)
  {
    sub_1D0FDEB40();
    sub_1D0FDEBA4(&qword_1EE06E638, sub_1D0FDEB40);
    v0 = sub_1D0FF5018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E518);
    }
  }
}

void sub_1D0FDEB40()
{
  if (!qword_1EE06E630)
  {
    v0 = sub_1D0FF4E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E630);
    }
  }
}

uint64_t sub_1D0FDEBA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s16HealthExperience20FeatureStatusSupportV26learnMoreFooterDescription20unavailabilityStringS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_1EE06E2E0 != -1)
  {
    swift_once();
  }

  sub_1D0FF4108();
  sub_1D0FBED94();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D0FFD030;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D0FDF45C();
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v7 = qword_1EE06F010;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE06F018;
  v8 = unk_1EE06F020;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  v10 = sub_1D0FF5438();

  return v10;
}

uint64_t _s16HealthExperience20FeatureStatusSupportV014settingsDeviceD018isAvailableOnPhone0h7EnabledjK00hiJ5Watch0hljM0SSSgSb_S3btFZ_0(char a1, char a2, char a3, char a4)
{
  if ((a1 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      return 0;
    }

    v12 = 0;
    v10 = 0;
    v13 = _s16HealthExperience20FeatureStatusSupportV22activePairedDeviceNameSSSgyFZ_0();
    if (v14)
    {
LABEL_11:
      v15 = v13;
      v16 = v14;
      if (a1)
      {
        if (v12 && v14)
        {
          if (a2)
          {
            if (a4)
            {
              if (qword_1EE06E2E0 == -1)
              {
                goto LABEL_41;
              }

              goto LABEL_47;
            }
          }

          else if ((a4 & 1) == 0)
          {
            if (qword_1EE06E2E0 == -1)
            {
LABEL_41:
              sub_1D0FF4108();
              sub_1D0FBED94();
              v23 = swift_allocObject();
              *(v23 + 16) = xmmword_1D0FFD030;
              v24 = MEMORY[0x1E69E6158];
              *(v23 + 56) = MEMORY[0x1E69E6158];
              v25 = sub_1D0FDF45C();
              *(v23 + 32) = v10;
              *(v23 + 40) = v12;
              *(v23 + 96) = v24;
              *(v23 + 104) = v25;
              *(v23 + 64) = v25;
              *(v23 + 72) = v15;
              *(v23 + 80) = v16;
              v22 = sub_1D0FF53F8();

              goto LABEL_42;
            }

LABEL_47:
            swift_once();
            goto LABEL_41;
          }

          if (qword_1EE06E2E0 == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_47;
        }

        return 0;
      }

      if (!v16)
      {
        return 0;
      }

      if (a4)
      {
        if (qword_1EE06E2E0 == -1)
        {
          goto LABEL_32;
        }
      }

      else if (qword_1EE06E2E0 == -1)
      {
LABEL_32:
        sub_1D0FF4108();
        sub_1D0FBED94();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1D0FFA320;
        *(v18 + 56) = MEMORY[0x1E69E6158];
        *(v18 + 64) = sub_1D0FDF45C();
        *(v18 + 32) = v15;
        *(v18 + 40) = v16;
        v19 = sub_1D0FF53F8();

        return v19;
      }

      swift_once();
      goto LABEL_32;
    }

LABEL_8:
    if (qword_1EE06E2E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D0FF4108();
    goto LABEL_11;
  }

  v8 = [objc_opt_self() currentDeviceDisplayName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D0FF5428();
    v12 = v11;

    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (qword_1EE06E2E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1D0FF4108();
    v12 = v17;
    if (a3)
    {
LABEL_4:
      v13 = _s16HealthExperience20FeatureStatusSupportV22activePairedDeviceNameSSSgyFZ_0();
      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  if (!v12)
  {
    return 0;
  }

  if (a2)
  {
    if (qword_1EE06E2E0 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_44;
  }

  if (qword_1EE06E2E0 != -1)
  {
LABEL_44:
    swift_once();
  }

LABEL_34:
  sub_1D0FF4108();
  sub_1D0FBED94();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D0FFA320;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1D0FDF45C();
  *(v21 + 32) = v10;
  *(v21 + 40) = v12;
  v22 = sub_1D0FF53F8();

LABEL_42:

  return v22;
}

unint64_t sub_1D0FDF45C()
{
  result = qword_1EE06FA68;
  if (!qword_1EE06FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FA68);
  }

  return result;
}

unint64_t sub_1D0FDF4B4()
{
  result = qword_1EC5FD5B8;
  if (!qword_1EC5FD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD5B8);
  }

  return result;
}

unint64_t sub_1D0FDF58C()
{
  result = qword_1EC5FD5C0;
  if (!qword_1EC5FD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD5C0);
  }

  return result;
}

unint64_t sub_1D0FDF5E4()
{
  result = qword_1EE06F4F0;
  if (!qword_1EE06F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4F0);
  }

  return result;
}

unint64_t sub_1D0FDF63C()
{
  result = qword_1EE06F4F8;
  if (!qword_1EE06F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4F8);
  }

  return result;
}

unint64_t sub_1D0FDF694()
{
  result = qword_1EE06F4D8;
  if (!qword_1EE06F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4D8);
  }

  return result;
}

unint64_t sub_1D0FDF6EC()
{
  result = qword_1EE06F4E0;
  if (!qword_1EE06F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4E0);
  }

  return result;
}

unint64_t sub_1D0FDF744()
{
  result = qword_1EE06F4C0;
  if (!qword_1EE06F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4C0);
  }

  return result;
}

unint64_t sub_1D0FDF79C()
{
  result = qword_1EE06F4C8;
  if (!qword_1EE06F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4C8);
  }

  return result;
}

unint64_t sub_1D0FDF7F4()
{
  result = qword_1EE06F478;
  if (!qword_1EE06F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F478);
  }

  return result;
}

unint64_t sub_1D0FDF84C()
{
  result = qword_1EE06F480;
  if (!qword_1EE06F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F480);
  }

  return result;
}

unint64_t sub_1D0FDF8A4()
{
  result = qword_1EE06F490;
  if (!qword_1EE06F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F490);
  }

  return result;
}

unint64_t sub_1D0FDF8FC()
{
  result = qword_1EE06F498;
  if (!qword_1EE06F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F498);
  }

  return result;
}

unint64_t sub_1D0FDF954()
{
  result = qword_1EE06F4A8;
  if (!qword_1EE06F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4A8);
  }

  return result;
}

unint64_t sub_1D0FDF9AC()
{
  result = qword_1EE06F4B0;
  if (!qword_1EE06F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F4B0);
  }

  return result;
}

unint64_t sub_1D0FDFA00()
{
  result = qword_1EE06E5C0;
  if (!qword_1EE06E5C0)
  {
    sub_1D0FDFA7C(255, &qword_1EE06E5B8, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06E5C0);
  }

  return result;
}

void sub_1D0FDFA7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ActivityMoveModeState.init(activityMoveMode:hasDataInOtherActivityMoveMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static ActivityMoveModeState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D0FDFB80()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D0FDFBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1004410 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1005F00 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D0FF6278();

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

uint64_t sub_1D0FDFCA0(uint64_t a1)
{
  v2 = sub_1D0FE3B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FDFCDC(uint64_t a1)
{
  v2 = sub_1D0FE3B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityMoveModeState.encode(to:)(void *a1)
{
  sub_1D0FE4530(0, &qword_1EE070AF0, sub_1D0FE3B5C, &type metadata for ActivityMoveModeState.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v11[3] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FE3B5C();
  sub_1D0FF6438();
  v15 = v8;
  v14 = 0;
  type metadata accessor for HKActivityMoveMode(0);
  sub_1D0FE474C(&qword_1EE070B28, type metadata accessor for HKActivityMoveMode);
  v9 = v12;
  sub_1D0FF6208();
  if (!v9)
  {
    v13 = 1;
    sub_1D0FF61D8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ActivityMoveModeState.hashValue.getter()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  sub_1D0FF6358();
  return sub_1D0FF6378();
}

uint64_t ActivityMoveModeState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_1D0FE4530(0, &qword_1EE071030, sub_1D0FE3B5C, &type metadata for ActivityMoveModeState.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FE3B5C();
  sub_1D0FF6428();
  if (!v2)
  {
    v9 = v6;
    v10 = v14;
    type metadata accessor for HKActivityMoveMode(0);
    v16 = 0;
    sub_1D0FE474C(&qword_1EE0710A0, type metadata accessor for HKActivityMoveMode);
    sub_1D0FF6148();
    v11 = v17;
    v15 = 1;
    v13 = sub_1D0FF6118();
    (*(v9 + 8))(v8, v5);
    *v10 = v11;
    *(v10 + 8) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D0FE0200(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0FE0230()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  sub_1D0FF6358();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FE02D0()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  sub_1D0FF6358();
  return sub_1D0FF6378();
}

uint64_t HealthKitProfileInformation.firstName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D0FE035C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_bridgeObjectRetain_n();

  *a2 = v4;
  a2[1] = v3;
  v5 = a2[6];
  swift_beginAccess();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
}

uint64_t HealthKitProfileInformation.firstName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  v5 = v2[6];
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t sub_1D0FE0464(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(result + 24);
    v4 = v3[6];
    v6 = *v3;
    v5 = v3[1];
    swift_beginAccess();
    *(v4 + 16) = v6;
    *(v4 + 24) = v5;
  }

  return result;
}

uint64_t HealthKitProfileInformation.lastName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D0FE0504(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_bridgeObjectRetain_n();

  a2[2] = v4;
  a2[3] = v3;
  v5 = a2[6];
  swift_beginAccess();
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t HealthKitProfileInformation.lastName.setter(uint64_t a1, uint64_t a2)
{

  v2[2] = a1;
  v2[3] = a2;
  v5 = v2[6];
  swift_beginAccess();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

uint64_t sub_1D0FE060C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(result + 24);
    v4 = v3[6];
    v6 = v3[2];
    v5 = v3[3];
    swift_beginAccess();
    *(v4 + 32) = v6;
    *(v4 + 40) = v5;
  }

  return result;
}

uint64_t HealthKitProfileInformation.dsid.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void HealthKitProfileInformation.activityMoveModeState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t HealthKitProfileInformation.activityMoveModeState.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

void *HealthKitProfileInformation.image.getter()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = v2;
  if (!v2)
  {
    v4 = swift_beginAccess();
    v5 = *(v1 + 56);
    v9[1] = v1;
    v6 = *(v5 + 16);
    MEMORY[0x1EEE9AC00](v4);

    os_unfair_lock_lock(v6 + 9);
    sub_1D0FBC8EC(&v6[4], v9);
    os_unfair_lock_unlock(v6 + 9);
    v3 = v9[0];
  }

  v7 = v2;
  return v3;
}

uint64_t HealthKitProfileInformation.profileIdentifier.getter()
{
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  return sub_1D0FF52B8();
}

uint64_t sub_1D0FE083C(void **a1)
{
  v1 = *a1;
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  v2 = v1;
  return sub_1D0FF52C8();
}

uint64_t HealthKitProfileInformation.profileIdentifier.setter()
{
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  return sub_1D0FF52C8();
}

void (*HealthKitProfileInformation.profileIdentifier.modify(uint64_t *a1))(void *a1)
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
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  *(v3 + 32) = sub_1D0FF52A8();
  return sub_1D0F6F304;
}

id HealthKitProfileInformation.profileType.getter()
{
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  v0 = sub_1D0FF52B8();
  v1 = [v0 type];

  return v1;
}

uint64_t HealthKitProfileInformation.uniqueIdentifier.getter()
{
  v0 = sub_1D0FF43A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0xD00000000000001CLL;
  v8[1] = 0x80000001D1005E80;
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  v4 = sub_1D0FF52B8();
  v5 = [v4 identifier];

  sub_1D0FF4388();
  sub_1D0FE474C(&qword_1EE071248, MEMORY[0x1E69695A8]);
  v6 = sub_1D0FF6238();
  MEMORY[0x1D3880AC0](v6);

  (*(v1 + 8))(v3, v0);
  return v8[0];
}

uint64_t HealthKitProfileInformation.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for HealthKitProfileInformation() + 40));

  return v1;
}

uint64_t HealthKitProfileInformation.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HealthKitProfileInformation() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void HealthKitProfileInformation.init(firstName:lastName:dsid:profileIdentifier:activityMoveModeState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v25 = *a8;
  v24 = *(a8 + 8);
  v17 = type metadata accessor for HealthKitProfileInformation();
  v18 = (a9 + v17[10]);
  *v18 = 0x4E656C69666F7250;
  v18[1] = 0xEF6C6C6543656D61;
  v19 = a9 + v17[11];
  *v19 = xmmword_1D0FF99D0;
  *(v19 + 16) = 0;
  v20 = v17[12];
  v21 = type metadata accessor for CloudSyncResponse();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  sub_1D0F1ACD4(0, &qword_1EE071070);

  v22 = a7;
  sub_1D0FF52F8();
  type metadata accessor for ProfileImageInformation();
  swift_allocObject();
  v23 = sub_1D0FBCBA0(a1, a2, a3, a4, 0);

  *(a9 + 48) = v23;
  *(a9 + 56) = v25;
  *(a9 + 64) = v24;
}

uint64_t static HealthKitProfileInformation.makeImage(photoFetcherResult:size:)(void *a1, unint64_t a2, char a3, double a4, double a5)
{
  v10 = sub_1D0FF4C18();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &aBlock[-1] - v15;
  if (a3)
  {
    sub_1D0FF4B88();
    v17 = a1;
    v18 = sub_1D0FF4C08();
    v19 = sub_1D0FF5978();
    sub_1D0FE40BC(a1, a2, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446466;
      v51 = type metadata accessor for HealthKitProfileInformation();
      sub_1D0FE40C8();
      v22 = sub_1D0FF5448();
      v24 = sub_1D0F1AE0C(v22, v23, aBlock);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v51 = a1;
      v25 = a1;
      sub_1D0F25ECC(0, &qword_1EE071010);
      v26 = sub_1D0FF5448();
      v28 = sub_1D0F1AE0C(v26, v27, aBlock);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_1D0F17000, v18, v19, "[%{public}s]: Failed to fetch photo: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v21, -1, -1);
      MEMORY[0x1D3882680](v20, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    return 0;
  }

  sub_1D0FF4B88();
  v29 = sub_1D0FF4C08();
  v30 = sub_1D0FF5978();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136446210;
    v51 = type metadata accessor for HealthKitProfileInformation();
    sub_1D0FE40C8();
    v33 = sub_1D0FF5448();
    v35 = sub_1D0F1AE0C(v33, v34, aBlock);
    v49 = v10;
    v36 = v35;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1D0F17000, v29, v30, "[%{public}s]: Photo fetched", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1D3882680](v32, -1, -1);
    MEMORY[0x1D3882680](v31, -1, -1);

    (*(v11 + 8))(v16, v49);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  v37 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v38 = sub_1D0FF4278();
  v39 = [v37 initWithData_];

  if (!v39)
  {
    return 0;
  }

  v40 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
  v41 = v39;
  v42 = [v40 initWithSize_];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = a4;
  *(v43 + 32) = a5;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1D0FE4110;
  *(v44 + 24) = v43;
  aBlock[4] = sub_1D0FE412C;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F54708;
  aBlock[3] = &block_descriptor_21;
  v45 = _Block_copy(aBlock);
  v46 = v41;

  v47 = [v42 imageWithActions_];

  _Block_release(v45);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if ((v42 & 1) == 0)
  {
    return v47;
  }

  __break(1u);
  return result;
}

uint64_t static HealthKitProfileInformation.pluginFeedItemUniqueIdentifier(for:)(void *a1)
{
  v2 = sub_1D0FF43A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0x5F656C69666F7250;
  v9[1] = 0xE800000000000000;
  v6 = [a1 identifier];
  sub_1D0FF4388();

  sub_1D0FE474C(&qword_1EE071248, MEMORY[0x1E69695A8]);
  v7 = sub_1D0FF6238();
  MEMORY[0x1D3880AC0](v7);

  (*(v3 + 8))(v5, v2);
  return v9[0];
}

uint64_t static HealthKitProfileInformation.decode(from:)()
{
  sub_1D0FF3DA8();
  swift_allocObject();
  sub_1D0FF3D98();
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE474C(&qword_1EE071200, type metadata accessor for HealthKitProfileInformation);
  sub_1D0FF3D88();
}

uint64_t HealthKitProfileInformation.encode()()
{
  sub_1D0FF3DD8();
  swift_allocObject();
  sub_1D0FF3DC8();
  type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE474C(&qword_1EE070D70, type metadata accessor for HealthKitProfileInformation);
  v0 = sub_1D0FF3DB8();

  return v0;
}

__n128 HealthKitProfileInformation.endSharingRelationshipState.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HealthKitProfileInformation() + 44));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t HealthKitProfileInformation.endSharingRelationshipState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for HealthKitProfileInformation();
  v6 = v1 + *(result + 44);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t HealthKitProfileInformation.cloudSyncResponse.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HealthKitProfileInformation() + 48);

  return sub_1D0FE4188(a1, v3);
}

void HealthKitProfileInformation.dateUpdated.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D0FE4134(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  v14 = sub_1D0FF52B8();
  v15 = [v14 type];

  v16 = *(v13 + 48);
  if (v15 == 1)
  {
    sub_1D0FE441C(v2 + v16, v12, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
    v17 = type metadata accessor for CloudSyncResponse();
    if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
    {
      v18 = v12;
LABEL_6:
      sub_1D0FE4208(v18);
      v20 = sub_1D0FF4348();
      (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
      return;
    }

    sub_1D0FE4280(0, &qword_1EE06FA90, &qword_1EE071068);
    v21 = sub_1D0FF52B8();
    sub_1D0FE4F68(v12, type metadata accessor for CloudSyncResponse);
    HKCloudSyncObserverStatus.lastPushOrPullDate.getter(a1);
  }

  else
  {
    sub_1D0FE441C(v2 + v16, v10, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
    v19 = type metadata accessor for CloudSyncResponse();
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      v18 = v10;
      goto LABEL_6;
    }

    sub_1D0FE4280(0, &qword_1EE06FA90, &qword_1EE071068);
    v22 = sub_1D0FF52B8();
    sub_1D0FE4F68(v10, type metadata accessor for CloudSyncResponse);
    v23 = [v22 lastPulledUpdateDate];

    if (v23)
    {
      sub_1D0FF4328();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = sub_1D0FF4348();
    (*(*(v25 - 8) + 56))(v6, v24, 1, v25);
    sub_1D0FB015C(v6, a1);
  }
}

uint64_t HealthKitProfileInformation.localizedSyncStatus.getter()
{
  v1 = v0;
  v2 = sub_1D0FF4348();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE42D8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE4134(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = type metadata accessor for HealthKitProfileInformation();
  v19 = sub_1D0FE3AF4();
  if ((v20 & 1) == 0)
  {
    v21 = v19;
    sub_1D0FE441C(v1 + *(v18 + 48), v17, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
    v22 = type metadata accessor for CloudSyncResponse();
    if ((*(*(v22 - 8) + 48))(v17, 1, v22) == 1)
    {
      sub_1D0FE4208(v17);
    }

    else
    {
      v23 = CloudSyncResponse.showSyncActivity(for:)(v21, 0);
      sub_1D0FE4F68(v17, type metadata accessor for CloudSyncResponse);
      if (v23)
      {
        if (qword_1EE06E2E0 != -1)
        {
          swift_once();
        }

        return sub_1D0FF4108();
      }
    }
  }

  sub_1D0FE441C(v1 + *(v18 + 48), v15, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  v25 = type metadata accessor for CloudSyncResponse();
  if ((*(*(v25 - 8) + 48))(v15, 1, v25) == 1)
  {
    sub_1D0FE4208(v15);
    v26 = 2;
  }

  else
  {
    sub_1D0FE4280(0, &qword_1EE06FA90, &qword_1EE071068);
    v27 = sub_1D0FF52B8();
    sub_1D0FE4F68(v15, type metadata accessor for CloudSyncResponse);
    v26 = [v27 syncEnabled];
  }

  HealthKitProfileInformation.dateUpdated.getter(v11);
  v28 = *(v6 + 48);
  *v8 = v26;
  sub_1D0FB015C(v11, &v8[v28]);
  if (v26 == 2)
  {
    if (qword_1EE06E2E0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D0FF4108();
    sub_1D0FE4F68(v8, sub_1D0FE42D8);
    return v24;
  }

  v29 = v3;
  v30 = (*(v3 + 48))(&v8[v28], 1, v2);
  if (v26)
  {
    if (v30 != 1)
    {
      (*(v3 + 32))(v45, &v8[v28], v2);
      if (qword_1EE06E2E0 != -1)
      {
        swift_once();
      }

      sub_1D0FF4108();
      sub_1D0FBED94();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1D0FFA320;
      if (qword_1EC5FBDB8 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    if (qword_1EE06E2E0 != -1)
    {
      swift_once();
    }

    sub_1D0FF4108();
    sub_1D0FBED94();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D0FFA320;
    v32 = sub_1D0FF4108();
    v34 = v33;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1D0FDF45C();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    v24 = sub_1D0FF53F8();
  }

  else
  {
    if (v30 != 1)
    {
      (*(v3 + 32))(v45, &v8[v28], v2);
      if (qword_1EE06E2E0 != -1)
      {
        swift_once();
      }

      sub_1D0FF4108();
      sub_1D0FBED94();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1D0FFA320;
      if (qword_1EC5FBDB8 == -1)
      {
        goto LABEL_33;
      }

LABEL_35:
      swift_once();
LABEL_33:
      v36 = qword_1EC607FA8;
      v37 = v45;
      v38 = sub_1D0FF42E8();
      v39 = [v36 stringFromDate_];

      v40 = sub_1D0FF5428();
      v42 = v41;

      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = sub_1D0FDF45C();
      *(v35 + 32) = v40;
      *(v35 + 40) = v42;
      v24 = sub_1D0FF53F8();

      (*(v29 + 8))(v37, v2);
      return v24;
    }

    if (qword_1EE06E2E0 != -1)
    {
      swift_once();
    }

    sub_1D0FF4108();
    v24 = sub_1D0FF53F8();
  }

  return v24;
}

uint64_t HealthKitProfileInformation.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D0FF4608();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE4134(0, &qword_1EE070A30, MEMORY[0x1E69A3CA8]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v26 - v5;
  v31 = type metadata accessor for CloudSyncResponse();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1D0FF43A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF5488();
  if (*(v0 + 24))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  if (*(v0 + 40) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v15 = *(v0 + 32);
    sub_1D0FF6358();
    MEMORY[0x1D3881950](v15);
  }

  v16 = type metadata accessor for HealthKitProfileInformation();
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  v17 = sub_1D0FF52B8();
  v18 = [v17 identifier];

  sub_1D0FF4388();
  sub_1D0FE474C(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  (*(v12 + 8))(v14, v11);
  sub_1D0FE441C(v1 + *(v16 + 48), v10, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  v19 = v31;
  if ((*(v6 + 48))(v10, 1, v31) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v20 = v28;
    sub_1D0FE4374(v10, v28);
    sub_1D0FF6358();
    sub_1D0FE4280(0, &qword_1EE06FA90, &qword_1EE071068);
    sub_1D0FD506C();
    sub_1D0FF5378();
    v21 = v27;
    sub_1D0FE441C(v20 + *(v19 + 20), v27, &qword_1EE070A30, MEMORY[0x1E69A3CA8]);
    v23 = v29;
    v22 = v30;
    if ((*(v29 + 48))(v21, 1, v30) == 1)
    {
      sub_1D0FF6358();
    }

    else
    {
      v24 = v26;
      (*(v23 + 32))(v26, v21, v22);
      sub_1D0FF6358();
      sub_1D0FE474C(&qword_1EC5FD468, MEMORY[0x1E69A3CA8]);
      sub_1D0FF5378();
      (*(v23 + 8))(v24, v22);
    }

    sub_1D0FF6358();
    sub_1D0FE4F68(v20, type metadata accessor for CloudSyncResponse);
  }

  sub_1D0FBBA74();
  MEMORY[0x1D3881950](*(v1 + 56));
  return sub_1D0FF6358();
}

unint64_t sub_1D0FE2BF4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6D614E7473726966;
    v6 = 1684632420;
    if (a1 != 2)
    {
      v6 = 0xD000000000000017;
    }

    if (a1)
    {
      v5 = 0x656D614E7473616CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6564496573756572;
    v2 = 0xD00000000000001BLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D0FE2D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FE4BF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0FE2D60(uint64_t a1)
{
  v2 = sub_1D0FE4488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FE2D9C(uint64_t a1)
{
  v2 = sub_1D0FE4488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HealthKitProfileInformation.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D0FE4530(0, &qword_1EE070B08, sub_1D0FE4488, &type metadata for HealthKitProfileInformation.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FE4488();
  sub_1D0FF6438();
  LOBYTE(v15) = 0;
  sub_1D0FF61C8();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1D0FF6188();
    LOBYTE(v15) = 2;
    sub_1D0FF61A8();
    *&v15 = *(v3 + 48);
    v17 = 3;
    type metadata accessor for ProfileImageInformation();
    sub_1D0FE474C(&qword_1EE06EF48, type metadata accessor for ProfileImageInformation);
    sub_1D0FF6208();
    v11 = *(v3 + 64);
    *&v15 = *(v3 + 56);
    BYTE8(v15) = v11;
    v17 = 4;
    sub_1D0FE44DC();
    sub_1D0FF6208();
    v12 = type metadata accessor for HealthKitProfileInformation();
    LOBYTE(v15) = 5;
    sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
    sub_1D0FE45EC(&qword_1EE06E4D0);
    sub_1D0FF6208();
    LOBYTE(v15) = 6;
    sub_1D0FF61C8();
    v13 = (v3 + *(v12 + 44));
    v14 = *(v13 + 16);
    v15 = *v13;
    v16 = v14;
    v17 = 7;
    sub_1D0F4D3CC();
    sub_1D0FF61B8();
    LOBYTE(v15) = 8;
    type metadata accessor for CloudSyncResponse();
    sub_1D0FE474C(&qword_1EE06F508, type metadata accessor for CloudSyncResponse);
    sub_1D0FF61B8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t HealthKitProfileInformation.hashValue.getter()
{
  sub_1D0FF6338();
  HealthKitProfileInformation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t HealthKitProfileInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v48 - v4;
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  v51 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v48 - v6;
  sub_1D0FE4530(0, &qword_1EE071040, sub_1D0FE4488, &type metadata for HealthKitProfileInformation.CodingKeys, MEMORY[0x1E69E6F48]);
  v54 = v8;
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v48 - v9;
  v11 = type metadata accessor for HealthKitProfileInformation();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 44)];
  *v15 = xmmword_1D0FF99D0;
  v15[16] = 0;
  v16 = *(v12 + 48);
  v17 = type metadata accessor for CloudSyncResponse();
  v18 = *(*(v17 - 8) + 56);
  v19 = v14;
  v56 = v16;
  v18(&v14[v16], 1, 1, v17);
  v20 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D0FE4488();
  v55 = v10;
  v21 = v58;
  sub_1D0FF6428();
  if (v21)
  {
    v58 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v57);

LABEL_4:

    return sub_1D0FE4208(v19 + v56);
  }

  v22 = v7;
  v48[1] = v17;
  v24 = v52;
  v23 = v53;
  LOBYTE(v59) = 0;
  v25 = v54;
  *v19 = sub_1D0FF6108();
  *(v19 + 8) = v27;
  LOBYTE(v59) = 1;
  *(v19 + 16) = sub_1D0FF60C8();
  *(v19 + 24) = v28;
  v48[0] = v28;
  LOBYTE(v59) = 2;
  v29 = sub_1D0FF60E8();
  v58 = 0;
  *(v19 + 32) = v29;
  *(v19 + 40) = v30 & 1;
  type metadata accessor for ProfileImageInformation();
  v61 = 3;
  sub_1D0FE474C(&qword_1EE070120, type metadata accessor for ProfileImageInformation);
  v31 = v58;
  sub_1D0FF6148();
  v58 = v31;
  if (v31)
  {
    (*(v24 + 8))(v55, v25);
    v32 = 0;
    v33 = 0;
    goto LABEL_7;
  }

  *(v19 + 48) = v59;
  v61 = 4;
  sub_1D0FE4598();
  v34 = v58;
  sub_1D0FF6148();
  v58 = v34;
  if (v34)
  {
    (*(v24 + 8))(v55, v25);
LABEL_17:
    v33 = 0;
    v32 = 1;
    goto LABEL_7;
  }

  v35 = BYTE8(v59);
  *(v19 + 56) = v59;
  *(v19 + 64) = v35;
  LOBYTE(v59) = 5;
  sub_1D0FE45EC(&qword_1EE06FAB0);
  v36 = v51;
  v37 = v58;
  sub_1D0FF6148();
  v58 = v37;
  if (v37)
  {
    (*(v24 + 8))(v55, v54);
    goto LABEL_17;
  }

  (*(v23 + 32))(v19 + *(v11 + 36), v22, v36);
  LOBYTE(v59) = 6;
  v38 = v54;
  v39 = v58;
  v40 = sub_1D0FF6108();
  v58 = v39;
  if (v39)
  {
    (*(v24 + 8))(v55, v38);
    v32 = 1;
LABEL_25:
    v33 = 1;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v57);

    if (v32)
    {

      if ((v33 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (!v33)
    {
      goto LABEL_4;
    }

    (*(v23 + 8))(v19 + *(v11 + 36), v51);
    goto LABEL_4;
  }

  v42 = (v19 + *(v11 + 40));
  *v42 = v40;
  v42[1] = v41;
  v61 = 7;
  sub_1D0F4D7F4();
  v43 = v55;
  v44 = v58;
  sub_1D0FF60F8();
  v58 = v44;
  if (v44)
  {
    (*(v24 + 8))(v43, v54);
LABEL_24:
    v32 = 1;
    goto LABEL_25;
  }

  v45 = v60;
  *v15 = v59;
  v15[16] = v45;
  LOBYTE(v59) = 8;
  sub_1D0FE474C(&qword_1EE070540, type metadata accessor for CloudSyncResponse);
  v46 = v50;
  v47 = v58;
  sub_1D0FF60F8();
  v58 = v47;
  if (v47)
  {
    (*(v24 + 8))(v55, v54);
    goto LABEL_24;
  }

  (*(v24 + 8))(v55, v54);
  sub_1D0FE4188(v46, v19 + v56);
  sub_1D0FE4648(v19, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  return sub_1D0FE4F68(v19, type metadata accessor for HealthKitProfileInformation);
}

uint64_t sub_1D0FE39C8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_1D0FE3A00()
{
  sub_1D0FF6338();
  HealthKitProfileInformation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FE3A44()
{
  sub_1D0FF6338();
  HealthKitProfileInformation.hash(into:)();
  return sub_1D0FF6378();
}

__n128 sub_1D0FE3AC0@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

id sub_1D0FE3AF4()
{
  sub_1D0FE4280(0, &qword_1EE06FAA8, &qword_1EE071070);
  v0 = sub_1D0FF52B8();
  v1 = [v0 type];

  return v1;
}

unint64_t sub_1D0FE3B5C()
{
  result = qword_1EE071108;
  if (!qword_1EE071108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071108);
  }

  return result;
}

uint64_t type metadata accessor for HealthKitProfileInformation()
{
  result = qword_1EE0711F0;
  if (!qword_1EE0711F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s16HealthExperience0A21KitProfileInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncResponse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  sub_1D0FE4EE8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D0FF6278() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 24);
  if (v15)
  {
    if (!v16 || (*(a1 + 16) != *(a2 + 16) || v15 != v16) && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if ((_s16HealthExperience23ProfileImageInformationC2eeoiySbAC_ACtFZ_0(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 56) == *(a2 + 56) && ((*(a1 + 64) ^ *(a2 + 64)) & 1) == 0)
  {
    v34 = type metadata accessor for HealthKitProfileInformation();
    sub_1D0F1ACD4(0, &qword_1EE071070);
    sub_1D0FE43D8(&qword_1EC5FC550, &qword_1EE071070);
    if ((sub_1D0FF52D8() & 1) == 0)
    {
      return 0;
    }

    v19 = v34;
    v20 = *(v34 + 40);
    v21 = *(a1 + v20);
    v22 = *(a1 + v20 + 8);
    v23 = (a2 + v20);
    if ((v21 != *v23 || v22 != v23[1]) && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }

    v24 = *(v19 + 44);
    v25 = a1 + v24;
    v26 = *(a1 + v24);
    v27 = a2 + v24;
    if (v26 == 2)
    {
      if (*v27 != 2)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (*v27 == 2 || ((v26 ^ *v27) & 1) != 0)
    {
      return 0;
    }

    if (*(v25 + 16))
    {
      if ((*(v27 + 16) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }

    result = 0;
    if ((*(v27 + 16) & 1) == 0 && *(v25 + 8) == *(v27 + 8))
    {
LABEL_26:
      v28 = *(v19 + 48);
      v29 = a1 + v28;
      v30 = *(v12 + 48);
      sub_1D0FE441C(v29, v14, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
      sub_1D0FE441C(a2 + v28, &v14[v30], qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
      v31 = *(v5 + 48);
      if (v31(v14, 1, v4) == 1)
      {
        if (v31(&v14[v30], 1, v4) == 1)
        {
          sub_1D0FE4208(v14);
          return 1;
        }

        goto LABEL_36;
      }

      sub_1D0FE441C(v14, v10, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
      if (v31(&v14[v30], 1, v4) == 1)
      {
        sub_1D0FE4F68(v10, type metadata accessor for CloudSyncResponse);
LABEL_36:
        sub_1D0FE4F68(v14, sub_1D0FE4EE8);
        return 0;
      }

      sub_1D0FE4374(&v14[v30], v7);
      v32 = _s16HealthExperience17CloudSyncResponseV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D0FE4F68(v7, type metadata accessor for CloudSyncResponse);
      sub_1D0FE4F68(v10, type metadata accessor for CloudSyncResponse);
      sub_1D0FE4208(v14);
      return (v32 & 1) != 0;
    }
  }

  return result;
}

void sub_1D0FE40BC(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1D0F34FDC(a1, a2);
  }
}

unint64_t sub_1D0FE40C8()
{
  result = qword_1EC5FD5C8;
  if (!qword_1EC5FD5C8)
  {
    type metadata accessor for HealthKitProfileInformation();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC5FD5C8);
  }

  return result;
}

void sub_1D0FE4134(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D0FF5C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D0FE4188(uint64_t a1, uint64_t a2)
{
  sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0FE4208(uint64_t a1)
{
  sub_1D0FE4134(0, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D0FE4280(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D0F1ACD4(255, a3);
    v4 = sub_1D0FF52E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D0FE42D8()
{
  if (!qword_1EC5FD5D0)
  {
    sub_1D0F3FA28(255, &qword_1EE06E458);
    sub_1D0FE4134(255, &qword_1EE071260, MEMORY[0x1E6969530]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FD5D0);
    }
  }
}

uint64_t sub_1D0FE4374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0FE43D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F1ACD4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D0FE441C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D0FE4134(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D0FE4488()
{
  result = qword_1EE071218;
  if (!qword_1EE071218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071218);
  }

  return result;
}

unint64_t sub_1D0FE44DC()
{
  result = qword_1EE070D40;
  if (!qword_1EE070D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D40);
  }

  return result;
}

void sub_1D0FE4530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D0FE4598()
{
  result = qword_1EE0710F0;
  if (!qword_1EE0710F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0710F0);
  }

  return result;
}

uint64_t sub_1D0FE45EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D0FE4280(255, &qword_1EE06FAA8, &qword_1EE071070);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D0FE4648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthKitProfileInformation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D0FE46B0()
{
  result = qword_1EC5FD5D8;
  if (!qword_1EC5FD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD5D8);
  }

  return result;
}

uint64_t sub_1D0FE474C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ActivityMoveModeState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityMoveModeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1D0FE4864()
{
  sub_1D0F3FA28(319, &qword_1EE070E20);
  if (v0 <= 0x3F)
  {
    sub_1D0F3FA28(319, &qword_1EE070E10);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ProfileImageInformation();
      if (v2 <= 0x3F)
      {
        sub_1D0FE4280(319, &qword_1EE06FAA8, &qword_1EE071070);
        if (v3 <= 0x3F)
        {
          sub_1D0F3FA28(319, &qword_1EE06FEB0);
          if (v4 <= 0x3F)
          {
            sub_1D0FE4134(319, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D0FE49E4()
{
  result = qword_1EC5FD5E8;
  if (!qword_1EC5FD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD5E8);
  }

  return result;
}

unint64_t sub_1D0FE4A3C()
{
  result = qword_1EC5FD5F0;
  if (!qword_1EC5FD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD5F0);
  }

  return result;
}

unint64_t sub_1D0FE4A94()
{
  result = qword_1EE071208;
  if (!qword_1EE071208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071208);
  }

  return result;
}

unint64_t sub_1D0FE4AEC()
{
  result = qword_1EE071210;
  if (!qword_1EE071210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071210);
  }

  return result;
}

unint64_t sub_1D0FE4B44()
{
  result = qword_1EE0710F8;
  if (!qword_1EE0710F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0710F8);
  }

  return result;
}

unint64_t sub_1D0FE4B9C()
{
  result = qword_1EE071100;
  if (!qword_1EE071100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071100);
  }

  return result;
}

uint64_t sub_1D0FE4BF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1005F20 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1005F40 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1003B80 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL || (sub_1D0FF6278() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1003B60 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1005F60 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_1D0FE4EE8()
{
  if (!qword_1EC5FD5F8)
  {
    sub_1D0FE4134(255, qword_1EE0704F8, type metadata accessor for CloudSyncResponse);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FD5F8);
    }
  }
}

uint64_t sub_1D0FE4F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ObservableConvertible.then<A>(on:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = static LegacyObservable.create()(&v21);
  v15 = v14;
  v19 = v21;
  (*(a6 + 16))(&v21, a4, a6);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a1;
  v16[8] = v13;
  v16[9] = v15;
  v17 = a1;

  sub_1D0F1D070();

  *a7 = v19;
  return result;
}

uint64_t sub_1D0FE50E4(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v3);

  sub_1D0F1D070();
}

uint64_t ObservableConvertible.then<A>(on:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v11 = static LegacyObservable.create()(&v18);
  v13 = v12;
  v16 = v18;
  (*(a5 + 16))(&v18, a3, a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v11;
  v14[6] = v13;
  v14[7] = a1;
  v14[8] = a2;

  sub_1D0F1D070();

  *a6 = v16;
  return result;
}

uint64_t sub_1D0FE52A0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a2(v12);
  return (*(v9 + 8))(v12, a7);
}

uint64_t ObservableConvertible.joinWith<A>(on:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = *a2;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v11 = static LegacyObservable.create()(&v22);
  v13 = v12;
  v14 = v22;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v11;
  v15[6] = v13;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v10;
  v16[6] = a1;
  v16[7] = sub_1D0FE56BC;
  v16[8] = v15;
  v17 = objc_opt_self();
  v18 = a1;

  v19 = [v17 currentQueue];
  ObservableConvertible.afterChange(on:_:)(v19, sub_1D0FE58A4, v16, a3, a5);

  *a6 = v14;
  return result;
}

uint64_t sub_1D0FE552C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v16 - v13;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v16 - v13, a1, AssociatedTypeWitness);
  (*(*(a6 - 8) + 16))(&v14[*(TupleTypeMetadata2 + 48)], a2, a6);
  a3(v14);
  return (*(v12 + 8))(v14, TupleTypeMetadata2);
}

uint64_t sub_1D0FE56CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a4;
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v24 - v16;
  v26 = a2;
  (*(v15 + 16))(&v24 - v16, a1, AssociatedTypeWitness);
  v18 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a6;
  *(v19 + 3) = a7;
  v20 = v24;
  *(v19 + 4) = a8;
  *(v19 + 5) = v20;
  *(v19 + 6) = a5;
  (*(v15 + 32))(&v19[v18], v17, AssociatedTypeWitness);
  v21 = type metadata accessor for LegacyObservable();

  WitnessTable = swift_getWitnessTable();
  ObservableConvertible.afterChange(on:_:)(v25, sub_1D0FE6700, v19, v21, WitnessTable);
}

uint64_t ObservableConvertible.joinWith<A, B>(on:_:_:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v11 = *a2;
  v25 = *a1;
  v12 = objc_opt_self();
  v13 = [v12 currentQueue];
  ObservableConvertible.joinWith<A>(on:_:)(v13, &v25, a3, a4, a6, &v24);

  v23 = v11;
  v14 = [v12 currentQueue];
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for LegacyObservable();
  WitnessTable = swift_getWitnessTable();
  ObservableConvertible.joinWith<A>(on:_:)(v14, &v23, v15, a5, WitnessTable, &v25);

  v24 = v25;
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  swift_getTupleTypeMetadata2();
  v18 = type metadata accessor for LegacyObservable();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v20 = swift_getWitnessTable();
  ObservableConvertible.then<A>(on:_:)(sub_1D0FE5E88, v17, v18, TupleTypeMetadata3, v20, a7);
}

uint64_t sub_1D0FE5AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = a3;
  v9 = swift_getTupleTypeMetadata2();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v44 = *(TupleTypeMetadata3 + 48);
  v48 = *(TupleTypeMetadata3 + 64);
  v49 = v18;
  v20 = *(v10 + 16);
  v21 = v18;
  v42 = a1;
  v20(v18, a1, v9);
  v22 = TupleTypeMetadata2;
  v52 = *(TupleTypeMetadata2 + 48);
  v50 = *(v9 + 48);
  v23 = AssociatedTypeWitness;
  v46 = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = v51;
  (*(v24 + 32))(v51, v21, v23);
  v20(v16, a1, v9);
  v26 = *(v22 + 48);
  v27 = v22;
  v45 = *(v9 + 48);
  v28 = v43;
  v29 = *(v43 - 8);
  (*(v29 + 32))(v25 + v44, &v16[v26], v43);
  v20(v13, v42, v9);
  v30 = *(v27 + 48);
  v31 = *(v9 + 48);
  v32 = v47;
  v33 = *(v47 - 8);
  (*(v33 + 32))(v25 + v48, &v13[v31], v47);
  v34 = *(v29 + 8);
  v35 = v28;
  v34(&v13[v30], v28);
  v36 = *(v24 + 8);
  v37 = v46;
  v36(v13, v46);
  v38 = *(v33 + 8);
  v38(&v16[v45], v32);
  v36(v16, v37);
  v39 = v49;
  v38(&v49[v50], v32);
  return (v34)(&v39[v52], v35);
}

uint64_t ObservableConvertible.joinWith<A, B, C>(on:_:_:_:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v12 = *a2;
  v27 = *a3;
  v30[0] = *a1;
  v13 = objc_opt_self();
  v14 = [v13 currentQueue];
  ObservableConvertible.joinWith<A>(on:_:)(v14, v30, a4, a5, a9, &v33);

  v32 = v12;
  v15 = [v13 currentQueue];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for LegacyObservable();
  WitnessTable = swift_getWitnessTable();
  ObservableConvertible.joinWith<A>(on:_:)(v15, &v32, v16, a6, WitnessTable, v30);

  v31 = v27;
  v32 = v30[0];
  v18 = [v13 currentQueue];
  swift_getTupleTypeMetadata2();
  v19 = type metadata accessor for LegacyObservable();
  v20 = swift_getWitnessTable();
  ObservableConvertible.joinWith<A>(on:_:)(v18, &v31, v19, a7, v20, &v33);

  v32 = v33;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a9;
  swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for LegacyObservable();
  v30[0] = AssociatedTypeWitness;
  v30[1] = a5;
  v30[2] = a6;
  v30[3] = a7;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v24 = swift_getWitnessTable();
  ObservableConvertible.then<A>(on:_:)(sub_1D0FE66F0, v21, v22, TupleTypeMetadata, v24, a8);
}

uint64_t sub_1D0FE615C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v72 = a1;
  v77 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a2;
  v85 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = a3;
  v82 = a3;
  v12 = swift_getTupleTypeMetadata2();
  v13 = a4;
  v73 = a4;
  v14 = swift_getTupleTypeMetadata2();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v76 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v83 = &v64 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v64 - v23;
  v87 = AssociatedTypeWitness;
  v88 = v9;
  v89 = v11;
  v90 = v13;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v67 = TupleTypeMetadata[12];
  v68 = TupleTypeMetadata[16];
  v71 = TupleTypeMetadata[20];
  v26 = *(v15 + 16);
  v27 = v24;
  v28 = v24;
  v78 = v24;
  v29 = v72;
  v26(v27, v72, v14);
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v12;
  v80 = *(v12 + 48);
  v81 = v30;
  v79 = *(v14 + 48);
  v70 = AssociatedTypeWitness;
  v86 = *(AssociatedTypeWitness - 8);
  v32 = v77;
  (*(v86 + 32))(v77, v28, AssociatedTypeWitness);
  v69 = v22;
  v33 = v29;
  v26(v22, v29, v14);
  v34 = *(TupleTypeMetadata2 + 48);
  v65 = TupleTypeMetadata2;
  v35 = v31;
  v36 = *(v31 + 48);
  v74 = *(v14 + 48);
  v75 = v36;
  v84 = *(v85 - 8);
  v37 = v32;
  (*(v84 + 32))(&v32[v67], &v22[v34]);
  v38 = v83;
  v26(v83, v33, v14);
  v67 = *(TupleTypeMetadata2 + 48);
  v39 = *(v35 + 48);
  v66 = *(v14 + 48);
  v40 = *(v82 - 8);
  v41 = v37;
  v42 = &v38[v39];
  v43 = v82;
  (*(v40 + 32))(&v37[v68], v42);
  v44 = v76;
  v26(v76, v33, v14);
  v45 = *(v65 + 48);
  v46 = *(v35 + 48);
  v47 = *(v14 + 48);
  v48 = *(v73 - 8);
  v49 = &v41[v71];
  v50 = v73;
  (*(v48 + 32))(v49, &v44[v47]);
  v77 = *(v40 + 8);
  (v77)(&v44[v46], v43);
  v51 = v85;
  v52 = v84 + 8;
  v53 = *(v84 + 8);
  v53(&v44[v45], v85);
  v54 = v53;
  v72 = v53;
  v84 = v52;
  v55 = *(v86 + 8);
  v86 += 8;
  v56 = v70;
  v55(v44, v70);
  v57 = *(v48 + 8);
  v58 = v83;
  v57(&v83[v66], v50);
  v54(&v58[v67], v51);
  v55(v58, v56);
  v59 = v69;
  v57(&v69[v74], v50);
  v60 = v82;
  v61 = v77;
  (v77)(&v59[v75], v82);
  v55(v59, v56);
  v62 = v78;
  v57(&v78[v79], v50);
  (v61)(&v62[v80], v60);
  return (v72)(&v62[v81], v85);
}

id sub_1D0FE67A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v5 setDateStyle_];
  result = [v5 setTimeStyle_];
  *a3 = v5;
  return result;
}

id sub_1D0FE6818()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setDoesRelativeDateFormatting_];
  qword_1EC607FC0 = v0;
  return result;
}

id sub_1D0FE687C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  result = [v0 setDoesRelativeDateFormatting_];
  qword_1EC607FC8 = v0;
  return result;
}

Swift::String __swiftcall Displayable.shortStartDateString()()
{
  v2 = sub_1D0FE69D8(v0, v1, &qword_1EC5FBE10, &qword_1EC607FB0, MEMORY[0x1E6968120], sub_1D0FE6788);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall Displayable.shortEndDateString()()
{
  v2 = sub_1D0FE69D8(v0, v1, &qword_1EC5FBE10, &qword_1EC607FB0, MEMORY[0x1E6968110], sub_1D0FE6788);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall Displayable.longStartDateString()()
{
  v2 = sub_1D0FE69D8(v0, v1, &qword_1EC5FBE18, &qword_1EC607FB8, MEMORY[0x1E6968120], sub_1D0FE6798);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall Displayable.longEndDateString()()
{
  v2 = sub_1D0FE69D8(v0, v1, &qword_1EC5FBE18, &qword_1EC607FB8, MEMORY[0x1E6968110], sub_1D0FE6798);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1D0FE69D8(uint64_t a1, uint64_t a2, void *a3, void **a4, void (*a5)(uint64_t), uint64_t a6)
{
  v23[1] = a6;
  v24 = a1;
  v25 = a5;
  v9 = sub_1D0FF4348();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D0FF3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  v17 = *a4;
  v18 = (*(a2 + 8))(v24, a2);
  v25(v18);
  (*(v14 + 8))(v16, v13);
  v19 = sub_1D0FF42E8();
  (*(v10 + 8))(v12, v9);
  v20 = [v17 stringFromDate_];

  v21 = sub_1D0FF5428();
  return v21;
}

Swift::String __swiftcall Displayable.relativeStartDateString()()
{
  v2 = sub_1D0FE6C20(v0, v1, MEMORY[0x1E6968120]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall Displayable.relativeEndDateString()()
{
  v2 = sub_1D0FE6C20(v0, v1, MEMORY[0x1E6968110]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1D0FE6C20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v31 = a3;
  v29 = a1;
  v30 = sub_1D0FF3EA8();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D0FF4348();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  sub_1D0FF4338();
  sub_1D0FF42D8();
  v14 = *(v8 + 8);
  v14(v11, v7);
  v27 = *(a2 + 8);
  v28 = a2;
  v15 = v27(v29, a2);
  v31(v15);
  v16 = *(v4 + 8);
  v16(v6, v30);
  v17 = sub_1D0FF42F8();
  v14(v11, v7);
  v14(v13, v7);
  if (v17)
  {
    if (qword_1EC5FBE20 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC607FC0;
    v19 = v27(v29, v28);
    v31(v19);
    v16(v6, v30);
    v20 = sub_1D0FF42E8();
    v14(v13, v7);
  }

  if (qword_1EC5FBE28 != -1)
  {
    swift_once();
  }

  v21 = qword_1EC607FC8;
  v22 = v27(v29, v28);
  v31(v22);
  v16(v6, v30);
  v23 = sub_1D0FF42E8();
  v14(v13, v7);
  v24 = [v21 stringFromDate_];

  v25 = sub_1D0FF5428();
  return v25;
}

uint64_t sub_1D0FE7014(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1D0FF5D08();
    sub_1D0F1ACD4(0, &qword_1EE070B50);
    sub_1D0FE43D8(&qword_1EE070B40, &qword_1EE070B50);
    sub_1D0FF5838();
    v2 = v43;
    v4 = v44;
    v5 = v45;
    v6 = v46;
    v7 = v47;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v40 = v11;
  v41 = v4;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (!sub_1D0FF5D38() || (sub_1D0F1ACD4(0, &qword_1EE070B50), swift_dynamicCast(), v13 = v48, v14 = v6, v15 = v7, !v48))
  {
LABEL_38:
    sub_1D0F36568();
    return a1;
  }

  while (1)
  {
    v42 = v15;
    v48 = a1;
    v18 = objc_opt_self();

    v19 = [v18 sampleTypeChangeWithSampleType:v13 dateInterval:0 hasUnfrozenSeries:0];
    if (!v19)
    {
      v12 = sub_1D0FEB34C(v13);

      v6 = v14;
      v7 = v15;
      if (v2 < 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v20 = v19;
    v21 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (a1 < 0)
      {
        v22 = a1;
      }

      else
      {
        v22 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = sub_1D0FF5D18();
      if (__OFADD__(v23, 1))
      {
        goto LABEL_41;
      }

      v21 = sub_1D0FA29F4(v22, v23 + 1);
      v48 = v21;
    }

    v24 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_1D0FA2670(v13);
    v28 = v21[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_40;
    }

    v31 = v26;
    if (v21[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_1D0FA486C();
        if ((v31 & 1) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_1D0FA2C30(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_1D0FA2670(v13);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_43;
      }

      v27 = v32;
      if ((v31 & 1) == 0)
      {
LABEL_34:
        v21[(v27 >> 6) + 8] |= 1 << v27;
        *(v21[6] + 8 * v27) = v13;
        *(v21[7] + 8 * v27) = v20;
        v36 = v21[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_42;
        }

        v21[2] = v38;

        goto LABEL_36;
      }
    }

    v34 = v21[7];
    v35 = *(v34 + 8 * v27);
    *(v34 + 8 * v27) = v20;

LABEL_36:
    v6 = v14;
    a1 = v21;
    v2 = v24;
    v4 = v41;
    v7 = v42;
    v11 = v40;
    if (v2 < 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v16 = v6;
    v17 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_17:
    v15 = (v17 - 1) & v17;
    v13 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v13)
    {
      goto LABEL_38;
    }
  }

  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_38;
    }

    v17 = *(v4 + 8 * v14);
    ++v16;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1D0F1ACD4(0, &qword_1EE070B50);
  result = sub_1D0FF62B8();
  __break(1u);
  return result;
}

void sub_1D0FE7458(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [v1 _modificationDateForCharacteristicWithType_error_];
  v3 = v7[0];
  if (v2)
  {
    v4 = v2;
    sub_1D0FF4328();
    v5 = v3;
  }

  else
  {
    v6 = v7[0];
    sub_1D0FF4198();

    swift_willThrow();
  }
}

unint64_t sub_1D0FE7524()
{
  result = sub_1D0FE7544();
  qword_1EE06EC58 = result;
  return result;
}

unint64_t sub_1D0FE7544()
{
  sub_1D0F1ACD4(0, qword_1EE06E3A0);
  v0 = MEMORY[0x1D3880FA0](*MEMORY[0x1E696BDF0]);
  sub_1D0FE9408(0, &qword_1EE06E0C0, sub_1D0FEB7A0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D0FFD030;
  v2 = *MEMORY[0x1E696B6C0];
  *(inited + 32) = *MEMORY[0x1E696B6C0];
  sub_1D0F1E9E0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D0FF9980;
  *(v3 + 32) = v0;
  v4 = *MEMORY[0x1E696B6D0];
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D0FF9980;
  *(v5 + 32) = v0;
  *(inited + 56) = v5;
  v6 = v2;
  v7 = v0;
  v8 = v4;
  v9 = sub_1D0F53D2C(inited);
  swift_setDeallocating();
  sub_1D0FEB7A0();
  swift_arrayDestroy();
  return v9;
}

uint64_t static CharacteristicChangePublisher.defaultMapping.getter()
{
  if (qword_1EE06EC50 != -1)
  {
    swift_once();
  }
}

uint64_t CharacteristicChangePublisher.CacheData.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D0FF4348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CharacteristicChangePublisher.CacheData.init(lastUpdatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D0FF4348();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D0FE77FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616470557473616CLL && a2 == 0xEF65746144646574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D0FF6278();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D0FE788C(uint64_t a1)
{
  v2 = sub_1D0FE7A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FE78C8(uint64_t a1)
{
  v2 = sub_1D0FE7A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CharacteristicChangePublisher.CacheData.encode(to:)(void *a1)
{
  sub_1D0FE7D8C(0, &qword_1EC5FD600, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FE7A8C();
  sub_1D0FF6438();
  sub_1D0FF4348();
  sub_1D0FE7E3C(&qword_1EC5FC488, MEMORY[0x1E6969530]);
  sub_1D0FF6208();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D0FE7A8C()
{
  result = qword_1EC5FD608;
  if (!qword_1EC5FD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD608);
  }

  return result;
}

uint64_t CharacteristicChangePublisher.CacheData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1D0FF4348();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE7D8C(0, &qword_1EC5FD610, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for CharacteristicChangePublisher.CacheData();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FE7A8C();
  sub_1D0FF6428();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_1D0FE7E3C(&qword_1EC5FC4C8, MEMORY[0x1E6969530]);
    sub_1D0FF6148();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_1D0FE7E84(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_1D0FE7D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0FE7A8C();
    v7 = a3(a1, &type metadata for CharacteristicChangePublisher.CacheData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for CharacteristicChangePublisher.CacheData()
{
  result = qword_1EE06EC38;
  if (!qword_1EE06EC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0FE7E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0FE7E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacteristicChangePublisher.CacheData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0FE7F00(void *a1)
{
  sub_1D0FE7D8C(0, &qword_1EC5FD600, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FE7A8C();
  sub_1D0FF6438();
  sub_1D0FF4348();
  sub_1D0FE7E3C(&qword_1EC5FC488, MEMORY[0x1E6969530]);
  sub_1D0FF6208();
  return (*(v4 + 8))(v6, v3);
}

void sub_1D0FE8090(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1D0FE8128(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1D0FE8128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacteristicChangePublisher.CacheData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CharacteristicChangePublisher.__allocating_init(characteristicToAffectedSampleTypes:cacheData:healthStore:context:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v46 = a6;
  v57 = a5;
  v54 = a4;
  v55 = a1;
  v60 = a3;
  v7 = MEMORY[0x1E69E6720];
  sub_1D0FE9408(0, &unk_1EE06E380, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v43 - v9;
  v50 = sub_1D0FF5B28();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE925C();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE935C();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D0FF4A38();
  v15 = *(v44 - 1);
  MEMORY[0x1EEE9AC00](v44);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE9408(0, &qword_1EE06EC30, type metadata accessor for CharacteristicChangePublisher.CacheData, v7);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  v21 = type metadata accessor for CharacteristicChangePublisher.CacheData();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v61 = a2;
  sub_1D0FEB270(a2, v20, &qword_1EE06EC30, type metadata accessor for CharacteristicChangePublisher.CacheData);
  v26 = *(v22 + 48);
  if (v26(v20, 1, v21) == 1)
  {
    sub_1D0FF4338();
    if (v26(v20, 1, v21) != 1)
    {
      sub_1D0FEB200(v20, &qword_1EE06EC30, type metadata accessor for CharacteristicChangePublisher.CacheData);
    }
  }

  else
  {
    sub_1D0FE7E84(v20, v24);
  }

  sub_1D0FE946C();
  v27 = swift_allocObject();
  *(v27 + ((*(*v27 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D0FE7E84(v24, v27 + *(*v27 + *MEMORY[0x1E69E6B68] + 16));
  v45 = v25;
  *(v25 + 24) = v27;
  sub_1D0FF4A58();
  (*(v15 + 104))(v17, *MEMORY[0x1E69A38D0], v44);
  v28 = v46;
  v44 = v28;
  *&v62[0] = sub_1D0FF4A48();
  v29 = v47;
  sub_1D0FF5B18();
  v63 = v28;
  v30 = sub_1D0FF5B08();
  v31 = v49;
  (*(*(v30 - 8) + 56))(v49, 1, 1, v30);
  sub_1D0F1ACD4(0, &qword_1EE071270);
  sub_1D0FE7E3C(qword_1EE06FAD8, MEMORY[0x1E69A38E0]);
  sub_1D0FE43D8(&qword_1EE06E378, &qword_1EE071270);
  v32 = v51;
  sub_1D0FF5138();
  sub_1D0FEB200(v31, &unk_1EE06E380, MEMORY[0x1E69E8050]);
  (*(v48 + 8))(v29, v50);
  v33 = v60;
  sub_1D0F39694(v60, v62);
  v34 = swift_allocObject();
  sub_1D0F25C68(v62, (v34 + 2));
  v35 = v57;
  v34[7] = v54;
  v34[8] = v35;
  v36 = v55;
  v34[9] = v27;
  v34[10] = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1D0FE94D4;
  *(v37 + 24) = v34;
  sub_1D0FF4678();
  sub_1D0FE7E3C(&qword_1EE06E678, sub_1D0FE925C);

  v38 = v56;
  v39 = v53;
  sub_1D0FF50A8();

  (*(v52 + 8))(v32, v39);
  sub_1D0FE7E3C(qword_1EE06EA90, sub_1D0FE935C);
  v40 = v59;
  v41 = sub_1D0FF5098();

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  sub_1D0FEB200(v61, &qword_1EE06EC30, type metadata accessor for CharacteristicChangePublisher.CacheData);
  (*(v58 + 8))(v38, v40);
  result = v45;
  *(v45 + 16) = v41;
  return result;
}

uint64_t CharacteristicChangePublisher.init(characteristicToAffectedSampleTypes:cacheData:healthStore:context:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v47 = a6;
  v58 = a5;
  v55 = a4;
  v56 = a1;
  v61 = a3;
  v7 = MEMORY[0x1E69E6720];
  sub_1D0FE9408(0, &unk_1EE06E380, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v45 - v9;
  v51 = sub_1D0FF5B28();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE925C();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE935C();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D0FF4A38();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FE9408(0, &qword_1EE06EC30, type metadata accessor for CharacteristicChangePublisher.CacheData, v7);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v45 - v20;
  v22 = type metadata accessor for CharacteristicChangePublisher.CacheData();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  sub_1D0FEB270(a2, v21, &qword_1EE06EC30, type metadata accessor for CharacteristicChangePublisher.CacheData);
  v26 = *(v23 + 48);
  if (v26(v21, 1, v22) == 1)
  {
    sub_1D0FF4338();
    if (v26(v21, 1, v22) != 1)
    {
      sub_1D0FEB200(v21, &qword_1EE06EC30, type metadata accessor for CharacteristicChangePublisher.CacheData);
    }
  }

  else
  {
    sub_1D0FE7E84(v21, v25);
  }

  sub_1D0FE946C();
  v27 = swift_allocObject();
  *(v27 + ((*(*v27 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D0FE7E84(v25, v27 + *(*v27 + *MEMORY[0x1E69E6B68] + 16));
  v28 = v63;
  *(v63 + 24) = v27;
  sub_1D0FF4A58();
  (*(v16 + 104))(v18, *MEMORY[0x1E69A38D0], v15);
  v29 = v47;
  v46 = v29;
  *&v64[0] = sub_1D0FF4A48();
  v30 = v48;
  sub_1D0FF5B18();
  v65 = v29;
  v31 = sub_1D0FF5B08();
  v32 = v50;
  (*(*(v31 - 8) + 56))(v50, 1, 1, v31);
  sub_1D0F1ACD4(0, &qword_1EE071270);
  sub_1D0FE7E3C(qword_1EE06FAD8, MEMORY[0x1E69A38E0]);
  sub_1D0FE43D8(&qword_1EE06E378, &qword_1EE071270);
  v33 = v52;
  sub_1D0FF5138();
  sub_1D0FEB200(v32, &unk_1EE06E380, MEMORY[0x1E69E8050]);
  (*(v49 + 8))(v30, v51);
  v34 = *(v28 + 24);
  v35 = v61;
  sub_1D0F39694(v61, v64);
  v36 = swift_allocObject();
  sub_1D0F25C68(v64, (v36 + 2));
  v37 = v58;
  v36[7] = v55;
  v36[8] = v37;
  v38 = v56;
  v36[9] = v34;
  v36[10] = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1D0FEB840;
  *(v39 + 24) = v36;
  sub_1D0FF4678();
  sub_1D0FE7E3C(&qword_1EE06E678, sub_1D0FE925C);

  v40 = v57;
  v41 = v54;
  sub_1D0FF50A8();

  (*(v53 + 8))(v33, v41);
  sub_1D0FE7E3C(qword_1EE06EA90, sub_1D0FE935C);
  v42 = v60;
  v43 = sub_1D0FF5098();

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  sub_1D0FEB200(v62, &qword_1EE06EC30, type metadata accessor for CharacteristicChangePublisher.CacheData);
  (*(v59 + 8))(v40, v42);
  *(v28 + 16) = v43;
  return v28;
}

void sub_1D0FE925C()
{
  if (!qword_1EE06E670)
  {
    sub_1D0FF4A58();
    sub_1D0F1ACD4(255, &qword_1EE071270);
    sub_1D0FE7E3C(qword_1EE06FAD8, MEMORY[0x1E69A38E0]);
    sub_1D0FE43D8(&qword_1EE06E378, &qword_1EE071270);
    v0 = sub_1D0FF4D58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E670);
    }
  }
}

void sub_1D0FE935C()
{
  if (!qword_1EE06EA88)
  {
    sub_1D0FE925C();
    sub_1D0FF4678();
    sub_1D0FE7E3C(&qword_1EE06E678, sub_1D0FE925C);
    v0 = sub_1D0FF4CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06EA88);
    }
  }
}

void sub_1D0FE9408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D0FE946C()
{
  if (!qword_1EE06E2B0)
  {
    type metadata accessor for CharacteristicChangePublisher.CacheData();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D0FF5E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E2B0);
    }
  }
}

uint64_t sub_1D0FE94D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v226 = a5;
  v204 = a4;
  v221 = a2;
  v219 = a1;
  v8 = type metadata accessor for CharacteristicChangePublisher.CacheData();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v201 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D0FF4348();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v195 = &v193 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v200 = &v193 - v17;
  v235 = sub_1D0FF4C18();
  v18 = *(v235 - 8);
  v19 = MEMORY[0x1EEE9AC00](v235);
  v21 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v203 = &v193 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v205 = &v193 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v193 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v193 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v223 = &v193 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v224 = &v193 - v34;
  sub_1D0FE9408(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v207 = &v193 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v194 = &v193 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v197 = &v193 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v216 = &v193 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v218 = &v193 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v236 = &v193 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v11[7];
  v212 = &v193 - v49;
  v230 = v48;
  v231 = v11 + 7;
  v48();
  v210 = a6;
  v202 = v14;
  v199 = v21;
  v208 = v28;
  v198 = v31;
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
    goto LABEL_2;
  }

LABEL_62:
  if (!sub_1D0FF5D18())
  {
LABEL_2:
    v211 = MEMORY[0x1E69E7CD0];
    goto LABEL_3;
  }

  sub_1D0F5C294(MEMORY[0x1E69E7CC0]);
  v211 = v192;
LABEL_3:
  v50 = v226 + 64;
  v51 = 1 << *(v226 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v226 + 64);
  v54 = (v51 + 63) >> 6;
  v234 = (v18 + 8);
  v220 = (v11 + 6);
  v209 = (v11 + 4);
  v206 = (v11 + 1);
  v196 = (v11 + 2);

  v55 = 0;
  v233 = 0;
  *&v56 = 136446723;
  v217 = v56;
  v232 = a3;
  v225 = v10;
  v57 = v223;
  v214 = v54;
  v215 = v50;
LABEL_6:
  v58 = v55;
  while (v53)
  {
    v55 = v58;
LABEL_14:
    v59 = (v55 << 9) | (8 * __clz(__rbit64(v53)));
    v60 = *(*(v226 + 48) + v59);
    v61 = *(*(v226 + 56) + v59);
    sub_1D0F1ACD4(0, &qword_1EC5FD630);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = v60;

    v64 = [ObjCClassFromMetadata characteristicTypeForIdentifier_];
    if (!v64)
    {

      v139 = v198;
      sub_1D0FF4B88();
      v140 = v63;

      v141 = sub_1D0FF4C08();
      v142 = sub_1D0FF5968();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = a3;
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v238 = v145;
        *v144 = 136446722;
        v146 = sub_1D0FF6468();
        v148 = sub_1D0F1AE0C(v146, v147, &v238);
        v149 = v234;
        v150 = v148;

        *(v144 + 4) = v150;
        *(v144 + 12) = 2082;
        *(v144 + 14) = sub_1D0F1AE0C(v221, v143, &v238);
        *(v144 + 22) = 2082;
        v151 = sub_1D0FF5428();
        v153 = sub_1D0F1AE0C(v151, v152, &v238);

        *(v144 + 24) = v153;
        _os_log_impl(&dword_1D0F17000, v141, v142, "[%{public}s] %{public}s Unable to make characteristic type for identifier %{public}s", v144, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v145, -1, -1);
        MEMORY[0x1D3882680](v144, -1, -1);

        (*v149)(v139, v235);
      }

      else
      {

        (*v234)(v139, v235);
      }

      goto LABEL_41;
    }

    v65 = v64;
    v228 = v61;
    v229 = v63;
    (v230)(v236, 1, 1, v10);
    v66 = v224;
    sub_1D0FF4B88();

    v67 = v65;
    v68 = sub_1D0FF4C08();
    v69 = a3;
    v70 = sub_1D0FF5938();

    v71 = os_log_type_enabled(v68, v70);
    v222 = v65;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v238 = v227;
      *v72 = v217;
      v74 = sub_1D0FF6468();
      v213 = v67;
      v76 = sub_1D0F1AE0C(v74, v75, &v238);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2082;
      *(v72 + 14) = sub_1D0F1AE0C(v221, v69, &v238);
      *(v72 + 22) = 2113;
      v77 = v213;
      *(v72 + 24) = v213;
      *v73 = v65;
      v78 = v77;
      v79 = v77;
      _os_log_impl(&dword_1D0F17000, v68, v70, "[%{public}s] %{public}s Getting modification for %{private}@", v72, 0x20u);
      sub_1D0F3F9B4(v73);
      v80 = v234;
      MEMORY[0x1D3882680](v73, -1, -1);
      v81 = v227;
      swift_arrayDestroy();
      v10 = v225;
      MEMORY[0x1D3882680](v81, -1, -1);
      v82 = v72;
      v57 = v223;
      MEMORY[0x1D3882680](v82, -1, -1);

      v227 = *v80;
      (v227)(v224, v235);
    }

    else
    {

      v227 = *v234;
      (v227)(v66, v235);
      v79 = v67;
    }

    v83 = v219[3];
    v84 = v219[4];
    __swift_project_boxed_opaque_existential_1(v219, v83);
    v85 = v218;
    v86 = v233;
    (*(v84 + 8))(v79, v83, v84);
    if (v86)
    {

      v154 = v199;
      sub_1D0FF4B88();
      v155 = v232;

      v156 = v79;
      v157 = v86;
      v158 = sub_1D0FF4C08();
      v159 = v86;
      v160 = sub_1D0FF5958();

      if (os_log_type_enabled(v158, v160))
      {
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v238 = v233;
        *v161 = 136446979;
        v163 = sub_1D0FF6468();
        v165 = sub_1D0F1AE0C(v163, v164, &v238);

        *(v161 + 4) = v165;
        *(v161 + 12) = 2082;
        *(v161 + 14) = sub_1D0F1AE0C(v221, v155, &v238);
        *(v161 + 22) = 2113;
        *(v161 + 24) = v156;
        *v162 = v222;
        *(v161 + 32) = 2082;
        v237 = v86;
        v166 = v156;
        v167 = v86;
        sub_1D0F1E940();
        v168 = sub_1D0FF5448();
        v170 = sub_1D0F1AE0C(v168, v169, &v238);

        *(v161 + 34) = v170;
        _os_log_impl(&dword_1D0F17000, v158, v160, "[%{public}s] %{public}s Error when retrieving modification date for %{private}@: %{public}s", v161, 0x2Au);
        sub_1D0F3F9B4(v162);
        MEMORY[0x1D3882680](v162, -1, -1);
        v171 = v233;
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v171, -1, -1);
        MEMORY[0x1D3882680](v161, -1, -1);

        v172 = v199;
      }

      else
      {

        v172 = v154;
      }

      (v227)(v172, v235);
      v189 = MEMORY[0x1E6969530];
      sub_1D0FEB200(v236, &qword_1EE071260, MEMORY[0x1E6969530]);
      v136 = v212;
      v135 = v189;
      goto LABEL_59;
    }

    v233 = 0;
    v53 &= v53 - 1;
    v87 = MEMORY[0x1E6969530];
    v88 = v236;
    sub_1D0FEB200(v236, &qword_1EE071260, MEMORY[0x1E6969530]);
    (v230)(v85, 0, 1, v10);
    sub_1D0FB015C(v85, v88);
    v89 = v88;
    v90 = v216;
    sub_1D0FEB270(v89, v216, &qword_1EE071260, v87);
    v91 = *v220;
    v92 = (*v220)(v90, 1, v10);
    a3 = v232;
    if (v92 != 1)
    {
      v227 = *v209;
      v227(v200, v90, v10);
      v102 = v212;
      v103 = v197;
      sub_1D0FEB270(v212, v197, &qword_1EE071260, MEMORY[0x1E6969530]);
      v104 = v91(v103, 1, v10);
      v54 = v214;
      if (v104 == 1)
      {
        v105 = MEMORY[0x1E6969530];
        sub_1D0FEB200(v102, &qword_1EE071260, MEMORY[0x1E6969530]);
        sub_1D0FEB200(v103, &qword_1EE071260, v105);
        v106 = v200;
        (*v196)(v102, v200, v10);
        (v230)(v102, 0, 1, v10);
      }

      else
      {
        v107 = v195;
        v227(v195, v103, v10);
        sub_1D0FE7E3C(&qword_1EE06F878, MEMORY[0x1E6969530]);
        v108 = v200;
        v109 = sub_1D0FF53B8();
        sub_1D0FEB200(v212, &qword_1EE071260, MEMORY[0x1E6969530]);
        if (v109)
        {
          (*v206)(v107, v10);
          v110 = v194;
          (*v196)(v194, v108, v10);
        }

        else
        {
          v110 = v194;
          v227(v194, v107, v10);
        }

        v106 = v108;
        (v230)(v110, 0, 1, v10);
        sub_1D0FB015C(v110, v212);
      }

      v111 = v204;
      v112 = *(*v204 + *MEMORY[0x1E69E6B68] + 16);
      v18 = (*(*v204 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v204 + v18));
      sub_1D0FE8128(v111 + v112, v201);
      os_unfair_lock_unlock((v111 + v18));
      if (sub_1D0FF42F8())
      {
        v11 = v228;
        v211 = sub_1D0FEB638(v228, v211);
      }

      else
      {
        v11 = v228;
      }

      v50 = v215;

      sub_1D0FEB2F0(v201);
      (*v206)(v106, v10);
      sub_1D0FEB200(v236, &qword_1EE071260, MEMORY[0x1E6969530]);
      v57 = v223;
      goto LABEL_6;
    }

    sub_1D0FEB200(v90, &qword_1EE071260, MEMORY[0x1E6969530]);
    sub_1D0FF4B88();

    v93 = v79;
    v18 = v57;
    v94 = sub_1D0FF4C08();
    v11 = v57;
    v95 = sub_1D0FF5978();

    if (os_log_type_enabled(v94, v95))
    {
      v18 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v238 = v96;
      *v18 = v217;
      v97 = sub_1D0FF6468();
      v99 = sub_1D0F1AE0C(v97, v98, &v238);

      *(v18 + 4) = v99;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1D0F1AE0C(v221, v232, &v238);
      *(v18 + 22) = 2113;
      *(v18 + 24) = v93;
      *v11 = v222;
      v100 = v93;
      _os_log_impl(&dword_1D0F17000, v94, v95, "[%{public}s] %{public}s No modification date found for %{private}@", v18, 0x20u);
      sub_1D0F3F9B4(v11);
      MEMORY[0x1D3882680](v11, -1, -1);
      swift_arrayDestroy();
      v101 = v96;
      a3 = v232;
      MEMORY[0x1D3882680](v101, -1, -1);
      MEMORY[0x1D3882680](v18, -1, -1);

      v57 = v223;
      (v227)(v223, v235);
      sub_1D0FEB200(v236, &qword_1EE071260, MEMORY[0x1E6969530]);
      v58 = v55;
      v10 = v225;
    }

    else
    {

      (v227)(v11, v235);
      sub_1D0FEB200(v236, &qword_1EE071260, MEMORY[0x1E6969530]);
      v58 = v55;
      v10 = v225;
      v57 = v11;
    }

    v50 = v215;
    v54 = v214;
  }

  while (1)
  {
    v55 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v55 >= v54)
    {
      break;
    }

    v53 = *(v50 + 8 * v55);
    ++v58;
    if (v53)
    {
      goto LABEL_14;
    }
  }

  v113 = v211;
  v114 = v211 & 0xC000000000000001;
  if ((v211 & 0xC000000000000001) == 0)
  {
    if (*(v211 + 16))
    {
      goto LABEL_34;
    }

LABEL_38:

    v126 = v203;
    sub_1D0FF4B88();

    v127 = sub_1D0FF4C08();
    v128 = sub_1D0FF5978();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = a3;
      v131 = swift_slowAlloc();
      v238 = v131;
      *v129 = 136446466;
      v132 = sub_1D0FF6468();
      v134 = sub_1D0F1AE0C(v132, v133, &v238);

      *(v129 + 4) = v134;
      *(v129 + 12) = 2082;
      *(v129 + 14) = sub_1D0F1AE0C(v221, v130, &v238);
      _os_log_impl(&dword_1D0F17000, v127, v128, "[%{public}s] %{public}s Characteristic change detected but no relevant sample types affected", v129, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v131, -1, -1);
      MEMORY[0x1D3882680](v129, -1, -1);
    }

    (*v234)(v126, v235);
LABEL_41:
    v135 = MEMORY[0x1E6969530];
    v136 = v212;
LABEL_59:
    sub_1D0FEB200(v136, &qword_1EE071260, v135);
    v188 = 1;
    v138 = v210;
    goto LABEL_60;
  }

  if (!sub_1D0FF5D18())
  {
    goto LABEL_38;
  }

LABEL_34:
  v115 = v233;
  sub_1D0FE7014(MEMORY[0x1E69E7CC8], v113);
  v236 = v115;
  v116 = v208;
  sub_1D0FF4B88();

  v117 = sub_1D0FF4C08();
  v118 = sub_1D0FF5978();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = a3;
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v238 = v121;
    *v120 = 136446722;
    v122 = sub_1D0FF6468();
    v124 = sub_1D0F1AE0C(v122, v123, &v238);

    *(v120 + 4) = v124;
    *(v120 + 12) = 2082;
    *(v120 + 14) = sub_1D0F1AE0C(v221, v119, &v238);
    *(v120 + 22) = 2050;
    if (v114)
    {
      v125 = sub_1D0FF5D18();
    }

    else
    {
      v125 = *(v211 + 16);
    }

    *(v120 + 24) = v125;

    _os_log_impl(&dword_1D0F17000, v117, v118, "[%{public}s] %{public}s Emitting changes for %{public}ld sample type(s)", v120, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v121, -1, -1);
    MEMORY[0x1D3882680](v120, -1, -1);

    v137 = *v234;
    (*v234)(v116, v235);
    v138 = v210;
    a3 = v232;
    v10 = v225;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v137 = *v234;
    (*v234)(v116, v235);
    v138 = v210;
  }

  v173 = v207;
  sub_1D0FEB270(v212, v207, &qword_1EE071260, MEMORY[0x1E6969530]);
  if ((*v220)(v173, 1, v10) == 1)
  {
    sub_1D0FEB200(v173, &qword_1EE071260, MEMORY[0x1E6969530]);
    v174 = v205;
    sub_1D0FF4B88();

    v175 = sub_1D0FF4C08();
    v176 = sub_1D0FF5968();

    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v238 = v178;
      *v177 = 136446466;
      v179 = sub_1D0FF6468();
      v181 = sub_1D0F1AE0C(v179, v180, &v238);

      *(v177 + 4) = v181;
      *(v177 + 12) = 2082;
      *(v177 + 14) = sub_1D0F1AE0C(v221, a3, &v238);
      _os_log_impl(&dword_1D0F17000, v175, v176, "[%{public}s] %{public}s Had changes but somehow no updated date", v177, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v178, -1, -1);
      MEMORY[0x1D3882680](v177, -1, -1);

      v182 = v205;
    }

    else
    {

      v182 = v174;
    }

    v137(v182, v235);
  }

  else
  {
    v183 = v202;
    v184 = (*v209)(v202, v173, v10);
    MEMORY[0x1EEE9AC00](v184);
    v185 = v204;
    *(&v193 - 2) = v183;
    v186 = *(*v185 + *MEMORY[0x1E69E6B68] + 16);
    v187 = (*(*v185 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v185 + v187));
    sub_1D0FEB72C(v185 + v186);
    os_unfair_lock_unlock((v185 + v187));
    (*v206)(v183, v10);
  }

  sub_1D0FF4648();
  sub_1D0FEB200(v212, &qword_1EE071260, MEMORY[0x1E6969530]);
  v188 = 0;
LABEL_60:
  v190 = sub_1D0FF4678();
  return (*(*(v190 - 8) + 56))(v138, v188, 1, v190);
}

uint64_t objectdestroyTm_2()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D0FEAEF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  type metadata accessor for CharacteristicChangePublisher();
  return sub_1D0FE94D8(v1 + 2, v3, v4, v5, v6, a1);
}

uint64_t CharacteristicChangePublisher.deinit()
{

  return v0;
}

uint64_t CharacteristicChangePublisher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D0FEB07C()
{
  result = sub_1D0FF4348();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D0FEB0FC()
{
  result = qword_1EC5FD618;
  if (!qword_1EC5FD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD618);
  }

  return result;
}

unint64_t sub_1D0FEB154()
{
  result = qword_1EC5FD620;
  if (!qword_1EC5FD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD620);
  }

  return result;
}

unint64_t sub_1D0FEB1AC()
{
  result = qword_1EC5FD628;
  if (!qword_1EC5FD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD628);
  }

  return result;
}

uint64_t sub_1D0FEB200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D0FE9408(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D0FEB270(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D0FE9408(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D0FEB2F0(uint64_t a1)
{
  v2 = type metadata accessor for CharacteristicChangePublisher.CacheData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D0FEB34C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1D0FA2670(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1D0F903CC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1D0FA486C();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1D0FF5F78();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1D0FF5D18();
  v8 = sub_1D0FA29F4(v4, v7);

  v9 = sub_1D0FA2670(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1D0F903CC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1D0FEB498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D0F1B60C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D0FA55EC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1D0FF43A8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1D0FF4348();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1D0F90708(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1D0FF4348();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

id sub_1D0FEB638(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D3881410](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1D0F68380(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_1D0FF5D18();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

uint64_t sub_1D0FEB72C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1D0FEB2F0(a1);
  v4 = sub_1D0FF4348();
  return (*(*(v4 - 8) + 16))(a1, v3, v4);
}

void sub_1D0FEB7A0()
{
  if (!qword_1EE06E2F8)
  {
    type metadata accessor for HKCharacteristicTypeIdentifier(255);
    sub_1D0F1E8D8(255, &qword_1EE070B78, &qword_1EE070B50, 0x1E696C3D0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06E2F8);
    }
  }
}

uint64_t PromotionalTileConfiguration.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromotionalTileConfiguration.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromotionalTileConfiguration.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PromotionalTileConfiguration.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1D0FEB95C()
{
  if (*v0)
  {
    return 2003134838;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1D0FEB98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D0FF6278() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2003134838 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D0FF6278();

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

uint64_t sub_1D0FEBA64(uint64_t a1)
{
  v2 = sub_1D0FF1DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FEBAA0(uint64_t a1)
{
  v2 = sub_1D0FF1DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FEBADC()
{
  v1 = 0x6567616D69;
  v2 = 0x6C6961746564;
  if (*v0 != 2)
  {
    v2 = 0x6F436C6961746564;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1D0FEBB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FF34E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0FEBB7C(uint64_t a1)
{
  v2 = sub_1D0FF1D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FEBBB8(uint64_t a1)
{
  v2 = sub_1D0FF1D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FEBBF4(uint64_t a1)
{
  v2 = sub_1D0FF1D34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FEBC30(uint64_t a1)
{
  v2 = sub_1D0FF1D34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromotionalTileConfiguration.Hero.WatchConfiguration.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D0FF2488(0, &qword_1EC5FD638, sub_1D0FF1D34, &type metadata for PromotionalTileConfiguration.Hero.WatchConfiguration.ViewCodingKeys, MEMORY[0x1E69E6F58]);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v30 - v4;
  sub_1D0FF2488(0, &qword_1EC5FD648, sub_1D0FF1D88, &type metadata for PromotionalTileConfiguration.Hero.WatchConfiguration.ImageCodingKeys, v2);
  v48 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v30 - v6;
  v31 = type metadata accessor for ColorRepresentation(0);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF2488(0, &qword_1EC5FD658, sub_1D0FF1DFC, &type metadata for PromotionalTileConfiguration.Hero.WatchConfiguration.CodingKeys, v2);
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FF1DFC();
  sub_1D0FF6438();
  sub_1D0FF20D0(v36, v13, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v13 + 1);
    v48 = *v13;
    v18 = *(v13 + 2);
    v19 = v13[24];
    v21 = *(v13 + 4);
    v20 = *(v13 + 5);
    LOBYTE(v42) = 1;
    sub_1D0FF1D34();
    v22 = v40;
    sub_1D0FF6178();
    v42 = v48;
    v43 = v17;
    v48 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v21;
    v47 = v20;
    sub_1D0FF1E50();
    v23 = v34;
    sub_1D0FF6208();
    (*(v33 + 8))(v37, v23);
    (*(v39 + 8))(v16, v22);
  }

  else
  {
    sub_1D0FF1EA4(0);
    v26 = *&v13[v25[12]];
    v36 = *&v13[v25[16]];
    v37 = v26;
    v27 = v25[20];
    sub_1D0FF1FCC(v13, v10, type metadata accessor for ImageRepresentation);
    sub_1D0FF1FCC(&v13[v27], v8, type metadata accessor for ColorRepresentation);
    LOBYTE(v42) = 0;
    sub_1D0FF1D88();
    v28 = v40;
    sub_1D0FF6178();
    LOBYTE(v42) = 0;
    sub_1D0FF2034(&qword_1EE06F2D8, type metadata accessor for ImageRepresentation);
    v29 = v38;
    sub_1D0FF6208();
    if (v29)
    {

      (*(v35 + 8))(v41, v48);
      sub_1D0FF24F0(v8, type metadata accessor for ColorRepresentation);
      sub_1D0FF24F0(v10, type metadata accessor for ImageRepresentation);
      return (*(v39 + 8))(v16, v28);
    }

    else
    {
      LOBYTE(v42) = 1;
      sub_1D0FF61C8();

      LOBYTE(v42) = 2;
      sub_1D0FF61C8();

      LOBYTE(v42) = 3;
      sub_1D0FF2034(&qword_1EC5FCA00, type metadata accessor for ColorRepresentation);
      sub_1D0FF6208();
      (*(v35 + 8))(v41, v48);
      sub_1D0FF24F0(v8, type metadata accessor for ColorRepresentation);
      sub_1D0FF24F0(v10, type metadata accessor for ImageRepresentation);
      return (*(v39 + 8))(v16, v40);
    }
  }
}

uint64_t PromotionalTileConfiguration.Hero.WatchConfiguration.hash(into:)()
{
  v1 = type metadata accessor for ColorRepresentation(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF20D0(v0, v9, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D0FF1EA4(0);
    v14 = *(v13 + 80);
    sub_1D0FF1FCC(v9, v6, type metadata accessor for ImageRepresentation);
    sub_1D0FF1FCC(&v9[v14], v3, type metadata accessor for ColorRepresentation);
    MEMORY[0x1D3881950](0);
    ImageRepresentation.hash(into:)();
    sub_1D0FF5488();

    sub_1D0FF5488();

    ColorRepresentation.hash(into:)();
    sub_1D0FF24F0(v3, type metadata accessor for ColorRepresentation);
    return sub_1D0FF24F0(v6, type metadata accessor for ImageRepresentation);
  }

  v10 = *(v9 + 2);
  v11 = v9[24];
  v12 = *(v9 + 5);
  MEMORY[0x1D3881950](1);
  sub_1D0FF5488();
  if (v11 != 1)
  {
    sub_1D0FF6358();
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x1D3881970](v16);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_10:
    sub_1D0FF6358();
    goto LABEL_11;
  }

  sub_1D0FF6358();
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1D0FF6358();
  sub_1D0FF5488();
LABEL_11:
}

uint64_t PromotionalTileConfiguration.Hero.WatchConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D0FF2488(0, &qword_1EC5FD670, sub_1D0FF1D34, &type metadata for PromotionalTileConfiguration.Hero.WatchConfiguration.ViewCodingKeys, MEMORY[0x1E69E6F48]);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v56 - v5;
  sub_1D0FF2488(0, &qword_1EC5FD678, sub_1D0FF1D88, &type metadata for PromotionalTileConfiguration.Hero.WatchConfiguration.ImageCodingKeys, v3);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v56 - v8;
  sub_1D0FF2488(0, &qword_1EC5FD680, sub_1D0FF1DFC, &type metadata for PromotionalTileConfiguration.Hero.WatchConfiguration.CodingKeys, v3);
  v10 = v9;
  v64 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - v11;
  v13 = type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  v22 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D0FF1DFC();
  v23 = v66;
  sub_1D0FF6428();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v75);
  }

  v66 = v16;
  v57 = v13;
  v25 = v62;
  v24 = v63;
  v26 = sub_1D0FF6158();
  v27 = (2 * *(v26 + 16)) | 1;
  v71 = v26;
  v72 = v26 + 32;
  v73 = 0;
  v74 = v27;
  v28 = sub_1D0F3225C();
  if (v28 == 2 || v73 != v74 >> 1)
  {
    v33 = sub_1D0FF5E38();
    swift_allocError();
    v35 = v34;
    sub_1D0F35154();
    *v35 = v57;
    sub_1D0FF60B8();
    sub_1D0FF5E18();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    v36 = v64;
    goto LABEL_7;
  }

  if ((v28 & 1) == 0)
  {
    LOBYTE(v67) = 0;
    sub_1D0FF1D88();
    sub_1D0FF60A8();
    v36 = v64;
    type metadata accessor for ImageRepresentation();
    v66 = 0;
    LOBYTE(v67) = 0;
    sub_1D0FF2034(&qword_1EE070318, type metadata accessor for ImageRepresentation);
    v38 = v60;
    v39 = v66;
    sub_1D0FF6148();
    if (!v39)
    {
      LOBYTE(v67) = 1;
      v66 = sub_1D0FF6108();
      v44 = v43;
      sub_1D0FF1EA4(0);
      v45 = v19;
      v47 = v46;
      v48 = *(v46 + 48);
      v62 = v45;
      v49 = (v45 + v48);
      *v49 = v66;
      v49[1] = v44;
      v59 = v44;
      LOBYTE(v67) = 2;
      v50 = sub_1D0FF6108();
      v51 = (v62 + *(v47 + 64));
      v66 = 0;
      *v51 = v50;
      v51[1] = v52;
      v58 = v52;
      type metadata accessor for ColorRepresentation(0);
      LOBYTE(v67) = 3;
      sub_1D0FF2034(&qword_1EC5FC9F8, type metadata accessor for ColorRepresentation);
      v53 = v65;
      v54 = v66;
      sub_1D0FF6148();
      if (!v54)
      {
        (*(v61 + 8))(v53, v38);
        (*(v36 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v55 = v62;
        swift_storeEnumTagMultiPayload();
        sub_1D0FF1FCC(v55, v21, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
        v31 = v24;
        goto LABEL_11;
      }

      (*(v61 + 8))(v53, v38);
      (*(v36 + 8))(v12, v10);

      swift_unknownObjectRelease();
      sub_1D0FF24F0(v62, type metadata accessor for ImageRepresentation);
      return __swift_destroy_boxed_opaque_existential_1Tm(v75);
    }

    (*(v61 + 8))(v65, v38);
LABEL_7:
    (*(v36 + 8))(v12, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v75);
  }

  LOBYTE(v67) = 1;
  sub_1D0FF1D34();
  v29 = v25;
  sub_1D0FF60A8();
  v30 = v64;
  v31 = v24;
  sub_1D0FF207C();
  v32 = v59;
  sub_1D0FF6148();
  (*(v58 + 8))(v29, v32);
  (*(v30 + 8))(v12, v10);
  swift_unknownObjectRelease();
  v40 = v68;
  v41 = v69;
  v42 = v66;
  *v66 = v67;
  *(v42 + 16) = v40;
  *(v42 + 24) = v41;
  *(v42 + 32) = v70;
  swift_storeEnumTagMultiPayload();
  sub_1D0FF1FCC(v42, v21, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
LABEL_11:
  sub_1D0FF1FCC(v21, v31, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  return __swift_destroy_boxed_opaque_existential_1Tm(v75);
}

uint64_t PromotionalTileConfiguration.Hero.ImageConfiguration.init(imageData:imageHeight:imageInset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1D0FF1FCC(a1, a6, type metadata accessor for ImageRepresentation);
  result = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
  v12 = a6 + *(result + 20);
  *v12 = a2;
  *(v12 + 8) = a3 & 1;
  v13 = a6 + *(result + 24);
  *v13 = a4;
  *(v13 + 8) = a5 & 1;
  return result;
}

uint64_t sub_1D0FED11C()
{
  v1 = 0x6965486567616D69;
  if (*v0 != 1)
  {
    v1 = 0x736E496567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461446567616D69;
  }
}

uint64_t sub_1D0FED188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FF363C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0FED1B0(uint64_t a1)
{
  v2 = sub_1D0FF21FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FED1EC(uint64_t a1)
{
  v2 = sub_1D0FF21FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromotionalTileConfiguration.Hero.ImageConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D0FF2488(0, &qword_1EE06E110, sub_1D0FF21FC, &type metadata for PromotionalTileConfiguration.Hero.ImageConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FF21FC();
  sub_1D0FF6438();
  LOBYTE(v16) = 0;
  type metadata accessor for ImageRepresentation();
  sub_1D0FF2034(&qword_1EE06F2D8, type metadata accessor for ImageRepresentation);
  sub_1D0FF6208();
  if (!v2)
  {
    v10 = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
    v11 = (v3 + *(v10 + 20));
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    v16 = v12;
    v17 = v11;
    v18 = 1;
    sub_1D0F34F34();
    sub_1D0FF61B8();
    v13 = (v3 + *(v10 + 24));
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 8);
    v16 = v14;
    v17 = v13;
    v18 = 2;
    sub_1D0FF61B8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t PromotionalTileConfiguration.Hero.ImageConfiguration.hash(into:)()
{
  ImageRepresentation.hash(into:)();
  v1 = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
  v2 = (v0 + *(v1 + 20));
  if (*(v2 + 8) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v3 = *v2;
    sub_1D0FF6358();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1D3881970](v4);
  }

  v5 = (v0 + *(v1 + 24));
  if (*(v5 + 8) == 1)
  {
    return sub_1D0FF6358();
  }

  v7 = *v5;
  sub_1D0FF6358();
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x1D3881970](v8);
}

uint64_t PromotionalTileConfiguration.Hero.ImageConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF2488(0, &qword_1EE06F900, sub_1D0FF21FC, &type metadata for PromotionalTileConfiguration.Hero.ImageConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v25 = v5;
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FF21FC();
  sub_1D0FF6428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = a1;
  v12 = v22;
  LOBYTE(v26) = 0;
  sub_1D0FF2034(&qword_1EE070318, type metadata accessor for ImageRepresentation);
  v13 = v24;
  v14 = v25;
  sub_1D0FF6148();
  sub_1D0FF1FCC(v13, v10, type metadata accessor for ImageRepresentation);
  v28 = 1;
  sub_1D0F35210();
  sub_1D0FF60F8();
  v15 = v27;
  v16 = &v10[*(v8 + 20)];
  *v16 = v26;
  v16[8] = v15;
  v28 = 2;
  sub_1D0FF60F8();
  (*(v12 + 8))(v7, v14);
  v18 = v27;
  v19 = &v10[*(v8 + 24)];
  *v19 = v26;
  v19[8] = v18;
  sub_1D0FF20D0(v10, v21, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return sub_1D0FF24F0(v10, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
}

uint64_t PromotionalTileConfiguration.Hero.ViewConfiguration.viewName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromotionalTileConfiguration.Hero.ViewConfiguration.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void PromotionalTileConfiguration.Hero.ViewConfiguration.init(viewName:bundle:viewHeight:)(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = [a1 bundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D0FF5428();
    v16 = v15;
  }

  else
  {

    v14 = 0;
    v16 = 0;
  }

  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5 & 1;
  *(a6 + 32) = v14;
  *(a6 + 40) = v16;
}

uint64_t sub_1D0FEDAB8()
{
  v1 = 0x6769654877656976;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E77656976;
  }
}

uint64_t sub_1D0FEDB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FF3768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0FEDB44(uint64_t a1)
{
  v2 = sub_1D0FF2250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FEDB80(uint64_t a1)
{
  v2 = sub_1D0FF2250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromotionalTileConfiguration.Hero.ViewConfiguration.encode(to:)(void *a1)
{
  sub_1D0FF2488(0, &qword_1EC5FD690, sub_1D0FF2250, &type metadata for PromotionalTileConfiguration.Hero.ViewConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *(v1 + 16);
  v17 = *(v1 + 24);
  v9 = *(v1 + 40);
  v12[1] = *(v1 + 32);
  v13 = v8;
  v12[0] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FF2250();
  sub_1D0FF6438();
  v20 = 0;
  v10 = v14;
  sub_1D0FF61C8();
  if (!v10)
  {
    v15 = v13;
    v16 = v17;
    v19 = 1;
    sub_1D0F34F34();
    sub_1D0FF61B8();
    v18 = 2;
    sub_1D0FF6188();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PromotionalTileConfiguration.Hero.ViewConfiguration.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  sub_1D0FF5488();
  if (v2 != 1)
  {
    sub_1D0FF6358();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1D3881970](v5);
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_1D0FF6358();
  }

  sub_1D0FF6358();
  if (!v3)
  {
    return sub_1D0FF6358();
  }

LABEL_3:
  sub_1D0FF6358();

  return sub_1D0FF5488();
}

uint64_t PromotionalTileConfiguration.Hero.ViewConfiguration.hashValue.getter()
{
  sub_1D0FF6338();
  PromotionalTileConfiguration.Hero.ViewConfiguration.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t PromotionalTileConfiguration.Hero.ViewConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1D0FF2488(0, &qword_1EC5FD6A0, sub_1D0FF2250, &type metadata for PromotionalTileConfiguration.Hero.ViewConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FF2250();
  sub_1D0FF6428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v6;
  v10 = v24;
  v30 = 0;
  v11 = sub_1D0FF6108();
  v13 = v12;
  v14 = v11;
  v29 = 1;
  sub_1D0F35210();
  sub_1D0FF60F8();
  v23 = v25;
  v27 = v26;
  v28 = 2;
  v15 = sub_1D0FF60C8();
  v18 = v17;
  v19 = *(v9 + 8);
  v22 = v15;
  v19(v8, v5);
  v20 = v27;
  *v10 = v14;
  *(v10 + 8) = v13;
  *(v10 + 16) = v23;
  *(v10 + 24) = v20;
  *(v10 + 32) = v22;
  *(v10 + 40) = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D0FEE1CC()
{
  sub_1D0FF6338();
  PromotionalTileConfiguration.Hero.ViewConfiguration.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FEE234()
{
  sub_1D0FF6338();
  PromotionalTileConfiguration.Hero.ViewConfiguration.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0FEE298()
{
  v1 = 0x6567616D69;
  if (*v0 != 1)
  {
    v1 = 2003134838;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465646465626D65;
  }
}

uint64_t sub_1D0FEE2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FF3890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0FEE31C(uint64_t a1)
{
  v2 = sub_1D0FF23C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FEE358(uint64_t a1)
{
  v2 = sub_1D0FF23C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FEE394(uint64_t a1)
{
  v2 = sub_1D0FF234C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FEE3D0(uint64_t a1)
{
  v2 = sub_1D0FF234C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FEE40C(uint64_t a1)
{
  v2 = sub_1D0FF22F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FEE448(uint64_t a1)
{
  v2 = sub_1D0FF22F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0FEE484(uint64_t a1)
{
  v2 = sub_1D0FF22A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FEE4C0(uint64_t a1)
{
  v2 = sub_1D0FF22A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromotionalTileConfiguration.Hero.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D0FF2488(0, &qword_1EE06E100, sub_1D0FF22A4, &type metadata for PromotionalTileConfiguration.Hero.ViewCodingKeys, MEMORY[0x1E69E6F58]);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v36 - v4;
  sub_1D0FF2488(0, &qword_1EE06E0F8, sub_1D0FF22F8, &type metadata for PromotionalTileConfiguration.Hero.ImageCodingKeys, v2);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v36 - v6;
  v40 = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF2488(0, &qword_1EE06E0F0, sub_1D0FF234C, &type metadata for PromotionalTileConfiguration.Hero.EmbeddedWatchCodingKeys, v2);
  v39 = v8;
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v38 = type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(0);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF2488(0, &qword_1EE06E108, sub_1D0FF23C0, &type metadata for PromotionalTileConfiguration.Hero.CodingKeys, v2);
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FF23C0();
  sub_1D0FF6438();
  sub_1D0FF20D0(v48, v15, type metadata accessor for PromotionalTileConfiguration.Hero);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v41;
      sub_1D0FF1FCC(v15, v41, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
      LOBYTE(v51) = 1;
      sub_1D0FF22F8();
      v21 = v42;
      v22 = v50;
      sub_1D0FF6178();
      sub_1D0FF2034(&qword_1EE06ED30, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
      v23 = v44;
      sub_1D0FF6208();
      (*(v43 + 8))(v21, v23);
      sub_1D0FF24F0(v20, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
      return (*(v49 + 8))(v18, v22);
    }

    else
    {
      v28 = *(v15 + 1);
      v48 = *v15;
      v29 = *(v15 + 2);
      v30 = v15[24];
      v32 = *(v15 + 4);
      v31 = *(v15 + 5);
      LOBYTE(v51) = 2;
      sub_1D0FF22A4();
      v33 = v45;
      v34 = v50;
      sub_1D0FF6178();
      v51 = v48;
      v52 = v28;
      v48 = v28;
      v53 = v29;
      v54 = v30;
      v55 = v32;
      v56 = v31;
      sub_1D0FF1E50();
      v35 = v47;
      sub_1D0FF6208();
      (*(v46 + 8))(v33, v35);
      (*(v49 + 8))(v18, v34);
    }
  }

  else
  {
    v25 = v37;
    sub_1D0FF1FCC(v15, v12, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
    LOBYTE(v51) = 0;
    sub_1D0FF234C();
    v26 = v50;
    sub_1D0FF6178();
    sub_1D0FF2034(&qword_1EC5FD6A8, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
    v27 = v39;
    sub_1D0FF6208();
    (*(v25 + 8))(v10, v27);
    sub_1D0FF24F0(v12, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
    return (*(v49 + 8))(v18, v26);
  }
}

uint64_t PromotionalTileConfiguration.Hero.hash(into:)()
{
  v1 = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF20D0(v0, v9, type metadata accessor for PromotionalTileConfiguration.Hero);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D0FF1FCC(v9, v6, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
    MEMORY[0x1D3881950](0);
    PromotionalTileConfiguration.Hero.WatchConfiguration.hash(into:)();
    return sub_1D0FF24F0(v6, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v13 = *(v9 + 2);
    v14 = v9[24];
    v15 = *(v9 + 5);
    MEMORY[0x1D3881950](2);
    sub_1D0FF5488();
    if (v14 == 1)
    {
      sub_1D0FF6358();
      if (v15)
      {
LABEL_8:
        sub_1D0FF6358();
        sub_1D0FF5488();
LABEL_25:
      }
    }

    else
    {
      sub_1D0FF6358();
      if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v21 = v13;
      }

      else
      {
        v21 = 0;
      }

      MEMORY[0x1D3881970](v21);
      if (v15)
      {
        goto LABEL_8;
      }
    }

    sub_1D0FF6358();
    goto LABEL_25;
  }

  sub_1D0FF1FCC(v9, v3, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
  MEMORY[0x1D3881950](1);
  ImageRepresentation.hash(into:)();
  v11 = &v3[*(v1 + 20)];
  if (v11[8] == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v16 = *v11;
    sub_1D0FF6358();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x1D3881970](v17);
  }

  v18 = &v3[*(v1 + 24)];
  if (v18[8] == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v19 = *v18;
    sub_1D0FF6358();
    if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x1D3881970](v20);
  }

  return sub_1D0FF24F0(v3, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
}

uint64_t sub_1D0FEEF48(void (*a1)(_BYTE *))
{
  sub_1D0FF6338();
  a1(v3);
  return sub_1D0FF6378();
}

uint64_t PromotionalTileConfiguration.Hero.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D0FF2488(0, &qword_1EE06F8F0, sub_1D0FF22A4, &type metadata for PromotionalTileConfiguration.Hero.ViewCodingKeys, MEMORY[0x1E69E6F48]);
  v62 = v4;
  v65 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v56 - v5;
  sub_1D0FF2488(0, &qword_1EE06F8E8, sub_1D0FF22F8, &type metadata for PromotionalTileConfiguration.Hero.ImageCodingKeys, v3);
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v56 - v7;
  sub_1D0FF2488(0, &qword_1EE06F8E0, sub_1D0FF234C, &type metadata for PromotionalTileConfiguration.Hero.EmbeddedWatchCodingKeys, v3);
  v61 = v8;
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v56 - v9;
  sub_1D0FF2488(0, &qword_1EE06F8F8, sub_1D0FF23C0, &type metadata for PromotionalTileConfiguration.Hero.CodingKeys, v3);
  v67 = v10;
  v70 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v56 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v56 - v23;
  v25 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D0FF23C0();
  v26 = v72;
  sub_1D0FF6428();
  if (!v26)
  {
    v59 = v22;
    v58 = v19;
    v57 = v16;
    v27 = v66;
    v28 = v67;
    v30 = v68;
    v29 = v69;
    v72 = 0;
    v31 = v13;
    v32 = v71;
    v33 = sub_1D0FF6158();
    v34 = (2 * *(v33 + 16)) | 1;
    v77 = v33;
    v78 = v33 + 32;
    v79 = 0;
    v80 = v34;
    v35 = sub_1D0F32290();
    if (v35 == 3 || v79 != v80 >> 1)
    {
      v40 = sub_1D0FF5E38();
      swift_allocError();
      v42 = v41;
      sub_1D0F35154();
      *v42 = v31;
      sub_1D0FF60B8();
      sub_1D0FF5E18();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
    }

    else if (v35)
    {
      if (v35 == 1)
      {
        LOBYTE(v73) = 1;
        sub_1D0FF22F8();
        v36 = v72;
        sub_1D0FF60A8();
        if (!v36)
        {
          v66 = v31;
          type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
          sub_1D0FF2034(&qword_1EE06FE78, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
          v37 = v58;
          v38 = v64;
          sub_1D0FF6148();
          v39 = v70;
          (*(v63 + 8))(v30, v38);
          (*(v39 + 8))(v12, v28);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          sub_1D0FF1FCC(v37, v24, type metadata accessor for PromotionalTileConfiguration.Hero);
          v32 = v71;
LABEL_16:
          sub_1D0FF1FCC(v24, v32, type metadata accessor for PromotionalTileConfiguration.Hero);
          return __swift_destroy_boxed_opaque_existential_1Tm(v81);
        }

        goto LABEL_9;
      }

      v66 = v31;
      LOBYTE(v73) = 2;
      sub_1D0FF22A4();
      v46 = v29;
      v47 = v72;
      sub_1D0FF60A8();
      if (!v47)
      {
        sub_1D0FF207C();
        v48 = v62;
        sub_1D0FF6148();
        v49 = v46;
        v50 = v70;
        (*(v65 + 8))(v49, v48);
        (*(v50 + 8))(v12, v28);
        swift_unknownObjectRelease();
        v53 = v74;
        v54 = v75;
        v55 = v57;
        *v57 = v73;
        *(v55 + 2) = v53;
        *(v55 + 24) = v54;
        v55[2] = v76;
        swift_storeEnumTagMultiPayload();
        v52 = v55;
        goto LABEL_15;
      }
    }

    else
    {
      LOBYTE(v73) = 0;
      sub_1D0FF234C();
      v44 = v72;
      sub_1D0FF60A8();
      if (!v44)
      {
        type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(0);
        sub_1D0FF2034(&qword_1EC5FD6B0, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
        v45 = v61;
        sub_1D0FF6148();
        (*(v60 + 8))(v27, v45);
        (*(v70 + 8))(v12, v28);
        swift_unknownObjectRelease();
        v51 = v59;
        swift_storeEnumTagMultiPayload();
        v52 = v51;
LABEL_15:
        sub_1D0FF1FCC(v52, v24, type metadata accessor for PromotionalTileConfiguration.Hero);
        goto LABEL_16;
      }
    }

LABEL_9:
    (*(v70 + 8))(v12, v28);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v81);
}

uint64_t sub_1D0FEF8EC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1D0FF6338();
  a3(v5);
  return sub_1D0FF6378();
}

uint64_t sub_1D0FEF950(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D0FF6338();
  a4(v6);
  return sub_1D0FF6378();
}

uint64_t PromotionalTileConfiguration.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromotionalTileConfiguration(0) + 28));

  return v1;
}

uint64_t PromotionalTileConfiguration.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromotionalTileConfiguration(0) + 32));

  return v1;
}

uint64_t PromotionalTileConfiguration.linkTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromotionalTileConfiguration(0) + 36));

  return v1;
}

uint64_t PromotionalTileConfiguration.actionTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromotionalTileConfiguration(0) + 40));

  return v1;
}

uint64_t PromotionalTileConfiguration.init(reuseIdentifier:imageData:imageHeight:imageInset:title:body:linkTitle:actionTitle:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v48 = a8;
  v49 = a3;
  v50 = a15;
  v51 = a16;
  v46 = a13;
  v47 = a14;
  v45 = a12;
  v43 = a2;
  v44 = a11;
  v23 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF20D0(a3, v25, type metadata accessor for ImageRepresentation);
  v26 = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
  v27 = &v25[*(v26 + 20)];
  *v27 = a4;
  v27[8] = a5 & 1;
  v28 = &v25[*(v26 + 24)];
  *v28 = a6;
  v28[8] = a7 & 1;
  swift_storeEnumTagMultiPayload();
  v29 = v43;
  a9[2] = a1;
  a9[3] = v29;
  v30 = type metadata accessor for PromotionalTileConfiguration(0);
  sub_1D0FF20D0(v25, a9 + v30[6], type metadata accessor for PromotionalTileConfiguration.Hero);
  v31 = (a9 + v30[7]);
  v32 = v48;
  *v31 = v48;
  v31[1] = a10;
  v33 = (a9 + v30[8]);
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;
  v35 = (a9 + v30[9]);
  v36 = v47;
  *v35 = v46;
  v35[1] = v36;
  v37 = (a9 + v30[10]);
  v38 = v51;
  *v37 = v50;
  v37[1] = v38;
  v52 = 0xD00000000000001DLL;
  v53 = 0x80000001D1005FE0;

  MEMORY[0x1D3880AC0](v32, a10);

  v39 = v52;
  v40 = v53;
  sub_1D0FF24F0(v49, type metadata accessor for ImageRepresentation);
  result = sub_1D0FF24F0(v25, type metadata accessor for PromotionalTileConfiguration.Hero);
  *a9 = v39;
  a9[1] = v40;
  return result;
}

uint64_t PromotionalTileConfiguration.init(reuseIdentifier:hero:title:body:linkTitle:actionTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a9[2] = a1;
  a9[3] = a2;
  v18 = type metadata accessor for PromotionalTileConfiguration(0);
  sub_1D0FF20D0(a3, a9 + v18[6], type metadata accessor for PromotionalTileConfiguration.Hero);
  v19 = (a9 + v18[7]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a9 + v18[8]);
  *v20 = a6;
  v20[1] = a7;
  v21 = (a9 + v18[9]);
  *v21 = a8;
  v21[1] = a10;
  v22 = (a9 + v18[10]);
  *v22 = a11;
  v22[1] = a12;

  MEMORY[0x1D3880AC0](a4, a5);

  result = sub_1D0FF24F0(a3, type metadata accessor for PromotionalTileConfiguration.Hero);
  *a9 = 0xD00000000000001DLL;
  a9[1] = 0x80000001D1005FE0;
  return result;
}

uint64_t PromotionalTileConfiguration.init(reuseIdentifier:viewName:bundle:viewHeight:title:body:linkTitle:actionTitle:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HIDWORD(v42) = a7;
  v43 = a1;
  v44 = a2;
  v50 = a16;
  v51 = a8;
  v48 = a14;
  v49 = a15;
  v46 = a12;
  v47 = a13;
  v45 = a11;
  v21 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a5;
  v24 = [a5 bundleIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D0FF5428();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *v23 = a3;
  *(v23 + 1) = a4;
  *(v23 + 2) = a6;
  v23[24] = BYTE4(v42) & 1;
  *(v23 + 4) = v26;
  *(v23 + 5) = v28;
  swift_storeEnumTagMultiPayload();
  v29 = v44;
  a9[2] = v43;
  a9[3] = v29;
  v30 = type metadata accessor for PromotionalTileConfiguration(0);
  sub_1D0FF20D0(v23, a9 + v30[6], type metadata accessor for PromotionalTileConfiguration.Hero);
  v31 = (a9 + v30[7]);
  v32 = v51;
  *v31 = v51;
  v31[1] = a10;
  v33 = (a9 + v30[8]);
  v34 = v46;
  *v33 = v45;
  v33[1] = v34;
  v35 = (a9 + v30[9]);
  v36 = v48;
  *v35 = v47;
  v35[1] = v36;
  v37 = (a9 + v30[10]);
  v38 = v50;
  *v37 = v49;
  v37[1] = v38;
  v53 = 0xD00000000000001DLL;
  v54 = 0x80000001D1005FE0;

  MEMORY[0x1D3880AC0](v32, a10);

  v39 = v53;
  v40 = v54;
  result = sub_1D0FF24F0(v23, type metadata accessor for PromotionalTileConfiguration.Hero);
  *a9 = v39;
  a9[1] = v40;
  return result;
}

uint64_t PromotionalTileConfiguration.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_1D0FF3DA8();
  swift_allocObject();
  sub_1D0FF3D98();
  type metadata accessor for PromotionalTileConfiguration(0);
  sub_1D0FF2034(qword_1EE06ECA0, type metadata accessor for PromotionalTileConfiguration);
  sub_1D0FF3D88();
  sub_1D0F34FDC(a1, a2);
}

uint64_t PromotionalTileConfiguration.encode()()
{
  sub_1D0FF3DD8();
  swift_allocObject();
  sub_1D0FF3DC8();
  type metadata accessor for PromotionalTileConfiguration(0);
  sub_1D0FF2034(&qword_1EC5FD6B8, type metadata accessor for PromotionalTileConfiguration);
  v0 = sub_1D0FF3DB8();

  return v0;
}

unint64_t sub_1D0FF028C()
{
  v1 = *v0;
  v2 = 0x6564496573756572;
  v3 = 0x6C7469546B6E696CLL;
  if (v1 != 5)
  {
    v3 = 0x69546E6F69746361;
  }

  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 2036625250;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1869768040;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D0FF036C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0FF39AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0FF03A0(uint64_t a1)
{
  v2 = sub_1D0FF2434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0FF03DC(uint64_t a1)
{
  v2 = sub_1D0FF2434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromotionalTileConfiguration.encode(to:)(void *a1)
{
  sub_1D0FF2488(0, &qword_1EE06E118, sub_1D0FF2434, &type metadata for PromotionalTileConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0FF2434();
  sub_1D0FF6438();
  v16 = 0;
  sub_1D0FF61C8();
  if (!v1)
  {
    v15 = 1;
    sub_1D0FF61C8();
    type metadata accessor for PromotionalTileConfiguration(0);
    v14 = 2;
    type metadata accessor for PromotionalTileConfiguration.Hero(0);
    sub_1D0FF2034(qword_1EE06ECD0, type metadata accessor for PromotionalTileConfiguration.Hero);
    sub_1D0FF6208();
    v13 = 3;
    sub_1D0FF61C8();
    v12 = 4;
    sub_1D0FF61C8();
    v11 = 5;
    sub_1D0FF6188();
    v10 = 6;
    sub_1D0FF61C8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PromotionalTileConfiguration.hash(into:)()
{
  sub_1D0FF5488();
  sub_1D0FF5488();
  v1 = type metadata accessor for PromotionalTileConfiguration(0);
  PromotionalTileConfiguration.Hero.hash(into:)();
  sub_1D0FF5488();
  sub_1D0FF5488();
  if (*(v0 + *(v1 + 36) + 8))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  return sub_1D0FF5488();
}

uint64_t PromotionalTileConfiguration.hashValue.getter()
{
  sub_1D0FF6338();
  sub_1D0FF5488();
  sub_1D0FF5488();
  v1 = type metadata accessor for PromotionalTileConfiguration(0);
  PromotionalTileConfiguration.Hero.hash(into:)();
  sub_1D0FF5488();
  sub_1D0FF5488();
  if (*(v0 + *(v1 + 36) + 8))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  sub_1D0FF5488();
  return sub_1D0FF6378();
}

uint64_t PromotionalTileConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF2488(0, &qword_1EE06F908, sub_1D0FF2434, &type metadata for PromotionalTileConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = type metadata accessor for PromotionalTileConfiguration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D0FF2434();
  v13 = v35;
  sub_1D0FF6428();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  v14 = v33;
  v43 = 0;
  *v11 = sub_1D0FF6108();
  v11[1] = v15;
  v42 = 1;
  v11[2] = sub_1D0FF6108();
  v11[3] = v16;
  v41 = 2;
  sub_1D0FF2034(&qword_1EE06FD28, type metadata accessor for PromotionalTileConfiguration.Hero);
  sub_1D0FF6148();
  sub_1D0FF1FCC(v4, v11 + v9[6], type metadata accessor for PromotionalTileConfiguration.Hero);
  v40 = 3;
  v17 = sub_1D0FF6108();
  v18 = (v11 + v9[7]);
  *v18 = v17;
  v18[1] = v19;
  v39 = 4;
  v20 = sub_1D0FF6108();
  v21 = (v11 + v9[8]);
  *v21 = v20;
  v21[1] = v22;
  v38 = 5;
  v23 = sub_1D0FF60C8();
  v24 = (v11 + v9[9]);
  *v24 = v23;
  v24[1] = v25;
  v37 = 6;
  v26 = sub_1D0FF6108();
  v28 = v27;
  (*(v34 + 8))(v8, v14);
  v29 = (v11 + v9[10]);
  *v29 = v26;
  v29[1] = v28;
  sub_1D0FF20D0(v11, v31, type metadata accessor for PromotionalTileConfiguration);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return sub_1D0FF24F0(v11, type metadata accessor for PromotionalTileConfiguration);
}

uint64_t sub_1D0FF0E80(uint64_t a1, uint64_t a2)
{
  sub_1D0FF6338();
  sub_1D0FF5488();
  sub_1D0FF5488();
  PromotionalTileConfiguration.Hero.hash(into:)();
  sub_1D0FF5488();
  sub_1D0FF5488();
  if (*(v2 + *(a2 + 36) + 8))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  sub_1D0FF5488();
  return sub_1D0FF6378();
}

BOOL _s16HealthExperience28PromotionalTileConfigurationV4HeroO04ViewE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D0FF6278() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v5)
  {
    return v8 && (v4 == v9 && v5 == v8 || (sub_1D0FF6278() & 1) != 0);
  }

  return !v8;
}

uint64_t _s16HealthExperience28PromotionalTileConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D0FF6278() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D0FF6278() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for PromotionalTileConfiguration(0);
  if ((_s16HealthExperience28PromotionalTileConfigurationV4HeroO2eeoiySbAE_AEtFZ_0(a1 + v6[6], a2 + v6[6]) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[7];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_1D0FF6278() & 1) == 0)
  {
    return 0;
  }

  v12 = v6[8];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_1D0FF6278() & 1) == 0)
  {
    return 0;
  }

  v17 = v6[9];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (v21 && (*v18 == *v20 && v19 == v21 || (sub_1D0FF6278() & 1) != 0))
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v21)
  {
    return 0;
  }

LABEL_27:
  v22 = v6[10];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if (v23 == *v25 && v24 == v25[1])
  {
    return 1;
  }

  return sub_1D0FF6278();
}

uint64_t _s16HealthExperience28PromotionalTileConfigurationV4HeroO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromotionalTileConfiguration.Hero(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  sub_1D0FF3C10(0, qword_1EE06FCA0, type metadata accessor for PromotionalTileConfiguration.Hero);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v48 - v19;
  v21 = &v48 + *(v18 + 56) - v19;
  sub_1D0FF20D0(a1, &v48 - v19, type metadata accessor for PromotionalTileConfiguration.Hero);
  sub_1D0FF20D0(a2, v21, type metadata accessor for PromotionalTileConfiguration.Hero);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D0FF20D0(v20, v14, type metadata accessor for PromotionalTileConfiguration.Hero);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v49;
        sub_1D0FF1FCC(v21, v49, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
        if (static ImageRepresentation.== infix(_:_:)(v14, v23))
        {
          v24 = *(v48 + 20);
          v25 = &v14[v24];
          v26 = v14[v24 + 8];
          v27 = (v23 + v24);
          v28 = *(v23 + v24 + 8);
          if (v26)
          {
            if (!v28)
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (*v25 != *v27)
            {
              LOBYTE(v28) = 1;
            }

            if (v28)
            {
              goto LABEL_22;
            }
          }

          v42 = *(v48 + 24);
          v43 = &v14[v42];
          v44 = v14[v42 + 8];
          v45 = (v23 + v42);
          v46 = *(v23 + v42 + 8);
          if (v44)
          {
            if (!v46)
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (*v43 != *v45)
            {
              LOBYTE(v46) = 1;
            }

            if (v46)
            {
              goto LABEL_22;
            }
          }

          sub_1D0FF24F0(v23, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
          sub_1D0FF24F0(v14, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
          sub_1D0FF24F0(v20, type metadata accessor for PromotionalTileConfiguration.Hero);
          v41 = 1;
          return v41 & 1;
        }

LABEL_22:
        sub_1D0FF24F0(v23, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
        sub_1D0FF24F0(v14, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
        sub_1D0FF24F0(v20, type metadata accessor for PromotionalTileConfiguration.Hero);
        goto LABEL_23;
      }

      sub_1D0FF24F0(v14, type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration);
LABEL_14:
      sub_1D0FF3C70(v20, qword_1EE06FCA0, type metadata accessor for PromotionalTileConfiguration.Hero);
LABEL_23:
      v41 = 0;
      return v41 & 1;
    }

    sub_1D0FF20D0(v20, v11, type metadata accessor for PromotionalTileConfiguration.Hero);
    v29 = *(v11 + 1);
    v30 = *(v11 + 5);
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_14;
    }

    v31 = *(v11 + 4);
    v32 = v11[24];
    v33 = *(v11 + 2);
    v34 = *v11;
    v35 = *v21;
    v36 = *(v21 + 1);
    v37 = *(v21 + 2);
    v38 = v21[24];
    v39 = *(v21 + 4);
    v40 = *(v21 + 5);
    v54[0] = v34;
    v54[1] = v29;
    v54[2] = v33;
    v55 = v32;
    v56 = v31;
    v57 = v30;
    v50[0] = v35;
    v50[1] = v36;
    v50[2] = v37;
    v51 = v38;
    v52 = v39;
    v53 = v40;
    v41 = _s16HealthExperience28PromotionalTileConfigurationV4HeroO04ViewE0V2eeoiySbAG_AGtFZ_0(v54, v50);
  }

  else
  {
    sub_1D0FF20D0(v20, v16, type metadata accessor for PromotionalTileConfiguration.Hero);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D0FF24F0(v16, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
      goto LABEL_14;
    }

    sub_1D0FF1FCC(v21, v7, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
    v41 = _s16HealthExperience28PromotionalTileConfigurationV4HeroO05WatchE0O2eeoiySbAG_AGtFZ_0(v16, v7);
    sub_1D0FF24F0(v7, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
    sub_1D0FF24F0(v16, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  }

  sub_1D0FF24F0(v20, type metadata accessor for PromotionalTileConfiguration.Hero);
  return v41 & 1;
}

uint64_t _s16HealthExperience28PromotionalTileConfigurationV4HeroO05WatchE0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorRepresentation(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v56 - v8;
  v9 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  sub_1D0FF3C10(0, &qword_1EC5FD778, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v56 - v20;
  v22 = &v56 + *(v19 + 56) - v20;
  sub_1D0FF20D0(a1, &v56 - v20, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  sub_1D0FF20D0(a2, v22, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D0FF20D0(v21, v15, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
    v23 = *(v15 + 1);
    v24 = *(v15 + 5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *(v15 + 4);
      v26 = v15[24];
      v27 = *(v15 + 2);
      v28 = *v22;
      v29 = *(v22 + 1);
      v30 = *(v22 + 2);
      v31 = v22[24];
      v32 = *(v22 + 4);
      v33 = *(v22 + 5);
      v67[0] = *v15;
      v67[1] = v23;
      v67[2] = v27;
      v68 = v26;
      v69 = v25;
      v70 = v24;
      v63[0] = v28;
      v63[1] = v29;
      v63[2] = v30;
      v64 = v31;
      v65 = v32;
      v66 = v33;
      v34 = _s16HealthExperience28PromotionalTileConfigurationV4HeroO04ViewE0V2eeoiySbAG_AGtFZ_0(v67, v63);

LABEL_25:
      sub_1D0FF24F0(v21, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
      return v34 & 1;
    }

    goto LABEL_7;
  }

  v61 = v7;
  v35 = v11;
  sub_1D0FF20D0(v21, v17, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
  sub_1D0FF1EA4(0);
  v37 = v36[12];
  v38 = *&v17[v37];
  v39 = *&v17[v37 + 8];
  v40 = v36[16];
  v41 = *&v17[v40 + 8];
  v59 = *&v17[v40];
  v60 = v38;
  v42 = v36[20];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v57 = v39;
    v58 = v41;
    v43 = *&v22[v37];
    v44 = *&v22[v37 + 8];
    v45 = *&v22[v40 + 8];
    v56 = *&v22[v40];
    sub_1D0FF1FCC(v22, v35, type metadata accessor for ImageRepresentation);
    v46 = v62;
    sub_1D0FF1FCC(&v17[v42], v62, type metadata accessor for ColorRepresentation);
    v47 = &v22[v42];
    v48 = v35;
    v49 = v61;
    sub_1D0FF1FCC(v47, v61, type metadata accessor for ColorRepresentation);
    v50 = static ImageRepresentation.== infix(_:_:)(v17, v48);
    sub_1D0FF24F0(v17, type metadata accessor for ImageRepresentation);
    if (v50)
    {
      v51 = v58;
      if (v60 == v43 && v57 == v44)
      {
      }

      else
      {
        v53 = sub_1D0FF6278();

        if ((v53 & 1) == 0)
        {

LABEL_16:

LABEL_17:
          sub_1D0FF24F0(v49, type metadata accessor for ColorRepresentation);
          sub_1D0FF24F0(v46, type metadata accessor for ColorRepresentation);
          sub_1D0FF24F0(v48, type metadata accessor for ImageRepresentation);
          sub_1D0FF24F0(v21, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
          goto LABEL_18;
        }
      }

      if (v59 == v56 && v51 == v45)
      {
      }

      else
      {
        v54 = sub_1D0FF6278();

        if ((v54 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v34 = _s16HealthExperience19ColorRepresentationO2eeoiySbAC_ACtFZ_0(v46, v49);
      sub_1D0FF24F0(v49, type metadata accessor for ColorRepresentation);
      sub_1D0FF24F0(v46, type metadata accessor for ColorRepresentation);
      sub_1D0FF24F0(v48, type metadata accessor for ImageRepresentation);
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  sub_1D0FF24F0(&v17[v42], type metadata accessor for ColorRepresentation);

  sub_1D0FF24F0(v17, type metadata accessor for ImageRepresentation);
LABEL_7:
  sub_1D0FF3C70(v21, &qword_1EC5FD778, type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration);
LABEL_18:
  v34 = 0;
  return v34 & 1;
}

unint64_t sub_1D0FF1D34()
{
  result = qword_1EC5FD640;
  if (!qword_1EC5FD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD640);
  }

  return result;
}

unint64_t sub_1D0FF1D88()
{
  result = qword_1EC5FD650;
  if (!qword_1EC5FD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD650);
  }

  return result;
}

unint64_t sub_1D0FF1DFC()
{
  result = qword_1EC5FD660;
  if (!qword_1EC5FD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD660);
  }

  return result;
}

unint64_t sub_1D0FF1E50()
{
  result = qword_1EC5FD668;
  if (!qword_1EC5FD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD668);
  }

  return result;
}

void sub_1D0FF1EA4(uint64_t a1)
{
  if (!qword_1EE06F2E0)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for ImageRepresentation();
    type metadata accessor for ColorRepresentation(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE06F2E0);
    }
  }
}

uint64_t sub_1D0FF1FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D0FF2034(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D0FF207C()
{
  result = qword_1EC5FD688;
  if (!qword_1EC5FD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD688);
  }

  return result;
}

uint64_t sub_1D0FF20D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s16HealthExperience28PromotionalTileConfigurationV4HeroO05ImageE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static ImageRepresentation.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if ((v12 & 1) == 0)
  {
    if (*v11 != *v13)
    {
      v14 = 1;
    }

    return (v14 & 1) == 0;
  }

  return (v14 & 1) != 0;
}

unint64_t sub_1D0FF21FC()
{
  result = qword_1EE06FE90;
  if (!qword_1EE06FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FE90);
  }

  return result;
}

unint64_t sub_1D0FF2250()
{
  result = qword_1EC5FD698;
  if (!qword_1EC5FD698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD698);
  }

  return result;
}

unint64_t sub_1D0FF22A4()
{
  result = qword_1EE06FD70;
  if (!qword_1EE06FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD70);
  }

  return result;
}

unint64_t sub_1D0FF22F8()
{
  result = qword_1EE06FD58;
  if (!qword_1EE06FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD58);
  }

  return result;
}

unint64_t sub_1D0FF234C()
{
  result = qword_1EE06FD40;
  if (!qword_1EE06FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD40);
  }

  return result;
}

unint64_t sub_1D0FF23C0()
{
  result = qword_1EE06FD88[0];
  if (!qword_1EE06FD88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE06FD88);
  }

  return result;
}

unint64_t sub_1D0FF2434()
{
  result = qword_1EE06FEA8;
  if (!qword_1EE06FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FEA8);
  }

  return result;
}

void sub_1D0FF2488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D0FF24F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D0FF25E4()
{
  result = qword_1EC5FD6D0;
  if (!qword_1EC5FD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD6D0);
  }

  return result;
}

void sub_1D0FF26F0()
{
  type metadata accessor for PromotionalTileConfiguration.Hero(319);
  if (v0 <= 0x3F)
  {
    sub_1D0F3FA28(319, &qword_1EE070E20);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D0FF2798()
{
  result = type metadata accessor for PromotionalTileConfiguration.Hero.WatchConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromotionalTileConfiguration.Hero.ImageConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D0FF2814()
{
  sub_1D0FF1EA4(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D0FF28A4()
{
  type metadata accessor for ImageRepresentation();
  if (v0 <= 0x3F)
  {
    sub_1D0F3FA28(319, &qword_1EE06F850);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
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

uint64_t sub_1D0FF294C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D0FF2994(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D0FF2A94()
{
  result = qword_1EC5FD6E8;
  if (!qword_1EC5FD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD6E8);
  }

  return result;
}

unint64_t sub_1D0FF2AEC()
{
  result = qword_1EC5FD6F0;
  if (!qword_1EC5FD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD6F0);
  }

  return result;
}

unint64_t sub_1D0FF2B44()
{
  result = qword_1EC5FD6F8;
  if (!qword_1EC5FD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD6F8);
  }

  return result;
}

unint64_t sub_1D0FF2B9C()
{
  result = qword_1EC5FD700;
  if (!qword_1EC5FD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD700);
  }

  return result;
}

unint64_t sub_1D0FF2BF4()
{
  result = qword_1EC5FD708;
  if (!qword_1EC5FD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD708);
  }

  return result;
}

unint64_t sub_1D0FF2C4C()
{
  result = qword_1EC5FD710;
  if (!qword_1EC5FD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD710);
  }

  return result;
}

unint64_t sub_1D0FF2CA4()
{
  result = qword_1EC5FD718;
  if (!qword_1EC5FD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD718);
  }

  return result;
}

unint64_t sub_1D0FF2CFC()
{
  result = qword_1EC5FD720;
  if (!qword_1EC5FD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD720);
  }

  return result;
}

unint64_t sub_1D0FF2D54()
{
  result = qword_1EC5FD728;
  if (!qword_1EC5FD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD728);
  }

  return result;
}

unint64_t sub_1D0FF2DAC()
{
  result = qword_1EC5FD730;
  if (!qword_1EC5FD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD730);
  }

  return result;
}

unint64_t sub_1D0FF2E04()
{
  result = qword_1EE06FE98;
  if (!qword_1EE06FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FE98);
  }

  return result;
}

unint64_t sub_1D0FF2E5C()
{
  result = qword_1EE06FEA0;
  if (!qword_1EE06FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FEA0);
  }

  return result;
}

unint64_t sub_1D0FF2EB4()
{
  result = qword_1EE06FD78;
  if (!qword_1EE06FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD78);
  }

  return result;
}

unint64_t sub_1D0FF2F0C()
{
  result = qword_1EE06FD80;
  if (!qword_1EE06FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD80);
  }

  return result;
}

unint64_t sub_1D0FF2F64()
{
  result = qword_1EE06FD30;
  if (!qword_1EE06FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD30);
  }

  return result;
}

unint64_t sub_1D0FF2FBC()
{
  result = qword_1EE06FD38;
  if (!qword_1EE06FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD38);
  }

  return result;
}

unint64_t sub_1D0FF3014()
{
  result = qword_1EE06FD48;
  if (!qword_1EE06FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD48);
  }

  return result;
}

unint64_t sub_1D0FF306C()
{
  result = qword_1EE06FD50;
  if (!qword_1EE06FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD50);
  }

  return result;
}

unint64_t sub_1D0FF30C4()
{
  result = qword_1EE06FD60;
  if (!qword_1EE06FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD60);
  }

  return result;
}

unint64_t sub_1D0FF311C()
{
  result = qword_1EE06FD68;
  if (!qword_1EE06FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FD68);
  }

  return result;
}

unint64_t sub_1D0FF3174()
{
  result = qword_1EC5FD738;
  if (!qword_1EC5FD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD738);
  }

  return result;
}

unint64_t sub_1D0FF31CC()
{
  result = qword_1EC5FD740;
  if (!qword_1EC5FD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD740);
  }

  return result;
}

unint64_t sub_1D0FF3224()
{
  result = qword_1EE06FE80;
  if (!qword_1EE06FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FE80);
  }

  return result;
}

unint64_t sub_1D0FF327C()
{
  result = qword_1EE06FE88;
  if (!qword_1EE06FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06FE88);
  }

  return result;
}

unint64_t sub_1D0FF32D4()
{
  result = qword_1EC5FD748;
  if (!qword_1EC5FD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD748);
  }

  return result;
}

unint64_t sub_1D0FF332C()
{
  result = qword_1EC5FD750;
  if (!qword_1EC5FD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD750);
  }

  return result;
}

unint64_t sub_1D0FF3384()
{
  result = qword_1EC5FD758;
  if (!qword_1EC5FD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD758);
  }

  return result;
}

unint64_t sub_1D0FF33DC()
{
  result = qword_1EC5FD760;
  if (!qword_1EC5FD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD760);
  }

  return result;
}

unint64_t sub_1D0FF3434()
{
  result = qword_1EC5FD768;
  if (!qword_1EC5FD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD768);
  }

  return result;
}

unint64_t sub_1D0FF348C()
{
  result = qword_1EC5FD770;
  if (!qword_1EC5FD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FD770);
  }

  return result;
}

uint64_t sub_1D0FF34E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6961746564 && a2 == 0xEB00000000726F6CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D0FF363C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6965486567616D69 && a2 == 0xEB00000000746867 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E496567616D69 && a2 == 0xEA00000000007465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D0FF3768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E77656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6769654877656976 && a2 == 0xEA00000000007468 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1003580 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D0FF3890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465646465626D65 && a2 == 0xED00006863746157;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2003134838 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D0FF39AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1003300 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869768040 && a2 == 0xE400000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C7469546B6E696CLL && a2 == 0xE900000000000065 || (sub_1D0FF6278() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D0FF6278();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_1D0FF3C10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D0FF3C70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D0FF3C10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}