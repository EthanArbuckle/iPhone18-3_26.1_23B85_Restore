unint64_t static FPDynamicErrorDecider.shouldSend(for:)(void *a1)
{
  v2 = [objc_opt_self() defaultStore];
  v3 = [v2 dynamicErrorSampleRatePerProvider];

  v4 = sub_1CF9E6D48();
  v5 = sub_1CF51810C(a1, v4);
  LOBYTE(v3) = v6;

  if (v3)
  {
    return 1;
  }

  result = sub_1CF518B08(0x64uLL);
  if (!__OFADD__(result, 1))
  {
    return v5 >= (result + 1);
  }

  __break(1u);
  return result;
}

id FPDynamicErrorDecider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPDynamicErrorDecider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPDynamicErrorDecider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FPDynamicErrorDecider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPDynamicErrorDecider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall isResidencyReasonEnabled(for:)(__C::FPProviderDomainID a1)
{
  v1 = [a1._rawValue fp_toProviderID];
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() == 0xD00000000000001ELL && 0x80000001CFA51A60 == v2;
  if (v3 || (sub_1CF9E8048() & 1) != 0)
  {

LABEL_7:

    return fpfs_is_internal_build();
  }

  v5 = sub_1CF9E6AE8();

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = [v1 fp_isiCloudDriveIdentifier];

  if (!v6)
  {
    return 0;
  }

  v7 = [objc_opt_self() defaultStore];
  v8 = [v7 residencyReasonEnablement];

  if (v8 != 2)
  {
    if (v8 == 1)
    {
      return fpfs_is_internal_build();
    }

    return 0;
  }

  return 1;
}

uint64_t errorsAreDifferent(error:otherError:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1CF9E57E8();
    v4 = v3;
    if (a2)
    {
      v5 = sub_1CF9E57E8();
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      v6 = sub_1CF9E7568();

      v7 = v6 ^ 1;
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {
    v7 = a2 != 0;
  }

  return v7 & 1;
}

uint64_t sub_1CF518A78()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA51500);
  sub_1CF9E7B58();
  return 0;
}

unint64_t sub_1CF518B08(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1D386CDE0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1D386CDE0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF518BB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CF518C00(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1CF518C0C(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1CF518C00(a1, a2 & 1);
  }
}

uint64_t sub_1CF518CA8()
{
  result = sub_1CF9E6098();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1CF518D90()
{
  result = qword_1EDEAED10;
  if (!qword_1EDEAED10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAED10);
  }

  return result;
}

uint64_t sub_1CF518E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1CF518D90();
  result = sub_1CF9E75B8();
  *a4 = result;
  return result;
}

unint64_t sub_1CF518E74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13C0, &unk_1CFA08D90);
  v1 = *(v0 - 8);
  v36 = v0 - 8;
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v35 = &v32 - v3;
  v4 = sub_1CF9E65C8();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6938();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6518();
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E6918();
  v19 = sub_1CF9E68C8();
  v21 = v20;

  (*(v9 + 8))(v12, v8);
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  if (v21 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  sub_1CF51B12C(&qword_1EDEA3950, MEMORY[0x1E6966620]);
  sub_1CF9E6508();
  sub_1CEFE42D4(v22, v21);
  sub_1CF51AE6C(v22, v21);
  sub_1CEFE4714(v22, v21);
  sub_1CF9E64F8();
  v23 = v22;
  v24 = v32;
  sub_1CEFE4714(v23, v21);
  (*(v34 + 8))(v7, v4);
  v25 = *(v24 + 16);
  v26 = v35;
  v25(v35, v18, v13);
  *(v26 + *(v36 + 44)) = 8;
  v25(v33, v26, v13);
  sub_1CF51B12C(&qword_1EDEA3960, MEMORY[0x1E69663E0]);
  sub_1CF9E6B68();
  sub_1CEFCCC44(v26, &qword_1EC4C13C0, &unk_1CFA08D90);
  v27 = 0;
  result = v37;
  v29 = *(v37 + 16);
  if (v38 == v29)
  {
    goto LABEL_15;
  }

  if (v38 < v29)
  {
    v30 = v37 + 32;
    v27 = *(v37 + 32 + v38) << 8;
    if (v38 + 1 != v29)
    {
      v27 = (v27 | *(v30 + v38 + 1)) << 8;
      if (v38 + 2 != v29)
      {
        v27 = (v27 | *(v30 + v38 + 2)) << 8;
        if (v38 + 3 != v29)
        {
          v27 = (v27 | *(v30 + v38 + 3)) << 8;
          if (v38 + 4 != v29)
          {
            v27 = (v27 | *(v30 + v38 + 4)) << 8;
            if (v38 + 5 != v29)
            {
              v27 = (v27 | *(v30 + v38 + 5)) << 8;
              if (v38 + 6 != v29)
              {
                v27 = (v27 | *(v30 + v38 + 6)) << 8;
                if (v38 + 7 != v29)
                {
                  v31 = *(v30 + v38 + 7);

                  v27 = (v27 | v31) << 8;
                  goto LABEL_16;
                }
              }
            }
          }
        }
      }
    }

LABEL_15:

LABEL_16:
    (*(v24 + 8))(v18, v13);
    return v27;
  }

  __break(1u);
  return result;
}

id sub_1CF519368()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  __swift_allocate_value_buffer(v0, qword_1EDEBB8A8);
  v1 = __swift_project_value_buffer(v0, qword_1EDEBB8A8);
  return sub_1CF5193C0(v1);
}

id sub_1CF5193C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CF9E5D98();
  v14 = *(v2 - 8);
  v3 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    v11 = [result deviceIdentifierForVendor];

    if (v11)
    {
      sub_1CF9E5D58();

      (*(v14 + 32))(v8, v5, v2);
      sub_1CF9E5D78();
      sub_1CF9E5D68();
      (*(v14 + 8))(v8, v2);
      return (*(v14 + 56))(a1, 0, 1, v2);
    }

    else
    {
      v12 = *(v14 + 56);

      return v12(a1, 1, 1, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1CF519604(uint64_t a1)
{
  v64 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13C0, &unk_1CFA08D90);
  v1 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v3 = &v54 - v2;
  v4 = sub_1CF9E6518();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  v10 = sub_1CF9E6938();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E65C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - v20;
  v22 = sub_1CF9E5D98();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEA70F0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v18, qword_1EDEBB8A8);
  sub_1CEFCCBDC(v26, v21, &unk_1EC4BEDE0, qword_1CF9FA390);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    (*(v23 + 32))(v67, v21, v22);
    v70 = time(0);
    memset(&v71, 0, sizeof(v71));
    localtime_r(&v70, &v71);
    v28 = 366 * v71.tm_year;
    if (v28 == v28)
    {
      v59 = v22;
      v29 = v28 + v71.tm_yday;
      if (!__OFADD__(v28, v71.tm_yday))
      {
        if ((v29 & 0x80000000) == 0)
        {
          v55 = v23;
          sub_1CF9E65B8();
          __src = sub_1CF9E5D78();
          v69 = v30;
          v58 = v14;
          v31 = sub_1CF7102B8(&__src, &v70);
          v57 = v3;
          v33 = v32;
          sub_1CF51AE6C(v31, v32);
          sub_1CEFE4714(v31, v33);
          LODWORD(__src) = v29;
          __src = sub_1CF67B224(&__src, &__src + 4);
          WORD2(v69) = v34;
          LODWORD(v69) = v35;
          v36 = v60;
          v37 = v58;
          sub_1CF51B12C(&qword_1EDEA3950, MEMORY[0x1E6966620]);
          v56 = v13;
          sub_1CF9E64E8();
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v38 = v61;
          sub_1CF9E6918();
          v39 = sub_1CF9E68C8();
          v41 = v40;

          (*(v62 + 8))(v38, v63);
          if (v41 >> 60 == 15)
          {
            v39 = 0;
            v41 = 0xC000000000000000;
          }

          sub_1CEFE42D4(v39, v41);
          sub_1CF51AE6C(v39, v41);
          sub_1CEFE4714(v39, v41);
          sub_1CEFE4714(v39, v41);
          sub_1CF9E65A8();
          v42 = *(v36 + 16);
          v43 = v57;
          v42(v57, v9, v4);
          v44 = v65;
          *(v43 + *(v66 + 36)) = 2;
          v42(v44, v43, v4);
          sub_1CF51B12C(&qword_1EDEA3960, MEMORY[0x1E69663E0]);
          sub_1CF9E6B68();
          sub_1CEFCCC44(v43, &qword_1EC4C13C0, &unk_1CFA08D90);
          v45 = 0;
          v46 = *(__src + 16);
          if (v69 == v46)
          {
          }

          else
          {
            if (v69 >= v46)
            {
              goto LABEL_23;
            }

            v47 = __src + 32;
            if (v69 + 1 == v46)
            {
              v45 = *(v47 + v69) << 8;
            }

            else
            {
              v48 = *(v47 + v69 + 1);

              v45 = v48 << 8;
            }
          }

          v49 = v56;
          v50 = [objc_opt_self() defaultStore];
          v51 = [v50 perfTelemetrySubSamplingPercentage];

          (*(v36 + 8))(v9, v4);
          (*(v55 + 8))(v67, v59);
          (*(v37 + 8))(v17, v49);
          v52 = 0xFFFFLL * v51;
          if (v52 == v52)
          {
            result = v52 / 100 >= (v45 & 0xFF00);
            goto LABEL_18;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_1CEFCCC44(v21, &unk_1EC4BEDE0, qword_1CF9FA390);
  result = 0;
LABEL_18:
  v53 = *MEMORY[0x1E69E9840];
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

uint64_t sub_1CF519DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v54 = sub_1CF9E6068();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v54);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v53 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v51 - v12);
  v14 = [objc_opt_self() fp:a1 coordinatorReadingOptions:?];
  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  v17 = type metadata accessor for TelemetrySignposter(0);
  v18 = *(v17 + 24);
  v19 = *(v3 + *(v17 + 28));
  v20 = *v3;
  v21 = *(v3 + 16);
  sub_1CF9E6078();
  if (v19 != 1)
  {
    goto LABEL_6;
  }

  sub_1CF9E6048();

  v9 = sub_1CF9E6078();
  v22 = sub_1CF9E7468();
  if (sub_1CF9E75A8())
  {
    if (v21)
    {
      v23 = HIDWORD(v20);
      if (!HIDWORD(v20))
      {
        v23 = v20 & 0xFFFFF800;
        v24 = 55296;
        if (v23 == 55296)
        {
          __break(1u);
          goto LABEL_40;
        }

        v23 = v20 >> 16;
        if (v20 >> 16 <= 0x10)
        {
          if (v20 <= 0x7F)
          {
            v25 = v20 + 1;
LABEL_17:
            v56 = (v25 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v25) & 0x18)));

            v20 = &v56;
            goto LABEL_18;
          }

LABEL_33:
          v24 = (v20 & 0x3F) << 8;
          if (v20 < 0x800)
          {
            v44 = (v20 >> 6) + v24;
            v45 = 33217;
LABEL_35:
            v25 = v44 + v45;
            goto LABEL_17;
          }

LABEL_41:
          v49 = (v24 | (v20 >> 6) & 0x3F) << 8;
          if (!v23)
          {
            v25 = (v20 >> 12) + v49 + 8487393;
            goto LABEL_17;
          }

          v44 = (v20 >> 18) + ((v49 | (v20 >> 12) & 0x3F) << 8);
          v45 = -2122219023;
          goto LABEL_35;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v20)
    {
LABEL_18:
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v56 = v27;
      *v26 = 136446210;
      v28 = sub_1CEFD0DF0(v52, v16, &v56);

      *(v26 + 4) = v28;
      v29 = sub_1CF9E6058();
      _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v9, v22, v29, v20, "  readingOptions=%{public, signpost.telemetry:string1, name=readingOptions,public}s\n  enableTelemetry=YES)", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1D386CDC0](v27, -1, -1);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      goto LABEL_19;
    }

    __break(1u);
LABEL_6:
    sub_1CF9E6048();

    v13 = sub_1CF9E6078();
    v22 = sub_1CF9E7468();
    if ((sub_1CF9E75A8() & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
LABEL_27:

      v13 = v9;
      goto LABEL_28;
    }

    if ((v21 & 1) == 0)
    {

      if (!v20)
      {
        __break(1u);
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    v23 = HIDWORD(v20);
    if (!HIDWORD(v20))
    {
      v23 = v20 & 0xFFFFF800;
      v24 = 55296;
      if (v23 != 55296)
      {
        v23 = v20 >> 16;
        if (v20 >> 16 <= 0x10)
        {
          if (v20 > 0x7F)
          {
            v46 = (v20 & 0x3F) << 8;
            if (v20 >= 0x800)
            {
              v50 = (v46 | (v20 >> 6) & 0x3F) << 8;
              if (!v23)
              {
                v30 = (v20 >> 12) + v50 + 8487393;
                goto LABEL_25;
              }

              v47 = (v20 >> 18) + ((v50 | (v20 >> 12) & 0x3F) << 8);
              v48 = -2122219023;
            }

            else
            {
              v47 = (v20 >> 6) + v46;
              v48 = 33217;
            }

            v30 = v47 + v48;
          }

          else
          {
            v30 = v20 + 1;
          }

LABEL_25:
          v56 = (v30 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v30) & 0x18)));

          v20 = &v56;
LABEL_26:
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v56 = v32;
          *v31 = 136446210;
          v33 = sub_1CEFD0DF0(v52, v16, &v56);

          *(v31 + 4) = v33;
          v34 = sub_1CF9E6058();
          _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v13, v22, v34, v20, "  readingOptions=%{public, signpost.telemetry:string1, name=readingOptions,public}s\n  enableTelemetry=NO)", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x1D386CDC0](v32, -1, -1);
          MEMORY[0x1D386CDC0](v31, -1, -1);
          goto LABEL_27;
        }

        goto LABEL_32;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_30;
  }

LABEL_10:
  swift_bridgeObjectRelease_n();
LABEL_19:

LABEL_28:
  v35 = v54;
  (*(v5 + 16))(v53, v13, v54);
  v36 = sub_1CF9E60E8();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_1CF9E60D8();
  (*(v5 + 8))(v13, v35);
  v40 = *(v3 + 24);
  v41 = v3;
  v42 = v55;
  sub_1CF51B1F8(v41, v55, type metadata accessor for TelemetrySignposter);
  result = type metadata accessor for TelemetrySignpost(0);
  *(v42 + *(result + 20)) = v39;
  *(v42 + *(result + 24)) = v40;
  return result;
}

uint64_t sub_1CF51A3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemMetadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  sub_1CF06D940(a1, a2, &v16);
  v11 = *(a2 + 104);
  if (v16 == 1)
  {
    v11(a1);
    v12 = *(v10 + 1);
    v13 = v10[8];
    sub_1CF51B2B4(v10, type metadata accessor for ItemMetadata);
    if (v13)
    {
      return 0;
    }
  }

  else
  {
    v11(a1);
    v12 = *&v7[*(v4 + 104)];
    sub_1CF51B2B4(v7, type metadata accessor for ItemMetadata);
  }

  return v12;
}

uint64_t sub_1CF51A508(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1CF9E60A8();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v79[-v11];
  v12 = sub_1CF9E6068();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v79[-v17];
  v18 = type metadata accessor for TelemetrySignpost(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v79[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v79[-v23];
  v24 = type metadata accessor for TelemetrySignposter(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v79[-v29];
  v88 = v18;
  v80 = a2;
  if ((a2 & 0x80) == 0)
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF5174A4(2);
    v33 = v32;

    if (v33)
    {
      v34 = [v33 integerValue];
    }

    else
    {
      v34 = 0;
    }

    v48 = v88;
    v49 = v84;
    sub_1CF51B1F8(v3, v30, type metadata accessor for TelemetrySignposter);
    v50 = *(v24 + 24);
    v51 = *v3;
    v52 = *(v3 + 16);
    v53 = *(v3 + *(v48 + 20));
    sub_1CF51B1F8(v3, v49, type metadata accessor for TelemetrySignpost);
    sub_1CF51B260();
    sub_1CF51ADFC();
    sub_1CEFF7124(v54);
    sub_1CF18F468();
    sub_1CF51ADFC();
    sub_1CEFF7124(v55);
    v56 = sub_1CF9E6078();
    v57 = sub_1CF9E6098();
    (*(*(v57 - 8) + 8))(&v30[v50], v57);
    v58 = v85;
    sub_1CF9E60C8();
    v59 = sub_1CF9E7458();
    result = sub_1CF9E75A8();
    if (result)
    {
      if (v52)
      {
        if (!(v51 >> 32))
        {
          v60 = v81;
          if ((v51 & 0xFFFFF800) == 0xD800)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (v51 >> 16 <= 0x10)
          {
            v51 = &v89;
            goto LABEL_20;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v51)
        {
          v60 = v81;
LABEL_20:

          sub_1CF9E60F8();

          v63 = v82;
          v62 = v83;
          if ((*(v82 + 88))(v60, v83) == *MEMORY[0x1E69E93E8])
          {
            v64 = 0;
            v65 = 0;
            v66 = "[Error] Interval already ended";
          }

          else
          {
            (*(v63 + 8))(v60, v62);
            v66 = "  state=%{public, signpost.telemetry:string2, name=state,public}s\n  providerID=%{public, signpost.telemetry:number1, name=providerID,public}llu\n  size=%{public, signpost.telemetry:number2, name=size,public}ld";
            v65 = 2;
            v64 = 3;
          }

          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v90 = v68;
          *v67 = v65;
          *(v67 + 1) = v64;
          *(v67 + 2) = 2082;
          if (v80)
          {
            v69 = 0xEB00000000726964;
          }

          else
          {
            v69 = 0xEB00000000636F64;
          }

          if ((v80 & 0xC0) != 0)
          {
            v70 = 0x5F73736563637573;
          }

          else
          {
            v70 = 0x5F79646165726C61;
          }

          v71 = sub_1CEFD0DF0(v70, v69, &v90);

          *(v67 + 4) = v71;
          *(v67 + 12) = 2050;
          *(v67 + 14) = *(v49 + *(v88 + 24));
          sub_1CF51B2B4(v49, type metadata accessor for TelemetrySignpost);
          *(v67 + 22) = 2050;
          *(v67 + 24) = v34;
          v72 = v85;
          v73 = sub_1CF9E6058();
          _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v56, v59, v73, v51, v66, v67, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x1D386CDC0](v68, -1, -1);
          MEMORY[0x1D386CDC0](v67, -1, -1);

          return (*(v86 + 8))(v72, v87);
        }

        __break(1u);
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    (*(v86 + 8))(v58, v87);
    v61 = v49;
    return sub_1CF51B2B4(v61, type metadata accessor for TelemetrySignpost);
  }

  v85 = v9;
  sub_1CF51B1F8(v3, v27, type metadata accessor for TelemetrySignposter);
  v35 = *(v24 + 24);
  v36 = *v3;
  v37 = *(v3 + 16);
  v38 = *(v3 + *(v18 + 20));
  sub_1CF51B1F8(v3, v21, type metadata accessor for TelemetrySignpost);
  sub_1CF51B260();
  sub_1CF51ADFC();
  sub_1CEFF7124(v39);
  v40 = sub_1CF9E6078();
  v41 = sub_1CF9E6098();
  (*(*(v41 - 8) + 8))(&v27[v35], v41);
  sub_1CF9E60C8();
  v42 = sub_1CF9E7458();
  result = sub_1CF9E75A8();
  v44 = v15;
  if ((result & 1) == 0)
  {

    (*(v86 + 8))(v15, v87);
    v61 = v21;
    return sub_1CF51B2B4(v61, type metadata accessor for TelemetrySignpost);
  }

  if (v37)
  {
    v46 = v82;
    v45 = v83;
    if (v36 >> 32)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v47 = v85;
    if ((v36 & 0xFFFFF800) == 0xD800)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    if (v36 >> 16 > 0x10)
    {
      goto LABEL_44;
    }

    v36 = &v91;
  }

  else
  {
    v46 = v82;
    v45 = v83;
    if (!v36)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v47 = v85;
  }

  sub_1CF9E60F8();

  if ((*(v46 + 88))(v47, v45) == *MEMORY[0x1E69E93E8])
  {
    v74 = 0;
    v75 = "[Error] Interval already ended";
  }

  else
  {
    (*(v46 + 8))(v47, v45);
    v75 = "  state=%{public, signpost.telemetry:string2, name=state,public}s\n  providerID=%{public, signpost.telemetry:number1, name=providerID,public}llu";
    v74 = 2;
  }

  v76 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v90 = v77;
  *v76 = v74;
  *(v76 + 1) = v74;
  *(v76 + 2) = 2082;
  *(v76 + 4) = sub_1CEFD0DF0(1818845542, 0xE400000000000000, &v90);
  *(v76 + 12) = 2050;
  *(v76 + 14) = *&v21[*(v88 + 24)];
  sub_1CF51B2B4(v21, type metadata accessor for TelemetrySignpost);
  v78 = sub_1CF9E6058();
  _os_signpost_emit_with_name_impl(&dword_1CEFC7000, v40, v42, v78, v36, v75, v76, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v77);
  MEMORY[0x1D386CDC0](v77, -1, -1);
  MEMORY[0x1D386CDC0](v76, -1, -1);

  return (*(v86 + 8))(v44, v87);
}

uint64_t sub_1CF51AE6C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1CF9E65C8();
      sub_1CF51B12C(&qword_1EDEA3950, MEMORY[0x1E6966620]);
      result = sub_1CF9E64E8();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1CF51B04C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF51B04C(uint64_t a1, uint64_t a2)
{
  result = sub_1CF9E5498();
  if (!result || (result = sub_1CF9E54C8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1CF9E54B8();
      sub_1CF9E65C8();
      sub_1CF51B12C(&qword_1EDEA3950, MEMORY[0x1E6966620]);
      return sub_1CF9E64E8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF51B12C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF51B1F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CF51B260()
{
  result = qword_1EDEA3340;
  if (!qword_1EDEA3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3340);
  }

  return result;
}

uint64_t sub_1CF51B2B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CF51B4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1CF51B588(uint64_t a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6888();
  v16 = 0;
  v17[0] = 0;
  v3 = [v2 fp:v17 stringByDeletingPathBounceNo:&v16 andPathExtension:0 isFolder:?];

  v5 = v16;
  v4 = v17[0];
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  v9 = v4;
  v10 = v5;

  if (!v9)
  {
    v11 = 0;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:

    v12 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v11 = [v9 unsignedIntegerValue];
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

LABEL_6:
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v11;
  *(a1 + 24) = v9 == 0;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF51B6BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v41 = a3;
  sub_1CF51B588(&v35);
  v4 = v35;
  v5 = v36;
  v6 = v37;
  v7 = v40;
  v33 = v39;
  if (v38)
  {
    v6 = 0;
  }

  v31 = v6;
  result = [objc_opt_self() fp_maximumBounceLevel];
  if (result < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = 0;
    do
    {
      v32 = v10;
      if (v10)
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v11 setDateStyle_];
        v30 = v11;
        [v11 setTimeStyle_];
        v12 = sub_1CF9E5C48();
        v13 = [v11 stringFromDate_];

        v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v29 = v4;
        v16 = v15;

        v35 = v14;
        v36 = v16;
        sub_1CEFE4E68();
        v17 = sub_1CF9E7668();
        v19 = v18;

        v35 = v17;
        v36 = v19;
        v20 = sub_1CF9E7668();
        v22 = v21;

        v35 = v29;
        v36 = v5;
        MEMORY[0x1D3868CC0](0x209380E220, 0xA500000000000000);
        MEMORY[0x1D3868CC0](v20, v22);

        v4 = v35;
        v5 = v36;
      }

      v23 = v31;
      if (v31 < v9)
      {
        while (1)
        {
          if (v23 == 1)
          {
            goto LABEL_16;
          }

          if (v23)
          {
            break;
          }

          v24 = v4;
          v25 = v5;
          if (v7)
          {
            goto LABEL_12;
          }

LABEL_13:
          v26 = a2(v24, v25);
          if (v3)
          {

            return v24;
          }

          if (v26)
          {

            return v24;
          }

LABEL_16:
          if (v9 == v23)
          {
            goto LABEL_5;
          }

          if (__CFADD__(v23++, 1))
          {
            __break(1u);
            goto LABEL_26;
          }
        }

        v35 = v4;
        v36 = v5;

        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        v28 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v28);

        v24 = v35;
        v25 = v36;
        if (!v7)
        {
          goto LABEL_13;
        }

LABEL_12:
        v35 = v24;
        v36 = v25;

        MEMORY[0x1D3868CC0](46, 0xE100000000000000);
        MEMORY[0x1D3868CC0](v33, v7);

        v24 = v35;
        v25 = v36;
        goto LABEL_13;
      }

LABEL_5:
      v10 = 1;
    }

    while ((v32 & 1) == 0);

    return 0;
  }

  return result;
}

Swift::String __swiftcall String.filenameWithoutBouncing()()
{
  v2 = v1;
  v3 = v0;
  sub_1CF51B588(&v9);
  v4 = v13;
  if (v11 == 1)
  {
  }

  else
  {
    v3 = v9;
    if (v13)
    {
      v5 = v12;
      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v5, v4);

      v3 = v9;
      v2 = v10;
    }

    else
    {
      v2 = v10;
    }
  }

  v6 = v3;
  v7 = v2;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1CF51BB3C()
{
  v0 = sub_1CF9E5248();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1CF9E5268();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E6118();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() fp_supportDirectory];
  if (v15)
  {
    v16 = v15;
    sub_1CF9E59D8();

    v17 = v31;
    (*(v11 + 32))(v31 + OBJC_IVAR____TtC18FileProviderDaemon19GlobalResourceStore_rootURL, v14, v10);
  }

  else
  {
    v18 = v29;
    v19 = v6;
    v20 = v2;
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "Error initializing GlobalResource, cannot resolve fp_suportDirectory", v24, 2u);
      MEMORY[0x1D386CDC0](v24, -1, -1);
    }

    (*(v18 + 8))(v9, v19);
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E86C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v30 + 8))(v5, v20);
    swift_willThrow();
    type metadata accessor for GlobalResourceStore();
    v17 = v31;
    v25 = *(*v31 + 48);
    v26 = *(*v31 + 52);
    swift_deallocPartialClassInstance();
  }

  return v17;
}

uint64_t sub_1CF51BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E5A18();
  sub_1CF9E6978();
  v8 = openat_s();

  if (v8 < 0)
  {
    v11 = MEMORY[0x1D38683F0](v9);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v14 = 19;
    sub_1CF19BBE4(v11, v12);
    sub_1CF1969CC(v12);
    swift_willThrow();
  }

  else
  {

    sub_1CF9CAF88(a1, a2, a3, a4, v8);
    return close(v8);
  }
}

uint64_t sub_1CF51C024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E53C8();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5A18();
  v12 = sub_1CF9E6978();
  v13 = openat_s();

  if (v13 < 0)
  {
    v22 = MEMORY[0x1D38683F0](v14);
    v43 = 0;
    aBlock = 0u;
    v42 = 0u;
    LOBYTE(v44) = 19;
    sub_1CF19BBE4(v22, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();

    return v12;
  }

  v35 = v9;
  v36 = v8;

  *&aBlock = 0x656372756F736572;
  *(&aBlock + 1) = 0xEA00000000002F73;
  MEMORY[0x1D3868CC0](a1, a2);
  v45 = xmmword_1CF9FEC40;
  v46 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = &v45;
  *(v15 + 24) = sub_1CF9C9924;
  *(v15 + 32) = 0;
  *(v15 + 40) = &v46;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF51CA68;
  *(v16 + 24) = v15;
  v43 = sub_1CF005DC8;
  v44 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_1CF005DF8;
  *(&v42 + 1) = &block_descriptor_27;
  v17 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v12 = fpfs_openat();

  _Block_release(v17);

  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v46;
  if (v46)
  {
LABEL_4:
    swift_willThrow();
    swift_bridgeObjectRelease_n();
    sub_1CF24FAB0(v45, *(&v45 + 1));
    v20 = v19;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    v21 = sub_1CF9E5658();

    if (v21)
    {

      v12 = 0;
    }

    goto LABEL_11;
  }

  if ((v12 & 0x80000000) == 0)
  {

    if (*(&v45 + 1) >> 60 != 11)
    {
      v12 = v45;
      sub_1CEFF05F4(v45, *(&v45 + 1));

      sub_1CF24FAB0(v45, *(&v45 + 1));
LABEL_11:
      close(v13);
      return v12;
    }

    goto LABEL_21;
  }

  if (MEMORY[0x1D38683F0](v18))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v19 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v24 = sub_1CF9E6138();
      if ((v24 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v24;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00E86C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v12 = v39;
      sub_1CF9E57D8();
      v19 = sub_1CF9E53A8();
      (*(v38 + 8))(v7, v12);
    }

    goto LABEL_4;
  }

LABEL_22:

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  *&aBlock = 0xD00000000000001ALL;
  *(&aBlock + 1) = 0x80000001CFA2DF30;
  v40 = v12;
  v25 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v25);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v26 = aBlock;
  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v28 = sub_1CF9E6108();
  v29 = sub_1CF9E72B8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&aBlock = v31;
    *v30 = 136315650;
    v32 = sub_1CF9E7988();
    v34 = sub_1CEFD0DF0(v32, v33, &aBlock);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2048;
    *(v30 + 14) = 315;
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_1CEFD0DF0(v26, *(&v26 + 1), &aBlock);
    _os_log_impl(&dword_1CEFC7000, v28, v29, "[ASSERT] ‼️  %s:%lu: %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v31, -1, -1);
    MEMORY[0x1D386CDC0](v30, -1, -1);
  }

  (*(v35 + 8))(v37, v36);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF51C790()
{
  sub_1CF9E5A18();
  sub_1CF9E6978();
  v0 = openat_s();

  if (v0 < 0)
  {
    v3 = MEMORY[0x1D38683F0](v1);
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v6 = 19;
    sub_1CF19BBE4(v3, v4);
    sub_1CF1969CC(v4);
    swift_willThrow();
  }

  else
  {

    sub_1CF9CB714();
    return close(v0);
  }
}

uint64_t sub_1CF51C87C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon19GlobalResourceStore_rootURL;
  v2 = sub_1CF9E5A58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalResourceStore()
{
  result = qword_1EDEA6000;
  if (!qword_1EDEA6000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF51C96C()
{
  result = sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF51CA74@<X0>(uint64_t a1@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = sub_1CF9E6118();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  bzero(&v31, 0x878uLL);
  v34 = v1;
  v35 = &v31;
  sub_1CEFE1894(sub_1CF51CF5C);
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v25 = v1;
  v9 = v1;
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7288();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v3;
    v14 = v13;
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "Retrieved statfs() for volume %@", v12, 0xCu);
    sub_1CF19CAB0(v14);
    v16 = v14;
    v3 = v24;
    MEMORY[0x1D386CDC0](v16, -1, -1);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  v17 = (*(v3 + 8))(v7, v26);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  MEMORY[0x1EEE9AC00](v17);
  *(&v23 - 2) = v9;
  *(&v23 - 1) = &v27;
  result = sub_1CEFE1894(sub_1CF51D010);
  if (!is_mul_ok(v32, v31))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!is_mul_ok(v33, v31))
  {
    goto LABEL_7;
  }

  v20 = v27;
  v21 = v28;
  v22 = v33 * v31;
  *a1 = v32 * v31;
  *(a1 + 8) = v22;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = 0;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF51CEC4@<X0>(void *a1@<X0>, statfs *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = [a1 root];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  v6 = sub_1CF9E6978();

  LODWORD(a2) = statfs((v6 + 32), a2);

  *a3 = a2;
  return result;
}

uint64_t sub_1CF51CF78@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = [a1 root];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  sub_1CF9E6978();

  purgeable_stats = fpfs_get_purgeable_stats();

  *a2 = purgeable_stats;
  return result;
}

uint64_t sub_1CF51D054()
{
  result = getiopolicy_np(13, 0);
  v1 = 1024;
  if (result == 1)
  {
    v1 = 0x2000;
  }

  qword_1EDEBB948 = v1;
  return result;
}

void *sub_1CF51D08C(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = *result;
  *(a3 + 16) = 0;
  return result;
}

void *sub_1CF51D09C(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = *result;
  *(a3 + 32) = 0;
  return result;
}

void *sub_1CF51D0AC(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 64) = *result;
  *(a3 + 72) = 0;
  return result;
}

void *sub_1CF51D0BC(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 80) = *result;
  *(a3 + 88) = 0;
  return result;
}

void *sub_1CF51D0CC(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 96) = *result;
  *(a3 + 104) = 0;
  return result;
}

void *sub_1CF51D0DC(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 112) = *result;
  *(a3 + 120) = 0;
  return result;
}

_DWORD *sub_1CF51D0EC(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *a3 = *result;
  *(a3 + 4) = 0;
  return result;
}

_DWORD *sub_1CF51D0FC(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 36) = *result;
  *(a3 + 40) = 0;
  return result;
}

_DWORD *sub_1CF51D10C(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 44) = *result;
  *(a3 + 48) = 0;
  return result;
}

_DWORD *sub_1CF51D11C(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 52) = *result;
  *(a3 + 56) = 0;
  return result;
}

void *sub_1CF51D12C(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 360) = *result;
  *(a3 + 368) = 0;
  return result;
}

void *sub_1CF51D13C(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 376) = *result;
  *(a3 + 384) = 0;
  return result;
}

void *sub_1CF51D14C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  *(a3 + 320) = *result;
  *(a3 + 328) = v3;
  *(a3 + 336) = 0;
  return result;
}

void *sub_1CF51D15C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  *(a3 + 340) = *result;
  *(a3 + 348) = v3;
  *(a3 + 356) = 0;
  return result;
}

__n128 sub_1CF51D170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v4 = *(a1 + 16);
  *(a3 + 209) = *a1;
  *(a3 + 225) = v4;
  *(a3 + 241) = 0;
  return result;
}

__n128 sub_1CF51D184(__n128 *a1, uint64_t a2, __n128 *a3)
{
  result = *a1;
  a3[6] = *a1;
  a3[7].n128_u8[0] = 0;
  return result;
}

__n128 sub_1CF51D194(__n128 *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *(a3 + 120) = *a1;
  *(a3 + 136) = 0;
  return result;
}

__n128 sub_1CF51D1A4(__n128 *a1, uint64_t a2, __n128 *a3)
{
  result = *a1;
  a3[9] = *a1;
  a3[10].n128_u8[0] = 0;
  return result;
}

__n128 sub_1CF51D1B4(__n128 *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *(a3 + 168) = *a1;
  *(a3 + 184) = 0;
  return result;
}

__n128 sub_1CF51D1C4(__n128 *a1, uint64_t a2, __n128 *a3)
{
  result = *a1;
  a3[12] = *a1;
  a3[13].n128_u8[0] = 0;
  return result;
}

__n128 sub_1CF51D1D4(__n128 *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *(a3 + 408) = *a1;
  *(a3 + 424) = 0;
  return result;
}

void *sub_1CF51D1E8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 52) = *result;
  *(a3 + 60) = 0;
  return result;
}

void *sub_1CF51D1F8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 76) = *result;
  *(a3 + 84) = 0;
  return result;
}

_DWORD *sub_1CF51D208(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 88) = *result;
  *(a3 + 92) = 0;
  return result;
}

_DWORD *sub_1CF51D218(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 244) = *result;
  *(a3 + 248) = 0;
  return result;
}

_DWORD *sub_1CF51D228(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 252) = *result;
  *(a3 + 256) = 0;
  return result;
}

_DWORD *sub_1CF51D238(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 260) = *result;
  *(a3 + 264) = 0;
  return result;
}

_DWORD *sub_1CF51D248(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 268) = *result;
  *(a3 + 272) = 0;
  return result;
}

_DWORD *sub_1CF51D258(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 276) = *result;
  *(a3 + 280) = 0;
  return result;
}

_DWORD *sub_1CF51D268(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 292) = *result;
  *(a3 + 296) = 0;
  return result;
}

_DWORD *sub_1CF51D278(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 428) = *result;
  *(a3 + 432) = 0;
  return result;
}

_DWORD *sub_1CF51D288(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = *result;
  *(a3 + 20) = 0;
  return result;
}

__n128 sub_1CF51D298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *(a3 + 308) = *a1;
  *(a3 + 324) = v5;
  *(a3 + 340) = v3;
  *(a3 + 348) = 0;
  return result;
}

__n128 sub_1CF51D2B4(__n128 *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  *(a3 + 253) = *a1;
  *(a3 + 269) = 0;
  return result;
}

__n128 sub_1CF51D2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v4 = *(a1 + 16);
  *(a3 + 220) = *a1;
  *(a3 + 236) = v4;
  *(a3 + 252) = 0;
  return result;
}

void *sub_1CF51D2D8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 208) = *result;
  *(a3 + 216) = 0;
  return result;
}

void *sub_1CF51D2E8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = *result;
  *(a3 + 24) = 0;
  return result;
}

void *sub_1CF51D2F8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = *result;
  *(a3 + 40) = 0;
  return result;
}

void *sub_1CF51D308(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = *result;
  *(a3 + 56) = 0;
  return result;
}

void *sub_1CF51D318(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 280) = *result;
  *(a3 + 288) = 0;
  return result;
}

void *sub_1CF51D328(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 296) = *result;
  *(a3 + 304) = 0;
  return result;
}

_DWORD *sub_1CF51D338(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = *result;
  *(a3 + 12) = 0;
  return result;
}

_DWORD *sub_1CF51D348(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 108) = *result;
  *(a3 + 112) = 0;
  return result;
}

_DWORD *sub_1CF51D358(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 116) = *result;
  *(a3 + 120) = 0;
  return result;
}

_DWORD *sub_1CF51D368(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 124) = *result;
  *(a3 + 128) = 0;
  return result;
}

_DWORD *sub_1CF51D378(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 132) = *result;
  *(a3 + 136) = 0;
  return result;
}

_DWORD *sub_1CF51D388(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 140) = *result;
  *(a3 + 144) = 0;
  return result;
}

_DWORD *sub_1CF51D398(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 184) = *result;
  *(a3 + 188) = 0;
  return result;
}

_DWORD *sub_1CF51D3A8(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 272) = *result;
  *(a3 + 276) = 0;
  return result;
}

_DWORD *sub_1CF51D3B8(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 368) = *result;
  *(a3 + 372) = 0;
  return result;
}

_DWORD *sub_1CF51D3C8(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 148) = *result;
  *(a3 + 152) = 0;
  return result;
}

void *sub_1CF51D3D8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 88) = *result;
  *(a3 + 96) = 0;
  return result;
}

void *sub_1CF51D3E8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 104) = *result;
  *(a3 + 112) = 0;
  return result;
}

void *sub_1CF51D3F8(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 120) = *result;
  *(a3 + 128) = 0;
  return result;
}

void *sub_1CF51D408(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 136) = *result;
  *(a3 + 144) = 0;
  return result;
}

void *sub_1CF51D418(void *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 72) = *result;
  *(a3 + 80) = 0;
  return result;
}

_DWORD *sub_1CF51D428(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 64) = *result;
  *(a3 + 68) = 0;
  return result;
}

uint64_t sub_1CF51D438(int *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CF9E5A98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v14 = *a1;
  if (v13 + v14 <= a2)
  {
    v17 = v13 - 1;
    (*(v10 + 104))(v12, *MEMORY[0x1E6969010]);
    v18 = sub_1CF51FB88(a1 + v14, v17, v12);
    v20 = v19;
    sub_1CF9E6918();
    v21 = sub_1CF9E68D8();
    v23 = v22;
    v24 = a3[1];

    result = sub_1CEFE4714(v18, v20);
    *a3 = v21;
    a3[1] = v23;
  }

  else
  {
    v15 = a3[1];

    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1CF51D5C8(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CF9E5A98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v14 = *a1;
  if (v13 + v14 <= a2)
  {
    v17 = v13 - 1;
    (*(v10 + 104))(v12, *MEMORY[0x1E6969010]);
    v18 = sub_1CF51FB88(a1 + v14, v17, v12);
    v20 = v19;
    sub_1CF9E6918();
    v21 = sub_1CF9E68D8();
    v23 = v22;
    v24 = *(a3 + 400);

    result = sub_1CEFE4714(v18, v20);
    *(a3 + 392) = v21;
    *(a3 + 400) = v23;
  }

  else
  {
    v15 = *(a3 + 400);

    *(a3 + 392) = 0;
    *(a3 + 400) = 0;
  }

  return result;
}

uint64_t sub_1CF51D758(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CF9E5A98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v14 = *a1;
  if (v13 + v14 <= a2)
  {
    v17 = v13 - 1;
    (*(v10 + 104))(v12, *MEMORY[0x1E6969010]);
    v18 = sub_1CF51FB88(a1 + v14, v17, v12);
    v20 = v19;
    sub_1CF9E6918();
    v21 = sub_1CF9E68D8();
    v23 = v22;
    v24 = *(a3 + 160);

    result = sub_1CEFE4714(v18, v20);
    *(a3 + 152) = v21;
    *(a3 + 160) = v23;
  }

  else
  {
    v15 = *(a3 + 160);

    *(a3 + 152) = 0;
    *(a3 + 160) = 0;
  }

  return result;
}

uint64_t sub_1CF51D8E8(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CF9E5A98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v14 = *a1;
  if (v13 + v14 <= a2)
  {
    v17 = v13 - 1;
    (*(v10 + 104))(v12, *MEMORY[0x1E6969010]);
    v18 = sub_1CF51FB88(a1 + v14, v17, v12);
    v20 = v19;
    sub_1CF9E6918();
    v21 = sub_1CF9E68D8();
    v23 = v22;
    v24 = *(a3 + 176);

    result = sub_1CEFE4714(v18, v20);
    *(a3 + 168) = v21;
    *(a3 + 176) = v23;
  }

  else
  {
    v15 = *(a3 + 176);

    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
  }

  return result;
}

uint64_t sub_1CF51DA78(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CF9E5A98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v14 = *a1;
  if (v13 + v14 <= a2)
  {
    v17 = v13 - 1;
    (*(v10 + 104))(v12, *MEMORY[0x1E6969010]);
    v18 = sub_1CF51FB88(a1 + v14, v17, v12);
    v20 = v19;
    sub_1CF9E6918();
    v21 = sub_1CF9E68D8();
    v23 = v22;
    v24 = *(a3 + 200);

    result = sub_1CEFE4714(v18, v20);
    *(a3 + 192) = v21;
    *(a3 + 200) = v23;
  }

  else
  {
    v15 = *(a3 + 200);

    *(a3 + 192) = 0;
    *(a3 + 200) = 0;
  }

  return result;
}

uint64_t sub_1CF51DC08(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CF9E5A98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v14 = *a1;
  if (v13 + v14 <= a2)
  {
    v17 = v13 - 1;
    (*(v10 + 104))(v12, *MEMORY[0x1E6969010]);
    v18 = sub_1CF51FB88(a1 + v14, v17, v12);
    v20 = v19;
    sub_1CF9E6918();
    v21 = sub_1CF9E68D8();
    v23 = v22;
    v24 = *(a3 + 360);

    result = sub_1CEFE4714(v18, v20);
    *(a3 + 352) = v21;
    *(a3 + 360) = v23;
  }

  else
  {
    v15 = *(a3 + 360);

    *(a3 + 352) = 0;
    *(a3 + 360) = 0;
  }

  return result;
}

uint64_t sub_1CF51DD98(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CF9E5A98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v14 = *a1;
  if (v13 + v14 <= a2)
  {
    v17 = v13 - 1;
    (*(v10 + 104))(v12, *MEMORY[0x1E6969010]);
    v18 = sub_1CF51FB88(a1 + v14, v17, v12);
    v20 = v19;
    sub_1CF9E6918();
    v21 = sub_1CF9E68D8();
    v23 = v22;
    v24 = *(a3 + 56);

    result = sub_1CEFE4714(v18, v20);
    *(a3 + 48) = v21;
    *(a3 + 56) = v23;
  }

  else
  {
    v15 = *(a3 + 56);

    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
  }

  return result;
}

uint64_t sub_1CF51DF28(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = *a1;
  if (v5 + v6 <= a2)
  {
    v7 = sub_1CF51FAD8(a1 + v6, v5);
    v8 = v9;
  }

  else
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  result = sub_1CEFE48D8(*(a3 + 304), *(a3 + 312));
  *(a3 + 304) = v7;
  *(a3 + 312) = v8;
  return result;
}

_DWORD *sub_1CF51DF90(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = *result == 0;
  *(a3 + 284) = *result;
  *(a3 + 288) = v3;
  return result;
}

uint64_t sub_1CF51DFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1400, &qword_1CFA08EF0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1CFA08E10;
  *(result + 32) = 1;
  *(result + 40) = xmmword_1CFA08E20;
  *(result + 56) = sub_1CF51D438;
  *(result + 64) = 0;
  *(result + 72) = 2;
  v1 = xmmword_1CF9FD940;
  *(result + 80) = xmmword_1CF9FD940;
  *(result + 96) = sub_1CF51D288;
  *(result + 104) = 0;
  *(result + 112) = 4;
  *(result + 120) = xmmword_1CFA00210;
  *(result + 136) = sub_1CF51D09C;
  *(result + 144) = 0;
  *(result + 152) = 8;
  *(result + 160) = xmmword_1CF9FD940;
  *(result + 176) = sub_1CF51D0FC;
  *(result + 184) = 0;
  *(result + 192) = 16;
  *(result + 200) = xmmword_1CF9FD940;
  *(result + 216) = sub_1CF51D10C;
  *(result + 224) = 0;
  *(result + 232) = 32;
  *(result + 240) = xmmword_1CFA00210;
  *(result + 256) = sub_1CF51D1E8;
  *(result + 264) = 0;
  *(result + 272) = 64;
  *(result + 280) = 8;
  *(result + 288) = 0;
  *(result + 296) = sub_1CF51D0AC;
  *(result + 304) = 0;
  *(result + 312) = 128;
  *(result + 320) = xmmword_1CFA00210;
  *(result + 336) = sub_1CF51D1F8;
  *(result + 344) = 0;
  *(result + 352) = 256;
  *(result + 360) = 4;
  *(result + 368) = 0;
  *(result + 376) = sub_1CF51D208;
  *(result + 384) = 0;
  *(result + 392) = 512;
  *(result + 400) = xmmword_1CFA08E30;
  *(result + 416) = sub_1CF51D184;
  *(result + 424) = 0;
  *(result + 432) = 1024;
  *(result + 440) = 16;
  *(result + 448) = 0;
  *(result + 456) = sub_1CF51D194;
  *(result + 464) = 0;
  *(result + 472) = 2048;
  *(result + 480) = xmmword_1CFA08E30;
  *(result + 496) = sub_1CF51D1A4;
  *(result + 504) = 0;
  *(result + 512) = 4096;
  *(result + 520) = 16;
  *(result + 528) = 0;
  *(result + 536) = sub_1CF51D1B4;
  *(result + 544) = 0;
  *(result + 552) = 0x2000;
  *(result + 560) = xmmword_1CFA08E30;
  *(result + 576) = sub_1CF51D1C4;
  *(result + 584) = 0;
  *(result + 592) = 0x4000;
  *(result + 600) = 32;
  *(result + 608) = 0;
  *(result + 616) = sub_1CF51D170;
  *(result + 624) = 0;
  *(result + 632) = 0x8000;
  *(result + 640) = xmmword_1CF9FD940;
  *(result + 656) = sub_1CF51D218;
  *(result + 664) = 0;
  *(result + 672) = 0x10000;
  *(result + 680) = 4;
  *(result + 688) = 0;
  *(result + 696) = sub_1CF51D228;
  *(result + 704) = 0;
  *(result + 712) = 0x20000;
  *(result + 720) = xmmword_1CF9FD940;
  *(result + 736) = sub_1CF51D238;
  *(result + 744) = 0;
  *(result + 752) = 0x40000;
  *(result + 760) = 4;
  *(result + 768) = 0;
  *(result + 776) = sub_1CF51D248;
  *(result + 784) = 0;
  *(result + 792) = 0x80000;
  *(result + 800) = xmmword_1CF9FD940;
  *(result + 816) = sub_1CF51D258;
  *(result + 824) = 0;
  *(result + 832) = 0x100000;
  *(result + 840) = 4;
  *(result + 848) = 0;
  *(result + 856) = sub_1CF51DF90;
  *(result + 864) = 0;
  *(result + 872) = 0x200000;
  *(result + 880) = xmmword_1CF9FD940;
  *(result + 896) = sub_1CF51D268;
  *(result + 904) = 0;
  *(result + 912) = 0x400000;
  *(result + 920) = 8;
  *(result + 928) = 68;
  *(result + 936) = sub_1CF51DF28;
  *(result + 944) = 0;
  *(result + 952) = 0x800000;
  *(result + 960) = xmmword_1CFA08E30;
  *(result + 976) = sub_1CF51D14C;
  *(result + 984) = 0;
  *(result + 992) = 0x1000000;
  *(result + 1000) = 16;
  *(result + 1008) = 0;
  *(result + 1016) = sub_1CF51D15C;
  *(result + 1024) = 0;
  *(result + 1032) = 0x2000000;
  *(result + 1040) = xmmword_1CFA00210;
  *(result + 1056) = sub_1CF51D12C;
  *(result + 1064) = 0;
  *(result + 1072) = 0x4000000;
  *(result + 1080) = 8;
  *(result + 1088) = 0;
  *(result + 1096) = sub_1CF51D13C;
  *(result + 1104) = 0;
  *(result + 1112) = 0x8000000;
  if (qword_1EDEA7E08 != -1)
  {
    v3 = result;
    swift_once();
    v1 = xmmword_1CF9FD940;
    result = v3;
  }

  v2 = qword_1EDEBB948;
  *(result + 1120) = 8;
  *(result + 1128) = v2;
  *(result + 1136) = sub_1CF51D5C8;
  *(result + 1144) = 0;
  *(result + 1152) = 0x10000000;
  *(result + 1160) = 16;
  *(result + 1168) = 0;
  *(result + 1176) = sub_1CF51D1D4;
  *(result + 1184) = 0;
  *(result + 1192) = 0x40000000;
  *(result + 1200) = v1;
  *(result + 1216) = sub_1CF51D278;
  *(result + 1224) = 0;
  off_1EDEA7DE8 = result;
  return result;
}

uint64_t sub_1CF51E4B8()
{
  if (qword_1EDEA7DE0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7DE8;
  if (*(off_1EDEA7DE8 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13F8, &qword_1CFA08EE8);
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1;
  swift_bridgeObjectRetain_n();
  sub_1CF51F6E8(v0, 1, &v3, sub_1CF7D52AC, sub_1CF7CF058, sub_1CF7C2EA8);

  qword_1EDEBB940 = v3;
  return result;
}

void sub_1CF51E5F4()
{
  if (qword_1EDEA7DE0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7DE8;
  v1 = *(off_1EDEA7DE8 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v7 = MEMORY[0x1E69E7CC0];

    sub_1CF680968(0, v1, 0);
    v2 = v7;
    v3 = *(v7 + 16);
    v4 = 32;
    do
    {
      v5 = *&v0[v4];
      v6 = *(v7 + 24);
      if (v3 >= v6 >> 1)
      {
        sub_1CF680968((v6 > 1), v3 + 1, 1);
      }

      *(v7 + 16) = v3 + 1;
      *(v7 + 4 * v3 + 32) = v5;
      v4 += 40;
      ++v3;
      --v1;
    }

    while (v1);
  }

  qword_1EDEBB938 = v2;
}

double sub_1CF51E714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13F0, &qword_1CFA08EE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFA08E40;
  *(v0 + 32) = 1;
  v1 = xmmword_1CF9FD940;
  *(v0 + 40) = xmmword_1CF9FD940;
  *(v0 + 56) = sub_1CF51D0EC;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  *(v0 + 80) = xmmword_1CF9FD940;
  *(v0 + 96) = sub_1CF51D338;
  *(v0 + 104) = 0;
  *(v0 + 112) = 4;
  v2 = xmmword_1CFA00210;
  *(v0 + 120) = xmmword_1CFA00210;
  *(v0 + 136) = sub_1CF51D2E8;
  *(v0 + 144) = 0;
  *(v0 + 152) = 8;
  *(v0 + 160) = xmmword_1CFA00210;
  *(v0 + 176) = sub_1CF51D2F8;
  *(v0 + 184) = 0;
  *(v0 + 192) = 16;
  *(v0 + 200) = xmmword_1CFA00210;
  *(v0 + 216) = sub_1CF51D308;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0x800000;
  *(v0 + 240) = xmmword_1CFA00210;
  *(v0 + 256) = sub_1CF51D0AC;
  *(v0 + 264) = 0;
  *(v0 + 272) = 32;
  *(v0 + 280) = 8;
  *(v0 + 288) = 0;
  *(v0 + 296) = sub_1CF51D0BC;
  *(v0 + 304) = 0;
  *(v0 + 312) = 64;
  *(v0 + 320) = xmmword_1CFA00210;
  *(v0 + 336) = sub_1CF51D0CC;
  *(v0 + 344) = 0;
  *(v0 + 352) = 128;
  *(v0 + 360) = 4;
  *(v0 + 368) = 0;
  *(v0 + 376) = sub_1CF51D348;
  *(v0 + 384) = 0;
  *(v0 + 392) = 256;
  *(v0 + 400) = xmmword_1CF9FD940;
  *(v0 + 416) = sub_1CF51D358;
  *(v0 + 424) = 0;
  *(v0 + 432) = 512;
  *(v0 + 440) = 4;
  *(v0 + 448) = 0;
  *(v0 + 456) = sub_1CF51D368;
  *(v0 + 464) = 0;
  *(v0 + 472) = 1024;
  *(v0 + 480) = xmmword_1CF9FD940;
  *(v0 + 496) = sub_1CF51D378;
  *(v0 + 504) = 0;
  *(v0 + 512) = 2048;
  *(v0 + 520) = 4;
  *(v0 + 528) = 0;
  *(v0 + 536) = sub_1CF51D388;
  *(v0 + 544) = 0;
  *(v0 + 552) = 4096;
  if (qword_1EDEA7E08 != -1)
  {
    v5 = v0;
    swift_once();
    v2 = xmmword_1CFA00210;
    v1 = xmmword_1CF9FD940;
    v0 = v5;
  }

  v3 = qword_1EDEBB948;
  *(v0 + 560) = 8;
  *(v0 + 568) = v3;
  *(v0 + 576) = sub_1CF51D758;
  *(v0 + 584) = 0;
  *(v0 + 592) = 0x2000;
  *(v0 + 600) = 8;
  *(v0 + 608) = 766;
  *(v0 + 616) = sub_1CF51D8E8;
  *(v0 + 624) = 0;
  *(v0 + 632) = 0x4000;
  *(v0 + 640) = v1;
  *(v0 + 656) = sub_1CF51D398;
  *(v0 + 664) = 0;
  *(v0 + 672) = 0x8000;
  *(v0 + 680) = 8;
  *(v0 + 688) = v3;
  *(v0 + 696) = sub_1CF51DA78;
  *(v0 + 704) = 0;
  *(v0 + 712) = 0x10000;
  *(v0 + 720) = v2;
  *(v0 + 736) = sub_1CF51D2D8;
  *(v0 + 744) = 0;
  *(v0 + 752) = 0x20000;
  *(v0 + 760) = 32;
  *(v0 + 768) = 0;
  *(v0 + 776) = sub_1CF51D2C4;
  *(v0 + 784) = 0;
  *(v0 + 792) = 0x40000;
  *(v0 + 800) = xmmword_1CFA08E30;
  *(v0 + 816) = sub_1CF51D2B4;
  *(v0 + 824) = 0;
  *(v0 + 832) = 0x80000;
  *(v0 + 840) = 4;
  *(v0 + 848) = 0;
  *(v0 + 856) = sub_1CF51D3A8;
  *(v0 + 864) = 0;
  *(v0 + 872) = 0x10000000;
  *(v0 + 880) = v2;
  *(v0 + 896) = sub_1CF51D318;
  *(v0 + 904) = 0;
  *(v0 + 912) = 0x20000000;
  *(v0 + 920) = 8;
  *(v0 + 928) = 0;
  *(v0 + 936) = sub_1CF51D328;
  *(v0 + 944) = 0;
  *(v0 + 952) = 0x40000000;
  *&result = 40;
  *(v0 + 960) = xmmword_1CFA08E50;
  *(v0 + 976) = sub_1CF51D298;
  *(v0 + 984) = 0;
  *(v0 + 992) = 0x100000;
  *(v0 + 1000) = 8;
  *(v0 + 1008) = 16;
  *(v0 + 1016) = sub_1CF51DC08;
  *(v0 + 1024) = 0;
  *(v0 + 1032) = 0x200000;
  *(v0 + 1040) = v1;
  *(v0 + 1056) = sub_1CF51D3B8;
  *(v0 + 1064) = 0;
  off_1EDEA7DC0 = v0;
  return result;
}

uint64_t sub_1CF51EB84()
{
  if (qword_1EDEA7DB8 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7DC0;
  if (*(off_1EDEA7DC0 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13E8, &qword_1CFA170E0);
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1;
  swift_bridgeObjectRetain_n();
  sub_1CF51F6E8(v0, 1, &v3, sub_1CF7D52AC, sub_1CF7CF044, sub_1CF7C2E94);

  qword_1EC4EBD40 = v3;
  return result;
}

void sub_1CF51ECC0()
{
  if (qword_1EDEA7DB8 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7DC0;
  v1 = *(off_1EDEA7DC0 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v7 = MEMORY[0x1E69E7CC0];

    sub_1CF680938(0, v1, 0);
    v2 = v7;
    v3 = *(v7 + 16);
    v4 = 32;
    do
    {
      v5 = *&v0[v4];
      v6 = *(v7 + 24);
      if (v3 >= v6 >> 1)
      {
        sub_1CF680938((v6 > 1), v3 + 1, 1);
      }

      *(v7 + 16) = v3 + 1;
      *(v7 + 4 * v3 + 32) = v5;
      v4 += 40;
      ++v3;
      --v1;
    }

    while (v1);
  }

  qword_1EDEBB930 = v2;
}

void sub_1CF51EDE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13E0, &unk_1CFA08ED0);
  v0 = sub_1CF9E7BE8();
  sub_1CF51F6E8(&unk_1F4BEAA90, 1, &v0, sub_1CF7D52AC, sub_1CF7CF01C, sub_1CF7C2E6C);
  qword_1EC4EBD48 = v0;
}

char *sub_1CF51EEBC()
{
  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1CF6808D8(0, 6, 0);
  v1 = v23;
  v2 = dword_1F4BEAAB0;
  v4 = *(v23 + 16);
  v3 = *(v23 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    result = sub_1CF6808D8((v3 > 1), v4 + 1, 1);
    v1 = v23;
    v3 = *(v23 + 24);
    v5 = v3 >> 1;
  }

  *(v1 + 16) = v6;
  *(v1 + 4 * v4 + 32) = v2;
  v7 = dword_1F4BEAAD8;
  v24 = v1;
  v8 = v4 + 2;
  if (v5 <= v6)
  {
    result = sub_1CF6808D8((v3 > 1), v8, 1);
    v1 = v24;
  }

  *(v1 + 16) = v8;
  *(v1 + 4 * v6 + 32) = v7;
  v9 = dword_1F4BEAB00;
  v25 = v1;
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    result = sub_1CF6808D8((v10 > 1), v11 + 1, 1);
    v1 = v25;
    v10 = *(v25 + 24);
    v12 = v10 >> 1;
  }

  *(v1 + 16) = v13;
  *(v1 + 4 * v11 + 32) = v9;
  v14 = dword_1F4BEAB28;
  v26 = v1;
  v15 = v11 + 2;
  if (v12 <= v13)
  {
    result = sub_1CF6808D8((v10 > 1), v15, 1);
    v1 = v26;
  }

  *(v1 + 16) = v15;
  *(v1 + 4 * v13 + 32) = v14;
  v16 = dword_1F4BEAB50;
  v27 = v1;
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  v19 = v17 >> 1;
  v20 = v18 + 1;
  if (v17 >> 1 <= v18)
  {
    result = sub_1CF6808D8((v17 > 1), v18 + 1, 1);
    v1 = v27;
    v17 = *(v27 + 24);
    v19 = v17 >> 1;
  }

  *(v1 + 16) = v20;
  *(v1 + 4 * v18 + 32) = v16;
  v21 = dword_1F4BEAB78;
  v28 = v1;
  v22 = v18 + 2;
  if (v19 <= v20)
  {
    result = sub_1CF6808D8((v17 > 1), v22, 1);
    v1 = v28;
  }

  *(v1 + 16) = v22;
  *(v1 + 4 * v20 + 32) = v21;
  qword_1EDEBB918 = v1;
  return result;
}

void sub_1CF51F0E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13D8, &unk_1CFA170D0);
  v0 = sub_1CF9E7BE8();
  sub_1CF51F6E8(&unk_1F4BEABA0, 1, &v0, sub_1CF7D52AC, sub_1CF7CF06C, sub_1CF7C2EBC);
  qword_1EDEBB958 = v0;
}

char *sub_1CF51F1BC()
{
  v6 = MEMORY[0x1E69E7CC0];
  result = sub_1CF680998(0, 10, 0);
  v1 = v6;
  v2 = *(v6 + 16);
  v3 = 0x20u;
  do
  {
    v4 = *(&unk_1F4BEABA0 + v3);
    v7 = v1;
    v5 = *(v1 + 24);
    if (v2 >= v5 >> 1)
    {
      result = sub_1CF680998((v5 > 1), v2 + 1, 1);
      v1 = v7;
    }

    *(v1 + 16) = v2 + 1;
    *(v1 + 4 * v2 + 32) = v4;
    v3 += 40;
    ++v2;
  }

  while (v3 != 432);
  qword_1EDEBB950 = v1;
  return result;
}

double sub_1CF51F28C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13D0, &unk_1CFA08EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFA08E60;
  *(v0 + 32) = 4;
  if (qword_1EDEA7E08 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  v1 = qword_1EDEBB948;
  *(v0 + 40) = 8;
  *(v0 + 48) = v1;
  *(v0 + 56) = sub_1CF51D438;
  *(v0 + 64) = 0;
  *(v0 + 72) = 8;
  *&result = 8;
  *(v0 + 80) = xmmword_1CFA00210;
  *(v0 + 96) = sub_1CF51D2E8;
  *(v0 + 104) = 0;
  *(v0 + 112) = 16;
  *(v0 + 120) = xmmword_1CFA00210;
  *(v0 + 136) = sub_1CF51D2F8;
  *(v0 + 144) = 0;
  *(v0 + 152) = 32;
  *(v0 + 160) = 8;
  *(v0 + 168) = v1;
  *(v0 + 176) = sub_1CF51DD98;
  *(v0 + 184) = 0;
  *(v0 + 192) = 64;
  *(v0 + 200) = xmmword_1CF9FD940;
  *(v0 + 216) = sub_1CF51D428;
  *(v0 + 224) = 0;
  *(v0 + 232) = 128;
  *(v0 + 240) = xmmword_1CFA00210;
  *(v0 + 256) = sub_1CF51D418;
  *(v0 + 264) = 0;
  *(v0 + 272) = 256;
  *(v0 + 280) = 8;
  *(v0 + 288) = 0;
  *(v0 + 296) = sub_1CF51D3D8;
  *(v0 + 304) = 0;
  *(v0 + 312) = 512;
  *(v0 + 320) = xmmword_1CFA00210;
  *(v0 + 336) = sub_1CF51D3E8;
  *(v0 + 344) = 0;
  *(v0 + 352) = 1024;
  *(v0 + 360) = 8;
  *(v0 + 368) = 0;
  *(v0 + 376) = sub_1CF51D3F8;
  *(v0 + 384) = 0;
  *(v0 + 392) = 2048;
  *(v0 + 400) = xmmword_1CFA00210;
  *(v0 + 416) = sub_1CF51D408;
  *(v0 + 424) = 0;
  *(v0 + 432) = 4096;
  *(v0 + 440) = 4;
  *(v0 + 448) = 0;
  *(v0 + 456) = sub_1CF51D3C8;
  *(v0 + 464) = 0;
  off_1EDEA7D88 = v0;
  return result;
}

uint64_t sub_1CF51F494()
{
  if (qword_1EDEA7D80 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7D88;
  if (*(off_1EDEA7D88 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C13C8, "8&\n");
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1;
  swift_bridgeObjectRetain_n();
  sub_1CF51F6E8(v0, 1, &v3, sub_1CF7D52AC, sub_1CF7CF030, sub_1CF7C2E80);

  qword_1EDEBB928 = v3;
  return result;
}

void sub_1CF51F5D0()
{
  if (qword_1EDEA7D80 != -1)
  {
    swift_once();
  }

  v0 = off_1EDEA7D88;
  v1 = *(off_1EDEA7D88 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v7 = MEMORY[0x1E69E7CC0];

    sub_1CF680908(0, v1, 0);
    v2 = v7;
    v3 = *(v7 + 16);
    v4 = 32;
    do
    {
      v5 = *&v0[v4];
      v6 = *(v7 + 24);
      if (v3 >= v6 >> 1)
      {
        sub_1CF680908((v6 > 1), v3 + 1, 1);
      }

      *(v7 + 16) = v3 + 1;
      *(v7 + 4 * v3 + 32) = v5;
      v4 += 40;
      ++v3;
      --v1;
    }

    while (v1);
  }

  qword_1EDEBB920 = v2;
}

void sub_1CF51F6E8(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v55 = *(a1 + 16);
  if (!v55)
  {
    goto LABEL_23;
  }

  v9 = *(a1 + 48);
  v57 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v8 = *(a1 + 32);
  v12 = *a3;
  v13 = a4(v8);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v13;
  v19 = v14;
  v20 = v12[3];

  if (v20 >= v17)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      a5(v21);
      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  a6(v17, a2 & 1);
  v22 = *a3;
  v23 = a4(v8);
  if ((v19 & 1) == (v24 & 1))
  {
    v18 = v23;
    if ((v19 & 1) == 0)
    {
LABEL_12:
      v27 = *a3;
      *(*a3 + 8 * (v18 >> 6) + 64) |= 1 << v18;
      *(v27[6] + 4 * v18) = v8;
      v28 = (v27[7] + 32 * v18);
      *v28 = v57;
      v28[1] = v9;
      v28[2] = v11;
      v28[3] = v10;
      v29 = v27[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (!v30)
      {
        v27[2] = v31;
        if (v55 != 1)
        {
          v32 = (a1 + 104);
          v33 = 1;
          while (v33 < *(a1 + 16))
          {
            v35 = *(v32 - 2);
            v56 = *(v32 - 3);
            v37 = *(v32 - 1);
            v36 = *v32;
            v34 = *(v32 - 8);
            v38 = *a3;
            v39 = a4(v34);
            v41 = v38[2];
            v42 = (v40 & 1) == 0;
            v43 = v41 + v42;
            if (__OFADD__(v41, v42))
            {
              goto LABEL_25;
            }

            v44 = v39;
            v45 = v40;
            v46 = v38[3];

            if (v46 < v43)
            {
              a6(v43, 1);
              v47 = *a3;
              v48 = a4(v34);
              if ((v45 & 1) != (v49 & 1))
              {
                goto LABEL_28;
              }

              v44 = v48;
            }

            if (v45)
            {
              goto LABEL_9;
            }

            v50 = *a3;
            *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            *(v50[6] + 4 * v44) = v34;
            v51 = (v50[7] + 32 * v44);
            *v51 = v56;
            v51[1] = v35;
            v51[2] = v37;
            v51[3] = v36;
            v52 = v50[2];
            v30 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v30)
            {
              goto LABEL_26;
            }

            ++v33;
            v50[2] = v53;
            v32 += 5;
            if (v55 == v33)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_27;
        }

LABEL_23:

        return;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_9:
    v25 = swift_allocError();
    swift_willThrow();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1CF9E8108();
  __break(1u);
LABEL_29:
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3DF20);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](39, 0xE100000000000000);
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF51FAD8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1CF67B224(a1, &a1[a2]);
  }

  v3 = sub_1CF9E54F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1CF9E5488();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1CF9E5AD8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1CF51FB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5A98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CF9E5A88();
  if (a2)
  {
    v11 = sub_1CF9E54F8();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_1CF9E5478();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6969010])
    {
      v15 = sub_1CF9E54E8();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_1CF67B2DC(v14, a2);
  }

  else
  {
    v17 = sub_1CF9E5A88();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_1CF51FDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 433))
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

uint64_t sub_1CF51FE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 432) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 433) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 433) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CF51FF14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 373))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 160);
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

uint64_t sub_1CF51FF70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 372) = 0;
    *(result + 368) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 373) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 373) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2;
    }
  }

  return result;
}

uint64_t sub_1CF52004C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF52006C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1CF5200F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 121))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF520114(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
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

  *(result + 121) = v3;
  return result;
}

uint64_t sub_1CF520180()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CF5201BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF520204(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1CF520290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
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

uint64_t sub_1CF5202EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CF520390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1161))
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

uint64_t sub_1CF5203EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 1160) = 0;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1161) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1CF520584()
{
  result = qword_1EDEA7DA0;
  if (!qword_1EDEA7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7DA0);
  }

  return result;
}

unint64_t sub_1CF5205DC()
{
  result = qword_1EC4C1408;
  if (!qword_1EC4C1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1408);
  }

  return result;
}

unint64_t sub_1CF520664()
{
  result = qword_1EC4C1420;
  if (!qword_1EC4C1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1420);
  }

  return result;
}

unint64_t sub_1CF5206BC()
{
  result = qword_1EC4C1428;
  if (!qword_1EC4C1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1428);
  }

  return result;
}

unint64_t sub_1CF520714()
{
  result = qword_1EC4C1430;
  if (!qword_1EC4C1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1430);
  }

  return result;
}

unint64_t sub_1CF52076C()
{
  result = qword_1EC4C1438;
  if (!qword_1EC4C1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1438);
  }

  return result;
}

unint64_t sub_1CF5207C0()
{
  result = qword_1EDEA7EA8[0];
  if (!qword_1EDEA7EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA7EA8);
  }

  return result;
}

unint64_t sub_1CF520818()
{
  result = qword_1EC4C1440;
  if (!qword_1EC4C1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1440);
  }

  return result;
}

unint64_t sub_1CF5208A0()
{
  result = qword_1EC4C1458;
  if (!qword_1EC4C1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1458);
  }

  return result;
}

unint64_t sub_1CF5208F8()
{
  result = qword_1EC4C1460;
  if (!qword_1EC4C1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1460);
  }

  return result;
}

unint64_t sub_1CF520950()
{
  result = qword_1EC4C1468;
  if (!qword_1EC4C1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1468);
  }

  return result;
}

unint64_t sub_1CF5209A8()
{
  result = qword_1EC4C1470;
  if (!qword_1EC4C1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1470);
  }

  return result;
}

unint64_t sub_1CF5209FC()
{
  result = qword_1EC4C1478;
  if (!qword_1EC4C1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1478);
  }

  return result;
}

unint64_t sub_1CF520A54()
{
  result = qword_1EC4C1480;
  if (!qword_1EC4C1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1480);
  }

  return result;
}

unint64_t sub_1CF520ADC()
{
  result = qword_1EC4C1498;
  if (!qword_1EC4C1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1498);
  }

  return result;
}

unint64_t sub_1CF520B34()
{
  result = qword_1EC4C14A0;
  if (!qword_1EC4C14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14A0);
  }

  return result;
}

unint64_t sub_1CF520B8C()
{
  result = qword_1EC4C14A8;
  if (!qword_1EC4C14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14A8);
  }

  return result;
}

unint64_t sub_1CF520BE4()
{
  result = qword_1EC4C14B0;
  if (!qword_1EC4C14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14B0);
  }

  return result;
}

unint64_t sub_1CF520C38()
{
  result = qword_1EC4C14B8;
  if (!qword_1EC4C14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14B8);
  }

  return result;
}

unint64_t sub_1CF520C90()
{
  result = qword_1EC4C14C0;
  if (!qword_1EC4C14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14C0);
  }

  return result;
}

unint64_t sub_1CF520D18()
{
  result = qword_1EC4C14D8;
  if (!qword_1EC4C14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14D8);
  }

  return result;
}

unint64_t sub_1CF520D70()
{
  result = qword_1EC4C14E0;
  if (!qword_1EC4C14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14E0);
  }

  return result;
}

unint64_t sub_1CF520DC8()
{
  result = qword_1EC4C14E8;
  if (!qword_1EC4C14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14E8);
  }

  return result;
}

unint64_t sub_1CF520E20()
{
  result = qword_1EC4C14F0;
  if (!qword_1EC4C14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14F0);
  }

  return result;
}

unint64_t sub_1CF520E74()
{
  result = qword_1EDEA7E00;
  if (!qword_1EDEA7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7E00);
  }

  return result;
}

unint64_t sub_1CF520ECC()
{
  result = qword_1EC4C14F8;
  if (!qword_1EC4C14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C14F8);
  }

  return result;
}

uint64_t sub_1CF520F50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF520FA8()
{
  result = qword_1EC4C1510;
  if (!qword_1EC4C1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1510);
  }

  return result;
}

unint64_t sub_1CF521000()
{
  result = qword_1EC4C1518;
  if (!qword_1EC4C1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1518);
  }

  return result;
}

unint64_t sub_1CF52105C()
{
  result = qword_1EC4C1520;
  if (!qword_1EC4C1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1520);
  }

  return result;
}

unint64_t sub_1CF5210B0()
{
  result = qword_1EC4C1528;
  if (!qword_1EC4C1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1528);
  }

  return result;
}

unint64_t sub_1CF521130()
{
  result = qword_1EC4C1530;
  if (!qword_1EC4C1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1530);
  }

  return result;
}

unint64_t sub_1CF521184()
{
  result = qword_1EC4C1538;
  if (!qword_1EC4C1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1538);
  }

  return result;
}

unint64_t sub_1CF521204()
{
  result = qword_1EC4C1540;
  if (!qword_1EC4C1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1540);
  }

  return result;
}

unint64_t sub_1CF521258()
{
  result = qword_1EC4C1548;
  if (!qword_1EC4C1548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1548);
  }

  return result;
}

unint64_t sub_1CF5212D8()
{
  result = qword_1EC4C1550;
  if (!qword_1EC4C1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1550);
  }

  return result;
}

unint64_t sub_1CF52132C()
{
  result = qword_1EC4C1558;
  if (!qword_1EC4C1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1558);
  }

  return result;
}

unint64_t sub_1CF5213AC()
{
  result = qword_1EC4C1560;
  if (!qword_1EC4C1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1560);
  }

  return result;
}

unint64_t sub_1CF521400()
{
  result = qword_1EC4C1568;
  if (!qword_1EC4C1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1568);
  }

  return result;
}

uint64_t sub_1CF521480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF5214BC()
{
  result = qword_1EC4C1570;
  if (!qword_1EC4C1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1570);
  }

  return result;
}

unint64_t sub_1CF521510()
{
  result = qword_1EC4C1578;
  if (!qword_1EC4C1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1578);
  }

  return result;
}

uint64_t sub_1CF5215C0(uint64_t a1)
{
  v4 = sub_1CF9E6118();
  v21 = *(v4 - 8);
  v22 = v4;
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = !*(a1 + 112) || *(a1 + 112) == 4 && *(a1 + 96) == 0;
  v9 = *(v1 + 24);
  result = sub_1CF66E648();
  if (!v2)
  {

    if (v8)
    {
      v11 = fpfs_current_or_default_log();
      v12 = sub_1CF9E6128();
      v13 = (*(*a1 + 424))(v12);

      v14 = sub_1CF9E6108();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136446210;

        v17 = sub_1CF044BA4();
        v19 = v18;

        v20 = sub_1CEFD0DF0(v17, v19, &v23);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_1CEFC7000, v14, v13, " ✍️  persist job: %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1D386CDC0](v16, -1, -1);
        MEMORY[0x1D386CDC0](v15, -1, -1);
      }

      else
      {
      }

      return (*(v21 + 8))(v7, v22);
    }
  }

  return result;
}

uint64_t sub_1CF521850(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v43 = type metadata accessor for SyncState();
  v13 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1CF9E6118();
  v15 = *(v56 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(a1[2] + 16);
  if (v18)
  {
    v46 = a2;
    v47 = v6;
    v48 = a1;
    v49 = v5;
    v50 = a3;
    v51 = a4;
    v52 = a5;
    v19 = (v15 + 8);

    v20 = (v45 + 40);
    *&v21 = 136315138;
    v53 = v21;
    v22 = v54;
    do
    {
      v28 = *(v20 - 1);
      v29 = *v20;

      v30 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v31 = sub_1CF9E6108();
      v32 = sub_1CF9E7288();

      if (os_log_type_enabled(v31, v32))
      {
        v23 = swift_slowAlloc();
        v24 = v19;
        v25 = swift_slowAlloc();
        v55 = v25;
        *v23 = v53;
        v26 = sub_1CEFD0DF0(v28, v29, &v55);

        *(v23 + 4) = v26;
        _os_log_impl(&dword_1CEFC7000, v31, v32, "%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v27 = v25;
        v19 = v24;
        v22 = v54;
        MEMORY[0x1D386CDC0](v27, -1, -1);
        MEMORY[0x1D386CDC0](v23, -1, -1);
      }

      else
      {
      }

      (*v19)(v22, v56);
      v20 += 2;
      --v18;
    }

    while (v18);

    a4 = v51;
    a5 = v52;
    v5 = v49;
    a3 = v50;
    v7 = v47;
    a1 = v48;
    a2 = v46;
  }

  swift_beginAccess();
  v33 = a1[5];

  sub_1CF52737C(v34, a2, a3, a4, a5, type metadata accessor for FSOrFPJob);

  if (!v7)
  {
    swift_beginAccess();
    v36 = a1[3];
    swift_beginAccess();
    v37 = a1[4];

    sub_1CF92E0C4(v36, v37, a3, a4, a5);

    v38 = v5[6];
    v39 = v5[7];
    ObjectType = swift_getObjectType();
    v41 = (*(*v5 + 272))(ObjectType);
    v42 = v44;
    *v44 = v41;
    swift_storeEnumTagMultiPayload();
    (*(v39 + 8))(v42, a3, a4, a5, ObjectType, v39);
    return sub_1CF03BA78(v42, type metadata accessor for SyncState);
  }

  return result;
}

void sub_1CF521CC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v248 = a6;
  v249 = a4;
  v250 = a5;
  v221 = a3;
  v234 = a2;
  v251 = a1;
  v9 = *(*v6 + 88);
  v10 = *(*v6 + 96);
  v11 = *(*v6 + 104);
  v252 = *(*v6 + 80);
  v8 = v252;
  v253 = v9;
  v254 = v10;
  v255 = v11;
  v220 = type metadata accessor for ReconciliationMutation();
  v219 = *(v220 - 8);
  v12 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v218 = &v217 - v13;
  v253 = v9;
  v254 = v10;
  v255 = v11;
  v14 = type metadata accessor for ItemReconciliation();
  v223 = sub_1CF9E75D8();
  v222 = *(v223 - 8);
  v15 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v228 = (&v217 - v16);
  v227 = v14;
  v226 = *(v14 - 8);
  v17 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v224 = &v217 - v19;
  v229 = type metadata accessor for FileTreeError();
  v225 = *(v229 - 8);
  v20 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v230 = &v217 - v21;
  v252 = v8;
  v253 = v9;
  v254 = v10;
  v255 = v11;
  v233 = type metadata accessor for PersistenceTrigger();
  v232 = *(v233 - 8);
  v22 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v231 = &v217 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v240 = *(AssociatedTypeWitness - 8);
  v25 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v236 = (&v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v238 = &v217 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v239 = *(v29 - 1);
  v30 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v237 = &v217 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v235 = &v217 - v33;
  v244 = v10;
  v245 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v242 = v11;
  v35 = swift_getAssociatedConformanceWitness();
  v243 = v29;
  v252 = v29;
  v253 = AssociatedTypeWitness;
  v241 = AssociatedTypeWitness;
  v254 = AssociatedConformanceWitness;
  v255 = v35;
  v36 = type metadata accessor for ReconciliationID();
  v37 = sub_1CF9E75D8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v217 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v217 - v43;
  v247 = v36;
  v45 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v217 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v217 - v51;
  v57 = MEMORY[0x1EEE9AC00](v53);
  v58 = *(v251 + 136);
  if (v58)
  {
    v237 = &v217 - v54;
    v246 = v55;
    v62 = v256;
    (*(*v251 + 512))(v7, v249, v250, v248, v57);
    if (v62)
    {
      return;
    }

    v236 = v7;
    v64 = v246;
    v63 = v247;
    if ((*(v246 + 48))(v44, 1, v247) == 1)
    {
      (*(v38 + 8))(v44, v37);
      return;
    }

    v256 = 0;
    v65 = v237;
    (*(v64 + 32))(v237, v44, v63);
    v66 = v64 + 16;
    v228 = *(v64 + 16);
    v228(v52, v65, v63);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v240 + 32))(v238, v52, v241);
      v67 = v236[3];
      v69 = v244;
      v68 = v245;
      v252 = v9;
      v253 = v245;
      v70 = v242;
      v254 = v242;
      v255 = v244;
      v243 = type metadata accessor for ItemJob();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v72 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      v73 = *(v72 + 52);
      v74 = (*(v72 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v75 = sub_1CF9E6D68();
      v252 = v9;
      v253 = v68;
      v254 = v70;
      v255 = v69;
      v76 = v67;
      v77 = v238;
      *v78 = type metadata accessor for Materialization.MaterializeItem();
      v79 = sub_1CF045898(v75);
      v80 = v248;
      v81 = v256;
      v82 = (*(*v76 + 304))(v77, v79, v249, v250, v248);
      if (v81)
      {

        (*(v240 + 8))(v77, v241);
LABEL_21:
        (*(v246 + 8))(v237, v247);
        return;
      }

      v256 = 0;
      v129 = v82;

      v252 = v129;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v130 = sub_1CF9E7128();
      (*(v240 + 8))(v77, v241);

      v131 = v247;
      if (v130)
      {
        goto LABEL_21;
      }

      v240 = v66;
    }

    else
    {
      v240 = v64 + 16;
      v100 = v239;
      v101 = v235;
      (*(v239 + 32))(v235, v52, v243);
      v241 = v236[3];
      v103 = v244;
      v102 = v245;
      v252 = v245;
      v253 = v9;
      v104 = v242;
      v254 = v244;
      v255 = v242;
      v238 = type metadata accessor for ItemJob();
      v105 = swift_getMetatypeMetadata();
      v106 = sub_1CF656CD8(v105, v105);
      v107 = *(v106 + 52);
      v108 = (*(v106 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v109 = sub_1CF9E6D68();
      v252 = v102;
      v253 = v9;
      v254 = v103;
      v255 = v104;
      v110 = v241;
      *v111 = type metadata accessor for Materialization.MaterializeItem();
      v112 = sub_1CF045898(v109);
      v80 = v248;
      v113 = v256;
      v114 = (*(*v110 + 312))(v101, v112, v249, v250, v248);
      if (v113)
      {

        (*(v100 + 8))(v101, v243);
        goto LABEL_21;
      }

      v256 = 0;
      v132 = v114;

      v252 = v132;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v133 = sub_1CF9E7128();
      (*(v100 + 8))(v101, v243);

      if (v133)
      {
        goto LABEL_21;
      }

      v131 = v247;
    }

    v142 = v234;
    v143 = sub_1CF9E57E8();
    v144 = [v143 domain];
    v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v147 = v146;

    v148 = *MEMORY[0x1E6967190];
    if (v145 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v147 == v149)
    {
    }

    else
    {
      v150 = sub_1CF9E8048();

      if ((v150 & 1) == 0)
      {
LABEL_35:
        _s3__C4CodeOMa_1(0);
        v252 = -1000;
        sub_1CF527CC0();
        if ((sub_1CF9E5658() & 1) == 0)
        {
          v252 = -2009;
          if ((sub_1CF9E5658() & 1) == 0)
          {
            v252 = v142;
            v152 = v142;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v153 = v230;
            v154 = v229;
            if (!swift_dynamicCast())
            {
LABEL_42:

              v156 = v256;
              v157 = sub_1CF66E048(v251, 0, v249, v250, v80);
              if (v156 || (v157 & 1) == 0)
              {
                (*(v246 + 8))(v237, v131);
              }

              else
              {
                v183 = *(swift_getTupleTypeMetadata2() + 48);
                v184 = v231;
                v228(v231, v237, v131);
                *&v184[v183] = v142;
                v185 = v233;
                swift_storeEnumTagMultiPayload();
                v186 = *(*v236 + 312);
                v187 = v142;
                v186(v184);

                (*(v232 + 8))(v184, v185);
                (*(v246 + 8))(v237, v131);
              }

              return;
            }

            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload != 21)
            {
              if (EnumCaseMultiPayload == 7)
              {
                v188 = swift_getAssociatedTypeWitness();
                TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
                v190 = *(*(v188 - 8) + 8);
                v190(&v153[*(TupleTypeMetadata2 + 48)], v188);
                v190(v153, v188);
              }

              else if (EnumCaseMultiPayload != 5)
              {
                (*(v225 + 8))(v153, v154);
                goto LABEL_42;
              }
            }
          }
        }

LABEL_58:
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v191 = *(swift_getTupleTypeMetadata2() + 48);
        v192 = v231;
        v193 = v237;
        v228(v231, v237, v131);
        *&v192[v191] = v142;
        v194 = v233;
        swift_storeEnumTagMultiPayload();
        v195 = *(*v236 + 312);
        v196 = v142;
        v195(v192);

        (*(v232 + 8))(v192, v194);
        (*(v246 + 8))(v193, v131);
        return;
      }
    }

    v151 = [v143 code];
    if (v151 == *MEMORY[0x1E69671E0])
    {
      goto LABEL_58;
    }

    goto LABEL_35;
  }

  v59 = v256;
  if ((v58 & 2) == 0)
  {
    return;
  }

  v238 = v56;
  v246 = v55;
  (*(*v251 + 520))(v7, v249, v250, v248, v57);
  if (v59)
  {
    return;
  }

  v61 = v246;
  v60 = v247;
  if ((*(v246 + 48))(v41, 1, v247) == 1)
  {
    (*(v38 + 8))(v41, v37);
    return;
  }

  v256 = 0;
  v83 = v238;
  (*(v61 + 32))(v238, v41, v60);
  v84 = *(v61 + 16);
  v235 = (v61 + 16);
  v230 = v84;
  (v84)(v48, v83, v60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v240 + 32))(v236, v48, v241);
    v85 = v7[3];
    v86 = v244;
    v87 = v245;
    v252 = v9;
    v253 = v245;
    v88 = v242;
    v254 = v242;
    v255 = v244;
    v243 = type metadata accessor for ItemJob();
    v89 = swift_getMetatypeMetadata();
    v90 = sub_1CF656CD8(v89, v89);
    v91 = *(v90 + 52);
    v92 = (*(v90 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v93 = sub_1CF9E6D68();
    v252 = v9;
    v253 = v87;
    v254 = v88;
    v255 = v86;
    v94 = v236;
    *v95 = type metadata accessor for Materialization.EvictItem();
    v96 = sub_1CF045898(v93);
    v97 = v248;
    v98 = v256;
    v99 = (*(*v85 + 304))(v94, v96, v249, v250, v248);
    if (v98)
    {

      (*(v240 + 8))(v94, v241);
LABEL_19:
      (*(v246 + 8))(v238, v247);
      return;
    }

    v134 = v99;

    v252 = v134;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v135 = sub_1CF9E7128();
    (*(v240 + 8))(v94, v241);

    if (v135)
    {
      goto LABEL_19;
    }
  }

  else
  {
    (*(v239 + 32))(v237, v48, v243);
    v115 = v7[3];
    v117 = v244;
    v116 = v245;
    v252 = v245;
    v253 = v9;
    v118 = v242;
    v254 = v244;
    v255 = v242;
    v241 = type metadata accessor for ItemJob();
    v119 = swift_getMetatypeMetadata();
    v120 = sub_1CF656CD8(v119, v119);
    v121 = *(v120 + 52);
    v122 = (*(v120 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v123 = sub_1CF9E6D68();
    v252 = v116;
    v253 = v9;
    v124 = v237;
    v254 = v117;
    v255 = v118;
    *v125 = type metadata accessor for Materialization.EvictItem();
    v126 = sub_1CF045898(v123);
    v127 = v256;
    v128 = (*(*v115 + 312))(v124, v126, v249, v250, v248);
    if (v127)
    {

      (*(v239 + 8))(v124, v243);
      goto LABEL_19;
    }

    v136 = v128;

    v252 = v136;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v137 = sub_1CF9E7128();

    if (v137)
    {
      v138 = v250;
      v139 = v248;
      v140 = v249;
      v141 = sub_1CF66E048(v251, 0, v249, v250, v248);
      v169 = v247;
      v170 = v237;
      if (v141)
      {
        v171 = v7[2];
        v172 = v228;
        sub_1CF68DDB0(v237, v140, v138, v139, v228);
        v197 = v226;
        v198 = v227;
        v199 = (*(v226 + 48))(v172, 1, v227);
        v200 = v246;
        if (v199 == 1)
        {
          (*(v239 + 8))(v170, v243);
          (*(v200 + 8))(v238, v247);
          (*(v222 + 8))(v172, v223);
        }

        else
        {
          v256 = 0;
          v201 = v224;
          (*(v197 + 32))(v224, v172, v198);
          v202 = v201[*(type metadata accessor for ItemReconciliationHalf() + 44)];
          if (v202 == 1 || v202 == 3)
          {
            v252 = v245;
            v253 = v9;
            v254 = v117;
            v255 = v242;
            type metadata accessor for JobResult();
            type metadata accessor for ReconciliationSideMutation();
            v203 = v247;
            v204 = swift_getTupleTypeMetadata2();
            v205 = v218;
            v206 = &v218[*(v204 + 48)];
            v207 = v230;
            (v230)(v218, v238, v203);
            *v206 = v202;
            v206[1] = 5;
            *(v206 + 8) = *(v251 + 120);
            swift_storeEnumTagMultiPayload();
            v208 = v220;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v221, v205);
            (*(v219 + 8))(v205, v208);
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
            v210 = *(TupleTypeMetadata3 + 48);
            v211 = *(TupleTypeMetadata3 + 64);
            v212 = v231;
            v207(v231, v238, v203);
            v213 = v234;
            *&v212[v210] = v234;
            v212[v211] = v202 == 3;
            v214 = v233;
            swift_storeEnumTagMultiPayload();
            v215 = *(*v7 + 312);
            v216 = v213;
            v215(v212);
            (*(v232 + 8))(v212, v214);
            (*(v226 + 8))(v224, v227);
            (*(v239 + 8))(v237, v243);
            (*(v246 + 8))(v238, v203);
          }

          else
          {
            (*(v226 + 8))(v224, v227);
            (*(v239 + 8))(v237, v243);
            (*(v246 + 8))(v238, v247);
          }
        }
      }

      else
      {
        (*(v239 + 8))(v237, v243);
        (*(v246 + 8))(v238, v169);
      }

      return;
    }

    (*(v239 + 8))(v237, v243);
    v97 = v248;
  }

  _s3__C4CodeOMa_1(0);
  v252 = -1000;
  sub_1CF527CC0();
  v158 = v234;
  if (sub_1CF9E5658())
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v159 = v247;
    v160 = swift_getTupleTypeMetadata3();
    v161 = *(v160 + 48);
    v162 = *(v160 + 64);
    v163 = v231;
    v164 = v238;
    (v230)(v231, v238, v159);
    *&v163[v161] = v158;
    v163[v162] = 0;
    v165 = v233;
    swift_storeEnumTagMultiPayload();
    v166 = *(*v7 + 312);
    v167 = v158;
    v166(v163);
    (*(v232 + 8))(v163, v165);
    (*(v246 + 8))(v164, v159);
  }

  else
  {
    v168 = sub_1CF66E048(v251, 0, v249, v250, v97);
    v173 = v247;
    if ((v168 & 1) == 0)
    {
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v174 = swift_getTupleTypeMetadata3();
    v175 = *(v174 + 48);
    v176 = *(v174 + 64);
    v177 = v231;
    v178 = v238;
    (v230)(v231, v238, v173);
    v179 = v234;
    *&v177[v175] = v234;
    v177[v176] = 0;
    v180 = v233;
    swift_storeEnumTagMultiPayload();
    v181 = *(*v7 + 312);
    v182 = v179;
    v181(v177);
    (*(v232 + 8))(v177, v180);
    (*(v246 + 8))(v178, v173);
  }
}

uint64_t sub_1CF523868()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 304))(result);
  }

  return result;
}

void sub_1CF5238E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a6;
  v71 = a7;
  v69 = a5;
  v79 = a3;
  v80 = a4;
  v77 = a1;
  v9 = *(*v7 + 96);
  v74 = *(*v7 + 80);
  v75 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v67 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v67 - v20;
  v78 = v7;
  v21 = v7[4];
  v22 = *(*v21[2] + 440);

  v24 = v22(v23);

  if (v24)
  {
    (*(*a2 + 320))(v25);
    v26 = (*(v15 + 48))(v14, 1, AssociatedTypeWitness);
    v72 = v24;
    if (v26 == 1)
    {
      v27 = (*(v73 + 8))(v14, v11);
      v75 = 0;
      v73 = 0;
      v74 = 0xE000000000000000;
    }

    else
    {
      v28 = v76;
      (*(v15 + 32))(v76, v14, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      if ((*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1) == 0 && (((*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1) != 0 || (v31 = v68, sub_1CF685B34(), v66 = ((*v21)[70])(v28, v31, v69, v70, v71), (*(v15 + 8))(v31, AssociatedTypeWitness), (v66)))
      {
        v74 = 0xE500000000000000;
        v30 = 0x6873617274;
      }

      else
      {
        v74 = 0xE400000000000000;
        v30 = 1953460082;
      }

      v73 = v30;
      v75 = 0;
      v27 = (*(v15 + 8))(v28, AssociatedTypeWitness);
    }

    v32 = a2;
    v33 = (*(*a2 + 304))(v27);
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v33;
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1CF5174A4(2);
    v38 = v37;

    if (v38)
    {
      v39 = [v38 longLongValue];
    }

    else
    {
      v39 = 0;
    }

    v40 = (*(*a2 + 312))();
    if ((v40 & 0x100000000) != 0)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    sub_1CF5174A4(2);
    v44 = v43;

    if (v44)
    {
      v45 = [v44 longLongValue];
    }

    else
    {
      v45 = 0;
    }

    v46 = (*(*a2 + 288))(v81);
    v47 = LOBYTE(v81[0]);
    if (LOBYTE(v81[0]) == 4)
    {
      v48 = 0xE300000000000000;
      v49 = 4271950;
    }

    else
    {
      v65 = (*(*a2 + 296))(v46);
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v48 = 0xE700000000000000;
          v49 = 0x6B6E696C6D7973;
        }

        else
        {
          v48 = 0xE500000000000000;
          v49 = 0x7361696C61;
        }
      }

      else if (v47)
      {
        v48 = 0xE300000000000000;
        v49 = 7498084;
      }

      else if (v65 == 2 || (v65 & 1) == 0)
      {
        v48 = 0xE300000000000000;
        v49 = 6516580;
      }

      else
      {
        v48 = 0xE300000000000000;
        v49 = 6777712;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFA04600;
    strcpy((inited + 32), "operationType");
    *(inited + 46) = -4864;
    v51 = (*(*v32 + 176))();
    v52 = MEMORY[0x1E69E6158];
    *(inited + 48) = v51;
    *(inited + 56) = v53;
    *(inited + 72) = v52;
    *(inited + 80) = 0x657079546D657469;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = v49;
    *(inited + 104) = v48;
    v54 = MEMORY[0x1E69E7360];
    *(inited + 120) = v52;
    *(inited + 128) = 0x657A69536D657469;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = v39;
    *(inited + 168) = v54;
    strcpy((inited + 176), "childItemCount");
    *(inited + 191) = -18;
    *(inited + 192) = v45;
    *(inited + 216) = v54;
    strcpy((inited + 224), "commonFolder");
    *(inited + 237) = 0;
    *(inited + 238) = -5120;
    v55 = v74;
    *(inited + 240) = v73;
    *(inited + 248) = v55;
    *(inited + 264) = v52;
    strcpy((inited + 272), "connectionType");
    *(inited + 287) = -18;
    if (qword_1EDEA6EF0 != -1)
    {
      swift_once();
    }

    v56 = *(qword_1EDEBB8A0 + 16);
    sub_1CF9E7398();
    v57 = v81[1];
    *(inited + 288) = v81[0];
    *(inited + 296) = v57;
    *(inited + 312) = v52;
    *(inited + 320) = 0xD000000000000011;
    *(inited + 328) = 0x80000001CFA51ED0;
    if (__OFSUB__(v80, v79))
    {
      __break(1u);
    }

    else
    {
      v58 = MEMORY[0x1E69E6530];
      *(inited + 336) = v80 - v79;
      *(inited + 360) = v58;
      *(inited + 368) = 0x6E6F73616572;
      *(inited + 376) = 0xE600000000000000;
      v59 = v32[17];
      *(inited + 408) = MEMORY[0x1E69E6810];
      *(inited + 384) = v59;
      v60 = sub_1CF4E04E8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_arrayDestroy();
      sub_1CF7BA9CC(v60);

      v61 = sub_1CF9E6618();

      v62 = v77;
      v63 = sub_1CF9E57E8();
      v64 = v72;
      [v72 postReportWithCategory:1 type:1 payload:v61 error:v63];

      (*(*v78 + 320))(v32, v62);
    }
  }
}

void sub_1CF524248(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v210 = a2;
  v211 = a3;
  v9 = *v4;
  v199 = sub_1CF9E5CF8();
  v202 = *(v199 - 8);
  v10 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v198 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1CF9E6068();
  v197 = *(v201 - 8);
  v12 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v196 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v194 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v200 = (&v184 - v18);
  v195 = type metadata accessor for Signpost(0);
  v191 = *(v195 - 1);
  v19 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v192 = &v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v203 = &v184 - v21;
  v22 = sub_1CF9E6118();
  v206 = *(v22 - 1);
  v207 = v22;
  v23 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v184 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v184 - v31;
  v209 = v9;
  if ((*(v9 + 240))(v30))
  {
    return;
  }

  v208 = a4;
  if (*(a1 + 112) != 1)
  {
LABEL_88:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  v33 = v5;
  v34 = *(a1 + 96);
  v190 = *(a1 + 104);
  v35 = *(*v6 + 224);
  v193 = v34;

  v205 = v35(v36);
  v37 = (*(*v6 + 216))();
  v38 = *(*a1 + 488);
  v189 = v37;
  v39 = v38(v37, v6, v210, v211, v208);
  v204 = v33;
  if (v33)
  {
LABEL_4:
    v41 = v193;

    sub_1CF03D7A8(v41, v190, 1u);
    return;
  }

  v42 = v39;
  if (v40)
  {
    v43 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    sub_1CF5277FC(v42, 1);
    v44 = sub_1CF9E6108();
    v45 = sub_1CF9E7298();
    sub_1CF5276F0(v42, 1);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v213 = v211;
      *v46 = 136446466;
      v48 = sub_1CF044BA4();
      v50 = v49;

      v51 = sub_1CEFD0DF0(v48, v50, &v213);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2112;
      v212 = v42;
      v52 = v209[10];
      v53 = v209[12];
      v54 = type metadata accessor for JobLock.BlockedRuleError();
      swift_getWitnessTable();
      v55 = Error.prettyDescription.getter(v54);
      sub_1CF5276F0(v42, 1);
      *(v46 + 14) = v55;
      *v47 = v55;
      _os_log_impl(&dword_1CEFC7000, v44, v45, "🔏  job locked out of execution %{public}s by destination rules %@", v46, 0x16u);
      sub_1CEFCCC44(v47, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      v56 = v211;
      __swift_destroy_boxed_opaque_existential_1(v211);
      MEMORY[0x1D386CDC0](v56, -1, -1);
      MEMORY[0x1D386CDC0](v46, -1, -1);

      sub_1CF03D7A8(v193, v190, 1u);
    }

    else
    {
      sub_1CF5276F0(v42, 1);
      sub_1CF03D7A8(v193, v190, 1u);
    }

    (*(v206 + 8))(v32, v207);
    return;
  }

  v57 = *(a1 + 24);
  *(a1 + 24) = v39;

  v58 = v208;
  v59 = v211;
  if (v42)
  {
    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    v62 = v209;
    v61[2] = v209[10];
    v61[3] = v62[11];
    v61[4] = v59;
    v61[5] = v62[12];
    v61[6] = v62[13];
    v61[7] = v58;
    v61[8] = v60;
    v188 = a1;
    v63 = v59;
    v64 = v58;
    v66 = *(v42 + 80);
    v65 = *(v42 + 88);
    *(v42 + 80) = sub_1CF527D44;
    *(v42 + 88) = v61;

    v58 = v64;
    v59 = v63;
    a1 = v188;
    sub_1CF045404(v66);

    sub_1CF5276F0(v42, 0);
  }

  v67 = v204;
  v68 = (*(*a1 + 496))(v205, v6, v210, v59, v58);
  if (v67)
  {
    goto LABEL_4;
  }

  v70 = v68;
  if ((v69 & 1) == 0)
  {
    v86 = *(a1 + 32);
    *(a1 + 32) = v68;

    if (v70)
    {
      v87 = swift_allocObject();
      swift_weakInit();
      v88 = swift_allocObject();
      v89 = v209;
      v88[2] = v209[10];
      v90 = v211;
      v88[3] = v89[11];
      v88[4] = v90;
      v88[5] = v89[12];
      v91 = v208;
      v88[6] = v89[13];
      v88[7] = v91;
      v88[8] = v87;
      v92 = *(v70 + 80);
      v93 = *(v70 + 88);
      *(v70 + 80) = sub_1CF5276C4;
      *(v70 + 88) = v88;

      sub_1CF045404(v92);

      sub_1CF5276F0(v70, 0);
    }

    v187 = sub_1CF044BA4();
    v95 = v94;
    v96 = [objc_allocWithZone(FPLoggerScope) init];
    v97 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v98 = v96;

    v99 = sub_1CF9E6108();
    v100 = sub_1CF9E7298();
    v188 = v95;

    v101 = os_log_type_enabled(v99, v100);
    v204 = 0;
    v184 = v98;
    if (v101)
    {
      v102 = swift_slowAlloc();
      v186 = v99;
      v103 = v102;
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v213 = v105;
      *v103 = 138412546;
      v106 = [v98 fork];
      *(v103 + 4) = v106;
      *v104 = v106;
      *(v103 + 12) = 2082;
      v107 = v188;
      *(v103 + 14) = sub_1CEFD0DF0(v187, v188, &v213);
      v108 = v100;
      v109 = v186;
      _os_log_impl(&dword_1CEFC7000, v186, v108, "%@ ▶️  executing %{public}s", v103, 0x16u);
      sub_1CEFCCC44(v104, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v104, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v105);
      MEMORY[0x1D386CDC0](v105, -1, -1);
      MEMORY[0x1D386CDC0](v103, -1, -1);

      (*(v206 + 8))(v25, v207);
      v110 = v187;
    }

    else
    {

      (*(v206 + 8))(v25, v207);
      v110 = v187;
      v107 = v188;
    }

    v113 = *(a1 + 96);
    v112 = *(a1 + 104);
    *(a1 + 96) = v193;
    *(a1 + 104) = 0;
    v114 = *(a1 + 112);
    *(a1 + 112) = 2;

    sub_1CF03D7A8(v113, v112, v114);
    v115 = sub_1CF054F60(a1, v110, v107);
    v116 = *(a1 + 16);
    *(a1 + 16) = v115;

    v118 = (*(*v6 + 232))(v117);
    dispatch_group_enter(v118);

    v119 = (*(*v6 + 368))(a1);
    if ((*(*a1 + 432))(v119))
    {
      v120 = (*(*v6 + 192))();
      v121 = *(v120 + 24);
      v122 = __OFADD__(v121, 1);
      v123 = v121 + 1;
      if (v122)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      *(v120 + 24) = v123;
    }

    v124 = *(a1 + 16);
    if (v124)
    {
      v125 = *(v124 + 24);
    }

    else
    {
      v125 = 9;
    }

    v126 = v6[4];
    if (sub_1CF056558())
    {
      if (v125 <= 4)
      {
        if (v125 > 1)
        {
          if (v125 != 2)
          {
            if (v125 != 3)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          }

          goto LABEL_40;
        }

        if (!v125)
        {
          goto LABEL_52;
        }

        goto LABEL_54;
      }

      if (v125 > 6)
      {
        if (v125 == 7)
        {
LABEL_62:
          v131 = "Scheduler: Async Job execution (FP generic jobs)";
          goto LABEL_63;
        }

        goto LABEL_46;
      }

      if (v125 == 5)
      {
LABEL_57:
        v130 = "Scheduler: Async Job execution (FP metadata only update)";
LABEL_61:
        v207 = v130;
        v128 = 56;
        goto LABEL_64;
      }
    }

    else
    {
      if (v125 <= 4)
      {
        if (v125 <= 1)
        {
          if (v125)
          {
LABEL_52:
            v129 = "Scheduler: Async Job execution (FS fetch content)";
LABEL_55:
            v207 = v129;
            v128 = 49;
            goto LABEL_64;
          }

LABEL_54:
          v129 = "Scheduler: Async Job execution (FP fetch content)";
          goto LABEL_55;
        }

        if (v125 == 2)
        {
LABEL_48:
          v127 = "Scheduler: Async Job execution (FP content update)";
          goto LABEL_49;
        }

        if (v125 == 3)
        {
LABEL_40:
          v127 = "Scheduler: Async Job execution (FS content update)";
LABEL_49:
          v207 = v127;
          v128 = 50;
          goto LABEL_64;
        }

        goto LABEL_57;
      }

      if (v125 <= 6)
      {
        if (v125 == 5)
        {
LABEL_60:
          v130 = "Scheduler: Async Job execution (FS metadata only update)";
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (v125 != 7)
      {
LABEL_46:
        if (v125 == 8)
        {
          v207 = "Scheduler: Async Job execution (background downloads)";
          v128 = 53;
        }

        else
        {
          v207 = "Scheduler: Async Job execution (no limit)";
          v128 = 41;
        }

LABEL_64:
        v206 = v128;
        v132 = v197;
        if (qword_1EDEAE980 != -1)
        {
          swift_once();
        }

        v133 = qword_1EDEBBE40;
        v134 = v200;
        v135 = v201;
        (*(v132 + 56))(v200, 1, 1, v201);
        v213 = 0x2065747563657865;
        v214 = 0xE800000000000000;
        MEMORY[0x1D3868CC0](v110, v188);
        v197 = v213;
        v186 = v214;
        v136 = v194;
        sub_1CEFCCBDC(v134, v194, &unk_1EC4BED20, &unk_1CFA00700);
        v137 = *(v132 + 48);
        v138 = v137(v136, 1, v135);
        v185 = v133;
        if (v138 == 1)
        {
          v139 = v133;
          v140 = v196;
          sub_1CF9E6048();
          if (v137(v136, 1, v135) != 1)
          {
            sub_1CEFCCC44(v136, &unk_1EC4BED20, &unk_1CFA00700);
          }
        }

        else
        {
          v140 = v196;
          (*(v132 + 32))(v196, v136, v135);
        }

        v141 = *(v132 + 16);
        v142 = v132;
        v143 = v203;
        v141(v203, v140, v135);
        v144 = v195;
        v145 = v185;
        *(v143 + v195[5]) = v185;
        v146 = v143 + v144[6];
        v147 = v206;
        *v146 = v207;
        *(v146 + 8) = v147;
        *(v146 + 16) = 2;
        v195 = v145;
        LODWORD(v194) = sub_1CF9E7468();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_1CF9FA450;
        *(v148 + 56) = MEMORY[0x1E69E6158];
        *(v148 + 64) = sub_1CEFD51C4();
        v149 = v186;
        *(v148 + 32) = v197;
        *(v148 + 40) = v149;
        sub_1CF9E6028();

        (*(v142 + 8))(v140, v201);
        sub_1CEFCCC44(v200, &unk_1EC4BED20, &unk_1CFA00700);
        v151 = v209[10];
        v150 = v209[11];
        v153 = v209[12];
        v152 = v209[13];
        v213 = v151;
        v214 = v150;
        v206 = v152;
        v207 = v153;
        v215 = v153;
        v216 = v152;
        type metadata accessor for ConcreteJobResult();
        v154 = sub_1CF056580();
        v155 = v198;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v157 = v156;
        v158 = v202 + 8;
        v159 = *(v202 + 8);
        v160 = (v159)(v155, v199);
        v161 = v157 * 1000000000.0;
        if (COERCE__INT64(fabs(v157 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v161 > -9.22337204e18)
        {
          if (v161 < 9.22337204e18)
          {
            v209 = v154;
            v202 = v158;
            v200 = v159;
            v201 = v161;
            *(a1 + 40) = v161;
            *(a1 + 48) = 0;
            v162 = (*(*v6 + 184))(v160);
            if (v162)
            {
              (*(*v162 + 144))(v6, a1);
            }

            v163 = v192;
            sub_1CF0568A0(v203, v192);
            v164 = (*(v191 + 80) + 104) & ~*(v191 + 80);
            v165 = (v19 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
            v166 = (v165 + 15) & 0xFFFFFFFFFFFFFFF8;
            v167 = swift_allocObject();
            v167[2] = v151;
            v167[3] = v150;
            v168 = v206;
            v169 = v207;
            v167[4] = v211;
            v167[5] = v169;
            v170 = v208;
            v167[6] = v168;
            v167[7] = v170;
            v171 = v187;
            v167[8] = a1;
            v167[9] = v171;
            v172 = v184;
            v167[10] = v188;
            v167[11] = v172;
            v167[12] = v6;
            sub_1CF042EE8(v163, v167 + v164);
            *(v167 + v165) = v201;
            v173 = v209;
            *(v167 + v166) = v209;
            v174 = *(*a1 + 504);

            v207 = v172;

            v175 = v193;
            v174(v6, v193, v173, v210, sub_1CF5276FC, v167, v211, v170);

            if (*(a1 + 112) != 2)
            {
              (*(*v6 + 304))(v176);

              sub_1CF03D7A8(v175, v190, 1u);

              sub_1CF03BA78(v203, type metadata accessor for Signpost);
              return;
            }

            v177 = v175;
            v178 = v207;
            v179 = v198;
            sub_1CF9E5CE8();
            sub_1CF9E5C98();
            v181 = v180;
            (v200)(v179, v199);
            v182 = v181 * 1000000000.0;
            if (COERCE__INT64(fabs(v181 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v183 = v203;
              if (v182 > -9.22337204e18)
              {
                if (v182 < 9.22337204e18)
                {
                  sub_1CF5215C0(a1);
                  sub_1CF03BA78(v183, type metadata accessor for Signpost);

                  sub_1CF03D7A8(v177, v190, 1u);

                  return;
                }

                goto LABEL_87;
              }

LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          goto LABEL_83;
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v131 = "Scheduler: Async Job execution (FS generic jobs)";
LABEL_63:
    v207 = v131;
    v128 = 48;
    goto LABEL_64;
  }

  v71 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  sub_1CF5277FC(v70, 1);
  v72 = sub_1CF9E6108();
  v73 = sub_1CF9E7298();
  sub_1CF5276F0(v70, 1);
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v204 = 0;
    v75 = v74;
    v76 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v213 = v211;
    *v75 = 136446466;
    v77 = sub_1CF044BA4();
    v79 = v78;

    v80 = sub_1CEFD0DF0(v77, v79, &v213);

    *(v75 + 4) = v80;
    *(v75 + 12) = 2112;
    v212 = v70;
    v81 = v209[11];
    v82 = v209[13];
    v83 = type metadata accessor for JobLock.BlockedRuleError();
    swift_getWitnessTable();
    v84 = Error.prettyDescription.getter(v83);
    sub_1CF5276F0(v70, 1);
    *(v75 + 14) = v84;
    *v76 = v84;
    _os_log_impl(&dword_1CEFC7000, v72, v73, "🔏  job locked out of execution %{public}s by source rules %@", v75, 0x16u);
    sub_1CEFCCC44(v76, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v76, -1, -1);
    v85 = v211;
    __swift_destroy_boxed_opaque_existential_1(v211);
    MEMORY[0x1D386CDC0](v85, -1, -1);
    MEMORY[0x1D386CDC0](v75, -1, -1);

    sub_1CF03D7A8(v193, v190, 1u);
  }

  else
  {
    sub_1CF03D7A8(v193, v190, 1u);

    sub_1CF5276F0(v70, 1);
  }

  (*(v206 + 8))(v28, v207);
  v111 = *(a1 + 24);
  *(a1 + 24) = 0;
}

void sub_1CF525924(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15)
{
  v199 = a7;
  v202 = a4;
  v197 = a3;
  v195 = a2;
  v19 = sub_1CF9E6118();
  v20 = *(v19 - 8);
  v204 = v19;
  v205 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v201 = &v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v183 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v200 = (&v183 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v198 = &v183 - v29;
  v189 = sub_1CF9E53C8();
  v187 = *(v189 - 8);
  v30 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v183 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1CF9E79E8();
  v190 = *(v194 - 8);
  v32 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v183 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1CF9E5268();
  v192 = *(v34 - 8);
  v35 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5CF8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v183 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = a6;
  if (*(a6 + 112) != 2)
  {
    v56 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v57 = a5;

    v58 = sub_1CF9E6108();
    v59 = sub_1CF9E72B8();

    v60 = a5;
    if (os_log_type_enabled(v58, v59))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v209 = v62;
      *v61 = 136446466;
      *(v61 + 4) = sub_1CEFD0DF0(v199, a8, &v209);
      *(v61 + 12) = 2080;
      if (v60)
      {
        swift_getErrorValue();
        v63 = Error.prettyDescription.getter(v213);
        v64 = [v63 description];

        v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v67 = v66;
      }

      else
      {
        v67 = 0xE300000000000000;
        v65 = 7104878;
      }

      v121 = sub_1CEFD0DF0(v65, v67, &v209);

      *(v61 + 14) = v121;
      _os_log_impl(&dword_1CEFC7000, v58, v59, "%{public}s completion was called twice, second time with %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v62, -1, -1);
      MEMORY[0x1D386CDC0](v61, -1, -1);
    }

    (*(v205 + 8))(v25, v204);
    if (!v60)
    {
LABEL_93:

      sub_1CF513248("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Database+JobExecution.swift", 111, 2, 311, v199, a8);
    }

    v209 = v60;
    v122 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    type metadata accessor for PQLSqliteError(0);
    if (swift_dynamicCast())
    {

      return;
    }

LABEL_92:

    goto LABEL_93;
  }

  v191 = a5;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v44 = v43;
  (*(v39 + 8))(v42, v38);
  v45 = v44 * 1000000000.0;
  if (COERCE__INT64(fabs(v44 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v186 = a14;
  v184 = a12;
  v185 = a11;
  v196 = a9;
  v46 = v45;
  v47 = v203;
  (*(*a10 + 376))(v203);
  sub_1CEFCCBDC(a1, &v207, &unk_1EC4C1B30, &qword_1CFA05300);
  v199 = v46;
  if (v208)
  {
    sub_1CF054E7C(&v207, &v209);
    v48 = v191;
    v183 = a15;
    v200 = a13;
    if (v191)
    {
      v49 = v211;
      v50 = v212;
      v51 = __swift_project_boxed_opaque_existential_1(&v209, v211);
      v52 = v48;
      sub_1CF5238E8(v48, v47, v184, v199, v51, v49, *(v50 + 8));
      *&v207 = v48;
      v53 = v48;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v55 = swift_dynamicCast();
      v198 = v54;
      if (v55)
      {
        (*(v192 + 8))(v37, v34);
      }

      else
      {

        *&v207 = v48;
        v97 = v48;
        v98 = v193;
        v99 = v194;
        if (!swift_dynamicCast())
        {

          *&v207 = v48;
          v123 = v48;
          type metadata accessor for NSFileProviderError(0);
          v124 = swift_dynamicCast();
          v100 = v201;
          if (v124)
          {
          }

          else
          {

            *&v207 = v48;
            v154 = v48;
            v155 = v188;
            v156 = v189;
            if (!swift_dynamicCast())
            {

              (*(*a10 + 496))(v48, 0, "execute(_:with:)", 16, 2);
              v102 = 0;
              v195 = 0;
LABEL_25:
              v103 = *(v47 + 96);
              v104 = *(v47 + 104);
              *(v47 + 96) = v102;
              *(v47 + 104) = 0;
              v105 = *(v47 + 112);
              *(v47 + 112) = 3;
              v106 = v102;
              sub_1CF03D7A8(v103, v104, v105);
              *(v47 + 40) = 0;
              *(v47 + 48) = 1;
              v107 = sub_1CF044BA4();
              v109 = v108;
              v110 = fpfs_current_or_default_log();
              sub_1CF9E6128();
              v111 = v202;

              v112 = v196;
              v113 = sub_1CF9E6108();
              v114 = sub_1CF9E72A8();

              LODWORD(v194) = v114;
              if (!os_log_type_enabled(v113, v114))
              {

                (*(v205 + 8))(v100, v204);
                v120 = v199;
LABEL_47:
                *&v207 = v102;
                v133 = v102;
                v134 = swift_dynamicCast();
                v47 = v203;
                if (v134)
                {

                  __swift_destroy_boxed_opaque_existential_1(&v209);
                  v135 = v47;
                  v136 = v112;
LABEL_79:
                  v152 = a10;
                  v153 = v185;
                  goto LABEL_80;
                }

                __swift_project_boxed_opaque_existential_1(&v209, v211);
                v137 = v195;
                sub_1CF5215C0(v47);
                if (v137)
                {

                  __swift_destroy_boxed_opaque_existential_1(&v209);
                  (*(*a10 + 496))(v137, 1, "execute(_:with:)", 16, 2);

LABEL_78:
                  (*(*a10 + 304))();
                  v135 = v47;
                  v136 = v196;
                  goto LABEL_79;
                }

                v138 = v211;
                v139 = v212;
                v140 = __swift_project_boxed_opaque_existential_1(&v209, v211);
                v141 = v200;
                sub_1CF521CC0(v47, v102, v200, v140, v138, *(v139 + 8));
                v142 = v211;
                v143 = v212;
                v144 = __swift_project_boxed_opaque_existential_1(&v209, v211);
                sub_1CF527808(v47, v141, v144, v142, *(v143 + 8));

LABEL_77:
                v180 = v211;
                v181 = v212;
                v182 = __swift_project_boxed_opaque_existential_1(&v209, v211);
                sub_1CF521850(v200, v120, v182, v180, v181);
                __swift_destroy_boxed_opaque_existential_1(&v209);
                goto LABEL_78;
              }

              v115 = swift_slowAlloc();
              a8 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              v206[0] = v192;
              *v115 = 138413058;
              v193 = v112;
              v116 = [v112 adopt];
              *(v115 + 4) = v116;
              *a8 = v116;
              *(v115 + 12) = 2082;
              v117 = sub_1CEFD0DF0(v107, v109, v206);

              *(v115 + 14) = v117;
              *(v115 + 22) = 2082;
              if (v111)
              {
                *&v207 = 0x20209286E220;
                *(&v207 + 1) = 0xA600000000000000;
                MEMORY[0x1D3868CC0](v197, v111);
                v119 = *(&v207 + 1);
                v118 = v207;
              }

              else
              {
                v118 = 0;
                v119 = 0xE000000000000000;
              }

              v125 = sub_1CEFD0DF0(v118, v119, v206);

              *(v115 + 24) = v125;
              *(v115 + 32) = 2082;
              v120 = v199;
              v126 = v199 - v184;
              if (!__OFSUB__(v199, v184))
              {
                if ((v126 & 0x8000000000000000) == 0)
                {
                  v127 = 0;
                  v128 = 0xE000000000000000;
LABEL_46:
                  v130 = sub_1CF04F854(v126);
                  *&v207 = v127;
                  *(&v207 + 1) = v128;
                  MEMORY[0x1D3868CC0](v130);

                  v131 = sub_1CEFD0DF0(v207, *(&v207 + 1), v206);

                  *(v115 + 34) = v131;
                  _os_log_impl(&dword_1CEFC7000, v113, v194, "%@ ‼️  done executing %{public}s%{public}s [duration %{public}s]", v115, 0x2Au);
                  sub_1CEFCCC44(a8, &qword_1EC4BE350, &unk_1CF9FC3B0);
                  MEMORY[0x1D386CDC0](a8, -1, -1);
                  v132 = v192;
                  swift_arrayDestroy();
                  MEMORY[0x1D386CDC0](v132, -1, -1);
                  MEMORY[0x1D386CDC0](v115, -1, -1);

                  (*(v205 + 8))(v201, v204);
                  v48 = v191;
                  v112 = v193;
                  goto LABEL_47;
                }

                v129 = __OFSUB__(0, v126);
                v126 = v184 - v199;
                if (!v129)
                {
                  v128 = 0xE100000000000000;
                  v127 = 45;
                  goto LABEL_46;
                }

                goto LABEL_89;
              }

              goto LABEL_86;
            }

            (*(v187 + 8))(v155, v156);
          }

LABEL_24:
          swift_willThrow();
          v101 = v48;
          v195 = 0;
          v102 = v48;
          goto LABEL_25;
        }

        (*(v190 + 8))(v98, v99);
      }

      v100 = v201;
      goto LABEL_24;
    }

    v89 = v195;
    if (!v195)
    {
      v96 = 4;
      v92 = 1;
      v95 = v198;
      goto LABEL_65;
    }

    v90 = *(*v195 + 88);

    v92 = v90(v91);
    if (v94 > 1u)
    {
      if (v94 == 2)
      {
        sub_1CF1DBCF0(v92, v93, 2);
        v95 = v198;
      }

      else
      {
        v95 = v198;
        if (!(v92 | v93))
        {
          v96 = 1;
          v92 = v89;
          v89 = 0;
LABEL_65:
          v158 = *(v47 + 96);
          v157 = *(v47 + 104);
          *(v47 + 96) = v92;
          *(v47 + 104) = v89;
          v159 = *(v47 + 112);
          *(v47 + 112) = v96;
          sub_1CF03D7A8(v158, v157, v159);
          *(v47 + 40) = 0;
          *(v47 + 48) = 1;
          v160 = sub_1CF044BA4();
          v162 = v161;
          v163 = fpfs_current_or_default_log();
          v164 = sub_1CF9E6128();
          v165 = (*(*v47 + 424))(v164);
          v166 = sub_1CF9E6108();
          if (os_log_type_enabled(v166, v165))
          {
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v206[0] = v169;
            *v167 = 138413058;
            v170 = [v196 adopt];
            *(v167 + 4) = v170;
            *v168 = v170;
            a8 = 2082;
            *(v167 + 12) = 2082;
            v171 = sub_1CEFD0DF0(v160, v162, v206);

            *(v167 + 14) = v171;
            *(v167 + 22) = 2082;
            if (v202)
            {
              *&v207 = 0x20209286E220;
              *(&v207 + 1) = 0xA600000000000000;
              MEMORY[0x1D3868CC0](v197);
              v173 = *(&v207 + 1);
              v172 = v207;
            }

            else
            {
              v172 = 0;
              v173 = 0xE000000000000000;
            }

            v174 = sub_1CEFD0DF0(v172, v173, v206);

            *(v167 + 24) = v174;
            *(v167 + 32) = 2082;
            v175 = v199 - v184;
            if (__OFSUB__(v199, v184))
            {
              goto LABEL_88;
            }

            if (v175 < 0)
            {
              v129 = __OFSUB__(0, v175);
              v175 = v184 - v199;
              if (v129)
              {
LABEL_91:
                __break(1u);
                goto LABEL_92;
              }

              v177 = 0xE100000000000000;
              v176 = 45;
            }

            else
            {
              v176 = 0;
              v177 = 0xE000000000000000;
            }

            v178 = sub_1CF04F854(v175);
            *&v207 = v176;
            *(&v207 + 1) = v177;
            MEMORY[0x1D3868CC0](v178);

            v179 = sub_1CEFD0DF0(v207, *(&v207 + 1), v206);

            *(v167 + 34) = v179;
            _os_log_impl(&dword_1CEFC7000, v166, v165, "%@ ✅  done executing %{public}s%{public}s [duration %{public}s]", v167, 0x2Au);
            sub_1CEFCCC44(v168, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v168, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v169, -1, -1);
            MEMORY[0x1D386CDC0](v167, -1, -1);

            (*(v205 + 8))(v198, v204);
            v47 = v203;
          }

          else
          {

            (*(v205 + 8))(v95, v204);
          }

          __swift_project_boxed_opaque_existential_1(&v209, v211);
          v120 = v199;
          sub_1CF5215C0(v47);
          goto LABEL_77;
        }
      }
    }

    else
    {
      v95 = v198;
      if (v94)
      {
        v96 = 0;
        goto LABEL_65;
      }
    }

    v96 = 0;
    v92 = 256;
    goto LABEL_65;
  }

  sub_1CEFCCC44(&v207, &unk_1EC4C1B30, &qword_1CFA05300);
  v68 = v191;
  v69 = v191;
  if (!v191)
  {
    sub_1CF24CD3C();
    v69 = swift_allocError();
    *v70 = 4;
    *(v70 + 8) = 0u;
    *(v70 + 24) = 0u;
    *(v70 + 40) = 0;
    *(v70 + 48) = 9;
  }

  v71 = *(v47 + 96);
  v72 = *(v47 + 104);
  *(v47 + 96) = v69;
  *(v47 + 104) = 0;
  v73 = *(v47 + 112);
  *(v47 + 112) = 3;
  v74 = v68;
  sub_1CF03D7A8(v71, v72, v73);
  *(v47 + 40) = 0;
  *(v47 + 48) = 1;
  v75 = fpfs_current_or_default_log();
  v76 = v200;
  sub_1CF9E6128();
  v77 = v202;

  v78 = v196;
  v79 = sub_1CF9E6108();
  v80 = sub_1CF9E72A8();

  if (os_log_type_enabled(v79, v80))
  {
    v183 = a15;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    *&v207 = v201;
    *v81 = 138413058;
    v83 = [v78 adopt];
    *(v81 + 4) = v83;
    *v82 = v83;
    a8 = 2082;
    *(v81 + 12) = 2082;
    v84 = sub_1CF044BA4();
    v86 = sub_1CEFD0DF0(v84, v85, &v207);

    *(v81 + 14) = v86;
    *(v81 + 22) = 2082;
    if (v77)
    {
      v209 = 0x20209286E220;
      v210 = 0xA600000000000000;
      MEMORY[0x1D3868CC0](v197, v77);
      v87 = v209;
      v88 = v210;
    }

    else
    {
      v87 = 0;
      v88 = 0xE000000000000000;
    }

    v145 = sub_1CEFD0DF0(v87, v88, &v207);

    *(v81 + 24) = v145;
    *(v81 + 32) = 2082;
    v146 = v199 - v184;
    if (__OFSUB__(v199, v184))
    {
      goto LABEL_87;
    }

    if (v146 < 0)
    {
      v129 = __OFSUB__(0, v146);
      v146 = v184 - v199;
      if (v129)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v148 = 0xE100000000000000;
      v147 = 45;
    }

    else
    {
      v147 = 0;
      v148 = 0xE000000000000000;
    }

    v149 = sub_1CF04F854(v146);
    v209 = v147;
    v210 = v148;
    MEMORY[0x1D3868CC0](v149);

    v150 = sub_1CEFD0DF0(v209, v210, &v207);

    *(v81 + 34) = v150;
    _os_log_impl(&dword_1CEFC7000, v79, v80, "%@ ‼️  done executing %{public}s%{public}s [duration %{public}s]", v81, 0x2Au);
    sub_1CEFCCC44(v82, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v82, -1, -1);
    v151 = v201;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v151, -1, -1);
    MEMORY[0x1D386CDC0](v81, -1, -1);

    (*(v205 + 8))(v200, v204);
    v47 = v203;
  }

  else
  {

    (*(v205 + 8))(v76, v204);
  }

  v135 = v47;
  v136 = v78;
  v152 = a10;
  v153 = v185;
LABEL_80:
  sub_1CF526F2C(v135, v136, v152, v153);
}

uint64_t sub_1CF526F2C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = fpfs_current_or_default_log();
  v14 = sub_1CF9E6128();
  v15 = (*(*a1 + 424))(v14);
  v16 = sub_1CF9E6108();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v41 = v8;
    v18 = a4;
    v19 = a2;
    v20 = v17;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v19;
    a4 = v18;
    v8 = v41;
    v23 = [v22 leave];
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_1CEFC7000, v16, v15, "%@", v20, 0xCu);
    sub_1CEFCCC44(v21, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v21, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);
  }

  v24 = (*(v9 + 8))(v12, v8);
  v25 = (*(*a3 + 232))(v24);
  dispatch_group_leave(v25);

  v26 = a1[4];
  a1[4] = 0;

  v27 = a1[3];
  a1[3] = 0;

  if (((*(*a1 + 432))(v28) & 1) == 0)
  {
    goto LABEL_6;
  }

  result = (*(*a3 + 192))();
  v30 = *(result + 24);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (!v31)
  {
    *(result + 24) = v32;

LABEL_6:
    v33 = a1[2];
    a1[2] = 0;

    sub_1CF9E7458();
    v34 = type metadata accessor for Signpost(0);
    v35 = *(v34 + 24);
    v36 = *(a4 + *(v34 + 20));
    v37 = *(a4 + v35);
    v38 = *(a4 + v35 + 8);
    v39 = *(a4 + v35 + 16);
    return sub_1CF9E6038();
  }

  __break(1u);
  return result;
}

void sub_1CF52728C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a1 < 0)
  {
    (*(*v4 + 176))();
    sub_1CF524248(a1 & 0x7FFFFFFFFFFFFFFFLL, a2, a3, a4);
  }

  else
  {
    sub_1CF524248(a1, a2, a3, a4);
  }
}

uint64_t sub_1CF52737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _OWORD *))
{
  v7 = *v6;
  v11 = a1;
  v8 = *(v7 + 96);
  v10[0] = *(v7 + 80);
  v10[1] = v8;
  a6(255, v10);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  return sub_1CF9E6BE8();
}

void sub_1CF527444(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_autoreleasePoolPush();
  sub_1CF5215C0(v1);
  objc_autoreleasePoolPop(v2);
}

void sub_1CF5274CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = objc_autoreleasePoolPush();
  sub_1CF52756C(v11, a2, a3, a4, a5, a6, &v13);
  objc_autoreleasePoolPop(v12);
}

uint64_t sub_1CF52756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1 < 0)
  {
    (*(*a2 + 176))();
    sub_1CF5215C0(a1 & 0x7FFFFFFFFFFFFFFFLL);

    if (!v7)
    {
      return result;
    }
  }

  else
  {
    result = sub_1CF5215C0(a1);
    if (!v7)
    {
      return result;
    }
  }

  *a7 = v7;
  return result;
}

uint64_t sub_1CF5276C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_1CF523868();
}

uint64_t sub_1CF5276F0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1CF5276FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(v5 + 32);
  v12 = *(v5 + 56);
  v13 = *(type metadata accessor for Signpost(0) - 8);
  v14 = (*(v13 + 80) + 104) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF525924(a1, a2, a3, a4, a5, *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), v5 + v14, *(v5 + v15), *(v5 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), v11, v12);
}

uint64_t sub_1CF5277FC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1CF527808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v55.i64[0] = a5;
  v53 = a3;
  v54.i64[0] = a4;
  v10 = *v7;
  v11 = *(*v7 + 104);
  v49 = *(*v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v44 - v14;
  v15 = sub_1CF9E5CF8();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v10 + 96);
  v19 = *(v10 + 80);
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v44 - v24;
  if ((*(a1 + 138) & 3) != 0)
  {
    v44 = v23;
    v45 = a2;
    v26 = v7[3];
    v27 = sub_1CF66E048(a1, 0, v53, v54.i64[0], v55.i64[0]);
    if (!v6 && (v27 & 1) != 0)
    {
      v53 = 0;
      v28 = v7[4];
      v29 = sub_1CF056558();
      v30.i64[0] = v18;
      v30.i64[1] = v11;
      v31.i64[0] = v19;
      v31.i64[1] = v49;
      v54 = v31;
      v55 = v30;
      if (v29)
      {
        v56 = v31;
        v57 = v30;
        type metadata accessor for JobResult();
        v56 = v54;
        v57 = v55;
        type metadata accessor for DiskImport.ContinueDiskImport();
        sub_1CF046AB4();
        v32 = v50;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v34 = v33;
        (*(v51 + 8))(v32, v52);
        v35 = v34 * 1000000000.0;
        if (COERCE__INT64(fabs(v34 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v35 > -9.22337204e18)
          {
            if (v35 < 9.22337204e18)
            {
              v36 = sub_1CF559420(v25, 0x2000000000000000, v35, 0x10000);
              (*(v21 + 8))(v25, v44);
              sub_1CF803A0C(v45, v36);
LABEL_14:

              return;
            }

            goto LABEL_20;
          }

          goto LABEL_18;
        }

        __break(1u);
      }

      else
      {
        v56 = v31;
        v57 = v30;
        type metadata accessor for JobResult();
        v56 = vextq_s8(v54, v54, 8uLL);
        v57 = vextq_s8(v55, v55, 8uLL);
        type metadata accessor for DiskImport.ContinueDiskImport();
        v37 = v7[5];
        v38 = v48;
        sub_1CF046AB4();
        v39 = v50;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v41 = v40;
        (*(v51 + 8))(v39, v52);
        v42 = v41 * 1000000000.0;
        if (COERCE__INT64(fabs(v41 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v42 > -9.22337204e18)
          {
            if (v42 < 9.22337204e18)
            {
              v43 = sub_1CF559420(v38, 0x2000000000000000, v42, 0x10000);
              (*(v46 + 8))(v38, v47);
              sub_1CF8039C4(v45, v43);
              goto LABEL_14;
            }

LABEL_21:
            __break(1u);
            return;
          }

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }
}

unint64_t sub_1CF527CC0()
{
  result = qword_1EDEA3590;
  if (!qword_1EDEA3590)
  {
    _s3__C4CodeOMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3590);
  }

  return result;
}

uint64_t sub_1CF527D34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_1CF523868();
}

uint64_t sub_1CF527D90()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for JobLockRule();
  swift_getWitnessTable();
  sub_1CF9E66B8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
  swift_getWitnessTable();
  sub_1CF9E7AC8();
  swift_getWitnessTable();
  sub_1CF52BCF0();
  sub_1CF9E7AA8();
  swift_getWitnessTable();
  sub_1CF9E7978();
  return sub_1CF052DA4(v0, sub_1CF52BCD4);
}

uint64_t sub_1CF527F60(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 1;
      }
    }

    else if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_7;
    }

LABEL_11:
    (*(v2 + 8))(v5, a1);
    return 1;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *(a1 + 16);
      v17 = *(a1 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v20 = sub_1CF9E75D8();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v20 - 8) + 8))(&v5[*(TupleTypeMetadata2 + 48)], v20);
      (*(*(AssociatedTypeWitness - 8) + 8))(v5, AssociatedTypeWitness);
      return 1;
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_7:
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = swift_getAssociatedTypeWitness();
    (*(*(v15 - 8) + 8))(v5, v15);
    return 0;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(TupleTypeMetadata3 + 48);
  v12 = *(*(v9 - 8) + 8);
  v12(&v5[*(TupleTypeMetadata3 + 64)], v9);
  v12(&v5[v11], v9);
  v12(v5, v9);
  return 1;
}

unint64_t sub_1CF528228(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v53[0] = *(a1 + 24);
  v53[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v53 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v53 - v20;
  v22 = *(*(a1 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v2, a1, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 0xD000000000000010;
      }

      (*(v6 + 32))(v21, v26, AssociatedTypeWitness);
      v54 = 0;
      v55 = 0xE000000000000000;
      v29 = 0x74616761706F7270;
      v30 = 0xEA00000000002865;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        (*(v6 + 32))(v21, v26, AssociatedTypeWitness);
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1CF9E7948();
        v31 = "fetchEventStream";
        v29 = 0xD000000000000014;
      }

      else
      {
        (*(v6 + 32))(v21, v26, AssociatedTypeWitness);
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1CF9E7948();
        v31 = "corrupted database: ";
        v29 = 0xD000000000000017;
      }

      v30 = v31 | 0x8000000000000000;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v32 = v6;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CF9E75D8();
      v33 = *(swift_getTupleTypeMetadata2() + 48);
      v34 = (*(v32 + 48))(&v26[v33], 1, AssociatedTypeWitness);
      v35 = *(v32 + 32);
      v35(v21, v26, AssociatedTypeWitness);
      if (v34 != 1)
      {
        v35(v9, &v26[v33], AssociatedTypeWitness);
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x286863746566, 0xE600000000000000);
        v48 = *(swift_getAssociatedConformanceWitness() + 16);
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        v46 = v54;
        v49 = *(v32 + 8);
        v49(v9, AssociatedTypeWitness);
        v49(v21, AssociatedTypeWitness);
        return v46;
      }

      v54 = 0;
      v55 = 0xE000000000000000;
      v36 = 0x6B6E556863746566;
      v37 = 0xEC000000286E776FLL;
    }

    else
    {
      (*(v6 + 32))(v21, v26, AssociatedTypeWitness);
      v54 = 0;
      v55 = 0xE000000000000000;
      v36 = 0x287473696CLL;
      v37 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v36, v37);
    v47 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v46 = v54;
    (*(v32 + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 32))(v21, v26, AssociatedTypeWitness);
      v54 = 0;
      v55 = 0xE000000000000000;
      v29 = 0x28657461657263;
      v30 = 0xE700000000000000;
LABEL_17:
      MEMORY[0x1D3868CC0](v29, v30);
      v45 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v46 = v54;
      (*(v6 + 8))(v21, AssociatedTypeWitness);
      return v46;
    }

    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v39 = *(TupleTypeMetadata3 + 48);
    v40 = *(TupleTypeMetadata3 + 64);
    v41 = *(v6 + 32);
    v41(v18, v26, AssociatedTypeWitness);
    v41(v15, &v26[v39], AssociatedTypeWitness);
    v41(v12, &v26[v40], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = *(*(AssociatedConformanceWitness + 40) + 8);
    if (sub_1CF9E6868())
    {
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x28657461647075, 0xE700000000000000);
      v44 = *(AssociatedConformanceWitness + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
    }

    else
    {
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x28657461647075, 0xE700000000000000);
      v50 = *(AssociatedConformanceWitness + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
    }

    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v46 = v54;
    v51 = *(v6 + 8);
    v51(v12, AssociatedTypeWitness);
    v51(v15, AssociatedTypeWitness);
    v51(v18, AssociatedTypeWitness);
  }

  return v46;
}

uint64_t sub_1CF528A14(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF052EF4(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF528B08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1CF9E7948();

  swift_beginAccess();
  v5 = a1[2];
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  type metadata accessor for JobLockRule();

  swift_getWitnessTable();
  v8 = sub_1CF9E6FA8();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](0x676E69646E657020, 0xEE003A6873756C46);
  swift_beginAccess();
  v11 = a1[3];

  v12 = sub_1CF9E6FA8();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  result = MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  *a2 = 0x676E696E6E75723CLL;
  a2[1] = 0xE90000000000003ALL;
  return result;
}

uint64_t sub_1CF528CD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1CF528DC4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 64) = a1;
  sub_1CF054EA0(a2, v6 + 16);
  *(v6 + 56) = a3;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  return v6;
}

uint64_t sub_1CF528E2C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 64) = a1;
  sub_1CF054EA0(a2, v3 + 16);
  *(v3 + 56) = a3;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  return v3;
}

uint64_t sub_1CF528E74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v6 = *(a2 + 56);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for JobLockRule();

  swift_getWitnessTable();
  sub_1CF9E7068();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7058();
  return swift_endAccess();
}

uint64_t sub_1CF528F8C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[5];
  v9 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
  }

  return v12 & 1;
}

void sub_1CF529078()
{
  type metadata accessor for JobLockRule();

  JUMPOUT(0x1D3868FE0);
}

void sub_1CF5290B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1CF529078();
}

uint64_t sub_1CF5290D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v22 = a3;
  v10 = type metadata accessor for JobLockRule();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v21 - v15;
  v17 = *a2;
  v18 = a2[1];
  (*(*(v10 - 8) + 16))(&v21 - v15, a1, v10, v14);
  v19 = &v16[*(TupleTypeMetadata2 + 48)];
  *v19 = v17;
  *(v19 + 1) = v18;
  v28 = v22;
  v24 = a5;
  v25 = a6;
  v26 = v16;
  v27 = v23;
  sub_1CF9E6E58();

  swift_getWitnessTable();
  LOBYTE(v10) = sub_1CF9E6BF8();
  (*(v12 + 8))(v16, TupleTypeMetadata2);
  return v10 & 1;
}

uint64_t sub_1CF5292B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for JobLockRule();
  if ((sub_1CF068CFC(a2, v5) & 1) == 0)
  {
    return 0;
  }

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_1CF52BB74(a3, *(a2 + *(TupleTypeMetadata2 + 48))) & 1;
}

uint64_t sub_1CF529354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for JobLockRule();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v15 - v8;
  (*(v10 + 16))(&v15 - v8, a1, TupleTypeMetadata2, v7);
  v11 = &v9[*(TupleTypeMetadata2 + 48)];
  v12 = *v11;

  v13 = *(v11 + 1);

  return (*(*(v4 - 8) + 32))(a2, v9, v4);
}

uint64_t sub_1CF529494(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for JobLockRule();

  swift_getWitnessTable();
  sub_1CF9E7068();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7058();
  return swift_endAccess();
}

uint64_t sub_1CF5295A8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = a2[2];
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  type metadata accessor for JobLockRule();
  swift_getWitnessTable();
  sub_1CF9E6728();
  v8 = v16;
  if (v16)
  {
    v17 = v2;
    swift_endAccess();
    result = v16 + 32;
    v10 = -*(v16 + 16);
    v11 = -1;
    while (1)
    {
      v12 = v10 + v11 != -1;
      if (v10 + v11 == -1)
      {
LABEL_6:

        return v12;
      }

      if (++v11 >= *(v8 + 16))
      {
        break;
      }

      v13 = result + 56;
      sub_1CEFCCBDC(result, v15, &qword_1EC4BE650, &qword_1CF9FE490);
      v14 = v15[48];
      sub_1CF056B84(v15);
      result = v13;
      if (v14 == 1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return result;
}

uint64_t sub_1CF529784(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v34 = *(*a1 + 88);
  v35 = v4;
  v5 = type metadata accessor for JobLockRule();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v32 - v8;
  v33 = *(v5 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  swift_beginAccess();
  v12 = *(a1 + 24);
  swift_getWitnessTable();
  sub_1CF9E6728();
  v13 = v37;
  v14 = v38;
  result = swift_endAccess();
  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    (*(v33 + 16))(v11, a2, v5);
    v18 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v18 = v13;
    }

    v37 = v18;
    v38 = v17;
    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    v19 = [*(a1 + 40) allObjects];
    type metadata accessor for JobLockAggregator();
    v20 = sub_1CF9E6D48();

    if (sub_1CF9E6DF8())
    {
      v34 = a2;
      v35 = v5;
      v33 += 8;
      v21 = 4;
      do
      {
        v22 = v21 - 4;
        v23 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v23)
        {
          v24 = *(v20 + 8 * v21);

          v26 = __OFADD__(v22, 1);
          v27 = v21 - 3;
          if (v26)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v25 = sub_1CF9E7998();
          v24 = v25;
          v26 = __OFADD__(v22, 1);
          v27 = v21 - 3;
          if (v26)
          {
LABEL_15:
            __break(1u);
          }
        }

        MEMORY[0x1EEE9AC00](v25);
        v28 = v34;
        *(&v32 - 2) = v24;
        *(&v32 - 1) = v28;

        v30 = v36;
        v31 = TupleTypeMetadata2;
        sub_1CF052DA4(v29, sub_1CF52BC78);

        (*v33)(&v30[*(v31 + 48)], v35);
        ++v21;
      }

      while (v27 != sub_1CF9E6DF8());
    }
  }

  return result;
}

uint64_t sub_1CF529B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = type metadata accessor for JobLockRule();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v8 + 16))(v11, a2, v7);
  swift_beginAccess();
  swift_getWitnessTable();
  sub_1CF9E7068();
  v13 = sub_1CF9E6FF8();
  result = swift_endAccess();
  *a3 = v13 & 1;
  return result;
}

uint64_t sub_1CF529D34(void *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = type metadata accessor for JobLockRule();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  swift_beginAccess();
  v11 = a1[3];
  swift_getWitnessTable();
  sub_1CF9E6728();
  v12 = v18;
  if (!v18)
  {
    return swift_endAccess();
  }

  v13 = v19;
  result = swift_endAccess();
  v15 = __OFSUB__(v13, 1);
  v16 = v13 - 1;
  if (!v15)
  {
    if (*(v12 + 16) | v16)
    {
      (*(v7 + 16))(v10, a2, v6);
      v18 = v12;
      v19 = v16;
    }

    else
    {

      (*(v7 + 16))(v10, a2, v6);
      v18 = 0;
      v19 = 0;
    }

    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF529F94@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[3];
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  v8 = type metadata accessor for JobLockRule();

  WitnessTable = swift_getWitnessTable();
  LOBYTE(v8) = MEMORY[0x1D3868960](v5, v8, &type metadata for JobLockPendingFlushStatus, WitnessTable);

  *a2 = (v8 & 1) == 0;
  return result;
}

uint64_t sub_1CF52A0C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v9 = a1[2];
  v7 = *(v4 + 80);
  v8 = *(v4 + 88);
  type metadata accessor for JobLockRule();

  swift_getWitnessTable();
  sub_1CF9E6708();
  swift_getWitnessTable();
  v5 = sub_1CF9E6BF8();

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_1CF52A208(uint64_t a1)
{
  v3 = type metadata accessor for JobLockRule();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = v17 - v7;
  if (sub_1CF068CFC(a1, v3))
  {
    v18 = v3;
    v20 = v1;
    (*(v5 + 16))(v8, a1, TupleTypeMetadata2);
    v9 = &v8[*(TupleTypeMetadata2 + 48)];
    v10 = *v9;
    v17[1] = *(v9 + 1);
    result = v10 + 32;
    v12 = -*(v10 + 16);
    v13 = -1;
    while (1)
    {
      v14 = v12 + v13 != -1;
      if (v12 + v13 == -1)
      {
LABEL_6:

        (*(*(v18 - 8) + 8))(v8);
        return v14;
      }

      if (++v13 >= *(v10 + 16))
      {
        break;
      }

      v15 = result + 56;
      sub_1CEFCCBDC(result, v19, &qword_1EC4BE650, &qword_1CF9FE490);
      v16 = v19[48];
      sub_1CF056B84(v19);
      result = v15;
      if (v16 == 1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CF52A454(void (*a1)(uint64_t *__return_ptr, void *), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = objc_sync_enter(v4);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v12 = v4;
    fp_preconditionFailure(_:file:line:)(a2, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a1(&v13, v4);
  v9 = objc_sync_exit(v4);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = v4;
    fp_preconditionFailure(_:file:line:)(a4, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v13;
}

uint64_t sub_1CF52A598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1CF9E7948();

  swift_beginAccess();
  v5 = a1[2];
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  type metadata accessor for JobLockRule();

  swift_getWitnessTable();
  sub_1CF9E6698();

  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  result = MEMORY[0x1D3868CC0](0x2065766974636120, 0xED000073656C7572);
  *a2 = 0x202092949FF0;
  a2[1] = 0xA600000000000000;
  return result;
}

uint64_t sub_1CF52A704(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = a1[2];
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for JobLockRule();
  swift_getWitnessTable();
  v9[5] = nullsub_1(v3);
  v6 = sub_1CF9E66B8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3868E50](v9, v6, WitnessTable);
  sub_1CF9E7978();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1BB0, &unk_1CFA04800);
  swift_getWitnessTable();
  sub_1CF52BCF0();
  sub_1CF9E7C58();
}

uint64_t sub_1CF52A8BC()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v4 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v3, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF52AA00(v0);
  result = objc_sync_exit(v0);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v3, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

uint64_t sub_1CF52AA00(void *a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = type metadata accessor for JobLockRule();
  swift_getTupleTypeMetadata2();
  v5 = sub_1CF9E6DA8();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1CF04F294(v5, v4, &type metadata for JobLockRuleAssociatedJobs, WitnessTable);

  swift_beginAccess();
  v8 = a1[2];
  a1[2] = v7;

  sub_1CF9E6E58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v11 = sub_1CF9E6DA8();
  v12 = sub_1CF04F294(v11, v10, TupleTypeMetadata2, MEMORY[0x1E69E6168]);

  swift_beginAccess();
  v13 = a1[4];
  a1[4] = v12;
}

uint64_t sub_1CF52ABA0(void *a1, void *a2, int a3)
{
  v59 = a3;
  v65 = a2;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = type metadata accessor for JobLockRule();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v57 - v10;
  v74 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = sub_1CF9E75D8();
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v57 - v16;
  swift_beginAccess();
  v58 = a1;
  v17 = a1[2];
  v18 = *(v17 + 64);
  v60 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v69 = TupleTypeMetadata2 - 8;
  v70 = TupleTypeMetadata2;
  v61 = v7 + 16;
  v72 = (v7 + 32);
  v66 = (v12 + 32);
  v62 = v7;
  v63 = v17;
  v64 = (v7 + 8);

  v24 = 0;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
      v26 = v70;
LABEL_12:
      v30 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v31 = v30 | (v25 << 6);
      v33 = v62;
      v32 = v63;
      v35 = v73;
      v34 = v74;
      (*(v62 + 16))(v73, *(v63 + 48) + *(v62 + 72) * v31, v74);
      v36 = *(v32 + 56);
      v37 = *(v26 + 48);
      v38 = *(v33 + 32);
      v76 = *(v36 + 16 * v31);
      v39 = v71;
      v38(v71, v35, v34);
      *&v39[v37] = v76;
      v29 = v39;
      v40 = *(v26 - 8);
      (*(v40 + 56))(v29, 0, 1, v26);

      v28 = v25;
LABEL_13:
      v41 = v67;
      (*v66)(v67, v29, v68);
      if ((*(v40 + 48))(v41, 1, v26) == 1)
      {
        break;
      }

      v42 = &v41[*(v26 + 48)];
      *&v76 = v28;
      v44 = *v42;
      v43 = *(v42 + 1);
      v45 = v73;
      v46 = v74;
      (*v72)(v73, v41, v74);
      v47 = v65[3];
      v79 = v65[4];
      v75 = __swift_project_boxed_opaque_existential_1(v65, v47);
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_1CF9E7948();
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x8FB8EFB696E2203ALL, 0xA900000000000020);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
      v49 = MEMORY[0x1D3868FE0](v44, v48);
      MEMORY[0x1D3868CC0](v49);

      MEMORY[0x1D3868CC0](0x208F949FF02020, 0xA700000000000000);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      v51 = MEMORY[0x1D3868FE0](v43, v50);
      MEMORY[0x1D3868CC0](v51);

      sub_1CF4FB2BC(v77, v78, v47, v79);

      result = (*v64)(v45, v46);
      v24 = v76;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    if (v59)
    {
      v52 = v65;
      v53 = v65[3];
      v54 = v65[4];
      __swift_project_boxed_opaque_existential_1(v65, v53);
      sub_1CF4FB2BC(0x2064656B636F6C62, 0xED00003A73626F6ALL, v53, v54);
      v55 = v52[3];
      v56 = v52[4];
      __swift_project_boxed_opaque_existential_1(v52, v55);
      return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF52BD74, v58, v55, MEMORY[0x1E69E7CA8] + 8, v56);
    }
  }

  else
  {
LABEL_5:
    if (v22 <= v24 + 1)
    {
      v27 = v24 + 1;
    }

    else
    {
      v27 = v22;
    }

    v28 = v27 - 1;
    v26 = v70;
    v29 = v71;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v40 = *(v70 - 8);
        (*(v40 + 56))(v71, 1, 1, v70);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v60 + 8 * v25);
      ++v24;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF52B220(void *a1, uint64_t *a2)
{
  v22 = *a2;
  swift_beginAccess();
  v3 = a2[4];
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v24 = v3;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(v24 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v24 + 56) + v13);
    v19 = *v17;
    v18 = v17[1];
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);

    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](v16, v15);

    MEMORY[0x1D3868CC0](0x3A73656C7572203ALL, 0xE900000000000020);
    v20 = *(v22 + 80);
    v21 = *(v22 + 88);
    type metadata accessor for JobLockRule();
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7FE8();

    MEMORY[0x1D3868CC0](0x656B636F6C62202CLL, 0xEE00203A79622064);
    sub_1CF9E7FE8();

    sub_1CF4FB2BC(0, 0xE000000000000000, v25, v26);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF52B49C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return v0;
}

uint64_t sub_1CF52B4D4()
{
  sub_1CF52B49C();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF52B5A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (v6 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    sub_1CF9E75D8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata2();
    if (v7 > 0x3F)
    {
      return TupleTypeMetadata3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1CF52B694(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  v11 = (v9 + v10) & ~v10;
  v12 = ((v9 + v10 + v11) & ~v10) + v9;
  if (v12 <= v9)
  {
    v12 = *(v8 + 64);
  }

  v13 = *(v8 + 84) == 0;
  v14 = v11 + v9;
  if (v13)
  {
    ++v14;
  }

  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v9 > v14)
  {
    v14 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_31;
  }

  v15 = v14 + 1;
  v16 = 8 * (v14 + 1);
  if ((v14 + 1) <= 3)
  {
    v19 = ((a2 + ~(-1 << v16) - 248) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_31:
      v21 = *(a1 + v14);
      if (v21 >= 8)
      {
        return (v21 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_20:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return (v15 | v20) + 249;
}

void sub_1CF52B844(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 80);
  v12 = (v10 + v11) & ~v11;
  v13 = ((v10 + v11 + v12) & ~v11) + v10;
  if (v13 <= v10)
  {
    v13 = *(v9 + 64);
  }

  v14 = *(v9 + 84) == 0;
  v15 = v12 + v10;
  if (v14)
  {
    ++v15;
  }

  if (v15 <= v13)
  {
    v15 = v13;
  }

  if (v10 <= v15)
  {
    v10 = v15;
  }

  v16 = v10 + 1;
  if (a3 < 0xF9)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 248) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xF8)
  {
    v18 = a2 - 249;
    if (v16 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v10 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_45:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v10] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_30;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

uint64_t sub_1CF52BB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1CF529354(a1, a2);
}

uint64_t sub_1CF52BB50(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF5292B4(a1, v1[4], v1[5]) & 1;
}

uint64_t sub_1CF52BB74(unint64_t a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  while (1)
  {
    if (!--v4)
    {
      return v4 != 0;
    }

    sub_1CEFCCBDC(v3, v9, &qword_1EC4BE650, &qword_1CF9FE490);
    if (v9[48] == 1)
    {
      sub_1CF056B84(v9);
      return v4 != 0;
    }

    result = sub_1CEFCCBDC(v9, v7, &qword_1EC4BE650, &qword_1CF9FE490);
    if (v8)
    {
      break;
    }

    v3 += 56;
    v6 = v7[5];
    sub_1CF056B84(v9);
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v6 > a1)
    {
      return v4 != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF52BCB0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1CF52A208(a1) & 1;
}

unint64_t sub_1CF52BCF0()
{
  result = qword_1EDEA3798;
  if (!qword_1EDEA3798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3798);
  }

  return result;
}

uint64_t sub_1CF52BDB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF52BE40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CF52BEB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v6 = *v4;
  v25 = *(*v4 + 632);
  v24 = v6[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - v11;
  (*(v8 + 16))(&v23 - v11, a1, AssociatedTypeWitness, v10);
  v13 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = v24;
  *(v16 + 3) = v6[78];
  *(v16 + 4) = v25;
  *(v16 + 5) = v6[80];
  (*(v8 + 32))(&v16[v13], v12, AssociatedTypeWitness);
  v17 = v26;
  v18 = v27;
  *&v16[v14] = v26;
  *&v16[v15] = v4;
  v19 = &v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8];
  v20 = v28;
  *v19 = v18;
  v19[1] = v20;
  sub_1CEFD09A0(v17);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1580, &qword_1CFA0A248);
  sub_1CF92E44C("propagateToFP(itemID:request:completion:)", 41, 2u, sub_1CF045408, 0, v18, v20, sub_1CF54EAC8, v16, v21);
}

uint64_t sub_1CF52C114(uint64_t a1, int a2, int a3, int a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, char *a9)
{
  v10 = v9;
  v101 = a8;
  v96 = a7;
  v94 = a6;
  v95 = a4;
  v92 = a2;
  v93 = a3;
  v13 = *v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v91 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v99 = *(v17 - 8);
  v18 = *(v99 + 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v100 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v82 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v22 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v82 - v23;
  v24 = sub_1CF9E6118();
  v89 = *(v24 - 8);
  v90 = v24;
  v25 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a5);
  sub_1CEFD09A0(a5);

  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7298();
  v31 = os_log_type_enabled(v29, v30);
  v102 = a5;
  v97 = a1;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v86 = v18;
    v33 = v32;
    v34 = swift_slowAlloc();
    v85 = v34;
    v103[0] = v34;
    *v33 = 136315394;
    v35 = v9;
    v36 = sub_1CF554E8C(v34);
    v38 = v37;

    v39 = sub_1CEFD0DF0(v36, v38, v103);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    v10 = v35;
    v40 = sub_1CF665B0C(v102, v13[77], v13[78], v13[79], v13[80]);
    v42 = v41;
    sub_1CF540FDC(v102);
    sub_1CF540FDC(v102);
    v43 = sub_1CEFD0DF0(v40, v42, v103);
    a5 = v102;

    *(v33 + 14) = v43;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "Request to materialize content of itemID %s reason %s", v33, 0x16u);
    v44 = v85;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v44, -1, -1);
    v45 = v33;
    v18 = v86;
    MEMORY[0x1D386CDC0](v45, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a5);
    sub_1CF540FDC(a5);
  }

  (*(v89 + 8))(v27, v90);
  if (((a5 >> 58) & 0x3C | (a5 >> 1) & 3) == 2)
  {
    v46 = swift_projectBox();
    v47 = v88;
    sub_1CEFCCBDC(v46, v88, &unk_1EC4C4F40, qword_1CFA0F4C0);
    v48 = *(v47 + 8);

    v49 = v87;
    v50 = *(v87 + 48);

    v51 = *(v47 + *(v49 + 80));
    v52 = sub_1CF9E5A58();
    (*(*(v52 - 8) + 8))(v47 + v50, v52);
  }

  else
  {
    v51 = 0;
  }

  v53 = v91;
  v91 = a9;
  sub_1CEFCCBDC(v10 + qword_1EDEBBC18, v53, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v54 = type metadata accessor for TelemetrySignposter(0);
  v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
  v98 = v10;
  if (v55 == 1)
  {
    sub_1CEFCCC44(v53, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v56 = 1;
  }

  else
  {
    sub_1CF519DE8(v51, v21);
    sub_1CF007C58(v53, type metadata accessor for TelemetrySignposter);
    v56 = 0;
  }

  v57 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v57 - 8) + 56))(v21, v56, 1, v57);
  v58 = v100;
  sub_1CEFCCBDC(v21, v100, qword_1EC4C1588, &unk_1CFA0A260);
  v59 = v99[80];
  v60 = (v59 + 48) & ~v59;
  v61 = swift_allocObject();
  v62 = (v61 + ((v18 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
  v99 = v21;
  v85 = (v59 + 56) & ~v59;
  v86 = (v85 + v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v85 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v86 + 31) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = v13;
  v64 = v13[77];
  v83 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = v64;
  v61[2] = v64;
  v65 = v13[78];
  v61[3] = v65;
  v66 = v63[79];
  v61[4] = v66;
  v67 = v63[80];
  v61[5] = v67;
  sub_1CEFE55D0(v58, v61 + v60, qword_1EC4C1588, &unk_1CFA0A260);
  v68 = v91;
  *v62 = v101;
  v62[1] = v68;
  sub_1CEFCCBDC(v99, v58, qword_1EC4C1588, &unk_1CFA0A260);
  v69 = v83;
  v70 = swift_allocObject();
  *&v71 = v84;
  *(&v71 + 1) = v65;
  *&v72 = v66;
  *(&v72 + 1) = v67;
  *(v70 + 16) = v71;
  *(v70 + 32) = v72;
  v73 = v102;
  *(v70 + 48) = v102;
  sub_1CEFE55D0(v100, v70 + v85, qword_1EC4C1588, &unk_1CFA0A260);
  v74 = v70 + v87;
  *v74 = v101;
  *(v74 + 8) = v68;
  v75 = v93;
  LOBYTE(v65) = v92 & 1;
  *(v74 + 16) = v92 & 1;
  v76 = v97;
  *(v70 + v86) = v98;
  v77 = v70 + v89;
  *v77 = v76;
  *(v77 + 8) = v75 & 1;
  *(v70 + v90) = v94;
  v78 = v96;
  *(v70 + v88) = v96;
  v79 = v70 + v69;
  *v79 = sub_1CF550B04;
  *(v79 + 8) = v61;
  *(v79 + 16) = v95 & 1;

  sub_1CEFD09A0(v73);

  v80 = v78;

  sub_1CF52CB9C(v76, v65, 0, v73, sub_1CF550BD8, v70);

  return sub_1CEFCCC44(v99, qword_1EC4C1588, &unk_1CFA0A260);
}

uint64_t sub_1CF52C93C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v6 = *v4;
  v25 = *(*v4 + 640);
  v24 = v6[78];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - v11;
  (*(v8 + 16))(&v23 - v11, a1, AssociatedTypeWitness, v10);
  v13 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = v6[77];
  *(v16 + 3) = v24;
  *(v16 + 4) = v6[79];
  *(v16 + 5) = v25;
  (*(v8 + 32))(&v16[v13], v12, AssociatedTypeWitness);
  v17 = v26;
  v18 = v27;
  *&v16[v14] = v26;
  *&v16[v15] = v4;
  v19 = &v16[(v15 + 15) & 0xFFFFFFFFFFFFFFF8];
  v20 = v28;
  *v19 = v18;
  v19[1] = v20;
  sub_1CEFD09A0(v17);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1580, &qword_1CFA0A248);
  sub_1CF92E44C("propagateToFS(itemID:request:completion:)", 41, 2u, sub_1CF045408, 0, v18, v20, sub_1CF550004, v16, v21);
}

uint64_t sub_1CF52CB9C(uint64_t a1, char a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *(*v6 + 632);
  v18 = *(*v6 + 616);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  *(v14 + 32) = v17;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a4;

  sub_1CEFD09A0(a4);
  if (a2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  sub_1CF5407F0(a1, v15, a3, a4, v13, 0, sub_1CF55015C, v14);
}

uint64_t sub_1CF52CCD8@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v16, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    a1(v10);
    (*(v7 + 8))(v10, v6);
    v19 = a2[3];
  }

  v20 = a2[4];
  sub_1CF9E8238();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF52CEEC@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v16, a2[3]);
    v19 = a2[4];
    sub_1CF9E8238();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    a1(v10);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1CF52D0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  if (*(v3 + *(a1 + 56)))
  {
    v7 = 1;
  }

  else
  {
    v10 = *(*(a1 + 16) - 8);
    (*(v10 + 16))(a2);
    v6 = v10;
    v7 = 0;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t sub_1CF52D1B4(uint64_t a1)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - v9;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](980641340, 0xE400000000000000);
  v11 = *(a1 + 16);
  v12 = *(*(a1 + 32) + 8);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](980444704, 0xE400000000000000);
  (*(v7 + 16))(v10, v1 + *(a1 + 52), v6);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    v14 = 0xE90000000000003ELL;
    v15 = 0x6E776F6E6B6E753CLL;
  }

  else
  {
    v16 = *(swift_getAssociatedConformanceWitness() + 16);
    v15 = sub_1CF9E7F98();
    v14 = v17;
    v7 = v13;
    v6 = AssociatedTypeWitness;
  }

  (*(v7 + 8))(v10, v6);
  MEMORY[0x1D3868CC0](v15, v14);

  MEMORY[0x1D3868CC0](0x3A6E656464696820, 0xE800000000000000);
  if (*(v1 + *(a1 + 56)))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 56)))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v18, v19);

  MEMORY[0x1D3868CC0](0x6574726F706D6920, 0xEA00000000003A64);
  if (*(v1 + *(a1 + 60)))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 60)))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v20, v21);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return v23[0];
}

uint64_t sub_1CF52D49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for ItemLookupResult();
  v11 = v10[13];
  swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a2, v12);
  *(a6 + v10[14]) = a3;
  *(a6 + v10[15]) = a4;
  return result;
}

uint64_t sub_1CF52D5BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(_s20ParentIDLookupResultVMa() + 52);
  v7 = *(v5 + 88);
  v8 = sub_1CF9E75D8();
  return (*(*(v8 - 8) + 32))(&a3[v6], a2, v8);
}

uint64_t sub_1CF52D66C(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v50 = a3;
  v6 = *a1;
  v7 = *a1;
  v8 = *(*v4 + 616);
  v9 = *(*v4 + 632);
  v10 = *(*v4 + 640);
  v46 = *(*v4 + 624);
  v47 = v8;
  *&v51 = v8;
  *(&v51 + 1) = v46;
  v44 = v10;
  v45 = v9;
  *&v52 = v9;
  *(&v52 + 1) = v10;
  v11 = _s20ParentIDLookupResultVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v12 = sub_1CF9E8238();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = *(v6 + 88);
  v17 = sub_1CF9E75D8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v41 - v19;
  v21 = *(v6 + 80);
  v22 = *(v7 + 96);
  *&v51 = v21;
  *(&v51 + 1) = v16;
  v41 = v22;
  v52 = v22;
  v23 = type metadata accessor for ReconciliationID();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v41 - v25;
  v48 = v11;
  v27 = *(v11 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v41 - v30;
  if (sub_1CF5554C0(v32))
  {
    *&v33 = v21;
    *(&v33 + 1) = v16;
    v51 = v33;
    v52 = v41;
    type metadata accessor for FPFSID();
    (*(**(v4[4] + 16) + 96))();
    swift_storeEnumTagMultiPayload();
    v34 = sub_1CF554514(v26);
    (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
    sub_1CF52D5BC(v34, v20, v31);
    v35 = v48;
    (*(v27 + 16))(v15, v31, v48);
    v36 = v43;
    swift_storeEnumTagMultiPayload();
    v49(v15);
    (*(v42 + 8))(v15, v36);
    return (*(v27 + 8))(v31, v35);
  }

  else
  {
    v38 = swift_allocObject();
    v38[2] = a1;
    v38[3] = v4;
    v40 = v49;
    v39 = v50;
    v38[4] = v49;
    v38[5] = v39;

    sub_1CF92DB1C("findParentID(for:completionHandler:)", 36, 2, 2, v40, v39, sub_1CF54F89C, v38, v48);
  }
}

uint64_t sub_1CF52DAF8(void *a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v181 = a1;
  v171 = a4;
  v172 = a5;
  v184 = a2;
  v178 = *a2;
  v179 = v178;
  v6 = *a3;
  v7 = *(*a3 + 640);
  v8 = *(*a3 + 624);
  *&v182 = swift_getAssociatedTypeWitness();
  *(&v182 + 1) = swift_getAssociatedTypeWitness();
  *&v183 = swift_getAssociatedConformanceWitness();
  *(&v183 + 1) = swift_getAssociatedConformanceWitness();
  v150 = type metadata accessor for FileItemVersion();
  v153 = sub_1CF9E75D8();
  v152 = *(v153 - 8);
  v9 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v160 = &v136 - v10;
  v11 = v178[11];
  v175 = *(v11 - 1);
  v12 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v136 - v16;
  v148 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v177 = &v136 - v19;
  v20 = *(v6 + 616);
  *&v21 = v20;
  v169 = v8;
  *(&v21 + 1) = v8;
  v22 = *(v6 + 632);
  *&v23 = v22;
  v170 = v7;
  *(&v23 + 1) = v7;
  v164 = v23;
  v183 = v23;
  v166 = v21;
  v182 = v21;
  v24 = _s20ParentIDLookupResultVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v25 = sub_1CF9E8238();
  v167 = *(v25 - 8);
  v168 = v25;
  v26 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v165 = &v136 - v27;
  v146 = sub_1CF9E75D8();
  v144 = *(v146 - 8);
  v28 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v174 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v158 = &v136 - v31;
  v162 = v24;
  v161 = *(v24 - 8);
  v32 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v159 = &v136 - v34;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v157 = v22;
  v163 = v20;
  v38 = swift_getAssociatedConformanceWitness();
  *&v182 = AssociatedTypeWitness;
  *(&v182 + 1) = v36;
  *&v183 = AssociatedConformanceWitness;
  *(&v183 + 1) = v38;
  v143 = type metadata accessor for FileItemVersion();
  v147 = sub_1CF9E75D8();
  v145 = *(v147 - 8);
  v39 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v156 = &v136 - v40;
  v41 = v178[10];
  v141 = sub_1CF9E75D8();
  v140 = *(v141 - 8);
  v42 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v173 = &v136 - v43;
  v176 = *(v41 - 8);
  v44 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v142 = &v136 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v155 = &v136 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v136 - v49;
  v51 = *(v179 + 6);
  *&v182 = v41;
  *(&v182 + 1) = v11;
  v179 = v11;
  v154 = v51;
  v183 = v51;
  v52 = type metadata accessor for ReconciliationID();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v136 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v136 - v57;
  v59 = v181[3];
  v60 = v181[4];
  v61 = __swift_project_boxed_opaque_existential_1(v181, v59);
  v178 = a3;
  v62 = v180;
  result = sub_1CF554678(a3, 0, v61, v59, v60, v58);
  if (!v62)
  {
    v136 = v44;
    v137 = v55;
    v180 = v50;
    v64 = v176;
    v65 = v181;
    v139 = v41;
    v66 = v177;
    v184 = 0;
    v138 = v52;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v67 = v175;
      v68 = (v175 + 32);
      v180 = *(v175 + 32);
      v180(v66, v58, v179);
      v69 = v65;
      v70 = v65[3];
      v71 = v69[4];
      v72 = __swift_project_boxed_opaque_existential_1(v69, v70);
      v73 = v178[5];
      v74 = v174;
      v75 = v184;
      (*(*v73 + 288))(v66, v72, v70, v71);
      v184 = v75;
      if (v75)
      {
        return (*(v67 + 8))(v66, v179);
      }

      else
      {
        v181 = v68;
        v86 = v179;
        v87 = v67;
        if ((*(v67 + 48))(v74, 1, v179) == 1)
        {
          (*(v144 + 8))(v74, v146);
          v88 = v73[2];
          (*(*(v150 - 8) + 56))(v160, 1, 1);

          v89 = sub_1CF04F1A0();
          v90 = v177;
          v178 = v89;
          v91 = v149;
          (*(v87 + 16))(v149, v177, v86);
          v92 = (*(v87 + 80) + 64) & ~*(v87 + 80);
          v93 = swift_allocObject();
          v94 = v164;
          *(v93 + 16) = v166;
          *(v93 + 32) = v94;
          v95 = v172;
          *(v93 + 48) = v171;
          *(v93 + 56) = v95;
          v180(v93 + v92, v91, v86);
          v96 = *(*v88 + 136);

          v97 = v160;
          v98 = v178;
          v96(v90, v160, v178, 0, sub_1CF54F8BC, v93);

          (*(v152 + 8))(v97, v153);
          return (*(v87 + 8))(v90, v86);
        }

        else
        {
          v112 = v151;
          v180(v151, v74, v86);
          *&v113 = v139;
          *(&v113 + 1) = v86;
          v183 = v154;
          v182 = v113;
          type metadata accessor for FPFSID();
          v114 = v137;
          (*(v87 + 16))(v137, v112, v86);
          swift_storeEnumTagMultiPayload();
          v115 = sub_1CF554514(v114);
          v116 = v158;
          (*(v87 + 56))(v158, 1, 1, v86);
          v117 = v159;
          sub_1CF52D5BC(v115, v116, v159);
          v118 = v161;
          v119 = v165;
          v120 = v162;
          (*(v161 + 16))(v165, v117, v162);
          v121 = v168;
          swift_storeEnumTagMultiPayload();
          v171(v119);
          (*(v167 + 8))(v119, v121);
          (*(v118 + 8))(v117, v120);
          v122 = *(v87 + 8);
          v122(v112, v86);
          return (v122)(v177, v86);
        }
      }
    }

    else
    {
      v76 = *(v64 + 32);
      v77 = v180;
      v78 = v139;
      v76(v180, v58, v139);
      v79 = v65;
      v80 = v65[3];
      v81 = v79[4];
      v82 = __swift_project_boxed_opaque_existential_1(v79, v80);
      v83 = v178[4];
      v84 = v173;
      v85 = v184;
      (*(*v83 + 288))(v77, v82, v80, v81);
      if (v85)
      {
        return (*(v64 + 8))(v77, v78);
      }

      else
      {
        v184 = v76;
        v99 = v78;
        if ((*(v64 + 48))(v84, 1, v78) == 1)
        {
          (*(v140 + 8))(v84, v141);
          v100 = v83[2];
          (*(*(v143 - 8) + 56))(v156, 1, 1);

          v181 = sub_1CF04F1A0();
          v101 = v142;
          v102 = v180;
          (*(v64 + 16))(v142, v180, v78);
          v103 = (*(v64 + 80) + 64) & ~*(v64 + 80);
          v104 = swift_allocObject();
          v105 = v78;
          v106 = v104;
          v107 = v164;
          *(v104 + 16) = v166;
          *(v104 + 32) = v107;
          v108 = v172;
          *(v104 + 48) = v171;
          *(v104 + 56) = v108;
          v184(v104 + v103, v101, v105);
          v109 = *(*v100 + 136);

          v110 = v156;
          v111 = v181;
          v109(v102, v156, v181, 0, sub_1CF54F970, v106);

          (*(v145 + 8))(v110, v147);
          return (*(v64 + 8))(v102, v139);
        }

        else
        {
          v123 = v155;
          v184(v155, v84, v99);
          v124 = v179;
          *&v182 = v99;
          *(&v182 + 1) = v179;
          v183 = v154;
          type metadata accessor for FPFSID();
          v125 = v137;
          (*(v64 + 16))(v137, v123, v99);
          swift_storeEnumTagMultiPayload();
          v126 = sub_1CF554514(v125);
          v127 = v64;
          v128 = v158;
          (*(v175 + 56))(v158, 1, 1, v124);
          v129 = v159;
          sub_1CF52D5BC(v126, v128, v159);
          v130 = v161;
          v131 = v99;
          v132 = v165;
          v133 = v162;
          (*(v161 + 16))(v165, v129, v162);
          v134 = v168;
          swift_storeEnumTagMultiPayload();
          v171(v132);
          (*(v167 + 8))(v132, v134);
          (*(v130 + 8))(v129, v133);
          v135 = *(v127 + 8);
          v135(v155, v131);
          return (v135)(v180, v131);
        }
      }
    }
  }

  return result;
}