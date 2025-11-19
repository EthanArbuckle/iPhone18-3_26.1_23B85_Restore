uint64_t sub_1C671C00C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 25459;
    }

    else
    {
      v3 = 116;
    }

    if (v2 == 2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 25454;
    }

    else
    {
      v3 = 107;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  v5 = 0xE100000000000000;
  v6 = 107;
  v7 = 0xE200000000000000;
  v8 = 25459;
  if (a2 != 2)
  {
    v8 = 116;
    v7 = 0xE100000000000000;
  }

  if (a2)
  {
    v6 = 25454;
    v5 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6725ACC();
  }

  return v11 & 1;
}

uint64_t sub_1C671C100(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD310, &qword_1C674F140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  sub_1C6718ED8(a1, &v11 - v5, &qword_1EC1CD310, &qword_1C674F140);
  v7 = type metadata accessor for EMIMAPSyncError.Underlying();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1C6719B88(a1, &qword_1EC1CD310, &qword_1C674F140);
    sub_1C6719B88(v6, &qword_1EC1CD310, &qword_1C674F140);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
    sub_1C67210E4(v6, boxed_opaque_existential_0);
    sub_1C6719B88(a1, &qword_1EC1CD310, &qword_1C674F140);
  }

  v9 = OBJC_IVAR___EMIMAPSyncError__underlying;
  swift_beginAccess();
  sub_1C6722228(&v12, v1 + v9, &qword_1EC1CD248, &qword_1C674ED30);
  return swift_endAccess();
}

id EMIMAPSyncError.init(underlying:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD310, &qword_1C674F140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1C672584C();
  v8 = [v6 initWithDomain:v7 code:(*a1 + 1) userInfo:0];

  sub_1C671E5B4(a1, v5);
  v9 = type metadata accessor for EMIMAPSyncError.Underlying();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = v8;
  sub_1C671C100(v5);

  sub_1C671E664(a1);
  return v10;
}

unint64_t EMIMAPSyncError.userInfo.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EMIMAPSyncError.Underlying();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD310, &qword_1C674F140);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v52 = sub_1C6720F50(MEMORY[0x1E69E7CC0]);
  v17 = *MEMORY[0x1E696A578];
  v44 = sub_1C672588C();
  v45 = v18;
  v19 = OBJC_IVAR___EMIMAPSyncError__underlying;
  swift_beginAccess();
  sub_1C6718ED8(v1 + v19, &v50, &qword_1EC1CD248, &qword_1C674ED30);
  if (v51)
  {
    sub_1C6721080(&v50, v49);
    v20 = swift_dynamicCast();
    v21 = v3[7];
    v22 = v20 ^ 1u;
    v23 = v16;
  }

  else
  {
    v21 = v3[7];
    v23 = v16;
    v22 = 1;
  }

  v47 = v21;
  v21(v23, v22, 1, v2);
  v46 = v3[6];
  if (v46(v16, 1, v2))
  {
    sub_1C6719B88(v16, &qword_1EC1CD310, &qword_1C674F140);
    sub_1C671FE28(v44, v45, &v50);

    sub_1C6719B88(&v50, &qword_1EC1CD248, &qword_1C674ED30);
  }

  else
  {
    sub_1C671E5B4(v16, v9);
    sub_1C6719B88(v16, &qword_1EC1CD310, &qword_1C674F140);
    v24 = sub_1C671C930();
    v25 = v7;
    v27 = v26;
    sub_1C671E664(v9);
    v51 = MEMORY[0x1E69E6158];
    *&v50 = v24;
    *(&v50 + 1) = v27;
    v7 = v25;
    sub_1C6721080(&v50, v49);
    v28 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v28;
    sub_1C6720334(v49, v44, v45, isUniquelyReferenced_nonNull_native);

    v52 = v48;
  }

  v30 = *MEMORY[0x1E696A588];
  v31 = sub_1C672588C();
  v33 = v32;
  sub_1C6718ED8(v1 + v19, &v50, &qword_1EC1CD248, &qword_1C674ED30);
  if (v51)
  {
    sub_1C6721080(&v50, v49);
    v34 = swift_dynamicCast() ^ 1;
    v35 = v14;
  }

  else
  {
    v35 = v14;
    v34 = 1;
  }

  v47(v35, v34, 1, v2);
  if (v46(v14, 1, v2))
  {
    sub_1C6719B88(v14, &qword_1EC1CD310, &qword_1C674F140);
LABEL_12:
    sub_1C671FE28(v31, v33, &v50);

    sub_1C6719B88(&v50, &qword_1EC1CD248, &qword_1C674ED30);
    return v52;
  }

  sub_1C671E5B4(v14, v7);
  v37 = sub_1C6719B88(v14, &qword_1EC1CD310, &qword_1C674F140);
  v38 = sub_1C671D260(v37);
  v40 = v39;
  sub_1C671E664(v7);
  if (!v40)
  {
    goto LABEL_12;
  }

  v51 = MEMORY[0x1E69E6158];
  *&v50 = v38;
  *(&v50 + 1) = v40;
  sub_1C6721080(&v50, v49);
  v41 = v52;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v41;
  sub_1C6720334(v49, v31, v33, v42);

  return v48;
}

uint64_t sub_1C671C930()
{
  v1 = v0;
  v2 = sub_1C67256BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C672568C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for EMIMAPSyncError.Underlying();
  sub_1C6718ED8(&v0[*(v16 + 24)], v15, &qword_1EC1CD220, &qword_1C674ED20);
  v17 = (*(v8 + 48))(v15, 1, v7);
  v18 = 0;
  v19 = 0;
  if (v17 != 1)
  {
    (*(v8 + 32))(v11, v15, v7);
    v20 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v21 = [objc_opt_self() currentLocale];
    sub_1C67256AC();

    v22 = sub_1C672569C();
    (*(v3 + 8))(v6, v2);
    [v20 setLocale_];

    v23 = sub_1C672584C();
    [v20 setLocalizedDateFormatFromTemplate_];

    v24 = sub_1C672566C();
    v25 = [v20 stringFromDate_];

    v18 = sub_1C672588C();
    v19 = v26;

    v17 = (*(v8 + 8))(v11, v7);
  }

  v27 = *v1;
  if (v27 <= 2)
  {
    if (*v1)
    {
      if (v27 == 1)
      {
        if (v19)
        {
          goto LABEL_19;
        }
      }

      else if (v19)
      {
        goto LABEL_19;
      }
    }

    else if (v19)
    {
      goto LABEL_19;
    }

LABEL_20:
    type metadata accessor for EMIMAPSyncError(v17);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v31 = sub_1C672562C();

    return v31;
  }

  if (v27 == 3)
  {
    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v27 == 4)
  {
    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_19:
  type metadata accessor for EMIMAPSyncError(v17);
  v28 = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  sub_1C672562C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B0, &qword_1C674F7D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C674F120;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1C672216C();
  *(v30 + 32) = v18;
  *(v30 + 40) = v19;
  v31 = sub_1C672585C();

  return v31;
}

uint64_t sub_1C671D260(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 40);
  if (v3 <= 2)
  {
    if (!*(v1 + 40))
    {
      type metadata accessor for EMIMAPSyncError(a1);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      sub_1C672562C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B0, &qword_1C674F7D0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C674F120;
      v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
LABEL_20:
      v35 = v12;
      *(v11 + 56) = sub_1C6719320(0, &qword_1EC1CD3C0, 0x1E696AD98);
      *(v11 + 64) = sub_1C67221C0();
      *(v11 + 32) = v35;
      v8 = sub_1C672585C();

      goto LABEL_23;
    }

    if (v3 == 1)
    {
      type metadata accessor for EMIMAPSyncError(a1);
      v4 = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      v40 = 0x80000001C675AB40;
LABEL_19:
      sub_1C672562C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B0, &qword_1C674F7D0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C674F120;
      v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      goto LABEL_20;
    }

    v21 = SecCopyErrorMessageString(*(v1 + 8), 0);
    if (!v21)
    {
      type metadata accessor for EMIMAPSyncError(0);
      v34 = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      v40 = 0x80000001C675AC00;
      goto LABEL_19;
    }

    v22 = v21;
    type metadata accessor for EMIMAPSyncError(v21);
    v23 = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_1C672562C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B0, &qword_1C674F7D0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C674F130;
    v26 = sub_1C672588C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1C672216C();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    *(v25 + 96) = sub_1C6719320(0, &qword_1EC1CD3C0, 0x1E696AD98);
    *(v25 + 104) = sub_1C67221C0();
    *(v25 + 72) = v29;
    v8 = sub_1C672585C();

LABEL_17:

LABEL_23:

    return v8;
  }

  if (v3 == 3)
  {
    v13 = *(v1 + 16);
    v8 = *(v1 + 24);
    v14 = *(v1 + 32);
    if (v13)
    {
      type metadata accessor for EMIMAPSyncError(a1);
      v15 = swift_getObjCClassFromMetadata();
      if (v14)
      {
        v16 = objc_opt_self();

        v17 = [v16 bundleForClass_];
        sub_1C672562C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B0, &qword_1C674F7D0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1C674F130;
        v19 = MEMORY[0x1E69E6158];
        *(v18 + 56) = MEMORY[0x1E69E6158];
        v20 = sub_1C672216C();
        *(v18 + 32) = v2;
        *(v18 + 40) = v13;
        *(v18 + 96) = v19;
        *(v18 + 104) = v20;
        *(v18 + 64) = v20;
        *(v18 + 72) = v8;
        *(v18 + 80) = v14;
      }

      else
      {
        v36 = objc_opt_self();

        v37 = [v36 bundleForClass_];
        sub_1C672562C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B0, &qword_1C674F7D0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1C674F120;
        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 64) = sub_1C672216C();
        *(v38 + 32) = v2;
        *(v38 + 40) = v13;
      }

      v8 = sub_1C672585C();

      goto LABEL_23;
    }

    if (!v14)
    {
      return v8;
    }

    type metadata accessor for EMIMAPSyncError(a1);
    v30 = swift_getObjCClassFromMetadata();
    v31 = objc_opt_self();

    v32 = [v31 bundleForClass_];
    sub_1C672562C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B0, &qword_1C674F7D0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1C674F120;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1C672216C();
    *(v33 + 32) = v8;
    *(v33 + 40) = v14;
    v8 = sub_1C672585C();
    goto LABEL_17;
  }

  if (v3 != 4)
  {
    return 0;
  }

  type metadata accessor for EMIMAPSyncError(a1);
  v6 = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_1C672562C();

  return v8;
}

id EMIMAPSyncError.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD310, &qword_1C674F140);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for EMIMAPSyncError.Underlying();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  sub_1C6719320(0, &unk_1EC1CAB48, 0x1E695DEF0);
  v19 = sub_1C672594C();
  if (v19)
  {
    v20 = v19;
    v36 = a1;
    v37 = v2;
    v21 = sub_1C67255EC();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1C67255DC();
    v24 = v20;
    v25 = sub_1C672565C();
    v27 = v26;
    v35 = v24;

    sub_1C67211FC(&qword_1EC1CABC8, type metadata accessor for EMIMAPSyncError.Underlying);
    sub_1C67255CC();
    sub_1C6721090(v25, v27);

    v28 = *(v12 + 56);
    v28(v10, 0, 1, v11);
    sub_1C67210E4(v10, v18);
    ObjCClassFromObject = swift_getObjCClassFromObject();
    sub_1C671E5B4(v18, v16);
    v30 = objc_allocWithZone(ObjCClassFromObject);
    v31 = sub_1C672584C();
    v32 = [v30 initWithDomain:v31 code:(*v16 + 1) userInfo:0];

    sub_1C671E5B4(v16, v8);
    v28(v8, 0, 1, v11);
    v33 = v32;
    sub_1C671C100(v8);

    sub_1C671E664(v16);
    sub_1C671E664(v18);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v33;
}

Swift::Void __swiftcall EMIMAPSyncError.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD310, &qword_1C674F140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = sub_1C672561C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C672560C();
  v10 = OBJC_IVAR___EMIMAPSyncError__underlying;
  swift_beginAccess();
  sub_1C6718ED8(v1 + v10, &v20, &qword_1EC1CD248, &qword_1C674ED30);
  if (v21)
  {
    sub_1C6721080(&v20, v19);
    v11 = type metadata accessor for EMIMAPSyncError.Underlying();
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v6, v12 ^ 1u, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for EMIMAPSyncError.Underlying();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  sub_1C6721148();
  v14 = sub_1C67255FC();
  v16 = v15;
  sub_1C6719B88(v6, &qword_1EC1CD310, &qword_1C674F140);

  v17 = sub_1C672564C();
  v18 = sub_1C672584C();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  sub_1C6721090(v14, v16);
}

void __swiftcall EMIMAPSyncError.init(domain:code:userInfo:)(EMIMAPSyncError *__return_ptr retstr, Swift::String domain, Swift::Int code, Swift::OpaquePointer_optional userInfo)
{
  rawValue = userInfo.value._rawValue;
  v6 = sub_1C672584C();

  if (rawValue)
  {
    v7 = sub_1C672580C();
  }

  else
  {
    v7 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDomain:v6 code:code userInfo:v7];
}

id EMIMAPSyncError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___EMIMAPSyncError__underlying];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = sub_1C672584C();

  if (a4)
  {
    v9 = sub_1C672580C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = EMIMAPSyncError;
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_code_userInfo_, v8, a3, v9);

  return v10;
}

uint64_t EMIMAPSyncError.Underlying.init(kind:details:backedOffUntil:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a2 + 32);
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = -1;
  v9 = *(type metadata accessor for EMIMAPSyncError.Underlying() + 24);
  v10 = sub_1C672568C();
  v12 = a2[1];
  v13 = *a2;
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *a4 = v7;
  sub_1C6721244(*(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 32), *(a4 + 40));
  *(a4 + 24) = v12;
  *(a4 + 8) = v13;
  *(a4 + 40) = v8;
  return sub_1C6722228(a3, a4 + v9, &qword_1EC1CD220, &qword_1C674ED20);
}

uint64_t sub_1C671E5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMIMAPSyncError.Underlying();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for EMIMAPSyncError.Underlying()
{
  result = qword_1EDAD97C0;
  if (!qword_1EDAD97C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C671E664(uint64_t a1)
{
  v2 = type metadata accessor for EMIMAPSyncError.Underlying();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EMIMAPSyncError.Underlying.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 6u)
  {
    v2 = 0x5040302010006uLL >> (8 * result);
  }

  else
  {
    v2 = 6;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C671E7B8()
{
  v1 = 0x736C6961746564;
  if (*v0 != 1)
  {
    v1 = 0x664F64656B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_1C671E818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6721F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C671E858(uint64_t a1)
{
  v2 = sub_1C67212A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C671E894(uint64_t a1)
{
  v2 = sub_1C67212A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EMIMAPSyncError.Underlying.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD320, &qword_1C674F148);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C67212A4();
  sub_1C6725B8C();
  LOBYTE(v18) = *v3;
  v23 = 0;
  sub_1C67212F8();
  sub_1C6725A8C();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v18 = *(v3 + 8);
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = 1;
    sub_1C672134C(v18, v11, v12, v13, v14);
    sub_1C67213AC();
    sub_1C6725A7C();
    sub_1C6721244(v18, v19, v20, v21, v22);
    v15 = *(type metadata accessor for EMIMAPSyncError.Underlying() + 24);
    LOBYTE(v18) = 2;
    sub_1C672568C();
    sub_1C67211FC(&qword_1EC1CACA8, MEMORY[0x1E6969530]);
    sub_1C6725A7C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EMIMAPSyncError.Underlying.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD328, &qword_1C674F150);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for EMIMAPSyncError.Underlying();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 24) = 0u;
  *(v16 + 8) = 0u;
  v16[40] = -1;
  v17 = *(v14 + 32);
  v18 = sub_1C672568C();
  v19 = *(*(v18 - 8) + 56);
  v36 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C67212A4();
  sub_1C6725B7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1C6721244(*(v16 + 1), *(v16 + 2), *(v16 + 3), *(v16 + 4), v16[40]);
    return sub_1C6719B88(&v16[v36], &qword_1EC1CD220, &qword_1C674ED20);
  }

  else
  {
    v21 = v34;
    v22 = v7;
    v40 = 0;
    sub_1C6721400();
    v23 = v35;
    sub_1C6725A4C();
    *v16 = v37;
    v40 = 1;
    sub_1C6721454();
    sub_1C6725A3C();
    v24 = v39;
    v25 = *(v16 + 1);
    v26 = *(v16 + 2);
    v27 = *(v16 + 3);
    v28 = *(v16 + 4);
    v31 = v38;
    v32 = v37;
    sub_1C6721244(v25, v26, v27, v28, v16[40]);
    v29 = v32;
    *(v16 + 24) = v31;
    *(v16 + 8) = v29;
    v16[40] = v24;
    LOBYTE(v37) = 2;
    sub_1C67211FC(&qword_1EC1CACA0, MEMORY[0x1E6969530]);
    sub_1C6725A3C();
    (*(v21 + 8))(v11, v23);
    sub_1C6722228(v22, &v16[v36], &qword_1EC1CD220, &qword_1C674ED20);
    sub_1C671E5B4(v16, v33);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1C671E664(v16);
  }
}

uint64_t EMIMAPSyncError.Underlying.Details.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD330, &qword_1C674F158);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v18[2] = v1[2];
  v18[3] = v8;
  v18[1] = v10;
  v11 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C67214A8();
  sub_1C6725B8C();
  if (v11 <= 1)
  {
    if (v11)
    {
      v24 = 1;
      v23 = 0;
      sub_1C67214FC();
      v16 = v19;
      sub_1C6725A8C();
      if (v16)
      {
        return (*(v4 + 8))(v7, v3);
      }

      v22 = 1;
    }

    else
    {
      v21 = 0;
      sub_1C67214FC();
      v14 = v19;
      sub_1C6725A8C();
      if (v14)
      {
        return (*(v4 + 8))(v7, v3);
      }

      sub_1C67257CC();
      v20 = 1;
    }

    goto LABEL_16;
  }

  if (v11 == 2)
  {
    v27 = 2;
    v26 = 0;
    sub_1C67214FC();
    v15 = v19;
    sub_1C6725A8C();
    if (v15)
    {
      return (*(v4 + 8))(v7, v3);
    }

    v25 = 1;
LABEL_16:
    sub_1C6725A9C();
    return (*(v4 + 8))(v7, v3);
  }

  if (v11 == 3)
  {
    v33 = 4;
    v32 = 0;
    sub_1C67214FC();
    v13 = v19;
    sub_1C6725A8C();
    if (!v13)
    {
      v31 = 2;
      sub_1C6725A6C();
      v30 = 3;
      sub_1C6725A6C();
    }
  }

  else
  {
    v29 = 3;
    v28 = 0;
    sub_1C67214FC();
    sub_1C6725A8C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t EMIMAPSyncError.Underlying.Details.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD348, &qword_1C674F160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C67214A8();
  sub_1C6725B7C();
  if (!v2)
  {
    v31 = 0;
    sub_1C6721550();
    sub_1C6725A4C();
    if (v32 > 1u)
    {
      if (v32 == 2)
      {
        v28 = 1;
        v19 = sub_1C6725A5C();
        (*(v6 + 8))(v9, v5);
        v13 = 0;
        LODWORD(v12) = v19;
        v14 = 0;
        v15 = 0;
        v16 = 2;
        v12 = v12;
      }

      else if (v32 == 3)
      {
        (*(v6 + 8))(v9, v5);
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 4;
      }

      else
      {
        v30 = 2;
        v20 = sub_1C6725A2C();
        v13 = v21;
        v25 = v20;
        v29 = 3;
        v14 = sub_1C6725A2C();
        v15 = v23;
        (*(v6 + 8))(v9, v5);
        v16 = 3;
        v12 = v25;
      }

      goto LABEL_20;
    }

    if (v32)
    {
      v27 = 1;
      v22 = sub_1C6725A5C();
      (*(v6 + 8))(v9, v5);
      v13 = 0;
      LODWORD(v12) = v22;
      v14 = 0;
      v15 = 0;
      v16 = 1;
      v12 = v12;
      goto LABEL_20;
    }

    v26 = 1;
    sub_1C6725A5C();
    v17 = sub_1C67257BC();
    if ((v17 & 0x100000000) == 0)
    {
      v18 = *(v6 + 8);
      v25 = v17;
      v18(v9, v5);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v12 = v25;
LABEL_20:
      *a2 = v12;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14;
      *(a2 + 24) = v15;
      *(a2 + 32) = v16;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    sub_1C67215A4();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1C671F600()
{
  v1 = *v0;
  sub_1C6725B3C();
  sub_1C6725B5C();
  return sub_1C6725B6C();
}

uint64_t sub_1C671F648()
{
  v1 = *v0;
  sub_1C6725B3C();
  sub_1C6725B5C();
  return sub_1C6725B6C();
}

uint64_t sub_1C671F68C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C672204C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C671F774()
{
  v1 = *v0;
  sub_1C6725B3C();
  sub_1C672589C();

  return sub_1C6725B6C();
}

uint64_t sub_1C671F808()
{
  *v0;
  *v0;
  *v0;
  sub_1C672589C();
}

uint64_t sub_1C671F888()
{
  v1 = *v0;
  sub_1C6725B3C();
  sub_1C672589C();

  return sub_1C6725B6C();
}

uint64_t sub_1C671F918@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C6722078();
  *a2 = result;
  return result;
}

void sub_1C671F948(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 107;
  v4 = 0xE200000000000000;
  v5 = 25459;
  if (*v1 != 2)
  {
    v5 = 116;
    v4 = 0xE100000000000000;
  }

  if (*v1)
  {
    v3 = 25454;
    v2 = 0xE200000000000000;
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

uint64_t sub_1C671F998()
{
  v1 = 107;
  v2 = 25459;
  if (*v0 != 2)
  {
    v2 = 116;
  }

  if (*v0)
  {
    v1 = 25454;
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

uint64_t sub_1C671F9E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C6722078();
  *a1 = result;
  return result;
}

uint64_t sub_1C671FA18(uint64_t a1)
{
  v2 = sub_1C67214A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C671FA54(uint64_t a1)
{
  v2 = sub_1C67214A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C671FAC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C672588C();
  v4 = sub_1C672584C();

  sub_1C672588C();
  sub_1C6725B3C();
  sub_1C672589C();
  v5 = sub_1C6725B6C();

  return sub_1C671FBEC(a1, v5);
}

unint64_t sub_1C671FB74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C6725B3C();
  sub_1C672589C();
  v6 = sub_1C6725B6C();

  return sub_1C671FD70(a1, a2, v6);
}

unint64_t sub_1C671FBEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + 8 * v4);
      sub_1C672588C();
      v6 = v5;
      v7 = sub_1C672584C();

      sub_1C672588C();
      v8 = sub_1C672584C();

      v9 = sub_1C672588C();
      v11 = v10;
      if (v9 == sub_1C672588C() && v11 == v12)
      {
        break;
      }

      v14 = sub_1C6725ACC();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
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

unint64_t sub_1C671FD70(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C6725ACC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_1C671FE28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C671FB74(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C67204F0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1C6721080((*(v12 + 56) + 32 * v9), a3);
    sub_1C6720184(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C671FECC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B8, &qword_1C674F7D8);
  v36 = a2;
  result = sub_1C67259EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1C6721080(v25, v37);
      }

      else
      {
        sub_1C6662408(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1C6725B3C();
      sub_1C672589C();
      result = sub_1C6725B6C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1C6721080(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6720184(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C672598C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1C6725B3C();

      sub_1C672589C();
      v14 = sub_1C6725B6C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1C6720334(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C671FB74(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C67204F0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C671FECC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C671FB74(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C6725AEC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1C6721080(a1, v23);
  }

  else
  {
    sub_1C6720484(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1C6720484(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C6721080(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1C67204F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B8, &qword_1C674F7D8);
  v2 = *v0;
  v3 = sub_1C67259DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C6662408(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C6721080(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t _sSo15EMIMAPSyncErrorC5EmailE10UnderlyingV7DetailsO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v31[0] = *a1;
  v31[1] = v4;
  v31[2] = v5;
  v31[3] = v6;
  v32 = v7;
  v33 = v9;
  v34 = v8;
  v35 = v10;
  v36 = v11;
  v37 = v12;
  if (v7 <= 1)
  {
    if (!v7)
    {
      if (!v12)
      {
        v17 = sub_1C67257CC();
        v18 = sub_1C67257CC();
        sub_1C6719B88(v31, &qword_1EC1CD3A8, &qword_1C674F7C8);
        return v17 == v18;
      }

      goto LABEL_22;
    }

    if (v12 != 1)
    {
LABEL_22:
      v24 = v9;
LABEL_23:
      sub_1C6721360(v24, v8, v10, v11, v12);
      sub_1C6719B88(v31, &qword_1EC1CD3A8, &qword_1C674F7C8);
      return 0;
    }

LABEL_20:
    sub_1C6719B88(v31, &qword_1EC1CD3A8, &qword_1C674F7C8);
    return v3 == v9;
  }

  if (v7 == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v7 != 3)
  {
    if (v12 == 4 && !(v8 | v9 | v10 | v11))
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    v20 = v11;
    v21 = v8;
    v22 = v10;
    v23 = v12;

    LOBYTE(v12) = v23;
    v10 = v22;
    v8 = v21;
    v11 = v20;
    goto LABEL_22;
  }

  if (v4)
  {
    if (!v8)
    {
      goto LABEL_31;
    }

    if (v3 != v9 || v4 != v8)
    {
      v13 = v8;
      v14 = v10;
      v15 = v11;
      v16 = sub_1C6725ACC();
      v10 = v14;
      v8 = v13;
      v11 = v15;
      if ((v16 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_31;
  }

  if (!v6)
  {
    v25 = v9;
    v26 = v11;
    sub_1C6721360(v25, v8, v10, v11, 3);
    sub_1C6721360(v3, v4, v5, 0, 3);

    sub_1C6719B88(v31, &qword_1EC1CD3A8, &qword_1C674F7C8);
    if (v26)
    {

      return 0;
    }

    return 1;
  }

  if (!v11)
  {
LABEL_31:
    sub_1C6721360(v9, v8, v10, v11, 3);
    v24 = v3;
    v8 = v4;
    v10 = v5;
    v11 = v6;
    LOBYTE(v12) = 3;
    goto LABEL_23;
  }

  if (v5 == v10 && v6 == v11)
  {
    sub_1C6721360(v9, v8, v5, v6, 3);
    sub_1C6721360(v3, v4, v5, v6, 3);
LABEL_18:
    sub_1C6719B88(v31, &qword_1EC1CD3A8, &qword_1C674F7C8);
    return 1;
  }

  v27 = v8;
  v28 = v10;
  v29 = v11;
  v30 = sub_1C6725ACC();
  sub_1C6721360(v9, v27, v28, v29, 3);
  sub_1C6721360(v3, v4, v5, v6, 3);
  sub_1C6719B88(v31, &qword_1EC1CD3A8, &qword_1C674F7C8);
  return (v30 & 1) != 0;
}

BOOL _sSo15EMIMAPSyncErrorC5EmailE10UnderlyingV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1C672568C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD220, &qword_1C674ED20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD398, &qword_1C674F7C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  if (*a1 != *a2)
  {
    return 0;
  }

  v62 = v12;
  v63 = &v56 - v16;
  v60 = v8;
  v64 = v5;
  v65 = v4;
  v17 = *(a1 + 1);
  v18 = *(a1 + 2);
  v20 = *(a1 + 3);
  v19 = *(a1 + 4);
  v21 = a1[40];
  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  v24 = *(a2 + 3);
  v66 = *(a2 + 4);
  v25 = a2[40];
  if (v21 != 255)
  {
    v72 = v17;
    v73 = v18;
    v74 = v20;
    v75 = v19;
    v76 = v21;
    if (v25 != 255)
    {
      v61 = v15;
      v67 = v22;
      v68 = v23;
      v26 = v21;
      v59 = v21;
      v27 = v25;
      v28 = v66;
      v69 = v24;
      v70 = v66;
      v71 = v27;
      v58 = v18;
      v29 = v18;
      v30 = v20;
      v31 = v20;
      v32 = v19;
      v33 = v19;
      v34 = v17;
      sub_1C672134C(v17, v29, v31, v33, v26);
      sub_1C672134C(v22, v23, v24, v28, v27);
      v35 = v58;
      v36 = v59;
      sub_1C672134C(v34, v58, v30, v32, v59);
      v37 = _sSo15EMIMAPSyncErrorC5EmailE10UnderlyingV7DetailsO2eeoiySbAG_AGtFZ_0(&v72, &v67);
      sub_1C6721258(v67, v68, v69, v70, v71);
      sub_1C6721258(v72, v73, v74, v75, v76);
      sub_1C6721244(v34, v35, v30, v32, v36);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v41 = v17;
    sub_1C672134C(v17, v18, v20, v19, v21);
    v38 = v22;
    v42 = v22;
    v40 = v66;
    sub_1C672134C(v42, v23, v24, v66, 255);
    sub_1C672134C(v41, v18, v20, v19, v21);
    sub_1C6721258(v41, v18, v20, v19, v21);
LABEL_9:
    sub_1C6721244(v41, v18, v20, v19, v21);
    sub_1C6721244(v38, v23, v24, v40, v25);
    return 0;
  }

  v61 = v15;
  v57 = v17;
  sub_1C672134C(v17, v18, v20, v19, 255);
  if (v25 != 255)
  {
    v38 = v22;
    v39 = v22;
    v40 = v66;
    sub_1C672134C(v39, v23, v24, v66, v25);
    v41 = v57;
    goto LABEL_9;
  }

  sub_1C672134C(v22, v23, v24, v66, 255);
  sub_1C6721244(v57, v18, v20, v19, 255);
LABEL_11:
  v43 = *(type metadata accessor for EMIMAPSyncError.Underlying() + 24);
  v44 = *(v61 + 48);
  v45 = &a1[v43];
  v46 = v63;
  sub_1C6718ED8(v45, v63, &qword_1EC1CD220, &qword_1C674ED20);
  sub_1C6718ED8(&a2[v43], v46 + v44, &qword_1EC1CD220, &qword_1C674ED20);
  v48 = v64;
  v47 = v65;
  v49 = *(v64 + 48);
  if (v49(v46, 1, v65) == 1)
  {
    if (v49(v46 + v44, 1, v47) == 1)
    {
      sub_1C6719B88(v46, &qword_1EC1CD220, &qword_1C674ED20);
      return 1;
    }

    goto LABEL_16;
  }

  v50 = v62;
  sub_1C6718ED8(v46, v62, &qword_1EC1CD220, &qword_1C674ED20);
  if (v49(v46 + v44, 1, v47) == 1)
  {
    (*(v48 + 8))(v50, v47);
LABEL_16:
    sub_1C6719B88(v46, &qword_1EC1CD398, &qword_1C674F7C0);
    return 0;
  }

  v52 = v46 + v44;
  v53 = v60;
  (*(v48 + 32))(v60, v52, v47);
  sub_1C67211FC(&qword_1EC1CD3A0, MEMORY[0x1E6969530]);
  v54 = sub_1C672583C();
  v55 = *(v48 + 8);
  v55(v53, v47);
  v55(v50, v47);
  sub_1C6719B88(v46, &qword_1EC1CD220, &qword_1C674ED20);
  return (v54 & 1) != 0;
}

unint64_t sub_1C6720F50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1CD3B8, &qword_1C674F7D8);
    v3 = sub_1C67259FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C6718ED8(v4, &v13, &unk_1EC1CD3D0, &unk_1C674F7E0);
      v5 = v13;
      v6 = v14;
      result = sub_1C671FB74(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C6721080(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_1C6721080(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C6721090(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C67210E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMIMAPSyncError.Underlying();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6721148()
{
  result = qword_1EC1CABC0;
  if (!qword_1EC1CABC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1CD310, &qword_1C674F140);
    sub_1C67211FC(&qword_1EC1CABD0, type metadata accessor for EMIMAPSyncError.Underlying);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CABC0);
  }

  return result;
}

uint64_t sub_1C67211FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6721244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C6721258(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C6721258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  return result;
}

unint64_t sub_1C67212A4()
{
  result = qword_1EDAD97F0;
  if (!qword_1EDAD97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD97F0);
  }

  return result;
}

unint64_t sub_1C67212F8()
{
  result = qword_1EC1CABF0;
  if (!qword_1EC1CABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CABF0);
  }

  return result;
}

uint64_t sub_1C672134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C6721360(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1C6721360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  return result;
}

unint64_t sub_1C67213AC()
{
  result = qword_1EC1CABE0;
  if (!qword_1EC1CABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CABE0);
  }

  return result;
}

unint64_t sub_1C6721400()
{
  result = qword_1EC1CABE8;
  if (!qword_1EC1CABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CABE8);
  }

  return result;
}

unint64_t sub_1C6721454()
{
  result = qword_1EC1CABD8;
  if (!qword_1EC1CABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CABD8);
  }

  return result;
}

unint64_t sub_1C67214A8()
{
  result = qword_1EC1CD338;
  if (!qword_1EC1CD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD338);
  }

  return result;
}

unint64_t sub_1C67214FC()
{
  result = qword_1EC1CD340;
  if (!qword_1EC1CD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD340);
  }

  return result;
}

unint64_t sub_1C6721550()
{
  result = qword_1EC1CD350;
  if (!qword_1EC1CD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD350);
  }

  return result;
}

unint64_t sub_1C67215A4()
{
  result = qword_1EC1CD358;
  if (!qword_1EC1CD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD358);
  }

  return result;
}

unint64_t sub_1C67215FC()
{
  result = qword_1EC1CD360;
  if (!qword_1EC1CD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD360);
  }

  return result;
}

void sub_1C672168C()
{
  sub_1C6721720();
  if (v0 <= 0x3F)
  {
    sub_1C6721770();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6721720()
{
  if (!qword_1EDAD97D0)
  {
    v0 = sub_1C672595C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAD97D0);
    }
  }
}

void sub_1C6721770()
{
  if (!qword_1EDAD9820)
  {
    sub_1C672568C();
    v0 = sub_1C672595C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAD9820);
    }
  }
}

uint64_t _s10UnderlyingV4KindOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10UnderlyingV4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_So15EMIMAPSyncErrorC5EmailE10UnderlyingV7DetailsO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6721948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6721990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C67219D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t _s10UnderlyingV7DetailsO4KindOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10UnderlyingV7DetailsO4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10UnderlyingV7DetailsO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10UnderlyingV7DetailsO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6721CC8()
{
  result = qword_1EC1CD368;
  if (!qword_1EC1CD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD368);
  }

  return result;
}

unint64_t sub_1C6721D20()
{
  result = qword_1EC1CD370;
  if (!qword_1EC1CD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD370);
  }

  return result;
}

unint64_t sub_1C6721D78()
{
  result = qword_1EC1CD378;
  if (!qword_1EC1CD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD378);
  }

  return result;
}

unint64_t sub_1C6721DD0()
{
  result = qword_1EC1CD380;
  if (!qword_1EC1CD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD380);
  }

  return result;
}

unint64_t sub_1C6721E28()
{
  result = qword_1EC1CD388;
  if (!qword_1EC1CD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD388);
  }

  return result;
}

unint64_t sub_1C6721E80()
{
  result = qword_1EDAD97E0;
  if (!qword_1EDAD97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD97E0);
  }

  return result;
}

unint64_t sub_1C6721ED8()
{
  result = qword_1EDAD97E8;
  if (!qword_1EDAD97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD97E8);
  }

  return result;
}

uint64_t sub_1C6721F2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C6725ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C6961746564 && a2 == 0xE700000000000000 || (sub_1C6725ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x664F64656B636162 && a2 == 0xEE006C69746E5566)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C6725ACC();

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

uint64_t sub_1C672204C(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    return (0x40302010005uLL >> (8 * a1));
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1C6722078()
{
  v0 = sub_1C6725A1C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C67220C4()
{
  result = qword_1EC1CD390;
  if (!qword_1EC1CD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD390);
  }

  return result;
}

unint64_t sub_1C6722118()
{
  result = qword_1EDAD97D8;
  if (!qword_1EDAD97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD97D8);
  }

  return result;
}

unint64_t sub_1C672216C()
{
  result = qword_1EC1CAC28;
  if (!qword_1EC1CAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CAC28);
  }

  return result;
}

unint64_t sub_1C67221C0()
{
  result = qword_1EC1CD3C8;
  if (!qword_1EC1CD3C8)
  {
    sub_1C6719320(255, &qword_1EC1CD3C0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1CD3C8);
  }

  return result;
}

uint64_t sub_1C6722228(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void __EMBlackPearlIsLanguageSupported_block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Error occured when checking for supported locale: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __defaultReattemptingHandlerForConnection_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "%{public}@: error encountered while sending message, will re-attempt on daemon re-launch: %{public}@", v4, v5);
}

void __defaultReattemptingHandlerForConnection_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "%{public}@: EMConnectionInvalidated error encountered while sending message, will NOT re-attempt on daemon re-launch: %{public}@", v4, v5);
}

void __defaultNonReattemptingHandlerForConnection_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "%{public}@: unhandled error: %{public}@", v4, v5);
}

void __EMPrivacyProxyIsDisabledForNetwork_block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Failed to get service status: %{public}@", buf, 0xCu);
}