uint64_t sub_1C2F68614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076088, &qword_1C2F7D430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2F68698()
{
  result = qword_1EC076FA0;
  if (!qword_1EC076FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076FA0);
  }

  return result;
}

unint64_t sub_1C2F686F0()
{
  result = qword_1EC076FA8;
  if (!qword_1EC076FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076FA8);
  }

  return result;
}

id sub_1C2F68770()
{
  result = [objc_allocWithZone(type metadata accessor for FTMenuItemRegistry()) init];
  qword_1EDEBCC58 = result;
  return result;
}

id FTMenuItemRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  if (qword_1EDEBC5F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C2F761FC();
  __swift_project_value_buffer(v19, qword_1EDEBC600);

  v20 = sub_1C2F761DC();
  v21 = sub_1C2F769EC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v44 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1C2EFAB28(a1, a2, &v44);
    _os_log_impl(&dword_1C2EF2000, v20, v21, "Register custom item providers for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1C6929E80](v23, -1, -1);
    MEMORY[0x1C6929E80](v22, -1, -1);
  }

  v24 = OBJC_IVAR___CCFTMenuItemRegistry_menuItemProviders;
  swift_beginAccess();
  v25 = *(v13 + v24);
  if (*(v25 + 16) && (v26 = sub_1C2EFAEC0(a1, a2), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 8 * v26);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for FTMenuItemProviderContainer();
    v28 = swift_allocObject();
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 80) = 0u;
    *(v28 + 96) = 0u;
    *(v28 + 112) = 0u;
    *(v28 + 128) = 0u;
    *(v28 + 144) = 0u;
    *(v28 + 160) = 0u;
    *(v28 + 176) = 0u;
    *(v28 + 192) = 0u;
    *(v28 + 208) = 0u;
    *(v28 + 224) = 0u;
    *(v28 + 240) = 0u;
    *(v28 + 256) = 0u;
    *(v28 + 272) = 0u;
    *(v28 + 288) = 0u;
    *(v28 + 304) = 0u;
    *(v28 + 320) = 0u;
    *(v28 + 336) = 0u;
    *(v28 + 352) = 0u;
    *(v28 + 368) = 0u;
    swift_beginAccess();

    v29 = *(v13 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43[0] = *(v13 + v24);
    *(v13 + v24) = 0x8000000000000000;
    sub_1C2EFB014(v28, a1, a2, isUniquelyReferenced_nonNull_native, &qword_1EC076FC8, &qword_1C2F7D600);

    *(v13 + v24) = *&v43[0];
    swift_endAccess();
  }

  sub_1C2EFB1B4(a3, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 16);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a4, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 56);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a5, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 96);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a6, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 136);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a7, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 176);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a8, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 216);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a9, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 256);
    swift_endAccess();
  }

  sub_1C2EFB1B4(a10, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 296);
    swift_endAccess();
  }

  v38 = a1;
  sub_1C2EFB1B4(a11, &v44);
  if (v45)
  {
    sub_1C2EF6918(&v44, v43);
    sub_1C2EF6918(v43, v42);
    swift_beginAccess();
    sub_1C2EFB224(v42, v28 + 336);
    swift_endAccess();
  }

  if (a12)
  {
    swift_beginAccess();
    v31 = *(v28 + 376);
    *(v28 + 376) = a12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FC0, &qword_1C2F7D4F8);
  v32 = swift_allocObject();
  sub_1C2EFB1B4(a3, v32 + 32);
  sub_1C2EFB1B4(a4, v32 + 72);
  sub_1C2EFB1B4(a5, v32 + 112);
  sub_1C2EFB1B4(a6, v32 + 152);
  sub_1C2EFB1B4(a7, v32 + 192);
  sub_1C2EFB1B4(a8, v32 + 232);
  sub_1C2EFB1B4(a9, v32 + 272);
  sub_1C2EFB1B4(a10, v32 + 312);
  sub_1C2EFB1B4(a11, v32 + 352);
  sub_1C2EFB1B4(v32 + 32, &v44);
  if (v45)
  {
    goto LABEL_38;
  }

  sub_1C2EFB668(&v44);
  sub_1C2EFB1B4(v32 + 72, &v44);
  if (v45)
  {
    goto LABEL_38;
  }

  sub_1C2EFB668(&v44);
  sub_1C2EFB1B4(v32 + 112, &v44);
  if (v45)
  {
    goto LABEL_38;
  }

  sub_1C2EFB668(&v44);
  sub_1C2EFB1B4(v32 + 152, &v44);
  if (v45)
  {
    goto LABEL_38;
  }

  sub_1C2EFB668(&v44);
  sub_1C2EFB1B4(v32 + 192, &v44);
  if (v45)
  {
    goto LABEL_38;
  }

  sub_1C2EFB668(&v44);
  sub_1C2EFB1B4(v32 + 232, &v44);
  if (v45 || (sub_1C2EFB668(&v44), sub_1C2EFB1B4(v32 + 272, &v44), v45) || (sub_1C2EFB668(&v44), sub_1C2EFB1B4(v32 + 312, &v44), v45) || (sub_1C2EFB668(&v44), sub_1C2EFB1B4(v32 + 352, &v44), v45))
  {
LABEL_38:
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return sub_1C2EFB668(&v44);
  }

  else
  {
    sub_1C2EFB668(&v44);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (!a12)
    {

      v34 = sub_1C2F761DC();
      v35 = sub_1C2F769EC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v44 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_1C2EFAB28(v38, a2, &v44);
        _os_log_impl(&dword_1C2EF2000, v34, v35, "No custom item providers registered for %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1C6929E80](v37, -1, -1);
        MEMORY[0x1C6929E80](v36, -1, -1);
      }
    }
  }
}

id FTMenuItemRegistry.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___CCFTMenuItemRegistry_menuItemProviders] = MEMORY[0x1E69E7CC8];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id FTMenuItemRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FTMenuItemProviderContainer.conferenceParticipants.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 376);
}

uint64_t FTMenuItemProviderContainer.deinit()
{
  sub_1C2EFB668(v0 + 16);
  sub_1C2EFB668(v0 + 56);
  sub_1C2EFB668(v0 + 96);
  sub_1C2EFB668(v0 + 136);
  sub_1C2EFB668(v0 + 176);
  sub_1C2EFB668(v0 + 216);
  sub_1C2EFB668(v0 + 256);
  sub_1C2EFB668(v0 + 296);
  sub_1C2EFB668(v0 + 336);
  v1 = *(v0 + 376);

  return v0;
}

double sub_1C2F6949C()
{
  result = 0.0;
  v0[22] = 0u;
  v0[23] = 0u;
  v0[20] = 0u;
  v0[21] = 0u;
  v0[18] = 0u;
  v0[19] = 0u;
  v0[16] = 0u;
  v0[17] = 0u;
  v0[14] = 0u;
  v0[15] = 0u;
  v0[12] = 0u;
  v0[13] = 0u;
  v0[10] = 0u;
  v0[11] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_1C2F694D8()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBC600);
  __swift_project_value_buffer(v0, qword_1EDEBC600);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F69550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076758, &qword_1C2F7A260);
  v40 = a2;
  result = sub_1C2F76D7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1C2F76F9C();
      sub_1C2F7673C();
      result = sub_1C2F76FDC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C2F69810(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076768, &unk_1C2F7A270);
  v38 = a2;
  result = sub_1C2F76D7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 40 * v21;
      v24 = *v23;
      v41 = *(v23 + 5);
      v42 = *(v23 + 4);
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);
      v27 = *(v23 + 32);
      v39 = v26;
      v40 = *(v23 + 8);
      if ((v38 & 1) == 0)
      {
      }

      result = MEMORY[0x1C6929560](*(v8 + 40), v22, 4);
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v24;
      *(v17 + 4) = v42;
      *(v17 + 5) = v41;
      *(v17 + 8) = v40;
      *(v17 + 16) = v25;
      *(v17 + 24) = v39;
      *(v17 + 32) = v27;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C2F69ADC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076760, &qword_1C2F7A268);
  result = sub_1C2F76D7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
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
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = (*(v5 + 56) + 2 * v21);
      v24 = v23[1];
      v25 = *v23;
      result = MEMORY[0x1C6929560](*(v8 + 40), v22, 4);
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = (*(v8 + 56) + 2 * v16);
      *v17 = v25;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C2F69D58(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1C2F76D7C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1C2F76F9C();
      sub_1C2F7673C();
      result = sub_1C2F76FDC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1C2F69FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C2EFAEC0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C2F69550(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1C2EFAEC0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1C2F76F2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C2F6A480();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_1C2F6A180(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C2F3D888(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1C2F69810(v14, a3 & 1);
      v18 = *v4;
      result = sub_1C2F3D888(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1C2F76F2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1C2F6A5F8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 4 * result) = a2;
    v22 = v20[7] + 40 * result;
    v23 = *a1;
    v24 = *(a1 + 16);
    *(v22 + 32) = *(a1 + 32);
    *v22 = v23;
    *(v22 + 16) = v24;
    v25 = v20[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v20[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 40 * result;

  return sub_1C2F6A790(a1, v21);
}

unint64_t sub_1C2F6A2E0(__int16 a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C2F3D888(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1C2F6A7EC();
      result = v17;
      goto LABEL_8;
    }

    sub_1C2F69ADC(v14, a3 & 1);
    v18 = *v4;
    result = sub_1C2F3D888(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_1C2F76F2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 2 * result);
    *v21 = a1 & 1;
    v21[1] = HIBYTE(a1) & 1;
  }

  else
  {

    return sub_1C2F6A42C(result, a2, a1 & 0x101, v20);
  }

  return result;
}

unint64_t sub_1C2F6A42C(unint64_t result, int a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = (a4[7] + 2 * result);
  *v4 = a3 & 1;
  v4[1] = HIBYTE(a3) & 1;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

void *sub_1C2F6A480()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076758, &qword_1C2F7A260);
  v2 = *v0;
  v3 = sub_1C2F76D6C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C2F6A5F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076768, &unk_1C2F7A270);
  v2 = *v0;
  v3 = sub_1C2F76D6C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v17 *= 40;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v20 + 4);
        v23 = *(v20 + 5);
        v24 = *(v20 + 8);
        v25 = *(v20 + 16);
        v27 = *(v20 + 24);
        v26 = *(v20 + 32);
        *(*(v4 + 48) + v18) = v19;
        v28 = *(v4 + 56) + v17;
        *v28 = v21;
        *(v28 + 4) = v22;
        *(v28 + 5) = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v27;
        *(v28 + 32) = v26;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C2F6A7EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076760, &qword_1C2F7A268);
  v2 = *v0;
  v3 = sub_1C2F76D6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v19[1] = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 2 * v14);
      v18 = *v17;
      LOBYTE(v17) = v17[1];
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
      v19 = (*(v4 + 56) + 2 * v14);
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C2F6A94C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C2F76D6C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1C2F6AAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FE0, &unk_1C2F7D690);
  v4[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v7 = sub_1C2F75E3C();
  v4[24] = v7;
  v8 = *(v7 - 8);
  v4[25] = v8;
  v9 = *(v8 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v10 = sub_1C2F75C8C();
  v4[28] = v10;
  v11 = *(v10 - 8);
  v4[29] = v11;
  v12 = *(v11 + 64) + 15;
  v4[30] = swift_task_alloc();
  v13 = sub_1C2F75B3C();
  v4[31] = v13;
  v14 = *(v13 - 8);
  v4[32] = v14;
  v15 = *(v14 + 64) + 15;
  v4[33] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076028, &unk_1C2F78FE0);
  v4[34] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v20 = sub_1C2F75C6C();
  v4[41] = v20;
  v21 = *(v20 - 8);
  v4[42] = v21;
  v22 = *(v21 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  sub_1C2F7688C();
  v4[45] = sub_1C2F7687C();
  v24 = sub_1C2F7684C();
  v4[46] = v24;
  v4[47] = v23;

  return MEMORY[0x1EEE6DFA0](sub_1C2F6ADDC, v24, v23);
}

uint64_t sub_1C2F6ADDC()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[19];
  v9 = v0[20];
  sub_1C2F75C7C();
  sub_1C2F75C0C();
  v10 = *(v3 + 8);
  v10(v1, v2);
  sub_1C2EF6A3C(v9, v5, &unk_1EC076A90, &qword_1C2F78FF0);
  v11 = *(v7 + 48);
  v0[48] = v11;
  v0[49] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v5, 1, v6) == 1)
  {
    v12 = v0[39];
    v13 = v0[31];
    v14 = v0[32];
    sub_1C2F0A8D8(v0[37], &unk_1EC076A90, &qword_1C2F78FF0);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  else
  {
    v15 = v0[43];
    v16 = v0[41];
    v17 = v0[39];
    v18 = v0[37];
    v19 = v0[28];
    v20 = v0[29];
    sub_1C2F75C7C();
    (*(v20 + 8))(v18, v19);
    sub_1C2F75C0C();
    v10(v15, v16);
  }

  v21 = v0[39];
  v22 = v0[35];
  v23 = v0[31];
  v24 = v0[32];
  v25 = *(v0[34] + 48);
  sub_1C2EF6A3C(v0[40], v22, &unk_1EC076030, qword_1C2F7C380);
  sub_1C2EF6A3C(v21, v22 + v25, &unk_1EC076030, qword_1C2F7C380);
  v26 = *(v24 + 48);
  if (v26(v22, 1, v23) == 1)
  {
    v27 = v0[40];
    v28 = v0[31];
    sub_1C2F0A8D8(v0[39], &unk_1EC076030, qword_1C2F7C380);
    sub_1C2F0A8D8(v27, &unk_1EC076030, qword_1C2F7C380);
    if (v26(v22 + v25, 1, v28) == 1)
    {
      sub_1C2F0A8D8(v0[35], &unk_1EC076030, qword_1C2F7C380);
LABEL_14:
      v44 = v0[45];
      v45 = v0[24];
      v46 = v0[25];
      v47 = v0[18];

      (*(v46 + 104))(v47, *MEMORY[0x1E6982BC8], v45);
      v49 = v0[43];
      v48 = v0[44];
      v51 = v0[39];
      v50 = v0[40];
      v53 = v0[37];
      v52 = v0[38];
      v55 = v0[35];
      v54 = v0[36];
      v56 = v0[33];
      v57 = v0[30];
      v59 = v0[27];
      v60 = v0[26];
      v62 = v0[23];

      v58 = v0[1];

      return v58();
    }

    goto LABEL_9;
  }

  v29 = v0[31];
  sub_1C2EF6A3C(v0[35], v0[38], &unk_1EC076030, qword_1C2F7C380);
  v30 = v26(v22 + v25, 1, v29);
  v32 = v0[39];
  v31 = v0[40];
  v33 = v0[38];
  if (v30 == 1)
  {
    v34 = v0[31];
    v35 = v0[32];
    sub_1C2F0A8D8(v0[39], &unk_1EC076030, qword_1C2F7C380);
    sub_1C2F0A8D8(v31, &unk_1EC076030, qword_1C2F7C380);
    (*(v35 + 8))(v33, v34);
LABEL_9:
    sub_1C2F0A8D8(v0[35], &qword_1EC076028, &unk_1C2F78FE0);
    goto LABEL_10;
  }

  v61 = v0[35];
  v40 = v0[32];
  v39 = v0[33];
  v41 = v0[31];
  (*(v40 + 32))(v39, v22 + v25, v41);
  sub_1C2F6C798(&unk_1EC076050, MEMORY[0x1E6969610]);
  v42 = sub_1C2F7662C();
  v43 = *(v40 + 8);
  v43(v39, v41);
  sub_1C2F0A8D8(v32, &unk_1EC076030, qword_1C2F7C380);
  sub_1C2F0A8D8(v31, &unk_1EC076030, qword_1C2F7C380);
  v43(v33, v41);
  sub_1C2F0A8D8(v61, &unk_1EC076030, qword_1C2F7C380);
  if (v42)
  {
    goto LABEL_14;
  }

LABEL_10:
  v36 = swift_task_alloc();
  v0[50] = v36;
  *v36 = v0;
  v36[1] = sub_1C2F6B314;
  v37 = v0[21];

  return LanguageSelectionViewModel.prepare()();
}

uint64_t sub_1C2F6B314()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v6 = *v0;

  v3 = *(v1 + 376);
  v4 = *(v1 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1C2F6B434, v4, v3);
}

uint64_t sub_1C2F6B434()
{
  v1 = v0[45];
  v2 = v0[21];
  v3 = v0[19];

  swift_getKeyPath();
  v0[14] = v2;
  sub_1C2F6C798(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  v4 = *(v2 + 16);
  v91 = v0;
  v0[2] = sub_1C2F75B0C();
  v0[3] = v5;
  v6 = v0 + 2;
  v6[2] = 45;
  v6[3] = 0xE100000000000000;
  v6[4] = 95;
  v6[5] = 0xE100000000000000;
  sub_1C2EF66C8();

  v90 = v6;
  v7 = sub_1C2F76AFC();
  v9 = v8;

  if (v4 >> 62)
  {
    goto LABEL_64;
  }

  v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_65:
    v17 = v91;
    v75 = v91[24];
    v76 = v91[25];
    v77 = v91[18];

    (*(v76 + 104))(v77, *MEMORY[0x1E6982BC8], v75);

    goto LABEL_66;
  }

LABEL_3:
  v11 = 0;
  while ((v4 & 0xC000000000000001) == 0)
  {
    if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v10 = sub_1C2F76BBC();
      if (!v10)
      {
        goto LABEL_65;
      }

      goto LABEL_3;
    }

    v12 = *(v4 + 8 * v11 + 32);

    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    if (sub_1C2F75B0C() == v7 && v14 == v9)
    {
      goto LABEL_17;
    }

    v16 = sub_1C2F76EFC();

    if (v16)
    {
      goto LABEL_18;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_65;
    }
  }

  v12 = MEMORY[0x1C6929250](v11, v4);
  v13 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
  v17 = v91;
  v18 = v91[48];
  v19 = v91[49];
  v20 = v91[36];
  v21 = v91[28];
  v22 = v91[20];

  sub_1C2EF6A3C(v22, v20, &unk_1EC076A90, &qword_1C2F78FF0);
  v23 = v18(v20, 1, v21);
  v24 = v91[36];
  if (v23 == 1)
  {

    sub_1C2F0A8D8(v24, &unk_1EC076A90, &qword_1C2F78FF0);
LABEL_34:
    v37 = v17[25];
    swift_getKeyPath();
    v17[15] = v12;
    sub_1C2F6C798(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
    sub_1C2F75DAC();

    v38 = *(v12 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = MEMORY[0x1E6982BD0];
        goto LABEL_55;
      }
    }

    else if (v38 <= 1)
    {
      v39 = MEMORY[0x1E6982BD8];
LABEL_55:
      (*(v37 + 104))(v17[18], *v39, v17[24]);
      goto LABEL_66;
    }

    v39 = MEMORY[0x1E6982BC8];
    goto LABEL_55;
  }

  (*(v91[29] + 32))(v91[30], v91[36], v91[28]);
  v91[8] = sub_1C2F75B0C();
  v91[9] = v25;
  v91[10] = 45;
  v91[11] = 0xE100000000000000;
  v91[12] = 95;
  v91[13] = 0xE100000000000000;
  v9 = sub_1C2F76AFC();
  v27 = v26;

  v7 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1C6929250](v7, v4);
      v30 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v29 = *(v4 + 8 * v7 + 32);

      v30 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_63;
      }
    }

    if (sub_1C2F75B0C() == v9 && v31 == v27)
    {
      break;
    }

    v33 = sub_1C2F76EFC();

    if (v33)
    {
      goto LABEL_40;
    }

    ++v7;
    if (v30 == v10)
    {
      v17 = v91;
      v35 = v91[29];
      v34 = v91[30];
      v36 = v91[28];

      (*(v35 + 8))(v34, v36);
      goto LABEL_34;
    }
  }

LABEL_40:

  swift_getKeyPath();
  v90[14] = v12;
  sub_1C2F6C798(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  v40 = *(v12 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);
  if (v40 > 3)
  {
    v41 = MEMORY[0x1E6982BC8];
  }

  else
  {
    v41 = qword_1E819FD98[v40];
  }

  v43 = v91[29];
  v42 = v91[30];
  v44 = v91[28];
  v94 = *(v91[25] + 104);
  v94(v91[27], *v41, v91[24]);
  swift_getKeyPath();
  v91[17] = v29;
  sub_1C2F75DAC();

  (*(v43 + 8))(v42, v44);
  v45 = *(v29 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);

  v46 = MEMORY[0x1E6982BC8];
  v47 = MEMORY[0x1E6982BC8];
  if (v45 <= 3)
  {
    v47 = qword_1E819FD98[v45];
  }

  v17 = v91;
  v49 = v91[26];
  v48 = v91[27];
  v50 = v91[24];
  v51 = v91[25];
  v53 = v91[22];
  v52 = v91[23];
  v94(v49, *v47, v50);
  v54 = *(v53 + 48);
  v55 = *(v51 + 32);
  v55(v52, v48, v50);
  v55(v52 + v54, v49, v50);
  v56 = *(v51 + 88);
  v57 = v56(v52 + v54, v50);
  v58 = v57;
  v59 = *MEMORY[0x1E6982BD0];
  if (v57 != *MEMORY[0x1E6982BD0])
  {
    if (v57 != *v46)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v56(v91[23], v91[24]) == v57)
  {
    v60 = v91[24];
    v61 = v91[25];
    v94(v91[18], v58, v60);
    (*(v61 + 8))(v52 + v54, v60);
    goto LABEL_66;
  }

LABEL_50:
  v69 = v56(v91[23], v91[24]);
  if (v69 != v59)
  {
    v58 = v69;
    if (v69 == *MEMORY[0x1E6982BD8])
    {
      v72 = v56(v52 + v54, v91[24]);
      if (v72 != v59 && v72 != v58)
      {
        goto LABEL_61;
      }

LABEL_52:
      v70 = v91[24];
      v71 = v91[18];
      (*(v91[25] + 8))(v91[23], v70);
      v66 = v71;
      v67 = v58;
      v68 = v70;
LABEL_53:
      v94(v66, v67, v68);
      goto LABEL_66;
    }

    if (v69 != *v46)
    {
      goto LABEL_61;
    }

LABEL_49:
    v62 = v91[24];
    v63 = v91[23];
    v64 = v91[18];
    v65 = *(v91[25] + 8);
    v65(v52 + v54, v62);
    v65(v63, v62);
    v66 = v64;
    v67 = v58;
    v68 = v62;
    goto LABEL_53;
  }

  v58 = v56(v52 + v54, v91[24]);
  if (v58 == *MEMORY[0x1E6982BD8])
  {
    goto LABEL_52;
  }

LABEL_61:
  v73 = v91[23];
  v74 = v91[25] + 104;
  v94(v91[18], *v46, v91[24]);
  sub_1C2F0A8D8(v73, &qword_1EC076FE0, &unk_1C2F7D690);
LABEL_66:
  v79 = v17[43];
  v78 = v17[44];
  v81 = v17[39];
  v80 = v17[40];
  v83 = v17[37];
  v82 = v17[38];
  v85 = v17[35];
  v84 = v17[36];
  v86 = v17[33];
  v87 = v17;
  v88 = v17[30];
  v92 = v87[27];
  v93 = v87[26];
  v95 = v87[23];

  v89 = v87[1];

  return v89();
}

uint64_t sub_1C2F6BE38()
{
  v1[4] = v0;
  v2 = sub_1C2F75C8C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_1C2F75E3C();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_1C2F7688C();
  v1[13] = sub_1C2F7687C();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_1C2F6BFB0;

  return LanguageSelectionViewModel.prepare()();
}

uint64_t sub_1C2F6BFB0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v5 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F6C0EC, v5, v4);
}

size_t sub_1C2F6C0EC()
{
  v1 = v0[13];
  v2 = v0[4];

  swift_getKeyPath();
  v0[2] = v2;
  sub_1C2F6C798(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  v3 = *(v2 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_35:
    v4 = sub_1C2F76BBC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = v0[9];
    v45 = v3 & 0xC000000000000001;
    v44 = v3 & 0xFFFFFFFFFFFFFF8;
    v41 = *MEMORY[0x1E6982BC8];
    v40 = (v7 + 104);
    v39 = *MEMORY[0x1E6982BD8];
    v38 = (v7 + 8);
    v37 = *MEMORY[0x1E6982BD0];
    v42 = v4;
    v43 = v3;
    while (1)
    {
      if (v45)
      {
        v9 = MEMORY[0x1C6929250](v6, v3);
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v18 = v46;
          v5 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v9 = *(v3 + 8 * v6 + 32);

        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      swift_getKeyPath();
      v0[3] = v9;
      sub_1C2F6C798(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel);
      sub_1C2F75DAC();

      v11 = *(v9 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);
      v12 = v39;
      if (v11 >= 2)
      {
        v12 = v41;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            v12 = v37;
          }

          else
          {
            v12 = v41;
          }
        }
      }

      v13 = *v40;
      v15 = v0[10];
      v14 = v0[11];
      v16 = v0[8];
      (*v40)(v14, v12, v16);
      v13(v15, v41, v16);
      sub_1C2F6C798(&qword_1EC076FD8, MEMORY[0x1E6982BE0]);
      LOBYTE(v13) = sub_1C2F7662C();
      v17 = *v38;
      (*v38)(v15, v16);
      v17(v14, v16);
      if (v13)
      {
      }

      else
      {
        sub_1C2F76CEC();
        v8 = *(v46 + 16);
        sub_1C2F76D1C();
        sub_1C2F76D2C();
        sub_1C2F76CFC();
      }

      v3 = v43;
      ++v6;
      if (v10 == v42)
      {
        goto LABEL_20;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v19 = sub_1C2F76BBC();
    if (v19)
    {
      goto LABEL_25;
    }

LABEL_37:

    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_38;
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_25:
  result = sub_1C2EF671C(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
    return result;
  }

  v21 = 0;
  v22 = v0[6];
  v23 = v5;
  v24 = v18;
  v25 = (v22 + 16);
  do
  {
    v26 = v0[7];
    v27 = v0[5];
    if ((v18 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1C6929250](v21, v24);
      (*v25)(v26, v28 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      (*v25)(v26, *(v24 + 8 * v21 + 32) + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v27);
    }

    v30 = *(v23 + 16);
    v29 = *(v23 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1C2EF671C(v29 > 1, v30 + 1, 1);
    }

    v31 = v0[7];
    v32 = v0[5];
    ++v21;
    *(v23 + 16) = v30 + 1;
    (*(v22 + 32))(v23 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v30, v31, v32);
    v24 = v18;
  }

  while (v19 != v21);

LABEL_38:
  v34 = v0[10];
  v33 = v0[11];
  v35 = v0[7];

  v36 = v0[1];

  return v36(v23);
}

uint64_t sub_1C2F6C654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C2F06348;

  return sub_1C2F6AAAC(a1, a2, a3);
}

uint64_t sub_1C2F6C708()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C2F06110;

  return sub_1C2F6BE38();
}

uint64_t sub_1C2F6C798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PushToTalkChannelState.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

unint64_t sub_1C2F6C86C()
{
  result = qword_1EC076FE8;
  if (!qword_1EC076FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076FE8);
  }

  return result;
}

id static ContactKeys.poster.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076AF8, &qword_1C2F7D770);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C2F7D760;
  v1 = *MEMORY[0x1E695C258];
  v2 = *MEMORY[0x1E695C270];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C278];
  v4 = *MEMORY[0x1E695C400];
  *(v0 + 48) = *MEMORY[0x1E695C278];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C240];
  v6 = *MEMORY[0x1E695C230];
  *(v0 + 64) = *MEMORY[0x1E695C240];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C310];
  v8 = *MEMORY[0x1E695C328];
  *(v0 + 80) = *MEMORY[0x1E695C310];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C3C8];
  *(v0 + 96) = *MEMORY[0x1E695C3C8];
  v31 = objc_opt_self();
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  result = [v31 descriptorForUsedKeys];
  if (result)
  {
    v20 = *MEMORY[0x1E695C420];
    *(v0 + 104) = result;
    *(v0 + 112) = v20;
    v21 = *MEMORY[0x1E695C428];
    v22 = *MEMORY[0x1E695C430];
    *(v0 + 120) = *MEMORY[0x1E695C428];
    *(v0 + 128) = v22;
    v23 = *MEMORY[0x1E695C208];
    v24 = *MEMORY[0x1E695C330];
    *(v0 + 136) = *MEMORY[0x1E695C208];
    *(v0 + 144) = v24;
    v25 = objc_opt_self();
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    *(v0 + 152) = [v25 descriptorForRequiredKeys];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2F6CAF8()
{
  result = sub_1C2F766AC();
  qword_1EC076FF0 = result;
  return result;
}

uint64_t sub_1C2F6CB54()
{
  result = sub_1C2F766AC();
  qword_1EC076FF8 = result;
  return result;
}

uint64_t sub_1C2F6CBB0()
{
  result = sub_1C2F766AC();
  qword_1EC077000 = result;
  return result;
}

uint64_t sub_1C2F6CC0C()
{
  result = sub_1C2F766AC();
  qword_1EC077008 = result;
  return result;
}

id sub_1C2F6CC68(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

double static CallScreeningStatus.screened.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C2F7D7C0;
  return result;
}

BOOL CallScreeningStatus.isBaseCase(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  v4 = v3 == 3;
  v5 = v3 == 2;
  v6 = (v3 - 4) < 0xFFFFFFFFFFFFFFFDLL;
  v7 = v3 == 1;
  if (v2 != 1)
  {
    v7 = v6;
  }

  if (v2 == 2)
  {
    v7 = v5;
  }

  if (v2 == 3)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t CallScreeningService.statusUpdatesForCall(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x1E69D8E50];
  v8 = sub_1C2F76A6C();

  sub_1C2F09348(a1, v14);
  sub_1C2F6E878(v3, v12);
  v9 = swift_allocObject();
  sub_1C2EF6918(v14, v9 + 16);
  v10 = v12[1];
  *(v9 + 56) = v12[0];
  *(v9 + 72) = v10;
  *(v9 + 88) = v13;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077010, &qword_1C2F7D7F0);
  a2[4] = sub_1C2F6E960();
  __swift_allocate_boxed_opaque_existential_0(a2);
  *&v14[0] = v8;
  sub_1C2F76A5C();
  sub_1C2F6E9C4();
  return sub_1C2F76EDC();
}

uint64_t sub_1C2F6CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  sub_1C2F7688C();
  v4[11] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F6CF14, v6, v5);
}

uint64_t sub_1C2F6CF14()
{
  v19 = v0;
  v1 = v0[11];
  v2 = v0[8];

  sub_1C2F7599C();
  if (!v0[5])
  {
    sub_1C2F26504((v0 + 2));
    goto LABEL_10;
  }

  sub_1C2F317E8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *v0[7] = xmmword_1C2F7D7D0;
    goto LABEL_13;
  }

  v3 = v0[9];
  v4 = v0[6];
  v5 = [v4 callUUID];
  v6 = sub_1C2F766CC();
  v8 = v7;

  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  if (v6 == (*(v10 + 32))(v9, v10) && v8 == v11)
  {
  }

  else
  {
    v13 = sub_1C2F76EFC();

    if ((v13 & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  v14 = v0[10];
  v15 = v0[7];
  CallScreeningService.screeningStatusForCall(_:)(v0[9], &v18);

  *v15 = v18;
LABEL_13:
  v16 = v0[1];

  return v16();
}

void CallScreeningService.screeningStatusForCall(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C2F75AEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  (*(v12 + 8))(&v67, v11, v12);
  v13 = v68;
  v64 = a2;
  if (v68 == 4)
  {
LABEL_11:
    v26 = [objc_opt_self() sharedInstance];
    v27 = a1[3];
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v27);
    (*(v28 + 64))(v27, v28);
    sub_1C2F75A9C();
    v29 = *(v7 + 8);
    v29(v10, v6);
    v30 = sub_1C2F766AC();

    v31 = [v26 callWithUniqueProxyIdentifier_];

    if (!v31)
    {
      v63 = v29;
      if (qword_1EDEBC5B8 != -1)
      {
        swift_once();
      }

      v35 = sub_1C2F761FC();
      __swift_project_value_buffer(v35, qword_1EDEBDA78);
      sub_1C2F09348(a1, &v67);
      v36 = sub_1C2F761DC();
      v37 = sub_1C2F769DC();
      v38 = os_log_type_enabled(v36, v37);
      v21 = v64;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v65[0] = v62;
        *v39 = 136315394;
        *(v39 + 4) = sub_1C2EFAB28(0xD00000000000001ALL, 0x80000001C2F805E0, v65);
        *(v39 + 12) = 2080;
        v40 = v21;
        v41 = v69;
        v42 = v70;
        __swift_project_boxed_opaque_existential_1(&v67, v69);
        v43 = *(v42 + 64);
        v44 = v42;
        v21 = v40;
        v43(v41, v44);
        v45 = sub_1C2F75A9C();
        v47 = v46;
        v63(v10, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(&v67);
        v48 = sub_1C2EFAB28(v45, v47, v65);

        *(v39 + 14) = v48;
        _os_log_impl(&dword_1C2EF2000, v36, v37, "%s Did not find call with identifier %s", v39, 0x16u);
        v49 = v62;
        swift_arrayDestroy();
        MEMORY[0x1C6929E80](v49, -1, -1);
        MEMORY[0x1C6929E80](v39, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v67);
      }

      goto LABEL_40;
    }

    if ([v31 status] != 1)
    {

      v14 = 0;
      v13 = 1;
      v21 = v64;
      goto LABEL_41;
    }

    v32 = [v31 isScreening];
    v21 = v64;
    if (v32)
    {
      v33 = [v31 smartHoldingSession];
      if (v33)
      {
        v34 = v33;

LABEL_40:
        v14 = 0;
        v13 = 1;
        goto LABEL_41;
      }

      v50 = [v31 receptionistState];
      if (v50 <= 7)
      {
        if (((1 << v50) & 0x38) != 0)
        {
          v52 = v3[3];
          v53 = v3[4];
          __swift_project_boxed_opaque_existential_1(v3, v52);
          v54 = (*(v53 + 16))(v52, v53);
          if (v55)
          {
            v14 = v54;
            v13 = v55;
          }

          else
          {
            v57 = [v31 receptionistSession];
            if (v57 && (v58 = v57, v59 = [v57 summary], v58, v59))
            {
              v14 = sub_1C2F766CC();
              v13 = v60;
            }

            else
            {

              v14 = 0;
              v13 = 0;
            }
          }

          goto LABEL_41;
        }

        if (((1 << v50) & 6) != 0)
        {

          v14 = 0;
          v13 = 3;
          goto LABEL_41;
        }

        if (((1 << v50) & 0xC0) != 0)
        {

          v14 = 0;
          v13 = 2;
          goto LABEL_41;
        }
      }

      if (!v50)
      {
        v56 = [v31 isScreening];

        v14 = 0;
        if (v56)
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_41;
      }
    }

    goto LABEL_40;
  }

  v14 = v67;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 56))(&v67, v15, v16);
  if (v67 != 2)
  {
    sub_1C2F6EA1C(v14, v13);
    goto LABEL_11;
  }

  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v17 = sub_1C2F761FC();
  __swift_project_value_buffer(v17, qword_1EDEBDA78);
  sub_1C2F6EA44(v14, v13);
  v18 = sub_1C2F761DC();
  v19 = sub_1C2F769DC();
  sub_1C2F6EA1C(v14, v13);
  v20 = os_log_type_enabled(v18, v19);
  v21 = v64;
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v66 = v23;
    *v22 = 136315138;
    switch(v13)
    {
      case 3:
        sub_1C2F6EA1C(v14, 3);
        v24 = 0xE900000000000067;
        v25 = 0x6E696E6565726353;
        break;
      case 2:
        sub_1C2F6EA1C(v14, 2);
        v24 = 0xEE006C69616D6563;
        v25 = 0x696F56206576694CLL;
        break;
      case 1:
        sub_1C2F6EA1C(v14, 1);
        v24 = 0xED0000676E696E65;
        v25 = 0x6572635320746F4ELL;
        break;
      default:
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_1C2F6EA5C(v14, v13);
        MEMORY[0x1C6928D30](0x64656E6565726353, 0xEA00000000002820);
        v65[0] = v14;
        v65[1] = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077028, &qword_1C2F7D7F8);
        sub_1C2F76D3C();
        MEMORY[0x1C6928D30](41, 0xE100000000000000);
        sub_1C2F6EA1C(v14, v13);
        v25 = v67;
        v24 = v68;
        break;
    }

    v51 = sub_1C2EFAB28(v25, v24, &v66);

    *(v22 + 4) = v51;
    _os_log_impl(&dword_1C2EF2000, v18, v19, "Overriding call screening status with %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1C6929E80](v23, -1, -1);
    MEMORY[0x1C6929E80](v22, -1, -1);
  }

LABEL_41:
  *v21 = v14;
  v21[1] = v13;
}

id CallScreeningService.canScreen(_:)(void *a1)
{
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 64))(v8, v9);
  sub_1C2F75A9C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = sub_1C2F766AC();

  v12 = [v7 callWithUniqueProxyIdentifier_];

  if (v12)
  {
    v13 = [v12 isEligibleForScreening];
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C2F761FC();
    __swift_project_value_buffer(v14, qword_1EDEBDA78);
    sub_1C2F09348(a1, v30);
    v15 = sub_1C2F761DC();
    v16 = sub_1C2F769DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136315394;
      *(v17 + 4) = sub_1C2EFAB28(0x65657263536E6163, 0xED0000293A5F286ELL, &v29);
      *(v17 + 12) = 2080;
      v18 = v10;
      v19 = v31;
      v20 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v20 + 64))(v19, v20);
      v21 = sub_1C2F75A9C();
      v23 = v22;
      v18(v6, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v24 = sub_1C2EFAB28(v21, v23, &v29);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1C2EF2000, v15, v16, "%s Did not find call with identifier %s", v17, 0x16u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v25, -1, -1);
      MEMORY[0x1C6929E80](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    return 0;
  }

  return v13;
}

id CallScreeningService.token(for:)(void *a1)
{
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 64))(v8, v9);
  sub_1C2F75A9C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = sub_1C2F766AC();

  v12 = [v7 callWithUniqueProxyIdentifier_];

  if (v12)
  {
    v13 = [v12 answeringMachineStreamToken];
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C2F761FC();
    __swift_project_value_buffer(v14, qword_1EDEBDA78);
    sub_1C2F09348(a1, v30);
    v15 = sub_1C2F761DC();
    v16 = sub_1C2F769DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136315394;
      *(v17 + 4) = sub_1C2EFAB28(0x6F66286E656B6F74, 0xEB00000000293A72, &v29);
      *(v17 + 12) = 2080;
      v18 = v10;
      v19 = v31;
      v20 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v20 + 64))(v19, v20);
      v21 = sub_1C2F75A9C();
      v23 = v22;
      v18(v6, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v24 = sub_1C2EFAB28(v21, v23, &v29);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1C2EF2000, v15, v16, "%s Did not find call with identifier %s", v17, 0x16u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v25, -1, -1);
      MEMORY[0x1C6929E80](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    return 0;
  }

  return v13;
}

id CallScreeningService.screeningAnnouncmentFinished(for:)(void *a1)
{
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 64))(v8, v9);
  sub_1C2F75A9C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = sub_1C2F766AC();

  v12 = [v7 callWithUniqueProxyIdentifier_];

  if (v12)
  {
    v13 = [v12 screeningAnnouncementHasFinished];
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C2F761FC();
    __swift_project_value_buffer(v14, qword_1EDEBDA78);
    sub_1C2F09348(a1, v30);
    v15 = sub_1C2F761DC();
    v16 = sub_1C2F769DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136315394;
      *(v17 + 4) = sub_1C2EFAB28(0xD000000000000022, 0x80000001C2F80600, &v29);
      *(v17 + 12) = 2080;
      v18 = v10;
      v19 = v31;
      v20 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v20 + 64))(v19, v20);
      v21 = sub_1C2F75A9C();
      v23 = v22;
      v18(v6, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v24 = sub_1C2EFAB28(v21, v23, &v29);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1C2EF2000, v15, v16, "%s Did not find call with identifier %s", v17, 0x16u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v25, -1, -1);
      MEMORY[0x1C6929E80](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    return 0;
  }

  return v13;
}

id CallScreeningService.screeningCallDueToUserinteraction(call:)(void *a1)
{
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 64))(v8, v9);
  sub_1C2F75A9C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = sub_1C2F766AC();

  v12 = [v7 callWithUniqueProxyIdentifier_];

  if (v12)
  {
    v13 = [v12 isScreeningDueToUserInteraction];
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C2F761FC();
    __swift_project_value_buffer(v14, qword_1EDEBDA78);
    sub_1C2F09348(a1, v30);
    v15 = sub_1C2F761DC();
    v16 = sub_1C2F769DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136315394;
      *(v17 + 4) = sub_1C2EFAB28(0xD000000000000028, 0x80000001C2F80630, &v29);
      *(v17 + 12) = 2080;
      v18 = v10;
      v19 = v31;
      v20 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v20 + 64))(v19, v20);
      v21 = sub_1C2F75A9C();
      v23 = v22;
      v18(v6, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v24 = sub_1C2EFAB28(v21, v23, &v29);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1C2EF2000, v15, v16, "%s Did not find call with identifier %s", v17, 0x16u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v25, -1, -1);
      MEMORY[0x1C6929E80](v17, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    return 0;
  }

  return v13;
}

uint64_t _s20CommunicationsUICore19CallScreeningStatusO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 3)
  {
    if (v5 != 3)
    {
      goto LABEL_12;
    }

    sub_1C2F6EA2C(*a1, 3);
    v6 = v4;
    v7 = 3;
    goto LABEL_10;
  }

  if (v3 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    sub_1C2F6EA2C(*a1, 2);
    v6 = v4;
    v7 = 2;
LABEL_10:
    sub_1C2F6EA2C(v6, v7);
    return 1;
  }

  if (v3 != 1)
  {
    if ((v5 - 1) < 3)
    {
      goto LABEL_12;
    }

    if (v3)
    {
      if (!v5)
      {
        sub_1C2F6EA44(*a2, 0);
        v8 = v4;
        v9 = 0;
        goto LABEL_13;
      }

      if (v2 == v4 && v3 == v5)
      {
        sub_1C2F6EA44(*a1, v3);
        sub_1C2F6EA44(v2, v3);
        sub_1C2F6EA2C(v2, v3);
        v6 = v2;
        v7 = v3;
        goto LABEL_10;
      }

      v12 = *a1;
      v13 = sub_1C2F76EFC();
      sub_1C2F6EA44(v4, v5);
      sub_1C2F6EA44(v2, v3);
      sub_1C2F6EA2C(v2, v3);
      sub_1C2F6EA2C(v4, v5);
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v11 = a2[1];

      sub_1C2F6EA44(v4, v5);
      sub_1C2F6EA44(v2, 0);
      sub_1C2F6EA2C(v2, 0);
      sub_1C2F6EA2C(v4, v5);
      if (v5)
      {
        goto LABEL_14;
      }
    }

    return 1;
  }

  if (v5 != 1)
  {
LABEL_12:
    v8 = *a2;
    v9 = a2[1];
LABEL_13:
    sub_1C2F6EA44(v8, v9);
    sub_1C2F6EA44(v2, v3);
    sub_1C2F6EA2C(v2, v3);
LABEL_14:
    sub_1C2F6EA2C(v4, v5);
    return 0;
  }

  sub_1C2F6EA2C(*a1, 1);
  sub_1C2F6EA2C(v4, 1);
  return v5;
}

uint64_t sub_1C2F6E8B0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C2F06348;

  return sub_1C2F6CE78(a1, a2, v2 + 16, v2 + 56);
}

unint64_t sub_1C2F6E960()
{
  result = qword_1EC077018;
  if (!qword_1EC077018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC077010, &qword_1C2F7D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077018);
  }

  return result;
}

unint64_t sub_1C2F6E9C4()
{
  result = qword_1EC077020;
  if (!qword_1EC077020)
  {
    sub_1C2F76A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077020);
  }

  return result;
}

uint64_t sub_1C2F6EA1C(uint64_t a1, uint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1C2F6EA2C(a1, a2);
  }

  return a1;
}

uint64_t sub_1C2F6EA2C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1C2F6EA44(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1C2F6EA5C(uint64_t a1, uint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1C2F6EA44(a1, a2);
  }

  return a1;
}

uint64_t sub_1C2F6EA6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2F6EACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1C2F6EB74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F6EBBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CallScreeningTranscriptsService.UserInputState.description.getter()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t CallScreeningTranscriptsService.UserInputState.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F6ECF8()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t CallScreeningTranscriptsService.__allocating_init(_:captionsProvider:initialMessage:liveReply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v42 = a7;
  v40 = a5;
  v41 = a6;
  v38 = a2;
  v39 = a4;
  v37 = a1;
  v8 = sub_1C2F75C8C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1C2F7669C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = [objc_opt_self() defaultCenter];
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v19 = off_1EDEBDA58;
  v20 = swift_allocObject();
  *(v20 + 32) = MEMORY[0x1E69E7CC0];
  *(v20 + 40) = 0;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 48) = 0;
  sub_1C2F7663C();
  (*(v11 + 16))(v15, v17, v10);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v23 = sub_1C2F766EC();
  v25 = v24;
  (*(v11 + 8))(v17, v10);
  *(v20 + 72) = v23;
  *(v20 + 80) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077048, &qword_1C2F7D9A0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1C2F7626C();
  *(v20 + 160) = 0;
  v30 = v38;
  *(v20 + 16) = v37;
  *(v20 + 24) = v30;
  v31 = v39;
  v32 = v40;
  *(v20 + 88) = a3;
  *(v20 + 96) = v31;
  v33 = v41;
  *(v20 + 112) = v32;
  *(v20 + 120) = v33;
  *(v20 + 104) = v42 & 1;
  v34 = MEMORY[0x1E69E7CC0];
  *(v20 + 144) = v18;
  *(v20 + 152) = v34;
  *(v20 + 128) = v29;
  *(v20 + 136) = v19;
  swift_unknownObjectRetain();
  v35 = v18;

  sub_1C2F6F074();
  sub_1C2F6F2EC();
  swift_unknownObjectRelease();

  return v20;
}

void sub_1C2F6F074()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + 112);
    v4 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = sub_1C2F71D60();
      v7 = v6;
      v8 = qword_1EC075CE0;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_1C2F761FC();
      __swift_project_value_buffer(v9, qword_1EC077030);

      v10 = sub_1C2F761DC();
      v11 = sub_1C2F769EC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v13 = v7;
        v14 = v5;
        v15 = v23;
        *v12 = 136380675;
        v16 = sub_1C2EFAB28(v3, v1, &v23);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_1C2EF2000, v10, v11, "Create initial script: %{private}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        v17 = v15;
        v5 = v14;
        v7 = v13;
        MEMORY[0x1C6929E80](v17, -1, -1);
        MEMORY[0x1C6929E80](v12, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      v18 = *(v2 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 32) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1C2F1CBB4(0, *(v18 + 2) + 1, 1, v18);
        *(v2 + 32) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1C2F1CBB4((v20 > 1), v21 + 1, 1, v18);
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[72 * v21];
      *(v22 + 4) = 0xD000000000000019;
      *(v22 + 5) = 0x80000001C2F80890;
      *(v22 + 6) = 0;
      *(v22 + 7) = 0;
      *(v22 + 8) = v5;
      *(v22 + 9) = v7;
      *(v22 + 10) = v3;
      *(v22 + 11) = v1;
      *(v22 + 48) = 1;
      v22[98] = 0;
      *(v2 + 32) = v18;
      swift_endAccess();
    }
  }
}

uint64_t sub_1C2F6F2EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077118, &qword_1C2F7DBF8);
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v61 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077120, &unk_1C2F7DC00);
  v5 = *(v4 - 8);
  v67 = v4;
  v68 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770F0, &qword_1C2F7DBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v49 - v10;
  v12 = sub_1C2F76A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770F8, &unk_1C2F7DBE8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  v22 = *MEMORY[0x1E69D8E40];
  v54 = *(v0 + 144);
  sub_1C2F76A8C();
  v76 = objc_opt_self();
  v23 = [v76 mainRunLoop];
  v79 = v23;
  v75 = sub_1C2F76ACC();
  v24 = *(v75 - 8);
  v25 = *(v24 + 56);
  v72 = v24 + 56;
  v73 = v25;
  v25(v11, 1, 1, v75);
  v77 = sub_1C2EF5A14(0, &qword_1EC077100, 0x1E695DFD0);
  v26 = sub_1C2EF73CC(&qword_1EDEBC500, MEMORY[0x1E6969F20]);
  v74 = sub_1C2F74628();
  v53 = v26;
  sub_1C2F762EC();
  sub_1C2F0A8D8(v11, &qword_1EC0770F0, &qword_1C2F7DBE0);

  v27 = *(v13 + 8);
  v55 = v16;
  v58 = v12;
  v57 = v13 + 8;
  v52 = v27;
  v27(v16, v12);
  swift_allocObject();
  v28 = v64;
  swift_weakInit();
  v65 = MEMORY[0x1E695BE98];
  v51 = sub_1C2EF7414(&qword_1EC077110, &qword_1EC0770F8, &unk_1C2F7DBE8);
  sub_1C2F7631C();

  v29 = *(v18 + 8);
  v56 = v21;
  v60 = v17;
  v59 = v18 + 8;
  v50 = v29;
  v29(v21, v17);
  swift_beginAccess();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076F60, &unk_1C2F78BE0);
  v70 = sub_1C2EF7414(&unk_1EDEBC530, &unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2F7621C();
  swift_endAccess();

  v31 = *(v28 + 88);
  v30 = *(v28 + 96);
  ObjectType = swift_getObjectType();
  v79 = (*(v30 + 16))(ObjectType, v30);
  v32 = [v76 mainRunLoop];
  v78 = v32;
  v73(v11, 1, 1, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077128, &qword_1C2F7DC10);
  sub_1C2EF7414(&qword_1EC077130, &qword_1EC077128, &qword_1C2F7DC10);
  v33 = v66;
  sub_1C2F762EC();
  v34 = v11;
  sub_1C2F0A8D8(v11, &qword_1EC0770F0, &qword_1C2F7DBE0);

  swift_allocObject();
  swift_weakInit();
  sub_1C2EF7414(&qword_1EC077138, &qword_1EC077120, &unk_1C2F7DC00);
  v35 = v67;
  sub_1C2F7631C();

  v36 = v33;
  v37 = v30;
  (*(v68 + 8))(v36, v35);
  swift_beginAccess();
  sub_1C2F7621C();
  swift_endAccess();

  result = (*(v30 + 40))(ObjectType, v30);
  if ((*(v28 + 104) & 1) == 0)
  {
    v39 = *MEMORY[0x1E69D8E48];
    v40 = v55;
    sub_1C2F76A8C();
    v41 = [v76 mainRunLoop];
    v79 = v41;
    v42 = v34;
    v73(v34, 1, 1, v75);
    v43 = v56;
    v44 = v58;
    sub_1C2F762EC();
    sub_1C2F0A8D8(v42, &qword_1EC0770F0, &qword_1C2F7DBE0);

    v52(v40, v44);
    swift_allocObject();
    swift_weakInit();
    v45 = v60;
    sub_1C2F7631C();

    v50(v43, v45);
    swift_beginAccess();
    sub_1C2F7621C();
    swift_endAccess();

    v79 = (*(v37 + 24))(ObjectType, v37);
    v46 = [v76 mainRunLoop];
    v78 = v46;
    v73(v42, 1, 1, v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077140, &qword_1C2F7DC18);
    sub_1C2EF7414(&qword_1EC077148, &qword_1EC077140, &qword_1C2F7DC18);
    v47 = v61;
    sub_1C2F762EC();
    sub_1C2F0A8D8(v42, &qword_1EC0770F0, &qword_1C2F7DBE0);

    swift_allocObject();
    swift_weakInit();
    sub_1C2EF7414(&qword_1EC077150, &qword_1EC077118, &qword_1C2F7DBF8);
    v48 = v63;
    sub_1C2F7631C();

    (*(v62 + 8))(v47, v48);
    swift_beginAccess();
    sub_1C2F7621C();
    swift_endAccess();
  }

  return result;
}

uint64_t CallScreeningTranscriptsService.callUUID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CallScreeningTranscriptsService.currentTranscripts.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t CallScreeningTranscriptsService.transcriptsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077050, &qword_1C2F7D9A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077048, &qword_1C2F7D9A0);
  sub_1C2EF7414(&qword_1EC077058, &qword_1EC077048, &qword_1C2F7D9A0);
  sub_1C2F6FFBC();
  sub_1C2F7630C();
  sub_1C2EF7414(&qword_1EC077068, &qword_1EC077050, &qword_1C2F7D9A8);
  v6 = sub_1C2F762AC();
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t sub_1C2F6FFBC()
{
  result = qword_1EC077060;
  if (!qword_1EC077060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077060);
  }

  return result;
}

uint64_t CallScreeningTranscriptsService.callerNamePublisher.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  return (*(v2 + 32))(ObjectType, v2);
}

BOOL CallScreeningTranscriptsService.isReceptionist.getter()
{
  if (*(v0 + 104))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(v0 + 136) + 16);
  v4 = sub_1C2F766AC();
  v5 = [v3 callWithUniqueProxyIdentifier_];

  if (!v5)
  {
    return 0;
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6 = v5;
  v7 = [v6 uniqueProxyIdentifier];

  Strong = swift_unknownObjectWeakLoadStrong();
  MEMORY[0x1C6929F80](&v11);
  if (!Strong)
  {
    return 0;
  }

  v9 = [Strong receptionistState];

  return v9 != 0;
}

uint64_t CallScreeningTranscriptsService.liveReplyTitle.getter()
{
  v1 = sub_1C2F75C8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1C2F7669C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077070, &unk_1C2F7D9B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v49 - v16;
  v18 = v0[2];
  v19 = v0[3];
  v20 = *(v0[17] + 16);
  v21 = sub_1C2F766AC();
  v22 = [v20 callWithUniqueProxyIdentifier_];

  if (v22)
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v23 = v22;
    v24 = [v23 uniqueProxyIdentifier];

    Strong = swift_unknownObjectWeakLoadStrong();
    MEMORY[0x1C6929F80](&v50);
    if (Strong)
    {
      v26 = [Strong contactIdentifiers];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1C2F767EC();

        v29 = *(v28 + 16);

        if (v29)
        {
          v30 = [Strong displayContext];
          if (v30)
          {
            v31 = v30;
            v32 = [v30 personNameComponents];

            if (v32)
            {
              sub_1C2F75A0C();

              v49[0] = 0;
            }

            else
            {
              v49[0] = 1;
            }

            v37 = sub_1C2F75A1C();
            v38 = *(v37 - 8);
            (*(v38 + 56))(v15, v49[0], 1, v37);
            sub_1C2F73F28(v15, v17);
            v39 = v38;
            if ((*(v38 + 48))(v17, 1, v37) == 1)
            {
              sub_1C2F0A8D8(v17, &qword_1EC077070, &unk_1C2F7D9B0);
            }

            else
            {
              *v49 = sub_1C2F759FC();
              v41 = v40;
              (*(v39 + 8))(v17, v37);
              if (v41)
              {
                v42 = v41;
                v43 = *v49;
                if (sub_1C2F7674C() > 0)
                {
LABEL_18:
                  sub_1C2F7663C();
                  (*(v4 + 16))(v8, v10, v3);
                  type metadata accessor for StringDummy();
                  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                  v47 = [objc_opt_self() bundleForClass_];
                  sub_1C2F75BFC();
                  sub_1C2F766EC();
                  (*(v4 + 8))(v10, v3);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076E30, &qword_1C2F7CE88);
                  v48 = swift_allocObject();
                  *(v48 + 16) = xmmword_1C2F78B90;
                  *(v48 + 56) = MEMORY[0x1E69E6158];
                  *(v48 + 64) = sub_1C2F5D2EC();
                  *(v48 + 32) = v43;
                  *(v48 + 40) = v42;
                  v35 = sub_1C2F766DC();

                  return v35;
                }
              }
            }
          }

          v44 = [Strong displayName];
          v43 = sub_1C2F766CC();
          v42 = v45;

          goto LABEL_18;
        }
      }
    }
  }

  sub_1C2F7663C();
  (*(v4 + 16))(v8, v10, v3);
  type metadata accessor for StringDummy();
  v33 = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v35 = sub_1C2F766EC();
  (*(v4 + 8))(v10, v3);
  return v35;
}

uint64_t CallScreeningTranscriptsService.userInputStatePublisher.getter()
{
  v1 = v0;
  v2 = sub_1C2F76A7C();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077078, &qword_1C2F7D9C0);
  v62 = *(v64 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v59 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077080, &qword_1C2F7D9C8);
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v11 = &v59 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077088, &qword_1C2F7D9D0);
  v68 = *(v70 - 8);
  v12 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077090, &qword_1C2F7D9D8);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077098, &qword_1C2F7D9E0);
  v73 = *(v17 - 8);
  v74 = v17;
  v18 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v59 - v19;
  if (qword_1EC075CE0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C2F761FC();
  __swift_project_value_buffer(v20, qword_1EC077030);
  v21 = sub_1C2F761DC();
  v22 = sub_1C2F769EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C2EF2000, v21, v22, "CallScreeningTranscriptsService creating userInputStatePublisher", v23, 2u);
    MEMORY[0x1C6929E80](v23, -1, -1);
  }

  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v24 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = *(off_1EDEBDA58 + 2);
  v27 = sub_1C2F766AC();
  v28 = [v26 callWithUniqueProxyIdentifier_];

  if (v28)
  {
    type metadata accessor for CallFacade();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v30 = v28;
    v31 = [v30 uniqueProxyIdentifier];
    v32 = sub_1C2F766CC();
    v34 = v33;

    *(v29 + 24) = v32;
    *(v29 + 32) = v34;
  }

  else
  {
    v29 = 0;
  }

  v35 = *(v1 + 104);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  if (v29 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v38 = Strong;
    v39 = [Strong receptionistState];

    v40 = 0;
    v41 = v39;
  }

  else
  {
    v41 = 0;
    v40 = 1;
  }

  v76 = v40;
  sub_1C2F710B8(v41 | (v40 << 32), v35, &v77);
  v42 = v77;
  v43 = *(v1 + 144);
  v44 = *MEMORY[0x1E69D8E50];
  sub_1C2F76A8C();
  type metadata accessor for TUCallReceptionistState(0);
  sub_1C2EF73CC(&qword_1EDEBC500, MEMORY[0x1E6969F20]);
  v45 = v61;
  sub_1C2F762BC();
  (*(v60 + 8))(v5, v45);
  sub_1C2EF7414(&qword_1EC0770A0, &qword_1EC077078, &qword_1C2F7D9C0);
  sub_1C2EF73CC(&qword_1EC0770A8, type metadata accessor for TUCallReceptionistState);
  v46 = v64;
  sub_1C2F7630C();
  (*(v62 + 8))(v8, v46);
  sub_1C2EF7414(&qword_1EC0770B0, &qword_1EC077080, &qword_1C2F7D9C8);
  v47 = v65;
  v48 = sub_1C2F762AC();
  (*(v63 + 8))(v11, v47);
  v75 = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1C2F73F98;
  *(v49 + 24) = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770B8, &qword_1C2F7D9E8);
  sub_1C2EF7414(&qword_1EC0770C0, &qword_1EC0770B8, &qword_1C2F7D9E8);
  v50 = v66;
  sub_1C2F762CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770C8, &qword_1C2F7D9F0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1C2F78B90;
  *(v51 + 32) = v42;
  sub_1C2EF7414(&qword_1EC0770D0, &qword_1EC077088, &qword_1C2F7D9D0);
  v52 = v67;
  v53 = v70;
  sub_1C2F762DC();

  (*(v68 + 8))(v50, v53);
  sub_1C2EF7414(&qword_1EC0770D8, &qword_1EC077090, &qword_1C2F7D9D8);
  sub_1C2F73FF4();
  v54 = v69;
  v55 = v72;
  sub_1C2F7630C();
  (*(v71 + 8))(v52, v55);
  sub_1C2EF7414(&qword_1EC0770E8, &qword_1EC077098, &qword_1C2F7D9E0);
  v56 = v74;
  v57 = sub_1C2F762AC();

  (*(v73 + 8))(v54, v56);
  return v57;
}

void sub_1C2F710B8(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    LOBYTE(v5) = 2;
  }

  else
  {
    if ((a1 - 3) >= 2)
    {
      if (a2)
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }

      if (a1 == 1)
      {
        v5 = v6;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }

    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EC077030);
    v8 = sub_1C2F761DC();
    v9 = sub_1C2F769EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315394;
      if (v5)
      {
        v12 = 0x6E6564646968;
      }

      else
      {
        v12 = 0x64656C62616E65;
      }

      if (v5)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      v14 = sub_1C2EFAB28(v12, v13, &v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = [objc_opt_self() stringForReceptionistState_];
      v16 = sub_1C2F766CC();
      v18 = v17;

      v19 = sub_1C2EFAB28(v16, v18, &v20);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1C2EF2000, v8, v9, "CallScreeningTranscriptsService publishing %s for %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v11, -1, -1);
      MEMORY[0x1C6929E80](v10, -1, -1);
    }
  }

  *a3 = v5;
}

Swift::Void __swiftcall CallScreeningTranscriptsService.startObserveTranscripts()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (v4 < *(v2 + 16))
    {
      v15[0] = *v5;
      v6 = *(v5 + 16);
      v7 = *(v5 + 32);
      v8 = *(v5 + 48);
      *&v16[15] = *(v5 + 63);
      v15[2] = v7;
      *v16 = v8;
      v15[1] = v6;
      ++v4;
      v9 = *(v1 + 128);
      v13 = v7;
      v14[0] = v8;
      *(v14 + 15) = *&v16[15];
      v11 = v15[0];
      v12 = v6;
      sub_1C2F74048(v15, v10);
      sub_1C2F7625C();
      sub_1C2F740A4(v15);
      v5 += 72;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + 160) = 1;
  }
}

Swift::Void __swiftcall CallScreeningTranscriptsService.startReceptionistReply()()
{
  v1 = v0;
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(off_1EDEBDA58 + 2);
  v5 = sub_1C2F766AC();
  v6 = [v4 callWithUniqueProxyIdentifier_];

  if (!v6)
  {
    goto LABEL_11;
  }

  type metadata accessor for CallFacade();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v8 = v6;
  v9 = [v8 uniqueProxyIdentifier];
  v10 = sub_1C2F766CC();
  v12 = v11;

  *(v7 + 24) = v10;
  *(v7 + 32) = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v14 = Strong;
  v15 = [Strong screeningAnnouncementHasFinished];

  if ((v15 & 1) == 0)
  {
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C2F761FC();
    __swift_project_value_buffer(v16, qword_1EC077030);
    v17 = sub_1C2F761DC();
    v18 = sub_1C2F769EC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C2EF2000, v17, v18, "Delay startReceptionistReply", v19, 2u);
      MEMORY[0x1C6929E80](v19, -1, -1);
    }

    *(v1 + 40) = 1;
    sub_1C2F716C4();
  }

  else
  {
LABEL_11:
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C2F761FC();
    __swift_project_value_buffer(v20, qword_1EC077030);
    v21 = sub_1C2F761DC();
    v22 = sub_1C2F769EC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C2EF2000, v21, v22, "startReceptionistReply", v23, 2u);
      MEMORY[0x1C6929E80](v23, -1, -1);
    }

    v24 = *(*(v1 + 136) + 16);
    [v24 startReceptionistReply];
  }
}

uint64_t sub_1C2F716C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770F0, &qword_1C2F7DBE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v23 - v3;
  v5 = sub_1C2F76A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770F8, &unk_1C2F7DBE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v23 - v14;
  if (!*(v0 + 64))
  {
    v16 = *(v0 + 144);
    v17 = *MEMORY[0x1E69D8EE0];
    v23[0] = v0;
    sub_1C2F76A8C();
    v18 = [objc_opt_self() mainRunLoop];
    v23[1] = v18;
    v19 = sub_1C2F76ACC();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    sub_1C2EF5A14(0, &qword_1EC077100, 0x1E695DFD0);
    sub_1C2EF73CC(&qword_1EDEBC500, MEMORY[0x1E6969F20]);
    sub_1C2F74628();
    sub_1C2F762EC();
    sub_1C2F0A8D8(v4, &qword_1EC0770F0, &qword_1C2F7DBE0);

    (*(v6 + 8))(v9, v5);
    swift_allocObject();
    v20 = v23[0];
    swift_weakInit();
    sub_1C2EF7414(&qword_1EC077110, &qword_1EC0770F8, &unk_1C2F7DBE8);
    v21 = sub_1C2F7631C();

    (*(v11 + 8))(v15, v10);
    v22 = *(v20 + 64);
    *(v20 + 64) = v21;
  }

  return result;
}

Swift::Void __swiftcall CallScreeningTranscriptsService.sendReceptionistReply(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v5 = v1[2];
  v6 = v1[3];
  v7 = *(off_1EDEBDA58 + 2);
  v8 = sub_1C2F766AC();
  v9 = [v7 callWithUniqueProxyIdentifier_];

  if (!v9)
  {
    goto LABEL_11;
  }

  type metadata accessor for CallFacade();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11 = v9;
  v12 = [v11 uniqueProxyIdentifier];
  v13 = sub_1C2F766CC();
  v15 = v14;

  *(v10 + 24) = v13;
  *(v10 + 32) = v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v17 = Strong;
  v18 = [Strong screeningAnnouncementHasFinished];

  if ((v18 & 1) == 0)
  {
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v19 = sub_1C2F761FC();
    __swift_project_value_buffer(v19, qword_1EC077030);
    v20 = sub_1C2F761DC();
    v21 = sub_1C2F769EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C2EF2000, v20, v21, "Delay sendReceptionistReply", v22, 2u);
      MEMORY[0x1C6929E80](v22, -1, -1);
    }

    v23 = v2[7];
    v2[6] = countAndFlagsBits;
    v2[7] = object;

    sub_1C2F716C4();
  }

  else
  {
LABEL_11:
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v24 = sub_1C2F761FC();
    __swift_project_value_buffer(v24, qword_1EC077030);
    v25 = sub_1C2F761DC();
    v26 = sub_1C2F769EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C2EF2000, v25, v26, "sendReceptionistReply", v27, 2u);
      MEMORY[0x1C6929E80](v27, -1, -1);
    }

    v28 = *(v2[17] + 16);
    v29 = sub_1C2F766AC();
    [v28 sendReceptionistReply_];
  }
}

uint64_t sub_1C2F71D60()
{
  v1 = sub_1C2F75C8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1C2F7669C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35[-v9];
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = *(off_1EDEBDA58 + 2);
  v14 = sub_1C2F766AC();
  v15 = [v13 callWithUniqueProxyIdentifier_];

  if (!v15)
  {
    goto LABEL_8;
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v16 = v15;
  v17 = [v16 uniqueProxyIdentifier];

  Strong = swift_unknownObjectWeakLoadStrong();
  MEMORY[0x1C6929F80](&v36);
  if (!Strong)
  {
LABEL_8:
    sub_1C2F7663C();
    (*(v4 + 16))(v8, v10, v3);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    sub_1C2F75BFC();
    v29 = sub_1C2F766EC();
LABEL_9:
    (*(v4 + 8))(v10, v3);
    return v29;
  }

  v19 = [Strong provider];
  v20 = [v19 isTelephonyProvider];

  if (v20 && ([Strong isHostedOnCurrentDevice] & 1) == 0)
  {
    sub_1C2F7663C();
    (*(v4 + 16))(v8, v10, v3);
    type metadata accessor for StringDummy();
    v33 = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass_];
    sub_1C2F75BFC();
    v29 = sub_1C2F766EC();

    goto LABEL_9;
  }

  sub_1C2F7663C();
  (*(v4 + 16))(v8, v10, v3);
  type metadata accessor for StringDummy();
  v21 = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  sub_1C2F766EC();
  (*(v4 + 8))(v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076E30, &qword_1C2F7CE88);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C2F78B90;
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 name];

  v26 = sub_1C2F766CC();
  v28 = v27;

  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1C2F5D2EC();
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  v29 = sub_1C2F766DC();

  return v29;
}

void sub_1C2F722A4()
{
  sub_1C2F7599C();
  if (!*(&v41 + 1))
  {
    sub_1C2F0A8D8(&v40, &qword_1EC075D38, &qword_1C2F78BB0);
    return;
  }

  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v0 = v36;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v2 = Strong;
  if (*(Strong + 104))
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 72 * v4;
      v7 = *(v5 + 8);
      v6 = *(v5 + 16);
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v8 = [v36 lastReceptionistMessage];
    v9 = sub_1C2F766CC();
    v11 = v10;

    if (v6)
    {
      if (v7 == v9 && v6 == v11)
      {

        return;
      }

      v12 = sub_1C2F76EFC();

      if (v12)
      {

        return;
      }
    }

    else
    {
    }
  }

  v13 = [v36 receptionistState];
  if (v13 == 1 && (*(v2 + 104) & 1) == 0)
  {
    v14 = sub_1C2F71D60();
    v34 = v15;
    v35 = v14;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v16 = [v36 lastReceptionistMessage];
  v17 = sub_1C2F766CC();
  v19 = v18;

  v20 = [v36 uniqueProxyIdentifier];
  v21 = sub_1C2F766CC();
  v23 = v22;

  *&v40 = v21;
  *(&v40 + 1) = v23;
  MEMORY[0x1C6928D30](95, 0xE100000000000000);
  LODWORD(v36) = v13;
  v24 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v24);

  MEMORY[0x1C6928D30](0x617473697373615FLL, 0xEA0000000000746ELL);
  v25 = v40;
  if (qword_1EC075CE0 != -1)
  {
    swift_once();
  }

  v26 = sub_1C2F761FC();
  __swift_project_value_buffer(v26, qword_1EC077030);

  v27 = sub_1C2F761DC();
  v28 = sub_1C2F769EC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v33 = v13;
    v30 = v17;
    v31 = swift_slowAlloc();
    *&v40 = v31;
    *v29 = 136380931;
    *(v29 + 4) = sub_1C2EFAB28(v30, v19, &v40);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1C2EFAB28(v25, *(&v25 + 1), &v40);
    _os_log_impl(&dword_1C2EF2000, v27, v28, "Receive assistent message: %{private}s %s", v29, 0x16u);
    swift_arrayDestroy();
    v32 = v31;
    v17 = v30;
    v13 = v33;
    MEMORY[0x1C6929E80](v32, -1, -1);
    MEMORY[0x1C6929E80](v29, -1, -1);
  }

  v36 = v25;
  v37 = 0uLL;
  *&v38 = v35;
  *(&v38 + 1) = v34;
  *v39 = v17;
  *&v39[8] = v19;
  v39[16] = 1;
  v39[17] = v13 == 3;
  v39[18] = 0;
  sub_1C2F72734(&v36);

  v42 = v38;
  v43[0] = *v39;
  *(v43 + 15) = *&v39[15];
  v40 = v36;
  v41 = v37;
  sub_1C2F740A4(&v40);
}

uint64_t sub_1C2F72734(__int128 *a1)
{
  v2 = a1[3];
  v18 = a1[2];
  v19[0] = v2;
  *(v19 + 15) = *(a1 + 63);
  v3 = a1[1];
  v16 = *a1;
  v17 = v3;
  swift_beginAccess();
  v4 = *(v1 + 32);
  sub_1C2F74048(&v16, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1C2F1CBB4(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 32) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1C2F1CBB4((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[72 * v7];
  *(v8 + 2) = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19[0];
  *(v8 + 95) = *(v19 + 15);
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  *(v8 + 3) = v9;
  *(v1 + 32) = v4;
  result = swift_endAccess();
  if (*(v1 + 160) == 1)
  {
    v13 = *(v1 + 128);
    v14[2] = v18;
    *v15 = v19[0];
    *&v15[15] = *(v19 + 15);
    v14[0] = v16;
    v14[1] = v17;
    return sub_1C2F7625C();
  }

  return result;
}

uint64_t sub_1C2F72874(uint64_t a1)
{
  v1 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14[0] = v1;
  *(v14 + 15) = *(a1 + 63);
  v2 = *(a1 + 16);
  v11 = *a1;
  v12 = v2;
  if (qword_1EC075CE0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EC077030);
  sub_1C2F74048(&v11, v9);
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();
  sub_1C2F740A4(&v11);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v9[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C2EFAB28(v11, *(&v11 + 1), v9);
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Receive transcripts: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9[2] = v13;
    v10[0] = v14[0];
    *(v10 + 15) = *(v14 + 15);
    v9[0] = v11;
    v9[1] = v12;
    sub_1C2F72734(v9);
  }

  return result;
}

void sub_1C2F72A28()
{
  v0 = sub_1C2F75C8C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1C2F7669C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32[-v8];
  sub_1C2F7599C();
  if (*(&v40 + 1))
  {
    sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v10 = *&v37[0];
      v11 = [*&v37[0] receptionistSession];
      if (v11 && (v12 = v11, v13 = [v11 summary], v12, v13))
      {
        v14 = sub_1C2F766CC();
        v16 = v15;

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v36 = v14;
          v35 = Strong;
          v18 = [v10 receptionistState];
          if (qword_1EC075CE0 != -1)
          {
            swift_once();
          }

          v19 = sub_1C2F761FC();
          __swift_project_value_buffer(v19, qword_1EC077030);

          v20 = sub_1C2F761DC();
          v21 = sub_1C2F769EC();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v34 = v16;
            v23 = v22;
            v24 = swift_slowAlloc();
            v33 = v18;
            v25 = v24;
            *&v39 = v24;
            *v23 = 136380931;
            *(v23 + 4) = sub_1C2EFAB28(v36, v34, &v39);
            *(v23 + 12) = 1024;
            *(v23 + 14) = v33;
            _os_log_impl(&dword_1C2EF2000, v20, v21, "Receive summary message: %{private}s %d", v23, 0x12u);
            __swift_destroy_boxed_opaque_existential_1Tm(v25);
            MEMORY[0x1C6929E80](v25, -1, -1);
            v26 = v23;
            v16 = v34;
            MEMORY[0x1C6929E80](v26, -1, -1);
          }

          sub_1C2F7663C();
          (*(v3 + 16))(v7, v9, v2);
          type metadata accessor for StringDummy();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v28 = [objc_opt_self() bundleForClass_];
          sub_1C2F75BFC();
          v29 = sub_1C2F766EC();
          v31 = v30;
          (*(v3 + 8))(v9, v2);
          *&v39 = 0xD000000000000013;
          *(&v39 + 1) = 0x80000001C2F80810;
          v40 = 0uLL;
          *&v41 = v29;
          *(&v41 + 1) = v31;
          *v42 = v36;
          *&v42[8] = v16;
          *&v42[16] = 257;
          v42[18] = 1;
          v37[2] = v41;
          *v38 = *v42;
          *&v38[15] = *&v42[15];
          v37[0] = v39;
          v37[1] = 0uLL;
          sub_1C2F72734(v37);

          sub_1C2F740A4(&v39);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C2F0A8D8(&v39, &qword_1EC075D38, &qword_1C2F78BB0);
  }
}

uint64_t sub_1C2F72EF0(__int128 *a1)
{
  v2 = sub_1C2F75C8C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1C2F7669C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v12 = a1[3];
  v45 = a1[2];
  v46[0] = v12;
  *(v46 + 15) = *(a1 + 63);
  v13 = a1[1];
  v43 = *a1;
  v44 = v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v32 = v5;
      v33 = result;
      v16 = v43;
      v31 = v46[0];
      if (qword_1EC075CE0 != -1)
      {
        swift_once();
      }

      v17 = sub_1C2F761FC();
      __swift_project_value_buffer(v17, qword_1EC077030);
      v41[2] = v45;
      *v42 = v46[0];
      *&v42[15] = *(v46 + 15);
      v41[0] = v43;
      v41[1] = v44;
      sub_1C2F74048(v41, &v36);
      v18 = sub_1C2F761DC();
      v19 = sub_1C2F769EC();
      sub_1C2F0A8D8(&v43, &qword_1EC077158, &qword_1C2F7DC20);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30 = v16;
        v21 = v20;
        v22 = swift_slowAlloc();
        *&v36 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1C2EFAB28(v30, v15, &v36);
        _os_log_impl(&dword_1C2EF2000, v18, v19, "Receive reasons for calling response: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1C6929E80](v22, -1, -1);
        MEMORY[0x1C6929E80](v21, -1, -1);
      }

      sub_1C2F7663C();
      v23 = v32;
      (*(v32 + 16))(v9, v11, v4);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      sub_1C2F75BFC();
      v26 = sub_1C2F766EC();
      v28 = v27;
      (*(v23 + 8))(v11, v4);
      *&v36 = 0xD000000000000013;
      *(&v36 + 1) = 0x80000001C2F80810;
      v37 = 0;
      v38 = 0;
      *&v39 = v26;
      *(&v39 + 1) = v28;
      *v40 = v31;
      *&v40[16] = 256;
      v40[18] = 1;
      v34[2] = v39;
      *v35 = v31;
      *&v35[15] = *&v40[15];
      v34[0] = v36;
      v34[1] = 0u;

      sub_1C2F72734(v34);

      return sub_1C2F740A4(&v36);
    }

    else
    {
    }
  }

  return result;
}

void sub_1C2F732F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2F759AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2F7599C();
  if (v34)
  {
    sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v9 = *&v31[0];
      if (qword_1EC075CE0 != -1)
      {
        swift_once();
      }

      v10 = sub_1C2F761FC();
      __swift_project_value_buffer(v10, qword_1EC077030);
      v11 = v9;
      v12 = sub_1C2F761DC();
      v13 = sub_1C2F769EC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&dword_1C2EF2000, v12, v13, "CallScreeningTranscriptsServicing publishing receptionistState change for call %@", v14, 0xCu);
        sub_1C2F0A8D8(v15, &unk_1EC076070, &qword_1C2F7A190);
        MEMORY[0x1C6929E80](v15, -1, -1);
        MEMORY[0x1C6929E80](v14, -1, -1);
      }

      v17 = [v11 receptionistState];
      v18 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1C2F0A8D8(v33, &qword_1EC075D38, &qword_1C2F78BB0);
  }

  if (qword_1EC075CE0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C2F761FC();
  __swift_project_value_buffer(v19, qword_1EC077030);
  (*(v5 + 16))(v8, a1, v4);
  v20 = sub_1C2F761DC();
  v21 = sub_1C2F769DC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315138;
    sub_1C2F7599C();
    sub_1C2F74698(v33, &v29);
    if (v30)
    {
      sub_1C2F2669C(&v29, v31);
      sub_1C2EFAD00(v31, &v29);
      v24 = sub_1C2F7670C();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      sub_1C2F0A8D8(v33, &qword_1EC075D38, &qword_1C2F78BB0);
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      sub_1C2F0A8D8(&v29, &qword_1EC075D38, &qword_1C2F78BB0);
      sub_1C2F0A8D8(v33, &qword_1EC075D38, &qword_1C2F78BB0);
      (*(v5 + 8))(v8, v4);
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v27 = sub_1C2EFAB28(v24, v26, &v32);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1C2EF2000, v20, v21, "CallScreeningTranscriptsServicing cannot publish receptionistState change for object %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1C6929E80](v23, -1, -1);
    MEMORY[0x1C6929E80](v22, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v17 = 0;
  v18 = 1;
LABEL_18:
  *a2 = v17;
  *(a2 + 4) = v18;
}

void sub_1C2F73790()
{
  if (*(v0 + 40) == 1)
  {
    v1 = v0;
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C2F761FC();
    __swift_project_value_buffer(v2, qword_1EC077030);
    v3 = sub_1C2F761DC();
    v4 = sub_1C2F769EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C2EF2000, v3, v4, "startReceptionistReply", v5, 2u);
      MEMORY[0x1C6929E80](v5, -1, -1);
    }

    [*(*(v1 + 136) + 16) startReceptionistReply];
    *(v1 + 40) = 0;
  }
}

void sub_1C2F73890()
{
  v1 = *(v0 + 48);
  v2 = (v0 + 48);
  if (*(v0 + 56))
  {
    v3 = v0;
    v4 = qword_1EC075CE0;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_1C2F761FC();
    __swift_project_value_buffer(v5, qword_1EC077030);
    v6 = sub_1C2F761DC();
    v7 = sub_1C2F769EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C2EF2000, v6, v7, "sendReceptionistReply", v8, 2u);
      MEMORY[0x1C6929E80](v8, -1, -1);
    }

    v9 = *(*(v3 + 136) + 16);
    v10 = sub_1C2F766AC();

    [v9 sendReceptionistReply_];

    v11 = *(v3 + 56);
    *v2 = 0;
    v2[1] = 0;
  }
}

void sub_1C2F73A04()
{
  sub_1C2F7599C();
  if (v5)
  {
    sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      if ([v3 screeningAnnouncementHasFinished] && (swift_beginAccess(), (Strong = swift_weakLoadStrong()) != 0))
      {
        v1 = Strong;
        sub_1C2F73790();
        sub_1C2F73890();

        v2 = *(v1 + 64);
        *(v1 + 64) = 0;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C2F0A8D8(v4, &qword_1EC075D38, &qword_1C2F78BB0);
  }
}

uint64_t CallScreeningTranscriptsService.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);
  swift_unknownObjectRelease();
  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  return v0;
}

uint64_t CallScreeningTranscriptsService.__deallocating_deinit()
{
  CallScreeningTranscriptsService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F73BAC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_1C2F73BF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077050, &qword_1C2F7D9A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077048, &qword_1C2F7D9A0);
  sub_1C2EF7414(&qword_1EC077058, &qword_1EC077048, &qword_1C2F7D9A0);
  sub_1C2F6FFBC();
  sub_1C2F7630C();
  sub_1C2EF7414(&qword_1EC077068, &qword_1EC077050, &qword_1C2F7D9A8);
  v6 = sub_1C2F762AC();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1C2F73DA4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_1C2F73EA4()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC077030);
  __swift_project_value_buffer(v0, qword_1EC077030);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F73F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077070, &unk_1C2F7D9B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2F73FB4(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1C2F73FF4()
{
  result = qword_1EC0770E0;
  if (!qword_1EC0770E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0770E0);
  }

  return result;
}

uint64_t _s20CommunicationsUICore31CallScreeningTranscriptsServiceC16replySuggestionsSaySSGyF_0()
{
  v0 = sub_1C2F75C8C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2F7669C();
  v37 = v4;
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C2F7D990;
  sub_1C2F7663C();
  v39 = v5[2];
  v39(v9, v11, v4);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = ObjCClassFromMetadata;
  v40 = objc_opt_self();
  v14 = [v40 bundleForClass_];
  v35 = v3;
  sub_1C2F75BFC();
  v15 = v9;
  v16 = sub_1C2F766EC();
  v18 = v17;
  v19 = v5[1];
  v41 = v5 + 1;
  v20 = v37;
  v19(v11, v37);
  v36 = v19;
  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  sub_1C2F7663C();
  v34 = v15;
  v21 = v39;
  v39(v15, v11, v20);
  v22 = v38;
  v23 = [v40 bundleForClass_];
  sub_1C2F75BFC();
  v24 = sub_1C2F766EC();
  v26 = v25;
  v19(v11, v20);
  *(v12 + 48) = v24;
  *(v12 + 56) = v26;
  sub_1C2F7663C();
  v27 = v20;
  v21(v34, v11, v20);
  v28 = [v40 bundleForClass_];
  sub_1C2F75BFC();
  v29 = sub_1C2F766EC();
  v31 = v30;
  v36(v11, v27);
  *(v12 + 64) = v29;
  *(v12 + 72) = v31;
  return v12;
}

unint64_t sub_1C2F74628()
{
  result = qword_1EC077108;
  if (!qword_1EC077108)
  {
    sub_1C2EF5A14(255, &qword_1EC077100, 0x1E695DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077108);
  }

  return result;
}

uint64_t sub_1C2F74698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D38, &qword_1C2F78BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DebounceHandler.__allocating_init(delay:queue:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 24) = a2;
  *(result + 16) = a1;
  return result;
}

uint64_t DebounceHandler.init(delay:queue:)(uint64_t a1, double a2)
{
  *(v2 + 32) = 0;
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t DebounceHandler.debounce(action:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C2F7653C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - v12;
  v14 = sub_1C2F764EC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_10;
  _Block_copy(aBlock);
  v25[1] = MEMORY[0x1E69E7CC0];
  sub_1C2F24638();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2F74A48();
  sub_1C2F76B3C();
  v16 = sub_1C2F7656C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1C2F7654C();

  if (v3[4])
  {

    sub_1C2F7655C();

    v20 = v3[4];
  }

  else
  {
  }

  v3[4] = v19;

  v21 = v3[2];
  sub_1C2F7652C();
  v22 = v3[3];
  sub_1C2F7657C();
  v23 = *(v7 + 8);
  v23(v11, v6);
  sub_1C2F76A0C();

  return (v23)(v13, v6);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F74A48()
{
  result = qword_1EC076710;
  if (!qword_1EC076710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC076060, &unk_1C2F79000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076710);
  }

  return result;
}

Swift::Void __swiftcall DebounceHandler.cancel()()
{
  if (*(v0 + 32))
  {

    sub_1C2F7655C();

    v1 = *(v0 + 32);
  }

  *(v0 + 32) = 0;
}

uint64_t DebounceHandler.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t DebounceHandler.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

double static ColorComponents.componentsFromColor(color:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11[0] = 0;
  v8 = 0;
  v9 = 0;
  [a1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
  v4 = v10;
  result = *v11;
  v6 = v8;
  v5 = v9;
  *a2 = v11[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL static ColorComponents.isGray(_:_:_:)(double a1, double a2, double a3)
{
  v3 = a1 * 255.0;
  v4 = a2 * 255.0;
  v5 = a3 * 255.0;
  v6 = vabdd_f64(v3, v4);
  v7 = vabdd_f64(v4, v5);
  v8 = vabdd_f64(v3, v5);
  if (v6 <= v7)
  {
    v6 = v7;
  }

  if (v6 <= v8)
  {
    v6 = v8;
  }

  if (v6 < 0.05)
  {
    return 1;
  }

  if (v3 < 0.2)
  {
    return v7 < 0.05;
  }

  return 0;
}

uint64_t sub_1C2F74CD0()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_1C2F74D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2F754E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2F74D64(uint64_t a1)
{
  v2 = sub_1C2F74FB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F74DA0(uint64_t a1)
{
  v2 = sub_1C2F74FB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ColorComponents.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077160, &qword_1C2F7DC90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F74FB0();
  sub_1C2F7702C();
  v15[15] = 0;
  sub_1C2F76E8C();
  if (!v2)
  {
    v15[14] = 1;
    sub_1C2F76E8C();
    v15[13] = 2;
    sub_1C2F76E8C();
    v15[12] = 3;
    sub_1C2F76E8C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C2F74FB0()
{
  result = qword_1EC077168;
  if (!qword_1EC077168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077168);
  }

  return result;
}

uint64_t ColorComponents.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077170, &qword_1C2F7DC98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F74FB0();
  sub_1C2F7701C();
  if (!v2)
  {
    v24 = 0;
    sub_1C2F76DFC();
    v12 = v11;
    v23 = 1;
    sub_1C2F76DFC();
    v14 = v13;
    v22 = 2;
    sub_1C2F76DFC();
    v17 = v16;
    v21 = 3;
    sub_1C2F76DFC();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2F75234(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2F75254(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ColorComponents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ColorComponents.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C2F753E4()
{
  result = qword_1EC077178;
  if (!qword_1EC077178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077178);
  }

  return result;
}

unint64_t sub_1C2F7543C()
{
  result = qword_1EC077180;
  if (!qword_1EC077180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077180);
  }

  return result;
}

unint64_t sub_1C2F75494()
{
  result = qword_1EC077188;
  if (!qword_1EC077188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077188);
  }

  return result;
}

uint64_t sub_1C2F754E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C2F76EFC();

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

uint64_t SenderIdentity.accountUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2F75AEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SenderIdentity.isoCountryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for SenderIdentity() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SenderIdentity()
{
  result = qword_1EC077190;
  if (!qword_1EC077190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SenderIdentity.localizedName.getter()
{
  v1 = (v0 + *(type metadata accessor for SenderIdentity() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SenderIdentity.localizedShortName.getter()
{
  v1 = (v0 + *(type metadata accessor for SenderIdentity() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SenderIdentity.localizedServiceName.getter()
{
  v1 = (v0 + *(type metadata accessor for SenderIdentity() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *SenderIdentity.init(accountUUID:isoCountryCode:localizedName:localizedShortName:localizedServiceName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = sub_1C2F75AEC();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for SenderIdentity();
  v21 = (a9 + result[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + result[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + result[7]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + result[8]);
  *v24 = a8;
  v24[1] = a10;
  return result;
}

uint64_t sub_1C2F758F8()
{
  result = sub_1C2F75AEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}