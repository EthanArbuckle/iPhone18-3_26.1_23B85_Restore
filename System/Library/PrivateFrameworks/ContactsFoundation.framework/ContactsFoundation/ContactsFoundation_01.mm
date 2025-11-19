uint64_t sub_185A76368(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAF38, &qword_185A92740);
    v2 = sub_185A7EBD4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1859F94C0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_185A7736C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_185A7736C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_185A7736C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_185A7EAD4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_185A7736C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_185A76630(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!a1)
  {
    if (qword_1EA8CACA0 != -1)
    {
      swift_once();
    }

    v19 = sub_185A7E7D4();
    __swift_project_value_buffer(v19, qword_1EA8CAF08);
    v15 = sub_185A7E7B4();
    v16 = sub_185A7EA44();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Failed to receive response";
    goto LABEL_19;
  }

  v5 = *MEMORY[0x1E69D50C8];
  v31 = sub_185A7E914();
  sub_185A7EAF4();
  if (*(a1 + 16) && (v6 = sub_185A6B680(v34), (v7 & 1) != 0))
  {
    sub_1859F94C0(*(a1 + 56) + 32 * v6, v35);
    sub_185A6E400(v34);
    sub_185A772FC();
    if (swift_dynamicCast())
    {
      v8 = v31;
      if ([v31 BOOLValue])
      {
        if (qword_1EA8CACA0 != -1)
        {
          swift_once();
        }

        v9 = sub_185A7E7D4();
        __swift_project_value_buffer(v9, qword_1EA8CAF08);
        v10 = sub_185A7E7B4();
        v11 = sub_185A7EA24();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Captured bug report successfully";
LABEL_35:
          _os_log_impl(&dword_1859F0000, v10, v11, v13, v12, 2u);
          v29 = v12;
LABEL_36:
          MEMORY[0x1865FC480](v29, -1, -1);
        }
      }

      else
      {
        v20 = *MEMORY[0x1E69D50A8];
        v32 = sub_185A7E914();
        v33 = v21;
        sub_185A7EAF4();
        if (*(a1 + 16) && (v22 = sub_185A6B680(v34), (v23 & 1) != 0))
        {
          sub_1859F94C0(*(a1 + 56) + 32 * v22, v35);
          sub_185A6E400(v34);
          if (swift_dynamicCast())
          {
            if (qword_1EA8CACA0 != -1)
            {
              swift_once();
            }

            v24 = sub_185A7E7D4();
            __swift_project_value_buffer(v24, qword_1EA8CAF08);

            v10 = sub_185A7E7B4();
            v25 = sub_185A7EA24();

            if (!os_log_type_enabled(v10, v25))
            {

              if (!a3)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v34[0] = v27;
            *v26 = 136446210;
            v28 = sub_1859F900C(v32, v33, v34);

            *(v26 + 4) = v28;
            _os_log_impl(&dword_1859F0000, v10, v25, "Failed to capture bug for reason: %{public}s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v27);
            MEMORY[0x1865FC480](v27, -1, -1);
            v29 = v26;
            goto LABEL_36;
          }
        }

        else
        {
          sub_185A6E400(v34);
        }

        if (qword_1EA8CACA0 != -1)
        {
          swift_once();
        }

        v30 = sub_185A7E7D4();
        __swift_project_value_buffer(v30, qword_1EA8CAF08);
        v10 = sub_185A7E7B4();
        v11 = sub_185A7EA24();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Failed to capture bug for unknown reason";
          goto LABEL_35;
        }
      }

      if (!a3)
      {
LABEL_39:

        return;
      }

LABEL_38:
      a3();
      goto LABEL_39;
    }
  }

  else
  {
    sub_185A6E400(v34);
  }

  if (qword_1EA8CACA0 != -1)
  {
    swift_once();
  }

  v14 = sub_185A7E7D4();
  __swift_project_value_buffer(v14, qword_1EA8CAF08);
  v15 = sub_185A7E7B4();
  v16 = sub_185A7EA44();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Received malformed response";
LABEL_19:
    _os_log_impl(&dword_1859F0000, v15, v16, v18, v17, 2u);
    MEMORY[0x1865FC480](v17, -1, -1);
  }

LABEL_20:

  if (a3)
  {
    a3();
  }
}

uint64_t sub_185A76B84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_185A7E8D4();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

id BugCapture.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BugCapture.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BugCapture.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_185A76CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAF48, &unk_185A92750);
    v3 = sub_185A7EBD4();
    v4 = a1 + 32;

    while (1)
    {
      sub_185A73D70(v4, &v11, &qword_1EA8CADB8, &qword_185A922E8);
      v5 = v11;
      result = sub_185A6B5C4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_185A7736C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_185A76E24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAF40, &qword_185A92748);
    v3 = sub_185A7EBD4();
    v4 = a1 + 32;

    while (1)
    {
      sub_185A73D70(v4, &v13, &qword_1EA8CAF30, &qword_185A92738);
      v5 = v13;
      v6 = v14;
      result = sub_185A6B608(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_185A7736C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_185A76F54()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_185A7E8D4();
  if (*(v2 + 16))
  {
    sub_185A6B608(0x5345545F54494E55, 0xEA00000000005354);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_185A77018(uint64_t a1)
{
  v4 = *(v1 + 24);
  v17 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v15 = *(v1 + 88);
  v16 = *(v1 + 72);
  v14 = *(v1 + 104);
  v11 = *(v1 + 120);
  v10 = *(v1 + 128);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_185A745B0;

  return sub_185A75920(a1, v17, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  if (v0[14])
  {
    v7 = v0[15];
  }

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_185A771A8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v17 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v15 = *(v1 + 88);
  v16 = *(v1 + 72);
  v14 = *(v1 + 104);
  v11 = *(v1 + 120);
  v10 = *(v1 + 128);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_185A6FDEC;

  return sub_185A75920(a1, v17, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_185A772C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_185A772FC()
{
  result = qword_1EA8CAF28;
  if (!qword_1EA8CAF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CAF28);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_185A7736C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_185A7737C()
{
  v0 = sub_185A7E7D4();
  __swift_allocate_value_buffer(v0, qword_1EA8C9660);
  __swift_project_value_buffer(v0, qword_1EA8C9660);
  return sub_185A7E7C4();
}

uint64_t sub_185A77418(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x1E6969088];
      v30[4] = MEMORY[0x1E6969070];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x1E6969088]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = sub_185A7E614();
        if (v18)
        {
          v19 = sub_185A7E634();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        sub_185A778D8(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_0(v30);
        result = sub_185A7E894();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = sub_185A7E614();
        if (!v18)
        {
LABEL_25:
          v24 = sub_185A7E624();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = sub_185A7E634();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_185A6E638(a1, a2);
  v7 = sub_185A7E7E4();
  sub_185A78BD0();
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6966368], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_185A77710(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = a4;
  v9 = sub_185A7E6A4();
  v11 = v10;

  v12 = sub_185A7E914();
  v14 = v13;

  v15 = a5(v9, v11, v12, v14);
  v17 = v16;

  sub_185A6E638(v9, v11);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = sub_185A7E694();
    sub_185A7089C(v15, v17);
    v18 = v19;
  }

  return v18;
}

id CNDataEncryptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNDataEncryptor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNDataEncryptor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNDataEncryptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNDataEncryptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *sub_185A778D8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_185A78160(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_185A78218(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_185A78294(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t _s18ContactsFoundation15CNDataEncryptorC7encrypt_8keyLabel0B04DataVSgAH_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v52 = a1;
  v53 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CAF58, &unk_185A92790);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v50 - v8;
  v10 = sub_185A7E8A4();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_185A7E874();
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CACC8, &qword_185A92128);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v50 - v20;
  v22 = sub_185A7E814();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_opt_self() currentEnvironment];
  v28 = [v27 keychainFacade];

  v54 = a3;
  v29 = sub_185A7E904();
  v30 = [v28 createSymmetricKeyIfNeededWithLabel_];

  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value;
  swift_beginAccess();
  sub_185A6E68C(v30 + v31, v58);
  if (v58[3])
  {
    v32 = swift_dynamicCast();
    (*(v23 + 56))(v21, v32 ^ 1u, 1, v22);
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      (*(v23 + 32))(v26, v21, v22);
      v33 = v55;
      sub_185A7E864();
      v58[0] = v52;
      v58[1] = v53;
      v35 = v56;
      v34 = v57;
      (*(v57 + 16))(v9, v33, v56);
      (*(v34 + 56))(v9, 0, 1, v35);
      sub_185A78C28();
      sub_185A7E854();
      sub_185A6E72C(v9, &unk_1EA8CAF58, &unk_185A92790);
      v47 = v33;
      v48 = sub_185A7E884();

      (*(v50 + 8))(v13, v51);
      (*(v34 + 8))(v47, v35);
      (*(v23 + 8))(v26, v22);
      return v48;
    }
  }

  else
  {
    sub_185A6E72C(v58, &qword_1EA8CACB8, &qword_185A92120);
    (*(v23 + 56))(v21, 1, 1, v22);
  }

  sub_185A6E72C(v21, &unk_1EA8CACC8, &qword_185A92128);
  if (qword_1EA8C9658 != -1)
  {
    swift_once();
  }

  v36 = sub_185A7E7D4();
  __swift_project_value_buffer(v36, qword_1EA8C9660);

  v37 = v30;
  v38 = sub_185A7E7B4();
  v39 = sub_185A7EA44();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v58[0] = v42;
    *v40 = 136315394;
    *(v40 + 4) = sub_1859F900C(v54, a4, v58);
    *(v40 + 12) = 2112;
    v43 = *&v37[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error];
    if (v43)
    {
      v44 = v43;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = v45;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    *(v40 + 14) = v45;
    *v41 = v46;
    _os_log_impl(&dword_1859F0000, v38, v39, "Failed to create symmetric key with label %s: %@", v40, 0x16u);
    sub_185A6E72C(v41, &qword_1EA8CADC8, &unk_185A92480);
    MEMORY[0x1865FC480](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1865FC480](v42, -1, -1);
    MEMORY[0x1865FC480](v40, -1, -1);
  }

  return 0;
}

uint64_t sub_185A78160(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185A78218(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_185A7E644();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_185A7E604();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_185A7E684();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_185A78294(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_185A7E644();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_185A7E604();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s18ContactsFoundation15CNDataEncryptorC7decrypt_8keyLabel0B04DataVSgAH_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v60 = a4;
  v61 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CACC8, &qword_185A92128);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v54 - v8;
  v10 = sub_185A7E814();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_185A7E8A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v54 - v21;
  sub_185A6E5E4(a1, a2);
  sub_185A77418(a1, a2);
  v55 = v14;
  v56 = v10;
  v57 = v16;
  v58 = v11;
  v23 = *(v16 + 32);
  v59 = v15;
  v23(v22, v20, v15);
  v24 = [objc_opt_self() currentEnvironment];
  v25 = [v24 keychainFacade];

  v26 = v60;
  v27 = sub_185A7E904();
  v28 = [v25 existingSymmetricKeyWithLabel_];

  swift_unknownObjectRelease();
  v29 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value;
  swift_beginAccess();
  sub_185A6E68C(v28 + v29, v62);
  v30 = v22;
  if (v62[3])
  {
    v31 = v56;
    v32 = swift_dynamicCast();
    v33 = v58;
    (*(v58 + 56))(v9, v32 ^ 1u, 1, v31);
    v34 = (*(v33 + 48))(v9, 1, v31);
    v35 = v59;
    if (v34 != 1)
    {
      v36 = v55;
      (*(v33 + 32))(v55, v9, v31);
      v52 = sub_185A7E844();

      (*(v33 + 8))(v36, v31);
      (*(v57 + 8))(v22, v35);
      return v52;
    }
  }

  else
  {
    sub_185A6E72C(v62, &qword_1EA8CACB8, &qword_185A92120);
    (*(v58 + 56))(v9, 1, 1, v56);
    v35 = v59;
  }

  sub_185A6E72C(v9, &unk_1EA8CACC8, &qword_185A92128);
  if (qword_1EA8C9658 != -1)
  {
    swift_once();
  }

  v37 = sub_185A7E7D4();
  __swift_project_value_buffer(v37, qword_1EA8C9660);
  v38 = v26;

  v39 = v28;
  v40 = sub_185A7E7B4();
  v41 = sub_185A7EA44();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v57;
  if (v42)
  {
    v44 = v30;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v62[0] = v47;
    *v45 = 136315394;
    *(v45 + 4) = sub_1859F900C(v61, v38, v62);
    *(v45 + 12) = 2112;
    v48 = *&v39[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error];
    if (v48)
    {
      v49 = v48;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      v51 = v50;
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    *(v45 + 14) = v50;
    *v46 = v51;
    _os_log_impl(&dword_1859F0000, v40, v41, "Error retrieving encryption key with label %s from keychain: %@", v45, 0x16u);
    sub_185A6E72C(v46, &qword_1EA8CADC8, &unk_185A92480);
    MEMORY[0x1865FC480](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1865FC480](v47, -1, -1);
    MEMORY[0x1865FC480](v45, -1, -1);

    (*(v43 + 8))(v44, v35);
  }

  else
  {

    (*(v43 + 8))(v30, v35);
  }

  return 0;
}

unint64_t sub_185A78BD0()
{
  result = qword_1EA8CAF50;
  if (!qword_1EA8CAF50)
  {
    sub_185A7E7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CAF50);
  }

  return result;
}

unint64_t sub_185A78C28()
{
  result = qword_1EA8C9648;
  if (!qword_1EA8C9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8C9648);
  }

  return result;
}

uint64_t sub_185A78C70()
{
  v0 = sub_185A7E7D4();
  __swift_allocate_value_buffer(v0, qword_1EA8C9600);
  __swift_project_value_buffer(v0, qword_1EA8C9600);
  return sub_185A7E7C4();
}

void __swiftcall CNRoundRobinScheduler.init()(CNRoundRobinScheduler *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void __swiftcall CNRoundRobinScheduler.init(schedulers:)(CNRoundRobinScheduler *__return_ptr retstr, Swift::OpaquePointer schedulers)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAF68, &qword_185A927A0);
  v3 = sub_185A7E974();

  [v2 initWithSchedulers_];
}

id CNRoundRobinScheduler.init(schedulers:)(unint64_t a1)
{
  v2 = v1;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_185A7EB64();
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  result = sub_185A7EBA4();
  if (result)
  {
    v10 = sub_185A7EBA4();
    if (!v10)
    {
LABEL_16:

      v8 = MEMORY[0x1E69E7CC0];
LABEL_10:
      *&v2[OBJC_IVAR___CNRoundRobinScheduler_schedulers] = v8;
      v11.receiver = v2;
      v11.super_class = CNRoundRobinScheduler;
      return objc_msgSendSuper2(&v11, sel_init);
    }

    v4 = v10;
    v12 = MEMORY[0x1E69E7CC0];
    sub_185A7EB64();
    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_4:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1865FB090](v5, a1);
        }

        else
        {
          v6 = *(a1 + 8 * v5 + 32);
          swift_unknownObjectRetain();
        }

        ++v5;
        [objc_allocWithZone(CNBlockCountingSchedulerDecorator) initWithScheduler_];
        swift_unknownObjectRelease();
        sub_185A7EB44();
        v7 = *(v12 + 16);
        sub_185A7EB74();
        sub_185A7EB84();
        sub_185A7EB54();
      }

      while (v4 != v5);

      v8 = v12;
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

NSObject *sub_185A79054()
{
  v2 = *(v0 + OBJC_IVAR___CNRoundRobinScheduler_schedulers);
  v3 = (v2 >> 62);
  if (v2 >> 62)
  {
    goto LABEL_43;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_44;
  }

LABEL_3:
  v1 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_34;
  }

  while (1)
  {
    v5 = MEMORY[0x1865FB090](0, v2);
LABEL_6:
    v6 = v5;
    v20 = v3;
    if (v4 != 1)
    {
      v8 = 1;
      while (1)
      {
        if (v1)
        {
          v9 = MEMORY[0x1865FB090](v8, v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          if (v8 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v9 = *(v2 + 8 * v8 + 32);
        }

        v3 = v9;
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v11 = [v9 pendingBlockCount];
        if (v11 < [v6 pendingBlockCount])
        {

          v6 = v3;
          ++v8;
          if (v10 == v4)
          {
            goto LABEL_8;
          }
        }

        else
        {

          ++v8;
          if (v10 == v4)
          {
            goto LABEL_7;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_7:
    v3 = v6;
LABEL_8:
    if (v20)
    {
      v7 = sub_185A7EBA4();
      if (!v7)
      {
LABEL_32:
        v4 = -1;
        goto LABEL_33;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_32;
      }
    }

    v4 = 0;
    if (v1)
    {
      break;
    }

    while (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) != v4)
    {
      if (*(v2 + 32 + 8 * v4) == v3)
      {
        goto LABEL_33;
      }

      if (v7 == ++v4)
      {
        goto LABEL_32;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    v4 = sub_185A7EBA4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_44:
    __break(1u);
  }

  while (1)
  {
    v12 = MEMORY[0x1865FB090](v4, v2);
    swift_unknownObjectRelease();
    if (v12 == v3)
    {
      break;
    }

    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_39;
    }

    ++v4;
    if (v13 == v7)
    {
      goto LABEL_32;
    }
  }

LABEL_33:
  if (qword_1EA8C95F0 != -1)
  {
    goto LABEL_47;
  }

LABEL_34:
  v14 = sub_185A7E7D4();
  __swift_project_value_buffer(v14, qword_1EA8C9600);
  v15 = v3;
  v16 = sub_185A7E7B4();
  v17 = sub_185A7EA34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v4;
    *(v18 + 12) = 2048;
    *(v18 + 14) = [v15 pendingBlockCount];

    _os_log_impl(&dword_1859F0000, v16, v17, "Selected scheduler at index %ld with %ld pending blocks", v18, 0x16u);
    MEMORY[0x1865FC480](v18, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  return v15;
}

uint64_t CNRoundRobinScheduler.perform(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_185A79054();
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_185A6E8A4;
  v7[3] = &block_descriptor_2;
  v5 = _Block_copy(v7);

  [v4 performBlock:v5];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CNRoundRobinScheduler.perform(_:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185A79054();
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_185A6E8A4;
  v9[3] = &block_descriptor_3_1;
  v7 = _Block_copy(v9);

  [v6 performBlock:v7 qualityOfService:a3];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

id CNRoundRobinScheduler.performCancelableBlock(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_185A79054();
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185A6E9C4;
  v8[3] = &block_descriptor_6_0;
  v5 = _Block_copy(v8);

  v6 = [v4 performCancelableBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
  return v6;
}

id CNRoundRobinScheduler.performCancelableBlock(_:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185A79054();
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_185A6E9C4;
  v10[3] = &block_descriptor_9_0;
  v7 = _Block_copy(v10);

  v8 = [v6 performCancelableBlock:v7 qualityOfService:a3];
  _Block_release(v7);
  swift_unknownObjectRelease();
  return v8;
}

id CNRoundRobinScheduler.afterDelay(_:perform:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_185A79054();
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_185A6E8A4;
  v10[3] = &block_descriptor_12_0;
  v7 = _Block_copy(v10);

  v8 = [v6 afterDelay:v7 performBlock:a3];
  _Block_release(v7);
  swift_unknownObjectRelease();
  return v8;
}

id CNRoundRobinScheduler.afterDelay(_:perform:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_185A79054();
  v12[4] = a1;
  v12[5] = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_185A6E8A4;
  v12[3] = &block_descriptor_15;
  v9 = _Block_copy(v12);

  v10 = [v8 afterDelay:v9 performBlock:a3 qualityOfService:a4];
  _Block_release(v9);
  swift_unknownObjectRelease();
  return v10;
}

void CNRoundRobinScheduler.timestamp.getter()
{
  v1 = *(v0 + OBJC_IVAR___CNRoundRobinScheduler_schedulers);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 < 0)
  {
    v4 = *(v0 + OBJC_IVAR___CNRoundRobinScheduler_schedulers);
  }

  if (!sub_185A7EBA4())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v2 = MEMORY[0x1865FB090](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_6:
    v3 = v2;
    [v2 timestamp];

    return;
  }

  __break(1u);
}

unint64_t type metadata accessor for CNRoundRobinScheduler()
{
  result = qword_1EA8CAF80;
  if (!qword_1EA8CAF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CAF80);
  }

  return result;
}

void __LoadManagedConfiguration_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __LoadPrivacyAccounting_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/PrivacyAccounting.framework/PrivacyAccounting (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __LoadCrashReporterSupport_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __LoadAccounts_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/Accounts.framework/Accounts (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void sIsDirectoryByStat_block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a2 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1(&dword_1859F0000, v3, v4, "Error checking whether %{public}@ is a directory; unexpected behavior may follow: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __LoadCoreEmoji_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CoreEmoji.framework/CoreEmoji (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __LoadCoreText_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/CoreText.framework/CoreText (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __LoadFamilyCircle_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/FamilyCircle.framework/FamilyCircle (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __CNGetICUCollatorVersions_block_invoke_cold_1(int *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3[0] = 67109120;
  v3[1] = v1;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error opening root collator to retrieve version number, code=%d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __LoadMobileKeyBag_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __LoadIntlUtilities_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/IntlUtilities.framework/IntlUtilities (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __CNObserverCancelableCompletionHandler_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1859F0000, a2, OS_LOG_TYPE_ERROR, "Result: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __CNObserverCancelableCompletionHandler_block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1859F0000, a2, OS_LOG_TYPE_ERROR, "Error : %{error}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __LoadIntlPreferences_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v2[0] = 67109120;
  v2[1] = v0;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/IntlPreferences.framework/IntlPreferences (%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}