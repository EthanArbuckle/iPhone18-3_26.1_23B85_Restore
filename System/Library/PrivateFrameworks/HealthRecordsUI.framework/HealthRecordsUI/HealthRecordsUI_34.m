uint64_t sub_1D1361ED8()
{
  sub_1D1363FAC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = [*(v0 + 16) originIdentifier];
  v5 = [v4 signedClinicalDataRecordIdentifier];

  if (v5)
  {
    sub_1D138D5CC();

    v6 = sub_1D138D5EC();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_1D1364574(v3, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v7 = *(v0 + 48);
    type metadata accessor for WalletIntegrationDataSource();
    swift_allocObject();
    v8 = v7;
    v9 = v0;
    v10 = sub_1D13858B8(v8);

    v11 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___walletIntegrationDataSource);
    *(v9 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___walletIntegrationDataSource) = v10;

    sub_1D102C404(v11);
  }

  else
  {
    v12 = sub_1D138D5EC();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_1D1364574(v3, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    return 0;
  }

  return v10;
}

uint64_t sub_1D13620E8()
{
  sub_1D1363FAC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = [*(v0 + 16) originIdentifier];
  v5 = [v4 signedClinicalDataRecordIdentifier];

  if (v5)
  {
    sub_1D138D5CC();

    v6 = sub_1D138D5EC();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_1D1364574(v3, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v7 = *(v0 + 24);
    v8 = *(v0 + 48);
    type metadata accessor for SignedClinicalDataStatusDataSource(0);
    v9 = swift_allocObject();
    *(v9 + qword_1EC60A6A8) = 0;
    *(v9 + qword_1EC60A698) = v7;
    *(v9 + qword_1EC60A6A0) = v8;
    v10 = v7;
    v11 = v8;
    return sub_1D138EA8C();
  }

  else
  {
    v13 = sub_1D138D5EC();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_1D1364574(v3, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    return 0;
  }
}

uint64_t sub_1D1362310()
{
  sub_1D1363FAC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = [*(v0 + 16) originIdentifier];
  v5 = [v4 signedClinicalDataRecordIdentifier];

  if (v5)
  {
    sub_1D138D5CC();

    v6 = sub_1D138D5EC();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_1D1364574(v3, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v7 = *(v0 + 16);
    v8 = sub_1D136086C();
    type metadata accessor for DeleteRecordDataSource();
    v9 = swift_allocObject();
    *(v9 + qword_1EC60E5A0) = 0;
    *(v9 + qword_1EC60E590) = v7;
    *(v9 + qword_1EC60E598) = v8;
    *(v9 + qword_1EC60E5A8) = 0;
    return sub_1D138EA8C();
  }

  else
  {
    v11 = sub_1D138D5EC();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    sub_1D1364574(v3, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    return 0;
  }
}

uint64_t sub_1D1362554@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D13642E4(0, &qword_1EC60EB40, &qword_1EC609A00, 0x1E69A3F00, MEMORY[0x1E695C028]);
  swift_allocObject();
  v7 = a1;
  v8 = a2;
  result = sub_1D138F73C();
  *a3 = result;
  return result;
}

void sub_1D1362618(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D11DD05C;
  *(v9 + 24) = v8;
  v11[4] = sub_1D1364660;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D11BAA58;
  v11[3] = &block_descriptor_69_1;
  v10 = _Block_copy(v11);

  [a3 fetchAccountForSource:a4 completion:v10];
  _Block_release(v10);
}

void sub_1D1362738(void *a1, id a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v9 = a1;
    a3(a1, 0);
    v5 = v9;
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v7 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a2 = 0;
      v6 = v7;
    }

    v8 = a2;
    a3(v6, 1);
    v5 = v6;
  }
}

uint64_t sub_1D1362820(void *a1)
{
  *(sub_1D13609A0() + qword_1EC60B5B0) = a1;
  v2 = a1;
  swift_unknownObjectRelease();
  sub_1D11396F4();

  result = sub_1D1360A80();
  if (result)
  {
    v4 = [v2 gateway];
    v5 = v4;
    if (v4)
    {
    }

    sub_1D126CD50(v5 == 0);
  }

  return result;
}

uint64_t sub_1D13628E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  sub_1D13642E4(0, &qword_1EC610108, &qword_1EC610110, 0x1E69A3FB8, MEMORY[0x1E695C028]);
  swift_allocObject();
  v11 = a1;

  result = sub_1D138F73C();
  *a5 = result;
  return result;
}

void sub_1D13629B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a4 + 16);
  v14 = swift_allocObject();
  v14[2] = sub_1D1364680;
  v14[3] = v12;
  v14[4] = a6;
  v17[4] = sub_1D136464C;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D11BAA58;
  v17[3] = &block_descriptor_57;
  v15 = _Block_copy(v17);

  v16 = v13;

  [a3 fetchSignedClinicalDataGroupBackingMedicalRecord:v16 options:a5 completion:v15];
  _Block_release(v15);
}

void sub_1D1362B00(void *a1, void *a2, void (*a3)(void *, void), uint64_t a4, void *a5)
{
  v9 = sub_1D138F0BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a1;
    a3(a1, 0);
    v13 = v33;
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v15 = objc_opt_self();
      v16 = sub_1D139012C();
      v14 = [v15 hk:0 error:v16 description:?];
    }

    v17 = a2;
    sub_1D138F06C();
    v18 = v14;
    v19 = sub_1D138F0AC();
    v20 = sub_1D13907FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      v35 = a5;
      *v21 = 136446466;
      swift_getMetatypeMetadata();
      v22 = sub_1D13901EC();
      v24 = sub_1D11DF718(v22, v23, &v34);
      v33 = a3;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v35 = v14;
      v26 = v14;
      sub_1D10FAA88(0, &qword_1EE06B690);
      v27 = sub_1D13901EC();
      v29 = sub_1D11DF718(v27, v28, &v34);

      *(v21 + 14) = v29;
      a3 = v33;
      _os_log_impl(&dword_1D101F000, v19, v20, "%{public}s: Failed to fetch SCD group with error: %{public}s", v21, 0x16u);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v30, -1, -1);
      MEMORY[0x1D38882F0](v21, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v31 = v14;
    a3(v14, 1);
  }
}

void sub_1D1362E30(void *a1)
{
  v2 = sub_1D1360910();
  if (v2)
  {
    v3 = *(v2 + qword_1EC6105A8);
    *(v2 + qword_1EC6105A8) = a1;
    v4 = a1;

    sub_1D1382BC4();
  }

  v5 = sub_1D13609A0();
  v6 = [a1 mainRecord];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 subject];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v5 + qword_1EC60B5D0);
  *(v5 + qword_1EC60B5D0) = v8;
  v10 = v8;

  sub_1D11396F4();

  if (sub_1D1360A80())
  {
    v11 = a1;
    sub_1D126CA94(a1);
  }

  v12 = type metadata accessor for SignedClinicalDataGroupContext();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_qrImage] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_group] = a1;
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  if (sub_1D1360958())
  {
    sub_1D10CDD14(v15);
  }

  v16 = [v14 mainRecord];
  sub_1D1362FE0(v16);
}

void sub_1D1362FE0(void *a1)
{
  v3 = *v1;
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23[0] = a1;
    if ([v23[0] shouldReverifySignature])
    {
      sub_1D138F06C();
      v8 = v23[0];

      v9 = sub_1D138F0AC();
      v10 = sub_1D139081C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v23[0] = swift_slowAlloc();
        v23[1] = v3;
        aBlock[0] = v23[0];
        *v11 = 136446466;
        swift_getMetatypeMetadata();
        v12 = sub_1D13901EC();
        v14 = sub_1D11DF718(v12, v13, aBlock);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2050;
        v15 = [v8 signatureStatus];

        *(v11 + 14) = v15;
        _os_log_impl(&dword_1D101F000, v9, v10, "%{public}s: Attempting to verify signature because it's currently %{public}ld", v11, 0x16u);
        v16 = v23[0];
        __swift_destroy_boxed_opaque_existential_1Tm(v23[0]);
        MEMORY[0x1D38882F0](v16, -1, -1);
        MEMORY[0x1D38882F0](v11, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
      v18 = sub_1D136086C();
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v8;
      aBlock[4] = sub_1D1363F84;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D1363B88;
      aBlock[3] = &block_descriptor_81;
      v21 = _Block_copy(aBlock);
      v22 = v8;

      [v18 reverifySignatureForRecord:v22 completion:v21];
      _Block_release(v21);
    }

    else
    {
      v17 = v23[0];
    }
  }
}

uint64_t sub_1D1363350(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v51 = a2;
  v52 = a5;
  v7 = sub_1D138FECC();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138FF0C();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D138F0BC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    if (a1)
    {
      sub_1D138F06C();

      v22 = sub_1D138F0AC();
      v23 = sub_1D139081C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v57 = v48;
        *v24 = 136446466;
        aBlock[0] = *v21;
        swift_getMetatypeMetadata();
        v25 = sub_1D13901EC();
        v49 = v7;
        v26 = v14;
        v28 = sub_1D11DF718(v25, v27, &v57);
        v50 = v13;
        v29 = v28;

        *(v24 + 4) = v29;
        *(v24 + 12) = 2050;
        v30 = v51;
        *(v24 + 14) = v51;
        _os_log_impl(&dword_1D101F000, v22, v23, "%{public}s: Re-verified signature, which is now %{public}ld", v24, 0x16u);
        v31 = v48;
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x1D38882F0](v31, -1, -1);
        MEMORY[0x1D38882F0](v24, -1, -1);

        (*(v26 + 8))(v19, v50);
        v7 = v49;
      }

      else
      {

        (*(v14 + 8))(v19, v13);
        v30 = v51;
      }

      [v52 _setSignatureStatus_];
      sub_1D106F934(0, &qword_1EE06B760);
      v46 = sub_1D1390A7C();
      aBlock[4] = sub_1D1363FA4;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10CBD3C;
      aBlock[3] = &block_descriptor_35_2;
      v47 = _Block_copy(aBlock);

      sub_1D138FEEC();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D136452C(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
      sub_1D1363FAC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D1080CD4();
      sub_1D139103C();
      MEMORY[0x1D3886400](0, v12, v9, v47);
      _Block_release(v47);

      (*(v55 + 8))(v9, v7);
      return (*(v53 + 8))(v12, v54);
    }

    else
    {
      sub_1D138F06C();

      v32 = a3;
      v33 = sub_1D138F0AC();
      v34 = sub_1D13907FC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v55 = v14;
        v36 = v35;
        v37 = swift_slowAlloc();
        v57 = v37;
        *v36 = 136446466;
        aBlock[0] = *v21;
        swift_getMetatypeMetadata();
        v38 = sub_1D13901EC();
        v50 = v13;
        v40 = sub_1D11DF718(v38, v39, &v57);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2082;
        aBlock[0] = a3;
        v41 = a3;
        sub_1D13640C4(0, &qword_1EE06B078, &qword_1EE06B690);
        sub_1D13916AC();
        v42 = HKSensitiveLogItem();
        swift_unknownObjectRelease();
        sub_1D139101C();
        swift_unknownObjectRelease();
        v43 = sub_1D13901EC();
        v45 = sub_1D11DF718(v43, v44, &v57);

        *(v36 + 14) = v45;
        _os_log_impl(&dword_1D101F000, v33, v34, "%{public}s: Failed to re-verify signature status with error: %{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v37, -1, -1);
        MEMORY[0x1D38882F0](v36, -1, -1);

        return (*(v55 + 8))(v17, v50);
      }

      else
      {

        return (*(v14 + 8))(v17, v13);
      }
    }
  }

  return result;
}

void sub_1D1363AA4(uint64_t a1)
{
  if (sub_1D1360910())
  {
    sub_1D1382BC4();
  }

  if (sub_1D1360958())
  {
    sub_1D10CEF18();
  }

  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_1EC608D80 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_1EC60DA30 object:a1];
}

void sub_1D1363B88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

id *sub_1D1363C10()
{

  sub_1D1312514(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider_presentationContext);

  sub_1D102C404(*(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___walletIntegrationDataSource));
  sub_1D102C404(*(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___signedClinicalDataStatusDataSource));

  sub_1D102C404(*(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___deleteRecordDataSource));
  return v0;
}

uint64_t sub_1D1363CB8()
{
  sub_1D1363C10();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicalRecordDetailDataSourceProvider()
{
  result = qword_1EC6100F0;
  if (!qword_1EC6100F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1363D64()
{
  result = type metadata accessor for PresentationContext(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1D1363E48(void *a1, void *a2, uint64_t a3)
{
  v3[7] = 0;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___signedClinicalDataStore) = 0;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___walletIntegrationDataSource) = 1;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___signedClinicalDataStatusDataSource) = 1;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___recordSourceDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider____lazy_storage___deleteRecordDataSource) = 1;
  v3[2] = a1;
  v3[3] = a2;
  v6 = a1;
  v7 = a2;
  v3[4] = [v7 healthRecordsStore];
  v8 = [v7 conceptStore];
  v3[5] = v8;
  v9 = type metadata accessor for MedicalRecordFormatter();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___HRMedicalRecordFormatter_store] = v8;
  *&v10[OBJC_IVAR___HRMedicalRecordFormatter_context] = 1;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = v8;
  v3[6] = objc_msgSendSuper2(&v13, sel_init);
  sub_1D13124B0(a3, v3 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordDetailDataSourceProvider_presentationContext);
  sub_1D1360BA4();
  sub_1D1312514(a3);
  return v3;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1363FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1364010()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D108077C;

  return sub_1D1388E3C();
}

void sub_1D13640C4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D10FAA88(255, a3);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1364124()
{
  if (!qword_1EC610100)
  {
    v0 = MEMORY[0x1E695C028];
    sub_1D13642E4(255, &qword_1EC610108, &qword_1EC610110, 0x1E69A3FB8, MEMORY[0x1E695C028]);
    sub_1D1364378(&qword_1EC610118, &qword_1EC610108, v0);
    v1 = sub_1D138F76C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC610100);
    }
  }
}

void sub_1D13641E8()
{
  if (!qword_1EC610120)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1D13642E4(255, &qword_1EC610128, &qword_1EC610110, 0x1E69A3FB8, MEMORY[0x1E695BED0]);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D1364378(&qword_1EC610130, &qword_1EC610128, v0);
    sub_1D10EDC58();
    v1 = sub_1D138F5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC610120);
    }
  }
}

void sub_1D13642E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = sub_1D10FAA88(255, &qword_1EE06B690);
    v10 = a5(a1, v8, v9, MEMORY[0x1E69E7288]);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D1364378(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D13642E4(255, a2, &qword_1EC610110, 0x1E69A3FB8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D13643D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D13642E4(255, a2, &qword_1EC609A00, 0x1E69A3F00, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1364428()
{
  if (!qword_1EC610138)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1D13642E4(255, &qword_1EC60EB68, &qword_1EC609A00, 0x1E69A3F00, MEMORY[0x1E695BED0]);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D13643D0(&qword_1EC60EB70, &qword_1EC60EB68, v0);
    sub_1D10EDC58();
    v1 = sub_1D138F5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC610138);
    }
  }
}

uint64_t sub_1D136452C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1364574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1363FAC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_44Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D136468C(uint64_t a1)
{
  v34 = *(a1 + 16);
  if (!v34)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v33 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *(v33 + v1);
    if (qword_1EE069F78 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = off_1EE069F80;
    if (*(off_1EE069F80 + 2) && (v6 = sub_1D12A2F78(v4), (v7 & 1) != 0))
    {
      v8 = v5[7] + 72 * v6;
      v37 = *v8;
      v10 = *(v8 + 32);
      v9 = *(v8 + 48);
      v11 = *(v8 + 64);
      v38 = *(v8 + 16);
      v39 = v10;
      v41 = v11;
      v40 = v9;
      swift_endAccess();
      v44 = v39;
      v45 = v40;
      v46 = v41;
      v42 = v37;
      v43 = v38;
      sub_1D1082914(&v37, v36);
    }

    else
    {
      swift_endAccess();
      result = [objc_opt_self() unknownRecordCategory];
      if (!result)
      {
        goto LABEL_46;
      }

      sub_1D123E1C4(result, &v42);
    }

    v39 = v44;
    v40 = v45;
    v41 = v46;
    v37 = v42;
    v38 = v43;
    v12 = *(&v45 + 1);

    sub_1D1080D98(&v37);
    v13 = v12 >> 62;
    if (v12 >> 62)
    {
      v14 = sub_1D13910DC();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v2 >> 62;
    if (v2 >> 62)
    {
      v31 = sub_1D13910DC();
      v17 = v31 + v14;
      if (__OFADD__(v31, v14))
      {
LABEL_39:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v15)
      {
        v18 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_21:
      sub_1D13910DC();
      goto LABEL_22;
    }

    if (v15)
    {
      goto LABEL_21;
    }

LABEL_22:
    result = sub_1D139122C();
    v2 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v13)
    {
      break;
    }

    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (((v20 >> 1) - v19) < v14)
    {
      goto LABEL_43;
    }

    v35 = v2;
    v47 = v1;
    v23 = v18 + 8 * v19 + 32;
    v32 = v18;
    if (v13)
    {
      if (v21 < 1)
      {
        goto LABEL_45;
      }

      sub_1D10A9A3C();
      sub_1D1366ACC(&unk_1EC60A140, sub_1D10A9A3C);
      for (i = 0; i != v21; ++i)
      {
        v25 = sub_1D1112FB8(v36, i, v12);
        v27 = *v26;
        (v25)(v36, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      sub_1D106F934(0, &qword_1EE06A630);
      swift_arrayInitWithCopy();
    }

    v2 = v35;
    v1 = v47;
    if (v14 >= 1)
    {
      v28 = *(v32 + 16);
      v29 = __OFADD__(v28, v14);
      v30 = v28 + v14;
      if (v29)
      {
        goto LABEL_44;
      }

      *(v32 + 16) = v30;
    }

LABEL_4:
    if (++v1 == v34)
    {
      return v2;
    }
  }

  v22 = v18;
  result = sub_1D13910DC();
  v18 = v22;
  v21 = result;
  if (result)
  {
    goto LABEL_27;
  }

LABEL_3:

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void *RecordKindsResultWrapper.upToAndIncludingAnchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_1D1364AC0()
{
  result = sub_1D1364AE0();
  qword_1EE069EB8 = result;
  return result;
}

uint64_t sub_1D1364AE0()
{
  if (qword_1EE06A180 != -1)
  {
    swift_once();
  }

  v17 = off_1EE06B4C8;
  v0 = *(off_1EE06B4C8 + 2);
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE069F78 == -1 || (result = swift_once(), v17[2]))
  {
    v1 = 0;
    v2 = v0 - 1;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = *(v17 + v1 + 32);
      swift_beginAccess();
      v5 = off_1EE069F80;
      if (*(off_1EE069F80 + 2) && (v6 = sub_1D12A2F78(v4), (v7 & 1) != 0))
      {
        v8 = v5[7] + 72 * v6;
        v25 = *v8;
        v10 = *(v8 + 32);
        v9 = *(v8 + 48);
        v11 = *(v8 + 64);
        v26 = *(v8 + 16);
        v27 = v10;
        v29 = v11;
        v28 = v9;
        swift_endAccess();
        v32 = v27;
        v33 = v28;
        v34 = v29;
        v30 = v25;
        v31 = v26;
        sub_1D1082914(&v25, v23);
      }

      else
      {
        swift_endAccess();
        result = [objc_opt_self() unknownRecordCategory];
        if (!result)
        {
          goto LABEL_40;
        }

        sub_1D123E1C4(result, &v30);
      }

      v27 = v32;
      v28 = v33;
      v29 = v34;
      v25 = v30;
      v26 = v31;
      result = [objc_opt_self() unknownRecordCategory];
      if (!result)
      {
        goto LABEL_39;
      }

      sub_1D123E1C4(result, v23);
      v18 = v23[0];
      v19 = v23[1];
      v20 = v23[2];
      v21 = v23[3];
      v22 = v24;
      if (v25 != LOBYTE(v23[0]))
      {
        break;
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      if ((sub_1D1390D8C() & 1) == 0)
      {
        break;
      }

      if (*(&v26 + 1))
      {
        if (!*(&v19 + 1) || v26 != v19 && (sub_1D139162C() & 1) == 0)
        {
          break;
        }
      }

      else if (*(&v19 + 1))
      {
        break;
      }

      if (v27 != v20 && (sub_1D139162C() & 1) == 0 || (sub_1D1335054(v28, v21) & 1) == 0 || (sub_1D1335054(*(&v28 + 1), *(&v21 + 1)) & 1) == 0)
      {
        break;
      }

      v13 = sub_1D1390D8C();
      sub_1D1080D98(&v18);
      result = sub_1D1080D98(&v25);
      if ((v13 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_32:
      if (v2 == v1)
      {
        return v3;
      }

      if (++v1 >= v17[2])
      {
        goto LABEL_38;
      }
    }

    sub_1D1080D98(&v18);
    sub_1D1080D98(&v25);
LABEL_27:
    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1D10F9B3C(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
    }

    v16 = *(v3 + 16);
    v15 = *(v3 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1D10F9B3C((v15 > 1), v16 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v16 + 1;
    *(v3 + v16 + 32) = v14;
    goto LABEL_32;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t static RecordKindDataProvider.supportedDisplayCategoryKinds.getter()
{
  if (qword_1EE069EB0 != -1)
  {
    swift_once();
  }
}

uint64_t RecordKindDataProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RecordKindDataProvider.init(healthStore:)(a1);
  return v2;
}

uint64_t RecordKindDataProvider.init(healthStore:)(uint64_t a1)
{
  v11 = a1;
  v10 = sub_1D1390A6C();
  v2 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D106F934(0, &qword_1EE06B760);
  sub_1D138FEEC();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D1366ACC(&qword_1EE06B770, MEMORY[0x1E69E8030]);
  sub_1D1365334(0, &qword_1EE06B7A8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D1220F04();
  sub_1D139103C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v10);
  v7 = sub_1D1390ABC();
  *(v1 + 16) = v11;
  *(v1 + 24) = v7;
  return v1;
}

uint64_t sub_1D13651CC(uint64_t a1, uint64_t a2)
{
  sub_1D1365334(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1D13905DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a1;
  v9[6] = a2;

  sub_1D107877C(0, 0, v6, &unk_1D13B36D8, v9);
}

void sub_1D1365334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1365398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D13653BC, 0, 0);
}

uint64_t sub_1D13653BC()
{
  v8 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v0[15] = MEMORY[0x1E69E7CC0];

    return MEMORY[0x1EEE6DFA0](sub_1D13654DC, 0, 0);
  }

  else
  {
    v2 = v0[17];
    v5 = [objc_opt_self() hk:0 error:0 userInfo:?];
    v6 = 0;
    v7 = 1;
    v2(&v5);
    sub_1D13663F4(v5, v6, v7);
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D13654DC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_1D136557C;
  v2 = swift_continuation_init();
  sub_1D136590C(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D136557C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1D13657A8;
  }

  else
  {
    v4 = v1[14];
    v1[21] = v1[13];
    v1[22] = v4;
    v3 = sub_1D13656A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D13656A0()
{
  v12 = v0;
  v1 = v0[22];
  v2 = v0[17];

  sub_1D1122914(v3);
  v4 = v0[15];
  v5 = v1;
  v6 = sub_1D1366440(v4);

  v10[0] = v6;
  v10[1] = v1;
  v11 = 0;

  v7 = v5;
  v2(v10);

  swift_bridgeObjectRelease_n();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D13657A8()
{
  v8 = v0;
  v1 = v0[20];
  v2 = v0[17];

  v6[0] = v1;
  v6[1] = 0;
  v7 = 1;
  v3 = v1;
  v2(v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1365844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D10819BC;

  return sub_1D1365398(a1, v4, v5, v6, v7, v8);
}

void sub_1D136590C(uint64_t a1, uint64_t a2)
{
  sub_1D1366804();
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E810;
  sub_1D139016C();
  v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v6 = sub_1D139012C();

  v7 = [v5 initWithKey:v6 ascending:0];

  *(v4 + 32) = v7;
  sub_1D10A5C9C(0, &qword_1EE06B560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E700;
  *(v8 + 32) = sub_1D139016C();
  *(v8 + 40) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = objc_allocWithZone(MEMORY[0x1E696C3B8]);
  sub_1D106F934(0, &qword_1EE06A630);
  v12 = sub_1D139044C();

  sub_1D106F934(0, &qword_1EE06B578);
  v13 = sub_1D139044C();

  v14 = sub_1D139044C();

  aBlock[4] = sub_1D1366AAC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10FD688;
  aBlock[3] = &block_descriptor_82;
  v15 = _Block_copy(aBlock);
  v16 = [v11 initWithQueryDescriptors:v12 sortDescriptors:v13 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:v14 limit:0 resultsHandler:v15];

  _Block_release(v15);

  [*(a2 + 16) executeQuery_];
}

uint64_t sub_1D1365BB4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, unint64_t a5)
{
  sub_1D1365334(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for CategoryRecordKind();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - v17;
  if (a2)
  {
    v54 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
    {
      v47 = a3;
      v48 = a4;
      v49 = a5;
      if (!i)
      {
        break;
      }

      a3 = 0;
      v56 = a2 & 0xC000000000000001;
      v20 = MEMORY[0x1E69E7CC0];
      a4 = v54;
      v55 = i;
      v50 = v18;
      v51 = a2;
      while (1)
      {
        if (v56)
        {
          v21 = MEMORY[0x1D3886B70](a3, a2, v16);
        }

        else
        {
          if (a3 >= a4[2])
          {
            goto LABEL_31;
          }

          v21 = *(a2 + 8 * a3 + 32);
        }

        v22 = v21;
        v23 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          break;
        }

        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v24;
          v26 = v11;
          v27 = [v24 displayNameForGroupByConcept];
          v28 = sub_1D139016C();
          v58 = v29;
          v59 = v28;

          HKMedicalRecord.categoryKind.getter(&v60);
          v57 = v60;
          v30 = [v25 primaryConcept];
          v31 = [v30 groupByConcept];

          v32 = [v31 identifier];
          v33 = [v32 rawIdentifier];

          v34 = [v25 meaningfulDate];
          if (v34)
          {
            v35 = v34;
            sub_1D138D52C();

            v36 = 0;
            v22 = v35;
          }

          else
          {
            v36 = 1;
          }

          v37 = sub_1D138D57C();
          (*(*(v37 - 8) + 56))(v26, v36, 1, v37);
          *v14 = v57;
          v38 = v58;
          v39 = v59;
          *(v14 + 1) = v33;
          *(v14 + 2) = v39;
          *(v14 + 3) = v38;
          sub_1D112A184(v26, &v14[*(v53 + 28)]);
          v18 = v50;
          sub_1D13667A0(v14, v50);
          v11 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1D10F9DE8(0, v20[2] + 1, 1, v20);
          }

          a2 = v51;
          a5 = v20[2];
          v40 = v20[3];
          if (a5 >= v40 >> 1)
          {
            v20 = sub_1D10F9DE8(v40 > 1, a5 + 1, 1, v20);
          }

          v20[2] = a5 + 1;
          sub_1D13667A0(v18, v20 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * a5);
          a4 = v54;
        }

        else
        {
        }

        ++a3;
        if (v23 == v55)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_28:
    a4 = v48;
    a5 = v49;
    a3 = v47;
    if (v48)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v20 = 0;
    if (a4)
    {
LABEL_29:
      v45 = a4;

      sub_1D10922EC();
      swift_allocError();
      *v46 = a4;
      return swift_continuation_throwingResumeWithError();
    }
  }

  if (v20)
  {
    v41 = v20;
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v42 = [a3 upToAndIncludingAnchor];
  v43 = *(*(a5 + 64) + 40);
  *v43 = v41;
  v43[1] = v42;
  return swift_continuation_throwingResume();
}

uint64_t RecordKindDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D13660E4(uint64_t a1, uint64_t a2)
{
  sub_1D1365334(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1D13905DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a1;
  v9[6] = a2;

  sub_1D107877C(0, 0, v6, &unk_1D13B37A8, v9);
}

uint64_t objectdestroy_2Tm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D136632C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D108077C;

  return sub_1D1365398(a1, v4, v5, v6, v7, v8);
}

void sub_1D13663F4(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_1D1366440(uint64_t a1)
{
  v2 = type metadata accessor for CategoryRecordKind() - 8;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v35 - v7;
  v8 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v10 = *(v6 + 80);
  v38 = v10;
  v11 = (v10 + 32) & ~v10;
  v12 = *(v6 + 72);
  v13 = a1 + v11;
  v36 = xmmword_1D139E700;
  v39 = v4;
  v37 = v11;
  while (1)
  {
    v15 = v40;
    sub_1D136673C(v13, v40);
    v16 = *v15;
    v18 = sub_1D12A2F78(v16);
    v19 = v8[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      sub_1D11805C0(v21, 1);
      v8 = v41;
      v23 = sub_1D12A2F78(v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {
      v25 = v8[7];
      sub_1D13667A0(v40, v4);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_1D10F9DE8(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_1D10F9DE8(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v26[2] = v29 + 1;
      v11 = v37;
      v14 = v26 + v37 + v29 * v12;
      v4 = v39;
      sub_1D13667A0(v39, v14);
    }

    else
    {
      sub_1D1365334(0, &qword_1EC60ACD8, type metadata accessor for CategoryRecordKind, MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_1D13667A0(v40, v30 + v11);
      v8[(v18 >> 6) + 8] |= 1 << v18;
      *(v8[6] + v18) = v16;
      *(v8[7] + 8 * v18) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
    }

    v13 += v12;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D136673C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryRecordKind();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D13667A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryRecordKind();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1366804()
{
  sub_1D10A5C9C(0, &qword_1EE06B560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  *(inited + 32) = sub_1D139016C();
  v1 = inited + 32;
  *(inited + 40) = v2;
  *(inited + 48) = sub_1D139016C();
  *(inited + 56) = v3;
  v21 = inited;
  if (qword_1EE069EB0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v4 = sub_1D136468C(qword_1EE069EB8);
    v5 = v4;
    v23 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      break;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_4:
    v7 = 0;
    v19[5] = v1;
    v20 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v8 = MEMORY[0x1D3886B70](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v1 = v6;
      v11 = [v8 sampleType];
      v12 = [v11 identifier];

      v13 = sub_1D139016C();
      v15 = v14;

      v22[0] = v13;
      v22[1] = v15;
      MEMORY[0x1EEE9AC00](v16);
      v19[2] = v22;
      LOBYTE(v13) = sub_1D10F1D44(sub_1D10EDCD0, v19, v21);

      if (v13)
      {
      }

      else
      {
        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
      }

      v6 = v1;
      ++v7;
      if (v10 == v1)
      {
        v17 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  v6 = sub_1D13910DC();
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_19:
  v17 = MEMORY[0x1E69E7CC0];
LABEL_20:
  swift_setDeallocating();
  swift_arrayDestroy();

  return v17;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1366ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1366B14()
{
  sub_1D10F27F4(v0 + OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_persistedAccountID);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t AccountOnboardingSession.sourceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___WDClinicalAccountOnboardingSession_sourceIdentifier);

  return v1;
}

id AccountOnboardingSession.__allocating_init(context:options:sourceIdentifier:profile:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___WDClinicalAccountOnboardingSession_context] = a1;
  *&v13[OBJC_IVAR___WDClinicalAccountOnboardingSession_options] = a2;
  v14 = &v13[OBJC_IVAR___WDClinicalAccountOnboardingSession_sourceIdentifier];
  *v14 = a3;
  *(v14 + 1) = a4;
  *&v13[OBJC_IVAR___WDClinicalAccountOnboardingSession_profile] = a5;
  type metadata accessor for AccountOnboardingSession.StateManager();
  v15 = swift_allocObject();
  v16 = a5;
  swift_defaultActor_initialize();
  v17 = OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_persistedAccountID;
  v18 = sub_1D138D5EC();
  (*(*(v18 - 8) + 56))(v15 + v17, 1, 1, v18);
  *(v15 + OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_shouldDismissOnboardingTileViewController) = 0;
  *&v13[OBJC_IVAR___WDClinicalAccountOnboardingSession_stateManager] = v15;
  *&v13[OBJC_IVAR___WDClinicalAccountOnboardingSession_analyticsManager] = a6;
  v19 = objc_allocWithZone(MEMORY[0x1E69A3F78]);
  v20 = a6;
  v21 = [v19 init];
  *&v13[OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient] = v21;
  v24.receiver = v13;
  v24.super_class = v6;
  v22 = objc_msgSendSuper2(&v24, sel_init);

  return v22;
}

id AccountOnboardingSession.init(context:options:sourceIdentifier:profile:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = sub_1D1369698(a1, a2, a3, a4, a5, a6);

  return v8;
}

void sub_1D1366EA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient);
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4 || a1 == 5)
    {
      goto LABEL_11;
    }
  }

  else if (a1 <= 1 || a1 == 2)
  {
LABEL_11:
    v3 = sub_1D139012C();

    sub_1D11496D4(*(v1 + OBJC_IVAR___WDClinicalAccountOnboardingSession_context));
    v4 = sub_1D139012C();

    v6[4] = nullsub_1;
    v6[5] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1D112A218;
    v6[3] = &block_descriptor_83;
    v5 = _Block_copy(v6);
    [v2 submitOnboardingAnalyticsForStepIdentifier:v3 context:v4 completion:v5];
    _Block_release(v5);

    return;
  }

  sub_1D139169C();
  __break(1u);
}

uint64_t sub_1D136710C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1D13905DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v4;
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;
  *(v13 + 64) = a4;
  v14 = v4;
  v15 = a1;

  sub_1D107877C(0, 0, v11, &unk_1D13ADBC0, v13);
}

uint64_t sub_1D1367254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1D1367304;

  return sub_1D1367724(a5, a6);
}

uint64_t sub_1D1367304(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1D13674B4;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1D136742C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D136742C()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D13674B4()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_1D13676B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D138D2AC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1D1367724(uint64_t a1, char a2)
{
  *(v3 + 272) = a2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  sub_1D10C74B8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  sub_1D10C74B8(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  *(v3 + 208) = swift_task_alloc();
  v4 = sub_1D138D5EC();
  *(v3 + 216) = v4;
  *(v3 + 224) = *(v4 - 8);
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1367884, 0, 0);
}

uint64_t sub_1D1367884()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 176);
  v3 = [*(*(v0 + 184) + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) clinicalAccountStore];
  *(v0 + 240) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1D13679DC;
  v4 = swift_continuation_init();
  sub_1D1256A40();
  *(v0 + 136) = v5;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D1121DF8;
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v4;
  [v3 persistEphemeralAccount:v2 triggerIngestion:(v1 & 1) == 0 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D13679DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1D1367EB8;
  }

  else
  {
    v2 = sub_1D1367AEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1367AEC()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[21];
  v0[32] = v3;

  v4 = *(v2 + OBJC_IVAR___WDClinicalAccountOnboardingSession_stateManager);
  v0[33] = v4;
  v5 = [v3 identifier];
  sub_1D138D5CC();

  return MEMORY[0x1EEE6DFA0](sub_1D1367BA0, v4, 0);
}

uint64_t sub_1D1367BA0()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[27];
  (*(v2 + 32))(v3, v0[29], v4);
  (*(v2 + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_persistedAccountID;
  swift_beginAccess();
  sub_1D1369804(v3, v1 + v5);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1D1367C80, 0, 0);
}

uint64_t sub_1D1367C80()
{
  v1 = [*(v0 + 256) gateway];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 patientPortalURL];

    if (v3)
    {
      sub_1D138D33C();

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = sub_1D138D39C();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, v4, 1, v10);
    sub_1D10C7940(v9, v8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    v7 = 0;
    if (v12 != 1)
    {
      v13 = *(v0 + 200);
      v7 = sub_1D138D30C();
      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    v5 = *(v0 + 200);
    v6 = sub_1D138D39C();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = 0;
  }

  sub_1D122101C(6, *(*(v0 + 184) + OBJC_IVAR___WDClinicalAccountOnboardingSession_context), v7);

  v14 = *(v0 + 8);
  v15 = *(v0 + 256);

  return v14(v15);
}

uint64_t sub_1D1367EB8()
{
  v1 = *(v0 + 240);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1367F64(uint64_t a1)
{
  v3 = sub_1D138D5EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D13905DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v1;
  (*(v4 + 32))(&v11[v10], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v12 = v1;
  sub_1D107877C(0, 0, v8, &unk_1D13B37D0, v11);
}

uint64_t sub_1D136814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1D10C74B8(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D13681F8, 0, 0);
}

uint64_t sub_1D13681F8()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR___WDClinicalAccountOnboardingSession_stateManager);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1368224, v1, 0);
}

uint64_t sub_1D1368224()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_persistedAccountID;
  swift_beginAccess();
  sub_1D1369804(v1, v2 + v6);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1368590()
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D13905DC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1D107877C(0, 0, v3, &unk_1D13AEC40, v5);
}

uint64_t sub_1D13686C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___WDClinicalAccountOnboardingSession_stateManager);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D13686F0, v1, 0);
}

uint64_t sub_1D1368830(void *a1, char a2)
{
  sub_1D10C74B8(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1D13905DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v2;
  *(v9 + 40) = a2;
  *(v9 + 48) = a1;
  v10 = a1;
  v11 = v2;
  sub_1D107877C(0, 0, v7, &unk_1D13B37F0, v9);
}

uint64_t sub_1D1368960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1D108077C;

  return sub_1D1368B40(a5, a6);
}

uint64_t sub_1D1368B40(char a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 136) = a1;
  sub_1D10C74B8(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = sub_1D13905AC();
  *(v3 + 72) = sub_1D139059C();
  v5 = sub_1D139055C();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1368C28, v5, v4);
}

uint64_t sub_1D1368C28()
{
  v1 = v0[6] + OBJC_IVAR___WDClinicalAccountOnboardingSession_sourceIdentifier;
  v2 = *(v1 + 8);
  if (v2)
  {
    _s15HealthRecordsUI0aB10ViewRouterV12navigateBack2toySS_tFZ_0(*v1, v2);
  }

  v3 = v0[5];
  v4 = v0[6];
  if (v3)
  {
    v5 = *(v4 + OBJC_IVAR___WDClinicalAccountOnboardingSession_stateManager);
    v0[12] = v5;
    v6 = v3;
    v7 = sub_1D1368D88;
    v8 = v5;
    goto LABEL_5;
  }

  if (*(v4 + OBJC_IVAR___WDClinicalAccountOnboardingSession_context) == 2)
  {
    v7 = [objc_opt_self() sharedBehavior];
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v7, v8, v9);
    }

    v10 = v7;
    v11 = [v7 isiPad];

    if (v11)
    {
      v8 = *(v0[6] + OBJC_IVAR___WDClinicalAccountOnboardingSession_stateManager);
      v0[13] = v8;
      v7 = sub_1D1368EEC;
LABEL_5:
      v9 = 0;

      return MEMORY[0x1EEE6DFA0](v7, v8, v9);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1368D88()
{
  v1 = *(v0 + 88);
  *(v0 + 137) = *(*(v0 + 96) + OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_shouldDismissOnboardingTileViewController);
  return MEMORY[0x1EEE6DFA0](sub_1D1368DB4, *(v0 + 80), v1);
}

uint64_t sub_1D1368DB4()
{
  if (*(v0 + 137) == 1)
  {
    [*(v0 + 40) dismissViewControllerAnimated:*(v0 + 136) completion:0];
  }

  if (*(*(v0 + 48) + OBJC_IVAR___WDClinicalAccountOnboardingSession_context) == 2)
  {
    v1 = [objc_opt_self() sharedBehavior];
    if (!v1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

    v4 = v1;
    v5 = [v1 isiPad];

    if (v5)
    {
      v2 = *(*(v0 + 48) + OBJC_IVAR___WDClinicalAccountOnboardingSession_stateManager);
      *(v0 + 104) = v2;
      v1 = sub_1D1368EEC;
      v3 = 0;

      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1368EEC()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_persistedAccountID;
  swift_beginAccess();
  sub_1D1127E2C(v1 + v3, v2);
  v4 = v0[10];
  v5 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1D1368F80, v4, v5);
}

uint64_t sub_1D1368F80()
{
  v1 = v0[7];
  v2 = sub_1D138D5EC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

    sub_1D10F27F4(v1);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1D10F27F4(v1);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_1D13690B0;

    return MEMORY[0x1EEE6DA60](500000000);
  }
}

uint64_t sub_1D13690B0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = v2[10];
    v5 = v2[11];

    return MEMORY[0x1EEE6DFA0](sub_1D1369454, v4, v5);
  }

  else
  {
    v2[15] = sub_1D139059C();
    v6 = swift_task_alloc();
    v2[16] = v6;
    *v6 = v3;
    v6[1] = sub_1D136924C;

    return sub_1D130871C(0xD000000000000022, 0x80000001D13C3FC0);
  }
}

uint64_t sub_1D136924C()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D1369388, v1, v0);
}

uint64_t sub_1D1369388()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D13693EC, v1, v2);
}

uint64_t sub_1D13693EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1369454()
{
  *(v0 + 120) = sub_1D139059C();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1D136924C;

  return sub_1D130871C(0xD000000000000022, 0x80000001D13C3FC0);
}

id AccountOnboardingSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountOnboardingSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountOnboardingSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountOnboardingSession.StateManager()
{
  result = qword_1EC6101A0;
  if (!qword_1EC6101A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D1369698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  *&v6[OBJC_IVAR___WDClinicalAccountOnboardingSession_context] = a1;
  *&v6[OBJC_IVAR___WDClinicalAccountOnboardingSession_options] = a2;
  v9 = &v6[OBJC_IVAR___WDClinicalAccountOnboardingSession_sourceIdentifier];
  *v9 = a3;
  *(v9 + 1) = a4;
  *&v6[OBJC_IVAR___WDClinicalAccountOnboardingSession_profile] = a5;
  type metadata accessor for AccountOnboardingSession.StateManager();
  v10 = swift_allocObject();
  v11 = a5;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_persistedAccountID;
  v13 = sub_1D138D5EC();
  (*(*(v13 - 8) + 56))(v10 + v12, 1, 1, v13);
  *(v10 + OBJC_IVAR____TtCC15HealthRecordsUI24AccountOnboardingSessionP33_4967B47108071FD86EC67D018158994912StateManager_shouldDismissOnboardingTileViewController) = 0;
  *&v6[OBJC_IVAR___WDClinicalAccountOnboardingSession_stateManager] = v10;
  *&v6[OBJC_IVAR___WDClinicalAccountOnboardingSession_analyticsManager] = a6;
  v14 = objc_allocWithZone(MEMORY[0x1E69A3F78]);
  v15 = a6;
  v16 = [v14 init];
  *&v6[OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient] = v16;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for AccountOnboardingSession();
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1369804(uint64_t a1, uint64_t a2)
{
  sub_1D10C74B8(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1369884(uint64_t a1)
{
  v4 = *(sub_1D138D5EC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D10819BC;

  return sub_1D136814C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D136997C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D10819BC;

  return sub_1D1368960(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of AccountOnboardingSession.persistEphemeralAccount(_:fromSharing:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D1369CA0;

  return v9(a1, a2);
}

uint64_t sub_1D1369CA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AccountOnboardingSession.onboardingWillDisappear(animated:onboardingTileNavigationController:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D10819BC;

  return v9(a1, a2);
}

void sub_1D1369F78()
{
  sub_1D10C74B8(319, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

id sub_1D136A1A4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_1D136A204();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D136A204()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setFont_];
  [v2 setNumberOfLines_];
  v3 = v1;
  [v2 setTextColor_];

  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v5 = [v0 labelColor];
  [v2 setTextColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

id sub_1D136A350()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___spinnerView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___spinnerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___spinnerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setColor_];

    [v4 startAnimating];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1D136A418()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_item;
  swift_beginAccess();
  sub_1D10A71C0(&v0[v1], v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for ButtonItem();
    if (swift_dynamicCast())
    {
      v2 = *(v17 + 40);
      v3 = sub_1D136A1A4();
      v4 = v3;
      if (v2)
      {
        [v3 setAttributedText_];
      }

      else
      {
        if (*(v17 + 32))
        {

          v5 = sub_1D139012C();
        }

        else
        {
          v5 = 0;
        }

        [v4 setText_];

        v4 = v5;
      }

      v6 = sub_1D136A1A4();
      if (*(v17 + 16))
      {
        v7 = &selRef_tintColor;
        v8 = v0;
      }

      else
      {
        v8 = objc_opt_self();
        v7 = &selRef_secondaryLabelColor;
      }

      v9 = [v8 *v7];
      [v6 setTextColor_];

      sub_1D1390B8C();
      v10 = sub_1D136A1A4();
      v11 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor;
      v12 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor];
      v13 = v12;
      if (!v12)
      {
        v13 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel] textColor];
      }

      v14 = v12;
      [v10 setTextColor_];

      v15 = *&v0[v11];
      *&v0[v11] = 0;

      if (*(v17 + 56))
      {

        v16 = sub_1D139012C();
      }

      else
      {
        v16 = 0;
      }

      [v0 setAccessibilityIdentifier_];
    }
  }

  else
  {
    sub_1D10A72B8(v18);
  }
}

id sub_1D136A66C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___spinnerView] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_titleLabelLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor] = 0;
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_item];
  v10 = type metadata accessor for ButtonCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = v4;
  v15.super_class = v10;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_1D136A1A4();
  [v12 addSubview_];

  sub_1D136A844();
  return v11;
}

void sub_1D136A844()
{
  v1 = sub_1D136A1A4();
  v2 = [v1 trailingAnchor];

  v3 = [v0 contentView];
  v4 = [v3 trailingAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:-16.0];
  [v5 setActive_];

  v6 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel;
  v7 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel] firstBaselineAnchor];
  v8 = [v0 contentView];
  v9 = [v8 topAnchor];

  v10 = [*&v0[v6] font];
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  [v10 _scaledValueForValue_];
  v13 = v12;

  v14 = [v7 constraintEqualToAnchor:v9 constant:v13];
  [v14 setActive_];

  v15 = [*&v0[v6] lastBaselineAnchor];
  v16 = [v0 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [*&v0[v6] font];
  if (!v18)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v19 = v18;
  [v18 _scaledValueForValue_];
  v21 = v20;

  v22 = [v15 constraintEqualToAnchor:v17 constant:-v21];
  [v22 setActive_];

  sub_1D136AAC4();
}

void sub_1D136AAC4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_titleLabelLeadingConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_titleLabelLeadingConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = sub_1D136A1A4();
  v4 = [v3 leadingAnchor];

  v5 = [v0 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  v8 = *&v0[v1];
  *&v0[v1] = v7;
  v9 = v7;

  if (v9)
  {
    [v9 setActive_];
  }
}

void sub_1D136ABF4(char a1)
{
  sub_1D136B5A4(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v35 - v4;
  v6 = sub_1D138F16C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138F13C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v36 = v12;
    sub_1D136B5A4(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    v15 = *(sub_1D138F17C() - 8);
    v35[2] = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_1D139E700;
    v35[1] = sub_1D136A350();
    sub_1D10A42A4();
    v17 = &v9[*(v16 + 48)];
    v18 = *MEMORY[0x1E69DBF28];
    v19 = sub_1D138F0FC();
    (*(*(v19 - 8) + 104))(v9, v18, v19);
    *v17 = sub_1D10A69C4;
    v17[1] = 0;
    (*(v7 + 104))(v9, *MEMORY[0x1E69DBF60], v6);
    v20 = sub_1D138F10C();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    sub_1D138F12C();
    sub_1D138F0EC();
    (*(v11 + 8))(v14, v36);
    sub_1D1390B8C();
    v21 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor;
    v22 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor);
    v23 = v22;
    v24 = v22;
    if (!v22)
    {
      v25 = sub_1D136A1A4();
      v24 = [v25 textColor];

      v23 = *(v1 + v21);
    }

    *(v1 + v21) = v24;
    v26 = v22;

    v27 = sub_1D136A1A4();
    v28 = [objc_opt_self() tertiaryLabelColor];
    [v27 setTextColor_];
  }

  else
  {
    sub_1D1390B8C();
    v29 = sub_1D136A1A4();
    v30 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor;
    v31 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor);
    v32 = v31;
    if (!v31)
    {
      v32 = [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel) textColor];
    }

    v33 = v31;
    [v29 setTextColor_];

    v34 = *(v1 + v30);
    *(v1 + v30) = 0;
  }
}

id sub_1D136B0B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D136B18C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D136B1E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D136A418();
  return sub_1D10A72B8(a1);
}

void (*sub_1D136B250(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D136B2B4;
}

void sub_1D136B2B4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D136A418();
  }
}

uint64_t sub_1D136B2E8()
{
  v5 = sub_1D139184C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v4 = *(v0 + 40);
  sub_1D136B5A4(0, &qword_1EC60F370, sub_1D121D730, MEMORY[0x1E69E6720]);
  v1 = v4;
  v2 = sub_1D13901EC();
  MEMORY[0x1D3885C10](v2);

  return v5;
}

uint64_t sub_1D136B3C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D136B42C()
{
  type metadata accessor for ButtonCell();
  sub_1D136B560(&unk_1EC60F6F0, type metadata accessor for ButtonCell);
  return sub_1D138DECC();
}

uint64_t sub_1D136B4B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D136B560(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D136B5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D136B650()
{
  type metadata accessor for CategoryViewControllerManager();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  qword_1EC6101E0 = v0;
  return result;
}

uint64_t static CategoryViewControllerManager.shared.getter()
{
  if (qword_1EC608EA8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D136B6F0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [result navigationController];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 viewControllers];
  sub_1D106F934(0, &unk_1EC6099E0);
  v6 = sub_1D139045C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

  v7 = sub_1D13910DC();
  if (!v7)
  {
LABEL_41:

    return 0;
  }

LABEL_5:
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
  }

  else if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v6 + 8 * v9 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_48;
  }

  v10 = MEMORY[0x1D3886B70](v9, v6);
LABEL_10:
  v11 = v10;

  v6 = v4;
  v12 = sub_1D1390D8C();

  if ((v12 & 1) == 0)
  {
LABEL_38:

LABEL_39:
    return 0;
  }

  v13 = [v6 tabBarController];
  if (!v13)
  {
    goto LABEL_29;
  }

  v5 = v13;
  v14 = [v13 viewControllers];
  if (!v14)
  {
LABEL_28:

LABEL_29:
    while (1)
    {
      v26 = [v3 presentingViewController];
      if (!v26)
      {
        goto LABEL_38;
      }

      v5 = [v3 viewControllers];
      v4 = sub_1D139045C();

      if (v4 >> 62)
      {
LABEL_48:
        v27 = sub_1D13910DC();
        if (!v27)
        {
LABEL_49:

          goto LABEL_39;
        }
      }

      else
      {
        v27 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      v8 = __OFSUB__(v27, 1);
      v16 = v27 - 1;
      if (v8)
      {
        goto LABEL_53;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        goto LABEL_54;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v4 + 8 * v16 + 32);
        goto LABEL_37;
      }

      __break(1u);
LABEL_57:
      v21 = sub_1D13910DC();
      if (v21)
      {
        goto LABEL_20;
      }

LABEL_58:
    }
  }

  v15 = v14;
  v4 = sub_1D139045C();

  v16 = [v5 selectedIndex];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1D3886B70](v16, v4);
LABEL_17:
    v18 = v17;

    sub_1D106F934(0, &qword_1EE06B0C0);
    v19 = sub_1D1390D8C();

    if (v19)
    {
      v20 = [v3 viewControllers];
      v4 = sub_1D139045C();

      if (v4 >> 62)
      {
        goto LABEL_57;
      }

      v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_58;
      }

LABEL_20:
      v8 = __OFSUB__(v21, 1);
      result = v21 - 1;
      if (v8)
      {
        __break(1u);
      }

      else if ((v4 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v22 = *(v4 + 8 * result + 32);
LABEL_25:
          v23 = v22;

          v24 = v6;
          v25 = sub_1D1390D8C();

          if ((v25 & 1) == 0)
          {
            goto LABEL_29;
          }

          return 1;
        }

        __break(1u);
        return result;
      }

      v22 = MEMORY[0x1D3886B70](result, v4);
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v4 + 8 * v16 + 32);
    goto LABEL_17;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  v28 = MEMORY[0x1D3886B70](v16, v4);
LABEL_37:
  v29 = v28;

  v30 = sub_1D1390D8C();
  return v30 & 1;
}

BOOL sub_1D136BB40()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

uint64_t CategoryViewControllerManager.__deallocating_deinit()
{
  MEMORY[0x1D3888420](v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1D136BC54(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1D13910DC();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3886B70](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1D106F934(0, &unk_1EC6099E0);
    v8 = sub_1D1390D8C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1D136BD64(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(a2 + 32 + result) != a1)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D136BDAC(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x7265656E69676E45;
  }

  else
  {
    v5 = 0x647261646E617453;
  }

  if (a1)
  {
    v6 = 0xEB00000000676E69;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  while (1)
  {
    v7 = *(v4 + v3) ? 0x7265656E69676E45 : 0x647261646E617453;
    v8 = *(v4 + v3) ? 0xEB00000000676E69 : 0xE800000000000000;
    if (v7 == v5 && v8 == v6)
    {
      break;
    }

    v10 = sub_1D139162C();

    if (v10)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

void static Features.toggleMode(notify:)(char a1)
{
  if (qword_1EC608EB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D136BDAC(byte_1EC6101E8, byte_1F4D04B38);
  v3 = 0;
  if ((v4 & 1) != 0 || v2 > 0)
  {
    goto LABEL_7;
  }

  if (v2 >= -1)
  {
    v3 = byte_1F4D04B38[v2 + 33];
LABEL_7:
    v5 = v3;
    _s15HealthRecordsUI8FeaturesC7setMode_6notifyyAA013UserInterfaceF0O_SbtFZ_0(&v5, a1 & 1);
    return;
  }

  __break(1u);
}

void sub_1D136BF74()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F07C();

  v8 = sub_1D138F0AC();
  v9 = sub_1D139081C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v31[0] = v12;
    *v11 = 136446210;
    v32 = *v3;
    sub_1D136D660();
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, v31);
    v29 = v4;
    v16 = v15;

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D101F000, v8, v9, "Performing FeedItemAction: %%{public}%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    v17 = v11;
    v2 = v30;
    MEMORY[0x1D38882F0](v17, -1, -1);

    (*(v5 + 8))(v7, v29);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_1D106F934(0, &qword_1EC609D70);
  v18 = sub_1D139089C();
  if (qword_1EC608D98 != -1)
  {
    swift_once();
  }

  v19 = qword_1EC60DD28;
  sub_1D1238310();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v21 = v19;
  v31[0] = sub_1D139012C();
  sub_1D106F934(0, &qword_1EE06A510);
  sub_1D12367AC();
  sub_1D139116C();
  if (qword_1EC608DA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  LOBYTE(v32) = *(v3 + 16);
  sub_1D1236310();
  v22 = sub_1D138CEEC();
  if (v2)
  {

    sub_1D1116E48(inited + 32);
    swift_setDeallocating();
    sub_1D1238368();
    swift_arrayDestroy();
  }

  else
  {
    v24 = v22;
    v25 = v23;
    v26 = sub_1D138D3CC();
    sub_1D1083DAC(v24, v25);
    *(inited + 96) = sub_1D106F934(0, &qword_1EC60DDD0);
    *(inited + 72) = v26;
    sub_1D109D7FC(inited);
    swift_setDeallocating();
    sub_1D136D604(inited + 32);
    v27 = objc_allocWithZone(sub_1D138DCDC());
    v28 = sub_1D138DCCC();
    [v18 addOperation_];
  }
}

uint64_t UserInterfaceMode.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265656E69676E45;
  }

  else
  {
    return 0x647261646E617453;
  }
}

id sub_1D136C448@<X0>(char *a1@<X8>)
{
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  result = [objc_opt_self() isAppleInternalInstall];
  if (!result)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_14;
  }

  sub_1D106F934(0, &qword_1EE069590);
  v10 = sub_1D139084C();
  v11 = sub_1D139012C();
  v12 = [v10 stringForKey_];

  if (!v12)
  {
    goto LABEL_6;
  }

  sub_1D139016C();

  v13 = sub_1D139147C();

  if (!v13)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (v13 != 1)
  {
LABEL_6:
    sub_1D138F04C();
    v15 = sub_1D138F0AC();
    v16 = sub_1D139081C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D101F000, v15, v16, "loaded null mode from disk", v17, 2u);
      MEMORY[0x1D38882F0](v17, -1, -1);
    }

    result = (*(v3 + 8))(v6, v2);
    goto LABEL_9;
  }

  v14 = 1;
LABEL_11:
  sub_1D138F04C();
  v18 = sub_1D138F0AC();
  v19 = sub_1D139081C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136446210;
    v27 = 0;
    v28 = 0xE000000000000000;
    v29 = v21;
    v26 = v14;
    sub_1D139133C();
    v22 = sub_1D11DF718(v27, v28, &v29);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_1D101F000, v18, v19, "loaded mode form disk: %{public}s", v20, 0xCu);
    v23 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1D38882F0](v23, -1, -1);
    MEMORY[0x1D38882F0](v20, -1, -1);
  }

  result = (*(v3 + 8))(v8, v2);
LABEL_14:
  *a1 = v14;
  return result;
}

uint64_t static Features.mode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EC608EB0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EC6101E8;
  return result;
}

void sub_1D136C818(char *a1)
{
  v1 = *a1;
  if (qword_1EC608EB0 != -1)
  {
    swift_once();
  }

  byte_1EC6101E8 = v1;
  v2 = v1;
  sub_1D136CD18(&v2);
}

uint64_t static Features.Charting.isDebugMode.getter()
{
  if (qword_1EC608EB0 != -1)
  {
    swift_once();
  }

  return byte_1EC6101E8;
}

uint64_t static Features.hideCategoryNameFromHeader.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC6101E9 = a1;
  return result;
}

uint64_t static Features.alwaysSendGeminiNotification.getter()
{
  if (qword_1EC608EB0 != -1)
  {
    swift_once();
  }

  return byte_1EC6101E8;
}

id Features.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Features();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall UserInterfaceMode.toggle()()
{
  v1 = sub_1D136BDAC(*v0, byte_1F4D04B38);
  v2 = 0;
  if ((v3 & 1) != 0 || v1 > 0)
  {
    goto LABEL_5;
  }

  if (v1 >= -1)
  {
    v2 = byte_1F4D04B38[v1 + 33];
LABEL_5:
    *v0 = v2;
    return;
  }

  __break(1u);
}

HealthRecordsUI::UserInterfaceMode_optional __swiftcall UserInterfaceMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D139147C();

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

uint64_t sub_1D136CB90@<X0>(char *a1@<X8>)
{
  v2 = sub_1D139147C();

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

void sub_1D136CBF0(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617453;
  if (*v1)
  {
    v2 = 0x7265656E69676E45;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000676E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1D136CD18(char *a1)
{
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  sub_1D138F04C();
  v7 = sub_1D138F0AC();
  v8 = sub_1D139081C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v16 = 0;
    v17 = 0xE000000000000000;
    v18 = v10;
    v15[7] = v6;
    sub_1D139133C();
    v11 = sub_1D11DF718(v16, v17, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1D101F000, v7, v8, "writing mode to disk: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_1D106F934(0, &qword_1EE069590);
  v12 = sub_1D139084C();
  v13 = sub_1D139012C();

  v14 = sub_1D139012C();
  [v12 setObject:v13 forKey:v14];
}

void _s15HealthRecordsUI8FeaturesC7setMode_6notifyyAA013UserInterfaceF0O_SbtFZ_0(char *a1, int a2)
{
  v26 = sub_1D138F0BC();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = *a1;
  sub_1D138F04C();
  v11 = sub_1D138F0AC();
  v12 = sub_1D139081C();
  v13 = os_log_type_enabled(v11, v12);
  v25 = a2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v24[1] = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136446466;
    v28 = 0;
    v29 = 0xE000000000000000;
    v27 = v10;
    sub_1D139133C();
    v17 = sub_1D11DF718(v28, v29, v30);
    v24[0] = v4;
    v18 = v17;

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v28 = 0;
    v29 = 0xE000000000000000;
    v19 = v26;
    if (a2)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (a2)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x1D3885C10](v20, v21);

    v22 = sub_1D11DF718(v28, v29, v30);

    *(v15 + 14) = v22;
    v23 = v24[0];
    _os_log_impl(&dword_1D101F000, v11, v12, "setMode: %{public}s %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v16, -1, -1);
    MEMORY[0x1D38882F0](v15, -1, -1);

    (*(v23 + 8))(v9, v19);
  }

  else
  {

    (*(v4 + 8))(v9, v26);
  }

  if (qword_1EC608EB0 != -1)
  {
    swift_once();
  }

  byte_1EC6101E8 = v10;
  LOBYTE(v28) = v10;
  sub_1D136CD18(&v28);
  if (v25)
  {
    type metadata accessor for FeatureModeToggleAction();
    *(swift_initStackObject() + 16) = v10;
    sub_1D136BF74();
  }
}

unint64_t sub_1D136D460()
{
  result = qword_1EC6101F0;
  if (!qword_1EC6101F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6101F0);
  }

  return result;
}

unint64_t sub_1D136D4B8()
{
  result = qword_1EC6101F8;
  if (!qword_1EC6101F8)
  {
    sub_1D136D510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6101F8);
  }

  return result;
}

void sub_1D136D510()
{
  if (!qword_1EC610200)
  {
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC610200);
    }
  }
}

unint64_t sub_1D136D5B0()
{
  result = qword_1EC610208;
  if (!qword_1EC610208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610208);
  }

  return result;
}

uint64_t sub_1D136D604(uint64_t a1)
{
  sub_1D1238368();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D136D660()
{
  result = qword_1EC610210;
  if (!qword_1EC610210)
  {
    sub_1D136D6A8();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC610210);
  }

  return result;
}

void sub_1D136D6A8()
{
  if (!qword_1EC60DDC0)
  {
    sub_1D123660C();
    v0 = type metadata accessor for FeedItemAction();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60DDC0);
    }
  }
}

uint64_t sub_1D136D704()
{
  v0 = [objc_opt_self() sharedConverter];
  v1 = sub_1D139012C();
  v2 = [v0 synonymForUCUMUnitString_];

  v3 = sub_1D139016C();
  return v3;
}

uint64_t sub_1D136D7C8(void *a1)
{
  v2 = [a1 displayString];
  if (v2)
  {
    v3 = v2;
    sub_1D139016C();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 codingSystem];
  if (!v6)
  {
LABEL_9:
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v7 = v6;
  sub_1D10C94AC();
  v8 = [objc_opt_self() UCUMSystem];
  v9 = sub_1D1390D8C();

  if ((v9 & 1) == 0)
  {

    goto LABEL_9;
  }

  v10 = [a1 code];
  if (v10)
  {
    v11 = v10;
    sub_1D139016C();

LABEL_10:
    v12 = [objc_opt_self() sharedConverter];
    v13 = sub_1D139012C();

    v14 = [v12 synonymForUCUMUnitString_];

    goto LABEL_13;
  }

LABEL_12:
  v14 = [a1 displayString];
  if (!v14)
  {
    return 0;
  }

LABEL_13:
  v15 = sub_1D139016C();

  return v15;
}

uint64_t sub_1D136D998(void *a1)
{
  if ([a1 isNull])
  {
    return 0;
  }

  v3 = [objc_opt_self() sharedConverter];
  v4 = [a1 unitString];
  if (!v4)
  {
    sub_1D139016C();
    v4 = sub_1D139012C();
  }

  v5 = [v3 synonymForUCUMUnitString_];

  v6 = sub_1D139016C();
  return v6;
}

uint64_t dispatch thunk of static HealthRecordsUnitFormatter.unitString(from:)()
{
  return (*(v0 + 80))();
}

{
  return (*(v0 + 88))();
}

{
  return (*(v0 + 96))();
}

uint64_t SignedClinicalDataImportEvent.eventDescription.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = 0xE700000000000000;
  v4 = 0x65646F63205251;
  if (*v0 != 1)
  {
    v4 = 0x51204343442D5545;
    v3 = 0xEE0065646F632052;
  }

  if (*v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701603686;
  }

  if (*v0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1D3885C10](v5, v6);

  MEMORY[0x1D3885C10](32, 0xE100000000000000);
  v7 = 0x74726F706D69;
  v8 = 0xEB00000000464450;
  if (v1 == 1)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x65746172656E6567;
  }

  if (v1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x77656976657270;
  }

  if (v1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  MEMORY[0x1D3885C10](v9, v10);

  MEMORY[0x1D3885C10](32, 0xE100000000000000);
  if (v2)
  {
    v11 = 0x64656C696166;
  }

  else
  {
    v11 = 0x6564656563637573;
  }

  if (v2)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE900000000000064;
  }

  MEMORY[0x1D3885C10](v11, v12);

  return 0;
}

HealthRecordsUI::SignedClinicalDataImportEvent::SourceType_optional __swiftcall SignedClinicalDataImportEvent.SourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D139147C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SignedClinicalDataImportEvent.SourceType.rawValue.getter()
{
  v1 = 0x65646F63205251;
  if (*v0 != 1)
  {
    v1 = 0x51204343442D5545;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_1D136DD38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65646F63205251;
  if (v2 != 1)
  {
    v4 = 0x51204343442D5545;
    v3 = 0xEE0065646F632052;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701603686;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65646F63205251;
  if (*a2 != 1)
  {
    v8 = 0x51204343442D5545;
    v7 = 0xEE0065646F632052;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701603686;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D139162C();
  }

  return v11 & 1;
}

uint64_t sub_1D136DE4C()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D136DEF4()
{
  sub_1D139027C();
}

uint64_t sub_1D136DF88()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

void sub_1D136E038(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65646F63205251;
  if (v2 != 1)
  {
    v5 = 0x51204343442D5545;
    v4 = 0xEE0065646F632052;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701603686;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HealthRecordsUI::SignedClinicalDataImportEvent::ActionType_optional __swiftcall SignedClinicalDataImportEvent.ActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D139147C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SignedClinicalDataImportEvent.ActionType.rawValue.getter()
{
  v1 = 0x74726F706D69;
  if (*v0 != 1)
  {
    v1 = 0x65746172656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x77656976657270;
  }
}

uint64_t sub_1D136E158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x74726F706D69;
  if (v2 != 1)
  {
    v4 = 0x65746172656E6567;
    v3 = 0xEB00000000464450;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x77656976657270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x74726F706D69;
  if (*a2 != 1)
  {
    v8 = 0x65746172656E6567;
    v7 = 0xEB00000000464450;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x77656976657270;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1D139162C();
  }

  return v11 & 1;
}

uint64_t sub_1D136E264()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D136E30C()
{
  sub_1D139027C();
}

uint64_t sub_1D136E3A0()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

void sub_1D136E450(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x74726F706D69;
  if (v2 != 1)
  {
    v5 = 0x65746172656E6567;
    v4 = 0xEB00000000464450;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x77656976657270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HealthRecordsUI::SignedClinicalDataImportEvent::OutcomeType_optional __swiftcall SignedClinicalDataImportEvent.OutcomeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D139147C();

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

uint64_t SignedClinicalDataImportEvent.OutcomeType.rawValue.getter()
{
  if (*v0)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x6564656563637573;
  }
}

uint64_t sub_1D136E554(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656C696166;
  }

  else
  {
    v3 = 0x6564656563637573;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656C696166;
  }

  else
  {
    v5 = 0x6564656563637573;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D139162C();
  }

  return v8 & 1;
}

uint64_t sub_1D136E5FC()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D136E680()
{
  sub_1D139027C();
}

uint64_t sub_1D136E6F0()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D136E770@<X0>(char *a1@<X8>)
{
  v2 = sub_1D139147C();

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

void sub_1D136E7D0(uint64_t *a1@<X8>)
{
  v2 = 0x6564656563637573;
  if (*v1)
  {
    v2 = 0x64656C696166;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D136E864()
{
  result = qword_1EC610218;
  if (!qword_1EC610218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610218);
  }

  return result;
}

unint64_t sub_1D136E8BC()
{
  result = qword_1EC610220;
  if (!qword_1EC610220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610220);
  }

  return result;
}

unint64_t sub_1D136E914()
{
  result = qword_1EC610228;
  if (!qword_1EC610228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610228);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SignedClinicalDataImportEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SignedClinicalDataImportEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t static RecordKindFeedItemIdentifierFactory.makeComponent(categoryKind:)()
{
  sub_1D13911EC();

  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t static RecordKindFeedItemIdentifierFactory.make(categoryKind:conceptId:profile:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139EAB0;
  v10 = sub_1D138D98C();
  if (v10)
  {
    strcpy(v27, "[Profile:");
    WORD1(v27[1]) = 0;
    HIDWORD(v27[1]) = -385875968;
    v11 = v10;
    v12 = [v11 identifier];
    sub_1D138D5CC();

    v13 = sub_1D138D59C();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x1D3885C10](v13, v15);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v17 = v27[0];
    v16 = v27[1];
  }

  else
  {
    v11 = 0;
    v16 = 0x80000001D13BBE40;
    v17 = 0xD000000000000013;
  }

  v27[0] = v17;
  v27[1] = v16;
  MEMORY[0x1D3885C10](0xD000000000000021, 0x80000001D13CE7C0);

  v18 = v27[1];
  *(v9 + 32) = v27[0];
  *(v9 + 40) = v18;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_1D13911EC();

  v27[0] = 0xD000000000000014;
  v27[1] = 0x80000001D13BF130;
  v26 = v8;
  v19 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v19);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v20 = v27[1];
  *(v9 + 48) = v27[0];
  *(v9 + 56) = v20;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_1D13911EC();

  strcpy(v27, "[RecordKindId:");
  HIBYTE(v27[1]) = -18;
  v26 = a2;
  v21 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v21);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v22 = v27[1];
  *(v9 + 64) = v27[0];
  *(v9 + 72) = v22;
  v27[0] = v9;
  sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v23 = sub_1D139008C();

  return v23;
}

uint64_t static RecordKindFeedItemIdentifierFactory.makeComponent(conceptId:)()
{
  sub_1D13911EC();

  strcpy(v2, "[RecordKindId:");
  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return v2[0];
}

uint64_t static RecordKindFeedItemIdentifierFactory.makeComponent(conceptId:)(void *a1)
{
  [a1 rawIdentifier];
  sub_1D13911EC();

  strcpy(v3, "[RecordKindId:");
  v1 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v1);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return v3[0];
}

uint64_t sub_1D136F03C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E6964616F6CLL;
  }

  else
  {
    v3 = 0x617461446F6ELL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E6964616F6CLL;
  }

  else
  {
    v5 = 0x617461446F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D139162C();
  }

  return v8 & 1;
}

uint64_t sub_1D136F0E0()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D136F160()
{
  sub_1D139027C();
}

uint64_t sub_1D136F1CC()
{
  sub_1D139177C();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D136F248@<X0>(char *a1@<X8>)
{
  v2 = sub_1D139147C();

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

void sub_1D136F2A8(uint64_t *a1@<X8>)
{
  v2 = 0x617461446F6ELL;
  if (*v1)
  {
    v2 = 0x676E6964616F6CLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D136F3A4()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D139177C();
  if (v2)
  {
    MEMORY[0x1D38870E0](1);
    sub_1D139027C();
  }

  else
  {
    MEMORY[0x1D38870E0](0);
    sub_1D123F520(v4, v1);
  }

  return sub_1D13917CC();
}

uint64_t sub_1D136F428(uint64_t a1)
{
  v3 = *v1;
  if (v1[2])
  {
    MEMORY[0x1D38870E0](1);

    return sub_1D139027C();
  }

  else
  {
    MEMORY[0x1D38870E0](0);

    return sub_1D123F520(a1, v3);
  }
}

uint64_t sub_1D136F4BC()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D139177C();
  if (v2)
  {
    MEMORY[0x1D38870E0](1);
    sub_1D139027C();
  }

  else
  {
    MEMORY[0x1D38870E0](0);
    sub_1D123F520(v4, v1);
  }

  return sub_1D13917CC();
}

uint64_t sub_1D136F53C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_1D1335040(v3, *a2);
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v3 == *a2 && v4 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D139162C();
  }
}

id sub_1D136F594(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 48);
  v33[2] = *(a3 + 32);
  v33[3] = v8;
  v34 = *(a3 + 64);
  v9 = *(a3 + 16);
  v33[0] = *a3;
  v33[1] = v9;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_dataSource] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_accounts] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_cancellable] = 0;
  v10 = &v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_gradientView];
  sub_1D138E37C();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = MEMORY[0x1E69A3658];
  *v10 = v11;
  v10[1] = v12;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_gradientSubscriber] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_profile] = a2;
  v13 = &v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_category];
  v14 = *(a3 + 48);
  *(v13 + 2) = *(a3 + 32);
  *(v13 + 3) = v14;
  *(v13 + 8) = *(a3 + 64);
  v15 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 1) = v15;
  v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_style] = a1 & 1;
  if (!*(&v33[0] + 1))
  {
    v16 = a2;
LABEL_8:
    v19 = [objc_opt_self() clearColor];
    v28 = sub_1D138E90C();
    v29 = MEMORY[0x1E69A3750];
    __swift_allocate_boxed_opaque_existential_1(&v26);
    sub_1D138E8FC();
    goto LABEL_9;
  }

  v31 = v33[0];
  v16 = a2;
  sub_1D1373F28(v33, &v26);
  v17 = DisplayCategory.Kind.hkDisplayCategory.getter();
  if (!v17)
  {
LABEL_7:
    sub_1D1373CEC(v33, &qword_1EC609AC8, &type metadata for DisplayCategory, MEMORY[0x1E69E6720], sub_1D1373FB0);
    goto LABEL_8;
  }

  v18 = v17;
  if (![v17 color])
  {

    goto LABEL_7;
  }

  v28 = sub_1D138E90C();
  v29 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v26);
  sub_1D138E8FC();

  sub_1D1373CEC(v33, &qword_1EC609AC8, &type metadata for DisplayCategory, MEMORY[0x1E69E6720], sub_1D1373FB0);
LABEL_9:
  sub_1D102CC18(&v26, &v4[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_gradientColorProvider]);
  v20 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v29 = sub_1D136FAD4;
  v30 = 0;
  *&v26 = MEMORY[0x1E69E9820];
  *(&v26 + 1) = 1107296256;
  v27 = sub_1D1372844;
  v28 = &block_descriptor_84;
  v21 = _Block_copy(&v26);
  v22 = [v20 initWithSectionProvider_];
  _Block_release(v21);

  v23 = type metadata accessor for NoDataCollectionViewController();
  v32.receiver = v4;
  v32.super_class = v23;
  v24 = objc_msgSendSuper2(&v32, sel_initWithCollectionViewLayout_, v22);

  return v24;
}

void sub_1D136F8FC()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for NoDataCollectionViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  sub_1D136FD8C();
  if (![v1 collectionView])
  {
LABEL_8:
    __break(1u);
    return;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D1373E10(0, &qword_1EC6102F0, MEMORY[0x1E69DC228]);
  v6 = objc_allocWithZone(v5);
  v7 = sub_1D138F4CC();
  v8 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_dataSource];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_dataSource] = v7;

  v9 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_profile];
  if (v9)
  {
    v10 = v9;
    sub_1D13700FC(v10);
  }

  else
  {
    sub_1D1370DF8();
  }
}

unint64_t sub_1D136FAD4(unint64_t result)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v13;
    v35 = v12;
    v36 = v11;
    v37 = v3;
    v38 = v2;
    v39 = v1;
    v15 = byte_1F4D05368[result + 32];
    v16 = objc_opt_self();
    v17 = [v16 fractionalWidthDimension_];
    if (v15)
    {
      v18 = 200.0;
    }

    else
    {
      v18 = 120.0;
    }

    if (v15)
    {
      v19 = 50.0;
    }

    else
    {
      v19 = 16.0;
    }

    if (v15)
    {
      v20 = 20.0;
    }

    else
    {
      v20 = 16.0;
    }

    v21 = [v16 estimatedDimension_];
    v22 = objc_opt_self();
    v23 = [v22 sizeWithWidthDimension:v17 heightDimension:v21];

    v24 = [objc_opt_self() itemWithLayoutSize_];
    v25 = [v16 fractionalWidthDimension_];
    v26 = [v16 estimatedDimension_];
    v27 = [v22 sizeWithWidthDimension:v25 heightDimension:v26];

    v28 = objc_opt_self();
    sub_1D1373FB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D139E810;
    *(v29 + 32) = v24;
    sub_1D106F934(0, &qword_1EC6102F8);
    v30 = v24;
    v31 = sub_1D139044C();

    v32 = [v28 horizontalGroupWithLayoutSize:v27 subitems:v31];

    v33 = [objc_opt_self() sectionWithGroup_];
    [v33 setContentInsets_];

    return v33;
  }

  return result;
}

void sub_1D136FD8C()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  type metadata accessor for NoDataUpgradeTileCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1D139012C();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];

  v8 = [v0 collectionView];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  type metadata accessor for NoDataMessageCell();
  v10 = swift_getObjCClassFromMetadata();
  v11 = sub_1D139012C();
  [v9 registerClass:v10 forCellWithReuseIdentifier:v11];
}

uint64_t sub_1D136FF0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  if (*(a3 + 16))
  {
    v5 = sub_1D139012C();
    v6 = sub_1D138D7DC();
    v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:v6];

    type metadata accessor for NoDataMessageCell();
    v8 = swift_dynamicCastClassUnconditional();
    v9 = *(v8 + OBJC_IVAR____TtC15HealthRecordsUI17NoDataMessageCell_messageLabel);
    v10 = sub_1D139012C();
    [v9 setText_];
  }

  else
  {
    v11 = sub_1D139012C();
    v12 = sub_1D138D7DC();
    v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v12];

    type metadata accessor for NoDataUpgradeTileCell();
    v8 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_profile);
      v16 = Strong;
      v17 = v15;
    }

    else
    {
      v15 = 0;
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    sub_1D13716E0(v4);
  }

  return v8;
}

void sub_1D13700FC(void *a1)
{
  v34 = MEMORY[0x1E69E8050];
  v33 = MEMORY[0x1E69E6720];
  sub_1D1373B98(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  sub_1D10ED99C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10EDAFC();
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClinicalAccountManager();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CD0];
  v14[5] = 0;
  v14[6] = 0;
  v14[4] = v15;
  v14[2] = a1;
  v16 = a1;
  v14[3] = [v16 clinicalAccountStore];
  v17 = [v16 healthStore];
  type metadata accessor for AccountStatusSummaryTileSettingsManager();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = v17;
  sub_1D1336F8C();

  v21 = MEMORY[0x1E695C028];
  sub_1D10EDBE8(0, &qword_1EC60A9F0, MEMORY[0x1E695C028]);
  sub_1D10EDAB8(&qword_1EC60AA00, &qword_1EC60A9F0, v21);

  sub_1D138F75C();
  sub_1D1373CA4(&qword_1EC60AA20, sub_1D10ED99C);
  v22 = sub_1D138F80C();
  (*(v7 + 8))(v9, v6);
  v39 = v22;
  sub_1D106F934(0, &qword_1EE06B760);
  v23 = sub_1D1390A7C();
  v38 = v23;
  v24 = sub_1D1390A2C();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  v25 = MEMORY[0x1E695BED0];
  sub_1D10EDBE8(0, &qword_1EC60AA10, MEMORY[0x1E695BED0]);
  sub_1D10EDAB8(&qword_1EC60AA18, &qword_1EC60AA10, v25);
  sub_1D10EDC58();
  sub_1D138F8BC();
  sub_1D1373CEC(v4, &qword_1EE06A620, v34, v33, sub_1D1373B98);

  v26 = swift_allocObject();
  v27 = v37;
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v18;
  sub_1D1373CA4(&qword_1EC60AA28, sub_1D10EDAFC);

  v29 = v35;
  v30 = sub_1D138F90C();

  (*(v36 + 8))(v13, v29);
  *(v27 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_cancellable) = v30;

  v31 = [objc_opt_self() defaultCenter];
  if (qword_1EC608D78 != -1)
  {
    swift_once();
  }

  [v31 addObserver:v27 selector:? name:? object:?];
}

void sub_1D13706E4(unint64_t *a1)
{
  v29 = sub_1D138D5EC();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138EDCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v32 = MEMORY[0x1E69E7CC0];
    (*(v6 + 104))(v8, *MEMORY[0x1E69A3E88], v5);
    v30 = sub_1D1337F2C(v8);
    (*(v6 + 8))(v8, v5);
    v11 = v9;
    if (v9 >> 62)
    {
      v24 = sub_1D13910DC();
      v11 = v9;
      v12 = v24;
      if (v24)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_4:
        if (v12 < 1)
        {
          __break(1u);
          return;
        }

        v13 = 0;
        v28 = v11 & 0xC000000000000001;
        v14 = (v2 + 8);
        v27 = MEMORY[0x1E69E7CC0];
        v15 = v11;
        do
        {
          if (v28)
          {
            v16 = MEMORY[0x1D3886B70](v13);
          }

          else
          {
            v16 = *(v11 + 8 * v13 + 32);
          }

          v17 = v16;
          v18 = [v16 identifier];
          sub_1D138D5CC();

          v19 = sub_1D138D59C();
          v21 = v20;
          v22 = (*v14)(v4, v29);
          v31[0] = v19;
          v31[1] = v21;
          MEMORY[0x1EEE9AC00](v22);
          *(&v26 - 2) = v31;
          LOBYTE(v19) = sub_1D10F1D44(sub_1D10EDCD0, (&v26 - 4), v30);

          if (v19)
          {
          }

          else
          {
            v23 = v17;
            MEMORY[0x1D3885D90]();
            if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D13904BC();
            }

            sub_1D13904FC();

            v27 = v32;
          }

          v11 = v15;
          ++v13;
        }

        while (v12 != v13);
        goto LABEL_17;
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v25 = v26;
    *&v26[OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_accounts] = v27;

    sub_1D1370DF8();
  }
}

uint64_t sub_1D1370A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1D13905AC();
  v4[4] = sub_1D139059C();

  return MEMORY[0x1EEE6DFA0](sub_1D1370AF8, 0, 0);
}

uint64_t sub_1D1370AF8()
{
  *(v0 + 40) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D1370B84, v2, v1);
}

uint64_t sub_1D1370B84()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_profile);
  if (v2)
  {
    v3 = v2;
    sub_1D13700FC(v3);
  }

  v5 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10A3854, v5, v4);
}

BOOL sub_1D1370D80()
{
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_category + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_category) == 10;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_accounts);
  if (v3 >> 62)
  {
    v4 = sub_1D13910DC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 != 0;
}

uint64_t sub_1D1370DF8()
{
  sub_1D1373E10(0, &qword_1EC6102D0, MEMORY[0x1E69DC168]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12[-v4];
  sub_1D1373BFC();
  sub_1D1373C50();
  sub_1D138F48C();
  if (sub_1D1370D80())
  {
    sub_1D138F42C();
    sub_1D1373FB0(0, &qword_1EC6102E8, &type metadata for NoDataCollectionViewController.Item, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D139E700;
    *(v6 + 32) = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_accounts);
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    v12[14] = 0;

    sub_1D138F40C();
  }

  sub_1D138F42C();
  sub_1D1373FB0(0, &qword_1EC6102E8, &type metadata for NoDataCollectionViewController.Item, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E700;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  *(v7 + 32) = sub_1D138D1CC();
  *(v7 + 40) = v8;
  *(v7 + 48) = 1;
  v12[15] = 1;
  sub_1D138F40C();

  v10 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_dataSource);
  if (v10)
  {
    v11 = v10;
    sub_1D138F4DC();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D1371268()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_gradientView);
  v2 = v1;
  return v1;
}

uint64_t sub_1D13712E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1D1371544()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  v3 = [v0 contentView];
  v4 = [v1 secondarySystemGroupedBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v0 contentView];
  v6 = [v5 layer];

  [v6 setCornerRadius_];
  v7 = [v0 contentView];
  v8 = [v7 layer];

  [v8 setCornerCurve_];
  v9 = [v0 contentView];
  [v9 setClipsToBounds_];
}

void sub_1D13716E0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts] = a1;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v2 = OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_tileView;
  v3 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_tileView];
  if (!v3)
  {
    v4 = objc_allocWithZone(type metadata accessor for AccountUpgradeTileView());

    v5 = v1;
    v6 = sub_1D13732D8(v5, v4);
    v7 = *&v1[v2];
    *&v1[v2] = v6;

    v8 = [v5 contentView];
    if (*&v1[v2])
    {
      v9 = v8;
      [v8 addSubview_];

      v10 = *&v1[v2];
      if (v10)
      {
        [v10 setTranslatesAutoresizingMaskIntoConstraints_];
        v11 = *&v1[v2];
        if (v11)
        {
          v12 = v11;
          v13 = [v5 contentView];
          [v12 hk:v13 alignConstraintsWithView:?];

          v3 = *&v1[v2];
          if (!v3)
          {
            return;
          }

          goto LABEL_7;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  v14 = v3;
  sub_1D1147B64();
}

uint64_t sub_1D137188C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts;
  v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts);
  if (v4 >> 62)
  {
    if (sub_1D13910DC() != 1)
    {
      goto LABEL_12;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_12;
  }

  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = sub_1D13910DC();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_12:
    v9 = 1;
    goto LABEL_13;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x1D3886B70](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v8 = [v7 identifier];

  sub_1D138D5CC();
  v9 = 0;
LABEL_13:
  v10 = sub_1D138D5EC();
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, v9, 1, v10);
}

void sub_1D13719F0()
{
  sub_1D1373B98(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v23 = Strong;
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  type metadata accessor for ClinicalAccountManager();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CD0];
  v7[5] = 0;
  v7[6] = 0;
  v7[4] = v8;
  v9 = v23;
  v7[2] = v23;
  v23 = v9;
  v7[3] = [v23 clinicalAccountStore];
  v10 = OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts;
  v11 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts];
  if (v11 >> 62)
  {
    if (sub_1D13910DC() >= 2)
    {
      goto LABEL_5;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_5:
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    v13 = v0;
    ClinicalAccountManager.presentAccounts(presentingViewController:completion:)(v6, sub_1D13740D8, v12);

LABEL_15:

LABEL_16:
    v21 = v23;

    return;
  }

  v14 = *&v0[v10];
  if (v14 >> 62)
  {
    if (!sub_1D13910DC())
    {
      goto LABEL_15;
    }
  }

  else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = MEMORY[0x1D3886B70](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  type metadata accessor for ClinicalAccountUpgradeManager();
  swift_allocObject();
  v16 = v15;

  v17 = v6;
  v18 = sub_1D1292444(v16, v7, v17);

  v19 = sub_1D13905DC();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;

  sub_1D107877C(0, 0, v3, &unk_1D13A0E78, v20);
}

void sub_1D1371D54()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong healthStore];
    type metadata accessor for AccountStatusSummaryTileSettingsManager();
    inited = swift_initStackObject();
    v6 = MEMORY[0x1E69E7CC8];
    *(inited + 16) = v4;
    *(inited + 24) = v6;
    sub_1D1336F8C();
    v7 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts];
    v8 = swift_allocObject();
    *(v8 + 16) = v1;

    v9 = v1;
    sub_1D133742C(v7, sub_1D1373B7C, v8);

    swift_setDeallocating();
  }
}

void sub_1D1371E60()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1EC608D78 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1EC60DA28 object:0];
}

BOOL sub_1D1371FA8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts);
  if (v1 >> 62)
  {
    v2 = sub_1D13910DC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 > 1;
}

id sub_1D1372064(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI17NoDataMessageCell_messageLabel;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1D106F934(0, &qword_1EC60E670);
  v12 = sub_1D1390C6C();
  [v11 setFont_];

  v13 = [objc_opt_self() secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setTextAlignment_];
  [v11 setNumberOfLines_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v10] = v11;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for NoDataMessageCell();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D1372248();

  return v14;
}

void sub_1D1372248()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI17NoDataMessageCell_messageLabel];
  [v1 addSubview_];

  v3 = objc_opt_self();
  sub_1D1373FB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139F5B0;
  v5 = [v2 centerXAnchor];
  v6 = [v0 contentView];
  v7 = [v6 centerXAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v2 centerYAnchor];
  v10 = [v0 contentView];
  v11 = [v10 centerYAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v4 + 40) = v12;
  v13 = [v2 leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintGreaterThanOrEqualToAnchor:v15 constant:20.0];
  *(v4 + 48) = v16;
  v17 = [v2 trailingAnchor];
  v18 = [v0 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintLessThanOrEqualToAnchor:v19 constant:-20.0];
  *(v4 + 56) = v20;
  sub_1D106F934(0, &qword_1EC609690);
  v21 = sub_1D139044C();

  [v3 activateConstraints_];
}

id sub_1D137257C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D13725F4(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D137263C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
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

unint64_t sub_1D13726C0()
{
  result = qword_1EC6102A0;
  if (!qword_1EC6102A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6102A0);
  }

  return result;
}

unint64_t sub_1D1372718()
{
  result = qword_1EC6102A8;
  if (!qword_1EC6102A8)
  {
    sub_1D1373FB0(255, &qword_1EC6102B0, &type metadata for NoDataCollectionViewController.Section, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6102A8);
  }

  return result;
}

unint64_t sub_1D1372798()
{
  result = qword_1EC6102B8;
  if (!qword_1EC6102B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6102B8);
  }

  return result;
}

unint64_t sub_1D13727F0()
{
  result = qword_1EC6102C0;
  if (!qword_1EC6102C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6102C0);
  }

  return result;
}

id sub_1D1372844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

unint64_t sub_1D13728C0()
{
  result = qword_1EC6102C8;
  if (!qword_1EC6102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6102C8);
  }

  return result;
}

id sub_1D1372914(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_1D1373B98(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v44 - v6;
  sub_1D1373B98(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v4);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - v8;
  v48 = sub_1D138D5EC();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v48);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v44 - v13;
  v14 = sub_1D138DD9C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - v19;
  v56[3] = type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItemCell();
  v56[4] = &off_1F4D0AF00;
  v56[0] = a1;
  *(a2 + qword_1EC60B8B0) = 0;
  *(a2 + qword_1EC60B8B8) = 0;
  *(a2 + qword_1EC60B8C0) = 0;
  *(a2 + qword_1EC60B8C8) = 0;
  *(a2 + qword_1EC60B8D0) = 0;
  sub_1D1072E70(v56, a2 + qword_1EC60B8A8);
  sub_1D138DD8C();
  v50 = v14;
  v51 = v15;
  (*(v15 + 16))(v18, v20, v14);
  v21 = sub_1D138DD7C();
  v22 = sub_1D138DD4C();
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  v23 = sub_1D138DD3C();
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1D1146338();
  sub_1D1146BE0();
  sub_1D1146FD0();
  v24 = OBJC_IVAR____TtC15HealthRecordsUI47MedicalRecordTimelineAccountUpgradeTileItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(a1 + v24, v54);
  if (!v55)
  {
    sub_1D10A72B8(v54);
LABEL_8:
    sub_1D118D544(v9);
    v27 = v10;
    v28 = v48;
    if ((*(v10 + 48))(v9, 1, v48) == 1)
    {
      sub_1D1373CEC(v9, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D1373B98);
    }

    else
    {
      v45 = *(v10 + 32);
      v29 = v47;
      v45(v47, v9, v28);
      v30 = sub_1D13905DC();
      (*(*(v30 - 8) + 56))(v49, 1, 1, v30);
      v31 = *(v10 + 16);
      v32 = v46;
      v31(v46, v29, v28);
      sub_1D13905AC();
      v44 = v21;
      v33 = sub_1D139059C();
      v34 = v20;
      v35 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v36 = (v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      v38 = MEMORY[0x1E69E85E0];
      *(v37 + 16) = v33;
      *(v37 + 24) = v38;
      v39 = v37 + v35;
      v20 = v34;
      v45(v39, v32, v28);
      *(v37 + v36) = v44;
      sub_1D107877C(0, 0, v49, &unk_1D13B42E8, v37);

      (*(v27 + 8))(v47, v28);
    }

    goto LABEL_11;
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for MedicalRecordTimelineAccountUpgradeTileItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = *(v53 + 16);

  v26 = v25 >> 62 ? sub_1D13910DC() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v26 <= 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D1373B98(0, &qword_1EC60D0C0, sub_1D107F520, MEMORY[0x1E69E6F90]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D139E700;
  v41 = sub_1D138F4EC();
  v42 = MEMORY[0x1E69DC2B0];
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  sub_1D1390CBC();

  swift_unknownObjectRelease();

  (*(v51 + 8))(v20, v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return v21;
}

id sub_1D1373020(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_1D138DD9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19[-1] - v9;
  v19[3] = type metadata accessor for AccountUpgradeCell();
  v19[4] = &off_1F4D0BFC0;
  v19[0] = a1;
  *(a2 + qword_1EC60B8B0) = 0;
  *(a2 + qword_1EC60B8B8) = 0;
  *(a2 + qword_1EC60B8C0) = 0;
  *(a2 + qword_1EC60B8C8) = 0;
  *(a2 + qword_1EC60B8D0) = 0;
  sub_1D1072E70(v19, a2 + qword_1EC60B8A8);
  sub_1D138DD8C();
  (*(v5 + 16))(v7, v10, v4);
  v11 = sub_1D138DD7C();
  v12 = sub_1D138DD4C();
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v13 = sub_1D138DD3C();
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1D1146338();
  sub_1D1146BE0();
  sub_1D1146FD0();
  sub_1D1373B98(0, &qword_1EC60D0C0, sub_1D107F520, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D139E700;
  v15 = sub_1D138F4EC();
  v16 = MEMORY[0x1E69DC2B0];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_1D1390CBC();

  swift_unknownObjectRelease();

  (*(v5 + 8))(v10, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v11;
}

id sub_1D13732D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_1D1373B98(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v40 - v6;
  sub_1D1373B98(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v4);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_1D138D5EC();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v40 - v13;
  v14 = sub_1D138DD9C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v49[3] = type metadata accessor for NoDataUpgradeTileCell();
  v49[4] = &off_1F4D16710;
  v49[0] = a1;
  *(a2 + qword_1EC60B8B0) = 0;
  *(a2 + qword_1EC60B8B8) = 0;
  *(a2 + qword_1EC60B8C0) = 0;
  *(a2 + qword_1EC60B8C8) = 0;
  *(a2 + qword_1EC60B8D0) = 0;
  sub_1D1072E70(v49, a2 + qword_1EC60B8A8);
  sub_1D138DD8C();
  (*(v15 + 16))(v17, v20, v14);
  v21 = sub_1D138DD7C();
  v22 = sub_1D138DD4C();
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  v23 = sub_1D138DD3C();
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1D1146338();
  sub_1D1146BE0();
  sub_1D1146FD0();
  v24 = *(a1 + OBJC_IVAR____TtC15HealthRecordsUI21NoDataUpgradeTileCell_accounts);
  if (v24 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_6;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_6;
  }

  sub_1D137188C(v9);
  v25 = v46;
  v26 = v10;
  if ((*(v46 + 48))(v9, 1, v10) == 1)
  {
    sub_1D1373CEC(v9, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D1373B98);
  }

  else
  {
    v43 = v14;
    v42 = *(v25 + 32);
    v27 = v45;
    v42(v45, v9, v10);
    v28 = sub_1D13905DC();
    (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
    v29 = v44;
    (*(v25 + 16))(v44, v27, v26);
    sub_1D13905AC();
    v41 = v26;
    v40 = v21;
    v30 = sub_1D139059C();
    v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v32 = (v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    *(v33 + 16) = v30;
    *(v33 + 24) = v34;
    v35 = v41;
    v42((v33 + v31), v29, v41);
    v14 = v43;
    *(v33 + v32) = v40;
    sub_1D107877C(0, 0, v47, &unk_1D13A32C0, v33);

    (*(v25 + 8))(v45, v35);
  }

LABEL_6:
  sub_1D1373B98(0, &qword_1EC60D0C0, sub_1D107F520, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D139E700;
  v37 = sub_1D138F4EC();
  v38 = MEMORY[0x1E69DC2B0];
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  sub_1D1390CBC();

  swift_unknownObjectRelease();

  (*(v15 + 8))(v20, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return v21;
}

void sub_1D1373940()
{
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_accounts) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_cancellable) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_gradientView);
  sub_1D138E37C();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = MEMORY[0x1E69A3658];
  *v1 = v2;
  v1[1] = v3;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30NoDataCollectionViewController_gradientSubscriber) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D1373A0C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15HealthRecordsUI17NoDataMessageCell_messageLabel;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1D106F934(0, &qword_1EC60E670);
  v4 = sub_1D1390C6C();
  [v3 setFont_];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  [v3 setNumberOfLines_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v3;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D1373B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1373BFC()
{
  result = qword_1EC6102D8;
  if (!qword_1EC6102D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6102D8);
  }

  return result;
}

unint64_t sub_1D1373C50()
{
  result = qword_1EC6102E0;
  if (!qword_1EC6102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6102E0);
  }

  return result;
}

uint64_t sub_1D1373CA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1373CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D1373D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D1370A7C(a1, v4, v5, v6);
}

void sub_1D1373E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for NoDataCollectionViewController.Section;
    v8[1] = &type metadata for NoDataCollectionViewController.Item;
    v8[2] = sub_1D1373BFC();
    v8[3] = sub_1D1373C50();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D1373E94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
  }

  return result;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1373F28(uint64_t a1, uint64_t a2)
{
  sub_1D1373FB0(0, &qword_1EC609AC8, &type metadata for DisplayCategory, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D1373FB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_62Tm()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D13740DC(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();
  v11 = a1;
  v12 = sub_1D138F0AC();
  v13 = sub_1D13907DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    v38 = ObjectType;
    *v14 = 136446722;
    swift_getMetatypeMetadata();
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, &v37);
    v36 = v3;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = v11;
    v20 = [v19 description];
    v21 = sub_1D139016C();
    v34 = v7;
    v23 = v22;

    v24 = sub_1D11DF718(v21, v23, &v37);

    *(v14 + 14) = v24;
    *(v14 + 22) = 2082;
    v25 = 0xE400000000000000;
    v26 = 1701602377;
    v27 = 0xEE002E6574617453;
    v28 = 0x206E776F6E6B6E55;
    if (a2 == 2)
    {
      v28 = 0x676E697865646E49;
      v27 = 0xE800000000000000;
    }

    if (a2 != 1)
    {
      v26 = v28;
      v25 = v27;
    }

    if (a2)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0x6C616974696E49;
    }

    if (a2)
    {
      v30 = v25;
    }

    else
    {
      v30 = 0xE700000000000000;
    }

    v31 = sub_1D11DF718(v29, v30, &v37);

    *(v14 + 24) = v31;
    _os_log_impl(&dword_1D101F000, v12, v13, "[%{public}s]: indexManagerStateDidChange (store: %s, to: %{public}s)", v14, 0x20u);
    v32 = v35;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v32, -1, -1);
    MEMORY[0x1D38882F0](v14, -1, -1);

    (*(v8 + 8))(v10, v34);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v38 = a2;
  v39 = 0;
  return sub_1D138F6BC();
}

id sub_1D1374494()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IndexManagerStateChangeListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D13744FC()
{
  v1 = [*(v0 + 16) identifier];
  [v1 rawIdentifier];

  v2 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v2);

  return 0x2E7472616843;
}

uint64_t sub_1D1374598()
{
  MEMORY[0x1D3888420](v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D137460C()
{
  v1 = *v0;
  sub_1D139177C();
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

void sub_1D137466C()
{
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();
}

uint64_t sub_1D13746D0()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D137472C()
{
  v1 = *(*v0 + 40);

  return v1;
}

uint64_t sub_1D1374784(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D137491C()
{
  v1 = v0;
  sub_1D12A3EAC(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1D138F27C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v1 setBackgroundColor_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setBackgroundView_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setSelectedBackgroundView_];

  v12 = [v1 selectedBackgroundView];
  if (v12)
  {
    v13 = v12;
    sub_1D106F934(0, &qword_1EE06B6E0);
    v14 = sub_1D1390CEC();
    [v13 setBackgroundColor_];
  }

  sub_1D138F26C();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  MEMORY[0x1D38864A0](v4);
  return (*(v6 + 8))(v8, v5);
}

void sub_1D1374B9C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for MedicalRecordTimelineChartItem();
    if (swift_dynamicCast())
    {

      v7 = [v1 superview];
      if (v7)
      {

        sub_1D1375110();
      }

      return;
    }
  }

  else
  {
    sub_1D10A72B8(v18);
  }

  sub_1D138F06C();
  v8 = v1;
  v9 = sub_1D138F0AC();
  v10 = sub_1D13907FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    sub_1D10A71C0(v1 + v6, v18);
    sub_1D12A3EAC(0, &qword_1EC60B620, sub_1D10A7254);
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v9, v10, "Incorrect view model for MedicalRecordTimelineChartItem: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D1374E18()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for MedicalRecordTimelineChartItem();
    if (swift_dynamicCast())
    {
      return v17;
    }
  }

  else
  {
    sub_1D10A72B8(v18);
  }

  sub_1D138F06C();
  v8 = v1;
  v9 = sub_1D138F0AC();
  v10 = sub_1D13907FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    sub_1D10A71C0(v1 + v6, v18);
    sub_1D12A3EAC(0, &qword_1EC60B620, sub_1D10A7254);
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v9, v10, "Incorrect view model for MedicalRecordTimelineChartItemCell: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_1D1375110()
{
  v1 = sub_1D1374E18();
  if (v1)
  {
    v2 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        v6 = v5;
        v7 = [*(v2 + 24) chartController];
        if (v7)
        {
          v8 = v7;
          [v7 addChartViewObserver_];
        }
      }
    }

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      [v9 addChildViewController_];
    }

    v11 = [*(v2 + 24) view];
    if (v11)
    {
      v12 = v11;
      v13 = [v0 contentView];
      [v13 addSubview_];

      [v12 setTranslatesAutoresizingMaskIntoConstraints_];
      v14 = objc_opt_self();
      sub_1D106F424();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D139F5B0;
      v16 = [v0 contentView];
      v17 = [v16 topAnchor];

      v18 = [v12 topAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];

      *(v15 + 32) = v19;
      v20 = [v0 contentView];
      v21 = [v20 bottomAnchor];

      v22 = [v12 bottomAnchor];
      v23 = [v21 constraintEqualToAnchor_];

      *(v15 + 40) = v23;
      v24 = [v0 contentView];
      v25 = [v24 leadingAnchor];

      v26 = [v12 leadingAnchor];
      v27 = [v25 constraintEqualToAnchor_];

      *(v15 + 48) = v27;
      v28 = [v0 contentView];
      v29 = [v28 trailingAnchor];

      v30 = [v12 trailingAnchor];
      v31 = [v29 constraintEqualToAnchor_];

      *(v15 + 56) = v31;
      sub_1D106F934(0, &qword_1EC609690);
      v32 = sub_1D139044C();

      [v14 activateConstraints_];

      v33 = *(v2 + 24);
      v34 = swift_unknownObjectWeakLoadStrong();
      v35 = v33;
      [v35 didMoveToParentViewController_];

      [v0 invalidateIntrinsicContentSize];
      [v0 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1D137550C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineChartItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1375574@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D13755CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelineChartItemCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D1374B9C();
  return sub_1D10A72B8(a1);
}

void (*sub_1D1375638(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D137569C;
}

void sub_1D137569C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D1374B9C();
  }
}

uint64_t sub_1D1375738(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicalRecordTimelineChartItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1375778(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    sub_1D1214498();
    return sub_1D1390DBC();
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

unint64_t PrivacyInteractionType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D137588C()
{
  result = qword_1EC6103F8;
  if (!qword_1EC6103F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6103F8);
  }

  return result;
}

unint64_t sub_1D13758E4()
{
  result = qword_1EC610400;
  if (!qword_1EC610400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610400);
  }

  return result;
}

id RecordPrimaryTitleCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI22RecordPrimaryTitleCell_recordTitleLabel;
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setFont_];
  [v8 setNumberOfLines_];
  v9 = v7;
  [v8 setTextColor_];

  *&v3[v5] = v8;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI22RecordPrimaryTitleCell_recordDateLabel;
  v11 = [v6 labelColor];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v12 setFont_];
  [v12 setNumberOfLines_];
  v13 = v11;
  [v12 setTextColor_];

  *&v3[v10] = v12;
  if (a3)
  {
    v14 = sub_1D139012C();
  }

  else
  {
    v14 = 0;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for RecordPrimaryTitleCell();
  v15 = objc_msgSendSuper2(&v19, sel_initWithStyle_reuseIdentifier_, a1, v14);

  v16 = v15;
  sub_1D1375BE8();

  return v16;
}

void sub_1D1375BE8()
{
  v1 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI22RecordPrimaryTitleCell_recordTitleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [v2 _preferredFontForTextStyle_variant_];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v1 setFont_];

  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v1 setTextColor_];

  v8 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI22RecordPrimaryTitleCell_recordDateLabel];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = *MEMORY[0x1E69DDD80];
  v9 = [v2 preferredFontForTextStyle_];
  [v8 setFont_];

  v10 = [v6 secondaryLabelColor];
  [v8 setTextColor_];

  v11 = [v0 contentView];
  [v11 addSubview_];

  v12 = [v0 contentView];
  [v12 addSubview_];

  v13 = [v0 contentView];
  [v1 hk:v13 alignHorizontalConstraintsWithView:16.0 margin:?];

  v14 = [v1 firstBaselineAnchor];
  v15 = [v0 contentView];
  v16 = [v15 topAnchor];

  v17 = [v2 _preferredFontForTextStyle_variant_];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 _scaledValueForValue_];
  v20 = v19;

  v21 = [v14 constraintEqualToAnchor:v16 constant:v20];
  [v21 setActive_];

  v22 = [v0 contentView];
  [v8 hk:v22 alignHorizontalConstraintsWithView:16.0 margin:?];

  v23 = [v8 firstBaselineAnchor];
  v24 = [v1 lastBaselineAnchor];
  v25 = [v2 preferredFontForTextStyle_];
  [v25 _scaledValueForValue_];
  v27 = v26;

  v28 = [v23 constraintEqualToAnchor:v24 constant:v27];
  [v28 setActive_];

  v29 = [v8 lastBaselineAnchor];
  v30 = [v0 contentView];
  v31 = [v30 bottomAnchor];

  v32 = [v2 preferredFontForTextStyle_];
  [v32 _scaledValueForValue_];
  v34 = v33;

  v36 = [v29 constraintEqualToAnchor:v31 constant:-v34];
  [v36 setActive_];
}

id RecordDetailItemCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI20RecordDetailItemCell_titleLabel;
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setFont_];
  [v8 setNumberOfLines_];
  v9 = v7;
  [v8 setTextColor_];

  *&v3[v5] = v8;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI20RecordDetailItemCell_bodyLabel;
  v11 = [v6 labelColor];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v12 setFont_];
  [v12 setNumberOfLines_];
  v13 = v11;
  [v12 setTextColor_];

  *&v3[v10] = v12;
  if (a3)
  {
    v14 = sub_1D139012C();
  }

  else
  {
    v14 = 0;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for RecordDetailItemCell();
  v15 = objc_msgSendSuper2(&v19, sel_initWithStyle_reuseIdentifier_, a1, v14);

  v16 = v15;
  sub_1D1376390();

  return v16;
}

void sub_1D1376390()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI20RecordDetailItemCell_titleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  v39 = *MEMORY[0x1E69DDD80];
  v4 = v3;
  v5 = [v3 preferredFontForTextStyle_];
  [v2 setFont_];

  v6 = objc_opt_self();
  v7 = [v6 secondaryLabelColor];
  [v2 setTextColor_];

  v8 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI20RecordDetailItemCell_bodyLabel];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = *MEMORY[0x1E69DDCF8];
  v9 = [v4 preferredFontForTextStyle_];
  [v8 setFont_];

  v10 = [v6 labelColor];
  [v8 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_1D11965C4();
  sub_1D138F0DC();
  sub_1D138F0CC();
  LODWORD(v11) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v11];
  LODWORD(v12) = 1132068864;
  [v2 setContentHuggingPriority:1 forAxis:v12];
  LODWORD(v13) = v41;
  [v8 setContentCompressionResistancePriority:1 forAxis:v13];
  LODWORD(v14) = v41;
  [v8 setContentHuggingPriority:1 forAxis:v14];
  v15 = [v1 contentView];
  [v15 addSubview_];

  v16 = [v1 &selRef_batches];
  [v16 addSubview_];

  v17 = [v1 &selRef_batches];
  [v2 hk:v17 alignHorizontalConstraintsWithView:16.0 margin:?];

  v18 = [v2 firstBaselineAnchor];
  v19 = [v1 &selRef_batches];
  v20 = [v19 topAnchor];

  v21 = [v4 preferredFontForTextStyle_];
  [v21 _scaledValueForValue_];
  v23 = v22;

  v24 = [v18 constraintEqualToAnchor:v20 constant:v23];
  [v24 setActive_];

  v25 = [v1 &selRef_batches];
  [v8 hk:v25 alignHorizontalConstraintsWithView:16.0 margin:?];

  v26 = [v8 firstBaselineAnchor];
  v27 = [v2 lastBaselineAnchor];
  v28 = [v4 &selRef_healthRecordsStore];
  [v28 _scaledValueForValue_];
  v30 = v29;

  v31 = [v26 constraintEqualToAnchor:v27 constant:v30];
  [v31 setActive_];

  v32 = [v8 lastBaselineAnchor];
  v33 = [v1 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v4 &selRef_healthRecordsStore];
  [v35 _scaledValueForValue_];
  v37 = v36;

  v38 = [v32 constraintEqualToAnchor:v34 constant:-v37];
  [v38 setActive_];
}

char *sub_1D137696C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI24RecordReferenceRangeCell_valueInRange] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI24RecordReferenceRangeCell_expandedRangeValueView] = [objc_allocWithZone(type metadata accessor for ExpandedRangeValueView()) initWithFrame_];
  if (a3)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for RecordReferenceRangeCell();
  v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = OBJC_IVAR____TtC15HealthRecordsUI24RecordReferenceRangeCell_expandedRangeValueView;
  v9 = *&v7[OBJC_IVAR____TtC15HealthRecordsUI24RecordReferenceRangeCell_expandedRangeValueView];
  v10 = v7;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 contentView];
  [v11 addSubview_];

  v12 = *&v7[v8];
  v13 = [v10 contentView];
  [v12 hk:v13 alignConstraintsWithView:16.0 insets:{16.0, 16.0, 16.0}];

  return v10;
}

char *sub_1D1376BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC15HealthRecordsUI20RecordDataSourceCell_brandView;
  *&v3[v6] = [objc_allocWithZone(WDMedicalRecordBrandView) initWithFrame_];
  if (a3)
  {
    v7 = sub_1D139012C();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for RecordDataSourceCell();
  v8 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_, a1, v7);

  v9 = OBJC_IVAR____TtC15HealthRecordsUI20RecordDataSourceCell_brandView;
  v10 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI20RecordDataSourceCell_brandView];
  v11 = v8;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v11 contentView];
  [v12 addSubview_];

  v13 = *&v8[v9];
  v14 = [v11 contentView];
  [v13 hk:v14 alignConstraintsWithView:16.0 insets:{16.0, 16.0, 16.0}];

  return v11;
}

id sub_1D1376E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_titleLabel;
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setFont_];
  [v8 setNumberOfLines_];
  v9 = v7;
  [v8 setTextColor_];

  *&v3[v5] = v8;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_bodyLabel;
  v11 = [v6 labelColor];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v12 setFont_];
  [v12 setNumberOfLines_];
  v13 = v11;
  [v12 setTextColor_];

  *&v3[v10] = v12;
  v14 = OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_spinner;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  if (a3)
  {
    v15 = sub_1D139012C();
  }

  else
  {
    v15 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for RecordDetailItemSpinnerCell();
  v16 = objc_msgSendSuper2(&v20, sel_initWithStyle_reuseIdentifier_, a1, v15);

  v17 = v16;
  sub_1D13770B4();

  return v17;
}

void sub_1D13770B4()
{
  v1 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_titleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  v44 = *MEMORY[0x1E69DDD80];
  v3 = v2;
  v4 = [v2 preferredFontForTextStyle_];
  [v1 setFont_];

  v5 = objc_opt_self();
  v6 = [v5 secondaryLabelColor];
  [v1 setTextColor_];

  v7 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_spinner];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_bodyLabel];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v45 = v3;
  v46 = *MEMORY[0x1E69DDCF8];
  v9 = [v3 preferredFontForTextStyle_];
  [v8 setFont_];

  v10 = [v5 labelColor];
  [v8 setTextColor_];

  v11 = [v0 contentView];
  [v11 addSubview_];

  v12 = [v0 &selRef_batches];
  [v12 addSubview_];

  v13 = [v0 &selRef_batches];
  [v13 addSubview_];

  v14 = [v0 &selRef_batches];
  [v1 hk:v14 alignHorizontalConstraintsWithView:16.0 margin:?];

  v15 = [v1 firstBaselineAnchor];
  v16 = [v0 &selRef_batches];
  v17 = [v16 topAnchor];

  v18 = [v3 preferredFontForTextStyle_];
  [v18 _scaledValueForValue_];
  v20 = v19;

  v21 = [v15 constraintEqualToAnchor:v17 constant:v20];
  [v21 setActive_];

  v22 = [v7 leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 leadingAnchor];

  v25 = [v22 &selRef:v24 deactivateConstraints:16.0 + 6];
  [v25 setActive_];

  v26 = [v7 centerYAnchor];
  v27 = [v8 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  [v28 &selRef:1 setShouldCancelDataCollection:?];
  v29 = [v8 leadingAnchor];
  v30 = [v7 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:8.0];

  [v31 &selRef:1 setShouldCancelDataCollection:?];
  v32 = [v8 firstBaselineAnchor];
  v33 = [v1 lastBaselineAnchor];
  v34 = [v45 preferredFontForTextStyle_];
  [v34 _scaledValueForValue_];
  v36 = v35;

  v37 = [v32 constraintEqualToAnchor:v33 constant:v36];
  [v37 setActive_];

  v38 = [v8 lastBaselineAnchor];
  v39 = [v0 contentView];
  v40 = [v39 bottomAnchor];

  v41 = [v45 preferredFontForTextStyle_];
  [v41 _scaledValueForValue_];
  v43 = v42;

  v47 = [v38 constraintEqualToAnchor:v40 constant:-v43];
  [v47 setActive_];
}

id sub_1D1377778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC15HealthRecordsUI18RecordTextItemCell_titleLabel;
  v7 = [objc_opt_self() labelColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setFont_];
  [v8 setNumberOfLines_];
  v9 = v7;
  [v8 setTextColor_];

  *&v3[v6] = v8;
  if (a3)
  {
    v10 = sub_1D139012C();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for RecordTextItemCell();
  v11 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = v11;
  sub_1D137795C();

  return v12;
}

uint64_t sub_1D13778D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = sub_1D139016C();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

void sub_1D137795C()
{
  v1 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI18RecordTextItemCell_titleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  v3 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  v4 = [v0 contentView];
  [v4 addSubview_];

  v5 = [v0 contentView];
  [v1 hk:v5 alignHorizontalConstraintsWithView:16.0 margin:?];

  v6 = [v1 firstBaselineAnchor];
  v7 = [v0 contentView];
  v8 = [v7 topAnchor];

  v9 = [v1 font];
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  [v9 _scaledValueForValue_];
  v12 = v11;

  v13 = [v6 constraintEqualToAnchor:v8 constant:v12];
  [v13 setActive_];

  v14 = [v1 lastBaselineAnchor];
  v15 = [v0 contentView];
  v16 = [v15 bottomAnchor];

  v17 = [v1 font];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 _scaledValueForValue_];
  v20 = v19;

  v21 = [v14 constraintEqualToAnchor:v16 constant:-v20];
  [v21 setActive_];
}

void sub_1D1377E04()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v2 = [v0 contentView];
  [v2 addLayoutGuide_];

  v3 = [v1 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  [v6 setActive_];

  v7 = [v1 trailingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 trailingAnchor];

  v10 = [v7 &selRef:v9 dateWithTimeIntervalSinceNow:? + 5];
  [v10 &selRef:1 setShouldCancelDataCollection:?];

  v11 = [v1 topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 &selRef:v13 dateWithTimeIntervalSinceNow:? + 5];
  [v14 &selRef:1 setShouldCancelDataCollection:?];

  v15 = [v1 bottomAnchor];
  v16 = [v0 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [v15 &selRef:v17 dateWithTimeIntervalSinceNow:? + 5];
  [v18 &selRef:1 setShouldCancelDataCollection:?];

  v42 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v19 = [objc_opt_self() whiteColor];
  [v42 setBackgroundColor_];

  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v0 contentView];
  [v20 addSubview_];

  v21 = [v42 centerXAnchor];
  v22 = [v1 centerXAnchor];
  v23 = [v21 &selRef:v22 dateWithTimeIntervalSinceNow:? + 5];

  [v23 &selRef:1 setShouldCancelDataCollection:?];
  v24 = [v42 centerYAnchor];
  v25 = [v1 centerYAnchor];
  v26 = [v24 &selRef:v25 dateWithTimeIntervalSinceNow:? + 5];

  [v26 &selRef:1 setShouldCancelDataCollection:?];
  v27 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI15RecordImageCell_recordImageView];
  [v27 setContentMode_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v42 addSubview_];
  v28 = [v27 centerXAnchor];
  v29 = [v1 centerXAnchor];
  v30 = [v28 &selRef:v29 dateWithTimeIntervalSinceNow:? + 5];

  [v30 &selRef:1 setShouldCancelDataCollection:?];
  v31 = [v27 centerYAnchor];
  v32 = [v1 centerYAnchor];
  v33 = [v31 &selRef:v32 dateWithTimeIntervalSinceNow:? + 5];

  [v33 &selRef:1 setShouldCancelDataCollection:?];
  v34 = [v42 widthAnchor];
  v35 = [v27 widthAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 multiplier:1.0 constant:6.0];

  [v36 &selRef:1 setShouldCancelDataCollection:?];
  v37 = [v42 heightAnchor];
  v38 = [v27 heightAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 multiplier:1.0 constant:6.0];

  [v39 &selRef:1 setShouldCancelDataCollection:?];
  v40 = [v42 layer];
  [v40 setCornerRadius_];

  v41 = [v42 layer];
  [v41 setCornerCurve_];

  [v42 setClipsToBounds_];
}

id sub_1D13784D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D1378544(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v9 setFont_];
  [v9 setNumberOfLines_];
  v10 = v8;
  [v9 setTextColor_];

  *(v3 + v6) = v9;
  v11 = *a3;
  v12 = [v7 labelColor];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v13 setFont_];
  [v13 setNumberOfLines_];
  v14 = v12;
  [v13 setTextColor_];

  *(v3 + v11) = v13;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D13786E4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_titleLabel;
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v4 setFont_];
  [v4 setNumberOfLines_];
  v5 = v3;
  [v4 setTextColor_];

  *(v0 + v1) = v4;
  v6 = OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_bodyLabel;
  v7 = [v2 labelColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setFont_];
  [v8 setNumberOfLines_];
  v9 = v7;
  [v8 setTextColor_];

  *(v0 + v6) = v8;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI27RecordDetailItemSpinnerCell_spinner;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  sub_1D13913BC();
  __break(1u);
}

void sub_1D13788A4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI18RecordTextItemCell_titleLabel;
  v2 = [objc_opt_self() labelColor];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v3 setFont_];
  [v3 setNumberOfLines_];
  v4 = v2;
  [v3 setTextColor_];

  *(v0 + v1) = v3;
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D13789AC(void *a1)
{
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    v4 = sub_1D13910DC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v22 = MEMORY[0x1E69E7CC0];
    result = sub_1D13912DC();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v8 = &selRef_removeObserver_name_object_;
      v20 = xmmword_1D139E6E0;
      v21 = a1;
      do
      {
        if (v7)
        {
          v10 = MEMORY[0x1D3886B70](v6, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v6 + 32);
        }

        v11 = v10;
        v12 = [v10 v8[22]];
        v13 = [v11 predicate];
        if (v13)
        {
          v9 = v13;
          if (a1)
          {
            sub_1D106F424();
            v14 = swift_allocObject();
            *(v14 + 16) = v20;
            *(v14 + 32) = v9;
            *(v14 + 40) = a1;
            sub_1D1166D9C();
            v15 = a1;
            v16 = v9;
            v17 = v15;
            v18 = v16;
            v19 = sub_1D139044C();
            v7 = v3 & 0xC000000000000001;

            v9 = [objc_opt_self() andPredicateWithSubpredicates_];

            v8 = &selRef_removeObserver_name_object_;
            a1 = v21;
          }
        }

        else if (a1)
        {
          v9 = a1;
        }

        else
        {
          v9 = 0;
        }

        ++v6;
        [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v12 predicate:v9];

        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
      }

      while (v4 != v6);
      return v22;
    }
  }

  return result;
}

uint64_t static MonogramProvider.shared()()
{
  if (qword_1EC608EB8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC610468);
  v0 = qword_1EC610470;

  os_unfair_lock_unlock(&dword_1EC610468);
  return v0;
}

void *sub_1D1378C7C()
{
  type metadata accessor for MonogramProvider();
  v0 = swift_allocObject();
  result = sub_1D13792FC();
  dword_1EC610468 = 0;
  qword_1EC610470 = v0;
  return result;
}

id sub_1D1378CC0(uint64_t a1, uint64_t a2, double a3)
{
  *&v18[0] = a1;
  *(&v18[0] + 1) = a2;
  sub_1D13796FC(0, &qword_1EC60DBB0, qword_1EE06AEE8, type metadata accessor for UnboundedCache, MEMORY[0x1E69E6720]);
  v6 = sub_1D1390A9C();
  if (*&v20[0])
  {
    *v18 = a3;
    v7 = MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v7);
    sub_1D1080A7C(0, &qword_1EC610498, &qword_1EE06A540);
    sub_1D1390A9C();
    v8 = v17;
    sub_1D1379668(v20);
    if (v17)
    {
      return v8;
    }
  }

  else
  {
    sub_1D1379668(v20);
  }

  v9 = sub_1D1379478(a3);
  v10 = sub_1D139012C();
  v11 = [v9 makeImageForTitle_];

  v13 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1D1390A9C();
  if (*&v18[0])
  {
    v21[0] = v18[2];
    v21[1] = v18[3];
    v22 = v19;
    v20[0] = v18[0];
    v20[1] = v18[1];
    v8 = v11;
    sub_1D12571A8(v11, a3);
  }

  else
  {
    sub_1D1379668(v18);
    v14 = sub_1D109C28C(MEMORY[0x1E69E7CC0]);
    sub_1D13796FC(0, &qword_1EC610488, &qword_1EC610490, MEMORY[0x1E69E5E28], type metadata accessor for Box);
    swift_allocObject();
    *&v20[0] = sub_1D1257814(v14);
    v15 = swift_allocObject();
    swift_weakInit();

    sub_1D1096838(sub_1D1217A94, v15, v20 + 1);
    sub_1D1096860(sub_1D1217A94, v15, v21 + 1);

    v8 = v11;
    sub_1D12571A8(v11, a3);

    sub_1D1186B58(v20, v18);

    sub_1D1257424(v18, a1, a2);
  }

  sub_1D1379778(v20, qword_1EE06AEE8, &qword_1EE06A540, 0x1E69DCAB8);
  return v8;
}

uint64_t MonogramProvider.deinit()
{
  sub_1D1379778(v0 + 16, &qword_1EC610478, &qword_1EE06A638, off_1E83DAC80);
  sub_1D1379174(v0 + 88);
  return v0;
}

uint64_t sub_1D1379174(uint64_t a1)
{
  sub_1D137991C(0, &qword_1EC610480, type metadata accessor for UnboundedCache);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D13791EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = sub_1D10A0968();
    v10 = a5(a1, MEMORY[0x1E69E7DE0], v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t MonogramProvider.__deallocating_deinit()
{
  sub_1D1379778(v0 + 16, &qword_1EC610478, &qword_1EE06A638, off_1E83DAC80);
  sub_1D1379174(v0 + 88);

  return swift_deallocClassInstance();
}

void *sub_1D13792FC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D109C270(MEMORY[0x1E69E7CC0]);
  sub_1D1379824();
  swift_allocObject();
  v1[2] = sub_1D1257814(v3);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_1D1096838(sub_1D1217A94, v4, v1 + 3);
  sub_1D1096860(sub_1D1217A94, v4, v1 + 7);

  v5 = sub_1D109C134(v2);
  sub_1D13798A8();
  swift_allocObject();
  v1[11] = sub_1D1257814(v5);
  v6 = swift_allocObject();
  swift_weakInit();

  sub_1D1096838(sub_1D1217A94, v6, v1 + 12);
  sub_1D1096860(sub_1D1217A94, v6, v1 + 16);

  return v1;
}

id sub_1D1379478(double a1)
{
  sub_1D1080A7C(0, &qword_1EC6104A0, &qword_1EE06A638);
  sub_1D1390A9C();
  result = v5;
  if (!v5)
  {
    v3 = [objc_allocWithZone(HRMonogrammer) initWithDiameter_];
    v4 = v3;
    sub_1D125717C(v3, a1);

    return v4;
  }

  return result;
}

unint64_t sub_1D1379574@<X0>(unint64_t result@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_1D129E314(*a2), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1D13795C4@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);

  a1(&v8, &v7);

  *a3 = v8;
  return result;
}

uint64_t sub_1D1379668(uint64_t a1)
{
  sub_1D13796FC(0, &qword_1EC60DBB0, qword_1EE06AEE8, type metadata accessor for UnboundedCache, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D13796FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void, uint64_t, unint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D13791EC(255, a3, &qword_1EE06A540, 0x1E69DCAB8, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1379778(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D13791EC(0, a2, a3, a4, type metadata accessor for UnboundedCache);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D1379824()
{
  if (!qword_1EE06A7E8)
  {
    sub_1D13791EC(255, &qword_1EE06A688, &qword_1EE06A638, off_1E83DAC80, MEMORY[0x1E69E5E28]);
    v0 = type metadata accessor for Box();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A7E8);
    }
  }
}

void sub_1D13798A8()
{
  if (!qword_1EE06A7D8)
  {
    sub_1D137991C(255, &qword_1EE06A670, MEMORY[0x1E69E5E28]);
    v0 = type metadata accessor for Box();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A7D8);
    }
  }
}

void sub_1D137991C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1D13791EC(255, qword_1EE06AEE8, &qword_1EE06A540, 0x1E69DCAB8, type metadata accessor for UnboundedCache);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t FeedItemKind.identifierPrefix.getter()
{
  sub_1D13911EC();

  v0 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  return 0xD000000000000016;
}

HealthRecordsUI::FeedItemKind_optional __swiftcall FeedItemKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D139167C();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FeedItemKind.rawValue.getter()
{
  result = 0x756F636341646461;
  switch(*v0)
  {
    case 1:
      result = 0x53746E756F636361;
      break;
    case 2:
      result = 0x41676E6972616873;
      break;
    case 3:
      result = 0x726F63655277656ELL;
      break;
    case 4:
      result = 0x7362614C77656ELL;
      break;
    case 5:
      result = 0x694B64726F636572;
      break;
    case 6:
      result = 0x79726F6765746163;
      break;
    case 7:
      result = 6513781;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6867696C68676968;
      break;
    case 0xA:
      result = 0x6E53646572616873;
      break;
    case 0xB:
      result = 0x696472616F626E6FLL;
      break;
    case 0xC:
      result = 7367028;
      break;
    case 0xD:
      result = 0x697461676976616ELL;
      break;
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0x656D686361747461;
      break;
    case 0x10:
      result = 0x72616265646973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1379CCC()
{
  v0 = FeedItemKind.rawValue.getter();
  v2 = v1;
  if (v0 == FeedItemKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D139162C();
  }

  return v5 & 1;
}

uint64_t sub_1D1379D68()
{
  sub_1D139177C();
  FeedItemKind.rawValue.getter();
  sub_1D139027C();

  return sub_1D13917CC();
}

uint64_t sub_1D1379DD0()
{
  FeedItemKind.rawValue.getter();
  sub_1D139027C();
}

uint64_t sub_1D1379E34()
{
  sub_1D139177C();
  FeedItemKind.rawValue.getter();
  sub_1D139027C();

  return sub_1D13917CC();
}

unint64_t sub_1D1379EA4@<X0>(unint64_t *a1@<X8>)
{
  result = FeedItemKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HealthRecordsUI::FeedItemKind_optional __swiftcall FeedItemKind.init(feedItemIdentifier:)(Swift::String feedItemIdentifier)
{
  v8 = v1;
  v2 = 0;
  while (1)
  {
    v3 = byte_1F4D05560[v2++ + 32];
    sub_1D13911EC();

    v4 = 0xEA0000000000746ELL;
    v5 = 0x756F636341646461;
    switch(v3)
    {
      case 1:
        v5 = 0x53746E756F636361;
        v4 = 0xED00007375746174;
        break;
      case 2:
        v5 = 0x41676E6972616873;
        v4 = 0xEE00746E756F6363;
        break;
      case 3:
        v5 = 0x726F63655277656ELL;
        v4 = 0xEA00000000007364;
        break;
      case 4:
        v4 = 0xE700000000000000;
        v5 = 0x7362614C77656ELL;
        break;
      case 5:
        v5 = 0x694B64726F636572;
        v4 = 0xEA0000000000646ELL;
        break;
      case 6:
        v4 = 0xE800000000000000;
        v5 = 0x79726F6765746163;
        break;
      case 7:
        v4 = 0xE300000000000000;
        v5 = 6513781;
        break;
      case 8:
        v5 = 0xD000000000000014;
        v4 = 0x80000001D13B7700;
        break;
      case 9:
        v4 = 0xE900000000000074;
        v5 = 0x6867696C68676968;
        break;
      case 10:
        v5 = 0x6E53646572616873;
        v4 = 0xED00007465707069;
        break;
      case 11:
        v4 = 0xEA0000000000676ELL;
        v5 = 0x696472616F626E6FLL;
        break;
      case 12:
        v4 = 0xE300000000000000;
        v5 = 7367028;
        break;
      case 13:
        v4 = 0xEA00000000006E6FLL;
        v5 = 0x697461676976616ELL;
        break;
      case 14:
        v5 = 0xD000000000000019;
        v4 = 0x80000001D13B7750;
        break;
      case 15:
        v5 = 0x656D686361747461;
        break;
      case 16:
        v4 = 0xE700000000000000;
        v5 = 0x72616265646973;
        break;
      case 17:
        v5 = 0x756F636341646461;
        v4 = 0xEE007362614C746ELL;
        break;
      default:
        break;
    }

    MEMORY[0x1D3885C10](v5, v4);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v6 = sub_1D139032C();

    if (v6)
    {
      break;
    }

    if (v2 == 18)
    {
      LOBYTE(v3) = 18;
      break;
    }
  }

  *v8 = v3;
  return result;
}

double static FeedItemContextChange.deleteFeedItems(of:from:)@<D0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[3];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a2, v5);
  sub_1D137AA38(a1, v6, v5, v9);
  result = *v9;
  v8 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v8;
  *(a3 + 32) = v10;
  return result;
}

uint64_t FeedItemContext.previousFeedItems(of:)()
{
  sub_1D13911EC();

  v0 = FeedItemKind.rawValue.getter();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v1 = sub_1D138DA5C();
  v2 = sub_1D138DA4C();

  return v2;
}

uint64_t static FeedItemContextChange.deleteFeedItems(of:matching:from:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = sub_1D138DA1C();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  LOBYTE(v38[0]) = v11;
  v12 = FeedItemContext.previousFeedItems(of:)();
  v13 = *(v12 + 16);
  if (v13)
  {
    v30[1] = v12;
    v31 = a4;
    v14 = 0;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v35 = *(v15 + 56);
    v36 = v16;
    v37 = v15;
    v34 = (v15 - 8);
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v32;
    v16(v10, v17, v32);
    while (1)
    {
      v38[0] = sub_1D138D9FC();
      v38[1] = v20;
      MEMORY[0x1EEE9AC00](v38[0]);
      v30[-2] = v38;
      v21 = sub_1D10F1D44(sub_1D1219AF0, &v30[-4], a2);

      if (v21)
      {
        v33 = v14;
        v22 = a2;
        v23 = sub_1D138D9FC();
        v25 = v24;
        (*v34)(v10, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D10F7284(0, *(v18 + 2) + 1, 1, v18);
        }

        v27 = *(v18 + 2);
        v26 = *(v18 + 3);
        if (v27 >= v26 >> 1)
        {
          v18 = sub_1D10F7284((v26 > 1), v27 + 1, 1, v18);
        }

        *(v18 + 2) = v27 + 1;
        v28 = &v18[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
        a2 = v22;
        v19 = v32;
        v14 = v33;
      }

      else
      {
        (*v34)(v10, v19);
      }

      v17 += v35;
      if (!--v13)
      {
        break;
      }

      v36(v10, v17, v19);
    }

    a4 = v31;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v18;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 32;
  return result;
}

uint64_t static FeedItemContextChange.deleteFeedItems(of:excluding:from:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = sub_1D138DA1C();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  LOBYTE(v38[0]) = v11;
  v12 = FeedItemContext.previousFeedItems(of:)();
  v13 = *(v12 + 16);
  if (v13)
  {
    v30[1] = v12;
    v31 = a4;
    v14 = 0;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v35 = *(v15 + 56);
    v36 = v16;
    v37 = v15;
    v34 = (v15 - 8);
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v32;
    v16(v10, v17, v32);
    while (1)
    {
      v38[0] = sub_1D138D9FC();
      v38[1] = v20;
      MEMORY[0x1EEE9AC00](v38[0]);
      v30[-2] = v38;
      v21 = sub_1D10F1D44(sub_1D121A148, &v30[-4], a2);

      if (v21)
      {
        (*v34)(v10, v19);
      }

      else
      {
        v33 = v14;
        v22 = a2;
        v23 = sub_1D138D9FC();
        v25 = v24;
        (*v34)(v10, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D10F7284(0, *(v18 + 2) + 1, 1, v18);
        }

        v27 = *(v18 + 2);
        v26 = *(v18 + 3);
        if (v27 >= v26 >> 1)
        {
          v18 = sub_1D10F7284((v26 > 1), v27 + 1, 1, v18);
        }

        *(v18 + 2) = v27 + 1;
        v28 = &v18[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
        a2 = v22;
        v19 = v32;
        v14 = v33;
      }

      v17 += v35;
      if (!--v13)
      {
        break;
      }

      v36(v10, v17, v19);
    }

    a4 = v31;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v18;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 32;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FeedItemContext.deleteFeedItems(of:)(HealthRecordsUI::FeedItemKind of)
{
  v3 = v1;
  v4 = *of;
  sub_1D123F200(0, &qword_1EC6104A8, MEMORY[0x1E69A3D40], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E700;
  v9 = v4;
  sub_1D137AA38(&v9, v2, v3, v7);
  v6 = v7[1];
  *(v5 + 32) = v7[0];
  *(v5 + 48) = v6;
  *(v5 + 64) = v8;
  sub_1D138DA2C();
}

uint64_t sub_1D137A9E0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D139162C() & 1;
  }
}

uint64_t sub_1D137AA38@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = sub_1D138DA1C();
  v8 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a2, a3, v12);
  v43 = *a1;
  v15 = FeedItemContext.previousFeedItems(of:)();
  v16 = *(v15 + 16);
  if (v16)
  {
    v34 = v14;
    v35 = v10;
    v36 = a3;
    v37 = a4;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D10FDBA4(0, v16, 0);
    v17 = v42;
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v20 = *(v18 + 64);
    v33[1] = v15;
    v21 = v15 + ((v20 + 32) & ~v20);
    v38 = *(v18 + 56);
    v39 = v19;
    v22 = (v18 - 8);
    do
    {
      v24 = v40;
      v23 = v41;
      v25 = v18;
      v39(v40, v21, v41);
      v26 = sub_1D138D9FC();
      v28 = v27;
      (*v22)(v24, v23);
      v42 = v17;
      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D10FDBA4((v29 > 1), v30 + 1, 1);
        v17 = v42;
      }

      *(v17 + 16) = v30 + 1;
      v31 = v17 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v21 += v38;
      --v16;
      v18 = v25;
    }

    while (v16);

    a3 = v36;
    a4 = v37;
    v14 = v34;
    v10 = v35;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  result = (*(v10 + 8))(v14, a3);
  *a4 = v17;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 32;
  return result;
}

unint64_t sub_1D137AD00()
{
  result = qword_1EC6104B0;
  if (!qword_1EC6104B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6104B0);
  }

  return result;
}

unint64_t sub_1D137AD58()
{
  result = qword_1EC6104B8;
  if (!qword_1EC6104B8)
  {
    sub_1D123F200(255, &qword_1EC6104C0, &type metadata for FeedItemKind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6104B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedItemKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedItemKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for UserDomainConceptListViewController()
{
  result = qword_1EC6104E8;
  if (!qword_1EC6104E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D137AFD8(unsigned __int8 *a1, uint64_t a2, id a3)
{
  v4 = v3;
  v50 = *a1;
  v4[qword_1EC6104C8] = v50;
  *&v4[qword_1EC6104D0] = a2;
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE06BB58;
  v51 = a3;
  v8 = [a3 healthStore];
  v9 = [v8 profileIdentifier];

  v53 = *(v7 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v10);
  sub_1D138D96C();
  sub_1D138EF2C();
  sub_1D137C73C(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  *&v4[qword_1EC6104D8] = v54;
  v11 = v4;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = v51;
      if (v50 != 2)
      {
        goto LABEL_19;
      }

      if (qword_1EE06AD00 == -1)
      {
LABEL_16:
        sub_1D138D1CC();
        LOBYTE(v54) = 2;
        v40 = [v12 healthStore];
        v41 = [v40 profileIdentifier];

        v39 = _s14HealthPlatform8FeedItemC0A9RecordsUIE029predicateForUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0N0OSg_AA06SourceP0OtFZ_0(&v54);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = v51;
      if (a2 != 3 || v50 != 2)
      {
        goto LABEL_19;
      }

      if (qword_1EE06AD00 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_16;
  }

  if (!a2)
  {
    LOBYTE(v54) = v50;
    v12 = v51;
    v13 = [v51 healthStore];
    v14 = [v13 profileIdentifier];

    v15 = _s14HealthPlatform8FeedItemC0A9RecordsUIE029predicateForUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0N0OSg_AA06SourceP0OtFZ_0(&v54);
    sub_1D106F424();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D139F5B0;
    *(v16 + 32) = v15;
    v17 = v15;
    v18 = [v51 healthStore];
    v19 = [v18 profileIdentifier];

    v20 = _s14HealthPlatform8FeedItemC0A9RecordsUIE016predicateForLabsaE10Onboarding9profileIdSo11NSPredicateCSo19HKProfileIdentifierC_tFZ_0(v19);
    *(v16 + 40) = v20;
    LOBYTE(v54) = v50;
    v21 = [v51 healthStore];
    v22 = [v21 profileIdentifier];

    v23 = _s14HealthPlatform8FeedItemC0A9RecordsUIE022predicateForNavigationC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0L0OSg_AA06SourceN0OtFZ_0(&v54);
    *(v16 + 48) = v23;
    LOBYTE(v54) = v50;
    v24 = [v51 healthStore];
    v25 = [v24 profileIdentifier];

    v26 = _s14HealthPlatform8FeedItemC0A9RecordsUIE037predicateForRemovedCategoryNavigationC5Items12categoryKind13sourceProfileSo11NSPredicateCAD07DisplayJ0V0N0OSg_AA06SourceP0OtFZ_0(&v54);
    *(v16 + 56) = v26;
    sub_1D1166D9C();
    v27 = sub_1D139044C();

    v28 = [objc_opt_self() orPredicateWithSubpredicates_];
LABEL_12:
    v39 = v28;

LABEL_17:
    *&v4[qword_1EC6104E0] = a2;
    *&v4[qword_1EC60AAC0] = v39;
    *&v4[qword_1EC60AAC8] = MEMORY[0x1E69E7CC0];
    *&v4[qword_1EC60AAB8] = v12;
    v42 = objc_allocWithZone(MEMORY[0x1E69DC840]);
    v43 = v39;
    v44 = v12;
    v45 = [v42 init];
    v52.receiver = v11;
    v52.super_class = type metadata accessor for FeedItemListViewController();
    v46 = objc_msgSendSuper2(&v52, sel_initWithCollectionViewLayout_, v45);

    v47 = v46;
    v48 = sub_1D139012C();

    [v47 setTitle_];

    return v47;
  }

  v12 = v51;
  if (a2 == 1)
  {
    LOBYTE(v54) = v50;
    v29 = [v51 healthStore];
    v30 = [v29 profileIdentifier];

    v31 = _s14HealthPlatform8FeedItemC0A9RecordsUIE046predicateForUserDomainConceptEducationAbstractC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0P0OSg_AA06SourceR0OtFZ_0(&v54);
    sub_1D106F424();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D139E6F0;
    *(v32 + 32) = v31;
    LOBYTE(v54) = v50;
    v17 = v31;
    v33 = [v51 healthStore];
    v34 = [v33 profileIdentifier];

    v35 = _s14HealthPlatform8FeedItemC0A9RecordsUIE022predicateForNavigationC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0L0OSg_AA06SourceN0OtFZ_0(&v54);
    *(v32 + 40) = v35;
    LOBYTE(v54) = v50;
    v36 = [v51 healthStore];
    v37 = [v36 profileIdentifier];

    v38 = _s14HealthPlatform8FeedItemC0A9RecordsUIE037predicateForRemovedCategoryNavigationC5Items12categoryKind13sourceProfileSo11NSPredicateCAD07DisplayJ0V0N0OSg_AA06SourceP0OtFZ_0(&v54);
    *(v32 + 48) = v38;
    sub_1D1166D9C();
    v27 = sub_1D139044C();

    v28 = [objc_opt_self() orPredicateWithSubpredicates_];
    goto LABEL_12;
  }

LABEL_19:
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

void sub_1D137B7C4(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if ((*(v1 + qword_1EC6104D0) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = [v1 navigationItem];
    [v2 setLargeTitleDisplayMode_];
  }
}

void sub_1D137B85C(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
  if (v4[qword_1EC6104C8] == 2)
  {
    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    sub_1D1222B5C(0, 0);
  }
}

void sub_1D137B914(int a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v40 = sub_1D138D82C();
  v7 = *(v40 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v40).n128_u64[0];
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47.receiver = v3;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, sel_setEditing_animated_, a1 & 1, a2 & 1, v8);
  v11 = &off_1E83DF000;
  v12 = [v3 collectionView];
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = v12;
  [v12 setEditing_];

  v14 = [v3 collectionView];
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  [v14 setAllowsSelection_];

  v16 = [v3 collectionView];
  if (!v16)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  [v16 setAllowsMultipleSelection_];

  v18 = [v3 collectionView];
  if (!v18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v19 = v18;
  v36[3] = a1;
  [v18 setAllowsMultipleSelectionDuringEditing_];

  v37 = v3;
  v20 = [v3 collectionView];
  if (!v20)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [v20 indexPathsForVisibleItems];

  v23 = sub_1D139045C();
  v24 = v37;
  v39 = *(v23 + 16);
  if (v39)
  {
    v25 = 0;
    v38 = v7 + 16;
    do
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      (*(v7 + 16))(v10, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v40);
      v26 = v11;
      v27 = [v24 v11[192]];
      if (!v27)
      {
        goto LABEL_25;
      }

      v28 = v27;
      v29 = sub_1D138D7DC();
      v30 = [v28 cellForItemAtIndexPath_];

      if (v30)
      {
        sub_1D138DE7C();
        if (swift_dynamicCastClass())
        {
          v31 = sub_1D138DE6C();
          if (!v31)
          {
            goto LABEL_26;
          }

          v32 = v31;
          v33 = sub_1D138ECAC();
          v35 = v34;

          if (!v33)
          {

            v45 = 0;
            v43 = 0u;
            v44 = 0u;
            v24 = v37;
            goto LABEL_22;
          }

          v41 = v33;
          v42 = v35;
          sub_1D10FAA88(0, &qword_1EC6104F8);
          sub_1D10FAA88(0, &qword_1EC60B220);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v45 = 0;
            v43 = 0u;
            v44 = 0u;
            v24 = v37;
LABEL_21:

LABEL_22:
            sub_1D137C674(&v43);
            goto LABEL_9;
          }

          v24 = v37;
          if (!*(&v44 + 1))
          {
            goto LABEL_21;
          }

          sub_1D102CC18(&v43, v46);
          __swift_project_boxed_opaque_existential_1Tm(v46, v46[3]);
          v24 = v37;
          sub_1D138E38C();

          __swift_destroy_boxed_opaque_existential_1Tm(v46);
        }

        else
        {
        }
      }

LABEL_9:
      ++v25;
      (*(v7 + 8))(v10, v40);
      v11 = v26;
    }

    while (v39 != v25);
  }
}

void sub_1D137BD58(void *a1, uint64_t a2, int a3, char a4)
{
  v6 = a1;
  sub_1D137B914(a3, a4);
}

uint64_t sub_1D137BDB4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1D138D82C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_1D137C510(v11, v12);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D137BECC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *&v1[qword_1EC6104D0];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v16 = v1[qword_1EC6104C8];
      v17 = *&v1[qword_1EC60AAB8];
      v18 = *&v1[qword_1EC60AAC0];
      v19 = [v17 healthStore];
      v20 = [v19 profileIdentifier];

      sub_1D139092C();
      v21 = [v17 healthStore];
      v22 = [v1 collectionView];
      if (v22)
      {
        v23 = v22;
        v24 = type metadata accessor for UserDomainConceptOlderViewDataSourceProvider();
        v13 = swift_allocObject();
        *(v13 + 80) = 0;
        swift_unknownObjectWeakInit();
        *(v13 + 16) = v16;
        *(v13 + 24) = v18;
        *(v13 + 32) = v20;
        sub_1D102CC18(v44, v13 + 40);
        *(v13 + 88) = v21;
        swift_unknownObjectWeakAssign();

        a1[3] = v24;
        v14 = &unk_1EC610500;
        v15 = type metadata accessor for UserDomainConceptOlderViewDataSourceProvider;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (v3 == 3)
    {
      v34 = v1[qword_1EC6104C8];
      v35 = *&v1[qword_1EC60AAB8];
      v36 = *&v1[qword_1EC60AAC0];
      v37 = [v35 healthStore];
      v38 = [v37 profileIdentifier];

      sub_1D139092C();
      v39 = [v35 healthStore];
      v40 = [v1 collectionView];
      if (v40)
      {
        v41 = v40;
        v42 = type metadata accessor for UserDomainConceptOtherViewDataSourceProvider();
        v13 = swift_allocObject();
        *(v13 + 80) = 0;
        swift_unknownObjectWeakInit();
        *(v13 + 16) = v34;
        *(v13 + 24) = v36;
        *(v13 + 32) = v38;
        sub_1D102CC18(v44, v13 + 40);
        *(v13 + 88) = v39;
        swift_unknownObjectWeakAssign();

        a1[3] = v42;
        v14 = &unk_1EC610508;
        v15 = type metadata accessor for UserDomainConceptOtherViewDataSourceProvider;
        goto LABEL_14;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v3)
    {
      v4 = v1[qword_1EC6104C8];
      v5 = *&v1[qword_1EC60AAB8];
      v6 = *&v1[qword_1EC60AAC0];
      v7 = [v5 healthStore];
      v8 = [v7 profileIdentifier];

      sub_1D139092C();
      v9 = [v5 healthStore];
      v10 = [v1 collectionView];
      if (v10)
      {
        v11 = v10;
        v12 = type metadata accessor for UserDomainConceptLatestViewDataSourceProvider();
        v13 = swift_allocObject();
        *(v13 + 80) = 0;
        swift_unknownObjectWeakInit();
        *(v13 + 16) = v4;
        *(v13 + 24) = v6;
        *(v13 + 32) = v8;
        sub_1D102CC18(v44, v13 + 40);
        *(v13 + 88) = v9;
        swift_unknownObjectWeakAssign();

        a1[3] = v12;
        v14 = &unk_1EC610518;
        v15 = type metadata accessor for UserDomainConceptLatestViewDataSourceProvider;
LABEL_14:
        result = sub_1D137C73C(v14, v15);
        a1[4] = result;
        *a1 = v13;
        return result;
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v3 == 1)
    {
      v25 = v1[qword_1EC6104C8];
      v26 = *&v1[qword_1EC60AAB8];
      v27 = *&v1[qword_1EC60AAC0];
      v28 = [v26 healthStore];
      v29 = [v28 profileIdentifier];

      sub_1D139092C();
      v30 = [v26 healthStore];
      v31 = [v1 collectionView];
      if (v31)
      {
        v32 = v31;
        v33 = type metadata accessor for UserDomainConceptAlphabeticalViewDataSourceProvider();
        v13 = swift_allocObject();
        *(v13 + 80) = 0;
        swift_unknownObjectWeakInit();
        *(v13 + 16) = v25;
        *(v13 + 24) = v27;
        *(v13 + 32) = v29;
        sub_1D102CC18(v44, v13 + 40);
        *(v13 + 88) = v30;
        swift_unknownObjectWeakAssign();

        a1[3] = v33;
        v14 = &unk_1EC610510;
        v15 = type metadata accessor for UserDomainConceptAlphabeticalViewDataSourceProvider;
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

LABEL_19:
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD000000000000018, 0x80000001D13CEDA0);
  type metadata accessor for HRUserDomainConceptListType(0);
  sub_1D139133C();
  MEMORY[0x1D3885C10](39, 0xE100000000000000);
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

uint64_t sub_1D137C510(void *a1, void *a2)
{
  sub_1D138DE7C();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = a2;
    result = sub_1D138DE6C();
    if (result)
    {
      v6 = result;
      v7 = sub_1D138ECAC();
      v9 = v8;

      if (v7)
      {
        sub_1D10FAA88(0, &qword_1EC6104F8);
        sub_1D10FAA88(0, &qword_1EC60B220);
        if (swift_dynamicCast())
        {
          if (*(&v11 + 1))
          {
            sub_1D102CC18(&v10, v13);
            __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
            [a1 isEditing];
            sub_1D138E38C();

            return __swift_destroy_boxed_opaque_existential_1Tm(v13);
          }
        }

        else
        {
          v12 = 0;
          v10 = 0u;
          v11 = 0u;
        }
      }

      else
      {

        v12 = 0;
        v10 = 0u;
        v11 = 0u;
      }

      return sub_1D137C674(&v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D137C674(uint64_t a1)
{
  sub_1D137C6D0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D137C6D0()
{
  if (!qword_1EC60B228)
  {
    sub_1D10FAA88(255, &qword_1EC60B220);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60B228);
    }
  }
}

uint64_t sub_1D137C73C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D137C784(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_item) = *a3;
  swift_retain_n();

  sub_1D137D404();
}

uint64_t sub_1D137C7EC()
{
  sub_1D116DEF0(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_cellResolution);
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 16);
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 56);
  v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1D137C900()
{
  result = sub_1D138DC8C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D137C9A4()
{
  v1 = *v0;
  sub_1D139177C();
  sub_1D139027C();
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData);
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 8);
  MEMORY[0x1D38870E0](v2);
  MEMORY[0x1D38870E0](v3);
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D137CA38()
{
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 8);
  MEMORY[0x1D38870E0](*(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData));
  MEMORY[0x1D38870E0](v2);
  return sub_1D1390D9C();
}

uint64_t sub_1D137CAAC()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 16);
  v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 56);
  v5 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 96);
  MEMORY[0x1D38870E0](*(v1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData));
  MEMORY[0x1D38870E0](v2);
  v6 = v5;

  v7 = v3;

  v8 = v4;

  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D137CBD8()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData;
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  strcpy(v16, "UnknownItem.");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  MEMORY[0x1D3885C10](v7, v8, v3);
  v10 = v16[0];
  v9 = v16[1];
  v11 = [*(v6 + 16) UUID];
  sub_1D138D5CC();

  v12 = sub_1D138D59C();
  v14 = v13;
  (*(v2 + 8))(v5, v1);
  v16[0] = v10;
  v16[1] = v9;

  MEMORY[0x1D3885C10](v12, v14);

  return v16[0];
}

uint64_t sub_1D137CD64(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData;
  v4 = *(v3 + 48);
  v6 = *v3;
  v5 = *(v3 + 16);
  v40[2] = *(v3 + 32);
  v40[3] = v4;
  v40[0] = v6;
  v40[1] = v5;
  v8 = *(v3 + 80);
  v7 = *(v3 + 96);
  v9 = *(v3 + 64);
  v41 = *(v3 + 112);
  v40[5] = v8;
  v40[6] = v7;
  v40[4] = v9;
  v10 = *(v3 + 80);
  v36 = *(v3 + 64);
  v37 = v10;
  v38 = *(v3 + 96);
  v39 = *(v3 + 112);
  v11 = *(v3 + 16);
  v32 = *v3;
  v33 = v11;
  v12 = *(v3 + 48);
  v34 = *(v3 + 32);
  v35 = v12;
  v13 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 48);
  v15 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData);
  v14 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 16);
  v42[2] = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 32);
  v42[3] = v13;
  v42[0] = v15;
  v42[1] = v14;
  v17 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 80);
  v16 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 96);
  v18 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 64);
  v43 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 112);
  v42[5] = v17;
  v42[6] = v16;
  v42[4] = v18;
  v19 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 80);
  v28 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 64);
  v29 = v19;
  v30 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 96);
  v31 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 112);
  v20 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 16);
  v24 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData);
  v25 = v20;
  v21 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 48);
  v26 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 32);
  v27 = v21;
  sub_1D1116114(v40, v46);
  sub_1D1116114(v42, v46);
  v22 = sub_1D1276DF4(&v32, &v24);
  v44[4] = v28;
  v44[5] = v29;
  v44[6] = v30;
  v45 = v31;
  v44[0] = v24;
  v44[1] = v25;
  v44[2] = v26;
  v44[3] = v27;
  sub_1D1145A6C(v44);
  v46[4] = v36;
  v46[5] = v37;
  v46[6] = v38;
  v47 = v39;
  v46[0] = v32;
  v46[1] = v33;
  v46[2] = v34;
  v46[3] = v35;
  sub_1D1145A6C(v46);
  return v22 & 1;
}

id sub_1D137CECC(double a1, double a2, double a3, double a4)
{
  sub_1D137E714(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_1D138F20C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_item] = 0;
  v16 = OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_sectionContext;
  v17 = sub_1D138DF1C();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = type metadata accessor for MedicalRecordTimelineUnknownItemCell(0);
  v23.receiver = v4;
  v23.super_class = v18;
  v19 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D138D84C();
  sub_1D1390C8C();
  v20 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4();
  v21 = sub_1D138F27C();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  MEMORY[0x1D38864A0](v11);

  (*(v13 + 8))(v15, v12);
  return v19;
}

id sub_1D137D16C(void *a1)
{
  sub_1D137E714(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1D138F20C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_item] = 0;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_sectionContext;
  v11 = sub_1D138DF1C();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = type metadata accessor for MedicalRecordTimelineUnknownItemCell(0);
  v19.receiver = v1;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_1D138D84C();
    sub_1D1390C8C();
    v16 = [objc_opt_self() currentTraitCollection];
    sub_1D138F1DC();
    sub_1D133DBE4();
    v17 = sub_1D138F27C();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    MEMORY[0x1D38864A0](v5);

    (*(v7 + 8))(v9, v6);
    return v14;
  }

  else
  {

    return 0;
  }
}

id sub_1D137D404()
{
  sub_1D137E714(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v27 - v2;
  v4 = sub_1D138F15C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138F0FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138F3FC();
  v12 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_item);
  if (v16)
  {
    v17 = result;
    v28 = v3;
    v29 = v5;
    v30 = v4;
    v18 = v16;

    v31 = v0;
    MEMORY[0x1D38864F0](v19);
    v27[1] = v18;

    sub_1D138F3BC();
    result = [objc_opt_self() _preferredFontForTextStyle_weight_];
    if (result)
    {
      v20 = sub_1D138F2FC();
      sub_1D138F2CC();
      v20(v33, 0);
      v21 = [objc_opt_self() labelColor];
      v22 = sub_1D138F2FC();
      sub_1D138F2DC();
      v22(v33, 0);
      v33[3] = v17;
      v33[4] = MEMORY[0x1E69DC110];
      v27[0] = v17;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
      (*(v12 + 16))(boxed_opaque_existential_1, v15, v17);
      MEMORY[0x1D3886480](v33);
      sub_1D137E714(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
      sub_1D138F17C();
      *(swift_allocObject() + 16) = xmmword_1D139E700;
      v24 = v10;
      (*(v8 + 104))(v10, *MEMORY[0x1E69DBF28], v7);
      v25 = sub_1D138F10C();
      (*(*(v25 - 8) + 56))(v28, 1, 1, v25);
      v26 = v32;
      sub_1D138F14C();
      sub_1D138F11C();
      (*(v29 + 8))(v26, v30);
      (*(v8 + 8))(v24, v7);
      sub_1D1390B8C();

      return (*(v12 + 8))(v15, v27[0]);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D137DA18()
{
  v1 = v0;
  v2 = sub_1D138D82C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D137E714(0, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D138DF1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_sectionContext;
  swift_beginAccess();
  sub_1D118C460(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D137E6A4(v8, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1D138DF0C();
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1D13911EC();
  v15 = sub_1D139016C();
  v22 = v2;
  v17 = v16;

  v24 = v15;
  v25 = v17;
  MEMORY[0x1D3885C10](0xD000000000000011, 0x80000001D13C02A0);
  v23 = sub_1D138D81C();
  v18 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v18);

  MEMORY[0x1D3885C10](0x2E6D6574492ELL, 0xE600000000000000);
  v23 = sub_1D138D80C();
  v19 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v19);

  v20 = sub_1D139012C();

  [v1 setAccessibilityIdentifier_];

  (*(v3 + 8))(v5, v22);
  return (*(v10 + 8))(v12, v9);
}

id sub_1D137DDA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineUnknownItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D137DE64()
{
  sub_1D137E714(319, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D137DF58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_sectionContext;
  swift_beginAccess();
  return sub_1D118C460(v1 + v3, a1);
}

uint64_t sub_1D137DFB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_sectionContext;
  swift_beginAccess();
  sub_1D10DCAC4(a1, v1 + v3);
  swift_endAccess();
  sub_1D137DA18();
  return sub_1D137E6A4(a1, &qword_1EC60A840, MEMORY[0x1E69A3588]);
}

uint64_t (*sub_1D137E038(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D137E09C;
}

uint64_t sub_1D137E09C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D137DA18();
  }

  return result;
}

uint64_t sub_1D137E118(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D137E714(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-v4];
  sub_1D137E714(0, &qword_1EC610550, MEMORY[0x1E69DC0B8], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-v7];
  v9 = sub_1D138F20C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = v11;
  v20[4] = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(v10 + 16))(boxed_opaque_existential_1, a1, v9);
  sub_1D1072E70(v20, v19);
  sub_1D137E640();
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if (v15)
  {
    v16(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_1D133DBE4();
    v17 = sub_1D138F27C();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    MEMORY[0x1D38864A0](v5);
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v16(v8, 1, 1, v9);
    sub_1D137E6A4(v8, &qword_1EC610550, MEMORY[0x1E69DC0B8]);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

void sub_1D137E404(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelineUnknownItemCell_item);
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI32MedicalRecordTimelineUnknownItem_viewData + 16);
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = qword_1EE06AF70;

      v8 = v4;
      v9 = v8;
      if (v7 != -1)
      {
        v8 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v8);
      sub_1D138D96C();
      sub_1D118C3B4();
      sub_1D137E5F8(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

      sub_1D138ED0C();

      if (qword_1EE069ED0 != -1)
      {
        swift_once();
      }

      sub_1D1299750(v6, a1, v10);
    }
  }
}

uint64_t sub_1D137E5F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D137E640()
{
  result = qword_1EC610558;
  if (!qword_1EC610558)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC610558);
  }

  return result;
}

uint64_t sub_1D137E6A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D137E714(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D137E714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D137E844()
{
  sub_1D138D96C();
  sub_1D118C3B4();
  sub_1D10DC8AC();

  sub_1D138ED0C();

  return v1;
}

void sub_1D137E8F0(void *a1@<X8>)
{
  v2 = [objc_opt_self() primaryProfile];
  sub_1D137F88C(v2, v6);
  v3 = v6[0];
  v4 = v6[1];
  v5 = v6[4];

  *a1 = v3;
}

id sub_1D137E9E8()
{
  v1 = OBJC_IVAR___HRProfileManager_currentProfile;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D137EA9C(uint64_t a1)
{
  v3 = OBJC_IVAR___HRProfileManager_currentProfile;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D137EAF4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HRProfileManager_currentProfile;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1D137EBB4()
{
  result = [objc_allocWithZone(type metadata accessor for ProfileManager()) init];
  qword_1EE06BB58 = result;
  return result;
}

id ProfileManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ProfileManager.shared.getter()
{
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06BB58;

  return v1;
}

uint64_t ProfileManager.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___HRProfileManager_profileCache;
  v3 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR___HRProfileManager_profileCache] = MEMORY[0x1E69E7CC8];
  v4 = OBJC_IVAR___HRProfileManager_profileObjectsCache;
  *&v0[OBJC_IVAR___HRProfileManager_profileObjectsCache] = v3;
  v5 = OBJC_IVAR___HRProfileManager_lock;
  sub_1D138D96C();
  swift_allocObject();
  *&v0[v5] = sub_1D138D95C();
  v6 = [objc_opt_self() primaryProfile];
  v7 = [objc_opt_self() userProfileWithProfileIdentifier_];
  v8 = OBJC_IVAR___HRProfileManager_currentProfile;
  *&v0[OBJC_IVAR___HRProfileManager_currentProfile] = v7;
  swift_beginAccess();
  v9 = *&v0[v2];
  if ((v9 & 0xC000000000000001) == 0)
  {
    v14 = v7;
    v15 = v6;
    goto LABEL_8;
  }

  if (v9 < 0)
  {
    v10 = *&v0[v2];
  }

  else
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  v11 = v7;
  v12 = v6;
  result = sub_1D13910DC();
  if (!__OFADD__(result, 1))
  {
    *&v1[v2] = sub_1D12F5BA4(v10, result + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *&v1[v2];
    sub_1D11DBD64(v7, v6, isUniquelyReferenced_nonNull_native);
    *&v1[v2] = v23;

    swift_endAccess();
    swift_beginAccess();
    v17 = *&v1[v8];
    v18 = v6;
    sub_1D137FF40(v17, v24);
    swift_beginAccess();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *&v1[v4];
    *&v1[v4] = 0x8000000000000000;
    sub_1D11DBBDC(v24, v18, v19);

    *&v1[v4] = v22;
    swift_endAccess();
    v21.receiver = v1;
    v21.super_class = type metadata accessor for ProfileManager();
    v20 = objc_msgSendSuper2(&v21, sel_init);

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D137EF14()
{
  sub_1D138D96C();
  sub_1D10DC8AC();

  sub_1D138ED1C();
}

void sub_1D137EFA0(uint64_t a1, void *a2)
{
  sub_1D137F88C(a2, v8);
  v3 = v8[0];
  v4 = v8[1];
  v5 = v8[4];

  v6 = OBJC_IVAR___HRProfileManager_currentProfile;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = v3;
}

uint64_t sub_1D137F0FC()
{
  sub_1D138D96C();
  sub_1D118C3B4();
  sub_1D10DC8AC();

  sub_1D138ED0C();

  return v1;
}

void sub_1D137F1A8(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 profileIdentifier];
  sub_1D137F88C(v3, v7);
  v4 = v7[0];
  v5 = v7[1];
  v6 = v7[4];

  *a2 = v4;
}

void sub_1D137F358(void *a1@<X1>, void *a2@<X8>)
{
  sub_1D137F88C(a1, v6);
  v3 = v6[0];
  v4 = v6[1];
  v5 = v6[4];

  *a2 = v3;
}

void sub_1D137F4F0(void *a1@<X1>, void *a2@<X8>)
{
  sub_1D137F88C(a1, v7);
  v3 = v7[0];
  v4 = v7[1];
  v5 = v7[3];
  v6 = v7[4];

  *a2 = v5;
}

void sub_1D137F5A0(void *a1@<X1>, void *a2@<X8>)
{
  sub_1D137F88C(a1, v6);
  v3 = v6[0];
  v4 = v6[1];
  v5 = v6[4];

  *a2 = v5;
}

uint64_t sub_1D137F654(uint64_t a1, void (*a2)(void))
{
  sub_1D138D96C();
  a2(0);
  sub_1D10DC8AC();

  sub_1D138ED0C();

  return v4;
}

void sub_1D137F6FC(void *a1@<X1>, void *a2@<X8>)
{
  sub_1D137F88C(a1, v7);
  v3 = v7[0];
  v4 = v7[1];
  v5 = v7[4];
  v6 = v7[5];

  *a2 = v6;
}

void sub_1D137F780(void *a1@<X1>, void *a2@<X8>)
{
  sub_1D137F88C(a1, v7);
  v3 = v7[0];
  v4 = v7[1];
  v5 = v7[2];
  v6 = v7[4];

  *a2 = v5;
}

void sub_1D137F804(void *a1@<X1>, void *a2@<X8>)
{
  sub_1D137F88C(a1, v6);
  v3 = v6[1];
  v4 = v6[4];
  v5 = v6[6];

  *a2 = v5;
}

uint64_t sub_1D137F88C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = OBJC_IVAR___HRProfileManager_profileCache;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = sub_1D12F3D20(a1, v7);

  if (!v8)
  {
    v8 = [objc_opt_self() userProfileWithProfileIdentifier_];
  }

  v9 = *(v3 + v6);

  v10 = sub_1D12F3D20(a1, v9);

  if (v10)
  {
  }

  else
  {
    swift_beginAccess();
    v11 = *(v3 + v6);
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = *(v3 + v6);
      }

      else
      {
        v12 = v11 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = v8;
      result = sub_1D13910DC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      *(v3 + v6) = sub_1D12F5BA4(v12, result + 1);
    }

    else
    {
      v15 = v8;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = *(v3 + v6);
    sub_1D11DBD64(v8, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + v6) = v39[0];
    swift_endAccess();
  }

  v17 = OBJC_IVAR___HRProfileManager_profileObjectsCache;
  swift_beginAccess();
  v18 = *(v3 + v17);
  v35 = v8;
  v36 = a2;
  v37 = a1;
  if (*(v18 + 16))
  {

    v19 = sub_1D129E8A8(a1);
    if (v20)
    {
      v21 = *(v18 + 56) + 48 * v19;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v26 = *(v21 + 32);
      v25 = *(v21 + 40);
      v27 = *v21;

      v28 = v23;

      goto LABEL_18;
    }
  }

  sub_1D137FF40(v8, v39);
  v26 = v39[4];
  v25 = v39[5];
  v24 = v39[2];
  v28 = v39[3];
  v27 = v39[0];
  v22 = v39[1];
LABEL_18:
  *&v40 = v27;
  *(&v40 + 1) = v22;
  v41 = v24;
  v42 = v28;
  v43 = v26;
  v44 = v25;
  if (!*(*(v3 + v17) + 16) || (, sub_1D129E8A8(v37), v30 = v29, result = , (v30 & 1) == 0))
  {
    swift_beginAccess();
    v31 = v37;
    v32 = v27;

    v33 = v28;

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v3 + v17);
    *(v3 + v17) = 0x8000000000000000;
    sub_1D11DBBDC(&v40, v31, v34);

    *(v3 + v17) = v38;
    result = swift_endAccess();
  }

  *v36 = v35;
  v36[1] = v27;
  v36[2] = v22;
  v36[3] = v24;
  v36[4] = v28;
  v36[5] = v26;
  v36[6] = v25;
  return result;
}

uint64_t sub_1D137FB94()
{
  sub_1D138D96C();
  sub_1D10DC8AC();

  sub_1D138ED1C();
}

void sub_1D137FC20(void *a1)
{
  v2 = [a1 profileIdentifier];
  v3 = [objc_allocWithZone(HRProfile) initWithHealthStore:a1 profileIdentifier:v2];

  sub_1D137FCB0(v3);
}

void sub_1D137FCB0(void *a1)
{
  v2 = v1;
  v4 = [a1 healthStore];
  v5 = [v4 profileIdentifier];

  v6 = OBJC_IVAR___HRProfileManager_profileCache;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {
    v12 = v5;
    v13 = a1;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    v8 = *(v2 + v6);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = v5;
  v10 = a1;
  v11 = sub_1D13910DC();
  if (!__OFADD__(v11, 1))
  {
    *(v2 + v6) = sub_1D12F5BA4(v8, v11 + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v2 + v6);
    sub_1D11DBD64(a1, v5, isUniquelyReferenced_nonNull_native);
    *(v2 + v6) = v22;

    swift_endAccess();
    sub_1D137FF40(a1, &v23);
    v15 = v23;
    v16 = v24;
    v17 = OBJC_IVAR___HRProfileManager_profileObjectsCache;
    swift_beginAccess();
    v18 = v15;

    v19 = v16;

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + v17);
    *(v2 + v17) = 0x8000000000000000;
    sub_1D11DBBDC(&v23, v5, v20);

    *(v2 + v17) = v21;
    swift_endAccess();

    return;
  }

  __break(1u);
}

id ProfileManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D137FF40(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 healthStore];
  type metadata accessor for CountProviderCollection();
  swift_allocObject();
  v5 = sub_1D12E4074(v4);
  sub_1D138EE9C();
  v6 = [v3 healthStore];
  v7 = sub_1D138EE8C();
  sub_1D138EF2C();
  v8 = [v3 healthStore];
  v9 = sub_1D138EEAC();

  v10 = [v3 healthStore];
  type metadata accessor for UserDomainConceptDataProvider();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC8];
  v11[2] = MEMORY[0x1E69E7CC8];
  v11[3] = v12;
  v11[4] = v10;
  v13 = [v3 healthStore];

  type metadata accessor for AccountStateProvider();
  swift_allocObject();
  v14 = sub_1D13509F4(v13);

  *a2 = v3;
  a2[1] = v5;
  a2[2] = v9;
  a2[3] = v7;
  a2[4] = v11;
  a2[5] = v14;
}

uint64_t dispatch thunk of ProfileManager.profile(with:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
}

id sub_1D138039C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcedureRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1380404(uint64_t a1)
{
  result = sub_1D138042C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D138042C()
{
  result = qword_1EC610590;
  if (!qword_1EC610590)
  {
    type metadata accessor for ProcedureRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC610590);
  }

  return result;
}

id sub_1D13804B0(void *a1)
{
  v1 = [a1 reason];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

id sub_1D1380814(void *a1)
{
  if ([a1 notPerformed])
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v1 = sub_1D138D1CC();
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v4 setDisplayItemType_];
      v5 = sub_1D139012C();
      [v4 setTitle_];

      v6 = sub_1D139012C();

      [v4 setSubtitle_];

      [v4 setSeparatorStyle_];
      [v4 setSeparatorHidden_];
      [v4 setExtraTopPadding_];

      return v4;
    }
  }

  return 0;
}

id sub_1D13809BC(void *a1)
{
  sub_1D1107C14(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v60 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v64 = sub_1D138D1CC();
  v65 = v12;
  v63 = sub_1D106F934(0, &qword_1EC609BE8);
  v13 = [a1 executionStartDate];
  v14 = [a1 executionEndDate];
  v15 = [a1 meaningfulDateTitle];
  v16 = sub_1D139016C();
  v18 = v17;

  if (v13)
  {
    if (v14)
    {
      v61 = v16;
      v62 = v4;
      v19 = v14;
      v20 = v13;
      v21 = [v19 dateForUTC];
      sub_1D138D52C();

      v22 = [v20 dateForUTC];
      sub_1D138D52C();

      sub_1D138D4CC();
      v24 = v23;
      v25 = *(v6 + 8);
      v25(v8, v5);
      v25(v11, v5);
      if (v24 > COERCE_DOUBLE(1))
      {
        v26 = v19;

        v61 = "ETAIL_TITLE_RELEASED";
        v27 = sub_1D138D67C();
        (*(*(v27 - 8) + 56))(v62, 1, 1, v27);
        if (qword_1EC608CB0 != -1)
        {
          swift_once();
        }

        sub_1D1107C14(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1D139E710;
        v63 = v20;
        v29 = [v20 displayString];
        v30 = sub_1D139016C();
        v32 = v31;

        v33 = MEMORY[0x1E69E6158];
        *(v28 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1D1089930();
        *(v28 + 64) = v34;
        *(v28 + 32) = v30;
        *(v28 + 40) = v32;
        v35 = [v26 displayString];
        v36 = sub_1D139016C();
        v38 = v37;

        *(v28 + 96) = v33;
        *(v28 + 104) = v34;
        *(v28 + 72) = v36;
        *(v28 + 80) = v38;
        v39 = sub_1D138D1CC();
        v41 = v40;
        if (*(v28 + 16))
        {
          v42 = v62;
          v39 = sub_1D139019C();
          v44 = v43;

          sub_1D10CD608(v42);
          v41 = v44;
        }

        else
        {
          sub_1D10CD608(v62);
        }

        v54 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v54 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          v47 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
          [v47 setDisplayItemType_];

          v55 = sub_1D139012C();

          [v47 setTitle_];

          v56 = sub_1D139012C();

          [v47 setSubtitle_];

          [v47 setSeparatorStyle_];
          [v47 setSeparatorHidden_];
          [v47 setExtraTopPadding_];

          v57 = v63;
          return v47;
        }

        v58 = v63;
        return 0;
      }

      v52 = v65;

      v53 = v20;
      v47 = sub_1D11EDE68(v64, v52, v13, v61, v18);
      v48 = v47;
    }

    else
    {
      v49 = v13;
      v50 = v65;

      v51 = v49;
      v47 = sub_1D11EDE68(v64, v50, v13, v16, v18);
      v48 = v47;
    }
  }

  else
  {
    if (!v14)
    {

      return 0;
    }

    v45 = v14;
    v46 = v65;

    v47 = sub_1D11EDE68(v64, v46, v14, v16, v18);
    v48 = v47;
  }

  if (v47)
  {
  }

  return v47;
}

id sub_1D1381110(void *a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a2();

  v5 = Array<A>.newlineJoined.getter(v4);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1D13812E0(void *a1)
{
  v1 = [a1 outcome];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 localizedPreferredName];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1D13814F0(void *a1)
{
  v1 = [a1 complications];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

id sub_1D1381854(void *a1)
{
  v1 = [a1 reasonsNotPerformed];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

id sub_1D1381BB8(void *a1)
{
  v1 = [a1 performers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139045C();

  v4 = Array<A>.newlineJoined.getter(v3);
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v8 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  [v8 setTitle_];

  v10 = sub_1D139012C();

  [v8 setSubtitle_];

  [v8 setSeparatorStyle_];
  [v8 setSeparatorHidden_];
  [v8 setExtraTopPadding_];

  return v8;
}

id sub_1D1381D9C(void *a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a2();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v8 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v9 = sub_1D139012C();

    [v8 setTitle_];

    v10 = sub_1D139012C();

    [v8 setSubtitle_];

    [v8 setSeparatorStyle_];
    [v8 setSeparatorHidden_];
    [v8 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v8;
}

id sub_1D1381F58(void *a1)
{
  v1 = [a1 followUps];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

uint64_t sub_1D13822BC(void *a1)
{
  v9[4] = sub_1D13804B0(a1);
  v9[5] = sub_1D1380814(a1);
  v9[6] = sub_1D13809BC(a1);
  v9[7] = sub_1D1381110(a1, sub_1D1249360);
  v9[8] = sub_1D13812E0(a1);
  v9[9] = sub_1D13814F0(a1);
  v9[10] = sub_1D1381854(a1);
  v9[11] = sub_1D1201200(a1);
  v9[12] = sub_1D1381BB8(a1);
  v9[13] = sub_1D1381D9C(a1, sub_1D1249364);
  v9[14] = sub_1D1381F58(a1);
  result = sub_1D128719C(a1);
  v3 = 0;
  v9[15] = result;
  v4 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v3 <= 0xC)
  {
    v5 = 12;
  }

  else
  {
    v5 = v3;
  }

  while (1)
  {
    if (v3 == 12)
    {
      sub_1D10CD53C();
      swift_arrayDestroy();
      return v4;
    }

    if (v5 == v3)
    {
      break;
    }

    v6 = v9[v3++ + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1D3885D90]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      v4 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1382468(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D1380814(a1);
  if (v3)
  {
    v26[4] = v3;
    v4 = v3;
    v5 = 0;
    v26[5] = sub_1D1381854(a1);
    v25 = v2;
    while (v5 != 2)
    {
      v6 = v26[v5++ + 4];
      if (v6)
      {
        v7 = v6;
        MEMORY[0x1D3885D90]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        v2 = v25;
      }
    }

    sub_1D10CD53C();
    swift_arrayDestroy();
    sub_1D11220E0(v2);

    v2 = v27;
  }

  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_15;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_15;
  }

  v8 = sub_1D1201200(a1);
  if (v8)
  {
    v9 = v8;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_15:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_21;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_21;
  }

  v10 = sub_1D1381110(a1, sub_1D1249360);
  if (v10)
  {
    v11 = v10;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_21:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_27;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_27;
  }

  v12 = sub_1D13812E0(a1);
  if (v12)
  {
    v13 = v12;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_27:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_33;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_33;
  }

  v14 = sub_1D13814F0(a1);
  if (v14)
  {
    v15 = v14;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_33:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_39;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_39;
  }

  v16 = sub_1D1381BB8(a1);
  if (v16)
  {
    v17 = v16;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_39:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_45;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_45;
  }

  v18 = sub_1D1381D9C(a1, sub_1D1249364);
  if (v18)
  {
    v19 = v18;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_45:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_51;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_51;
  }

  v20 = sub_1D1381F58(a1);
  if (v20)
  {
    v21 = v20;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_51:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      return v2;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    return v2;
  }

  v22 = sub_1D128719C(a1);
  if (v22)
  {
    v23 = v22;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    return v27;
  }

  return v2;
}

uint64_t type metadata accessor for WalletIntegrationDataSource()
{
  result = qword_1EC6105B8;
  if (!qword_1EC6105B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1382B18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1D138FFFC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1D1382BC4()
{
  v1 = sub_1D138FF3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + qword_1EC6105A8);
  if (!v5)
  {
    return;
  }

  v70 = v5;
  v6 = [v70 mainRecord];
  if (!v6)
  {
    v41 = v70;

    return;
  }

  v66 = v4;
  v67 = v2;
  v68 = v1;

  v69 = v0;
  v7 = *(v0 + qword_1EC610598);
  v8 = *(v7 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v9 = *(v7 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v10 = type metadata accessor for SignedClinicalDataRecordFormatter();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC15HealthRecordsUI33SignedClinicalDataRecordFormatter_store] = v8;
  *&v11[OBJC_IVAR____TtC15HealthRecordsUI33SignedClinicalDataRecordFormatter_context] = v9;
  v72.receiver = v11;
  v72.super_class = v10;
  v12 = v8;
  v13 = objc_msgSendSuper2(&v72, sel_init);
  v14 = sub_1D1249FD0(v70);

  v71 = MEMORY[0x1E69E7CC0];
  v15 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_51:
    v16 = sub_1D13910DC();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v65 = @"UIA.Health.HealthRecords";
    v64 = xmmword_1D139E710;
    while (2)
    {
      v20 = v18;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1D3886B70](v20, v14);
        }

        else
        {
          if (v20 >= *(v15 + 16))
          {
            goto LABEL_49;
          }

          v21 = *(v14 + 8 * v20 + 32);
        }

        v22 = v21;
        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if ([v21 displayItemType] == 12)
        {
          break;
        }

        ++v20;
        if (v18 == v16)
        {
          goto LABEL_33;
        }
      }

      v23 = [v22 contextString];
      if (v23)
      {
        v24 = v23;
        v61 = sub_1D139016C();
        v26 = v25;
      }

      else
      {
        v61 = 0;
        v26 = 0;
      }

      v27 = [v22 actionEnabled];
      v28 = [v22 title];
      v60 = v27;
      if (v28)
      {
        v29 = v28;
        v30 = sub_1D139016C();
        v62 = v31;
        v63 = v30;
      }

      else
      {
        v62 = 0;
        v63 = 0;
      }

      v59 = [v22 attributedTitle];
      type metadata accessor for WalletIntegrationItem();
      v32 = swift_allocObject();
      *(v32 + 64) = v61;
      *(v32 + 72) = v26;
      *(v32 + 80) = v70;
      sub_1D1086E1C();
      v33 = swift_allocObject();
      *(v33 + 16) = v64;
      *(v33 + 32) = sub_1D139016C();
      *(v33 + 40) = v34;
      strcpy((v33 + 48), "WalletButton");
      *(v33 + 61) = 0;
      *(v33 + 62) = -5120;
      v61 = v70;
      v35 = sub_1D139044C();

      v36 = HKUIJoinStringsForAutomationIdentifier();

      if (v36)
      {
        v58 = sub_1D139016C();
        v38 = v37;

        v39 = v58;
      }

      else
      {

        v39 = 0;
        v38 = 0;
      }

      v17 = MEMORY[0x1E69E7CC0];
      *(v32 + 16) = v60;
      v40 = v62;
      *(v32 + 24) = v63;
      *(v32 + 32) = v40;
      *(v32 + 40) = v59;
      *(v32 + 48) = v39;
      *(v32 + 56) = v38;
      MEMORY[0x1D3885D90]();
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
        v17 = MEMORY[0x1E69E7CC0];
      }

      sub_1D13904FC();
      v19 = v71;
      if (v18 != v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:

  v71 = v17;
  if (v19 >> 62)
  {
    v14 = sub_1D13910DC();
    if (v14)
    {
      goto LABEL_35;
    }

LABEL_53:
    v45 = MEMORY[0x1E69E7CC0];
    v46 = v69;
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_54;
  }

  v14 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_53;
  }

LABEL_35:
  v42 = 0;
  v15 = v19 & 0xFFFFFFFFFFFFFF8;
  while ((v19 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x1D3886B70](v42, v19);
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_45;
    }

LABEL_41:
    if (*(v43 + 16))
    {
    }

    else
    {
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
    }

    ++v42;
    if (v44 == v14)
    {
      goto LABEL_46;
    }
  }

  if (v42 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

  v43 = *(v19 + 8 * v42 + 32);

  v44 = v42 + 1;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  v45 = v71;
  v46 = v69;
  if ((v71 & 0x8000000000000000) == 0)
  {
LABEL_54:
    if ((v45 & 0x4000000000000000) == 0)
    {
      v47 = *(v45 + 16);
      goto LABEL_56;
    }
  }

LABEL_64:
  while (1)
  {
    v47 = sub_1D13910DC();
LABEL_56:

    *(v46 + qword_1EC6105A0) = v47 != 0;
    sub_1D138E54C();
    sub_1D108310C();
    v48 = sub_1D1390A7C();
    v50 = v66;
    v49 = v67;
    *v66 = v48;
    v51 = v68;
    (*(v49 + 104))(v50, *MEMORY[0x1E69E8020], v68);
    v52 = sub_1D138FF5C();
    (*(v49 + 8))(v50, v51);
    if (v52)
    {
      break;
    }

    __break(1u);
  }

  sub_1D110B8B8(v19);

  sub_1D138E5AC();

  type metadata accessor for WalletIntegrationDataSource();
  v53 = sub_1D138E25C();
  v54 = qword_1EC6105B0;
  v55 = *(v46 + qword_1EC6105B0);
  *(v46 + qword_1EC6105B0) = (v53 & 1) == 0;
  if (((v53 & 1) == 0) == v55)
  {
  }

  else
  {
    v56 = [objc_opt_self() defaultCenter];
    v57 = *MEMORY[0x1E69DDBC0];
    [v56 removeObserver:v46 name:*MEMORY[0x1E69DDBC0] object:0];
    if (*(v46 + v54) == 1)
    {
      [v56 addObserver:v46 selector:sel_didEnterForeground_ name:v57 object:0];
    }
  }
}

uint64_t sub_1D1383318()
{
  v0 = sub_1D138D01C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138CFDC();

  sub_1D1382BC4();

  return (*(v1 + 8))(v3, v0);
}

void sub_1D1383430()
{
  v1 = *(v0 + qword_1EC6105A8);
}

uint64_t sub_1D1383470()
{
  v0 = sub_1D138E5CC();
  v1 = *(v0 + qword_1EC610598);

  v2 = *(v0 + qword_1EC6105A8);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1383568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D139016C() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_1D139162C();

    if ((v12 & 1) == 0)
    {
      a3[3] = sub_1D138DF7C();
      a3[4] = sub_1D1385C18(&qword_1EC60C2A0, MEMORY[0x1E69A35B8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_1D138DF6C();
    }
  }

  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v17[0] = 0x74497265746F6F46;
  v17[1] = 0xEB000000005F6D65;
  sub_1D138D5DC();
  v14 = sub_1D138D59C();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x1D3885C10](v14, v16);

  a3[3] = sub_1D138EA2C();
  a3[4] = sub_1D1385C18(&qword_1EC60A048, MEMORY[0x1E69A3798]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_1D138EA1C();
}

void sub_1D1383830(void *a1, void *a2)
{
  v44 = *v2;
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  sub_1D1385E4C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_1D138D39C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[9];
  if (v19)
  {
    v20 = v2[8];
    sub_1D138D38C();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D124CC84(v14);
      sub_1D138F06C();

      v21 = sub_1D138F0AC();
      v22 = sub_1D13907FC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v48 = v24;
        *v23 = 136446466;
        v47 = v44;
        swift_getMetatypeMetadata();
        v25 = sub_1D13901EC();
        v27 = sub_1D11DF718(v25, v26, &v48);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        *(v23 + 14) = sub_1D11DF718(v20, v19, &v48);
        _os_log_impl(&dword_1D101F000, v21, v22, "%{public}s: Cannot create wallet URL from context string %{public}s, unable to open Wallet", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v24, -1, -1);
        MEMORY[0x1D38882F0](v23, -1, -1);
      }

      (*(v46 + 8))(v11, v45);
    }

    else
    {
      (*(v16 + 32))(v18, v14, v15);
      sub_1D1384ED8(v18);
      (*(v16 + 8))(v18, v15);
    }
  }

  else if (*(v2 + 16) == 1)
  {
    sub_1D138F06C();

    v43 = v2;
    v28 = sub_1D138F0AC();
    v29 = sub_1D139081C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 136446210;
      v47 = v44;
      swift_getMetatypeMetadata();
      v32 = sub_1D13901EC();
      v34 = sub_1D11DF718(v32, v33, &v48);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1D101F000, v28, v29, "%{public}s: Adding pass to Wallet", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1D38882F0](v31, -1, -1);
      MEMORY[0x1D38882F0](v30, -1, -1);
    }

    (*(v46 + 8))(v8, v45);
    v35 = a2;
    type metadata accessor for ButtonCell();
    v36 = a1;
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = v36;
      sub_1D136ABF4(1);
    }

    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v37;
    v40[4] = v35;
    v41 = v37;
    v42 = v35;

    sub_1D1384738(sub_1D1385E40, v40);
  }
}

uint64_t sub_1D1383DDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v76 = a2;
  v74 = a1;
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v69 - v11;
  sub_1D1385E4C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v69 - v13;
  v15 = sub_1D138D39C();
  v77 = *(v15 - 8);
  v78 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D138FF3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D108310C();
  *v20 = sub_1D1390A7C();
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v21 = sub_1D138FF5C();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_19:
    sub_1D138D1CC();
    sub_1D138D1CC();
    v64 = sub_1D139012C();

    v65 = sub_1D139012C();

    if (v76)
    {
      v66 = sub_1D138D2AC();
    }

    else
    {
      v66 = 0;
    }

    v67 = v70;
    v68 = [objc_opt_self() basicAlertControllerWithTitle:v64 message:v65 internalError:v66];

    [v67 presentViewController:v68 animated:1 completion:0];
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v23 = result;
  if (a4)
  {
    v71 = v8;
    v24 = v7;
    v25 = a5;
    v26 = result;
    sub_1D1390B8C();
    v27 = sub_1D136A1A4();
    v28 = OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor;
    v29 = *(a4 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell_nonBusyTitleLabelColor);
    v30 = v29;
    if (!v29)
    {
      v30 = [*(a4 + OBJC_IVAR____TtC15HealthRecordsUI10ButtonCell____lazy_storage___titleLabel) textColor];
    }

    v31 = v29;
    [v27 setTextColor_];

    v32 = *(a4 + v28);
    *(a4 + v28) = 0;

    v23 = v26;
    a5 = v25;
    v7 = v24;
    v8 = v71;
  }

  type metadata accessor for MedicalRecordDetailViewController(0);
  v33 = swift_dynamicCastClass();
  v35 = v77;
  v34 = v78;
  if (v33)
  {
    v36 = a5;
    if (sub_1D1360910())
    {
      sub_1D1382BC4();
    }
  }

  sub_1D1385DAC(v74, v14);
  if ((*(v35 + 48))(v14, 1, v34) == 1)
  {
    v37 = v7;
    sub_1D124CC84(v14);
    v38 = v73;
    sub_1D138F06C();

    v39 = v76;
    v40 = v76;
    v41 = sub_1D138F0AC();
    v42 = sub_1D13907FC();

    v43 = os_log_type_enabled(v41, v42);
    v70 = a5;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v80 = v45;
      *v44 = 136446466;
      v79 = *v23;
      swift_getMetatypeMetadata();
      v46 = sub_1D13901EC();
      v48 = v8;
      v49 = sub_1D11DF718(v46, v47, &v80);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      v79 = v39;
      v50 = v39;
      sub_1D1385E4C(0, &qword_1EE06B078, sub_1D10922EC, MEMORY[0x1E69E6720]);
      sub_1D13916AC();
      v51 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v52 = sub_1D13901EC();
      v54 = sub_1D11DF718(v52, v53, &v80);

      *(v44 + 14) = v54;
      _os_log_impl(&dword_1D101F000, v41, v42, "%{public}s: Failed to add pass to Wallet with error: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v45, -1, -1);
      MEMORY[0x1D38882F0](v44, -1, -1);

      (*(v48 + 8))(v73, v37);
    }

    else
    {

      (*(v8 + 8))(v38, v7);
    }

    if (qword_1EC608CD0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  (*(v35 + 32))(v75, v14, v34);
  v55 = v72;
  sub_1D138F06C();

  v56 = sub_1D138F0AC();
  v57 = sub_1D139081C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v80 = v59;
    *v58 = 136446210;
    v79 = *v23;
    swift_getMetatypeMetadata();
    v60 = sub_1D13901EC();
    v62 = sub_1D11DF718(v60, v61, &v80);
    v35 = v77;

    *(v58 + 4) = v62;
    v34 = v78;
    _os_log_impl(&dword_1D101F000, v56, v57, "%{public}s: Added pass to Wallet", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x1D38882F0](v59, -1, -1);
    MEMORY[0x1D38882F0](v58, -1, -1);
  }

  (*(v8 + 8))(v55, v7);
  v63 = v75;
  sub_1D1384ED8(v75);

  return (*(v35 + 8))(v63, v34);
}

uint64_t sub_1D1384738(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_1D138FF2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  type metadata accessor for SignedClinicalDataWalletHandler();
  v10 = swift_allocObject();
  v11 = *(v2 + 80);
  sub_1D138FF1C();
  sub_1D138FF4C();
  v20 = *(v4 + 8);
  v20(v6, v3);
  (*(v4 + 16))(v6, v9, v3);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  (*(v4 + 32))(v14 + v12, v6, v3);
  v15 = (v14 + v13);
  v16 = v22;
  *v15 = v21;
  v15[1] = v16;

  v17 = v11;

  sub_1D115DB98(v17, sub_1D1385CFC, v14);

  return (v20)(v9, v3);
}

uint64_t sub_1D1384958(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v37 = a4;
  v32 = a3;
  v7 = sub_1D138FECC();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138FF0C();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1385E4C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = swift_allocBox();
  v18 = v17;
  v19 = sub_1D138D39C();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  if (a1 > 4)
  {
    v24 = a1;
  }

  else
  {
    v21 = 1 << a1;
    a1 = 0;
    if ((v21 & 0x19) == 0)
    {
      v22 = [v32 mainRecord];
      if (v22)
      {
        v23 = v22;
        sub_1D138EFEC();
        swift_allocObject();
        sub_1D138EFDC();
        sub_1D138EF9C();
      }

      else
      {
        v20(v15, 1, 1, v19);
      }

      sub_1D132D5B0(v15, v18);
      a1 = 0;
    }
  }

  sub_1D108310C();
  v25 = sub_1D1390A7C();
  v26 = swift_allocObject();
  v27 = v34;
  v26[2] = v33;
  v26[3] = v27;
  v26[4] = v16;
  v26[5] = a1;
  aBlock[4] = sub_1D1385DA0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_12_2;
  v28 = _Block_copy(aBlock);

  v29 = a1;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D1385C18(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D1385E4C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886370](v37, v12, v9, v28);
  _Block_release(v28);

  (*(v38 + 8))(v9, v7);
  (*(v35 + 8))(v12, v36);
}

uint64_t sub_1D1384DE0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1385E4C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  v9 = swift_projectBox();
  swift_beginAccess();
  sub_1D1385DAC(v9, v8);
  a1(v8, a4);
  return sub_1D124CC84(v8);
}

void sub_1D1384ED8(uint64_t a1)
{
  v2 = v1;
  v40 = *v2;
  v4 = sub_1D138D39C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v6;
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v46 = sub_1D138F0BC();
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();
  v13 = *(v5 + 16);
  v45 = a1;
  v42 = v13;
  v13(v9, a1, v4);

  v14 = sub_1D138F0AC();
  v15 = sub_1D139081C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v5;
    v17 = v16;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v17 = 136446466;
    v47 = v40;
    swift_getMetatypeMetadata();
    v18 = sub_1D13901EC();
    v20 = sub_1D11DF718(v18, v19, aBlock);
    v40 = v2;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    sub_1D1385C18(&qword_1EC60A5D8, MEMORY[0x1E6968FB0]);
    v22 = sub_1D13915CC();
    v24 = v23;
    (*(v41 + 8))(v9, v4);
    v25 = sub_1D11DF718(v22, v24, aBlock);
    v2 = v40;

    *(v17 + 14) = v25;
    _os_log_impl(&dword_1D101F000, v14, v15, "%{public}s: Opening URL %{public}s", v17, 0x16u);
    v26 = v39;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v26, -1, -1);
    v27 = v17;
    v5 = v41;
    MEMORY[0x1D38882F0](v27, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 8))(v12, v46);
  v28 = [objc_opt_self() defaultWorkspace];
  if (v28)
  {
    v29 = v28;
    v30 = v45;
    v31 = sub_1D138D30C();
    v32 = v44;
    v42(v44, v30, v4);
    v33 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v34 = swift_allocObject();
    v35 = v5;
    v36 = v34;
    *(v34 + 16) = v2;
    (*(v35 + 32))(v34 + v33, v32, v4);
    aBlock[4] = sub_1D1385C60;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1382B18;
    aBlock[3] = &block_descriptor_85;
    v37 = _Block_copy(aBlock);

    [v29 openURL:v31 configuration:0 completionHandler:v37];
    _Block_release(v37);
  }
}

void sub_1D13853B0(uint64_t a1, void *a2, void **a3, uint64_t a4)
{
  v7 = sub_1D138D39C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D138F0BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v15 = a2;
    sub_1D138F06C();
    (*(v8 + 16))(v10, a4, v7);
    v16 = a2;

    v17 = sub_1D138F0AC();
    v18 = sub_1D13907FC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = v11;
      v20 = v19;
      v35 = swift_slowAlloc();
      v37 = v35;
      *v20 = 136446722;
      v38 = *a3;
      swift_getMetatypeMetadata();
      v21 = sub_1D13901EC();
      v34 = v18;
      v23 = sub_1D11DF718(v21, v22, &v37);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      sub_1D1385C18(&qword_1EC60A5D8, MEMORY[0x1E6968FB0]);
      v24 = sub_1D13915CC();
      v26 = v25;
      (*(v8 + 8))(v10, v7);
      v27 = sub_1D11DF718(v24, v26, &v37);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2082;
      v38 = a2;
      v28 = a2;
      sub_1D10922EC();
      v29 = sub_1D13901EC();
      v31 = sub_1D11DF718(v29, v30, &v37);

      *(v20 + 24) = v31;
      _os_log_impl(&dword_1D101F000, v17, v34, "%{public}s: Failed to open URL %{public}s with error: %{public}s", v20, 0x20u);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v32, -1, -1);
      MEMORY[0x1D38882F0](v20, -1, -1);

      (*(v12 + 8))(v14, v36);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
      (*(v12 + 8))(v14, v11);
    }
  }
}

void sub_1D1385784()
{

  v1 = *(v0 + 80);
}

uint64_t sub_1D13857B4()
{

  v1 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1D13858B8(void *a1)
{
  v2 = v1;
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1EC6105A0) = 0;
  *(v2 + qword_1EC6105A8) = 0;
  *(v2 + qword_1EC6105B0) = 0;
  *(v2 + qword_1EC610598) = a1;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v8 = a1;
  sub_1D13911EC();

  strcpy(v13, "MutableArray<");
  HIWORD(v13[1]) = -4864;
  sub_1D138D5DC();
  v9 = sub_1D138D59C();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1D3885C10](v9, v11);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  return sub_1D138E56C();
}

uint64_t sub_1D1385A50()
{
  v1 = v0;
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  sub_1D138E65C();
  sub_1D138E5FC();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = objc_opt_self();
  v11 = [v10 absoluteDimension_];
  sub_1D138E64C();
  v12 = [v10 absoluteDimension_];
  sub_1D138E62C();
  if ((*(v1 + qword_1EC6105A0) & 1) == 0)
  {
    v13 = [v10 absoluteDimension_];
    sub_1D138E63C();
    v14 = [v10 absoluteDimension_];
    sub_1D138E61C();
  }

  v15 = sub_1D138E6AC();
  v9(v8, v2);
  return v15;
}

uint64_t sub_1D1385C18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1385C60(uint64_t a1, void *a2)
{
  v5 = *(sub_1D138D39C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1D13853B0(a1, a2, v6, v7);
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1385CFC(unint64_t a1)
{
  v3 = *(sub_1D138FF2C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D1384958(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_1D1385DAC(uint64_t a1, uint64_t a2)
{
  sub_1D1385E4C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D1385E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D1385EB8()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setFont_];
  [v2 setNumberOfLines_];
  v3 = v1;
  [v2 setTextColor_];

  v4 = [v0 labelColor];
  [v2 setTextColor_];

  v5 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v2 setFont_];

  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

uint64_t sub_1D13860A8()
{
  v1 = (v0 + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_1D1386198(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return sub_1D1386274();
}

id sub_1D13861FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return sub_1D1386274();
}

id sub_1D1386274()
{
  v1 = *(v0 + OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel);
  v2 = (v0 + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  swift_beginAccess();
  if (v2[1])
  {

    v3 = sub_1D139012C();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText_];

  if (v2[1])
  {
    v4 = *v2 & 0xFFFFFFFFFFFFLL;
    v5 = v2[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4;
  }

  return [v1 setHidden_];
}

id (*sub_1D1386368(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D13863CC;
}

id sub_1D13863CC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D1386274();
  }

  return result;
}

id ConceptTitleTableHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ConceptTitleTableHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel;
  *&v4[v9] = sub_1D1385EB8();
  v10 = &v4[OBJC_IVAR___HRConceptTitleTableHeaderView_title];
  v11 = type metadata accessor for ConceptTitleTableHeaderView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v17.receiver = v4;
  v17.super_class = v11;
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel;
  v14 = *&v12[OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel];
  v15 = v12;
  [v15 addSubview_];
  [*&v12[v13] hk:v15 alignConstraintsWithView:?];

  return v15;
}

id ConceptTitleTableHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptTitleTableHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall EducationPreviewViewControllerProviding.makeEducationPreviewViewController()(UIViewController_optional *__return_ptr retstr)
{
  v3 = v2;
  v4 = v1;
  v5 = (*(v2 + 8))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 educationContent];
    if (v7 && (v8 = v7, v9 = sub_1D13868C0(), v8, (v9 & 1) != 0))
    {
      v10 = (*(v3 + 16))(v4, v3);
      v11 = objc_allocWithZone(type metadata accessor for EducationPreviewViewController());
      sub_1D1386F9C(v6, v10);
    }

    else
    {
    }
  }
}

uint64_t sub_1D13868C0()
{
  if (!*(sub_1D11C4EA4(1, 1) + 16))
  {

    return 0;
  }

  v0 = sub_1D11C5B14();

  v2 = *(v0 + 16);
  if (!v2)
  {
LABEL_9:

    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D1387934(v14);
    return 0;
  }

  v3 = 0;
  v4 = v0 + 32;
  while (v3 < *(v0 + 16))
  {
    sub_1D1072E70(v4, &v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    v7 = (*(v6 + 48))(v5, v6);
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {

      sub_1D1116EB0(&v11, v14);
      sub_1D1387934(v14);
      return 1;
    }

    ++v3;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v11);
    v4 += 40;
    if (v2 == v3)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_1D1386A4C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v2 = result;
    [v0 setFont_];

    LODWORD(v3) = 1148846080;
    [v0 setContentHuggingPriority:1 forAxis:v3];
    [v0 setAdjustsFontForContentSizeCategory_];
    [v0 setMaximumContentSizeCategory_];

    LODWORD(v4) = 1132068864;
    [v0 setContentCompressionResistancePriority:1 forAxis:v4];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D1386B94()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  LODWORD(v2) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setMaximumContentSizeCategory_];

  LODWORD(v3) = 1132068864;
  [v0 setContentCompressionResistancePriority:1 forAxis:v3];
  return v0;
}

id sub_1D1386CD4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1D1386D34()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setMaximumContentSizeCategory_];

  LODWORD(v4) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v0 setContentCompressionResistancePriority:1 forAxis:v5];
  return v0;
}

id sub_1D1386EB4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setAxis_];
    [v4 setDistribution_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1132068864;
    [v4 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1144750080;
    [v4 setContentCompressionResistancePriority:1 forAxis:v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D1386F9C(void *a1, double a2)
{
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___conceptTitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___educationContentLabel] = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___attributionLabel] = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_userConcept] = a1;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_preferredWidth] = a2;
  v5 = &v2[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding];
  *(v5 + 3) = sub_1D120B318();
  *(v5 + 4) = &protocol witness table for HKMedicalUserDomainConcept;
  *v5 = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for EducationPreviewViewController();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  sub_1D138754C();
  v8 = 400.0;
  if (a2 <= 400.0)
  {
    v8 = a2;
  }

  v9 = sub_1D1387280(v8);
  [v7 setPreferredContentSize_];

  return v7;
}

void sub_1D1387140()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for EducationPreviewViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    sub_1D13873C0();
    v4 = sub_1D1386EB4();
    v5 = [v0 view];
    [v4 hk:v5 alignConstraintsWithView:16.0 insets:{16.0, 16.0, 16.0}];
  }

  else
  {
    __break(1u);
  }
}

double sub_1D1387280(double a1)
{
  v2 = v1;
  v3 = a1 + -32.0;
  v4 = *(MEMORY[0x1E69DE090] + 8);
  v5 = sub_1D1386A2C();
  [v5 systemLayoutSizeFittingSize_];

  v6 = sub_1D1386B74();
  [v6 systemLayoutSizeFittingSize_];
  v8 = v7;

  v9 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding + 24);
  v10 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding + 32);
  __swift_project_boxed_opaque_existential_1Tm((v2 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding), v9);
  (*(v10 + 72))(v9, v10);
  if (v11)
  {

    v12 = sub_1D1386CB4();
    [v12 systemLayoutSizeFittingSize_];
  }

  return v8;
}

void sub_1D13873C0()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D1386EB4();
    [v3 addSubview_];

    v5 = OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___stackView;
    v6 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController____lazy_storage___stackView];
    v7 = sub_1D1386A2C();
    [v6 addArrangedSubview_];

    v8 = *&v1[v5];
    v9 = sub_1D1386B74();
    [v8 addArrangedSubview_];

    v10 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding + 24];
    v11 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding + 32];
    __swift_project_boxed_opaque_existential_1Tm(&v1[OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding], v10);
    (*(v11 + 72))(v10, v11);
    if (v12)
    {

      v13 = *&v1[v5];
      v14 = sub_1D1386CB4();
      [v13 addArrangedSubview_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D138754C()
{
  v1 = v0;
  v2 = sub_1D1386A2C();
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 preferredLocalizations];

  v5 = sub_1D139045C();
  HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(v5);

  v6 = sub_1D139012C();

  [v2 setText_];

  v7 = sub_1D1386B74();
  v8 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding);
  v9 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding + 24);
  v10 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC15HealthRecordsUI30EducationPreviewViewController_educationContentProviding), v9);
  (*(v10 + 16))(v9, v10);
  if (v11)
  {
    v12 = sub_1D139012C();
  }

  else
  {
    v12 = 0;
  }

  [v7 setText_];

  v13 = sub_1D1386CB4();
  v14 = v8[3];
  v15 = v8[4];
  __swift_project_boxed_opaque_existential_1Tm(v8, v14);
  (*(v15 + 72))(v14, v15);
  if (v16)
  {
    v17 = sub_1D139012C();
  }

  else
  {
    v17 = 0;
  }

  [v13 setText_];
}

id EducationPreviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EducationPreviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EducationPreviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1387934(uint64_t a1)
{
  sub_1D1387990();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1387990()
{
  if (!qword_1EC60F8A0)
  {
    sub_1D132ABD8();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F8A0);
    }
  }
}

uint64_t sub_1D13879EC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1D138FECC();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D138FF0C();
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138FF3C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 32);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10, v12);
  v23 = v15;
  LOBYTE(v15) = sub_1D138FF5C();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v17 = swift_allocObject();
    v18 = v22;
    v17[2] = v2;
    v17[3] = v18;
    v17[4] = a2;
    aBlock[4] = sub_1D13882AC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_86;
    v19 = _Block_copy(aBlock);

    sub_1D138FEEC();
    v26 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7F60];
    sub_1D130D13C(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
    sub_1D1388320(0, &qword_1EE06B7C0, v20);
    sub_1D13882D0(&qword_1EE06B7B0, &qword_1EE06B7C0, v20);
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v9, v6, v19);
    _Block_release(v19);
    (*(v25 + 8))(v6, v4);
    (*(v7 + 8))(v9, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D1387D94()
{
  if (_xpc_runtime_is_app_sandboxed())
  {
    type metadata accessor for SearchIndexController();
    swift_allocObject();
    result = sub_1D1387DE0();
  }

  else
  {
    result = 0;
  }

  qword_1EE06D978 = result;
  return result;
}

void *sub_1D1387DE0()
{
  v10 = sub_1D1390A6C();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v0[2] = 0xD000000000000014;
  v0[3] = 0x80000001D13CF520;
  v6 = sub_1D108310C();
  v9[0] = &OBJC_IVAR____TtC15HealthRecordsUI21SearchIndexController_indexName;
  v9[1] = v6;
  sub_1D138FEEC();
  v11 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E8030];
  sub_1D130D13C(&qword_1EE06B770, MEMORY[0x1E69E8030]);
  sub_1D1388320(0, &qword_1EE06B7A8, v7);
  sub_1D13882D0(&qword_1EE06B7A0, &qword_1EE06B7A8, v7);
  sub_1D139103C();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  v0[4] = sub_1D1390ABC();
  v0[5] = 0;
  return v0;
}

id sub_1D1388054()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = *MEMORY[0x1E696A378];
    v4 = objc_allocWithZone(MEMORY[0x1E6964E58]);
    v5 = v3;
    v6 = sub_1D139012C();
    v7 = [v4 initWithName:v6 protectionClass:v5];

    v8 = *(v0 + 40);
    *(v0 + 40) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

void sub_1D138810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D1388054();
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D13881D4;
  v7[3] = &block_descriptor_4_0;
  v6 = _Block_copy(v7);

  [v5 deleteAllSearchableItemsWithCompletionHandler_];
  _Block_release(v6);
}

void sub_1D13881D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D1388240()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D13882D0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D1388320(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1388320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D139052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for MedicalAttachmentDataSource()
{
  result = qword_1EC610640;
  if (!qword_1EC610640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D13883C8()
{
  result = type metadata accessor for PresentationContext(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1388494@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AttachmentContext();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1D138AAB4(v12, v10, type metadata accessor for AttachmentContext);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1D138AA54(v10, type metadata accessor for AttachmentContext);
      }

      if (v14)
      {
        break;
      }

      sub_1D138AA54(v10, type metadata accessor for AttachmentContext);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1D12465A0(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1D138864C(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_1D138F0BC();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_1D138D5EC();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  sub_1D13905AC();
  v2[29] = sub_1D139059C();
  v6 = sub_1D139055C();
  v2[30] = v6;
  v2[31] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D13887C4, v6, v5);
}

uint64_t sub_1D13887C4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(*(v0 + 168) + qword_1EC610628);
  v5 = [*(v0 + 160) UUID];
  sub_1D138D5CC();

  v6 = sub_1D138D5AC();
  *(v0 + 256) = v6;
  v7 = *(v2 + 8);
  *(v0 + 264) = v7;
  *(v0 + 272) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D138894C;
  v8 = swift_continuation_init();
  sub_1D12C47E8();
  *(v0 + 136) = v9;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D131A144;
  *(v0 + 104) = &block_descriptor_87;
  *(v0 + 112) = v8;
  [v4 triggerAttachmentRetryForMedicalRecordWithIdentifier:v6 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D138894C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_1D1388AF8;
  }

  else
  {
    v5 = sub_1D1388A7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1388A7C()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1388AF8()
{
  v38 = v0;
  v1 = v0;
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v1 + 160);

  swift_willThrow();

  sub_1D138F06C();

  v5 = v4;
  v6 = v2;
  v7 = sub_1D138F0AC();
  v8 = sub_1D13907FC();

  if (os_log_type_enabled(v7, v8))
  {
    v33 = *(v1 + 280);
    v32 = *(v1 + 264);
    v9 = *(v1 + 224);
    v10 = *(v1 + 208);
    v34 = *(v1 + 192);
    v35 = *(v1 + 184);
    v36 = *(v1 + 200);
    v11 = *(v1 + 176);
    v12 = *(v1 + 160);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136315650;
    *(v1 + 144) = v11;
    swift_getMetatypeMetadata();
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, v37);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = [v12 UUID];
    sub_1D138D5CC();

    sub_1D138A9A8(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v19 = sub_1D13915CC();
    v21 = v20;
    v32(v9, v10);
    v22 = sub_1D11DF718(v19, v21, v37);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    *(v1 + 152) = v33;
    v23 = v33;
    sub_1D10922EC();
    v24 = sub_1D13901EC();
    v26 = sub_1D11DF718(v24, v25, v37);

    *(v13 + 24) = v26;
    _os_log_impl(&dword_1D101F000, v7, v8, "%s: Failed to retry document for record %s: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v14, -1, -1);
    MEMORY[0x1D38882F0](v13, -1, -1);

    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v28 = *(v1 + 192);
    v27 = *(v1 + 200);
    v29 = *(v1 + 184);

    (*(v28 + 8))(v27, v29);
  }

  v30 = *(v1 + 8);

  return v30();
}

uint64_t sub_1D1388E3C()
{
  v0[2] = sub_1D13905AC();
  v0[3] = sub_1D139059C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D1296C44;

  return sub_1D1388EE8();
}

uint64_t sub_1D1388EE8()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_1D138D5EC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1D138F0BC();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  sub_1D13905AC();
  v1[12] = sub_1D139059C();
  v5 = sub_1D139055C();
  v1[13] = v5;
  v1[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1389060, v5, v4);
}

uint64_t sub_1D1389060()
{
  v0[15] = *(v0[4] + qword_1EC610620);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1D1389100;

  return sub_1D1240F2C();
}

uint64_t sub_1D1389100(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v6 = v4[13];
    v7 = v4[14];

    return MEMORY[0x1EEE6DFA0](sub_1D138944C, v6, v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[19] = v8;
    *v8 = v5;
    v8[1] = sub_1D1389280;

    return sub_1D124273C(a1);
  }
}

uint64_t sub_1D1389280(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_1D1389774;
  }

  else
  {
    v4[21] = a1;
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_1D13893A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D13893A8()
{
  v1 = v0[21];
  v2 = v0[17];

  sub_1D1389CE0(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D138944C()
{
  v34 = v0;
  v1 = v0;
  v2 = v0[18];

  sub_1D138F06C();

  v3 = v2;
  v4 = sub_1D138F0AC();
  v5 = sub_1D13907FC();

  if (os_log_type_enabled(v4, v5))
  {
    v30 = v0[10];
    v6 = v0[8];
    v31 = v0[9];
    v32 = v0[11];
    v7 = v0[7];
    v28 = v0[6];
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v10 = 136315650;
    v0[2] = v8;
    swift_getMetatypeMetadata();
    v11 = sub_1D13901EC();
    v13 = sub_1D11DF718(v11, v12, &v33);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = [*(v9 + qword_1EC610618) UUID];
    sub_1D138D5CC();

    sub_1D138A9A8(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v15 = sub_1D13915CC();
    v17 = v16;
    (*(v7 + 8))(v6, v28);
    v18 = sub_1D11DF718(v15, v17, &v33);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v1[3] = v2;
    v19 = v2;
    sub_1D10922EC();
    v20 = sub_1D13901EC();
    v22 = sub_1D11DF718(v20, v21, &v33);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1D101F000, v4, v5, "%s: Failed to fetch document for record %s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v29, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v1[1];

  return v26();
}

uint64_t sub_1D1389774()
{
  v34 = v0;
  v1 = v0;

  v2 = v0[20];

  sub_1D138F06C();

  v3 = v2;
  v4 = sub_1D138F0AC();
  v5 = sub_1D13907FC();

  if (os_log_type_enabled(v4, v5))
  {
    v30 = v0[10];
    v6 = v0[8];
    v31 = v0[9];
    v32 = v0[11];
    v7 = v0[7];
    v28 = v0[6];
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v10 = 136315650;
    v0[2] = v8;
    swift_getMetatypeMetadata();
    v11 = sub_1D13901EC();
    v13 = sub_1D11DF718(v11, v12, &v33);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = [*(v9 + qword_1EC610618) UUID];
    sub_1D138D5CC();

    sub_1D138A9A8(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v15 = sub_1D13915CC();
    v17 = v16;
    (*(v7 + 8))(v6, v28);
    v18 = sub_1D11DF718(v15, v17, &v33);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v1[3] = v2;
    v19 = v2;
    sub_1D10922EC();
    v20 = sub_1D13901EC();
    v22 = sub_1D11DF718(v20, v21, &v33);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1D101F000, v4, v5, "%s: Failed to fetch document for record %s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v29, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];

    (*(v24 + 8))(v23, v25);
  }

  v26 = v1[1];

  return v26();
}

uint64_t sub_1D1389AA4()
{
  sub_1D138A880(0, &qword_1EC60D968, sub_1D1213AF4, MEMORY[0x1E695C070]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - v4;
  v6 = qword_1EC62FEA8;
  if (*(v0 + qword_1EC62FEA8))
  {
  }

  v8 = type metadata accessor for DownloadableAttachmentStateChangeListener();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC15HealthRecordsUI41DownloadableAttachmentStateChangeListener__latestChange;
  v19 = 0;
  sub_1D1213AF4(0);

  sub_1D138F77C();
  (*(v3 + 32))(&v9[v10], v5, v2);
  v11 = &v9[OBJC_IVAR____TtC15HealthRecordsUI41DownloadableAttachmentStateChangeListener_handler];
  *v11 = sub_1D138A8E4;
  v11[1] = v0;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = *(v0 + v6);
  *(v0 + v6) = v12;
  v14 = v12;

  [*(v0 + qword_1EC610628) addClinicalDocumentStateChangeListener_];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  type metadata accessor for CancellationToken();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = sub_1D138A8EC;
  *(result + 32) = v16;
  return result;
}

uint64_t sub_1D1389CE0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  sub_1D138A9F0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttachmentContext();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  result = sub_1D138E58C();
  v20 = qword_1EC610638;
  if ((*(v2 + qword_1EC610638) & 1) == 0)
  {
    sub_1D138AAB4(v2 + qword_1EC610630, v11, type metadata accessor for PresentationContext);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_1D138AA54(v11, type metadata accessor for PresentationContext);
    }

    else
    {
      v25 = v8;
      v21 = *(v13 + 32);
      v21(v15, v11, v12);
      v22 = (v21)(v18, v15, v12);
      MEMORY[0x1EEE9AC00](v22);
      *(&v24 - 2) = v18;
      sub_1D1388494(sub_1D138AA24, v28, v5);
      if ((*(v26 + 48))(v5, 1, v27) == 1)
      {
        sub_1D138AA54(v5, sub_1D138A9F0);
      }

      else
      {
        v23 = v25;
        sub_1D12465A0(v5, v25);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1D1312020(v23);
          swift_unknownObjectRelease();
        }

        sub_1D138AA54(v23, type metadata accessor for AttachmentContext);
        *(v2 + v20) = 1;
      }

      return (*(v13 + 8))(v18, v12);
    }
  }

  return result;
}

uint64_t sub_1D138A09C(void *a1, uint64_t a2)
{
  sub_1D138A880(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v23 - v13;
  v15 = [a1 medicalRecordIdentifier];
  sub_1D138D5CC();

  v16 = [*(a2 + qword_1EC610618) UUID];
  sub_1D138D5CC();

  LOBYTE(v16) = sub_1D138D5BC();
  v17 = *(v8 + 8);
  v17(v10, v7);
  result = (v17)(v14, v7);
  if (v16)
  {
    v19 = sub_1D13905DC();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_1D13905AC();

    v20 = sub_1D139059C();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = a2;
    sub_1D107877C(0, 0, v6, &unk_1D13B4ED0, v21);
  }

  return result;
}

uint64_t sub_1D138A328()
{
  v0[2] = sub_1D13905AC();
  v0[3] = sub_1D139059C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D10AA380;

  return sub_1D1388EE8();
}

uint64_t sub_1D138A3D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + qword_1EC610628) removeClinicalDocumentStateChangeListener_];
  }

  return result;
}

uint64_t sub_1D138A44C()
{

  sub_1D138AA54(v0 + qword_1EC610630, type metadata accessor for PresentationContext);
}

uint64_t sub_1D138A4E0()
{
  v1 = *(v0 + qword_1EC62FEB0);
  if (v1)
  {
    swift_beginAccess();
    if ((*(v1 + 16) & 1) == 0)
    {
      *(v1 + 16) = 1;
      swift_beginAccess();
      v2 = *(v1 + 24);

      v2(v3);
    }
  }

  v4 = sub_1D138E5CC();

  sub_1D138AA54(v4 + qword_1EC610630, type metadata accessor for PresentationContext);

  return v4;
}

uint64_t sub_1D138A610()
{
  sub_1D138A4E0();

  return swift_deallocClassInstance();
}

void *sub_1D138A69C(uint64_t a1)
{
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v6 = sub_1D138E6AC();
  (*(v3 + 8))(v5, v2);
  if (!a1)
  {
    [v6 contentInsets];
    [v6 setContentInsets_];
  }

  [v6 contentInsets];
  [v6 setContentInsets_];
  return v6;
}

void sub_1D138A880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D138A8F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D108077C;

  return sub_1D138A328();
}

uint64_t sub_1D138A9A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D138AA54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D138AAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect UIGraphicsGetPDFContextBounds(void)
{
  MEMORY[0x1EEE4DD38]();
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}