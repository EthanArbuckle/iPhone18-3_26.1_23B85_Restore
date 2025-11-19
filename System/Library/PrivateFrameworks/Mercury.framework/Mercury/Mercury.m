uint64_t sub_2303B98A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_2303B9908(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (MEMORY[0x231917290](a1) != 0x1ED3F2070 || (type metadata accessor for XPCSideChannel(0), swift_unknownObjectRetain(), , v4 = sub_2304095EC(a1, 0xD000000000000019, 0x8000000230422830, v3), , swift_unknownObjectRelease(), , (v4 & 1) == 0))
    {
      swift_unknownObjectRetain();

      sub_2303B9D74(MEMORY[0x277D84F90]);
      XPCError.init(_:from:userInfo:)();
    }
  }

  return result;
}

uint64_t sub_2303B9CDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303B9D14()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2303B9D74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE30);
    v3 = sub_23041C428();
    v4 = a1 + 32;

    while (1)
    {
      sub_2303BA588(v4, &v13, &qword_27DB501B0);
      v5 = v13;
      v6 = v14;
      result = sub_2303BA608(v13, v14, sub_2303BA69C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2303BA68C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2303B9EF8(uint64_t a1)
{
  if (a1 != 0x1ED3F20C0)
  {
    swift_unknownObjectRelease();

    *v1 = 0;
    v1[1] = 0;
    return result;
  }

  if (xpc_equal(v3, 0x1F0B9BBD0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 32) = sub_23041BDD8();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v8;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x8000000230423F70;
    v9 = sub_2303BA458(inited);
    swift_setDeallocating();
    sub_2303BA754(inited + 32, &qword_27DB501B0);
    v10 = 1000;
  }

  else if (xpc_equal(v3, 0x1F0B9BC30))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_23041E310;
    *(v11 + 32) = sub_23041BDD8();
    *(v11 + 72) = MEMORY[0x277D837D0];
    *(v11 + 40) = v12;
    *(v11 + 48) = 0xD00000000000001FLL;
    *(v11 + 56) = 0x8000000230423330;
    v9 = sub_2303BA458(v11);
    swift_setDeallocating();
    sub_2303BA754(v11 + 32, &qword_27DB501B0);
    v10 = 1001;
  }

  else if (xpc_equal(v3, 0x1F0B9BC90))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_23041E310;
    *(v13 + 32) = sub_23041BDD8();
    *(v13 + 72) = MEMORY[0x277D837D0];
    *(v13 + 40) = v14;
    *(v13 + 48) = 0xD000000000000015;
    *(v13 + 56) = 0x8000000230423F50;
    v9 = sub_2303BA458(v13);
    swift_setDeallocating();
    sub_2303BA754(v13 + 32, &qword_27DB501B0);
    v10 = 1002;
  }

  else
  {
    if (qword_27DB4FC90 != -1)
    {
      swift_once();
    }

    if (!xpc_equal(v3, qword_27DB50690))
    {
      if (xpc_dictionary_get_string(v3, XPCErrorKeyDescription))
      {
        v23 = sub_23041BE98();
        static XPCError.unknown(_:from:userInfo:)(v23, v24, v2, v4, (v5 - 224));
      }

      else
      {
        static XPCError.unknown(_:from:userInfo:)(0xD000000000000010, 0x8000000230423EC0, v2, v4, (v5 - 224));
      }

      swift_unknownObjectRelease();

      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_23041E310;
    *(v15 + 32) = sub_23041BDD8();
    *(v15 + 72) = MEMORY[0x277D837D0];
    *(v15 + 40) = v16;
    *(v15 + 48) = 0xD000000000000060;
    *(v15 + 56) = 0x8000000230423EE0;
    v9 = sub_2303BA458(v15);
    swift_setDeallocating();
    sub_2303BA754(v15 + 32, &qword_27DB501B0);
    v10 = 1006;
  }

  XPCError.init(code:userInfo:)(v10, v9);
  v17 = *(v5 - 104);
  v18 = *(v5 - 96);
  v19 = sub_2303BA458(MEMORY[0x277D84F90]);
  *(v5 - 192) = v4;
  if (v2)
  {
    *(v5 - 200) = type metadata accessor for XPCConnection();
    *(v5 - 224) = v2;
    sub_2303BA68C((v5 - 224), v25);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2303BB1EC(v25, 0x656E6E6F43435058, 0xED00006E6F697463, isUniquelyReferenced_nonNull_native);
    v21 = v4;
  }

  else
  {
    sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, (v5 - 224));
    sub_2303BA754(v5 - 224, &qword_27DB50620);
    v21 = *(v5 - 192);
  }

  sub_2303BAA64(v17, v18, v21, v19);

  result = swift_unknownObjectRelease();
LABEL_17:
  v22 = *(v5 - 216);
  *v1 = *(v5 - 224);
  v1[1] = v22;
  return result;
}

unint64_t sub_2303BA458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE30);
    v3 = sub_23041C428();
    v4 = a1 + 32;

    while (1)
    {
      sub_2303BA588(v4, &v13, &qword_27DB501B0);
      v5 = v13;
      v6 = v14;
      result = sub_2303BA5F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2303BA68C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2303BA588(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2303BA608(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_23041CB48();
  sub_23041BE78();
  v5 = sub_23041CB78();

  return a3(a1, a2, v5);
}

_OWORD *sub_2303BA68C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2303BA69C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23041C808())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2303BA754(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Mercury::XPCError __swiftcall XPCError.init(code:userInfo:)(Swift::Int32 code, Swift::OpaquePointer userInfo)
{
  v4 = v2;
  rawValue = userInfo._rawValue;
  if (*(userInfo._rawValue + 2))
  {
    v6 = sub_2303BA5F0(0x656E6E6F43435058, 0xED00006E6F697463);
    if (v7)
    {
      sub_2303BAEC8(*(userInfo._rawValue + 7) + 32 * v6, &v17);
      type metadata accessor for XPCConnection();
      if (swift_dynamicCast())
      {
        *&v17 = *&v16[0];

        v8 = sub_23041BE28();
        v18 = MEMORY[0x277D837D0];
        *&v17 = v8;
        *(&v17 + 1) = v9;
        sub_2303BA68C(&v17, v16);
        v10 = rawValue;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_2303BB1EC(v16, 0xD000000000000018, 0x8000000230423FB0, isUniquelyReferenced_nonNull_native);

        rawValue = v10;
      }
    }
  }

  sub_2303BA930(0x656E6E6F43435058, 0xED00006E6F697463, &v17);
  v12 = sub_2303BA754(&v17, &qword_27DB50620);
  v14 = rawValue;
  *v4 = code;
  v4[1] = v14;
  result.errorUserInfo._rawValue = v13;
  result.errorCode = v12;
  return result;
}

double sub_2303BA930@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2303BA5F0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_230419718();
      v10 = v12;
    }

    sub_2303BA68C((*(v10 + 56) + 32 * v8), a3);
    sub_2303BBC28(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_OWORD *sub_2303BA9F8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2303BA68C(a4, (a5[7] + 32 * a1));
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

Swift::Int sub_2303BAA64(ValueMetadata *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = a3;
  sub_2303BAB50(a4, sub_2303BB75C, 0, isUniquelyReferenced_nonNull_native, &v14);

  v9 = v14;

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_2303BAB50(a2, sub_2303BB75C, 0, v10, &v14);
  swift_bridgeObjectRelease_n();
  v11._rawValue = v14;
  v12 = sub_2303BAF24(a1);

  return XPCError.init(code:userInfo:)(v12, v11).errorCode;
}

unint64_t sub_2303BAB8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_2303BB5F4(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_2303BA68C(v47, v45);
  v14 = *a5;
  result = sub_2303BA5F0(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_2303BB33C(v20, a4 & 1);
    result = sub_2303BA5F0(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_23041CAA8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_230419718();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_2303BAEC8(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm(v25 + v24);
    sub_2303BA68C(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_2303BA68C(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_2303BB5F4(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_2303BA68C(v47, v45);
        v34 = *a5;
        result = sub_2303BA5F0(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_2303BB33C(v38, 1);
          result = sub_2303BA5F0(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_2303BAEC8(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm(v33 + v32);
          sub_2303BA68C(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_2303BA68C(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_2303BB5F4(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_2303BB754();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2303BAEC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2303BAF24(ValueMetadata *a1)
{
  v1 = MEMORY[0x277D837D0];
  if (a1)
  {
    v2 = a1;
    if (a1 == a1)
    {
      return v2;
    }

    sub_23041C0C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23041F9D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506B0);
    v4 = sub_23041BE28();
    v6 = v5;
    *(v3 + 56) = v1;
    v7 = sub_2303BBBD4();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    v8 = MEMORY[0x277D83C10];
    *(v3 + 96) = MEMORY[0x277D83B88];
    *(v3 + 104) = v8;
    *(v3 + 64) = v7;
    *(v3 + 72) = v2;
    sub_2303E42C4(0, &qword_27DB502F0);
    v9 = sub_23041C1B8();
  }

  else
  {
    sub_23041C0C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23041E310;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB506B0);
    v11 = sub_23041BE28();
    v13 = v12;
    *(v10 + 56) = v1;
    *(v10 + 64) = sub_2303BBBD4();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_2303E42C4(0, &qword_27DB502F0);
    v9 = sub_23041C1B8();
  }

  sub_23041BB28();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 32) = sub_23041BDD8();
  *(inited + 72) = v1;
  *(inited + 40) = v15;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x80000002304239E0;
  v16 = sub_2303BA458(inited);
  swift_setDeallocating();
  sub_2303BA754(inited + 32, &qword_27DB501B0);
  XPCError.init(code:userInfo:)(-1, v16);
  v2 = &type metadata for XPCError;

  if (&type metadata for XPCError < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (&type metadata for XPCError <= 0x7FFFFFFF)
  {
    return v2;
  }

  __break(1u);
  return result;
}

_OWORD *sub_2303BB1EC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2303BA5F0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_230419718();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2303BB33C(v16, a4 & 1);
    v11 = sub_2303BA5F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23041CAA8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_2303BA68C(a1, v22);
  }

  else
  {
    sub_2303BA9F8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2303BB33C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE30);
  v33 = a2;
  result = sub_23041C418();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2303BA68C(v24, v34);
      }

      else
      {
        sub_2303BAEC8(v24, v34);
      }

      sub_23041CB48();
      sub_23041BE78();
      result = sub_23041CB78();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2303BA68C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2303BB5F4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2303BAEC8(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_2303BA68C(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_2303BA754(v21, &qword_27DB506D8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2303BB75C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2303BAEC8((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_2303BB7A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB502D0);
  MEMORY[0x28223BE28](v1 - 8);
  v3 = v12 - v2;
  v4 = sub_2303BB9C8();
  v15 = v4;
  v16 = v5;
  v6 = *(v0 + 40);
  if (v6)
  {
    v7 = *(v0 + 32);
    v13 = v4;
    v14 = v5;
    v12[0] = 0xD00000000000001CLL;
    v12[1] = 0x80000002304235F0;
    v8 = sub_23041BAB8();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_2303F6418();

    sub_23041C1E8();
    v10 = v9;
    sub_2303F646C(v3);

    if ((v10 & 1) == 0)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_23041C288();

      v13 = 0xD000000000000016;
      v14 = 0x8000000230423610;
      MEMORY[0x231915500](v7, v6);
      sub_2303F64D4();
      sub_23041BE48();
    }
  }

  return v15;
}

uint64_t sub_2303BB9C8()
{
  v1 = MEMORY[0x277D837D0];
  (*(*v0 + 208))(v11, sub_2303BBB8C, 0, MEMORY[0x277D837D0]);
  v2 = v11[0];
  v3 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23041F9C0;
  v11[0] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB502B0);
  v5 = sub_23041BE28();
  v7 = v6;
  *(v4 + 56) = v1;
  v8 = sub_2303BBBD4();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = MEMORY[0x277D841E8];
  *(v4 + 96) = MEMORY[0x277D841D8];
  *(v4 + 104) = v9;
  *(v4 + 64) = v8;
  *(v4 + 72) = v0;
  *(v4 + 136) = v1;
  *(v4 + 144) = v8;
  *(v4 + 112) = v2;
  *(v4 + 120) = v3;
  return sub_23041BDE8();
}

void sub_2303BBB8C(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x231916FC0]();
  *a1 = sub_23041BE98();
  a1[1] = v3;
  free(v2);
}

unint64_t sub_2303BBBD4()
{
  result = qword_280AC7950;
  if (!qword_280AC7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC7950);
  }

  return result;
}

uint64_t sub_2303BBC28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23041C258() + 1) & ~v5;
    do
    {
      sub_23041CB48();

      sub_23041BE78();
      v10 = sub_23041CB78();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2303BBDF8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2303BBE30(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = MEMORY[0x277D84F90];
  if (qword_280AC7960 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v5 = qword_280AC7968;
    [qword_280AC7968 lock];
    v14 = a3;
    sub_2303BC020(a3, &protocol witness table for RemoteXPCPeerConnection, &v19);
    [v5 unlock];
    a3 = v19;
    v6 = v19[2];

    if (!v6)
    {
      break;
    }

    v7 = 0;
    v8 = a3 + 6;
    while (v7 < a3[2])
    {
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v17[0] = a1;
      v17[1] = a2;
      v17[2] = 0;
      v18 = 1;
      if (*(v12 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection))
      {
        v10 = *(v12 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection + 8);
        v9 = *(v12 + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
      }

      else
      {
        v9 = v14;

        v10 = &protocol witness table for RemoteXPCPeerConnection;
      }

      ++v7;
      v16[0] = v9;
      v16[1] = v10;
      swift_retain_n();

      v11(v17, v16);

      v8 += 3;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_9:
}

uint64_t sub_2303BC020(uint64_t a1, uint64_t a2, void **a3)
{
  v56 = a3;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50520);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE28](v3);
  v60 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v5);
  v59 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FF60);
  v9 = MEMORY[0x28223BE28](v8 - 8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE28](v9);
  v57 = v50 - v13;
  MEMORY[0x28223BE28](v12);
  v64 = v50 - v14;
  if (qword_280AC7AF8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v65 = v11;
  swift_beginAccess();
  v15 = off_27DB4FC30;
  KeyPath = swift_getKeyPath();
  v17 = v15 + 64;
  v18 = -1 << v15[32];
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v15 + 8);
  v63 = (v4 + 56);
  v50[0] = v18;
  v21 = (63 - v18) >> 6;
  v53 = v4;
  v61 = (v4 + 48);
  v50[1] = KeyPath;

  v54 = v15;

  v22 = 0;
  v68 = 0;
  v52 = v3;
  v58 = v15 + 64;
LABEL_6:
  v66 = v22;
  v67 = 0;
  v62 = v20;
  v11 = v20;
  while (1)
  {
    v24 = v64;
    v23 = v65;
    if (v22)
    {
      v25 = *(v22 + 16);
      if (v67 != v25)
      {
        if (v67 >= v25)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v29 = v53;
        v30 = v67;
        v31 = v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v53 + 72) * v67;
        v32 = v57;
        sub_2303BA588(v31, v57, &unk_27DB50520);
        v67 = v30 + 1;
        (*(v29 + 56))(v32, 0, 1, v3);
        sub_2303BC72C(v32, v24, &qword_27DB4FF60);
        goto LABEL_22;
      }

      v4 = v57;
      (*v63)(v57, 1, 1, v3);
      sub_2303BA754(v4, &qword_27DB4FF60);
    }

    if (v11)
    {
      v27 = v68;
LABEL_32:
      v20 = (v11 - 1) & v11;
      v4 = *(*(v54 + 7) + ((v27 << 9) | (8 * __clz(__rbit64(v11)))));

      v22 = v4;
      goto LABEL_6;
    }

    v26 = v68;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v27 >= v21)
      {
        break;
      }

      v11 = *&v17[8 * v27];
      ++v26;
      if (v11)
      {
        v68 = v27;
        goto LABEL_32;
      }
    }

    v28 = v21 <= v68 + 1 ? v68 + 1 : v21;
    v68 = v28 - 1;
    (*v63)(v24, 1, 1, v3);
    v62 = 0;
    v11 = 0;
LABEL_22:
    sub_2303BC72C(v24, v23, &qword_27DB4FF60);
    if ((*v61)(v23, 1, v3) == 1)
    {
      break;
    }

    v33 = v59;
    sub_2303BC72C(v23, v59, &unk_27DB50520);
    v34 = v60;
    sub_2303BA588(v33, v60, &unk_27DB50520);
    v4 = *(v3 + 48);
    Strong = swift_weakLoadStrong();
    sub_2303BA754(v34 + v4, &qword_27DB4FEE0);
    sub_2303D8174(v34, type metadata accessor for XPCSideChannel.InstanceIdentifier);
    v17 = v58;
    sub_2303BA754(v33, &unk_27DB50520);
    v22 = v66;
    if (Strong)
    {
      v36 = *(Strong + OBJC_IVAR____TtC7Mercury14XPCSideChannel__connection);
      if (v36 && (v4 = *(*v51 + 208), , v37 = v55, (v4)(&v69, sub_2303D8C48, v36, MEMORY[0x277D839B0]), v55 = v37, , (v69 & 1) == 0))
      {

        v22 = v66;
      }

      else
      {
        v39 = *(Strong + OBJC_IVAR____TtC7Mercury14XPCSideChannel__eventHandler);
        v38 = *(Strong + OBJC_IVAR____TtC7Mercury14XPCSideChannel__eventHandler + 8);
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = v38;
        v41 = v56;
        v42 = *v56;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v41 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_2304064CC(0, v42[2] + 1, 1, v42);
          *v56 = v42;
        }

        v45 = v42[2];
        v44 = v42[3];
        v4 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v48 = sub_2304064CC((v44 > 1), v45 + 1, 1, v42);
          *v56 = v48;
        }

        v46 = *v56;
        *(v46 + 16) = v4;
        v47 = (v46 + 24 * v45);
        v47[4] = Strong;
        v47[5] = sub_2303D888C;
        v47[6] = v40;
        v3 = v52;
        v22 = v66;
      }
    }
  }

  sub_2303BB754();
}

uint64_t sub_2303BC6F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BC72C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2303BC794(uint64_t a1)
{
  v3 = sub_23041BC18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE28](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23041BC48();
  v7 = *(v18 - 8);
  MEMORY[0x28223BE28](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[6];
  os_unfair_lock_lock(v10);
  v11 = v1[10];
  v12 = v11;
  os_unfair_lock_unlock(v10);
  if (v11)
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    aBlock[4] = sub_2303BCD00;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2303BCCBC;
    aBlock[3] = &block_descriptor_95;
    v15 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_23041BC38();
    aBlock[6] = MEMORY[0x277D84F90];
    sub_2303BCC08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501A8);
    sub_2303BCBA4();
    sub_23041C248();
    MEMORY[0x2319157E0](0, v9, v6, v15);

    _Block_release(v15);
    (*(v4 + 8))(v6, v3);
    (*(v7 + 8))(v9, v18);
  }

  else
  {
    os_unfair_lock_lock(v10);
    v16 = v1[7];
    sub_2303BE674(v16);
    sub_2303BE674(v16);
    os_unfair_lock_unlock(v10);
    if (v16)
    {
      swift_unknownObjectRetain();

      sub_2303BCE1C();
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2303BCBA4()
{
  result = qword_27DB4FBB0;
  if (!qword_27DB4FBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB501A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FBB0);
  }

  return result;
}

unint64_t sub_2303BCC08()
{
  result = qword_27DB4FBC0;
  if (!qword_27DB4FBC0)
  {
    sub_23041BC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FBC0);
  }

  return result;
}

uint64_t sub_2303BCC60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2303BCCBC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2303BCD08()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    os_unfair_lock_lock(v2);
    v3 = *(v1 + 56);
    sub_2303BE674(v3);
    sub_2303BE674(v3);
    os_unfair_lock_unlock(v2);
    if (v3)
    {
      swift_unknownObjectRetain();

      sub_2303BCE1C();
    }
  }

  return result;
}

uint64_t sub_2303BCE54(uint64_t a1)
{
  if (a1 != 0x1ED3F2070)
  {
    sub_2303BA458(MEMORY[0x277D84F90]);

    swift_unknownObjectRetain();

    XPCError.init(_:from:userInfo:)();
  }

  *v1 = v2;
  *(v1 + 8) = 0xD000000000000019;
  *(v1 + 16) = 0x8000000230422830;
  *(v1 + 24) = 0;
  return result;
}

unint64_t sub_2303BCF70()
{
  result = qword_27DB4FBD0;
  if (!qword_27DB4FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FBD0);
  }

  return result;
}

uint64_t sub_2303BCFC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v4 = vars8;
  }
}

uint64_t sub_2303BD004@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE28](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(a2 + 24) - 8) + 32))(a3, v12, *(a2 + 24));
    sub_23041CB88();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v10, v12, v6);
    a1(v10);
    return (*(v7 + 8))(v10, v6);
  }
}

void sub_2303BD210(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2303BD25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    swift_unknownObjectRelease();
    v4 = vars8;
  }
}

uint64_t RemoteXPCPeerConnection.__deallocating_deinit()
{
  MEMORY[0x231916D20](*(v0 + 48), -1, -1);

  v1 = *(v0 + 56);

  sub_2303BCC60(v1);
  v2 = *(v0 + 80);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_2303BD460()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BD4A4(void *a1, void *a2)
{
  swift_unknownObjectRelease();
  *a2 = *a1;

  return swift_unknownObjectRetain();
}

uint64_t sub_2303BD4E8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2303BD540()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2303BD618()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BD650()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BD690()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BD6EC@<X0>(BOOL *a1@<X8>)
{
  result = sub_23041BBC8();
  *a1 = (result & 4) != 0;
  return result;
}

uint64_t sub_2303BD728@<X0>(BOOL *a1@<X8>)
{
  result = sub_23041BBC8();
  *a1 = result == 0;
  return result;
}

uint64_t sub_2303BD78C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BD7D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BD810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23041BAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2303BD8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23041BAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2303BD990()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BD9C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_2303BDA68(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2303BDB74@<X0>(uint64_t *a1@<X8>)
{
  result = XPCDictionary.subscript.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2303BDBF8@<X0>(uint64_t *a1@<X8>)
{
  result = XPCDictionary.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2303BDCC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BDCF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2303BDD60()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2303BDDA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BDDD8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2303BDE4C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2303BDEAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BDF24@<X0>(_BYTE *a1@<X8>)
{
  result = XPCMessageDispatcher.errorOnUnregisteredTypes.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2303BDF88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BDFF4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BE02C()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2303BE06C()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2303BE0A4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_2303BE118(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2303BE134()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 144) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2303BE238()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2303BE278()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2303BE2D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2303BE310()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BE350()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2303BE390()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BE3C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2303BE408()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2303BE450()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2303BE4A8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BE4E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2303BE538()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303BE578()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2303BE5D8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t get_enum_tag_for_layout_string_Se_SEpIegn_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2303BE65C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2303BE674(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void connect_loopback_sync()
{
  remote_control_detach_loopback();
  remote_control_attach_loopback();
  remote_control_connect_loopback();
  v0 = remote_device_copy_unique_of_type();
  if (!v0)
  {
    connect_loopback_sync_cold_1();
  }

  v1 = v0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_queue_create("loopback connect", 0);
  v5 = v2;
  v4 = v2;
  remote_device_set_connected_callback();
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void __connect_loopback_sync_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (remote_device_get_state() != 2)
  {
    __connect_loopback_sync_block_invoke_cold_1();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t XPCFileTransfer_open(const char *a1, int a2, void *a3, int a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (XPCFileTransfer_open_once[0] != -1)
    {
      XPCFileTransfer_open_cold_1();
    }

    v12 = [XPCFileTransfer_open_protectionTypes objectForKeyedSubscript:v9];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 intValue];
    }

    else
    {
      v14 = -1;
    }

    if (v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = -1;
    if (v10)
    {
LABEL_10:
      v15 = [v11 intValue];
      goto LABEL_11;
    }
  }

  v15 = 438;
LABEL_11:
  v16 = open_dprotected_np(a1, a2, v14, a4, v15);

  return v16;
}

uint64_t XPCaudit_token_to_auid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_auid(&v3);
}

uint64_t XPCaudit_token_to_euid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_euid(&v3);
}

uint64_t XPCaudit_token_to_egid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_egid(&v3);
}

uint64_t XPCaudit_token_to_ruid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_ruid(&v3);
}

uint64_t XPCaudit_token_to_rgid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_rgid(&v3);
}

uint64_t XPCaudit_token_to_pid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_pid(&v3);
}

uint64_t XPCaudit_token_to_asid(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_asid(&v3);
}

uint64_t XPCaudit_token_to_pidversion(_OWORD *a1)
{
  v1 = a1[1];
  *v3.val = *a1;
  *&v3.val[4] = v1;
  return audit_token_to_pidversion(&v3);
}

uint64_t XPCEndpoint.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t SystemXPCListenerConnection.createEndpoint()()
{
  v1 = xpc_endpoint_create(*(v0 + 24));
  type metadata accessor for XPCPeerEndpoint();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_2303BEE48(uint64_t a1, int a2)
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

uint64_t sub_2303BEE68(uint64_t result, int a2, int a3)
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

uint64_t sub_2303BEEA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_2303BEEDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 0x2000))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2303BEF00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8184) = 0;
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
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
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
    *(result + 536) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
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
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
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

  *(result + 0x2000) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCEventPublisher.Token(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for XPCEventPublisher.Token(uint64_t result, int a2, int a3)
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

uint64_t sub_2303BF8A0()
{
  v1 = xpc_endpoint_create(*(v0 + 24));
  type metadata accessor for XPCPeerEndpoint();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

_DWORD *sub_2303BF8DC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2303BF900(uint64_t a1, id *a2)
{
  result = sub_23041BDB8();
  *a2 = 0;
  return result;
}

uint64_t sub_2303BF978(uint64_t a1, id *a2)
{
  v3 = sub_23041BDC8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2303BF9F8@<X0>(uint64_t *a1@<X8>)
{
  sub_23041BDD8();
  v2 = sub_23041BDA8();

  *a1 = v2;
  return result;
}

uint64_t sub_2303BFA48@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23041BDA8();

  *a1 = v2;
  return result;
}

uint64_t sub_2303BFA90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23041BDD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2303BFABC(uint64_t a1)
{
  v2 = sub_2303BFBBC(&qword_27DB4FCE8);
  v3 = sub_2303BFBBC(&qword_27DB4FCF0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2303BFBBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLFileProtection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2303BFC00()
{
  v0 = sub_23041BDD8();
  v1 = MEMORY[0x231915570](v0);

  return v1;
}

uint64_t sub_2303BFC3C()
{
  sub_23041BDD8();
  sub_23041BE78();
}

uint64_t sub_2303BFC90()
{
  sub_23041BDD8();
  sub_23041CB48();
  sub_23041BE78();
  v0 = sub_23041CB78();

  return v0;
}

uint64_t sub_2303BFD04()
{
  v0 = sub_23041BDD8();
  v2 = v1;
  if (v0 == sub_23041BDD8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23041C808();
  }

  return v5 & 1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2303BFDD4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2303BFE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2303BFE98(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t XPCObjectEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *(v2 + 16);
  v8 = MEMORY[0x277D84F90];
  v9 = sub_2303D0098(MEMORY[0x277D84F90]);
  v10 = type metadata accessor for _XPCObjectEncoder();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v9;
  v19 = v10;
  v20 = sub_2303D0368(qword_280AC80F0, type metadata accessor for _XPCObjectEncoder);
  v17 = v11;

  sub_23041BD18();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    v4 = v11[2];
    if (v4)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v4 = sub_23041C348();
      swift_allocError();
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
      v14[3] = a2;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v14);
      (*(*(a2 - 8) + 16))(boxed_opaque_existential_0Tm, a1, a2);
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_23041C288();

      v17 = 0xD000000000000029;
      v18 = 0x8000000230421C10;
      v16 = sub_23041CC18();
      MEMORY[0x231915500](v16);

      sub_23041C308();
      (*(*(v4 - 8) + 104))(v14, *MEMORY[0x277D841A8], v4);
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t XPCObjectEncoder.encode<A>(_:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x231917290](a2) == 0x1ED3F2070)
  {
    result = XPCObjectEncoder.encode<A>(_:)(a1, a3);
    if (!v3)
    {
      v11 = result;
      if (MEMORY[0x231917290]() == 0x1ED3F2070)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = a2;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_2303D02F0;
        *(v16 + 24) = v15;
        v19[4] = sub_2303D0318;
        v19[5] = v16;
        v19[0] = MEMORY[0x277D85DD8];
        v19[1] = 1107296256;
        v19[2] = sub_2303C0524;
        v19[3] = &block_descriptor;
        v17 = _Block_copy(v19);
        swift_unknownObjectRetain();

        xpc_dictionary_apply(v11, v17);
        swift_unknownObjectRelease();
        _Block_release(v17);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }
      }

      else
      {
        v12 = sub_23041C348();
        swift_allocError();
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
        v14[3] = swift_getObjectType();
        *v14 = a2;
        swift_unknownObjectRetain();
        sub_23041C308();
        (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D841A8], v12);
        swift_willThrow();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v7 = sub_23041C348();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
    v9[3] = swift_getObjectType();
    *v9 = a2;
    swift_unknownObjectRetain();
    sub_23041C308();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D841A8], v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2303C0524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_2303C0598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = XPCObjectEncoder.encode<A>(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2303C05C8()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  *(v0 + 16) = v1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (v1)
  {
    type metadata accessor for XPCObjectKeyedEncodingContainer();

    swift_getWitnessTable();
    return sub_23041C5B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2303C069C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2303C0710@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = xpc_array_create(0, 0);
  *(v3 + 16) = v4;
  result = swift_unknownObjectRelease();
  if (v4)
  {
    v6 = *(v3 + 32);
    a1[3] = &type metadata for XPCObjectUnkeyedEncodingContainer;
    a1[4] = sub_2303D07CC();
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v6;
    swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2303C07A4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 32);
  a1[3] = &type metadata for XPCObjectSingleValueEncodingContainer;
  a1[4] = sub_2303D0778();
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_2303C0808()
{
  v1 = *(v0 + 8);
  sub_23041CBD8();
  v2 = sub_23041BE38();

  xpc_dictionary_set_value(v1, (v2 + 32), 0);
}

uint64_t sub_2303C0874(char a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_BOOL(v3, (v4 + 32), a1 & 1);
}

uint64_t sub_2303C08EC()
{
  v1 = *(v0 + 8);
  sub_23041CBD8();
  v2 = sub_23041BE38();

  v3 = sub_23041BE38();
  xpc_dictionary_set_string(v1, (v2 + 32), (v3 + 32));
}

uint64_t sub_2303C097C(double a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_double(v3, (v4 + 32), a1);
}

uint64_t sub_2303C09F4(float a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_double(v3, (v4 + 32), a1);
}

uint64_t sub_2303C0A70(char a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_int64(v3, (v4 + 32), a1);
}

uint64_t sub_2303C0AEC(__int16 a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_int64(v3, (v4 + 32), a1);
}

uint64_t sub_2303C0B68(int a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_int64(v3, (v4 + 32), a1);
}

uint64_t sub_2303C0BE4(unsigned __int8 a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_uint64(v3, (v4 + 32), a1);
}

uint64_t sub_2303C0C5C(unsigned __int16 a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_uint64(v3, (v4 + 32), a1);
}

uint64_t sub_2303C0CD4(unsigned int a1)
{
  v3 = *(v1 + 8);
  sub_23041CBD8();
  v4 = sub_23041BE38();

  xpc_dictionary_set_uint64(v3, (v4 + 32), a1);
}

uint64_t sub_2303C0D50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 8);
  sub_23041CBD8();
  v8 = sub_23041BE38();

  a4(v7, v8 + 32, a1);
}

uint64_t sub_2303C0DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v86 = a5;
  v89 = a3;
  v93 = a2;
  v94 = a1;
  v97[12] = *MEMORY[0x277D85DF0];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE40);
  MEMORY[0x28223BE28](v6 - 8);
  v90 = &v83 - v7;
  v88 = sub_23041BAA8();
  v87 = *(v88 - 1);
  MEMORY[0x28223BE28](v88);
  v85 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501E0);
  v10 = MEMORY[0x28223BE28](v9 - 8);
  v12 = &v83 - v11;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x28223BE28](v10);
  *&v83 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE28](v14);
  v84 = &v83 - v17;
  v18 = MEMORY[0x28223BE28](v16);
  v20 = &v83 - v19;
  MEMORY[0x28223BE28](v18);
  v22 = &v83 - v21;
  v23 = sub_23041BA38();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE28](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v13 + 16);
  v28 = v13 + 16;
  v27 = v29;
  (v29)(v22, v94, a4);
  v30 = a4;
  v31 = swift_dynamicCast();
  v32 = *(v24 + 56);
  if (v31)
  {
    v32(v12, 0, 1, v23);
    (*(v24 + 32))(v26, v12, v23);
    v33 = v91[1];
    sub_23041CBD8();
    v34 = sub_2303E4450();
    v35 = sub_23041BE38();

    xpc_dictionary_set_date(v33, (v35 + 32), v34);
    (*(v24 + 8))(v26, v23);
  }

  v37 = v91;
  v38 = v89;
  v32(v12, 1, 1, v23);
  sub_2303BA754(v12, &qword_27DB501E0);
  v39 = v94;
  (v27)(v20, v94, v30);
  v40 = v88;
  v41 = swift_dynamicCast();
  v42 = v87;
  v43 = *(v87 + 56);
  if (v41)
  {
    v44 = v90;
    v43(v90, 0, 1, v40);
    v45 = v85;
    (*(v42 + 32))(v85, v44, v40);
    v95 = sub_23041BA88();
    v96 = v46;
    sub_2303C18C4(&v95, v97, v37);
    return (*(v42 + 8))(v45, v40);
  }

  v47 = v90;
  v43(v90, 1, 1, v40);
  sub_2303BA754(v47, &unk_27DB4FE40);
  (v27)(v84, v39, v30);
  v48 = swift_dynamicCast();
  v49 = v92;
  v50 = v93;
  if (v48)
  {
    v51 = v95;
    v52 = v96;
    MEMORY[0x28223BE28](v48);
    v53 = *(v38 + 24);
    *(&v83 - 6) = *(v38 + 16);
    *(&v83 - 5) = v30;
    v54 = v86;
    *(&v83 - 4) = v53;
    *(&v83 - 3) = v54;
    v81 = v37;
    v82 = v50;
    sub_2303CFDFC(sub_2303D302C, (&v83 - 4), v51, v52);
    return sub_2303D2DB4(v51, v52);
  }

  (v27)(v83, v39, v30);
  if (swift_dynamicCast())
  {
    v55 = v95;
    v56 = v37[1];
    sub_23041CBD8();
    v57 = sub_23041BE38();
    swift_unknownObjectRetain();

    xpc_dictionary_set_value(v56, (v57 + 32), v55);
    goto LABEL_10;
  }

  v85 = v27;
  v87 = v28;
  v58 = *(*v37 + 24);
  v59 = v37[2];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  v83 = xmmword_23041E310;
  *(inited + 16) = xmmword_23041E310;
  v61 = *(v38 + 16);
  *(inited + 56) = v61;
  v89 = *(v38 + 24);
  *(inited + 64) = v89;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
  v63 = (*(v61 - 8) + 16);
  v88 = *v63;
  (v88)(boxed_opaque_existential_0Tm, v50, v61);
  v95 = v59;

  v84 = v59;

  sub_23041B3F8(inited);
  v64 = v95;
  v65 = sub_2303D0098(MEMORY[0x277D84F90]);
  v66 = type metadata accessor for _XPCObjectEncoder();
  v67 = swift_allocObject();
  v67[2] = 0;
  v67[3] = v58;
  v67[4] = v64;
  v67[5] = v65;
  v97[1] = v66;
  v68 = v94;
  v97[2] = sub_2303D0368(qword_280AC80F0, type metadata accessor for _XPCObjectEncoder);
  v95 = v67;

  sub_23041BD18();
  if (!v49)
  {
    v86 = v63;
    v69 = v88;
    v70 = v89;
    __swift_destroy_boxed_opaque_existential_1Tm(&v95);
    v71 = v67[2];
    if (!v71)
    {
      v74 = sub_23041C348();
      v92 = swift_allocError();
      v76 = v75;
      v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590) + 48);
      v76[3] = v30;
      v77 = __swift_allocate_boxed_opaque_existential_0Tm(v76);
      (v85)(v77, v68, v30);
      v78 = swift_initStackObject();
      *(v78 + 16) = v83;
      *(v78 + 56) = v61;
      *(v78 + 64) = v70;
      v79 = __swift_allocate_boxed_opaque_existential_0Tm((v78 + 32));
      v69(v79, v93, v61);
      v95 = v84;

      sub_23041B3F8(v78);
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_23041C288();

      v95 = 0xD00000000000001FLL;
      v96 = 0x80000002304222A0;
      v80 = sub_23041CC18();
      MEMORY[0x231915500](v80);

      sub_23041C308();
      (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D841A8], v74);
      swift_willThrow();
    }

    v72 = v91[1];
    swift_unknownObjectRetain();
    sub_23041CBD8();
    v73 = sub_23041BE38();
    swift_unknownObjectRetain();

    xpc_dictionary_set_value(v72, (v73 + 32), v71);

LABEL_10:
    swift_unknownObjectRelease_n();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v95);
}

uint64_t sub_2303C18C4(const unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  swift_unknownObjectRetain();
  result = sub_23041CBD8();
  if (a1)
  {
    v6 = sub_23041BE38();

    xpc_dictionary_set_uuid(v4, (v6 + 32), a1);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2303C195C(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  swift_unknownObjectRetain();
  result = sub_23041CBD8();
  if (a1)
  {
    v7 = sub_23041BE38();

    xpc_dictionary_set_data(v5, (v7 + 32), a1, a2 - a1);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2303C1A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = *(v4 + 8);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  sub_23041CBD8();
  v11 = sub_23041BE38();
  swift_unknownObjectRetain();

  xpc_dictionary_set_value(v8, (v11 + 32), v7);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 56) = v9;
  *(inited + 64) = v10;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0Tm, a2, v9);
  swift_unknownObjectRetain();

  sub_23041B3F8(inited);
  type metadata accessor for XPCObjectKeyedEncodingContainer();
  swift_getWitnessTable();
  sub_23041C5B8();
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C1BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = xpc_array_create(0, 0);
  v9 = v4[1];
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  sub_23041CBD8();
  v12 = sub_23041BE38();
  swift_unknownObjectRetain();

  xpc_dictionary_set_value(v9, (v12 + 32), v8);

  v13 = *v4;
  v14 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  *(inited + 56) = v10;
  *(inited + 64) = v11;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0Tm, a1, v10);

  sub_23041B3F8(inited);
  a3[3] = &type metadata for XPCObjectUnkeyedEncodingContainer;
  a3[4] = sub_2303D07CC();
  result = swift_unknownObjectRelease();
  *a3 = v13;
  a3[1] = v8;
  a3[2] = v14;
  return result;
}

uint64_t sub_2303C2250()
{
  v1 = sub_23041C348();
  swift_allocError();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
  *(v3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE68);
  *v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;
  count = xpc_array_get_count(*(v0 + 8));
  v5 = sub_23041C5C8();
  MEMORY[0x231915500](v5);

  *(inited + 56) = &type metadata for CodableIndexKey;
  *(inited + 64) = sub_2303D2CFC();
  v6 = swift_allocObject();
  *(inited + 32) = v6;
  *(v6 + 16) = 0x207865646E49;
  *(v6 + 24) = 0xE600000000000000;
  *(v6 + 32) = count;
  *(v6 + 40) = 0;

  sub_23041B3F8(inited);
  sub_23041C308();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D841A8], v1);
  return swift_willThrow();
}

uint64_t sub_2303C2434(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v79 = a3;
  v88 = a1;
  v94 = *MEMORY[0x277D85DF0];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE40);
  MEMORY[0x28223BE28](v4 - 8);
  v83 = (&v78 - v5);
  v85 = sub_23041BAA8();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE28](v85);
  *&v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501E0);
  v8 = MEMORY[0x28223BE28](v7 - 8);
  v10 = &v78 - v9;
  v11 = *(a2 - 8);
  v12 = MEMORY[0x28223BE28](v8);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE28](v12);
  v81 = &v78 - v15;
  v16 = MEMORY[0x28223BE28](v14);
  v18 = &v78 - v17;
  MEMORY[0x28223BE28](v16);
  v20 = &v78 - v19;
  v21 = sub_23041BA38();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE28](v21);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v11 + 16);
  v26 = v11 + 16;
  v25 = v27;
  (v27)(v20, v88, a2);
  v28 = a2;
  v29 = swift_dynamicCast();
  v30 = *(v22 + 56);
  if (v29)
  {
    v30(v10, 0, 1, v21);
    (*(v22 + 32))(v24, v10, v21);
    v31 = *(v86 + 8);
    v32 = sub_2303E4450();
    v33 = xpc_date_create(v32);
    xpc_array_append_value(v31, v33);
    swift_unknownObjectRelease();
    return (*(v22 + 8))(v24, v21);
  }

  else
  {
    v30(v10, 1, 1, v21);
    sub_2303BA754(v10, &qword_27DB501E0);
    v35 = v88;
    (v25)(v18, v88, a2);
    v36 = v83;
    v37 = v85;
    v38 = swift_dynamicCast();
    v39 = v84;
    v40 = *(v84 + 56);
    if (v38)
    {
      v40(v36, 0, 1, v37);
      v41 = v82;
      (*(v39 + 32))(v82, v36, v37);
      *uuid = sub_23041BA88();
      v91 = v42;
      v43 = *(v86 + 8);
      v44 = xpc_uuid_create(uuid);
      xpc_array_append_value(v43, v44);
      swift_unknownObjectRelease();
      return (*(v39 + 8))(v41, v37);
    }

    else
    {
      v40(v36, 1, 1, v37);
      sub_2303BA754(v36, &unk_27DB4FE40);
      (v25)(v81, v35, v28);
      if (swift_dynamicCast())
      {
        v45 = *uuid;
        v46 = v91;
        sub_2303CFC68(*uuid, v91, v86);
        return sub_2303D2DB4(v45, v46);
      }

      else
      {
        (v25)(v80, v35, v28);
        if (swift_dynamicCast())
        {
          xpc_array_append_value(*(v86 + 8), *uuid);
          return swift_unknownObjectRelease();
        }

        else
        {
          v83 = v25;
          v84 = v26;
          v47 = v86;
          v48 = *(*v86 + 24);
          v49 = *(v86 + 16);
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
          inited = swift_initStackObject();
          v82 = xmmword_23041E310;
          *(inited + 16) = xmmword_23041E310;
          v51 = v28;
          v52 = *(v47 + 8);

          v86 = v52;
          count = xpc_array_get_count(v52);
          *uuid = 0x207865646E49;
          v91 = 0xE600000000000000;
          v89 = count;
          v54 = sub_23041C5C8();
          MEMORY[0x231915500](v54);

          v55 = *uuid;
          v56 = v91;
          *(inited + 56) = &type metadata for CodableIndexKey;
          v57 = sub_2303D2CFC();
          *(inited + 64) = v57;
          v58 = swift_allocObject();
          *(inited + 32) = v58;
          *(v58 + 16) = v55;
          *(v58 + 24) = v56;
          *(v58 + 32) = count;
          *(v58 + 40) = 0;
          *uuid = v49;
          v81 = v49;

          sub_23041B3F8(inited);
          v59 = *uuid;
          v60 = sub_2303D0098(MEMORY[0x277D84F90]);
          v61 = type metadata accessor for _XPCObjectEncoder();
          v62 = swift_allocObject();
          v62[2] = 0;
          v62[3] = v48;
          v62[4] = v59;
          v62[5] = v60;
          v63 = v88;
          v92 = v61;
          v93 = sub_2303D0368(qword_280AC80F0, type metadata accessor for _XPCObjectEncoder);
          *uuid = v62;

          v64 = v87;
          sub_23041BD18();
          if (v64)
          {

            return __swift_destroy_boxed_opaque_existential_1Tm(uuid);
          }

          else
          {
            v65 = v86;
            __swift_destroy_boxed_opaque_existential_1Tm(uuid);
            v66 = v62[2];
            if (v66)
            {
              xpc_array_append_value(v65, v66);
            }

            else
            {
              v80 = sub_23041C348();
              v87 = swift_allocError();
              v68 = v67;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
              v79 = v68;
              v68[3] = v51;
              boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v68);
              v83(boxed_opaque_existential_0Tm, v63, v51);
              v70 = swift_initStackObject();
              *(v70 + 16) = v82;
              v71 = xpc_array_get_count(v65);
              *uuid = 0x207865646E49;
              v91 = 0xE600000000000000;
              v89 = v71;
              v72 = sub_23041C5C8();
              MEMORY[0x231915500](v72);

              v73 = *uuid;
              v74 = v91;
              *(v70 + 56) = &type metadata for CodableIndexKey;
              *(v70 + 64) = v57;
              v75 = swift_allocObject();
              *(v70 + 32) = v75;
              *(v75 + 16) = v73;
              *(v75 + 24) = v74;
              *(v75 + 32) = v71;
              *(v75 + 40) = 0;
              *uuid = v81;

              sub_23041B3F8(v70);
              *uuid = 0;
              v91 = 0xE000000000000000;
              sub_23041C288();

              *uuid = 0xD00000000000001FLL;
              v91 = 0x80000002304222A0;
              v76 = sub_23041CC18();
              MEMORY[0x231915500](v76);

              v77 = v79;
              sub_23041C308();
              (*(*(v80 - 1) + 104))(v77, *MEMORY[0x277D841A8]);
              swift_willThrow();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2303C2E8C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = *(v0 + 8);
  xpc_array_append_value(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;

  count = xpc_array_get_count(v2);
  v4 = sub_23041C5C8();
  MEMORY[0x231915500](v4);

  *(inited + 56) = &type metadata for CodableIndexKey;
  *(inited + 64) = sub_2303D2CFC();
  v5 = swift_allocObject();
  *(inited + 32) = v5;
  *(v5 + 16) = 0x207865646E49;
  *(v5 + 24) = 0xE600000000000000;
  *(v5 + 32) = count;
  *(v5 + 40) = 0;

  sub_23041B3F8(inited);
  type metadata accessor for XPCObjectKeyedEncodingContainer();
  swift_getWitnessTable();
  return sub_23041C5B8();
}

unint64_t sub_2303C3034@<X0>(void *a1@<X8>)
{
  v3 = xpc_array_create(0, 0);
  v4 = v1[1];
  xpc_array_append_value(v4, v3);
  v5 = *v1;
  v6 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23041E310;

  count = xpc_array_get_count(v4);
  v8 = sub_23041C5C8();
  MEMORY[0x231915500](v8);

  *(inited + 56) = &type metadata for CodableIndexKey;
  *(inited + 64) = sub_2303D2CFC();
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 16) = 0x207865646E49;
  *(v9 + 24) = 0xE600000000000000;
  *(v9 + 32) = count;
  *(v9 + 40) = 0;

  sub_23041B3F8(inited);
  a1[3] = &type metadata for XPCObjectUnkeyedEncodingContainer;
  result = sub_2303D07CC();
  a1[4] = result;
  *a1 = v5;
  a1[1] = v3;
  a1[2] = v6;
  return result;
}

uint64_t sub_2303C31B4(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_BOOL_create(a1 & 1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C3204()
{
  v1 = *(v0 + 8);
  v2 = sub_23041BE38();
  v3 = xpc_string_create((v2 + 32));

  xpc_array_append_value(v1, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C3264(double a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C32B0(float a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C3300(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C3350(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C33A0(int a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C3408(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C3458(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C34A8(uint64_t value)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(value);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(v4 + 8);
  v6 = a4();
  xpc_array_append_value(v5, v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_2303C38FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v79 = a1;
  v4 = v3;
  v70 = a3;
  v83 = *MEMORY[0x277D85DF0];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE40);
  MEMORY[0x28223BE28](v6 - 8);
  v75 = (&v68 - v7);
  v76 = sub_23041BAA8();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE28](v76);
  v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501E0);
  v10 = MEMORY[0x28223BE28](v9 - 8);
  v12 = &v68 - v11;
  v13 = *(a2 - 8);
  v14 = MEMORY[0x28223BE28](v10);
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE28](v14);
  v72 = &v68 - v17;
  v18 = MEMORY[0x28223BE28](v16);
  v20 = &v68 - v19;
  MEMORY[0x28223BE28](v18);
  v22 = &v68 - v21;
  v23 = sub_23041BA38();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE28](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v4;
  v77 = *v4;
  if (v77[2])
  {
LABEL_42:
    __break(1u);
  }

  v29 = *(v13 + 16);
  v27 = v13 + 16;
  v28 = v29;
  (v29)(v22, v79, a2);
  v30 = swift_dynamicCast();
  v31 = *(v24 + 56);
  if (v30)
  {
    v31(v12, 0, 1, v23);
    (*(v24 + 32))(v26, v12, v23);
    v32 = sub_2303E4450();
    v33 = xpc_date_create(v32);
    (*(v24 + 8))(v26, v23);
    v34 = v77;
    goto LABEL_34;
  }

  v31(v12, 1, 1, v23);
  sub_2303BA754(v12, &qword_27DB501E0);
  v35 = v79;
  (v28)(v20, v79, a2);
  v37 = v75;
  v36 = v76;
  v38 = swift_dynamicCast();
  v39 = v74;
  v40 = *(v74 + 56);
  v41 = v78;
  if (v38)
  {
    v40(v37, 0, 1, v36);
    v42 = v73;
    (*(v39 + 32))(v73, v37, v36);
    *&uuid = sub_23041BA88();
    *(&uuid + 1) = v43;
    v33 = xpc_uuid_create(&uuid);
    (*(v39 + 8))(v42, v36);
    v34 = v77;
    goto LABEL_34;
  }

  v40(v37, 1, 1, v36);
  sub_2303BA754(v37, &unk_27DB4FE40);
  (v28)(v72, v35, a2);
  v44 = swift_dynamicCast();
  v34 = v77;
  if (v44)
  {
    a2 = *(&uuid + 1);
    v45 = uuid;
    v46 = *(&uuid + 1) >> 62;
    if ((*(&uuid + 1) >> 62) <= 1)
    {
      if (!v46)
      {
        v47 = BYTE14(uuid);
        p_uuid = &uuid;
LABEL_33:
        v33 = xpc_data_create(p_uuid, v47);
        sub_2303D2DB4(v45, a2);
        goto LABEL_34;
      }

      v53 = SDWORD1(uuid) - uuid;
      if (SDWORD1(uuid) >= uuid)
      {
        v27 = sub_23041B858();
        if (!v27)
        {
LABEL_25:
          v61 = sub_23041B868();
          if (v61 >= v53)
          {
            v62 = v53;
          }

          else
          {
            v62 = v61;
          }

          if (v27)
          {
            v47 = v62;
          }

          else
          {
            v47 = 0;
          }

          p_uuid = v27;
          goto LABEL_33;
        }

        v60 = sub_23041B878();
        if (!__OFSUB__(v45, v60))
        {
          v27 += v45 - v60;
          goto LABEL_25;
        }

        goto LABEL_41;
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v46 != 2)
    {
      *(&uuid + 6) = 0;
      *&uuid = 0;
      p_uuid = &uuid;
      v47 = 0;
      goto LABEL_33;
    }

    v49 = *(uuid + 16);
    v50 = *(uuid + 24);
    v35 = *(&uuid + 1) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = sub_23041B858();
    if (v27)
    {
      v35 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v51 = sub_23041B878();
      if (__OFSUB__(v49, v51))
      {
        goto LABEL_40;
      }

      v27 += v49 - v51;
    }

    v52 = __OFSUB__(v50, v49);
    v53 = v50 - v49;
    if (!v52)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
    (v28)(v71, v35, a2);
    if (swift_dynamicCast())
    {
      v33 = uuid;
      goto LABEL_34;
    }
  }

  v75 = v28;
  v76 = v27;
  v54 = v34[3];
  v55 = v69[1];
  v56 = v34[5];
  v57 = type metadata accessor for _XPCObjectEncoder();
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = v54;
  v58[4] = v55;
  v58[5] = v56;
  v81 = v57;
  v82 = sub_2303D0368(qword_280AC80F0, type metadata accessor for _XPCObjectEncoder);
  *&uuid = v58;

  sub_23041BD18();
  if (v41)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(&uuid);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&uuid);
  v33 = v58[2];
  if (!v33)
  {
    v63 = sub_23041C348();
    swift_allocError();
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50590);
    v65[3] = a2;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v65);
    v75(boxed_opaque_existential_0Tm, v35, a2);
    *&uuid = 0;
    *(&uuid + 1) = 0xE000000000000000;

    sub_23041C288();

    *&uuid = 0xD00000000000001FLL;
    *(&uuid + 1) = 0x80000002304222A0;
    v67 = sub_23041CC18();
    MEMORY[0x231915500](v67);

    sub_23041C308();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D841A8], v63);
    swift_willThrow();
  }

  swift_unknownObjectRetain();

LABEL_34:
  v34[2] = v33;
  return swift_unknownObjectRelease();
}

void sub_2303C41B8()
{
  v1 = *v0;
  if (*(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = xpc_null_create();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2303C4200(uint64_t result)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_BOOL_create(result & 1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2303C424C()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_23041BE38();
    v3 = xpc_string_create((v2 + 32));

    *(v1 + 16) = v3;
    swift_unknownObjectRelease();
  }
}

void sub_2303C42B0(double a1)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_double_create(a1);
    swift_unknownObjectRelease();
  }
}

void sub_2303C42F8(float a1)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_double_create(a1);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2303C4344(uint64_t result)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_int64_create(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303C4390(uint64_t result)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_int64_create(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303C43DC(uint64_t result)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_int64_create(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303C4440(uint64_t result)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_uint64_create(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303C448C(uint64_t result)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_uint64_create(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303C44D8(uint64_t value)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = xpc_uint64_create(value);
    return swift_unknownObjectRelease();
  }

  return value;
}

void sub_2303C4524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *v4;
  if (*(v5 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = a4();
    swift_unknownObjectRelease();
  }
}

uint64_t XPCObjectDecoder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t XPCObjectDecoder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t XPCObjectDecoder.__allocating_init(underlyingConnection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_2303C4620(uint64_t a1)
{
  v2 = swift_allocObject();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for RemoteXPCPeerConnection();
    v5 = swift_allocObject();
    v6 = swift_slowAlloc();
    *(v5 + 80) = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    *v6 = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = v6;
    *(v5 + 24) = v4;
    *(v5 + 32) = 0;
  }

  else
  {
    type metadata accessor for SystemXPCPeerConnection();
    v5 = swift_allocObject();
    v7 = swift_slowAlloc();
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    *v7 = 0;
    *(v5 + 24) = a1;
    *(v5 + 32) = v7;
  }

  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v2 + 16) = v5;
  return v2;
}

uint64_t sub_2303C4704(uint64_t a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for RemoteXPCPeerConnection();
    v5 = swift_allocObject();
    v6 = swift_slowAlloc();
    *(v5 + 80) = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    *v6 = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = v6;
    *(v5 + 24) = v4;
    *(v5 + 32) = 0;
  }

  else
  {
    type metadata accessor for SystemXPCPeerConnection();
    v5 = swift_allocObject();
    v7 = swift_slowAlloc();
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    *v7 = 0;
    *(v5 + 24) = a1;
    *(v5 + 32) = v7;
  }

  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v1 + 16) = v5;
  return v1;
}

uint64_t XPCObjectDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);

  v5 = MEMORY[0x277D84F90];
  v6 = sub_2303D0098(MEMORY[0x277D84F90]);
  type metadata accessor for _XPCObjectDecoder();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v6;
  sub_2303D0368(qword_280AC81C0, type metadata accessor for _XPCObjectDecoder);
  swift_unknownObjectRetain();
  return sub_23041C058();
}

uint64_t XPCObjectDecoder.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2303C49A0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x231917290](*(v2 + 16)) == 0x1ED3F2070)
  {
    type metadata accessor for XPCObjectKeyedDecodingContainer();
    swift_unknownObjectRetain();

    swift_getWitnessTable();
    return sub_23041C518();
  }

  else
  {
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = a2;

    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    return swift_willThrow();
  }
}

uint64_t sub_2303C4B34@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (MEMORY[0x231917290](v3) == 0x1ED3F2020)
  {
    v8 = *(v1 + 32);
    a1[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    a1[4] = sub_2303D088C();
    v9 = swift_allocObject();
    *a1 = v9;
    v9[2] = v1;
    v9[3] = v3;
    v9[4] = v8;
    v9[5] = 0;
    swift_unknownObjectRetain();
  }

  else
  {
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF8);

    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    return swift_willThrow();
  }
}

uint64_t sub_2303C4CEC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  a1[3] = &type metadata for XPCObjectSingleValueDecodingContainer;
  a1[4] = sub_2303D0838();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  swift_unknownObjectRetain();
}

uint64_t sub_2303C4D64()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2303C4D94@<X0>(uint64_t a1@<X8>)
{

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_2303C4DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23041C5C8();
  MEMORY[0x231915500](v4);

  *a2 = 0x207865646E49;
  *(a2 + 8) = 0xE600000000000000;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_2303C4E5C(uint64_t a1)
{
  v2 = sub_2303D2CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2303C4E98(uint64_t a1)
{
  v2 = sub_2303D2CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2303C4ED4(uint64_t a1, void *a2)
{
  v9 = MEMORY[0x277D84F90];
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2303D3518;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2303D3670;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2303C0524;
  aBlock[3] = &block_descriptor_134;
  v5 = _Block_copy(aBlock);

  xpc_dictionary_apply(a2, v5);
  _Block_release(v5);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    aBlock[0] = v9;
    MEMORY[0x28223BE28](result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FED0);
    sub_2303D3584();
    v7 = sub_23041BF28();

    return v7;
  }

  return result;
}

uint64_t sub_2303C50E0(uint64_t a1, uint64_t a2, char **a3)
{
  result = sub_23041BD88();
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v8 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2304063C0(0, *(v8 + 2) + 1, 1, v8);
      *a3 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2304063C0((v10 > 1), v11 + 1, 1, v8);
      *a3 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v6;
    *(v12 + 5) = v7;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

xpc_object_t sub_2303C51A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_23041CBD8();
  v11 = sub_23041BE38();

  v12 = xpc_dictionary_get_value(a5, (v11 + 32));

  if (v12)
  {
    if (MEMORY[0x231917290](v12) != a2)
    {
      v19[3] = swift_getObjectType();
      v19[0] = v12;
      sub_23041C328();
      swift_allocError();
      v14 = v13;
      type metadata accessor for XPCObjectKeyedDecodingContainer();
      swift_unknownObjectRetain();
      swift_getWitnessTable();
      static DecodingError.typeMismatchError<A>(expecting:butFound:forKey:in:debugDescription:)(a1, v19, a3, 0, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v19[0] = a4;
    v19[1] = a5;
    v19[2] = a6;
    sub_23041C328();
    swift_allocError();
    v16 = v15;
    type metadata accessor for XPCObjectKeyedDecodingContainer();
    swift_getWitnessTable();
    static DecodingError.keyNotFoundError<A>(expecting:in:debugDescription:)(a3, 0, v16);
    swift_willThrow();
  }

  return v12;
}

xpc_object_t sub_2303C53A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t (*a12)(void), void (*a13)(uint64_t))
{
  v46 = a8;
  v37 = a9;
  v20 = sub_23041C1C8();
  v36 = *(v20 - 8);
  MEMORY[0x28223BE28](v20);
  v38 = &v32 - v21;
  v22 = *a11;
  v39 = a1;
  v23 = a1;
  v24 = a7;
  v25 = v40;
  result = sub_2303C51A0(v23, v22, a2, a3, a4, a5);
  if (!v25)
  {
    v33 = v20;
    v34 = a6;
    v35 = a2;
    v40 = 0;
    v27 = a12();
    v28 = swift_unknownObjectRelease();
    v43 = v27;
    a13(v28);
    v29 = v38;
    sub_23041C068();
    v30 = *(v24 - 8);
    if ((*(v30 + 48))(v29, 1, v24) == 1)
    {
      (*(v36 + 8))(v29, v33);
      v43 = a3;
      v44 = a4;
      v45 = a5;
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_23041C288();

      v41 = 0xD000000000000015;
      v42 = 0x80000002304224A0;
      v31 = sub_23041CC18();
      MEMORY[0x231915500](v31);

      sub_23041C328();
      swift_allocError();
      type metadata accessor for XPCObjectKeyedDecodingContainer();
      swift_getWitnessTable();
      sub_23041C2F8();

      return swift_willThrow();
    }

    else
    {
      return (*(v30 + 32))(v37, v29, v24);
    }
  }

  return result;
}

BOOL sub_2303C56A8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23041CBD8();
  v4 = sub_23041BE38();

  v5 = xpc_dictionary_get_value(a3, (v4 + 32));

  if (v5)
  {
    swift_unknownObjectRelease();
  }

  return v5 != 0;
}

BOOL sub_2303C5728(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = sub_23041C328();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE28](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE68);
  sub_2303C51A0(v12, 0x1ED3F1C10, a1, a2, a3, a4);
  if (!v4)
  {
    swift_unknownObjectRelease();
    return v4 == 0;
  }

  v20 = v4;
  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v4 == 0;
  }

  v14 = v19;
  if ((*(v19 + 88))(v11, v9) != *MEMORY[0x277D84160])
  {
    (*(v14 + 8))(v11, v9);
    goto LABEL_7;
  }

  (*(v14 + 96))(v11, v9);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0) + 48);
  v16 = sub_23041C318();
  (*(*(v16 - 8) + 8))(&v11[v15], v16);

  return v4 == 0;
}

BOOL sub_2303C5974(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_2303C51A0(MEMORY[0x277D839B0], 0x1ED3F1C60, a1, a2, a3, a4);
  if (!v5)
  {
    value = xpc_BOOL_get_value(v6);
    swift_unknownObjectRelease();
  }

  return value;
}

uint64_t sub_2303C59FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_2303C51A0(MEMORY[0x277D837D0], 0x1ED3F1E90, a1, a2, a3, a4);
  if (!v5)
  {
    v7 = v6;
    xpc_string_get_string_ptr(v6);
    xpc_string_get_length(v7);
    v4 = sub_23041BE58();
    swift_unknownObjectRelease();
  }

  return v4;
}

xpc_object_t sub_2303C5AB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = sub_2303C51A0(MEMORY[0x277D839F8], 0x1ED3F1D50, a1, a2, a3, a4);
  if (!v4)
  {
    xpc_double_get_value(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2303C5B40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = sub_2303C51A0(MEMORY[0x277D839F8], 0x1ED3F1D50, a1, a2, a3, a4);
  if (!v4)
  {
    value = xpc_double_get_value(result);
    result = swift_unknownObjectRelease();
    v7 = value;
    if (value != v7)
    {
      sub_23041C328();
      swift_allocError();
      type metadata accessor for XPCObjectKeyedDecodingContainer();
      swift_getWitnessTable();
      sub_23041C2F8();
      return swift_willThrow();
    }
  }

  return result;
}

xpc_object_t sub_2303C5CA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_2303D3470();
  result = sub_2303C53A0(MEMORY[0x277D84900], a1, a2, a3, a4, a5, MEMORY[0x277D84900], a6, &v15, v13, &XPCTypeInt64, MEMORY[0x277D86508], sub_2303D3374);
  if (!v6)
  {
    return v15;
  }

  return result;
}

xpc_object_t sub_2303C5D74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_2303D341C();
  result = sub_2303C53A0(MEMORY[0x277D84958], a1, a2, a3, a4, a5, MEMORY[0x277D84958], a6, &v15, v13, &XPCTypeInt64, MEMORY[0x277D86508], sub_2303D3374);
  if (!v6)
  {
    return v15;
  }

  return result;
}

xpc_object_t sub_2303C5E48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_2303D33C8();
  result = sub_2303C53A0(MEMORY[0x277D849A8], a1, a2, a3, a4, a5, MEMORY[0x277D849A8], a6, &v15, v13, &XPCTypeInt64, MEMORY[0x277D86508], sub_2303D3374);
  if (!v6)
  {
    return v15;
  }

  return result;
}

xpc_object_t sub_2303C5F1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v16 = a7();
  result = sub_2303C53A0(a8, a1, a2, a3, a4, a5, a8, a6, &v18, v16, &XPCTypeInt64, MEMORY[0x277D86508], sub_2303D3374);
  if (!v8)
  {
    return v18;
  }

  return result;
}

xpc_object_t sub_2303C5FF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_2303D3278();
  result = sub_2303C53A0(MEMORY[0x277D84B78], a1, a2, a3, a4, a5, MEMORY[0x277D84B78], a6, &v15, v13, &XPCTypeUInt64, MEMORY[0x277D86520], sub_2303D317C);
  if (!v6)
  {
    return v15;
  }

  return result;
}

xpc_object_t sub_2303C60C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_2303D3224();
  result = sub_2303C53A0(MEMORY[0x277D84C58], a1, a2, a3, a4, a5, MEMORY[0x277D84C58], a6, &v15, v13, &XPCTypeUInt64, MEMORY[0x277D86520], sub_2303D317C);
  if (!v6)
  {
    return v15;
  }

  return result;
}

xpc_object_t sub_2303C619C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_2303D31D0();
  result = sub_2303C53A0(MEMORY[0x277D84CC0], a1, a2, a3, a4, a5, MEMORY[0x277D84CC0], a6, &v15, v13, &XPCTypeUInt64, MEMORY[0x277D86520], sub_2303D317C);
  if (!v6)
  {
    return v15;
  }

  return result;
}

xpc_object_t sub_2303C6270(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v16 = a7();
  result = sub_2303C53A0(a8, a1, a2, a3, a4, a5, a8, a6, &v18, v16, &XPCTypeUInt64, MEMORY[0x277D86520], sub_2303D317C);
  if (!v8)
  {
    return v18;
  }

  return result;
}

void *sub_2303C6348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v55 = a5;
  v60 = a6;
  v52 = a1;
  v53 = a9;
  v15 = sub_23041BAA8();
  MEMORY[0x28223BE28](v15);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23041BA38();
  MEMORY[0x28223BE28](v18);
  if (swift_dynamicCastMetatype())
  {
    v19 = v54;
    result = sub_2303C51A0(v18, 0x1ED3F1DF0, a2, a3, a4, v55);
    if (!v19)
    {
      xpc_date_get_value(result);
      swift_unknownObjectRelease();
      sub_23041BA18();
      return swift_dynamicCast();
    }

    return result;
  }

  v50 = v17;
  v51 = a4;
  v21 = a3;
  v22 = v55;
  v23 = v60;
  if (swift_dynamicCastMetatype())
  {
    v24 = v54;
    result = sub_2303C51A0(v15, 0x1ED3F1EE0, a2, a3, v51, v22);
    if (v24)
    {
      return result;
    }

    bytes = xpc_uuid_get_bytes(result);
    result = swift_unknownObjectRelease();
    if (bytes)
    {
      sub_23041BA78();
      return swift_dynamicCast();
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v26 = a8;
  if (swift_dynamicCastMetatype())
  {
    v27 = v54;
    result = sub_2303C51A0(MEMORY[0x277CC9318], 0x1ED3F1E40, a2, v21, v51, v22);
    if (v27)
    {
      return result;
    }

    v28 = result;
    if (xpc_data_get_length(result) < 1)
    {
      swift_unknownObjectRelease();
      v56 = xmmword_23041E320;
    }

    else
    {
      result = xpc_data_get_bytes_ptr(v28);
      if (!result)
      {
        goto LABEL_25;
      }

      v29 = result;
      length = xpc_data_get_length(v28);
      v31 = sub_2303F0E10(v29, length);
      v33 = v32;
      swift_unknownObjectRelease();
      *&v56 = v31;
      *(&v56 + 1) = v33;
    }

    return swift_dynamicCast();
  }

  v49[1] = a7;
  v50 = swift_dynamicCastMetatype();
  v34 = a2;
  sub_23041CBD8();
  v35 = sub_23041BE38();

  v36 = v51;
  v37 = xpc_dictionary_get_value(v51, (v35 + 32));

  if (v50)
  {
    if (v37)
    {
      *&v56 = v37;
      return swift_dynamicCast();
    }

    *&v56 = v21;
    *(&v56 + 1) = v36;
    v57 = v22;
  }

  else
  {
    v38 = v22;
    if (v37)
    {
      v51 = a10;
      v39 = *(v21 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23041E310;
      *(inited + 56) = v23;
      *(inited + 64) = v26;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_0Tm, v34, v23);
      *&v56 = v38;

      swift_unknownObjectRetain();

      sub_23041B3F8(inited);
      v42 = v37;
      v43 = v56;
      v44 = *(v21 + 40);
      v45 = type metadata accessor for _XPCObjectDecoder();
      v46 = swift_allocObject();
      v46[2] = v42;
      v46[3] = v39;
      v46[4] = v43;
      v46[5] = v44;
      v58 = v45;
      v59 = sub_2303D0368(qword_280AC81C0, type metadata accessor for _XPCObjectDecoder);
      *&v56 = v46;

      sub_23041C058();
      return swift_unknownObjectRelease();
    }

    *&v56 = v21;
    *(&v56 + 1) = v51;
    v57 = v22;
  }

  sub_23041C328();
  swift_allocError();
  v48 = v47;
  type metadata accessor for XPCObjectKeyedDecodingContainer();
  swift_getWitnessTable();
  static DecodingError.keyNotFoundError<A>(expecting:in:debugDescription:)(v34, 0, v48);
  return swift_willThrow();
}

xpc_object_t sub_2303C6930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_2303C51A0(a7, 0x1ED3F2070, a2, a3, a4, a5);
  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 56) = a6;
    *(inited + 64) = a8;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    (*(*(a6 - 8) + 16))(boxed_opaque_existential_0Tm, a2, a6);
    swift_unknownObjectRetain();

    sub_23041B3F8(inited);
    type metadata accessor for XPCObjectKeyedDecodingContainer();
    swift_getWitnessTable();
    sub_23041C518();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303C6AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF8);
  result = sub_2303C51A0(v15, 0x1ED3F2020, a1, a2, a3, a4);
  if (!v7)
  {
    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 56) = a5;
    *(inited + 64) = a6;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 32));
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0Tm, a1, a5);
    swift_unknownObjectRetain();

    sub_23041B3F8(inited);
    v20 = a4;
    a7[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    a7[4] = sub_2303D088C();
    v21 = swift_allocObject();
    *a7 = v21;
    result = swift_unknownObjectRelease();
    v21[2] = a2;
    v21[3] = v17;
    v21[4] = v20;
    v21[5] = 0;
  }

  return result;
}

uint64_t sub_2303C6C50()
{
  v0 = type metadata accessor for _XPCObjectDecoder();
  v1 = sub_23041C328();
  swift_allocError();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
  *v3 = v0;

  sub_23041C308();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
  return swift_willThrow();
}

uint64_t sub_2303C6D40(uint64_t a1)
{
  sub_23041C328();
  swift_allocError();
  v3 = v2;
  type metadata accessor for XPCObjectKeyedDecodingContainer();
  swift_getWitnessTable();
  static DecodingError.keyNotFoundError<A>(expecting:in:debugDescription:)(a1, 0x80000002304223D0, v3);
  return swift_willThrow();
}

uint64_t sub_2303C72C8()
{
  result = sub_23041C908();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303C7318()
{
  result = sub_23041C918();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303C73C0()
{
  result = sub_23041C948();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303C7410()
{
  result = sub_23041C928();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303C7550()
{
  result = sub_23041C958();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303C75A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_2303C7718(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE68);
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v13 = a2[2];
    v7 = sub_23041C328();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v17 = sub_23041C5C8();
    MEMORY[0x231915500](v17);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = 0x207865646E49;
    *(v18 + 24) = 0xE600000000000000;
    *(v18 + 32) = v6;
    *(v18 + 40) = 0;
    v22[0] = v13;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v15 = v4;
    sub_23041C308();
    (*(*(v7 - 1) + 104))(v15, *MEMORY[0x277D84170], v7);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      a2[3] = v6 + 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v21 = sub_23041C328();
      swift_allocError();
      v20 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v10 = sub_23041C5C8();
      MEMORY[0x231915500](v10);

      *(v9 + 56) = &type metadata for CodableIndexKey;
      *(v9 + 64) = sub_2303D2CFC();
      v11 = swift_allocObject();
      *(v9 + 32) = v11;
      *(v11 + 16) = 0x207865646E49;
      *(v11 + 24) = 0xE600000000000000;
      *(v11 + 32) = v6;
      *(v11 + 40) = 0;
      sub_23041B3F8(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v20 = v4;
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v12 = sub_23041CC18();
      MEMORY[0x231915500](v12);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v21 - 8) + 104))(v20, *MEMORY[0x277D84160]);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v7;
}

void *sub_2303C7B84(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v14 = a2[2];
    v6 = sub_23041C328();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v21[1] = 0xE600000000000000;

    v18 = sub_23041C5C8();
    MEMORY[0x231915500](v18);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = 0x207865646E49;
    *(v19 + 24) = 0xE600000000000000;
    *(v19 + 32) = v5;
    *(v19 + 40) = 0;
    v21[0] = v14;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v16 = MEMORY[0x277D839B0];
    sub_23041C308();
    (*(*(v6 - 1) + 104))(v16, *MEMORY[0x277D84170], v6);
    swift_willThrow();
  }

  else
  {
    v6 = xpc_array_get_value(v4, v5);
    if (MEMORY[0x231917290]() == a1)
    {
      a2[3] = v5 + 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v21[0] = v6;
      v7 = sub_23041C328();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_23041E310;
      v23 = v5;
      swift_unknownObjectRetain();

      v11 = sub_23041C5C8();
      MEMORY[0x231915500](v11);

      *(v10 + 56) = &type metadata for CodableIndexKey;
      *(v10 + 64) = sub_2303D2CFC();
      v12 = swift_allocObject();
      *(v10 + 32) = v12;
      *(v12 + 16) = 0x207865646E49;
      *(v12 + 24) = 0xE600000000000000;
      *(v12 + 32) = v5;
      *(v12 + 40) = 0;
      sub_23041B3F8(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v9 = MEMORY[0x277D839B0];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v21, ObjectType);
      swift_getDynamicType();
      v13 = sub_23041CC18();
      MEMORY[0x231915500](v13);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v6;
}

void *sub_2303C7FD8(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v14 = a2[2];
    v6 = sub_23041C328();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v21[1] = 0xE600000000000000;

    v18 = sub_23041C5C8();
    MEMORY[0x231915500](v18);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = 0x207865646E49;
    *(v19 + 24) = 0xE600000000000000;
    *(v19 + 32) = v5;
    *(v19 + 40) = 0;
    v21[0] = v14;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v16 = MEMORY[0x277D837D0];
    sub_23041C308();
    (*(*(v6 - 1) + 104))(v16, *MEMORY[0x277D84170], v6);
    swift_willThrow();
  }

  else
  {
    v6 = xpc_array_get_value(v4, v5);
    if (MEMORY[0x231917290]() == a1)
    {
      a2[3] = v5 + 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v21[0] = v6;
      v7 = sub_23041C328();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_23041E310;
      v23 = v5;
      swift_unknownObjectRetain();

      v11 = sub_23041C5C8();
      MEMORY[0x231915500](v11);

      *(v10 + 56) = &type metadata for CodableIndexKey;
      *(v10 + 64) = sub_2303D2CFC();
      v12 = swift_allocObject();
      *(v10 + 32) = v12;
      *(v12 + 16) = 0x207865646E49;
      *(v12 + 24) = 0xE600000000000000;
      *(v12 + 32) = v5;
      *(v12 + 40) = 0;
      sub_23041B3F8(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v9 = MEMORY[0x277D837D0];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v21, ObjectType);
      swift_getDynamicType();
      v13 = sub_23041CC18();
      MEMORY[0x231915500](v13);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v6;
}

void *sub_2303C842C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v14 = a2[2];
    v6 = sub_23041C328();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v21[1] = 0xE600000000000000;

    v18 = sub_23041C5C8();
    MEMORY[0x231915500](v18);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = 0x207865646E49;
    *(v19 + 24) = 0xE600000000000000;
    *(v19 + 32) = v5;
    *(v19 + 40) = 0;
    v21[0] = v14;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v16 = MEMORY[0x277D839F8];
    sub_23041C308();
    (*(*(v6 - 1) + 104))(v16, *MEMORY[0x277D84170], v6);
    swift_willThrow();
  }

  else
  {
    v6 = xpc_array_get_value(v4, v5);
    if (MEMORY[0x231917290]() == a1)
    {
      a2[3] = v5 + 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v21[0] = v6;
      v7 = sub_23041C328();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_23041E310;
      v23 = v5;
      swift_unknownObjectRetain();

      v11 = sub_23041C5C8();
      MEMORY[0x231915500](v11);

      *(v10 + 56) = &type metadata for CodableIndexKey;
      *(v10 + 64) = sub_2303D2CFC();
      v12 = swift_allocObject();
      *(v10 + 32) = v12;
      *(v12 + 16) = 0x207865646E49;
      *(v12 + 24) = 0xE600000000000000;
      *(v12 + 32) = v5;
      *(v12 + 40) = 0;
      sub_23041B3F8(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v9 = MEMORY[0x277D839F8];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v21, ObjectType);
      swift_getDynamicType();
      v13 = sub_23041CC18();
      MEMORY[0x231915500](v13);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v6;
}

float sub_2303C8880(uint64_t a1, uint64_t *a2)
{
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v27[1] = 0xE600000000000000;
    v31 = v6;

    v20 = sub_23041C5C8();
    MEMORY[0x231915500](v20);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v21 = swift_allocObject();
    *(inited + 32) = v21;
    *(v21 + 16) = 0x207865646E49;
    *(v21 + 24) = 0xE600000000000000;
    *(v21 + 32) = v6;
    *(v21 + 40) = 0;
    v27[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v18 = MEMORY[0x277D83A90];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      v23 = *a2;
      v24 = a2[2];
      value = xpc_double_get_value(v7);
      v2 = value;
      if (value == v2)
      {
        swift_unknownObjectRelease();
        a2[3] = v6 + 1;
        return v2;
      }

      ObjectType = &type metadata for XPCObjectUnkeyedDecodingContainer;
      v29 = sub_2303D088C();
      v26 = swift_allocObject();
      v27[0] = v26;
      v26[2] = v23;
      v26[3] = v5;
      v26[4] = v24;
      v26[5] = v6;
      sub_23041C328();
      swift_allocError();

      swift_unknownObjectRetain();

      sub_23041C2E8();
    }

    else
    {
      ObjectType = swift_getObjectType();
      v27[0] = v7;
      v8 = sub_23041C328();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_23041E310;
      v30 = v6;
      swift_unknownObjectRetain();

      v12 = sub_23041C5C8();
      MEMORY[0x231915500](v12);

      *(v11 + 56) = &type metadata for CodableIndexKey;
      *(v11 + 64) = sub_2303D2CFC();
      v13 = swift_allocObject();
      *(v11 + 32) = v13;
      *(v13 + 16) = 0x207865646E49;
      *(v13 + 24) = 0xE600000000000000;
      *(v13 + 32) = v6;
      *(v13 + 40) = 0;
      sub_23041B3F8(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v10 = MEMORY[0x277D83A90];
      sub_23041C288();

      v31 = 0xD000000000000025;
      v32 = 0x80000002304221E0;
      __swift_project_boxed_opaque_existential_0(v27, ObjectType);
      swift_getDynamicType();
      v14 = sub_23041CC18();
      MEMORY[0x231915500](v14);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84160], v8);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_2303C8DA0(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v24[1] = 0xE600000000000000;

    v20 = MEMORY[0x277D83B88];
    v21 = sub_23041C5C8();
    MEMORY[0x231915500](v21);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v5;
    *(v22 + 40) = 0;
    v24[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v18 = v20;
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    return swift_willThrow();
  }

  else
  {
    v6 = xpc_array_get_value(v4, v5);
    if (MEMORY[0x231917290]() == a1)
    {
      value = xpc_int64_get_value(v6);
      swift_unknownObjectRelease();
      a2[3] = v5 + 1;
      return value;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v24[0] = v6;
      v7 = sub_23041C328();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_23041E310;
      v26 = v5;
      swift_unknownObjectRetain();

      v11 = sub_23041C5C8();
      MEMORY[0x231915500](v11);

      *(v10 + 56) = &type metadata for CodableIndexKey;
      *(v10 + 64) = sub_2303D2CFC();
      v12 = swift_allocObject();
      *(v10 + 32) = v12;
      *(v12 + 16) = 0x207865646E49;
      *(v12 + 24) = 0xE600000000000000;
      *(v12 + 32) = v5;
      *(v12 + 40) = 0;
      sub_23041B3F8(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v9 = MEMORY[0x277D83B88];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v24, ObjectType);
      swift_getDynamicType();
      v13 = sub_23041CC18();
      MEMORY[0x231915500](v13);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }
}

void *sub_2303C9214(uint64_t a1, uint64_t *a2)
{
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v8 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v19 = sub_23041C5C8();
    MEMORY[0x231915500](v19);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = 0x207865646E49;
    *(v20 + 24) = 0xE600000000000000;
    *(v20 + 32) = v6;
    *(v20 + 40) = 0;
    v22[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v8 = MEMORY[0x277D84900];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v8, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      v8 = sub_2303CD0D4(*a2, v5, a2[2], v6, v7);
      swift_unknownObjectRelease();
      if (!v2)
      {
        a2[3] = v6 + 1;
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v8 = sub_23041C328();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v12 = sub_23041C5C8();
      MEMORY[0x231915500](v12);

      *(v11 + 56) = &type metadata for CodableIndexKey;
      *(v11 + 64) = sub_2303D2CFC();
      v13 = swift_allocObject();
      *(v11 + 32) = v13;
      *(v13 + 16) = 0x207865646E49;
      *(v13 + 24) = 0xE600000000000000;
      *(v13 + 32) = v6;
      *(v13 + 40) = 0;
      sub_23041B3F8(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v10 = MEMORY[0x277D84900];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v14 = sub_23041CC18();
      MEMORY[0x231915500](v14);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v8 - 1) + 104))(v10, *MEMORY[0x277D84160], v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v8;
}

void *sub_2303C9698(uint64_t a1, uint64_t *a2)
{
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v8 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v19 = sub_23041C5C8();
    MEMORY[0x231915500](v19);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = 0x207865646E49;
    *(v20 + 24) = 0xE600000000000000;
    *(v20 + 32) = v6;
    *(v20 + 40) = 0;
    v22[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v8 = MEMORY[0x277D84958];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v8, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      v8 = sub_2303CD1D4(*a2, v5, a2[2], v6, v7);
      swift_unknownObjectRelease();
      if (!v2)
      {
        a2[3] = v6 + 1;
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v8 = sub_23041C328();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v12 = sub_23041C5C8();
      MEMORY[0x231915500](v12);

      *(v11 + 56) = &type metadata for CodableIndexKey;
      *(v11 + 64) = sub_2303D2CFC();
      v13 = swift_allocObject();
      *(v11 + 32) = v13;
      *(v13 + 16) = 0x207865646E49;
      *(v13 + 24) = 0xE600000000000000;
      *(v13 + 32) = v6;
      *(v13 + 40) = 0;
      sub_23041B3F8(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v10 = MEMORY[0x277D84958];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v14 = sub_23041CC18();
      MEMORY[0x231915500](v14);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v8 - 1) + 104))(v10, *MEMORY[0x277D84160], v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v8;
}

void *sub_2303C9B1C(uint64_t a1, uint64_t *a2)
{
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v8 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v19 = sub_23041C5C8();
    MEMORY[0x231915500](v19);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = 0x207865646E49;
    *(v20 + 24) = 0xE600000000000000;
    *(v20 + 32) = v6;
    *(v20 + 40) = 0;
    v22[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v8 = MEMORY[0x277D849A8];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v8, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      v8 = sub_2303CD2D4(*a2, v5, a2[2], v6, v7);
      swift_unknownObjectRelease();
      if (!v2)
      {
        a2[3] = v6 + 1;
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v8 = sub_23041C328();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v12 = sub_23041C5C8();
      MEMORY[0x231915500](v12);

      *(v11 + 56) = &type metadata for CodableIndexKey;
      *(v11 + 64) = sub_2303D2CFC();
      v13 = swift_allocObject();
      *(v11 + 32) = v13;
      *(v13 + 16) = 0x207865646E49;
      *(v13 + 24) = 0xE600000000000000;
      *(v13 + 32) = v6;
      *(v13 + 40) = 0;
      sub_23041B3F8(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v10 = MEMORY[0x277D849A8];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v14 = sub_23041CC18();
      MEMORY[0x231915500](v14);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v8 - 1) + 104))(v10, *MEMORY[0x277D84160], v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v8;
}

uint64_t sub_2303C9FA0(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v23[1] = 0xE600000000000000;

    v20 = sub_23041C5C8();
    MEMORY[0x231915500](v20);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v21 = swift_allocObject();
    *(inited + 32) = v21;
    *(v21 + 16) = 0x207865646E49;
    *(v21 + 24) = 0xE600000000000000;
    *(v21 + 32) = v5;
    *(v21 + 40) = 0;
    v23[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v18 = MEMORY[0x277D84A28];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    return swift_willThrow();
  }

  else
  {
    v6 = xpc_array_get_value(v4, v5);
    if (MEMORY[0x231917290]() == a1)
    {
      value = xpc_int64_get_value(v6);
      swift_unknownObjectRelease();
      a2[3] = v5 + 1;
      return value;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v23[0] = v6;
      v7 = sub_23041C328();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_23041E310;
      v25 = v5;
      swift_unknownObjectRetain();

      v11 = sub_23041C5C8();
      MEMORY[0x231915500](v11);

      *(v10 + 56) = &type metadata for CodableIndexKey;
      *(v10 + 64) = sub_2303D2CFC();
      v12 = swift_allocObject();
      *(v10 + 32) = v12;
      *(v12 + 16) = 0x207865646E49;
      *(v12 + 24) = 0xE600000000000000;
      *(v12 + 32) = v5;
      *(v12 + 40) = 0;
      sub_23041B3F8(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v9 = MEMORY[0x277D84A28];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v23, ObjectType);
      swift_getDynamicType();
      v13 = sub_23041CC18();
      MEMORY[0x231915500](v13);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2303CA40C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v23[1] = 0xE600000000000000;

    v20 = sub_23041C5C8();
    MEMORY[0x231915500](v20);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v21 = swift_allocObject();
    *(inited + 32) = v21;
    *(v21 + 16) = 0x207865646E49;
    *(v21 + 24) = 0xE600000000000000;
    *(v21 + 32) = v5;
    *(v21 + 40) = 0;
    v23[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v18 = MEMORY[0x277D83E88];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    return swift_willThrow();
  }

  else
  {
    v6 = xpc_array_get_value(v4, v5);
    if (MEMORY[0x231917290]() == a1)
    {
      value = xpc_uint64_get_value(v6);
      swift_unknownObjectRelease();
      a2[3] = v5 + 1;
      return value;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v23[0] = v6;
      v7 = sub_23041C328();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_23041E310;
      v25 = v5;
      swift_unknownObjectRetain();

      v11 = sub_23041C5C8();
      MEMORY[0x231915500](v11);

      *(v10 + 56) = &type metadata for CodableIndexKey;
      *(v10 + 64) = sub_2303D2CFC();
      v12 = swift_allocObject();
      *(v10 + 32) = v12;
      *(v12 + 16) = 0x207865646E49;
      *(v12 + 24) = 0xE600000000000000;
      *(v12 + 32) = v5;
      *(v12 + 40) = 0;
      sub_23041B3F8(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v9 = MEMORY[0x277D83E88];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v23, ObjectType);
      swift_getDynamicType();
      v13 = sub_23041CC18();
      MEMORY[0x231915500](v13);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }
}

void *sub_2303CA878(uint64_t a1, uint64_t *a2)
{
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v8 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v19 = sub_23041C5C8();
    MEMORY[0x231915500](v19);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = 0x207865646E49;
    *(v20 + 24) = 0xE600000000000000;
    *(v20 + 32) = v6;
    *(v20 + 40) = 0;
    v22[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v8 = MEMORY[0x277D84B78];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v8, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      v8 = sub_2303CD3D4(*a2, v5, a2[2], v6, v7);
      swift_unknownObjectRelease();
      if (!v2)
      {
        a2[3] = v6 + 1;
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v8 = sub_23041C328();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v12 = sub_23041C5C8();
      MEMORY[0x231915500](v12);

      *(v11 + 56) = &type metadata for CodableIndexKey;
      *(v11 + 64) = sub_2303D2CFC();
      v13 = swift_allocObject();
      *(v11 + 32) = v13;
      *(v13 + 16) = 0x207865646E49;
      *(v13 + 24) = 0xE600000000000000;
      *(v13 + 32) = v6;
      *(v13 + 40) = 0;
      sub_23041B3F8(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v10 = MEMORY[0x277D84B78];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v14 = sub_23041CC18();
      MEMORY[0x231915500](v14);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v8 - 1) + 104))(v10, *MEMORY[0x277D84160], v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v8;
}

void *sub_2303CACFC(uint64_t a1, uint64_t *a2)
{
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v8 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v19 = sub_23041C5C8();
    MEMORY[0x231915500](v19);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = 0x207865646E49;
    *(v20 + 24) = 0xE600000000000000;
    *(v20 + 32) = v6;
    *(v20 + 40) = 0;
    v22[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v8 = MEMORY[0x277D84C58];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v8, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      v8 = sub_2303CD4D4(*a2, v5, a2[2], v6, v7);
      swift_unknownObjectRelease();
      if (!v2)
      {
        a2[3] = v6 + 1;
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v8 = sub_23041C328();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v12 = sub_23041C5C8();
      MEMORY[0x231915500](v12);

      *(v11 + 56) = &type metadata for CodableIndexKey;
      *(v11 + 64) = sub_2303D2CFC();
      v13 = swift_allocObject();
      *(v11 + 32) = v13;
      *(v13 + 16) = 0x207865646E49;
      *(v13 + 24) = 0xE600000000000000;
      *(v13 + 32) = v6;
      *(v13 + 40) = 0;
      sub_23041B3F8(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v10 = MEMORY[0x277D84C58];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v14 = sub_23041CC18();
      MEMORY[0x231915500](v14);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v8 - 1) + 104))(v10, *MEMORY[0x277D84160], v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v8;
}

void *sub_2303CB180(uint64_t a1, uint64_t *a2)
{
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v8 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v19 = sub_23041C5C8();
    MEMORY[0x231915500](v19);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = 0x207865646E49;
    *(v20 + 24) = 0xE600000000000000;
    *(v20 + 32) = v6;
    *(v20 + 40) = 0;
    v22[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v8 = MEMORY[0x277D84CC0];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v8, *MEMORY[0x277D84170], v16);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      v8 = sub_2303CD5D4(*a2, v5, a2[2], v6, v7);
      swift_unknownObjectRelease();
      if (!v2)
      {
        a2[3] = v6 + 1;
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v8 = sub_23041C328();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v12 = sub_23041C5C8();
      MEMORY[0x231915500](v12);

      *(v11 + 56) = &type metadata for CodableIndexKey;
      *(v11 + 64) = sub_2303D2CFC();
      v13 = swift_allocObject();
      *(v11 + 32) = v13;
      *(v13 + 16) = 0x207865646E49;
      *(v13 + 24) = 0xE600000000000000;
      *(v13 + 32) = v6;
      *(v13 + 40) = 0;
      sub_23041B3F8(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v10 = MEMORY[0x277D84CC0];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v14 = sub_23041CC18();
      MEMORY[0x231915500](v14);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v8 - 1) + 104))(v10, *MEMORY[0x277D84160], v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v8;
}

uint64_t sub_2303CB604(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v15 = a2[2];
    v16 = sub_23041C328();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v23[1] = 0xE600000000000000;

    v20 = sub_23041C5C8();
    MEMORY[0x231915500](v20);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v21 = swift_allocObject();
    *(inited + 32) = v21;
    *(v21 + 16) = 0x207865646E49;
    *(v21 + 24) = 0xE600000000000000;
    *(v21 + 32) = v5;
    *(v21 + 40) = 0;
    v23[0] = v15;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v18 = MEMORY[0x277D84D38];
    sub_23041C308();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    return swift_willThrow();
  }

  else
  {
    v6 = xpc_array_get_value(v4, v5);
    if (MEMORY[0x231917290]() == a1)
    {
      value = xpc_uint64_get_value(v6);
      swift_unknownObjectRelease();
      a2[3] = v5 + 1;
      return value;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v23[0] = v6;
      v7 = sub_23041C328();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_23041E310;
      v25 = v5;
      swift_unknownObjectRetain();

      v11 = sub_23041C5C8();
      MEMORY[0x231915500](v11);

      *(v10 + 56) = &type metadata for CodableIndexKey;
      *(v10 + 64) = sub_2303D2CFC();
      v12 = swift_allocObject();
      *(v10 + 32) = v12;
      *(v12 + 16) = 0x207865646E49;
      *(v12 + 24) = 0xE600000000000000;
      *(v12 + 32) = v5;
      *(v12 + 40) = 0;
      sub_23041B3F8(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v9 = MEMORY[0x277D84D38];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v23, ObjectType);
      swift_getDynamicType();
      v13 = sub_23041CC18();
      MEMORY[0x231915500](v13);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }
}

void *sub_2303CBA70(uint64_t a1, void *a2)
{
  v4 = sub_23041BA38();
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v13 = a2[2];
    v7 = sub_23041C328();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v17 = sub_23041C5C8();
    MEMORY[0x231915500](v17);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = 0x207865646E49;
    *(v18 + 24) = 0xE600000000000000;
    *(v18 + 32) = v6;
    *(v18 + 40) = 0;
    v22[0] = v13;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v15 = v4;
    sub_23041C308();
    (*(*(v7 - 1) + 104))(v15, *MEMORY[0x277D84170], v7);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      a2[3] = v6 + 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v21 = sub_23041C328();
      swift_allocError();
      v20 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v10 = sub_23041C5C8();
      MEMORY[0x231915500](v10);

      *(v9 + 56) = &type metadata for CodableIndexKey;
      *(v9 + 64) = sub_2303D2CFC();
      v11 = swift_allocObject();
      *(v9 + 32) = v11;
      *(v11 + 16) = 0x207865646E49;
      *(v11 + 24) = 0xE600000000000000;
      *(v11 + 32) = v6;
      *(v11 + 40) = 0;
      sub_23041B3F8(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v20 = v4;
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v12 = sub_23041CC18();
      MEMORY[0x231915500](v12);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v21 - 8) + 104))(v20, *MEMORY[0x277D84160]);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v7;
}

void *sub_2303CBED0(uint64_t a1, void *a2)
{
  v4 = sub_23041BAA8();
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v13 = a2[2];
    v7 = sub_23041C328();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v17 = sub_23041C5C8();
    MEMORY[0x231915500](v17);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = 0x207865646E49;
    *(v18 + 24) = 0xE600000000000000;
    *(v18 + 32) = v6;
    *(v18 + 40) = 0;
    v22[0] = v13;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v15 = v4;
    sub_23041C308();
    (*(*(v7 - 1) + 104))(v15, *MEMORY[0x277D84170], v7);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      a2[3] = v6 + 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v21 = sub_23041C328();
      swift_allocError();
      v20 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v10 = sub_23041C5C8();
      MEMORY[0x231915500](v10);

      *(v9 + 56) = &type metadata for CodableIndexKey;
      *(v9 + 64) = sub_2303D2CFC();
      v11 = swift_allocObject();
      *(v9 + 32) = v11;
      *(v11 + 16) = 0x207865646E49;
      *(v11 + 24) = 0xE600000000000000;
      *(v11 + 32) = v6;
      *(v11 + 40) = 0;
      sub_23041B3F8(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v20 = v4;
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v12 = sub_23041CC18();
      MEMORY[0x231915500](v12);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v21 - 8) + 104))(v20, *MEMORY[0x277D84160]);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v7;
}

void *sub_2303CC330(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = a2[3];
  if (v5 >= xpc_array_get_count(v4))
  {
    v14 = a2[2];
    v6 = sub_23041C328();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v21[1] = 0xE600000000000000;

    v18 = sub_23041C5C8();
    MEMORY[0x231915500](v18);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v19 = swift_allocObject();
    *(inited + 32) = v19;
    *(v19 + 16) = 0x207865646E49;
    *(v19 + 24) = 0xE600000000000000;
    *(v19 + 32) = v5;
    *(v19 + 40) = 0;
    v21[0] = v14;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v16 = MEMORY[0x277CC9318];
    sub_23041C308();
    (*(*(v6 - 1) + 104))(v16, *MEMORY[0x277D84170], v6);
    swift_willThrow();
  }

  else
  {
    v6 = xpc_array_get_value(v4, v5);
    if (MEMORY[0x231917290]() == a1)
    {
      a2[3] = v5 + 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v21[0] = v6;
      v7 = sub_23041C328();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_23041E310;
      v23 = v5;
      swift_unknownObjectRetain();

      v11 = sub_23041C5C8();
      MEMORY[0x231915500](v11);

      *(v10 + 56) = &type metadata for CodableIndexKey;
      *(v10 + 64) = sub_2303D2CFC();
      v12 = swift_allocObject();
      *(v10 + 32) = v12;
      *(v12 + 16) = 0x207865646E49;
      *(v12 + 24) = 0xE600000000000000;
      *(v12 + 32) = v5;
      *(v12 + 40) = 0;
      sub_23041B3F8(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v9 = MEMORY[0x277CC9318];
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v21, ObjectType);
      swift_getDynamicType();
      v13 = sub_23041CC18();
      MEMORY[0x231915500](v13);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v6;
}

void *sub_2303CC784(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF8);
  v5 = a2[1];
  v6 = a2[3];
  if (v6 >= xpc_array_get_count(v5))
  {
    v13 = a2[2];
    v7 = sub_23041C328();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v22[1] = 0xE600000000000000;

    v17 = sub_23041C5C8();
    MEMORY[0x231915500](v17);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = 0x207865646E49;
    *(v18 + 24) = 0xE600000000000000;
    *(v18 + 32) = v6;
    *(v18 + 40) = 0;
    v22[0] = v13;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v15 = v4;
    sub_23041C308();
    (*(*(v7 - 1) + 104))(v15, *MEMORY[0x277D84170], v7);
    swift_willThrow();
  }

  else
  {
    v7 = xpc_array_get_value(v5, v6);
    if (MEMORY[0x231917290]() == a1)
    {
      a2[3] = v6 + 1;
    }

    else
    {
      ObjectType = swift_getObjectType();
      v22[0] = v7;
      v21 = sub_23041C328();
      swift_allocError();
      v20 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_23041E310;
      v24 = v6;
      swift_unknownObjectRetain();

      v10 = sub_23041C5C8();
      MEMORY[0x231915500](v10);

      *(v9 + 56) = &type metadata for CodableIndexKey;
      *(v9 + 64) = sub_2303D2CFC();
      v11 = swift_allocObject();
      *(v9 + 32) = v11;
      *(v11 + 16) = 0x207865646E49;
      *(v11 + 24) = 0xE600000000000000;
      *(v11 + 32) = v6;
      *(v11 + 40) = 0;
      sub_23041B3F8(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v20 = v4;
      sub_23041C288();

      __swift_project_boxed_opaque_existential_0(v22, ObjectType);
      swift_getDynamicType();
      v12 = sub_23041CC18();
      MEMORY[0x231915500](v12);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v21 - 8) + 104))(v20, *MEMORY[0x277D84160]);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return v7;
}

uint64_t sub_2303CCBF0(uint64_t a1, uint64_t a2, void (*a3)(void, void *, void, int64_t, xpc_object_t))
{
  v8 = v3[1];
  v9 = v3[3];
  if (v9 >= xpc_array_get_count(v8))
  {
    v20 = v3[2];
    v21 = a1;
    v22 = sub_23041C328();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v29[1] = 0xE600000000000000;

    v26 = sub_23041C5C8();
    MEMORY[0x231915500](v26);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v27 = swift_allocObject();
    *(inited + 32) = v27;
    *(v27 + 16) = 0x207865646E49;
    *(v27 + 24) = 0xE600000000000000;
    *(v27 + 32) = v9;
    *(v27 + 40) = 0;
    v29[0] = v20;
    sub_23041B3F8(inited);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v24 = v21;
    sub_23041C308();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84170], v22);
    return swift_willThrow();
  }

  else
  {
    v28 = a1;
    v10 = xpc_array_get_value(v8, v9);
    if (MEMORY[0x231917290]() == a2)
    {
      a3(*v3, v8, v3[2], v9, v10);
      result = swift_unknownObjectRelease();
      if (!v4)
      {
        v3[3] = v9 + 1;
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      v29[0] = v10;
      v11 = sub_23041C328();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_23041E310;
      v31 = v9;
      swift_unknownObjectRetain();

      v15 = sub_23041C5C8();
      MEMORY[0x231915500](v15);

      *(v14 + 56) = &type metadata for CodableIndexKey;
      *(v14 + 64) = sub_2303D2CFC();
      v16 = swift_allocObject();
      *(v14 + 32) = v16;
      *(v16 + 16) = 0x207865646E49;
      *(v16 + 24) = 0xE600000000000000;
      *(v16 + 32) = v9;
      *(v16 + 40) = 0;
      sub_23041B3F8(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
      *v13 = v28;
      sub_23041C288();

      v17 = sub_23041CC18();
      MEMORY[0x231915500](v17);

      MEMORY[0x231915500](0x756F662074756220, 0xED0000206120646ELL);
      __swift_project_boxed_opaque_existential_0(v29, ObjectType);
      swift_getDynamicType();
      v18 = sub_23041CC18();
      MEMORY[0x231915500](v18);

      MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
      sub_23041C308();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

int64_t sub_2303CD0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t xint)
{
  result = xpc_int64_get_value(xint);
  if (result != result)
  {
    v11[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    v11[4] = sub_2303D088C();
    v10 = swift_allocObject();
    v11[0] = v10;
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    sub_23041C328();
    swift_allocError();

    swift_unknownObjectRetain();

    sub_23041C2E8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return swift_willThrow();
  }

  return result;
}

int64_t sub_2303CD1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t xint)
{
  result = xpc_int64_get_value(xint);
  if (result != result)
  {
    v11[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    v11[4] = sub_2303D088C();
    v10 = swift_allocObject();
    v11[0] = v10;
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    sub_23041C328();
    swift_allocError();

    swift_unknownObjectRetain();

    sub_23041C2E8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return swift_willThrow();
  }

  return result;
}

int64_t sub_2303CD2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t xint)
{
  result = xpc_int64_get_value(xint);
  if (result != result)
  {
    v11[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    v11[4] = sub_2303D088C();
    v10 = swift_allocObject();
    v11[0] = v10;
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    sub_23041C328();
    swift_allocError();

    swift_unknownObjectRetain();

    sub_23041C2E8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2303CD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t xuint)
{
  result = xpc_uint64_get_value(xuint);
  if (result > 0xFF)
  {
    v11[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    v11[4] = sub_2303D088C();
    v10 = swift_allocObject();
    v11[0] = v10;
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    sub_23041C328();
    swift_allocError();

    swift_unknownObjectRetain();

    sub_23041C2E8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2303CD4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t xuint)
{
  result = xpc_uint64_get_value(xuint);
  if (result >> 16)
  {
    v11[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    v11[4] = sub_2303D088C();
    v10 = swift_allocObject();
    v11[0] = v10;
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    sub_23041C328();
    swift_allocError();

    swift_unknownObjectRetain();

    sub_23041C2E8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2303CD5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xpc_object_t xuint)
{
  result = xpc_uint64_get_value(xuint);
  if (HIDWORD(result))
  {
    v11[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    v11[4] = sub_2303D088C();
    v10 = swift_allocObject();
    v11[0] = v10;
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    sub_23041C328();
    swift_allocError();

    swift_unknownObjectRetain();

    sub_23041C2E8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2303CD6D4()
{
  v2 = sub_23041C328();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE28](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2303C7718(0x1ED3F1C10, v0);
  if (!v1)
  {
    swift_unknownObjectRelease();
    return v1 == 0;
  }

  v13 = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    return v1 == 0;
  }

  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x277D84160])
  {
    (*(v3 + 8))(v5, v2);
    goto LABEL_8;
  }

  result = (*(v3 + 96))(v5, v2);
  v8 = v0[3];
  v9 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0) + 48);
    v0[3] = v9;
    v11 = sub_23041C318();
    (*(*(v11 - 8) + 8))(&v5[v10], v11);

    return v1 == 0;
  }

  __break(1u);
  return result;
}

void *sub_2303CD8D0()
{
  v2 = sub_2303C7FD8(0x1ED3F1E90, v0);
  if (!v1)
  {
    v3 = v2;
    xpc_string_get_string_ptr(v2);
    xpc_string_get_length(v3);
    v0 = sub_23041BE58();
    swift_unknownObjectRelease();
  }

  return v0;
}

void *sub_2303CD960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v57 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23041BAA8();
  MEMORY[0x28223BE28](v10);
  v11 = sub_23041BA38();
  MEMORY[0x28223BE28](v11);
  if (swift_dynamicCastMetatype())
  {
    v12 = v58;
    result = sub_2303CBA70(0x1ED3F1DF0, v4);
    if (!v12)
    {
      xpc_date_get_value(result);
      swift_unknownObjectRelease();
      sub_23041BA18();
      return swift_dynamicCast();
    }

    return result;
  }

  v54 = v9;
  v53 = v7;
  v55 = a1;
  if (swift_dynamicCastMetatype())
  {
    v14 = v58;
    result = sub_2303CBED0(0x1ED3F1EE0, v4);
    if (v14)
    {
      return result;
    }

    bytes = xpc_uuid_get_bytes(result);
    result = swift_unknownObjectRelease();
    if (bytes)
    {
      sub_23041BA78();
      return swift_dynamicCast();
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (swift_dynamicCastMetatype())
  {
    v16 = v58;
    result = sub_2303CC330(0x1ED3F1E40, v4);
    if (v16)
    {
      return result;
    }

    v17 = result;
    result = xpc_data_get_bytes_ptr(result);
    if (result)
    {
      v18 = result;
      length = xpc_data_get_length(v17);
      v20 = sub_2303F0E10(v18, length);
      v22 = v21;
      swift_unknownObjectRelease();
      v59 = v20;
      v60 = v22;
      return swift_dynamicCast();
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v23 = swift_dynamicCastMetatype();
  v24 = v4[1];
  v25 = v4[3];
  if (!v23)
  {
    v27 = xpc_array_get_value(v4[1], v4[3]);
    v28 = *v4;
    v29 = *(*v4 + 24);
    v52 = v4;
    v30 = v4[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v59 = 0x207865646E49;
    v60 = 0xE600000000000000;
    v63 = v25;

    v32 = sub_23041C5C8();
    MEMORY[0x231915500](v32);

    v33 = v59;
    v34 = v60;
    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v35 = swift_allocObject();
    *(inited + 32) = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    *(v35 + 32) = v25;
    *(v35 + 40) = 0;
    v59 = v30;

    sub_23041B3F8(inited);
    v36 = v59;
    v37 = *(v28 + 40);
    v38 = type metadata accessor for _XPCObjectDecoder();
    v39 = swift_allocObject();
    v39[2] = v27;
    v39[3] = v29;
    v39[4] = v36;
    v39[5] = v37;
    v61 = v38;
    v62 = sub_2303D0368(qword_280AC81C0, type metadata accessor for _XPCObjectDecoder);
    v59 = v39;

    v40 = v54;
    v41 = v58;
    result = sub_23041C058();
    if (v41)
    {
      return result;
    }

    if (!__OFADD__(v25, 1))
    {
      v52[3] = v25 + 1;
      return (*(v53 + 32))(v57, v40, a2);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v25 >= xpc_array_get_count(v4[1]))
  {
    v42 = v4[2];
    v43 = sub_23041C328();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_23041E310;
    v59 = 0x207865646E49;
    v60 = 0xE600000000000000;
    v63 = v25;

    v47 = sub_23041C5C8();
    MEMORY[0x231915500](v47);

    v48 = v59;
    v49 = v60;
    *(v46 + 56) = &type metadata for CodableIndexKey;
    *(v46 + 64) = sub_2303D2CFC();
    v50 = swift_allocObject();
    *(v46 + 32) = v50;
    *(v50 + 16) = v48;
    *(v50 + 24) = v49;
    *(v50 + 32) = v25;
    *(v50 + 40) = 0;
    v59 = v42;
    sub_23041B3F8(v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v45 = v55;
    sub_23041C308();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84170], v43);
    return swift_willThrow();
  }

  else
  {
    v26 = xpc_array_get_value(v24, v25);
    v4[3] = v25 + 1;
    v59 = v26;
    return swift_dynamicCast();
  }
}

uint64_t sub_2303CE094(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE70);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  sub_2303CCBF0(a2, 0x1ED3F2070, sub_2303D3088);

  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v11 = *(v2 + 24);

    v9 = sub_23041C5C8();
    MEMORY[0x231915500](v9);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v10 = swift_allocObject();
    *(inited + 32) = v10;
    *(v10 + 16) = 0x207865646E49;
    *(v10 + 24) = 0xE600000000000000;
    *(v10 + 32) = v11;
    *(v10 + 40) = 0;

    sub_23041B3F8(inited);
    type metadata accessor for XPCObjectKeyedDecodingContainer();
    swift_getWitnessTable();
    return sub_23041C518();
  }

  return result;
}

void *sub_2303CE2D8@<X0>(void *a1@<X8>)
{
  result = sub_2303CC784(0x1ED3F2020, v1);
  if (!v2)
  {
    v5 = result;
    v6 = *v1;
    v7 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    v9 = v1[3];

    v10 = sub_23041C5C8();
    MEMORY[0x231915500](v10);

    *(inited + 56) = &type metadata for CodableIndexKey;
    *(inited + 64) = sub_2303D2CFC();
    v11 = swift_allocObject();
    *(inited + 32) = v11;
    *(v11 + 16) = 0x207865646E49;
    *(v11 + 24) = 0xE600000000000000;
    *(v11 + 32) = v9;
    *(v11 + 40) = 0;

    sub_23041B3F8(inited);
    a1[3] = &type metadata for XPCObjectUnkeyedDecodingContainer;
    a1[4] = sub_2303D088C();
    result = swift_allocObject();
    *a1 = result;
    result[2] = v6;
    result[3] = v5;
    result[4] = v7;
    result[5] = 0;
  }

  return result;
}

BOOL sub_2303CE4C8()
{
  v3 = sub_2303C7B84(0x1ED3F1C60, v1);
  if (!v2)
  {
    value = xpc_BOOL_get_value(v3);
    swift_unknownObjectRelease();
  }

  return value;
}

void *sub_2303CE53C()
{
  result = sub_2303C842C(0x1ED3F1D50, v0);
  if (!v1)
  {
    xpc_double_get_value(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303CE7C8()
{
  result = sub_23041C618();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303CE818()
{
  result = sub_23041C628();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303CE8C0()
{
  result = sub_23041C658();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303CE910()
{
  result = sub_23041C638();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303CEA50()
{
  result = sub_23041C668();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2303CEAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_2303CEB28()
{
  v0 = type metadata accessor for _XPCObjectDecoder();
  v1 = sub_23041C328();
  swift_allocError();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
  *v3 = v0;

  sub_23041C308();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
  return swift_willThrow();
}

int64_t sub_2303CEC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_2303D1B88(0x1ED3F1CB0, a2);
  if (!v3)
  {
    value = xpc_int64_get_value(v8);
    swift_unknownObjectRelease();
    if (value != value)
    {
      v10[3] = &type metadata for XPCObjectSingleValueDecodingContainer;
      v10[0] = a1;
      v10[1] = a2;
      v10[4] = sub_2303D0838();
      v10[2] = a3;
      sub_23041C328();
      value = swift_allocError();

      swift_unknownObjectRetain();

      sub_23041C2D8();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      swift_willThrow();
    }
  }

  return value;
}

int64_t sub_2303CED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_2303D1D48(0x1ED3F1CB0, a2);
  if (!v3)
  {
    value = xpc_int64_get_value(v8);
    swift_unknownObjectRelease();
    if (value != value)
    {
      v10[3] = &type metadata for XPCObjectSingleValueDecodingContainer;
      v10[0] = a1;
      v10[1] = a2;
      v10[4] = sub_2303D0838();
      v10[2] = a3;
      sub_23041C328();
      value = swift_allocError();

      swift_unknownObjectRetain();

      sub_23041C2D8();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      swift_willThrow();
    }
  }

  return value;
}

int64_t sub_2303CEE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_2303D1F08(0x1ED3F1CB0, a2);
  if (!v3)
  {
    value = xpc_int64_get_value(v8);
    swift_unknownObjectRelease();
    if (value != value)
    {
      v10[3] = &type metadata for XPCObjectSingleValueDecodingContainer;
      v10[0] = a1;
      v10[1] = a2;
      v10[4] = sub_2303D0838();
      v10[2] = a3;
      sub_23041C328();
      value = swift_allocError();

      swift_unknownObjectRetain();

      sub_23041C2D8();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      swift_willThrow();
    }
  }

  return value;
}

uint64_t sub_2303CEF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_2303D2448(0x1ED3F1D00, a2);
  if (!v3)
  {
    value = xpc_uint64_get_value(v8);
    swift_unknownObjectRelease();
    if (value > 0xFF)
    {
      v10[3] = &type metadata for XPCObjectSingleValueDecodingContainer;
      v10[0] = a1;
      v10[1] = a2;
      v10[4] = sub_2303D0838();
      v10[2] = a3;
      sub_23041C328();
      value = swift_allocError();

      swift_unknownObjectRetain();

      sub_23041C2D8();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      swift_willThrow();
    }
  }

  return value;
}

uint64_t sub_2303CF058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_2303D2608(0x1ED3F1D00, a2);
  if (!v3)
  {
    value = xpc_uint64_get_value(v8);
    swift_unknownObjectRelease();
    if (value >> 16)
    {
      v10[3] = &type metadata for XPCObjectSingleValueDecodingContainer;
      v10[0] = a1;
      v10[1] = a2;
      v10[4] = sub_2303D0838();
      v10[2] = a3;
      sub_23041C328();
      value = swift_allocError();

      swift_unknownObjectRetain();

      sub_23041C2D8();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      swift_willThrow();
    }
  }

  return value;
}

uint64_t sub_2303CF168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_2303D27C8(0x1ED3F1D00, a2);
  if (!v3)
  {
    value = xpc_uint64_get_value(v8);
    swift_unknownObjectRelease();
    if (HIDWORD(value))
    {
      v10[3] = &type metadata for XPCObjectSingleValueDecodingContainer;
      v10[0] = a1;
      v10[1] = a2;
      v10[4] = sub_2303D0838();
      v10[2] = a3;
      sub_23041C328();
      value = swift_allocError();

      swift_unknownObjectRetain();

      sub_23041C2D8();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      swift_willThrow();
    }
  }

  return value;
}

void *sub_2303CF278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23041BAA8();
  MEMORY[0x28223BE28](v7);
  v8 = sub_23041BA38();
  MEMORY[0x28223BE28](v8);
  if (swift_dynamicCastMetatype())
  {
    result = sub_2303D0EB8(0x1ED3F1DF0, a3);
    if (v17)
    {
      return result;
    }

    xpc_date_get_value(result);
    swift_unknownObjectRelease();
    sub_23041BA18();
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_2303D0CF8(0x1ED3F1EE0, a3);
    if (v17)
    {
      return result;
    }

    bytes = xpc_uuid_get_bytes(result);
    result = swift_unknownObjectRelease();
    if (bytes)
    {
      sub_23041BA78();
      return swift_dynamicCast();
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_2303D1078(0x1ED3F1E40, a3);
    if (!v17)
    {
      v11 = result;
      result = xpc_data_get_bytes_ptr(result);
      if (result)
      {
        v12 = result;
        length = xpc_data_get_length(v11);
        sub_2303F0E10(v12, length);
        swift_unknownObjectRelease();
        return swift_dynamicCast();
      }

      goto LABEL_18;
    }
  }

  else if (swift_dynamicCastMetatype())
  {
    swift_unknownObjectRetain();
    return swift_dynamicCast();
  }

  else
  {
    v14 = *(a2 + 24);
    v15 = *(a2 + 40);
    type metadata accessor for _XPCObjectDecoder();
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = v14;
    v16[4] = a4;
    v16[5] = v15;
    sub_2303D0368(qword_280AC81C0, type metadata accessor for _XPCObjectDecoder);

    swift_unknownObjectRetain();

    return sub_23041C058();
  }

  return result;
}

BOOL sub_2303CF648()
{
  v3 = sub_2303D12C8(0x1ED3F1C60, *(v1 + 8));
  if (!v2)
  {
    value = xpc_BOOL_get_value(v3);
    swift_unknownObjectRelease();
  }

  return value;
}

void *sub_2303CF6C0()
{
  result = sub_2303D1648(0x1ED3F1D50, *(v0 + 8));
  if (!v1)
  {
    xpc_double_get_value(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303CF934(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void), uint64_t (*a5)(void))
{
  result = a4(*a3, *(v5 + 8), *(v5 + 16));
  if (!v6)
  {
    v9 = a5();
    swift_unknownObjectRelease();
    return v9;
  }

  return result;
}

uint64_t XPCObjectContainer.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t (*XPCObjectContainer.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return sub_2303CFB3C;
}

uint64_t sub_2303CFB3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v3 = v2;

    return swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    *v3 = v2;
  }

  return result;
}

uint64_t sub_2303CFC68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  bytes[2] = *MEMORY[0x277D85DF0];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(bytes, 0, 14);
      v10 = *(a3 + 8);
      swift_unknownObjectRetain();
      v11 = xpc_data_create(bytes, 0);
      xpc_array_append_value(v10, v11);
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_2303CFF34(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v3)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2303CFF34(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  BYTE4(bytes[1]) = BYTE4(a2);
  v4 = BYTE6(a2);
  BYTE5(bytes[1]) = BYTE5(a2);
  v5 = *(a3 + 8);
  swift_unknownObjectRetain();
  v6 = xpc_data_create(bytes, v4);
  xpc_array_append_value(v5, v6);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_2303CFDFC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DF0];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_2303CFFF0(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_2303CFFF0(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_2303CFF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_23041B858();
  v8 = result;
  if (result)
  {
    result = sub_23041B878();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_23041B868();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  v12 = *(a4 + 8);
  swift_unknownObjectRetain();
  v13 = xpc_data_create(v8, v11);
  xpc_array_append_value(v12, v13);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_2303CFFF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_23041B858();
  v7 = result;
  if (result)
  {
    result = sub_23041B878();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_23041B868();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

unint64_t sub_2303D0098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE28](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE58);
    v7 = sub_23041C428();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2303BA588(v9, v5, &qword_27DB4FE50);
      result = sub_2303D73A0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23041C3C8();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_2303BA68C(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2303D0368(unint64_t *a1, void (*a2)(void))
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

uint64_t dispatch thunk of XPCObjectEncoder.__allocating_init(underlyingConnection:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

uint64_t dispatch thunk of XPCObjectDecoder.__allocating_init(underlyingConnection:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

uint64_t sub_2303D04D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2303D051C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2303D0584(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2303D05CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2303D062C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2303D0674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2303D06CC()
{
  result = qword_27DB4FDC8;
  if (!qword_27DB4FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FDC8);
  }

  return result;
}

unint64_t sub_2303D0724()
{
  result = qword_27DB4FDD0;
  if (!qword_27DB4FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FDD0);
  }

  return result;
}

unint64_t sub_2303D0778()
{
  result = qword_280AC7488[0];
  if (!qword_280AC7488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280AC7488);
  }

  return result;
}

unint64_t sub_2303D07CC()
{
  result = qword_27DB4FDE0;
  if (!qword_27DB4FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FDE0);
  }

  return result;
}

unint64_t sub_2303D0838()
{
  result = qword_280AC7978;
  if (!qword_280AC7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC7978);
  }

  return result;
}

unint64_t sub_2303D088C()
{
  result = qword_27DB4FE00;
  if (!qword_27DB4FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FE00);
  }

  return result;
}

unint64_t sub_2303D08F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE10);
    v3 = sub_23041C428();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2303BA5F0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2303D0A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE28](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE28);
    v7 = sub_23041C428();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2303BA588(v9, v5, &qword_27DB4FE20);
      result = sub_2303D74B8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for RemoteDevice.Identity();
      result = sub_2303D2D50(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2303D0BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FE18);
    v3 = sub_23041C428();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2303BA5F0(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2303D0CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23041BAA8();
  v5 = swift_unknownObjectRetain();
  if (MEMORY[0x231917290](v5) != a1)
  {
    ObjectType = swift_getObjectType();
    v11[0] = a2;
    v6 = sub_23041C328();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v8 = v4;

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v11, ObjectType);
    swift_getDynamicType();
    v9 = sub_23041CC18();
    MEMORY[0x231915500](v9);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D0EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23041BA38();
  v5 = swift_unknownObjectRetain();
  if (MEMORY[0x231917290](v5) != a1)
  {
    ObjectType = swift_getObjectType();
    v11[0] = a2;
    v6 = sub_23041C328();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v8 = v4;

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v11, ObjectType);
    swift_getDynamicType();
    v9 = sub_23041CC18();
    MEMORY[0x231915500](v9);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D1078(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277CC9318];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2303D12C8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D839B0];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D1488(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D837D0];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D1648(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D839F8];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D1808(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D83A90];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D19C8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D83B88];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D1B88(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D84900];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D1D48(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D84958];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D1F08(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D849A8];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D20C8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D84A28];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D2288(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D83E88];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D2448(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D84B78];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D2608(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D84C58];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D27C8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D84CC0];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D2988(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (MEMORY[0x231917290](a2) != a1)
  {
    ObjectType = swift_getObjectType();
    v9[0] = a2;
    v4 = sub_23041C328();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FDF0);
    *v6 = MEMORY[0x277D84D38];

    sub_23041C288();

    __swift_project_boxed_opaque_existential_0(v9, ObjectType);
    swift_getDynamicType();
    v7 = sub_23041CC18();
    MEMORY[0x231915500](v7);

    MEMORY[0x231915500](0x64616574736E6920, 0xE90000000000002ELL);
    sub_23041C308();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2303D2B48(uint64_t a1)
{
  v3 = sub_2303D1488(0x1ED3F1E90, a1);
  if (!v2)
  {
    v4 = v3;
    xpc_string_get_string_ptr(v3);
    xpc_string_get_length(v4);
    v1 = sub_23041BE58();
    swift_unknownObjectRelease();
  }

  return v1;
}

void *sub_2303D2BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2303D1808(0x1ED3F1D50, a2);
  if (!v3)
  {
    value = xpc_double_get_value(result);
    result = swift_unknownObjectRelease();
    v9 = value;
    if (value != v9)
    {
      v10[3] = &type metadata for XPCObjectSingleValueDecodingContainer;
      v10[0] = a1;
      v10[1] = a2;
      v10[4] = sub_2303D0838();
      v10[2] = a3;
      sub_23041C328();
      swift_allocError();

      swift_unknownObjectRetain();

      sub_23041C2D8();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_2303D2CFC()
{
  result = qword_27DB4FE08;
  if (!qword_27DB4FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FE08);
  }

  return result;
}

uint64_t sub_2303D2D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteDevice.Identity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2303D2DB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2303D2E08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2303D2E5C(uint64_t *a1, int a2)
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

uint64_t sub_2303D2EA4(uint64_t result, int a2, int a3)
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

uint64_t sub_2303D2EF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2303D2F30(uint64_t *a1, int a2)
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

uint64_t sub_2303D2F78(uint64_t result, int a2, int a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_2303D3050()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_2303D3088@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2303D30BC()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE70);
  return swift_dynamicCast();
}

unint64_t sub_2303D3128()
{
  result = qword_27DB4FB90;
  if (!qword_27DB4FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FB90);
  }

  return result;
}