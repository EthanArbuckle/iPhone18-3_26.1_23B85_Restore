unint64_t sub_1AB157E60()
{
  result = qword_1EB4365B8;
  if (!qword_1EB4365B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4365B8);
  }

  return result;
}

unint64_t sub_1AB157EB4()
{
  result = qword_1EB4366B0;
  if (!qword_1EB4366B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4366A8);
    sub_1AB01561C(&qword_1EB4366B8, &qword_1EB4366C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4366B0);
  }

  return result;
}

uint64_t sub_1AB157FC0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1AB157FD4(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1AB093AF0(a1, a2);
  }

  return a1;
}

uint64_t sub_1AB157FE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return sub_1AB093AF0(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1AB157FF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1AB0177B8(a1);
  }

  else
  {
  }
}

uint64_t sub_1AB158004(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AB158048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_1AB1580A8(uint64_t result)
{
  if (result != 1)
  {
    return sub_1AB0177B8(result);
  }

  return result;
}

unint64_t static ComponentKindTable._table.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = sub_1AB15840C(v2, &qword_1EB436978);

  return v3;
}

uint64_t sub_1AB15811C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436968);
    v2 = sub_1AB461924();
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
    sub_1AB0165C4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1AB014B78(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1AB014B78(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1AB014B78(v31, v32);
    result = sub_1AB461524();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1AB014B78(v32, (*(v2 + 56) + 32 * v10));
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

unint64_t sub_1AB15840C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436950);
    v3 = sub_1AB461924();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436960);
        swift_dynamicCast();
        result = sub_1AB014DB4(v16, v15);
        if (v17)
        {
          v10 = (v3[6] + 16 * result);
          *v10 = v16;
          v10[1] = v15;
          v11 = result;

          *(v3[7] + 8 * v11) = v23;
          v9 = v12;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v3[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          *(v3[7] + 8 * result) = v23;
          v19 = v3[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v3[2] = v21;
          v9 = v12;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1AB15862C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436940);
    v2 = sub_1AB461924();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        v26 = sub_1AB158C74();
        v27 = sub_1AB158CC0();
        *&v25 = v18;
        sub_1AB0149B0(&v25, v29);
        sub_1AB0149B0(v29, v30);
        sub_1AB0149B0(v30, &v28);

        v19 = v18;
        result = sub_1AB014DB4(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = v2[7] + 40 * v10;
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_1AB0149B0(&v28, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1AB0149B0(&v28, v2[7] + 40 * result);
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t static ComponentKindTable._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = dynamic_cast_existential_2_conditional(a1);
  if (v7)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    sub_1AB01494C(a2, v31);
    *&v33 = v10;
    *(&v33 + 1) = v11;
    v34 = v12;
    __swift_allocate_boxed_opaque_existential_0(v32);
    sub_1AB460E14();
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_2(v32);
    }

LABEL_7:
    v29 = v33;
    v22 = v33;
    v23 = __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    *(a3 + 24) = v29;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v23, v22);
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  v14 = dynamic_cast_existential_2_conditional(a1);
  if (v14)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    sub_1AB01494C(a2, v30);
    result = JSONObject.init(from:)(v30, v31);
    if (v3)
    {
      return result;
    }

    __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
    v20 = sub_1AB462214();
    JSONContext.init(userInfo:)(v20);
    v21 = *(v19 + 8);
    *&v33 = v17;
    *(&v33 + 1) = v18;
    v34 = v19;
    __swift_allocate_boxed_opaque_existential_0(v32);
    v21(v31, v30, v17, v19);
    goto LABEL_7;
  }

  v25 = sub_1AB4616B4();
  swift_allocError();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436938);
  *v27 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1AB4621E4();
  sub_1AB4615D4();

  v32[0] = 60;
  v32[1] = 0xE100000000000000;
  v28 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v28);

  MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB4FF3B0);
  sub_1AB461694();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
  return swift_willThrow();
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1AC59F020);
  }

  return result;
}

unint64_t sub_1AB158C74()
{
  result = qword_1EB434E60;
  if (!qword_1EB434E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB434E60);
  }

  return result;
}

unint64_t sub_1AB158CC0()
{
  result = qword_1EB436948;
  if (!qword_1EB436948)
  {
    sub_1AB158C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436948);
  }

  return result;
}

JSStringRef sub_1AB158D18@<X0>(const char *a1@<X0>, JSStringRef *a2@<X8>)
{
  result = JSStringCreateWithUTF8CString(a1);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_1AB158D50(OpaqueJSString *a1)
{
  CharactersPtr = JSStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    v3 = CharactersPtr;
    result = JSStringGetLength(a1);
    if (result)
    {
      v5 = result;
      JSStringRetain(a1);
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      v7 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
      v27 = sub_1AB159174;
      v28 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1AB159114;
      v26 = &block_descriptor;
      v8 = _Block_copy(&aBlock);

      v9 = [v7 initWithCharactersNoCopy:v3 length:v5 deallocator:v8];
      _Block_release(v8);
      v10 = sub_1AB460544();

      return v10;
    }
  }

  else
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    v14 = MEMORY[0x1E69E6158];
    v26 = MEMORY[0x1E69E6158];
    aBlock = 0xD000000000000026;
    v24 = 0x80000001AB4FF3D0;
    *(v13 + 48) = 0u;
    *(v13 + 32) = 0u;
    sub_1AB0169C4(&aBlock, v13 + 32);
    *(v13 + 64) = 0;
    *(v12 + 32) = v13;
    v15 = sub_1AB461094();
    if (os_log_type_enabled(v11, v15))
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
      aBlock = v12;
      v24 = sub_1AB0223E4;
      v25 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v19 = sub_1AB460484();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      *(v22 + 56) = v14;
      *(v22 + 64) = sub_1AB016854();
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      sub_1AB45FF14();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AB159114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t LocalPreferences.__allocating_init(bundleIdentifier:)()
{
  v0 = swift_allocObject();
  v1 = sub_1AB460514();

  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return v0;
}

uint64_t LocalPreferences.init(bundleIdentifier:)()
{
  v1 = sub_1AB460514();

  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return v0;
}

uint64_t LocalPreferences.__allocating_init(bundleIdentifier:cacheEnabled:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1AB460514();

  v5 = swift_allocObject();
  sub_1AB09F72C(v4, a3);
  return v5;
}

BOOL LocalPreferences.isValueForced(forKey:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = sub_1AB460514();

  IsForced = CFPreferencesAppValueIsForced(v4, *(v1 + 16));

  return IsForced != 0;
}

uint64_t sub_1AB159318(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = sub_1AB460514();

  return v2;
}

uint64_t sub_1AB159360(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1AB01494C(a3, v12);
  sub_1AB01522C(a1, v11);
  v5 = *a2;
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  v8 = sub_1AB159318(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
  v9 = sub_1AB461344();
  CFPreferencesSetAppValue(v8, v9, *(v5 + 16));

  swift_unknownObjectRelease();
  sub_1AB0167A8(v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t LocalPreferences.subscript.setter(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v5);
  (*(v6 + 8))(v5, v6);
  v7 = sub_1AB460514();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
  v8 = sub_1AB461344();
  CFPreferencesSetAppValue(v7, v8, *(v2 + 16));

  swift_unknownObjectRelease();
  sub_1AB0167A8(a1);
  return __swift_destroy_boxed_opaque_existential_1Tm(a2);
}

void (*LocalPreferences.subscript.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x98uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = v2;
  sub_1AB01494C(a2, v5);
  LocalPreferences.subscript.getter(a2, v6 + 80);
  return sub_1AB159578;
}

void sub_1AB159578(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 144);
  if (a2)
  {
    sub_1AB01522C(v2 + 80, v2 + 112);
    sub_1AB0149B0(v2, v2 + 40);
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    __swift_project_boxed_opaque_existential_1Tm((v2 + 40), v4);
    (*(v5 + 8))(v4, v5);
    v6 = sub_1AB460514();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
    v7 = sub_1AB461344();
    CFPreferencesSetAppValue(v6, v7, *(v3 + 16));
    swift_unknownObjectRelease();

    sub_1AB0167A8(v2 + 112);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 40);
    sub_1AB0167A8(v2 + 80);
  }

  else
  {
    v8 = *(v2 + 24);
    v9 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1Tm(*a1, v8);
    (*(v9 + 8))(v8, v9);
    v10 = sub_1AB460514();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
    v11 = sub_1AB461344();
    CFPreferencesSetAppValue(v10, v11, *(v3 + 16));
    swift_unknownObjectRelease();

    sub_1AB0167A8(v2 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  free(v2);
}

void LocalPreferences.removeValue(forKey:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v2);
  (*(v3 + 8))(v2, v3);
  key = sub_1AB460514();

  CFPreferencesSetAppValue(key, 0, *(v1 + 16));
}

id sub_1AB1598B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AB1598FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = sub_1AB014DB4(a2, a3);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB1D7864();
      v10 = v12;
    }

    v11 = *(*(v10 + 56) + v8);
    result = sub_1AB18F930(v8, v10);
    *a1 = v10;
  }

  else
  {
    v11 = 2;
  }

  *a4 = v11;
  return result;
}

uint64_t sub_1AB1599B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v6);
  v8 = sub_1AB159318(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
  v9 = sub_1AB461344();
  CFPreferencesSetAppValue(v8, v9, *(v3 + 16));

  swift_unknownObjectRelease();
  sub_1AB0167A8(a1);
  return __swift_destroy_boxed_opaque_existential_1Tm(a2);
}

void (*sub_1AB159A5C(uint64_t **a1, void *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = LocalPreferences.subscript.modify(v4, a2);
  return sub_1AB159AD4;
}

void sub_1AB159AD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_1AB159B1C(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = sub_1AB159318(v3, v4);
  CFPreferencesSetAppValue(v5, 0, *(v2 + 16));
}

void sub_1AB159BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4 && *(a4 + 16))
    {
      v5 = sub_1AB1DB6F4(*MEMORY[0x1E696A4F0]);
      if (v6)
      {
        sub_1AB0165C4(*(a4 + 56) + 32 * v5, &v10);
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60);
    if (swift_dynamicCast())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    if (swift_weakLoadStrong())
    {
      type metadata accessor for LocalPreferences.CacheValue();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      swift_unknownObjectRetain();
      sub_1AB026670(v8);
    }

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1AB159D00()
{
  result = qword_1EB436498;
  if (!qword_1EB436498)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436498);
  }

  return result;
}

unint64_t sub_1AB159D58@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    result = sub_1AB014DB4(*(v3 + 16), *(v3 + 24));
    if (v7)
    {
      LOBYTE(v6) = *(*(v5 + 56) + result);
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t CommonNetworkObservation.__allocating_init(name:object:scheduler:body:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1AB01494C(a3, v10 + 16);
  *(v10 + 56) = a4;
  *(v10 + 64) = a5;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);

  v13 = a1;
  [v12 addObserver:v10 selector:sel_networkStateDidChange_ name:v13 object:sub_1AB461D84()];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v10;
}

uint64_t CommonNetworkObservation.init(name:object:scheduler:body:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AB01494C(a3, v5 + 16);
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);

  v13 = a1;
  [v12 addObserver:v5 selector:sel_networkStateDidChange_ name:v13 object:sub_1AB461D84()];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v5;
}

uint64_t CommonNetworkObservation.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

Swift::Void __swiftcall CommonNetworkObservation.invalidate()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];
}

uint64_t CommonNetworkObservation.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB15A188()
{
  sub_1AB45F264();
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436998);
    if (swift_dynamicCast())
    {
      if (*(&v16 + 1))
      {
        sub_1AB0149B0(&v15, v18);
        v1 = v0[5];
        v2 = v0[6];
        __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
        v4 = v0[7];
        v3 = v0[8];
        sub_1AB01494C(v18, &v15);
        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        *(v5 + 24) = v3;
        sub_1AB0149B0(&v15, v5 + 32);
        v6 = *(v2 + 8);

        v6(sub_1AB022478, v5, v1, v2);

        return __swift_destroy_boxed_opaque_existential_1Tm(v18);
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_1AB014AC0(v13, &unk_1EB437E60);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_1AB014AC0(&v15, &qword_1EB436990);
  if (qword_1EB435D48 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v7 = v19;
  v8 = v20;
  __swift_project_boxed_opaque_existential_1Tm(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D47F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;

  sub_1AB2C605C(v10 + 32);
  *(v9 + 32) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AB4D4720;
  *(&v16 + 1) = MEMORY[0x1E69E6158];
  *&v15 = 0xD000000000000034;
  *(&v15 + 1) = 0x80000001AB4FF690;
  *(v11 + 48) = 0u;
  *(v11 + 32) = 0u;
  sub_1AB0169C4(&v15, v11 + 32);
  *(v11 + 64) = 0;
  *(v9 + 40) = v11;
  Logger.error(_:)(v9, v7, v8);

  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

void sub_1AB15A54C()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

uint64_t sub_1AB15A60C()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  byte_1EB4354C0 = v1;
  return result;
}

uint64_t sub_1AB15A648(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v5 = *a1;
  v4 = a1[1];
  sub_1AB4620A4();
  v32 = v4;
  sub_1AB4620C4();
  if (v4)
  {
    sub_1AB460684();
  }

  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[5];
  v9 = a1[6];
  sub_1AB460684();
  sub_1AB4620C4();
  if (v9)
  {
    sub_1AB460684();
  }

  v11 = sub_1AB462104();
  v12 = a2 + 56;
  v13 = -1 << *(a2 + 32);
  v14 = v11 & ~v13;
  if ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v30 = v5;
    v31 = v9;
    v29 = v10;
    v15 = ~v13;
    v16 = *(a2 + 48);
    v17 = v32;
    do
    {
      v18 = (v16 + 56 * v14);
      v20 = *v18;
      v19 = v18[1];
      v22 = v18[5];
      v21 = v18[6];
      if (v18[2] != v7 || v18[3] != v8)
      {
        v24 = sub_1AB461DA4();
        v17 = v32;
        if ((v24 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      if (v19)
      {
        if (!v17)
        {
          goto LABEL_10;
        }

        if (v20 != v30 || v19 != v17)
        {
          v26 = sub_1AB461DA4();
          v17 = v32;
          if ((v26 & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else if (v17)
      {
        goto LABEL_10;
      }

      if (v21)
      {
        if (v31)
        {
          if (v22 == v29 && v21 == v31)
          {
            return 1;
          }

          v28 = sub_1AB461DA4();
          v17 = v32;
          if (v28)
          {
            return 1;
          }
        }
      }

      else if (!v31)
      {
        return 1;
      }

LABEL_10:
      v14 = (v14 + 1) & v15;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1AB15A854(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1AB15ACA4(&qword_1ED4D1AF0), v7 = sub_1AB460444(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1AB15ACA4(&qword_1ED4D1AE8);
      v15 = sub_1AB460504();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_1AB15AA44(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1AB4620A4();
  sub_1AB4620D4();
  v4 = sub_1AB462104();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1AB15AB10(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1AB461524(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_1AB02B4BC(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x1AC59C870](v10, a1);
      sub_1AB02B2E4(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for StartUpPerformanceEvent.Checkpoint(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for StartUpPerformanceEvent.Checkpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AB15ACA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AB45F764();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB15AD34()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

uint64_t sub_1AB15AD78()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

uint64_t sub_1AB15AE00(char a1)
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](a1 & 1);
  return sub_1AB462104();
}

uint64_t sub_1AB15AE64()
{
  sub_1AB4620A4();
  sub_1AB15ADD8(v2, *v0);
  return sub_1AB462104();
}

uint64_t sub_1AB15AEA4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 56) == 1)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v6 = (v2 + 16);
    __swift_project_boxed_opaque_existential_1Tm(v6, v3);
    return (*(v4 + 8))(a1, a2, v3, v4);
  }

  else
  {
    sub_1AB15B1B8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1AB15AF58(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 56) == 1)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v6 = (v2 + 16);
    __swift_project_boxed_opaque_existential_1Tm(v6, v3);
    return (*(v4 + 16))(a1, a2, v3, v4);
  }

  else
  {
    sub_1AB15B1B8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1AB15B00C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t storeEnumTagSinglePayload for JSONTimeUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AB15B1B8()
{
  result = qword_1EB436AA0;
  if (!qword_1EB436AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436AA0);
  }

  return result;
}

unint64_t sub_1AB15B220()
{
  result = qword_1EB436AA8;
  if (!qword_1EB436AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436AA8);
  }

  return result;
}

id static JSValue.makeFunction(in:where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v10[4] = sub_1AB054C14;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1AB054BC4;
  v10[3] = &block_descriptor_0;
  v7 = _Block_copy(v10);

  result = [objc_opt_self() valueWithObject:v7 inContext:a1];
  if (result)
  {
    v9 = result;
    _Block_release(v7);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id JSValue.init<each A, B>(in:function:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = swift_allocateMetadataPack();
  v14[4] = a6;
  v14[5] = swift_allocateWitnessTablePack();
  v14[6] = a8;
  v14[7] = a2;
  v14[8] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AB15C14C;
  *(v15 + 24) = v14;
  v19[4] = sub_1AB088B60;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1AB054BC4;
  v19[3] = &block_descriptor_10;
  v16 = _Block_copy(v19);

  result = [swift_getObjCClassFromMetadata() valueWithObject:v16 inContext:a1];
  if (result)
  {
    v18 = result;
    _Block_release(v16);

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AB15B50C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *), uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v13 = a7;
  v67 = a1;
  v16 = 8 * a6;
  v58 = a5;
  v59 = a4;
  if (a6 == 1)
  {
    TupleTypeMetadata = *(a7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v18 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a6)
    {
      v19 = 0;
      v20 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (a6 < 4)
      {
        goto LABEL_9;
      }

      if (&v18[-v20] < 0x20)
      {
        goto LABEL_9;
      }

      v19 = a6 & 0xFFFFFFFFFFFFFFFCLL;
      v21 = (v20 + 16);
      v22 = v18 + 16;
      v23 = a6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      if (v19 != a6)
      {
LABEL_9:
        v25 = a6 - v19;
        v26 = 8 * v19;
        v27 = &v18[8 * v19];
        v28 = (v20 + v26);
        do
        {
          v29 = *v28++;
          *v27 = v29;
          v27 += 8;
          --v25;
        }

        while (v25);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v30 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v70 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a8 - 8);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v69 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v32;
  v55 = a8;
  v61 = v36;
  v62 = v35;
  v60 = v37;
  v63 = v34;
  v56 = v38;
  v57 = v39;
  if (a6)
  {
    if (a3 >> 62)
    {
LABEL_42:
      v65 = a3 & 0xFFFFFFFFFFFFFF8;
      v41 = sub_1AB4618F4();
    }

    else
    {
      v65 = a3 & 0xFFFFFFFFFFFFFF8;
      v41 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = 0;
    v43 = 0;
    v66 = a3 & 0xC000000000000001;
    v53 = a3;
    v64 = (a3 + 32);
    v68 = v13 & 0xFFFFFFFFFFFFFFFELL;
    a9 &= ~1uLL;
    v44 = (v63 + 32);
    while (1)
    {
      if (v43 == v41)
      {
        result = [objc_opt_self() valueWithUndefinedInContext_];
        v43 = v41;
        if (!result)
        {
          __break(1u);
          return result;
        }
      }

      else if (v66)
      {
        MEMORY[0x1AC59C990](v43, v53);
        v47 = __OFADD__(v43++, 1);
        if (v47)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v43 >= *(v65 + 16))
        {
          goto LABEL_41;
        }

        v46 = *&v64[8 * v43];
        v47 = __OFADD__(v43++, 1);
        if (v47)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      v48 = a6 == 1 ? 0 : *v44;
      a3 = &v70[v48];
      v13 = *(v68 + 8 * v42);
      (*(*(a9 + 8 * v42) + 8))();
      if (v11)
      {
        break;
      }

      *&v69[8 * v42++] = a3;
      v44 += 4;
      if (a6 == v42)
      {
        goto LABEL_32;
      }
    }

    if (v42)
    {
      v13 = v68 - 8;
      v50 = v69 - 8;
      do
      {
        (*(*(*(v13 + 8 * v42) - 8) + 8))(*&v50[8 * v42]);
        --v42;
      }

      while (v42);
    }
  }

  else
  {
LABEL_32:
    v49 = v56;
    v13 = v58;
    v59(v69);
    (*(v57 + 8))(v70, v63);
    if (!v11)
    {
      v51 = v55;
      v13 = (*(a10 + 16))(v67, v55, a10);
      (*(v54 + 8))(v49, v51);
    }
  }

  return v13;
}

id JSValue.init<each A>(in:function:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = swift_allocateMetadataPack();
  v8[4] = swift_allocateWitnessTablePack();
  v8[5] = a2;
  v8[6] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AB15C180;
  *(v9 + 24) = v8;
  v13[4] = sub_1AB088B60;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1AB054BC4;
  v13[3] = &block_descriptor_20;
  v10 = _Block_copy(v13);

  result = [swift_getObjCClassFromMetadata() valueWithObject:v10 inContext:a1];
  if (result)
  {
    v12 = result;
    _Block_release(v10);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1AB15BB88(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *), uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v10 = a7;
  v52 = a1;
  v13 = 8 * a6;
  v45 = a5;
  v46 = a4;
  if (a6 == 1)
  {
    TupleTypeMetadata = *(a7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v15 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a6)
    {
      v16 = 0;
      v17 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (a6 < 4)
      {
        goto LABEL_9;
      }

      if (&v15[-v17] < 0x20)
      {
        goto LABEL_9;
      }

      v16 = a6 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = (v17 + 16);
      v19 = v15 + 16;
      v20 = a6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (v16 != a6)
      {
LABEL_9:
        v22 = a6 - v16;
        v23 = 8 * v16;
        v24 = &v15[8 * v16];
        v25 = (v17 + v23);
        do
        {
          v26 = *v25++;
          *v24 = v26;
          v24 += 8;
          --v22;
        }

        while (v22);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v48 = &v41;
  v27 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v55 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &v41;
  result = MEMORY[0x1EEE9AC00](v27);
  v54 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v30;
  v44 = result;
  if (a6)
  {
    if (a3 >> 62)
    {
LABEL_42:
      v40 = result;
      v50 = a3 & 0xFFFFFFFFFFFFFF8;
      v31 = sub_1AB4618F4();
      result = v40;
    }

    else
    {
      v50 = a3 & 0xFFFFFFFFFFFFFF8;
      v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = 0;
    v33 = 0;
    v51 = a3 & 0xC000000000000001;
    v42 = a3;
    v49 = (a3 + 32);
    v53 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v34 = a8 & 0xFFFFFFFFFFFFFFFELL;
    a8 = (result + 32);
    while (1)
    {
      if (v33 == v31)
      {
        result = [objc_opt_self() valueWithUndefinedInContext_];
        v33 = v31;
        if (!result)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else if (v51)
      {
        MEMORY[0x1AC59C990](v33, v42);
        v36 = __OFADD__(v33++, 1);
        if (v36)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v33 >= *(v50 + 16))
        {
          goto LABEL_41;
        }

        v35 = *&v49[8 * v33];
        v36 = __OFADD__(v33++, 1);
        if (v36)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      v37 = a6 == 1 ? 0 : *a8;
      a3 = &v55[v37];
      v10 = *(v53 + 8 * v32);
      result = (*(*(v34 + 8 * v32) + 8))();
      if (v8)
      {
        break;
      }

      *&v54[8 * v32++] = a3;
      a8 += 16;
      if (a6 == v32)
      {
        goto LABEL_32;
      }
    }

    if (v32)
    {
      v38 = v53 - 8;
      v39 = v54 - 8;
      do
      {
        result = (*(*(*(v38 + 8 * v32) - 8) + 8))(*&v39[8 * v32]);
        --v32;
      }

      while (v32);
    }
  }

  else
  {
LABEL_32:
    v46(v54);
    if (v8)
    {
      return (*(v43 + 8))(v55, v44);
    }

    else
    {
      (*(v43 + 8))(v55, v44);
      result = [objc_opt_self() valueWithUndefinedInContext_];
      if (!result)
      {
LABEL_43:
        __break(1u);
      }
    }
  }

  return result;
}

id JSValue.function(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [v4 isObject];
  if (result)
  {
    v8 = result;
    result = [v4 context];
    if (result)
    {
      v9 = result;
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a4;
      v15[4] = sub_1AB088B60;
      v15[5] = v10;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1AB054BC4;
      v15[3] = &block_descriptor_27;
      v11 = _Block_copy(v15);

      result = [objc_opt_self() valueWithObject:v11 inContext:v9];
      if (result)
      {
        v12 = result;
        _Block_release(v11);

        v13 = v12;
        v14 = sub_1AB460514();
        [v4 setValue:v13 forProperty:v14];

        return v8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AB15C1A4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, *a3);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t DeepLinkIntentImplementation.init(dispatching:routes:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DeepLinkIntentImplementation.init<>(routes:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DeepLinkIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a3;
  v5[24] = a4;
  v5[21] = a1;
  v5[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436AB8);
  v5[25] = swift_task_alloc();
  matched = type metadata accessor for URLExpression.MatchResult();
  v5[26] = matched;
  v5[27] = *(matched - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_1AB45F764();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v9 = *(a4 + 16);
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *v4;
  v5[34] = v10;
  v5[35] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1AB15C420, 0, 0);
}

uint64_t sub_1AB15C420()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  (*(*(v0 + 264) + 16))(v1, *(v0 + 176), v3);
  Dependency.init<A>(satisfying:with:)(v3, v1, v3, (v0 + 16));
  *(v0 + 288) = sub_1AB0300F4((v0 + 16));
  sub_1AB01667C(v0 + 16);
  v4 = *(v2 + 16);
  *(v0 + 296) = v4;
  if (!v4)
  {
LABEL_9:
    v33 = *(v0 + 168);

    *(v33 + 32) = 0;
    *v33 = 0u;
    *(v33 + 16) = 0u;
LABEL_14:

    v41 = *(v0 + 8);

    return v41();
  }

  v5 = *(*(v0 + 192) + 24);
  *(v0 + 304) = v5;
  *(v0 + 312) = *(v5 + 16);
  *(v0 + 320) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0x82C0000000000000;
  *(v0 + 328) = 0;
  v6 = *(v0 + 280);
  if (!*(v6 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = 0;
  while (1)
  {
    v44 = *(v0 + 312);
    v8 = *(v0 + 304);
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    v11 = *(v0 + 216);
    v46 = *(v0 + 208);
    v45 = *(v0 + 200);
    v12 = (v6 + 48 * v7);
    v13 = v12[4];
    *(v0 + 336) = v13;
    v14 = v12[5];
    *(v0 + 344) = v14;
    v15 = v12[6];
    *(v0 + 352) = v15;
    v16 = v12[7];
    *(v0 + 360) = v16;
    v42 = v12[8];
    v43 = v8;
    *(v0 + 368) = v12[9];
    v17 = v13;
    v18 = v14;
    v19 = v15;

    v20 = v9;
    v44(v10, v43);
    v21 = v17;
    v22 = v18;
    v23 = v19;

    *&v24 = v21;
    *(&v24 + 1) = v22;
    *&v25 = v23;
    *(&v25 + 1) = v16;
    *(v0 + 152) = v25;
    *(v0 + 136) = v24;
    URLExpression.match(_:)(v20, v45);
    v26 = *(v0 + 144);
    v27 = *(v0 + 152);

    if ((*(v11 + 48))(v45, 1, v46) != 1)
    {
      break;
    }

    v28 = *(v0 + 200);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    sub_1AB014AC0(v28, &qword_1EB436AB8);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v30 = *(v0 + 344);
    v29 = *(v0 + 352);

    sub_1AB15CFEC(v0 + 56, v0 + 96);
    if (*(v0 + 120))
    {
      v38 = *(v0 + 168);

      sub_1AB014AC0(v0 + 96, qword_1EB436AC0);
      v39 = *(v0 + 88);
      v40 = *(v0 + 72);
      *v38 = *(v0 + 56);
      *(v38 + 16) = v40;
      *(v38 + 32) = v39;
      goto LABEL_14;
    }

    v31 = *(v0 + 296);
    v32 = *(v0 + 328) + 1;
    sub_1AB014AC0(v0 + 56, qword_1EB436AC0);
    sub_1AB014AC0(v0 + 96, qword_1EB436AC0);
    if (v32 == v31)
    {
      goto LABEL_9;
    }

    v7 = *(v0 + 328) + 1;
    *(v0 + 328) = v7;
    v6 = *(v0 + 280);
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_8;
    }
  }

  sub_1AB15D05C(*(v0 + 200), *(v0 + 224));
  v47 = (v42 + *v42);
  v34 = swift_task_alloc();
  *(v0 + 376) = v34;
  *v34 = v0;
  v34[1] = sub_1AB15C89C;
  v35 = *(v0 + 288);
  v36 = *(v0 + 224);

  return v47(v0 + 56, v36, v35);
}

uint64_t sub_1AB15C89C()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1AB15CDD0;
  }

  else
  {
    v2 = sub_1AB15C9B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB15C9B0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  sub_1AB15D0C0(*(v0 + 224));
  (*(v2 + 8))(v1, v3);
  while (1)
  {
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);

    sub_1AB15CFEC(v0 + 56, v0 + 96);
    if (*(v0 + 120))
    {
      v32 = *(v0 + 168);

      sub_1AB014AC0(v0 + 96, qword_1EB436AC0);
      v33 = *(v0 + 88);
      v34 = *(v0 + 72);
      *v32 = *(v0 + 56);
      *(v32 + 16) = v34;
      *(v32 + 32) = v33;
      goto LABEL_9;
    }

    v6 = *(v0 + 296);
    v7 = *(v0 + 328) + 1;
    sub_1AB014AC0(v0 + 56, qword_1EB436AC0);
    result = sub_1AB014AC0(v0 + 96, qword_1EB436AC0);
    if (v7 == v6)
    {
      break;
    }

    v9 = *(v0 + 328) + 1;
    *(v0 + 328) = v9;
    v10 = *(v0 + 280);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
      return result;
    }

    v42 = *(v0 + 312);
    v11 = *(v0 + 304);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v14 = *(v0 + 216);
    v44 = *(v0 + 208);
    v43 = *(v0 + 200);
    v15 = (v10 + 48 * v9);
    v16 = v15[4];
    *(v0 + 336) = v16;
    v17 = v15[5];
    *(v0 + 344) = v17;
    v18 = v15[6];
    *(v0 + 352) = v18;
    v19 = v15[7];
    *(v0 + 360) = v19;
    v40 = v15[8];
    v41 = v11;
    *(v0 + 368) = v15[9];
    v20 = v16;
    v21 = v17;
    v22 = v18;

    v23 = v12;
    v42(v13, v41);
    v24 = v20;
    v25 = v21;
    v26 = v22;

    *&v27 = v24;
    *(&v27 + 1) = v25;
    *&v28 = v26;
    *(&v28 + 1) = v19;
    *(v0 + 152) = v28;
    *(v0 + 136) = v27;
    URLExpression.match(_:)(v23, v43);
    v29 = *(v0 + 144);
    v30 = *(v0 + 152);

    if ((*(v14 + 48))(v43, 1, v44) != 1)
    {
      sub_1AB15D05C(*(v0 + 200), *(v0 + 224));
      v45 = (v40 + *v40);
      v37 = swift_task_alloc();
      *(v0 + 376) = v37;
      *v37 = v0;
      v37[1] = sub_1AB15C89C;
      v38 = *(v0 + 288);
      v39 = *(v0 + 224);

      return v45(v0 + 56, v39, v38);
    }

    v31 = *(v0 + 200);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    sub_1AB014AC0(v31, &qword_1EB436AB8);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  v35 = *(v0 + 168);

  *(v35 + 32) = 0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
LABEL_9:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1AB15CDD0()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  sub_1AB15D0C0(v0[28]);
  (*(v4 + 8))(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB15CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return DeepLinkIntentImplementation.perform(_:objectGraph:)(a1, a2, a3, a4);
}

uint64_t sub_1AB15CFEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB15D05C(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for URLExpression.MatchResult();
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

uint64_t sub_1AB15D0C0(uint64_t a1)
{
  matched = type metadata accessor for URLExpression.MatchResult();
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t sub_1AB15D128()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Double __swiftcall JSONTimeUnit.timeInterval(byConverting:)(Swift::Double byConverting)
{
  if (*v1)
  {
    return byConverting / 1000.0;
  }

  return byConverting;
}

Swift::Double __swiftcall JSONTimeUnit.value(byConverting:)(Swift::Double byConverting)
{
  if (*v1)
  {
    return byConverting * 1000.0;
  }

  return byConverting;
}

uint64_t JSONTimeUnit.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t _s9JetEngine0A13PackageWriterV4StepO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB15D290()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB15D2D8()
{
  result = qword_1EB436B48;
  if (!qword_1EB436B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436B48);
  }

  return result;
}

uint64_t sub_1AB15D33C()
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
  *(v2 + 48) = 0xD00000000000001BLL;
  *(v2 + 56) = 0x80000001AB4FF940;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v3 = sub_1AB460484();
  v5 = v4;

  qword_1EB46C290 = v3;
  *algn_1EB46C298 = v5;
  return result;
}

uint64_t sub_1AB15D464()
{
  result = sub_1AB460514();
  qword_1EB46C2D0 = result;
  return result;
}

uint64_t sub_1AB15D49C()
{
  if (qword_1ED4D09A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AB15D4F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MetricsPipeline.CallingOutActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t MetricsPipeline.FlushBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:recorder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0;
  *a5 = v9;
  sub_1AB01494C(a2, a5 + 8);
  *(a5 + 48) = a3;
  v10 = [objc_opt_self() ams_sharedAccountStore];
  *(a5 + 80) = sub_1AB016760(0, &qword_1ED4D1F60);
  *(a5 + 88) = &protocol witness table for ACAccountStore;
  *(a5 + 56) = v10;
  *(a5 + 96) = [objc_opt_self() mainBundle];
  *(a5 + 104) = &type metadata for StandardMetricsFieldsBuilder;
  *(a5 + 112) = &protocol witness table for StandardMetricsFieldsBuilder;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1AB028040(MEMORY[0x1E69E7CC0]);
  v13 = sub_1AB028064(v11);
  *(a5 + 120) = v12;
  *(a5 + 128) = v13;
  sub_1AB01494C(a4, a5 + 176);
  v14 = [objc_opt_self() defaultCenter];
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(a5 + 216) = v14;
  return result;
}

uint64_t *MetricsPipeline.Configuration.withAccountProvider(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB029758(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 56), a1);
}

void MetricsPipeline.Configuration.withBundle(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB029758(v2, a2);

  objc_storeStrong((a2 + 96), a1);
}

uint64_t MetricsPipeline.Configuration.withBuilderType(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AB029758(v3, a3);
  *(a3 + 104) = a1;
  *(a3 + 112) = a2;
  return result;
}

uint64_t MetricsPipeline.Configuration.withAggregator(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_1AB029758(v2, a2);

  *(a2 + 120) = v4;
  *(a2 + 128) = v5;
  return result;
}

uint64_t MetricsPipeline.Configuration.withTreatmentFilter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB029758(v2, a2);
  sub_1AB014AC0(a2 + 136, &qword_1EB436B50);
  return sub_1AB01494C(a1, a2 + 136);
}

void MetricsPipeline.Configuration.withNotificationCenter(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB029758(v2, a2);

  objc_storeStrong((a2 + 216), a1);
}

void sub_1AB15D900(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB4356C8 != -1)
  {
    swift_once();
  }

  v8 = sub_1AB026D00(qword_1EB46C290, *algn_1EB46C298);
  if (v8 != 2 && (v8 & 1) != 0 && *(v7 + 16))
  {
    v9 = *(v3 + 152);
    if (qword_1EB435C70 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB46C2D0;
    sub_1AB0800C4(v4, &v16);
    v11 = sub_1AB461F94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D47F0;
    *&v16 = 0xD000000000000039;
    *(&v16 + 1) = 0x80000001AB4FF890;
    v13 = MEMORY[0x1E69E6158];
    sub_1AB461564();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    *(inited + 72) = v7;
    *&v16 = 0xD000000000000038;
    *(&v16 + 1) = 0x80000001AB4FF8D0;

    sub_1AB461564();
    if (a3)
    {
      *(&v17 + 1) = v13;
      *&v16 = a2;
      *(&v16 + 1) = a3;
      sub_1AB014B78(&v16, (inited + 144));
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      *(inited + 168) = sub_1AB016760(0, &qword_1ED4D1D80);
      *(inited + 144) = v14;
      if (*(&v17 + 1))
      {
        sub_1AB014AC0(&v16, &unk_1EB437E60);
      }
    }

    sub_1AB0BA124(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B78);
    swift_arrayDestroy();
    v15 = sub_1AB4602D4();

    [v9 postNotificationName:v10 object:v11 userInfo:v15];
    swift_unknownObjectRelease();
  }
}

uint64_t MetricsPipeline.init(builderType:aggregator:linter:recorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1AB01494C(a4, v23);
  sub_1AB01494C(a5, v22);
  sub_1AB01494C(v23, v21);
  sub_1AB01494C(v22, v20);
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0;
  *(a6 + 72) = 0u;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = *a3;
  sub_1AB01494C(v21, a6 + 32);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  sub_1AB02A330(v17, &v16, v19);
  sub_1AB014AC0(v17, &qword_1EB436B50);
  sub_1AB017CC4(v19, a6 + 72, &qword_1EB436B50);
  sub_1AB01494C(v20, a6 + 112);
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  *(a6 + 152) = v13;
  *(a6 + 160) = 0;
  *(a6 + 192) = 0;
  *(a6 + 168) = MEMORY[0x1E69E7CD0];
  *(a6 + 176) = 0;
  v14 = [v12 defaultCenter];
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
  *(a6 + 184) = v14;
  return result;
}

uint64_t MetricsPipeline.withFlushBehavior(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_1AB0560F8(v2, a2);
  *(a2 + 192) = v4;
  return result;
}

uint64_t static MetricsPipeline.unstable_scheduleBarrier(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB4601B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AB4601F4();
  v8 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED4D0CE0 != -1)
  {
    swift_once();
  }

  v13[1] = qword_1ED4D0CE8;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AB0204A8(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v10, v7, v11);
  _Block_release(v11);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v14);
}

uint64_t sub_1AB15E0D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 888) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB15E584;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    *(v1 + 896) = *(v1 + 736);
    v5 = *(v1 + 824);
    v4 = *(v1 + 816);
    v3 = sub_1AB15E294;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AB15E230()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 448);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB15E294()
{
  v11 = v0;
  v1 = v0[113];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[99];
  v9 = v0[112];
  v2 = v9;
  v10 = v1;
  sub_1AB15D900(&v9, v4, v3);
  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1Tm(v5 + 14, v6);
  v9 = v2;
  v10 = v1;
  v0[114] = (*(v7 + 16))(&v9, v4, v3, v6, v7);

  return MEMORY[0x1EEE6DFA0](sub_1AB15E378, 0, 0);
}

uint64_t sub_1AB15E378()
{
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1AB15E43C;
  *(v0 + 288) = swift_continuation_init();
  *(v0 + 360) = 1;
  sub_1AB1946AC(v0 + 288);
  sub_1AB014AC0(v0 + 288, &unk_1EB4378E0);

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1AB15E43C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 920) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = sub_1AB15E750;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v5 = *(v1 + 824);
    v4 = *(v1 + 816);
    v3 = sub_1AB15E650;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AB15E584()
{

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  return MEMORY[0x1EEE6DFA0](sub_1AB15E5EC, v2, v1);
}

uint64_t sub_1AB15E5EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 448);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB15E650()
{
  if (*(*(v0 + 800) + 16) & 1) == 0 || (*(v0 + 281))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 448);
    **(v0 + 776) = *(v0 + 896);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v1 = *(v0 + 792);
    v2 = v1[17];
    v3 = v1[18];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 14, v2);
    *(v0 + 928) = (*(v3 + 24))(v2, v3);

    return MEMORY[0x1EEE6DFA0](sub_1AB15E81C, 0, 0);
  }
}

uint64_t sub_1AB15E750()
{

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  return MEMORY[0x1EEE6DFA0](sub_1AB15E7B8, v2, v1);
}

uint64_t sub_1AB15E7B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 448);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB15E81C()
{
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 760;
  *(v0 + 152) = sub_1AB15E8E8;
  *(v0 + 368) = swift_continuation_init();
  *(v0 + 440) = 1;
  sub_1AB19484C(v0 + 368);
  sub_1AB014AC0(v0 + 368, &unk_1EB4397F0);

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1AB15E8E8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 936) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB15EC80;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v1[118] = v1[95];
    v5 = v1[103];
    v4 = v1[102];
    v3 = sub_1AB15EA24;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AB15EA24()
{
  v15 = v0;
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v13 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
  v3._countAndFlagsBits = 0x2064656873756C66;
  v3._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  *(v0 + 656) = MEMORY[0x1E69E6530];
  *(v0 + 632) = v1;
  sub_1AB014A58(v0 + 632, v0 + 664, &unk_1EB437E60);
  *(v0 + 528) = 0u;
  *(v0 + 544) = 0u;
  sub_1AB017CC4(v0 + 664, v0 + 528, &unk_1EB437E60);
  *(v0 + 560) = 0;
  v4 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1AB0168A8((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[40 * v6];
  v8 = *(v0 + 528);
  v9 = *(v0 + 544);
  v7[64] = *(v0 + 560);
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  sub_1AB014AC0(v0 + 632, &unk_1EB437E60);
  v10._object = 0x80000001AB4FF870;
  v10._countAndFlagsBits = 0xD000000000000013;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  *(v2 + 32) = v4;
  v14 = 3;
  OSLogger.log(contentsOf:withLevel:)(v2, &v14);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 448);
  **(v0 + 776) = *(v0 + 896);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1AB15EC80()
{

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  return MEMORY[0x1EEE6DFA0](sub_1AB15ECE8, v2, v1);
}

uint64_t sub_1AB15ECE8()
{
  v19 = v0;
  v1 = (v0 + 488);
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v17 = sub_1AB0168A8(0, 44, 0, MEMORY[0x1E69E7CC0]);
  v3._object = 0x80000001AB4FF840;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v4 = *(v0 + 696);
  v5 = *(v0 + 704);
  *(v0 + 592) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 568));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1AB014A58(v0 + 568, v0 + 600, &unk_1EB437E60);
  *v1 = 0u;
  *(v0 + 504) = 0u;
  sub_1AB017CC4(v0 + 600, v0 + 488, &unk_1EB437E60);
  *(v0 + 520) = 0;
  v7 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v17 + 2) + 1, 1, v17);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 936);
  *(v7 + 2) = v9 + 1;
  v11 = &v7[40 * v9];
  v12 = *v1;
  v13 = *(v0 + 504);
  v11[64] = *(v0 + 520);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  sub_1AB014AC0(v0 + 568, &unk_1EB437E60);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v2 + 32) = v7;
  v18 = 0;
  OSLogger.log(contentsOf:withLevel:)(v2, &v18);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 448);
  **(v0 + 776) = *(v0 + 896);
  v15 = *(v0 + 8);

  return v15();
}

void sub_1AB15EF94(void *a1)
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v20 = sub_1AB0168A8(0, 44, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001AB4FF810;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v19[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v17, v18);
  sub_1AB014A58(v19, v13, &unk_1EB437E60);
  v14 = 0u;
  v15 = 0u;
  sub_1AB017CC4(v13, &v14, &unk_1EB437E60);
  v16 = 0;
  v6 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AB0168A8(0, *(v6 + 2) + 1, 1, v6);
    v20 = v6;
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v14;
  v11 = v15;
  v9[64] = v16;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v20 = v6;
  sub_1AB014AC0(v19, &unk_1EB437E60);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v20;
  *&v14 = v2;
  LOBYTE(v19[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v3, v19);

  sub_1AB2A17A8(a1);
}

void sub_1AB15F1F0()
{
  if (qword_1ED4D0CE0 != -1)
  {
    swift_once();
  }

  dispatch_resume(qword_1ED4D0CE8);

  sub_1AB0CF1DC();
}

uint64_t MetricsPipeline.process(_:using:)(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *(v4 + 176) = a1;
  *(v4 + 184) = v3;
  v5 = *a2;
  *(v4 + 153) = *(a2 + 16);
  v6 = *(a2 + 24);
  *(v4 + 192) = v5;
  *(v4 + 208) = v6;
  v7 = *a3;
  *(v4 + 224) = *(a2 + 5);
  *(v4 + 232) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1AB15F290, 0, 0);
}

uint64_t sub_1AB15F290()
{
  v11 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 153);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = v3;
  v8 = v4;
  v9 = v2;
  v10 = v1;
  *(v0 + 240) = MetricsPipeline.process(_:using:)(&v6, &v10);

  return MEMORY[0x1EEE6DFA0](sub_1AB15F324, 0, 0);
}

uint64_t sub_1AB15F324()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB15F3F0;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB0800FC(v2);
  sub_1AB014AC0(v2, &unk_1EB437970);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB15F3F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB15F54C, 0, 0);
  }

  else
  {
    v4 = *(v1 + 176);

    *v4 = *(v1 + 160);
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1AB15F54C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MetricsPipeline.aggregator.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t sub_1AB15F640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_1AB4620A4();
  sub_1AB460684();
  result = sub_1AB462104();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a1 && v12[1] == a2)
      {
        break;
      }

      result = sub_1AB461DA4();
      if (result)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v19 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB244D3C();
      v15 = v19;
    }

    v16 = (*(v15 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a3 = v18;
    a3[1] = v17;
    result = sub_1AB15FB28(v10);
    *v3 = v19;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1AB15F778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1AB0204A8(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  v31 = a1;
  v10 = sub_1AB460444();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1AB0204A8(&qword_1ED4D1AE8, MEMORY[0x1E6968FB0]);
      v19 = sub_1AB460504();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB245198();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1AB15FCEC(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

unint64_t sub_1AB15FA20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](a1);
  result = sub_1AB462104();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a1)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB245560();
      v11 = v12;
    }

    *a2 = *(*(v11 + 48) + 8 * v8);
    result = sub_1AB15FFF4(v8);
    *v2 = v12;
  }

  else
  {
LABEL_5:
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1AB15FB28(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AB461504();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1AB4620A4();

        sub_1AB460684();
        v10 = sub_1AB462104();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1AB15FCEC(int64_t a1)
{
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1AB461504();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1AB0204A8(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
        v24 = sub_1AB460444();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_1AB15FFF4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AB461504();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1AB4620A4();
        MEMORY[0x1AC59D3F0](v10);
        v11 = sub_1AB462104() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1AB16019C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AB461504();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1AB4620A4();
        if (v10)
        {
          MEMORY[0x1AC59D3F0](0);
        }

        else
        {
          v10 = 1;
        }

        MEMORY[0x1AC59D3F0](v10);
        v11 = sub_1AB462104() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v11)
        {
LABEL_14:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1AB1603E0()
{
  result = qword_1EB434CD0[0];
  if (!qword_1EB434CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB434CD0);
  }

  return result;
}

unint64_t sub_1AB160438()
{
  result = qword_1EB436B60;
  if (!qword_1EB436B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436B60);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1AB1604D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1AB160520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1AB1605C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1AB16060C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB1606E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1AB1608C4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
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
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1AB160B80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB160BF0()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t JSONBridgingType.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB160D48()
{
  result = sub_1AB460514();
  qword_1EB436B88 = result;
  return result;
}

uint64_t sub_1AB160D80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(1701869940, 0xE400000000000000, v27);
  sub_1AB014A58(v27, v24, &qword_1EB436BA0);
  v6 = v25;
  if (v25)
  {
    v7 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    v8 = (*(v7 + 24))(v6, v7);
    v10 = v9;
    sub_1AB066D84(v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    if (v10)
    {
      v11 = v8 == 0x63697373616C63 && v10 == 0xE700000000000000;
      if (v11 || (sub_1AB461DA4() & 1) != 0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BD0);
        v12 = swift_allocObject();
        *(v12 + 24) = 0;
        result = sub_1AB066D84(a1);
        v14 = 0;
        *(v12 + 16) = 0;
        goto LABEL_9;
      }

      if (v8 == 0x746365726964 && v10 == 0xE600000000000000)
      {
      }

      else
      {
        v16 = sub_1AB461DA4();

        if ((v16 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      JSONObject.subscript.getter(0x736C65646F6DLL, 0xE600000000000000, v27);
      sub_1AB014A58(v27, v24, &qword_1EB436BA0);
      v19 = v25;
      if (v25)
      {
        v20 = v26;
        __swift_project_boxed_opaque_existential_1Tm(v24, v25);
        v21 = (*(v20 + 128))(v19, v20);
        sub_1AB066D84(v27);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        if ((v21 & 1) == 0)
        {
          JSONObject.subscript.getter(0x736C65646F6DLL, 0xE600000000000000, v27);
          v22 = sub_1AB37F8B4(v27, v5);
          v23 = sub_1AB1BF06C(v22);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BD0);
          v12 = swift_allocObject();
          *(v12 + 24) = 0;

          sub_1AB066D84(a1);
          *(v12 + 16) = v23;

          v14 = 1;
          goto LABEL_9;
        }
      }

      else
      {

        sub_1AB066D84(v27);
        sub_1AB014AC0(v24, &qword_1EB436BA0);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BD0);
      v12 = swift_allocObject();
      *(v12 + 24) = 0;
      result = sub_1AB066D84(a1);
      *(v12 + 16) = 0;
      v14 = 1;
LABEL_9:
      *a3 = v14;
      *(a3 + 8) = v12;
      return result;
    }

LABEL_16:

    goto LABEL_17;
  }

  sub_1AB066D84(v27);
  sub_1AB014AC0(v24, &qword_1EB436BA0);
LABEL_17:
  sub_1AB163664();
  swift_allocError();
  *v17 = xmmword_1AB4D4F20;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 16) = 0x40000001F1FF5CE8uLL;
  *(v17 + 24) = v18;
  swift_willThrow();
  return sub_1AB066D84(a1);
}

void sub_1AB161130(void *a1@<X0>, char *a2@<X8>)
{
  if (*v2 != 1)
  {
    v49 = 0;
    goto LABEL_72;
  }

  v4 = *(v2 + 8);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));
  if (!v5)
  {
    v49 = 1;
    goto LABEL_72;
  }

  v55 = a2;
  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v56 = v5;
  v52 = v10;
  v53 = v5 + 56;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (2)
  {
    v13 = *(*(v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
    v54 = (v9 - 1) & v9;
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v19 = 0;
    v57 = v13;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v17)
          {
            while (1)
            {
              v20 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              if (v20 >= v18)
              {

                swift_bridgeObjectRelease_n();
                v49 = 1;
                goto LABEL_71;
              }

              v17 = *(v14 + 8 * v20);
              ++v19;
              if (v17)
              {
                v19 = v20;
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_74;
          }

LABEL_20:
          v21 = *(v13 + 56) + 24 * (__clz(__rbit64(v17)) | (v19 << 6));
          v23 = *v21;
          v22 = *(v21 + 8);
          v24 = *(v21 + 16);

          v60 = v23;
          v58 = v22;
          sub_1AB163984(v23, v22, v24);
          v25 = sub_1AB460514();
          v26 = [a1 valueForProperty_];

          if (!v26)
          {
            goto LABEL_75;
          }

          if ([v26 isUndefined])
          {

LABEL_51:
            v41 = v60;
            v42 = v58;
            v43 = v24;
            goto LABEL_55;
          }

          v27 = [v26 isNull];

          if (v27)
          {

            goto LABEL_51;
          }

          v28 = sub_1AB460514();
          v29 = [a1 valueForProperty_];

          if (!v29)
          {
            goto LABEL_76;
          }

          v17 &= v17 - 1;
          if (![v29 isString])
          {
            break;
          }

          if (v24)
          {

            v41 = v60;
            v42 = v58;
            goto LABEL_54;
          }

          if (([v29 isString] & 1) == 0 || (v30 = objc_msgSend(v29, sel_toString)) == 0)
          {
LABEL_48:

            v41 = v60;
            v42 = v58;
            v43 = 0;
            goto LABEL_55;
          }

          v31 = v30;
          v32 = sub_1AB460544();
          v34 = v33;

          if (v32 == v60 && v58 == v34)
          {

            sub_1AB163994(v60, v58, 0);
            v13 = v57;
          }

          else
          {
            v39 = sub_1AB461DA4();

            sub_1AB163994(v60, v58, 0);
            v13 = v57;
            if ((v39 & 1) == 0)
            {
              goto LABEL_56;
            }
          }
        }

        if (([v29 isNumber] & 1) == 0)
        {
          break;
        }

        if (!v24)
        {
          goto LABEL_48;
        }

        v35 = v60;
        if (([v29 isNumber] & 1) == 0 || (v36 = objc_msgSend(v29, sel_toNumber)) == 0)
        {
          sub_1AB163994(v60, v58, 1);

          v41 = v60;
          v42 = v58;
LABEL_54:
          v43 = 1;
LABEL_55:
          sub_1AB163994(v41, v42, v43);
LABEL_56:

          v5 = v56;
          v10 = v52;
          v6 = v53;
          goto LABEL_57;
        }

        v37 = v36;
        ctxa = [v36 isEqualToNumber_];
        sub_1AB163994(v60, v58, 1);

        sub_1AB163994(v60, v58, 1);
        v13 = v57;
        if ((ctxa & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      if ([v29 isArray])
      {

        goto LABEL_51;
      }

      if (![v29 isBoolean])
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_48;
      }

      v38 = v60;
      if ([v29 isBoolean])
      {
        LODWORD(ctx) = [v29 toBool];
      }

      else
      {
        LODWORD(ctx) = 2;
      }

      v40 = [v38 BOOLValue];
      sub_1AB163994(v60, v58, 1);

      sub_1AB163994(v60, v58, 1);
      if (ctx != 2)
      {
        v13 = v57;
        if (((v40 ^ ctx) & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    v5 = v56;
    v10 = v52;
    v6 = v53;
    if (([v29 isNull] & 1) == 0)
    {
      v44 = [v29 context];
      if (!v44)
      {
        goto LABEL_77;
      }

      v45 = v44;
      ctx = [v44 JSGlobalContextRef];

      v46 = [v29 JSValueRef];
      if (JSValueIsObject(ctx, v46))
      {
        v47 = JSValueToObject(ctx, v46, 0);
        if (v47)
        {
          v48 = v47;
          if (!JSObjectIsFunction(ctx, v47))
          {
            JSObjectIsConstructor(ctx, v48);
          }
        }
      }
    }

    sub_1AB163994(v60, v58, v24);

LABEL_57:

    v9 &= v9 - 1;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_7:
  while (2)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    else
    {
      if (v12 < v10)
      {
        v9 = *(v6 + 8 * v12);
        ++v11;
        if (!v9)
        {
          continue;
        }

        v11 = v12;
        goto LABEL_11;
      }

      v49 = 0;
LABEL_71:

      a2 = v55;
LABEL_72:
      *a2 = v49;
    }

    break;
  }
}

void sub_1AB161810(void *a1, uint64_t a2)
{
  v18 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = *(a2 + 56) + 24 * (__clz(__rbit64(v4)) | (v6 << 6));
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);

    sub_1AB163984(v10, v9, v11);
    v12 = sub_1AB460514();
    v13 = [a1 valueForProperty_];

    if (!v13)
    {
      goto LABEL_21;
    }

    if ([v13 isUndefined])
    {

LABEL_18:
      sub_1AB163994(v10, v9, v11);
LABEL_19:

      return;
    }

    v14 = [v13 isNull];

    if (v14)
    {

      goto LABEL_18;
    }

    v15 = sub_1AB460514();
    v16 = [a1 valueForProperty_];

    if (!v16)
    {
      goto LABEL_22;
    }

    v4 &= v4 - 1;
    v17 = sub_1AB1629E8(v16);

    sub_1AB163994(v10, v9, v11);
    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      goto LABEL_19;
    }

    v4 = *(v18 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1AB161A54(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = (a3 + 24);
  if (v4)
  {
    os_unfair_lock_lock(v5);
    sub_1AB163C48((a3 + 16), &v8);
  }

  else
  {
    os_unfair_lock_lock(v5);
    sub_1AB163C64((a3 + 16), &v8);
  }

  os_unfair_lock_unlock((a3 + 24));
  v6 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B98);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v6;
  return result;
}

uint64_t sub_1AB161B04@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = a2;

  v7 = sub_1AB226024(inited, v5);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  *a3 = v7;
  return result;
}

uint64_t sub_1AB161BC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = a2;

  v7 = sub_1AB2208C0(inited, v5);
  swift_setDeallocating();
  result = sub_1AB163C80(inited + 32);
  *a3 = v7;
  return result;
}

uint64_t sub_1AB161C70@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *a1 + 56;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(*(v5 + 48) + ((v13 << 9) | (8 * v14)));

    sub_1AB161810(a2, v15);
    v17 = v16;

    if (v17)
    {
      v18 = 1;
LABEL_13:

      *a3 = v18;
      return result;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v18 = 0;
      goto LABEL_13;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1AB161D88(_BYTE *a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  sub_1AB163D30(&v3[4], &v4);
  os_unfair_lock_unlock(v3 + 6);
  *a1 = v4;
}

uint64_t JSONBridgingConfiguration.init(asPartOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  *&v20 = a1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB045DD8(*(a1 + 16), &v23);
  swift_task_localValuePop();
  v4 = v23;
  if (v23)
  {
    if (qword_1EB435C80 != -1)
    {
      swift_once();
    }

    v5 = [v4 dictionaryForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B90);
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = sub_1AB3E095C;
    v6[4] = 0;
    sub_1AB162498(v6);

    if (*(&v21 + 1) == 1)
    {
      sub_1AB014AC0(&v20, &qword_1EB43BDB0);
      if (qword_1EB432418 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v7 = *(&v24 + 1);
      v8 = v25;
      __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D4720;
      *(&v21 + 1) = MEMORY[0x1E69E6158];
      *&v20 = 0xD000000000000030;
      *(&v20 + 1) = 0x80000001AB4FF9C0;
      *(v10 + 48) = 0u;
      *(v10 + 32) = 0u;
      sub_1AB0169C4(&v20, v10 + 32);
      *(v10 + 64) = 0;
      *(v9 + 32) = v10;
      Logger.info(_:)(v9, v7, v8);

      __swift_destroy_boxed_opaque_existential_1Tm(&v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B98);
      v11 = swift_allocObject();
      *(v11 + 24) = 0;
      *(v11 + 16) = MEMORY[0x1E69E7CD0];

      result = swift_unknownObjectRelease();
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25 = v22;
      *&v20 = a1;

      swift_task_localValuePush();
      sub_1AB0C7EF4(*(a1 + 16), &v20);
      swift_task_localValuePop();
      v13 = v20;
      if (!v20)
      {
        v13 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
      }

      sub_1AB0B9254(&v23, &v20);
      sub_1AB0B9254(&v20, &v19);
      v16[0] = v13;
      sub_1AB160D80(&v19, v16, v17);
      v14 = v17[0];
      v15 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B98);
      v11 = swift_allocObject();
      *(v11 + 24) = 0;
      *(v11 + 16) = MEMORY[0x1E69E7CD0];

      swift_unknownObjectRelease();
      sub_1AB066D84(&v20);
      result = sub_1AB066D84(&v23);
    }

    *a2 = v14;
    a2[1] = v15;
    a2[2] = v11;
  }

  else
  {
    sub_1AB1462E0();
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB1629E8(void *a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if ([a1 isString])
  {
    if ((v5 & 1) == 0)
    {
      if ([a1 isString])
      {
        v6 = [a1 toString];
        if (v6)
        {
          v7 = v6;
          v8 = sub_1AB460544();
          v10 = v9;

          if (v8 == v4 && v3 == v10)
          {

            return 1;
          }

          v12 = sub_1AB461DA4();

          if (v12)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  if ([a1 isNumber])
  {
    if (v5)
    {
      v14 = v4;
      if ([a1 isNumber] && (v15 = objc_msgSend(a1, sel_toNumber)) != 0)
      {
        v16 = v15;
        v17 = [v15 isEqualToNumber_];
        sub_1AB163994(v4, v3, 1);

        result = 1;
        if (v17)
        {
          return result;
        }
      }

      else
      {
        sub_1AB163994(v4, v3, 1);
      }
    }

    return 0;
  }

  if ([a1 isArray])
  {
    return 0;
  }

  if (([a1 isBoolean] & 1) == 0)
  {
    if (([a1 isNull] & 1) == 0)
    {
      JSValue.isJSONObject.getter();
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v18 = v4;
  v19 = [a1 isBoolean] ? objc_msgSend(a1, sel_toBool) : 2;
  v20 = [v18 BOOLValue];
  sub_1AB163994(v4, v3, 1);
  result = 1;
  if (v19 == 2 || ((v20 ^ v19) & 1) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1AB162C14()
{
  v1 = *v0;
  sub_1AB4620A4();
  sub_1AB163324(v3, v1);
  return sub_1AB462104();
}

uint64_t sub_1AB162C64()
{
  v1 = *v0;
  sub_1AB4620A4();
  sub_1AB163324(v3, v1);
  return sub_1AB462104();
}

uint64_t sub_1AB162CA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AB1639A4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t JSONBridgingConfiguration.PropertyDescriptor.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1AB014A58(a1, v15, &qword_1EB436BA0);
  v4 = v16;
  if (v16)
  {
    v5 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    if (v8)
    {
      v9 = 0;
LABEL_8:
      result = sub_1AB066D84(a1);
      *a2 = v6;
      *(a2 + 8) = v8;
      *(a2 + 16) = v9;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v15, &qword_1EB436BA0);
  }

  sub_1AB014A58(a1, v15, &qword_1EB436BA0);
  v10 = v16;
  if (v16)
  {
    v11 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v6 = (*(v11 + 32))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    if (v6)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AB014AC0(v15, &qword_1EB436BA0);
  }

  sub_1AB163664();
  swift_allocError();
  v13 = MEMORY[0x1E69E7CC0];
  *v14 = &type metadata for JSONBridgingConfiguration.PropertyDescriptor;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  swift_willThrow();
  return sub_1AB066D84(a1);
}

uint64_t JSONBridgingConfiguration.PropertyDescriptor.hash(into:)()
{
  if (*(v0 + 16))
  {
    MEMORY[0x1AC59D3F0](1);
    return sub_1AB4612D4();
  }

  else
  {
    MEMORY[0x1AC59D3F0](0);

    return sub_1AB460684();
  }
}

uint64_t JSONBridgingConfiguration.PropertyDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1AB4620A4();
  if (v1)
  {
    MEMORY[0x1AC59D3F0](1);
    sub_1AB4612D4();
  }

  else
  {
    MEMORY[0x1AC59D3F0](0);
    sub_1AB460684();
  }

  return sub_1AB462104();
}

uint64_t sub_1AB162FA8()
{
  v1 = *(v0 + 16);
  sub_1AB4620A4();
  if (v1)
  {
    MEMORY[0x1AC59D3F0](1);
    sub_1AB4612D4();
  }

  else
  {
    MEMORY[0x1AC59D3F0](0);
    sub_1AB460684();
  }

  return sub_1AB462104();
}

uint64_t sub_1AB16302C()
{
  if (*(v0 + 16))
  {
    MEMORY[0x1AC59D3F0](1);
    return sub_1AB4612D4();
  }

  else
  {
    MEMORY[0x1AC59D3F0](0);

    return sub_1AB460684();
  }
}

uint64_t sub_1AB1630B4()
{
  v1 = *(v0 + 16);
  sub_1AB4620A4();
  if (v1)
  {
    MEMORY[0x1AC59D3F0](1);
    sub_1AB4612D4();
  }

  else
  {
    MEMORY[0x1AC59D3F0](0);
    sub_1AB460684();
  }

  return sub_1AB462104();
}

uint64_t JSONBridgingConfiguration.withBridgingType(_:for:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  *a3 = v8;
  a3[1] = v7;
  a3[2] = v9;
  v12 = v6;

  v10 = sub_1AB161A54(&v12, a2, v9);

  a3[2] = v10;
  return result;
}

JetEngine::JSONBridgingType __swiftcall JSONBridgingConfiguration.jsonBridgingType(for:)(JSValue a1)
{
  v4 = v1;
  v5 = *(v2 + 8);
  if (v5)
  {
    v9[0] = *v2 & 1;
    v10 = v5;

    sub_1AB161130(a1.super.isa, &v11);

    v7 = v11;
  }

  else
  {
    v8 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](a1.super.isa);
    os_unfair_lock_lock((v8 + 24));
    sub_1AB1636B8((v8 + 16), v9);
    os_unfair_lock_unlock((v8 + 24));
    v7 = v9[0];
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1AB16329C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  sub_1AB0B9254(a3, v7);

  result = JSONBridgingConfiguration.PropertyDescriptor.init(deserializing:using:)(v7, (a4 + 2));
  if (v4)
  {
  }

  return result;
}

uint64_t sub_1AB163324(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v17 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = *(*(a2 + 48) + 16 * v10 + 8);
    v12 = *(a2 + 56) + 24 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);

    sub_1AB163984(v13, v14, v15);
    if (!v11)
    {
LABEL_14:

      return MEMORY[0x1AC59D3F0](v17);
    }

    sub_1AB460684();

    if (v15)
    {
      MEMORY[0x1AC59D3F0](1);
      sub_1AB4612D4();
    }

    else
    {
      MEMORY[0x1AC59D3F0](0);
      sub_1AB460684();
    }

    v5 &= v5 - 1;
    sub_1AB163994(v13, v14, v15);
    result = sub_1AB462104();
    v17 ^= result;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9JetEngine25JSONBridgingConfigurationV18PropertyDescriptorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_1AB02DE80();
      sub_1AB163984(v6, v5, 1);
      sub_1AB163984(v3, v2, 1);
      v8 = sub_1AB4612C4();
      sub_1AB163994(v3, v2, 1);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      sub_1AB163994(v9, v10, v11);
      return v8 & 1;
    }

LABEL_5:
    sub_1AB163984(*a2, *(a2 + 8), v7);
    sub_1AB163984(v3, v2, v4);
    sub_1AB163994(v3, v2, v4);
    sub_1AB163994(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v13 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v8 = sub_1AB461DA4();
    sub_1AB163984(v6, v5, 0);
    sub_1AB163984(v3, v2, 0);
    sub_1AB163994(v3, v2, 0);
    v9 = v6;
    v10 = v5;
    v11 = 0;
    goto LABEL_11;
  }

  sub_1AB163984(v13, v2, 0);
  sub_1AB163984(v3, v2, 0);
  sub_1AB163994(v3, v2, 0);
  sub_1AB163994(v3, v2, 0);
  return 1;
}

unint64_t sub_1AB163664()
{
  result = qword_1EB4353D8[0];
  if (!qword_1EB4353D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4353D8);
  }

  return result;
}

unint64_t sub_1AB1636D8()
{
  result = qword_1EB436BA8;
  if (!qword_1EB436BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436BA8);
  }

  return result;
}

unint64_t sub_1AB163730()
{
  result = qword_1EB436BB0;
  if (!qword_1EB436BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436BB0);
  }

  return result;
}

uint64_t sub_1AB1637A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1AB1637F0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RemoteFetcher.CachingPolicy(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteFetcher.CachingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AB163930()
{
  result = qword_1EB436BB8;
  if (!qword_1EB436BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436BB8);
  }

  return result;
}

id sub_1AB163984(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1AB163994(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1AB1639A4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  sub_1AB014A58(a1, v15, &qword_1EB436BA0);
  v6 = v16;
  if (!v16)
  {

    sub_1AB014AC0(v15, &qword_1EB436BA0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
LABEL_6:
    sub_1AB014AC0(&v18, &qword_1EB436BC0);
    sub_1AB163664();
    swift_allocError();
    v11 = MEMORY[0x1E69E7CC0];
    *v12 = &type metadata for JSONBridgingConfiguration.ModelDescriptor;
    v12[1] = v11;
    v12[2] = 0;
    v12[3] = 0;
    swift_willThrow();
    sub_1AB066D84(a1);
    return v3;
  }

  v7 = v17;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  (*(v7 + 160))(&v18, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (!*(&v19 + 1))
  {

    goto LABEL_6;
  }

  v21[0] = v18;
  v21[1] = v19;
  v22 = v20;
  v8 = sub_1AB163BD0(v21, &v18);
  MEMORY[0x1EEE9AC00](v8);
  v14[2] = v5;
  v9 = *(&v19 + 1);
  v10 = v20;
  __swift_project_boxed_opaque_existential_1Tm(&v18, *(&v19 + 1));
  v3 = (*(v10 + 48))(sub_1AB163C2C, v14, MEMORY[0x1E69E6158], &type metadata for JSONBridgingConfiguration.PropertyDescriptor, MEMORY[0x1E69E6168], v9, v10);

  sub_1AB066D84(a1);
  sub_1AB07CDB0(v21);
  sub_1AB07CDB0(&v18);
  return v3;
}

unint64_t sub_1AB163CD8()
{
  result = qword_1EB436BD8;
  if (!qword_1EB436BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436BD8);
  }

  return result;
}

uint64_t sub_1AB163E00(uint64_t a1)
{
  swift_getObjectType();
  sub_1AB01522C(a1, v9);
  if (!v10)
  {
    sub_1AB0167A8(v9);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key) == *&v8[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key] && *(v1 + OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key + 8) == *&v8[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key + 8];
  if (!v3 && (sub_1AB461DA4() & 1) == 0)
  {

    goto LABEL_17;
  }

  v4 = *(v1 + OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain + 8);
  v5 = *&v8[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain + 8];
  if (!v4)
  {

    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v5)
  {
    if (*(v1 + OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain) != *&v8[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain] || v4 != v5)
    {
      LOBYTE(v5) = sub_1AB461DA4();
      goto LABEL_15;
    }

LABEL_23:
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

LABEL_15:

  return v5 & 1;
}

uint64_t sub_1AB164030()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB164068()
{

  return swift_deallocClassInstance();
}

double static AutomationSemantics.shelf(id:parentId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  sub_1AB01522C(a1, v18);
  sub_1AB01522C(v18, &v16);
  if (v17)
  {
    sub_1AB014B78(&v16, v15);
    sub_1AB0165C4(v15, v14);
    v7 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v14);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    sub_1AB0167A8(v18);
  }

  else
  {
    sub_1AB0167A8(v18);
    v7 = 0;
    v9 = 0;
  }

  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  sub_1AB01522C(a2, v18);
  sub_1AB01522C(v18, &v16);
  if (v17)
  {
    sub_1AB014B78(&v16, v15);
    sub_1AB0165C4(v15, v14);
    v10 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v14);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    sub_1AB0167A8(v18);
  }

  else
  {
    sub_1AB0167A8(v18);
    v10 = 0;
    v12 = 0;
  }

  *(inited + 64) = 0x6449746E65726170;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v10;
  *(inited + 88) = v12;
  *&v18[0] = &unk_1F1FF3378;
  *&v18[1] = MEMORY[0x1E69E7CC0];
  sub_1AB05ED60(inited);
  result = v18[0];
  *a3 = *v18;
  return result;
}

uint64_t static AutomationSemantics.shelfItem(itemKind:impressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *a3;
  v5 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v11 = a3[7];
    if (*(v11 + 16) && (v12 = sub_1AB014DB4(0x6973736572706D69, 0xEE00657079546E6FLL), (v13 & 1) != 0) && (sub_1AB0165C4(*(v11 + 56) + 32 * v12, v20), (swift_dynamicCast() & 1) != 0))
    {
      a1 = v16;
      v10 = v17;
    }

    else
    {
      v10 = 0xEB000000006D6574;
      a1 = 0x49636972656E6567;
    }
  }

  v14 = MEMORY[0x1E69E6158];
  v20[3] = MEMORY[0x1E69E6158];
  v20[0] = v8;
  v20[1] = v7;
  if (!v5)
  {
    v6 = 0;
    v14 = 0;
    v18 = 0;
  }

  v16 = v6;
  v17 = v5;
  v19 = v14;

  static AutomationSemantics.shelfItem(itemKind:id:parentId:)(a1, v10, v20, &v16, a4);

  sub_1AB0167A8(&v16);
  return sub_1AB0167A8(v20);
}

uint64_t static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = AutomationSemantics.Subcomponent.rawValue.getter();
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)(v6, v7, a1, a2, a3);
}

uint64_t AutomationSemantics.Subcomponent.rawValue.getter()
{
  result = 0x7369747265766461;
  switch(*v0)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x6567646162;
      break;
    case 3:
      result = 2036625250;
      break;
    case 4:
      result = 1702125924;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      result = 0x7265746C6966;
      break;
    case 7:
      result = 0x7265746F6F66;
      break;
    case 8:
      result = 0x676E6964616568;
      break;
    case 9:
      result = 1852793705;
      break;
    case 0xA:
      result = 0x6C6562616CLL;
      break;
    case 0xB:
      result = 0x70756B636F6CLL;
      break;
    case 0xC:
      result = 0x6E6974656B72616DLL;
      break;
    case 0xD:
      result = 0x616964656DLL;
      break;
    case 0xE:
      result = 1701667182;
      break;
    case 0xF:
      result = 0x747542726566666FLL;
      break;
    case 0x10:
      result = 0x62614C726566666FLL;
      break;
    case 0x11:
      result = 0x4C6C616E6964726FLL;
      break;
    case 0x12:
      result = 0x7061726761726170;
      break;
    case 0x13:
      result = 0x656C746974627573;
      break;
    case 0x14:
      result = 0x656E696C676174;
      break;
    case 0x15:
      result = 1954047348;
      break;
    case 0x16:
      result = 0x656C746974;
      break;
    case 0x17:
      result = 0x616D49656C746974;
      break;
    case 0x18:
      result = 0x6F65646976;
      break;
    case 0x19:
      result = 0x6C6C4177656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AutomationSemantics.Subcomponent.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB461F64();

  v4 = 0;
  v5 = 8;
  switch(v2)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v4 = 1;
      goto LABEL_23;
    case 2:
      v4 = 2;
      goto LABEL_23;
    case 3:
      v4 = 3;
      goto LABEL_23;
    case 4:
      v4 = 4;
      goto LABEL_23;
    case 5:
      v4 = 5;
      goto LABEL_23;
    case 6:
      v4 = 6;
      goto LABEL_23;
    case 7:
      v4 = 7;
LABEL_23:
      v5 = v4;
      break;
    case 8:
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    default:
      v5 = 26;
      break;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1AB164838()
{
  v0 = AutomationSemantics.Subcomponent.rawValue.getter();
  v2 = v1;
  if (v0 == AutomationSemantics.Subcomponent.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AB461DA4();
  }

  return v5 & 1;
}

uint64_t sub_1AB1648D4()
{
  sub_1AB4620A4();
  AutomationSemantics.Subcomponent.rawValue.getter();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB16493C()
{
  AutomationSemantics.Subcomponent.rawValue.getter();
  sub_1AB460684();
}

uint64_t sub_1AB1649A0()
{
  sub_1AB4620A4();
  AutomationSemantics.Subcomponent.rawValue.getter();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB164A10@<X0>(uint64_t *a1@<X8>)
{
  result = AutomationSemantics.Subcomponent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AB164A38(uint64_t result)
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

  result = sub_1AB2AFD38(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_1AB164B24(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB2B0250(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AB164C18(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB020904(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AB164D0C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB2B0914(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AB164E04(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB2B0B30(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1AB164EFC(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB2AFF70(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AB165000(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB2B1B10(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1AB1650F8()
{
  result = qword_1EB436BF8;
  if (!qword_1EB436BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436BF8);
  }

  return result;
}

uint64_t _s12SubcomponentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12SubcomponentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t URLJetPackAssetRequest.init(url:sourcePolicy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1AB45F764();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for URLJetPackAssetRequest();
  *(a3 + *(result + 20)) = v5;
  v8 = (a3 + *(result + 24));
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t URLJetPackAssetRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t URLJetPackAssetRequest._sourcePolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for URLJetPackAssetRequest();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t URLJetPackAssetRequest.usageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLJetPackAssetRequest() + 24));

  return v1;
}

uint64_t URLJetPackAssetRequest.usageIDOrDefault.getter()
{
  v1 = (v0 + *(type metadata accessor for URLJetPackAssetRequest() + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  return v2;
}

uint64_t URLJetPackAssetRequest._cacheKey.getter()
{
  sub_1AB45F764();
  sub_1AB02B518(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);

  return sub_1AB461C44();
}

uint64_t URLJetPackAssetRequest.hash(into:)()
{
  sub_1AB45F764();
  sub_1AB02B518(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  sub_1AB460454();
  v1 = type metadata accessor for URLJetPackAssetRequest();
  sub_1AB460684();

  if (!*(v0 + *(v1 + 24) + 8))
  {
    return sub_1AB4620C4();
  }

  sub_1AB4620C4();

  return sub_1AB460684();
}

uint64_t URLJetPackAssetRequest.withSourcePolicy(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1AB45F764();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for URLJetPackAssetRequest();
  v7 = (v2 + *(v6 + 24));
  *(a2 + *(v6 + 20)) = v4;
  v9 = *v7;
  v8 = v7[1];
  v10 = (a2 + *(v6 + 24));
  *v10 = v9;
  v10[1] = v8;
}

uint64_t sub_1AB1656C8()
{
  v1 = 0x50656372756F735FLL;
  if (*v0 != 1)
  {
    v1 = 0x44496567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1AB165728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB166220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB165768(uint64_t a1)
{
  v2 = sub_1AB165EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB1657A4(uint64_t a1)
{
  v2 = sub_1AB165EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLJetPackAssetRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB165EF4();
  sub_1AB462274();
  v10[15] = 0;
  sub_1AB45F764();
  sub_1AB02B518(&unk_1EB4343E8, MEMORY[0x1E6968FB0]);
  sub_1AB461BF4();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for URLJetPackAssetRequest() + 20));
    v10[13] = 1;
    sub_1AB165F48();
    sub_1AB461BF4();
    v10[12] = 2;
    sub_1AB461B44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t URLJetPackAssetRequest.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB45F764();
  sub_1AB02B518(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0]);
  sub_1AB460454();
  v1 = type metadata accessor for URLJetPackAssetRequest();
  sub_1AB460684();

  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_1AB4620C4();
    sub_1AB460684();
  }

  else
  {
    sub_1AB4620C4();
  }

  return sub_1AB462104();
}

uint64_t URLJetPackAssetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1AB45F764();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C08);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v22 - v6;
  v8 = type metadata accessor for URLJetPackAssetRequest();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB165EF4();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v10;
  v12 = v24;
  v11 = v25;
  v31 = 0;
  sub_1AB02B518(&qword_1EB436C10, MEMORY[0x1E6968FB0]);
  v13 = v26;
  sub_1AB461AC4();
  (*(v11 + 32))(v22, v27, v4);
  v29 = 1;
  sub_1AB165F9C();
  sub_1AB461AC4();
  v22[*(v8 + 20)] = v30;
  v28 = 2;
  v14 = sub_1AB461A14();
  v27 = v15;
  v16 = v14;
  (*(v12 + 8))(v7, v13);
  v18 = v22;
  v17 = v23;
  v19 = &v22[*(v8 + 24)];
  v20 = v27;
  *v19 = v16;
  v19[1] = v20;
  sub_1AB165FF0(v18, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1AB166054(v18);
}

unint64_t sub_1AB165EF4()
{
  result = qword_1EB433B88[0];
  if (!qword_1EB433B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB433B88);
  }

  return result;
}

unint64_t sub_1AB165F48()
{
  result = qword_1EB434220;
  if (!qword_1EB434220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434220);
  }

  return result;
}

unint64_t sub_1AB165F9C()
{
  result = qword_1EB436C18;
  if (!qword_1EB436C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436C18);
  }

  return result;
}

uint64_t sub_1AB165FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLJetPackAssetRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB166054(uint64_t a1)
{
  v2 = type metadata accessor for URLJetPackAssetRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB1660B0(uint64_t a1)
{
  result = sub_1AB02B518(&qword_1ED4D04A8, type metadata accessor for URLJetPackAssetRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AB16611C()
{
  result = qword_1EB436C20;
  if (!qword_1EB436C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436C20);
  }

  return result;
}

unint64_t sub_1AB166174()
{
  result = qword_1EB433B78;
  if (!qword_1EB433B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B78);
  }

  return result;
}

unint64_t sub_1AB1661CC()
{
  result = qword_1EB433B80;
  if (!qword_1EB433B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B80);
  }

  return result;
}

uint64_t sub_1AB166220(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656372756F735FLL && a2 == 0xED00007963696C6FLL || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496567617375 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

void static AutomationSemantics.tabContainer()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F1FF3468;
  a1[1] = v1;
}

unint64_t Bag.Stubs.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t Bag.Stubs.withArray(_:forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1AB460934();
  v10[3] = sub_1AB016760(0, &qword_1ED4D0BE0);
  v10[0] = v4;
  *a1 = v3;
  v5 = sub_1AB460544();
  v7 = v6;
  sub_1AB0165C4(v10, v9);

  sub_1AB01AD48(v9, v5, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t Bag.Stubs.withBool(_:forKey:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v11[3] = sub_1AB016760(0, &qword_1ED4D1940);
  v11[0] = v5;
  *a2 = v4;
  v6 = sub_1AB460544();
  v8 = v7;
  sub_1AB0165C4(v11, v10);

  sub_1AB01AD48(v10, v6, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t Bag.Stubs.withDouble(_:forKey:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v4 = *v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v11[3] = sub_1AB016760(0, &qword_1ED4D1940);
  v11[0] = v5;
  *a1 = v4;
  v6 = sub_1AB460544();
  v8 = v7;
  sub_1AB0165C4(v11, v10);

  sub_1AB01AD48(v10, v6, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t Bag.Stubs.withInteger(_:forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v11[3] = sub_1AB016760(0, &qword_1ED4D1940);
  v11[0] = v5;
  *a2 = v4;
  v6 = sub_1AB460544();
  v8 = v7;
  sub_1AB0165C4(v11, v10);

  sub_1AB01AD48(v10, v6, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t Bag.Stubs.withString(_:forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1AB460514();
  v10[3] = sub_1AB016760(0, &qword_1ED4D1040);
  v10[0] = v4;
  *a1 = v3;
  v5 = sub_1AB460544();
  v7 = v6;
  sub_1AB0165C4(v10, v9);

  sub_1AB01AD48(v9, v5, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t Bag.Stubs.withURL(_:forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1AB45F654();
  v10[3] = sub_1AB016760(0, &qword_1EB433468);
  v10[0] = v4;
  *a1 = v3;
  v5 = sub_1AB460544();
  v7 = v6;
  sub_1AB0165C4(v10, v9);

  sub_1AB01AD48(v9, v5, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t Bag.Stubs.withDictionary(_:forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1AB4602D4();
  v10[3] = sub_1AB016760(0, qword_1ED4D1BA0);
  v10[0] = v4;
  *a1 = v3;
  v5 = sub_1AB460544();
  v7 = v6;
  sub_1AB0165C4(v10, v9);

  sub_1AB01AD48(v9, v5, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

void Bag.init(mockProfile:stubs:)(void *a1@<X8>)
{
  v16 = a1;
  v17[3] = *MEMORY[0x1E69E9840];
  v1 = sub_1AB45F9B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E698CB38]) init];

  v6 = sub_1AB4602D4();

  [v5 setData_];

  sub_1AB45F8E4();
  v7 = sub_1AB45F914();
  (*(v2 + 8))(v4, v1);
  [v5 setExpirationDate_];

  v8 = [objc_opt_self() currentProcess];
  [v5 setProcessInfo_];

  v9 = sub_1AB460514();
  [v5 setProfile_];

  v10 = sub_1AB460514();
  [v5 setProfileVersion_];

  v17[0] = 0;
  v11 = [v5 buildWithError_];
  if (v11)
  {
    v12 = v11;
    v13 = v17[0];

    *v16 = v12;
  }

  else
  {
    v14 = v17[0];
    sub_1AB45F594();

    swift_willThrow();
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FFBC0);
    swift_getErrorValue();
    sub_1AB461D64();
    sub_1AB461884();
    __break(1u);
  }
}

id sub_1AB166E0C(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC9JetEngine8ProxyBag_bag];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    sub_1AB460544();
    v6 = sub_1AB460514();
  }

  return v6;
}

id sub_1AB1671C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxyBag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB167244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AB1672B4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AB1679DC(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
  }
}

uint64_t *sub_1AB1672E4(uint64_t *result, uint64_t a2)
{
  v3 = *MEMORY[0x1E698C620];
  if (*MEMORY[0x1E698C620])
  {
    v4 = v2;
    v29 = *result;
    v5 = *(v2 + 32);
    v6 = v5[2];

    v7 = sub_1AB168544(0, v6, v3, v5, v3);

    v8 = *(v7 + 16);
    if (v8)
    {
      v37 = MEMORY[0x1E69E7CC0];
      sub_1AB461754();
      v9 = 32;
      v28 = *(v4 + 48);
      v10 = *(v4 + 64);
      v26 = *(v4 + 40);
      v27 = v10;
      do
      {
        v17 = objc_allocWithZone(MEMORY[0x1E698C970]);

        v18 = sub_1AB460514();
        v19 = sub_1AB460514();
        v20 = [v17 initWithBag:v29 caller:v18 keyProfile:v19];

        [v20 setVersion_];
        if (v10)
        {
          v21 = sub_1AB460514();
        }

        else
        {
          v21 = 0;
        }

        [v20 setPlatform_];

        [v20 setClientInfo_];
        v22 = sub_1AB460934();
        if (v26)
        {
          v11 = [v20 performLookupWithBundleIdentifiers:v22 itemIdentifiers:0];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C30);
          v12 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
          v13 = swift_allocObject();
          *(v13 + 16) = 0;
          *(v12 + 16) = v13;
          *(v12 + 24) = MEMORY[0x1E69E7CC0];
          *(v12 + 32) = 0;
          v35 = sub_1AB1688C4;
          v36 = v12;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1AB058080;
          v34 = &block_descriptor_3;
          v14 = _Block_copy(&aBlock);
          swift_retain_n();

          [v11 addSuccessBlock_];
          _Block_release(v14);
          v35 = sub_1AB1688C8;
          v36 = v12;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1AB058108;
          v15 = &block_descriptor_3_0;
        }

        else
        {
          v11 = [v20 performLookupWithBundleIdentifiers:0 itemIdentifiers:v22];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C30);
          v23 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
          v24 = swift_allocObject();
          *(v24 + 16) = 0;
          *(v23 + 16) = v24;
          *(v23 + 24) = MEMORY[0x1E69E7CC0];
          *(v23 + 32) = 0;
          v35 = sub_1AB168A54;
          v36 = v23;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1AB058080;
          v34 = &block_descriptor_7;
          v25 = _Block_copy(&aBlock);
          swift_retain_n();

          [v11 addSuccessBlock_];
          _Block_release(v25);
          v35 = sub_1AB168A58;
          v36 = v23;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1AB058108;
          v15 = &block_descriptor_11;
        }

        v34 = v15;
        v16 = _Block_copy(&aBlock);

        [v11 addErrorBlock_];

        _Block_release(v16);

        sub_1AB461724();
        sub_1AB461764();
        sub_1AB461774();
        sub_1AB461734();
        v9 += 8;
        --v8;
        v10 = v27;
      }

      while (v8);

      return v37;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1AB167820@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB167B50(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

void sub_1AB1679DC(void *a1)
{
  v2 = [a1 toString];
  if (!v2)
  {
LABEL_14:
    sub_1AB0C3EF0();
    swift_allocError();
    v11 = v10;
    v12 = a1;
    JSError.init(badValue:expected:)(v12, 0xD000000000000017, 0x80000001AB4FFD10, v11);
    swift_willThrow();

    return;
  }

  v3 = v2;
  v4 = sub_1AB460544();
  v6 = v5;

  v7 = v4 == 0x64692D6D616461 && v6 == 0xE700000000000000;
  if (v7 || (sub_1AB461DA4() & 1) != 0)
  {

    return;
  }

  if (v4 != 0x692D656C646E7562 || v6 != 0xE900000000000064)
  {
    v9 = sub_1AB461DA4();

    if (v9)
    {

      return;
    }

    goto LABEL_14;
  }
}

void sub_1AB167B50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AB460514();
  v6 = &unk_1E794B000;
  v7 = [a1 valueForProperty_];

  if (!v7)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (![v7 isString] || (v8 = objc_msgSend(v7, sel_toString)) == 0)
  {

    v22 = sub_1AB460514();
    v23 = [a1 valueForProperty_];

    if (v23)
    {
      sub_1AB0C3EF0();
      swift_allocError();
      JSError.init(badValue:expected:)(v23, 0x676E69727473, 0xE600000000000000, v24);
      swift_willThrow();
LABEL_16:

      return;
    }

    goto LABEL_75;
  }

  v9 = v8;
  v10 = sub_1AB460544();
  v12 = v11;

  v13 = sub_1AB460514();
  v14 = [a1 valueForProperty_];

  if (!v14)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (![v14 isString] || (v15 = objc_msgSend(v14, sel_toString)) == 0)
  {

    v25 = sub_1AB460514();
    v26 = [a1 valueForProperty_];

    if (v26)
    {
      sub_1AB0C3EF0();
      swift_allocError();
      JSError.init(badValue:expected:)(v26, 0x676E69727473, 0xE600000000000000, v27);
      swift_willThrow();
LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_77;
  }

  v84 = v10;
  v85 = a2;
  v16 = v15;
  v83 = sub_1AB460544();
  v18 = v17;

  v19 = sub_1AB460514();
  v20 = [a1 valueForProperty_];

  if (!v20)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v21 = &unk_1E794B000;
  if (![v20 isUndefined])
  {
    v28 = [v20 isNull];

    v102 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      goto LABEL_18;
    }

    v32 = sub_1AB460514();
    v33 = [a1 valueForProperty_];

    if (!v33)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    JSValue.array.getter();
    v35 = v34;

    if (v35 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1AB4618F4())
    {
      v37 = &unk_1E794B000;
      if (!i)
      {

        goto LABEL_10;
      }

      v80 = v18;
      v81 = v12;
      v95[0] = MEMORY[0x1E69E7CC0];
      v102 = i;
      sub_1AB03BD38(0, i & ~(i >> 63), 0);
      if (v102 < 0)
      {
        break;
      }

      v18 = 0;
      v38 = v95[0];
      v86 = v35 & 0xC000000000000001;
      v88 = v35;
      v82 = v35 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v35 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v86)
        {
          v39 = v38;
          v40 = MEMORY[0x1AC59C990](v18, v88);
        }

        else
        {
          if (v18 >= *(v82 + 16))
          {
            goto LABEL_71;
          }

          v39 = v38;
          v40 = *(v88 + 8 * v18 + 32);
        }

        v41 = v40;
        if (![v40 v37[397]] || (v42 = objc_msgSend(v41, sel_toString)) == 0)
        {

          sub_1AB0C3EF0();
          swift_allocError();
          v77 = v76;
          v78 = v41;
          JSError.init(badValue:expected:)(v78, 0x676E69727473, 0xE600000000000000, v77);
          swift_willThrow();

          goto LABEL_16;
        }

        v43 = v42;
        v44 = sub_1AB460544();
        v46 = v45;

        v38 = v39;
        v95[0] = v39;
        v12 = *(v39 + 16);
        v47 = *(v38 + 24);
        if (v12 >= v47 >> 1)
        {
          sub_1AB03BD38((v47 > 1), v12 + 1, 1);
          v38 = v95[0];
        }

        *(v38 + 16) = v12 + 1;
        v48 = v38 + 16 * v12;
        *(v48 + 32) = v44;
        *(v48 + 40) = v46;
        ++v18;
        v6 = &unk_1E794B000;
        v37 = &unk_1E794B000;
        v21 = &unk_1E794B000;
        if (v35 == v102)
        {
          v102 = v38;

          v18 = v80;
          v12 = v81;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }

    __break(1u);
    goto LABEL_74;
  }

LABEL_10:
  v102 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v29 = sub_1AB460514();
  v30 = [a1 v6[394]];

  if (!v30)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if ([v30 v21[395]])
  {

    v87 = 0;
  }

  else
  {
    v31 = [v30 isNull];

    if (v31)
    {
      v87 = 0;
    }

    else
    {
      v49 = sub_1AB460514();
      v50 = [a1 v6[394]];

      if (!v50)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      sub_1AB1679DC(v50);
      if (v2)
      {
LABEL_68:

        goto LABEL_15;
      }

      v87 = v51 & 1;
    }
  }

  v52 = sub_1AB460514();
  v53 = [a1 v6[394]];

  if (!v53)
  {
    goto LABEL_80;
  }

  if ([v53 v21[395]])
  {

    v54 = 1;
    goto LABEL_51;
  }

  v55 = [v53 isNull];

  if (v55)
  {
    v54 = 1;
    goto LABEL_51;
  }

  v56 = sub_1AB460514();
  v57 = [a1 v6[394]];

  if (!v57)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if ([v57 isNumber])
  {
    v58 = [v57 toInt32];

    v54 = v58;
LABEL_51:
    v59 = sub_1AB460514();
    v60 = [a1 valueForProperty_];

    if (v60)
    {
      if ([v60 v21[395]])
      {
        v61 = v18;

LABEL_56:
        v63 = 0;
        v64 = 0;
LABEL_57:
        *&v90 = v84;
        *(&v90 + 1) = v12;
        *&v91 = v83;
        *(&v91 + 1) = v61;
        *&v92 = v102;
        BYTE8(v92) = v87;
        *(&v92 + 9) = v101[0];
        HIDWORD(v92) = *(v101 + 3);
        *&v93 = v54;
        *(&v93 + 1) = v63;
        v94 = v64;
        v95[0] = v84;
        v95[1] = v12;
        v95[2] = v83;
        v95[3] = v61;
        v95[4] = v102;
        v96 = v87;
        *v97 = v101[0];
        *&v97[3] = *(v101 + 3);
        v98 = v54;
        v99 = v63;
        v100 = v64;
        sub_1AB1688CC(&v90, v89);
        sub_1AB168904(v95);
        v65 = v93;
        *(v85 + 32) = v92;
        *(v85 + 48) = v65;
        *(v85 + 64) = v94;
        v66 = v91;
        *v85 = v90;
        *(v85 + 16) = v66;
        return;
      }

      v62 = [v60 isNull];

      if (v62)
      {
        v61 = v18;
        goto LABEL_56;
      }

      v67 = sub_1AB460514();
      v68 = [a1 valueForProperty_];

      if (v68)
      {
        if ([v68 isString])
        {
          v69 = [v68 toString];
          if (v69)
          {
            v61 = v18;
            v70 = v69;
            v63 = sub_1AB460544();
            v64 = v71;

            goto LABEL_57;
          }
        }

        v72 = sub_1AB460514();
        v73 = [a1 valueForProperty_];

        if (v73)
        {
          sub_1AB0C3EF0();
          swift_allocError();
          v75 = 0x676E69727473;
LABEL_67:
          JSError.init(badValue:expected:)(v73, v75, 0xE600000000000000, v74);
          swift_willThrow();
          goto LABEL_68;
        }

        goto LABEL_86;
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    goto LABEL_81;
  }

  v79 = sub_1AB460514();
  v73 = [a1 v6[394]];

  if (v73)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v75 = 0x7265626D756ELL;
    goto LABEL_67;
  }

LABEL_87:
  __break(1u);
}

uint64_t sub_1AB168544(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
  result = sub_1AB17793C(0, v9, 0);
  v37 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_63;
      }

      if (v18 >= v14)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_64;
      }

      if (v8 < 0)
      {
        goto LABEL_65;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v24 = v23 - 32;
            if (v23 < 32)
            {
              v24 = v23 - 17;
            }

            v20[2] = v19;
            v20[3] = 2 * (v24 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1AB17793C((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v22 + 1;
      *(v38 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v37;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_36:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v38;
    }

    while (1)
    {
      v26 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v27 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v28 = a4[2];
      if (v27 >= v28)
      {
        v27 = a4[2];
      }

      v29 = v27 - v17;
      if (v27 < v17)
      {
        goto LABEL_67;
      }

      if (v17 < 0)
      {
        goto LABEL_68;
      }

      if (v28 == v29)
      {

        v30 = a4;
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
        if (v27 != v17)
        {
          if (v29 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
            v30 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v30);
            v35 = v34 - 32;
            if (v34 < 32)
            {
              v35 = v34 - 17;
            }

            v30[2] = v29;
            v30[3] = 2 * (v35 >> 4);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_1AB17793C((v31 > 1), v32 + 1, 1);
        v15 = a5;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= v37;
      if (a3 > 0)
      {
        v33 = v26 >= v37;
      }

      v17 = v26;
      if (v33)
      {
        return v38;
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1AB168934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1AB16897C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AB1689F0()
{
  result = qword_1EB436C38;
  if (!qword_1EB436C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436C38);
  }

  return result;
}

unint64_t LintMetricsEventIntent.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 0x73646C656966;
  *(inited + 40) = 0xE600000000000000;
  v11 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v7 = sub_1AB461F94();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a1, v11}];
  swift_unknownObjectRelease();
  *(inited + 48) = v8;
  v9 = sub_1AB1DA8BC(inited);
  swift_setDeallocating();
  sub_1AB168D18(inited + 32);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C50);
  result = sub_1AB168D80();
  a2[4] = result;
  *a2 = v9;
  return result;
}

JSValue __swiftcall LintMetricsEventIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    v5 = [v2 valueWithObject:sub_1AB461F94() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1AB460514();
      [(objc_class *)isa setValue:v6 forProperty:v7];

      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB168D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB168D80()
{
  result = qword_1EB4323D8;
  if (!qword_1EB4323D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436C50);
    sub_1AB0547A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4323D8);
  }

  return result;
}

void sub_1AB168E20()
{
  v0 = JEGestaltGetSystemVersion();
  v1 = sub_1AB460544();
  v3 = v2;

  qword_1EB46BDB8 = 0x6A2E7972746E6573;
  unk_1EB46BDC0 = 0xEA00000000007465;
  qword_1EB46BDC8 = v1;
  unk_1EB46BDD0 = v3;
}

uint64_t sub_1AB168E9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C68);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB169490();
  sub_1AB462274();
  v14 = 0;
  sub_1AB461BB4();
  if (!v5)
  {
    v13 = 1;
    sub_1AB461BB4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AB169030()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AB169064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB169140(uint64_t a1)
{
  v2 = sub_1AB169490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB16917C(uint64_t a1)
{
  v2 = sub_1AB169490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB1691B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AB1692AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t _s9JetEngine7ShelfIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1AB461DA4();
    }
  }

  return result;
}

uint64_t sub_1AB1692AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB169490();
  sub_1AB462224();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1AB461A84();
    v10 = 1;
    sub_1AB461A84();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_1AB169490()
{
  result = qword_1EB432410;
  if (!qword_1EB432410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432410);
  }

  return result;
}

unint64_t sub_1AB1694F8()
{
  result = qword_1EB436C70;
  if (!qword_1EB436C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436C70);
  }

  return result;
}

unint64_t sub_1AB169550()
{
  result = qword_1EB432400;
  if (!qword_1EB432400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432400);
  }

  return result;
}

unint64_t sub_1AB1695A8()
{
  result = qword_1EB432408;
  if (!qword_1EB432408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432408);
  }

  return result;
}

uint64_t JetPackAsset.Metadata.etag.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JetPackAsset.Metadata.etag.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.lastModified.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JetPackAsset.Metadata.lastModified.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(v1 + 24))
  {
    if (qword_1EB435C90 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB436C78;
    v7 = sub_1AB460514();
    v8 = [v6 dateFromString_];

    if (v8)
    {
      sub_1AB45F984();

      v9 = sub_1AB45F9B4();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_1AB45F9B4();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_1AB167244(v5, a1);
  }

  else
  {
    v10 = sub_1AB45F9B4();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t JetPackAsset.Metadata.revalidatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JetPackAsset.Metadata.revalidatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 JetPackAsset.Metadata.osVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 28));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  return result;
}

__n128 JetPackAsset.Metadata.osVersion.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 28));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t JetPackAsset.Metadata.buildNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAsset.Metadata(0) + 32));

  return v1;
}

uint64_t JetPackAsset.Metadata.buildNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset.Metadata(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.assetVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAsset.Metadata(0) + 36));

  return v1;
}

uint64_t JetPackAsset.Metadata.assetVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset.Metadata(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.serverExpired.setter(char a1)
{
  result = type metadata accessor for JetPackAsset.Metadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t JetPackAsset.Metadata.policy.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t JetPackAsset.Metadata.policy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v10 = v1 + *(result + 44);
  *v10 = v2;
  *(v10 + 8) = v3;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 41) = v8;
  return result;
}

id sub_1AB169E90()
{
  result = sub_1AB169EB0();
  qword_1EB436C78 = result;
  return result;
}

id sub_1AB169EB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436D08);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1AB45FAA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1AB460514();
  [v7 setDateFormat_];

  sub_1AB45F9F4();
  v9 = sub_1AB45FA44();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1AB45FB34();
  v10 = sub_1AB45FB64();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1AB45FB44();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

uint64_t JetPackAsset.Metadata.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  v3 = (v0 + v2[9]);
  if (!v3[1])
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v0[1])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = *v3;
  strcpy(&v58, "assetVersion=");
  HIWORD(v58) = -4864;
  MEMORY[0x1AC59BA20](v4);
  v5 = v58;
  v6 = sub_1AB020904(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB020904((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[16 * v8 + 32] = v5;
  if (v0[1])
  {
LABEL_7:
    v9 = *v0;
    *&v58 = 0x3D67617465;
    *(&v58 + 1) = 0xE500000000000000;
    MEMORY[0x1AC59BA20](v9);
    v10 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AB020904(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_1AB020904((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    *&v6[16 * v12 + 32] = v10;
  }

LABEL_12:
  if (v0[3])
  {
    v13 = v0[2];
    strcpy(&v58, "lastModified=");
    HIWORD(v58) = -4864;
    MEMORY[0x1AC59BA20](v13);
    v14 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AB020904(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_1AB020904((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    *&v6[16 * v16 + 32] = v14;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v18 = sub_1AB45F914();
  v19 = [v17 stringFromDate_];

  v20 = sub_1AB460544();
  v22 = v21;

  sub_1AB4615D4();

  strcpy(&v58, "revalidatedAt=");
  HIBYTE(v58) = -18;
  MEMORY[0x1AC59BA20](v20, v22);

  v23 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AB020904(0, *(v6 + 2) + 1, 1, v6);
  }

  v25 = *(v6 + 2);
  v24 = *(v6 + 3);
  if (v25 >= v24 >> 1)
  {
    v6 = sub_1AB020904((v24 > 1), v25 + 1, 1, v6);
  }

  *(v6 + 2) = v25 + 1;
  *&v6[16 * v25 + 32] = v23;
  v26 = v1 + v2[7];
  if ((v26[24] & 1) == 0)
  {
    v27 = *(v26 + 2);
    v64 = 0x6F6973726556736FLL;
    v65 = 0xEA00000000003D6ELL;
    v58 = *v26;
    v59 = v27;
    v28 = JetPackAsset.OSVersion.description.getter();
    MEMORY[0x1AC59BA20](v28);

    v30 = *(v6 + 2);
    v29 = *(v6 + 3);
    if (v30 >= v29 >> 1)
    {
      v6 = sub_1AB020904((v29 > 1), v30 + 1, 1, v6);
    }

    *(v6 + 2) = v30 + 1;
    v31 = &v6[16 * v30];
    *(v31 + 4) = 0x6F6973726556736FLL;
    *(v31 + 5) = 0xEA00000000003D6ELL;
  }

  v32 = (v1 + v2[8]);
  if (v32[1])
  {
    v33 = *v32;
    strcpy(&v58, "buildNumber=");
    BYTE13(v58) = 0;
    HIWORD(v58) = -5120;
    MEMORY[0x1AC59BA20](v33);
    v34 = v58;
    v36 = *(v6 + 2);
    v35 = *(v6 + 3);
    if (v36 >= v35 >> 1)
    {
      v6 = sub_1AB020904((v35 > 1), v36 + 1, 1, v6);
    }

    *(v6 + 2) = v36 + 1;
    *&v6[16 * v36 + 32] = v34;
  }

  v37 = *(v1 + v2[10]);
  if (v37 != 2)
  {
    sub_1AB4615D4();

    strcpy(&v58, "serverExpired=");
    HIBYTE(v58) = -18;
    if (v37)
    {
      v38 = 1702195828;
    }

    else
    {
      v38 = 0x65736C6166;
    }

    if (v37)
    {
      v39 = 0xE400000000000000;
    }

    else
    {
      v39 = 0xE500000000000000;
    }

    MEMORY[0x1AC59BA20](v38, v39);

    v40 = v58;
    v42 = *(v6 + 2);
    v41 = *(v6 + 3);
    if (v42 >= v41 >> 1)
    {
      v6 = sub_1AB020904((v41 > 1), v42 + 1, 1, v6);
    }

    *(v6 + 2) = v42 + 1;
    *&v6[16 * v42 + 32] = v40;
  }

  v64 = 0x3D7963696C6F70;
  v65 = 0xE700000000000000;
  v43 = v1 + v2[11];
  v44 = *v43;
  v45 = v43[8];
  v46 = *(v43 + 2);
  v47 = v43[24];
  v48 = *(v43 + 4);
  v49 = v43[40];
  LOBYTE(v43) = v43[41];
  *&v58 = v44;
  BYTE8(v58) = v45;
  v59 = v46;
  v60 = v47;
  v61 = v48;
  v62 = v49;
  v63 = v43;
  v50 = JetPackAsset.Policy.description.getter();
  MEMORY[0x1AC59BA20](v50);

  v52 = *(v6 + 2);
  v51 = *(v6 + 3);
  if (v52 >= v51 >> 1)
  {
    v6 = sub_1AB020904((v51 > 1), v52 + 1, 1, v6);
  }

  *(v6 + 2) = v52 + 1;
  v53 = &v6[16 * v52];
  *(v53 + 4) = 0x3D7963696C6F70;
  *(v53 + 5) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v54 = sub_1AB460484();
  v56 = v55;

  MEMORY[0x1AC59BA20](v54, v56);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0x617461646174654DLL;
}

uint64_t sub_1AB16A7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB16CDB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB16A7E4(uint64_t a1)
{
  v2 = sub_1AB05C900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB16A820(uint64_t a1)
{
  v2 = sub_1AB05C900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB05C900();
  sub_1AB462274();
  LOBYTE(v21) = 0;
  sub_1AB461B44();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    sub_1AB461B44();
    v10 = type metadata accessor for JetPackAsset.Metadata(0);
    LOBYTE(v21) = 2;
    sub_1AB45F9B4();
    sub_1AB05DA4C(&qword_1ED4D0B88);
    sub_1AB461BF4();
    v11 = (v3 + *(v10 + 28));
    v12 = *(v11 + 2);
    v13 = *(v11 + 24);
    v21 = *v11;
    v22 = v12;
    v23 = v13;
    v27 = 3;
    sub_1AB16C670();
    sub_1AB461B84();
    LOBYTE(v21) = 4;
    sub_1AB461B44();
    LOBYTE(v21) = 5;
    sub_1AB461B44();
    LOBYTE(v21) = 6;
    sub_1AB461B54();
    v14 = (v3 + *(v10 + 44));
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = v14[2];
    v18 = *(v14 + 24);
    v19 = v14[4];
    v20 = *(v14 + 40);
    LOBYTE(v14) = *(v14 + 41);
    *&v21 = v15;
    BYTE8(v21) = v16;
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = v14;
    v27 = 7;
    sub_1AB16C6C4();
    sub_1AB461BF4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t JetPackAsset.OSVersion.description.getter()
{
  v3 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  v0 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  v1 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v1);

  return v3;
}

uint64_t sub_1AB16ACE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB16D06C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB16AD10(uint64_t a1)
{
  v2 = sub_1AB059494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB16AD4C(uint64_t a1)
{
  v2 = sub_1AB059494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.OSVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB059494();
  sub_1AB462274();
  v13 = 0;
  sub_1AB461BE4();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_1AB461BE4();
  v11 = 2;
  sub_1AB461BE4();
  return (*(v5 + 8))(v7, v4);
}

JetEngine::JetPackAsset::Policy::OSInvalidation_optional __swiftcall JetPackAsset.Policy.OSInvalidation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t JetPackAsset.Policy.OSInvalidation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726F6A616DLL;
  v3 = 0x6863746170;
  v4 = 0x646C697562;
  if (v1 != 3)
  {
    v4 = 1701736302;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F6E696DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB16B07C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB16B148()
{
  sub_1AB460684();
}

uint64_t sub_1AB16B200()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB16B2D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6A616DLL;
  v5 = 0xE500000000000000;
  v6 = 0x6863746170;
  v7 = 0xE500000000000000;
  v8 = 0x646C697562;
  if (v2 != 3)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726F6E696DLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t JetPackAsset.Policy.maxAge.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t JetPackAsset.Policy.nonBlockingRevalidateAge.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t JetPackAsset.Policy.evictAge.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

unint64_t JetPackAsset.Policy.description.getter()
{
  v5 = *(v1 + 2);
  v6 = *(v1 + 24);
  v7 = *(v1 + 4);
  v8 = *(v1 + 40);
  if ((v1[1] & 1) == 0)
  {
    v9 = *v1;
    v24 = 0x3D65674178616DLL;
    v25 = 0xE700000000000000;
    if ((~v9 & 0x7FF0000000000000) != 0)
    {
      v10 = *&v9;
      v9 = 0xC3E0000000000001;
      if (v10 > -9.22337204e18)
      {
        v9 = 0x43E0000000000000;
        if (v10 >= 9.22337204e18)
        {
          goto LABEL_28;
        }

        v11 = sub_1AB461C44();
        MEMORY[0x1AC59BA20](v11);

        v2 = v24;
        v3 = v25;
        v0 = sub_1AB020904(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v4 = *(v0 + 2);
        v9 = *(v0 + 3);
        v1 = (v4 + 1);
        if (v4 >= v9 >> 1)
        {
          goto LABEL_31;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v0 = MEMORY[0x1E69E7CC0];
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  while ((v8 & 1) == 0)
  {
    while (1)
    {
      v24 = 0x6567417463697665;
      v25 = 0xE90000000000003DLL;
      v9 = 0x7FF0000000000000;
      if ((~*&v7 & 0x7FF0000000000000) == 0)
      {
        break;
      }

      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          __break(1u);
        }

        else
        {
          v16 = sub_1AB461C44();
          MEMORY[0x1AC59BA20](v16);

          v5 = *&v24;
          v7 = *&v25;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_21:
            v18 = *(v0 + 2);
            v17 = *(v0 + 3);
            if (v18 >= v17 >> 1)
            {
              v0 = sub_1AB020904((v17 > 1), v18 + 1, 1, v0);
            }

            *(v0 + 2) = v18 + 1;
            v19 = &v0[16 * v18];
            *(v19 + 4) = v5;
            *(v19 + 5) = v7;
            goto LABEL_24;
          }
        }

        v0 = sub_1AB020904(0, *(v0 + 2) + 1, 1, v0);
        goto LABEL_21;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      v0 = sub_1AB020904(0, *(v0 + 2) + 1, 1, v0);
LABEL_14:
      v2 = *(v0 + 2);
      v14 = *(v0 + 3);
      v1 = (v2 + 1);
      if (v2 >= v14 >> 1)
      {
        v0 = sub_1AB020904((v14 > 1), v2 + 1, 1, v0);
      }

      *(v0 + 2) = v1;
      v15 = &v0[16 * v2];
      *(v15 + 4) = v5;
      *(v15 + 5) = v6;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_31:
      v0 = sub_1AB020904((v9 > 1), v1, 1, v0);
LABEL_9:
      *(v0 + 2) = v1;
      v12 = &v0[16 * v4];
      *(v12 + 4) = v2;
      *(v12 + 5) = v3;
      if (v6)
      {
        break;
      }

LABEL_10:
      v24 = 0;
      v25 = 0xE000000000000000;
      v1 = &v24;
      sub_1AB4615D4();

      v24 = 0xD000000000000019;
      v25 = 0x80000001AB4FFE00;
      v9 = 0x7FF0000000000000;
      if ((~*&v5 & 0x7FF0000000000000) != 0)
      {
        v9 = 0xC3E0000000000001;
        if (v5 > -9.22337204e18)
        {
          if (v5 >= 9.22337204e18)
          {
            __break(1u);
            goto LABEL_33;
          }

          v13 = sub_1AB461C44();
          MEMORY[0x1AC59BA20](v13);

          v5 = *&v24;
          v6 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_14;
        }
      }

      else
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      __break(1u);
    }
  }

LABEL_24:
  v24 = 0x287963696C6F50;
  v25 = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  MEMORY[0x1AC59BA20](v20, v22);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v24;
}