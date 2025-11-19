@interface CKBackgroundSettingsPeriodicAnalytics
+ (_TtC7ChatKit37CKBackgroundSettingsPeriodicAnalytics)shared;
- (_TtC7ChatKit37CKBackgroundSettingsPeriodicAnalytics)init;
- (uint64_t)checkAndSendPeriodicReportIfNeeded;
- (uint64_t)forceSendPeriodicReport;
@end

@implementation CKBackgroundSettingsPeriodicAnalytics

+ (_TtC7ChatKit37CKBackgroundSettingsPeriodicAnalytics)shared
{
  if (qword_1EAD453A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD453B0;

  return v3;
}

- (_TtC7ChatKit37CKBackgroundSettingsPeriodicAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKBackgroundSettingsPeriodicAnalytics();
  return [(CKBackgroundSettingsPeriodicAnalytics *)&v3 init];
}

- (uint64_t)checkAndSendPeriodicReportIfNeeded
{
  v0 = sub_190D51180();
  v64 = *(v0 - 8);
  v65 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v63 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C930);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v60 - v3;
  v5 = sub_190D51BA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v9;
  v66 = sub_190D519D0();
  v10 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D51B00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v60 - v17;
  v18 = sub_190D51840();
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v21 = sub_190D53040();
  v67 = __swift_project_value_buffer(v21, qword_1EAD9D730);
  v22 = sub_190D53020();
  v23 = sub_190D57680();
  v24 = os_log_type_enabled(v22, v23);
  v70 = v6;
  if (v24)
  {
    v25 = v5;
    v26 = v4;
    v27 = v20;
    v28 = v14;
    v29 = v13;
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_19020E000, v22, v23, "CKBackgroundSettingsPeriodicAnalytics: checkAndSendPeriodicReportIfNeeded called", v30, 2u);
    v31 = v30;
    v13 = v29;
    v14 = v28;
    v20 = v27;
    v4 = v26;
    v5 = v25;
    v6 = v70;
    MEMORY[0x193AF7A40](v31, -1, -1);
  }

  sub_190D51830();
  v32 = v66;
  (*(v10 + 104))(v12, *MEMORY[0x1E6969868], v66);
  sub_190D519E0();
  (*(v10 + 8))(v12, v32);
  sub_190D51B80();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19022EEA4(v4, &qword_1EAD5C930);
    v33 = sub_190D53020();
    v34 = sub_190D576A0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_19020E000, v33, v34, "CKBackgroundSettingsPeriodicAnalytics: Failed to get UTC timezone", v35, 2u);
      MEMORY[0x193AF7A40](v35, -1, -1);
    }

    (*(v14 + 8))(v73, v13);
  }

  else
  {
    v36 = v69;
    (*(v6 + 32))(v69, v4, v5);
    v37 = *(v14 + 16);
    v66 = v13;
    v37(v68, v73, v13);
    v38 = *(v6 + 16);
    v61 = v5;
    v38(v62, v36, v5);
    sub_190D51AD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C938);
    v39 = sub_190D51AE0();
    v40 = *(v39 - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_190DDD0E0;
    v44 = v43 + v42;
    v45 = *(v40 + 104);
    v45(v44, *MEMORY[0x1E6969A68], v39);
    v45(v44 + v41, *MEMORY[0x1E6969A78], v39);
    v45(v44 + 2 * v41, *MEMORY[0x1E6969A48], v39);
    v45(v44 + 3 * v41, *MEMORY[0x1E6969A58], v39);
    sub_1908B004C(v43);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v46 = v63;
    sub_190D51A30();

    LOBYTE(v44) = sub_190AC42F0();
    v47 = sub_190D53020();
    v48 = sub_190D57680();
    v49 = os_log_type_enabled(v47, v48);
    if (v44)
    {
      if (v49)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_19020E000, v47, v48, "CKBackgroundSettingsPeriodicAnalytics: Sending periodic background settings report", v50, 2u);
        MEMORY[0x193AF7A40](v50, -1, -1);
      }

      sub_190AC4858();
      v51 = sub_190D51100();
      if (v52)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      sub_190AC4B48(v20, v53);
      (*(v64 + 8))(v46, v65);
      v54 = *(v14 + 8);
      v55 = v66;
      v54(v68, v66);
      (*(v70 + 8))(v69, v61);
      v54(v73, v55);
    }

    else
    {
      if (v49)
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_19020E000, v47, v48, "CKBackgroundSettingsPeriodicAnalytics: Periodic report not needed at this time", v56, 2u);
        MEMORY[0x193AF7A40](v56, -1, -1);
      }

      (*(v64 + 8))(v46, v65);
      v57 = *(v14 + 8);
      v58 = v66;
      v57(v68, v66);
      (*(v70 + 8))(v69, v61);
      v57(v73, v58);
    }
  }

  return (*(v71 + 8))(v20, v72);
}

- (uint64_t)forceSendPeriodicReport
{
  v0 = sub_190D51180();
  v61 = *(v0 - 8);
  v62 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v60 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C930);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = &v55 - v3;
  v4 = sub_190D51BA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v63 = sub_190D519D0();
  v10 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D51B00();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = sub_190D51840();
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v21 = sub_190D53040();
  __swift_project_value_buffer(v21, qword_1EAD9D730);
  v22 = sub_190D53020();
  v23 = sub_190D57680();
  v24 = os_log_type_enabled(v22, v23);
  v65 = v18;
  if (v24)
  {
    v25 = v14;
    v26 = v13;
    v27 = v5;
    v28 = v4;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_19020E000, v22, v23, "CKBackgroundSettingsPeriodicAnalytics: Force sending periodic background settings report", v29, 2u);
    v30 = v29;
    v4 = v28;
    v5 = v27;
    v13 = v26;
    v14 = v25;
    v18 = v65;
    MEMORY[0x193AF7A40](v30, -1, -1);
  }

  sub_190AC4858();
  v31 = v68;
  sub_190D51830();
  v32 = v63;
  (*(v10 + 104))(v12, *MEMORY[0x1E6969868], v63);
  sub_190D519E0();
  (*(v10 + 8))(v12, v32);
  v33 = v64;
  sub_190D51B80();
  if ((*(v5 + 48))(v33, 1, v4) == 1)
  {
    (*(v14 + 8))(v18, v13);
    (*(v66 + 8))(v31, v67);
    return sub_19022EEA4(v33, &qword_1EAD5C930);
  }

  else
  {
    v35 = *(v5 + 32);
    v36 = v9;
    v56 = v9;
    v35(v9, v33, v4);
    v37 = *(v14 + 16);
    v38 = v59;
    v57 = v13;
    v37(v59, v18, v13);
    (*(v5 + 16))(v58, v36, v4);
    sub_190D51AD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C938);
    v39 = v14;
    v40 = sub_190D51AE0();
    v41 = *(v40 - 8);
    v64 = v4;
    v42 = v41;
    v43 = *(v41 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_190DDD0E0;
    v46 = v45 + v44;
    v47 = *(v42 + 104);
    v47(v46, *MEMORY[0x1E6969A68], v40);
    v47(v46 + v43, *MEMORY[0x1E6969A78], v40);
    v47(v46 + 2 * v43, *MEMORY[0x1E6969A48], v40);
    v47(v46 + 3 * v43, *MEMORY[0x1E6969A58], v40);
    sub_1908B004C(v45);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v48 = v60;
    v49 = v68;
    sub_190D51A30();

    v50 = sub_190D51100();
    if (v51)
    {
      v52 = 0;
    }

    else
    {
      v52 = v50;
    }

    sub_190AC4B48(v49, v52);
    (*(v61 + 8))(v48, v62);
    v53 = *(v39 + 8);
    v54 = v57;
    v53(v38, v57);
    (*(v5 + 8))(v56, v64);
    v53(v65, v54);
    return (*(v66 + 8))(v49, v67);
  }
}

@end