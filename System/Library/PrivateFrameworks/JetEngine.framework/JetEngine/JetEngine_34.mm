uint64_t sub_1AB2C6434()
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v0 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A338);
  sub_1AB2C70C4();
  v2 = sub_1AB460484();

  return v2;
}

uint64_t sub_1AB2C6560@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = v3;
  v7[1] = v4;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result = sub_1AB0169C4(v7, v5 + 32);
  *(v5 + 64) = 0;
  *a2 = v5;
  return result;
}

void static LogMessage.nilValueSubstitute.getter(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0x296C6C756E28;
  a1[1] = 0xE600000000000000;
}

_OWORD *LogMessage.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(*v1 + 16))
  {
    sub_1AB01522C(*v1 + 32, &v4);
    if (*(&v5 + 1))
    {
      sub_1AB014B78(&v4, v6);
      return sub_1AB014B78(v6, a1);
    }
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  result = sub_1AB0167A8(&v4);
  *(a1 + 24) = MEMORY[0x1E69E6158];
  *a1 = 0x296C6C756E28;
  *(a1 + 8) = 0xE600000000000000;
  return result;
}

void LogMessage.valueTreatment.getter(_BYTE *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    *a1 = *(*v1 + 64);
  }

  else
  {
    *a1 = 0;
  }
}

Swift::String __swiftcall LogMessage.describe(withRedaction:)(Swift::Bool withRedaction)
{
  *(swift_allocObject() + 16) = withRedaction;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A338);
  sub_1AB2C70C4();
  v1 = sub_1AB460484();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

char *_s9JetEngine10LogMessageV6values2of13withRedactionSayypGSayACG_SbtFZ_0(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v87 = *MEMORY[0x1E69E9840];
  v4 = sub_1AB45F764();
  MEMORY[0x1EEE9AC00](v4);
  v66 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = v61 - v8;
  v9 = 0;
  v61[0] = 0;
  v10 = *(a1 + 16);
  v11 = a1 + 32;
  v65 = (v12 + 32);
  v64 = (v12 + 8);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = xmmword_1AB4D4720;
  v71 = v2;
LABEL_2:
  while (2)
  {
    if (v10 != v9)
    {
      if (v9 >= v10)
      {
        __break(1u);
      }

      else
      {
        v15 = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          v16 = *(v11 + 8 * v9);
          v17 = *(v16 + 16);
          ++v9;
          if (!v17)
          {
            continue;
          }

          v74 = v14;
          v62 = v11;
          v63 = v10;
          v69 = v7;
          v9 = v15;
          v18 = v16 + 32;
          v61[1] = v16;

          v19 = 0;
          v68 = v17;
          v67 = v18;
          while (1)
          {
            sub_1AB2C734C(v18 + 40 * v19, v85);
            sub_1AB01522C(v85, &v83);
            if (v84)
            {
              sub_1AB014B78(&v83, &v81);
              if ((v2 & 1) == 0 || !v86)
              {
                sub_1AB0165C4(&v81, &v83);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_1AB05303C(0, *(v13 + 2) + 1, 1, v13);
                }

                v25 = *(v13 + 2);
                v24 = *(v13 + 3);
                if (v25 >= v24 >> 1)
                {
                  v13 = sub_1AB05303C((v24 > 1), v25 + 1, 1, v13);
                }

                __swift_destroy_boxed_opaque_existential_1Tm(&v81);
                sub_1AB2C7384(v85);
                *(v13 + 2) = v25 + 1;
                v20 = &v13[32 * v25];
                v21 = &v83;
                goto LABEL_8;
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v81);
            }

            else
            {
              sub_1AB0167A8(&v83);
            }

            sub_1AB01522C(v85, &v81);
            if (v82)
            {
              sub_1AB014B78(&v81, &v83);
              BYTE1(v81) = v86;
              sub_1AB0165C4(&v83, &v81 + 8);
              if (!BYTE1(v81))
              {
                v26 = v69;
                if (swift_dynamicCast())
                {
                  v27 = v66;
                  (*v65)(v66, v70, v26);
                  v28 = sub_1AB45F654();
                  v2 = AMSLogableURL();

                  v23 = sub_1AB460544();
                  v22 = v29;

                  LOBYTE(v2) = v71;
                  (*v64)(v27, v26);
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
                  if (swift_dynamicCast())
                  {
                    v41 = v75;
                    sub_1AB0165C4(&v83, &v79);
                    if (!swift_dynamicCast())
                    {
                      v55 = sub_1AB45F584();
                      v2 = AMSLogableError();

                      v23 = sub_1AB460544();
                      v22 = v56;

                      LOBYTE(v2) = v71;
                      goto LABEL_44;
                    }
                  }

                  v42 = __swift_project_boxed_opaque_existential_1Tm(&v83, v84);
                  v43 = MEMORY[0x1EEE9AC00](v42);
                  (*(v45 + 16))(v61 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
                  v23 = sub_1AB4605E4();
                  v22 = v46;
                }

LABEL_44:
                __swift_destroy_boxed_opaque_existential_1Tm(&v81 + 8);
                __swift_destroy_boxed_opaque_existential_1Tm(&v83);
                goto LABEL_45;
              }

              if (BYTE1(v81) != 1)
              {
                sub_1AB014B78((&v81 + 8), &v79);
                v30 = __swift_project_boxed_opaque_existential_1Tm(&v79, v80);
                v31 = MEMORY[0x1EEE9AC00](v30);
                (*(v33 + 16))(v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
                v34 = sub_1AB4605E4();
                v36 = v35;
                MEMORY[0x1EEE9AC00](v34);
                LOBYTE(v61[-4]) = 1;
                v61[-3] = md;
                v61[-2] = 64;
                v73 = v13;
                v72 = v36;
                if ((v36 & 0x1000000000000000) != 0)
                {
                  goto LABEL_49;
                }

                if ((v36 & 0x2000000000000000) != 0)
                {
                  __s = v37;
                  v77 = v36 & 0xFFFFFFFFFFFFFFLL;
                  v47 = strlen(&__s);
                  if ((v47 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_54;
                  }

                  v39 = v47;
                  if (HIDWORD(v47))
                  {
                    goto LABEL_55;
                  }

                  p_s = &__s;
LABEL_39:
                  CC_SHA512(p_s, v39, md);
                }

                else
                {
                  if ((v37 & 0x1000000000000000) != 0)
                  {
                    v38 = strlen(((v36 & 0xFFFFFFFFFFFFFFFLL) + 32));
                    if ((v38 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_56;
                    }

                    v39 = v38;
                    if (HIDWORD(v38))
                    {
                      goto LABEL_57;
                    }

                    p_s = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    goto LABEL_39;
                  }

LABEL_49:
                  v59 = v61[0];
                  sub_1AB4615C4();
                  v61[0] = v59;
                }

                __s = 0;
                v77 = 0xE000000000000000;
                MEMORY[0x1AC59B990](128);
                v48 = 0;
                v49 = MEMORY[0x1E69E7508];
                v50 = MEMORY[0x1E69E7558];
                do
                {
                  v51 = v48 + 1;
                  v52 = md[v48];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
                  v53 = swift_allocObject();
                  *(v53 + 16) = v74;
                  *(v53 + 56) = v49;
                  *(v53 + 64) = v50;
                  *(v53 + 32) = v52;
                  v54 = sub_1AB460584();
                  MEMORY[0x1AC59BA20](v54);

                  v48 = v51;
                }

                while (v51 != 64);
                v23 = __s;
                v22 = v77;

                __swift_destroy_boxed_opaque_existential_1Tm(&v79);
                __swift_destroy_boxed_opaque_existential_1Tm(&v83);
                LOBYTE(v2) = v71;
                v13 = v73;
                v17 = v68;
                v18 = v67;
                goto LABEL_45;
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v81 + 8);
              __swift_destroy_boxed_opaque_existential_1Tm(&v83);
              v22 = 0xE90000000000005DLL;
              v23 = 0x657461766972705BLL;
            }

            else
            {
              sub_1AB0167A8(&v81);
              v22 = 0xE600000000000000;
              v23 = 0x296C6C756E28;
            }

LABEL_45:
            v82 = MEMORY[0x1E69E6158];
            *&v81 = v23;
            *(&v81 + 1) = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1AB05303C(0, *(v13 + 2) + 1, 1, v13);
            }

            v58 = *(v13 + 2);
            v57 = *(v13 + 3);
            if (v58 >= v57 >> 1)
            {
              v13 = sub_1AB05303C((v57 > 1), v58 + 1, 1, v13);
            }

            sub_1AB2C7384(v85);
            *(v13 + 2) = v58 + 1;
            v20 = &v13[32 * v58];
            v21 = &v81;
LABEL_8:
            sub_1AB014B78(v21, v20 + 2);
            if (++v19 == v17)
            {

              v7 = v69;
              v10 = v63;
              v11 = v62;
              v14 = v74;
              goto LABEL_2;
            }
          }
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    return v13;
  }
}

unint64_t sub_1AB2C70C4()
{
  result = qword_1ED4D21D8;
  if (!qword_1ED4D21D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A338);
    sub_1AB019D78(&unk_1ED4D2208, &qword_1EB43A340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D21D8);
  }

  return result;
}

unint64_t sub_1AB2C7164()
{
  result = qword_1EB43A348;
  if (!qword_1EB43A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A348);
  }

  return result;
}

unint64_t sub_1AB2C71C8()
{
  result = qword_1EB43A350;
  if (!qword_1EB43A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A350);
  }

  return result;
}

unint64_t sub_1AB2C7220()
{
  result = qword_1EB43A358;
  if (!qword_1EB43A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A358);
  }

  return result;
}

unint64_t sub_1AB2C7278()
{
  result = qword_1EB43A360;
  if (!qword_1EB43A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A360);
  }

  return result;
}

unint64_t sub_1AB2C72D0()
{
  result = qword_1EB43A368;
  if (!qword_1EB43A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A368);
  }

  return result;
}

double IntentPreloadConfiguration.init(cachePolicy:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  return result;
}

uint64_t IntentPreloadConfiguration.withCacheKey(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB2C7468(v2, a2);

  return sub_1AB2C74A0(a1, a2);
}

uint64_t sub_1AB2C74A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389F8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of IntentPreloader.preload<A>(objectGraph:configuration:intentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1AB027554;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of IntentPreloader.preloadAnyIntent<A>(objectGraph:configuration:intentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_1AB027460;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t get_enum_tag_for_layout_string_SH_s8SendablepSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB2C7814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1AB2C7870(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t DiskJetPackResourceBundle.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url;
  v5 = sub_1AB45F764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t DiskJetPackResourceBundle.data(withName:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1AB014DB4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 16 * v4;
  v7 = *v6;
  sub_1AB017200(*v6, *(v6 + 8));
  return v7;
}

void *DiskJetPackResourceBundle.contentsOfDirectory(atPath:)(void **a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = [objc_opt_self() defaultManager];
  v28[0] = v7;
  DiskJetPackResourceBundle.fileURL(atPath:)(v28, v6);
  if (v1)
  {
  }

  else
  {
    sub_1AB45F6F4();
    (*(v4 + 8))(v6, v3);
    v10 = sub_1AB460514();

    v28[0] = 0;
    v11 = [v8 contentsOfDirectoryAtPath:v10 error:v28];

    v12 = v28[0];
    if (v11)
    {
      v13 = sub_1AB460954();
      v14 = v12;

      v15 = *(v13 + 16);
      if (v15)
      {
        v28[0] = MEMORY[0x1E69E7CC0];
        sub_1AB0A7258(0, v15, 0);
        v6 = v28[0];
        v25[1] = v13;
        v16 = (v13 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          swift_bridgeObjectRetain_n();
          v19._countAndFlagsBits = v17;
          v19._object = v18;
          JetPackPath.init(_:)(v19);
          v20 = v27;
          v26 = v7;

          sub_1AB164C18(v20);

          v21 = v26;
          v28[0] = v6;
          v23 = v6[2];
          v22 = v6[3];
          if (v23 >= v22 >> 1)
          {
            sub_1AB0A7258((v22 > 1), v23 + 1, 1);
            v6 = v28[0];
          }

          v6[2] = v23 + 1;
          v6[v23 + 4] = v21;
          v16 += 2;
          --v15;
        }

        while (v15);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v24 = v28[0];
      sub_1AB45F594();

      swift_willThrow();
    }
  }

  return v6;
}

uint64_t DiskJetPackResourceBundle.inMemorySource(fromPath:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1AB45F764();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v67 = v20;
  v21 = v66;
  result = DiskJetPackResourceBundle.fileURL(atPath:)(&v67, v19);
  if (!v21)
  {
    v61 = v20;
    v62 = v8;
    v63 = v11;
    v23 = sub_1AB45F784();
    v66 = 0;
    v24 = *(v17 + 8);
    v25 = v23;
    v26 = v19;
    v28 = v27;
    v24(v26, v16);
    sub_1AB460594();
    v29 = sub_1AB460564();
    if (v30)
    {
      v56 = v30;
      v57 = v29;
      v59 = v25;
      v60 = v28;
      v31 = *(type metadata accessor for DiskJetPackResourceBundle() + 24);
      v55 = v2;
      v32 = v2 + v31;
      v33 = v63;
      sub_1AB03BC60(v32, v63);
      v34 = *(v17 + 48);
      v58 = v16;
      v35 = v16;
      v36 = v34;
      v37 = v17;
      if (v34(v33, 1, v35) == 1)
      {
        sub_1AB03BCD0(v33);
        v38 = 1;
        v39 = v14;
        v40 = v58;
      }

      else
      {
        v54 = v24;
        v39 = v14;
        if (*(v61 + 16))
        {
          v67 = v61;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
          sub_1AB04E498();
          sub_1AB460484();
        }

        v41 = v63;
        sub_1AB45F664();

        v40 = v58;
        v54(v41, v58);
        v38 = 0;
      }

      v42 = *(v37 + 56);
      v42(v39, v38, 1, v40);
      v63 = v39;
      v43 = v39;
      v44 = v65;
      sub_1AB03BC60(v43, v65);
      v45 = v36(v44, 1, v40);
      v46 = v64;
      if (v45 == 1)
      {
        v47 = v36;
        v48 = v62;
        (*(v37 + 16))(v62, *(v55 + 8) + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v40);
        if (v47(v44, 1, v40) != 1)
        {
          sub_1AB03BCD0(v44);
        }
      }

      else
      {
        v48 = v62;
        (*(v37 + 32))(v62, v44, v40);
      }

      v42(v48, 0, 1, v40);
      v49 = type metadata accessor for JSSource();
      v46[3] = v49;
      v46[4] = &protocol witness table for JSSource;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
      v51 = *(v49 + 20);
      v42(boxed_opaque_existential_0 + v51, 1, 1, v40);
      v52 = v56;
      *boxed_opaque_existential_0 = v57;
      boxed_opaque_existential_0[1] = v52;
      sub_1AB04F3C8(v48, boxed_opaque_existential_0 + v51);
      sub_1AB017254(v59, v60);
      return sub_1AB03BCD0(v63);
    }

    else
    {
      sub_1AB2C83B0();
      swift_allocError();
      swift_willThrow();
      return sub_1AB017254(v25, v28);
    }
  }

  return result;
}

uint64_t sub_1AB2C8214(uint64_t *a1)
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  DiskJetPackResourceBundle.fileURL(atPath:)(&v10, v7);
  if (!v2)
  {
    v1 = sub_1AB45F784();
    (*(v5 + 8))(v7, v4);
  }

  return v1;
}

unint64_t sub_1AB2C835C()
{
  result = qword_1EB43A370;
  if (!qword_1EB43A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A370);
  }

  return result;
}

unint64_t sub_1AB2C83B0()
{
  result = qword_1EB43A378;
  if (!qword_1EB43A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A378);
  }

  return result;
}

uint64_t sub_1AB2C842C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v11, v9);
  v13 = *(v8 + 80);
  EventSubscription.init<A>(_:)(v11, a2, &v22);
  v14 = v22;
  v15 = v4[2];
  v18 = v13;
  v19 = a2;
  v20 = a3;
  v21 = v22;
  type metadata accessor for EventSubscription();
  sub_1AB4617B4();

  sub_1AB1AA5AC(sub_1AB2C8C80, v17, v15);

  *a4 = v14;
  return result;
}

uint64_t sub_1AB2C8598()
{
  type metadata accessor for EventSubscription();
  sub_1AB4617B4();

  return sub_1AB461784();
}

uint64_t sub_1AB2C8604(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[2];
  v5[2] = *(*v1 + 80);
  v5[3] = v2;
  type metadata accessor for EventSubscription();
  sub_1AB4617B4();

  sub_1AB1AA5AC(sub_1AB2C8C64, v5, v3);
}

uint64_t sub_1AB2C86AC()
{
  type metadata accessor for EventSubscription();
  sub_1AB4617B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1AB460F74();
  if (v1 != 1)
  {
    sub_1AB461794();
  }

  return result;
}

uint64_t sub_1AB2C8794()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v15 = *(v2 + 80);
  v13 = v15;
  type metadata accessor for EventSubscription();
  sub_1AB4617B4();

  sub_1AB1AA5AC(sub_1AB2C8C0C, v14, v3);

  v4 = v18;
  swift_getWitnessTable();
  result = sub_1AB4602C4();
  v18 = result;
  v6 = *(v4 + 16);
  if (v6)
  {
    v12[4] = 0;
    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      v8 = *(v4 + 8 * v7 + 32);
      v17 = v8;

      if ((EventSubscription.isValid.getter() & 1) == 0 || (v17 = v8, EventSubscription.notify(_:)(), v17 = v8, (EventSubscription.isValid.getter() & 1) == 0))
      {
        v16 = v8;
        sub_1AB460E84();
        sub_1AB460E54();
      }

      if (v6 == ++v7)
      {

        v9 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = result;

LABEL_11:
    v10 = sub_1AB460E64();
    if (v10)
    {
    }

    else
    {
      v11 = v1[2];
      MEMORY[0x1EEE9AC00](v10);
      v12[2] = v13;
      v12[3] = v9;

      sub_1AB1AA5AC(sub_1AB2C8C28, v12, v11);
    }
  }

  return result;
}

uint64_t sub_1AB2C8A00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EventSubscription();
  sub_1AB4617B4();

  swift_getWitnessTable();
  result = sub_1AB460AB4();
  *a1 = result;
  return result;
}

uint64_t sub_1AB2C8A98()
{
  type metadata accessor for EventSubscription();
  sub_1AB4617B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1AB460FC4();
}

uint64_t sub_1AB2C8B54()
{
  type metadata accessor for EventSubscription();
  swift_getWitnessTable();
  return sub_1AB460E74() & 1;
}

uint64_t sub_1AB2C8CA0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D47F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v5 = MEMORY[0x1E69E6158];
  *(&v27 + 1) = MEMORY[0x1E69E6158];
  *&v26 = 0xD00000000000002DLL;
  *(&v26 + 1) = 0x80000001AB505C60;
  *(v4 + 48) = 0u;
  *(v4 + 32) = 0u;
  sub_1AB0169C4(&v26, v4 + 32);
  *(v4 + 64) = 0;
  *(v3 + 32) = v4;
  v31 = sub_1AB0168A8(0, 20, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB505C90;
  v6._countAndFlagsBits = 0xD000000000000013;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  if (v1)
  {
    swift_getErrorValue();
    *(&v30 + 1) = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v29);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0);
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  sub_1AB014A58(&v29, v25, &unk_1EB437E60);
  v26 = 0u;
  v27 = 0u;
  sub_1AB0169C4(v25, &v26);
  v28 = 0;
  v8 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v26;
  v13 = v27;
  v11[64] = v28;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v31 = v8;
  sub_1AB014AC0(&v29, &unk_1EB437E60);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v3 + 40) = v31;
  v15 = sub_1AB461094();
  if (os_log_type_enabled(v2, v15))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v16 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v16 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v18 = swift_allocObject();
    *(v18 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v26 = v3;
    *(&v26 + 1) = sub_1AB01A8D8;
    *&v27 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v19 = sub_1AB460484();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AB4D4720;
    *(v22 + 56) = v5;
    *(v22 + 64) = sub_1AB016854();
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    sub_1AB45FF14();
  }
}

uint64_t static Unstable.Accounts.shared.getter()
{
  if (qword_1EB435648 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AB2C912C()
{
  result = sub_1AB460514();
  qword_1EB4359E0 = result;
  return result;
}

id static Unstable.Accounts.didChangeNotification.getter()
{
  if (qword_1EB4359D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB4359E0;

  return v1;
}

uint64_t Unstable.Accounts.__allocating_init(_:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1AB0240DC(a1);

  return v2;
}

uint64_t Unstable.Accounts.init(_:)(void *a1)
{
  v2 = sub_1AB0240DC(a1);

  return v2;
}

uint64_t Unstable.Accounts.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t Unstable.Accounts.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return swift_deallocClassInstance();
}

id Unstable.Accounts.localiTunesAccount.getter@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) ams_localiTunesAccount];
  *a1 = result;
  return result;
}

void sub_1AB2C9478()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = [*(v0 + 16) ams_activeiTunesAccount];
  os_unfair_lock_unlock((v1 + 24));
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_1EB4359D8 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_1EB4359E0 object:v0];
}

void sub_1AB2C9648(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *a1 = v4;
  v5 = v4;

  os_unfair_lock_unlock((v3 + 24));
}

void sub_1AB2C9694(void *a1@<X8>)
{
  v3 = *(*v1 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  *a1 = v4;
  v5 = v4;

  os_unfair_lock_unlock((v3 + 24));
}

id sub_1AB2C96E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*a1 + 16);
  a2[3] = sub_1AB2C99F8();
  a2[4] = &protocol witness table for ACAccountStore;
  *a2 = v4;

  return v4;
}

uint64_t sub_1AB2C9744(void *a1)
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000005ALL, 0x80000001AB507E90);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  swift_getDynamicType();
  v2 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v2);

  MEMORY[0x1AC59BA20](0xD00000000000001CLL, 0x80000001AB507EF0);
  return 0;
}

uint64_t sub_1AB2C9808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AB2C988C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AB2C988C(uint64_t a1)
{
  sub_1AB01494C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578);
  sub_1AB2C99F8();
  if (swift_dynamicCast())
  {
    type metadata accessor for Unstable.Accounts();
    swift_allocObject();
    v2 = sub_1AB0240DC(v6);
  }

  else
  {
    type metadata accessor for Unstable.Accounts();
    v3 = swift_dynamicCast();
    if (v3)
    {
      v2 = v6;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v3);
      v5[2] = a1;
      requirementFailure(_:file:line:)(sub_1AB2C9A44, v5, "JetEngine/Accounts.swift", 24, 2, 140);
      if (qword_1EB435648 != -1)
      {
        swift_once();
      }

      v2 = qword_1EB435650;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v2;
}

unint64_t sub_1AB2C99F8()
{
  result = qword_1ED4D1F60;
  if (!qword_1ED4D1F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D1F60);
  }

  return result;
}

uint64_t AsyncActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v33 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v31 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v31 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v5, a3, v18);
  (*(v11 + 16))(v14, a1, AssociatedTypeWitness);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = (v16 + v20 + *(v11 + 80)) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v15 + 32))(v22 + v20, v19, a3);
  (*(v11 + 32))(v22 + v21, v14, AssociatedTypeWitness);
  *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  *(v24 + 32) = 0;
  v27 = sub_1AB460BE4();
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_1AB4E6D60;
  v29[5] = v22;
  v29[6] = v24;

  sub_1AB39BBA8(0, 0, v28, &unk_1AB4E6D68, v29);

  return v24;
}

uint64_t sub_1AB2C9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = (*(a6 + 16) + **(a6 + 16));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1AB027460;

  return v14(a1, a3, a4, a5, a6);
}

uint64_t sub_1AB2C9F34(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = v7 + *(*(v6 - 8) + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1AB027554;

  return sub_1AB2C9DE8(a1, v1 + v7, v1 + v10, v11, v6, v5);
}

uint64_t sub_1AB2CA0CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB399B18(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of AsyncActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t _unsafeSend<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

BOOL sub_1AB2CA4CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1AB4615C4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1AB2CA5C4(uint64_t a1, unint64_t a2)
{
  *&v24 = a1;
  *(&v24 + 1) = a2;
  v27 = 99;
  v28 = 0xE100000000000000;
  sub_1AB0273A8();
  v4 = MEMORY[0x1E69E6158];
  if (sub_1AB461474())
  {
    *&v24 = a1;
    *(&v24 + 1) = a2;
    v27 = 99;
    v28 = 0xE100000000000000;
    v23[0] = 101;
    v23[1] = 0xE100000000000000;
    v5 = sub_1AB461434();
    v7 = v6;
  }

  else
  {

    v5 = a1;
    v7 = a2;
  }

  *&v24 = 0;
  v8 = sub_1AB2CA4CC(v5, v7);

  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v10 = sub_1AB45FA44();
    v11 = JEPluralCategoryForNumber(v9, v10);

    return v11;
  }

  else
  {
    if (qword_1ED4CFE90 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED4CFE98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 43, 0, MEMORY[0x1E69E7CC0]);
    v15._object = 0x80000001AB507F40;
    v15._countAndFlagsBits = 0xD00000000000002ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v29 = v4;
    v27 = a1;
    v28 = a2;
    sub_1AB01522C(&v27, v23);
    v24 = 0u;
    v25 = 0u;

    sub_1AB0169C4(v23, &v24);
    v26 = 0;
    v16 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
      v30 = v16;
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v24;
    v21 = v25;
    v19[64] = v26;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v30 = v16;
    sub_1AB0167A8(&v27);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v14 + 32) = v30;
    *&v24 = v13;
    LOBYTE(v27) = 0;
    OSLogger.log(contentsOf:withLevel:)(v14, &v27);

    return 5;
  }
}

_BYTE *sub_1AB2CA8D0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t LazyPromise<A>.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB4601C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB015664();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F98], v4);
  v9 = sub_1AB461164();
  (*(v5 + 8))(v7, v4);
  v14 = v8;
  v15 = &protocol witness table for OS_dispatch_queue;
  *&v13 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = *(v2 + 80);
  *(v10 + 24) = a1;
  return LazyPromise.__allocating_init(on:perform:)(&v13, sub_1AB2CAC34, v10);
}

void sub_1AB2CAAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), void *a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a1;
  v12[4] = a2;
  v19 = sub_1AB2CAC3C;
  v20 = v12;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1AB058080;
  v18 = &block_descriptor_27;
  v13 = _Block_copy(&v15);

  [a5 addSuccessBlock_];
  _Block_release(v13);
  v19 = a3;
  v20 = a4;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1AB058108;
  v18 = &block_descriptor_6_3;
  v14 = _Block_copy(&v15);

  [a5 addErrorBlock_];
  _Block_release(v14);
}

uint64_t sub_1AB2CAC3C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  return v2(&v4);
}

uint64_t JSONObject.stringEnumOrNil<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01EC0C(v2, v11);
  v5 = v12;
  if (v12)
  {
    v6 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v7 = (*(v6 + 24))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if (v9)
    {
      v11[0] = v7;
      v11[1] = v9;
      return sub_1AB4608C4();
    }
  }

  else
  {
    sub_1AB18977C(v11);
  }

  return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
}

uint64_t JSONObject.stringEnum<A>(or:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-1] - v9;
  sub_1AB01EC0C(v3, v23);
  v11 = v24;
  if (v24)
  {
    v22 = v8;
    v12 = a1;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1Tm(v23, v24);
    v14 = *(v13 + 24);
    v15 = v13;
    a1 = v12;
    v16 = v14(v11, v15);
    v18 = v17;
    v19 = __swift_destroy_boxed_opaque_existential_1Tm(v23);
    if (v18)
    {
      v23[0] = v16;
      v23[1] = v18;
      sub_1AB4608C4();
      v20 = *(a2 - 8);
      if ((*(v20 + 48))(v10, 1, a2) != 1)
      {
        return (*(v20 + 32))(a3, v10, a2);
      }

      v19 = (*(v22 + 8))(v10, v7);
    }
  }

  else
  {
    v19 = sub_1AB18977C(v23);
  }

  return a1(v19);
}

uint64_t JSONObject.stringEnum<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v6 = 0x65756C6156776172;
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-1] - v9;
  sub_1AB01EC0C(v3, v23);
  v11 = v24;
  if (!v24)
  {
    sub_1AB18977C(v23);
    goto LABEL_6;
  }

  v22 = a3;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1Tm(v23, v24);
  v13 = (*(v12 + 24))(v11, v12);
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v15)
  {
LABEL_6:
    v17 = MEMORY[0x1E69E7CC0];
    v15 = 0xE800000000000000;
    v18 = 0x4000000000000000;
    goto LABEL_7;
  }

  v23[0] = v13;
  v23[1] = v15;

  sub_1AB4608C4();
  v16 = *(a1 - 8);
  if ((*(v16 + 48))(v10, 1, a1) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v17 = 0;
    v18 = 0x8000000000000000;
    v6 = v13;
LABEL_7:
    v19 = v18 | a1;
    sub_1AB163664();
    swift_allocError();
    *v20 = v6;
    v20[1] = v15;
    v20[2] = v19;
    v20[3] = v17;
    return swift_willThrow();
  }

  return (*(v16 + 32))(v22, v10, a1);
}

uint64_t AssetNextSchedule.fromDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F9B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssetNextSchedule.toDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetNextSchedule() + 20);
  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AssetNextSchedule()
{
  result = qword_1EB43A498;
  if (!qword_1EB43A498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB2CB338()
{
  result = sub_1AB45F9B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB2CB3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000022 && 0x80000001AB507F70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AB461DA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1AB2CB454(uint64_t a1)
{
  v2 = sub_1AB0BE3C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2CB490(uint64_t a1)
{
  v2 = sub_1AB0BE3C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB2CB558@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB0BB7A8(a1, &qword_1EB43A558, &unk_1AB4E7610, sub_1AB0BE3C0);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1AB2CB604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001AB507FA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AB461DA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1AB2CB698(uint64_t a1)
{
  v2 = sub_1AB0BE4C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2CB6D4(uint64_t a1)
{
  v2 = sub_1AB0BE4C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB2CB79C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB0BB7A8(a1, &qword_1EB43A550, &unk_1AB4E7608, sub_1AB0BE4C0);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1AB2CB848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000002ALL && 0x80000001AB507FC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AB461DA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1AB2CB8DC(uint64_t a1)
{
  v2 = sub_1AB0BE578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2CB918(uint64_t a1)
{
  v2 = sub_1AB0BE578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB2CB9E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB0BB7A8(a1, &qword_1EB43A548, &unk_1AB4E7600, sub_1AB0BE578);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1AB2CBAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001AB508030 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AB461DA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1AB2CBB40(uint64_t a1)
{
  v2 = sub_1AB2CCCCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2CBB7C(uint64_t a1)
{
  v2 = sub_1AB2CCCCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB2CBCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001AB507FF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AB461DA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1AB2CBD74(uint64_t a1)
{
  v2 = sub_1AB0BB998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2CBDB0(uint64_t a1)
{
  v2 = sub_1AB0BB998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB2CBE78(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  a5();
  sub_1AB462274();
  sub_1AB461BC4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AB2CBFB4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB0BB7A8(a1, &qword_1EB43A528, &unk_1AB4E75D8, sub_1AB0BB998);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1AB2CC054(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  a7();
  sub_1AB462274();
  sub_1AB461BC4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1AB2CC1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53676E696E676973 && a2 == 0xEC000000656C7974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB2CC22C(uint64_t a1)
{
  v2 = sub_1AB0C07B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2CC268(uint64_t a1)
{
  v2 = sub_1AB0C07B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB2CC2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001AB508010 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AB461DA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1AB2CC384(uint64_t a1)
{
  v2 = sub_1AB0C0894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2CC3C0(uint64_t a1)
{
  v2 = sub_1AB0C0894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB2CC440@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_1AB2CC554(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

void NetRequestPropertyLookup.subscript.getter()
{
  NetRequestPropertyLookup.subscript.getter();
}

{
  sub_1AB461884();
  __break(1u);
}

uint64_t sub_1AB2CC554(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  result = sub_1AB462224();
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
    sub_1AB0C08E8(qword_1EB434E78);
    sub_1AB461AC4();
    (*(v8 + 8))(v10, v7);
    return v12;
  }

  return result;
}

uint64_t sub_1AB2CC6F4(char *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A518);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *a1;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1AB0C07B0();
  sub_1AB462274();
  v10[15] = v8;
  sub_1AB2CCBFC();
  sub_1AB461BF4();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1AB2CC8B4()
{
  result = qword_1EB43A4E0;
  if (!qword_1EB43A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A4E0);
  }

  return result;
}

unint64_t sub_1AB2CC90C()
{
  result = qword_1EB43A4E8;
  if (!qword_1EB43A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A4E8);
  }

  return result;
}

unint64_t sub_1AB2CC964()
{
  result = qword_1EB43A4F0;
  if (!qword_1EB43A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A4F0);
  }

  return result;
}

unint64_t sub_1AB2CC9BC()
{
  result = qword_1EB43A4F8;
  if (!qword_1EB43A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A4F8);
  }

  return result;
}

unint64_t sub_1AB2CCA14()
{
  result = qword_1EB43A500;
  if (!qword_1EB43A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A500);
  }

  return result;
}

uint64_t sub_1AB2CCA68(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v15 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  a6();
  sub_1AB462274();
  v16 = a1;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
  sub_1AB0C08E8(&qword_1EB438628);
  sub_1AB461BF4();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1AB2CCBFC()
{
  result = qword_1EB43A520;
  if (!qword_1EB43A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A520);
  }

  return result;
}

unint64_t sub_1AB2CCC50()
{
  result = qword_1EB434E70;
  if (!qword_1EB434E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4383B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434E70);
  }

  return result;
}

unint64_t sub_1AB2CCCCC()
{
  result = qword_1EB433AE0;
  if (!qword_1EB433AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433AE0);
  }

  return result;
}

unint64_t sub_1AB2CCD34()
{
  result = qword_1EB43A568;
  if (!qword_1EB43A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A568);
  }

  return result;
}

unint64_t sub_1AB2CCD8C()
{
  result = qword_1EB43A570;
  if (!qword_1EB43A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A570);
  }

  return result;
}

unint64_t sub_1AB2CCDE4()
{
  result = qword_1EB434660;
  if (!qword_1EB434660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434660);
  }

  return result;
}

unint64_t sub_1AB2CCE3C()
{
  result = qword_1EB433AD8;
  if (!qword_1EB433AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433AD8);
  }

  return result;
}

char *sub_1AB2CCEA0(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringTable();
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v30 = sub_1AB1BF140(v11);

    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = sub_1AB1AFEFC(*(v30 + 16), 0);
      v33 = sub_1AB1AF80C(&v37, v32 + 4, v31, v30);
      sub_1AB0309A4();
      if (v33 == v31)
      {
        return v32;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v3 + 20);
  v10 = &v6[*(v3 + 24)];
  v35 = *(v4 + 72);
  v36 = v9;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1AB232BF0(v8, v6);
    v13 = *&v6[v36];
    v14 = *(v10 + 1) ? sub_1AB460514() : 0;
    v15 = sub_1AB460514();
    v16 = [v13 localizedStringsForTable:v14 localization:v15];

    v17 = sub_1AB4602F4();
    v18 = *(v17 + 16);
    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
      v19 = swift_allocObject();
      v20 = _swift_stdlib_malloc_size(v19);
      v21 = v20 - 32;
      if (v20 < 32)
      {
        v21 = v20 - 17;
      }

      v19[2] = v18;
      v19[3] = 2 * (v21 >> 4);
      v22 = sub_1AB1B1168(&v37, v19 + 4, v18, v17);
      result = sub_1AB0309A4();
      if (v22 != v18)
      {
        goto LABEL_35;
      }
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    result = sub_1AB2CD914(v6);
    v23 = v19[2];
    v24 = *(v11 + 16);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v25 <= *(v11 + 24) >> 1)
    {
      if (v19[2])
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      result = sub_1AB020904(result, v26, 1, v11);
      v11 = result;
      if (v19[2])
      {
LABEL_23:
        if ((*(v11 + 24) >> 1) - *(v11 + 16) < v23)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v27 = *(v11 + 16);
          v28 = __OFADD__(v27, v23);
          v29 = v27 + v23;
          if (v28)
          {
            goto LABEL_37;
          }

          *(v11 + 16) = v29;
        }

        goto LABEL_4;
      }
    }

    if (v23)
    {
      goto LABEL_34;
    }

LABEL_4:
    v8 += v35;
    if (!--v7)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1AB2CD214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringTable();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (!v10)
  {
    return 0;
  }

  v50 = a1;
  v51 = a2;
  v11 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v47 = *(v7 + 72);
  v48 = v6;
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v52 = v11;
    v53 = v10;
    sub_1AB232BF0(v11, v9);
    v12 = &v9[v6[6]];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *&v9[v6[8]];
    v16 = *(v15 + 16);
    v17 = type metadata accessor for LocalizedStringsCache.Key();
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key];
    v20 = v51;
    *v19 = a1;
    *(v19 + 1) = v20;
    v21 = &v18[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain];
    *v21 = v13;
    *(v21 + 1) = v14;
    v55.receiver = v18;
    v55.super_class = v17;

    v22 = objc_msgSendSuper2(&v55, sel_init);
    v23 = [v16 objectForKey_];

    if (v23)
    {
      v24 = v23[2];
      v25 = v23[3];
    }

    else
    {
      v45 = v15;
      v46 = v13;
      v26 = v17;
      v27 = *&v9[v6[5]];
      v28 = sub_1AB460514();
      v29 = sub_1AB460514();
      v30 = v14 ? sub_1AB460514() : 0;
      v31 = v26;
      v32 = sub_1AB460514();
      v33 = [v27 localizedStringForKey:v28 value:v29 table:v30 localization:v32];

      v24 = sub_1AB460544();
      v25 = v34;

      if (v24 || v25 != 0xE100000000000000)
      {
        v36 = sub_1AB461DA4();
        v35 = v51;
        if (v36)
        {

          v24 = 0;
          v25 = 0;
        }
      }

      else
      {

        v24 = 0;
        v25 = 0;
        v35 = v51;
      }

      v37 = *(v45 + 16);
      type metadata accessor for LocalizedStringsCache.Value();
      v38 = swift_allocObject();
      *(v38 + 16) = v24;
      *(v38 + 24) = v25;
      v39 = objc_allocWithZone(v31);
      v40 = &v39[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key];
      *v40 = v50;
      *(v40 + 1) = v35;
      v41 = &v39[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain];
      *v41 = v46;
      *(v41 + 1) = v14;
      v54.receiver = v39;
      v54.super_class = v31;

      v42 = objc_msgSendSuper2(&v54, sel_init);
      [v37 setObject:v38 forKey:v42];
    }

    v9 = v49;
    sub_1AB2CD914(v49);
    if (v25)
    {
      break;
    }

    v6 = v48;
    v11 = v52 + v47;
    v10 = v53 - 1;
    a1 = v50;
    if (v53 == 1)
    {
      return 0;
    }
  }

  return v24;
}

JetEngine::LocalizedStringsTableCollection::Bundle __swiftcall LocalizedStringsTableCollection.Bundle.init(_:tables:)(NSBundle _, Swift::OpaquePointer_optional tables)
{
  v2->super.isa = _.super.isa;
  v2[1].super.isa = tables.value._rawValue;
  result.tables = tables;
  result.backing = _;
  return result;
}

void sub_1AB2CD604()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v18 = *(v19 + 8);

    v18(v5);
    return;
  }

  v3 = 0;
  v4 = v1 + 40;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *(v4 - 8);
    swift_bridgeObjectRetain_n();
    v7 = v6;
    v8 = [v7 localizations];
    v9 = sub_1AB460954();

    swift_bridgeObjectRelease_n();
    v10 = *(v9 + 16);
    v11 = *(v5 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v12 <= *(v5 + 3) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v14 = v11 + v10;
      }

      else
      {
        v14 = v11;
      }

      v5 = sub_1AB020904(isUniquelyReferenced_nonNull_native, v14, 1, v5);
      if (*(v9 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v10)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = *(v5 + 2);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_27;
          }

          *(v5 + 2) = v17;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v3;
    v4 += 16;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t LocalizedStringsTableCollection.fetchStrings(withLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AB0A8D54, 0, 0);
}

uint64_t sub_1AB2CD868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AB200878;

  return LocalizedStringsTableCollection.fetchLanguages()();
}

uint64_t sub_1AB2CD914(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringTable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Models.DeepLinkIntent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB45F764();
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_1AB2CDA08(a1);
}

uint64_t sub_1AB2CDA08(uint64_t a1)
{
  v2 = type metadata accessor for DeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Models.DeepLinkIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Models.DeepLinkIntent.url.setter(uint64_t a1)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t Models.DeepLinkIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_1AB45F614();
  *(inited + 56) = v3;
  v4 = sub_1AB0B22E0(inited);
  swift_setDeallocating();
  sub_1AB2AE77C(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
  result = sub_1AB2CDD7C();
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_1AB2CDC20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1AB2CDCB0@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_1AB45F614();
  *(inited + 56) = v3;
  v4 = sub_1AB0B22E0(inited);
  swift_setDeallocating();
  sub_1AB2AE77C(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
  result = sub_1AB2CDD7C();
  a1[4] = result;
  *a1 = v4;
  return result;
}

unint64_t sub_1AB2CDD7C()
{
  result = qword_1EB43A578;
  if (!qword_1EB43A578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A578);
  }

  return result;
}

uint64_t type metadata accessor for Models.DeepLinkIntent()
{
  result = qword_1EB43A580;
  if (!qword_1EB43A580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB2CDE78()
{
  result = sub_1AB45F764();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t JSONObject.number.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v1 = (*(v2 + 32))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0);
  }

  return v1;
}

uint64_t JSONObject.isDictionary.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    LOBYTE(v1) = (*(v2 + 104))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0);
  }

  return v1 & 1;
}

uint64_t JSONObject.allKeys.getter()
{
  sub_1AB01EC0C(v0, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    v3 = (*(v2 + 112))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1AB014AC0(v5, &qword_1EB436BA0);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t JSONObject.isBool.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    LOBYTE(v1) = (*(v2 + 96))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0);
  }

  return v1 & 1;
}

uint64_t JSONObject.init(deserializing:)@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v1 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB45EFC4();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB4605C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB460594();
  v11 = sub_1AB460554();
  v13 = v12;

  v14 = *(v8 + 8);
  v14(v10, v7);
  if (v13 >> 60 == 15)
  {
    v29[1] = v3;
    sub_1AB45EFA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    *(inited + 40) = v16;
    sub_1AB460594();
    v17 = sub_1AB4605B4();
    v14(v10, v7);
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(inited + 72) = sub_1AB016760(0, &qword_1ED4D1940);
    *(inited + 48) = v18;
    sub_1AB01B220(inited);
    swift_setDeallocating();
    sub_1AB014AC0(inited + 32, &qword_1EB439AA0);
    sub_1AB2CEA10();
    sub_1AB45F574();
    sub_1AB45EF64();
    (*(v31 + 8))(v6, v4);
    return swift_willThrow();
  }

  if (qword_1EB4356D0 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, v11, v13))
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v21 = qword_1ED4D1BA0;
LABEL_11:
    v34 = sub_1AB016760(0, v21);
    *&v33 = v20;
LABEL_12:
    sub_1AB014B78(&v33, v35);
    sub_1AB0165C4(v35, &v33);
    v22 = v30;
    v30[3] = &type metadata for FoundationValue;
    v22[4] = &off_1F1FFB5A8;
    v23 = swift_allocObject();
    *v22 = v23;
    sub_1AB014B78(&v33, (v23 + 16));
    sub_1AB03BD58(v11, v13);
    return __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  if (qword_1EB4356D8 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, v11, v13))
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v21 = &qword_1ED4D0BE0;
    goto LABEL_11;
  }

  v24 = objc_opt_self();
  v25 = sub_1AB45F834();
  v32 = 0;
  v26 = [v24 JSONObjectWithData:v25 options:4 error:&v32];

  v27 = v32;
  if (v26)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v28 = v27;
  sub_1AB45F594();

  swift_willThrow();
  return sub_1AB03BD58(v11, v13);
}

uint64_t JSONObject.isUndefined.getter()
{
  sub_1AB01EC0C(v0, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    v3 = (*(v2 + 136))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1AB014AC0(v5, &qword_1EB436BA0);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t JSONObject.uint.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v1 = (*(v2 + 48))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0);
  }

  return v1;
}

uint64_t JSONObject.int64.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v1 = (*(v2 + 56))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0);
  }

  return v1;
}

uint64_t JSONObject.uint64.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v1 = (*(v2 + 64))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0);
  }

  return v1;
}

unint64_t JSONObject.float.getter()
{
  sub_1AB01EC0C(v0, v8);
  v1 = v9;
  if (v9)
  {
    v2 = v10;
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v3 = (*(v2 + 72))(v1, v2);
    v4 = v3;
    v5 = HIDWORD(v3) & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    v6 = v4;
  }

  else
  {
    sub_1AB014AC0(v8, &qword_1EB436BA0);
    v6 = 0;
    LOBYTE(v5) = 1;
  }

  return v6 | (v5 << 32);
}

unint64_t sub_1AB2CEA10()
{
  result = qword_1EB438F78;
  if (!qword_1EB438F78)
  {
    sub_1AB45EFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438F78);
  }

  return result;
}

double FlowActionModel.tabSection.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t FlowActionStackDestinationNavigation<>.shouldStackPush<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = *(a6 + 24);
  v12(a3, a6, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A590);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v18[3] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v6, a2);
    v17[3] = AssociatedTypeWitness;
    __swift_allocate_boxed_opaque_existential_0(v17);
    (v12)(a3, a6);
    v14 = _isStructurallyEqual(_:to:with:at:)(v18, v17, 3uLL, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v15 = v14 ^ 1;
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

unint64_t sub_1AB2CEE10()
{
  result = qword_1EB43A598;
  if (!qword_1EB43A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A598);
  }

  return result;
}

unint64_t sub_1AB2CEED8()
{
  result = qword_1EB43A5A0;
  if (!qword_1EB43A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A5A0);
  }

  return result;
}

uint64_t SilverBulletJetPackAssetFetcher.init(bag:urlSessionConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for SilverBulletJetPackAssetFetcher() + 20);
  v7 = type metadata accessor for URLJetPackAssetFetcher();
  v8 = *(v7 + 24);
  v9 = sub_1AB45F764();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = a1;
  *(v10 + 32) = 1;
  *&v6[*(v7 + 28)] = v10;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = a2;
  *a3 = a1;

  return swift_unknownObjectRetain();
}

uint64_t sub_1AB2CF050()
{
  result = sub_1AB460514();
  qword_1EB46C2F0 = result;
  return result;
}

uint64_t sub_1AB2CF088()
{
  result = sub_1AB460514();
  qword_1EB46C2F8 = result;
  return result;
}

uint64_t SilverBulletJetPackAssetFetcher.init(bag:urlAssetFetcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for SilverBulletJetPackAssetFetcher() + 20);

  return sub_1AB2CF158(a2, v4);
}

uint64_t type metadata accessor for SilverBulletJetPackAssetFetcher()
{
  result = qword_1EB43A5B0;
  if (!qword_1EB43A5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB2CF158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLJetPackAssetFetcher();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a1;
  *(v4 + 120) = type metadata accessor for URLJetPackAssetRequest();
  *(v4 + 128) = swift_task_alloc();
  v6 = sub_1AB45F764();
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  v7 = swift_task_alloc();
  *(v4 + 152) = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  *(v4 + 56) = *a2;
  *(v4 + 89) = v10;
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  *(v4 + 88) = v10;
  v11 = swift_task_alloc();
  *(v4 + 160) = v11;
  *v11 = v4;
  v11[1] = sub_1AB2CF318;

  return sub_1AB2CF820(v7, (v4 + 56));
}

uint64_t sub_1AB2CF318()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1AB2CF7AC;
  }

  else
  {
    v2 = sub_1AB2CF42C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB2CF42C()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  (*(*(v0 + 144) + 16))(v2, *(v0 + 152), *(v0 + 136));
  *(v2 + *(v3 + 20)) = v1;
  v4 = (v2 + *(v3 + 24));
  type metadata accessor for SilverBulletJetPackAssetFetcher();
  *v4 = 0;
  v4[1] = 0;
  *(v0 + 40) = &type metadata for SystemDateProvider;
  *(v0 + 48) = &protocol witness table for SystemDateProvider;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1AB2CF52C;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  return sub_1AB1B16FC(v7, v6, v8, v0 + 16);
}

uint64_t sub_1AB2CF52C(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1AB2CF700;
  }

  else
  {
    *(v4 + 90) = a1 & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
    v5 = sub_1AB2CF660;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB2CF660()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_1AB166054(*(v0 + 128));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 90);

  return v4(v5);
}

uint64_t sub_1AB2CF700()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  sub_1AB166054(v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1AB2CF7AC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1AB2CF820(uint64_t a1, uint64_t *a2)
{
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  v5 = sub_1AB45F604();
  *(v3 + 232) = v5;
  *(v3 + 240) = *(v5 - 8);
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v6 = sub_1AB45F764();
  *(v3 + 272) = v6;
  *(v3 + 280) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 288) = v7;
  *(v3 + 296) = v8;
  *(v3 + 304) = *(a2 + 1);
  *(v3 + 320) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1AB2CF998, 0, 0);
}

uint64_t sub_1AB2CF998()
{
  v1 = **(v0 + 224);
  if (qword_1EB435D78 != -1)
  {
    v4 = **(v0 + 224);
    swift_once();
    v1 = v4;
  }

  v2 = [v1 URLForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D0);
  inited = swift_initStackObject();
  inited[2] = v2;
  inited[3] = sub_1AB098298;
  inited[4] = 0;
  *(v0 + 328) = sub_1AB0568F0();

  return MEMORY[0x1EEE6DFA0](sub_1AB2CFAA0, 0, 0);
}

uint64_t sub_1AB2CFAA0()
{
  v1 = v0 + 2;
  v2 = v0[32];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB2CFB6C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB058B94(v3);
  sub_1AB014AC0(v3, &qword_1EB43BD80);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB2CFB6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB2CFE50;
  }

  else
  {
    v4 = *(v1 + 256);
    v5 = *(v1 + 264);

    sub_1AB2D0A88(v4, v5);
    v3 = sub_1AB2CFCA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB2CFCA0()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1AB014AC0(v3, &unk_1EB4395B0);
    sub_1AB2D0AF8();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[37];
    v7 = v0[38];
    (*(v2 + 32))(v0[36], v3, v1);
    v0[25] = v8;
    v0[26] = v7;

    v9 = swift_task_alloc();
    v0[43] = v9;
    *v9 = v0;
    v9[1] = sub_1AB2CFEE4;

    return sub_1AB2D02B0(v0 + 25);
  }
}

uint64_t sub_1AB2CFE50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2CFEE4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {

    v7 = sub_1AB2D01B4;
  }

  else
  {
    *(v6 + 360) = a2;
    *(v6 + 368) = a1;

    v7 = sub_1AB2D0028;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AB2D0028()
{
  v1 = v0[45];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v13 = v0[34];
  v6 = v0[31];
  v8 = v0[29];
  v7 = v0[30];
  v12 = v0[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D47F0;
  *(v9 + 32) = v12;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  (*(v7 + 104))(v6, *MEMORY[0x1E6968F70], v8);
  sub_1AB0273A8();

  sub_1AB45F734();

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1AB2D01B4()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1AB2D025C()
{
  result = qword_1EB43A5A8;
  if (!qword_1EB43A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A5A8);
  }

  return result;
}

uint64_t sub_1AB2D02B0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[38] = v1;
  v2[39] = v3;
  v2[40] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1AB2D02D8, 0, 0);
}

uint64_t sub_1AB2D02D8()
{
  v1 = **(v0 + 304);
  if (qword_1EB435D70 != -1)
  {
    v4 = **(v0 + 304);
    swift_once();
    v1 = v4;
  }

  v2 = [v1 dictionaryForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386E0);
  inited = swift_initStackObject();
  inited[2] = v2;
  inited[3] = sub_1AB098790;
  inited[4] = 0;
  *(v0 + 328) = sub_1AB3A9510();

  return MEMORY[0x1EEE6DFA0](sub_1AB2D03E0, 0, 0);
}

uint64_t sub_1AB2D03E0()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1AB2D04AC;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB09F37C(v2);
  sub_1AB014AC0(v2, &unk_1EB439A90);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB2D04AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB2D07C8;
  }

  else
  {

    *(v1 + 344) = *(v1 + 288);
    v3 = sub_1AB2D05D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB2D05D8()
{
  v1 = *(v0 + 344);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = *(v0 + 320);
  *(v0 + 272) = *(v0 + 312);
  *(v0 + 280) = v2;

  sub_1AB461564();
  if (!*(v1 + 16) || (v3 = sub_1AB02B1D8(v0 + 200), (v4 & 1) == 0))
  {

    sub_1AB02B2E4(v0 + 200);
LABEL_12:
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    goto LABEL_13;
  }

  sub_1AB0165C4(*(v1 + 56) + 32 * v3, v0 + 240);
  sub_1AB02B2E4(v0 + 200);

  if (!*(v0 + 264))
  {
LABEL_13:
    sub_1AB014AC0(v0 + 240, &unk_1EB437E60);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 296);
    if (*(v5 + 16))
    {
      v6 = sub_1AB014DB4(0x65756C6176, 0xE500000000000000);
      if (v7)
      {
        v8 = (*(v5 + 56) + 16 * v6);
        v9 = *v8;
        v10 = v8[1];

        v11 = *(v0 + 8);

        return v11(v9, v10);
      }
    }
  }

LABEL_14:
  sub_1AB2D0AF8();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1AB2D07C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2D082C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB2D08DC;

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(a1, a2, a3);
}

uint64_t sub_1AB2D08DC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1AB2D0A0C()
{
  result = type metadata accessor for URLJetPackAssetFetcher();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB2D0A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB2D0AF8()
{
  result = qword_1EB43A5C0;
  if (!qword_1EB43A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A5C0);
  }

  return result;
}

unint64_t sub_1AB2D0B60()
{
  result = qword_1EB43A5C8;
  if (!qword_1EB43A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A5C8);
  }

  return result;
}

void *sub_1AB2D0BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v15[-1] - v8);
  (*(*a1 + 88))(v7);
  v18 = &type metadata for SyncTaskScheduler;
  v19 = &protocol witness table for SyncTaskScheduler;
  *v9 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AA0);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v10[2] = v11;
  sub_1AB2D179C(v9, v10 + *(*v10 + 96));
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v15[0] = sub_1AB2D180C;
  v15[1] = v12;
  v15[2] = sub_1AB21197C;
  v15[3] = v10;
  sub_1AB01494C(v17, v16);
  v16[40] = 0;
  swift_retain_n();

  sub_1AB198460(v15);

  sub_1AB014AC0(v15, &unk_1EB439850);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v10;
}

uint64_t sub_1AB2D0DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))();
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C08);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 64) = 0;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v5;
  v10[0] = sub_1AB2D1788;
  v10[1] = v8;
  v10[2] = sub_1AB2D1794;
  v10[3] = v5;
  sub_1AB01494C(v12, v11);
  v11[40] = 0;
  swift_retain_n();

  sub_1AB198248(v10);

  sub_1AB014AC0(v10, &unk_1EB4377D0);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v5;
}

uint64_t static PipelinePhase<>.decodeString(with:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = sub_1AB4605C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = swift_allocObject();
  *(result + 16) = sub_1AB29219C;
  *(result + 24) = v9;
  *a2 = sub_1AB2D1550;
  a2[1] = result;
  return result;
}

uint64_t sub_1AB2D10AC(__int128 *a1, uint64_t a2)
{
  v4 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v4);
  v15 = *a1;
  (*(v6 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1AB29F5A4();
  v7 = sub_1AB460574();
  v9 = v8;
  if (v8)
  {
    v10 = v7;
    v11 = 1;
  }

  else
  {
    sub_1AB2D1818();
    v10 = swift_allocError();
    v11 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437530);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = v10;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  return v12;
}

uint64_t static PipelinePhase<>.convertToJSONObject()@<X0>(uint64_t (**a1)(uint64_t *a1)@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = sub_1AB2D1280;
  *(result + 24) = 0;
  *a1 = sub_1AB2D1678;
  a1[1] = result;
  return result;
}

uint64_t sub_1AB2D1280@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  if (qword_1EB4356D0 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, v3, v4))
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v6 = qword_1ED4D1BA0;
LABEL_9:
    v16 = sub_1AB016760(0, v6);
    *&v15 = v5;
LABEL_10:
    sub_1AB014B78(&v15, v17);
    sub_1AB0165C4(v17, &v15);
    a2[3] = &type metadata for FoundationValue;
    a2[4] = &off_1F1FFB5A8;
    v7 = swift_allocObject();
    *a2 = v7;
    sub_1AB014B78(&v15, (v7 + 16));
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  if (qword_1EB4356D8 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, v3, v4))
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v6 = &qword_1ED4D0BE0;
    goto LABEL_9;
  }

  v9 = objc_opt_self();
  v10 = sub_1AB45F834();
  v14 = 0;
  v11 = [v9 JSONObjectWithData:v10 options:4 error:&v14];

  v12 = v14;
  if (v11)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v13 = v12;
  sub_1AB45F594();

  return swift_willThrow();
}

uint64_t DataDecodingError.hashValue.getter()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

uint64_t sub_1AB2D1558(uint64_t *a1, void (*a2)(uint64_t *, double))
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  a2(&v11, v6);
  sub_1AB432294(v8);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1AB2D1688()
{
  result = qword_1EB43A5D0;
  if (!qword_1EB43A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A5D0);
  }

  return result;
}

uint64_t sub_1AB2D16EC(__int128 *a1, void (*a2)(void *__return_ptr, __int128 *))
{
  v4 = *a1;
  a2(v3, &v4);
  sub_1AB42E0C8(v3);
  return sub_1AB066D84(v3);
}

uint64_t sub_1AB2D179C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB2D1818()
{
  result = qword_1EB43A5D8;
  if (!qword_1EB43A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A5D8);
  }

  return result;
}

uint64_t CookieProvider.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1AB01494C(v2, v9);
  v4 = type metadata accessor for JSCookieProviderObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v9, v5 + OBJC_IVAR____TtC9JetEngine22JSCookieProviderObject_accountProvider);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  a1[3] = v4;
  a1[4] = &off_1F2008EB0;
  *a1 = v6;
  return result;
}

uint64_t sub_1AB2D1904@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1AB01494C(v2, v9);
  v4 = type metadata accessor for JSCookieProviderObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v9, v5 + OBJC_IVAR____TtC9JetEngine22JSCookieProviderObject_accountProvider);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  a1[3] = v4;
  a1[4] = &off_1F2008EB0;
  *a1 = v6;
  return result;
}

uint64_t sub_1AB2D199C(void *a1, void *a2)
{
  v5 = [objc_opt_self() currentContext];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1AB2D1B0C(v5, a1, a2, v2);

    return v7;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB2D1B0C(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v63 = a1;
  v8 = type metadata accessor for JSCookie();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = sub_1AB45F764();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a2 isString])
  {
    goto LABEL_5;
  }

  v18 = [a2 toString];
  if (!v18)
  {
    goto LABEL_5;
  }

  v56 = a4;
  v57 = v17;
  v58 = v13;
  v19 = v18;
  sub_1AB460544();
  v21 = v20;

  v22 = v58;
  sub_1AB45F714();
  if ((*(v14 + 48))(v12, 1, v22) == 1)
  {

    sub_1AB03BCD0(v12);
LABEL_5:
    sub_1AB0C3EF0();
    swift_allocError();
    a3 = v23;
    JSError.init(badValue:expected:)(a2, 0x7520676E69727473, 0xEA00000000006C72, v23);
    swift_willThrow();
    return a3;
  }

  v55 = v14;
  (*(v14 + 32))(v57, v12, v22);
  if (![a3 isString] || (v25 = objc_msgSend(a3, sel_toString)) == 0)
  {

    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(a3, 0x676E69727473, 0xE600000000000000, v45);
    swift_willThrow();
    (*(v55 + 8))(v57, v22);
    return a3;
  }

  v51 = v21;
  v26 = v25;
  v53 = sub_1AB460544();
  v54 = v27;

  v28 = *(v56 + OBJC_IVAR____TtC9JetEngine22JSCookieProviderObject_accountProvider + 24);
  v29 = *(v56 + OBJC_IVAR____TtC9JetEngine22JSCookieProviderObject_accountProvider + 32);
  __swift_project_boxed_opaque_existential_1Tm((v56 + OBJC_IVAR____TtC9JetEngine22JSCookieProviderObject_accountProvider), v28);
  (*(v29 + 8))(v60, v28, v29);
  v30 = v60[0];
  if (v60[0])
  {
    v31 = sub_1AB45F654();
    v32 = [v30 ams:v31 cookiesForURL:?];

    sub_1AB2D2214();
    v33 = sub_1AB460954();

    if (v33 >> 62)
    {
LABEL_32:
      v34 = sub_1AB4618F4();
      if (v34)
      {
LABEL_12:
        v35 = 0;
        v56 = v33 & 0xC000000000000001;
        v52 = v33 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v56)
          {
            v36 = MEMORY[0x1AC59C990](v35, v33);
          }

          else
          {
            if (v35 >= *(v52 + 16))
            {
              goto LABEL_31;
            }

            v36 = *(v33 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v39 = [v36 name];
          v40 = sub_1AB460544();
          v42 = v41;

          if (v40 == v53 && v42 == v54)
          {
            break;
          }

          v44 = sub_1AB461DA4();

          if (v44)
          {
            goto LABEL_27;
          }

          ++v35;
          v22 = v58;
          if (v38 == v34)
          {
            goto LABEL_33;
          }
        }

LABEL_27:

        v46 = v37;
        v47 = v59;
        sub_1AB2EB598(v46, v59);
        v48 = v63;
        a3 = v47;
        sub_1AB2EB7BC(v63, v60);
        if (v4)
        {

          sub_1AB2D2260(v47);
          (*(v55 + 8))(v57, v58);
        }

        else
        {
          v49 = v61;
          v50 = v62;
          __swift_project_boxed_opaque_existential_1Tm(v60, v61);
          a3 = (*(v50 + 16))(v48, v49, v50);

          sub_1AB2D2260(v47);
          (*(v55 + 8))(v57, v58);
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
        }

        return a3;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_12;
      }
    }

LABEL_33:
  }

  result = [objc_opt_self() valueWithNullInContext_];
  if (result)
  {
    a3 = result;
    (*(v55 + 8))(v57, v22);

    return a3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1AB2D2214()
{
  result = qword_1EB433498;
  if (!qword_1EB433498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB433498);
  }

  return result;
}

uint64_t sub_1AB2D2260(uint64_t a1)
{
  v2 = type metadata accessor for JSCookie();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB2D22BC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return archive_entry_set_pathname();
  }

  else
  {
    return sub_1AB4615C4();
  }
}

uint64_t sub_1AB2D2354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (archive_read_new())
  {
    if (archive_write_disk_new())
    {
      v21 = v6;
      archive_write_disk_set_options();
      archive_read_support_format_all();
      v10 = swift_slowAlloc();
      sub_1AB01494C(a1, v23);
      v24 = a3;
      v25 = v10;
      v19 = v10;
      archive_read_open();
      v22 = 0;
      next_header = archive_read_next_header();
      if (dword_1F1FF3F18 == next_header || dword_1F1FF3F1C == next_header)
      {
        v20 = (v7 + 8);
        while (1)
        {
          if (next_header == 1)
          {
            goto LABEL_22;
          }

          if (!v22 || !archive_entry_pathname())
          {
            sub_1AB31D8D0(0xD000000000000030, 0x80000001AB508360);
            goto LABEL_22;
          }

          sub_1AB460704();
          sub_1AB45F664();

          v15 = sub_1AB04BE00();
          if (v3)
          {
            goto LABEL_21;
          }

          if ((v15 & 1) == 0)
          {
            break;
          }

          v16 = sub_1AB45F6F4();
          sub_1AB2D22BC(v16, v17);

          if (dword_1F1FF3F40 != archive_write_header())
          {
            sub_1AB2D2F8C();
            goto LABEL_21;
          }

          sub_1AB2D3094();
          (*v20)(v9, v21);
          next_header = archive_read_next_header();
          if (dword_1F1FF3F18 != next_header && dword_1F1FF3F1C != next_header)
          {
            goto LABEL_5;
          }
        }

        sub_1AB2D288C();
        swift_allocError();
        *v18 = xmmword_1AB4E7E00;
        swift_willThrow();
LABEL_21:
        (*v20)(v9, v21);
        goto LABEL_22;
      }

LABEL_5:
      sub_1AB2D2F8C();
LABEL_22:
      sub_1AB2D3414(v23);
      MEMORY[0x1AC59F020](v19, -1, -1);
      archive_write_close();
      archive_write_free();
    }

    else
    {
      sub_1AB2D288C();
      swift_allocError();
      *v14 = 0;
      v14[1] = 0;
      swift_willThrow();
    }

    archive_read_close();
    return archive_read_free();
  }

  else
  {
    sub_1AB2D288C();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0;
    return swift_willThrow();
  }
}

uint64_t PackageSerializationError.errorDescription.getter()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      return 0xD000000000000025;
    }

    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 0xD000000000000016;
      }

      goto LABEL_13;
    }

    v3 = 44;
    return v3 | 0xD000000000000010;
  }

  if (!v1)
  {
    return 0x206E776F6E6B6E55;
  }

  if (v1 == 1)
  {
    v3 = 9;
    return v3 | 0xD000000000000010;
  }

LABEL_13:
  v4 = *v0;
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v4, v1);
  MEMORY[0x1AC59BA20](10530, 0xE200000000000000);
  return 0xD000000000000010;
}

unint64_t sub_1AB2D288C()
{
  result = qword_1EB43A5E8;
  if (!qword_1EB43A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A5E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine25PackageSerializationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB2D2908(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 5)
  {
    return (v3 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB2D2968(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_1AB2D29B8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1AB2D29F8(uint64_t a1, uint64_t a2, size_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (archive_write_new())
  {
    archive_write_add_filter_none();
    archive_write_set_format_ustar();
    sub_1AB01494C(a2, v12);
    archive_write_open();
    if (archive_read_disk_new())
    {
      v6 = getcwd(0, 0);
      if (v6)
      {
        v7 = v6;
        sub_1AB45F6A4();
        if (!v3)
        {
          if (v11)
          {
            sub_1AB2D3164();
          }

          else
          {
            sub_1AB2D2C38(a3);
            if (chdir(v7))
            {
              sub_1AB31D6E0(0xD000000000000029, 0x80000001AB508290);
            }
          }
        }

        free(v7);
      }

      else
      {
        sub_1AB2D3164();
      }

      archive_read_close();
      archive_read_free();
    }

    else
    {
      sub_1AB2D288C();
      swift_allocError();
      *v10 = 0;
      v10[1] = 0;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    archive_write_close();
    return archive_write_free();
  }

  else
  {
    sub_1AB2D288C();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1AB2D2C38(size_t a1)
{
  disk_open = archive_read_disk_open();
  if (dword_1F1FF3F68 == disk_open || unk_1F1FF3F6C == disk_open)
  {
    result = archive_read_next_header();
    if (dword_1F1FF3F90 == result || unk_1F1FF3F94 == result)
    {
      v6 = 0;
      v7 = &unk_1F1FF3000;
      while (1)
      {
        if (result == 1)
        {
          return result;
        }

        if (v6 > 2)
        {
          break;
        }

        v9 = archive_write_header();
        if (dword_1F1FF3FB8 != v9 && unk_1F1FF3FBC != v9 && dword_1F1FF3FC0 != v9)
        {
          return sub_1AB2D2F8C();
        }

        if (v9 == -10)
        {
          ++v6;
        }

        else
        {
          if (v9 == -30)
          {
            return sub_1AB2D2F8C();
          }

          if (v9 >= -24)
          {
            if (!archive_entry_sourcepath())
            {
              sub_1AB2D288C();
              swift_allocError();
              v18 = xmmword_1AB465FA0;
              goto LABEL_46;
            }

            v12 = sub_1AB4600D4();
            if (v12 == -1)
            {
              return sub_1AB2D3164();
            }

            v13 = v12;
            v14 = swift_slowAlloc();
            v16 = read(v13, v14, a1);
            if (v16 == -1 && MEMORY[0x1AC59B420](-1, v15) != 21)
            {
LABEL_43:
              sub_1AB2D3164();
              MEMORY[0x1AC59F020](v14, -1, -1);
              return close(v13);
            }

            while (v16 >= 1)
            {
              archive_write_data();
              v16 = read(v13, v14, a1);
              if (v16 == -1)
              {
                goto LABEL_43;
              }
            }

            MEMORY[0x1AC59F020](v14, -1, -1);
            close(v13);
            v7 = &unk_1F1FF3000;
          }

          if (v7[1018] != archive_read_disk_descend())
          {
            return sub_1AB2D2F8C();
          }

          v6 = 0;
        }

        result = archive_read_next_header();
        if (dword_1F1FF3F90 != result && unk_1F1FF3F94 != result)
        {
          return sub_1AB2D2F8C();
        }
      }

      sub_1AB2D288C();
      swift_allocError();
      v18 = xmmword_1AB4D41A0;
LABEL_46:
      *v17 = v18;
      return swift_willThrow();
    }
  }

  return sub_1AB2D2F8C();
}

uint64_t sub_1AB2D2F20@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  if (a1)
  {
    result = chdir(a1);
    *a2 = result;
  }

  else
  {
    sub_1AB2D288C();
    swift_allocError();
    *v4 = xmmword_1AB465FA0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AB2D2F8C()
{
  if (archive_error_string())
  {
    sub_1AB4615D4();

    v0 = sub_1AB460704();
    MEMORY[0x1AC59BA20](v0);

    sub_1AB31D6E0(0xD00000000000001BLL, 0x80000001AB5082C0);

    v1 = sub_1AB460704();
    v3 = v2;
    sub_1AB2D288C();
    swift_allocError();
    *v4 = v1;
    v4[1] = v3;
  }

  else
  {
    sub_1AB2D288C();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
  }

  return swift_willThrow();
}

uint64_t sub_1AB2D3094()
{
  do
  {
    result = archive_read_data_block();
    if (dword_1F1FF3EF0 != result && unk_1F1FF3EF4 != result)
    {
      break;
    }

    if (result == 1)
    {
      return result;
    }
  }

  while ((archive_write_data_block() & 0x8000000000000000) == 0);
  return sub_1AB2D2F8C();
}

uint64_t sub_1AB2D3164()
{
  v0 = sub_1AB45EFE4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC59B420](v2);
  v5 = sub_1AB4600C4();
  if ((v5 & 0x100000000) != 0)
  {
    sub_1AB19B9F4();
    swift_allocError();
    *v6 = 1;
  }

  else
  {
    v8[3] = v5;
    sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    sub_1AB252240();
    sub_1AB45F574();
    sub_1AB45EFD4();
    (*(v1 + 8))(v4, v0);
  }

  return swift_willThrow();
}

uint64_t sub_1AB2D32A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  sub_1AB01494C(a1, v8);
  sub_1AB1580C0(v8, v9);
  if (!a2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_5:
    sub_1AB31D6E0(0xD000000000000038, 0x80000001AB5082E0);
    return -1;
  }

  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  (*(v6 + 16))(a2, a3, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return a3;
}

uint64_t sub_1AB2D3474(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1AB2D35D0(a1, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v5 = v12;
    v7 = (*(v4 + 32))(v12, v11, v3, v4);
    if (a2)
    {
      *a2 = v5;
    }

    sub_1AB2D3414(v8);
    return v7;
  }

  else
  {
    sub_1AB31D6E0(0xD000000000000038, 0x80000001AB5082E0);
    return -1;
  }
}

uint64_t sub_1AB2D3660()
{
  v1 = OBJC_IVAR___JEMediaActivity_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1AB2D36F8(uint64_t a1)
{
  v3 = OBJC_IVAR___JEMediaActivity_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1AB2D38B4(uint64_t a1)
{
  v3 = OBJC_IVAR___JEMediaActivity_playlistItem;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1AB2D390C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___JEMediaActivity_playlistItem;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id MediaActivity.__allocating_init(type:playlistItem:pipeline:topic:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  swift_getObjectType();

  return sub_1AB2D56A4(a1, a2, a3, a4, a5, v11);
}

id MediaActivity.init(type:playlistItem:pipeline:topic:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_1AB2D56A4(a1, a2, a3, a4, a5, v5);
}

char *sub_1AB2D3B88(unint64_t a1)
{
  v3 = OBJC_IVAR___JEMediaActivity_playlistItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 0;
  if ([v4 respondsToSelector_])
  {
    v5 = [v4 startOverallPosition];
  }

  v6 = *(v1 + v3);
  if ([v6 respondsToSelector_])
  {
    result = [v6 startPosition];
    if (v5 <= a1)
    {
LABEL_19:
      v26 = a1 - v5;
      if (a1 < v5)
      {
        __break(1u);
      }

      else
      {
        v27 = __CFADD__(v26, result);
        result += v26;
        if (!v27)
        {
          return result;
        }
      }

      __break(1u);
      return result;
    }
  }

  else if (v5 <= a1)
  {
    result = 0;
    goto LABEL_19;
  }

  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  v34 = sub_1AB0168A8(0, 98, 0, MEMORY[0x1E69E7CC0]);
  v10._countAndFlagsBits = 0xD00000000000003BLL;
  v10._object = 0x80000001AB5083E0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = MEMORY[0x1E69E76D8];
  v33 = MEMORY[0x1E69E76D8];
  v32[0] = a1;
  sub_1AB01522C(v32, v28);
  v29 = 0u;
  v30 = 0u;
  sub_1AB0169C4(v28, &v29);
  v31 = 1;
  v12 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[40 * v14];
  v16 = v29;
  v17 = v30;
  v15[64] = v31;
  *(v15 + 2) = v16;
  *(v15 + 3) = v17;
  v34 = v12;
  sub_1AB014AC0(v32, &unk_1EB437E60);
  v18._object = 0x80000001AB508420;
  v18._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v33 = v11;
  v32[0] = v5;
  sub_1AB01522C(v32, v28);
  v29 = 0u;
  v30 = 0u;
  sub_1AB0169C4(v28, &v29);
  v31 = 1;
  v19 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    v34 = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v29;
  v24 = v30;
  v22[64] = v31;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v34 = v19;
  sub_1AB014AC0(v32, &unk_1EB437E60);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v9 + 32) = v34;
  *&v29 = v8;
  LOBYTE(v32[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v9, v32);

  return 0;
}

uint64_t sub_1AB2D4014(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D9850;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v17;
  v18 = sub_1AB2D3B88(a1);
  v19 = MEMORY[0x1E69E76D8];
  *(inited + 72) = MEMORY[0x1E69E76D8];
  *(inited + 48) = v18;
  *(inited + 80) = sub_1AB460544();
  *(inited + 88) = v20;
  *(inited + 120) = v19;
  *(inited + 96) = a1;
  *(inited + 128) = sub_1AB460544();
  *(inited + 136) = v21;
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 144) = a2;
  *(inited + 152) = a3;
  *(inited + 176) = sub_1AB460544();
  *(inited + 184) = v22;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
  *(inited + 192) = a4;
  *(inited + 200) = a5;

  v23 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  swift_arrayDestroy();
  if (a6)
  {
    v24 = a6;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1AB2AFF70(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1AB2AFF70((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v24[v26 + 4] = v23;
  v27 = OBJC_IVAR___JEMediaActivity_type;
  swift_beginAccess();
  v28 = sub_1AB2D435C(*(v11 + v27));
  v30 = v24[2];
  v29 = v24[3];
  if (v30 >= v29 >> 1)
  {
    v34 = v28;
    v24 = sub_1AB2AFF70((v29 > 1), v30 + 1, 1, v24);
    v28 = v34;
  }

  v24[2] = v30 + 1;
  v24[v30 + 4] = v28;
  v41 = v24;
  sub_1AB2D5948(&v41);
  v31 = sub_1AB2F116C(v41);

  sub_1AB01522C(a7, v39);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A610);
    if (swift_dynamicCast())
    {
      v32 = v38;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    sub_1AB014AC0(v39, &unk_1EB437E60);
    v32 = 0;
  }

  a11(v31, v32, *(v11 + v27));
}

unint64_t sub_1AB2D435C(unint64_t a1)
{
  if (a1 > 1)
  {
    v13 = MEMORY[0x1E69E7CC0];

    return sub_1AB01B220(v13);
  }

  else
  {
    v1 = sub_1AB460544();
    v3 = v2;
    v4 = sub_1AB460544();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D47F0;
    *(inited + 32) = sub_1AB460544();
    v8 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v9;
    *(inited + 48) = v1;
    *(inited + 56) = v3;
    *(inited + 80) = sub_1AB460544();
    *(inited + 88) = v10;
    *(inited + 120) = v8;
    *(inited + 96) = v4;
    *(inited + 104) = v6;
    v11 = sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
    swift_arrayDestroy();
    return v11;
  }
}

uint64_t sub_1AB2D4510(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _OWORD *))
{
  v14 = sub_1AB460544();
  v16 = v15;
  if (a5)
  {
    v17 = sub_1AB460544();
    a5 = v18;
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (a6)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    a6 = sub_1AB460954();
  }

LABEL_4:
  if (a7)
  {
    v19 = a1;
    swift_unknownObjectRetain();
    sub_1AB461494();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v22, 0, sizeof(v22));
    v20 = a1;
  }

  a8(a3, v14, v16, v17, a5, a6, v22);

  return sub_1AB014AC0(v22, &unk_1EB437E60);
}

void sub_1AB2D464C(uint64_t *a1@<X8>)
{
  if (*(*(v1 + OBJC_IVAR___JEMediaActivity_pipelineHandler) + 240))
  {
    v11 = &type metadata for SyncTaskScheduler;
    v12 = &protocol witness table for SyncTaskScheduler;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A610);
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = MEMORY[0x1E69E7CC0];
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
    *(v4 + 32) = 0;
    v7 = swift_allocObject();
    v7[2] = sub_1AB2D47E8;
    v7[3] = 0;
    v7[4] = v4;
    v8[0] = sub_1AB2D5C40;
    v8[1] = v7;
    v8[2] = sub_1AB2D5C4C;
    v8[3] = v4;
    sub_1AB01494C(v10, v9);
    v9[40] = 0;
    swift_retain_n();

    sub_1AB0800FC(v8);

    sub_1AB014AC0(v8, &unk_1EB437970);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v4 = 0;
    v3 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v3;
}

unint64_t *sub_1AB2D47E8@<X0>(uint64_t *a1@<X0>, unint64_t **a2@<X8>)
{
  result = sub_1AB2D504C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AB2D4A60(void (*a1)(uint64_t), uint64_t a2)
{
  if (*(*(v2 + OBJC_IVAR___JEMediaActivity_pipelineHandler) + 240))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_1AB016760(0, &qword_1ED4D2060);
    swift_retain_n();

    v12[3] = v7;
    v12[4] = &protocol witness table for OS_dispatch_queue;
    v12[0] = sub_1AB461124();
    v10[0] = sub_1AB2D6914;
    v10[1] = v5;
    v10[2] = sub_1AB2D690C;
    v10[3] = v6;
    sub_1AB01494C(v12, v11);
    v11[40] = 0;

    sub_1AB0800FC(v10);

    sub_1AB014AC0(v10, &unk_1EB437970);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {

    a1(v9);
  }
}

uint64_t sub_1AB2D4C18(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  if (*(*&v2[OBJC_IVAR___JEMediaActivity_pipelineHandler] + 240))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1AB2D5C54;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1AB2D5C54;
    *(v7 + 24) = v5;
    v8 = sub_1AB016760(0, &qword_1ED4D2060);
    swift_retain_n();

    v9 = v2;

    v14[3] = v8;
    v14[4] = &protocol witness table for OS_dispatch_queue;
    v14[0] = sub_1AB461124();
    v12[0] = sub_1AB2D6914;
    v12[1] = v6;
    v12[2] = sub_1AB2D690C;
    v12[3] = v7;
    sub_1AB01494C(v14, v13);
    v13[40] = 0;

    sub_1AB0800FC(v12);

    sub_1AB014AC0(v12, &unk_1EB437970);
    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {

    v11 = v2;

    sub_1AB2D630C(v11, a1, a2);
  }
}

void sub_1AB2D4E44(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

id MediaActivity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaActivity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t *sub_1AB2D4FD4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1AB2D51AC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1AB2D504C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1AB2D51AC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1AB2D4FD4(v8, v4, v2);
  result = MEMORY[0x1AC59F020](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1AB2D51AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = result;
  v22 = 0;
  v23 = a3;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v23 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1AB0165C4(*(v23 + 56) + 32 * v12, v27);
    v25[0] = v15;
    v25[1] = v14;
    v16 = sub_1AB0165C4(v27, &v26);
    v24[0] = v15;
    v24[1] = v14;
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = v24;
    swift_bridgeObjectRetain_n();
    v17 = v28;
    LOBYTE(v15) = sub_1AB0A1064(sub_1AB021538, v19, &unk_1F1FF3FF0);
    v28 = v17;
    swift_arrayDestroy();
    sub_1AB014AC0(v25, &qword_1EB43A620);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    if (v15)
    {
      *(v21 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1AB2D53A8(v21, v20, v22, v23);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1AB2D53A8(v21, v20, v22, v23);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB2D53A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0);
  result = sub_1AB461924();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1AB0165C4(v17 + 32 * v16, v33);
    sub_1AB014B78(v33, v32);
    sub_1AB4620A4();

    sub_1AB460684();
    result = sub_1AB462104();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1AB014B78(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1AB2D55F8(__int128 *a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v4 = *a1;
  a2(&v3, &v4);
  sub_1AB434C58(v3);
}

id sub_1AB2D56A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  type metadata accessor for WrappedMetricsPipeline();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    *&a6[OBJC_IVAR___JEMediaActivity_type] = a1;
    *&a6[OBJC_IVAR___JEMediaActivity_playlistItem] = a2;
    sub_1AB0560F8(v12 + OBJC_IVAR___JEWrappedMetricsPipeline_pipeline, &v27);
    type metadata accessor for MediaActivityPipelineHandler();
    v13 = swift_allocObject();
    *(v13 + 232) = 0;
    *(v13 + 240) = 0;
    *(v13 + 248) = 0;
    swift_unknownObjectRetain();
    v14 = MEMORY[0x1E69E7CC0];
    *(v13 + 256) = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    *(v13 + 264) = sub_1AB01B220(v14);
    v15 = v38;
    *(v13 + 176) = v37;
    *(v13 + 192) = v15;
    *(v13 + 208) = v39;
    v16 = v34;
    *(v13 + 112) = v33;
    *(v13 + 128) = v16;
    v17 = v36;
    *(v13 + 144) = v35;
    *(v13 + 160) = v17;
    v18 = v30;
    *(v13 + 48) = v29;
    *(v13 + 64) = v18;
    v19 = v32;
    *(v13 + 80) = v31;
    *(v13 + 96) = v19;
    v20 = v28;
    *(v13 + 16) = v27;
    *(v13 + 32) = v20;
    *(v13 + 216) = a4;
    *(v13 + 224) = a5;
    *&a6[OBJC_IVAR___JEMediaActivity_pipelineHandler] = v13;
    v26.receiver = a6;
    v26.super_class = type metadata accessor for MediaActivity();
    v21 = objc_msgSendSuper2(&v26, sel_init);
    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AB4D4720;
    *(&v28 + 1) = MEMORY[0x1E69E6158];
    *&v27 = 0xD00000000000006ALL;
    *(&v27 + 1) = 0x80000001AB508570;
    *(v24 + 48) = 0u;
    *(v24 + 32) = 0u;
    sub_1AB0169C4(&v27, v24 + 32);
    *(v24 + 64) = 0;
    *(v23 + 32) = v24;
    *&v27 = v22;
    v40 = 0;
    OSLogger.log(contentsOf:withLevel:)(v23, &v40);

    swift_unknownObjectRelease();

    type metadata accessor for MediaActivity();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v21;
}

uint64_t sub_1AB2D5948(void *a1)
{
  v3 = sub_1AB45F9B4();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB460544();
  v8 = v7;
  v24 = a1;
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < v9[2])
    {
      v1 = v9[v11 + 4];
      if (*(v1 + 16))
      {

        v12 = sub_1AB014DB4(v6, v8);
        if (v13)
        {
          v22 = v12;

          sub_1AB0165C4(*(v1 + 56) + 32 * v22, v27);

          return sub_1AB014AC0(v27, &unk_1EB437E60);
        }
      }

      ++v11;
      memset(v27, 0, sizeof(v27));
      sub_1AB014AC0(v27, &unk_1EB437E60);
      if (v10 == v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v15 = objc_opt_self();
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  v16 = sub_1AB45F914();
  (*(v25 + 8))(v5, v26);
  v17 = [v15 serverTimeFromDate_];

  *(inited + 72) = sub_1AB016760(0, &qword_1ED4D1940);
  *(inited + 48) = v17;
  v1 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(inited + 32, &qword_1EB439AA0);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1AB2AFF70(0, v9[2] + 1, 1, v9);
    v9 = result;
  }

  v19 = v24;
  v21 = v9[2];
  v20 = v9[3];
  if (v21 >= v20 >> 1)
  {
    result = sub_1AB2AFF70((v20 > 1), v21 + 1, 1, v9);
    v9 = result;
  }

  v9[2] = v21 + 1;
  v9[v21 + 4] = v1;
  *v19 = v9;
  return result;
}

void sub_1AB2D5C60(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if (*(*(a1 + OBJC_IVAR___JEMediaActivity_pipelineHandler) + 240))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1AB2D6910;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1AB2D6910;
    *(v6 + 24) = v4;
    v7 = sub_1AB016760(0, &qword_1ED4D2060);
    swift_retain_n();
    _Block_copy(a2);

    v11[3] = v7;
    v11[4] = &protocol witness table for OS_dispatch_queue;
    v11[0] = sub_1AB461124();
    v9[0] = sub_1AB2D6914;
    v9[1] = v5;
    v9[2] = sub_1AB2D690C;
    v9[3] = v6;
    sub_1AB01494C(v11, v10);
    v10[40] = 0;

    sub_1AB0800FC(v9);

    sub_1AB014AC0(v9, &unk_1EB437970);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    _Block_copy(a2);

    v8 = sub_1AB4602D4();
    (a2)[2](a2, v8);
  }
}

void sub_1AB2D5E88(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  if (*(*(a1 + OBJC_IVAR___JEMediaActivity_pipelineHandler) + 248))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1AB2D6910;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1AB2D6910;
    *(v6 + 24) = v4;
    v7 = sub_1AB016760(0, &qword_1ED4D2060);
    swift_retain_n();
    _Block_copy(a2);

    v11[3] = v7;
    v11[4] = &protocol witness table for OS_dispatch_queue;
    v11[0] = sub_1AB461124();
    v9[0] = sub_1AB2D680C;
    v9[1] = v5;
    v9[2] = sub_1AB2D6838;
    v9[3] = v6;
    sub_1AB01494C(v11, v10);
    v10[40] = 0;

    sub_1AB0800FC(v9);

    sub_1AB014AC0(v9, &unk_1EB437970);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    _Block_copy(a2);

    v8 = sub_1AB4602D4();
    (a2)[2](a2, v8);
  }
}

uint64_t sub_1AB2D60B0(char *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = sub_1AB2D6808;
  v5[4] = v4;
  if (*(*&a1[OBJC_IVAR___JEMediaActivity_pipelineHandler] + 240))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1AB2D6904;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1AB2D6904;
    *(v7 + 24) = v5;
    v8 = sub_1AB016760(0, &qword_1ED4D2060);
    swift_retain_n();
    _Block_copy(a2);

    v9 = a1;

    v14[3] = v8;
    v14[4] = &protocol witness table for OS_dispatch_queue;
    v14[0] = sub_1AB461124();
    v12[0] = sub_1AB2D6914;
    v12[1] = v6;
    v12[2] = sub_1AB2D690C;
    v12[3] = v7;
    sub_1AB01494C(v14, v13);
    v13[40] = 0;

    sub_1AB0800FC(v12);

    sub_1AB014AC0(v12, &unk_1EB437970);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    _Block_copy(a2);

    v11 = a1;

    sub_1AB2D5E88(v11, a2);
  }
}

uint64_t sub_1AB2D630C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(a1 + OBJC_IVAR___JEMediaActivity_pipelineHandler) + 248))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = a3;
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = sub_1AB016760(0, &qword_1ED4D2060);
    swift_retain_n();

    v12[3] = v7;
    v12[4] = &protocol witness table for OS_dispatch_queue;
    v12[0] = sub_1AB461124();
    v10[0] = sub_1AB2D6914;
    v10[1] = v5;
    v10[2] = sub_1AB2D690C;
    v10[3] = v6;
    sub_1AB01494C(v12, v11);
    v11[40] = 0;

    sub_1AB0800FC(v10);

    sub_1AB014AC0(v10, &unk_1EB437970);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {

    a2(v9);
  }
}

void sub_1AB2D683C()
{
  v1 = *(v0 + 16);
  v2 = sub_1AB4602D4();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1AB2D68B0()
{
  v1 = *(v0 + 16);
  sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  v1();
}

double static AutomationSemantics.menuItem(_:id:parentId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *&v25 = &unk_1F1FF4040;
  *(&v25 + 1) = MEMORY[0x1E69E7CC0];

  sub_1AB06F948(v10, sub_1AB06E6CC, 0);
  v19 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  sub_1AB01522C(a3, v24);
  sub_1AB01522C(v24, &v22);
  if (v23)
  {
    sub_1AB014B78(&v22, v21);
    sub_1AB0165C4(v21, v20);
    v12 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v20);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_1AB0167A8(v24);
  }

  else
  {
    sub_1AB0167A8(v24);
    v12 = 0;
    v14 = 0;
  }

  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  sub_1AB01522C(a4, v24);
  sub_1AB01522C(v24, &v22);
  if (v23)
  {
    sub_1AB014B78(&v22, v21);
    sub_1AB0165C4(v21, v20);
    v15 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v20);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_1AB0167A8(v24);
  }

  else
  {
    sub_1AB0167A8(v24);
    v15 = 0;
    v17 = 0;
  }

  *(inited + 64) = 0x6449746E65726170;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v15;
  *(inited + 88) = v17;
  *v24 = v19;
  sub_1AB05ED60(inited);
  result = v24[0];
  *a5 = *v24;
  return result;
}

void sub_1AB2D6B40(uint64_t a1@<X0>, __int128 *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v10 = *a3;
  v11 = *a4;
  v12 = a4[1];
  v13 = type metadata accessor for PageRenderEvent();
  v14 = *(v5 + *(v13 + 20));
  if (v14)
  {
    swift_willThrow();
    v15 = v14;
    return;
  }

  v168 = v10;
  v164 = v13;
  v16 = *(type metadata accessor for MonotonicTimeReference() + 20);
  v174 = v6;
  v17 = (v6 + v16);
  v19 = *v17;
  v18 = v17[1];
  v171 = v18;
  if (v11 == v19 && v12 < v18)
  {
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
LABEL_110:
    v125 = sub_1AB461614();
    if (*(a2 + 2))
    {
      v122 = sub_1AB014DB4(v125, v126);
      v128 = v127;

      if (v128)
      {
LABEL_112:
        sub_1AB0165C4(*(a2 + 7) + 32 * v122, v183);
        sub_1AB0167A8(v183);
LABEL_115:
        v131 = v182[0];
        if (*(v182[0] + 16))
        {
          sub_1AB1603E0();
          swift_allocError();
          *v132 = v131;
          *(v132 + 8) = 0;
          v133 = 3;
LABEL_117:
          *(v132 + 16) = v133;
          swift_willThrow();
LABEL_128:

          goto LABEL_129;
        }

        v134 = sub_1AB461614();
        if (!*(a2 + 2))
        {
          goto LABEL_126;
        }

        v136 = sub_1AB014DB4(v134, v135);
        v138 = v137;

        if ((v138 & 1) == 0)
        {
          goto LABEL_127;
        }

        sub_1AB0165C4(*(a2 + 7) + 32 * v136, v183);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_127;
        }

        v139 = *v181;
        v140 = sub_1AB461614();
        if (*(a2 + 2))
        {
          v142 = sub_1AB014DB4(v140, v141);
          v144 = v143;

          if (v144)
          {
            sub_1AB0165C4(*(a2 + 7) + 32 * v142, v183);
            if ((swift_dynamicCast() & 1) != 0 && *v181 - v139 >= 300000.0)
            {
              sub_1AB1603E0();
              swift_allocError();
              *v132 = xmmword_1AB4D6DD0;
              v133 = 5;
              goto LABEL_117;
            }
          }
        }

        else
        {
LABEL_126:
        }

LABEL_127:

        v145 = sub_1AB1914C4(&unk_1F1FF3688);
        sub_1AB2D82C8(&unk_1F1FF36A8);
        v146 = v166;
        v147 = v167;
        *v166 = v165;
        v146[1] = v147;
        *(v146 + 16) = 0;
        v146[3] = a2;
        v146[4] = v145;
        v146[5] = MEMORY[0x1E69E7CD0];

        goto LABEL_128;
      }
    }

    else
    {
    }

    memset(v183, 0, 32);
    sub_1AB0167A8(v183);
    v129 = sub_1AB461614();
    sub_1AB248C34(v183, v129, v130);

    goto LABEL_115;
  }

  v21 = v11;
  if (v11 < v19)
  {
LABEL_138:
    __break(1u);
  }

  else
  {
    v6 = v175;
    v169 = v19;
    v170 = v12;
    v165 = a1;
    v166 = a5;
    v167 = a2;
    if (qword_1ED4D0060 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v163 = qword_1ED4D3E38;
  v22 = *(qword_1ED4D3E38 + 16);
  os_unfair_lock_lock((v22 + 32));
  v23 = sub_1AB2EADB4(*(v22 + 16), *(v22 + 24));
  os_unfair_lock_unlock((v22 + 32));
  MEMORY[0x1EEE9AC00](v24);
  v25 = v174;
  v156 = v174;
  v157 = v169;
  v158 = v171;
  v159 = v21;
  v160 = v170;
  v26 = v6;
  v27 = sub_1AB2D7DF4(sub_1AB2D81D8, &v155, v23);
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  v29 = swift_allocObject();
  v30 = v21;
  *(v29 + 32) = 0x707954746E657665;
  *(v29 + 16) = xmmword_1AB4D47F0;
  v31 = MEMORY[0x1E69E6158];
  *(v29 + 40) = 0xE900000000000065;
  *(v29 + 48) = 0x646E655265676170;
  *(v29 + 56) = 0xEA00000000007265;
  *(v29 + 72) = v31;
  strcpy((v29 + 80), "eventVersion");
  *(v29 + 120) = MEMORY[0x1E69E6530];
  *(v29 + 93) = 0;
  *(v29 + 94) = -5120;
  *(v29 + 96) = 3;
  a2 = sub_1AB01B220(v29);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  v21 = v27;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v184 = MEMORY[0x1E69E7CD0];
  v32 = *(v27 + 16);
  p_info = (_TtC9JetEngine22_DispatchQueueExecutor + 32);
  v34 = &xmmword_1ED4D3D58;
  v173 = v32;
  if (!v32)
  {

LABEL_80:
    if (p_info[506] != -1)
    {
LABEL_141:
      swift_once();
    }

    v175 = v28;
    v91 = *(v34 + 1);
    v92 = *(v34 + 16);
    v93 = sub_1AB461614();
    if (*(a2 + 2))
    {
      v95 = sub_1AB014DB4(v93, v94);
      v97 = v96;

      if (v97)
      {
        sub_1AB0165C4(*(a2 + 7) + 32 * v95, v183);
        sub_1AB0167A8(v183);
        v98 = v184;
        if (*(v184 + 16))
        {
          sub_1AB1603E0();
          swift_allocError();
          *v99 = v98;
          *(v99 + 8) = 0;
          *(v99 + 16) = 2;
          swift_willThrow();
LABEL_129:

          return;
        }

LABEL_87:
        v182[0] = MEMORY[0x1E69E7CD0];
        if (qword_1ED4D0030 != -1)
        {
          swift_once();
        }

        v172 = *(&xmmword_1ED4D3DD0 + 1);
        v100 = xmmword_1ED4D3DD0;
        LODWORD(v171) = byte_1ED4D3DE0;
        v101 = sub_1AB461614();
        if (*(a2 + 2))
        {
          v103 = sub_1AB014DB4(v101, v102);
          v105 = v104;

          if (v105)
          {
            sub_1AB0165C4(*(a2 + 7) + 32 * v103, v183);
            sub_1AB0167A8(v183);
            goto LABEL_94;
          }
        }

        else
        {
        }

        memset(v183, 0, 32);
        sub_1AB0167A8(v183);
        v106 = sub_1AB461614();
        sub_1AB248C34(v183, v106, v107);

LABEL_94:
        v170 = v100;
        LODWORD(v173) = v92;
        if (qword_1ED4CFFE8 != -1)
        {
          swift_once();
        }

        v174 = v91;
        v108 = sub_1AB461614();
        if (*(a2 + 2))
        {
          v110 = sub_1AB014DB4(v108, v109);
          v112 = v111;

          if (v112)
          {
            sub_1AB0165C4(*(a2 + 7) + 32 * v110, v183);
            sub_1AB0167A8(v183);
            goto LABEL_105;
          }
        }

        else
        {
        }

        memset(v183, 0, 32);
        sub_1AB0167A8(v183);
        v113 = sub_1AB461614();
        if (*(a2 + 2))
        {
          v115 = sub_1AB014DB4(v113, v114);
          v117 = v116;

          if (v117)
          {
            sub_1AB0165C4(*(a2 + 7) + 32 * v115, v183);
            sub_1AB0167A8(v183);
            v118 = sub_1AB461614();
            sub_1AB248C34(v183, v118, v119);

            goto LABEL_105;
          }
        }

        else
        {
        }

        memset(v183, 0, 32);
        sub_1AB0167A8(v183);
LABEL_105:
        v120 = sub_1AB461614();
        if (*(a2 + 2))
        {
          v122 = sub_1AB014DB4(v120, v121);
          v124 = v123;

          if (v124)
          {
            goto LABEL_112;
          }
        }

        else
        {
        }

        memset(v183, 0, 32);
        sub_1AB0167A8(v183);
        if (qword_1ED4CFE08 == -1)
        {
          goto LABEL_110;
        }

        goto LABEL_144;
      }
    }

    else
    {
    }

    memset(v183, 0, 32);
    sub_1AB0167A8(v183);
    goto LABEL_87;
  }

  v162 = v30;
  memcpy(v183, (v21 + 32), 0x190uLL);
  LOBYTE(v177) = v168;
  memcpy(v182, (v21 + 32), sizeof(v182));
  sub_1AB19A648(v183, v181);
  sub_1AB1DB6FC(v182);
  v35 = 0;
  v6 = 32;
  v172 = v21;
  while (v35 < *(v21 + 16))
  {
    memcpy(v182, (v21 + v6), sizeof(v182));
    memcpy(v181, (v21 + v6), sizeof(v181));
    sub_1AB19A648(v182, &v177);
    v36 = sub_1AB2BB998(v179, v25);
    if (v28)
    {

      sub_1AB2D8250(v183);
      sub_1AB2D8250(v182);
      goto LABEL_128;
    }

    v21 = v36;
    v30 = v37;
    v175 = 0;
    sub_1AB014B78(v179, v180);
    sub_1AB0165C4(v180, v179);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v176 = a2;
    v39 = sub_1AB014DB4(v21, v30);
    v41 = *(a2 + 2);
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_131;
    }

    v45 = v40;
    if (*(a2 + 3) >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = v39;
        sub_1AB0676CC();
        v39 = v83;
      }
    }

    else
    {
      sub_1AB01AF68(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_1AB014DB4(v21, v30);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_145;
      }
    }

    a2 = v176;
    if (v45)
    {
      v47 = 32 * v39;
      sub_1AB014B78((*(v176 + 7) + 32 * v39), &v177);
      sub_1AB014B78(v179, (*(a2 + 7) + v47));
      if (*(&v178 + 1))
      {
        sub_1AB014B78(&v177, v181);
        sub_1AB0165C4(v181, &v177);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
        if (swift_dynamicCast())
        {
          v49 = *&v179[0];
          sub_1AB0165C4(v180, &v177);
          if (swift_dynamicCast())
          {
            v50 = *&v179[0];
            *&v179[0] = v49;
            sub_1AB088FAC(v50);
            *(&v178 + 1) = v48;
            *&v177 = *&v179[0];
            sub_1AB014B78(&v177, v179);
            v28 = swift_isUniquelyReferenced_nonNull_native();
            v176 = a2;
            v34 = a2;
            v51 = sub_1AB014DB4(v21, v30);
            v53 = *(a2 + 2);
            v54 = (v52 & 1) == 0;
            v43 = __OFADD__(v53, v54);
            v55 = v53 + v54;
            if (v43)
            {
              __break(1u);
              goto LABEL_141;
            }

            v56 = v52;
            if (*(a2 + 3) < v55)
            {
              sub_1AB01AF68(v55, v28);
              v51 = sub_1AB014DB4(v21, v30);
              if ((v56 & 1) != (v57 & 1))
              {
                goto LABEL_145;
              }

              goto LABEL_66;
            }

            if (v28)
            {
LABEL_66:
              if ((v56 & 1) == 0)
              {
                goto LABEL_75;
              }
            }

            else
            {
              v88 = v51;
              sub_1AB0676CC();
              v51 = v88;
              if ((v56 & 1) == 0)
              {
LABEL_75:
                a2 = v176;
                *(v176 + (v51 >> 6) + 8) |= 1 << v51;
                v89 = (*(a2 + 6) + 16 * v51);
                *v89 = v21;
                v89[1] = v30;
                sub_1AB014B78(v179, (*(a2 + 7) + 32 * v51));
                sub_1AB2D8250(v182);
                __swift_destroy_boxed_opaque_existential_1Tm(v181);
                __swift_destroy_boxed_opaque_existential_1Tm(v180);
                v90 = *(a2 + 2);
                v43 = __OFADD__(v90, 1);
                v87 = v90 + 1;
                if (v43)
                {
                  goto LABEL_143;
                }

LABEL_76:
                *(a2 + 2) = v87;
                goto LABEL_12;
              }
            }

            v82 = v51;

            a2 = v176;
            v72 = (*(v176 + 7) + 32 * v82);
            __swift_destroy_boxed_opaque_existential_1Tm(v72);
            v73 = v179;
LABEL_68:
            sub_1AB014B78(v73, v72);
            sub_1AB2D8250(v182);
LABEL_69:
            __swift_destroy_boxed_opaque_existential_1Tm(v181);
            __swift_destroy_boxed_opaque_existential_1Tm(v180);
            goto LABEL_12;
          }
        }

        if (qword_1ED4CFFC8 != -1)
        {
          swift_once();
        }

        *&v177 = sub_1AB461614();
        *(&v177 + 1) = v61;
        MEMORY[0x1AC59BA20](0x6D69547472617453, 0xE900000000000065);
        if (v177 == __PAIR128__(v30, v21))
        {
LABEL_35:
        }

        else
        {
          v62 = sub_1AB461DA4();

          if ((v62 & 1) == 0)
          {
            if (qword_1ED4CFE40 != -1)
            {
              swift_once();
            }

            if (sub_1AB461614() == v21 && v74 == v30)
            {
              goto LABEL_35;
            }

            v75 = sub_1AB461DA4();

            if ((v75 & 1) == 0)
            {
              if (qword_1ED4CFE08 != -1)
              {
                swift_once();
              }

              if (sub_1AB461614() == v21 && v76 == v30)
              {
                goto LABEL_35;
              }

              v77 = sub_1AB461DA4();

              if ((v77 & 1) == 0)
              {
                if (qword_1ED4D0030 != -1)
                {
                  swift_once();
                }

                if (sub_1AB461614() == v21 && v78 == v30)
                {
                  goto LABEL_133;
                }

                v79 = sub_1AB461DA4();

                if (v79)
                {
                  goto LABEL_134;
                }

                if (qword_1ED4CFFD0 != -1)
                {
                  swift_once();
                }

                if (sub_1AB461614() == v21 && v80 == v30)
                {
                  goto LABEL_133;
                }

                v81 = sub_1AB461DA4();

                if (v81)
                {
                  goto LABEL_134;
                }

                sub_1AB2D8250(v182);

                goto LABEL_69;
              }
            }
          }
        }

        sub_1AB0165C4(v181, &v177);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *&v179[0] = a2;
        v64 = sub_1AB014DB4(v21, v30);
        v66 = *(a2 + 2);
        v67 = (v65 & 1) == 0;
        v43 = __OFADD__(v66, v67);
        v68 = v66 + v67;
        if (v43)
        {
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v69 = v65;
        if (*(a2 + 3) < v68)
        {
          sub_1AB01AF68(v68, v63);
          v64 = sub_1AB014DB4(v21, v30);
          if ((v69 & 1) != (v70 & 1))
          {
LABEL_145:
            v153 = sub_1AB461FC4();
            __break(1u);
            goto LABEL_146;
          }

          goto LABEL_42;
        }

        if (v63)
        {
LABEL_42:
          if ((v69 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v84 = v64;
          sub_1AB0676CC();
          v64 = v84;
          if ((v69 & 1) == 0)
          {
LABEL_71:
            a2 = *&v179[0];
            *(*&v179[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v85 = (*(a2 + 6) + 16 * v64);
            *v85 = v21;
            v85[1] = v30;
            sub_1AB014B78(&v177, (*(a2 + 7) + 32 * v64));
            sub_1AB2D8250(v182);
            __swift_destroy_boxed_opaque_existential_1Tm(v181);
            __swift_destroy_boxed_opaque_existential_1Tm(v180);
            v86 = *(a2 + 2);
            v43 = __OFADD__(v86, 1);
            v87 = v86 + 1;
            if (v43)
            {
              goto LABEL_137;
            }

            goto LABEL_76;
          }
        }

        v71 = v64;

        a2 = *&v179[0];
        v72 = (*(*&v179[0] + 56) + 32 * v71);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        v73 = &v177;
        goto LABEL_68;
      }
    }

    else
    {
      *(v176 + (v39 >> 6) + 8) |= 1 << v39;
      v58 = (*(a2 + 6) + 16 * v39);
      *v58 = v21;
      v58[1] = v30;
      sub_1AB014B78(v179, (*(a2 + 7) + 32 * v39));
      v59 = *(a2 + 2);
      v43 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v43)
      {
        goto LABEL_132;
      }

      *(a2 + 2) = v60;
      v177 = 0u;
      v178 = 0u;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v180);
    sub_1AB2D8250(v182);

    sub_1AB0167A8(&v177);
LABEL_12:
    v25 = v174;
    v28 = v175;
    v21 = v172;
    ++v35;
    v6 += 400;
    if (v173 == v35)
    {

      sub_1AB2D8250(v183);
      v34 = &xmmword_1ED4D3D58;
      p_info = _TtC9JetEngine22_DispatchQueueExecutor.info;
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:

LABEL_134:

  v149 = *(v163 + 16);
  MEMORY[0x1EEE9AC00](v148);
  v156 = v151;
  v157 = v150;
  v158 = v169;
  v159 = v171;
  v160 = v162;
  v161 = v170;
  os_unfair_lock_lock(v149 + 8);
  v152 = v175;
  sub_1AB2D82A4(&v149[4]);
  v153 = v149 + 8;
  if (!v152)
  {
    os_unfair_lock_unlock(v153);
    sub_1AB1603E0();
    swift_allocError();
    *v154 = v21;
    *(v154 + 8) = v30;
    *(v154 + 16) = 0;
    swift_willThrow();
    sub_1AB2D8250(v182);
    sub_1AB2D8250(v183);
    __swift_destroy_boxed_opaque_existential_1Tm(v181);
    __swift_destroy_boxed_opaque_existential_1Tm(v180);

    goto LABEL_129;
  }

LABEL_146:
  os_unfair_lock_unlock(v153);
  __break(1u);
}

uint64_t sub_1AB2D7DF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      memcpy(v16, (a3 + v9), sizeof(v16));
      memcpy(__src, (a3 + v9), 0x190uLL);
      sub_1AB19A648(v16, __dst);
      v10 = v6(__src);
      if (v3)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1AB2D8250(__dst);

        goto LABEL_15;
      }

      if (v10)
      {
        memcpy(__dst, __src, sizeof(__dst));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AB17799C(0, *(v8 + 16) + 1, 1);
          v8 = v18;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1AB17799C((v12 > 1), v13 + 1, 1);
          v8 = v18;
        }

        *(v8 + 16) = v13 + 1;
        result = memcpy((v8 + 400 * v13 + 32), __dst, 0x190uLL);
        v6 = v14;
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        result = sub_1AB2D8250(__dst);
      }

      ++v7;
      v9 += 400;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1AB2D7FB4()
{
  type metadata accessor for OperationTranscript();
  v0 = swift_allocObject();
  sub_1AB19A4E4(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439FB0);
  v1 = 300;
  v2 = sub_1AB4609B4();
  *(v2 + 16) = 300;
  v3 = 32;
  do
  {
    memcpy((v2 + v3), v5, 0x190uLL);
    v3 += 400;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A630);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = v2;
  *(result + 24) = 0;
  *(v0 + 16) = result;
  qword_1ED4D3E38 = v0;
  return result;
}

uint64_t sub_1AB2D8088()
{
  v0 = sub_1AB45FFC4();
  __swift_allocate_value_buffer(v0, qword_1ED4D3E20);
  __swift_project_value_buffer(v0, qword_1ED4D3E20);
  return sub_1AB45FFB4();
}

id sub_1AB2D8104()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A628);
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_1EB46C300 = v0;
  return result;
}

uint64_t PageRenderEvent.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for PageRenderEvent() + 24));

  return v1;
}

BOOL sub_1AB2D81D8(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  v3 = (v2 + *(type metadata accessor for PageRenderEvent() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v1 + 40);
  v8[0] = *(v1 + 24);
  v8[1] = v6;
  return sub_1AB2BB828(v4, v5, v8);
}

uint64_t JSIntentRequest.init(intent:timeoutInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for JSIntentRequest() + 36);
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  return result;
}

uint64_t JSIntentRequest.timeoutInterval.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 36);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

void sub_1AB2D84A8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1AB2D87F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AB2D8530(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void sub_1AB2D864C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

void sub_1AB2D87F0()
{
  if (!qword_1EB43A6C8)
  {
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB43A6C8);
    }
  }
}

uint64_t ViewWillDisappearReason.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSConditionalReference.__allocating_init(value:ownedBy:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1AB0165C4(a2, v10);
  sub_1AB054C38();
  if (swift_dynamicCast())
  {

    sub_1AB40EE18("JetEngine/JSConditionalReference.swift", 0x26uLL, 2, 0x1AuLL);
  }

  sub_1AB0165C4(a2, v10);
  __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
  v5 = a1;
  v6 = sub_1AB461D84();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v7 = [objc_opt_self() managedValueWithValue:v5 andOwner:v6];

  result = swift_unknownObjectRelease();
  if (v7)
  {
    *(v4 + 16) = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(a2);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t JSConditionalReference.init(value:ownedBy:)(void *a1, uint64_t a2)
{
  v3 = sub_1AB2D8B38(a1, a2);

  return v3;
}

id JSConditionalReference.referent.getter()
{
  v1 = [*(v0 + 16) value];

  return v1;
}

uint64_t sub_1AB2D8B38(void *a1, uint64_t a2)
{
  sub_1AB0165C4(a2, v10);
  sub_1AB054C38();
  if (swift_dynamicCast())
  {

    sub_1AB40EE18("JetEngine/JSConditionalReference.swift", 0x26uLL, 2, 0x1AuLL);
  }

  sub_1AB0165C4(a2, v10);
  __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
  v5 = a1;
  v6 = sub_1AB461D84();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v7 = [objc_opt_self() managedValueWithValue:v5 andOwner:v6];

  result = swift_unknownObjectRelease();
  if (v7)
  {
    *(v2 + 16) = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ImpressionsTracking.isDebugEnabled.getter()
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v0 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
LABEL_5:
      v2 = 0;
      return v2 & 1;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB434958 != -1)
  {
    swift_once();
  }

  v2 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
  return v2 & 1;
}

uint64_t sub_1AB2D8DCC()
{
  if (qword_1ED4D19D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4D19E0;
  v0 = *algn_1ED4D19E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D47F0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0xD00000000000001FLL;
  *(v2 + 56) = 0x80000001AB508680;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v3 = sub_1AB460484();
  v5 = v4;

  qword_1EB434960 = v3;
  *algn_1EB434968 = v5;
  return result;
}

uint64_t ClosureActionImplementation.scheduler.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return sub_1AB0149B0(a1, v1);
}

uint64_t ClosureActionImplementation.perform(_:asPartOf:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;
  v9 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a3 + 16);
  *(v15 + 24) = a2;
  *(v15 + 32) = v8;
  *(v15 + 40) = *(a1 + 1);
  *(v15 + 56) = v9;
  *(v15 + 64) = v10;
  v16 = *(v14 + 8);

  v16(sub_1AB2D9188, v15, v13, v14);

  return v10;
}

void sub_1AB2D90DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  (*(*a1 + 104))(sub_1AB05231C, v5, MEMORY[0x1E69E7CA8] + 8);
  sub_1AB431678(0);
}

uint64_t sub_1AB2D91AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
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
      if (v11 >= 2)
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

  return (v5 | v10) + 255;
}

void sub_1AB2D92C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
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

uint64_t sub_1AB2D94B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[127] = v5;
  v6[126] = a5;
  v6[125] = a4;
  v6[124] = a3;
  v6[123] = a2;
  v11 = sub_1AB4600A4();
  v6[128] = v11;
  v6[129] = *(v11 - 8);
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v12 = sub_1AB45FF84();
  v6[132] = v12;
  v6[133] = *(v12 - 8);
  v6[134] = swift_task_alloc();
  v6[135] = swift_task_alloc();
  v6[113] = a2;
  v6[114] = a3;
  v6[115] = a4;
  v6[116] = a5;

  return MEMORY[0x1EEE6DFA0](sub_1AB2D9624, v5, 0);
}

uint64_t sub_1AB2D9624()
{
  v39 = v0;

  sub_1AB45FF74();
  v1 = sub_1AB45FFA4();
  v2 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v3 = *(v0 + 1008);
    v4 = *(v0 + 1000);
    v5 = *(v0 + 992);
    v6 = *(v0 + 984);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB508740);
    MEMORY[0x1AC59BA20](v4, v3);
    MEMORY[0x1AC59BA20](0x6568636163202C20, 0xED0000203A79654BLL);
    MEMORY[0x1AC59BA20](v6, v5);

    v9 = sub_1AB030D2C(0, 0xE000000000000000, &v38);

    *(v7 + 4) = v9;
    v10 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v1, v2, v10, "DaemonSession.send", "request=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1AC59F020](v8, -1, -1);
    MEMORY[0x1AC59F020](v7, -1, -1);
  }

  else
  {
  }

  v11 = (v0 + 424);
  v12 = *(v0 + 1080);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  (*(v13 + 16))(*(v0 + 1072), v12, v14);
  sub_1AB460014();
  swift_allocObject();
  *(v0 + 1088) = sub_1AB460004();
  (*(v13 + 8))(v12, v14);
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  v36 = v0 + 184;
  *(v0 + 1096) = qword_1EB433A40;
  sub_1AB4622E4();
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 104), v15);
  *(v0 + 1104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AB4D4720;
  v37 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = 0x80000001AB501DB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v0 + 864) = &type metadata for DaemonCacheEvictRequest;
  v19 = swift_allocObject();
  *(v0 + 840) = v19;
  v20 = *(v0 + 912);
  v21 = *(v0 + 920);
  v22 = *(v0 + 928);
  v19[2] = *(v0 + 904);
  v19[3] = v20;
  v19[4] = v21;
  v19[5] = v22;
  sub_1AB014A58(v0 + 840, v0 + 776, &unk_1EB437E60);
  *v11 = 0u;
  *(v0 + 440) = 0u;

  sub_1AB0169C4(v0 + 776, v0 + 424);
  *(v0 + 456) = 0;
  v23 = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[40 * v25];
  v27 = *v11;
  v28 = *(v0 + 440);
  v26[64] = *(v0 + 456);
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  sub_1AB014AC0(v0 + 840, &unk_1EB437E60);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  *(v17 + 32) = v23;
  Logger.debug(_:)(v17, v15, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  sub_1AB1BFE18(v36);
  v30 = *(v0 + 1016);
  v31 = sub_1AB01CB20(&qword_1EB433AA8, type metadata accessor for DaemonSessionImplementation);
  v32 = swift_task_alloc();
  *(v0 + 1112) = v32;
  v32[2] = v30;
  v32[3] = v36;
  v32[4] = v0 + 904;
  v33 = swift_task_alloc();
  *(v0 + 1120) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6D0);
  *v33 = v0;
  v33[1] = sub_1AB2DA558;

  return MEMORY[0x1EEE6DE38](v0 + 16, v30, v31, 0x293A5F28646E6573, 0xE800000000000000, sub_1AB2E2E20, v32, v34);
}

uint64_t sub_1AB2DA558()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  v3 = *(v2 + 1016);

  if (v0)
  {
    v4 = sub_1AB2DB318;
  }

  else
  {
    v4 = sub_1AB2DA6A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AB2DA6A0()
{
  v1 = *(v0 + 24);
  v84 = *(v0 + 32);
  v86 = *(v0 + 16);
  v82 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1AB4622E4();
  v4 = *(v0 + 168);
  v88 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v90 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001AB501E50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = 0x6572756C696166;
  if (v3)
  {
    v7 = 0x73736563637573;
  }

  *(v0 + 832) = MEMORY[0x1E69E6158];
  *(v0 + 808) = v7;
  *(v0 + 816) = 0xE700000000000000;
  sub_1AB014A58(v0 + 808, v0 + 872, &unk_1EB437E60);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  sub_1AB0169C4(v0 + 872, v0 + 384);
  *(v0 + 416) = 0;
  v8 = v90;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v90 + 2) + 1, 1, v90);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = *(v0 + 384);
  v13 = *(v0 + 400);
  v11[64] = *(v0 + 416);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  sub_1AB014AC0(v0 + 808, &unk_1EB437E60);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v8;
  Logger.info(_:)(v5, v4, v88);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);
  if (v3)
  {
    v15 = *(v0 + 1016);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);
    sub_1AB1C39FC(v15, "DaemonSession.send", 18, 2);

    v16 = *(v0 + 8);
  }

  else
  {
    *(v0 + 64) = v86;
    *(v0 + 72) = v1;
    *(v0 + 80) = v84;
    *(v0 + 88) = v82;
    *(v0 + 96) = v2;
    sub_1AB1C5D4C();

    swift_willThrowTypedImpl();
    v17 = swift_allocError();
    *v18 = v86;
    v18[1] = v1;
    v18[2] = v84;
    v18[3] = v82;
    v18[4] = v2;
    sub_1AB2E2E34(v86, v1, v84, v82, v2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);
    *(v0 + 976) = v17;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      v20 = *(v0 + 1048);
      v21 = *(v0 + 1040);
      v22 = *(v0 + 1032);
      v23 = *(v0 + 1024);

      (*(v22 + 32))(v21, v20, v23);
      sub_1AB4622E4();
      v24 = *(v0 + 328);
      v89 = *(v0 + 336);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 304), v24);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D4720;
      v91 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
      v26._object = 0x80000001AB501E30;
      v26._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      *(v0 + 736) = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 712));
      v87 = *(v22 + 16);
      v87(boxed_opaque_existential_0, v21, v23);
      sub_1AB014A58(v0 + 712, v0 + 744, &unk_1EB437E60);
      *(v0 + 464) = 0u;
      *(v0 + 480) = 0u;
      sub_1AB0169C4(v0 + 744, v0 + 464);
      *(v0 + 496) = 0;
      v28 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AB0168A8(0, *(v91 + 2) + 1, 1, v91);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1AB0168A8((v29 > 1), v30 + 1, 1, v28);
      }

      v31 = *(v0 + 1040);
      v32 = *(v0 + 1032);
      v33 = *(v0 + 1024);
      *(v28 + 2) = v30 + 1;
      v34 = &v28[40 * v30];
      v35 = *(v0 + 464);
      v36 = *(v0 + 480);
      v34[64] = *(v0 + 496);
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      sub_1AB014AC0(v0 + 712, &unk_1EB437E60);
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *(v25 + 32) = v28;
      Logger.error(_:)(v25, v24, v89);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 304);
      type metadata accessor for DaemonError();
      sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      v87(v38, v31, v33);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v32 + 8))(v31, v33);
      v39 = *(v0 + 976);
    }

    else
    {

      *(v0 + 968) = v17;
      v40 = v17;
      if (swift_dynamicCast())
      {

        v41 = *(v0 + 224);
        v42 = *(v0 + 232);
        v44 = *(v0 + 240);
        v43 = *(v0 + 248);
        v45 = *(v0 + 256);
        sub_1AB4622E4();
        v81 = *(v0 + 376);
        v83 = *(v0 + 368);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 344), v83);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1AB4D4720;
        v92 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
        v47._countAndFlagsBits = 0xD000000000000027;
        v47._object = 0x80000001AB501E00;
        LogMessage.StringInterpolation.appendLiteral(_:)(v47);
        *(v0 + 640) = &type metadata for DaemonResponseCodableError;
        v48 = swift_allocObject();
        *(v0 + 616) = v48;
        v48[2] = v41;
        v48[3] = v42;
        v48[4] = v44;
        v48[5] = v43;
        v85 = v43;
        v48[6] = v45;
        sub_1AB014A58(v0 + 616, v0 + 648, &unk_1EB437E60);
        *(v0 + 504) = 0u;
        *(v0 + 520) = 0u;

        sub_1AB0169C4(v0 + 648, v0 + 504);
        *(v0 + 536) = 0;
        v49 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1AB0168A8(0, *(v92 + 2) + 1, 1, v92);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1AB0168A8((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        v52 = &v49[40 * v51];
        v53 = *(v0 + 504);
        v54 = *(v0 + 520);
        v52[64] = *(v0 + 536);
        *(v52 + 2) = v53;
        *(v52 + 3) = v54;
        sub_1AB014AC0(v0 + 616, &unk_1EB437E60);
        v55._countAndFlagsBits = 0;
        v55._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v55);
        *(v46 + 32) = v49;
        Logger.error(_:)(v46, v83, v81);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 344);
        v56 = sub_1AB36EF94();
        if (v56)
        {
          v57 = v56;

          type metadata accessor for DaemonError();
          sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
          swift_allocError();
          *v58 = v57;
        }

        else
        {
          type metadata accessor for DaemonError();
          sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
          swift_allocError();
          v77 = v76;
          v78 = swift_allocError();
          *v79 = v41;
          v79[1] = v42;
          v79[2] = v44;
          v79[3] = v85;
          v79[4] = v45;
          *v77 = v78;
        }

        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v39 = *(v0 + 968);
      }

      else
      {

        sub_1AB4622E4();
        v59 = *(v0 + 288);
        v60 = *(v0 + 296);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 264), v59);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1AB4D4720;
        v93 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
        v62._countAndFlagsBits = 0xD00000000000002FLL;
        v62._object = 0x80000001AB501DD0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v62);
        swift_getErrorValue();
        v63 = *(v0 + 936);
        v64 = *(v0 + 944);
        *(v0 + 704) = v64;
        v65 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
        (*(*(v64 - 8) + 16))(v65, v63, v64);
        sub_1AB014A58(v0 + 680, v0 + 584, &unk_1EB437E60);
        *(v0 + 544) = 0u;
        *(v0 + 560) = 0u;
        sub_1AB0169C4(v0 + 584, v0 + 544);
        *(v0 + 576) = 0;
        v66 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1AB0168A8(0, *(v93 + 2) + 1, 1, v93);
        }

        v68 = *(v66 + 2);
        v67 = *(v66 + 3);
        if (v68 >= v67 >> 1)
        {
          v66 = sub_1AB0168A8((v67 > 1), v68 + 1, 1, v66);
        }

        *(v66 + 2) = v68 + 1;
        v69 = &v66[40 * v68];
        v70 = *(v0 + 544);
        v71 = *(v0 + 560);
        v69[64] = *(v0 + 576);
        *(v69 + 2) = v70;
        *(v69 + 3) = v71;
        sub_1AB014AC0(v0 + 680, &unk_1EB437E60);
        v72._countAndFlagsBits = 0;
        v72._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v72);
        *(v61 + 32) = v66;
        Logger.error(_:)(v61, v59, v60);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 264);
        type metadata accessor for DaemonError();
        sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        v74 = v73;
        v75 = v17;
        sub_1AB19EFF8(v17, v74);
        swift_willThrow();
        v39 = v17;
      }
    }

    sub_1AB1C39FC(*(v0 + 1016), "DaemonSession.send", 18, 2);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1AB2DB318()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 184);
  v1 = *(v0 + 1128);
  *(v0 + 976) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1048);
    v4 = *(v0 + 1040);
    v5 = *(v0 + 1032);
    v6 = *(v0 + 1024);

    (*(v5 + 32))(v4, v3, v6);
    sub_1AB4622E4();
    v7 = *(v0 + 328);
    v70 = *(v0 + 336);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 304), v7);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v71 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB501E30;
    v9._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    *(v0 + 736) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 712));
    v68 = *(v5 + 16);
    v68(boxed_opaque_existential_0, v4, v6);
    sub_1AB014A58(v0 + 712, v0 + 744, &unk_1EB437E60);
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_1AB0169C4(v0 + 744, v0 + 464);
    *(v0 + 496) = 0;
    v11 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AB0168A8(0, *(v71 + 2) + 1, 1, v71);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1AB0168A8((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = *(v0 + 1040);
    v15 = *(v0 + 1032);
    v16 = *(v0 + 1024);
    *(v11 + 2) = v13 + 1;
    v17 = &v11[40 * v13];
    v18 = *(v0 + 464);
    v19 = *(v0 + 480);
    v17[64] = *(v0 + 496);
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    sub_1AB014AC0(v0 + 712, &unk_1EB437E60);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v8 + 32) = v11;
    Logger.error(_:)(v8, v7, v70);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 304);
    type metadata accessor for DaemonError();
    sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
    swift_allocError();
    v68(v21, v14, v16);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    v22 = *(v0 + 976);
  }

  else
  {

    *(v0 + 968) = v1;
    v23 = v1;
    if (swift_dynamicCast())
    {

      v24 = *(v0 + 224);
      v25 = *(v0 + 232);
      v26 = *(v0 + 240);
      v27 = *(v0 + 248);
      v28 = *(v0 + 256);
      sub_1AB4622E4();
      v66 = *(v0 + 376);
      v67 = *(v0 + 368);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 344), v67);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1AB4D4720;
      v72 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v30._countAndFlagsBits = 0xD000000000000027;
      v30._object = 0x80000001AB501E00;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      *(v0 + 640) = &type metadata for DaemonResponseCodableError;
      v31 = swift_allocObject();
      *(v0 + 616) = v31;
      v31[2] = v24;
      v31[3] = v25;
      v69 = v26;
      v31[4] = v26;
      v31[5] = v27;
      v32 = v27;
      v31[6] = v28;
      sub_1AB014A58(v0 + 616, v0 + 648, &unk_1EB437E60);
      *(v0 + 504) = 0u;
      *(v0 + 520) = 0u;

      sub_1AB0169C4(v0 + 648, v0 + 504);
      *(v0 + 536) = 0;
      v33 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v72 + 2) + 1, 1, v72);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = *(v0 + 504);
      v38 = *(v0 + 520);
      v36[64] = *(v0 + 536);
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      sub_1AB014AC0(v0 + 616, &unk_1EB437E60);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v29 + 32) = v33;
      Logger.error(_:)(v29, v67, v66);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 344);
      v40 = sub_1AB36EF94();
      if (v40)
      {
        v41 = v40;

        type metadata accessor for DaemonError();
        sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        *v42 = v41;
      }

      else
      {
        type metadata accessor for DaemonError();
        sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        v61 = v60;
        sub_1AB1C5D4C();
        v62 = swift_allocError();
        *v63 = v24;
        v63[1] = v25;
        v63[2] = v69;
        v63[3] = v32;
        v63[4] = v28;
        *v61 = v62;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v22 = *(v0 + 968);
    }

    else
    {

      sub_1AB4622E4();
      v43 = *(v0 + 288);
      v44 = *(v0 + 296);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 264), v43);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1AB4D4720;
      v73 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v46._countAndFlagsBits = 0xD00000000000002FLL;
      v46._object = 0x80000001AB501DD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      swift_getErrorValue();
      v47 = *(v0 + 936);
      v48 = *(v0 + 944);
      *(v0 + 704) = v48;
      v49 = __swift_allocate_boxed_opaque_existential_0((v0 + 680));
      (*(*(v48 - 8) + 16))(v49, v47, v48);
      sub_1AB014A58(v0 + 680, v0 + 584, &unk_1EB437E60);
      *(v0 + 544) = 0u;
      *(v0 + 560) = 0u;
      sub_1AB0169C4(v0 + 584, v0 + 544);
      *(v0 + 576) = 0;
      v50 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1AB0168A8(0, *(v73 + 2) + 1, 1, v73);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1AB0168A8((v51 > 1), v52 + 1, 1, v50);
      }

      *(v50 + 2) = v52 + 1;
      v53 = &v50[40 * v52];
      v54 = *(v0 + 544);
      v55 = *(v0 + 560);
      v53[64] = *(v0 + 576);
      *(v53 + 2) = v54;
      *(v53 + 3) = v55;
      sub_1AB014AC0(v0 + 680, &unk_1EB437E60);
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v56);
      *(v45 + 32) = v50;
      Logger.error(_:)(v45, v43, v44);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 264);
      type metadata accessor for DaemonError();
      sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      v58 = v57;
      v59 = v1;
      sub_1AB19EFF8(v1, v58);
      swift_willThrow();
      v22 = v1;
    }
  }

  sub_1AB1C39FC(*(v0 + 1016), "DaemonSession.send", 18, 2);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1AB2DBCB4(uint64_t a1, uint64_t a2)
{
  v3[115] = v2;
  v3[114] = a2;
  v3[113] = a1;
  v4 = sub_1AB4600A4();
  v3[116] = v4;
  v3[117] = *(v4 - 8);
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6E8);
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v5 = sub_1AB45FF84();
  v3[125] = v5;
  v3[126] = *(v5 - 8);
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v3[129] = type metadata accessor for DaemonGetAssetRequest(0);
  v3[130] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2DBE80, v2, 0);
}

uint64_t sub_1AB2DBE80()
{
  v37 = v0;
  sub_1AB058EA0(*(v0 + 912), *(v0 + 1040), type metadata accessor for DaemonGetAssetRequest);
  sub_1AB45FF74();
  v1 = sub_1AB45FFA4();
  v2 = sub_1AB461234();
  v3 = sub_1AB461314();
  v4 = *(v0 + 1040);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    sub_1AB4615D4();

    v7 = sub_1AB45F614();
    MEMORY[0x1AC59BA20](v7);

    sub_1AB2E3068(v4, type metadata accessor for DaemonGetAssetRequest);
    v8 = sub_1AB030D2C(0xD000000000000013, 0x80000001AB5087F0, &v36);

    *(v5 + 4) = v8;
    v9 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v1, v2, v9, "DaemonSession.send", "request=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1AC59F020](v6, -1, -1);
    MEMORY[0x1AC59F020](v5, -1, -1);
  }

  else
  {

    sub_1AB2E3068(v4, type metadata accessor for DaemonGetAssetRequest);
  }

  v10 = *(v0 + 1024);
  v11 = *(v0 + 1008);
  v12 = *(v0 + 1000);
  (*(v11 + 16))(*(v0 + 1016), v10, v12);
  sub_1AB460014();
  swift_allocObject();
  *(v0 + 1048) = sub_1AB460004();
  (*(v11 + 8))(v10, v12);
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 1032);
  v14 = *(v0 + 912);
  *(v0 + 1056) = qword_1EB433A40;
  sub_1AB4622E4();
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v15);
  *(v0 + 1064) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AB4D4720;
  v35 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = 0x80000001AB501DB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v0 + 816) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 792));
  sub_1AB058EA0(v14, boxed_opaque_existential_0, type metadata accessor for DaemonGetAssetRequest);
  sub_1AB014A58(v0 + 792, v0 + 728, &unk_1EB437E60);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  sub_1AB0169C4(v0 + 728, v0 + 336);
  *(v0 + 368) = 0;
  v20 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[40 * v22];
  v24 = *(v0 + 336);
  v25 = *(v0 + 352);
  v23[64] = *(v0 + 368);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1AB014AC0(v0 + 792, &unk_1EB437E60);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v17 + 32) = v20;
  Logger.debug(_:)(v17, v15, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  sub_1AB1BFE18(v0 + 56);
  v27 = *(v0 + 920);
  v28 = *(v0 + 912);
  v29 = sub_1AB01CB20(&qword_1EB433AA8, type metadata accessor for DaemonSessionImplementation);
  v30 = swift_task_alloc();
  *(v0 + 1072) = v30;
  v30[2] = v27;
  v30[3] = v0 + 56;
  v30[4] = v28;
  v31 = swift_task_alloc();
  *(v0 + 1080) = v31;
  *v31 = v0;
  v31[1] = sub_1AB2DCDA8;
  v32 = *(v0 + 984);
  v33 = *(v0 + 960);

  return MEMORY[0x1EEE6DE38](v32, v27, v29, 0x293A5F28646E6573, 0xE800000000000000, sub_1AB2E30C8, v30, v33);
}

uint64_t sub_1AB2DCDA8()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  v3 = *(v2 + 920);

  if (v0)
  {
    v4 = sub_1AB2DDC8C;
  }

  else
  {
    v4 = sub_1AB2DCEF0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1AB2DCEF0()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 976);
  sub_1AB2E30D4(*(v0 + 984), v1);
  sub_1AB4622E4();
  v3 = *(v0 + 280);
  v97 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v3);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v100 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001AB501E50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  sub_1AB014A58(v1, v2, &qword_1EB43A6E8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1AB014AC0(v2, &qword_1EB43A6E8);
  v7 = 0x6572756C696166;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = 0x73736563637573;
  }

  *(v0 + 784) = MEMORY[0x1E69E6158];
  *(v0 + 760) = v7;
  *(v0 + 768) = 0xE700000000000000;
  sub_1AB014A58(v0 + 760, v0 + 824, &unk_1EB437E60);
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  sub_1AB0169C4(v0 + 824, v0 + 416);
  *(v0 + 448) = 0;
  v8 = v100;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v100 + 2) + 1, 1, v100);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 992);
  v12 = *(v0 + 968);
  *(v8 + 2) = v10 + 1;
  v13 = &v8[40 * v10];
  v14 = *(v0 + 416);
  v15 = *(v0 + 432);
  v13[64] = *(v0 + 448);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1AB014AC0(v0 + 760, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v4 + 32) = v8;
  Logger.info(_:)(v4, v3, v97);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  sub_1AB014A58(v11, v12, &qword_1EB43A6E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v0 + 968);
    v18 = *(v0 + 920);
    v19 = *(v0 + 904);
    sub_1AB014AC0(*(v0 + 992), &qword_1EB43A6E8);
    sub_1AB2E3144(v17, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    sub_1AB1C39FC(v18, "DaemonSession.send", 18, 2);

    v20 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 992);
    v22 = *(v0 + 968);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    v26 = v22[3];
    v27 = v22[4];
    *(v0 + 16) = *v22;
    *(v0 + 24) = v24;
    *(v0 + 32) = v25;
    *(v0 + 40) = v26;
    *(v0 + 48) = v27;
    sub_1AB1C5D4C();
    swift_willThrowTypedImpl();
    v28 = swift_allocError();
    *v29 = v23;
    v29[1] = v24;
    v29[2] = v25;
    v29[3] = v26;
    v29[4] = v27;
    sub_1AB014AC0(v21, &qword_1EB43A6E8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    *(v0 + 888) = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      v31 = *(v0 + 952);
      v32 = *(v0 + 944);
      v33 = *(v0 + 936);
      v34 = *(v0 + 928);

      (*(v33 + 32))(v32, v31, v34);
      sub_1AB4622E4();
      v94 = *(v0 + 328);
      v98 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v98);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1AB4D4720;
      v101 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
      v36._object = 0x80000001AB501E30;
      v36._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(v0 + 656) = v34;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
      v95 = *(v33 + 16);
      v95(boxed_opaque_existential_0, v32, v34);
      sub_1AB014A58(v0 + 632, v0 + 696, &unk_1EB437E60);
      *(v0 + 456) = 0u;
      *(v0 + 472) = 0u;
      sub_1AB0169C4(v0 + 696, v0 + 456);
      *(v0 + 488) = 0;
      v38 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1AB0168A8(0, *(v101 + 2) + 1, 1, v101);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
      }

      v41 = *(v0 + 944);
      v42 = *(v0 + 936);
      v43 = *(v0 + 928);
      *(v38 + 2) = v40 + 1;
      v44 = &v38[40 * v40];
      v45 = *(v0 + 456);
      v46 = *(v0 + 472);
      v44[64] = *(v0 + 488);
      *(v44 + 2) = v45;
      *(v44 + 3) = v46;
      sub_1AB014AC0(v0 + 632, &unk_1EB437E60);
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      *(v35 + 32) = v38;
      Logger.error(_:)(v35, v98, v94);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
      type metadata accessor for DaemonError();
      sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      v95(v48, v41, v43);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v42 + 8))(v41, v43);
      v49 = *(v0 + 888);
    }

    else
    {

      *(v0 + 880) = v28;
      v50 = v28;
      if (swift_dynamicCast())
      {

        v52 = *(v0 + 96);
        v51 = *(v0 + 104);
        v53 = *(v0 + 112);
        v54 = *(v0 + 120);
        v55 = *(v0 + 128);
        sub_1AB4622E4();
        v92 = *(v0 + 248);
        v93 = *(v0 + 240);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v93);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1AB4D4720;
        v102 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
        v57._countAndFlagsBits = 0xD000000000000027;
        v57._object = 0x80000001AB501E00;
        LogMessage.StringInterpolation.appendLiteral(_:)(v57);
        *(v0 + 592) = &type metadata for DaemonResponseCodableError;
        v58 = swift_allocObject();
        *(v0 + 568) = v58;
        v58[2] = v52;
        v58[3] = v51;
        v99 = v53;
        v58[4] = v53;
        v58[5] = v54;
        v96 = v54;
        v58[6] = v55;
        sub_1AB014A58(v0 + 568, v0 + 600, &unk_1EB437E60);
        *(v0 + 496) = 0u;
        *(v0 + 512) = 0u;

        sub_1AB0169C4(v0 + 600, v0 + 496);
        *(v0 + 528) = 0;
        v59 = v102;
        v60 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1AB0168A8(0, *(v102 + 2) + 1, 1, v102);
        }

        v62 = *(v59 + 2);
        v61 = *(v59 + 3);
        if (v62 >= v61 >> 1)
        {
          v59 = sub_1AB0168A8((v61 > 1), v62 + 1, 1, v59);
        }

        *(v59 + 2) = v62 + 1;
        v63 = &v59[40 * v62];
        v64 = *(v0 + 496);
        v65 = *(v0 + 512);
        v63[64] = *(v0 + 528);
        *(v63 + 2) = v64;
        *(v63 + 3) = v65;
        sub_1AB014AC0(v0 + 568, &unk_1EB437E60);
        v66._countAndFlagsBits = 0;
        v66._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v66);
        *(v56 + 32) = v59;
        Logger.error(_:)(v56, v93, v92);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
        v67 = sub_1AB36EF94();
        if (v67)
        {
          v68 = v67;

          type metadata accessor for DaemonError();
          sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
          swift_allocError();
          *v69 = v68;
        }

        else
        {
          type metadata accessor for DaemonError();
          sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
          swift_allocError();
          v88 = v87;
          v89 = swift_allocError();
          *v90 = v60;
          v90[1] = v51;
          v90[2] = v99;
          v90[3] = v96;
          v90[4] = v55;
          *v88 = v89;
        }

        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v49 = *(v0 + 880);
      }

      else
      {

        sub_1AB4622E4();
        v70 = *(v0 + 160);
        v71 = *(v0 + 168);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v70);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1AB4D4720;
        v103 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
        v73._countAndFlagsBits = 0xD00000000000002FLL;
        v73._object = 0x80000001AB501DD0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v73);
        swift_getErrorValue();
        v74 = *(v0 + 856);
        v75 = *(v0 + 864);
        *(v0 + 688) = v75;
        v76 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
        (*(*(v75 - 8) + 16))(v76, v74, v75);
        sub_1AB014A58(v0 + 664, v0 + 536, &unk_1EB437E60);
        *(v0 + 376) = 0u;
        *(v0 + 392) = 0u;
        sub_1AB0169C4(v0 + 536, v0 + 376);
        *(v0 + 408) = 0;
        v77 = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1AB0168A8(0, *(v103 + 2) + 1, 1, v103);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        if (v79 >= v78 >> 1)
        {
          v77 = sub_1AB0168A8((v78 > 1), v79 + 1, 1, v77);
        }

        *(v77 + 2) = v79 + 1;
        v80 = &v77[40 * v79];
        v81 = *(v0 + 376);
        v82 = *(v0 + 392);
        v80[64] = *(v0 + 408);
        *(v80 + 2) = v81;
        *(v80 + 3) = v82;
        sub_1AB014AC0(v0 + 664, &unk_1EB437E60);
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v83);
        *(v72 + 32) = v77;
        Logger.error(_:)(v72, v70, v71);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
        type metadata accessor for DaemonError();
        sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        v85 = v84;
        v86 = v28;
        sub_1AB19EFF8(v28, v85);
        swift_willThrow();
        v49 = v28;
      }
    }

    sub_1AB1C39FC(*(v0 + 920), "DaemonSession.send", 18, 2);

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1AB2DDC8C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  v1 = *(v0 + 1088);
  *(v0 + 888) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 952);
    v4 = *(v0 + 944);
    v5 = *(v0 + 936);
    v6 = *(v0 + 928);

    (*(v5 + 32))(v4, v3, v6);
    sub_1AB4622E4();
    v67 = *(v0 + 328);
    v68 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v68);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v69 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001AB501E30;
    v8._countAndFlagsBits = 0xD000000000000017;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    *(v0 + 656) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 632));
    v65 = *(v5 + 16);
    v65(boxed_opaque_existential_0, v4, v6);
    sub_1AB014A58(v0 + 632, v0 + 696, &unk_1EB437E60);
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_1AB0169C4(v0 + 696, v0 + 456);
    *(v0 + 488) = 0;
    v10 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v69 + 2) + 1, 1, v69);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    v13 = *(v0 + 944);
    v14 = *(v0 + 936);
    v15 = *(v0 + 928);
    *(v10 + 2) = v12 + 1;
    v16 = &v10[40 * v12];
    v17 = *(v0 + 456);
    v18 = *(v0 + 472);
    v16[64] = *(v0 + 488);
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    sub_1AB014AC0(v0 + 632, &unk_1EB437E60);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 32) = v10;
    Logger.error(_:)(v7, v68, v67);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
    type metadata accessor for DaemonError();
    sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
    swift_allocError();
    v65(v20, v13, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    v21 = *(v0 + 888);
  }

  else
  {

    *(v0 + 880) = v1;
    v22 = v1;
    if (swift_dynamicCast())
    {

      v24 = *(v0 + 96);
      v23 = *(v0 + 104);
      v26 = *(v0 + 112);
      v25 = *(v0 + 120);
      v27 = *(v0 + 128);
      sub_1AB4622E4();
      v64 = *(v0 + 248);
      v66 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v66);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AB4D4720;
      v70 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
      v29._countAndFlagsBits = 0xD000000000000027;
      v29._object = 0x80000001AB501E00;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      *(v0 + 592) = &type metadata for DaemonResponseCodableError;
      v30 = swift_allocObject();
      *(v0 + 568) = v30;
      v30[2] = v24;
      v30[3] = v23;
      v30[4] = v26;
      v30[5] = v25;
      v30[6] = v27;
      sub_1AB014A58(v0 + 568, v0 + 600, &unk_1EB437E60);
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;

      sub_1AB0169C4(v0 + 600, v0 + 496);
      *(v0 + 528) = 0;
      v31 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1AB0168A8(0, *(v70 + 2) + 1, 1, v70);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = *(v0 + 496);
      v36 = *(v0 + 512);
      v34[64] = *(v0 + 528);
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      sub_1AB014AC0(v0 + 568, &unk_1EB437E60);
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *(v28 + 32) = v31;
      Logger.error(_:)(v28, v66, v64);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
      v38 = sub_1AB36EF94();
      if (v38)
      {
        v39 = v38;

        type metadata accessor for DaemonError();
        sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        *v40 = v39;
      }

      else
      {
        type metadata accessor for DaemonError();
        sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        v59 = v58;
        sub_1AB1C5D4C();
        v60 = swift_allocError();
        *v61 = v24;
        v61[1] = v23;
        v61[2] = v26;
        v61[3] = v25;
        v61[4] = v27;
        *v59 = v60;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v21 = *(v0 + 880);
    }

    else
    {

      sub_1AB4622E4();
      v41 = *(v0 + 160);
      v42 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v41);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      v71 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
      v44._countAndFlagsBits = 0xD00000000000002FLL;
      v44._object = 0x80000001AB501DD0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      swift_getErrorValue();
      v45 = *(v0 + 856);
      v46 = *(v0 + 864);
      *(v0 + 688) = v46;
      v47 = __swift_allocate_boxed_opaque_existential_0((v0 + 664));
      (*(*(v46 - 8) + 16))(v47, v45, v46);
      sub_1AB014A58(v0 + 664, v0 + 536, &unk_1EB437E60);
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
      sub_1AB0169C4(v0 + 536, v0 + 376);
      *(v0 + 408) = 0;
      v48 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1AB0168A8(0, *(v71 + 2) + 1, 1, v71);
      }

      v50 = *(v48 + 2);
      v49 = *(v48 + 3);
      if (v50 >= v49 >> 1)
      {
        v48 = sub_1AB0168A8((v49 > 1), v50 + 1, 1, v48);
      }

      *(v48 + 2) = v50 + 1;
      v51 = &v48[40 * v50];
      v52 = *(v0 + 376);
      v53 = *(v0 + 392);
      v51[64] = *(v0 + 408);
      *(v51 + 2) = v52;
      *(v51 + 3) = v53;
      sub_1AB014AC0(v0 + 664, &unk_1EB437E60);
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v54);
      *(v43 + 32) = v48;
      Logger.error(_:)(v43, v41, v42);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
      type metadata accessor for DaemonError();
      sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      v56 = v55;
      v57 = v1;
      sub_1AB19EFF8(v1, v56);
      swift_willThrow();
      v21 = v1;
    }
  }

  sub_1AB1C39FC(*(v0 + 920), "DaemonSession.send", 18, 2);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1AB2DE66C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t (*)(__int128 *a1), void *, uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a7;
  v49 = a6;
  v50 = a5;
  v48 = a4;
  v54 = a1;
  v52 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v52);
  v47 = (v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6D8);
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v38 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v38[1] = v17 + 16;
  *(v17 + 20) = 0;
  v18 = sub_1AB460BE4();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1AB01494C(a3, &v55);
  v46 = v16;
  v44 = *(v10 + 16);
  v44(v13, v54, v53);
  v19 = sub_1AB01CB20(&qword_1EB433AA8, type metadata accessor for DaemonSessionImplementation);
  v20 = *(v10 + 80);
  v40 = v13;
  v21 = swift_allocObject();
  v43 = v11;
  v22 = v10;
  v23 = v21;
  v21[2] = a2;
  v21[3] = v19;
  v42 = sub_1AB1C60A0;
  v21[4] = a2;
  v21[5] = sub_1AB1C60A0;
  v21[6] = v17;
  sub_1AB0149B0(&v55, (v21 + 7));
  v41 = *(v22 + 32);
  v24 = v13;
  v25 = v53;
  v41(v23 + ((v20 + 96) & ~v20), v24, v53);
  swift_retain_n();
  swift_retain_n();
  v26 = sub_1AB2313A4(0, 0, v46, &unk_1AB4E83B0, v23);
  v46 = a3[3];
  v39 = a3[4];
  v45 = __swift_project_boxed_opaque_existential_1Tm(a3, v46);
  v27 = v47;
  v28 = v50;
  *v47 = v48;
  v27[1] = v28;
  v29 = v51;
  v27[2] = v49;
  v27[3] = v29;
  swift_storeEnumTagMultiPayload();
  v30 = v40;
  v44(v40, v54, v25);
  v31 = (v20 + 40) & ~v20;
  v32 = swift_allocObject();
  v32[2] = v42;
  v32[3] = v17;
  v32[4] = v26;
  v41(v32 + v31, v30, v25);
  v33 = v39;
  v48 = *(v39 + 8);
  v49 = v17;

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6D0);
  v35 = sub_1AB01CB20(&qword_1EB434238, type metadata accessor for JetPackAssetDaemonMessage);
  v36 = sub_1AB01561C(&qword_1EB43A6E0, &qword_1EB43A6D0);
  v48(v27, sub_1AB2E2F94, v32, v52, v34, v35, v36, v46, v33);
  sub_1AB2E3068(v27, type metadata accessor for JetPackAssetDaemonMessage);
}

uint64_t sub_1AB2DEF00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = a4;
  v47 = a1;
  v46 = type metadata accessor for JetPackAssetDaemonMessage(0);
  MEMORY[0x1EEE9AC00](v46);
  v44 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6F0);
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v10 = v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v35 - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v35[1] = v14 + 16;
  *(v14 + 20) = 0;
  v15 = v14;
  v16 = sub_1AB460BE4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1AB01494C(a3, &v48);
  v17 = *(v7 + 16);
  v37 = v7 + 16;
  v41 = v17;
  v18 = v45;
  v17(v10, v47, v45);
  v19 = sub_1AB01CB20(&qword_1EB433AA8, type metadata accessor for DaemonSessionImplementation);
  v42 = v13;
  v20 = v19;
  v21 = *(v7 + 80);
  v22 = swift_allocObject();
  v39 = v8;
  v23 = v22;
  v22[2] = a2;
  v22[3] = v20;
  v38 = sub_1AB2E34EC;
  v22[4] = a2;
  v22[5] = sub_1AB2E34EC;
  v24 = v15;
  v22[6] = v15;
  sub_1AB0149B0(&v48, (v22 + 7));
  v36 = *(v7 + 32);
  v25 = v18;
  v36(v23 + ((v21 + 96) & ~v21), v10, v18);
  swift_retain_n();
  v26 = v24;
  swift_retain_n();
  v27 = sub_1AB2313A4(0, 0, v42, &unk_1AB4E83E8, v23);
  v28 = a3[4];
  v42 = a3[3];
  v40 = __swift_project_boxed_opaque_existential_1Tm(a3, v42);
  v29 = v44;
  sub_1AB058EA0(v43, v44, type metadata accessor for DaemonGetAssetRequest);
  swift_storeEnumTagMultiPayload();
  v41(v10, v47, v25);
  v30 = swift_allocObject();
  v30[2] = v38;
  v30[3] = v26;
  v30[4] = v27;
  v36(v30 + ((v21 + 40) & ~v21), v10, v25);
  v41 = *(v28 + 8);

  v43 = v27;

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6E8);
  v32 = sub_1AB01CB20(&qword_1EB434238, type metadata accessor for JetPackAssetDaemonMessage);
  v33 = sub_1AB01561C(qword_1EB433F30, &qword_1EB43A6E8);
  (v41)(v29, sub_1AB2E3464, v30, v46, v31, v32, v33, v42, v28);
  sub_1AB2E3068(v29, type metadata accessor for JetPackAssetDaemonMessage);
}

uint64_t sub_1AB2DF758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1AB4617E4();
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2DF824, a4, 0);
}

uint64_t sub_1AB2DF824()
{
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 520) = qword_1EB433A40;
  sub_1AB4622E4();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
  *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB502030;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 536) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1AB0169C4(v0 + 288, v0 + 176);
  *(v0 + 208) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v10[64] = *(v0 + 208);
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60);
  v13._countAndFlagsBits = 0x73646E6F63657320;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v14 = sub_1AB462284();
  v16 = v15;
  sub_1AB461FF4();
  v17 = swift_task_alloc();
  *(v0 + 544) = v17;
  *v17 = v0;
  v17[1] = sub_1AB2DFB18;

  return sub_1AB23D90C(v14, v16, 0, 0, 1);
}

uint64_t sub_1AB2DFB18()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 504);
  v5 = *(*v1 + 496);
  *(*v1 + 552) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1AB2E00C4;
  }

  else
  {
    v7 = sub_1AB2DFCA0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1AB2DFCA0()
{
  v1 = *(v0 + 536);
  sub_1AB4622E4();
  v2 = *(v0 + 120);
  v26 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v27 = sub_1AB0168A8(0, 80, 0, MEMORY[0x1E69E7CC0]);
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001AB5020B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 376) = MEMORY[0x1E69E63B0];
  *(v0 + 352) = v1;
  sub_1AB014A58(v0 + 352, v0 + 384, &unk_1EB437E60);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB0169C4(v0 + 384, v0 + 216);
  *(v0 + 248) = 0;
  v5 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 464);
  *(v5 + 2) = v7 + 1;
  v9 = &v5[40 * v7];
  v10 = *(v0 + 216);
  v11 = *(v0 + 232);
  v9[64] = *(v0 + 248);
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  sub_1AB014AC0(v0 + 352, &unk_1EB437E60);
  v12._object = 0x80000001AB5020E0;
  v12._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v5;
  Logger.error(_:)(v3, v2, v26);

  v13 = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  if (v8(v13))
  {
    v14 = *(v0 + 536);
    v15 = *(v0 + 480);
    sub_1AB4622E4();
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AB4D4720;
    *(v0 + 440) = MEMORY[0x1E69E6158];
    *(v0 + 416) = 0xD000000000000023;
    *(v0 + 424) = 0x80000001AB502110;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1AB0169C4(v0 + 416, v19 + 32);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
    v20 = v15[3];
    v21 = v15[4];
    __swift_project_boxed_opaque_existential_1Tm(v15, v20);
    (*(v21 + 16))(0xD000000000000024, 0x80000001AB502140, v20, v21);
    type metadata accessor for DaemonError();
    sub_1AB01CB20(qword_1EB432BB8, type metadata accessor for DaemonError);
    v22 = swift_allocError();
    *v23 = v14;
    swift_storeEnumTagMultiPayload();
    *(v0 + 448) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A6D8);
    sub_1AB460B04();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1AB2E00C4()
{
  v1 = v0[69];
  sub_1AB4622E4();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v0[43] = MEMORY[0x1E69E6158];
  v0[40] = 0xD00000000000004BLL;
  v0[41] = 0x80000001AB502060;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1AB0169C4((v0 + 40), v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AB2E0228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = a7;
  v8[61] = a8;
  v8[58] = a5;
  v8[59] = a6;
  v8[57] = a4;
  v10 = sub_1AB4617E4();
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2E02F4, a4, 0);
}

uint64_t sub_1AB2E02F4()
{
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  *(v0 + 520) = qword_1EB433A40;
  sub_1AB4622E4();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
  *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 49, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB502030;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + 120);
  *(v0 + 536) = v6;
  *(v0 + 280) = MEMORY[0x1E69E63B0];
  *(v0 + 256) = v6;
  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1AB0169C4(v0 + 288, v0 + 176);
  *(v0 + 208) = 0;
  v7 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[40 * v9];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v10[64] = *(v0 + 208);
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60);
  v13._countAndFlagsBits = 0x73646E6F63657320;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v7;
  Logger.debug(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v14 = sub_1AB462284();
  v16 = v15;
  sub_1AB461FF4();
  v17 = swift_task_alloc();
  *(v0 + 544) = v17;
  *v17 = v0;
  v17[1] = sub_1AB2E05E8;

  return sub_1AB23D90C(v14, v16, 0, 0, 1);
}

uint64_t sub_1AB2E05E8()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 504);
  v5 = *(*v1 + 496);
  *(*v1 + 552) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_1AB2E34E8;
  }

  else
  {
    v7 = sub_1AB2E0770;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}