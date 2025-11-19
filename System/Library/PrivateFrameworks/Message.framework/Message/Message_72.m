unint64_t sub_1B0C2D788()
{
  result = qword_1EB6E58C8;
  if (!qword_1EB6E58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58C8);
  }

  return result;
}

unint64_t sub_1B0C2D7E0()
{
  result = qword_1EB6DCF10;
  if (!qword_1EB6DCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF10);
  }

  return result;
}

unint64_t sub_1B0C2D838()
{
  result = qword_1EB6DCF18;
  if (!qword_1EB6DCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCF18);
  }

  return result;
}

uint64_t sub_1B0C2D8A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 64);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return 0x454C42414E45;
    }

    else if (v3 == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      v6 = v0[6];
      v5 = v0[7];
      v7 = v0[4];
      v8 = v0[5];
      v10 = v0[2];
      v9 = v0[3];
      if (v2 | v1 | v5 | v6 | v8 | v7 | v9 | v10)
      {
        if (v5 | v2 | v6 | v8 | v7 | v9 | v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = v1 == 1;
        }

        if (v11)
        {
          return 0x534C545452415453;
        }

        else
        {
          return 0x53534552504D4F43;
        }
      }

      else
      {
        return 0x494C494241504143;
      }
    }
  }

  else if (*(v0 + 64))
  {
    if (v3 == 1)
    {
      MEMORY[0x1B2726E80](v1, v2);
      return 0x2048545541;
    }

    else
    {
      return 17481;
    }
  }

  else
  {
    return 0x4E49474F4CLL;
  }
}

uint64_t sub_1B0C2D9FC(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B0C2DC74(v7, v9) & 1;
}

unint64_t sub_1B0C2DA5C()
{
  result = qword_1EB6DCD70;
  if (!qword_1EB6DCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCD70);
  }

  return result;
}

uint64_t sub_1B0C2DAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_1B0C2DB54(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) - a2 != HIDWORD(a5) - a5)
  {
    return 0;
  }

  v7 = HIDWORD(a3);
  v8 = HIDWORD(a6);
  if (a3 == a6 && WORD2(a3) == WORD2(a6) && BYTE6(a3) == BYTE6(a6) && a1 == a4)
  {
    return 1;
  }

  v10 = a2;
  v12 = BYTE6(a3);
  v14 = a5;
  v15 = BYTE6(a6);
  swift_beginAccess();
  v16 = *(a1 + 24);
  swift_beginAccess();
  return memcmp((v16 + (v12 | (v7 << 8)) + v10), (*(a4 + 24) + (v15 | (v8 << 8)) + v14), v6 - v10) == 0;
}

uint64_t sub_1B0C2DC74(uint64_t a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      v17 = *(a1 + 40);
      v16 = *(a1 + 48);
      v18 = *(a1 + 56);
      if (v8 == 4)
      {
        v32[0] = v3;
        v32[1] = v4;
        v32[2] = v5;
        v32[3] = v6;
        v32[4] = v7;
        v32[5] = v17;
        v32[6] = v16;
        v32[7] = v18;
        if (a2[4].i8[0] == 4)
        {
          v19 = a2[1];
          v31[0] = *a2;
          v31[1] = v19;
          v20 = a2[3];
          v31[2] = a2[2];
          v31[3] = v20;
          v21 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v32, v31);
          return v21 & 1;
        }

        goto LABEL_47;
      }

      v27 = v5 | v4;
      v28 = v7 | v17 | v16;
      if (!(v27 | v3 | v6 | v28 | v18))
      {
        if (a2[4].i8[0] == 5)
        {
          v29 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3]));
          if (!*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)))
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (v3 != 1 || v27 | v6 | v28 | v18)
      {
        if (a2[4].i8[0] != 5 || a2->i64[0] != 2)
        {
          goto LABEL_47;
        }
      }

      else if (a2[4].i8[0] != 5 || a2->i64[0] != 1)
      {
        goto LABEL_47;
      }

      v30 = vorrq_s8(a2[2], a2[3]);
      if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1])
      {
LABEL_47:
        v21 = 0;
        return v21 & 1;
      }

LABEL_45:
      v21 = 1;
      return v21 & 1;
    }

    if (a2[4].i8[0] != 3)
    {
      goto LABEL_47;
    }

    v25 = a2->i64[0];

    return sub_1B044DA4C(v3, v25);
  }

  else
  {
    if (*(a1 + 64))
    {
      if (v8 != 1)
      {
        if (a2[4].i8[0] == 2)
        {
          v26 = a2[1].i64[0];
          if (sub_1B045202C(v4, a2->i64[1]) & 1) != 0 && (sub_1B0C2DAB0(v5, v26))
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (a2[4].i8[0] != 1)
      {
        goto LABEL_47;
      }

      v9 = a2[1].i64[0];
      v10 = a2[1].i64[1];
      v11 = a2[2].u8[6];
      v12 = a2[2].u16[2];
      v13 = a2[2].u32[0];
      if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_47;
      }

      if (v5)
      {
        if (v9)
        {

          v15 = sub_1B0C2DB54(v14, v6, v7 & 0xFFFFFFFFFFFFFFLL, v9, v10, (v13 | ((v12 | (v11 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);

          if (v15)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (v9)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a2[4].i8[0])
    {
      goto LABEL_47;
    }

    v22 = a2[1].i64[0];
    v23 = a2[1].i64[1];
    if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_47;
    }

    if (v5 == v22 && v6 == v23)
    {
      goto LABEL_45;
    }

    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C2DF8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 65))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 64);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C2DFD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C2E02C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_1B0C2E07C()
{
  result = qword_1EB6E58D0;
  if (!qword_1EB6E58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E58D0);
  }

  return result;
}

void *Timer.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a1;
  return result;
}

void *Timer.init(queue:)(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = a1;
  return v1;
}

uint64_t Timer.deinit()
{
  if (*(v0 + 16))
  {

    sub_1B0E44448();
  }

  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45A98();
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t Timer.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_1B0E44448();
  }

  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45A98();
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t Timer.cancelPreviousAndAsync(after:closure:)(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a3;
  v4 = sub_1B0E44208();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B0E443F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1B0E443D8();
  sub_1B0E443E8();
  v17 = *(v10 + 8);
  v17(v13, v9);
  *v8 = 100;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E7F38], v4);
  Timer.cancelPreviousAndAsync(at:leeway:closure:)(v16, v8, a2, v19);
  (*(v5 + 8))(v8, v4);
  return (v17)(v16, v9);
}

uint64_t Timer.cancelPreviousAndAsync(at:leeway:closure:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v44 = a4;
  v50 = a1;
  v51 = a2;
  v6 = sub_1B0E44208();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E45A38();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B0E44238();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = sub_1B0E44288();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1B0E44468();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v5[5];
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v16, v19);
  v23 = v22;
  v24 = sub_1B0E44488();
  result = (*(v17 + 8))(v21, v16);
  if (v24)
  {
    Timer.cancel()();
    v26 = v5[4];
    sub_1B0E44278();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v29 = v44;
    v28[4] = v43;
    v28[5] = v29;
    aBlock[4] = sub_1B041ED44;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_28;
    _Block_copy(aBlock);
    v52 = MEMORY[0x1E69E7CC0];
    sub_1B039E46C(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);

    v43 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    v44 = v6;
    sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B0E460A8();
    v30 = sub_1B0E44458();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_1B0E44428();

    sub_1B0421E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B039E46C(&qword_1EB6DAA70, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AA0, &qword_1B0EDC030);
    sub_1B03CFB8C(&qword_1EB6DAFA0, &qword_1EB6E5AA0, &qword_1B0EDC030);
    v34 = v45;
    v35 = v47;
    sub_1B0E460A8();
    v36 = sub_1B0E45A48();
    (*(v46 + 8))(v34, v35);
    ObjectType = swift_getObjectType();
    sub_1B0E45A68();
    v39 = v48;
    v38 = v49;
    v40 = v44;
    (*(v49 + 104))(v48, *MEMORY[0x1E69E7F40], v44);
    MEMORY[0x1B2727D90](v50, v39, v51, ObjectType);
    (*(v38 + 8))(v39, v40);
    sub_1B0E45AA8();
    v41 = v5[2];
    v5[2] = v33;

    v42 = v5[3];
    v5[3] = v36;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Timer.cancel()()
{
  v1 = v0;
  v2 = sub_1B0E44468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[5];
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1B0E44488();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (v1[2])
    {
      v10 = v1[2];

      sub_1B0E44448();

      v11 = v1[2];
      v12 = 1;
    }

    else
    {
      v12 = v1[3] != 0;
    }

    v1[2] = 0;

    if (v1[3])
    {
      v13 = v1[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1B0E45A98();
      swift_unknownObjectRelease();
      v14 = v1[3];
    }

    v1[3] = 0;
    swift_unknownObjectRelease();
    if (v12)
    {
      ++v1[4];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B0C2EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1B0E44238();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B0E44288();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v22[1] = qword_1EB6DCDB8;
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  aBlock[4] = sub_1B0C31550;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_12_0;
  v20 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1B0E44258();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B041E574(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B0E460A8();
  MEMORY[0x1B2727B00](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_1B0C2EEF8(int a1, sec_protocol_metadata_t metadata, NSObject *a3, uint64_t a4, uint64_t a5)
{
  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(metadata);
  negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(metadata);
  if (sec_protocol_metadata_get_server_name(metadata))
  {
    v11 = sub_1B0E44D88();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sec_trust_copy_ref(a3);
  sub_1B041E7E8(negotiated_tls_protocol_version | (negotiated_tls_ciphersuite << 16), v11, v13, v14, a4, a5);
}

uint64_t sub_1B0C2EFC0(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = sub_1B0E44468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB6DCDB8;
  *v13 = qword_1EB6DCDB8;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = sub_1B0E44488();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_1B0BD8208(*(v4 + qword_1EB737B90), *(v4 + qword_1EB737B90 + 8), v4 + qword_1EB737B88);
        if (v17)
        {
          sub_1B0C2F268(a1, v17, v24, a3, a4);
          return swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      if (*(v4 + qword_1EB737B80) == 2)
      {
        v18 = sub_1B0BD8208(*(v4 + qword_1EB737B90), *(v4 + qword_1EB737B90 + 8), v4 + qword_1EB737B88);
        if (v18)
        {
          v19 = *(v18 + 16);
          v20 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          v21 = v19;
          v22 = [v20 initWithBool_];
          v23 = sub_1B0E44AC8();
          [v21 setAccountProperty:v22 forKey:v23];
          swift_unknownObjectRelease();
        }
      }

      v17 = 1;
    }

    return a3(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B0C2F268(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v109 = a5;
  v108 = a4;
  v105 = a3;
  v106 = a1;
  v107 = _s6LoggerVMa_0();
  v103 = *(v107 - 8);
  v6 = *(v103 + 64);
  v7 = MEMORY[0x1EEE9AC00](v107);
  v104 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v100 = &v100 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v101 = (&v100 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v100 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v102 = &v100 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v100 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v100 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v100 - v23;
  v24 = sub_1B0E44468();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EB6DCDB8;
  *v28 = qword_1EB6DCDB8;
  (*(v25 + 104))(v28, *MEMORY[0x1E69E8020], v24);
  v30 = v29;
  LOBYTE(v29) = sub_1B0E44488();
  (*(v25 + 8))(v28, v24);
  if (v29)
  {
    v31 = v111;
    sub_1B041EC54(v110 + qword_1EB737B88, v111, _s6LoggerVMa_0);
    v32 = a2;
    v33 = *(a2 + 16);
    v34 = sub_1B0BD7FDC();

    if (v34)
    {
      sub_1B041EC54(v31, v22, _s6LoggerVMa_0);
      sub_1B041EC54(v31, v19, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v35 = sub_1B0E43988();
      v36 = sub_1B0E458E8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v112[0] = v110;
        *v37 = 68158210;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        v38 = v107;
        v39 = v19[*(v107 + 20)];
        sub_1B038D6F0(v19, _s6LoggerVMa_0);
        *(v37 + 10) = v39;
        *(v37 + 11) = 2082;
        v40 = *&v22[*(v38 + 20) + 4];
        sub_1B038D6F0(v22, _s6LoggerVMa_0);
        v41 = ConnectionID.debugDescription.getter(v40);
        v43 = sub_1B0399D64(v41, v42, v112);

        *(v37 + 13) = v43;
        _os_log_impl(&dword_1B0389000, v35, v36, "[%.*hhx-%{public}s] Another certificate has already been trusted. Failing on certificate change.", v37, 0x15u);
        v44 = v110;
        __swift_destroy_boxed_opaque_existential_0(v110);
        MEMORY[0x1B272C230](v44, -1, -1);
        v45 = v37;
LABEL_13:
        MEMORY[0x1B272C230](v45, -1, -1);

LABEL_19:
        v108(0);
        sub_1B038D6F0(v31, _s6LoggerVMa_0);
        return;
      }

      sub_1B038D6F0(v19, _s6LoggerVMa_0);

      v61 = v22;
      goto LABEL_18;
    }

    v46 = *(a2 + 16);
    v47 = sub_1B0BD80D4();

    if ((v47 & 1) == 0)
    {
      v62 = v101;
      sub_1B041EC54(v31, v101, _s6LoggerVMa_0);
      v63 = v100;
      sub_1B041EC54(v31, v100, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v35 = sub_1B0E43988();
      v64 = sub_1B0E458E8();
      if (os_log_type_enabled(v35, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v112[0] = v66;
        *v65 = 68158210;
        *(v65 + 4) = 2;
        *(v65 + 8) = 256;
        v67 = v107;
        v68 = *(v63 + *(v107 + 20));
        sub_1B038D6F0(v63, _s6LoggerVMa_0);
        *(v65 + 10) = v68;
        *(v65 + 11) = 2082;
        v69 = *(v62 + *(v67 + 20) + 4);
        sub_1B038D6F0(v62, _s6LoggerVMa_0);
        v70 = ConnectionID.debugDescription.getter(v69);
        v72 = sub_1B0399D64(v70, v71, v112);

        *(v65 + 13) = v72;
        _os_log_impl(&dword_1B0389000, v35, v64, "[%.*hhx-%{public}s] User (previously) denied untrusted certificate(s).", v65, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x1B272C230](v66, -1, -1);
        v45 = v65;
        goto LABEL_13;
      }

      sub_1B038D6F0(v63, _s6LoggerVMa_0);

      v61 = v62;
LABEL_18:
      sub_1B038D6F0(v61, _s6LoggerVMa_0);
      goto LABEL_19;
    }

    v48 = v102;
    sub_1B041EC54(v31, v102, _s6LoggerVMa_0);
    sub_1B041EC54(v31, v14, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_unknownObjectRetain_n();
    v49 = sub_1B0E43988();
    v50 = sub_1B0E45908();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v48;
      v52 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v112[0] = v101;
      *v52 = 68158466;
      *(v52 + 4) = 2;
      *(v52 + 8) = 256;
      v53 = v107;
      v54 = v14[*(v107 + 20)];
      LODWORD(v100) = v50;
      sub_1B038D6F0(v14, _s6LoggerVMa_0);
      *(v52 + 10) = v54;
      *(v52 + 11) = 2082;
      v55 = *(v51 + *(v53 + 20) + 4);
      sub_1B038D6F0(v51, _s6LoggerVMa_0);
      v56 = ConnectionID.debugDescription.getter(v55);
      v58 = sub_1B0399D64(v56, v57, v112);

      *(v52 + 13) = v58;
      *(v52 + 21) = 1024;
      v59 = *(v32 + 16);
      LOBYTE(v58) = sub_1B0BD80D4();
      swift_unknownObjectRelease();

      *(v52 + 23) = v58 & 1;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0389000, v49, v100, "[%.*hhx-%{public}s] [Prompt] Prompting user about untrusted certificate(s) (allowTrust: %{BOOL}d).", v52, 0x1Bu);
      v60 = v101;
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x1B272C230](v60, -1, -1);
      MEMORY[0x1B272C230](v52, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1B038D6F0(v14, _s6LoggerVMa_0);

      swift_unknownObjectRelease();
      sub_1B038D6F0(v48, _s6LoggerVMa_0);
    }

    v73 = v32;
    v74 = v110;
    v75 = *(*v110 + 136);
    v102 = sub_1B0BEAC64();
    v107 = v76;
    v77 = *(v73 + 16);
    v78 = sub_1B0BD80D4();

    v79 = v104;
    sub_1B041EC54(v111, v104, _s6LoggerVMa_0);
    v80 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v81 = (v6 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    sub_1B041ECBC(v79, v82 + v80);
    v83 = (v82 + v81);
    v84 = v105;
    *v83 = v73;
    v83[1] = v84;
    v85 = (v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8));
    v86 = v109;
    *v85 = v108;
    v85[1] = v86;
    v87 = *(v74 + v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59C8, &qword_1B0ED9EB8);
    if (v78)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC1E70;
      strcpy(v112, "showContinue");
      BYTE5(v112[1]) = 0;
      HIWORD(v112[1]) = -5120;
      swift_unknownObjectRetain();

      sub_1B0E461E8();
      v89 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(inited + 96) = sub_1B0BD84D8(0, &qword_1EB6DA5B0, 0x1E696AD98);
      *(inited + 72) = v89;
      sub_1B0C30F90(inited);
      v91 = v90;
      swift_setDeallocating();
      sub_1B0398EFC(inited + 32, &qword_1EB6E1960, &qword_1B0E9A0C0);
    }

    else
    {
      v92 = swift_initStackObject();
      *(v92 + 16) = xmmword_1B0EC3500;
      strcpy(v112, "showContinue");
      BYTE5(v112[1]) = 0;
      HIWORD(v112[1]) = -5120;
      swift_unknownObjectRetain();

      sub_1B0E461E8();
      v93 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v94 = sub_1B0BD84D8(0, &qword_1EB6DA5B0, 0x1E696AD98);
      *(v92 + 96) = v94;
      *(v92 + 72) = v93;
      v112[0] = 0xD000000000000015;
      v112[1] = 0x80000001B0F2D590;
      sub_1B0E461E8();
      v95 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v92 + 168) = v94;
      *(v92 + 144) = v95;
      sub_1B0C30F90(v92);
      v91 = v96;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
      swift_arrayDestroy();
    }

    v97 = swift_allocObject();
    *(v97 + 16) = sub_1B0C316E4;
    *(v97 + 24) = v82;
    v98 = v106;
    v99 = v106;

    CertUITrustManager.showPrompt(hostname:service:trust:options:_:)(v102, v107, 0xD000000000000016, 0x80000001B0F2D570, v98, v91, sub_1B0C31794, v97);

    sub_1B038D6F0(v111, _s6LoggerVMa_0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B0C2FED8(unsigned __int8 a1, uint64_t a2, __SecTrust *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v62 = a2;
  v63 = a7;
  v71 = a5;
  v72 = a6;
  v70 = a3;
  v8 = a1;
  v9 = sub_1B0E44238();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B0E44288();
  v65 = *(v67 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = _s6LoggerVMa_0();
  v15 = *(v60 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v60);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v64 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - v20;
  v22 = sub_1B0E43BC8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 >= 2)
  {
    v64 = v14;
    if (qword_1EB6DCDB0 != -1)
    {
      swift_once();
    }

    v61 = qword_1EB6DCDB8;
    (*(v23 + 16))(&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v22);
    sub_1B041EC54(a4, v21, _s6LoggerVMa_0);
    v48 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v49 = (v24 + *(v15 + 80) + v48) & ~*(v15 + 80);
    v50 = swift_allocObject();
    v51 = v70;
    *(v50 + 16) = v63;
    *(v50 + 24) = v51;
    (*(v23 + 32))(v50 + v48, v25, v22);
    sub_1B041ECBC(v21, v50 + v49);
    v52 = (v50 + ((v16 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
    v53 = v72;
    *v52 = v71;
    v52[1] = v53;
    v78 = sub_1B0C31560;
    v79 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1B038C908;
    v77 = &block_descriptor_24_0;
    v54 = _Block_copy(&aBlock);

    v55 = v51;

    v56 = v64;
    sub_1B0E44258();
    v73 = MEMORY[0x1E69E7CC0];
    sub_1B041E574(&qword_1EB6DEE50, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
    v57 = v66;
    v58 = v69;
    sub_1B0E460A8();
    MEMORY[0x1B2727B00](0, v56, v57, v54);
    _Block_release(v54);
    (*(v68 + 8))(v57, v58);
    (*(v65 + 8))(v56, v67);
  }

  else
  {
    if (qword_1EB6DCDB0 != -1)
    {
      swift_once();
    }

    v26 = qword_1EB6DCDB8;
    sub_1B041EC54(a4, v21, _s6LoggerVMa_0);
    v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v28 = swift_allocObject();
    v29 = v71;
    v30 = a4;
    v31 = v72;
    *(v28 + 16) = v71;
    *(v28 + 24) = v31;
    sub_1B041ECBC(v21, v28 + v27);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1B0C31660;
    *(v32 + 24) = v28;
    v78 = sub_1B042FD28;
    v79 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1B042FC94;
    v77 = &block_descriptor_33;
    v33 = _Block_copy(&aBlock);

    LODWORD(v26) = SecTrustEvaluateAsyncWithError(v70, v26, v33);
    _Block_release(v33);

    v35 = v64;
    if (v26)
    {
      sub_1B041EC54(v30, v64, _s6LoggerVMa_0);
      v36 = v61;
      sub_1B041EC54(v30, v61, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v37 = sub_1B0E43988();
      v38 = sub_1B0E458E8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock = v40;
        *v39 = 68158210;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v41 = v60;
        v42 = v36;
        v43 = *(v36 + *(v60 + 20));
        sub_1B038D6F0(v42, _s6LoggerVMa_0);
        *(v39 + 10) = v43;
        *(v39 + 11) = 2082;
        v44 = *(v35 + *(v41 + 20) + 4);
        sub_1B038D6F0(v35, _s6LoggerVMa_0);
        v45 = ConnectionID.debugDescription.getter(v44);
        v47 = sub_1B0399D64(v45, v46, &aBlock);

        *(v39 + 13) = v47;
        _os_log_impl(&dword_1B0389000, v37, v38, "[%.*hhx-%{public}s] SecTrustEvaluateAsyncWithError() failed.", v39, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x1B272C230](v40, -1, -1);
        MEMORY[0x1B272C230](v39, -1, -1);
      }

      else
      {
        sub_1B038D6F0(v36, _s6LoggerVMa_0);

        sub_1B038D6F0(v35, _s6LoggerVMa_0);
      }

      return v29(5);
    }
  }

  return result;
}

uint64_t sub_1B0C30704(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t), uint64_t a6)
{
  v46[1] = a6;
  v47 = a5;
  v46[0] = _s6LoggerVMa_0();
  v8 = *(*(v46[0] - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v46[0]);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v46 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v46 - v18;
  v20 = a2;
  v21 = sub_1B0BEAC64();
  v23 = CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(a2, v21, v22, 0xD000000000000016, 0x80000001B0F2D570);

  if (v23 != 1)
  {
    sub_1B041EC54(a4, v14, _s6LoggerVMa_0);
    sub_1B041EC54(a4, v11, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v35 = sub_1B0E43988();
    v36 = sub_1B0E45908();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 68158466;
      *(v37 + 4) = 2;
      *(v37 + 8) = 256;
      v39 = v46[0];
      v40 = v11[*(v46[0] + 20)];
      sub_1B038D6F0(v11, _s6LoggerVMa_0);
      *(v37 + 10) = v40;
      *(v37 + 11) = 2082;
      v41 = *&v14[*(v39 + 20) + 4];
      sub_1B038D6F0(v14, _s6LoggerVMa_0);
      v42 = ConnectionID.debugDescription.getter(v41);
      v44 = sub_1B0399D64(v42, v43, &v48);

      *(v37 + 13) = v44;
      *(v37 + 21) = 1024;
      *(v37 + 23) = v23;
      _os_log_impl(&dword_1B0389000, v35, v36, "[%.*hhx-%{public}s] Got %u from CertUI.", v37, 0x1Bu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1B272C230](v38, -1, -1);
      MEMORY[0x1B272C230](v37, -1, -1);

      if (v23 >= 8)
      {
LABEL_7:
        v34 = 5;
        return v47(v34);
      }
    }

    else
    {
      sub_1B038D6F0(v11, _s6LoggerVMa_0);

      sub_1B038D6F0(v14, _s6LoggerVMa_0);
      if (v23 >= 8)
      {
        goto LABEL_7;
      }
    }

    v34 = 0x504030201050505uLL >> (8 * v23);
    return v47(v34);
  }

  sub_1B041EC54(a4, v19, _s6LoggerVMa_0);
  sub_1B041EC54(a4, v17, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v24 = sub_1B0E43988();
  v25 = sub_1B0E458C8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v48 = v27;
    *v26 = 68158466;
    *(v26 + 4) = 2;
    *(v26 + 8) = 256;
    v28 = v46[0];
    v29 = v17[*(v46[0] + 20)];
    sub_1B038D6F0(v17, _s6LoggerVMa_0);
    *(v26 + 10) = v29;
    *(v26 + 11) = 2082;
    v30 = *&v19[*(v28 + 20) + 4];
    sub_1B038D6F0(v19, _s6LoggerVMa_0);
    v31 = ConnectionID.debugDescription.getter(v30);
    v33 = sub_1B0399D64(v31, v32, &v48);

    *(v26 + 13) = v33;
    *(v26 + 21) = 1024;
    *(v26 + 23) = 1;
    _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx-%{public}s] Got %u from CertUI.", v26, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B272C230](v27, -1, -1);
    MEMORY[0x1B272C230](v26, -1, -1);
  }

  else
  {
    sub_1B038D6F0(v17, _s6LoggerVMa_0);

    sub_1B038D6F0(v19, _s6LoggerVMa_0);
  }

  v34 = 0;
  return v47(v34);
}

uint64_t sub_1B0C30C24()
{
  v10 = sub_1B0E459C8();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B0E45988();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1B0E44288();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1B0BD84D8(0, &qword_1EB6DEED0, 0x1E69E9610);
  sub_1B0E44258();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B041E574(&qword_1EB6DEEE0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B03CFB8C(&qword_1EB6DEEF0, &qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B0E460A8();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1B0E45A08();
  qword_1EB6E58E0 = result;
  return result;
}

unint64_t sub_1B0C30E84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B0E461B8();

  return sub_1B0C30EC8(a1, v5);
}

unint64_t sub_1B0C30EC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B0C3180C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B27282E0](v9, a1);
      sub_1B070B2CC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1B0C30F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E59D0, &unk_1B0ED9EC0);
    v3 = sub_1B0E466A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B0C3179C(v4, v13);
      v5 = sub_1B0C30E84(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
      v7 = v3[6] + 40 * v5;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      sub_1B0392800(&v15, v3[7] + 32 * v5);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_9;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_1B0C310AC(char a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = _s6LoggerVMa_0();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  if (a1)
  {
    v17 = 0;
LABEL_7:
    a3(v17);
    return;
  }

  if (!a2)
  {
    v17 = 1;
    goto LABEL_7;
  }

  v18 = v14;
  sub_1B041EC54(a5, &v35 - v15, _s6LoggerVMa_0);
  sub_1B041EC54(a5, v13, _s6LoggerVMa_0);
  v19 = a2;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v20 = v19;
  v21 = sub_1B0E43988();
  v22 = sub_1B0E458E8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = v22;
    v24 = v23;
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v24 = 68158466;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    v25 = v13[*(v18 + 20)];
    sub_1B038D6F0(v13, _s6LoggerVMa_0);
    *(v24 + 10) = v25;
    *(v24 + 11) = 2082;
    v26 = *&v16[*(v18 + 20) + 4];
    sub_1B038D6F0(v16, _s6LoggerVMa_0);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_1B0399D64(v27, v28, &v38);

    *(v24 + 13) = v29;
    *(v24 + 21) = 2112;
    type metadata accessor for CFError(0);
    sub_1B041E574(&unk_1EB6E59B8, type metadata accessor for CFError);
    swift_allocError();
    *v30 = v20;
    v31 = v20;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 23) = v32;
    v33 = v35;
    *v35 = v32;
    _os_log_impl(&dword_1B0389000, v21, v36, "[%.*hhx-%{public}s] SecTrustEvaluateAsyncWithError() completed with error: %@", v24, 0x1Fu);
    sub_1B0398EFC(v33, &unk_1EB6E2630, &qword_1B0E97970);
    MEMORY[0x1B272C230](v33, -1, -1);
    v34 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B272C230](v34, -1, -1);
    MEMORY[0x1B272C230](v24, -1, -1);
  }

  else
  {
    sub_1B038D6F0(v13, _s6LoggerVMa_0);

    sub_1B038D6F0(v16, _s6LoggerVMa_0);
  }

  a3(1);
}

uint64_t sub_1B0C3140C()
{
  v0 = sub_1B0E43F78();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_1B0E43F68();
  v4 = sub_1B0E43F58();
  sec_protocol_options_add_tls_application_protocol(v4, "imap");
  swift_unknownObjectRelease();
  v5 = sub_1B0E43F58();
  sec_protocol_options_set_min_tls_protocol_version(v5, tls_protocol_version_TLSv10);
  swift_unknownObjectRelease();
  v6 = sub_1B0E43F58();
  v9[4] = sub_1B0C30BF8;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B041E604;
  v9[3] = &block_descriptor_29;
  v7 = _Block_copy(v9);
  if (qword_1EB6E5388 != -1)
  {
    swift_once();
  }

  sec_protocol_options_set_verify_block(v6, v7, qword_1EB6E58E0);
  _Block_release(v7);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B0C31560()
{
  v1 = *(sub_1B0E43BC8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s6LoggerVMa_0() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_1B0C30704(v9, v10, v0 + v2, v0 + v5, v7, v8);
}

void sub_1B0C31660(uint64_t a1, char a2, void *a3)
{
  v6 = *(_s6LoggerVMa_0() - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_1B0C310AC(a2, a3, v7, v8, v9);
}

uint64_t sub_1B0C316E4(char a1)
{
  v3 = *(_s6LoggerVMa_0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  return sub_1B0BD71CC(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_1B0C3179C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1960, &qword_1B0E9A0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection20UnauthenticatedStateO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B0C31890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 25))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0C318E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1B0C3194C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) & 3 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    *(result + 24) = -64;
  }

  return result;
}

uint64_t sub_1B0C3198C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1B0E460B8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1B0C381DC(v3, *(a1 + 36), 0, a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v5;
}

uint64_t sub_1B0C31A28(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B0C0C114(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0C31B14()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v4 = *(v1 + 3) >> 1, v4 < v2))
  {
    v1 = sub_1B0C0C114(isUniquelyReferenced_nonNull_native, v2, 1, v1);
    v4 = *(v1 + 3) >> 1;
  }

  v5 = *(v1 + 2);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if (v6 < 1)
  {
    __break(1u);
LABEL_21:
    v14 = *(v1 + 2);
    sub_1B0E466E8();
    if ((v25 & 1) == 0)
    {
      v15 = v24;
LABEL_24:
      v16 = *(v1 + 3);
      v17 = v16 >> 1;
      if ((v16 >> 1) < v14 + 1)
      {
        v19 = v1;
        v20 = v15;
        v21 = sub_1B0C0C114((v16 > 1), v14 + 1, 1, v19);
        v15 = v20;
        v1 = v21;
        v17 = *(v21 + 3) >> 1;
      }

      if (v14 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v14;
      }

      do
      {
        if (v18 == v14)
        {
          *(v1 + 2) = v18;
          v14 = v18;
          goto LABEL_24;
        }

        v1[v14++ + 32] = v15;
        sub_1B0E466E8();
        v15 = v22;
      }

      while ((v23 & 1) == 0);

      *(v1 + 2) = v14;
      goto LABEL_19;
    }

LABEL_18:

LABEL_19:
    *v0 = v1;
    return result;
  }

  result = sub_1B0E466E8();
  if (v27)
  {
    v8 = 0;
LABEL_12:
    if (!v8)
    {
LABEL_17:
      if (v8 != v6)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = v26;
    v10 = ~v5 + v4;
    while (1)
    {
      v1[v5 + 32 + v8] = v9;
      if (v10 == v8)
      {
        break;
      }

      result = sub_1B0E466E8();
      v9 = v26;
      ++v8;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    v8 = v6;
  }

  v11 = *(v1 + 2);
  v12 = __OFADD__(v11, v8);
  v13 = v11 + v8;
  if (!v12)
  {
    *(v1 + 2) = v13;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C31CE8(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = sub_1B0C0C114(result, v12, 1, v7);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v3 && v4 && v4 > v3 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v3, v15);
    v3 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v3;
  v22 = v3 + 1;
  v23 = v24;
  while (1)
  {
    v25 = *(v7 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  result = sub_1B0C0C114((v25 > 1), v21 + 1, 1, v7);
  v7 = result;
  v26 = *(result + 24) >> 1;
  if (v21 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v21 + 32;
  while (1)
  {
    *(v7 + v27) = v23;
    if (v22 == v4)
    {
      break;
    }

    v28 = *v22++;
    v23 = v28;
    if (++v27 - v26 == 32)
    {
      v21 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v27 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_1B0C31E98(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55B0, &qword_1B0ED3120);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  sub_1B039E3F8(&qword_1EB6E5798, &qword_1EB6E55B0, &qword_1B0ED3120);
  result = sub_1B0E44F28();
  v10 = *v1;
  v11 = *(*v1 + 2);
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v16 = *(v10 + 3) >> 1, v16 < v12))
    {
      if (v11 <= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 = v11;
      }

      v10 = sub_1B0C0C114(isUniquelyReferenced_nonNull_native, v17, 1, v10);
      v16 = *(v10 + 3) >> 1;
    }

    v18 = v16 - *(v10 + 2);
    (*(v5 + 16))(v8, a1, v4);
    v19 = sub_1B0E44F18();
    result = (*(v5 + 8))(a1, v4);
    if (v19 >= v13)
    {
      if (v19 >= 1)
      {
        v20 = *(v10 + 2);
        v21 = __OFADD__(v20, v19);
        v22 = v20 + v19;
        if (v21)
        {
          __break(1u);
LABEL_20:
          v24 = v22;
          goto LABEL_21;
        }

        *(v10 + 2) = v22;
      }

      result = v29;
      if (v19 != v18)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  v23 = *(result + 16);
  if (v30 == v23)
  {
LABEL_13:

    *v2 = v10;
    return result;
  }

  if (v30 >= v23)
  {
    goto LABEL_33;
  }

  v24 = *(v10 + 2);
  v19 = result + 32;
  LOBYTE(v4) = *(result + 32 + v30);
  a1 = v30 + 1;
  while (1)
  {
    v25 = *(v10 + 3);
    v22 = v25 >> 1;
    if ((v25 >> 1) < v24 + 1)
    {
      break;
    }

    if (v24 < v22)
    {
      goto LABEL_24;
    }

LABEL_21:
    *(v10 + 2) = v24;
  }

  v28 = result;
  v10 = sub_1B0C0C114((v25 > 1), v24 + 1, 1, v10);
  result = v28;
  v22 = *(v10 + 3) >> 1;
  if (v24 >= v22)
  {
    goto LABEL_21;
  }

LABEL_24:
  v26 = v24 + 32;
  while (1)
  {
    v10[v26] = v4;
    v27 = *(result + 16);
    if (a1 == v27)
    {
      *(v10 + 2) = v26 - 31;
      goto LABEL_13;
    }

    if (a1 >= v27)
    {
      break;
    }

    LOBYTE(v4) = *(v19 + a1++);
    if (++v26 - v22 == 32)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0C32170@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v9 = *v3;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v10 = *(v5 + 24) >> 1, v10 < v7))
    {
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

      result = sub_1B0C0C114(result, v11, 1, v5);
      v5 = result;
      v10 = *(result + 24) >> 1;
    }

    v12 = *(v5 + 16);
    v13 = v10 - v12;
    if (!a2 || v10 == v12)
    {
      a3 = &v4[a2];
      if (!v4)
      {
        a3 = 0;
      }

      if (a2 <= 0)
      {
        v14 = 0;
LABEL_22:
        if (v14 != v13 || v4 == 0 || v4 == a3)
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (a2 >= v13)
      {
        v14 = v10 - v12;
      }

      else
      {
        v14 = a2;
      }

      result = memcpy((v5 + v12 + 32), v4, v14);
      if (v13 >= a2)
      {
        a3 = &v4[a2];
        if (v14 >= 1)
        {
          v15 = *(v5 + 16);
          v16 = __OFADD__(v15, v14);
          v17 = v15 + v14;
          if (v16)
          {
            __break(1u);
            return result;
          }

          *(v5 + 16) = v17;
        }

        v4 += v14;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_33:
  v20 = *(v5 + 16);
  v23 = *v4;
  v21 = v4 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v5 + 24);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_37;
    }

LABEL_34:
    *(v5 + 16) = v20;
  }

  v28 = v5;
  v29 = a3;
  result = sub_1B0C0C114((v24 > 1), v20 + 1, 1, v28);
  a3 = v29;
  v5 = result;
  v25 = *(result + 24) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_34;
  }

LABEL_37:
  v26 = v20 + 32;
  while (1)
  {
    *(v5 + v26) = v22;
    if (v21 == a3)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_34;
    }
  }

  *(v5 + 16) = v26 - 31;
LABEL_30:
  *v3 = v5;
  return result;
}

uint64_t sub_1B0C32320(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B0C0C69C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0C32414(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *v7;
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v9;
      v15 = v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 32;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B0C324D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v2;
  v14[10] = *(a1 + 160);
  v15 = *(a1 + 176);
  v3 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v3;
  v4 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v4;
  v5 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v5;
  v6 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v6;
  v7 = *(a2 + 144);
  v16[8] = *(a2 + 128);
  v16[9] = v7;
  v16[10] = *(a2 + 160);
  v17 = *(a2 + 176);
  v8 = *(a2 + 80);
  v16[4] = *(a2 + 64);
  v16[5] = v8;
  v9 = *(a2 + 112);
  v16[6] = *(a2 + 96);
  v16[7] = v9;
  v10 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v10;
  v11 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v11;
  sub_1B0C37730(v14, v16);
  return v12 & 1;
}

uint64_t sub_1B0C3259C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v80 = a3;
  v84 = a1;
  v8 = type metadata accessor for UnauthenticatedState();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Authenticator();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = _s6LoggerVMa_0();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v77 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v77 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v77 - v25;
  v82 = a5;
  if (a4)
  {
    v78 = v8;
    sub_1B0433BE8(a5, &v77 - v25, _s6LoggerVMa_0);
    sub_1B0433BE8(a5, v24, _s6LoggerVMa_0);
    sub_1B04420D8(a2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v27 = v84;
    sub_1B0BD6700(v84, v90);
    sub_1B04420D8(a2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = sub_1B0E43988();
    v29 = sub_1B0E458E8();
    sub_1B0BD2F90(v27);
    sub_1B0447F00(a2);

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v79 = a2;
      v31 = v30;
      v32 = swift_slowAlloc();
      *&v90[0] = v32;
      *v31 = 68158722;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v33 = v24[*(v14 + 20)];
      sub_1B04479C4(v24, _s6LoggerVMa_0);
      *(v31 + 10) = v33;
      *(v31 + 11) = 2082;
      v34 = *&v26[*(v14 + 20) + 4];
      sub_1B04479C4(v26, _s6LoggerVMa_0);
      v35 = ConnectionID.debugDescription.getter(v34);
      v37 = sub_1B0399D64(v35, v36, v90);

      *(v31 + 13) = v37;
      *(v31 + 21) = 2082;
      v38 = v84;
      v39 = sub_1B0C0E5E8();
      v41 = sub_1B0399D64(v39, v40, v90);

      *(v31 + 23) = v41;
      *(v31 + 31) = 2082;
      v42 = ResponseText.debugDescription.getter(v79, v80, a4);
      v44 = sub_1B0399D64(v42, v43, v90);

      *(v31 + 33) = v44;
      _os_log_impl(&dword_1B0389000, v28, v29, "[%.*hhx-%{public}s] Authentication failed for mechanism '%{public}s': %{public}s", v31, 0x29u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v32, -1, -1);
      a2 = v79;
      MEMORY[0x1B272C230](v31, -1, -1);
      sub_1B0447F00(a2);

      v45 = v38;
      goto LABEL_9;
    }

    sub_1B04479C4(v24, _s6LoggerVMa_0);
    sub_1B0447F00(a2);

    sub_1B04479C4(v26, _s6LoggerVMa_0);
  }

  else
  {
    v79 = a2;
    sub_1B0433BE8(a5, v21, _s6LoggerVMa_0);
    sub_1B0433BE8(a5, v18, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v46 = v84;
    sub_1B0BD6700(v84, v90);
    v47 = sub_1B0E43988();
    v48 = sub_1B0E458E8();
    sub_1B0BD2F90(v46);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v78 = v8;
      v51 = v50;
      *&v90[0] = v50;
      *v49 = 68158466;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      v52 = v18[*(v14 + 20)];
      sub_1B04479C4(v18, _s6LoggerVMa_0);
      *(v49 + 10) = v52;
      *(v49 + 11) = 2082;
      v53 = *&v21[*(v14 + 20) + 4];
      sub_1B04479C4(v21, _s6LoggerVMa_0);
      v54 = ConnectionID.debugDescription.getter(v53);
      v56 = sub_1B0399D64(v54, v55, v90);

      *(v49 + 13) = v56;
      *(v49 + 21) = 2082;
      v57 = v84;
      v58 = sub_1B0C0E5E8();
      v60 = sub_1B0399D64(v58, v59, v90);

      *(v49 + 23) = v60;
      _os_log_impl(&dword_1B0389000, v47, v48, "[%.*hhx-%{public}s] Authentication failed for mechanism '%{public}s'.", v49, 0x1Fu);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v51, -1, -1);
      MEMORY[0x1B272C230](v49, -1, -1);

      a2 = v79;
      v45 = v57;
      goto LABEL_9;
    }

    sub_1B04479C4(v18, _s6LoggerVMa_0);

    sub_1B04479C4(v21, _s6LoggerVMa_0);
    a2 = v79;
  }

  v45 = v84;
LABEL_9:
  v61 = v81;
  sub_1B0433BE8(v85, v81, type metadata accessor for UnauthenticatedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v63 = v82;
  if (EnumCaseMultiPayload != 2)
  {
    return sub_1B04479C4(v61, type metadata accessor for UnauthenticatedState);
  }

  sub_1B04479C4(v85, type metadata accessor for UnauthenticatedState);
  v64 = v61;
  v65 = v83;
  sub_1B0C3A6F0(v64, v83, type metadata accessor for Authenticator);
  v66 = sub_1B0BD4C68(v45, a2, v80, a4, v63);
  v67 = *v65;
  MEMORY[0x1EEE9AC00](v66);
  *(&v77 - 2) = v65;
  sub_1B0BD4E3C(sub_1B0BD13C4, v68, v86);
  v91 = v88;
  v92 = v89;
  v90[1] = v86[1];
  v90[2] = v87;
  v90[0] = v86[0];
  if ((~*(&v87 + 1) & 0x3000000000000000) != 0 || (*(&v91 + 1) & 0x1000000000000000) == 0)
  {
    sub_1B0398EFC(v90, &qword_1EB6E53D0, &unk_1B0ECFB80);
    sub_1B0C3A6F0(v83, v85, type metadata accessor for Authenticator);
  }

  else
  {
    v69 = v83;
    v70 = sub_1B0BD3F38();
    v72 = v71;
    v74 = v73;
    sub_1B04479C4(v69, type metadata accessor for Authenticator);
    v75 = v85;
    *v85 = v70;
    v75[1] = v72;
    v75[2] = v74;
    *(v75 + 24) = 0;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0C32E28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa_0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v80 - v11;
  sub_1B04479C4(v3, type metadata accessor for UnauthenticatedState);
  if (!a1)
  {
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    return 0xFFFFFFFF00000000;
  }

  sub_1B0433BE8(a2, v12, _s6LoggerVMa_0);
  sub_1B0433BE8(a2, v10, _s6LoggerVMa_0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v13 = sub_1B0E43988();
  v14 = sub_1B0E458D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v81 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v80 = a1;
    v18 = v17;
    *&v94 = v17;
    *v16 = 68158210;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v19 = v10[*(v6 + 20)];
    sub_1B04479C4(v10, _s6LoggerVMa_0);
    *(v16 + 10) = v19;
    *(v16 + 11) = 2082;
    v20 = *&v12[*(v6 + 20) + 4];
    sub_1B04479C4(v12, _s6LoggerVMa_0);
    v21 = ConnectionID.debugDescription.getter(v20);
    v23 = sub_1B0399D64(v21, v22, &v94);

    *(v16 + 13) = v23;
    _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx-%{public}s] Received capabilities from server", v16, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v24 = v18;
    a1 = v80;
    MEMORY[0x1B272C230](v24, -1, -1);
    v25 = v16;
    v3 = v81;
    MEMORY[0x1B272C230](v25, -1, -1);
  }

  else
  {
    sub_1B04479C4(v10, _s6LoggerVMa_0);

    sub_1B04479C4(v12, _s6LoggerVMa_0);
  }

  v27 = Capability.id.unsafeMutableAddressor();
  v28 = v27[1];
  v29 = v27[2];
  v30 = *(v27 + 24);
  *&v94 = *v27;
  *(&v94 + 1) = v28;
  *&v95 = v29;
  BYTE8(v95) = v30;
  MEMORY[0x1EEE9AC00](v27);
  *(&v80 - 2) = &v94;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = sub_1B0C32414(sub_1B0C10BD0, (&v80 - 4), a1);

  if (v31)
  {
    *v3 = a1;
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    if (sub_1B0C336B8(a1))
    {
      v32 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v33 = *v32;
      v34 = v32[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = static Capability.compression(_:)(v33, v34);
      v37 = v36;
      v39 = v38;
      v41 = v40;

      *&v94 = v35;
      *(&v94 + 1) = v37;
      *&v95 = v39;
      BYTE8(v95) = v41 & 1;
      MEMORY[0x1EEE9AC00](v42);
      *(&v80 - 2) = &v94;
      LOBYTE(v35) = sub_1B0C32414(sub_1B0C10BD0, (&v80 - 4), a1);

      if ((v35 & 1) == 0)
      {
        v43 = Capability.applePushService.unsafeMutableAddressor();
        v44 = v43[1];
        v45 = v43[2];
        v46 = *(v43 + 24);
        *&v94 = *v43;
        *(&v94 + 1) = v44;
        *&v95 = v45;
        BYTE8(v95) = v46;
        MEMORY[0x1EEE9AC00](v43);
        *(&v80 - 2) = &v94;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = sub_1B0C32414(sub_1B0C10BD0, (&v80 - 4), a1);

        if (v47)
        {
          v48 = ServerID.empty.unsafeMutableAddressor();
          v50 = v48[1];
          v49 = v48[2];
          v83 = *v48;
          v84 = v50;
          v85 = v49;
          v51 = v48[6];
          v53 = v48[3];
          v52 = v48[4];
          v88 = v48[5];
          v89 = v51;
          v86 = v53;
          v87 = v52;
          v54 = v48[10];
          v56 = v48[7];
          v55 = v48[8];
          v92 = v48[9];
          v93 = v54;
          v90 = v56;
          v91 = v55;
          v101 = v48[7];
          v102 = v48[8];
          v103 = v48[9];
          v104 = v48[10];
          v97 = v48[3];
          v57 = v97;
          v98 = v48[4];
          v99 = v48[5];
          v100 = v48[6];
          v94 = *v48;
          v95 = v48[1];
          v96 = v48[2];
          *v3 = a1;
          *(v3 + 56) = v57;
          v58 = v95;
          *(v3 + 40) = v96;
          v59 = v94;
          *(v3 + 24) = v58;
          *(v3 + 8) = v59;
          v60 = v98;
          v61 = v99;
          *(v3 + 104) = v100;
          *(v3 + 88) = v61;
          *(v3 + 72) = v60;
          v62 = v103;
          *(v3 + 168) = v104;
          *(v3 + 152) = v62;
          v63 = v101;
          *(v3 + 136) = v102;
          *(v3 + 120) = v63;
          type metadata accessor for UnauthenticatedState();
          swift_storeEnumTagMultiPayload();
          sub_1B039F420(&v83, v82);
          return 0x8000000000000003;
        }
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v64 = ServerID.empty.unsafeMutableAddressor();
    v66 = v64[1];
    v65 = v64[2];
    v83 = *v64;
    v84 = v66;
    v85 = v65;
    v67 = v64[6];
    v69 = v64[3];
    v68 = v64[4];
    v88 = v64[5];
    v89 = v67;
    v86 = v69;
    v87 = v68;
    v70 = v64[10];
    v72 = v64[7];
    v71 = v64[8];
    v92 = v64[9];
    v93 = v70;
    v90 = v72;
    v91 = v71;
    v101 = v64[7];
    v102 = v64[8];
    v103 = v64[9];
    v104 = v64[10];
    v97 = v64[3];
    v73 = v97;
    v98 = v64[4];
    v99 = v64[5];
    v100 = v64[6];
    v94 = *v64;
    v95 = v64[1];
    v96 = v64[2];
    *v3 = a1;
    *(v3 + 56) = v73;
    v74 = v95;
    *(v3 + 40) = v96;
    v75 = v94;
    *(v3 + 24) = v74;
    *(v3 + 8) = v75;
    v76 = v98;
    v77 = v99;
    *(v3 + 104) = v100;
    *(v3 + 88) = v77;
    *(v3 + 72) = v76;
    v78 = v103;
    *(v3 + 168) = v104;
    *(v3 + 152) = v78;
    v79 = v101;
    *(v3 + 136) = v102;
    *(v3 + 120) = v79;
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    sub_1B039F420(&v83, v82);
  }

  return ClientCommand.EncodingOptions.init(_:)(a1) & 0x101FF;
}

BOOL sub_1B0C336B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59F0, &unk_1B0EDA820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC60E0;
  v3 = Capability.uidOnly.unsafeMutableAddressor();
  v4 = v3[1];
  v5 = v3[2];
  v6 = *(v3 + 24);
  *(inited + 32) = *v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = Capability.enable.unsafeMutableAddressor();
  v8 = v7[1];
  v9 = v7[2];
  v10 = *(v7 + 24);
  *(inited + 64) = *v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  *(inited + 88) = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = Capability.uidBatches.unsafeMutableAddressor();
  v12 = v11[1];
  v13 = v11[2];
  v14 = *(v11 + 24);
  *(inited + 96) = *v11;
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  *(inited + 120) = v14;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = Capability.partial.unsafeMutableAddressor();
  v16 = v15[1];
  v17 = v15[2];
  v18 = *(v15 + 24);
  *(inited + 128) = *v15;
  *(inited + 136) = v16;
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = Capability.extendedSearch.unsafeMutableAddressor();
  v20 = v19[1];
  v21 = v19[2];
  v22 = *(v19 + 24);
  *(inited + 160) = *v19;
  *(inited + 168) = v20;
  *(inited + 176) = v21;
  *(inited + 184) = v22;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0BF4574(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOBYTE(a1) = sub_1B0C370C8(a1, v23);

  return (a1 & 1) == 0;
}

_OWORD *sub_1B0C33814(uint64_t a1, uint64_t a2)
{
  *&v558 = a2;
  v3 = *(a1 + 144);
  v642 = *(a1 + 128);
  v643 = v3;
  v644 = *(a1 + 160);
  v645 = *(a1 + 176);
  v4 = *(a1 + 80);
  v638 = *(a1 + 64);
  v639 = v4;
  v5 = *(a1 + 112);
  v640 = *(a1 + 96);
  v641 = v5;
  v6 = *(a1 + 16);
  v634 = *a1;
  v635 = v6;
  v7 = *(a1 + 48);
  v636 = *(a1 + 32);
  v637 = v7;
  *&v557 = _s6LoggerVMa_0();
  v8 = *(*(v557 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v557);
  v545 = &v521 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v547 = &v521 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v544 = &v521 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v546 = &v521 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v527 = &v521 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v528 = &v521 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v529 = &v521 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v530 = &v521 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v525 = &v521 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v526 = &v521 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v523 = &v521 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v524 = &v521 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v548 = &v521 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  *&v549 = &v521 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  *&v553 = &v521 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  *&v555 = &v521 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v542 = &v521 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v543 = &v521 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  *&v552 = &v521 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  *&v554 = &v521 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v538 = &v521 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v539 = &v521 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v540 = &v521 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v541 = &v521 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v536 = &v521 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v537 = &v521 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v534 = &v521 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v535 = &v521 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v533 = &v521 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v531 = &v521 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v532 = &v521 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v521 = &v521 - v72;
  MEMORY[0x1EEE9AC00](v71);
  v522 = &v521 - v73;
  v559 = type metadata accessor for UnauthenticatedState();
  v74 = *(*(v559 - 8) + 64);
  v75 = MEMORY[0x1EEE9AC00](v559);
  v77 = &v521 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x1EEE9AC00](v75);
  *&v550 = &v521 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v82 = &v521 - v81;
  v83 = MEMORY[0x1EEE9AC00](v80);
  v85 = (&v521 - v84);
  v86 = MEMORY[0x1EEE9AC00](v83);
  *&v551 = &v521 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v90 = (&v521 - v89);
  v91 = MEMORY[0x1EEE9AC00](v88);
  v93 = &v521 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91);
  v96 = &v521 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v521 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97);
  v102 = &v521 - v101;
  MEMORY[0x1EEE9AC00](v100);
  *&v556 = &v521 - v103;
  v104 = *(a1 + 144);
  v628[8] = *(a1 + 128);
  v628[9] = v104;
  v628[10] = *(a1 + 160);
  v629 = *(a1 + 176);
  v105 = *(a1 + 80);
  v628[4] = *(a1 + 64);
  v628[5] = v105;
  v106 = *(a1 + 112);
  v628[6] = *(a1 + 96);
  v628[7] = v106;
  v107 = *(a1 + 16);
  v628[0] = *a1;
  v628[1] = v107;
  v108 = *(a1 + 48);
  v628[2] = *(a1 + 32);
  v628[3] = v108;
  v109 = sub_1B0C376E8(v628);
  if (v109 <= 5)
  {
    if (v109 <= 2)
    {
      if (!v109)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v628);
        v175 = *v174;
        v176 = v174[3];
        if ((~*v174 & 0xF000000000000007) != 0 && ((v175 >> 59) & 0x1E | (v175 >> 2) & 1) == 1)
        {
          v176 = *((v175 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }

        else if (v176)
        {
          v296 = v174[3];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }

        v297 = sub_1B0C32E28(v176, v558);
LABEL_62:

        if (v297 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F8, &qword_1B0ED5CF8);
          result = swift_allocObject();
          result[1] = xmmword_1B0EC1E70;
          *(result + 4) = v297;
          *(result + 5) = 0;
          *(result + 6) = 0;
          *(result + 7) = 0;
          return result;
        }

        return MEMORY[0x1E69E7CC0];
      }

      if (v109 == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v628);
        v111 = *v110;
        v112 = v110[1];
        v114 = v110[2];
        v113 = v110[3];
        v115 = v110[4];
        v116 = v110[5];
        v117 = v110[6];
        v118 = v556;
        sub_1B0433BE8(v560, v556, type metadata accessor for UnauthenticatedState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 1)
        {
          if (!EnumCaseMultiPayload)
          {
            v120 = *v118;
            v121 = *(v111 + 16);
            if (!v121)
            {
LABEL_85:
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B044A64C(v112);
              sub_1B0BB8F60(v115, v116, v117);
              sub_1B04479C4(v560, type metadata accessor for UnauthenticatedState);

              sub_1B044A65C(v112);
              sub_1B0BE2F48(v115, v116, v117);
LABEL_86:

LABEL_87:
              v388 = v558;
              v389 = v532;
              sub_1B0433BE8(v558, v532, _s6LoggerVMa_0);
              v390 = v531;
              sub_1B0433BE8(v388, v531, _s6LoggerVMa_0);
              sub_1B0394868();
              sub_1B0394868();
              sub_1B0394868();
              v391 = sub_1B0E43988();
              v392 = sub_1B0E458F8();
              if (os_log_type_enabled(v391, v392))
              {
                v393 = swift_slowAlloc();
                v394 = swift_slowAlloc();
                *&v616 = v394;
                *v393 = 68158210;
                *(v393 + 4) = 2;
                *(v393 + 8) = 256;
                v395 = v557;
                v396 = *(v390 + *(v557 + 20));
                sub_1B04479C4(v390, _s6LoggerVMa_0);
                *(v393 + 10) = v396;
                *(v393 + 11) = 2082;
                v397 = *(v389 + *(v395 + 20) + 4);
                sub_1B04479C4(v389, _s6LoggerVMa_0);
                v398 = ConnectionID.debugDescription.getter(v397);
                v400 = sub_1B0399D64(v398, v399, &v616);

                *(v393 + 13) = v400;
                _os_log_impl(&dword_1B0389000, v391, v392, "[%.*hhx-%{public}s] Credentials don't allow PREAUTH.", v393, 0x15u);
                __swift_destroy_boxed_opaque_existential_0Tm(v394);
                MEMORY[0x1B272C230](v394, -1, -1);
                MEMORY[0x1B272C230](v393, -1, -1);
              }

              else
              {
                sub_1B04479C4(v390, _s6LoggerVMa_0);

                sub_1B04479C4(v389, _s6LoggerVMa_0);
              }

              v480 = v560;
              *(v560 + 8) = 0;
              *(v480 + 16) = 0;
              *v480 = 2;
              *(v480 + 24) = -64;
              swift_storeEnumTagMultiPayload();
              return MEMORY[0x1E69E7CC0];
            }

            v122 = (v111 + 104);
            while (1)
            {
              v125 = *(v122 - 2);
              if (((*v122 >> 59) & 6 | ((v125 & 0x2000000000000000) != 0)) == 4)
              {
                v126 = vorrq_s8(*(v122 - 9), *(v122 - 7));
                v127 = *&vorr_s8(*v126.i8, *&vextq_s8(v126, v126, 8uLL)) | *(v122 - 5) | *(v122 - 4) | *(v122 - 3) | *(v122 - 1) | v125;
                if (*v122 == 0x2000000000000000 && v127 == 0)
                {
                  break;
                }
              }

              v122 += 10;
              if (!--v121)
              {
                goto LABEL_85;
              }
            }

            sub_1B0BB8F60(v115, v116, v117);
            if (v117 == 1)
            {
              goto LABEL_22;
            }

            if (v112 >> 62 != 1)
            {

              sub_1B0BE2F48(v115, v116, v117);
              v519 = v560;
LABEL_153:
              sub_1B04479C4(v519, type metadata accessor for UnauthenticatedState);
              goto LABEL_87;
            }

            if (v117)
            {
              if (v115)
              {
                v503 = v560;
                if (v115 == 1)
                {
                  if (v112 != 772)
                  {
                    goto LABEL_152;
                  }
                }

                else if (v112 - 771 >= 2)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                v503 = v560;
                if (v112 - 771 >= 2)
                {
                  goto LABEL_152;
                }
              }

              if (v113)
              {
                if (v116 == v114 && v117 == v113)
                {
                  sub_1B0BE2F48(v115, v114, v113);
                  goto LABEL_22;
                }

                v520 = sub_1B0E46A78();
                sub_1B0BE2F48(v115, v116, v117);
                if (v520)
                {
                  goto LABEL_22;
                }

                goto LABEL_155;
              }

LABEL_152:

              sub_1B0BE2F48(v115, v116, v117);
              v519 = v503;
              goto LABEL_153;
            }

            sub_1B0BE2F48(v115, v116, 0);
            if (v115 == 1)
            {
              if (v112 != 772)
              {
LABEL_155:
                sub_1B04479C4(v560, type metadata accessor for UnauthenticatedState);
                goto LABEL_86;
              }
            }

            else if (v112 - 771 >= 2)
            {
              goto LABEL_155;
            }

LABEL_22:
            v129 = v558;
            v130 = v522;
            sub_1B0433BE8(v558, v522, _s6LoggerVMa_0);
            v131 = v521;
            sub_1B0433BE8(v129, v521, _s6LoggerVMa_0);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v132 = sub_1B0E43988();
            v133 = sub_1B0E458D8();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v136 = v131;
              v137 = v135;
              *&v616 = v135;
              *v134 = 68158210;
              *(v134 + 4) = 2;
              *(v134 + 8) = 256;
              v138 = v557;
              v139 = *(v136 + *(v557 + 20));
              sub_1B04479C4(v136, _s6LoggerVMa_0);
              *(v134 + 10) = v139;
              *(v134 + 11) = 2082;
              v140 = *(v130 + *(v138 + 20) + 4);
              sub_1B04479C4(v130, _s6LoggerVMa_0);
              v141 = ConnectionID.debugDescription.getter(v140);
              v143 = sub_1B0399D64(v141, v142, &v616);

              *(v134 + 13) = v143;
              _os_log_impl(&dword_1B0389000, v132, v133, "[%.*hhx-%{public}s] Authenticated with PREAUTH.", v134, 0x15u);
              __swift_destroy_boxed_opaque_existential_0Tm(v137);
              MEMORY[0x1B272C230](v137, -1, -1);
              MEMORY[0x1B272C230](v134, -1, -1);
            }

            else
            {
              sub_1B04479C4(v131, _s6LoggerVMa_0);

              sub_1B04479C4(v130, _s6LoggerVMa_0);
            }

            v297 = sub_1B0C32E28(v120, v558);
            goto LABEL_62;
          }

          v375 = v558;
          v376 = v535;
          sub_1B0433BE8(v558, v535, _s6LoggerVMa_0);
          v377 = v534;
          sub_1B0433BE8(v375, v534, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v378 = sub_1B0E43988();
          v379 = sub_1B0E458E8();
          if (os_log_type_enabled(v378, v379))
          {
            v380 = swift_slowAlloc();
            v381 = swift_slowAlloc();
            *&v616 = v381;
            *v380 = 68158210;
            *(v380 + 4) = 2;
            *(v380 + 8) = 256;
            v382 = v557;
            v383 = *(v377 + *(v557 + 20));
            sub_1B04479C4(v377, _s6LoggerVMa_0);
            *(v380 + 10) = v383;
            *(v380 + 11) = 2082;
            v384 = *(v376 + *(v382 + 20) + 4);
            sub_1B04479C4(v376, _s6LoggerVMa_0);
            v385 = ConnectionID.debugDescription.getter(v384);
            v387 = sub_1B0399D64(v385, v386, &v616);

            *(v380 + 13) = v387;
            _os_log_impl(&dword_1B0389000, v378, v379, "[%.*hhx-%{public}s] Received unexpected credentials.", v380, 0x15u);
            __swift_destroy_boxed_opaque_existential_0Tm(v381);
            MEMORY[0x1B272C230](v381, -1, -1);
            MEMORY[0x1B272C230](v380, -1, -1);
          }

          else
          {
            sub_1B04479C4(v377, _s6LoggerVMa_0);

            sub_1B04479C4(v376, _s6LoggerVMa_0);
          }

          v370 = type metadata accessor for UnauthenticatedState;
          v371 = v556;
          goto LABEL_127;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B044A64C(v112);
        sub_1B0BB8F60(v115, v116, v117);
        *&v557 = v117;
        v372 = v116;
        v373 = v560;
        sub_1B04479C4(v560, type metadata accessor for UnauthenticatedState);
        v156 = *v118;
        *&v616 = v111;
        *(&v616 + 1) = v156;
        *&v617 = v112;
        *(&v617 + 1) = v114;
        *&v618 = v113;
        *(&v618 + 1) = v115;
        *&v619 = v372;
        *(&v619 + 1) = v557;
        v374 = v533;
        sub_1B0433BE8(v558, v533, _s6LoggerVMa_0);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BD4184(&v616, v374, v102);
        swift_storeEnumTagMultiPayload();
        sub_1B0C3A6F0(v102, v373, type metadata accessor for UnauthenticatedState);
LABEL_118:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F8, &qword_1B0ED5CF8);
        v488 = swift_allocObject();
        *(v488 + 16) = xmmword_1B0EC1E70;
        v489 = ClientCommand.EncodingOptions.init(_:)(v156);
        result = v488;
        *(v488 + 32) = v489 & 0x101FF;
        *(v488 + 40) = 0;
        *(v488 + 48) = 0;
        *(v488 + 56) = 0;
        return result;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v628);
      v617 = *(v240 + 16);
      v618 = *(v240 + 32);
      v619 = *(v240 + 48);
      v620 = *(v240 + 64);
      v616 = *v240;
      sub_1B0C3259C(&v616, *(v240 + 80), *(v240 + 88), *(v240 + 96), v558);
      return MEMORY[0x1E69E7CC0];
    }

    if (v109 != 3)
    {
      v144 = v560;
      if (v109 != 4)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v628);
        v263 = *v262;
        v265 = v262[1];
        v264 = v262[2];
        v266 = v262[3];
        sub_1B0433BE8(v144, v77, type metadata accessor for UnauthenticatedState);
        v267 = swift_getEnumCaseMultiPayload();
        if (v267 == 8)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B04479C4(v144, type metadata accessor for UnauthenticatedState);
          v268 = *(v77 + 1);
          v594 = *v77;
          v595 = v268;
          v269 = *(v77 + 3);
          v596 = *(v77 + 2);
          v597 = v269;
          v270 = *(v77 + 8);
          v271 = *(v77 + 184);
          v272 = *(v77 + 216);
          v624 = *(v77 + 200);
          v625 = v272;
          v626 = *(v77 + 232);
          v273 = *(v77 + 120);
          v274 = *(v77 + 152);
          v620 = *(v77 + 136);
          v621 = v274;
          v275 = *(v77 + 168);
          v623 = v271;
          v622 = v275;
          v276 = *(v77 + 88);
          v616 = *(v77 + 72);
          v617 = v276;
          v277 = *(v77 + 104);
          v619 = v273;
          v618 = v277;
          sub_1B0A1C37C(&v594);
          v278 = v622;
          *(v144 + 120) = v623;
          v279 = v625;
          *(v144 + 136) = v624;
          *(v144 + 152) = v279;
          *(v144 + 168) = v626;
          v280 = v618;
          *(v144 + 56) = v619;
          v281 = v621;
          *(v144 + 72) = v620;
          *(v144 + 88) = v281;
          *(v144 + 104) = v278;
          v282 = v617;
          *(v144 + 8) = v616;
          *(v144 + 24) = v282;
          *v144 = v270;
          *(v144 + 40) = v280;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56F8, &qword_1B0ED5CF8);
          result = swift_allocObject();
          result[1] = xmmword_1B0EC1E70;
          *(result + 4) = v263 | 0x4000000000000000;
          *(result + 5) = v265;
          *(result + 6) = v264;
          *(result + 7) = v266;
          return result;
        }

        sub_1B04479C4(v77, type metadata accessor for UnauthenticatedState);
        v363 = v558;
        v299 = v547;
        sub_1B0433BE8(v558, v547, _s6LoggerVMa_0);
        v300 = v545;
        sub_1B0433BE8(v363, v545, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v301 = sub_1B0E43988();
        v302 = sub_1B0E458E8();
        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          *&v616 = v304;
          *v303 = 68158210;
          *(v303 + 4) = 2;
          *(v303 + 8) = 256;
          v364 = v557;
          v365 = *(v300 + *(v557 + 20));
          sub_1B04479C4(v300, _s6LoggerVMa_0);
          *(v303 + 10) = v365;
          *(v303 + 11) = 2082;
          v366 = *(v299 + *(v364 + 20) + 4);
          sub_1B04479C4(v299, _s6LoggerVMa_0);
          v367 = ConnectionID.debugDescription.getter(v366);
          v369 = sub_1B0399D64(v367, v368, &v616);

          *(v303 + 13) = v369;
          v311 = "[%.*hhx-%{public}s] Unexpected gotPushResponse";
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v628);
      v633 = *v145;
      v146 = *(v145 + 2);
      v147 = *(v145 + 40);
      v630 = *(v145 + 24);
      v631 = v147;
      v632 = *(v145 + 7);
      v148 = v550;
      sub_1B0433BE8(v144, v550, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v149 = *(a1 + 144);
        v624 = *(a1 + 128);
        v625 = v149;
        v626 = *(a1 + 160);
        v627 = *(a1 + 176);
        v150 = *(a1 + 80);
        v620 = *(a1 + 64);
        v621 = v150;
        v151 = *(a1 + 112);
        v622 = *(a1 + 96);
        v623 = v151;
        v152 = *(a1 + 16);
        v616 = *a1;
        v617 = v152;
        v153 = *(a1 + 48);
        v618 = *(a1 + 32);
        v619 = v153;
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v616);
        sub_1B03B5C80(v154, &v594, &qword_1EB6E59E8, &unk_1B0EDA810);
        sub_1B04479C4(v144, type metadata accessor for UnauthenticatedState);
        v157 = *v148;
        v155 = v148 + 1;
        v156 = v157;
        if (v146)
        {
          *v144 = v633;
          *(v144 + 16) = v146;
          v158 = v631;
          *(v144 + 24) = v630;
          *(v144 + 40) = v158;
          *(v144 + 56) = v632;
          v159 = (v144 + 64);
          v160 = 72;
        }

        else
        {
          v160 = 8;
          v159 = v144;
        }

        *v159 = v156;
        v434 = (v144 + v160);
        v435 = v155[9];
        v434[8] = v155[8];
        v434[9] = v435;
        v434[10] = v155[10];
        v436 = v155[5];
        v434[4] = v155[4];
        v434[5] = v436;
        v437 = v155[7];
        v434[6] = v155[6];
        v434[7] = v437;
        v438 = v155[1];
        *v434 = *v155;
        v434[1] = v438;
        v439 = v155[3];
        v434[2] = v155[2];
        v434[3] = v439;
        swift_storeEnumTagMultiPayload();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v440 = Capability.id.unsafeMutableAddressor();
        v441 = v440[1];
        v442 = v440[2];
        v443 = *(v440 + 24);
        *&v594 = *v440;
        *(&v594 + 1) = v441;
        *&v595 = v442;
        BYTE8(v595) = v443;
        MEMORY[0x1EEE9AC00](v440);
        *(&v521 - 2) = &v594;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v444 = sub_1B0C32414(sub_1B0BD6614, (&v521 - 4), v156);

        if ((v444 & 1) == 0)
        {
          goto LABEL_118;
        }

        return MEMORY[0x1E69E7CC0];
      }

      sub_1B04479C4(v148, type metadata accessor for UnauthenticatedState);
      v349 = v558;
      v299 = v546;
      sub_1B0433BE8(v558, v546, _s6LoggerVMa_0);
      v300 = v544;
      sub_1B0433BE8(v349, v544, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v301 = sub_1B0E43988();
      v302 = sub_1B0E458E8();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        *&v616 = v304;
        *v303 = 68158210;
        *(v303 + 4) = 2;
        *(v303 + 8) = 256;
        v350 = v557;
        v351 = *(v300 + *(v557 + 20));
        sub_1B04479C4(v300, _s6LoggerVMa_0);
        *(v303 + 10) = v351;
        *(v303 + 11) = 2082;
        v352 = *(v299 + *(v350 + 20) + 4);
        sub_1B04479C4(v299, _s6LoggerVMa_0);
        v353 = ConnectionID.debugDescription.getter(v352);
        v355 = sub_1B0399D64(v353, v354, &v616);

        *(v303 + 13) = v355;
        v311 = "[%.*hhx-%{public}s] Unexpected setPushInformation";
        goto LABEL_125;
      }

LABEL_126:
      sub_1B04479C4(v300, _s6LoggerVMa_0);

      v371 = v299;
      v370 = _s6LoggerVMa_0;
LABEL_127:
      sub_1B04479C4(v371, v370);
      return MEMORY[0x1E69E7CC0];
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v628);
    v209 = v208[1];
    v578 = *v208;
    v579 = v209;
    v210 = v208[3];
    v580 = v208[2];
    v581 = v210;
    v212 = *(v208 + 8);
    v211 = *(v208 + 9);
    v213 = v208[8];
    v574 = v208[7];
    v575 = v213;
    v214 = v208[10];
    v576 = v208[9];
    v577 = v214;
    v215 = v208[6];
    v572 = v208[5];
    v573 = v215;
    v216 = v560;
    sub_1B0433BE8(v560, v90, type metadata accessor for UnauthenticatedState);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v217 = *(a1 + 144);
      v624 = *(a1 + 128);
      v625 = v217;
      v626 = *(a1 + 160);
      v627 = *(a1 + 176);
      v218 = *(a1 + 80);
      v620 = *(a1 + 64);
      v621 = v218;
      v219 = *(a1 + 112);
      v622 = *(a1 + 96);
      v623 = v219;
      v220 = *(a1 + 16);
      v616 = *a1;
      v617 = v220;
      v221 = *(a1 + 48);
      v618 = *(a1 + 32);
      v619 = v221;
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v616);
      sub_1B039F420(v222, &v594);
      sub_1B04479C4(v216, type metadata accessor for UnauthenticatedState);
      v223 = *v90;
      if (v211)
      {
        if (sub_1B0E44B98() == 0xD000000000000012 && 0x80000001B0F2D600 == v224)
        {

LABEL_106:
          v446 = &unk_1F271B7E8;
LABEL_108:
          *&v558 = v446;
          if (sub_1B0C336B8(v223))
          {
            v447 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
            v448 = *v447;
            v449 = v447[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v450 = static Capability.compression(_:)(v448, v449);
            v452 = v451;
            v454 = v453;
            v456 = v455;

            *&v594 = v450;
            *(&v594 + 1) = v452;
            *&v595 = v454;
            BYTE8(v595) = v456 & 1;
            MEMORY[0x1EEE9AC00](v457);
            *(&v521 - 2) = &v594;
            LOBYTE(v449) = sub_1B0C32414(sub_1B0C10BD0, (&v521 - 4), v223);

            if (v449)
            {
              v458 = v579;
              v459 = v560;
              *(v560 + 8) = v578;
              *(v459 + 24) = v458;
              v460 = v581;
              *(v459 + 40) = v580;
              *(v459 + 56) = v460;
              v461 = v575;
              *(v459 + 120) = v574;
              *(v459 + 136) = v461;
              v462 = v577;
              *(v459 + 152) = v576;
              *(v459 + 168) = v462;
              v463 = v573;
              *(v459 + 88) = v572;
              *v459 = v223;
              *(v459 + 72) = v212;
              *(v459 + 80) = v211;
              *(v459 + 104) = v463;
            }

            else
            {
              v469 = Capability.applePushService.unsafeMutableAddressor();
              v470 = v469[1];
              v471 = v469[2];
              v472 = *(v469 + 24);
              *&v594 = *v469;
              *(&v594 + 1) = v470;
              *&v595 = v471;
              BYTE8(v595) = v472;
              MEMORY[0x1EEE9AC00](v469);
              *(&v521 - 2) = &v594;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v473 = sub_1B0C32414(sub_1B0C10BD0, (&v521 - 4), v223);

              v474 = v579;
              v475 = v560;
              *(v560 + 8) = v578;
              *(v475 + 24) = v474;
              v476 = v581;
              *(v475 + 40) = v580;
              *(v475 + 56) = v476;
              v477 = v575;
              *(v475 + 120) = v574;
              *(v475 + 136) = v477;
              v478 = v577;
              *(v475 + 152) = v576;
              *(v475 + 168) = v478;
              v479 = v573;
              *(v475 + 88) = v572;
              *v475 = v223;
              *(v475 + 72) = v212;
              *(v475 + 80) = v211;
              *(v475 + 104) = v479;
              if (v473)
              {
                swift_storeEnumTagMultiPayload();
                *&v594 = v558;
                sub_1B0C32320(&unk_1F271B828);
                return v594;
              }
            }
          }

          else
          {
            v464 = v579;
            *(v216 + 8) = v578;
            *(v216 + 24) = v464;
            v465 = v581;
            *(v216 + 40) = v580;
            *(v216 + 56) = v465;
            v466 = v575;
            *(v216 + 120) = v574;
            *(v216 + 136) = v466;
            v467 = v577;
            *(v216 + 152) = v576;
            *(v216 + 168) = v467;
            v468 = v573;
            *(v216 + 88) = v572;
            *v216 = v223;
            *(v216 + 72) = v212;
            *(v216 + 80) = v211;
            *(v216 + 104) = v468;
          }

          swift_storeEnumTagMultiPayload();
          return v558;
        }

        v445 = sub_1B0E46A78();

        if (v445)
        {
          goto LABEL_106;
        }
      }

      v446 = MEMORY[0x1E69E7CC0];
      goto LABEL_108;
    }

    sub_1B04479C4(v90, type metadata accessor for UnauthenticatedState);
    v298 = v558;
    v299 = v543;
    sub_1B0433BE8(v558, v543, _s6LoggerVMa_0);
    v300 = v542;
    sub_1B0433BE8(v298, v542, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v301 = sub_1B0E43988();
    v302 = sub_1B0E458E8();
    if (!os_log_type_enabled(v301, v302))
    {
      goto LABEL_126;
    }

    v303 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    *&v616 = v304;
    *v303 = 68158210;
    *(v303 + 4) = 2;
    *(v303 + 8) = 256;
    v305 = v557;
    v306 = *(v300 + *(v557 + 20));
    sub_1B04479C4(v300, _s6LoggerVMa_0);
    *(v303 + 10) = v306;
    *(v303 + 11) = 2082;
    v307 = *(v299 + *(v305 + 20) + 4);
    sub_1B04479C4(v299, _s6LoggerVMa_0);
    v308 = ConnectionID.debugDescription.getter(v307);
    v310 = sub_1B0399D64(v308, v309, &v616);

    *(v303 + 13) = v310;
    v311 = "[%.*hhx-%{public}s] Unexpected identifiedServer";
LABEL_125:
    _os_log_impl(&dword_1B0389000, v301, v302, v311, v303, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v304);
    MEMORY[0x1B272C230](v304, -1, -1);
    MEMORY[0x1B272C230](v303, -1, -1);

    return MEMORY[0x1E69E7CC0];
  }

  if (v109 > 8)
  {
    if ((v109 - 9) >= 2)
    {
      v225 = v558;
      v226 = v555;
      sub_1B0433BE8(v558, v555, _s6LoggerVMa_0);
      v227 = v553;
      sub_1B0433BE8(v225, v553, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v228 = sub_1B0E43988();
      v229 = sub_1B0E45908();
      v230 = os_log_type_enabled(v228, v229);
      v231 = v560;
      if (v230)
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        *&v616 = v233;
        *v232 = 68158210;
        *(v232 + 4) = 2;
        *(v232 + 8) = 256;
        v234 = v557;
        v235 = *(v227 + *(v557 + 20));
        sub_1B04479C4(v227, _s6LoggerVMa_0);
        *(v232 + 10) = v235;
        *(v232 + 11) = 2082;
        v236 = *(v226 + *(v234 + 20) + 4);
        sub_1B04479C4(v226, _s6LoggerVMa_0);
        v237 = ConnectionID.debugDescription.getter(v236);
        v239 = sub_1B0399D64(v237, v238, &v616);

        *(v232 + 13) = v239;
        _os_log_impl(&dword_1B0389000, v228, v229, "[%.*hhx-%{public}s] Did enable UIDONLY", v232, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v233);
        MEMORY[0x1B272C230](v233, -1, -1);
        MEMORY[0x1B272C230](v232, -1, -1);
      }

      else
      {
        sub_1B04479C4(v227, _s6LoggerVMa_0);

        sub_1B04479C4(v226, _s6LoggerVMa_0);
      }

      v312 = v551;
      sub_1B0433BE8(v231, v551, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_1B04479C4(v312, type metadata accessor for UnauthenticatedState);
        v335 = v558;
        v299 = v549;
        sub_1B0433BE8(v558, v549, _s6LoggerVMa_0);
        v300 = v548;
        sub_1B0433BE8(v335, v548, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v301 = sub_1B0E43988();
        v302 = sub_1B0E458E8();
        if (!os_log_type_enabled(v301, v302))
        {
          goto LABEL_126;
        }

        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        *&v616 = v304;
        *v303 = 68158210;
        *(v303 + 4) = 2;
        *(v303 + 8) = 256;
        v336 = v557;
        v337 = *(v300 + *(v557 + 20));
        sub_1B04479C4(v300, _s6LoggerVMa_0);
        *(v303 + 10) = v337;
        *(v303 + 11) = 2082;
        v338 = *(v299 + *(v336 + 20) + 4);
        sub_1B04479C4(v299, _s6LoggerVMa_0);
        v339 = ConnectionID.debugDescription.getter(v338);
        v341 = sub_1B0399D64(v339, v340, &v616);

        *(v303 + 13) = v341;
        v311 = "[%.*hhx-%{public}s] Unexpected enabledCapabilities";
        goto LABEL_125;
      }

      sub_1B04479C4(v231, type metadata accessor for UnauthenticatedState);
      v313 = *v312;
      v314 = *(v312 + 120);
      v315 = *(v312 + 152);
      v590 = *(v312 + 136);
      v591 = v315;
      v592 = *(v312 + 168);
      v316 = *(v312 + 56);
      v317 = *(v312 + 88);
      v586 = *(v312 + 72);
      v587 = v317;
      v588 = *(v312 + 104);
      v589 = v314;
      v318 = *(v312 + 24);
      v582 = *(v312 + 8);
      v583 = v318;
      v584 = *(v312 + 40);
      v585 = v316;
      v319 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v320 = *v319;
      v321 = v319[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v322 = static Capability.compression(_:)(v320, v321);
      v324 = v323;
      v326 = v325;
      v328 = v327;

      *&v616 = v322;
      *(&v616 + 1) = v324;
      *&v617 = v326;
      BYTE8(v617) = v328 & 1;
      MEMORY[0x1EEE9AC00](v329);
      *(&v521 - 2) = &v616;
      LOBYTE(v321) = sub_1B0C32414(sub_1B0C10BD0, (&v521 - 4), v313);

      if (v321)
      {
        v330 = v588;
        *(v231 + 120) = v589;
        v331 = v591;
        *(v231 + 136) = v590;
        *(v231 + 152) = v331;
        *(v231 + 168) = v592;
        v332 = v584;
        *(v231 + 56) = v585;
        v333 = v587;
        *(v231 + 72) = v586;
        *(v231 + 88) = v333;
        *(v231 + 104) = v330;
        v334 = v583;
        *(v231 + 8) = v582;
        *(v231 + 24) = v334;
        *v231 = v313;
        *(v231 + 40) = v332;
        swift_storeEnumTagMultiPayload();
        return MEMORY[0x1E69E7CC0];
      }

      v401 = Capability.applePushService.unsafeMutableAddressor();
      v402 = v401[1];
      v403 = v401[2];
      v404 = *(v401 + 24);
      *&v616 = *v401;
      *(&v616 + 1) = v402;
      *&v617 = v403;
      BYTE8(v617) = v404;
      MEMORY[0x1EEE9AC00](v401);
      *(&v521 - 2) = &v616;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v405 = sub_1B0C32414(sub_1B0C10BD0, (&v521 - 4), v313);

      v406 = v588;
      *(v231 + 120) = v589;
      v407 = v591;
      *(v231 + 136) = v590;
      *(v231 + 152) = v407;
      *(v231 + 168) = v592;
      v408 = v584;
      *(v231 + 56) = v585;
      v409 = v587;
      *(v231 + 72) = v586;
      *(v231 + 88) = v409;
      *(v231 + 104) = v406;
      v410 = v583;
      *(v231 + 8) = v582;
      *(v231 + 24) = v410;
      *v231 = v313;
      *(v231 + 40) = v408;
      if (v405)
      {
        swift_storeEnumTagMultiPayload();
        return &unk_1F271B868;
      }
    }

    else
    {
      v161 = v560;
      sub_1B0433BE8(v560, v93, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() - 5 > 1)
      {
        v283 = v558;
        v284 = v554;
        sub_1B0433BE8(v558, v554, _s6LoggerVMa_0);
        v285 = v552;
        sub_1B0433BE8(v283, v552, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v286 = sub_1B0E43988();
        v287 = sub_1B0E458E8();
        if (os_log_type_enabled(v286, v287))
        {
          v288 = swift_slowAlloc();
          v289 = swift_slowAlloc();
          *&v616 = v289;
          *v288 = 68158210;
          *(v288 + 4) = 2;
          *(v288 + 8) = 256;
          v290 = v557;
          v291 = *(v285 + *(v557 + 20));
          sub_1B04479C4(v285, _s6LoggerVMa_0);
          *(v288 + 10) = v291;
          *(v288 + 11) = 2082;
          v292 = *(v284 + *(v290 + 20) + 4);
          sub_1B04479C4(v284, _s6LoggerVMa_0);
          v293 = ConnectionID.debugDescription.getter(v292);
          v295 = sub_1B0399D64(v293, v294, &v616);

          *(v288 + 13) = v295;
          _os_log_impl(&dword_1B0389000, v286, v287, "[%.*hhx-%{public}s] Unexpected enabledCompress", v288, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v289);
          MEMORY[0x1B272C230](v289, -1, -1);
          MEMORY[0x1B272C230](v288, -1, -1);
        }

        else
        {
          sub_1B04479C4(v285, _s6LoggerVMa_0);

          sub_1B04479C4(v284, _s6LoggerVMa_0);
        }

        v370 = type metadata accessor for UnauthenticatedState;
        v371 = v93;
        goto LABEL_127;
      }

      sub_1B04479C4(v161, type metadata accessor for UnauthenticatedState);
      v163 = *(v93 + 21);
      v162 = *(v93 + 22);
      v164 = *v93;
      v165 = *(v93 + 8);
      v166 = *(v93 + 24);
      v557 = *(v93 + 40);
      v558 = v165;
      v552 = *(v93 + 56);
      v553 = v166;
      v167 = *(v93 + 72);
      v168 = *(v93 + 88);
      v555 = *(v93 + 104);
      v556 = v167;
      v550 = *(v93 + 120);
      v551 = v168;
      v554 = *(v93 + 136);
      v549 = *(v93 + 152);
      v169 = Capability.applePushService.unsafeMutableAddressor();
      v170 = v169[1];
      v171 = v169[2];
      v172 = *(v169 + 24);
      *&v616 = *v169;
      *(&v616 + 1) = v170;
      *&v617 = v171;
      BYTE8(v617) = v172;
      MEMORY[0x1EEE9AC00](v169);
      *(&v521 - 2) = &v616;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v173 = sub_1B0C32414(sub_1B0C10BD0, (&v521 - 4), v164);

      *v161 = v164;
      *(v161 + 24) = v553;
      *(v161 + 8) = v558;
      *(v161 + 56) = v552;
      *(v161 + 40) = v557;
      *(v161 + 88) = v551;
      *(v161 + 72) = v556;
      *(v161 + 120) = v550;
      *(v161 + 104) = v555;
      *(v161 + 152) = v549;
      *(v161 + 136) = v554;
      *(v161 + 168) = v163;
      *(v161 + 176) = v162;
      if (v173)
      {
        swift_storeEnumTagMultiPayload();
        return &unk_1F271B7A8;
      }
    }

LABEL_122:
    swift_storeEnumTagMultiPayload();
    return MEMORY[0x1E69E7CC0];
  }

  if (v109 == 6)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v628);
    v178 = *v177;
    v179 = v177[1];
    v180 = v177[2];
    v181 = *(v177 + 24);
    if (v181 >= 0xC0)
    {
      v182 = v180 | v179;
      if (v181 == 192 && v178 == 8 && !v182)
      {
        v183 = v560;
        sub_1B0433BE8(v560, v82, type metadata accessor for UnauthenticatedState);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_1B04479C4(v82, type metadata accessor for UnauthenticatedState);
          v481 = v558;
          v299 = v528;
          sub_1B0433BE8(v558, v528, _s6LoggerVMa_0);
          v300 = v527;
          sub_1B0433BE8(v481, v527, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v301 = sub_1B0E43988();
          v302 = sub_1B0E458E8();
          if (os_log_type_enabled(v301, v302))
          {
            v303 = swift_slowAlloc();
            v304 = swift_slowAlloc();
            *&v616 = v304;
            *v303 = 68158210;
            *(v303 + 4) = 2;
            *(v303 + 8) = 256;
            v482 = v557;
            v483 = *(v300 + *(v557 + 20));
            sub_1B04479C4(v300, _s6LoggerVMa_0);
            *(v303 + 10) = v483;
            *(v303 + 11) = 2082;
            v484 = *(v299 + *(v482 + 20) + 4);
            sub_1B04479C4(v299, _s6LoggerVMa_0);
            v485 = ConnectionID.debugDescription.getter(v484);
            v487 = sub_1B0399D64(v485, v486, &v616);

            *(v303 + 13) = v487;
            v311 = "[%.*hhx-%{public}s] Unexpected unableToGetPushResponse";
            goto LABEL_125;
          }

          goto LABEL_126;
        }

        sub_1B04479C4(v183, type metadata accessor for UnauthenticatedState);
        v184 = *(v82 + 1);
        v616 = *v82;
        v617 = v184;
        v185 = *(v82 + 3);
        v618 = *(v82 + 2);
        v619 = v185;
        v186 = *(v82 + 8);
        v187 = *(v82 + 184);
        v188 = *(v82 + 216);
        v613 = *(v82 + 200);
        v614 = v188;
        v615 = *(v82 + 232);
        v189 = *(v82 + 120);
        v190 = *(v82 + 152);
        v609 = *(v82 + 136);
        v610 = v190;
        v191 = *(v82 + 168);
        v612 = v187;
        v611 = v191;
        v192 = *(v82 + 88);
        v605 = *(v82 + 72);
        v606 = v192;
        v193 = *(v82 + 104);
        v608 = v189;
        v607 = v193;
        sub_1B0A1C37C(&v616);
        v194 = v558;
        v195 = v530;
        sub_1B0433BE8(v558, v530, _s6LoggerVMa_0);
        v196 = v529;
        sub_1B0433BE8(v194, v529, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v197 = sub_1B0E43988();
        v198 = sub_1B0E458E8();
        if (os_log_type_enabled(v197, v198))
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          *&v594 = v200;
          *v199 = 68158210;
          *(v199 + 4) = 2;
          *(v199 + 8) = 256;
          v201 = v557;
          v202 = *(v557 + 20);
          *&v558 = v186;
          v203 = *(v196 + v202);
          sub_1B04479C4(v196, _s6LoggerVMa_0);
          *(v199 + 10) = v203;
          *(v199 + 11) = 2082;
          v204 = *(v195 + *(v201 + 20) + 4);
          sub_1B04479C4(v195, _s6LoggerVMa_0);
          v205 = ConnectionID.debugDescription.getter(v204);
          v207 = sub_1B0399D64(v205, v206, &v594);

          *(v199 + 13) = v207;
          v186 = v558;
          _os_log_impl(&dword_1B0389000, v197, v198, "[%.*hhx-%{public}s] Unable to get push response", v199, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v200);
          MEMORY[0x1B272C230](v200, -1, -1);
          MEMORY[0x1B272C230](v199, -1, -1);
        }

        else
        {
          sub_1B04479C4(v196, _s6LoggerVMa_0);

          sub_1B04479C4(v195, _s6LoggerVMa_0);
        }

        v490 = v611;
        v491 = v560;
        *(v560 + 120) = v612;
        v492 = v614;
        *(v491 + 136) = v613;
        *(v491 + 152) = v492;
        *(v491 + 168) = v615;
        v493 = v607;
        *(v491 + 56) = v608;
        v494 = v610;
        *(v491 + 72) = v609;
        *(v491 + 88) = v494;
        *(v491 + 104) = v490;
        v495 = v606;
        *(v491 + 8) = v605;
        *(v491 + 24) = v495;
        *v491 = v186;
        *(v491 + 40) = v493;
        goto LABEL_122;
      }

      if (v181 == 192 && v178 == 9 && !v182)
      {
        v411 = v560;
        sub_1B0433BE8(v560, v85, type metadata accessor for UnauthenticatedState);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          sub_1B04479C4(v411, type metadata accessor for UnauthenticatedState);
          v412 = *v85;
          v413 = v558;
          v414 = v524;
          sub_1B0433BE8(v558, v524, _s6LoggerVMa_0);
          v415 = v523;
          sub_1B0433BE8(v413, v523, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v416 = sub_1B0E43988();
          v417 = sub_1B0E458E8();
          if (os_log_type_enabled(v416, v417))
          {
            v418 = swift_slowAlloc();
            *&v556 = swift_slowAlloc();
            *&v616 = v556;
            *v418 = 68158210;
            *(v418 + 4) = 2;
            *(v418 + 8) = 256;
            v419 = v557;
            v420 = *(v557 + 20);
            *&v558 = v412;
            v421 = *(v415 + v420);
            sub_1B04479C4(v415, _s6LoggerVMa_0);
            *(v418 + 10) = v421;
            *(v418 + 11) = 2082;
            v422 = *(v414 + *(v419 + 20) + 4);
            sub_1B04479C4(v414, _s6LoggerVMa_0);
            v423 = ConnectionID.debugDescription.getter(v422);
            v425 = sub_1B0399D64(v423, v424, &v616);

            *(v418 + 13) = v425;
            v412 = v558;
            _os_log_impl(&dword_1B0389000, v416, v417, "[%.*hhx-%{public}s] Unable to identify server.", v418, 0x15u);
            v426 = v556;
            __swift_destroy_boxed_opaque_existential_0Tm(v556);
            MEMORY[0x1B272C230](v426, -1, -1);
            MEMORY[0x1B272C230](v418, -1, -1);
          }

          else
          {
            sub_1B04479C4(v415, _s6LoggerVMa_0);

            sub_1B04479C4(v414, _s6LoggerVMa_0);
          }

          v504 = ServerID.empty.unsafeMutableAddressor();
          v506 = v504[1];
          v505 = v504[2];
          v594 = *v504;
          v595 = v506;
          v596 = v505;
          v507 = v504[5];
          v509 = v504[3];
          v508 = v504[4];
          v600 = v504[6];
          v599 = v507;
          v597 = v509;
          v598 = v508;
          v510 = v504[9];
          v512 = v504[7];
          v511 = v504[8];
          v604 = v504[10];
          v603 = v510;
          v601 = v512;
          v602 = v511;
          v623 = v504[7];
          v624 = v504[8];
          v625 = v504[9];
          v626 = v504[10];
          v619 = v504[3];
          v513 = v619;
          v620 = v504[4];
          v621 = v504[5];
          v622 = v504[6];
          v616 = *v504;
          v617 = v504[1];
          v618 = v504[2];
          *v411 = v412;
          *(v411 + 56) = v513;
          v514 = v620;
          *(v411 + 40) = v618;
          v515 = v616;
          *(v411 + 24) = v617;
          *(v411 + 8) = v515;
          v516 = v621;
          *(v411 + 104) = v622;
          *(v411 + 88) = v516;
          *(v411 + 72) = v514;
          v517 = v625;
          *(v411 + 168) = v626;
          *(v411 + 152) = v517;
          v518 = v623;
          *(v411 + 136) = v624;
          *(v411 + 120) = v518;
          swift_storeEnumTagMultiPayload();
          sub_1B039F420(&v594, &v593);
          return MEMORY[0x1E69E7CC0];
        }

        sub_1B04479C4(v85, type metadata accessor for UnauthenticatedState);
        v496 = v558;
        v299 = v526;
        sub_1B0433BE8(v558, v526, _s6LoggerVMa_0);
        v300 = v525;
        sub_1B0433BE8(v496, v525, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v301 = sub_1B0E43988();
        v302 = sub_1B0E458E8();
        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          *&v616 = v304;
          *v303 = 68158210;
          *(v303 + 4) = 2;
          *(v303 + 8) = 256;
          v497 = v557;
          v498 = *(v300 + *(v557 + 20));
          sub_1B04479C4(v300, _s6LoggerVMa_0);
          *(v303 + 10) = v498;
          *(v303 + 11) = 2082;
          v499 = *(v299 + *(v497 + 20) + 4);
          sub_1B04479C4(v299, _s6LoggerVMa_0);
          v500 = ConnectionID.debugDescription.getter(v499);
          v502 = sub_1B0399D64(v500, v501, &v616);

          *(v303 + 13) = v502;
          v311 = "[%.*hhx-%{public}s] Unexpected unableToIdentifyServer";
          goto LABEL_125;
        }

        goto LABEL_126;
      }
    }

    v427 = v560;
    sub_1B04479C4(v560, type metadata accessor for UnauthenticatedState);
    *v427 = v178;
    *(v427 + 8) = v179;
    *(v427 + 16) = v180;
    *(v427 + 24) = v181;
    swift_storeEnumTagMultiPayload();
    v624 = v642;
    v625 = v643;
    v626 = v644;
    v627 = v645;
    v620 = v638;
    v621 = v639;
    v622 = v640;
    v623 = v641;
    v616 = v634;
    v617 = v635;
    v618 = v636;
    v619 = v637;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v616);
    sub_1B0C37700(*v428, *(v428 + 8), *(v428 + 16), *(v428 + 24));
    return MEMORY[0x1E69E7CC0];
  }

  if (v109 == 7)
  {
    v123 = v560;
    sub_1B0433BE8(v560, v99, type metadata accessor for UnauthenticatedState);
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B04479C4(v123, type metadata accessor for UnauthenticatedState);
      sub_1B04479C4(v99, type metadata accessor for UnauthenticatedState);
      swift_storeEnumTagMultiPayload();
      return &unk_1F271B728;
    }

    sub_1B04479C4(v99, type metadata accessor for UnauthenticatedState);
    v342 = v558;
    v299 = v537;
    sub_1B0433BE8(v558, v537, _s6LoggerVMa_0);
    v300 = v536;
    sub_1B0433BE8(v342, v536, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v301 = sub_1B0E43988();
    v302 = sub_1B0E458E8();
    if (!os_log_type_enabled(v301, v302))
    {
      goto LABEL_126;
    }

    v303 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    *&v616 = v304;
    *v303 = 68158210;
    *(v303 + 4) = 2;
    *(v303 + 8) = 256;
    v343 = v557;
    v344 = *(v300 + *(v557 + 20));
    sub_1B04479C4(v300, _s6LoggerVMa_0);
    *(v303 + 10) = v344;
    *(v303 + 11) = 2082;
    v345 = *(v299 + *(v343 + 20) + 4);
    sub_1B04479C4(v299, _s6LoggerVMa_0);
    v346 = ConnectionID.debugDescription.getter(v345);
    v348 = sub_1B0399D64(v346, v347, &v616);

    *(v303 + 13) = v348;
    v311 = "[%.*hhx-%{public}s] Unexpected startTLS";
    goto LABEL_125;
  }

  v241 = v560;
  sub_1B0433BE8(v560, v96, type metadata accessor for UnauthenticatedState);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B04479C4(v96, type metadata accessor for UnauthenticatedState);
    v356 = v558;
    v299 = v539;
    sub_1B0433BE8(v558, v539, _s6LoggerVMa_0);
    v300 = v538;
    sub_1B0433BE8(v356, v538, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v301 = sub_1B0E43988();
    v302 = sub_1B0E458E8();
    if (os_log_type_enabled(v301, v302))
    {
      v303 = swift_slowAlloc();
      v304 = swift_slowAlloc();
      *&v616 = v304;
      *v303 = 68158210;
      *(v303 + 4) = 2;
      *(v303 + 8) = 256;
      v357 = v557;
      v358 = *(v300 + *(v557 + 20));
      sub_1B04479C4(v300, _s6LoggerVMa_0);
      *(v303 + 10) = v358;
      *(v303 + 11) = 2082;
      v359 = *(v299 + *(v357 + 20) + 4);
      sub_1B04479C4(v299, _s6LoggerVMa_0);
      v360 = ConnectionID.debugDescription.getter(v359);
      v362 = sub_1B0399D64(v360, v361, &v616);

      *(v303 + 13) = v362;
      v311 = "[%.*hhx-%{public}s] Unexpected serverAcceptedCompress";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  sub_1B04479C4(v241, type metadata accessor for UnauthenticatedState);
  v242 = *v96;
  v243 = *(v96 + 120);
  v244 = *(v96 + 152);
  v569 = *(v96 + 136);
  v570 = v244;
  v571 = *(v96 + 168);
  v245 = *(v96 + 56);
  v246 = *(v96 + 88);
  v565 = *(v96 + 72);
  v566 = v246;
  v567 = *(v96 + 104);
  v568 = v243;
  v247 = *(v96 + 24);
  v561 = *(v96 + 8);
  v562 = v247;
  v563 = *(v96 + 40);
  v564 = v245;
  v248 = v558;
  v249 = v541;
  sub_1B0433BE8(v558, v541, _s6LoggerVMa_0);
  v250 = v540;
  sub_1B0433BE8(v248, v540, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v251 = sub_1B0E43988();
  v252 = sub_1B0E458D8();
  if (os_log_type_enabled(v251, v252))
  {
    v253 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    *&v616 = v254;
    *v253 = 68158210;
    *(v253 + 4) = 2;
    *(v253 + 8) = 256;
    v255 = v557;
    v256 = *(v557 + 20);
    *&v558 = v242;
    v257 = *(v250 + v256);
    sub_1B04479C4(v250, _s6LoggerVMa_0);
    *(v253 + 10) = v257;
    *(v253 + 11) = 2082;
    v258 = *(v249 + *(v255 + 20) + 4);
    sub_1B04479C4(v249, _s6LoggerVMa_0);
    v259 = ConnectionID.debugDescription.getter(v258);
    v261 = sub_1B0399D64(v259, v260, &v616);

    *(v253 + 13) = v261;
    v242 = v558;
    _os_log_impl(&dword_1B0389000, v251, v252, "[%.*hhx-%{public}s] Server accepted compression.", v253, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v254);
    MEMORY[0x1B272C230](v254, -1, -1);
    MEMORY[0x1B272C230](v253, -1, -1);
  }

  else
  {
    sub_1B04479C4(v250, _s6LoggerVMa_0);

    sub_1B04479C4(v249, _s6LoggerVMa_0);
  }

  v429 = v567;
  *(v241 + 120) = v568;
  v430 = v570;
  *(v241 + 136) = v569;
  *(v241 + 152) = v430;
  *(v241 + 168) = v571;
  v431 = v563;
  *(v241 + 56) = v564;
  v432 = v566;
  *(v241 + 72) = v565;
  *(v241 + 88) = v432;
  *(v241 + 104) = v429;
  v433 = v562;
  *(v241 + 8) = v561;
  *(v241 + 24) = v433;
  *v241 = v242;
  *(v241 + 40) = v431;
  swift_storeEnumTagMultiPayload();
  return &unk_1F271B768;
}

uint64_t sub_1B0C36F00(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (!(v3 >> 62))
  {
    if (v4 >> 62)
    {
      return 0;
    }

    return sub_1B0C1BE5C(v3, a1[1], a1[2], v4, v5, v6);
  }

  if (v3 >> 62 == 1)
  {
    if (v4 >> 62 != 1)
    {
      return 0;
    }

    return sub_1B0C1BE5C(v3, a1[1], a1[2], v4, v5, v6);
  }

  return v4 >> 62 == 2 && v4 == 0x8000000000000000 && (v6 | v5) == 0;
}

uint64_t sub_1B0C36F70(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1B0E46298();
    v2 = 0xD000000000000020;
    v1 = 0x80000001B0F2D5D0;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1B0E46298();
    v1 = 0x80000001B0F2D5B0;
    v2 = 0xD000000000000010;
LABEL_5:
    MEMORY[0x1B2726E80](v2, v1);
    type metadata accessor for tls_protocol_version_t(0);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0x206574697573202CLL, 0xE800000000000000);
    type metadata accessor for tls_ciphersuite_t(0);
    sub_1B0E46508();
    return 0;
  }

  return 1701736302;
}

uint64_t sub_1B0C370C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_1B0C3198C(a2);
    v10[0] = result;
    v10[1] = v6;
    v10[2] = v7;
    v11 = v8;
    if (v6)
    {
      MEMORY[0x1EEE9AC00](result);
      v9[2] = v10;
      v3 = sub_1B0C32414(sub_1B0C10BD0, v9, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_1B0C371B0(a1, a2);
  }

  return result;
}

uint64_t sub_1B0C371B0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_1B0C38270(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_1B0C38238(v13, &v17);
    v14 = v17;
    MEMORY[0x1B272C230](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

uint64_t sub_1B0C37330(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1B0E46A78(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (((v4 ^ v2) & 0xFFFFFFFFFFFFC000) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = v5;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0C373C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  if ((a4 >> 6) <= 1u)
  {
    if (a4 >> 6)
    {
      if ((a8 & 0xC0) != 0x40)
      {
        return 0;
      }

      v9 = a8 & 0x3F;
      if ((a4 & 0x3F) != 0)
      {
        if ((a4 & 0x3F) == 1)
        {
          if (v9 != 1)
          {
            return 0;
          }
        }

        else if (v9 != 2)
        {
          return 0;
        }
      }

      else if ((a8 & 0x3F) != 0)
      {
        return 0;
      }
    }

    else
    {
      if (a8 > 0x3Fu)
      {
        return 0;
      }

      if (a3 > 1)
      {
        if (a3 == 2)
        {
          return a7 == 2;
        }

        if (a3 == 3)
        {
          return a7 == 3;
        }
      }

      else
      {
        if (!a3)
        {
          return !a7;
        }

        if (a3 == 1)
        {
          return a7 == 1;
        }
      }

      if (a7 < 4)
      {
        return 0;
      }
    }

    return (static ResponseText.__derived_struct_equals(_:_:)(a1, a2) & 1) != 0;
  }

  if (a4 >> 6 != 2)
  {
    v10 = a3 | a2;
    if (!(a3 | a2 | a1) && a4 == 192)
    {
      return a8 >= 0xC0u && !(a7 | a6 | a5) && a8 == 192;
    }

    if (a4 == 192 && a1 == 1 && !v10)
    {
      if (a8 != 192 || a5 != 1)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 2 && !v10)
    {
      if (a8 != 192 || a5 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 3 && !v10)
    {
      if (a8 != 192 || a5 != 3)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 4 && !v10)
    {
      if (a8 != 192 || a5 != 4)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 5 && !v10)
    {
      if (a8 != 192 || a5 != 5)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 6 && !v10)
    {
      if (a8 != 192 || a5 != 6)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 7 && !v10)
    {
      if (a8 != 192 || a5 != 7)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 8 && !v10)
    {
      if (a8 != 192 || a5 != 8)
      {
        return 0;
      }
    }

    else if (a8 != 192 || a5 != 9)
    {
      return 0;
    }

    return !(a7 | a6);
  }

  if ((a8 & 0xC0) != 0x80)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return sub_1B0E46A78();
}

uint64_t sub_1B0C376E8(uint64_t a1)
{
  if (*(a1 + 176) <= 6u)
  {
    return *(a1 + 176);
  }

  else
  {
    return (*a1 + 7);
  }
}

uint64_t sub_1B0C37700(uint64_t result, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
      return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }
  }

  else if (a4 >> 6)
  {
    return sub_1B0A91FD0(result, a2, a3, a4 & 0x3F);
  }

  else
  {
    return sub_1B0BD67B0(result, a2, a3);
  }

  return result;
}

void sub_1B0C37730(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v168[8] = *(a1 + 128);
  v168[9] = v4;
  v168[10] = *(a1 + 160);
  v169 = *(a1 + 176);
  v5 = *(a1 + 80);
  v168[4] = *(a1 + 64);
  v168[5] = v5;
  v6 = *(a1 + 112);
  v168[6] = *(a1 + 96);
  v168[7] = v6;
  v7 = *(a1 + 16);
  v168[0] = *a1;
  v168[1] = v7;
  v8 = *(a1 + 48);
  v168[2] = *(a1 + 32);
  v168[3] = v8;
  v9 = sub_1B0C376E8(v168);
  if (v9 > 5)
  {
    if (v9 == 6)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v168);
      v63 = *v62;
      v64 = *(v62 + 8);
      v65 = *(v62 + 16);
      v66 = *(v62 + 24);
      v67 = *(a2 + 144);
      v164 = *(a2 + 128);
      v165 = v67;
      v166 = *(a2 + 160);
      v167 = *(a2 + 176);
      v68 = *(a2 + 80);
      v160 = *(a2 + 64);
      v161 = v68;
      v69 = *(a2 + 112);
      v162 = *(a2 + 96);
      v163 = v69;
      v70 = *(a2 + 16);
      v156 = *a2;
      v157 = v70;
      v71 = *(a2 + 48);
      v158 = *(a2 + 32);
      v159 = v71;
      if (sub_1B0C376E8(&v156) == 6)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v156);
        sub_1B0C373C8(v63, v64, v65, v66, *v72, *(v72 + 8), *(v72 + 16), *(v72 + 24));
      }
    }

    else
    {
      v31 = *(a2 + 144);
      v164 = *(a2 + 128);
      v165 = v31;
      v166 = *(a2 + 160);
      v167 = *(a2 + 176);
      v32 = *(a2 + 80);
      v160 = *(a2 + 64);
      v161 = v32;
      v33 = *(a2 + 112);
      v162 = *(a2 + 96);
      v163 = v33;
      v34 = *(a2 + 16);
      v156 = *a2;
      v157 = v34;
      v35 = *(a2 + 48);
      v158 = *(a2 + 32);
      v159 = v35;
      sub_1B0C376E8(&v156);
    }
  }

  else if (v9 > 2)
  {
    if (v9 == 3)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v168);
      v141 = v73[7];
      v142 = v73[8];
      v143 = v73[9];
      v144 = v73[10];
      *&v137[32] = v73[3];
      v138 = v73[4];
      v139 = v73[5];
      v140 = v73[6];
      v136 = *v73;
      *v137 = v73[1];
      *&v137[16] = v73[2];
      v167 = *(a2 + 176);
      v74 = *(a2 + 160);
      v165 = *(a2 + 144);
      v166 = v74;
      v75 = *(a2 + 128);
      v163 = *(a2 + 112);
      v164 = v75;
      v76 = *(a2 + 96);
      v161 = *(a2 + 80);
      v162 = v76;
      v77 = *(a2 + 64);
      v159 = *(a2 + 48);
      v160 = v77;
      v78 = *(a2 + 32);
      v157 = *(a2 + 16);
      v158 = v78;
      v156 = *a2;
      if (sub_1B0C376E8(&v156) == 3)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v156);
        *&v152[32] = v79[7];
        v153 = v79[8];
        v154 = v79[9];
        v155 = v79[10];
        *&v150[32] = v79[3];
        v151 = v79[4];
        *v152 = v79[5];
        *&v152[16] = v79[6];
        v149 = *v79;
        *v150 = v79[1];
        *&v150[16] = v79[2];
        static ServerID.__derived_struct_equals(_:_:)(&v136, &v149);
      }
    }

    else if (v9 == 4)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v168);
      v173 = *v36;
      v37 = *(v36 + 2);
      v38 = *(v36 + 40);
      v170 = *(v36 + 24);
      v171 = v38;
      v172 = *(v36 + 7);
      v39 = *(a2 + 144);
      v164 = *(a2 + 128);
      v165 = v39;
      v166 = *(a2 + 160);
      v167 = *(a2 + 176);
      v40 = *(a2 + 80);
      v160 = *(a2 + 64);
      v161 = v40;
      v41 = *(a2 + 112);
      v162 = *(a2 + 96);
      v163 = v41;
      v42 = *(a2 + 48);
      v158 = *(a2 + 32);
      v159 = v42;
      v43 = *(a2 + 16);
      v156 = *a2;
      v157 = v43;
      if (sub_1B0C376E8(&v156) == 4)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v156);
        v148 = *v44;
        v45 = *(v44 + 2);
        v46 = *(v44 + 40);
        v145 = *(v44 + 24);
        v146 = v46;
        v147 = *(v44 + 7);
        if (v37)
        {
          if (v45)
          {
            v134 = v148;
            *v135 = v45;
            *&v135[8] = v145;
            *&v135[24] = v146;
            *&v135[40] = v147;
            v149 = v148;
            *v150 = *v135;
            *&v150[16] = *&v135[16];
            *&v150[32] = *&v135[32];
            v131 = v173;
            v133 = v172;
            *&v132[24] = v171;
            *&v132[8] = v170;
            *v132 = v37;
            sub_1B0C3A95C(a1, &v136);
            sub_1B0C3A95C(a2, &v136);
            static PushRegistrationInfo.__derived_struct_equals(_:_:)(&v131, &v149);
            sub_1B0398EFC(&v134, &qword_1EB6E59E8, &unk_1B0EDA810);
            v136 = v173;
            *&v137[8] = v170;
            *&v137[24] = v171;
            *v137 = v37;
            *&v137[40] = v172;
            sub_1B0398EFC(&v136, &qword_1EB6E59E8, &unk_1B0EDA810);
            return;
          }
        }

        else if (!v45)
        {
          v149 = v173;
          *&v150[8] = v170;
          *&v150[24] = v171;
          *v150 = 0;
          *&v150[40] = v172;
          sub_1B0C3A95C(a1, &v136);
          sub_1B0C3A95C(a2, &v136);
          sub_1B0398EFC(&v149, &qword_1EB6E59E8, &unk_1B0EDA810);
          return;
        }

        v149 = v173;
        *&v150[8] = v170;
        *&v150[24] = v171;
        v151 = v148;
        *&v152[24] = v146;
        *v150 = v37;
        *&v150[40] = v172;
        *v152 = v45;
        *&v152[40] = v147;
        *&v152[8] = v145;
        sub_1B0C3A95C(a1, &v136);
        sub_1B0C3A95C(a2, &v136);
        sub_1B0398EFC(&v149, &qword_1EB6E5A00, &unk_1B0EDBCF0);
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v168);
      v108 = *v107;
      v109 = *(v107 + 8);
      v110 = *(v107 + 16);
      v111 = *(v107 + 24);
      v112 = *(a2 + 144);
      v164 = *(a2 + 128);
      v165 = v112;
      v166 = *(a2 + 160);
      v167 = *(a2 + 176);
      v113 = *(a2 + 80);
      v160 = *(a2 + 64);
      v161 = v113;
      v114 = *(a2 + 112);
      v162 = *(a2 + 96);
      v163 = v114;
      v115 = *(a2 + 16);
      v156 = *a2;
      v157 = v115;
      v116 = *(a2 + 48);
      v158 = *(a2 + 32);
      v159 = v116;
      if (sub_1B0C376E8(&v156) == 5)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v156);
        static PushRegistrationResponse.__derived_struct_equals(_:_:)(v108, v109, v110, v111, *v117, *(v117 + 8), *(v117 + 16), *(v117 + 24));
      }
    }
  }

  else if (v9)
  {
    if (v9 != 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v168);
      v82 = *v80;
      v81 = v80[1];
      v128 = v80[2];
      v130 = v80[3];
      v83 = v80[4];
      v84 = v80[5];
      v85 = v80[6];
      v86 = v80[7];
      v88 = v80[8];
      v87 = v80[9];
      v124 = v80[10];
      v122 = v80[11];
      v126 = v80[12];
      v89 = *(a2 + 144);
      v164 = *(a2 + 128);
      v165 = v89;
      v166 = *(a2 + 160);
      v167 = *(a2 + 176);
      v90 = *(a2 + 112);
      v162 = *(a2 + 96);
      v163 = v90;
      v91 = *(a2 + 80);
      v160 = *(a2 + 64);
      v161 = v91;
      v92 = *(a2 + 48);
      v158 = *(a2 + 32);
      v159 = v92;
      v93 = *(a2 + 16);
      v156 = *a2;
      v157 = v93;
      if (sub_1B0C376E8(&v156) != 2)
      {
        return;
      }

      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v156);
      v95 = *v94;
      v96 = v94[1];
      v97 = v94[2];
      v98 = *(v94 + 3);
      v99 = v94[7];
      v100 = v94[10];
      v101 = v94[11];
      v102 = v94[12];
      if ((v86 & 0x1000000000000000) != 0)
      {
        v118 = *(v94 + 5);
        v119 = *(v94 + 4);
        *&v149 = v82;
        *(&v149 + 1) = v81;
        *v150 = v128;
        *&v150[8] = v130;
        *&v150[16] = v83;
        *&v150[24] = v84;
        *&v150[32] = v85;
        *&v150[40] = v86 & 0xEFFFFFFFFFFFFFFFLL;
        *&v151 = v88;
        *(&v151 + 1) = v87;
        if ((v99 & 0x1000000000000000) == 0)
        {
          return;
        }

        v104 = v100;
        v105 = v102;
        *&v136 = v95;
        *(&v136 + 1) = v96;
        *&v137[8] = v98;
        *&v137[24] = v118;
        *v137 = v97;
        *&v137[40] = v99 & 0xEFFFFFFFFFFFFFFFLL;
        v138 = v119;
        if ((sub_1B0C0FEBC(&v149, &v136) & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if ((v99 & 0x1000000000000000) != 0)
        {
          return;
        }

        v103 = v94[11];
        v104 = v94[10];
        v105 = v94[12];
        if (v82 != v95 || v81 != v96)
        {
          v120 = *(v94 + 3);
          v106 = sub_1B0E46A78();
          *&v98 = v120;
          if ((v106 & 1) == 0)
          {
            return;
          }
        }

        if ((v128 != v97 || v130 != v98) && (sub_1B0E46A78() & 1) == 0)
        {
          return;
        }
      }

      if (v126 && v105)
      {
        sub_1B04420D8(v104);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        static ResponseText.__derived_struct_equals(_:_:)(v124, v122);
        sub_1B0447F00(v104);
      }

      return;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v168);
    v11 = *v10;
    v127 = *(v10 + 1);
    v129 = *(v10 + 3);
    v12 = v10[5];
    v13 = v10[6];
    v14 = *(a2 + 48);
    v158 = *(a2 + 32);
    v159 = v14;
    v15 = *(a2 + 112);
    v162 = *(a2 + 96);
    v163 = v15;
    v16 = *(a2 + 80);
    v160 = *(a2 + 64);
    v161 = v16;
    v167 = *(a2 + 176);
    v17 = *(a2 + 160);
    v165 = *(a2 + 144);
    v166 = v17;
    v164 = *(a2 + 128);
    v18 = *(a2 + 16);
    v156 = *a2;
    v157 = v18;
    if (sub_1B0C376E8(&v156) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v156);
      v20 = *v19;
      v21 = *(v11 + 16);
      if (v21 == *(*v19 + 16))
      {
        v123 = *(v19 + 3);
        v125 = *(v19 + 1);
        v121 = *(v19 + 5);
        if (!v21 || v11 == v20)
        {
LABEL_12:
          v134 = v127;
          *v135 = v129;
          *&v135[16] = v12;
          *&v135[24] = v13;
          v131 = v125;
          *v132 = v123;
          *&v132[16] = v121;
          sub_1B0BEFCC8(&v134, &v131);
        }

        else
        {
          v22 = (v11 + 32);
          v23 = (v20 + 32);
          while (1)
          {
            v149 = *v22;
            v24 = v22[1];
            v25 = v22[2];
            v26 = v22[4];
            *&v150[32] = v22[3];
            v151 = v26;
            *v150 = v24;
            *&v150[16] = v25;
            v136 = *v23;
            v27 = v23[1];
            v28 = v23[2];
            v29 = v23[4];
            *&v137[32] = v23[3];
            v138 = v29;
            *v137 = v27;
            *&v137[16] = v28;
            sub_1B069506C(&v149, &v131);
            sub_1B069506C(&v136, &v131);
            v30 = static Credentials.__derived_enum_equals(_:_:)(&v149, &v136);
            sub_1B070BB30(&v136);
            sub_1B070BB30(&v149);
            if ((v30 & 1) == 0)
            {
              break;
            }

            v22 += 5;
            v23 += 5;
            if (!--v21)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v168);
    v48 = *v47;
    v49 = v47[1];
    v51 = v47[2];
    v50 = v47[3];
    v52 = *(a2 + 144);
    v164 = *(a2 + 128);
    v165 = v52;
    v166 = *(a2 + 160);
    v167 = *(a2 + 176);
    v53 = *(a2 + 80);
    v160 = *(a2 + 64);
    v161 = v53;
    v54 = *(a2 + 112);
    v162 = *(a2 + 96);
    v163 = v54;
    v55 = *(a2 + 16);
    v156 = *a2;
    v157 = v55;
    v56 = *(a2 + 48);
    v158 = *(a2 + 32);
    v159 = v56;
    if (!sub_1B0C376E8(&v156))
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(&v156);
      v58 = *v57;
      v59 = v57[1];
      v60 = v57[2];
      v61 = v57[3];
      if ((static ResponseText.__derived_struct_equals(_:_:)(v48, v49) & 1) != 0 && v50 && v61)
      {
        sub_1B044DA4C(v50, v61);
      }
    }
  }
}

uint64_t sub_1B0C381DC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 48) + 32 * result;
    result = *v4;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B0C38238@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0C38270(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B0C38270(uint64_t result, uint64_t a2, uint64_t a3)
{
  v27 = result;
  v26 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v29 = a2 + 32;
  v34 = a3 + 56;
  v28 = v4;
  while (2)
  {
    if (v3 == v4)
    {
      return 0;
    }

    v5 = v3;
    while (1)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

      v30 = v5 + 1;
      v6 = (v29 + 32 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      v11 = *(a3 + 40);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v33 = v10;
      v32 = v9;
      sub_1B0E46C68();
      if (!v10)
      {
        MEMORY[0x1B2728DB0](v9 >> 14);
      }

      v12 = sub_1B0E46CB8();
      v13 = -1 << *(a3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v34 + 8 * (v14 >> 6))) == 0)
      {
LABEL_4:

        goto LABEL_5;
      }

      v17 = ~v13;
      v18 = *(a3 + 48);
      while (1)
      {
        v20 = v18 + 32 * v14;
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *v20 == v8 && *(v20 + 8) == v7;
        if (!v23 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_15;
        }

        if ((v22 & 1) == 0)
        {
          break;
        }

        if (v33)
        {
          goto LABEL_23;
        }

LABEL_15:
        v14 = (v14 + 1) & v17;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if ((*(v34 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_4;
        }
      }

      v19 = v33;
      if (((v21 ^ v32) & 0xFFFFFFFFFFFFC000) != 0)
      {
        v19 = 1;
      }

      if (v19)
      {
        goto LABEL_15;
      }

LABEL_23:

      v24 = *(v27 + 8 * v15);
      *(v27 + 8 * v15) = v24 | v16;
      if ((v24 & v16) == 0)
      {
        break;
      }

LABEL_5:
      v5 = v30;
      v4 = v28;
      if (v30 == v28)
      {
        return 0;
      }
    }

    v25 = v26 + 1;
    v3 = v30;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_31;
    }

    ++v26;
    v23 = v25 == *(a3 + 16);
    v4 = v28;
    result = 1;
    if (!v23)
    {
      continue;
    }

    return result;
  }
}

unint64_t sub_1B0C384B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v271 = a5;
  v272 = a4;
  v295 = a3;
  v292 = a2;
  v291 = type metadata accessor for UnauthenticatedState();
  v6 = *(v291[-1].isa + 8);
  MEMORY[0x1EEE9AC00](v291);
  v287 = &v268 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = _s6LoggerVMa_0();
  v8 = *(*(v288 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v288);
  v283 = &v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v284 = &v268 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v290 = &v268 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v289 = &v268 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v268 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v268 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v273 = &v268 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v274 = &v268 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v269 = &v268 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v270 = &v268 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v278 = &v268 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v280 = &v268 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v277 = &v268 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v279 = &v268 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v275 = &v268 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v276 = &v268 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v285 = &v268 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v286 = &v268 - v45;
  v46 = type metadata accessor for UntaggedResponse(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v281 = &v268 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = (&v268 - v51);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = (&v268 - v54);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = (&v268 - v57);
  MEMORY[0x1EEE9AC00](v56);
  v60 = (&v268 - v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59F8, &unk_1B0EDA830);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x1EEE9AC00](v61 - 8);
  v65 = &v268 - v64;
  v66 = *(v63 + 56);
  v282 = a1;
  sub_1B0433BE8(a1, &v268 - v64, type metadata accessor for UntaggedResponse);
  v293 = v66;
  sub_1B0433BE8(v295, &v65[v66], type metadata accessor for UnauthenticatedState);
  v294 = v65;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v68 = v294;
        if (EnumCaseMultiPayload == 4)
        {
          sub_1B0433BE8(v294, v52, type metadata accessor for UntaggedResponse);
          v70 = *v52;
          v69 = v52[1];
          v71 = v52[2];
          v72 = v292;
          v73 = v286;
          sub_1B0433BE8(v292, v286, _s6LoggerVMa_0);
          v74 = v285;
          sub_1B0433BE8(v72, v285, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B04420D8(v70);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v75 = sub_1B0E43988();
          v76 = sub_1B0E458E8();
          sub_1B0447F00(v70);

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v292 = swift_slowAlloc();
            *&v296 = v292;
            *v77 = 68158466;
            *(v77 + 4) = 2;
            *(v77 + 8) = 256;
            v78 = v74;
            v79 = v288;
            v80 = *(v78 + *(v288 + 20));
            sub_1B04479C4(v78, _s6LoggerVMa_0);
            *(v77 + 10) = v80;
            *(v77 + 11) = 2082;
            v81 = v73;
            v82 = *(v73 + *(v79 + 20) + 4);
            sub_1B04479C4(v81, _s6LoggerVMa_0);
            v83 = ConnectionID.debugDescription.getter(v82);
            v85 = sub_1B0399D64(v83, v84, &v296);

            *(v77 + 13) = v85;
            *(v77 + 21) = 2082;
            v86 = ResponseText.debugDescription.getter(v70, v69, v71);
            v88 = sub_1B0399D64(v86, v87, &v296);

            *(v77 + 23) = v88;
            _os_log_impl(&dword_1B0389000, v75, v76, "[%.*hhx-%{public}s] Server sent BYE: %{public}s", v77, 0x1Fu);
            v89 = v292;
            swift_arrayDestroy();
            v68 = v294;
            MEMORY[0x1B272C230](v89, -1, -1);
            MEMORY[0x1B272C230](v77, -1, -1);
          }

          else
          {
            sub_1B04479C4(v74, _s6LoggerVMa_0);

            sub_1B04479C4(v73, _s6LoggerVMa_0);
          }

          v169 = v287;
          v170 = v295;
          sub_1B0C3A6F0(v295, v287, type metadata accessor for UnauthenticatedState);
          if (swift_getEnumCaseMultiPayload() != 15)
          {
            sub_1B04479C4(v169, type metadata accessor for UnauthenticatedState);
          }

          v171 = sub_1B0BCE634(v70);
          if (v173 == 4)
          {
            v171 = 0;
            v172 = 0;
            v173 = 0;
            v174 = -64;
          }

          else
          {
            v174 = 0;
          }

          *v170 = v171;
          *(v170 + 8) = v172;
          *(v170 + 16) = v173;
          *(v170 + 24) = v174;
          swift_storeEnumTagMultiPayload();
          goto LABEL_43;
        }

LABEL_71:
        v228 = v292;
        v229 = v284;
        sub_1B0433BE8(v292, v284, _s6LoggerVMa_0);
        v230 = v283;
        sub_1B0433BE8(v228, v283, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v231 = v281;
        sub_1B0433BE8(v282, v281, type metadata accessor for UntaggedResponse);
        v232 = sub_1B0E43988();
        v233 = sub_1B0E458E8();
        if (os_log_type_enabled(v232, v233))
        {
          v234 = swift_slowAlloc();
          v295 = swift_slowAlloc();
          *&v296 = v295;
          *v234 = 68158466;
          *(v234 + 4) = 2;
          *(v234 + 8) = 256;
          v235 = v288;
          v236 = *(v230 + *(v288 + 20));
          sub_1B04479C4(v230, _s6LoggerVMa_0);
          *(v234 + 10) = v236;
          *(v234 + 11) = 2082;
          v237 = *(v229 + *(v235 + 20) + 4);
          sub_1B04479C4(v229, _s6LoggerVMa_0);
          v238 = ConnectionID.debugDescription.getter(v237);
          v240 = sub_1B0399D64(v238, v239, &v296);

          *(v234 + 13) = v240;
          *(v234 + 21) = 2080;
          v241 = UntaggedResponse.name.getter();
          v243 = v242;
          sub_1B04479C4(v231, type metadata accessor for UntaggedResponse);
          v244 = sub_1B0399D64(v241, v243, &v296);

          *(v234 + 23) = v244;
          _os_log_impl(&dword_1B0389000, v232, v233, "[%.*hhx-%{public}s] Ignoring unexpected %s.", v234, 0x1Fu);
          v245 = v295;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v245, -1, -1);
          MEMORY[0x1B272C230](v234, -1, -1);
        }

        else
        {
          sub_1B04479C4(v230, _s6LoggerVMa_0);

          sub_1B04479C4(v231, type metadata accessor for UntaggedResponse);
          sub_1B04479C4(v229, _s6LoggerVMa_0);
        }

        sub_1B0398EFC(v68, &qword_1EB6E59F8, &unk_1B0EDA830);
        return 0xFFFFFFFF00000000;
      }

      v117 = v295;
      sub_1B04479C4(v295, type metadata accessor for UnauthenticatedState);
      sub_1B0433BE8(v294, v60, type metadata accessor for UntaggedResponse);
      v118 = *v60;
      v119 = v60[2];
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_1B0447F00(v118);

        v178 = v292;
        v179 = v279;
        sub_1B0433BE8(v292, v279, _s6LoggerVMa_0);
        v180 = v277;
        sub_1B0433BE8(v178, v277, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v181 = sub_1B0E43988();
        v182 = sub_1B0E458E8();
        if (os_log_type_enabled(v181, v182))
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          *&v296 = v184;
          *v183 = 68158210;
          *(v183 + 4) = 2;
          *(v183 + 8) = 256;
          v185 = v288;
          v186 = *(v180 + *(v288 + 20));
          sub_1B04479C4(v180, _s6LoggerVMa_0);
          *(v183 + 10) = v186;
          *(v183 + 11) = 2082;
          v187 = *(v179 + *(v185 + 20) + 4);
          sub_1B04479C4(v179, _s6LoggerVMa_0);
          v188 = ConnectionID.debugDescription.getter(v187);
          v190 = sub_1B0399D64(v188, v189, &v296);

          *(v183 + 13) = v190;
          _os_log_impl(&dword_1B0389000, v181, v182, "[%.*hhx-%{public}s] Received unexpected PREAUTH greeting from server.", v183, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v184);
          MEMORY[0x1B272C230](v184, -1, -1);
          MEMORY[0x1B272C230](v183, -1, -1);
        }

        else
        {
          sub_1B04479C4(v180, _s6LoggerVMa_0);

          sub_1B04479C4(v179, _s6LoggerVMa_0);
        }

        v208 = v293;
        v207 = v294;
        *(v117 + 8) = 0;
        *(v117 + 16) = 0;
        *v117 = 3;
        *(v117 + 24) = -64;
        swift_storeEnumTagMultiPayload();
        sub_1B04479C4(v207 + v208, type metadata accessor for UnauthenticatedState);
        v176 = v207;
        goto LABEL_46;
      }

      v120 = v292;
      v121 = v276;
      sub_1B0433BE8(v292, v276, _s6LoggerVMa_0);
      v122 = v275;
      sub_1B0433BE8(v120, v275, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v123 = sub_1B0E43988();
      v124 = sub_1B0E458D8();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *&v296 = v126;
        *v125 = 68158210;
        *(v125 + 4) = 2;
        *(v125 + 8) = 256;
        v127 = v288;
        v128 = v122;
        v129 = *(v122 + *(v288 + 20));
        sub_1B04479C4(v128, _s6LoggerVMa_0);
        *(v125 + 10) = v129;
        *(v125 + 11) = 2082;
        v130 = v121;
        v131 = *(v121 + *(v127 + 20) + 4);
        v117 = v295;
        sub_1B04479C4(v130, _s6LoggerVMa_0);
        v132 = ConnectionID.debugDescription.getter(v131);
        v134 = sub_1B0399D64(v132, v133, &v296);

        *(v125 + 13) = v134;
        _os_log_impl(&dword_1B0389000, v123, v124, "[%.*hhx-%{public}s] Received PREAUTH greeting from server. Requesting credentials.", v125, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v126);
        MEMORY[0x1B272C230](v126, -1, -1);
        MEMORY[0x1B272C230](v125, -1, -1);
      }

      else
      {
        sub_1B04479C4(v122, _s6LoggerVMa_0);

        sub_1B04479C4(v121, _s6LoggerVMa_0);
      }

      v205 = ~v118 & 0xF000000000000007;

      v206 = v294;
      if (v205)
      {
        if (((v118 >> 59) & 0x1E | (v118 >> 2) & 1) == 1)
        {
          v205 = *((v118 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0447F00(v118);
        }

        else
        {
          sub_1B0447F00(v118);
          v205 = 0;
        }
      }

      *v117 = v205;
      swift_storeEnumTagMultiPayload();
      sub_1B04479C4(v206, type metadata accessor for UntaggedResponse);
      return 0x8000000000000001;
    }

    else
    {
      v68 = v294;
      sub_1B0433BE8(v294, v58, type metadata accessor for UntaggedResponse);
      v93 = *v58;
      v94 = v58[2];
      v95 = v293;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_1B0447F00(v93);

        v156 = v292;
        v157 = v280;
        sub_1B0433BE8(v292, v280, _s6LoggerVMa_0);
        v158 = v278;
        sub_1B0433BE8(v156, v278, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v159 = sub_1B0E43988();
        v160 = sub_1B0E458D8();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          *&v296 = v162;
          *v161 = 68158210;
          *(v161 + 4) = 2;
          *(v161 + 8) = 256;
          v163 = v288;
          v164 = *(v158 + *(v288 + 20));
          sub_1B04479C4(v158, _s6LoggerVMa_0);
          *(v161 + 10) = v164;
          *(v161 + 11) = 2082;
          v165 = *(v157 + *(v163 + 20) + 4);
          sub_1B04479C4(v157, _s6LoggerVMa_0);
          v166 = ConnectionID.debugDescription.getter(v165);
          v168 = sub_1B0399D64(v166, v167, &v296);
          v95 = v293;

          *(v161 + 13) = v168;
          _os_log_impl(&dword_1B0389000, v159, v160, "[%.*hhx-%{public}s] Untagged OK from server.", v161, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v162);
          MEMORY[0x1B272C230](v162, -1, -1);
          MEMORY[0x1B272C230](v161, -1, -1);
        }

        else
        {
          sub_1B04479C4(v158, _s6LoggerVMa_0);

          sub_1B04479C4(v157, _s6LoggerVMa_0);
        }

        v175 = v68 + v95;
        goto LABEL_44;
      }

      v96 = v292;
      if ((~v93 & 0xF000000000000007) == 0 || ((v93 >> 59) & 0x1E | (v93 >> 2) & 1) != 1)
      {
        sub_1B04479C4(v295, type metadata accessor for UnauthenticatedState);
        v191 = v274;
        sub_1B0433BE8(v96, v274, _s6LoggerVMa_0);
        v192 = v273;
        sub_1B0433BE8(v96, v273, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v193 = sub_1B0E43988();
        v194 = sub_1B0E458D8();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v293 = v93;
          v197 = v196;
          *&v296 = v196;
          *v195 = 68158210;
          *(v195 + 4) = 2;
          *(v195 + 8) = 256;
          v292 = v94;
          v198 = v288;
          v199 = v192;
          v200 = *(v192 + *(v288 + 20));
          sub_1B04479C4(v199, _s6LoggerVMa_0);
          *(v195 + 10) = v200;
          *(v195 + 11) = 2082;
          v201 = *(v191 + *(v198 + 20) + 4);
          sub_1B04479C4(v191, _s6LoggerVMa_0);
          v202 = ConnectionID.debugDescription.getter(v201);
          v204 = sub_1B0399D64(v202, v203, &v296);

          *(v195 + 13) = v204;
          _os_log_impl(&dword_1B0389000, v193, v194, "[%.*hhx-%{public}s] Received OK greeting from server.", v195, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v197);
          MEMORY[0x1B272C230](v197, -1, -1);
          MEMORY[0x1B272C230](v195, -1, -1);

          sub_1B0447F00(v293);
        }

        else
        {
          sub_1B04479C4(v192, _s6LoggerVMa_0);
          sub_1B0447F00(v93);

          sub_1B04479C4(v191, _s6LoggerVMa_0);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      v97 = *((v93 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v98 = v270;
      sub_1B0433BE8(v292, v270, _s6LoggerVMa_0);
      v99 = v269;
      sub_1B0433BE8(v96, v269, _s6LoggerVMa_0);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v100 = sub_1B0E43988();
      v101 = sub_1B0E458D8();

      if (os_log_type_enabled(v100, v101))
      {
        LODWORD(v289) = v101;
        v291 = v100;
        v102 = swift_slowAlloc();
        v287 = swift_slowAlloc();
        *&v296 = v287;
        *v102 = 68158466;
        *(v102 + 4) = 2;
        *(v102 + 8) = 256;
        v103 = v288;
        v104 = *(v99 + *(v288 + 20));
        sub_1B04479C4(v99, _s6LoggerVMa_0);
        *(v102 + 10) = v104;
        *(v102 + 11) = 2082;
        v105 = *(v98 + *(v103 + 20) + 4);
        sub_1B04479C4(v98, _s6LoggerVMa_0);
        v106 = ConnectionID.debugDescription.getter(v105);
        v108 = sub_1B0399D64(v106, v107, &v296);

        *(v102 + 13) = v108;
        v290 = v102;
        *(v102 + 21) = 2080;
        v109 = *(v97 + 16);
        v110 = MEMORY[0x1E69E7CC0];
        v293 = v97;
        if (v109)
        {
          *&v302 = MEMORY[0x1E69E7CC0];
          sub_1B041D32C(0, v109, 0);
          v110 = v302;
          v111 = (v97 + 40);
          do
          {
            v112 = *(v111 - 1);
            v113 = *v111;
            *&v302 = v110;
            v115 = *(v110 + 16);
            v114 = *(v110 + 24);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v115 >= v114 >> 1)
            {
              sub_1B041D32C((v114 > 1), v115 + 1, 1);
              v110 = v302;
            }

            *(v110 + 16) = v115 + 1;
            v116 = v110 + 16 * v115;
            *(v116 + 32) = v112;
            *(v116 + 40) = v113;
            v111 += 4;
            --v109;
          }

          while (v109);
        }

        *&v302 = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
        v248 = sub_1B0E448E8();
        v250 = v249;

        v251 = sub_1B0399D64(v248, v250, &v296);

        v252 = v290;
        *(v290 + 23) = v251;
        v253 = v291;
        _os_log_impl(&dword_1B0389000, v291, v289, "[%.*hhx-%{public}s] Received OK greeting with capabilities from server: %s.", v252, 0x1Fu);
        v254 = v287;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v254, -1, -1);
        MEMORY[0x1B272C230](v252, -1, -1);

        v68 = v294;
        v96 = v292;
        v97 = v293;
      }

      else
      {
        sub_1B04479C4(v99, _s6LoggerVMa_0);

        v247 = sub_1B04479C4(v98, _s6LoggerVMa_0);
      }

      v272(&v296, v247);
      v255 = sub_1B0449908(v97, &v296, v96);
      v302 = v296;
      v303 = v297;
      sub_1B044A66C(&v302);
      v300 = v298;
      v301 = v299;
      sub_1B044A6B4(&v300);

      sub_1B0447F00(v93);

      sub_1B04479C4(v68, type metadata accessor for UntaggedResponse);
      return v255;
    }
  }

  v90 = v19;
  v91 = v289;
  v92 = v290;
  v68 = v294;
  if ((EnumCaseMultiPayload - 21) < 2)
  {
LABEL_43:
    v175 = v68 + v293;
LABEL_44:
    sub_1B04479C4(v175, type metadata accessor for UnauthenticatedState);
LABEL_45:
    v176 = v68;
LABEL_46:
    sub_1B04479C4(v176, type metadata accessor for UntaggedResponse);
    return 0xFFFFFFFF00000000;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_71;
    }

    goto LABEL_43;
  }

  sub_1B0433BE8(v294, v55, type metadata accessor for UntaggedResponse);
  v135 = *v55;
  v136 = v293;
  v137 = swift_getEnumCaseMultiPayload();
  switch(v137)
  {
    case 2:

      v175 = v68 + v136;
      goto LABEL_44;
    case 12:
      v209 = v292;
      sub_1B0433BE8(v292, v22, _s6LoggerVMa_0);
      v210 = v90;
      sub_1B0433BE8(v209, v90, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v211 = sub_1B0E43988();
      v212 = sub_1B0E45908();

      if (os_log_type_enabled(v211, v212))
      {
        LODWORD(v293) = v212;
        v213 = swift_slowAlloc();
        v291 = swift_slowAlloc();
        *&v296 = v291;
        *v213 = 68158466;
        *(v213 + 4) = 2;
        *(v213 + 8) = 256;
        v214 = v288;
        v215 = *(v210 + *(v288 + 20));
        sub_1B04479C4(v210, _s6LoggerVMa_0);
        *(v213 + 10) = v215;
        *(v213 + 11) = 2082;
        v216 = *&v22[*(v214 + 20) + 4];
        sub_1B04479C4(v22, _s6LoggerVMa_0);
        v217 = ConnectionID.debugDescription.getter(v216);
        v219 = sub_1B0399D64(v217, v218, &v296);

        *(v213 + 13) = v219;
        *(v213 + 21) = 2082;
        v220 = *(v135 + 16);
        v221 = MEMORY[0x1E69E7CC0];
        if (v220)
        {
          v290 = v211;
          *&v302 = MEMORY[0x1E69E7CC0];
          sub_1B041D32C(0, v220, 0);
          v221 = v302;
          v222 = (v135 + 40);
          do
          {
            v223 = *(v222 - 1);
            v224 = *v222;
            *&v302 = v221;
            v226 = *(v221 + 16);
            v225 = *(v221 + 24);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v226 >= v225 >> 1)
            {
              sub_1B041D32C((v225 > 1), v226 + 1, 1);
              v221 = v302;
            }

            *(v221 + 16) = v226 + 1;
            v227 = v221 + 16 * v226;
            *(v227 + 32) = v223;
            *(v227 + 40) = v224;
            v222 += 4;
            --v220;
          }

          while (v220);
          v211 = v290;
        }

        *&v302 = v221;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
        v256 = sub_1B0E448E8();
        v258 = v257;

        v259 = sub_1B0399D64(v256, v258, &v296);

        *(v213 + 23) = v259;
        _os_log_impl(&dword_1B0389000, v211, v293, "[%.*hhx-%{public}s] Got pre-auth capabilities: %{public}s.", v213, 0x1Fu);
        v260 = v291;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v260, -1, -1);
        MEMORY[0x1B272C230](v213, -1, -1);

        v68 = v294;
        v209 = v292;
      }

      else
      {
        sub_1B04479C4(v90, _s6LoggerVMa_0);

        v246 = sub_1B04479C4(v22, _s6LoggerVMa_0);
      }

      v272(&v296, v246);
      v261 = sub_1B0449908(v135, &v296, v209);
      v302 = v296;
      v303 = v297;
      sub_1B044A66C(&v302);
      v300 = v298;
      v301 = v299;
      sub_1B044A6B4(&v300);

      sub_1B04479C4(v68, type metadata accessor for UntaggedResponse);
      return v261;
    case 15:
      v138 = v292;
      sub_1B0433BE8(v292, v91, _s6LoggerVMa_0);
      sub_1B0433BE8(v138, v92, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v139 = sub_1B0E43988();
      v140 = sub_1B0E45908();

      if (os_log_type_enabled(v139, v140))
      {
        LODWORD(v293) = v140;
        v141 = swift_slowAlloc();
        v291 = swift_slowAlloc();
        *&v296 = v291;
        *v141 = 68158466;
        *(v141 + 4) = 2;
        *(v141 + 8) = 256;
        v142 = v288;
        v143 = *(v92 + *(v288 + 20));
        sub_1B04479C4(v92, _s6LoggerVMa_0);
        *(v141 + 10) = v143;
        *(v141 + 11) = 2082;
        v144 = *(v91 + *(v142 + 20) + 4);
        sub_1B04479C4(v91, _s6LoggerVMa_0);
        v145 = ConnectionID.debugDescription.getter(v144);
        v147 = sub_1B0399D64(v145, v146, &v296);

        *(v141 + 13) = v147;
        *(v141 + 21) = 2082;
        v148 = *(v135 + 16);
        v149 = MEMORY[0x1E69E7CC0];
        if (v148)
        {
          v290 = v139;
          *&v302 = MEMORY[0x1E69E7CC0];
          sub_1B041D32C(0, v148, 0);
          v149 = v302;
          v150 = (v135 + 40);
          do
          {
            v151 = *(v150 - 1);
            v152 = *v150;
            *&v302 = v149;
            v153 = *(v149 + 16);
            v154 = *(v149 + 24);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v153 >= v154 >> 1)
            {
              sub_1B041D32C((v154 > 1), v153 + 1, 1);
              v149 = v302;
            }

            *(v149 + 16) = v153 + 1;
            v155 = v149 + 16 * v153;
            *(v155 + 32) = v151;
            *(v155 + 40) = v152;
            v150 += 4;
            --v148;
          }

          while (v148);
          v139 = v290;
        }

        *&v302 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
        v262 = sub_1B0E448E8();
        v264 = v263;

        v265 = sub_1B0399D64(v262, v264, &v296);

        *(v141 + 23) = v265;
        _os_log_impl(&dword_1B0389000, v139, v293, "[%.*hhx-%{public}s] Got post-auth capabilities: %{public}s.", v141, 0x1Fu);
        v266 = v291;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v266, -1, -1);
        MEMORY[0x1B272C230](v141, -1, -1);

        v68 = v294;
        v138 = v292;
      }

      else
      {
        sub_1B04479C4(v92, _s6LoggerVMa_0);

        sub_1B04479C4(v91, _s6LoggerVMa_0);
      }

      v267 = sub_1B0C32E28(v135, v138);

      sub_1B04479C4(v68, type metadata accessor for UntaggedResponse);
      return v267;
    default:

      goto LABEL_71;
  }
}

unint64_t sub_1B0C3A488(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for UntaggedResponse(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UnauthenticatedState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0xFFFFFFFF00000000;
  if (((1 << (a1 >> 60)) & 0x1F5) == 0)
  {
    if (a1 >> 60 != 1)
    {
      v22 = swift_projectBox();
      sub_1B0433BE8(v22, v13, type metadata accessor for UntaggedResponse);
      v23 = sub_1B0C384B8(v13, a2, a3, a4, a5);
      sub_1B04479C4(v13, type metadata accessor for UntaggedResponse);
      return v23;
    }

    sub_1B0C3A6F0(a3, v17, type metadata accessor for UnauthenticatedState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 10)
    {
      if ((EnumCaseMultiPayload - 11) < 4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 3) < 8 || EnumCaseMultiPayload < 2)
      {
        sub_1B04479C4(v17, type metadata accessor for UnauthenticatedState);
LABEL_12:
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = 1;
        *(a3 + 24) = -64;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        return 0xFFFFFFFF00000000;
      }

      sub_1B04479C4(v17, type metadata accessor for UnauthenticatedState);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *(a3 + 24) = 0;
    goto LABEL_13;
  }

  return v18;
}

uint64_t sub_1B0C3A6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection20UnauthenticatedStateO6UpdateO(uint64_t a1)
{
  if ((*(a1 + 176) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 176) & 7;
  }
}

uint64_t sub_1B0C3A774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 177))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 176);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C3A7BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C3A830(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    LOBYTE(a2) = 7;
    *(result + 168) = 0;
  }

  *(result + 176) = a2;
  return result;
}

uint64_t sub_1B0C3A888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C3A8D8(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 2) << 32;
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

unint64_t *sub_1B0C3A924(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0C3A99C(uint64_t a1, unint64_t a2, char a3, void (*a4)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = v7;
  sub_1B0BD30C8(a1, a2, a3 & 1);
  sub_1B0C3BC64(v6, a1, a2, a3 & 1, &v38);
  if (!v7)
  {
    v53 = 0;
    v8 = v38;
    v24[8] = v47;
    v24[9] = v48;
    v24[10] = v49;
    v25 = v50;
    v24[4] = v43;
    v24[5] = v44;
    v24[6] = v45;
    v24[7] = v46;
    v24[0] = v39;
    v24[1] = v40;
    v24[2] = v41;
    v24[3] = v42;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    if (sub_1B0C3C354(&v26) != 1)
    {
      v22 = v8;
      v51[8] = v34;
      v51[9] = v35;
      v51[10] = v36;
      v52 = v37;
      v51[4] = v30;
      v51[5] = v31;
      v51[6] = v32;
      v51[7] = v33;
      v51[0] = v26;
      v51[1] = v27;
      v51[2] = v28;
      v51[3] = v29;
      v14 = v6 + *(type metadata accessor for UnauthenticatedStateWithTasks() + 24);
      v23 = sub_1B0C33814(v51, a6);
      v15 = *(v23 + 2);
      if (v15)
      {
        v16 = v23 + 7;
        do
        {
          v17 = *(v16 - 3);
          v18 = *(v16 - 2);
          v19 = *(v16 - 1);
          v20 = *v16;
          sub_1B0BE2C30(v17);
          a4(v17, v18, v19, v20);
          sub_1B044B428(v17);
          v16 += 4;
          --v15;
        }

        while (v15);
      }

      sub_1B0398EFC(v24, &qword_1EB6E5A08, &unk_1B0EDBD58);
      return v22;
    }
  }

  return v8;
}

uint64_t sub_1B0C3ABE0(unint64_t *a1, uint64_t a2)
{
  v133 = _s6LoggerVMa_0();
  v5 = *(*(v133 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v133);
  v8 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v119 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v129 = (&v119 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v122 = &v119 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v126 = (&v119 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v127 = &v119 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v128 = (&v119 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v123 = &v119 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v124 = &v119 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v125 = (&v119 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v119 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v119 - v31;
  v33 = type metadata accessor for UnauthenticatedState();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v2 + *(type metadata accessor for UnauthenticatedStateWithTasks() + 24);
  sub_1B044D768(v131, v36, type metadata accessor for UnauthenticatedState);
  v132 = v33;
  LODWORD(v33) = swift_getEnumCaseMultiPayload();
  sub_1B044D830(v36, type metadata accessor for UnauthenticatedState);
  if (v33 == 14)
  {
    v130 = a2;
    v37 = *a1;
    v38 = a1[1];
    v39 = a1[2];
    v40 = *a1 >> 62;
    v41 = a1;
    if (v40)
    {
      if (v40 != 1)
      {
        v89 = v130;
        sub_1B044D768(v130, v32, _s6LoggerVMa_0);
        sub_1B044D768(v89, v30, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v90 = sub_1B0E43988();
        v91 = sub_1B0E458F8();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v134 = v93;
          *v92 = 68158210;
          *(v92 + 4) = 2;
          *(v92 + 8) = 256;
          v94 = v133;
          v95 = v30[*(v133 + 20)];
          sub_1B044D830(v30, _s6LoggerVMa_0);
          *(v92 + 10) = v95;
          *(v92 + 11) = 2082;
          v96 = *&v32[*(v94 + 20) + 4];
          sub_1B044D830(v32, _s6LoggerVMa_0);
          v97 = ConnectionID.debugDescription.getter(v96);
          v99 = sub_1B0399D64(v97, v98, &v134);

          *(v92 + 13) = v99;
          _os_log_impl(&dword_1B0389000, v90, v91, "[%.*hhx-%{public}s] We ran STARTTLS, but the connection is not using TLS.", v92, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v93);
          MEMORY[0x1B272C230](v93, -1, -1);
          MEMORY[0x1B272C230](v92, -1, -1);
        }

        else
        {
          sub_1B044D830(v30, _s6LoggerVMa_0);

          sub_1B044D830(v32, _s6LoggerVMa_0);
        }

        v105 = v131;
        sub_1B044D830(v131, type metadata accessor for UnauthenticatedState);
        v106 = 4;
        goto LABEL_41;
      }

      LODWORD(v128) = *a1;
      v42 = v130;
      v43 = v127;
      sub_1B044D768(v130, v127, _s6LoggerVMa_0);
      v44 = v126;
      sub_1B044D768(v42, v126, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B044A64C(v37);
      sub_1B044A64C(v37);
      sub_1B044A64C(v37);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v45 = sub_1B0E43988();
      v46 = sub_1B0E45908();
      v125 = v45;
      if (os_log_type_enabled(v45, v46))
      {
        v120 = v37 >> 16;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v124 = v41;
        v121 = v48;
        v134 = v48;
        *v47 = 68158722;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v49 = v133;
        v50 = *(v133 + 20);
        v123 = v38;
        v51 = *(&v44->isa + v50);
        sub_1B044D830(v44, _s6LoggerVMa_0);
        *(v47 + 10) = v51;
        *(v47 + 11) = 2082;
        v52 = v128;
        v53 = *(v43 + *(v49 + 20) + 4);
        sub_1B044D830(v43, _s6LoggerVMa_0);
        v54 = ConnectionID.debugDescription.getter(v53);
        v56 = sub_1B0399D64(v54, v55, &v134);

        *(v47 + 13) = v56;
        v38 = v123;
        *(v47 + 21) = 512;
        sub_1B044A65C(v37);
        *(v47 + 23) = v52;
        sub_1B044A65C(v37);
        *(v47 + 25) = 512;
        sub_1B044A65C(v37);
        *(v47 + 27) = v120;
        sub_1B044A65C(v37);
        v57 = v46;
        v58 = v125;
        _os_log_impl(&dword_1B0389000, v125, v57, "[%.*hhx-%{public}s] STARTTLS completed: %hu / %hu", v47, 0x1Du);
        v59 = v121;
        __swift_destroy_boxed_opaque_existential_0Tm(v121);
        v41 = v124;
        MEMORY[0x1B272C230](v59, -1, -1);
        v60 = v47;
        v42 = v130;
        MEMORY[0x1B272C230](v60, -1, -1);
      }

      else
      {
        sub_1B044A65C(v37);
        sub_1B044A65C(v37);
        sub_1B044D830(v44, _s6LoggerVMa_0);
        sub_1B044A65C(v37);
        sub_1B044A65C(v37);

        sub_1B044D830(v43, _s6LoggerVMa_0);
      }

      v100 = *(v41 + 24);
      v101 = *(v41 + 40);
      v102 = v129;
      if (v101)
      {
        if (v101 != 1)
        {
          if (v100 == 1)
          {
            if (v128 != 772)
            {
              goto LABEL_36;
            }
          }

          else if ((v128 - 773) < 0xFFFFFFFE)
          {
LABEL_36:
            v103 = v42;
            v104 = v122;
            goto LABEL_37;
          }

          if (!v39 || (*(v41 + 32) != v38 || v101 != v39) && (sub_1B0E46A78() & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else if (v100 == 1)
      {
        if (v128 != 772)
        {
          goto LABEL_36;
        }
      }

      else if ((v128 - 771) >= 2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v42 = v130;
      v72 = v125;
      sub_1B044D768(v130, v125, _s6LoggerVMa_0);
      v73 = v124;
      sub_1B044D768(v42, v124, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B044A64C(v37);
      sub_1B044A64C(v37);
      sub_1B044A64C(v37);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v74 = sub_1B0E43988();
      v75 = sub_1B0E45908();
      if (os_log_type_enabled(v74, v75))
      {
        v127 = v37 >> 16;
        v76 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v134 = v129;
        *v76 = 68158722;
        *(v76 + 4) = 2;
        *(v76 + 8) = 256;
        v126 = v74;
        v77 = v133;
        v78 = *(v133 + 20);
        LODWORD(v122) = v75;
        v79 = *(v73 + v78);
        sub_1B044D830(v73, _s6LoggerVMa_0);
        *(v76 + 10) = v79;
        *(v76 + 11) = 2082;
        v80 = v72;
        v81 = *(&v72->isa + *(v77 + 20) + 4);
        sub_1B044D830(v80, _s6LoggerVMa_0);
        v82 = ConnectionID.debugDescription.getter(v81);
        v84 = v41;
        v85 = sub_1B0399D64(v82, v83, &v134);

        *(v76 + 13) = v85;
        v41 = v84;
        *(v76 + 21) = 512;
        sub_1B044A65C(v37);
        *(v76 + 23) = v37;
        sub_1B044A65C(v37);
        *(v76 + 25) = 512;
        sub_1B044A65C(v37);
        *(v76 + 27) = v127;
        sub_1B044A65C(v37);
        v86 = v126;
        _os_log_impl(&dword_1B0389000, v126, v122, "[%.*hhx-%{public}s] Opportunistic STARTTLS completed: %hu / %hu", v76, 0x1Du);
        v87 = v129;
        __swift_destroy_boxed_opaque_existential_0Tm(v129);
        MEMORY[0x1B272C230](v87, -1, -1);
        v88 = v76;
        v42 = v130;
        MEMORY[0x1B272C230](v88, -1, -1);
      }

      else
      {
        sub_1B044A65C(v37);
        sub_1B044A65C(v37);
        sub_1B044D830(v73, _s6LoggerVMa_0);
        sub_1B044A65C(v37);
        sub_1B044A65C(v37);

        sub_1B044D830(v72, _s6LoggerVMa_0);
      }

      v102 = v128;
      if (*(v41 + 40) != 1)
      {
        v103 = v42;
        v104 = v123;
LABEL_37:
        sub_1B044D768(v103, v104, _s6LoggerVMa_0);
        sub_1B044D768(v42, v102, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v107 = sub_1B0E43988();
        v108 = sub_1B0E458E8();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v111 = v102;
          v112 = v110;
          v134 = v110;
          *v109 = 68158210;
          *(v109 + 4) = 2;
          *(v109 + 8) = 256;
          v113 = v133;
          v114 = *(v111 + *(v133 + 20));
          sub_1B044D830(v111, _s6LoggerVMa_0);
          *(v109 + 10) = v114;
          *(v109 + 11) = 2082;
          v115 = *(v104 + *(v113 + 20) + 4);
          sub_1B044D830(v104, _s6LoggerVMa_0);
          v116 = ConnectionID.debugDescription.getter(v115);
          v118 = sub_1B0399D64(v116, v117, &v134);

          *(v109 + 13) = v118;
          _os_log_impl(&dword_1B0389000, v107, v108, "[%.*hhx-%{public}s] We ran STARTTLS, but the connection is not secure.", v109, 0x15u);
          __swift_destroy_boxed_opaque_existential_0Tm(v112);
          MEMORY[0x1B272C230](v112, -1, -1);
          MEMORY[0x1B272C230](v109, -1, -1);
        }

        else
        {
          sub_1B044D830(v102, _s6LoggerVMa_0);

          sub_1B044D830(v104, _s6LoggerVMa_0);
        }

        v105 = v131;
        sub_1B044D830(v131, type metadata accessor for UnauthenticatedState);
        v106 = 6;
LABEL_41:
        *(v105 + 8) = 0;
        *(v105 + 16) = 0;
        *v105 = v106;
        *(v105 + 24) = -64;
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_1B044D830(v131, type metadata accessor for UnauthenticatedState);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1B044D768(a2, v11, _s6LoggerVMa_0);
  sub_1B044D768(a2, v8, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v61 = sub_1B0E43988();
  v62 = sub_1B0E458F8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v134 = v64;
    *v63 = 68158210;
    *(v63 + 4) = 2;
    *(v63 + 8) = 256;
    v65 = v133;
    v66 = v8[*(v133 + 20)];
    sub_1B044D830(v8, _s6LoggerVMa_0);
    *(v63 + 10) = v66;
    *(v63 + 11) = 2082;
    v67 = *&v11[*(v65 + 20) + 4];
    sub_1B044D830(v11, _s6LoggerVMa_0);
    v68 = ConnectionID.debugDescription.getter(v67);
    v70 = sub_1B0399D64(v68, v69, &v134);

    *(v63 + 13) = v70;
    _os_log_impl(&dword_1B0389000, v61, v62, "[%.*hhx-%{public}s] Received did-start-TLS from network, but we’re in the wrong state.", v63, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x1B272C230](v64, -1, -1);
    MEMORY[0x1B272C230](v63, -1, -1);
  }

  else
  {
    sub_1B044D830(v8, _s6LoggerVMa_0);

    sub_1B044D830(v11, _s6LoggerVMa_0);
  }

  sub_1B0C3C3BC();
  swift_allocError();
  return swift_willThrow();
}

_OWORD *sub_1B0C3BAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B0C3C1B4(a5, &v34);
  if (!*(&v35 + 1))
  {
    sub_1B0398EFC(&v34, &qword_1EB6E5A20, &qword_1B0EDBD70);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B0450C74(&v34, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_0(v17, v18);
  (*(v13 + 32))(v20, a1, a2, a3, a4, v12, v13);
  v30 = v20[8];
  v31 = v20[9];
  v32 = v20[10];
  v33 = v21;
  v26 = v20[4];
  v27 = v20[5];
  v28 = v20[6];
  v29 = v20[7];
  v22 = v20[0];
  v23 = v20[1];
  v24 = v20[2];
  v25 = v20[3];
  if (sub_1B0C3C354(&v22) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    return MEMORY[0x1E69E7CC0];
  }

  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v15 = v6 + *(type metadata accessor for UnauthenticatedStateWithTasks() + 24);
  v16 = sub_1B0C33814(&v34, a6);
  sub_1B0398EFC(v20, &qword_1EB6E5A08, &unk_1B0EDBD58);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return v16;
}

uint64_t sub_1B0C3BC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v39 = a4;
  v38 = a3;
  v40 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v31 - v10;
  v37 = type metadata accessor for AuthenticationTask();
  v35 = *(v37 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for UnauthenticatedStateWithTasks() + 28);
  v32 = a1;
  v13 = *(a1 + v31);
  v14 = v13[2];
  if (!v14)
  {
LABEL_14:
    sub_1B0C3C368();
    swift_allocError();
    swift_willThrow();
    return sub_1B0BCDEB0(v40, v38, v39 & 1);
  }

  v15 = 0;
  v16 = 4;
  v17 = ",w\b";
  while (1)
  {
    if (v15 >= v13[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_1B0C3C2E4(&v13[v16], &v41);
    v18 = *(v43 + 15);
    v5 = *(&v43[1] + 7);
    __swift_project_boxed_opaque_existential_0(&v41 + 1, *(v43 + 15));
    a1 = (*(v5 + 8))(v18, v5);
    sub_1B0398EFC(&v41, &qword_1EB6E5708, ",w\b");
    if (a1 == 2)
    {
      break;
    }

    ++v15;
    v16 += 6;
    if (v14 == v15)
    {
      goto LABEL_14;
    }
  }

  if (v15 >= v13[2])
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B0C3C2E4(&v13[v16], v49);
  sub_1B0450C74(v50, v48);
  sub_1B0450C74(v48, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A10, &qword_1B0EDBD68);
  v20 = v36;
  v19 = v37;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v35 + 56))(v20, 1, 1, v19);
    sub_1B0398EFC(v20, &qword_1EB6E53F8, &qword_1B0ECFF80);
    goto LABEL_14;
  }

  (*(v35 + 56))(v20, 0, 1, v19);
  v21 = v20;
  v22 = v19;
  a1 = v34;
  sub_1B0BD6580(v21, v34);
  v14 = v38;
  sub_1B0BD208C(v40, v38, v39 & 1, &v41);
  v5 = *(&v41 + 1);
  v36 = v41;
  LOBYTE(v17) = v42;
  *&v46[128] = v43[8];
  *&v46[144] = v43[9];
  *&v46[160] = v43[10];
  *&v46[176] = v44;
  *&v46[64] = v43[4];
  *&v46[80] = v43[5];
  *&v46[96] = v43[6];
  *&v46[112] = v43[7];
  *v46 = v43[0];
  *&v46[16] = v43[1];
  *&v46[32] = v43[2];
  *&v46[48] = v43[3];
  *&v45[135] = *&v46[135];
  *&v45[151] = *&v46[151];
  *&v45[167] = *&v46[167];
  v45[183] = HIBYTE(v44);
  *&v45[71] = *&v46[71];
  *&v45[87] = *&v46[87];
  *&v45[103] = *&v46[103];
  *&v45[119] = *&v46[119];
  *&v45[7] = *&v46[7];
  *&v45[23] = *&v46[23];
  *&v45[39] = *&v46[39];
  *&v45[55] = *&v46[55];
  if (v15 >= v13[2])
  {
    goto LABEL_17;
  }

  v6 = v13[v16];
  *(v43 + 7) = v22;
  *(v43 + 15) = &off_1F271C380;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1B044D768(a1, boxed_opaque_existential_1, type metadata accessor for AuthenticationTask);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_18:
  v13 = sub_1B0C0DFC8(v13);
LABEL_11:
  result = sub_1B044D830(a1, type metadata accessor for AuthenticationTask);
  if (v15 >= v13[2])
  {
    __break(1u);
  }

  else
  {
    v13[v16] = v6;
    __swift_destroy_boxed_opaque_existential_0Tm(&v13[v16 + 1]);
    sub_1B0450C74(&v41, &v13[v16 + 1]);
    result = sub_1B0BCDEB0(v40, v14, v39 & 1);
    v25 = *&v45[144];
    v26 = v33;
    *(v33 + 145) = *&v45[128];
    *(v26 + 161) = v25;
    *(v26 + 177) = *&v45[160];
    v27 = *&v45[80];
    *(v26 + 81) = *&v45[64];
    *(v26 + 97) = v27;
    v28 = *&v45[112];
    *(v26 + 113) = *&v45[96];
    *(v26 + 129) = v28;
    v29 = *&v45[16];
    *(v26 + 17) = *v45;
    *(v26 + 33) = v29;
    v30 = *&v45[48];
    *(v26 + 49) = *&v45[32];
    *(v32 + v31) = v13;
    *v26 = v36;
    *(v26 + 8) = v5;
    *(v26 + 16) = v17;
    *(v26 + 193) = *&v45[176];
    *(v26 + 65) = v30;
  }

  return result;
}

uint64_t sub_1B0C3C1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for UnauthenticatedStateWithTasks();
  v5 = *(v2 + *(result + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_1B0C3C2E4(v8, v13);
      v10 = v13[0];
      v9 = DWORD1(v13[0]);
      result = sub_1B0398EFC(v13, &qword_1EB6E5708, ",w\b");
      if (v10 == a1 && v9 == HIDWORD(a1))
      {
        sub_1B0C0B6DC(v7, v13);
        return sub_1B0450C74((v13 + 8), a2);
      }

      ++v7;
      v8 += 48;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B0C3C2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5708, ",w\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C3C354(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0C3C368()
{
  result = qword_1EB6E5A18;
  if (!qword_1EB6E5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5A18);
  }

  return result;
}

unint64_t sub_1B0C3C3BC()
{
  result = qword_1EB6E5A30;
  if (!qword_1EB6E5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5A30);
  }

  return result;
}

unint64_t sub_1B0C3C444()
{
  result = qword_1EB6E5A38;
  if (!qword_1EB6E5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5A38);
  }

  return result;
}

uint64_t sub_1B0C3C498(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 17) ^ *(a2 + 17) ^ 1u;
}

int64_t sub_1B0C3C4F0(char a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  result = static MonotonicTime.now()();
  if ((v5 & 1) == 0 && v4 >= result)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    v6 = a1 != 1;
    v8 = __OFADD__(v3, 4);
    v3 += 4;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = 0;
  v8 = __OFADD__(v3++, 1);
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v3 <= 1000)
  {
    if (v3 >= 1)
    {
      goto LABEL_8;
    }

LABEL_14:
    v4 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  v3 = 1000;
LABEL_8:
  v9 = sub_1B0C3C6F8(0x20000000000001uLL);
  v10 = sub_1B0C3C784(v3, vcvtd_n_f64_u64(v9, 0x35uLL) + 0.0);
  result = MonotonicTime.init(secondsSinceNow:)(v10);
  v4 = result;
LABEL_9:
  v11 = 0;
LABEL_10:
  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v11;
  *(v1 + 17) = v6;
  return result;
}

uint64_t variable initialization expression of Engine.externalState@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Activity(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for ExternalState();
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t variable initialization expression of Engine.didTearDown()
{
  type metadata accessor for AtomicFlag.Storage();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t sub_1B0C3C6F8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B272C250](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B272C250](&v3, 8);
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

double sub_1B0C3C784(uint64_t a1, double a2)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  v3 = exp2((a1 - 1)) * 4.0;
  if (v3 < 80.0)
  {
    v4 = 0.5;
    v5 = v3 * 0.5;
    if (a2 >= 1.0)
    {
      return v5 + v4 * v3;
    }

    v4 = 0.0;
    if (a2 < 0.0)
    {
      return v5 + v4 * v3;
    }

LABEL_9:
    v4 = a2 * 0.5;
    return v5 + v4 * v3;
  }

  if (a2 >= 1.0)
  {
    v4 = 0.5;
    v5 = 40.0;
    v3 = 80.0;
    return v5 + v4 * v3;
  }

  v4 = 0.0;
  v5 = 40.0;
  v3 = 80.0;
  if (a2 >= 0.0)
  {
    goto LABEL_9;
  }

  return v5 + v4 * v3;
}

unint64_t sub_1B0C3C84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A80, &unk_1B0EDBF50);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = *(a1 + 48);
  result = sub_1B03A2724(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v9 = v3[7] + 24 * result;
    *v9 = v5;
    *(v9 + 8) = v15;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 2;
    v4 = *(v8 - 4);
    v5 = *(v8 - 2);
    v15 = *v8;

    result = sub_1B03A2724(v4);
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0C3C978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A78, &qword_1B0EDBF48);
  v3 = sub_1B0E466A8();
  LODWORD(v4) = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1B03A2724(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_1B03A2724(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Backoff(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageToDownload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0C3CB30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A70, &qword_1B0EDBF40);
    v3 = sub_1B0E466A8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_1B03A2724(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1B0C3CC10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5A48, &qword_1B0EDBF18);
    v3 = sub_1B0E466A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B03B5C80(v4, &v13, &unk_1EB6E5A50, &unk_1B0EDBF20);
      v5 = v13;
      v6 = v14;
      result = sub_1B0441038(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B0450C74(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_1B0C3CD48()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DC1C0);
  __swift_project_value_buffer(v0, qword_1EB6DC1C0);
  return sub_1B0E43998();
}

uint64_t sub_1B0C3CDD0()
{
  if (*(v0 + 72))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B0E45A98();
    swift_unknownObjectRelease();
  }

  sub_1B0BE2890(v0 + 32);
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);

  v3 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0C3CE9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B0C3CEF4();
  }

  return result;
}

void sub_1B0C3CEF4()
{
  v1 = sub_1B0E44468();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  v7 = *MEMORY[0x1E69E8020];
  v8 = v2[13];
  v8(v5, v7, v1);
  v9 = v6;
  v10 = sub_1B0E44488();
  v11 = v2[1];
  v11(v5, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = static MonotonicTime.now()();
  swift_beginAccess();
  if (*(v0 + 64) != 1)
  {
LABEL_11:
    *v5 = v9;
    v8(v5, v7, v1);
    v16 = sub_1B0E44488();
    v17 = (v11)(v5, v1);
    if (v16)
    {
      sub_1B044E4C4(v17);
      sub_1B044E8FC();
      return;
    }

    goto LABEL_14;
  }

  v13 = *(v0 + 56);
  v14 = __OFSUB__(v12, v13);
  v15 = v12 - v13;
  if (v12 < v13)
  {
    if (__OFSUB__(v13, v12))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v14 = __OFSUB__(0, v13 - v12);
    v15 = v12 - v13;
    if (!v14)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!v14)
  {
LABEL_9:
    if (v15 / 1000000000.0 > 2.0)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 2;
    }

    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1B0C3D0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v40 = a1;
  v3 = sub_1B0E443F8();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v47 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v35 - v7;
  v8 = sub_1B0E44208();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_1B0E44238();
  v39 = *(v41 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0E44288();
  v37 = *(v14 - 8);
  v38 = v14;
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B0E45A38();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0421E38();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B0C3E204(&qword_1EB6DAA70, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B03CFB8C(&qword_1EB6DAFA0, &qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B0E460A8();
  v23 = sub_1B0E45A48();
  (*(v19 + 8))(v22, v18);
  ObjectType = swift_getObjectType();
  aBlock[4] = v42;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_30;
  v25 = _Block_copy(aBlock);

  sub_1B0E44258();
  v26 = v36;
  sub_1B06D2870();
  sub_1B0E45A58();
  _Block_release(v25);
  (*(v39 + 8))(v26, v41);
  (*(v37 + 8))(v17, v38);

  *v11 = 250;
  v28 = v44;
  v27 = v45;
  (*(v44 + 104))(v11, *MEMORY[0x1E69E7F38], v45);
  v29 = v47;
  sub_1B0E443D8();
  v30 = v46;
  sub_1B0E443E8();
  v31 = *(v48 + 8);
  v32 = v29;
  v33 = v49;
  v31(v32, v49);
  MEMORY[0x1B2727D90](v30, v11, v11, ObjectType);
  v31(v30, v33);
  (*(v28 + 8))(v11, v27);
  return v23;
}

uint64_t sub_1B0C3D620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v96 = a2;
  v5 = sub_1B0E441D8();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v88 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v89 = v86 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v95 = *(v13 - 8);
  v14 = *(v95 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v90 = (v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = v86 - v17;
  v19 = _s5StateO6ActionOMa();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v94 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v86 - v23;
  v25 = sub_1B0E44468();
  v26 = *(v25 - 8);
  v27 = v26[8];
  MEMORY[0x1EEE9AC00](v25);
  v29 = (v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v2 + 16);
  *v29 = v30;
  v31 = v26[13];
  v99 = *MEMORY[0x1E69E8020];
  v100 = v31;
  v101 = v26 + 13;
  v31(v29);
  v98 = v30;
  LOBYTE(v30) = sub_1B0E44488();
  v33 = v26[1];
  v32 = v26 + 1;
  v97 = v33;
  v33(v29, v25);
  if (v30)
  {
    v102 = v12;
    if (qword_1EB6DC1B0 == -1)
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
  v34 = sub_1B0E439A8();
  v35 = __swift_project_value_buffer(v34, qword_1EB6DC1C0);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v93 = v35;
  v36 = sub_1B0E43988();
  v37 = sub_1B0E458C8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v87 = v29;
    v39 = v32;
    v40 = v25;
    v41 = v24;
    v42 = v38;
    *v38 = 68158208;
    *(v38 + 4) = 2;
    *(v38 + 8) = 256;
    *(v38 + 10) = *(v3 + 24);

    *(v42 + 11) = 2048;
    *(v42 + 13) = a1;
    _os_log_impl(&dword_1B0389000, v36, v37, "[%.*hhx] Connection generation %ld state did change.", v42, 0x15u);
    v43 = v42;
    v24 = v41;
    v25 = v40;
    v32 = v39;
    v29 = v87;
    MEMORY[0x1B272C230](v43, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  sub_1B044E010(a1, v96, v24);
  swift_endAccess();
  v44 = v94;
  sub_1B044E460(v24, v94);
  v45 = (*(v95 + 48))(v44, 2, v13);
  v46 = v102;
  if (v45)
  {
    if (v45 == 1)
    {
      goto LABEL_33;
    }

    v47 = *(v3 + 80);
    if (v47)
    {
      v95 = v25;
      *(v3 + 80) = 0;
      *(v3 + 88) = 0;

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v48 = sub_1B0E43988();
      v49 = sub_1B0E45908();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 68158208;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        *(v50 + 10) = *(v3 + 24);

        *(v50 + 11) = 2048;
        *(v50 + 13) = a1;
        _os_log_impl(&dword_1B0389000, v48, v49, "[%.*hhx] Promoting connection generation %ld.", v50, 0x15u);
        MEMORY[0x1B272C230](v50, -1, -1);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

LABEL_32:
        v25 = v95;
        goto LABEL_33;
      }

      if (*(Strong + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
      {

        sub_1B0C4C0B4(v47);

LABEL_31:
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    else
    {

      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v73 = sub_1B0E43988();
      v74 = sub_1B0E45908();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = a1;
        v76 = v25;
        v77 = swift_slowAlloc();
        *v77 = 68158208;
        *(v77 + 4) = 2;
        *(v77 + 8) = 256;
        *(v77 + 10) = *(v3 + 24);

        *(v77 + 11) = 2048;
        *(v77 + 13) = v75;
        _os_log_impl(&dword_1B0389000, v73, v74, "[%.*hhx] Trying to promote connection generation %ld, but there’s no connection.", v77, 0x15u);
        v78 = v77;
        v25 = v76;
        MEMORY[0x1B272C230](v78, -1, -1);
      }

      else
      {
      }

      v81 = v98;
      *v29 = v98;
      v100(v29, v99, v25);
      v82 = v81;
      LOBYTE(v81) = sub_1B0E44488();
      v97(v29, v25);
      if (v81)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    goto LABEL_31;
  }

  sub_1B0C3E124(v44, v18);
  v96 = v18;
  v51 = v90;
  sub_1B0C25AD4(v18, v90);
  v52 = v91;
  v53 = v92;
  if ((*(v91 + 48))(v51, 1, v92) == 1)
  {
    sub_1B0C3E194(v51);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v54 = sub_1B0E43988();
    v55 = sub_1B0E45908();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = a1;
      v57 = v25;
      v58 = swift_slowAlloc();
      *v58 = 68158208;
      *(v58 + 4) = 2;
      *(v58 + 8) = 256;
      *(v58 + 10) = *(v3 + 24);

      *(v58 + 11) = 2048;
      *(v58 + 13) = v56;
      _os_log_impl(&dword_1B0389000, v54, v55, "[%.*hhx] Cancelling connection generation %ld", v58, 0x15u);
      v59 = v58;
      v25 = v57;
      MEMORY[0x1B272C230](v59, -1, -1);
    }

    else
    {
    }

    sub_1B0C3E194(v96);
  }

  else
  {
    v87 = a1;
    v94 = v24;
    (*(v52 + 32))(v46, v51, v53);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v60 = v89;
    v90 = *(v52 + 16);
    (v90)(v89, v46, v53);
    v61 = v46;
    v62 = v52;
    v63 = sub_1B0E43988();
    LODWORD(v93) = sub_1B0E45908();
    if (os_log_type_enabled(v63, v93))
    {
      v64 = swift_slowAlloc();
      v95 = v25;
      v65 = v64;
      v86[0] = swift_slowAlloc();
      v86[1] = v32;
      v103 = v86[0];
      *v65 = 68158466;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      *(v65 + 10) = *(v3 + 24);

      *(v65 + 11) = 2048;
      v66 = v88;
      *(v65 + 13) = v87;
      *(v65 + 21) = 2082;
      (v90)(v66, v60, v53);
      v67 = sub_1B0E44B88();
      v69 = v68;
      v91 = *(v62 + 8);
      (v91)(v60, v53);
      v70 = sub_1B0399D64(v67, v69, &v103);

      *(v65 + 23) = v70;
      _os_log_impl(&dword_1B0389000, v63, v93, "[%.*hhx] Cancelling connection generation %ld: %{public}s", v65, 0x1Fu);
      v71 = v86[0];
      __swift_destroy_boxed_opaque_existential_0(v86[0]);
      MEMORY[0x1B272C230](v71, -1, -1);
      v72 = v65;
      v25 = v95;
      MEMORY[0x1B272C230](v72, -1, -1);

      (v91)(v102, v53);
    }

    else
    {

      v80 = *(v62 + 8);
      v80(v60, v53);
      v80(v61, v53);
    }

    sub_1B0C3E194(v96);
    v24 = v94;
  }

LABEL_33:
  v83 = v98;
  *v29 = v98;
  v100(v29, v99, v25);
  v84 = v83;
  LOBYTE(v83) = sub_1B0E44488();
  result = (v97)(v29, v25);
  if (v83)
  {
LABEL_34:
    sub_1B044E4C4();
    sub_1B044E8FC();
    return sub_1B038C7C4(v24, _s5StateO6ActionOMa);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0C3E124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C3E194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0C3E204(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1B0C3E280(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v8 = a6 == 1 && a1 == a4 && a2 == a5;
    v10 = a6 == 2 && a1 == a4;
    if (a3 == 1)
    {
      return v8;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    return !a6 && a1 == a4;
  }
}

uint64_t sub_1B0C3E2EC()
{
  sub_1B0C263C8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1B0C3E354@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v352 = a2;
  v377 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v351 = *(v377 - 8);
  v3 = *(v351 + 64);
  MEMORY[0x1EEE9AC00](v377);
  v336 = &v329 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v331 = &v329 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v335 = &v329 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v337 = &v329 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v367 = &v329 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v341 = &v329 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v371 = &v329 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v344 = &v329 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v378 = &v329 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v342 = &v329 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v343 = &v329 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v379 = &v329 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v383 = (&v329 - v31);
  v353 = type metadata accessor for ConnectionStatus.Error(0);
  v380 = *(v353 - 8);
  v32 = *(v380 + 64);
  v33 = MEMORY[0x1EEE9AC00](v353);
  v345 = &v329 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v382 = (&v329 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v347 = &v329 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v348 = &v329 - v40;
  v41 = sub_1B0E441D8();
  v372 = *(v41 - 8);
  v42 = *(v372 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v330 = &v329 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v332 = &v329 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v340 = &v329 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v346 = &v329 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v362 = &v329 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v333 = &v329 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v334 = &v329 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v368 = &v329 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v357 = &v329 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v359 = &v329 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v358 = &v329 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v370 = &v329 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v364 = &v329 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v365 = &v329 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v395 = &v329 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v373 = &v329 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v391 = &v329 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v79 = &v329 - v78;
  v80 = MEMORY[0x1EEE9AC00](v77);
  v82 = &v329 - v81;
  v83 = MEMORY[0x1EEE9AC00](v80);
  v376 = &v329 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v389 = &v329 - v85;
  v404 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v86 = *(*(v404 - 8) + 64);
  v87 = MEMORY[0x1EEE9AC00](v404);
  v360 = &v329 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v361 = &v329 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v385 = &v329 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v388 = &v329 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v392 = (&v329 - v96);
  v97 = MEMORY[0x1EEE9AC00](v95);
  v381 = &v329 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v101 = &v329 - v100;
  MEMORY[0x1EEE9AC00](v99);
  v103 = &v329 - v102;
  v403 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v104 = *(*(v403 - 8) + 64);
  v105 = MEMORY[0x1EEE9AC00](v403);
  v339 = &v329 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x1EEE9AC00](v105);
  v338 = &v329 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v356 = &v329 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v355 = &v329 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v390 = &v329 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v366 = &v329 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v393 = &v329 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v369 = &v329 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v123 = &v329 - v122;
  v124 = MEMORY[0x1EEE9AC00](v121);
  v394 = (&v329 - v125);
  v126 = MEMORY[0x1EEE9AC00](v124);
  v128 = &v329 - v127;
  v129 = MEMORY[0x1EEE9AC00](v126);
  *&v387 = &v329 - v130;
  MEMORY[0x1EEE9AC00](v129);
  v384 = &v329 - v132;
  v363 = a1;
  v402 = *(a1 + 16);
  if (!v402)
  {
    return (*(v380 + 56))(v352, 1, 1, v353);
  }

  v133 = v103;
  v134 = v402;
  v401 = (v372 + 32);
  v400 = (v372 + 88);
  v399 = *MEMORY[0x1E6977D68];
  v397 = (v372 + 16);
  v396 = (v372 + 96);
  v398 = (v372 + 8);
  v135 = (*(v131 + 80) + 32) & ~*(v131 + 80);
  v136 = *(v131 + 72);
  v354 = v402 - 1;
  v349 = v135;
  v329 = v135 + v136 * (v402 - 1);
  v137 = v363 + v329;
  v386 = v136;
  v374 = -v136;
  v350 = v402;
  v375 = v133;
  while (1)
  {
    v138 = v384;
    sub_1B0C41D78(v137, v384, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0C41DE0(v138 + *(v403 + 20), v133, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      break;
    }

    v139 = v389;
    (*v401)(v389, v133, v41);
    v140 = (*v400)(v139, v41);
    if (v140 != v399 || (v141 = v376, (*v397)(v376, v389, v41), (*v396)(v141, v41), v133 = v375, v142 = *v141 - 52, v142 > 0x2C) || ((1 << v142) & 0x100000000107) == 0)
    {
      (*v398)(v389, v41);
      goto LABEL_11;
    }

    --v134;
    (*v398)(v389, v41);
    v137 += v374;
    if (!v134)
    {
      return (*(v380 + 56))(v352, 1, 1, v353);
    }
  }

  sub_1B0439010(v133, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_11:
  v376 = (v351 + 56);
  v384 = v363 + v349;
  v144 = -v386;
  v145 = MEMORY[0x1E69E7CC0];
  v146 = v350;
  do
  {
    v389 = v145;
    --v146;
    v147 = v384 + v386 * v146;
    while (1)
    {
      if (v146 >= v402)
      {
        __break(1u);
LABEL_34:
        v145 = v389;
        goto LABEL_35;
      }

      sub_1B0C41D78(v147, v128, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0C41D78(&v128[*(v403 + 20)], v101, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      (*v401)(v82, v101, v41);
      v148 = (*v400)(v82, v41);
      if (v148 != v399 || ((*v397)(v79, v82, v41), (*v396)(v79, v41), v149 = *v79 - 52, v149 > 0x2C) || ((1 << v149) & 0x100000000107) == 0)
      {
        (*v398)(v82, v41);
        goto LABEL_24;
      }

      (*v398)(v82, v41);
      sub_1B0439010(v128, type metadata accessor for CommandConnection.RecentErrors.Error);
      --v146;
      v147 += v144;
      if (v146 == -1)
      {
        goto LABEL_34;
      }
    }

    sub_1B0439010(v101, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_24:
    v150 = v387;
    sub_1B0C41DE0(v128, v387, type metadata accessor for CommandConnection.RecentErrors.Error);
    v151 = v381;
    sub_1B0C41D78(v150 + *(v403 + 20), v381, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v152 = *(v151 + 8);
      v153 = v151;
      v154 = v383;
      if (v152)
      {
        *v383 = *v153;
        v154[1] = v152;
        v155 = v377;
        swift_storeEnumTagMultiPayload();
        v156 = 0;
      }

      else
      {
        v156 = 1;
        v155 = v377;
      }

      (*v376)(v154, v156, 1, v155);
      v157 = v154;
      v158 = v379;
      sub_1B03B5C80(v157, v379, &qword_1EB6E39C0, &qword_1B0EA35E0);
      v159 = sub_1B0E43108();
      v160 = v378;
      (*(*(v159 - 8) + 56))(v378, 1, 1, v159);
      ConnectionStatus.Error.init(kind:details:backedOffUntil:)(2, v158, v160, v382);
      sub_1B0398EFC(v383, &qword_1EB6E39C0, &qword_1B0EA35E0);
      sub_1B0439010(v387, type metadata accessor for CommandConnection.RecentErrors.Error);
      v161 = v389;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = sub_1B0C49CD0(0, *(v161 + 2) + 1, 1, v161);
      }

      v163 = *(v161 + 2);
      v162 = *(v161 + 3);
      v164 = v161;
      if (v163 >= v162 >> 1)
      {
        v164 = sub_1B0C49CD0(v162 > 1, v163 + 1, 1, v161);
      }

      *(v164 + 16) = v163 + 1;
      v145 = v164;
      sub_1B0C41DE0(v382, v164 + ((*(v380 + 80) + 32) & ~*(v380 + 80)) + *(v380 + 72) * v163, type metadata accessor for ConnectionStatus.Error);
    }

    else
    {
      sub_1B0439010(v150, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0439010(v151, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v145 = v389;
    }
  }

  while (v146);
LABEL_35:
  if (*(v145 + 2))
  {
    v165 = v380;
    v166 = v348;
    sub_1B0C41D78(&v145[(*(v380 + 80) + 32) & ~*(v380 + 80)], v348, type metadata accessor for ConnectionStatus.Error);
    v167 = 0;
    v168 = v353;
  }

  else
  {
    v167 = 1;
    v168 = v353;
    v166 = v348;
    v165 = v380;
  }

  v169 = v347;

  v170 = *(v165 + 56);
  v170(v166, v167, 1, v168);
  sub_1B03B5C80(v166, v169, &qword_1EB6E35A0, &qword_1B0E99850);
  if ((*(v165 + 48))(v169, 1, v168) != 1)
  {
    sub_1B0398EFC(v166, &qword_1EB6E35A0, &qword_1B0E99850);
    v188 = v345;
    sub_1B0C41DE0(v169, v345, type metadata accessor for ConnectionStatus.Error);
    v189 = v188;
    v190 = v352;
    sub_1B0C41DE0(v189, v352, type metadata accessor for ConnectionStatus.Error);
    return (v170)(v190, 0, 1, v168);
  }

  v382 = v170;
  v383 = (v165 + 56);
  sub_1B0398EFC(v169, &qword_1EB6E35A0, &qword_1B0E99850);
  v384 = v363 + v349;
  v171 = -v386;
  v389 = MEMORY[0x1E69E7CC0];
  v172 = v350;
  v173 = v395;
  v174 = v392;
  while (2)
  {
    --v172;
    v175 = v384 + v386 * v172;
    v176 = v373;
    while (1)
    {
      if (v172 >= v402)
      {
        __break(1u);
LABEL_60:
        v185 = *(v389 + 2);
        if (!v185)
        {
LABEL_82:
          v208 = v389 + 32;
          v209 = v185 + 1;
          v210 = v372;
          while (--v209)
          {
            v211 = v208 + 24;
            v212 = *v208;
            v208 += 24;
            if ((~v212 & 0xF000000000000007) == 0)
            {
              v384 = v212;
              v213 = *(v211 - 1);
              v381 = *(v211 - 2);
              *&v387 = v213;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_87;
            }
          }

          v384 = 0;
          v381 = 0;
          *&v387 = 0;
LABEL_87:
          v374 = 0;
          v375 = 0;
          v380 = 0;
          goto LABEL_90;
        }

        goto LABEL_61;
      }

      sub_1B0C41D78(v175, v123, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0C41D78(&v123[*(v403 + 20)], v174, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v177 = v174;
      v178 = v391;
      (*v401)(v391, v177, v41);
      v179 = (*v400)(v178, v41);
      if (v179 != v399 || ((*v397)(v176, v178, v41), (*v396)(v176, v41), v180 = *v176 - 52, v180 > 0x2C) || ((1 << v180) & 0x100000000107) == 0)
      {
        (*v398)(v178, v41);
        v174 = v392;
        goto LABEL_50;
      }

      (*v398)(v178, v41);
      sub_1B0439010(v123, type metadata accessor for CommandConnection.RecentErrors.Error);
      v174 = v392;
LABEL_42:
      --v172;
      v175 += v171;
      if (v172 == -1)
      {
        goto LABEL_60;
      }
    }

    sub_1B0439010(v174, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_50:
    v181 = v394;
    sub_1B0C41DE0(v123, v394, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0C4144C(v181, &v405);
    sub_1B0439010(v181, type metadata accessor for CommandConnection.RecentErrors.Error);
    v182 = v406;
    if (!v406)
    {
      v173 = v395;
      goto LABEL_42;
    }

    v387 = v405;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v389 = sub_1B0C49BB0(0, *(v389 + 2) + 1, 1, v389);
    }

    v184 = *(v389 + 2);
    v183 = *(v389 + 3);
    v185 = v184 + 1;
    if (v184 >= v183 >> 1)
    {
      v389 = sub_1B0C49BB0((v183 > 1), v184 + 1, 1, v389);
    }

    v186 = v389;
    *(v389 + 2) = v185;
    v187 = &v186[24 * v184];
    *(v187 + 2) = v387;
    *(v187 + 6) = v182;
    v173 = v395;
    if (v172)
    {
      continue;
    }

    break;
  }

LABEL_61:
  v191 = (v389 + 48);
  v192 = v185;
  while (2)
  {
    v195 = *(v191 - 2);
    if ((~v195 & 0xF000000000000007) == 0)
    {
      goto LABEL_69;
    }

    v196 = (v195 >> 59) & 0x1E | (v195 >> 2) & 1;
    if (v196 <= 16)
    {
      if (v196)
      {
        v193 = v196 == 9;
      }

      else
      {
        v193 = 1;
      }

      if (v193 || v196 == 13)
      {
        v201 = *(v191 - 1);
        v202 = *v191;
        goto LABEL_89;
      }

      goto LABEL_69;
    }

    v193 = v196 == 17;
    v197 = __ROR8__(v195 + 0x7FFFFFFFFFFFFFFCLL, 3);
    v198 = !v193 || v197 > 0x1E;
    v199 = (1 << v197) & 0x5FDFF9A7;
    if (v198 || v199 == 0)
    {
LABEL_69:
      v191 += 3;
      if (!--v192)
      {
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  v201 = *(v191 - 1);
  v202 = *v191;
  if (v195 == 0x80000000000000DCLL || v195 == 0x800000000000006CLL)
  {
    sub_1B04420D8(v195);
    swift_bridgeObjectRetain_n();
    sub_1B04420D8(v195);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B04420D8(v195);
    v203 = v379;
    sub_1B0C41550(v195, v201, v202, v379);
    v204 = v343;
    sub_1B03B5C80(v203, v343, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v205 = sub_1B0E43108();
    v206 = v378;
    (*(*(v205 - 8) + 56))(v378, 1, 1, v205);
    v207 = v352;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(2, v204, v206, v352);
    sub_1B0447F00(v195);

    sub_1B0447F00(v195);

    sub_1B0398EFC(v203, &qword_1EB6E39C0, &qword_1B0EA35E0);
    sub_1B0398EFC(v348, &qword_1EB6E35A0, &qword_1B0E99850);
    return (v382)(v207, 0, 1, v353);
  }

LABEL_89:
  sub_1B04420D8(v195);
  swift_bridgeObjectRetain_n();
  sub_1B04420D8(v195);
  v384 = v195;
  v374 = v195;
  v381 = v201;
  v375 = v201;
  *&v387 = v202;
  v380 = v202;
  v210 = v372;
LABEL_90:

  v394 = (v210 + 48);
  v391 = (v363 + v349);
  v214 = -v386;
  v392 = MEMORY[0x1E69E7CC0];
  v215 = v350;
  v216 = v365;
  while (2)
  {
    while (1)
    {
      --v215;
      v217 = &v391[v386 * v215];
      while (1)
      {
        if (v215 >= v402)
        {
          __break(1u);
          goto LABEL_111;
        }

        v218 = v393;
        sub_1B0C41D78(v217, v393, type metadata accessor for CommandConnection.RecentErrors.Error);
        v219 = v218 + *(v403 + 20);
        v220 = v388;
        sub_1B0C41D78(v219, v388, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        (*v401)(v173, v220, v41);
        v221 = (*v400)(v173, v41);
        if (v221 != v399 || ((*v397)(v216, v173, v41), (*v396)(v216, v41), v222 = *v216 - 52, v222 > 0x2C) || ((1 << v222) & 0x100000000107) == 0)
        {
          (*v398)(v173, v41);
          goto LABEL_102;
        }

        (*v398)(v173, v41);
        sub_1B0439010(v393, type metadata accessor for CommandConnection.RecentErrors.Error);
        --v215;
        v217 += v214;
        if (v215 == -1)
        {
          goto LABEL_108;
        }
      }

      sub_1B0439010(v220, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_102:
      v223 = v369;
      sub_1B0C41DE0(v393, v369, type metadata accessor for CommandConnection.RecentErrors.Error);
      v224 = v371;
      sub_1B0C41854(v223, v371);
      sub_1B0439010(v223, type metadata accessor for CommandConnection.RecentErrors.Error);
      if ((*v394)(v224, 1, v41) == 1)
      {
        break;
      }

      v225 = v224;
      v226 = *v401;
      v227 = v364;
      (*v401)(v364, v225, v41);
      v226(v370, v227, v41);
      v228 = v392;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v228 = sub_1B0C49B88(0, v228[2] + 1, 1, v228);
      }

      v230 = v228[2];
      v229 = v228[3];
      v392 = v228;
      v216 = v365;
      if (v230 >= v229 >> 1)
      {
        v392 = sub_1B0C49B88(v229 > 1, v230 + 1, 1, v392);
      }

      v231 = v392;
      v392[2] = v230 + 1;
      v226(&v231[((*(v372 + 80) + 32) & ~*(v372 + 80)) + *(v372 + 72) * v230], v370, v41);
      v173 = v395;
      if (!v215)
      {
        goto LABEL_108;
      }
    }

    sub_1B0398EFC(v224, &unk_1EB6E5A90, &unk_1B0EDC020);
    if (v215)
    {
      continue;
    }

    break;
  }

LABEL_108:
  if (v392[2])
  {
    v232 = v372;
    v233 = v344;
    (*(v372 + 16))(v344, v392 + ((*(v232 + 80) + 32) & ~*(v232 + 80)), v41);
    v234 = 0;
    goto LABEL_112;
  }

LABEL_111:
  v234 = 1;
  v233 = v344;
  v232 = v372;
LABEL_112:

  v391 = *(v232 + 56);
  v392 = (v232 + 56);
  (v391)(v233, v234, 1, v41);
  v393 = v363 + v349;
  v395 = MEMORY[0x1E69E7CC0];
  v235 = -v386;
  v236 = v359;
  v237 = v358;
  v238 = v350;
  while (2)
  {
    while (1)
    {
      v239 = v238 - 1;
      v240 = v393 + v386 * v239;
      while (1)
      {
        if (v239 >= v402)
        {
          __break(1u);
          goto LABEL_133;
        }

        v241 = v239;
        v242 = v390;
        sub_1B0C41D78(v240, v390, type metadata accessor for CommandConnection.RecentErrors.Error);
        v243 = v242 + *(v403 + 20);
        v244 = v385;
        sub_1B0C41D78(v243, v385, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        (*v401)(v237, v244, v41);
        v245 = (*v400)(v237, v41);
        if (v245 != v399 || ((*v397)(v236, v237, v41), (*v396)(v236, v41), v246 = *v236 - 52, v246 > 0x2C) || ((1 << v246) & 0x100000000107) == 0)
        {
          (*v398)(v237, v41);
          goto LABEL_124;
        }

        (*v398)(v237, v41);
        sub_1B0439010(v390, type metadata accessor for CommandConnection.RecentErrors.Error);
        v239 = v241 - 1;
        v240 += v235;
        if (!v241)
        {
          goto LABEL_130;
        }
      }

      sub_1B0439010(v244, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_124:
      v247 = v366;
      sub_1B0C41DE0(v390, v366, type metadata accessor for CommandConnection.RecentErrors.Error);
      v248 = v367;
      sub_1B0C41A0C(v247, v367);
      sub_1B0439010(v247, type metadata accessor for CommandConnection.RecentErrors.Error);
      if ((*v394)(v248, 1, v41) == 1)
      {
        break;
      }

      v249 = v248;
      v250 = *v401;
      v251 = v357;
      (*v401)(v357, v249, v41);
      v250(v368, v251, v41);
      v252 = v395;
      v238 = v241;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v252 = sub_1B0C49B88(0, *(v252 + 2) + 1, 1, v252);
      }

      v254 = *(v252 + 2);
      v253 = *(v252 + 3);
      v395 = v252;
      v237 = v358;
      if (v254 >= v253 >> 1)
      {
        v395 = sub_1B0C49B88(v253 > 1, v254 + 1, 1, v395);
      }

      v255 = v395;
      *(v395 + 2) = v254 + 1;
      v250(&v255[((*(v372 + 80) + 32) & ~*(v372 + 80)) + *(v372 + 72) * v254], v368, v41);
      v236 = v359;
      if (!v238)
      {
        goto LABEL_130;
      }
    }

    sub_1B0398EFC(v248, &unk_1EB6E5A90, &unk_1B0EDC020);
    v238 = v241;
    if (v241)
    {
      continue;
    }

    break;
  }

LABEL_130:
  if (*(v395 + 2))
  {
    v256 = v341;
    (*(v372 + 16))(v341, &v395[(*(v372 + 80) + 32) & ~*(v372 + 80)], v41);
    v257 = 0;
    v258 = v344;
    goto LABEL_134;
  }

LABEL_133:
  v257 = 1;
  v258 = v344;
  v256 = v341;
LABEL_134:
  v259 = v377;
  v260 = v356;
  v261 = v387;
  v262 = v394;

  (v391)(v256, v257, 1, v41);
  if (v261)
  {
    v263 = v384;
    sub_1B04420D8(v384);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C41550(v263, v381, v261, v342);
    goto LABEL_142;
  }

  v257 = v337;
  sub_1B03B5C80(v258, v337, &unk_1EB6E5A90, &unk_1B0EDC020);
  v264 = *v262;
  if ((*v262)(v257, 1, v41) == 1)
  {
    sub_1B0398EFC(v257, &unk_1EB6E5A90, &unk_1B0EDC020);
    v257 = v335;
    sub_1B03B5C80(v256, v335, &unk_1EB6E5A90, &unk_1B0EDC020);
    if (v264(v257, 1, v41) == 1)
    {
      sub_1B0398EFC(v257, &unk_1EB6E5A90, &unk_1B0EDC020);
      (*v376)(v342, 1, 1, v259);
      goto LABEL_142;
    }

    v265 = *v401;
    v266 = &v365;
  }

  else
  {
    v265 = *v401;
    v266 = &v366;
  }

  v267 = *(v266 - 32);
  v265(v267, v257, v41);
  v268 = v336;
  v265(v336, v267, v41);
  swift_storeEnumTagMultiPayload();
  v269 = v342;
  sub_1B0C41DE0(v268, v342, type metadata accessor for ConnectionStatus.Error.Details);
  (*v376)(v269, 0, 1, v259);
LABEL_142:
  v270 = v329;
  v271 = v363 + v329;
  v272 = -v386;
  v273 = v354;
  while (2)
  {
    if (v273 < v402)
    {
      sub_1B0C41D78(v271, v260, type metadata accessor for CommandConnection.RecentErrors.Error);
      v274 = v361;
      sub_1B0C41D78(v260 + *(v403 + 20), v361, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v275 = v274;
        v276 = v362;
        (*v401)(v362, v275, v41);
        v277 = (*v400)(v276, v41);
        if (v277 == v399 && (v278 = v346, (*v397)(v346, v362, v41), (*v396)(v278, v41), v279 = *v278, v276 = v362, v280 = v279 - 52, v280 <= 0x2C) && ((1 << v280) & 0x100000000107) != 0)
        {
          (*v398)(v362, v41);
          sub_1B0439010(v260, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          (*v398)(v276, v41);
LABEL_152:
          v281 = v260;
          v282 = v355;
          sub_1B0C41DE0(v281, v355, type metadata accessor for CommandConnection.RecentErrors.Error);
          v283 = sub_1B0C41BC4(v282);
          sub_1B0439010(v282, type metadata accessor for CommandConnection.RecentErrors.Error);
          v260 = v356;
          if (v283)
          {
            v284 = v342;
            v285 = v379;
            sub_1B03B5C80(v342, v379, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v286 = v343;
            sub_1B03B5C80(v285, v343, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v287 = sub_1B0E43108();
            v288 = v378;
            (*(*(v287 - 8) + 56))(v378, 1, 1, v287);
            v289 = v352;
            v290 = v352;
            v291 = 5;
LABEL_154:
            ConnectionStatus.Error.init(kind:details:backedOffUntil:)(v291, v286, v288, v290);
            sub_1B0B6DCF0(v384, v381, v387);
            sub_1B0B6DCF0(v374, v375, v380);
            sub_1B0398EFC(v285, &qword_1EB6E39C0, &qword_1B0EA35E0);
            sub_1B0398EFC(v284, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v292 = v256;
            goto LABEL_155;
          }
        }

        --v273;
        v271 += v272;
        v257 = v360;
        v270 = v354;
        if (v273 == -1)
        {
          goto LABEL_157;
        }

        continue;
      }

      sub_1B0439010(v274, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      goto LABEL_152;
    }

    break;
  }

  __break(1u);
LABEL_157:
  v293 = v363 + v329;
  v294 = -v386;
  v295 = v332;
  v296 = v339;
  while (2)
  {
    if (v270 < v402)
    {
      v297 = v270;
      sub_1B0C41D78(v293, v296, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0C41D78(v296 + *(v403 + 20), v257, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v299 = v257;
      v300 = v340;
      if (EnumCaseMultiPayload == 4)
      {
        (*v401)(v340, v299, v41);
        v301 = (*v400)(v300, v41);
        if (v301 == v399 && ((*v397)(v295, v300, v41), (*v396)(v295, v41), v302 = *v295 - 52, v302 <= 0x2C) && ((1 << v302) & 0x100000000107) != 0)
        {
          (*v398)(v300, v41);
          sub_1B0439010(v296, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          (*v398)(v300, v41);
LABEL_167:
          v303 = v296;
          v304 = v338;
          sub_1B0C41DE0(v303, v338, type metadata accessor for CommandConnection.RecentErrors.Error);
          v305 = sub_1B0C41C98(v304);
          sub_1B0439010(v304, type metadata accessor for CommandConnection.RecentErrors.Error);
          v296 = v339;
          if (v305)
          {
            v284 = v342;
            v285 = v379;
            sub_1B03B5C80(v342, v379, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v286 = v343;
            sub_1B03B5C80(v285, v343, &qword_1EB6E39C0, &qword_1B0EA35E0);
            v306 = sub_1B0E43108();
            v288 = v378;
            (*(*(v306 - 8) + 56))(v378, 1, 1, v306);
            v289 = v352;
            v290 = v352;
            v291 = 3;
            goto LABEL_154;
          }
        }

        v270 = v297 - 1;
        v293 += v294;
        v257 = v360;
        if (!v297)
        {
          goto LABEL_170;
        }

        continue;
      }

      sub_1B0439010(v299, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      goto LABEL_167;
    }

    break;
  }

  __break(1u);
LABEL_170:
  if (v387)
  {
    v307 = v384;
    v308 = v381;
    v309 = v387;
    sub_1B0B6DCB0(v384, v381, v387);
    sub_1B04420D8(v307);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v310 = v379;
    sub_1B0C41550(v307, v308, v309, v379);
    v311 = v343;
    sub_1B03B5C80(v310, v343, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v312 = sub_1B0E43108();
    v313 = v378;
    (*(*(v312 - 8) + 56))(v378, 1, 1, v312);
    v289 = v352;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(1, v311, v313, v352);
    sub_1B0447F00(v307);

    sub_1B0B6DCF0(v307, v308, v309);
    sub_1B0B6DCF0(v374, v375, v380);
    sub_1B0398EFC(v310, &qword_1EB6E39C0, &qword_1B0EA35E0);
    goto LABEL_172;
  }

  v315 = *v394;
  if ((*v394)(v344, 1, v41) == 1)
  {
    v316 = v331;
    sub_1B03B5C80(v341, v331, &unk_1EB6E5A90, &unk_1B0EDC020);
    if (v315(v316, 1, v41) == 1)
    {
      sub_1B0398EFC(v331, &unk_1EB6E5A90, &unk_1B0EDC020);
      goto LABEL_176;
    }

    v322 = v330;
    (*v401)(v330, v331, v41);
    v323 = v336;
    (*v397)(v336, v322, v41);
    v324 = v377;
    swift_storeEnumTagMultiPayload();
    v325 = v379;
    sub_1B0C41DE0(v323, v379, type metadata accessor for ConnectionStatus.Error.Details);
    (*v376)(v325, 0, 1, v324);
    v326 = v343;
    sub_1B03B5C80(v325, v343, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v327 = sub_1B0E43108();
    v328 = v378;
    (*(*(v327 - 8) + 56))(v378, 1, 1, v327);
    v289 = v352;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v326, v328, v352);
    sub_1B0B6DCF0(v374, v375, v380);
    sub_1B0398EFC(v325, &qword_1EB6E39C0, &qword_1B0EA35E0);
    (*v398)(v322, v41);
LABEL_172:
    v314 = v342;
  }

  else
  {
LABEL_176:
    v317 = v342;
    v318 = v379;
    sub_1B03B5C80(v342, v379, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v319 = v343;
    sub_1B03B5C80(v318, v343, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v320 = sub_1B0E43108();
    v321 = v378;
    (*(*(v320 - 8) + 56))(v378, 1, 1, v320);
    v289 = v352;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(4, v319, v321, v352);
    sub_1B0B6DCF0(v374, v375, v380);
    sub_1B0398EFC(v318, &qword_1EB6E39C0, &qword_1B0EA35E0);
    v314 = v317;
  }

  sub_1B0398EFC(v314, &qword_1EB6E39C0, &qword_1B0EA35E0);
  v292 = v341;
LABEL_155:
  sub_1B0398EFC(v292, &unk_1EB6E5A90, &unk_1B0EDC020);
  sub_1B0398EFC(v348, &qword_1EB6E35A0, &qword_1B0E99850);
  v382(v289, 0, 1, v353);
  return sub_1B0398EFC(v344, &unk_1EB6E5A90, &unk_1B0EDC020);
}