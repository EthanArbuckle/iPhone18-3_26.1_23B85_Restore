uint64_t sub_22B96AA6C@<X0>(uint64_t *a1@<X8>)
{
  sub_22B969400(0, v82);
  sub_22B9695D0(0, v81);
  sub_22B96997C(0, v80);
  sub_22B969B54(0, v79);
  sub_22B969D38(0, &unk_283F51498, &unk_283F514F8, v78);
  sub_22B969F24(0, v77);
  sub_22B96A10C(1, v76);
  sub_22B96A2E4(0, v75);
  sub_22B96A4BC(0, v74);
  sub_22B96A694(0, v73);
  if (qword_281416508 != -1)
  {
    swift_once();
  }

  v2 = [qword_28141AE28 recordStoreFor_];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [qword_28141AE28 recordStoreFor_];
  if (!v4)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    sub_22B96F460();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [qword_28141AE28 recordStoreFor_];
  if (!v6)
  {
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v7 = v6;
  v8 = qword_28141AE08;
  if (!qword_28141AE08 || !qword_28141AE30)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v66 = qword_28141AE30;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22B9DB620();
  v64 = v9;
  sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22BA153A0;
  if (qword_28141AE18)
  {
    v11 = qword_28141AE18;
  }

  else
  {
    type metadata accessor for NoOpPreReqVerifier();
    v11 = swift_allocObject();
  }

  v14 = qword_28141AE10;
  *(v10 + 56) = &type metadata for SyncPreReqsVerifierStep;
  *(v10 + 64) = &off_283F587B8;
  v15 = swift_allocObject();
  *(v10 + 32) = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  *(v10 + 96) = &type metadata for PrepareDatabaseStep;
  *(v10 + 104) = &off_283F53910;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22BA13E30;
  *(v16 + 32) = v3;
  *(v16 + 40) = v5;
  *(v16 + 48) = v7;
  *(v10 + 136) = &type metadata for LocalStateManagementStep;
  *(v10 + 144) = &off_283F52D68;
  v17 = swift_allocObject();
  *(v10 + 112) = v17;
  v17[1] = vdupq_n_s64(1uLL);
  v17[2].i8[0] = 0;
  v17[2].i64[1] = 0;
  v17[3].i64[0] = 0;
  v17[3].i64[1] = v16;
  v17[4].i64[0] = v8;
  sub_22B9349C8(&qword_27D8D5198, &qword_22BA15440);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22BA153B0;
  sub_22B935B38(v82, v18 + 32);
  sub_22B935B38(v81, v18 + 72);
  sub_22B935B38(v80, v18 + 112);
  sub_22B935B38(v78, v18 + 152);
  sub_22B935B38(v76, v18 + 192);
  sub_22B935B38(v75, v18 + 232);
  sub_22B935B38(v73, v18 + 272);
  sub_22B935B38(v79, v18 + 312);
  sub_22B935B38(v77, v18 + 352);
  sub_22B935B38(v74, v18 + 392);
  *(v10 + 176) = &type metadata for RecordZonesPrepStep;
  *(v10 + 184) = &off_283F55950;
  v19 = swift_allocObject();
  *(v10 + 152) = v19;
  *(v19 + 16) = 0x6D6F44616964654DLL;
  *(v19 + 24) = 0xEB000000006E6961;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  *(v19 + 56) = v18;
  *(v19 + 64) = v66;
  *(v10 + 216) = &type metadata for PrepareStatisticsStep;
  *(v10 + 224) = &off_283F53228;
  *(v10 + 192) = 0;
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22BA13420;
  sub_22B935B38(v82, &v70);
  type metadata accessor for CloudState();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v14) = sub_22BA0876C();
  Current = CFAbsoluteTimeGetCurrent();
  type metadata accessor for DuplicateCountReadHandler();
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v22 + 112) = MEMORY[0x277D84F98];
  *(v20 + 56) = &type metadata for RecordZoneReader;
  *(v20 + 64) = &off_283F55540;
  v23 = swift_allocObject();
  *(v20 + 32) = v23;
  *(v23 + 88) = &type metadata for SyncStoreReadHandler;
  *(v23 + 96) = &off_283F55648;
  v24 = swift_allocObject();
  *(v23 + 64) = v24;
  *(v24 + 16) = Current;
  *(v24 + 24) = 0;
  *(v24 + 32) = (v14 & 1) == 0;
  *(v24 + 40) = v22;
  *(v23 + 16) = 1;
  sub_22B92DFEC(&v70, v23 + 24);
  *(v23 + 104) = 0;
  *(v23 + 112) = 1;
  *(v23 + 113) = 256;
  *(v23 + 115) = 1;
  *(v23 + 120) = 0;
  *(v23 + 128) = 0;
  v25 = MEMORY[0x277D84F98];
  sub_22B935B38(v81, &v70);
  v26 = CFAbsoluteTimeGetCurrent();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v27 + 112) = v25;
  *(v20 + 96) = &type metadata for RecordZoneReader;
  *(v20 + 104) = &off_283F55540;
  v28 = swift_allocObject();
  *(v20 + 72) = v28;
  *(v28 + 88) = &type metadata for SyncStoreReadHandler;
  *(v28 + 96) = &off_283F55648;
  v29 = swift_allocObject();
  *(v28 + 64) = v29;
  *(v29 + 16) = v26;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 40) = v27;
  *(v28 + 16) = 1;
  sub_22B92DFEC(&v70, v28 + 24);
  *(v28 + 104) = 0;
  *(v28 + 112) = 1;
  *(v28 + 113) = 256;
  *(v28 + 115) = 1;
  *(v28 + 120) = 0;
  *(v28 + 128) = 0;
  if (qword_2814158A8 != -1)
  {
    swift_once();
  }

  v30 = qword_28141ADA8;
  *(v20 + 136) = &type metadata for ImportStep;
  *(v20 + 144) = &off_283F52E58;
  v31 = swift_allocObject();
  *(v20 + 112) = v31;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = &unk_283F515D8;
  *(v31 + 48) = v30;
  *(v10 + 256) = &type metadata for MultiStepSyncStep;
  *(v10 + 264) = &off_283F54C78;
  v32 = swift_allocObject();
  *(v10 + 232) = v32;
  *(v32 + 16) = 0;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 24) = v20;
  *(v32 + 48) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22BA153C0;
  sub_22B935B38(v80, &v70);
  v65 = v30;
  swift_retain_n();
  v34 = CFAbsoluteTimeGetCurrent();
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v35 + 112) = v25;
  v68 = &type metadata for SyncStoreReadHandler;
  v69 = &off_283F55648;
  v36 = swift_allocObject();
  *&v67 = v36;
  *(v36 + 16) = v34;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 40) = v35;
  v37 = sub_22BA0FFCC();
  v38 = IMBagIntValueWithDefault();

  *(v33 + 56) = &type metadata for RecordZoneReader;
  *(v33 + 64) = &off_283F55540;
  v39 = swift_allocObject();
  *(v33 + 32) = v39;
  *(v39 + 16) = 0;
  sub_22B92DFEC(&v70, v39 + 24);
  sub_22B92DFEC(&v67, v39 + 64);
  *(v39 + 104) = v38;
  *(v39 + 112) = 0;
  *(v39 + 113) = 257;
  *(v39 + 115) = 1;
  *(v39 + 120) = 0;
  *(v39 + 128) = 0;
  v71 = &type metadata for RecordZoneReader;
  v72 = &off_283F55540;
  v40 = swift_allocObject();
  *&v70 = v40;
  sub_22B935B38(v79, v40 + 24);
  v41 = CFAbsoluteTimeGetCurrent();
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v42 + 112) = MEMORY[0x277D84F98];
  *(v40 + 88) = &type metadata for SyncStoreReadHandler;
  *(v40 + 96) = &off_283F55648;
  v43 = swift_allocObject();
  *(v40 + 64) = v43;
  *(v43 + 16) = v41;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 40) = v42;
  v44 = sub_22BA0FFCC();
  v45 = IMBagIntValueWithDefault();

  *(v40 + 16) = 0;
  *(v40 + 104) = v45;
  *(v40 + 112) = 0;
  *(v40 + 113) = 257;
  *(v40 + 115) = 1;
  *(v40 + 120) = 0;
  *(v40 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v70, v33 + 72);
  }

  else
  {
    *(v33 + 96) = &type metadata for NoOpSyncStep;
    *(v33 + 104) = &off_283F54C38;
    *(v33 + 72) = 0;
    *(v33 + 80) = 0;
    *(v33 + 88) = 0;
  }

  sub_22B936C4C(&v70);
  sub_22B935B38(v78, &v70);
  v46 = CFAbsoluteTimeGetCurrent();
  v47 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v47 + 112) = MEMORY[0x277D84F98];
  v68 = &type metadata for SyncStoreReadHandler;
  v69 = &off_283F55648;
  v48 = swift_allocObject();
  *&v67 = v48;
  *(v48 + 16) = v46;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 40) = v47;
  v49 = sub_22BA0FFCC();
  v50 = IMBagIntValueWithDefault();

  *(v33 + 136) = &type metadata for RecordZoneReader;
  *(v33 + 144) = &off_283F55540;
  v51 = swift_allocObject();
  *(v33 + 112) = v51;
  *(v51 + 16) = 0;
  sub_22B92DFEC(&v70, v51 + 24);
  sub_22B92DFEC(&v67, v51 + 64);
  *(v51 + 104) = v50;
  *(v51 + 112) = 0;
  *(v51 + 113) = 257;
  *(v51 + 115) = 1;
  *(v51 + 120) = 0;
  *(v51 + 128) = 0;
  v71 = &type metadata for RecordZoneReader;
  v72 = &off_283F55540;
  v52 = swift_allocObject();
  *&v70 = v52;
  sub_22B935B38(v77, v52 + 24);
  v53 = CFAbsoluteTimeGetCurrent();
  v54 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v54 + 112) = MEMORY[0x277D84F98];
  *(v52 + 88) = &type metadata for SyncStoreReadHandler;
  *(v52 + 96) = &off_283F55648;
  v55 = swift_allocObject();
  *(v52 + 64) = v55;
  *(v55 + 16) = v53;
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 40) = v54;
  v56 = sub_22BA0FFCC();
  v57 = IMBagIntValueWithDefault();

  *(v52 + 16) = 0;
  *(v52 + 104) = v57;
  *(v52 + 112) = 0;
  *(v52 + 113) = 257;
  *(v52 + 115) = 1;
  *(v52 + 120) = 0;
  *(v52 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v70, v33 + 152);
  }

  else
  {
    *(v33 + 176) = &type metadata for NoOpSyncStep;
    *(v33 + 184) = &off_283F54C38;
    *(v33 + 152) = 0;
    *(v33 + 160) = 0;
    *(v33 + 168) = 0;
  }

  sub_22B936C4C(&v70);
  *(v33 + 216) = &type metadata for ImportStep;
  *(v33 + 224) = &off_283F52E58;
  v58 = swift_allocObject();
  *(v33 + 192) = v58;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  *(v58 + 40) = &unk_283F51600;
  *(v58 + 48) = v65;
  *(v10 + 296) = &type metadata for MultiStepSyncStep;
  *(v10 + 304) = &off_283F54C78;
  v59 = swift_allocObject();
  *(v10 + 272) = v59;
  *(v59 + 16) = 0;
  *(v59 + 32) = 0;
  *(v59 + 40) = 0;
  *(v59 + 24) = v33;
  *(v59 + 48) = 1;
  *(v10 + 336) = &type metadata for ReportDiagnosticTelemetryStep;
  *(v10 + 344) = &off_283F53510;
  *(v10 + 312) = 0;
  *(v10 + 320) = 0;
  *(v10 + 328) = 0;
  if (qword_28141AE10)
  {
    v60 = qword_28141AE10;
  }

  else
  {
    v60 = [objc_allocWithZone(NoOpBackupController) init];
  }

  *(v10 + 376) = &type metadata for SyncCompleteStep;
  *(v10 + 384) = &off_283F563A0;
  v61 = swift_allocObject();
  *(v10 + 352) = v61;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 40) = v60;
  v71 = &type metadata for CloudKitSyncRetryStrategy;
  v72 = &off_283F54398;
  v62 = type metadata accessor for SyncJob();
  v63 = swift_allocObject();
  sub_22B943D3C(&v70, &type metadata for CloudKitSyncRetryStrategy);
  *(v63 + 56) = &type metadata for CloudKitSyncRetryStrategy;
  *(v63 + 64) = &off_283F54398;
  *(v63 + 24) = v66;
  *(v63 + 72) = 1;
  *(v63 + 80) = v64;
  *(v63 + 88) = v10;
  *(v63 + 96) = 0x1000000;
  *(v63 + 16) = 0;
  *(v63 + 100) = 1;
  *(v63 + 104) = 0;
  *(v63 + 112) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22B936C4C(&v70);
  a1[3] = v62;
  a1[4] = &off_283F54680;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *a1 = v63;
LABEL_14:
  sub_22B936C4C(v73);
  sub_22B936C4C(v74);
  sub_22B936C4C(v75);
  sub_22B936C4C(v76);
  sub_22B936C4C(v77);
  sub_22B936C4C(v78);
  sub_22B936C4C(v79);
  sub_22B936C4C(v80);
  sub_22B936C4C(v81);
  return sub_22B936C4C(v82);
}

uint64_t sub_22B96B890@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v51 = a1;
  v49 = a2;
  v4 = sub_22B9349C8(&qword_27D8D51A0, &qword_22BA15448);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v44 - v7;
  v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v44 - v16;
  v18 = sub_22B96F578();
  v19 = v18;
  v21 = v20;
  if ((v20 & 1) == 0)
  {
    v48[2] = v3;
    v48[3] = v2;
    v22 = sub_22B96F788(v18, 0);
    v24 = v23;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v25 = sub_22BA0FEFC();
    sub_22B936CA8(v25, qword_28141AD40);

    v26 = sub_22BA0FEDC();
    v27 = sub_22BA1046C();

    if (os_log_type_enabled(v26, v27))
    {
      v46 = v27;
      HIBYTE(v48[1]) = -18;
      v47 = v26;
      strcpy(v48, "(no sync date)");
      v28 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v28 = 136315394;
      v29 = sub_22B99153C(v22, v24, &v50);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2080;
      if (qword_28141AE08)
      {
        v30 = [qword_28141AE08 lastSyncDate];
        if (v30)
        {
          v31 = v30;
          sub_22BA0FD5C();

          v32 = sub_22BA0FD8C();
          (*(*(v32 - 8) + 56))(v14, 0, 1, v32);
        }

        else
        {
          v32 = sub_22BA0FD8C();
          (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
        }

        sub_22B935A74(v14, v17);
        sub_22BA0FD8C();
        v33 = *(v32 - 8);
        if ((*(v33 + 48))(v17, 1, v32) == 1)
        {
          sub_22B936BEC(v17, &unk_27D8D4A90, &qword_22BA126A0);
        }

        else
        {
          sub_22BA0FDDC();
          v34 = sub_22BA0FDEC();
          (*(*(v34 - 8) + 56))(v8, 0, 1, v34);
          v48[0] = sub_22BA0FCDC();
          v48[1] = v35;
          sub_22B936BEC(v8, &qword_27D8D51A0, &qword_22BA15448);
          (*(v33 + 8))(v17, v32);
        }
      }

      v36 = sub_22B99153C(v48[0], v48[1], &v50);

      *(v28 + 14) = v36;
      v37 = v47;
      _os_log_impl(&dword_22B92A000, v47, v46, "Scheduling periodic sync with %s, lastSyncDate %s", v28, 0x16u);
      v38 = v45;
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v38, -1, -1);
      MEMORY[0x23189ADD0](v28, -1, -1);
    }

    else
    {
    }
  }

  v52 = 2;
  v39 = *MEMORY[0x277D86298];
  v40 = sub_22BA0FFCC();
  v41 = IMBagIntValueWithDefault();

  sub_22B9DB77C(v41, 12, v19, v21 & 1);
  sub_22B96C910(&v52, 4, 5, v42, v51 & 1, v49);
  return swift_unknownObjectRelease();
}

uint64_t sub_22B96BDB4@<X0>(uint64_t *a1@<X8>)
{
  sub_22B969400(1, v18);
  sub_22B96997C(1, v17);
  sub_22B969D38(1, &unk_283F51458, 0, v16);
  sub_22B96A10C(1, v15);
  sub_22B96A2E4(1, v14);
  sub_22B96A694(1, v13);
  v2 = qword_28141AE30;
  if (qword_28141AE30)
  {
    swift_unknownObjectRetain_n();
    sub_22B9DB620();
    v4 = v3;
    sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22BA13CB0;
    sub_22B9349C8(&qword_27D8D5198, &qword_22BA15440);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22BA153D0;
    sub_22B935B38(v18, v6 + 32);
    sub_22B935B38(v17, v6 + 72);
    sub_22B935B38(v16, v6 + 112);
    sub_22B935B38(v15, v6 + 152);
    sub_22B935B38(v14, v6 + 192);
    sub_22B935B38(v13, v6 + 232);
    *(v5 + 56) = &type metadata for RecordZonesPrepStep;
    *(v5 + 64) = &off_283F55950;
    v7 = swift_allocObject();
    *(v5 + 32) = v7;
    *(v7 + 16) = 0x6D6F44616964654DLL;
    *(v7 + 24) = 0xEB000000006E6961;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = v6;
    *(v7 + 64) = v2;
    v12[3] = &type metadata for CloudKitSyncRetryStrategy;
    v12[4] = &off_283F54398;
    v8 = type metadata accessor for SyncJob();
    v9 = swift_allocObject();
    sub_22B943D3C(v12, &type metadata for CloudKitSyncRetryStrategy);
    *(v9 + 56) = &type metadata for CloudKitSyncRetryStrategy;
    *(v9 + 64) = &off_283F54398;
    *(v9 + 24) = v2;
    *(v9 + 72) = 1;
    *(v9 + 80) = v4;
    *(v9 + 88) = v5;
    *(v9 + 96) = 151519232;
    *(v9 + 16) = 1280;
    *(v9 + 100) = 1;
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    swift_unknownObjectRetain();
    sub_22B936C4C(v12);
    a1[3] = v8;
    a1[4] = &off_283F54680;
    swift_unknownObjectRelease();
    *a1 = v9;
  }

  else
  {
    sub_22B96F460();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }

  sub_22B936C4C(v13);
  sub_22B936C4C(v14);
  sub_22B936C4C(v15);
  sub_22B936C4C(v16);
  sub_22B936C4C(v17);
  return sub_22B936C4C(v18);
}

uint64_t sub_22B96C070@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_22B969D38(0, &unk_283F51498, &unk_283F514F8, v20);
  if (qword_281416508 != -1)
  {
    swift_once();
  }

  v5 = [qword_28141AE28 assetStore];
  if (v5)
  {
    v6 = v5;
    if (qword_28141AE30)
    {
      v18 = qword_28141AE30;
    }

    else
    {
      v18 = [objc_allocWithZone(NoOpErrorAnalyzer) init];
    }

    swift_unknownObjectRetain();
    sub_22B9DBCF0();
    v17 = v9;
    sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22BA13410;
    v20[6] = v2;
    if (qword_28141AE18)
    {
      v11 = qword_28141AE18;
    }

    else
    {
      type metadata accessor for NoOpPreReqVerifier();
      v11 = swift_allocObject();
    }

    v12 = qword_28141AE10;
    *(v10 + 56) = &type metadata for SyncPreReqsVerifierStep;
    *(v10 + 64) = &off_283F587B8;
    v13 = swift_allocObject();
    *(v10 + 32) = v13;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = v11;
    *(v13 + 48) = v12;
    *(v10 + 96) = &type metadata for AttachmentAssetDownloadStep;
    *(v10 + 104) = &off_283F588D0;
    v14 = swift_allocObject();
    *(v10 + 72) = v14;
    sub_22B935B38(v20, v14 + 40);
    *(v14 + 16) = 1;
    *(v14 + 80) = v6;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v19[3] = &type metadata for CloudKitSyncRetryStrategy;
    v19[4] = &off_283F54398;
    v15 = type metadata accessor for SyncJob();
    v16 = swift_allocObject();
    sub_22B943D3C(v19, &type metadata for CloudKitSyncRetryStrategy);
    *(v16 + 56) = &type metadata for CloudKitSyncRetryStrategy;
    *(v16 + 64) = &off_283F54398;
    *(v16 + 24) = v18;
    *(v16 + 72) = a1 & 1;
    *(v16 + 80) = v17;
    *(v16 + 88) = v10;
    *(v16 + 96) = 185204736;
    *(v16 + 16) = 1024;
    *(v16 + 100) = 0;
    *(v16 + 104) = 0;
    *(v16 + 112) = 0;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_22B936C4C(v19);
    a2[3] = v15;
    a2[4] = &off_283F54680;
    swift_unknownObjectRelease();
    *a2 = v16;
    return sub_22B936C4C(v20);
  }

  else
  {
    sub_22B96F460();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
    return sub_22B936C4C(v20);
  }
}

uint64_t sub_22B96C35C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  sub_22B9697A8(0, v23);
  v4 = qword_28141AE30;
  if (qword_28141AE30)
  {
    swift_unknownObjectRetain();
    sub_22B9DBBF0();
    v19 = v5;
    sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22BA153C0;
    v24 = a1;
    if (qword_28141AE18)
    {
      v7 = qword_28141AE18;
    }

    else
    {
      type metadata accessor for NoOpPreReqVerifier();
      v7 = swift_allocObject();
    }

    v9 = qword_28141AE10;
    *(v6 + 56) = &type metadata for SyncPreReqsVerifierStep;
    *(v6 + 64) = &off_283F587B8;
    v10 = swift_allocObject();
    *(v6 + 32) = v10;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 40) = v7;
    *(v10 + 48) = v9;
    sub_22B9349C8(&qword_27D8D5198, &qword_22BA15440);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22BA13CB0;
    sub_22B935B38(v23, v11 + 32);
    *(v6 + 96) = &type metadata for RecordZonesPrepStep;
    *(v6 + 104) = &off_283F55950;
    v12 = swift_allocObject();
    *(v6 + 72) = v12;
    *(v12 + 16) = 0x6D6F44616964654DLL;
    *(v12 + 24) = 0xEB000000006E6961;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = v11;
    *(v12 + 64) = v4;
    *(v6 + 136) = &type metadata for TelemetryCheckStep;
    *(v6 + 144) = &off_283F547F0;
    *(v6 + 112) = 0;
    *(v6 + 120) = 0;
    *(v6 + 128) = 0;
    sub_22B935B38(v23, &v20);
    Handler = type metadata accessor for DuplicateCountReadHandler();
    v14 = swift_allocObject();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_defaultActor_initialize();
    *(v14 + 112) = MEMORY[0x277D84F98];
    *(v6 + 176) = &type metadata for RecordZoneReader;
    *(v6 + 184) = &off_283F55540;
    v15 = swift_allocObject();
    *(v6 + 152) = v15;
    *(v15 + 88) = Handler;
    *(v15 + 96) = &off_283F57118;
    *(v15 + 64) = v14;
    *(v15 + 16) = 1;
    sub_22B92DFEC(&v20, v15 + 24);
    *(v15 + 104) = 0;
    *(v15 + 112) = 1;
    *(v15 + 113) = 0;
    *(v15 + 115) = 1;
    *(v15 + 120) = 0;
    *(v15 + 128) = 0;
    *(v6 + 216) = &type metadata for ReportDiagnosticTelemetryStep;
    *(v6 + 224) = &off_283F53510;
    *(v6 + 192) = 0;
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
    v21 = &type metadata for CloudKitSyncRetryStrategy;
    v22 = &off_283F54398;
    v16 = type metadata accessor for SyncJob();
    v17 = swift_allocObject();
    sub_22B943D3C(&v20, &type metadata for CloudKitSyncRetryStrategy);
    *(v17 + 56) = &type metadata for CloudKitSyncRetryStrategy;
    *(v17 + 64) = &off_283F54398;
    *(v17 + 24) = v4;
    *(v17 + 72) = v24 & 1;
    *(v17 + 80) = v19;
    *(v17 + 88) = v6;
    *(v17 + 96) = 252575744;
    *(v17 + 16) = 1792;
    *(v17 + 100) = 1;
    *(v17 + 104) = 0;
    *(v17 + 112) = 0;
    swift_unknownObjectRetain();
    sub_22B936C4C(&v20);
    a2[3] = v16;
    a2[4] = &off_283F54680;
    swift_unknownObjectRelease();
    *a2 = v17;
  }

  else
  {
    sub_22B96F460();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();
  }

  return sub_22B936C4C(v23);
}

uint64_t sub_22B96C6D8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (qword_28141AE30)
  {
    v3 = qword_28141AE30;
  }

  else
  {
    v3 = [objc_allocWithZone(NoOpErrorAnalyzer) init];
  }

  swift_unknownObjectRetain();
  sub_22B9DB620();
  v5 = v4;
  sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22BA13410;
  if (qword_28141AE18)
  {
    v7 = qword_28141AE18;
  }

  else
  {
    type metadata accessor for NoOpPreReqVerifier();
    v7 = swift_allocObject();
  }

  v8 = qword_28141AE10;
  *(v6 + 56) = &type metadata for SyncPreReqsVerifierStep;
  *(v6 + 64) = &off_283F587B8;
  v9 = swift_allocObject();
  *(v6 + 32) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = qword_2814158A8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28141ADA8;
  *(v6 + 96) = &type metadata for ImportStragglersStep;
  *(v6 + 104) = &off_283F573F0;
  v12 = swift_allocObject();
  *(v6 + 72) = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = v11;
  v17[3] = &type metadata for CloudKitSyncRetryStrategy;
  v17[4] = &off_283F54398;
  v13 = type metadata accessor for SyncJob();
  v14 = swift_allocObject();
  sub_22B943D3C(v17, &type metadata for CloudKitSyncRetryStrategy);
  *(v14 + 56) = &type metadata for CloudKitSyncRetryStrategy;
  *(v14 + 64) = &off_283F54398;
  *(v14 + 24) = v3;
  *(v14 + 72) = a1 & 1;
  *(v14 + 80) = v5;
  *(v14 + 88) = v6;
  *(v14 + 96) = 185204736;
  *(v14 + 16) = 2304;
  *(v14 + 100) = 0;
  *(v14 + 104) = 0;
  *(v14 + 112) = 0;

  result = sub_22B936C4C(v17);
  a2[3] = v13;
  a2[4] = &off_283F54680;
  *a2 = v14;
  return result;
}

uint64_t sub_22B96C910@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  sub_22B969400(0, v246);
  sub_22B9695D0(0, v245);
  sub_22B96997C(0, v244);
  sub_22B969B54(0, v243);
  sub_22B969D38(0, &unk_283F51458, 0, v242);
  sub_22B969F24(0, v241);
  sub_22B96A10C(0, v240);
  sub_22B96A2E4(0, v239);
  sub_22B96A4BC(0, v238);
  sub_22B96A694(0, v237);
  if (qword_281416508 != -1)
  {
    swift_once();
  }

  v12 = [qword_28141AE28 recordStoreFor_];
  if (!v12)
  {
    goto LABEL_44;
  }

  v226 = a3;
  v227 = v11;
  v225 = a2;
  v13 = v12;
  v14 = [qword_28141AE28 deletingStoreFor_];
  if (!v14)
  {
LABEL_43:
    swift_unknownObjectRelease();
LABEL_44:
    sub_22B96F460();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    goto LABEL_45;
  }

  v15 = v14;
  v224 = a4;
  v16 = [qword_28141AE28 recordStoreFor_];
  if (!v16)
  {
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v17 = v16;
  v222 = a6;
  v18 = [qword_28141AE28 deletingStoreFor_];
  if (!v18)
  {
LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v19 = v18;
  v223 = [qword_28141AE28 recordStoreFor_];
  if (!v223)
  {
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v221 = [qword_28141AE28 recordStoreFor_];
  if (!v221)
  {
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v220 = [qword_28141AE28 recordStoreFor_];
  if (!v220)
  {
LABEL_38:
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v219 = [qword_28141AE28 recordStoreFor_];
  if (!v219)
  {
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v218 = [qword_28141AE28 deletingStoreFor_];
  if (!v218)
  {
LABEL_36:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v217 = [qword_28141AE28 recordStoreFor_];
  if (!v217)
  {
LABEL_35:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v20 = [qword_28141AE28 deletingStoreFor_];
  if (!v20)
  {
LABEL_34:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v215 = v20;
  v21 = [qword_28141AE28 recordStoreFor_];
  if (!v21)
  {
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v22 = v21;
  v23 = [qword_28141AE28 deletingStoreFor_];
  if (!v23)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v208 = v22;
  v209 = v23;
  if (!qword_28141AE08 || (v207 = qword_28141AE30) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v206 = qword_28141AE08;
  sub_22B9349C8(&qword_27D8D5190, &qword_22BA15438);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22BA153E0;
  if (qword_28141AE18)
  {
    v210 = qword_28141AE18;
  }

  else
  {
    type metadata accessor for NoOpPreReqVerifier();
    v210 = swift_allocObject();
  }

  v27 = qword_28141AE10;
  *(v24 + 56) = &type metadata for SyncPreReqsVerifierStep;
  *(v24 + 64) = &off_283F587B8;
  v28 = swift_allocObject();
  *(v24 + 32) = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = v210;
  *(v28 + 48) = v27;
  *(v24 + 96) = &type metadata for PrepareDatabaseStep;
  *(v24 + 104) = &off_283F53910;
  *(v24 + 72) = 0;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0;
  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22BA153F0;
  *(v29 + 32) = v13;
  *(v29 + 40) = v17;
  *(v29 + 48) = v219;
  *(v29 + 56) = v22;
  *(v24 + 136) = &type metadata for LocalStateManagementStep;
  *(v24 + 144) = &off_283F52D68;
  v30 = swift_allocObject();
  *(v24 + 112) = v30;
  v30[1] = vdupq_n_s64(1uLL);
  v30[2].i8[0] = 0;
  v30[2].i64[1] = 0;
  v30[3].i64[0] = 0;
  v30[3].i64[1] = v29;
  v30[4].i64[0] = v206;
  sub_22B9349C8(&qword_27D8D5198, &qword_22BA15440);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22BA153B0;
  sub_22B935B38(v246, v31 + 32);
  sub_22B935B38(v245, v31 + 72);
  sub_22B935B38(v244, v31 + 112);
  sub_22B935B38(v242, v31 + 152);
  sub_22B935B38(v240, v31 + 192);
  sub_22B935B38(v239, v31 + 232);
  sub_22B935B38(v237, v31 + 272);
  sub_22B935B38(v243, v31 + 312);
  sub_22B935B38(v241, v31 + 352);
  sub_22B935B38(v238, v31 + 392);
  *(v24 + 176) = &type metadata for RecordZonesPrepStep;
  *(v24 + 184) = &off_283F55950;
  v32 = swift_allocObject();
  *(v24 + 152) = v32;
  *(v32 + 16) = 0x6D6F44616964654DLL;
  *(v32 + 24) = 0xEB000000006E6961;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 48) = 0;
  *(v32 + 56) = v31;
  *(v32 + 64) = v207;
  *(v24 + 216) = &type metadata for PrepareStatisticsStep;
  *(v24 + 224) = &off_283F53228;
  *(v24 + 192) = 0;
  *(v24 + 200) = 0;
  *(v24 + 208) = 0;
  v33 = qword_2814158A8;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_28141ADA8;
  *(v24 + 256) = &type metadata for ImportStep;
  *(v24 + 264) = &off_283F52E58;
  v35 = swift_allocObject();
  *(v24 + 232) = v35;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = &unk_283F51628;
  *(v35 + 48) = v34;
  v211 = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22BA13420;
  sub_22B935B38(v246, &v234);
  swift_retain_n();
  Current = CFAbsoluteTimeGetCurrent();
  type metadata accessor for DuplicateCountReadHandler();
  v201 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v201 + 112) = MEMORY[0x277D84F98];
  *(v36 + 56) = &type metadata for RecordZoneReader;
  *(v36 + 64) = &off_283F55540;
  v38 = swift_allocObject();
  *(v36 + 32) = v38;
  *(v38 + 88) = &type metadata for SyncStoreReadHandler;
  *(v38 + 96) = &off_283F55648;
  v39 = swift_allocObject();
  *(v38 + 64) = v39;
  *(v39 + 16) = Current;
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 40) = v201;
  *(v38 + 16) = 1;
  sub_22B92DFEC(&v234, v38 + 24);
  *(v38 + 104) = 0;
  *(v38 + 112) = 1;
  *(v38 + 113) = 256;
  *(v38 + 115) = 1;
  *(v38 + 120) = 0;
  *(v38 + 128) = 0;
  sub_22B935B38(v245, &v234);
  v40 = CFAbsoluteTimeGetCurrent();
  v41 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v41 + 112) = MEMORY[0x277D84F98];
  v216 = v24;
  v42 = v41;
  *(v36 + 96) = &type metadata for RecordZoneReader;
  *(v36 + 104) = &off_283F55540;
  v43 = swift_allocObject();
  *(v36 + 72) = v43;
  *(v43 + 88) = &type metadata for SyncStoreReadHandler;
  *(v43 + 96) = &off_283F55648;
  v44 = swift_allocObject();
  *(v43 + 64) = v44;
  *(v44 + 16) = v40;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 40) = v42;
  *(v43 + 16) = 1;
  sub_22B92DFEC(&v234, v43 + 24);
  *(v43 + 104) = 0;
  *(v43 + 112) = 1;
  *(v43 + 113) = 256;
  *(v43 + 115) = 1;
  *(v43 + 120) = 0;
  *(v43 + 128) = 0;
  *(v36 + 136) = &type metadata for ImportStep;
  *(v36 + 144) = &off_283F52E58;
  v45 = swift_allocObject();
  *(v36 + 112) = v45;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = &unk_283F51650;
  *(v45 + 48) = v211;
  *(v216 + 296) = &type metadata for MultiStepSyncStep;
  *(v216 + 304) = &off_283F54C78;
  v46 = swift_allocObject();
  *(v216 + 272) = v46;
  *(v46 + 16) = 0;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0;
  *(v46 + 24) = v36;
  *(v46 + 48) = 1;
  sub_22B935B38(v242, &v234);
  v47 = CFAbsoluteTimeGetCurrent();
  v202 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v202 + 112) = MEMORY[0x277D84F98];
  *(v216 + 336) = &type metadata for RecordZoneReader;
  *(v216 + 344) = &off_283F55540;
  v48 = swift_allocObject();
  *(v216 + 312) = v48;
  *(v48 + 88) = &type metadata for SyncStoreReadHandler;
  *(v48 + 96) = &off_283F55648;
  v49 = swift_allocObject();
  *(v48 + 64) = v49;
  *(v49 + 16) = v47;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 40) = v202;
  *(v48 + 16) = 1;
  sub_22B92DFEC(&v234, v48 + 24);
  *(v48 + 104) = 0;
  *(v48 + 112) = 1;
  *(v48 + 113) = 256;
  *(v48 + 115) = 1;
  *(v48 + 120) = 0;
  *(v48 + 128) = 0;
  v235 = &type metadata for RecordZoneReader;
  v236 = &off_283F55540;
  v50 = swift_allocObject();
  *&v234 = v50;
  sub_22B935B38(v241, v50 + 24);
  v51 = CFAbsoluteTimeGetCurrent();
  v52 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v52 + 112) = MEMORY[0x277D84F98];
  *(v50 + 88) = &type metadata for SyncStoreReadHandler;
  *(v50 + 96) = &off_283F55648;
  v53 = swift_allocObject();
  *(v50 + 64) = v53;
  *(v53 + 16) = v51;
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 40) = v52;
  *(v50 + 16) = 1;
  *(v50 + 104) = 0;
  *(v50 + 112) = 1;
  *(v50 + 113) = 256;
  *(v50 + 115) = 1;
  *(v50 + 120) = 0;
  *(v50 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 352);
  }

  else
  {
    *(v216 + 376) = &type metadata for NoOpSyncStep;
    *(v216 + 384) = &off_283F54C38;
    *(v216 + 352) = 0;
    *(v216 + 360) = 0;
    *(v216 + 368) = 0;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v239, &v234);
  v54 = CFAbsoluteTimeGetCurrent();
  v55 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v55 + 112) = MEMORY[0x277D84F98];
  *(v216 + 416) = &type metadata for RecordZoneReader;
  *(v216 + 424) = &off_283F55540;
  v56 = swift_allocObject();
  *(v216 + 392) = v56;
  *(v56 + 88) = &type metadata for SyncStoreReadHandler;
  *(v56 + 96) = &off_283F55648;
  v57 = swift_allocObject();
  *(v56 + 64) = v57;
  *(v57 + 16) = v54;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 40) = v55;
  *(v56 + 16) = 1;
  sub_22B92DFEC(&v234, v56 + 24);
  *(v56 + 104) = 0;
  *(v56 + 112) = 1;
  *(v56 + 113) = 256;
  *(v56 + 115) = 1;
  *(v56 + 120) = 0;
  *(v56 + 128) = 0;
  v235 = &type metadata for RecordZoneReader;
  v236 = &off_283F55540;
  v58 = swift_allocObject();
  *&v234 = v58;
  sub_22B935B38(v238, v58 + 24);
  v59 = CFAbsoluteTimeGetCurrent();
  v60 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v60 + 112) = MEMORY[0x277D84F98];
  *(v58 + 88) = &type metadata for SyncStoreReadHandler;
  *(v58 + 96) = &off_283F55648;
  v61 = swift_allocObject();
  *(v58 + 64) = v61;
  *(v61 + 16) = v59;
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 40) = v60;
  *(v58 + 16) = 1;
  *(v58 + 104) = 0;
  *(v58 + 112) = 1;
  *(v58 + 113) = 256;
  *(v58 + 115) = 1;
  *(v58 + 120) = 0;
  *(v58 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 432);
  }

  else
  {
    *(v216 + 456) = &type metadata for NoOpSyncStep;
    *(v216 + 464) = &off_283F54C38;
    *(v216 + 432) = 0;
    *(v216 + 440) = 0;
    *(v216 + 448) = 0;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v237, &v234);
  v62 = CFAbsoluteTimeGetCurrent();
  v63 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v63 + 112) = MEMORY[0x277D84F98];
  *(v216 + 496) = &type metadata for RecordZoneReader;
  *(v216 + 504) = &off_283F55540;
  v64 = swift_allocObject();
  *(v216 + 472) = v64;
  *(v64 + 88) = &type metadata for SyncStoreReadHandler;
  *(v64 + 96) = &off_283F55648;
  v65 = swift_allocObject();
  *(v64 + 64) = v65;
  *(v65 + 16) = v62;
  *(v65 + 24) = 0;
  *(v65 + 32) = 0;
  *(v65 + 40) = v63;
  *(v64 + 16) = 1;
  sub_22B92DFEC(&v234, v64 + 24);
  *(v64 + 104) = 0;
  *(v64 + 112) = 1;
  *(v64 + 113) = 256;
  *(v64 + 115) = 1;
  *(v64 + 120) = 0;
  *(v64 + 128) = 0;
  if (v227 < 2 && v227)
  {
  }

  else
  {
    v66 = sub_22BA10C6C();

    if ((v66 & 1) == 0)
    {
      *(v216 + 536) = &type metadata for NoOpSyncStep;
      *(v216 + 544) = &off_283F54C38;
      *(v216 + 512) = 0;
      *(v216 + 520) = 0u;
      goto LABEL_59;
    }
  }

  *(v216 + 536) = &type metadata for ImportStragglersStep;
  *(v216 + 544) = &off_283F573F0;
  v67 = swift_allocObject();
  *(v216 + 512) = v67;
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = 0;
  *(v67 + 40) = v211;

LABEL_59:
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_22BA13420;
  sub_22B935B38(v244, &v234);
  v69 = CFAbsoluteTimeGetCurrent();
  v70 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v70 + 112) = MEMORY[0x277D84F98];
  v232 = &type metadata for SyncStoreReadHandler;
  v233 = &off_283F55648;
  v71 = swift_allocObject();
  *&v231 = v71;
  *(v71 + 16) = v69;
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 40) = v70;
  v72 = sub_22BA0FFCC();
  v203 = IMBagIntValueWithDefault();

  *(v68 + 56) = &type metadata for RecordZoneReader;
  *(v68 + 64) = &off_283F55540;
  v73 = swift_allocObject();
  *(v68 + 32) = v73;
  *(v73 + 16) = 0;
  sub_22B92DFEC(&v234, v73 + 24);
  sub_22B92DFEC(&v231, v73 + 64);
  *(v73 + 104) = v203;
  *(v73 + 112) = 0;
  *(v73 + 113) = 256;
  *(v73 + 115) = 1;
  *(v73 + 120) = 0;
  *(v73 + 128) = 0;
  v235 = &type metadata for RecordZoneReader;
  v236 = &off_283F55540;
  v74 = swift_allocObject();
  *&v234 = v74;
  sub_22B935B38(v243, v74 + 24);
  v75 = CFAbsoluteTimeGetCurrent();
  v76 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v76 + 112) = MEMORY[0x277D84F98];
  *(v74 + 88) = &type metadata for SyncStoreReadHandler;
  *(v74 + 96) = &off_283F55648;
  v77 = swift_allocObject();
  *(v74 + 64) = v77;
  *(v77 + 16) = v75;
  *(v77 + 24) = 0;
  *(v77 + 32) = 0;
  *(v77 + 40) = v76;
  v78 = sub_22BA0FFCC();
  v204 = IMBagIntValueWithDefault();

  *(v74 + 16) = 0;
  *(v74 + 104) = v204;
  *(v74 + 112) = 0;
  *(v74 + 113) = 256;
  *(v74 + 115) = 1;
  *(v74 + 120) = 0;
  *(v74 + 128) = 0;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v68 + 72);
  }

  else
  {
    *(v68 + 96) = &type metadata for NoOpSyncStep;
    *(v68 + 104) = &off_283F54C38;
    *(v68 + 72) = 0;
    *(v68 + 80) = 0;
    *(v68 + 88) = 0;
  }

  sub_22B936C4C(&v234);
  *(v68 + 136) = &type metadata for ImportStep;
  *(v68 + 144) = &off_283F52E58;
  v79 = swift_allocObject();
  *(v68 + 112) = v79;
  *(v79 + 16) = 0;
  *(v79 + 24) = 0u;
  *(v79 + 40) = &unk_283F51678;
  *(v79 + 48) = v211;
  *(v216 + 576) = &type metadata for MultiStepSyncStep;
  *(v216 + 584) = &off_283F54C78;
  v80 = swift_allocObject();
  *(v216 + 552) = v80;
  *(v80 + 16) = 1;
  *(v80 + 24) = v68;
  *(v80 + 32) = 0u;
  *(v80 + 48) = 257;
  *(v216 + 616) = &type metadata for ImportStep;
  *(v216 + 624) = &off_283F52E58;
  v81 = swift_allocObject();
  *(v216 + 592) = v81;
  *(v81 + 16) = 0;
  *(v81 + 24) = 0u;
  *(v81 + 40) = &unk_283F516A0;
  *(v81 + 48) = v211;
  sub_22B935B38(v240, &v234);
  swift_retain_n();
  v82 = CFAbsoluteTimeGetCurrent();
  v83 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v83 + 112) = MEMORY[0x277D84F98];
  *(v216 + 656) = &type metadata for RecordZoneReader;
  *(v216 + 664) = &off_283F55540;
  v84 = swift_allocObject();
  *(v216 + 632) = v84;
  *(v84 + 88) = &type metadata for SyncStoreReadHandler;
  *(v84 + 96) = &off_283F55648;
  v85 = swift_allocObject();
  *(v84 + 64) = v85;
  *(v85 + 16) = v82;
  *(v85 + 24) = 0;
  *(v85 + 32) = 0;
  *(v85 + 40) = v83;
  *(v84 + 16) = 1;
  sub_22B92DFEC(&v234, v84 + 24);
  *(v84 + 104) = 0;
  *(v84 + 112) = 1;
  *(v84 + 113) = 256;
  *(v84 + 115) = 1;
  *(v84 + 120) = 0u;
  *(v216 + 696) = &type metadata for ImportStep;
  *(v216 + 704) = &off_283F52E58;
  v86 = swift_allocObject();
  *(v216 + 672) = v86;
  *(v86 + 16) = 0;
  *(v86 + 24) = 0u;
  *(v86 + 40) = &unk_283F516C8;
  *(v86 + 48) = v211;
  *(v216 + 736) = &type metadata for PrepareStatisticsStep;
  *(v216 + 744) = &off_283F53228;
  *(v216 + 712) = 0;
  *(v216 + 720) = 0u;
  sub_22B935B38(v246, &v234);
  v87 = type metadata accessor for LiveDataDeleteHandler();
  v88 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v89 = MEMORY[0x277D84F90];
  v88[15] = MEMORY[0x277D84F90];
  v88[16] = sub_22B9BBDF0(v89);
  v88[14] = v15;
  v232 = v87;
  v233 = &off_283F54440;
  v212 = v87;
  *&v231 = v88;
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v90 = sub_22B9374C0(8u, 0);
  if (v91)
  {
    v92 = sub_22BA0FFCC();
    v93 = IMBagIntValueWithDefault();
  }

  else
  {
    v93 = v90;
  }

  *(v216 + 776) = &type metadata for RecordZoneDeleter;
  *(v216 + 784) = &off_283F54F28;
  v94 = swift_allocObject();
  *(v216 + 752) = v94;
  sub_22B92DFEC(&v234, v94 + 16);
  sub_22B92DFEC(&v231, v94 + 56);
  *(v94 + 96) = 1;
  *(v94 + 104) = v93;
  *(v94 + 112) = 0;
  *(v94 + 120) = 0;
  *(v94 + 128) = 0;
  sub_22B935B38(v244, &v234);
  v95 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v96 = MEMORY[0x277D84F90];
  v95[15] = MEMORY[0x277D84F90];
  v205 = v95;
  v95[16] = sub_22B9BBDF0(v96);
  v95[14] = v19;
  *(v216 + 816) = &type metadata for RecordZoneDeleter;
  *(v216 + 824) = &off_283F54F28;
  v97 = swift_allocObject();
  *(v216 + 792) = v97;
  *(v97 + 80) = v212;
  *(v97 + 88) = &off_283F54440;
  *(v97 + 56) = v205;
  sub_22B92DFEC(&v234, v97 + 16);
  *(v97 + 96) = 1;
  *(v97 + 104) = 100;
  *(v97 + 112) = 0;
  *(v97 + 120) = 0;
  *(v97 + 128) = 0;
  sub_22B935B38(v242, &v234);
  v98 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v99 = MEMORY[0x277D84F90];
  v98[15] = MEMORY[0x277D84F90];
  v98[16] = sub_22B9BBDF0(v99);
  v98[14] = v218;
  *(v216 + 856) = &type metadata for RecordZoneDeleter;
  *(v216 + 864) = &off_283F54F28;
  v100 = swift_allocObject();
  *(v216 + 832) = v100;
  *(v100 + 80) = v212;
  *(v100 + 88) = &off_283F54440;
  *(v100 + 56) = v98;
  sub_22B92DFEC(&v234, v100 + 16);
  *(v100 + 96) = 1;
  *(v100 + 104) = 100;
  *(v100 + 112) = 0;
  *(v100 + 120) = 0;
  *(v100 + 128) = 0;
  sub_22B935B38(v239, &v234);
  v101 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v102 = MEMORY[0x277D84F90];
  v101[15] = MEMORY[0x277D84F90];
  v101[16] = sub_22B9BBDF0(v102);
  v101[14] = v215;
  *(v216 + 896) = &type metadata for RecordZoneDeleter;
  *(v216 + 904) = &off_283F54F28;
  v103 = swift_allocObject();
  *(v216 + 872) = v103;
  *(v103 + 80) = v212;
  *(v103 + 88) = &off_283F54440;
  *(v103 + 56) = v101;
  sub_22B92DFEC(&v234, v103 + 16);
  *(v103 + 96) = 1;
  *(v103 + 104) = 100;
  *(v103 + 112) = 0;
  *(v103 + 120) = 0;
  *(v103 + 128) = 0;
  sub_22B935B38(v237, &v234);
  v104 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v105 = MEMORY[0x277D84F90];
  v104[15] = MEMORY[0x277D84F90];
  v104[16] = sub_22B9BBDF0(v105);
  v104[14] = v209;
  v232 = v212;
  v233 = &off_283F54440;
  *&v231 = v104;
  v106 = sub_22B9374C0(8u, 0);
  if (v107)
  {
    v108 = sub_22BA0FFCC();
    v109 = IMBagIntValueWithDefault();
  }

  else
  {
    v109 = v106;
  }

  *(v216 + 936) = &type metadata for RecordZoneDeleter;
  *(v216 + 944) = &off_283F54F28;
  v110 = swift_allocObject();
  *(v216 + 912) = v110;
  sub_22B92DFEC(&v234, v110 + 16);
  sub_22B92DFEC(&v231, v110 + 56);
  *(v110 + 96) = 1;
  *(v110 + 104) = v109;
  *(v110 + 112) = 0;
  *(v110 + 120) = 0;
  *(v110 + 128) = 0;
  sub_22B935B38(v245, &v234);
  v111 = type metadata accessor for LiveDataWriteHandler();
  v112 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v113 = MEMORY[0x277D84F90];
  v112[15] = MEMORY[0x277D84F90];
  v112[16] = sub_22B9BBDF0(v113);
  v112[14] = v13;
  v232 = v111;
  v233 = &off_283F57E28;
  v213 = v111;
  *&v231 = v112;
  v114 = sub_22B9374C0(7u, 0);
  if (v115)
  {
    v116 = sub_22BA0FFCC();
    v117 = IMBagIntValueWithDefault();
  }

  else
  {
    v117 = v114;
  }

  *(v216 + 976) = &type metadata for RecordZoneWriter;
  *(v216 + 984) = &off_283F53108;
  v118 = swift_allocObject();
  *(v216 + 952) = v118;
  *(v118 + 16) = 2;
  *(v118 + 24) = 1;
  sub_22B92DFEC(&v234, v118 + 40);
  sub_22B92DFEC(&v231, v118 + 80);
  *(v118 + 120) = 0;
  *(v118 + 128) = 0;
  *(v118 + 32) = v117;
  sub_22B935B38(v246, &v234);
  v119 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v120 = MEMORY[0x277D84F90];
  v119[15] = MEMORY[0x277D84F90];
  v119[16] = sub_22B9BBDF0(v120);
  v119[14] = v13;
  v232 = v111;
  v233 = &off_283F57E28;
  *&v231 = v119;
  v121 = sub_22B9374C0(7u, 0);
  if (v122)
  {
    v123 = sub_22BA0FFCC();
    v124 = IMBagIntValueWithDefault();
  }

  else
  {
    v124 = v121;
  }

  *(v216 + 1016) = &type metadata for RecordZoneWriter;
  *(v216 + 1024) = &off_283F53108;
  v125 = swift_allocObject();
  *(v216 + 992) = v125;
  *(v125 + 16) = 1;
  *(v125 + 24) = 1;
  sub_22B92DFEC(&v234, v125 + 40);
  sub_22B92DFEC(&v231, v125 + 80);
  *(v125 + 120) = 0;
  *(v125 + 128) = 0;
  *(v125 + 32) = v124;
  sub_22B935B38(v244, &v234);
  v126 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v127 = MEMORY[0x277D84F90];
  v126[15] = MEMORY[0x277D84F90];
  v126[16] = sub_22B9BBDF0(v127);
  v126[14] = v17;
  v232 = v111;
  v233 = &off_283F57E28;
  *&v231 = v126;
  v128 = sub_22B9374C0(7u, 0);
  if (v129)
  {
    v130 = sub_22BA0FFCC();
    v131 = IMBagIntValueWithDefault();
  }

  else
  {
    v131 = v128;
  }

  *(v216 + 1056) = &type metadata for RecordZoneWriter;
  *(v216 + 1064) = &off_283F53108;
  v132 = swift_allocObject();
  *(v216 + 1032) = v132;
  *(v132 + 16) = 3;
  *(v132 + 24) = 1;
  sub_22B92DFEC(&v234, v132 + 40);
  sub_22B92DFEC(&v231, v132 + 80);
  *(v132 + 120) = 0;
  *(v132 + 128) = 0;
  *(v132 + 32) = v131;
  sub_22B935B38(v243, &v231);
  v133 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v134 = MEMORY[0x277D84F90];
  v133[15] = MEMORY[0x277D84F90];
  v133[16] = sub_22B9BBDF0(v134);
  v133[14] = v17;
  v229 = v111;
  v230 = &off_283F57E28;
  *&v228 = v133;
  v135 = sub_22B9374C0(7u, 0);
  if (v136)
  {
    v137 = sub_22BA0FFCC();
    v138 = IMBagIntValueWithDefault();
  }

  else
  {
    v138 = v135;
  }

  v235 = &type metadata for RecordZoneWriter;
  v236 = &off_283F53108;
  v139 = swift_allocObject();
  *&v234 = v139;
  *(v139 + 16) = 4;
  *(v139 + 24) = 1;
  sub_22B92DFEC(&v231, v139 + 40);
  sub_22B92DFEC(&v228, v139 + 80);
  *(v139 + 120) = 0;
  *(v139 + 128) = 0;
  *(v139 + 32) = v138;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 1072);
  }

  else
  {
    *(v216 + 1096) = &type metadata for NoOpSyncStep;
    *(v216 + 1104) = &off_283F54C38;
    *(v216 + 1072) = 0;
    *(v216 + 1080) = 0u;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v240, &v234);
  v140 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v141 = MEMORY[0x277D84F90];
  v140[15] = MEMORY[0x277D84F90];
  v140[16] = sub_22B9BBDF0(v141);
  v140[14] = v223;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v140;
  v142 = sub_22B9374C0(7u, 0);
  if (v143)
  {
    v144 = sub_22BA0FFCC();
    v145 = IMBagIntValueWithDefault();

    v146 = v216;
  }

  else
  {
    v146 = v216;
    v145 = v142;
  }

  v146[142] = &type metadata for RecordZoneWriter;
  v146[143] = &off_283F53108;
  v147 = swift_allocObject();
  v146[139] = v147;
  *(v147 + 16) = 0;
  *(v147 + 24) = 1;
  sub_22B92DFEC(&v234, v147 + 40);
  sub_22B92DFEC(&v231, v147 + 80);
  *(v147 + 120) = 0;
  *(v147 + 128) = 0;
  *(v147 + 32) = v145;
  sub_22B935B38(v240, &v234);
  v148 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v149 = MEMORY[0x277D84F90];
  v148[15] = MEMORY[0x277D84F90];
  v148[16] = sub_22B9BBDF0(v149);
  v148[14] = v221;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v148;
  v150 = sub_22B9374C0(7u, 0);
  if (v151)
  {
    v152 = sub_22BA0FFCC();
    v153 = IMBagIntValueWithDefault();
  }

  else
  {
    v153 = v150;
  }

  *(v216 + 1176) = &type metadata for RecordZoneWriter;
  *(v216 + 1184) = &off_283F53108;
  v154 = swift_allocObject();
  *(v216 + 1152) = v154;
  *(v154 + 16) = 0;
  *(v154 + 24) = 1;
  sub_22B92DFEC(&v234, v154 + 40);
  sub_22B92DFEC(&v231, v154 + 80);
  *(v154 + 120) = 0;
  *(v154 + 128) = 0;
  *(v154 + 32) = v153;
  sub_22B935B38(v240, &v234);
  v155 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v156 = MEMORY[0x277D84F90];
  v155[15] = MEMORY[0x277D84F90];
  v155[16] = sub_22B9BBDF0(v156);
  v155[14] = v220;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v155;
  v157 = sub_22B9374C0(7u, 0);
  if (v158)
  {
    v159 = sub_22BA0FFCC();
    v160 = IMBagIntValueWithDefault();
  }

  else
  {
    v160 = v157;
  }

  *(v216 + 1216) = &type metadata for RecordZoneWriter;
  *(v216 + 1224) = &off_283F53108;
  v161 = swift_allocObject();
  *(v216 + 1192) = v161;
  *(v161 + 16) = 0;
  *(v161 + 24) = 1;
  sub_22B92DFEC(&v234, v161 + 40);
  sub_22B92DFEC(&v231, v161 + 80);
  *(v161 + 120) = 0;
  *(v161 + 128) = 0;
  *(v161 + 32) = v160;
  sub_22B935B38(v239, &v234);
  v162 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v163 = MEMORY[0x277D84F90];
  v162[15] = MEMORY[0x277D84F90];
  v162[16] = sub_22B9BBDF0(v163);
  v162[14] = v217;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v162;
  v164 = sub_22B9374C0(7u, 0);
  if (v165)
  {
    v166 = sub_22BA0FFCC();
    v167 = IMBagIntValueWithDefault();
  }

  else
  {
    v167 = v164;
  }

  *(v216 + 1256) = &type metadata for RecordZoneWriter;
  *(v216 + 1264) = &off_283F53108;
  v168 = swift_allocObject();
  *(v216 + 1232) = v168;
  *(v168 + 16) = 3;
  *(v168 + 24) = 1;
  sub_22B92DFEC(&v234, v168 + 40);
  sub_22B92DFEC(&v231, v168 + 80);
  *(v168 + 120) = 0;
  *(v168 + 128) = 0;
  *(v168 + 32) = v167;
  sub_22B935B38(v238, &v231);
  v169 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v170 = MEMORY[0x277D84F90];
  v169[15] = MEMORY[0x277D84F90];
  v169[16] = sub_22B9BBDF0(v170);
  v169[14] = v217;
  v229 = v213;
  v230 = &off_283F57E28;
  *&v228 = v169;
  v171 = sub_22B9374C0(7u, 0);
  if (v172)
  {
    v173 = sub_22BA0FFCC();
    v174 = IMBagIntValueWithDefault();
  }

  else
  {
    v174 = v171;
  }

  v235 = &type metadata for RecordZoneWriter;
  v236 = &off_283F53108;
  v175 = swift_allocObject();
  *&v234 = v175;
  *(v175 + 16) = 4;
  *(v175 + 24) = 1;
  sub_22B92DFEC(&v231, v175 + 40);
  sub_22B92DFEC(&v228, v175 + 80);
  *(v175 + 120) = 0;
  *(v175 + 128) = 0;
  *(v175 + 32) = v174;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 1272);
  }

  else
  {
    *(v216 + 1296) = &type metadata for NoOpSyncStep;
    *(v216 + 1304) = &off_283F54C38;
    *(v216 + 1272) = 0;
    *(v216 + 1280) = 0u;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v242, &v234);
  v176 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v177 = MEMORY[0x277D84F90];
  v176[15] = MEMORY[0x277D84F90];
  v176[16] = sub_22B9BBDF0(v177);
  v176[14] = v219;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v176;
  v178 = sub_22B9374C0(7u, 0);
  if (v179)
  {
    v180 = sub_22BA0FFCC();
    v181 = IMBagIntValueWithDefault();

    v182 = v216;
  }

  else
  {
    v182 = v216;
    v181 = v178;
  }

  v182[167] = &type metadata for RecordZoneWriter;
  v182[168] = &off_283F53108;
  v183 = swift_allocObject();
  v182[164] = v183;
  *(v183 + 16) = 3;
  *(v183 + 24) = 1;
  sub_22B92DFEC(&v234, v183 + 40);
  sub_22B92DFEC(&v231, v183 + 80);
  *(v183 + 120) = 0;
  *(v183 + 128) = 0;
  *(v183 + 32) = v181;
  sub_22B935B38(v241, &v231);
  v184 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v185 = MEMORY[0x277D84F90];
  v184[15] = MEMORY[0x277D84F90];
  v184[16] = sub_22B9BBDF0(v185);
  v184[14] = v219;
  v229 = v213;
  v230 = &off_283F57E28;
  *&v228 = v184;
  v186 = sub_22B9374C0(7u, 0);
  if (v187)
  {
    v188 = sub_22BA0FFCC();
    v189 = IMBagIntValueWithDefault();
  }

  else
  {
    v189 = v186;
  }

  v235 = &type metadata for RecordZoneWriter;
  v236 = &off_283F53108;
  v190 = swift_allocObject();
  *&v234 = v190;
  *(v190 + 16) = 4;
  *(v190 + 24) = 1;
  sub_22B92DFEC(&v231, v190 + 40);
  sub_22B92DFEC(&v228, v190 + 80);
  *(v190 + 120) = 0;
  *(v190 + 128) = 0;
  *(v190 + 32) = v189;
  if (sub_22B96F4B4())
  {
    sub_22B935B38(&v234, v216 + 1352);
  }

  else
  {
    *(v216 + 1376) = &type metadata for NoOpSyncStep;
    *(v216 + 1384) = &off_283F54C38;
    *(v216 + 1352) = 0;
    *(v216 + 1360) = 0u;
  }

  sub_22B936C4C(&v234);
  sub_22B935B38(v237, &v234);
  v191 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  v192 = MEMORY[0x277D84F90];
  v191[15] = MEMORY[0x277D84F90];
  v191[16] = sub_22B9BBDF0(v192);
  v191[14] = v208;
  v232 = v213;
  v233 = &off_283F57E28;
  *&v231 = v191;
  v193 = sub_22B9374C0(7u, 0);
  if (v194)
  {
    v195 = sub_22BA0FFCC();
    v196 = IMBagIntValueWithDefault();
  }

  else
  {
    v196 = v193;
  }

  *(v216 + 1416) = &type metadata for RecordZoneWriter;
  *(v216 + 1424) = &off_283F53108;
  v197 = swift_allocObject();
  *(v216 + 1392) = v197;
  *(v197 + 16) = 0;
  *(v197 + 24) = 1;
  sub_22B92DFEC(&v234, v197 + 40);
  sub_22B92DFEC(&v231, v197 + 80);
  *(v197 + 120) = 0u;
  *(v197 + 32) = v196;
  *(v216 + 1456) = &type metadata for ReportRecordFailuresTelemetryStep;
  *(v216 + 1464) = &off_283F57998;
  *(v216 + 1432) = 0;
  *(v216 + 1440) = 0u;
  v198 = qword_28141AE10;
  if (!qword_28141AE10)
  {
    v198 = [objc_allocWithZone(NoOpBackupController) init];
  }

  *(v216 + 1496) = &type metadata for SyncCompleteStep;
  *(v216 + 1504) = &off_283F563A0;
  v199 = swift_allocObject();
  *(v216 + 1472) = v199;
  *(v199 + 16) = 0;
  *(v199 + 24) = 0;
  *(v199 + 32) = 0;
  *(v199 + 40) = v198;
  v235 = &type metadata for CloudKitSyncRetryStrategy;
  v236 = &off_283F54398;
  v214 = type metadata accessor for SyncJob();
  v200 = swift_allocObject();
  sub_22B943D3C(&v234, &type metadata for CloudKitSyncRetryStrategy);
  *(v200 + 56) = &type metadata for CloudKitSyncRetryStrategy;
  *(v200 + 64) = &off_283F54398;
  *(v200 + 17) = v227;
  *(v200 + 24) = v207;
  *(v200 + 72) = a5 & 1;
  *(v200 + 80) = v224;
  *(v200 + 88) = v216;
  *(v200 + 96) = 0;
  *(v200 + 98) = v225;
  *(v200 + 99) = v226;
  *(v200 + 16) = 0;
  *(v200 + 100) = 1;
  *(v200 + 104) = 0;
  *(v200 + 112) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22B936C4C(&v234);
  v222[3] = v214;
  v222[4] = &off_283F54680;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *v222 = v200;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_45:
  sub_22B936C4C(v237);
  sub_22B936C4C(v238);
  sub_22B936C4C(v239);
  sub_22B936C4C(v240);
  sub_22B936C4C(v241);
  sub_22B936C4C(v242);
  sub_22B936C4C(v243);
  sub_22B936C4C(v244);
  sub_22B936C4C(v245);
  return sub_22B936C4C(v246);
}

unint64_t sub_22B96F460()
{
  result = qword_27D8D5188;
  if (!qword_27D8D5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5188);
  }

  return result;
}

id sub_22B96F4B4()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result deviceType];

    v3 = [objc_opt_self() sharedFeatureFlags];
    v4 = [v3 isRelayChatBotEnabled];

    if (v2 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if (v5 != 1 || v2 > 6)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = 0x56u >> v2;
    }

    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B96F578()
{
  v0 = sub_22BA0FD8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  if (!qword_28141AE08)
  {
    return *MEMORY[0x277D86298];
  }

  v10 = [swift_unknownObjectRetain() lastFullSyncDate];
  if (!v10)
  {
    v17 = *MEMORY[0x277D86298];
    swift_unknownObjectRelease();
    return v17;
  }

  v11 = v10;
  sub_22BA0FD5C();

  (*(v1 + 32))(v9, v6, v0);
  result = sub_22BA0FD3C();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v14 = v13;
  v15 = v13;
  if (v13 < 0)
  {
    v15 = -v14;
    if (__OFSUB__(0, v14))
    {
      goto LABEL_19;
    }
  }

  v16 = *MEMORY[0x277D86298];
  swift_unknownObjectRelease();
  (*(v1 + 8))(v9, v0);
  if (v15 < v16)
  {
    result = v16 + v14;
    if (!__OFADD__(v16, v14))
    {
      return result;
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_22B96F788(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x79616C6564206F6ELL;
  }

  if (a1 > 59)
  {
    if (a1 > 0xE0F)
    {
      v6 = sub_22BA10C1C();
      v4 = 1936877600;
      v5 = 0xE400000000000000;
      goto LABEL_9;
    }

    v6 = sub_22BA10C1C();
    v3 = 1852402976;
  }

  else
  {
    v6 = sub_22BA10C1C();
    v3 = 1667592992;
  }

  v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
  v5 = 0xE500000000000000;
LABEL_9:
  MEMORY[0x231899730](v4, v5);
  return v6;
}

uint64_t sub_22B96F8F8(void (*a1)(void), void (*a2)(void))
{
  if (v2[3])
  {
    v5 = v2[4];
  }

  a1(v2[5]);
  a2(v2[6]);

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t sub_22B96F968(void (*a1)(void))
{
  if (v1[3])
  {
    v3 = v1[4];
  }

  a1(v1[5]);

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t getEnumTagSinglePayload for CloudSyncFactoryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudSyncFactoryError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B96FB14()
{
  result = qword_27D8D51A8;
  if (!qword_27D8D51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D51A8);
  }

  return result;
}

id CloudSyncSummary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncSummary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncSummary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_22B96FCBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B96FCD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22B96FD18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B96FD84()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B96FE38()
{
  *v0;
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B96FED8()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B96FF88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B970360();
  *a2 = result;
  return result;
}

void sub_22B96FFB8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x4C5255656C6966;
  v4 = 0xE900000000000065;
  v5 = 0x727574616E676973;
  if (*v1 != 2)
  {
    v5 = 1684632949;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1702521203;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22B970028()
{
  v1 = 0x4C5255656C6966;
  v2 = 0x727574616E676973;
  if (*v0 != 2)
  {
    v2 = 1684632949;
  }

  if (*v0)
  {
    v1 = 1702521203;
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

uint64_t sub_22B970094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B970360();
  *a1 = result;
  return result;
}

uint64_t sub_22B9700C8(uint64_t a1)
{
  v2 = sub_22B970680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B970104(uint64_t a1)
{
  v2 = sub_22B970680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B970140(void *a1)
{
  v3 = v1;
  v5 = sub_22B9349C8(&qword_27D8D51D0, &qword_22BA155E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21[-v9];
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B970680();
  sub_22BA10D9C();
  v12 = *v3;
  v13 = v3[1];
  v21[15] = 0;
  sub_22BA10BCC();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v14 = v3[2];
  v15 = *(v3 + 24);
  v21[14] = 1;
  sub_22BA10B9C();
  v16 = v3[4];
  v17 = v3[5];
  v21[13] = 2;
  sub_22BA10B7C();
  v19 = v3[6];
  v20 = v3[7];
  v21[12] = 3;
  sub_22BA10B7C();
  return (*(v6 + 8))(v10, v5);
}

double sub_22B970304@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22B9703AC(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_22B970360()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B9703AC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D51C8, &qword_22BA155D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B970680();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(a1);
  }

  LOBYTE(v37[0]) = 0;
  v12 = sub_22BA10B1C();
  v14 = v13;
  v15 = v12;
  LOBYTE(v37[0]) = 1;
  v31 = sub_22BA10AEC();
  v43 = v16 & 1;
  LOBYTE(v37[0]) = 2;
  v17 = sub_22BA10ACC();
  v32 = v18;
  v30 = v17;
  v44 = 3;
  v19 = sub_22BA10ACC();
  v20 = v10;
  v22 = v21;
  (*(v6 + 8))(v20, v5);
  v29 = v15;
  *&v33 = v15;
  *(&v33 + 1) = v14;
  v23 = v30;
  *&v34 = v31;
  LOBYTE(v15) = v43;
  BYTE8(v34) = v43;
  v24 = v32;
  *&v35 = v30;
  *(&v35 + 1) = v32;
  *&v36 = v19;
  *(&v36 + 1) = v22;
  sub_22B9706D4(&v33, v37);
  sub_22B936C4C(a1);
  v37[0] = v29;
  v37[1] = v14;
  v37[2] = v31;
  v38 = v15;
  v39 = v23;
  v40 = v24;
  v41 = v19;
  v42 = v22;
  result = sub_22B97070C(v37);
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  v27 = v36;
  a2[2] = v35;
  a2[3] = v27;
  return result;
}

unint64_t sub_22B970680()
{
  result = qword_281415A00[0];
  if (!qword_281415A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281415A00);
  }

  return result;
}

unint64_t sub_22B970750()
{
  result = qword_27D8D51D8;
  if (!qword_27D8D51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D51D8);
  }

  return result;
}

unint64_t sub_22B9707A8()
{
  result = qword_2814159F0;
  if (!qword_2814159F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159F0);
  }

  return result;
}

unint64_t sub_22B970800()
{
  result = qword_2814159F8;
  if (!qword_2814159F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814159F8);
  }

  return result;
}

uint64_t sub_22B970854(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  v28 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    v45 = MEMORY[0x277D84F90];
    sub_22B968100(0, v4 & ~(v4 >> 63), 0);
    v8 = a1;
    if (v3)
    {
      if (v3 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v4 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v7 = v45;
    v30 = v4;
    v31 = v3;
    do
    {
      if (v10 >= v4)
      {
        __break(1u);
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
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v3 == 2)
      {
        if (v12 < *(v8 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(v8 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_22BA0FA2C();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_22BA0FA4C();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v3 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = v8;
          v34 = BYTE2(v8);
          v35 = BYTE3(v8);
          v36 = v28;
          v37 = BYTE5(v8);
          v38 = BYTE6(v8);
          v39 = HIBYTE(v8);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = *(&v33 + v32 + v10);
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_22BA0FA2C();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_22BA0FA4C();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
      v8 = a1;
LABEL_36:
      sub_22B9349C8(&qword_27D8D4F78, &qword_22BA15760);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_22BA13CB0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v3 = sub_22BA1001C();
      v22 = v21;

      v45 = v7;
      v24 = *(v7 + 16);
      v23 = *(v7 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22B968100((v23 > 1), v24 + 1, 1);
        v8 = a1;
        v7 = v45;
      }

      *(v7 + 16) = v24 + 1;
      v25 = v7 + 16 * v24;
      *(v25 + 32) = v3;
      *(v25 + 40) = v22;
      ++v10;
      v4 = v30;
      LODWORD(v3) = v31;
    }

    while (v11 != v30);
  }

LABEL_39:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_22B970BF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v99 = a4;
  v100[2] = *MEMORY[0x277D85DE8];
  v9 = sub_22BA0F98C();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v94 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BA0FC4C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v97 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v92 = v89 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v93 = v89 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = v89 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = v89 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = v89 - v34;
  v36 = [a1 fileURL];
  if (v36)
  {
    v37 = v36;
    sub_22BA0FC0C();

    v38 = *(v14 + 32);
    v98 = v35;
    v38(v35, v32, v13);
    v39 = [a1 UUID];
    v40 = v13;
    if (v39)
    {
      v90 = v38;
      v41 = v39;
      v42 = sub_22BA0FFFC();
      v44 = v43;

      v45 = [a1 signature];
      if (v45)
      {
        v89[0] = v42;
        v89[1] = a1;
        v91 = v40;
        v46 = v45;
        v47 = sub_22BA0FCAC();
        v97 = v48;

        sub_22B971A60();
        v66 = v44;
        v67 = v14;
        v68 = *sub_22B9358B4(v5, v5[3]);
        LOBYTE(v100[0]) = 0;
        sub_22BA0FB7C();
        v69 = sub_22BA0FFCC();

        v70 = [v68 fileExistsAtPath:v69 isDirectory:v100];

        if (v70 && (v100[0] & 1) != 0)
        {
          v95 = v47;
          v71 = v5;
          v72 = v67;
        }

        else
        {
          v71 = v5;
          v73 = sub_22B9358B4(v5, v5[3]);
          sub_22B964F88(v28, 1, *v73);
          v72 = v67;
          v95 = v47;
        }

        v74 = v66;
        v75 = v91;
        (*(v72 + 8))(v28, v91);
        v76 = v97;
        v77 = v93;
        sub_22B971A60();
        v96 = v72;
        v100[0] = sub_22B970854(v95, v76);
        sub_22B9349C8(&qword_27D8D4EF0, &qword_22BA13990);
        sub_22B9486FC();
        v78 = sub_22BA0FFAC();
        v80 = v79;

        v100[0] = v89[0];
        v100[1] = v74;
        MEMORY[0x231899730](46, 0xE100000000000000);
        MEMORY[0x231899730](v78, v80);

        v81 = v92;
        sub_22BA0FBDC();

        v82 = sub_22B9358B4(v71, v71[3]);
        v83 = v98;
        sub_22B964EA4(v98, v81, *v82);
        (*(v96 + 8))(v77, v75);
        sub_22B9359BC(v95, v97);
        v85 = v99;
        v86 = v83;
        v87 = v90;
        v90(v99, v86, v75);
        v88 = type metadata accessor for SyncFiles.FileMove();
        v87(v85 + *(v88 + 20), v81, v75);
        sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
        goto LABEL_19;
      }
    }

    v62 = sub_22B9358B4(v5, v5[3]);
    v63 = v98;
    sub_22B964DE0(v98, *v62);
    sub_22B9729CC();
    v64 = swift_allocError();
    *v65 = 1;
    (*(v14 + 8))(v63, v40);
    *v99 = v64;
    sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
LABEL_19:
    result = swift_storeEnumTagMultiPayload();
    v84 = *MEMORY[0x277D85DE8];
    return result;
  }

  v49 = a3;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v50 = sub_22BA0FEFC();
  sub_22B936CA8(v50, qword_28141AD40);

  v51 = a1;
  v52 = sub_22BA0FEDC();
  v53 = sub_22BA1044C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v100[0] = v56;
    *v54 = 136315394;
    *(v54 + 4) = sub_22B99153C(a2, v49, v100);
    *(v54 + 12) = 2112;
    *(v54 + 14) = v51;
    *v55 = v51;
    v57 = v51;
    _os_log_impl(&dword_22B92A000, v52, v53, "Error, we failed to get the fileURL for with key %s for %@", v54, 0x16u);
    sub_22B95DEF0(v55);
    MEMORY[0x23189ADD0](v55, -1, -1);
    sub_22B936C4C(v56);
    MEMORY[0x23189ADD0](v56, -1, -1);
    MEMORY[0x23189ADD0](v54, -1, -1);
  }

  sub_22B9729CC();
  v58 = swift_allocError();
  *v59 = 0;
  *v99 = v58;
  sub_22B9349C8(&qword_27D8D4F70, &unk_22BA15750);
  v60 = *MEMORY[0x277D85DE8];

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22B971A60()
{
  v0 = sub_22BA0FC4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  v10 = IMSMSDirectoryURL();
  sub_22BA0FC0C();

  v13 = 1668184435;
  v14 = 0xE400000000000000;
  sub_22B936ACC();
  sub_22BA1076C();
  sub_22BA0FBCC();

  v13 = 0x737465737361;
  v14 = 0xE600000000000000;
  sub_22BA1076C();
  sub_22BA0FBCC();

  v11 = *(v1 + 8);
  v11(v6, v0);
  return (v11)(v9, v0);
}

uint64_t sub_22B971C1C()
{
  v0 = sub_22BA0FA9C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22BA0FA8C();
  qword_281416840 = result;
  return result;
}

uint64_t sub_22B971C5C()
{
  v0 = sub_22BA0FADC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_22BA0FACC();
  result = sub_22BA0FAAC();
  qword_281416828 = v3;
  return result;
}

uint64_t sub_22B971CA8(uint64_t a1)
{
  v2 = v1;
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = *sub_22B9358B4(v2, v2[3]);
  LOBYTE(v9[0]) = 0;
  sub_22BA0FB7C();
  v5 = sub_22BA0FFCC();

  LODWORD(v4) = [v4 fileExistsAtPath:v5 isDirectory:v9];

  result = 0;
  if (v4)
  {
    v7 = sub_22B9358B4(v2, v2[3]);
    sub_22B964DE0(a1, *v7);
    result = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22B972028()
{
  v0 = sub_22BA0FB8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22BA0FC4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v26[-v15];
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v26[-v18];
  v20 = IMSMSDirectoryURL();
  sub_22BA0FC0C();

  v27 = 0xD00000000000001BLL;
  v28 = 0x800000022BA1CDB0;
  (*(v1 + 104))(v5, *MEMORY[0x277CC91D0], v0);
  sub_22B936ACC();
  sub_22BA0FC2C();
  (*(v1 + 8))(v5, v0);
  v21 = *(v7 + 8);
  v21(v12, v6);
  sub_22BA0FBEC();
  v21(v16, v6);
  v22 = sub_22BA0FC5C();
  v24 = v23;
  if (qword_281416838 != -1)
  {
    swift_once();
  }

  sub_22B9349C8(&qword_27D8D51E0, &unk_22BA15740);
  sub_22B97295C(&qword_281414C48);
  sub_22BA0FA7C();
  v21(v19, v6);
  sub_22B9359BC(v22, v24);
  return v27;
}

uint64_t sub_22B9724B4(unint64_t a1)
{
  v40 = a1;
  v1 = sub_22BA0FB8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BA0FC4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v39 - v19;
  v21 = IMSMSDirectoryURL();
  sub_22BA0FC0C();

  v41 = 0xD00000000000001BLL;
  v42 = 0x800000022BA1CDB0;
  (*(v2 + 104))(v6, *MEMORY[0x277CC91D8], v1);
  sub_22B936ACC();
  sub_22BA0FC2C();
  (*(v2 + 8))(v6, v1);
  v22 = *(v8 + 8);
  v22(v13, v7);
  sub_22BA0FBEC();
  v22(v17, v7);
  if (qword_281416820 != -1)
  {
    swift_once();
  }

  v41 = v40;
  sub_22B9349C8(&qword_27D8D51E0, &unk_22BA15740);
  sub_22B97295C(&qword_281414C50);
  v23 = v43;
  v24 = sub_22BA0FABC();
  if (v23)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v28 = sub_22BA0FEFC();
    sub_22B936CA8(v28, qword_28141AD40);
    v29 = v23;
    v30 = sub_22BA0FEDC();
    v31 = sub_22BA1044C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v43 = v20;
      v33 = v32;
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v23;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_22B92A000, v30, v31, "Failed to write diagnostics binary plist: %@", v33, 0xCu);
      sub_22B95DEF0(v34);
      MEMORY[0x23189ADD0](v34, -1, -1);
      MEMORY[0x23189ADD0](v33, -1, -1);

      v37 = v43;
    }

    else
    {

      v37 = v20;
    }

    return (v22)(v37, v7);
  }

  else
  {
    v26 = v24;
    v27 = v25;
    sub_22BA0FCBC();
    v22(v20, v7);
    return sub_22B9359BC(v26, v27);
  }
}

uint64_t sub_22B97295C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22B948760(&qword_27D8D51E0, &unk_22BA15740);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B9729CC()
{
  result = qword_27D8D51E8;
  if (!qword_27D8D51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D51E8);
  }

  return result;
}

uint64_t sub_22B972A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SyncFiles.FileMove()
{
  result = qword_281416810;
  if (!qword_281416810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B972AB4()
{
  v0 = sub_22BA0FB8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BA0FC4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v23 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = v23 - v18;
  v20 = IMSMSDirectoryURL();
  sub_22BA0FC0C();

  v23[2] = 0xD00000000000001BLL;
  v23[3] = 0x800000022BA1CDB0;
  (*(v1 + 104))(v5, *MEMORY[0x277CC91D8], v0);
  sub_22B936ACC();
  sub_22BA0FC2C();
  (*(v1 + 8))(v5, v0);
  v21 = *(v7 + 8);
  v21(v12, v6);
  sub_22BA0FBEC();
  v21(v16, v6);
  v22 = [objc_opt_self() defaultManager];
  sub_22B964DE0(v19, v22);
  v21(v19, v6);
}

uint64_t sub_22B972ED8()
{
  result = sub_22BA0FC4C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22B972F48()
{
  result = qword_27D8D51F8;
  if (!qword_27D8D51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D51F8);
  }

  return result;
}

void sub_22B972F9C(uint64_t a1, void *a2, int a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v45 = a5;
  v47 = a4;
  v46 = a3;
  v50 = a1;
  v51 = a2;
  v8 = sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v43 - v12;
  v14 = *(v9 + 16);
  v14(&v43 - v12, a1, v8);
  v48 = *(v9 + 80);
  v15 = (v48 + 16) & ~v48;
  v16 = swift_allocObject();
  v17 = *(v9 + 32);
  v17(v16 + v15, v13, v8);
  sub_22BA105DC();
  v14(v13, v50, v8);
  v18 = swift_allocObject();
  v49 = v17;
  v17(v18 + v15, v13, v8);
  v19 = v50;
  sub_22BA105EC();
  if (v46)
  {
    v14(v13, v19, v8);
    v20 = swift_allocObject();
    v49(v20 + v15, v13, v8);
    v54 = sub_22B973BCC;
    v55 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B9739D8;
    v53 = &unk_283F542C0;
    v21 = _Block_copy(aBlock);

    [v51 setPerRecordProgressBlock_];
    _Block_release(v21);
  }

  v14(v13, v19, v8);
  v22 = swift_allocObject();
  v49(v22 + v15, v13, v8);
  v23 = v51;
  sub_22BA105BC();
  if ((*v47 & 1) == 0)
  {
    *v47 = 1;
    v24 = v45;
    v25 = *(v45 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
    v26 = *(v45 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 32);
    sub_22B9358B4((v45 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase), v25);
    (*(v26 + 8))(v23, v25, v26);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v27 = sub_22BA0FEFC();
    sub_22B936CA8(v27, qword_28141AD40);
    sub_22B935B38(v44, aBlock);
    swift_unknownObjectRetain();
    v28 = v23;
    v29 = sub_22BA0FEDC();
    v30 = sub_22BA1046C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v31 = 136315650;
      v34 = sub_22B9358B4(aBlock, v53);
      v35 = *v34;
      v36 = v34[1];

      sub_22B936C4C(aBlock);
      v37 = sub_22B99153C(v35, v36, &v58);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      v56 = 0x2E636E7973;
      v57 = 0xE500000000000000;
      v38 = *sub_22B9358B4((v24 + 16), *(v24 + 40));
      v39 = sub_22B9B580C();
      MEMORY[0x231899730](v39);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v40 = sub_22BA10C1C();
      MEMORY[0x231899730](v40);

      v41 = sub_22B99153C(v56, v57, &v58);

      *(v31 + 14) = v41;
      *(v31 + 22) = 2112;
      *(v31 + 24) = v28;
      *v32 = v28;
      v42 = v28;
      _os_log_impl(&dword_22B92A000, v29, v30, "Added write operation for %s (sync: %s): %@", v31, 0x20u);
      sub_22B95DEF0(v32);
      MEMORY[0x23189ADD0](v32, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v33, -1, -1);
      MEMORY[0x23189ADD0](v31, -1, -1);
    }

    else
    {

      sub_22B936C4C(aBlock);
    }
  }
}

uint64_t sub_22B973574(void *a1, void *a2, char a3)
{
  v6 = sub_22B9349C8(&qword_27D8D5208, qword_22BA15870);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  if (a3)
  {
    v16 = a1;
    v17 = a2;
    v18 = 1;
    sub_22B930C44(a2);
    v12 = a1;
  }

  else
  {
    v16 = a2;
    v17 = 0;
    v18 = 0;
    v13 = a2;
  }

  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  sub_22BA1033C();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_22B9736C4(void *a1, void *a2, char a3)
{
  v6 = sub_22B9349C8(&qword_27D8D5208, qword_22BA15870);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  if (a3)
  {
    v16 = a1;
    v17 = a2;
    v18 = 65;
    v12 = a1;
    sub_22B973C70(a2, 1);
  }

  else
  {
    v16 = a1;
    v17 = 0;
    v18 = 64;
    v13 = a1;
  }

  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  sub_22BA1033C();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_22B973818(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  v8 = *(sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3 & 1, v9);
}

uint64_t sub_22B9738C0(void *a1, double a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5208, qword_22BA15870);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v12[1] = a1;
  *&v12[2] = a2;
  v13 = 0x80;
  v10 = a1;
  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  sub_22BA1033C();
  return (*(v5 + 8))(v9, v4);
}

void sub_22B9739D8(uint64_t a1, void *a2, double a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a3);
}

uint64_t sub_22B973A50(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  return sub_22BA1034C();
}

uint64_t sub_22B973AAC(void *a1, char a2)
{
  v4 = *(*(sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860) - 8) + 80);

  return sub_22B973A50(a1, a2 & 1);
}

uint64_t sub_22B973B38()
{
  v1 = sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B973BCC(void *a1, double a2)
{
  v4 = *(*(sub_22B9349C8(&qword_27D8D5200, &unk_22BA15860) - 8) + 80);

  return sub_22B9738C0(a1, a2);
}

uint64_t sub_22B973C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22B973C70(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_22B973C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22B973CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_22B973D6C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22B973DC8(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *(*(sub_22B9349C8(&qword_27D8D5210, qword_22BA16040) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = sub_22BA0FC4C();
  v2[29] = v4;
  v5 = *(v4 - 8);
  v2[30] = v5;
  v6 = *(v5 + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B973EC0, 0, 0);
}

uint64_t sub_22B973EC0()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + *(type metadata accessor for ChatRecord(0) + 120));
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = sub_22B990A58(28775, 0xE200000000000000);
      if (v4)
      {
        v5 = *(v0 + 232);
        v6 = *(v0 + 240);
        v7 = *(v0 + 224);
        v8 = (*(v2 + 56) + (v3 << 6));
        v9 = v8[3];
        v11 = *v8;
        v10 = v8[1];
        *(v0 + 48) = v8[2];
        *(v0 + 64) = v9;
        *(v0 + 16) = v11;
        *(v0 + 32) = v10;
        v13 = *(v0 + 16);
        v12 = *(v0 + 24);
        sub_22B9706D4(v0 + 16, v0 + 80);
        sub_22BA0FC1C();
        if ((*(v6 + 48))(v7, 1, v5) == 1)
        {
          v14 = *(v0 + 224);
          sub_22B97070C(v0 + 16);
          sub_22B936BEC(v14, &qword_27D8D5210, qword_22BA16040);
        }

        else
        {
          v15 = *(v0 + 248);
          v16 = *(v0 + 208);
          (*(*(v0 + 240) + 32))(v15, *(v0 + 224), *(v0 + 232));
          v17 = sub_22B9358B4(v16, v16[3]);
          sub_22B964DE0(v15, *v17);
          (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
          sub_22B97070C(v0 + 16);
        }
      }
    }
  }

  v18 = *(v0 + 248);
  v19 = *(v0 + 224);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22B974224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22B974358();
}

uint64_t sub_22B9742C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B943E68;

  return sub_22B973DC8(a1);
}

uint64_t sub_22B974358()
{
  v1[4] = v0;
  v2 = type metadata accessor for ChatRecord(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B974404, 0, 0);
}

uint64_t sub_22B974404()
{
  v38 = v0;
  v1 = v0[4];
  v0[9] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[10] = v2;
  if (v2)
  {
    v3 = qword_28141ADC8;
    v0[11] = qword_28141ADC8;
    if (v3)
    {
      v4 = qword_28141ADD0;
      v0[12] = qword_28141ADD0;
      v0[13] = *(v4 + 16);
      v0[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0x3A06000000000000;
      if (qword_281416450 != -1)
      {
        swift_once();
      }

      sub_22BA102EC();
      v6 = sub_22BA1029C();
      v0[15] = v6;
      v0[16] = v5;

      return MEMORY[0x2822009F8](sub_22B9747F0, v6, v5);
    }

    else
    {
      v18 = v0[7];
      v19 = v0[8];
      v20 = v0[6];
      sub_22B952500();
      swift_allocError();
      swift_willThrow();

      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
      v1 = v0[4];
    }

    v8 = v0[6];
    v7 = v0[7];
    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD10);
    sub_22B974E6C(v1, v7);
    sub_22B974E6C(v1, v8);
    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1042C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[7];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37[0] = v36;
      *v14 = 136315394;
      v15 = v0[7];
      if (*(v13 + 24))
      {
        v16 = *(v15 + 16);
        v17 = *(v13 + 24);
      }

      else
      {
        v17 = 0xE500000000000000;
        v16 = 0x3E6C696E3CLL;
      }

      v23 = v0[8];
      v24 = v0[5];
      v25 = v0[6];

      sub_22B974ED0(v15);
      v26 = sub_22B99153C(v16, v17, v37);

      *(v14 + 4) = v26;
      *(v14 + 12) = 2080;
      sub_22B974E6C(v25, v23);
      v27 = sub_22BA1005C();
      v29 = v28;
      sub_22B974ED0(v25);
      v30 = sub_22B99153C(v27, v29, v37);

      *(v14 + 14) = v30;
      _os_log_impl(&dword_22B92A000, v10, v11, "Service %s is not supported, do not import chat %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v36, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {
      v22 = v0[6];

      sub_22B974ED0(v22);
      sub_22B974ED0(v13);
    }

    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[6];

    v34 = v0[1];

    return v34(0);
  }
}

uint64_t sub_22B9747F0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 88);
  *(v0 + 176) = (*(v0 + 104))(*(v0 + 72), *(v0 + 80)) & 1;

  return MEMORY[0x2822009F8](sub_22B97486C, 0, 0);
}

uint64_t sub_22B97486C()
{
  v54 = v0;
  v1 = *(v0 + 176);
  if (v1 != 1)
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 32);
    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD10);
    sub_22B974E6C(v15, v13);
    sub_22B974E6C(v15, v14);
    v17 = sub_22BA0FEDC();
    v18 = sub_22BA1042C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 56);
    if (v19)
    {
      v52 = v1;
      v21 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53[0] = v51;
      *v21 = 136315394;
      v22 = *(v0 + 56);
      if (*(v20 + 24))
      {
        v23 = *(v22 + 16);
        v24 = *(v20 + 24);
      }

      else
      {
        v24 = 0xE500000000000000;
        v23 = 0x3E6C696E3CLL;
      }

      v38 = *(v0 + 64);
      v40 = *(v0 + 40);
      v39 = *(v0 + 48);

      sub_22B974ED0(v22);
      v41 = sub_22B99153C(v23, v24, v53);

      *(v21 + 4) = v41;
      *(v21 + 12) = 2080;
      sub_22B974E6C(v39, v38);
      v42 = sub_22BA1005C();
      v44 = v43;
      sub_22B974ED0(v39);
      v45 = sub_22B99153C(v42, v44, v53);

      *(v21 + 14) = v45;
      _os_log_impl(&dword_22B92A000, v17, v18, "Service %s is not supported, do not import chat %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v51, -1, -1);
      MEMORY[0x23189ADD0](v21, -1, -1);

      v1 = v52;
    }

    else
    {
      v33 = *(v0 + 48);

      sub_22B974ED0(v33);
      sub_22B974ED0(v20);
    }

    goto LABEL_24;
  }

  v2 = (*(v0 + 32) + *(*(v0 + 40) + 68));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    if (([objc_opt_self() supportsBusinessChat] & 1) == 0)
    {
      v5 = sub_22BA0FFCC();
      v6 = MEMORY[0x23189A5A0]();

      if (v6)
      {
        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v7 = sub_22BA0FEFC();
        sub_22B936CA8(v7, qword_28141AD10);

        v8 = sub_22BA0FEDC();
        v9 = sub_22BA1042C();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v53[0] = v11;
          *v10 = 136315138;
          v12 = sub_22B99153C(v4, v3, v53);

          *(v10 + 4) = v12;
          _os_log_impl(&dword_22B92A000, v8, v9, "Business chat is not supported, do not import chat %s", v10, 0xCu);
          sub_22B936C4C(v11);
          MEMORY[0x23189ADD0](v11, -1, -1);
          MEMORY[0x23189ADD0](v10, -1, -1);
        }

        else
        {
        }

LABEL_24:
        v47 = *(v0 + 56);
        v46 = *(v0 + 64);
        v48 = *(v0 + 48);

        v49 = *(v0 + 8);

        return v49(v1);
      }
    }
  }

  v25 = qword_28141ADC8;
  *(v0 + 136) = qword_28141ADC8;
  if (v25)
  {
    v26 = *(v0 + 64);
    v27 = *(v0 + 32);
    v28 = qword_28141ADD0;
    *(v0 + 144) = qword_28141ADD0;
    sub_22B974E6C(v27, v26);
    v29 = type metadata accessor for ChatRecordKeyedDataSource(0);
    v30 = objc_allocWithZone(v29);
    sub_22B974E6C(v26, v30 + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord);
    *(v0 + 16) = v30;
    *(v0 + 24) = v29;
    *(v0 + 152) = objc_msgSendSuper2((v0 + 16), sel_init);
    sub_22B974ED0(v26);
    *(v0 + 160) = *(v28 + 8);
    *(v0 + 168) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0xC482000000000000;
    v31 = *(v0 + 120);
    v32 = *(v0 + 128);

    return MEMORY[0x2822009F8](sub_22B974DD4, v31, v32);
  }

  else
  {
    v34 = *(v0 + 56);
    v35 = *(v0 + 64);
    v36 = *(v0 + 48);
    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_22B974DD4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  (*(v0 + 160))(v2);

  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);

  v7 = *(v0 + 8);

  return v7(1);
}

uint64_t sub_22B974E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B974ED0(uint64_t a1)
{
  v2 = type metadata accessor for ChatRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B974F2C(uint64_t *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ActionRecord();
  v8 = (a1 + *(v7 + 68));
  if (v8[1])
  {
    v9 = *v8;
    v10 = sub_22BA0FFCC();
  }

  else
  {
    v10 = 0;
  }

  sub_22B94498C(a1 + *(v7 + 64), v6);
  v11 = sub_22BA0FD8C();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    v13 = sub_22BA0FCFC();
    (*(v12 + 8))(v6, v11);
  }

  if (a1[1])
  {
    v14 = *a1;
    v15 = sub_22BA0FFCC();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSender:v10 time:v13 guid:v15 type:3];

  if (v16)
  {
    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B9750E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [v3 setActionType_];
    sub_22B977794();
    if (v5)
    {
      osloga = sub_22BA0FFCC();

      [v3 setOtherHandle_];
    }

    else
    {
      [v3 setOtherHandle_];
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD10);

    oslog = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22B99153C(a2, a3, &v14);
      _os_log_impl(&dword_22B92A000, oslog, v9, "No Proto for IMGroupActionItem %s", v10, 0xCu);
      sub_22B936C4C(v11);
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }
  }
}

uint64_t sub_22B9752A4(uint64_t a1)
{
  v2 = type metadata accessor for ActionRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B975314@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = sub_22BA0FB5C();
  v8 = CKCanRetryForError();

  if (v8)
  {
    v9 = sub_22BA0FB5C();
    v10 = CKEarliestStartDateAfterError();

    if (v10)
    {
      sub_22BA0FD5C();

      v11 = sub_22BA0FD8C();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v15 = sub_22BA0FD8C();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    return sub_22B935A74(v6, a1);
  }

  else
  {
    v12 = sub_22BA0FD8C();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_22B9754DC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_22B990D50(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_22B97557C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_22B990D50(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v8 = result;
    swift_unknownObjectRetain();
    return v8;
  }

  return result;
}

uint64_t sub_22B975648()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_22B990D50(2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    return v6;
  }

  return result;
}

unint64_t sub_22B9757DC(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 21:
      result = 0xD000000000000016;
      break;
    case 7:
    case 22:
      result = 0xD000000000000015;
      break;
    case 8:
    case 9:
    case 20:
      result = 0xD000000000000014;
      break;
    case 10:
    case 24:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 11:
    case 13:
    case 17:
    case 19:
    case 28:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD00000000000002CLL;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    case 15:
      result = 0xD000000000000027;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD00000000000001CLL;
      break;
    case 26:
      result = 0xD000000000000026;
      break;
    case 27:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22B975A48(uint64_t a1)
{
  v2 = sub_22BA1096C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BA1097C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v13, a1, v8);
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 == *MEMORY[0x277D84160])
  {
    (*(v9 + 96))(v13, v8);
    v15 = sub_22B9349C8(&qword_27D8D5220, &qword_22BA15AF0);
    (*(v3 + 32))(v7, v13 + *(v15 + 48), v2);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_22BA108FC();

    v16 = 0x6D73694D65707954;
    v17 = 0xEE00203A68637461;
  }

  else
  {
    if (v14 == *MEMORY[0x277D84170])
    {
      (*(v9 + 96))(v13, v8);
      v18 = sub_22B9349C8(&qword_27D8D5220, &qword_22BA15AF0);
      (*(v3 + 32))(v7, v13 + *(v18 + 48), v2);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22BA108FC();

      v16 = 0x746F4E65756C6156;
      v19 = 1853189958;
    }

    else
    {
      if (v14 == *MEMORY[0x277D84158])
      {
        (*(v9 + 96))(v13, v8);
        v28 = *(sub_22B9349C8(&qword_27D8D5230, &unk_22BA15B00) + 48);
        sub_22B92DFEC(v13, &v40);
        (*(v3 + 32))(v7, v13 + v28, v2);
        v38 = 0;
        v39 = 0xE000000000000000;
        sub_22BA108FC();
        MEMORY[0x231899730](0x6F46746F4E79654BLL, 0xED00005B20646E75);
        v29 = v43;
        sub_22B9358B4(&v40, v42);
        v30 = *(v29 + 16);
        sub_22BA10C4C();
        MEMORY[0x231899730](2112093, 0xE300000000000000);
        v31 = sub_22BA1094C();
        v32 = sub_22B9349C8(&qword_27D8D5228, &qword_22BA15AF8);
        v33 = MEMORY[0x231899870](v31, v32);
        v35 = v34;

        MEMORY[0x231899730](v33, v35);

        MEMORY[0x231899730](8236, 0xE200000000000000);
        v36 = sub_22BA1095C();
        MEMORY[0x231899730](v36);

        v26 = v38;
        (*(v3 + 8))(v7, v2);
        sub_22B936C4C(&v40);
        return v26;
      }

      if (v14 != *MEMORY[0x277D84168])
      {
        (*(v9 + 8))(v13, v8);
        return 0xD000000000000016;
      }

      (*(v9 + 96))(v13, v8);
      (*(v3 + 32))(v7, v13, v2);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22BA108FC();

      v16 = 0x72726F4361746144;
      v19 = 1702129781;
    }

    v17 = v19 | 0xEF203A6400000000;
  }

  v40 = v16;
  v41 = v17;
  v20 = sub_22BA1094C();
  v21 = sub_22B9349C8(&qword_27D8D5228, &qword_22BA15AF8);
  v22 = MEMORY[0x231899870](v20, v21);
  v24 = v23;

  MEMORY[0x231899730](v22, v24);

  MEMORY[0x231899730](8236, 0xE200000000000000);
  v25 = sub_22BA1095C();
  MEMORY[0x231899730](v25);

  v26 = v40;
  (*(v3 + 8))(v7, v2);
  return v26;
}

void sub_22B975FD8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22B9349C8(&qword_27D8D5218, &unk_22BA15AE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v35 - v10;
  v12 = sub_22BA1097C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[5] = a2;
  v18 = a2;
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v11, 0, 1, v12);
    (*(v13 + 32))(v17, v11, v12);
    v21 = [objc_opt_self() sharedInstance];
    if (v21)
    {
      v22 = v21;
      sub_22B9757DC(a1);
      v23 = sub_22BA0FFCC();

      v24 = swift_allocError();
      (*(v13 + 16))(v25, v17, v12);
      v26 = sub_22BA0FB5C();

      v27 = sub_22BA0FFCC();
      sub_22B975A48(v17);
      v28 = sub_22BA0FFCC();

      [v22 forceAutoBugCaptureWithSubType:v23 errorPayload:v26 type:v27 context:v28];

      (*(v13 + 8))(v17, v12);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  v20(v11, 1, 1, v12);
  sub_22B9763A8(v11);
  v29 = [objc_opt_self() sharedInstance];
  if (!v29)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v30 = v29;
  sub_22B9757DC(a1);
  v31 = sub_22BA0FFCC();

  v32 = sub_22BA0FB5C();
  v33 = sub_22BA0FFCC();
  if (!a4)
  {
    swift_getErrorValue();
    sub_22B9587B4(v35[2], v35[3]);
  }

  v34 = sub_22BA0FFCC();

  [v30 forceAutoBugCaptureWithSubType:v31 errorPayload:v32 type:v33 context:v34];
}

uint64_t sub_22B9763A8(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5218, &unk_22BA15AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B976424()
{
  result = qword_27D8D5238;
  if (!qword_27D8D5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5238);
  }

  return result;
}

uint64_t sub_22B976478(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_22B9680E0(0, v1, 0);
  v2 = v30;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_22BA107CC();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v25 = v1;
  v26 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v27 = v8;
    v12 = (*(a1 + 56) + 16 * v7);
    v13 = v12[1];
    v14 = *(v30 + 16);
    v15 = *(v30 + 24);
    v28 = *v12;
    v29 = v14 + 1;
    v16 = *(*(a1 + 48) + 8 * v7);

    if (v14 >= v15 >> 1)
    {
      result = sub_22B9680E0((v15 > 1), v29, 1);
    }

    *(v30 + 16) = v29;
    v17 = v30 + 32 * v14;
    *(v17 + 32) = v16;
    *(v17 + 40) = v28;
    *(v17 + 48) = v13;
    *(v17 + 56) = 1;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v11);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v26;
    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22B951A48(v7, v26, 0);
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22B951A48(v7, v26, 0);
    }

LABEL_4:
    v8 = v27 + 1;
    v7 = v10;
    if (v27 + 1 == v25)
    {
      return v2;
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

uint64_t sub_22B9766D0(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B976760, v1, 0);
}

uint64_t sub_22B976760()
{
  v5 = *MEMORY[0x277D85DE8];
  v0[5] = *(v0[4] + 112);
  v0[2] = 0;
  sub_22BA102EC();
  v0[6] = sub_22BA102DC();
  v1 = sub_22BA1029C();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B976838, v1, v2);
}

uint64_t sub_22B976838()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  v5 = [v2 batchOfRecordIDsToDeleteWithLimit:v4 error:v0 + 2];
  v6 = v0[2];
  v0[7] = v5;
  v0[8] = v6;
  v7 = v6;
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B976908, v3, 0);
}

uint64_t sub_22B976908()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[4];
    sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
    sub_22B977228();
    v3 = sub_22BA0FF6C();

    v4 = *(v2 + 128);
    *(v2 + 128) = v3;

    v5 = sub_22B976478(v3);

    v6 = sub_22B93769C(v5);
LABEL_7:
    v14 = v0[1];
    v15 = *MEMORY[0x277D85DE8];

    return v14(v6, v7);
  }

  v8 = v0[8];
  v9 = sub_22BA0FB6C();

  swift_willThrow();
  v10 = sub_22BA0FB5C();
  sub_22B951A54(0, &qword_281414A18, 0x277D82BB8);
  if (qword_281414A90 != -1)
  {
    swift_once();
  }

  if (sub_22BA1072C())
  {
    v11 = sub_22B93769C(MEMORY[0x277D84F90]);
    v13 = v12;

    v7 = v13;
    v6 = v11;
    goto LABEL_7;
  }

  swift_willThrow();

  v17 = v0[1];
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_22B976B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 72) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 40) = a1;
  *(v6 + 48) = a3;
  return MEMORY[0x2822009F8](sub_22B976B60, v5, 0);
}

uint64_t sub_22B976B60()
{
  v62 = v0;
  if (*(v0 + 72))
  {
    v1 = *(v0 + 56);
    if (qword_281414D30 != -1)
    {
      swift_once();
      v1 = *(v0 + 56);
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD40);
    v5 = v2;
    sub_22B973C70(v1, 1);
    swift_unknownObjectRetain();
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();

    sub_22B97721C(v1, 1);
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v61 = v13;
      *v11 = 138412802;
      *(v11 + 4) = v9;
      *v12 = v9;
      *(v11 + 12) = 2112;
      v14 = v9;
      sub_22B973C70(v8, 1);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      v12[1] = v15;
      *(v11 + 22) = 2080;
      sub_22BA0FDCC();
      sub_22B944034();
      v16 = sub_22BA10C1C();
      v18 = sub_22B99153C(v16, v17, &v61);

      *(v11 + 24) = v18;
      _os_log_impl(&dword_22B92A000, v6, v7, "Delete Sync failed to delete record to CK %@ %@ %s", v11, 0x20u);
      sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v12, -1, -1);
      sub_22B936C4C(v13);
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    goto LABEL_23;
  }

  v19 = *(*(v0 + 64) + 128);
  if (*(v19 + 16))
  {
    v20 = *(v0 + 48);
    v21 = *(*(v0 + 64) + 128);

    v22 = sub_22B990B14(v20);
    if (v23)
    {
      v24 = (*(v19 + 56) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 48);
      v28 = sub_22BA0FEFC();
      sub_22B936CA8(v28, qword_28141AD40);

      v29 = v27;
      v30 = sub_22BA0FEDC();
      v31 = sub_22BA1046C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 48);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v61 = v34;
        *v33 = 136315394;
        v35 = sub_22B99153C(v26, v25, &v61);

        *(v33 + 4) = v35;
        *(v33 + 12) = 2080;
        v36 = [v32 zoneID];
        v37 = [v36 zoneName];

        v38 = sub_22BA0FFFC();
        v40 = v39;

        v41 = sub_22B99153C(v38, v40, &v61);

        *(v33 + 14) = v41;
        _os_log_impl(&dword_22B92A000, v30, v31, "Deleted %s for %s", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v34, -1, -1);
        MEMORY[0x23189ADD0](v33, -1, -1);
      }

      else
      {
      }

      v55 = *(v0 + 64);
      v56 = *(v0 + 48);
      swift_beginAccess();
      MEMORY[0x231899830](v56);
      if (*((*(v55 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v60 = *((*(v55 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22BA1022C();
      }

      v57 = *(v0 + 48);
      sub_22BA1026C();
      swift_endAccess();
      goto LABEL_23;
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 48);
  v43 = sub_22BA0FEFC();
  sub_22B936CA8(v43, qword_28141AD40);
  v44 = v42;
  v45 = sub_22BA0FEDC();
  v46 = sub_22BA1044C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 48);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61 = v49;
    *v48 = 136315138;
    v50 = [v47 recordName];
    v51 = sub_22BA0FFFC();
    v53 = v52;

    v54 = sub_22B99153C(v51, v53, &v61);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_22B92A000, v45, v46, "Failed to find %s in batch map for guid update", v48, 0xCu);
    sub_22B936C4C(v49);
    MEMORY[0x23189ADD0](v49, -1, -1);
    MEMORY[0x23189ADD0](v48, -1, -1);
  }

LABEL_23:
  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_22B9771B0()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B97721C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_22B977228()
{
  result = qword_281414BD8;
  if (!qword_281414BD8)
  {
    sub_22B951A54(255, &qword_281414BE0, 0x277CBC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414BD8);
  }

  return result;
}

uint64_t sub_22B9772B0()
{
  v1 = v0[5];
  v0[6] = *(v1 + 112);
  swift_beginAccess();
  v2 = *(v1 + 120);
  sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);

  v0[7] = sub_22BA101DC();

  sub_22BA102EC();
  v0[8] = sub_22BA102DC();
  v4 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9773A0, v4, v3);
}

uint64_t sub_22B9773A0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  [v3 clearTombstonesForRecordIDs_];

  return MEMORY[0x2822009F8](sub_22B97742C, v4, 0);
}

uint64_t sub_22B97742C()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 120);
  v3 = MEMORY[0x277D84F90];
  *(v1 + 120) = MEMORY[0x277D84F90];

  v4 = sub_22B9BBDF0(v3);
  v5 = *(v1 + 128);
  *(v1 + 128) = v4;

  v6 = *(v0 + 8);

  return v6();
}

void sub_22B9774B8(uint64_t *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ActionRecord();
  v8 = (a1 + *(v7 + 68));
  if (v8[1])
  {
    v9 = *v8;
    v10 = sub_22BA0FFCC();
  }

  else
  {
    v10 = 0;
  }

  sub_22B94498C(a1 + *(v7 + 64), v6);
  v11 = sub_22BA0FD8C();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    v13 = sub_22BA0FCFC();
    (*(v12 + 8))(v6, v11);
  }

  if (a1[1])
  {
    v14 = *a1;
    v15 = sub_22BA0FFCC();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSender:v10 time:v13 guid:v15 type:4];

  if (v16)
  {
    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22B97766C()
{
  type metadata accessor for ImportCoordinator();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_28141AD98 = result;
  return result;
}

uint64_t sub_22B9776C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_22B977724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22B977794()
{
  v1 = *v0;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v6 = *(v0 + 5);
      if (v6)
      {
        v3 = v6;
        v4 = [v3 otherHandle];
        if (!v4)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      return 0;
    }

    if (v1 == 3)
    {
      v2 = *(v0 + 2);
      if (v2)
      {
        v3 = v2;
        v4 = [v3 otherHandle];
        if (!v4)
        {
          goto LABEL_19;
        }

LABEL_16:
        v8 = v4;
        v9 = sub_22BA0FFFC();

        return v9;
      }

      return 0;
    }

    v7 = *(v0 + 4);
    if (!v7)
    {
      return 0;
    }

    v3 = v7;
    v4 = [v3 otherHandle];
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_19:

    return 0;
  }

  if (*v0)
  {
    v11 = *(v0 + 3);
    if (!v11)
    {
      return 0;
    }

    v3 = v11;
    v4 = [v3 otherHandle];
    if (v4)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v5 = *(v0 + 1);
  if (v5)
  {
    v3 = v5;
    v4 = [v3 otherHandle];
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_22B9778DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  if (v2 != 1)
  {
    v3 = 0xE900000000000032;
  }

  if (*a1)
  {
    v4 = 0x6F746F725067736DLL;
  }

  else
  {
    v4 = 0x6570795467736DLL;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v6 = 0xE900000000000032;
  }

  if (*a2)
  {
    v7 = 0x6F746F725067736DLL;
  }

  else
  {
    v7 = 0x6570795467736DLL;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22BA10C6C();
  }

  return v9 & 1;
}

uint64_t sub_22B9779B0()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B977A58()
{
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B977AEC()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B977B90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B9786EC();
  *a2 = result;
  return result;
}

void sub_22B977BC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  if (v2 != 1)
  {
    v4 = 0xE900000000000032;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x6F746F725067736DLL;
  }

  else
  {
    v6 = 0x6570795467736DLL;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_22B977C24()
{
  *v0;
  if (*v0)
  {
    return 0x6F746F725067736DLL;
  }

  else
  {
    return 0x6570795467736DLL;
  }
}

uint64_t sub_22B977C84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B9786EC();
  *a1 = result;
  return result;
}

uint64_t sub_22B977CB8(uint64_t a1)
{
  v2 = sub_22B97852C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B977CF4(uint64_t a1)
{
  v2 = sub_22B97852C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22B977D30()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 messageSummaryInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22BA0FCAC();
    v7 = v6;

    v8 = sub_22BA0FC8C();
    sub_22B9359BC(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = JWDecodeDictionary();

  if (v10)
  {
    v11 = sub_22BA0FF6C();

    v9 = sub_22B98963C(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

double sub_22B977E28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22B977E78(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

void sub_22B977E78(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5240, &qword_22BA15D48);
  v6 = *(v5 - 1);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v44 - v9;
  v11 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B97852C();
  sub_22BA10D8C();
  if (v2)
  {
    sub_22B936C4C(a1);

    return;
  }

  v55 = 0;
  sub_22B978580();
  sub_22BA10B3C();
  v12 = v52;
  v55 = 1;
  v13 = sub_22B9363C8();
  sub_22BA10AFC();
  v54 = v12;
  v50 = v6;
  v51 = v5;
  v14 = v53;
  v48 = a2;
  v49 = v13;
  if (v53 >> 60 == 15)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_37;
  }

  v47 = v52;
  v20 = sub_22BA0FC8C();
  v21 = [v20 _FTOptionallyDecompressData];

  if (v21)
  {
    v22 = sub_22BA0FCAC();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  if (v54 <= 1)
  {
    if (!v54)
    {
      if (v24 >> 60 == 15)
      {
        v26 = 0;
      }

      else
      {
        v26 = sub_22BA0FC8C();
        sub_22B9359A8(v22, v24);
      }

      v19 = [objc_allocWithZone(MEMORY[0x277D1ABE0]) initWithData_];

      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_36;
    }

    if (v24 >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_22BA0FC8C();
      sub_22B9359A8(v22, v24);
    }

    v17 = [objc_allocWithZone(MEMORY[0x277D1ABE8]) initWithData_];

    v15 = 0;
    v16 = 0;
  }

  else
  {
    if (v54 == 2)
    {
      if (v24 >> 60 == 15)
      {
        v27 = 0;
      }

      else
      {
        v27 = sub_22BA0FC8C();
        sub_22B9359A8(v22, v24);
      }

      v15 = [objc_allocWithZone(MEMORY[0x277D1ABF8]) initWithData_];

      v16 = 0;
    }

    else
    {
      if (v54 == 3)
      {
        if (v24 >> 60 == 15)
        {
          v25 = 0;
        }

        else
        {
          v25 = sub_22BA0FC8C();
          sub_22B9359A8(v22, v24);
        }

        v18 = [objc_allocWithZone(MEMORY[0x277D1AC38]) initWithData_];

        v15 = 0;
        v16 = 0;
        v17 = 0;
        goto LABEL_35;
      }

      if (v24 >> 60 == 15)
      {
        v28 = 0;
      }

      else
      {
        v28 = sub_22BA0FC8C();
        sub_22B9359A8(v22, v24);
      }

      v16 = [objc_allocWithZone(MEMORY[0x277D1ABD8]) initWithData_];

      v15 = 0;
    }

    v17 = 0;
  }

  v18 = 0;
LABEL_35:
  v19 = 0;
LABEL_36:
  sub_22B9359A8(v47, v14);
LABEL_37:
  v55 = 2;
  sub_22BA10AFC();
  if (v53 >> 60 == 15)
  {
    v50[1](v10, v51);
LABEL_49:
    v38 = 0;
    goto LABEL_50;
  }

  v47 = v52;
  v49 = v53;
  v46 = sub_22BA0FC8C();
  v30 = [v46 _FTOptionallyDecompressData];

  if (!v30)
  {
    if (v54 == 3)
    {
      goto LABEL_44;
    }

    v39 = 0;
    v46 = 0xF000000000000000;
LABEL_48:
    v50[1](v10, v51);
    sub_22B9359A8(v47, v49);
    sub_22B9359A8(v39, v46);
    goto LABEL_49;
  }

  v45 = sub_22BA0FCAC();
  v46 = v31;

  if (v54 != 3)
  {
    v39 = v45;
    goto LABEL_48;
  }

  if (v46 >> 60 == 15)
  {
LABEL_44:
    v35 = 0;
    goto LABEL_45;
  }

  v32 = v45;
  v33 = sub_22BA0FC8C();
  v34 = v32;
  v35 = v33;
  sub_22B9359A8(v34, v46);
LABEL_45:
  v36 = [objc_allocWithZone(MEMORY[0x277D1AC18]) initWithData_];
  v37 = v35;
  v38 = v36;

  sub_22B9359A8(v47, v49);
  v50[1](v10, v51);
LABEL_50:
  v49 = v38;
  v47 = v38;
  v51 = v19;
  v50 = v18;
  v46 = v17;
  v40 = v16;
  v41 = v15;
  sub_22B936C4C(a1);

  v42 = v48;
  *v48 = v54;
  v42[1] = v19;
  v42[2] = v18;
  v42[3] = v17;
  v42[4] = v16;
  v43 = v49;
  v42[5] = v15;
  v42[6] = v43;
}

unint64_t sub_22B97852C()
{
  result = qword_27D8D5248;
  if (!qword_27D8D5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5248);
  }

  return result;
}

unint64_t sub_22B978580()
{
  result = qword_27D8D5250;
  if (!qword_27D8D5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5250);
  }

  return result;
}

unint64_t sub_22B9785E8()
{
  result = qword_27D8D5258;
  if (!qword_27D8D5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5258);
  }

  return result;
}

unint64_t sub_22B978640()
{
  result = qword_27D8D5260;
  if (!qword_27D8D5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5260);
  }

  return result;
}

unint64_t sub_22B978698()
{
  result = qword_27D8D5268;
  if (!qword_27D8D5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5268);
  }

  return result;
}

uint64_t sub_22B9786EC()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

__n128 sub_22B978744(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22B978758(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22B9787A0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_22B978804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B97882C, 0, 0);
}

uint64_t sub_22B97882C()
{
  v19 = v0;
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v0[7] = v4;
  v0[8] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xA5B8000000000000;
  v4(&v18, v2);
  if (v18 < 7u && ((0x5Fu >> v18) & 1) != 0)
  {
    v5 = 0xE090D0C0B0A09uLL >> (8 * (v18 & 0x1Fu));
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_22B978B8C;
    v8 = v0[2];
    v7 = v0[3];
    v25 = v5;
    v24 = 59;
    v23 = 2;
    v22 = 22;
    v21 = "stepStarting(context:)";

    return sub_22B9E81AC(v8, v7, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/Protocols/SyncJob.swift", 99, 2);
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    v15 = *(*sub_22B9358B4((v0[2] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[2] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
    v11((&v18 + 1), v14, v13);
    v16 = sub_22BA0FFCC();

    [v15 setObject:v16 forKey:*MEMORY[0x277D19AA0]];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22B978B8C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B978C88, 0, 0);
}

uint64_t sub_22B978C88()
{
  v11 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = *(*sub_22B9358B4((v0[2] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[2] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 24);
  v2(&v10, v5, v4);
  v7 = sub_22BA0FFCC();

  [v6 setObject:v7 forKey:*MEMORY[0x277D19AA0]];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22B978ECC()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  sub_22B936C4C(v0 + 4);
  v2 = v0[10];
  swift_unknownObjectRelease();
  v3 = v0[11];

  v4 = v0[14];
  sub_22B979210(v0[13]);

  return swift_deallocClassInstance();
}

uint64_t sub_22B978F7C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 112);
  sub_22B930C20(v1);
  return v1;
}

uint64_t sub_22B978FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B945AC8;

  return sub_22B978804(a1, a2, a3, &off_283F54680);
}

uint64_t sub_22B979068(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B943E68;

  return sub_22B979130(a1);
}

uint64_t sub_22B979150()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  [*(*sub_22B9358B4(v1 v1[3]) + 24)];
  [*(*sub_22B9358B4(v1 v1[3]) + 24)];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B979210(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B979220()
{
  v1[82] = v0;
  v2 = type metadata accessor for AttachmentRecord();
  v1[83] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9792C0, 0, 0);
}

uint64_t sub_22B9792C0()
{
  v1 = *(v0 + 656);
  v2 = *(*(v0 + 664) + 52);
  *(v0 + 1056) = v2;
  memcpy((v0 + 16), (v1 + v2), 0x140uLL);
  if (sub_22B97CA68(v0 + 16) == 1)
  {
    v3 = 0;
  }

  else
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);

    v3 = sub_22BA0FFCC();
  }

  v6 = IMMessageGuidFromIMFileTransferGuid();

  if (v6)
  {
    v7 = sub_22BA0FFFC();
    v9 = v8;

    v10 = qword_281414F10;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_22B99F8F8(v7, v9);
    v6 = v11;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v0 + 704) = v9;
  *(v0 + 696) = v7;
  *(v0 + 688) = v6;
  v12 = qword_28141ADC8;
  *(v0 + 712) = qword_28141ADC8;
  if (v12)
  {
    v13 = qword_28141ADD0;
    *(v0 + 720) = qword_28141ADD0;
    *(v0 + 728) = *(v13 + 104);
    *(v0 + 736) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0x4C2F000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    *(v0 + 744) = sub_22BA102EC();
    v15 = sub_22BA1029C();
    *(v0 + 752) = v15;
    *(v0 + 760) = v14;

    return MEMORY[0x2822009F8](sub_22B979520, v15, v14);
  }

  else
  {

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v16 = *(v0 + 680);
    v17 = *(v0 + 672);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_22B979520()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  (*(v0 + 728))(*(v0 + 688));

  return MEMORY[0x2822009F8](sub_22B97959C, 0, 0);
}

uint64_t sub_22B97959C()
{
  memcpy((v0 + 336), (*(v0 + 656) + *(v0 + 1056)), 0x140uLL);
  if (sub_22B97CA68(v0 + 336) == 1)
  {
    v1 = *(v0 + 744);
    v2 = *(v0 + 672);
    v3 = *(v0 + 656);
    *(v0 + 1060) = sub_22B97B858() & 1;
    *(v0 + 904) = sub_22B97CA80();
    sub_22B97CACC(v3, v2);
    *(v0 + 912) = sub_22BA102DC();
    v4 = sub_22BA1029C();
    v6 = v5;
    v7 = sub_22B97A0B4;
    v8 = v4;
    v9 = v6;
LABEL_5:

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  *(v0 + 768) = *(v0 + 520);
  *(v0 + 776) = *(v0 + 528);
  v10 = qword_28141ADC8;
  *(v0 + 784) = qword_28141ADC8;
  if (v10)
  {
    v11 = qword_28141ADD0;
    *(v0 + 792) = qword_28141ADD0;
    *(v0 + 800) = *(v11 + 112);
    *(v0 + 808) = (v11 + 112) & 0xFFFFFFFFFFFFLL | 0x4B50000000000000;
    v12 = *(v0 + 760);
    v13 = *(v0 + 752);

    v7 = sub_22B97976C;
    v8 = v13;
    v9 = v12;
    goto LABEL_5;
  }

  v14 = *(v0 + 704);
  v15 = *(v0 + 688);

  sub_22B952500();
  swift_allocError();
  swift_willThrow();

  v16 = *(v0 + 680);
  v17 = *(v0 + 672);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22B97976C()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  *(v0 + 816) = (*(v0 + 800))(*(v0 + 768), *(v0 + 776));

  return MEMORY[0x2822009F8](sub_22B9797F0, 0, 0);
}

uint64_t sub_22B9797F0()
{
  if (*(v0 + 816))
  {
    v1 = *(v0 + 744);
    v2 = *(v0 + 680);
    v3 = *(v0 + 656);
    *(v0 + 824) = sub_22B97CA80();
    sub_22B97CACC(v3, v2);
    *(v0 + 832) = sub_22BA102DC();
    v4 = sub_22BA1029C();
    v6 = v5;
    v7 = sub_22B97991C;
  }

  else
  {
    v8 = *(v0 + 776);

    v9 = *(v0 + 744);
    v10 = *(v0 + 672);
    v11 = *(v0 + 656);
    *(v0 + 1060) = sub_22B97B858() & 1;
    *(v0 + 904) = sub_22B97CA80();
    sub_22B97CACC(v11, v10);
    *(v0 + 912) = sub_22BA102DC();
    v4 = sub_22BA1029C();
    v6 = v12;
    v7 = sub_22B97A0B4;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_22B97991C()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[85];

  v0[105] = sub_22B9AD110(v3, 0);
  v0[106] = 0;

  return MEMORY[0x2822009F8](sub_22B9799D4, 0, 0);
}

uint64_t sub_22B9799D4()
{
  v37 = v0;
  v1 = *(v0 + 656);
  if (sub_22B97B1A4(*(v0 + 816), *(v0 + 840)))
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 776);
    v3 = sub_22BA0FEFC();
    sub_22B936CA8(v3, qword_28141AD10);

    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1042C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 776);
    if (v6)
    {
      v8 = *(v0 + 768);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      v11 = sub_22B99153C(v8, v7, &v36);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_22B92A000, v4, v5, "Transfer %s: local data newer than cloud; marking dirty to update server", v9, 0xCu);
      sub_22B936C4C(v10);
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }

    else
    {
    }

    v13 = 0;
  }

  else
  {
    v12 = *(v0 + 776);

    v13 = 1;
  }

  v14 = *(v0 + 840);
  v15 = *(v0 + 816);
  v16 = *(v0 + 656);
  [v15 setCloudKitSyncState_];
  sub_22B97BBF8(v15, v14);
  if (*(v16 + 56))
  {
    v17 = *(*(v0 + 656) + 48);
    v18 = sub_22BA0FFCC();
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v0 + 664);
  v20 = *(v0 + 656);
  [*(v0 + 816) setCloudKitRecordID_];

  v21 = (v20 + *(v19 + 56));
  if (v21[1] >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v23 = *v21;
    v22 = sub_22BA0FC8C();
  }

  [*(v0 + 816) setCloudKitServerChangeTokenBlob_];

  v24 = qword_28141ADC8;
  *(v0 + 856) = qword_28141ADC8;
  if (v24)
  {
    v25 = qword_28141ADD0;
    *(v0 + 864) = qword_28141ADD0;
    *(v0 + 872) = *(v25 + 120);
    *(v0 + 880) = (v25 + 120) & 0xFFFFFFFFFFFFLL | 0x848E000000000000;
    v26 = *(v0 + 760);
    v27 = *(v0 + 752);

    return MEMORY[0x2822009F8](sub_22B979D18, v27, v26);
  }

  else
  {
    v28 = *(v0 + 840);
    v29 = *(v0 + 816);
    v30 = *(v0 + 704);
    v31 = *(v0 + 688);

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v32 = *(v0 + 680);
    v33 = *(v0 + 672);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_22B979D18()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  (*(v0 + 872))(*(v0 + 816), *(v0 + 696), *(v0 + 704));

  return MEMORY[0x2822009F8](sub_22B979DA8, 0, 0);
}

uint64_t sub_22B979DA8()
{
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = v0[102];
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[102];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_22B92A000, v4, v5, "Stored attachment for existing transfer %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  v10 = v0[93];

  v0[111] = sub_22BA102DC();
  v12 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B979F58, v12, v11);
}

uint64_t sub_22B979F58()
{
  v1 = v0[111];
  v2 = v0[102];

  v0[112] = [v2 guid];

  return MEMORY[0x2822009F8](sub_22B979FE0, 0, 0);
}

uint64_t sub_22B979FE0()
{
  v1 = v0[112];
  v2 = v0[105];
  v3 = v0[102];
  v4 = v0[86];
  if (v1)
  {
    v5 = v0[112];
    v6 = sub_22BA0FFFC();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  v9 = v0[85];
  v10 = v0[84];

  v11 = v0[1];

  return v11(v6, v8);
}

uint64_t sub_22B97A0B4()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[84];

  v0[115] = sub_22B9AD110(v3, 1);
  v0[116] = 0;

  return MEMORY[0x2822009F8](sub_22B97A160, 0, 0);
}

uint64_t sub_22B97A160()
{
  v1 = *(v0 + 1060);
  if (*(v0 + 1060))
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  [*(v0 + 920) _setTransferState_];
  if (v1 && [*(v0 + 920) thumbnailMode] == 1)
  {
    [*(v0 + 920) _setTransferState_];
  }

  v3 = *(v0 + 688);
  [*(v0 + 920) setCloudKitSyncState_];
  if (v3 && ((v4 = *(v0 + 688), objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass())))
  {
    v5 = qword_28141ADC8;
    *(v0 + 936) = qword_28141ADC8;
    if (v5)
    {
      v6 = qword_28141ADD0;
      *(v0 + 944) = qword_28141ADD0;
      *(v0 + 952) = *(v6 + 120);
      *(v0 + 960) = (v6 + 120) & 0xFFFFFFFFFFFFLL | 0x848E000000000000;
      v7 = *(v0 + 760);
      v8 = *(v0 + 752);
      v9 = sub_22B97A384;
LABEL_14:

      return MEMORY[0x2822009F8](v9, v8, v7);
    }

    v13 = *(v0 + 920);
    v14 = *(v0 + 704);
  }

  else
  {
    v10 = *(v0 + 704);

    v11 = qword_28141ADC8;
    *(v0 + 1008) = qword_28141ADC8;
    if (v11)
    {
      v12 = qword_28141ADD0;
      *(v0 + 1016) = qword_28141ADD0;
      *(v0 + 1024) = *(v12 + 120);
      *(v0 + 1032) = (v12 + 120) & 0xFFFFFFFFFFFFLL | 0x848E000000000000;
      v7 = *(v0 + 760);
      v8 = *(v0 + 752);
      v9 = sub_22B97A994;
      goto LABEL_14;
    }

    v13 = *(v0 + 920);
    v4 = *(v0 + 688);
  }

  sub_22B952500();
  swift_allocError();
  swift_willThrow();

  v15 = *(v0 + 680);
  v16 = *(v0 + 672);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22B97A384()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);
  (*(v0 + 952))(*(v0 + 920), *(v0 + 696), *(v0 + 704));

  return MEMORY[0x2822009F8](sub_22B97A414, 0, 0);
}

uint64_t sub_22B97A414()
{
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 920);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 920);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_22B92A000, v4, v5, "Stored attachment for transfer %@", v7, 0xCu);
    sub_22B936BEC(v8, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  v10 = *(v0 + 688);

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  *(v0 + 968) = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *(v0 + 688);
  v14 = [v12 balloonBundleID];
  if (!v14)
  {
    v22 = *MEMORY[0x277D196D8];
    sub_22BA0FFFC();
    goto LABEL_12;
  }

  v15 = v14;
  v16 = sub_22BA0FFFC();
  v18 = v17;

  v19 = *MEMORY[0x277D196D8];
  v20 = sub_22BA0FFFC();
  if (!v18)
  {
LABEL_12:
    v23 = *(v0 + 688);

    goto LABEL_13;
  }

  if (v16 == v20 && v18 == v21)
  {

    goto LABEL_24;
  }

  v34 = sub_22BA10C6C();

  if ((v34 & 1) == 0)
  {
    v23 = *(v0 + 688);
LABEL_13:

    v24 = *(v0 + 968);
    v25 = *(v0 + 688);
    if (([v24 isAudioMessage] & 1) != 0 || (objc_msgSend(*(v0 + 920), sel_isSticker) & 1) != 0 || objc_msgSend(*(v0 + 920), sel_hideAttachment) || objc_msgSend(*(v0 + 920), sel_isLocation))
    {
      v26 = *(v0 + 688);
    }

    else
    {
      v26 = *(v0 + 688);
      [*(v0 + 920) isContact];
    }

LABEL_19:
    v27 = *(v0 + 744);
    *(v0 + 1040) = sub_22BA102DC();
    v28 = sub_22BA1029C();
    v30 = v29;
    v31 = sub_22B97AC18;
    v32 = v28;
    v33 = v30;
LABEL_20:

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

LABEL_24:
  v35 = qword_28141ADC8;
  *(v0 + 976) = qword_28141ADC8;
  if (v35)
  {
    v36 = qword_28141ADD0;
    *(v0 + 984) = qword_28141ADD0;
    *(v0 + 992) = *(v36 + 328);
    *(v0 + 1000) = (v36 + 328) & 0xFFFFFFFFFFFFLL | 0xD999000000000000;
    v33 = *(v0 + 760);
    v32 = *(v0 + 752);
    v31 = sub_22B97A808;
    goto LABEL_20;
  }

  v37 = *(v0 + 920);
  v38 = *(v0 + 688);

  sub_22B952500();
  swift_allocError();
  swift_willThrow();

  v39 = *(v0 + 680);
  v40 = *(v0 + 672);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_22B97A808()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  (*(v0 + 992))(*(v0 + 920));

  return MEMORY[0x2822009F8](sub_22B97A884, 0, 0);
}

uint64_t sub_22B97A884()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 688);
  if (([v1 isAudioMessage] & 1) != 0 || (objc_msgSend(*(v0 + 920), sel_isSticker) & 1) != 0 || objc_msgSend(*(v0 + 920), sel_hideAttachment) || objc_msgSend(*(v0 + 920), sel_isLocation))
  {
    v3 = *(v0 + 688);
  }

  else
  {
    v3 = *(v0 + 688);
    [*(v0 + 920) isContact];
  }

  v4 = *(v0 + 744);
  *(v0 + 1040) = sub_22BA102DC();
  v6 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B97AC18, v6, v5);
}

uint64_t sub_22B97A994()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  (*(v0 + 1024))(*(v0 + 920), 0, 0);

  return MEMORY[0x2822009F8](sub_22B97AA18, 0, 0);
}

uint64_t sub_22B97AA18()
{
  v24 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = v0[115];
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[115];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = [v7 guid];

    if (!v10)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    v14 = sub_22BA0FFFC();
    v16 = v15;

    v17 = sub_22B99153C(v14, v16, &v23);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_22B92A000, v4, v5, "Stored attachment without associate-able message for transfer %s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
  }

  v18 = v0[93];
  v0[130] = sub_22BA102DC();
  v19 = sub_22BA1029C();
  v21 = v20;
  v11 = sub_22B97AC18;
  v12 = v19;
  v13 = v21;

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22B97AC18()
{
  v1 = v0[130];
  v2 = v0[115];

  v0[131] = [v2 guid];

  return MEMORY[0x2822009F8](sub_22B97ACA0, 0, 0);
}

uint64_t sub_22B97ACA0()
{
  v1 = v0[131];
  v2 = v0[115];
  v3 = v0[86];
  if (v1)
  {
    v4 = v0[131];
    v5 = sub_22BA0FFFC();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0;
  }

  v8 = v0[85];
  v9 = v0[84];

  v10 = v0[1];

  return v10(v5, v7);
}

uint64_t sub_22B97AD68()
{
  v1 = *(v0 + 688);

  v2 = *(v0 + 848);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B97ADE8()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B97AE60(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v2 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = sub_22BA0FC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v28 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v27 - v18;
  sub_22BA0E688(v10);
  v29 = *(v12 + 48);
  v20 = v29(v10, 1, v11);
  v27 = v12;
  if (v20 == 1)
  {
    sub_22B936BEC(v10, &qword_27D8D5210, qword_22BA16040);
    v21 = 0x277CCA000;
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    v33 = &type metadata for FileManagerProvider;
    v34 = &off_283F53B48;
    v21 = 0x277CCA000uLL;
    v32[0] = [objc_opt_self() defaultManager];
    sub_22B971CA8(v19);
    (*(v12 + 8))(v19, v11);
    sub_22B957EE4(v32);
  }

  sub_22BA0E698(v7);
  if (v29(v7, 1, v11) == 1)
  {
    return sub_22B936BEC(v7, &qword_27D8D5210, qword_22BA16040);
  }

  v23 = v27;
  v24 = v21;
  v25 = v28;
  (*(v27 + 32))(v28, v7, v11);
  v33 = &type metadata for FileManagerProvider;
  v34 = &off_283F53B48;
  v26 = *(v24 + 2560);
  v32[0] = [objc_opt_self() defaultManager];
  sub_22B971CA8(v25);
  (*(v23 + 8))(v25, v11);
  return sub_22B957EE4(v32);
}

uint64_t sub_22B97B1A4(void *a1, void *a2)
{
  v3 = v2;
  if ((sub_22B97B858() & 1) == 0 || !sub_22B97BB34(a1))
  {
    v17 = [a1 stickerUserInfo];
    if (v17)
    {
      v18 = v17;
      v19 = sub_22BA0FF6C();

      v20 = *MEMORY[0x277D19E10];
      v61 = sub_22BA0FFFC();
      v62 = v21;
      sub_22BA1086C();
      if (*(v19 + 16))
      {
        v22 = sub_22B990AD0(__dst);
        if (v23)
        {
          sub_22B936B20(*(v19 + 56) + 32 * v22, v63);
          sub_22B9580C4(__dst);

          if ((swift_dynamicCast() & 1) == 0 || v61 != 1)
          {
            goto LABEL_19;
          }

          if (qword_281414D18 != -1)
          {
            swift_once();
          }

          v24 = sub_22BA0FEFC();
          sub_22B936CA8(v24, qword_28141AD10);
          v25 = a1;
          v26 = sub_22BA0FEDC();
          v27 = sub_22BA1042C();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            __dst[0] = v29;
            *v28 = 136315138;
            v30 = [v25 guid];
            if (v30)
            {
              v59 = v29;
              v31 = v30;
              v32 = sub_22BA0FFFC();
              v34 = v33;

              v29 = v59;
            }

            else
            {
              v32 = 0x646975672D6F6ELL;
              v34 = 0xE700000000000000;
            }

            v47 = sub_22B99153C(v32, v34, __dst);

            *(v28 + 4) = v47;
            _os_log_impl(&dword_22B92A000, v26, v27, "Transfer %s: stickerInfo present locally but missing in cloud", v28, 0xCu);
            sub_22B936C4C(v29);
            MEMORY[0x23189ADD0](v29, -1, -1);
            MEMORY[0x23189ADD0](v28, -1, -1);
          }

          v48 = type metadata accessor for AttachmentRecord();
          memcpy(__dst, (v3 + *(v48 + 52)), sizeof(__dst));
          if (sub_22B97CA68(__dst) != 1)
          {
            v49 = __dst[32] >> 60 == 15 ? 0 : sub_22BA0FC8C();
            v50 = JWDecodeDictionary();

            if (v50)
            {
              v51 = sub_22BA0FF6C();

              v52 = sub_22B98963C(v51);

              if (v52)
              {
                v53 = *MEMORY[0x277D1A758];
                v54 = sub_22BA0FFFC();
                if (*(v52 + 16))
                {
                  v56 = sub_22B990A58(v54, v55);
                  v58 = v57;

                  if (v58)
                  {
                    sub_22B936B20(*(v52 + 56) + 32 * v56, v63);

                    sub_22B936BEC(v63, &unk_27D8D5A30, qword_22BA13390);
                    goto LABEL_19;
                  }
                }

                else
                {
                }
              }
            }
          }

          memset(v63, 0, 32);
          sub_22B936BEC(v63, &unk_27D8D5A30, qword_22BA13390);
          return 1;
        }
      }

      sub_22B9580C4(__dst);
    }

LABEL_19:
    v35 = [a1 previewGenerationVersion];
    if ([a2 previewGenerationVersion] >= v35)
    {
      return 0;
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v36 = sub_22BA0FEFC();
    sub_22B936CA8(v36, qword_28141AD10);
    v37 = a1;
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1042C();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_31;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    __dst[0] = v11;
    *v10 = 136315138;
    v38 = [v37 guid];
    if (v38)
    {
      v39 = v38;
      v40 = sub_22BA0FFFC();
      v42 = v41;
    }

    else
    {
      v40 = 0x646975672D6F6ELL;
      v42 = 0xE700000000000000;
    }

    v44 = sub_22B99153C(v40, v42, __dst);

    *(v10 + 4) = v44;
    v45 = "Transfer %s: preview gen ver is newer than cloud";
    goto LABEL_30;
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v6 = sub_22BA0FEFC();
  sub_22B936CA8(v6, qword_28141AD10);
  v7 = a1;
  v8 = sub_22BA0FEDC();
  v9 = sub_22BA1042C();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_31;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  __dst[0] = v11;
  *v10 = 136315138;
  v12 = [v7 guid];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22BA0FFFC();
    v16 = v15;
  }

  else
  {
    v14 = 0x646975672D6F6ELL;
    v16 = 0xE700000000000000;
  }

  v46 = sub_22B99153C(v14, v16, __dst);

  *(v10 + 4) = v46;
  v45 = "Transfer %s: existing asset is preferred over cloud";
LABEL_30:
  _os_log_impl(&dword_22B92A000, v8, v9, v45, v10, 0xCu);
  sub_22B936C4C(v11);
  MEMORY[0x23189ADD0](v11, -1, -1);
  MEMORY[0x23189ADD0](v10, -1, -1);
LABEL_31:

  return 1;
}

id sub_22B97B858()
{
  v26[40] = *MEMORY[0x277D85DE8];
  v1 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v24[-v4];
  v6 = sub_22BA0FC4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AttachmentRecord();
  memcpy(v26, (v0 + *(v12 + 52)), 0x140uLL);
  if (sub_22B97CA68(v26) == 1)
  {
    goto LABEL_8;
  }

  v13 = v26[39];
  if (!v26[39] || !*(v26[39] + 16))
  {
    goto LABEL_8;
  }

  v14 = sub_22B990A58(6386028, 0xE300000000000000);
  if ((v15 & 1) == 0)
  {

LABEL_8:
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_9;
  }

  v16 = (*(v13 + 56) + (v14 << 6));
  v17 = *v16;
  v18 = v16[1];

  sub_22BA0FC1C();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_9:
    sub_22B936BEC(v5, &qword_27D8D5210, qword_22BA16040);
    result = 0;
    goto LABEL_10;
  }

  (*(v7 + 32))(v11, v5, v6);
  v19 = [objc_opt_self() defaultManager];
  v25 = 0;
  sub_22BA0FB7C();
  v20 = sub_22BA0FFCC();

  v21 = [v19 fileExistsAtPath:v20 isDirectory:&v25];

  (*(v7 + 8))(v11, v6);
  result = v21;
LABEL_10:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_22B97BB34(void *a1)
{
  if ((sub_22B97B858() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 localPath];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22BA0FFFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_22B97BE3C(v4, v6);
  v9 = v8;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v10 = sub_22BA0E7BC();
  v12 = sub_22B97BE3C(v10, v11);
  v14 = v13;

  return (v12 & 1) == 0 || v14 < v9;
}

id sub_22B97BBF8(void *a1, void *a2)
{
  if ((sub_22B97B858() & 1) != 0 && sub_22B97BCE0(a1))
  {
    [a1 _setTransferState_];
    sub_22B9ABBA8(v2);
  }

  v5 = [a2 previewGenerationVersion];
  result = [a1 previewGenerationVersion];
  if (result < v5)
  {
    [a1 setPreviewGenerationState_];
    v7 = [a2 previewGenerationVersion];

    return [a1 setPreviewGenerationVersion_];
  }

  return result;
}

BOOL sub_22B97BCE0(void *a1)
{
  if ((sub_22B97B858() & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for AttachmentRecord();
  memcpy(v23, (v1 + *(v3 + 52)), sizeof(v23));
  if (sub_22B97CA68(v23) != 1)
  {
    v4 = v23[39];
    if (v23[39])
    {
      if (*(v23[39] + 16))
      {

        v5 = sub_22B990A58(6386028, 0xE300000000000000);
        if (v6)
        {
          v7 = (*(v4 + 56) + (v5 << 6));
          v9 = *v7;
          v8 = v7[1];

          v10 = v9;
          goto LABEL_9;
        }
      }
    }
  }

  v10 = 0;
  v8 = 0;
LABEL_9:
  v11 = sub_22B97BE3C(v10, v8);
  v13 = v12;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v14 = [a1 localPath];
  if (v14)
  {
    v15 = v14;
    v16 = sub_22BA0FFFC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v20 = sub_22B97BE3C(v16, v18);
  v22 = v21;

  return (v20 & 1) == 0 || v22 < v13;
}

uint64_t sub_22B97BE3C(uint64_t a1, unint64_t a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    result = 0;
    goto LABEL_16;
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = sub_22BA0FFCC();
  v7 = [v5 fileExistsAtPath_];

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [v4 defaultManager];
  v9 = sub_22BA0FFCC();
  v25[0] = 0;
  v10 = [v8 attributesOfItemAtPath:v9 error:v25];

  v11 = v25[0];
  if (!v10)
  {
    v17 = v25[0];
    v18 = sub_22BA0FB6C();

    swift_willThrow();
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v19 = sub_22BA0FEFC();
    sub_22B936CA8(v19, qword_28141AD10);

    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1044C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22B99153C(a1, a2, v25);
      _os_log_impl(&dword_22B92A000, v20, v21, "Failed to get file attributes of item at: %s", v22, 0xCu);
      sub_22B936C4C(v23);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    goto LABEL_15;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_22B97CB30();
  v12 = sub_22BA0FF6C();
  v13 = v11;

  if (!*(v12 + 16) || (v14 = sub_22B990C6C(*MEMORY[0x277CCA1C0]), (v15 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_22B936B20(*(v12 + 56) + 32 * v14, v25);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  result = 1;
LABEL_16:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B97C158(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_22B9349C8(&qword_27D8D5210, qword_22BA16040) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = sub_22BA0FC4C();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B97C268, 0, 0);
}

uint64_t sub_22B97C268()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  sub_22BA0E688(v3);
  v5 = *(v2 + 48);
  if (v5(v3, 1, v1) == 1)
  {
    sub_22B936BEC(v0[5], &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    v6 = v0[9];
    v7 = v0[2];
    (*(v0[7] + 32))(v6, v0[5], v0[6]);
    v8 = sub_22B9358B4(v7, v7[3]);
    sub_22B964DE0(v6, *v8);
    (*(v0[7] + 8))(v0[9], v0[6]);
  }

  v9 = v0[6];
  v10 = v0[4];
  sub_22BA0E698(v10);
  if (v5(v10, 1, v9) == 1)
  {
    sub_22B936BEC(v0[4], &qword_27D8D5210, qword_22BA16040);
  }

  else
  {
    v11 = v0[8];
    v12 = v0[2];
    (*(v0[7] + 32))(v11, v0[4], v0[6]);
    v13 = sub_22B9358B4(v12, v12[3]);
    sub_22B964DE0(v11, *v13);
    (*(v0[7] + 8))(v0[8], v0[6]);
  }

  v15 = v0[8];
  v14 = v0[9];
  v17 = v0[4];
  v16 = v0[5];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B97C71C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B97C7AC;

  return sub_22B979220();
}

uint64_t sub_22B97C7AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v9 = sub_22B97C958;
  }

  else
  {
    *(v6 + 40) = a2;
    *(v6 + 48) = a1;
    v9 = sub_22B97C8E0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22B97C8E0()
{
  v1 = v0[2];
  sub_22B97AE60(v0[6], v0[5]);

  v2 = v0[1];

  return v2(1);
}

uint64_t sub_22B97C958()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_22B97AE60(0, 0);
  swift_willThrow();
  v3 = v0[1];
  v4 = v0[4];

  return v3();
}

uint64_t sub_22B97C9D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B943E68;

  return sub_22B97C158(a1);
}

uint64_t sub_22B97CA68(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22B97CA80()
{
  result = qword_281414B70;
  if (!qword_281414B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B70);
  }

  return result;
}

uint64_t sub_22B97CACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B97CB30()
{
  result = qword_281414B28;
  if (!qword_281414B28)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414B28);
  }

  return result;
}

unint64_t sub_22B97CB9C()
{
  result = qword_27D8D52D0;
  if (!qword_27D8D52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D52D0);
  }

  return result;
}

uint64_t sub_22B97CC1C()
{
  type metadata accessor for CloudState();
  if (sub_22BA0876C())
  {
    sub_22B944A5C();
    swift_allocError();
    *v1 = xmmword_22BA16130;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 8);

    return v4(0, 0);
  }
}

uint64_t sub_22B97CD04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_22B97CD7C()
{
  result = qword_27D8D52D8;
  if (!qword_27D8D52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D52D8);
  }

  return result;
}

uint64_t sub_22B97CDE0(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D52E8, &qword_22BA16320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B97D320();
  sub_22BA10D9C();
  v13 = 0;
  sub_22BA10BDC();
  if (!v1)
  {
    v12 = 1;
    sub_22BA10BDC();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_22B97CF68()
{
  if (*v0)
  {
    result = 0x736572756C696166;
  }

  else
  {
    result = 0x6573736563637573;
  }

  *v0;
  return result;
}

uint64_t sub_22B97CFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573736563637573 && a2 == 0xE900000000000073;
  if (v6 || (sub_22BA10C6C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736572756C696166 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22BA10C6C();

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

uint64_t sub_22B97D08C(uint64_t a1)
{
  v2 = sub_22B97D320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B97D0C8(uint64_t a1)
{
  v2 = sub_22B97D320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B97D130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22B97D178(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22B97D15C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_22B97CDE0(a1);
}

uint64_t sub_22B97D178(uint64_t *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D52E0, &qword_22BA16318);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B97D320();
  sub_22BA10D8C();
  v11[15] = 0;
  v9 = sub_22BA10B2C();
  v11[14] = 1;
  sub_22BA10B2C();
  (*(v3 + 8))(v7, v2);
  sub_22B936C4C(a1);
  return v9;
}

unint64_t sub_22B97D320()
{
  result = qword_281416660;
  if (!qword_281416660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416660);
  }

  return result;
}

unint64_t sub_22B97D388()
{
  result = qword_27D8D52F0;
  if (!qword_27D8D52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D52F0);
  }

  return result;
}

unint64_t sub_22B97D3E0()
{
  result = qword_281416650;
  if (!qword_281416650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416650);
  }

  return result;
}

unint64_t sub_22B97D438()
{
  result = qword_281416658;
  if (!qword_281416658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416658);
  }

  return result;
}

unint64_t sub_22B97D4B0()
{
  result = qword_27D8D52F8;
  if (!qword_27D8D52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D52F8);
  }

  return result;
}

uint64_t sub_22B97D504(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22B97D524, 0, 0);
}

uint64_t sub_22B97D524()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_22B97D554, v1, 0);
}

uint64_t sub_22B97D554()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v1 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 40);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v1 + 184) = v2;
  swift_endAccess();
  v7 = v6;

  return MEMORY[0x2822009F8](sub_22B97D668, 0, 0);
}

uint64_t sub_22B97D668()
{
  v1 = *sub_22B9358B4((v0[6] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[6] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v2 = sub_22BA09CBC();
  if (v2)
  {
    v3 = v0[5];
    v4 = v2;
    swift_unknownObjectRetain();
    v5 = sub_22BA0FB5C();
    [v4 appendError_];
    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

id sub_22B97D720()
{
  sub_22B9806A0();
  v0 = sub_22BA10C3C();
  if (!v0)
  {
    v0 = swift_allocError();
  }

  v1 = v0;
  v2 = sub_22BA0FB5C();

  v3 = [v2 userInfo];
  v4 = sub_22BA0FF6C();

  v5 = *MEMORY[0x277CCA7E8];
  v6 = sub_22BA0FFFC();
  if (!*(v4 + 16))
  {

    goto LABEL_8;
  }

  v8 = sub_22B990A58(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_22B936B20(*(v4 + 56) + 32 * v8, &v21);

  sub_22B958B58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v21 = [v2 code];
    v13 = sub_22BA10C1C();
    goto LABEL_10;
  }

  [v2 code];
  v21 = sub_22BA10C1C();
  v22 = v11;
  MEMORY[0x231899730](47, 0xE100000000000000);
  [v20 code];
  v12 = sub_22BA10C1C();
  MEMORY[0x231899730](v12);

  v13 = v21;
  v14 = v22;
LABEL_10:
  v21 = v13;
  v22 = v14;
  MEMORY[0x231899730](8250, 0xE200000000000000);
  v15 = [v2 domain];
  v16 = sub_22BA0FFFC();
  v18 = v17;

  MEMORY[0x231899730](v16, v18);

  return v21;
}

uint64_t sub_22B97D99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B980888;

  return sub_22B97DA50(a1, a2, a3, &off_283F54658);
}

uint64_t sub_22B97DA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_22B97DA78, 0, 0);
}

uint64_t sub_22B97DA78()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v1 + 32);
  *(v0 + 120) = v3;
  v4 = v3(v2, v1);
  v5 = (*(v1 + 16))(v2, v1);
  *(v0 + 128) = v5;
  v8 = *(v5 + 2);
  *(v0 + 136) = v8;
  if (v8)
  {
    v9 = MEMORY[0x277D84F90];
    *(v0 + 160) = 0;
    *(v0 + 168) = v9;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    *(v0 + 256) = v4 == 2;
    if (*(v5 + 2))
    {
      sub_22B935B38(v5 + 32, v0 + 16);
      v11 = *(v0 + 40);
      v10 = *(v0 + 48);
      sub_22B9358B4((v0 + 16), v11);
      v12 = swift_task_alloc();
      *(v0 + 176) = v12;
      *v12 = v0;
      v12[1] = sub_22B97DD3C;
      v14 = *(v0 + 80);
      v13 = *(v0 + 88);

      return sub_22B97EDC0(v14, v13, v11, v10);
    }

    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  v16 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  *(v0 + 200) = MEMORY[0x277D84F90];
  *(v0 + 208) = v17;
  if (v17)
  {
    v18 = *(v16 + 32);
    *(v0 + 216) = v18;
    if (v17 != 1)
    {
      v25 = *(v0 + 80);
      v26 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v0 + 224) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 232) = *(v25 + v26);
      v27 = v18;
      *(v0 + 240) = 1;
      v28 = *(v0 + 232);
      v29 = *(*(v0 + 200) + 40);
      *(v0 + 248) = v29;

      v30 = v29;
      v5 = sub_22B97E1B4;
      v6 = v28;
      v7 = 0;

      return MEMORY[0x2822009F8](v5, v6, v7);
    }

    v19 = v18;
    v20 = *(v0 + 216);
    v21 = *(v0 + 200);
    swift_willThrow();

    v22 = *(v0 + 216);
    v23 = *(v0 + 8);

    return v23();
  }

  else
  {

    v24 = *(v0 + 8);

    return v24(0, v4 == 2);
  }
}

uint64_t sub_22B97DD3C(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 176);
  v7 = *v3;
  *(v5 + 257) = a2;
  *(v5 + 184) = v2;

  if (v2)
  {
    sub_22B936C4C((v5 + 16));
    v8 = sub_22B97E54C;
  }

  else
  {
    *(v5 + 192) = a1;
    sub_22B936C4C((v5 + 16));
    v8 = sub_22B97DE78;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22B97DE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 192);
  v5 = *(v3 + 152);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_31;
  }

  v7 = *(v3 + 112);
  v8 = *(v3 + 104);
  a1 = (*(v3 + 120))(*(v3 + 96));
  if (a1)
  {
    if (a1 == 1)
    {
      if (*(v3 + 257))
      {

        v9 = 1;
        goto LABEL_14;
      }

      v11 = sub_22BA10C6C();

      if (v11)
      {
        v9 = 1;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (*(v3 + 257))
    {
      v10 = sub_22BA10C6C();

      if ((v10 & 1) == 0)
      {
LABEL_11:
        v9 = *(v3 + 256);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v9 = 0;
LABEL_14:
  v12 = *(v3 + 160) + 1;
  if (v12 != *(v3 + 136))
  {
    *(v3 + 152) = v6;
    *(v3 + 160) = v12;
    *(v3 + 144) = v6;
    *(v3 + 256) = v9;
    v23 = *(v3 + 128);
    if (v12 < *(v23 + 16))
    {
      sub_22B935B38(v23 + 40 * v12 + 32, v3 + 16);
      v25 = *(v3 + 40);
      v24 = *(v3 + 48);
      sub_22B9358B4((v3 + 16), v25);
      v26 = swift_task_alloc();
      *(v3 + 176) = v26;
      *v26 = v3;
      v26[1] = sub_22B97DD3C;
      v28 = *(v3 + 80);
      v27 = *(v3 + 88);

      return sub_22B97EDC0(v28, v27, v25, v24);
    }

LABEL_31:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v13 = *(v3 + 168);
  v14 = *(v3 + 128);

  *(v3 + 200) = v13;
  v15 = *(v13 + 16);
  *(v3 + 208) = v15;
  if (v15)
  {
    v16 = *(v13 + 32);
    *(v3 + 216) = v16;
    if (v15 == 1)
    {
      v17 = v16;
      v18 = *(v3 + 216);
      v19 = *(v3 + 200);
      swift_willThrow();

      v20 = *(v3 + 216);
      v21 = *(v3 + 8);

      return v21();
    }

    v30 = *(v3 + 80);
    v31 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
    *(v3 + 224) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
    *(v3 + 232) = *(v30 + v31);
    v32 = v16;
    *(v3 + 240) = 1;
    v33 = *(v3 + 232);
    v34 = *(*(v3 + 200) + 40);
    *(v3 + 248) = v34;

    v35 = v34;
    a1 = sub_22B97E1B4;
    a2 = v33;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v29 = *(v3 + 8);

  return v29(v6, v9);
}

uint64_t sub_22B97E1B4()
{
  v1 = *(v0 + 232);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 232);
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v9 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v7 + 184) = v2;
  swift_endAccess();
  v8 = v6;

  return MEMORY[0x2822009F8](sub_22B97E2C8, 0, 0);
}

uint64_t sub_22B97E2C8()
{
  v30 = v0;
  v1 = (*(v0 + 80) + *(v0 + 224));
  v2 = sub_22B9358B4(v1, v1[3]);
  v3 = *(*v2 + 56);
  if (v3)
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 208);
    v6 = *(v0 + 240) + 1;
    v7 = *(*v2 + 56);
    swift_unknownObjectRetain();
    v8 = sub_22BA0FB5C();
    [v3 appendError_];
    swift_unknownObjectRelease();

    if (v6 == v5)
    {
LABEL_3:
      v9 = *(v0 + 200);

      v10 = *(v0 + 216);
      v11 = *(v0 + 200);
      swift_willThrow();

      v12 = *(v0 + 216);
      v13 = *(v0 + 8);

      return v13();
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v15 = sub_22BA0FEFC();
    sub_22B936CA8(v15, qword_28141AD40);
    v16 = sub_22BA0FEDC();
    v17 = sub_22BA1044C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      v20 = sub_22B97D720();
      v22 = sub_22B99153C(v20, v21, &v29);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_22B92A000, v16, v17, "Encountered error setting sync date: %s", v18, 0xCu);
      sub_22B936C4C(v19);
      MEMORY[0x23189ADD0](v19, -1, -1);
      MEMORY[0x23189ADD0](v18, -1, -1);
    }

    v23 = *(v0 + 208);
    v24 = *(v0 + 240) + 1;

    if (v24 == v23)
    {
      goto LABEL_3;
    }
  }

  v25 = *(v0 + 232);
  v26 = *(v0 + 240) + 1;
  *(v0 + 240) = v26;
  v27 = *(*(v0 + 200) + 8 * v26 + 32);
  *(v0 + 248) = v27;
  v28 = v27;

  return MEMORY[0x2822009F8](sub_22B97E1B4, v25, 0);
}

uint64_t sub_22B97E54C()
{
  v1 = *(v0 + 112);
  if (((*(*(v0 + 104) + 24))(*(v0 + 96)) & 1) == 0)
  {
    v17 = (v0 + 184);
    v21 = *(v0 + 184);
    v22 = *(v0 + 168);
    v23 = *(v0 + 128);

    swift_willThrow();
    goto LABEL_11;
  }

  v2 = *(v0 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_22B97FA40(0, v6[2] + 1, 1, *(v0 + 168));
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_22B97FA40((v7 > 1), v8 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v9 = *(v0 + 184);
  v6[2] = v8 + 1;
  v10 = (v6 + 4);
  v6[v8 + 4] = v9;
  v11 = *(v0 + 160) + 1;
  if (v11 == *(v0 + 136))
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 256);
    v14 = *(v0 + 128);

    *(v0 + 200) = v6;
    v15 = v6[2];
    *(v0 + 208) = v15;
    if (v15)
    {
      v16 = *v10;
      *(v0 + 216) = *v10;
      v17 = (v0 + 216);
      if (v15 == 1)
      {
        v18 = v16;
        v19 = *(v0 + 216);
        v20 = *(v0 + 200);
        swift_willThrow();

LABEL_11:
        v24 = *v17;
        v25 = *(v0 + 8);

        return v25();
      }

      v34 = *(v0 + 80);
      v35 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v0 + 224) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 232) = *(v34 + v35);
      v36 = v16;
      *(v0 + 240) = 1;
      v37 = *(v0 + 232);
      v38 = *(*(v0 + 200) + 40);
      *(v0 + 248) = v38;

      v39 = v38;
      isUniquelyReferenced_nonNull_native = sub_22B97E1B4;
      v4 = v37;
      v5 = 0;

      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v4, v5);
    }

    v33 = *(v0 + 8);

    return v33(v12, v13);
  }

  else
  {
    *(v0 + 160) = v11;
    *(v0 + 168) = v6;
    v27 = *(v0 + 128);
    if (v11 >= *(v27 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v4, v5);
    }

    sub_22B935B38(v27 + 40 * v11 + 32, v0 + 16);
    v29 = *(v0 + 40);
    v28 = *(v0 + 48);
    sub_22B9358B4((v0 + 16), v29);
    v30 = swift_task_alloc();
    *(v0 + 176) = v30;
    *v30 = v0;
    v30[1] = sub_22B97DD3C;
    v32 = *(v0 + 80);
    v31 = *(v0 + 88);

    return sub_22B97EDC0(v32, v31, v29, v28);
  }
}

uint64_t sub_22B97E86C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7972746572;
  }

  else
  {
    v4 = 1701736292;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7972746572;
  }

  else
  {
    v6 = 1701736292;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22BA10C6C();
  }

  return v9 & 1;
}

uint64_t sub_22B97E908()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B97E980()
{
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B97E9E4()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B97EA58@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

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

void sub_22B97EAB8(uint64_t *a1@<X8>)
{
  v2 = 1701736292;
  if (*v1)
  {
    v2 = 0x7972746572;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22B97EAEC()
{
  v1 = v0;
  v2 = 0xD000000000000019;
  v3 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
  v4 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
  sub_22B9358B4((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v3);
  if ((*(v4 + 48))(v3, v4))
  {
    v5 = 0;
    v6 = "Syncing has been disabled";
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    if (*(*sub_22B9358B4((v0 + 16), *(v0 + 40)) + 100))
    {
      v7 = *sub_22B9358B4((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
      v6 = "User cancelled sync, aborting";
      if (sub_22BA08808())
      {
        v5 = 1;
        goto LABEL_17;
      }

      v8 = *(v7 + 24);
      v5 = 1;
      if ((sub_22B92DA70(1u, 0) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v9 = 0x100000000;
    if (!*(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy + 4))
    {
      v9 = 0;
    }

    v10 = v9 | (*(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy + 3) << 24);
    v11 = 0x10000;
    if (!*(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy + 2))
    {
      v11 = 0;
    }

    v12 = 256;
    if (!*(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy + 1))
    {
      v12 = 0;
    }

    if (sub_22B9802D0(v1, v10 | v11 | v12 | *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy)))
    {
      v13 = *sub_22B9358B4((v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
      result = sub_22BA08920();
      if ((result & 1) == 0)
      {
        return result;
      }

      v6 = "device policy criteria";
      v2 = 0xD00000000000001DLL;
      v5 = 7;
    }

    else
    {
      v6 = "lay";
      v2 = 0xD000000000000026;
      v5 = 4;
    }
  }

LABEL_17:
  v15 = *MEMORY[0x277D19D08];
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13CB0;
  v17 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22BA0FFFC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v18;
  *(inited + 48) = v2;
  *(inited + 56) = v6 | 0x8000000000000000;
  v19 = v15;
  sub_22B9BBA8C(inited);
  swift_setDeallocating();
  sub_22B9806F4(inited + 32);
  v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v21 = sub_22BA0FF5C();

  [v20 initWithDomain:v19 code:v5 userInfo:v21];

  return swift_willThrow();
}

uint64_t sub_22B97EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v10 = *(a4 + 40);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_22B97EEFC;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_22B97EEFC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B97EFF8, 0, 0);
}

uint64_t sub_22B97EFF8()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = v0[5];
  v6 = *(v5 + 24);
  v0[8] = v6;
  v0[9] = (v5 + 24) & 0xFFFFFFFFFFFFLL | 0xB99B000000000000;
  v6(v4, v2, v3);
  v7 = v0[4];
  v8 = *(v0[5] + 32);
  v0[10] = v8;
  v0[11] = 0;
  v9 = v0[6];
  v8(v0[2], v0[3], v7);
  v18 = (v0[5] + 48);
  v19 = (*v18 + **v18);
  v10 = (*v18)[1];
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_22B97F1A4;
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];
  v16 = v0[2];

  return v19(v16, v14, v15, v12);
}

uint64_t sub_22B97F1A4(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 96);
  v7 = *v3;
  *(v5 + 136) = a2;
  *(v5 + 104) = v2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v5 + 112) = a1;

    return MEMORY[0x2822009F8](sub_22B97F2F8, 0, 0);
  }
}

void sub_22B97F2F8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = v2 + v1;
  *(v0 + 120) = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
    return;
  }

  v4 = *(v0 + 48);
  if (((*(*(v0 + 40) + 8))(*(v0 + 32)) & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((*(v0 + 136) & 1) == 0)
  {
    v5 = sub_22BA10C6C();

    if (v5)
    {
      goto LABEL_6;
    }

LABEL_11:
    v23 = (*(v0 + 40) + 56);
    v25 = (*v23 + **v23);
    v12 = (*v23)[1];
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_22B97F5F8;
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);
    v19 = v25;

    goto LABEL_13;
  }

LABEL_6:
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  (*(v0 + 64))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (!v6)
  {
    *(v0 + 88) = v3;
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    (*(v0 + 80))(*(v0 + 16), *(v0 + 24), *(v0 + 32));
    v24 = (*(v0 + 40) + 48);
    v26 = (*v24 + **v24);
    v20 = (*v24)[1];
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_22B97F1A4;
    v14 = *(v0 + 40);
    v22 = *(v0 + 48);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);
    v19 = v26;

LABEL_13:
    v19(v18, v16, v17, v14);
    return;
  }

  v11 = *(v0 + 8);

  v11();
}

uint64_t sub_22B97F5F8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B97F6F4, 0, 0);
}

uint64_t sub_22B97F6F4()
{
  v1 = *(v0 + 48);
  v2 = (*(*(v0 + 40) + 16))(*(v0 + 32));
  if (v2)
  {
    v3 = v2;
    v2();
    sub_22B979210(v3);
  }

  v4 = *(v0 + 8);
  v5 = *(v0 + 120);
  v6 = *(v0 + 136) & 1;

  return v4(v5, v6);
}

unint64_t sub_22B97F79C()
{
  result = qword_27D8D5300;
  if (!qword_27D8D5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5300);
  }

  return result;
}

uint64_t sub_22B97F808()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22B930C20(v1);
  return v1;
}

uint64_t sub_22B97F83C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v7 = *(v2 + 32);
  v8 = *(v2 + 33);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B947814;

  return sub_22B944BBC(a1, a2, v6, v7, v8);
}

char *sub_22B97F934(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5338, &qword_22BA16718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B97FA40(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B9349C8(&qword_27D8D5310, &unk_22BA165B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B97FB74(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_22B97FC80(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22B9349C8(&qword_27D8D5180, &unk_22BA15390);
  v10 = *(type metadata accessor for DatabaseRecord() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DatabaseRecord() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22B97FE58(char *result, int64_t a2, char a3, char *a4)
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
    sub_22B9349C8(&qword_27D8D5330, &qword_22BA16708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_22B97FF5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B9349C8(&qword_27D8D5320, &qword_22BA166F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_22B9349C8(&qword_27D8D5328, &qword_22BA16700);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B980090(void *result, int64_t a2, char a3, void *a4)
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
    sub_22B9349C8(&qword_27D8D5318, qword_22BA165D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_22B9349C8(&qword_27D8D4F00, &qword_22BA16D50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B9801C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B9349C8(&qword_27D8D5168, &unk_22BA15230);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22B980248(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_22B9802D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*sub_22B9358B4((a1 + 16), *(a1 + 40)) + 17);
    if (v3 <= 4 || v3 > 6 || v3 == 5)
    {
      v4 = sub_22BA10C6C();

      if ((v4 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v5 = sub_22B9E0FF4();
  if ((a2 & 0xFF000100) == 0x1000100)
  {
    if (!v5)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v13 = sub_22BA0FEFC();
      sub_22B936CA8(v13, qword_28141AD40);
      v7 = sub_22BA0FEDC();
      v8 = sub_22BA1044C();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_25;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Device Policy Violation: User was on wifi then network disconnected";
      goto LABEL_24;
    }

    if (v5 == 2)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v6 = sub_22BA0FEFC();
      sub_22B936CA8(v6, qword_28141AD40);
      v7 = sub_22BA0FEDC();
      v8 = sub_22BA1044C();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_25;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Device Policy Violation: User was on wifi then switched to cellular";
LABEL_24:
      _os_log_impl(&dword_22B92A000, v7, v8, v10, v9, 2u);
      MEMORY[0x23189ADD0](v9, -1, -1);
LABEL_25:

      return 0;
    }
  }

  v11 = 1;
  if ((a2 & 0x100010000) == 0x10000 && (v5 & 0x100) != 0)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD40);
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Device Policy Violation: User was charging then went on battery";
    goto LABEL_24;
  }

  return v11;
}