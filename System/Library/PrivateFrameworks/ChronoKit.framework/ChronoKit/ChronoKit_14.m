uint64_t sub_1BF4D0EA8()
{
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF4E7B54();
  __swift_project_value_buffer(v0, qword_1EDCA6AA8);
  v1 = sub_1BF4E7B34();
  v2 = sub_1BF4E8E84();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF389000, v1, v2, "[Locale] Notifying internally...", v3, 2u);
    MEMORY[0x1BFB5A5D0](v3, -1, -1);
  }

  if (qword_1EDC99408 != -1)
  {
    swift_once();
  }

  sub_1BF4E7C14();
}

uint64_t LocaleChangeCoordinator.deinit()
{
  v1 = *(v0 + 16);

  sub_1BF38C9B4(v0 + 32, &qword_1EBDD9C58, &unk_1BF4F7220);
  v2 = *(v0 + 80);

  return v0;
}

uint64_t LocaleChangeCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1BF38C9B4(v0 + 32, &qword_1EBDD9C58, &unk_1BF4F7220);
  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4D10FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C58, &unk_1BF4F7220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Extension.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](60, 0xE100000000000000);
  v9 = sub_1BF4E9894();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x746E656469202D20, 0xEF203A7265696669);
  v10 = (*(a2 + 40))(a1, a2);
  v11 = [v10 description];
  v12 = sub_1BF4E8914();
  v14 = v13;

  MEMORY[0x1BFB58C90](v12, v14);

  MEMORY[0x1BFB58C90](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  v15 = (*(a2 + 56))(a1, a2);
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FABD0);
  v16 = (*(a2 + 152))(a1, a2);
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FE780);
  (*(a2 + 72))(a1, a2);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDC9F0F8;
  v18 = sub_1BF4E7254();
  v19 = [v17 stringFromDate_];

  v20 = sub_1BF4E8914();
  v22 = v21;

  (*(v5 + 8))(v8, v4);
  MEMORY[0x1BFB58C90](v20, v22);

  MEMORY[0x1BFB58C90](0x7265746E49736920, 0xED0000203A6C616ELL);
  v23 = (*(a2 + 80))(a1, a2);
  v24 = (v23 & 1) == 0;
  if (v23)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v24)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  MEMORY[0x1BFB58C90](v25, v26);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v28[0];
}

uint64_t sub_1BF4D155C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  if (v2[4])
  {
    v3 = v2[3];
    v4 = v2[4];
  }

  else
  {
    v5 = *v2;
    v6 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v3 = sub_1BF4E76B4();
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_1BF4D15FC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 68));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v6 = *v2;
    v7 = *MEMORY[0x1E69941B0];
    swift_beginAccess();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    if ((*(*(v8 - 8) + 48))(v6 + v7, 1, v8))
    {
      swift_endAccess();
      v4 = 0x6E776F6E6B6E55;
    }

    else
    {
      v4 = sub_1BF4E76B4();
      swift_endAccess();
    }
  }

  return v4;
}

uint64_t static Extension.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
  LOBYTE(v4) = (*(v4 + 312))(v9, a3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v4 & 1;
}

id AssetCatalogInfo.configurationBackgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AssetCatalogInfo.configurationAccentColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_1BF4D18B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1BF4D190C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_1BF4D1B60(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0) - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  }

  while ((sub_1BF4E88C4() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_1BF4D1C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BF4E9734() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BF4D1D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v4);
    sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0);
    v23 = sub_1BF4E88C4();
    v24 = *v19;
    (*v19)(v8, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4D1F28(uint64_t (*a1)(char **), uint64_t a2, uint64_t a3, void (*a4)(unint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v58 = a5;
  v54 = a4;
  v47 = a1;
  v48 = a2;
  v57 = type metadata accessor for ExtensionMetadata();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = v44 - v15;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v51 = v6;
  v52 = a3;
  v23 = *(a3 + 64);
  v22 = a3 + 64;
  v21 = v23;
  v24 = -1 << *(v22 - 32);
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v21;
  v49 = -1 << *(v22 - 32);
  v27 = (63 - v24) >> 6;
  v55 = (v6 + 48);
  v56 = (v6 + 56);
  while (1)
  {
    while (1)
    {
      if (!v17)
      {
        goto LABEL_8;
      }

      if (v17 >> 62)
      {
        break;
      }

      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 == result)
      {
        goto LABEL_8;
      }

LABEL_22:
      v46 = v19;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v43 = v18;
        v38 = MEMORY[0x1BFB59570](v18, v17, v14);
        v39 = __OFADD__(v43, 1);
        v40 = v43 + 1;
        if (v39)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

        if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v37 = v18;
        v38 = *(v17 + 8 * v18 + 32);
        v39 = __OFADD__(v37, 1);
        v40 = v37 + 1;
        if (v39)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          sub_1BF39A9CC();

          return v61;
        }
      }

      v45 = v40;
      v19 = v38;
      v60 = v38;
      v41 = v50;
      v42 = v47(&v60);
      if (v41)
      {
        goto LABEL_37;
      }

      v50 = 0;
      if (v42)
      {
        sub_1BF4E9374();
        v44[1] = *(v61 + 16);
        sub_1BF4E93B4();
        sub_1BF4E93C4();
        sub_1BF4E9384();
      }

      else
      {
      }

      v18 = v45;
      v19 = v46;
    }

    v46 = v19;
    v36 = v18;
    result = sub_1BF4E9204();
    v18 = v36;
    v19 = v46;
    if (v18 != result)
    {
      goto LABEL_22;
    }

LABEL_8:
    if (!v26)
    {
      break;
    }

    v29 = v20;
LABEL_17:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    sub_1BF38F0DC(*(v52 + 56) + *(v51 + 72) * (v31 | (v29 << 6)), v16);
    v32 = 0;
    v19 = v29;
LABEL_18:
    v33 = v57;
    (*v56)(v16, v32, 1, v57);
    sub_1BF4DD22C(v16, v12);
    if ((*v55)(v12, 1, v33) == 1)
    {
      goto LABEL_34;
    }

    v34 = v53;
    sub_1BF3919A0(v12, v53);
    v54(&v59, v34);
    sub_1BF38F140(v34);
    v35 = v59;

    v18 = 0;
    v17 = v35;
    v20 = v19;
  }

  if (v27 <= (v20 + 1))
  {
    v30 = (v20 + 1);
  }

  else
  {
    v30 = v27;
  }

  v19 = (v30 - 1);
  while (1)
  {
    v29 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v29 >= v27)
    {
      v26 = 0;
      v32 = 1;
      goto LABEL_18;
    }

    v26 = *(v22 + 8 * v29);
    ++v20;
    if (v26)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:

  sub_1BF39A9CC();
}

uint64_t CHSBaseDescriptor.matches(localeData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = [v2 localeToken];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1BF4E71C4();
      v7 = v6;

      sub_1BF3B03C0(v5, v7);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_1BF3D8864(a1, a2);
    v11 = CHSBaseDescriptor.matches(locale:)(a1, a2);
    sub_1BF3DB210(a1, a2);
    return v11 & 1;
  }
}

uint64_t CHSBaseDescriptor.matches(locale:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v3 localeToken];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BF4E71C4();
    v10 = v9;

    if (v10 >> 60 != 15)
    {
      if (a2 >> 60 != 15)
      {
        sub_1BF48055C(a1, a2);
        sub_1BF48055C(v8, v10);
        v11 = sub_1BF408374(v8, v10, a1, a2);
        sub_1BF3DB210(a1, a2);
        sub_1BF3DB210(v8, v10);
        sub_1BF3DB210(v8, v10);
        return v11 & 1;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  if (a2 >> 60 == 15)
  {
    sub_1BF48055C(a1, a2);
    sub_1BF3DB210(v8, v10);
    return 1;
  }

LABEL_8:
  sub_1BF48055C(a1, a2);
  sub_1BF3DB210(v8, v10);
  sub_1BF3DB210(a1, a2);
  return 0;
}

uint64_t WidgetDescriptorCache.__allocating_init(backingStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WidgetDescriptorCache.init(backingStore:)(a1);
  return v2;
}

void *WidgetDescriptorCache.init(backingStore:)(uint64_t a1)
{
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C70, &qword_1BF4F73C0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v1[5] = sub_1BF4E7C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C78, &qword_1BF4F73C8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  v1[8] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C80, &unk_1BF4F73D0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = MEMORY[0x1E69E7CD0];
  v1[9] = v7;
  v1[4] = a1;
  v1[6] = sub_1BF4D2668;
  v1[7] = 0;
  return v1;
}

uint64_t sub_1BF4D2668@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A30, &qword_1BF4F3E50);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BF4EBEF0;
  (*(v5 + 16))(v8 + v7, a1, v4);
  v9 = _sSo8NSLocaleC9ChronoKitE18currentLocaleToken3forSDy0B8Services15TypedIdentifierVyAF0J4TypeO6BundleO9ContainerOGAC0eF10DescriptorVGSayAOG_tFZ_0(v8);
  swift_setDeallocating();
  (*(v5 + 8))(v8 + v7, v4);
  swift_deallocClassInstance();
  sub_1BF4274EC(a1, v9, a2);
}

void *WidgetDescriptorCache.deinit()
{
  sub_1BF4DB608((v0 + 2));
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return v0;
}

uint64_t WidgetDescriptorCache.__deallocating_deinit()
{
  sub_1BF4DB608((v0 + 2));
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t WidgetDescriptorCache.descriptorUpdatePublisher.getter()
{
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C70, &qword_1BF4F73C0);
  sub_1BF38C8B4(&qword_1EDC9D3C8, &qword_1EBDD9C70, &qword_1BF4F73C0);
  return sub_1BF4E7C84();
}

void *WidgetDescriptorCache.allDescriptors.getter()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  v2 = sub_1BF4D9FC4(*(v1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9978, &qword_1BF4F4970);
  v3 = swift_allocObject();
  v4 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v5 = swift_allocObject();
  v3[6] = v4;
  v3[7] = &off_1F3DF42A8;
  v3[2] = v2;
  v3[3] = v5;
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

uint64_t WidgetDescriptorCache.allDescriptors(extensionIdentity:)()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DB630((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1BF4D2A18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ExtensionMetadata();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - v13;
  v15 = *a1;
  if (*(v15 + 16) && (v16 = sub_1BF3916CC(a2), (v17 & 1) != 0))
  {
    sub_1BF38F0DC(*(v15 + 56) + *(v7 + 72) * v16, v14);
    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  if ((*(v7 + 48))(v14, 1, v6))
  {
    result = sub_1BF38C9B4(v14, &qword_1EBDD9318, &qword_1BF4F09A8);
    v19 = 0;
  }

  else
  {
    sub_1BF38F0DC(v14, v10);
    sub_1BF38C9B4(v14, &qword_1EBDD9318, &qword_1BF4F09A8);
    v20 = *&v10[v6[6]];
    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v26 = *&v10[v6[6]];
      }

      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

      v27 = sub_1BF4E9474();

      v20 = v27;
    }

    else
    {
      v21 = *&v10[v6[6]];

      sub_1BF4E9754();
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    }

    v22 = *&v10[v6[7]];
    if (v22 >> 62)
    {
      if (v22 < 0)
      {
        v28 = *&v10[v6[7]];
      }

      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

      v29 = sub_1BF4E9474();

      v22 = v29;
    }

    else
    {
      v23 = *&v10[v6[7]];

      sub_1BF4E9754();
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    }

    v32 = v20;
    sub_1BF44BBA4(v22);
    v24 = v32;
    v25 = *&v10[v6[9]];
    if (v25 >> 62)
    {
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

      v30 = sub_1BF4E9474();

      v25 = v30;
    }

    else
    {

      sub_1BF4E9754();
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    }

    v32 = v24;
    sub_1BF44BBA4(v25);
    v19 = v32;
    result = sub_1BF38F140(v10);
  }

  *a3 = v19;
  return result;
}

uint64_t WidgetDescriptorCache.controlDescriptors(containedBy:)()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DB64C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1BF4D2E48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ExtensionMetadata() + 28));
}

uint64_t sub_1BF4D2E90(id *a1, uint64_t a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = [*a1 extensionIdentity];
  v23 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  sub_1BF38C94C(v22 + v23, v21, &qword_1EBDD9290, &qword_1BF4EE4B0);

  (*(v4 + 16))(v17, v32, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v24 = *(v8 + 56);
  sub_1BF38C94C(v21, v11, &qword_1EBDD9290, &qword_1BF4EE4B0);
  sub_1BF38C94C(v17, &v11[v24], &qword_1EBDD9290, &qword_1BF4EE4B0);
  v25 = *(v4 + 48);
  if (v25(v11, 1, v3) != 1)
  {
    sub_1BF38C94C(v11, v33, &qword_1EBDD9290, &qword_1BF4EE4B0);
    if (v25(&v11[v24], 1, v3) != 1)
    {
      v27 = v31;
      (*(v4 + 32))(v31, &v11[v24], v3);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0);
      v28 = v33;
      v26 = sub_1BF4E88C4();
      v29 = *(v4 + 8);
      v29(v27, v3);
      sub_1BF38C9B4(v17, &qword_1EBDD9290, &qword_1BF4EE4B0);
      sub_1BF38C9B4(v21, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v29(v28, v3);
      sub_1BF38C9B4(v11, &qword_1EBDD9290, &qword_1BF4EE4B0);
      return v26 & 1;
    }

    sub_1BF38C9B4(v17, &qword_1EBDD9290, &qword_1BF4EE4B0);
    sub_1BF38C9B4(v21, &qword_1EBDD9290, &qword_1BF4EE4B0);
    (*(v4 + 8))(v33, v3);
    goto LABEL_6;
  }

  sub_1BF38C9B4(v17, &qword_1EBDD9290, &qword_1BF4EE4B0);
  sub_1BF38C9B4(v21, &qword_1EBDD9290, &qword_1BF4EE4B0);
  if (v25(&v11[v24], 1, v3) != 1)
  {
LABEL_6:
    sub_1BF38C9B4(v11, &qword_1EBDD9288, &unk_1BF4F5A20);
    v26 = 0;
    return v26 & 1;
  }

  sub_1BF38C9B4(v11, &qword_1EBDD9290, &qword_1BF4EE4B0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1BF4D336C(uint64_t (*a1)(void))
{
  v3 = *(v1 + 64);

  os_unfair_lock_lock((v3 + 24));
  v4 = a1(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  return v4;
}

uint64_t sub_1BF4D33D8()
{
  v2 = *(*v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C70, &qword_1BF4F73C0);
  sub_1BF38C8B4(&qword_1EDC9D3C8, &qword_1EBDD9C70, &qword_1BF4F73C0);
  return sub_1BF4E7C84();
}

uint64_t WidgetDescriptorCache.initialize(with:)(char *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v143 = *(v5 - 8);
  v6 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v132 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v132 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v140 = &v132 - v11;
  v12 = type metadata accessor for ExtensionMetadata();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v144 = &v132 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v132 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v132 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v146 = &v132 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v137 = (&v132 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v132 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v145 = &v132 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v132 - v33;
  *(v2 + 3) = a2;
  swift_unknownObjectWeakAssign();
  v134 = v2;
  v35 = sub_1BF4D5248();
  v36 = *(v35 + 16);
  v138 = v13;
  v149 = v36;
  v150 = v35;
  v142 = a1;
  v141 = a2;
  if (v36)
  {
    v37 = v35;
    ObjectType = swift_getObjectType();
    v147 = a2[4];
    v38 = v37 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v139 = *(v13 + 72);
    v151 = MEMORY[0x1E69E7CC0];
    v39 = v36;
    do
    {
      sub_1BF38F0DC(v38, v34);
      (v147)(v156, v34, ObjectType, v141);
      sub_1BF38F140(v34);
      if (v156[3])
      {
        sub_1BF38E60C(v156, &v157);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v151;
        }

        else
        {
          v40 = sub_1BF38E628(0, v151[2] + 1, 1, v151);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_1BF38E628((v41 > 1), v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v151 = v40;
        sub_1BF38E60C(&v157, &v40[5 * v42 + 4]);
      }

      else
      {
        sub_1BF38C9B4(v156, &unk_1EBDD91B0, &unk_1BF4F0720);
      }

      v38 += v139;
      --v39;
    }

    while (v39);
  }

  else
  {
    v151 = MEMORY[0x1E69E7CC0];
  }

  v133 = v12;
  ObjectType = sub_1BF3DAEA0(MEMORY[0x1E69E7CC0]);
  v43 = v151[2];
  if (v43)
  {
    v44 = v151 + 4;
    v147 = (v143 + 16);
    v139 = (v143 + 8);
    v45 = v148;
    v46 = v140;
    while (1)
    {
      sub_1BF38E49C(v44, &v157);
      v49 = *(&v158 + 1);
      v50 = v159;
      __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
      v51 = (*(v50 + 40))(v49, v50);
      sub_1BF4E9024();

      v52 = v46;
      v53 = *v147;
      (*v147)(v45, v52, v5);
      sub_1BF38E49C(&v157, v156);
      v54 = ObjectType;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v54;
      v56 = sub_1BF38C890(v45);
      v58 = *(v54 + 16);
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        break;
      }

      v62 = v57;
      if (*(v54 + 24) >= v61)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = v56;
          sub_1BF4A3A84();
          v56 = v70;
        }
      }

      else
      {
        sub_1BF49F724(v61, isUniquelyReferenced_nonNull_native);
        v56 = sub_1BF38C890(v148);
        if ((v62 & 1) != (v63 & 1))
        {
          result = sub_1BF4E9794();
          __break(1u);
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = v145;
      v64 = v155;
      ObjectType = v155;
      if (v62)
      {
        v47 = (v155[7] + 40 * v56);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        sub_1BF38E60C(v156, v47);
        v45 = v148;
      }

      else
      {
        v155[(v56 >> 6) + 8] |= 1 << v56;
        v65 = v56;
        v45 = v148;
        v53(v64[6] + *(v143 + 72) * v56, v148, v5);
        v66 = *(ObjectType + 56) + 40 * v65;
        v67 = ObjectType;
        sub_1BF38E60C(v156, v66);
        v68 = *(v67 + 16);
        v60 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v60)
        {
          goto LABEL_113;
        }

        *(v67 + 16) = v69;
      }

      v48 = *v139;
      (*v139)(v45, v5);
      v46 = v140;
      v48(v140, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(&v157);
      v44 += 5;
      if (!--v43)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    swift_once();
    goto LABEL_94;
  }

  isUniquelyReferenced_nonNull_native = v145;
LABEL_27:

  if (v149)
  {
    v71 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v44 = v138;
    v72 = ObjectType;
    v53 = v137;
    v73 = v150;
    do
    {
      if (v71 >= v73[2])
      {
        goto LABEL_110;
      }

      v74 = v44[9];
      v151 = ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v148 = v74;
      sub_1BF38F0DC(v151 + v73 + v74 * v71, isUniquelyReferenced_nonNull_native);
      if (v72[2] && (v75 = sub_1BF38C890(isUniquelyReferenced_nonNull_native), v72 = ObjectType, (v76 & 1) != 0))
      {
        sub_1BF38E49C(*(ObjectType + 56) + 40 * v75, &v157);
        sub_1BF38C9B4(&v157, &unk_1EBDD91B0, &unk_1BF4F0720);
        sub_1BF3919A0(isUniquelyReferenced_nonNull_native, v136);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v156[0] = v45;
        if ((v77 & 1) == 0)
        {
          sub_1BF3E1604(0, *(v45 + 2) + 1, 1);
          v72 = ObjectType;
          v45 = v156[0];
        }

        v79 = *(v45 + 2);
        v78 = *(v45 + 3);
        if (v79 >= v78 >> 1)
        {
          sub_1BF3E1604(v78 > 1, v79 + 1, 1);
          v72 = ObjectType;
          v45 = v156[0];
        }

        *(v45 + 2) = v79 + 1;
        sub_1BF3919A0(v136, v151 + v45 + v79 * v148);
        v44 = v138;
        isUniquelyReferenced_nonNull_native = v145;
      }

      else
      {
        v159 = 0;
        v157 = 0u;
        v158 = 0u;
        sub_1BF38F140(isUniquelyReferenced_nonNull_native);
        sub_1BF38C9B4(&v157, &unk_1EBDD91B0, &unk_1BF4F0720);
      }

      ++v71;
      v73 = v150;
    }

    while (v149 != v71);
    v147 = v45;
    isUniquelyReferenced_nonNull_native = 0;
    v44 = (v151 + v150);
    v80 = MEMORY[0x1E69E7CC0];
    v45 = v133;
    v81 = v148;
    do
    {
      if (isUniquelyReferenced_nonNull_native >= v73[2])
      {
        goto LABEL_111;
      }

      sub_1BF38F0DC(v44, v53);
      if (v72[2] && (v82 = sub_1BF38C890(v53), v72 = ObjectType, (v83 & 1) != 0))
      {
        sub_1BF38E49C(*(ObjectType + 56) + 40 * v82, &v157);
        sub_1BF38F140(v53);
        sub_1BF38C9B4(&v157, &unk_1EBDD91B0, &unk_1BF4F0720);
      }

      else
      {
        v159 = 0;
        v157 = 0u;
        v158 = 0u;
        sub_1BF38C9B4(&v157, &unk_1EBDD91B0, &unk_1BF4F0720);
        sub_1BF3919A0(v53, v146);
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v156[0] = v80;
        if ((v84 & 1) == 0)
        {
          sub_1BF3E1604(0, v80[2] + 1, 1);
          v72 = ObjectType;
          v80 = v156[0];
        }

        v86 = v80[2];
        v85 = v80[3];
        if (v86 >= v85 >> 1)
        {
          sub_1BF3E1604(v85 > 1, v86 + 1, 1);
          v72 = ObjectType;
          v80 = v156[0];
        }

        v80[2] = v86 + 1;
        v81 = v148;
        sub_1BF3919A0(v146, v151 + v80 + v86 * v148);
        v53 = v137;
      }

      ++isUniquelyReferenced_nonNull_native;
      v44 = (v44 + v81);
      v73 = v150;
    }

    while (v149 != isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = v147;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
    v80 = MEMORY[0x1E69E7CC0];
    v72 = ObjectType;
    v45 = v133;
  }

  v155 = v80;
  v154 = MEMORY[0x1E69E7CC0];
  v53 = v142;
  swift_unknownObjectRetain();

  v87 = sub_1BF4DB6C4(isUniquelyReferenced_nonNull_native, v53, v141, v72, &v154);
  v145 = 0;

  swift_unknownObjectRelease();

  v88 = sub_1BF4DC064(v87);
  v44 = v88;
  if (v88[2])
  {
    v147 = *(v87 + 16);
    if (v147)
    {
      v89 = 0;
      v90 = MEMORY[0x1E69E7CC0];
      v91 = v138;
      v146 = v87;
      v148 = v88;
      while (1)
      {
        if (v89 >= *(v87 + 16))
        {
          goto LABEL_112;
        }

        v149 = v90;
        v150 = v89;
        v151 = ((*(v91 + 80) + 32) & ~*(v91 + 80));
        v92 = v151 + v87;
        v93 = v91[9];
        sub_1BF38F0DC(&v92[v93 * v89], v23);
        v94 = v44[2];
        if (v94)
        {
          break;
        }

LABEL_82:
        sub_1BF3919A0(v23, v144);
        v90 = v149;
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v153 = v90;
        if ((v107 & 1) == 0)
        {
          sub_1BF3E1604(0, *(v90 + 16) + 1, 1);
          v90 = v153;
        }

        v109 = *(v90 + 16);
        v108 = *(v90 + 24);
        v53 = (v109 + 1);
        if (v109 >= v108 >> 1)
        {
          sub_1BF3E1604(v108 > 1, v109 + 1, 1);
          v90 = v153;
        }

        *(v90 + 16) = v53;
        sub_1BF3919A0(v144, v151 + v90 + v109 * v93);
LABEL_87:
        v89 = v150 + 1;
        v87 = v146;
        v91 = v138;
        v44 = v148;
        if (v150 + 1 == v147)
        {
          goto LABEL_91;
        }
      }

      v53 = (v151 + v148);
      while (1)
      {
        sub_1BF38F0DC(v53, v20);
        sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0);
        sub_1BF4E8B54();
        sub_1BF4E8B54();
        if (v157 == v156[0] && *(&v157 + 1) == v156[1])
        {
        }

        else
        {
          isUniquelyReferenced_nonNull_native = sub_1BF4E9734();

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            break;
          }
        }

        v96 = *(v45 + 5);
        v97 = *&v20[v96];
        v98 = *&v20[v96 + 8];
        v99 = &v23[v96];
        v100 = v97 == *v99 && v98 == *(v99 + 1);
        if (!v100 && (sub_1BF4E9734() & 1) == 0 || (sub_1BF391BD8(*&v20[*(v45 + 6)], *&v23[*(v45 + 6)], &unk_1EDC9D6D8, 0x1E6994388) & 1) == 0 || (sub_1BF391BD8(*&v20[*(v45 + 7)], *&v23[*(v45 + 7)], &qword_1EDC96348, 0x1E6994248) & 1) == 0)
        {
          break;
        }

        v101 = *(v45 + 8);
        v102 = &v20[v101];
        v103 = *&v20[v101 + 8];
        v104 = &v23[v101];
        v105 = *(v104 + 1);
        if (v103)
        {
          if (!v105 || (*v102 != *v104 || v103 != v105) && (sub_1BF4E9734() & 1) == 0)
          {
            break;
          }
        }

        else if (v105)
        {
          break;
        }

        v106 = sub_1BF391BD8(*&v20[*(v45 + 9)], *&v23[*(v45 + 9)], &qword_1EDC96310, 0x1E6994358);
        sub_1BF38F140(v20);
        if (v106)
        {
          sub_1BF38F140(v23);
          v90 = v149;
          goto LABEL_87;
        }

LABEL_81:
        v53 = (v53 + v93);
        if (!--v94)
        {
          goto LABEL_82;
        }
      }

      sub_1BF38F140(v20);
      goto LABEL_81;
    }

    v90 = MEMORY[0x1E69E7CC0];
LABEL_91:

    v87 = v90;
    sub_1BF44BC94(v44);
    v72 = ObjectType;
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = v154;

  v45 = sub_1BF4DC6DC(v87, v72);

  swift_bridgeObjectRelease_n();
  v53 = v134;
  v110 = *(v134 + 8);

  os_unfair_lock_lock((v110 + 24));
  sub_1BF4D6274((v110 + 16), v45);
  os_unfair_lock_unlock((v110 + 24));

  MEMORY[0x1EEE9AC00](v111);
  *(&v132 - 2) = isUniquelyReferenced_nonNull_native;
  sub_1BF4D6630(sub_1BF4DC9B4);
  v44 = v155;
  if (!v155[2])
  {
    goto LABEL_104;
  }

  v20 = v138;
  if (qword_1EDC9D460 != -1)
  {
    goto LABEL_114;
  }

LABEL_94:
  v112 = sub_1BF4E7B54();
  __swift_project_value_buffer(v112, qword_1EDCA6898);
  v113 = sub_1BF4E7B34();
  v114 = sub_1BF4E8E84();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_1BF389000, v113, v114, "Clearing abandoned extensions...", v115, 2u);
    MEMORY[0x1BFB5A5D0](v115, -1, -1);
  }

  v116 = v44[2];
  if (v116)
  {
    v151 = v45;
    ObjectType = isUniquelyReferenced_nonNull_native;
    *&v157 = MEMORY[0x1E69E7CC0];
    sub_1BF3E153C(0, v116, 0);
    v117 = v157;
    v118 = v20[80];
    v150 = v44;
    v119 = v44 + ((v118 + 32) & ~v118);
    v120 = *(v20 + 9);
    v121 = (v143 + 16);
    v122 = v132;
    do
    {
      v123 = v135;
      sub_1BF38F0DC(v119, v135);
      (*v121)(v122, v123, v5);
      sub_1BF38F140(v123);
      *&v157 = v117;
      v125 = *(v117 + 16);
      v124 = *(v117 + 24);
      if (v125 >= v124 >> 1)
      {
        sub_1BF3E153C(v124 > 1, v125 + 1, 1);
        v122 = v132;
        v117 = v157;
      }

      *(v117 + 16) = v125 + 1;
      (*(v143 + 32))(v117 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v125, v122, v5);
      v119 += v120;
      --v116;
    }

    while (v116);

    v53 = v134;
    v45 = v151;
  }

  else
  {
  }

  sub_1BF4D6888();
LABEL_104:

  v126 = *(v45 + 2);
  if (!v126)
  {
LABEL_107:

    v127 = MEMORY[0x1E69E7CC0];
    goto LABEL_108;
  }

  v127 = sub_1BF3BC668(*(v45 + 2), 0);
  v128 = sub_1BF439144(&v157, (v127 + 32), v126, v45);
  sub_1BF39A9CC();
  if (v128 != v126)
  {
    __break(1u);
    goto LABEL_107;
  }

LABEL_108:
  v129 = sub_1BF44B578(&unk_1F3DEDA78);
  sub_1BF4DC9D0(&unk_1F3DEDA98);
  v130 = *(v53 + 5);
  *&v157 = v127;
  *(&v157 + 1) = v129;
  sub_1BF4E7C14();
}

uint64_t WidgetDescriptorCache.populate(for:reason:completion:)(uint64_t result, __int128 *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  if (*(result + 16))
  {
    v28 = *a2;
    v36 = MEMORY[0x1E69E7CC8];
    isa = v4[8].isa;

    os_unfair_lock_lock(isa + 6);

    v7 = sub_1BF4DB854(v6, isa + 2, &v36, v4);

    os_unfair_lock_unlock(isa + 6);

    if (*(v7 + 16))
    {
      if (qword_1EDC9D4B8 != -1)
      {
        swift_once();
      }

      v8 = sub_1BF4E7B54();
      __swift_project_value_buffer(v8, qword_1EDCA6928);

      v9 = sub_1BF4E7B34();
      v10 = sub_1BF4E8E84();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v35 = v12;
        *v11 = 136446210;
        v13 = *(v7 + 16);
        v14 = MEMORY[0x1E69E7CC0];
        if (v13)
        {
          v34 = MEMORY[0x1E69E7CC0];
          sub_1BF4E93A4();
          v15 = v7 + 32;
          do
          {
            sub_1BF38E49C(v15, v31);
            v16 = v32;
            v17 = v33;
            __swift_project_boxed_opaque_existential_1(v31, v32);
            (*(v17 + 40))(v16, v17);
            __swift_destroy_boxed_opaque_existential_1Tm(v31);
            sub_1BF4E9374();
            v18 = *(v34 + 16);
            sub_1BF4E93B4();
            sub_1BF4E93C4();
            sub_1BF4E9384();
            v15 += 40;
            --v13;
          }

          while (v13);
          v14 = v34;
        }

        v19 = sub_1BF4E9034();
        v20 = MEMORY[0x1BFB58E10](v14, v19);
        v22 = v21;

        v23 = sub_1BF38D65C(v20, v22, &v35);

        *(v11 + 4) = v23;
        _os_log_impl(&dword_1BF389000, v9, v10, "Refetching descriptors due to mismatching versions or locales: %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1BFB5A5D0](v12, -1, -1);
        MEMORY[0x1BFB5A5D0](v11, -1, -1);
      }

      *v31 = v28;
      sub_1BF4D8544(v7, v31, a3, a4);
    }

    else
    {

      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v24 = sub_1BF4E7B54();
      __swift_project_value_buffer(v24, qword_1EDCA6898);
      v25 = sub_1BF4E7B34();
      v26 = sub_1BF4E8E84();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1BF389000, v25, v26, "No updates required - descriptors are up to date", v27, 2u);
        MEMORY[0x1BFB5A5D0](v27, -1, -1);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall WidgetDescriptorCache.refetch(for:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v2 = sub_1BF4E7B54();
    __swift_project_value_buffer(v2, qword_1EDCA6898);

    v3 = sub_1BF4E7B34();
    v4 = sub_1BF4E8E84();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v11 = v6;
      *v5 = 136446210;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v8 = MEMORY[0x1BFB58E10](a1._rawValue, v7);
      v10 = sub_1BF38D65C(v8, v9, &v11);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1BF389000, v3, v4, "Refetching extensions: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1BFB5A5D0](v6, -1, -1);
      MEMORY[0x1BFB5A5D0](v5, -1, -1);
    }

    v11 = xmmword_1BF4F73A0;
    sub_1BF4D8544(a1._rawValue, &v11, 0, 0);
  }
}

uint64_t sub_1BF4D4B34()
{
  v1 = *(*v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DD2B4((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t WidgetDescriptorCache.hasAnyVersionCached(extension:)()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DCA24((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

Swift::Void __swiftcall WidgetDescriptorCache.clear(for:)(Swift::OpaquePointer a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v22 - v5;
  v7 = *(a1._rawValue + 2);
  if (v7)
  {
    v22 = v1;
    v8 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
    v9 = a1._rawValue + 32;
    do
    {
      sub_1BF38E49C(v9, v24);
      v10 = v25;
      v11 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v11 + 40))(v10, v11);
      MEMORY[0x1BFB58DD0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();
      v13 = v26;
      v12 = v27;
      v14 = v25;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v15 = (*(v13 + 40))(v14, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      sub_1BF4E9024();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1BF432D54(0, v8[2] + 1, 1, v8);
      }

      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        v8 = sub_1BF432D54(v16 > 1, v17 + 1, 1, v8);
      }

      v8[2] = v17 + 1;
      (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v6, v23);
      v9 += 40;
      --v7;
    }

    while (v7);
    v19 = v22;
    sub_1BF4D6888();

    v20 = sub_1BF44B578(&unk_1F3DEDAA8);
    sub_1BF4DC9D0(&unk_1F3DEDAC8);
    v21 = *(v19 + 40);
    v24[0] = v12;
    v24[1] = v20;
    sub_1BF4E7C14();
  }
}

uint64_t sub_1BF4D4F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(*v3 + 64);

  os_unfair_lock_lock((v5 + 24));
  v6 = a3(*(v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  return v6;
}

uint64_t sub_1BF4D4FF4()
{
  v1 = *(*v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DD29C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

unint64_t DescriptorMatchError.failureReason.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v11 = 0;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0x6F69736E65747845, 0xEB0000000028206ELL);
    v2 = [v1 description];
    v3 = sub_1BF4E8914();
    v5 = v4;

    MEMORY[0x1BFB58C90](v3, v5);

    MEMORY[0x1BFB58C90](0xD00000000000002ELL, 0x80000001BF4FF210);
  }

  else
  {
    sub_1BF4E92E4();

    v11 = 0xD00000000000002DLL;
    v6 = [v1 description];
    v7 = sub_1BF4E8914();
    v9 = v8;

    MEMORY[0x1BFB58C90](v7, v9);
  }

  return v11;
}

unint64_t DescriptorMatchError.recoverySuggestion.getter()
{
  if (*(v0 + 8))
  {
    result = 0xD000000000000060;
  }

  else
  {
    result = 0xD000000000000049;
  }

  *(v0 + 8);
  return result;
}

unint64_t sub_1BF4D520C()
{
  if (*(v0 + 8))
  {
    result = 0xD000000000000060;
  }

  else
  {
    result = 0xD000000000000049;
  }

  *(v0 + 8);
  return result;
}

uint64_t sub_1BF4D5248()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 24);

  v3 = sub_1BF48EE44();

  return v3;
}

uint64_t sub_1BF4D53D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void **a5@<X4>, uint64_t a6@<X8>)
{
  v126 = a5;
  v137 = a2;
  v138 = a3;
  v128 = a6;
  v8 = type metadata accessor for ExtensionMetadata();
  v125 = *(v8 - 8);
  v9 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v119 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v119 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v119 - v18;
  v143 = MEMORY[0x1E69E7CC0];
  v131 = v19;
  v20 = v19[6];
  v139 = a1;
  v21 = *(a1 + v20);
  if (v21 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BF4E9204())
  {
    v23 = MEMORY[0x1E69E7CC0];
    v129 = v13;
    v130 = v16;
    if (i)
    {
      ObjectType = swift_getObjectType();
      v25 = 0;
      v26 = 0;
      v134 = v138[1];
      v135 = ObjectType;
      v136 = v21 & 0xC000000000000001;
      v133 = v21 & 0xFFFFFFFFFFFFFF8;
      *&v27 = 136446210;
      v123 = v27;
LABEL_5:
      LODWORD(v132) = v25;
      v16 = v26;
      while (1)
      {
        if (v136)
        {
          v28 = MEMORY[0x1BFB59570](v16, v21);
        }

        else
        {
          if (v16 >= *(v133 + 16))
          {
            goto LABEL_93;
          }

          v28 = *(v21 + 8 * v16 + 32);
        }

        v29 = v28;
        v26 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (!a4[2])
        {
          goto LABEL_85;
        }

        v13 = a4;
        v30 = sub_1BF38C890(v139);
        if ((v31 & 1) == 0)
        {
          goto LABEL_86;
        }

        sub_1BF38E49C(a4[7] + 40 * v30, v142);
        v32 = v134(v29, v142, v135, v138);
        __swift_destroy_boxed_opaque_existential_1Tm(v142);
        if (v32)
        {
          if (qword_1EDC9D460 != -1)
          {
            swift_once();
          }

          v35 = sub_1BF4E7B54();
          __swift_project_value_buffer(v35, qword_1EDCA6898);
          v36 = v127;
          sub_1BF38F0DC(v139, v127);
          v37 = sub_1BF4E7B34();
          LODWORD(v132) = sub_1BF4E8E84();
          if (os_log_type_enabled(v37, v132))
          {
            v38 = swift_slowAlloc();
            v122 = v38;
            v121 = swift_slowAlloc();
            v142[0] = v121;
            *v38 = v123;
            v120 = v37;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
            sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0);
            v39 = v127;
            v119 = sub_1BF4E96A4();
            v41 = v40;
            sub_1BF38F140(v39);
            v42 = sub_1BF38D65C(v119, v41, v142);

            v43 = v122;
            *(v122 + 4) = v42;
            v44 = v120;
            _os_log_impl(&dword_1BF389000, v120, v132, "Initialization: Migrated cached descriptors for extension %{public}s", v43, 0xCu);
            v45 = v121;
            __swift_destroy_boxed_opaque_existential_1Tm(v121);
            MEMORY[0x1BFB5A5D0](v45, -1, -1);
            MEMORY[0x1BFB5A5D0](v122, -1, -1);
          }

          else
          {

            sub_1BF38F140(v36);
          }

          v46 = v32;
          v13 = &v143;
          MEMORY[0x1BFB58DD0]();
          if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BF4E8BE4();
          }

          sub_1BF4E8C24();

          v25 = 1;
          if (v26 == i)
          {
            LODWORD(v132) = 1;
LABEL_28:
            v127 = v143;
            v23 = MEMORY[0x1E69E7CC0];
            goto LABEL_29;
          }

          goto LABEL_5;
        }

        v33 = v29;
        v13 = &v143;
        MEMORY[0x1BFB58DD0]();
        if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BF4E8BE4();
        }

        sub_1BF4E8C24();

        ++v16;
        if (v26 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    LODWORD(v132) = 0;
    v127 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v141 = v23;
    v48 = *(v139 + v131[7]);
    if (v48 >> 62)
    {
      if (v48 < 0)
      {
        v98 = *(v139 + v131[7]);
      }

      v49 = sub_1BF4E9204();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = MEMORY[0x1E69E7CC0];
    if (!v49)
    {
      break;
    }

    v51 = swift_getObjectType();
    v21 = 0;
    v134 = v138[2];
    v135 = v51;
    v136 = v48 & 0xC000000000000001;
    v133 = v48 & 0xFFFFFFFFFFFFFF8;
    *&v52 = 136446210;
    v123 = v52;
LABEL_33:
    v16 = v21;
    while (1)
    {
      if (v136)
      {
        v53 = MEMORY[0x1BFB59570](v16, v48);
      }

      else
      {
        if (v16 >= *(v133 + 16))
        {
          goto LABEL_94;
        }

        v53 = *(v48 + 8 * v16 + 32);
      }

      v54 = v53;
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (!a4[2])
      {
        goto LABEL_88;
      }

      v13 = a4;
      v55 = sub_1BF38C890(v139);
      if ((v56 & 1) == 0)
      {
        goto LABEL_89;
      }

      sub_1BF38E49C(a4[7] + 40 * v55, v142);
      v57 = v134(v54, v142, v135, v138);
      __swift_destroy_boxed_opaque_existential_1Tm(v142);
      if (v57)
      {
        if (qword_1EDC9D460 != -1)
        {
          swift_once();
        }

        v60 = sub_1BF4E7B54();
        __swift_project_value_buffer(v60, qword_1EDCA6898);
        sub_1BF38F0DC(v139, v130);
        v61 = sub_1BF4E7B34();
        v62 = sub_1BF4E8E84();
        if (os_log_type_enabled(v61, v62))
        {
          v132 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v142[0] = v122;
          *v132 = v123;
          v121 = v61;
          LODWORD(v120) = v62;
          v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
          sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0);
          v63 = v130;
          v119 = sub_1BF4E96A4();
          v65 = v64;
          sub_1BF38F140(v63);
          v66 = sub_1BF38D65C(v119, v65, v142);

          v67 = v132;
          *(v132 + 4) = v66;
          v68 = v121;
          _os_log_impl(&dword_1BF389000, v121, v120, "Initialization: Migrated cached descriptors for extension %{public}s", v67, 0xCu);
          v69 = v122;
          __swift_destroy_boxed_opaque_existential_1Tm(v122);
          MEMORY[0x1BFB5A5D0](v69, -1, -1);
          MEMORY[0x1BFB5A5D0](v132, -1, -1);
        }

        else
        {

          sub_1BF38F140(v130);
        }

        v70 = v57;
        v13 = &v141;
        MEMORY[0x1BFB58DD0]();
        if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v71 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BF4E8BE4();
        }

        sub_1BF4E8C24();

        LODWORD(v132) = 1;
        if (v21 == v49)
        {
          LODWORD(v132) = 1;
LABEL_56:
          v72 = v141;
          v50 = MEMORY[0x1E69E7CC0];
          goto LABEL_57;
        }

        goto LABEL_33;
      }

      v58 = v54;
      v13 = &v141;
      MEMORY[0x1BFB58DD0]();
      if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v59 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();

      ++v16;
      if (v21 == v49)
      {
        goto LABEL_56;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    ;
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v140 = v50;
  v73 = *(v139 + v131[9]);
  if (!(v73 >> 62))
  {
    v21 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = &loc_1BF4EA000;
    if (!v21)
    {
      goto LABEL_103;
    }

    goto LABEL_59;
  }

  if (v73 < 0)
  {
    v99 = *(v139 + v131[9]);
  }

  v21 = sub_1BF4E9204();
  v74 = &loc_1BF4EA000;
  if (v21)
  {
LABEL_59:
    v130 = v72;
    v75 = swift_getObjectType();
    v76 = 0;
    v134 = v138[3];
    v135 = v75;
    v136 = v73 & 0xC000000000000001;
    v133 = v73 & 0xFFFFFFFFFFFFFF8;
    *&v77 = v74[314];
    v123 = v77;
LABEL_60:
    v16 = v76;
    while (1)
    {
      if (v136)
      {
        v78 = MEMORY[0x1BFB59570](v16, v73);
      }

      else
      {
        if (v16 >= *(v133 + 16))
        {
          goto LABEL_95;
        }

        v78 = *(v73 + 8 * v16 + 32);
      }

      v79 = v78;
      v76 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_90;
      }

      if (!a4[2])
      {
        goto LABEL_91;
      }

      v13 = a4;
      v80 = sub_1BF38C890(v139);
      if ((v81 & 1) == 0)
      {
        goto LABEL_92;
      }

      sub_1BF38E49C(a4[7] + 40 * v80, v142);
      v82 = v134(v79, v142, v135, v138);
      __swift_destroy_boxed_opaque_existential_1Tm(v142);
      if (v82)
      {
        if (qword_1EDC9D460 != -1)
        {
          swift_once();
        }

        v85 = sub_1BF4E7B54();
        __swift_project_value_buffer(v85, qword_1EDCA6898);
        sub_1BF38F0DC(v139, v129);
        v86 = sub_1BF4E7B34();
        v87 = sub_1BF4E8E84();
        if (os_log_type_enabled(v86, v87))
        {
          v132 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v142[0] = v122;
          *v132 = v123;
          v121 = v86;
          LODWORD(v120) = v87;
          v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
          sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0);
          v88 = v129;
          v119 = sub_1BF4E96A4();
          v90 = v89;
          sub_1BF38F140(v88);
          v91 = sub_1BF38D65C(v119, v90, v142);

          v92 = v132;
          *(v132 + 4) = v91;
          v93 = v121;
          _os_log_impl(&dword_1BF389000, v121, v120, "Initialization: Migrated cached descriptors for extension %{public}s", v92, 0xCu);
          v94 = v122;
          __swift_destroy_boxed_opaque_existential_1Tm(v122);
          MEMORY[0x1BFB5A5D0](v94, -1, -1);
          MEMORY[0x1BFB5A5D0](v132, -1, -1);
        }

        else
        {

          sub_1BF38F140(v129);
        }

        v95 = v82;
        v13 = &v140;
        MEMORY[0x1BFB58DD0]();
        if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v96 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BF4E8BE4();
        }

        sub_1BF4E8C24();

        LODWORD(v132) = 1;
        if (v76 == v21)
        {
          v97 = v140;
          v72 = v130;
          goto LABEL_104;
        }

        goto LABEL_60;
      }

      v83 = v79;
      v13 = &v140;
      MEMORY[0x1BFB58DD0]();
      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v84 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();

      ++v16;
      if (v76 == v21)
      {
        v97 = v140;
        v72 = v130;
        if (v132)
        {
          goto LABEL_104;
        }

        goto LABEL_109;
      }
    }
  }

LABEL_103:
  v97 = MEMORY[0x1E69E7CC0];
  if (v132)
  {
LABEL_104:
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    v101 = v128;
    v102 = v139;
    (*(*(v100 - 8) + 16))(v128, v139, v100);
    v103 = v131;
    v104 = v131[5];
    v105 = *(v102 + v104);
    v106 = *(v102 + v104 + 8);
    v107 = v131[8];
    v108 = *(v102 + v107);
    v109 = *(v102 + v107 + 8);
    v110 = (v101 + v107);
    v111 = (v101 + v104);
    *v111 = v105;
    v111[1] = v106;
    *v110 = v108;
    v110[1] = v109;
    *(v101 + v103[6]) = v127;
    *(v101 + v103[9]) = v97;
    *(v101 + v103[7]) = v72;
    v112 = v124;
    sub_1BF38F0DC(v101, v124);
    v113 = v126;
    v114 = *v126;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v113 = v114;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v114 = sub_1BF432D2C(0, v114[2] + 1, 1, v114);
      *v113 = v114;
    }

    v117 = v114[2];
    v116 = v114[3];
    if (v117 >= v116 >> 1)
    {
      v114 = sub_1BF432D2C(v116 > 1, v117 + 1, 1, v114);
      *v113 = v114;
    }

    v114[2] = v117 + 1;
    return sub_1BF3919A0(v112, v114 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v117);
  }

  else
  {
LABEL_109:

    return sub_1BF38F0DC(v139, v128);
  }
}

uint64_t sub_1BF4D6274(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;
  v5 = qword_1EDC9D4B8;
  swift_bridgeObjectRetain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF4E7B54();
  __swift_project_value_buffer(v6, qword_1EDCA6928);

  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 134349314;
    *(v9 + 4) = *(a2 + 16);

    *(v9 + 12) = 2082;
    sub_1BF4E9034();
    type metadata accessor for ExtensionMetadata();
    sub_1BF392020(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
    v11 = sub_1BF4E87A4();
    v13 = sub_1BF38D65C(v11, v12, &v15);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1BF389000, v7, v8, "Initialization: Descriptors loaded from cache (%{public}ld) %{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  else
  {

    return swift_bridgeObjectRelease_n();
  }
}

void sub_1BF4D6478(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ExtensionMetadata();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (v10 + 56);
    v15 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    do
    {
      sub_1BF38F0DC(v15, v12);
      v17 = *(v19 + 16);
      sub_1BF38F0DC(v12, v7);
      (*v14)(v7, 0, 1, v8);
      sub_1BF49117C(v7, v12);
      sub_1BF38C9B4(v7, &qword_1EBDD9318, &qword_1BF4F09A8);
      sub_1BF38F140(v12);
      if (v2)
      {
        break;
      }

      v15 += v16;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1BF4D6630(uint64_t result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v8[2] = MEMORY[0x1EEE9AC00](result);
    v8[3] = v3;
    v4 = *(v2 + 16);
    type metadata accessor for ChronoMetadataStore.MutableStore();
    swift_allocObject();
    v5 = sub_1BF4A4E98();
    v6 = *(v2 + 136);
    os_unfair_lock_lock(*(v6 + 16));
    v7 = *(v2 + 16);

    sub_1BF3E7904(0xD000000000000015, 0x80000001BF4FF3E0, v7, sub_1BF4DD180, v8, v5);

    os_unfair_lock_unlock(*(v6 + 16));
    sub_1BF48EBD0();
  }

  return result;
}

uint64_t sub_1BF4D6888()
{
  v1 = *(v0 + 72);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF4DCD68(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  sub_1BF4D6630(sub_1BF4DCD84);
  v2 = *(v0 + 64);

  os_unfair_lock_lock((v2 + 24));
  sub_1BF4DCDA0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t WidgetDescriptorCacheUpdate.init(extensionIdentities:reasons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1BF4D696C(uint64_t a1, uint64_t *a2, uint64_t *a3, NSObject *a4)
{
  v5 = v4;
  v258 = a4;
  v262 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v260 = *(v8 - 1);
  v261 = v8;
  v9 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v259 = (&v247 - v10);
  v264 = type metadata accessor for ExtensionMetadata();
  v11 = *(v264 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v264);
  v263 = &v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v247 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v247 - v18);
  v21 = *(a1 + 24);
  v20 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = (*(v20 + 40))(v21, v20);
  v23 = v22;
  v24 = *a2;
  if (!*(*a2 + 16) || (v25 = sub_1BF3916CC(v22), (v26 & 1) == 0))
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v36 = sub_1BF4E7B54();
    __swift_project_value_buffer(v36, qword_1EDCA6898);
    sub_1BF38E49C(a1, &v268);
    v37 = sub_1BF4E7B34();
    v38 = sub_1BF4E8E84();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      v41 = v271;
      v42 = v272;
      __swift_project_boxed_opaque_existential_1(&v268, v271);
      v43 = (*(v42 + 40))(v41, v42);
      __swift_destroy_boxed_opaque_existential_1Tm(&v268);
      *(v39 + 4) = v43;
      *v40 = v43;
      _os_log_impl(&dword_1BF389000, v37, v38, "No metadata for %{public}@", v39, 0xCu);
      sub_1BF38C9B4(v40, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v40, -1, -1);
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v268);
    }

    return 1;
  }

  sub_1BF38F0DC(*(v24 + 56) + *(v11 + 72) * v25, v16);

  sub_1BF3919A0(v16, v19);
  v27 = [objc_allocWithZone(MEMORY[0x1E698E638]) init];
  v257 = a1;
  if (v27)
  {
    v28 = v27;
    v29 = (v19 + *(v264 + 32));
    if (v29[1] && (v30 = *v29, v31 = objc_allocWithZone(MEMORY[0x1E698E638]), v32 = sub_1BF4E88E4(), v33 = [v31 initWithString_], v32, v33))
    {
      v34 = [v33 isBefore:v28 withPrecision:1];

      if ((v34 & 1) == 0)
      {
        LOBYTE(v35) = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }

    if (qword_1EDC9D460 != -1)
    {
LABEL_141:
      swift_once();
    }

    v44 = sub_1BF4E7B54();
    __swift_project_value_buffer(v44, qword_1EDCA6898);
    sub_1BF38E49C(a1, &v268);
    v45 = sub_1BF4E7B34();
    v46 = sub_1BF4E8E84();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138543362;
      v49 = v19;
      v50 = v5;
      v51 = v271;
      v52 = v272;
      __swift_project_boxed_opaque_existential_1(&v268, v271);
      v53 = *(v52 + 40);
      v54 = v52;
      v5 = v50;
      v19 = v49;
      a1 = v257;
      v55 = v53(v51, v54);
      __swift_destroy_boxed_opaque_existential_1Tm(&v268);
      *(v47 + 4) = v55;
      *v48 = v55;
      _os_log_impl(&dword_1BF389000, v45, v46, "Refetching descriptors due to OS version change for %{public}@", v47, 0xCu);
      sub_1BF38C9B4(v48, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v48, -1, -1);
      MEMORY[0x1BFB5A5D0](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v268);
    }

    LOBYTE(v35) = 1;
  }

  else
  {
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v56 = sub_1BF4E7B54();
    __swift_project_value_buffer(v56, qword_1EDCA6898);
    v57 = sub_1BF4E7B34();
    v58 = sub_1BF4E8E64();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1BF389000, v57, v58, "Failed to get build version", v59, 2u);
      MEMORY[0x1BFB5A5D0](v59, -1, -1);
    }

    LOBYTE(v35) = 0;
  }

LABEL_24:
  v60 = (v19 + *(v264 + 20));
  v61 = *v60;
  v62 = v60[1];
  v63 = *(a1 + 24);
  v64 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v63);
  if (v61 == sub_1BF390B24(v63, v64) && v62 == v65)
  {

    v66 = 1;
  }

  else
  {
    v67 = sub_1BF4E9734();

    if (v67)
    {
      v66 = 1;
    }

    else
    {
      if (qword_1EDC9D460 != -1)
      {
LABEL_143:
        swift_once();
      }

      v68 = sub_1BF4E7B54();
      __swift_project_value_buffer(v68, qword_1EDCA6898);
      v69 = v263;
      sub_1BF38F0DC(v19, v263);
      sub_1BF38E49C(a1, &v268);
      sub_1BF38E49C(a1, v265);
      v70 = sub_1BF4E7B34();
      v71 = sub_1BF4E8E84();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v273 = v256;
        *v72 = 136446722;
        v73 = (v69 + *(v264 + 20));
        v74 = *v73;
        v75 = v73[1];

        sub_1BF38F140(v69);
        v76 = v71;
        v77 = sub_1BF38D65C(v74, v75, &v273);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2082;
        v78 = v271;
        v79 = v272;
        __swift_project_boxed_opaque_existential_1(&v268, v271);
        v80 = sub_1BF390B24(v78, v79);
        v82 = v81;
        __swift_destroy_boxed_opaque_existential_1Tm(&v268);
        v83 = sub_1BF38D65C(v80, v82, &v273);

        *(v72 + 14) = v83;
        *(v72 + 22) = 2114;
        v84 = v266;
        v85 = v267;
        __swift_project_boxed_opaque_existential_1(v265, v266);
        v86 = (*(v85 + 40))(v84, v85);
        __swift_destroy_boxed_opaque_existential_1Tm(v265);
        *(v72 + 24) = v86;
        v87 = v255;
        *v255 = v86;
        _os_log_impl(&dword_1BF389000, v70, v76, "Refetching descriptors due to extension version change, from %{public}s to %{public}s for %{public}@", v72, 0x20u);
        sub_1BF38C9B4(v87, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v87, -1, -1);
        v88 = v256;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v88, -1, -1);
        MEMORY[0x1BFB5A5D0](v72, -1, -1);
      }

      else
      {

        sub_1BF38F140(v69);
        __swift_destroy_boxed_opaque_existential_1Tm(&v268);
        __swift_destroy_boxed_opaque_existential_1Tm(v265);
      }

      v66 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E7774();
  v89 = sub_1BF4E76E4();

  if (!v66 || (v35 & 1) != 0)
  {
    sub_1BF38F140(v19);
    return 1;
  }

  if (v89)
  {
    sub_1BF38F140(v19);
    return 0;
  }

  v91 = v257[3];
  v92 = v257[4];
  __swift_project_boxed_opaque_existential_1(v257, v91);
  v93 = (*(v92 + 144))(v91, v92);
  v95 = *v262;
  if (*(*v262 + 16))
  {
    v96 = sub_1BF3CD5D0(v93, v94);
    v98 = v97;

    if (v98)
    {
      v99 = (*(v95 + 56) + 24 * v96);
      v100 = *v99;
      v101 = v99[1];
      v102 = v99[2];
      sub_1BF3D8864(*v99, v101);

      v103 = v100;
      v255 = v102;
      v256 = v101;
      if (v102)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }
  }

  else
  {
  }

  v101 = 0;
  v100 = 0;
LABEL_46:
  v255 = v101;
  v263 = v5;
  v104 = v257;
  v106 = v258[6];
  v105 = v258[7];
  v107 = v257[3];
  v108 = v257[4];
  __swift_project_boxed_opaque_existential_1(v257, v107);
  v109 = *(v108 + 144);

  v109(v107, v108);
  v110 = v259;
  sub_1BF4E7694();
  (v106)(&v268, v110);

  (*(v260 + 8))(v110, v261);
  v103 = v268;
  v35 = v269;
  v111 = v270;
  sub_1BF48051C(v100, v255, 0);
  v112 = v104[3];
  v113 = v104[4];
  __swift_project_boxed_opaque_existential_1(v104, v112);
  v114 = (*(v113 + 144))(v112, v113);
  v116 = v114;
  v117 = v115;
  v256 = v35;
  if (v111)
  {
    sub_1BF4804DC(v103, v35, v111);
    v118 = v262;
    v119 = *v262;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v268 = *v118;
    v255 = v111;
    sub_1BF3D7DCC(v103, v35, v111, v116, v117, isUniquelyReferenced_nonNull_native);

    *v118 = v268;
  }

  else
  {
    sub_1BF47B5D8(v114, v115, &v268);

    sub_1BF48051C(v268, v269, v270);
    v255 = 0;
  }

  v5 = v263;
LABEL_50:
  v121 = *(v19 + *(v264 + 24));
  if (v121 >> 62)
  {
    if (v121 < 0)
    {
      v217 = *(v19 + *(v264 + 24));
    }

    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v218 = sub_1BF4E9474();

    v121 = v218;
  }

  else
  {
    v122 = *(v19 + *(v264 + 24));

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  v262 = *(v19 + *(v264 + 28));
  v123 = v262;
  v253 = v262 >> 62;
  if (v262 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v219 = sub_1BF4E9474();

    v124 = v219;
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    v124 = v123;
  }

  v268 = v121;
  sub_1BF44BBA4(v124);
  v125 = v268;
  v126 = *(v19 + *(v264 + 36));
  if (v126 >> 62)
  {
    if (v126 < 0)
    {
      v220 = *(v19 + *(v264 + 36));
    }

    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v221 = sub_1BF4E9474();

    v126 = v221;
  }

  else
  {
    v127 = *(v19 + *(v264 + 36));

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  v268 = v125;
  sub_1BF44BBA4(v126);
  a1 = v268;
  if (v268 >> 62)
  {
    v128 = sub_1BF4E9204();
    v264 = v103;
    if (v128)
    {
      goto LABEL_58;
    }

LABEL_152:

    v183 = 0;
    LODWORD(v261) = 0;
    goto LABEL_153;
  }

  v128 = *((v268 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v264 = v103;
  if (!v128)
  {
    goto LABEL_152;
  }

LABEL_58:
  v129 = 0;
  v261 = (a1 & 0xC000000000000001);
  v258 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (v103)
  {
    v130 = 0;
  }

  else
  {
    v130 = v256 == 0xC000000000000000;
  }

  v131 = !v130;
  LODWORD(v252) = v131;
  v254 = v256 >> 62;
  v132 = __OFSUB__(HIDWORD(v103), v103);
  v249 = v132;
  v248 = HIDWORD(v103) - v103;
  v251 = BYTE6(v256);
  v259 = (v256 >> 60);
  v260 = a1;
  v133 = v255;
  while (1)
  {
    v263 = v5;
    if (v261)
    {
      v135 = MEMORY[0x1BFB59570](v129, a1);
    }

    else
    {
      if (v129 >= v258[2])
      {
        __break(1u);
        goto LABEL_143;
      }

      v135 = *(a1 + 8 * v129 + 32);
    }

    v5 = v135;
    v136 = (v129 + 1);
    if (__OFADD__(v129, 1))
    {
      __break(1u);
      goto LABEL_141;
    }

    v137 = v128;
    v138 = v257[3];
    v35 = v257[4];
    __swift_project_boxed_opaque_existential_1(v257, v138);
    if (((*(v35 + 168))(v138, v35) & 1) != 0 && [v5 version] <= 1)
    {

      if (qword_1EDC9D510 != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_118;
    }

    if (!v133)
    {
      v134 = [v5 localeToken];
      if (v134)
      {
        v179 = v134;
        v180 = sub_1BF4E71C4();
        v182 = v181;

        sub_1BF3B03C0(v180, v182);
        goto LABEL_128;
      }

      goto LABEL_69;
    }

    v139 = v264;
    v140 = v256;
    sub_1BF3D8864(v264, v256);
    sub_1BF3D8864(v139, v140);
    sub_1BF3D8864(v139, v140);
    v141 = [v5 localeToken];
    if (!v141)
    {
      v35 = 0;
      v144 = 0xF000000000000000;
LABEL_95:
      sub_1BF48055C(v35, v144);
      v151 = v264;
      v152 = v256;
      sub_1BF3B03C0(v264, v256);
      sub_1BF3B03C0(v151, v152);
      sub_1BF3DB210(v35, v144);
      if (v259 > 0xE)
      {

        sub_1BF3DB210(v35, v144);
        v133 = v255;
        goto LABEL_70;
      }

      v133 = v255;
LABEL_125:
      sub_1BF3DB210(v35, v144);
      sub_1BF3DB210(v264, v256);
      goto LABEL_128;
    }

    v142 = v141;
    v35 = sub_1BF4E71C4();
    v144 = v143;

    if (v144 >> 60 == 15)
    {
      goto LABEL_95;
    }

    if (v259 > 0xE)
    {
      sub_1BF48055C(v35, v144);

      v184 = v264;
      v185 = v256;
      sub_1BF3B03C0(v264, v256);
      sub_1BF3B03C0(v184, v185);
      sub_1BF3DB210(v35, v144);
      goto LABEL_125;
    }

    v145 = v144 >> 62;
    if (v144 >> 62 != 3)
    {
      break;
    }

    if (v35)
    {
      v146 = 0;
    }

    else
    {
      v146 = v144 == 0xC000000000000000;
    }

    v148 = !v146 || v254 < 3;
    if ((v148 | v252))
    {
      v149 = 0;
      v150 = v254;
      goto LABEL_104;
    }

    sub_1BF48055C(0, 0xC000000000000000);
    sub_1BF3DB210(0, 0xC000000000000000);
    sub_1BF3B03C0(0, 0xC000000000000000);
    sub_1BF3DB210(0, 0xC000000000000000);
    sub_1BF3B03C0(0, 0xC000000000000000);
LABEL_116:
    sub_1BF3DB210(v35, v144);
LABEL_69:

LABEL_70:
    ++v129;
    v128 = v137;
    v130 = v136 == v137;
    v5 = v263;
    a1 = v260;
    if (v130)
    {
      goto LABEL_152;
    }
  }

  if (v145)
  {
    if (v145 == 1)
    {
      LODWORD(v149) = HIDWORD(v35) - v35;
      v150 = v254;
      if (__OFSUB__(HIDWORD(v35), v35))
      {
        goto LABEL_179;
      }

      v149 = v149;
    }

    else
    {
      v154 = *(v35 + 16);
      v153 = *(v35 + 24);
      v155 = __OFSUB__(v153, v154);
      v149 = v153 - v154;
      v150 = v254;
      if (v155)
      {
        goto LABEL_178;
      }
    }
  }

  else
  {
    v149 = BYTE6(v144);
    v150 = v254;
  }

LABEL_104:
  if (v150 <= 1)
  {
    v156 = v251;
    if (v150)
    {
      v156 = v248;
      if (v249)
      {
        goto LABEL_177;
      }
    }

    goto LABEL_110;
  }

  if (v150 == 2)
  {
    v158 = *(v264 + 16);
    v157 = *(v264 + 24);
    v155 = __OFSUB__(v157, v158);
    v156 = v157 - v158;
    if (!v155)
    {
LABEL_110:
      if (v149 != v156)
      {
        goto LABEL_126;
      }

      if (v149 >= 1)
      {
        v159 = v264;
        v160 = v256;
        sub_1BF3D8864(v264, v256);
        sub_1BF48055C(v35, v144);
        sub_1BF48055C(v159, v160);
        v161 = v263;
        v250 = sub_1BF4D9E34(v35, v144, v159, v160);
        v263 = v161;
        sub_1BF3B03C0(v159, v160);
        sub_1BF3B03C0(v159, v160);
        sub_1BF3DB210(v35, v144);
        sub_1BF3B03C0(v159, v160);
        sub_1BF3DB210(v159, v160);
        sub_1BF3DB210(v35, v144);
        v133 = v255;
        if ((v250 & 1) == 0)
        {
          goto LABEL_127;
        }

        goto LABEL_69;
      }

      goto LABEL_115;
    }

    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    swift_once();
LABEL_118:
    v164 = sub_1BF4E7B54();
    v128 = __swift_project_value_buffer(v164, qword_1EDCA69B8);
    v165 = v257;
    sub_1BF38E49C(v257, &v268);
    sub_1BF38E49C(v165, v265);
    v166 = sub_1BF4E7B34();
    v167 = sub_1BF4E8E84();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      v273 = v261;
      *v168 = 138543618;
      v170 = v271;
      v171 = v272;
      __swift_project_boxed_opaque_existential_1(&v268, v271);
      v172 = (*(v171 + 40))(v170, v171);
      __swift_destroy_boxed_opaque_existential_1Tm(&v268);
      *(v168 + 4) = v172;
      *v169 = v172;
      *(v168 + 12) = 2082;
      v173 = v266;
      v174 = v267;
      __swift_project_boxed_opaque_existential_1(v265, v266);
      v175 = (*(v174 + 144))(v173, v174);
      v177 = v176;
      __swift_destroy_boxed_opaque_existential_1Tm(v265);
      v178 = sub_1BF38D65C(v175, v177, &v273);

      *(v168 + 14) = v178;
      _os_log_impl(&dword_1BF389000, v166, v167, "Reloading extension: %{public}@ on behalf of %{public}s because it contains descriptors that have color assets that need to be processed.", v168, 0x16u);
      sub_1BF38C9B4(v169, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v169, -1, -1);
      v128 = v261;
      __swift_destroy_boxed_opaque_existential_1Tm(v261);
      MEMORY[0x1BFB5A5D0](v128, -1, -1);
      MEMORY[0x1BFB5A5D0](v168, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v268);
      __swift_destroy_boxed_opaque_existential_1Tm(v265);
    }

    LODWORD(v261) = 0;
    v183 = 1;
    v5 = v263;
    goto LABEL_153;
  }

  if (!v149)
  {
LABEL_115:
    sub_1BF48055C(v35, v144);
    v162 = v264;
    v163 = v256;
    sub_1BF3DB210(v264, v256);
    sub_1BF3B03C0(v162, v163);
    sub_1BF3DB210(v35, v144);
    sub_1BF3B03C0(v162, v163);
    v133 = v255;
    goto LABEL_116;
  }

LABEL_126:
  sub_1BF48055C(v35, v144);
  v186 = v264;
  v187 = v256;
  sub_1BF3DB210(v264, v256);
  sub_1BF3B03C0(v186, v187);
  sub_1BF3DB210(v35, v144);
  sub_1BF3B03C0(v186, v187);
  sub_1BF3DB210(v35, v144);
  v133 = v255;
LABEL_127:

LABEL_128:
  v188 = 7104878;
  v189 = [v5 localeToken];
  if (v189)
  {
    v190 = v189;
    v191 = sub_1BF4E71C4();
    v193 = v192;

    v260 = sub_1BF4E71B4();
    v195 = v194;
    sub_1BF3B03C0(v191, v193);
  }

  else
  {
    v195 = 0xE300000000000000;
    v260 = 7104878;
  }

  v196 = v257;
  if (v133)
  {
    v188 = sub_1BF4E71B4();
    v198 = v197;
  }

  else
  {
    v198 = 0xE300000000000000;
  }

  if (qword_1EDC9D510 != -1)
  {
    swift_once();
  }

  v199 = sub_1BF4E7B54();
  __swift_project_value_buffer(v199, qword_1EDCA69B8);
  sub_1BF38E49C(v196, &v268);
  sub_1BF38E49C(v196, v265);

  v200 = sub_1BF4E7B34();
  v128 = sub_1BF4E8E84();

  if (os_log_type_enabled(v200, v128))
  {
    v201 = swift_slowAlloc();
    v258 = v200;
    v202 = v201;
    v203 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v273 = v259;
    *v202 = 138544130;
    v252 = v188;
    v204 = v271;
    v205 = v272;
    __swift_project_boxed_opaque_existential_1(&v268, v271);
    v206 = *(v205 + 40);
    LODWORD(v254) = v128;
    v207 = v206(v204, v205);
    __swift_destroy_boxed_opaque_existential_1Tm(&v268);
    *(v202 + 4) = v207;
    *v203 = v207;
    v261 = v19;
    *(v202 + 12) = 2082;
    v208 = v266;
    v209 = v267;
    __swift_project_boxed_opaque_existential_1(v265, v266);
    v210 = (*(v209 + 144))(v208, v209);
    v212 = v211;
    __swift_destroy_boxed_opaque_existential_1Tm(v265);
    v213 = sub_1BF38D65C(v210, v212, &v273);

    *(v202 + 14) = v213;
    *(v202 + 22) = 2082;
    v214 = sub_1BF38D65C(v260, v195, &v273);

    *(v202 + 24) = v214;
    *(v202 + 32) = 2082;
    v19 = v261;
    v215 = sub_1BF38D65C(v252, v198, &v273);

    *(v202 + 34) = v215;
    v128 = v258;
    _os_log_impl(&dword_1BF389000, v258, v254, "Reloading extension: %{public}@ on behalf of %{public}s because it contains descriptors (%{public}s) that do not match current locale token: %{public}s", v202, 0x2Au);
    sub_1BF38C9B4(v203, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v203, -1, -1);
    v216 = v259;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v216, -1, -1);
    MEMORY[0x1BFB5A5D0](v202, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v268);
    __swift_destroy_boxed_opaque_existential_1Tm(v265);
  }

  v183 = 0;
  LODWORD(v261) = 1;
  v5 = v263;
LABEL_153:
  v222 = v262;
  if (v253)
  {
    v223 = sub_1BF4E9204();
    v222 = v262;
  }

  else
  {
    v223 = *((v262 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v263 = v5;
  if (v223)
  {
    v224 = 0;
    v225 = v222 & 0xC000000000000001;
    v226 = v222 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v225)
      {
        v227 = MEMORY[0x1BFB59570](v224, v222);
      }

      else
      {
        if (v224 >= *(v226 + 16))
        {
          goto LABEL_174;
        }

        v227 = *(v222 + 8 * v224 + 32);
      }

      v128 = v227;
      v228 = v224 + 1;
      if (__OFADD__(v224, 1))
      {
        __break(1u);
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      if ([v227 controlVersion] != 1)
      {
        break;
      }

      ++v224;
      v222 = v262;
      if (v228 == v223)
      {
        goto LABEL_166;
      }
    }

    v261 = v19;
    if (qword_1EDC9D510 == -1)
    {
      goto LABEL_169;
    }

LABEL_175:
    swift_once();
LABEL_169:
    v229 = sub_1BF4E7B54();
    __swift_project_value_buffer(v229, qword_1EDCA69B8);
    v230 = v257;
    sub_1BF38E49C(v257, &v268);
    sub_1BF38E49C(v230, v265);
    v231 = v128;
    v232 = sub_1BF4E7B34();
    v233 = sub_1BF4E8E84();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v262 = swift_slowAlloc();
      v273 = v262;
      *v234 = 138544130;
      v236 = v271;
      v237 = v272;
      __swift_project_boxed_opaque_existential_1(&v268, v271);
      v238 = (*(v237 + 40))(v236, v237);
      __swift_destroy_boxed_opaque_existential_1Tm(&v268);
      *(v234 + 4) = v238;
      *v235 = v238;
      *(v234 + 12) = 2082;
      v239 = v266;
      v240 = v267;
      __swift_project_boxed_opaque_existential_1(v265, v266);
      v241 = (*(v240 + 144))(v239, v240);
      v243 = v242;
      __swift_destroy_boxed_opaque_existential_1Tm(v265);
      v244 = sub_1BF38D65C(v241, v243, &v273);

      *(v234 + 14) = v244;
      *(v234 + 22) = 2050;
      v245 = [v231 controlVersion];

      *(v234 + 24) = v245;
      *(v234 + 32) = 2050;
      *(v234 + 34) = 1;
      _os_log_impl(&dword_1BF389000, v232, v233, "Reloading extension: %{public}@ on behalf of %{public}s because it has out of date control descriptors (%{public}llu < %{public}llu)", v234, 0x2Au);
      sub_1BF38C9B4(v235, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v235, -1, -1);
      v246 = v262;
      __swift_destroy_boxed_opaque_existential_1Tm(v262);
      MEMORY[0x1BFB5A5D0](v246, -1, -1);
      MEMORY[0x1BFB5A5D0](v234, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v268);
      __swift_destroy_boxed_opaque_existential_1Tm(v265);
    }

    sub_1BF38F140(v261);
    sub_1BF48051C(v264, v256, v255);
    return 1;
  }

  else
  {
LABEL_166:
    sub_1BF38F140(v19);
    sub_1BF48051C(v264, v256, v255);
    result = v183;
    if (v261)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1BF4D8544(uint64_t result, uint64_t *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v5 = *(result + 16);
  if (!v5)
  {
    return result;
  }

  v6 = v4;
  v7 = result;
  v27 = a2[1];
  v28 = *a2;
  v8 = *(v4 + 72);
  MEMORY[0x1EEE9AC00](result);

  os_unfair_lock_lock((v8 + 24));
  sub_1BF4DCD1C((v8 + 16), v39);
  os_unfair_lock_unlock((v8 + 24));
  v9 = v39[0];

  v29 = *(v9 + 16);
  if (v29)
  {
    v10 = 0;
    v11 = v9 + 32;
    v7 = v9;
    while (v10 < *(v9 + 16))
    {
      v35 = v11;
      sub_1BF38E49C(v11, v39);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v15 = sub_1BF4E7B54();
      __swift_project_value_buffer(v15, qword_1EDCA6898);
      sub_1BF38E49C(v39, v36);
      v16 = sub_1BF4E7B34();
      v17 = sub_1BF4E8E84();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        v21 = v37;
        v20 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v5 = (*(v20 + 40))(v21, v20);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        *(v18 + 4) = v5;
        *v19 = v5;
        _os_log_impl(&dword_1BF389000, v16, v17, "Requesting descriptor fetch for %{public}@", v18, 0xCu);
        sub_1BF38C9B4(v19, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v19, -1, -1);
        MEMORY[0x1BFB5A5D0](v18, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v36);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = v10;
        v12 = *(v6 + 24);
        ObjectType = swift_getObjectType();
        sub_1BF38E49C(v39, v36);
        v13 = swift_allocObject();
        v13[2] = v6;
        sub_1BF38E60C(v36, v13 + 3);
        v5 = v27;
        v13[8] = v28;
        v13[9] = v27;
        v13[10] = a3;
        v13[11] = a4;
        v30 = *(v12 + 40);

        sub_1BF44B994(v28, v27);
        sub_1BF391990(a3);
        v14 = v12;
        v10 = v32;
        v30(v39, sub_1BF4DCD38, v13, ObjectType, v14);

        swift_unknownObjectRelease();
      }

      else if (a3)
      {
        a3(v39);
      }

      ++v10;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      v11 = v35 + 40;
      if (v29 == v10)
      {
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_1EDC9D460 != -1)
  {
LABEL_25:
    swift_once();
  }

  v22 = sub_1BF4E7B54();
  __swift_project_value_buffer(v22, qword_1EDCA6898);
  v23 = sub_1BF4E7B34();
  v24 = sub_1BF4E8E84();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BF389000, v23, v24, "No descriptors to load because they were filtered.", v25, 2u);
    MEMORY[0x1BFB5A5D0](v25, -1, -1);
  }

  v26 = v7 + 32;
  do
  {
    sub_1BF38E49C(v26, v39);
    if (a3)
    {
      a3(v39);
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v26 += 40;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_1BF4D89D0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v13 = v12;
  v14 = *a1;
  if (*(*a1 + 16) && (v15 = sub_1BF3916CC(v12), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for ExtensionMetadata();
    v20 = *(v19 - 8);
    sub_1BF38F0DC(v18 + *(v20 + 72) * v17, v9);

    v21 = 1;
    (*(v20 + 56))(v9, 0, 1, v19);
  }

  else
  {

    v22 = type metadata accessor for ExtensionMetadata();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    v21 = 0;
  }

  result = sub_1BF38C9B4(v9, &qword_1EBDD9318, &qword_1BF4F09A8);
  *a3 = v21;
  return result;
}

uint64_t sub_1BF4D8BA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v20 - v7;

  v10 = sub_1BF4DB9D8(v9, a1);

  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v20 = v2;
    v22 = a1;
    v23 = a2;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1BF3E153C(0, v11, 0);
    v12 = v28;
    v21 = v10;
    v13 = v10 + 32;
    do
    {
      sub_1BF38E49C(v13, v25);
      v14 = v26;
      v15 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v16 = (*(v15 + 40))(v14, v15);
      sub_1BF4E9024();

      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v28 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BF3E153C(v17 > 1, v18 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v18 + 1;
      (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v8, v24);
      v13 += 40;
      --v11;
    }

    while (v11);
    a2 = v23;
    v10 = v21;
  }

  sub_1BF4DBF10(v12);

  *a2 = v10;
  return result;
}

uint64_t sub_1BF4D8DD0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{
  v64 = a8;
  v66 = a7;
  v60 = a5;
  v61 = a6;
  v11 = type metadata accessor for ExtensionMetadata();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v63 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v58 - v19;
  v62 = a3;
  v21 = *(a3 + 72);
  v67 = a4;

  os_unfair_lock_lock(v21 + 6);
  sub_1BF4DCD4C(v20);
  os_unfair_lock_unlock(v21 + 6);
  sub_1BF38C9B4(v20, &unk_1EBDD92E0, &unk_1BF4F08D0);

  if (!a1)
  {
    goto LABEL_16;
  }

  v58[1] = 0;
  v23 = a1;
  v24 = sub_1BF4E8554();
  v65 = sub_1BF4E8564();
  v59 = v23;
  v25 = sub_1BF4E8574();
  v26 = [objc_allocWithZone(MEMORY[0x1E698E638]) init];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 stringRepresentation];

    v29 = sub_1BF4E8914();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xE000000000000000;
  }

  v32 = a4[3];
  v33 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v32);
  v34 = (*(v33 + 40))(v32, v33);
  sub_1BF4E9024();

  v35 = a4[3];
  v36 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v35);
  v37 = sub_1BF390B24(v35, v36);
  v38 = &v16[v11[8]];
  v39 = &v16[v11[5]];
  *v39 = v37;
  v39[1] = v40;
  *v38 = v29;
  v38[1] = v31;
  *&v16[v11[6]] = v24;
  v41 = v11[9];
  *&v16[v11[7]] = v65;
  *&v16[v41] = v25;
  v42 = qword_1EDC9D470;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = sub_1BF4E7B54();
  __swift_project_value_buffer(v43, qword_1EDCA68B0);

  v44 = sub_1BF4E7B34();
  v45 = sub_1BF4E8E84();
  v46 = os_log_type_enabled(v44, v45);
  v48 = v62;
  v47 = v63;
  if (v46)
  {
    v49 = swift_slowAlloc();
    *v49 = 134349056;
    if (v25 >> 62)
    {
      v50 = sub_1BF4E9204();
    }

    else
    {
      v50 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v49 + 4) = v50;

    _os_log_impl(&dword_1BF389000, v44, v45, "Filling descriptor cache with %{public}ld activity descriptors", v49, 0xCu);
    MEMORY[0x1BFB5A5D0](v49, -1, -1);
  }

  else
  {
  }

  sub_1BF38F0DC(v16, v47);
  v51 = *(v48 + 64);

  os_unfair_lock_lock((v51 + 24));
  sub_1BF390E94((v51 + 16), a4, v47, v48, v68);
  os_unfair_lock_unlock((v51 + 24));
  v52 = v68[0];

  if (v52 >> 62)
  {
    if (!sub_1BF4E9204())
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C90, &qword_1BF4F73F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF4EBEF0;
    v54 = v60;
    v55 = v61;
    *(inited + 32) = v60;
    *(inited + 40) = v55;
    sub_1BF44B994(v54, v55);
    v56 = sub_1BF44B578(inited);
    swift_setDeallocating();
    sub_1BF4DC9D0(inited + 32);
    v57 = *(v48 + 40);
    v68[0] = v52;
    v68[1] = v56;
    sub_1BF4E7C14();
  }

LABEL_15:

  sub_1BF38F140(v47);
  sub_1BF38F140(v16);

LABEL_16:
  if (v66)
  {
    return v66(a4);
  }

  return result;
}

uint64_t sub_1BF4D92D0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 40))(v9, v10);
  sub_1BF4E9024();

  sub_1BF4DADD8(v8, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF4D940C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  v8 = *(a1 + 16);
  sub_1BF38F0DC(a2, v11 - v6);
  v9 = type metadata accessor for ExtensionMetadata();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_1BF49117C(v7, a2);
  return sub_1BF38C9B4(v7, &qword_1EBDD9318, &qword_1BF4F09A8);
}

void sub_1BF4D951C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  if (*(*a1 + 16))
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0) - 8);
      v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11 = *(v9 + 72);
      do
      {
        sub_1BF4DADD8(v10, v7);
        sub_1BF38C9B4(v7, &unk_1EBDD92E0, &unk_1BF4F08D0);
        v10 += v11;
        --v8;
      }

      while (v8);
    }
  }
}

void sub_1BF4D9660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v15;
  v18 = *(a2 + 16);
  if (v18)
  {
    v21 = *(v10 + 16);
    v20 = v10 + 16;
    v19 = v21;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v42 = *(a1 + 16);
    v23 = (v20 - 8);
    v40 = *(v20 + 56);
    *&v16 = 136446210;
    v36 = v16;
    v37 = v20;
    v43 = &v36 - v15;
    v41 = v21;
    do
    {
      v45 = v18;
      v19(v17, v22, v9);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v24 = sub_1BF4E7B54();
      __swift_project_value_buffer(v24, qword_1EDCA6898);
      v19(v13, v17, v9);
      v25 = sub_1BF4E7B34();
      v26 = v13;
      v27 = sub_1BF4E8E84();
      if (os_log_type_enabled(v25, v27))
      {
        v28 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = v3;
        v47 = v38;
        *v28 = v36;
        sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0);
        v29 = sub_1BF4E96A4();
        v31 = v30;
        v46 = *v23;
        v46(v26, v9);
        v32 = sub_1BF38D65C(v29, v31, &v47);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_1BF389000, v25, v27, "Clearing descriptor cache for %{public}s", v28, 0xCu);
        v33 = v38;
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v3 = v39;
        MEMORY[0x1BFB5A5D0](v33, -1, -1);
        MEMORY[0x1BFB5A5D0](v28, -1, -1);
      }

      else
      {

        v46 = *v23;
        v46(v26, v9);
      }

      v13 = v26;
      v34 = type metadata accessor for ExtensionMetadata();
      v35 = v44;
      (*(*(v34 - 8) + 56))(v44, 1, 1, v34);
      v17 = v43;
      sub_1BF49117C(v35, v43);
      sub_1BF38C9B4(v35, &qword_1EBDD9318, &qword_1BF4F09A8);
      v46(v17, v9);
      if (v3)
      {
        break;
      }

      v19 = v41;
      v22 += v40;
      v18 = v45 - 1;
    }

    while (v45 != 1);
  }
}

BOOL sub_1BF4D9A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1BF4E9024();
  LOBYTE(a3) = sub_1BF4D1B60(v8, a3);
  (*(v5 + 8))(v8, v4);
  return (a3 & 1) == 0;
}

uint64_t WidgetDescriptorCacheUpdate.extensionIdentities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t WidgetDescriptorCacheUpdate.reasons.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1BF4D9C04@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1BF4E6EC4();
    if (v10)
    {
      v11 = sub_1BF4E6EE4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1BF4E6ED4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1BF4E6EC4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BF4E6EE4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BF4E6ED4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BF4D9E34(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1BF4DB550(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1BF3B03C0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1BF4D9C04(v14, a3, a4, &v13);
  v10 = v4;
  sub_1BF3B03C0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void *sub_1BF4D9FC4(uint64_t a1)
{
  v43 = type metadata accessor for ExtensionMetadata();
  v40 = *(v43 - 1);
  v2 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A38, &qword_1BF4F5408);
  result = sub_1BF4E9494();
  v6 = 0;
  v41 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v38 = result + 8;
  v39 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v41 + 48) + 8 * v17);
      sub_1BF38F0DC(*(v41 + 56) + *(v40 + 72) * v17, v4);
      v19 = *&v4[v43[6]];
      v42 = v18;
      if (v19 >> 62)
      {
        v30 = v19 & 0xFFFFFFFFFFFFFF8;
        if (v19 < 0)
        {
          v30 = v19;
        }

        v37 = v30;
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
        v31 = v18;

        v32 = sub_1BF4E9474();

        v19 = v32;
      }

      else
      {
        v20 = v18;

        sub_1BF4E9754();
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
      }

      v21 = *&v4[v43[7]];
      if (v21 >> 62)
      {
        if (v21 < 0)
        {
          v33 = *&v4[v43[7]];
        }

        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

        v34 = sub_1BF4E9474();

        v21 = v34;
      }

      else
      {
        v22 = *&v4[v43[7]];

        sub_1BF4E9754();
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
      }

      v44 = v19;
      sub_1BF44BBA4(v21);
      v23 = v44;
      v24 = *&v4[v43[9]];
      if (v24 >> 62)
      {
        if (v24 < 0)
        {
          v35 = *&v4[v43[9]];
        }

        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

        v36 = sub_1BF4E9474();

        v24 = v36;
      }

      else
      {
        v25 = *&v4[v43[9]];

        sub_1BF4E9754();
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
      }

      v44 = v23;
      sub_1BF44BBA4(v24);
      v26 = v44;
      sub_1BF38F140(v4);
      result = v39;
      *(v38 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(result[6] + 8 * v17) = v42;
      *(result[7] + 8 * v17) = v26;
      v27 = result[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      result[2] = v29;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4DA38C(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMetadata();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CB0, &qword_1BF4F7648);
  result = sub_1BF4E9494();
  v7 = result;
  v8 = 0;
  v30 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v27 = result + 64;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v30 + 48) + 8 * v19);
      sub_1BF38F0DC(*(v30 + 56) + *(v28 + 72) * v19, v5);
      v21 = *&v5[*(v29 + 36)];
      v22 = v20;

      result = sub_1BF38F140(v5);
      *(v27 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v7[6] + 8 * v19) = v22;
      *(v7[7] + 8 * v19) = v21;
      v23 = v7[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v7[2] = v25;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF4DA594(void *result, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1BF4DCE1C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1BF4DA624(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = sub_1BF4E7334();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B8, &unk_1BF4EB2D0);
  result = sub_1BF4E94C4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    sub_1BF4E9804();

    v54 = v28;
    sub_1BF4E89F4();
    result = sub_1BF4E9844();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
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

uint64_t sub_1BF4DA9B8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ExtensionMetadata();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v40 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8750, &qword_1BF4EB270);
  result = sub_1BF4E94C4();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 64;
  v40 = a4;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_16:
    v22 = v19 | (v17 << 6);
    v23 = a4[7];
    v24 = *(a4[6] + 8 * v22);
    v25 = v41;
    v26 = *(v42 + 72);
    sub_1BF38F0DC(v23 + v26 * v22, v41);
    v27 = v25;
    v28 = v11;
    sub_1BF3919A0(v27, v11);
    v29 = *(v15 + 40);
    v30 = v24;
    result = sub_1BF4E9094();
    v31 = -1 << *(v15 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      v11 = v28;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v18 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v11 = v28;
LABEL_26:
    *(v18 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    *(*(v15 + 48) + 8 * v34) = v30;
    result = sub_1BF3919A0(v11, *(v15 + 56) + v34 * v26);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v16 = v43;
    if (!a3)
    {
      return v15;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v43 = (v21 - 1) & v21;
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

uint64_t sub_1BF4DAC9C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v7 = sub_1BF4E9844();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1BF4E9734() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BF4AF3F8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1BF4DB080(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1BF4DADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  v34 = a1;
  v12 = sub_1BF4E8874();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0);
      v21 = sub_1BF4E88C4();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BF4AF554();
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_1BF4DB244(v14);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

unint64_t sub_1BF4DB080(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1BF4E91C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1BF4E9804();

        sub_1BF4E89F4();
        v15 = sub_1BF4E9844();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1BF4DB244(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_1BF4E91C4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = v12;
      v16 = (v14 + 1) & v12;
      v37 = v4[2];
      v38 = v4 + 2;
      v17 = v4[9];
      v35 = (v4 + 1);
      v36 = v9;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v11;
        v37(v7, *(v8 + 48) + v18 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        v25 = *(v21 + 40);
        sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
        v26 = sub_1BF4E8874();
        (*v35)(v7, v3);
        v27 = v26 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v27 >= v22 && a1 >= v27)
          {
LABEL_16:
            v8 = v24;
            v30 = *(v24 + 48);
            v18 = v19;
            v31 = v19 * a1;
            if (v19 * a1 < v20 || v30 + v19 * a1 >= (v30 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v31 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v22 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v8 = v24;
        v18 = v19;
LABEL_5:
        v11 = (v11 + 1) & v15;
        v9 = v36;
      }

      while (((*(v36 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v8 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v34;
    ++*(v8 + 36);
  }
}

uint64_t sub_1BF4DB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BF4E6EC4();
  v11 = result;
  if (result)
  {
    result = sub_1BF4E6EE4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BF4E6ED4();
  sub_1BF4D9C04(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1BF4DB64C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v7[2] = v4;

  result = sub_1BF4D1F28(sub_1BF4DD20C, v7, v5, sub_1BF4D2E48, 0);
  *a2 = result;
  return result;
}

uint64_t sub_1BF4DB6C4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5)
{
  v6 = v5;
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v8 = type metadata accessor for ExtensionMetadata();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1BF3E1604(0, v13, 0);
  v14 = v25;
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = a1 + v15;
  v17 = *(v9 + 72);
  while (1)
  {
    sub_1BF4D53D4(v16, v21, v22, v23, v24, v12);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v25 = v14;
    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1BF3E1604(v18 > 1, v19 + 1, 1);
      v14 = v25;
    }

    *(v14 + 16) = v19 + 1;
    sub_1BF3919A0(v12, v14 + v15 + v19 * v17);
    v16 += v17;
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4DB854(uint64_t result, uint64_t *a2, uint64_t *a3, NSObject *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = a4;
    v8 = a3;
    v10 = 0;
    v11 = result + 32;
    v12 = MEMORY[0x1E69E7CC0];
    while (v10 < *(v5 + 16))
    {
      sub_1BF38E49C(v11, v20);
      v13 = sub_1BF4D696C(v20, a2, v8, v7);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v20);

        goto LABEL_15;
      }

      if (v13)
      {
        sub_1BF38E60C(v20, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BF3E16D0(0, *(v12 + 16) + 1, 1);
          v12 = v21;
        }

        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1BF3E16D0((v15 > 1), v16 + 1, 1);
          v12 = v21;
        }

        *(v12 + 16) = v16 + 1;
        result = sub_1BF38E60C(v19, v12 + 40 * v16 + 32);
        v8 = a3;
        v7 = a4;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
      }

      ++v10;
      v11 += 40;
      if (v6 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v12;
  }

  return result;
}

uint64_t sub_1BF4DB9D8(uint64_t a1, uint64_t *a2)
{
  v44 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v39[-v8];
  v43 = *(a1 + 16);
  if (!v43)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v42 = a1 + 32;
  v47 = v6 + 16;
  v41 = v6;
  v50 = (v6 + 8);
  v10 = MEMORY[0x1E69E7CC0];
  *&v7 = 138543362;
  v40 = v7;
  do
  {
    v45 = v10;
    v46 = v9;
    sub_1BF38E49C(v42 + 40 * v9, v56);
    v11 = *v44;
    v12 = v57;
    v13 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v14 = *(v13 + 40);

    v15 = v14(v12, v13);
    sub_1BF4E9024();

    if (*(v11 + 16) && (v16 = *(v11 + 40), sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0), v17 = sub_1BF4E8874(), v18 = -1 << *(v11 + 32), v19 = v17 & ~v18, v49 = v11 + 56, ((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
    {
      v20 = ~v18;
      v21 = *(v41 + 72);
      v22 = *(v41 + 16);
      while (1)
      {
        v23 = v48;
        v24 = v51;
        v22(v48, *(v11 + 48) + v21 * v19, v51);
        sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0);
        v25 = sub_1BF4E88C4();
        v26 = *v50;
        (*v50)(v23, v24);
        if (v25)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v49 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v26(v52, v51);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v30 = sub_1BF4E7B54();
      __swift_project_value_buffer(v30, qword_1EDCA6898);
      sub_1BF38E49C(v56, v53);
      v31 = sub_1BF4E7B34();
      v32 = sub_1BF4E8E84();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = v40;
        v36 = v54;
        v35 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        v37 = (*(v35 + 40))(v36, v35);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        *(v33 + 4) = v37;
        *v34 = v37;
        _os_log_impl(&dword_1BF389000, v31, v32, "Pending descriptor fetch already exists for %{public}@", v33, 0xCu);
        sub_1BF38C9B4(v34, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v34, -1, -1);
        MEMORY[0x1BFB5A5D0](v33, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v53);
      }

      v10 = v45;
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
    }

    else
    {
LABEL_11:

      (*v50)(v52, v51);
      sub_1BF38E60C(v56, v53);
      v10 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BF3E16D0(0, *(v10 + 16) + 1, 1);
        v10 = v59;
      }

      v29 = *(v10 + 16);
      v28 = *(v10 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1BF3E16D0((v28 > 1), v29 + 1, 1);
        v10 = v59;
      }

      *(v10 + 16) = v29 + 1;
      sub_1BF38E60C(v53, v10 + 40 * v29 + 32);
    }

    v9 = v46 + 1;
  }

  while (v46 + 1 != v43);
  return v10;
}

void sub_1BF4DBF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2, v8);
      sub_1BF4ACCF8(v10, v6);
      (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }
}

id sub_1BF4DC064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CA8, &qword_1BF4F7640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v34 - v4;
  v42 = type metadata accessor for ExtensionMetadata();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = sub_1BF4E6F84();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1BF4E6F74();
  v41 = *(a1 + 16);
  if (v41)
  {
    v45 = v18;
    v20 = 0;
    v35 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v36 = v9;
    v40 = a1 + v35;
    v38 = MEMORY[0x1E69E7CC0];
    v43 = *(v6 + 72);
    *&v19 = 136380675;
    v34 = v19;
    v39 = v14;
    while (1)
    {
      v44 = v20;
      sub_1BF38F0DC(v40 + v43 * v20, v14);
      v21 = *&v14[*(v42 + 36)];
      if (v21 >> 62)
      {
        if (v21 < 0)
        {
          v33 = *&v14[*(v42 + 36)];
        }

        v22 = sub_1BF4E9204();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22)
      {
        break;
      }

LABEL_3:
      v14 = v39;
      sub_1BF38F140(v39);

      v20 = v44 + 1;
      if (v44 + 1 == v41)
      {

        return v38;
      }
    }

    v24 = 0;
    v47 = v21 & 0xFFFFFFFFFFFFFF8;
    v48 = v21 & 0xC000000000000001;
    v46 = v21;
    while (1)
    {
      if (v48)
      {
        result = MEMORY[0x1BFB59570](v24, v21);
      }

      else
      {
        if (v24 >= *(v47 + 16))
        {
          goto LABEL_21;
        }

        result = *(v21 + 8 * v24 + 32);
      }

      v25 = result;
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v27 = sub_1BF4E7454();
      v28 = [v25 activityAttributesType];
      v29 = v5;
      v30 = sub_1BF4E71C4();
      v32 = v31;

      sub_1BF392020(&qword_1EDC9F0A0, MEMORY[0x1E6959BC8]);
      sub_1BF4E6F64();

      sub_1BF3B03C0(v30, v32);
      (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
      result = sub_1BF38C9B4(v29, &qword_1EBDD9CA8, &qword_1BF4F7640);
      ++v24;
      v5 = v29;
      v21 = v46;
      if (v26 == v22)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BF4DC6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v39[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39[-1] - v10;
  v12 = sub_1BF3DACD0(MEMORY[0x1E69E7CC0]);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v15 = *(v5 + 72);
  v38 = a2;
  while (1)
  {
    sub_1BF38F0DC(v14, v11);
    if (!*(a2 + 16))
    {
      break;
    }

    v16 = sub_1BF38C890(v11);
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_1BF38E49C(*(a2 + 56) + 40 * v16, v39);
    v18 = v40;
    v19 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v20 = (*(v19 + 40))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v21 = v11;
    v22 = v11;
    v23 = v8;
    sub_1BF38F0DC(v22, v8);
    v24 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v12;
    v26 = sub_1BF3916CC(v24);
    v28 = v12[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_19;
    }

    v32 = v27;
    if (v12[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v26;
        sub_1BF4A4A00();
        v26 = v36;
      }
    }

    else
    {
      sub_1BF4A1688(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1BF3916CC(v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_21;
      }
    }

    v8 = v23;
    v12 = v39[0];
    v11 = v21;
    if (v32)
    {
      sub_1BF4DD1A8(v8, *(v39[0] + 56) + v26 * v15);
    }

    else
    {
      *(v39[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v12[6] + 8 * v26) = v24;
      sub_1BF3919A0(v8, v12[7] + v26 * v15);
      v34 = v12[2];
      v30 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v30)
      {
        goto LABEL_20;
      }

      v12[2] = v35;
    }

    sub_1BF38F140(v21);
    v14 += v15;
    --v13;
    a2 = v38;
    if (!v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:

  sub_1BF4E9034();
  result = sub_1BF4E9794();
  __break(1u);
  return result;
}

unint64_t sub_1BF4DCA44()
{
  result = qword_1EBDD9C98;
  if (!qword_1EBDD9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9C98);
  }

  return result;
}

uint64_t dispatch thunk of WidgetDescriptorProvider.migrateCachedDescriptorIfNecessary(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))();
}

{
  return (*(a4 + 16))();
}

{
  return (*(a4 + 24))();
}

uint64_t sub_1BF4DCC48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BF4DCC90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF4DCDA0(uint64_t *a1)
{
  v6 = *(v1 + 16);
  sub_1BF4DD000(*a1, sub_1BF4DCE14);
  v4 = v3;

  *a1 = v4;
  return result;
}

void sub_1BF4DCE1C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  v5 = type metadata accessor for ExtensionMetadata();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = *(v30[6] + 8 * v20);
    sub_1BF38F0DC(v30[7] + *(v28 + 72) * v20, v8);
    v22 = v21;
    v23 = v29(v22);
    sub_1BF38F140(v8);

    if (v23)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1BF4DA9B8(v26, v25, v27, v30);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BF4DD000(uint64_t a1, uint64_t (*a2)(id))
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1BF4DA594(v10, v6, v4, a2);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1BF4DCE1C(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BF4DD180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BF4DD1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMetadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4DD22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4DD2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_1BF4E7014();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BF4E7194();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = (a1 + *MEMORY[0x1E69941A8]);
  swift_beginAccess();
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = v16[1];

    sub_1BF4E76F4();
    v42 = v18;
    v43 = v17;
    v20 = *MEMORY[0x1E6968F58];
    v39 = v5[13];
    v39(v8, v20, v4);
    v38 = sub_1BF399080();
    sub_1BF4E7184();
    v37 = v5[1];
    v37(v8, v4);

    v36 = *(v9 + 8);
    v21 = v12;
    v22 = v40;
    v36(v21, v40);
    v23 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v24 = sub_1BF4E76B4();
    v26 = v25;
    swift_endAccess();
    v42 = v24;
    v43 = v26;
    v39(v8, *MEMORY[0x1E6968F70], v4);
    v27 = v41;
    sub_1BF4E7184();
    v37(v8, v4);

    v36(v15, v22);
    return (*(v9 + 56))(v27, 0, 1, v22);
  }

  else
  {
    v29 = v9;
    v30 = v40;
    v31 = v2[5];
    v32 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v31);
    ExtensionManaging.extension(for:)(a1, v31, v32);
    v33 = v44;
    if (v44)
    {
      v34 = v45;
      __swift_project_boxed_opaque_existential_1(&v42, v44);
      v35 = v41;
      (*(v34 + 104))(v33, v34);
      (*(v29 + 56))(v35, 0, 1, v30);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    }

    else
    {
      sub_1BF38C9B4(&v42, &unk_1EBDD91B0, &unk_1BF4F0720);
      return (*(v29 + 56))(v41, 1, 1, v30);
    }
  }
}

uint64_t sub_1BF4DD6D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4DD75C()
{
  v0 = sub_1BF4DE31C();

  return v0;
}

void *ExtensionSystemDataCacheKeyProvider.init(subsystemIdentifier:systemDataURLProvider:fileManager:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  sub_1BF38E610(a3, (v4 + 4));
  v4[9] = a4;
  return v4;
}

uint64_t sub_1BF4DD7D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 104))(v11, v12);
  swift_beginAccess();
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);

  sub_1BF4E70F4();

  (*(v7 + 8))(v10, v6);
  return (*(v7 + 56))(a2, 0, 1, v6);
}

uint64_t ExtensionSystemDataCacheKeyProvider.__deallocating_deinit()
{
  ExtensionSystemDataCacheKeyProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1BF4DD9A4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 40))(v3, v4);
  sub_1BF4DDEB4(v5, a2);
}

uint64_t sub_1BF4DDA38@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95A0, &unk_1BF4F7670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95A8, &unk_1BF4F1960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v36 - v17;
  v19 = sub_1BF4E7194();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4DDEB4(*a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1BF38C9B4(v18, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }

  else
  {
    v26 = *(v20 + 32);
    v26(v23, v18, v19);
    v26(a2, v23, v19);
    sub_1BF38C94C(a1, v14, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF44C740(v14, v10, type metadata accessor for ActivityKey);
    v27 = type metadata accessor for ActivityKey();
    v28 = *(*(v27 - 8) + 56);
    v28(v10, 0, 1, v27);
    v29 = &v14[*(v11 + 68)];
    v36 = v10;
    v30 = v37;
    sub_1BF44C740(v29, v37, type metadata accessor for ActivityVariantKey);
    v31 = type metadata accessor for ActivityVariantKey();
    v32 = *(*(v31 - 8) + 56);
    v32(v30, 0, 1, v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
    v34 = *(v33 + 68);
    v28(&a2[v34], 1, 1, v27);
    v35 = *(v33 + 72);
    v32(&a2[v35], 1, 1, v31);
    sub_1BF3A3A54(v36, &a2[v34], &qword_1EBDD95A8, &unk_1BF4F1960);
    sub_1BF3A3A54(v30, &a2[v35], &qword_1EBDD95A0, &unk_1BF4F7670);
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }
}

uint64_t sub_1BF4DDEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v27 = sub_1BF4E7014();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  sub_1BF38E49C(v3 + 32, v29);
  v17 = v30;
  v16 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v16 + 8))(a1, v17, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  sub_1BF38C94C(v15, v12, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v18 = sub_1BF4E7194();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    sub_1BF38C9B4(v15, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    sub_1BF38C9B4(v12, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v20 = 1;
    v21 = v28;
  }

  else
  {
    v22 = *(v3 + 24);
    v29[0] = *(v3 + 16);
    v29[1] = v22;
    v23 = v27;
    (*(v5 + 104))(v8, *MEMORY[0x1E6968F58], v27);
    sub_1BF399080();

    v24 = v28;
    sub_1BF4E7184();
    (*(v5 + 8))(v8, v23);

    sub_1BF38C9B4(v15, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    (*(v19 + 8))(v12, v18);
    v20 = 0;
    v21 = v24;
  }

  return (*(v19 + 56))(v21, v20, 1, v18);
}

uint64_t _s9ChronoKit35ExtensionSystemDataCacheKeyProviderCfd_0()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t ActivityExtensionSystemDataCacheKeyProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1BF4DE244(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 40))(v5, v6);
  sub_1BF4DDEB4(v7, a2);
}

uint64_t sub_1BF4DE31C()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t dispatch thunk of ExtensionSystemDataCacheKeyProvider.baseURL(for:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of ActivityExtensionSystemDataCacheKeyProvider.baseURL(for:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

void *sub_1BF4DE5EC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v16 = qword_1EDCA6868;
  v17 = sub_1BF4E8424();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = *(v0 + qword_1EDC9AF70);

  v19 = *(v0 + qword_1EDC9AF48);

  v20 = *(v0 + qword_1EDC9AFA8);

  v21 = *(v0 + qword_1EDC9AF80);

  v22 = *(v0 + qword_1EDC9AF98);

  v23 = *(v0 + qword_1EDC9AF58);

  v24 = qword_1EDC9AF50;
  v25 = sub_1BF4E7B54();
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v26 = *(v0 + qword_1EDC9AFB0);

  v27 = *(v0 + qword_1EDC9AFB8);

  v28 = *(v0 + qword_1EDC9AF68);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDC9AFC8));

  v29 = *(v0 + qword_1EDCA6870);

  v30 = *(v0 + qword_1EDCA6860);

  v31 = *(v0 + qword_1EDC9AF88);

  v32 = *(v0 + qword_1EDC9AF90);

  v33 = *(v0 + qword_1EDC9AF60);

  return v0;
}

char *PlaceholderStatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:expirationDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *(v11 + 48);
  v19 = *(v11 + 52);
  swift_allocObject();
  v20 = sub_1BF4DEEA0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  (*(*(a9 - 8) + 8))(a2, a9);
  (*(*(a8 - 8) + 8))(a1, a8);
  return v20;
}

char *PlaceholderStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:expirationDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = sub_1BF4DEEA0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  (*(*(a9 - 8) + 8))(a2, a9);
  (*(*(a8 - 8) + 8))(a1, a8);
  return v14;
}

char *PlaceholderStatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v13 + 48);
  v20 = *(v13 + 52);
  swift_allocObject();
  v21 = sub_1BF4DEEA0(a1, a2, a3, a4, a5, a6, a7, a10, a11, a12, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v21;
}

char *PlaceholderStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = sub_1BF4DEEA0(a1, a2, a3, a4, a5, a6, a7, a10, a11, a12, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v16;
}

uint64_t sub_1BF4DEC44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(v2 + 176) == 1)
  {
    v5 = *(v2 + qword_1EDC99040);
    v8 = a1;
    v6 = (*(**(v5 + 16) + 152))(&v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

char *PlaceholderStatefulStore.deinit()
{
  v0 = sub_1BF4DE5EC();
  v1 = *&v0[qword_1EDC99B78];

  v2 = qword_1EDC99B70;
  v3 = sub_1BF4E7B54();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[qword_1EDCA6810 + 8];
  sub_1BF3B0E64(*&v0[qword_1EDCA6810]);
  v5 = *&v0[qword_1EDCA6808 + 8];
  sub_1BF3B0E64(*&v0[qword_1EDCA6808]);
  v6 = *&v0[qword_1EDC99040];

  return v0;
}

uint64_t PlaceholderStatefulStore.__deallocating_deinit()
{
  v0 = sub_1BF4DE5EC();
  v1 = *&v0[qword_1EDC99B78];

  v2 = qword_1EDC99B70;
  v3 = sub_1BF4E7B54();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[qword_1EDCA6810 + 8];
  sub_1BF3B0E64(*&v0[qword_1EDCA6810]);
  v5 = *&v0[qword_1EDCA6808 + 8];
  sub_1BF3B0E64(*&v0[qword_1EDCA6808]);
  v6 = *&v0[qword_1EDC99040];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1BF4DEEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a8;
  v26 = a6;
  v27 = a7;
  v24 = a1;
  v25 = a3;
  v23 = a10;
  v15 = sub_1BF4E7B54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CC8, &qword_1BF4F78A0);
  *(v11 + qword_1EDC99040) = sub_1BF4857B4(a2, a9);
  (*(v16 + 16))(v19, a4, v15);
  sub_1BF38E49C(a5, v29);
  *&v22 = a9;
  *(&v22 + 1) = v23;
  v20 = sub_1BF3E4870(v24, a2, v25, v19, v29, v26, v27, v28, v22, a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  (*(v16 + 8))(a4, v15);
  return v20;
}

uint64_t type metadata accessor for PlaceholderStatefulStore()
{
  result = qword_1EDC99030;
  if (!qword_1EDC99030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ControlsCacheManager.__allocating_init(subdirectory:cacheKeyProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for ControlsCacheURLProvider();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0x632D6F6E6F726863;
  v13[5] = 0xEF736C6F72746E6FLL;
  v17 = v12;
  v18 = &protocol witness table for ControlsCacheURLProvider;
  *&v16 = v13;
  type metadata accessor for ControlsCacheManager(0);
  v14 = swift_allocObject();
  *(v14 + 160) = a6 ^ 1;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  sub_1BF38E610(a3, v14 + 40);
  sub_1BF38E610(&v16, v14 + 80);
  sub_1BF38E610(a4, v14 + 120);
  *(v14 + 16) = a5;

  return v14;
}

uint64_t sub_1BF4DF20C(void *a1)
{
  v34 = type metadata accessor for ControlCacheKey();
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v35 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v29 - v7;
  v9 = sub_1BF4E7194();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v32 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v1;
  sub_1BF38E49C(v1 + 40, v36);
  v13 = v37;
  v12 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v15 = a1[3];
  v14 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v18 = v14 + 40;
  v17 = *(v14 + 40);
  v29[1] = v16;
  v30 = v17;
  v31 = v14;
  v19 = v17(v15, v14);
  v20 = v13;
  v21 = v9;
  v22 = v39;
  (*(v12 + 48))(v19, v20, v12);

  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    sub_1BF38C9B4(v8, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError);
    swift_allocError();
    *v23 = v30(v15, v31);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v24 = v32;
    (*(v22 + 32))(v32, v8, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    sub_1BF38E49C(v33 + 80, v36);
    v25 = v37;
    v26 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v27 = v35;
    (*(v22 + 16))(v35, v24, v21);
    *(v27 + *(v34 + 20)) = 0;
    v18 = (*(v26 + 16))(v27, v25, v26);
    (*(v22 + 8))(v24, v21);
    sub_1BF4E0EF0(v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  return v18;
}

uint64_t sub_1BF4DF5B0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BE0, &qword_1BF4ED500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ControlCacheKey();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38E49C(v3 + 40, v20);
  v14 = v21;
  v15 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v15 + 56))(a1, v14, v15);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BF38C9B4(v8, &qword_1EBDD8BE0, &qword_1BF4ED500);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError);
    swift_allocError();
    *v16 = [*a1 extensionIdentity];
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    sub_1BF4E0F4C(v8, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    sub_1BF38E49C(v3 + 80, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CD8, &unk_1BF4F78A8);
    type metadata accessor for ControlsCacheURLProvider();
    swift_dynamicCast();
    sub_1BF4C76DC(v13, v19, v18);

    return sub_1BF4E0EF0(v13);
  }
}

uint64_t sub_1BF4DF864@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BE0, &qword_1BF4ED500);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ControlCacheKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = [*a1 extensionIdentity];
  v16 = [v15 isRemote];

  if (v16)
  {
    sub_1BF38E49C(v24 + 40, v25);
    v17 = v26;
    v18 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v18 + 56))(a1, v17, v18);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1BF38C9B4(v7, &qword_1EBDD8BE0, &qword_1BF4ED500);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      type metadata accessor for ControlsCacheManager.CacheManagementError(0);
      sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError);
      swift_allocError();
      *v19 = [v14 extensionIdentity];
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      sub_1BF4E0F4C(v7, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      sub_1BF38E49C(v24 + 80, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CD8, &unk_1BF4F78A8);
      type metadata accessor for ControlsCacheURLProvider();
      swift_dynamicCast();
      sub_1BF4C7860(v13, a2);

      sub_1BF4E0EF0(v13);
      v22 = sub_1BF4E7194();
      return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
    }
  }

  else
  {
    v21 = sub_1BF4E7194();
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }
}

uint64_t sub_1BF4DFBCC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  result = sub_1BF4DF5B0(a1, a2, &v32 - v13);
  if (!v3)
  {
    sub_1BF4E7134();
    if (sub_1BF4E7024() == 0x656C646E7562 && v16 == 0xE600000000000000)
    {

      return (*(v8 + 8))(v14, v7);
    }

    v17 = sub_1BF4E9734();

    if (v17)
    {
      return (*(v8 + 8))(v14, v7);
    }

    if (qword_1EBDD8578 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF4E7B54();
    __swift_project_value_buffer(v18, qword_1EBDE1ED8);
    v37 = *(v8 + 16);
    v37(v11, v14, v7);
    v19 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = v21;
      v35 = swift_slowAlloc();
      v38 = v35;
      *v21 = 136446210;
      sub_1BF4E10F8(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
      v33 = v20;
      v32 = sub_1BF4E96A4();
      v36 = v8 + 16;
      v23 = v22;
      v24 = *(v8 + 8);
      v24(v11, v7);
      v25 = v24;
      v26 = sub_1BF38D65C(v32, v23, &v38);

      v27 = v34;
      *(v34 + 1) = v26;
      v28 = v27;
      _os_log_impl(&dword_1BF389000, v19, v33, "assetLibraryURL did not return a path contained in a bundle: %{public}s", v27, 0xCu);
      v29 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1BFB5A5D0](v29, -1, -1);
      MEMORY[0x1BFB5A5D0](v28, -1, -1);
    }

    else
    {

      v30 = *(v8 + 8);
      v30(v11, v7);
      v25 = v30;
    }

    type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError);
    swift_allocError();
    v37(v31, v14, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v25(a3, v7);
    return (v25)(v14, v7);
  }

  return result;
}

uint64_t sub_1BF4E0068@<X0>(id *a1@<X3>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F38, &qword_1BF4F7A30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  result = sub_1BF4E83C4();
  if (!v2)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
    sub_1BF4E1608();
    sub_1BF4E7034();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v8, 0, 1, v10);
    sub_1BF4E7614();
    v12 = v15[0];
    (*(v11 + 8))(v8, v10);
    v13 = sub_1BF4E095C(a1);
    sub_1BF38E610(&v16, v15);
    type metadata accessor for ControlEntryContent();
    v14 = swift_allocObject();
    result = sub_1BF38E610(v15, v14 + 16);
    *(v14 + 56) = v12;
    *(v14 + 64) = v13;
    *a2 = v14;
  }

  return result;
}

uint64_t sub_1BF4E02BC(id *a1)
{
  v3 = v1;
  v63 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - v7;
  v9 = sub_1BF4E8424();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF4E7194();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  if (*(v3 + 160) != 1)
  {
    v26 = type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError);
    swift_allocError();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  v56 = v10;
  v57 = v9;
  v58 = v20;
  v59 = v19;
  v55 = v8;
  sub_1BF38E49C(v3 + 40, &v60);
  v23 = v61;
  v24 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, v61);
  v25 = (v24[5])(a1, v23, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(&v60);
  if ((v25 & 1) == 0)
  {
    v26 = type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError);
    swift_allocError();
    sub_1BF4700C0(a1, v30);
    goto LABEL_7;
  }

  v26 = v3;
  sub_1BF3F5278(a1, v22);
  if (!v2)
  {
    swift_beginAccess();
    sub_1BF38E49C(v3 + 120, &v60);
    v27 = v62;
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    v28 = [*a1 extensionIdentity];
    v29 = v27[2];
    v54 = v28;
    v29();

    __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    v33 = *(v3 + 16);
    sub_1BF4E7134();
    v34 = sub_1BF4E7094();
    v35 = *(v58 + 8);
    v53 = v58 + 8;
    v54 = v35;
    (v35)(v17, v59);
    *&v60 = 0;
    v36 = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v60];

    v26 = v60;
    if (v36)
    {
      v37 = v60;
      *&v60 = ControlEntryKey.description.getter();
      *(&v60 + 1) = v38;
      MEMORY[0x1BFB58C90](45, 0xE100000000000000);
      sub_1BF4E10F8(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
      v39 = v59;
      v40 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v40);

      v53 = *(&v60 + 1);
      v54 = v60;
      v58 = *(v58 + 32);
      (v58)(v17, v22, v39);
      v42 = v55;
      v41 = v56;
      v43 = v57;
      (*(v56 + 32))(v55, v13, v57);
      (*(v41 + 56))(v42, 0, 1, v43);
      v44 = *(v3 + 16);
      v61 = sub_1BF3C82A8();
      v62 = &off_1F3DF3DC0;
      *&v60 = v44;
      v45 = type metadata accessor for DataProtectedArchiveFilePromise(0);
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      v26 = swift_allocObject();
      v48 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
      v49 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
      (*(*(v49 - 8) + 56))(v26 + v48, 1, 1, v49);
      *(v26 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
      v50 = v53;
      *(v26 + 16) = v54;
      *(v26 + 24) = v50;
      (v58)(v26 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v17, v39);
      sub_1BF38E610(&v60, v26 + 32);
      sub_1BF3C846C(v42, v26 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel);
      v51 = v44;
    }

    else
    {
      v52 = v60;
      sub_1BF4E6FF4();

      swift_willThrow();
      (*(v56 + 8))(v13, v57);
      (v54)(v22, v59);
    }
  }

LABEL_8:
  v31 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t sub_1BF4E095C(id *a1)
{
  v2 = v1;
  v4 = sub_1BF4E8454();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - v12;
  v14 = sub_1BF4E7194();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v39 = MEMORY[0x1E69E7CD0];
  sub_1BF3F5278(a1, v13);
  (*(v15 + 56))(v13, 0, 1, v14);
  (*(v15 + 32))(v21, v13, v14);
  v22 = URL.hasRequiresReloadExtendedAttribute.getter();
  (*(v15 + 8))(v21, v14);
  if (v22)
  {
    v23 = *MEMORY[0x1E6985A08];
    v25 = v37;
    v24 = v38;
    v26 = *(v37 + 104);
    v35 = v2;
    v27 = v9;
    v28 = v36;
    v26(v36, v23, v38);
    v29 = v28;
    v9 = v27;
    sub_1BF4AC8C8(v27, v29);
    (*(v25 + 8))(v27, v24);
  }

  sub_1BF3F5278(a1, v18);
  v30 = URL.hasRemovedFromStoreExtendedAttribute.getter();
  (*(v15 + 8))(v18, v14);
  if (v30)
  {
    v32 = v36;
    v31 = v37;
    v33 = v38;
    (*(v37 + 104))(v36, *MEMORY[0x1E6985A10], v38);
    sub_1BF4AC8C8(v9, v32);
    (*(v31 + 8))(v9, v33);
  }

  return v39;
}

uint64_t ControlsCacheManager.__allocating_init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int128 *a5, uint64_t a6, char a7)
{
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1BF4E115C(a1, a2, a3, v20, a5, a6, a7, v24[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v22;
}

uint64_t ControlsCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  *(v7 + 160) = a7 ^ 1;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_1BF38E610(a3, v7 + 40);
  sub_1BF38E610(a4, v7 + 80);
  sub_1BF38E610(a5, v7 + 120);
  *(v7 + 16) = a6;
  return v7;
}

uint64_t sub_1BF4E0EF0(uint64_t a1)
{
  v2 = type metadata accessor for ControlCacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF4E0F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCacheKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ControlsCacheManager.deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  return v0;
}

uint64_t ControlsCacheManager.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E1048@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5[3] = a1;
  result = sub_1BF3F54FC(a1, sub_1BF4E166C, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BF4E10F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF4E115C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a9;
  v22 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a4, a9);
  type metadata accessor for ControlsCacheManager(0);
  v18 = swift_allocObject();
  *(v18 + 160) = a7 ^ 1;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  sub_1BF38E610(a3, v18 + 40);
  sub_1BF38E610(&v20, v18 + 80);
  sub_1BF38E610(a5, v18 + 120);
  *(v18 + 16) = a6;
  return v18;
}

uint64_t sub_1BF4E1244(uint64_t a1)
{
  *(a1 + 8) = sub_1BF4E10F8(&qword_1EDC99CA8, type metadata accessor for ControlsCacheManager);
  result = sub_1BF4E10F8(qword_1EDC99CB0, type metadata accessor for ControlsCacheManager);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BF4E12C8(uint64_t a1)
{
  result = sub_1BF4E10F8(qword_1EDC9F600, type metadata accessor for ControlsCacheManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF4E1538()
{
  result = sub_1BF4E9034();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ControlEntryKey();
    if (v2 <= 0x3F)
    {
      result = sub_1BF4E7194();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BF4E1608()
{
  result = qword_1EDC9FD98;
  if (!qword_1EDC9FD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8F40, &qword_1BF4EF090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FD98);
  }

  return result;
}

uint64_t FixedDataProtectionProvider.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  v4 = sub_1BF4E8424();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_1BF4E176C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t FixedDataProtectionProvider.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FixedDataProtectionProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ClientDataProtectionLevelProvider.init(defaultLevel:extensionProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
  v7 = sub_1BF4E8424();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  return v2;
}

uint64_t ClientDataProtectionLevelProvider.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider, &qword_1EBDD9CF0, &qword_1BF4F7A38);
  return v0;
}

uint64_t ClientDataProtectionLevelProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider, &qword_1EBDD9CF0, &qword_1BF4F7A38);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E1B50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_1BF4E8424();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v11);
  v14 = *a2;
  v15 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v14 + v15, v13, v8);
  return swift_endAccess();
}

uint64_t sub_1BF4E1C80(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t ExtensionDataProtectionLevelProvider.__allocating_init(extensionManager:default:)(__int128 *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1BF38E610(a1, v7 + 16);
  v8 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
  v9 = sub_1BF4E8424();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t ExtensionDataProtectionLevelProvider.init(extensionManager:default:)(__int128 *a1, uint64_t a2)
{
  sub_1BF38E610(a1, v2 + 16);
  v4 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
  v5 = sub_1BF4E8424();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t ExtensionDataProtectionLevelProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ExtensionDataProtectionLevelProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E21A0()
{
  result = sub_1BF4E8424();
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

uint64_t _ReloadStateKey.__allocating_init(extensionBundleIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v11 - 8) + 32))(v9 + v10, a1, v11);
  v12 = (v9 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  *v12 = a2;
  v12[1] = a3;
  return v9;
}

uint64_t _ReloadState.__allocating_init(key:dateReloadRequested:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  v9 = sub_1BF4E7334();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + 16) = a1;
  v10 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3AC398(a2, v7 + v10);
  swift_endAccess();
  return v7;
}

uint64_t _ReloadStateKey.extensionBundleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _ReloadStateKey.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);

  return v1;
}

uint64_t _ReloadStateKey.init(extensionBundleIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  v9 = (v3 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  *v9 = a2;
  v9[1] = a3;
  return v3;
}

uint64_t sub_1BF4E2654()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD00000000000002CLL, 0x80000001BF4FF720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x3D646E696B202CLL, 0xE700000000000000);
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7105633;
  }

  MEMORY[0x1BFB58C90](v2, v3);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF4E27B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8884();
  if (!*(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    return sub_1BF4E9824();
  }

  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  sub_1BF4E9824();

  return sub_1BF4E89F4();
}

uint64_t _ReloadStateKey.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);

  return v0;
}

uint64_t _ReloadStateKey.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E29EC()
{
  sub_1BF4E9804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8884();
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF4E2AE0()
{
  v1 = *v0;
  sub_1BF4E9804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8884();
  if (*(v1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF4E2BD4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8884();
  if (!*(v1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    return sub_1BF4E9824();
  }

  v2 = *(v1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  sub_1BF4E9824();

  return sub_1BF4E89F4();
}

uint64_t sub_1BF4E2CCC()
{
  sub_1BF4E9804();
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8884();
  if (*(v1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF4E2DF4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1BF3ABF74(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3AC398(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1BF4E2EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  return sub_1BF3ABF74(v1 + v3, a1);
}

uint64_t sub_1BF4E2F0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3AC398(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t _ReloadState.init(key:dateReloadRequested:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  v6 = sub_1BF4E7334();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + 16) = a1;
  v7 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3AC398(a2, v2 + v7);
  swift_endAccess();
  return v2;
}

uint64_t _ReloadState.deinit()
{
  v1 = *(v0 + 16);

  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested, &qword_1EBDD9B00, &qword_1BF4F1E50);
  return v0;
}

uint64_t _ReloadState.__deallocating_deinit()
{
  v1 = v0[2];

  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E3150(uint64_t a1)
{
  v2 = v1;
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](49);
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  v36 = v4;
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FF750);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x200A45524548570ALL, 0xEB00000000202020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8B54();

  v7 = sub_1BF3D8148(0, 0xE000000000000000);
  v9 = v8;
  v11 = v10;
  *&v29 = 0x676E69646E696240;
  *(&v29 + 1) = 0xE800000000000000;
  v37 = *(v4 + 16) + 1;
  v12 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v12);

  v13 = v29;
  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v7, v9, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29 = v4;
  sub_1BF3D6680(v7, v9, v11, v13, *(&v13 + 1), isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v7, v9, v11);

  MEMORY[0x1BFB58C90](0x2020200A444E4120, 0xE900000000000020);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v16 = *(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  if (v16)
  {
    v17 = *(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    *(&v30 + 1) = MEMORY[0x1E69E6158];
    v31 = &off_1F3DF00A0;
    *&v29 = v17;
    *(&v29 + 1) = v16;
    sub_1BF38E610(&v29, v32);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    v18 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v33 = sub_1BF4E4B78();
    v34 = &off_1F3DF0088;
    v32[0] = v18;
  }

  v19 = v33;
  v20 = v34;
  v21 = __swift_project_boxed_opaque_existential_1(v32, v33);

  sub_1BF478C08(v21, v35, v19, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v22 = v36;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  v23 = sub_1BF3E4F48(v22);
  if (v28)
  {

    return v2;
  }

  v24 = v23;

  sub_1BF4E4EF4(v24);
  v26 = v25;

  if (v26 >> 62)
  {
    if (sub_1BF4E9204())
    {
      goto LABEL_9;
    }

LABEL_14:

    return 0;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1BFB59570](0, v26);
    goto LABEL_12;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v26 + 32);

LABEL_12:

    return v2;
  }

  __break(1u);
LABEL_18:
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF4E3648()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](33);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1BF3E4F48(v1);
    if (v0)
    {

      return v7;
    }

    v9 = v8;

    sub_1BF4E4EF4(v9);
    v11 = v10;

    v7 = sub_1BF3DB09C(MEMORY[0x1E69E7CC0]);
    if (v11 >> 62)
    {
      goto LABEL_36;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_37:

      return v7;
    }

LABEL_6:
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB59570](v13, v11);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v16 = *(v11 + 8 * v13 + 32);

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v12 = sub_1BF4E9204();
          if (!v12)
          {
            goto LABEL_37;
          }

          goto LABEL_6;
        }
      }

      v18 = *(v16 + 16);
      if ((v7 & 0xC000000000000001) != 0)
      {
        if (v7 >= 0)
        {
          v7 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v19 = *(v16 + 16);

        v20 = sub_1BF4E9204();
        if (__OFADD__(v20, 1))
        {
          goto LABEL_34;
        }

        v7 = sub_1BF4E4368(v7, v20 + 1);
      }

      else
      {
        v21 = *(v16 + 16);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_1BF3ECA90(v18);
      v25 = *(v7 + 16);
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_33;
      }

      v29 = v24;
      if (*(v7 + 24) < v28)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v33 = v23;
      sub_1BF4A4898();
      v23 = v33;
      if (v29)
      {
LABEL_7:
        v14 = *(v7 + 56);
        v15 = *(v14 + 8 * v23);
        *(v14 + 8 * v23) = v16;

        goto LABEL_8;
      }

LABEL_24:
      *(v7 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      *(*(v7 + 48) + 8 * v23) = v18;
      *(*(v7 + 56) + 8 * v23) = v16;

      v31 = *(v7 + 16);
      v27 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v27)
      {
        goto LABEL_35;
      }

      *(v7 + 16) = v32;
LABEL_8:
      ++v13;
      if (v17 == v12)
      {
        goto LABEL_37;
      }
    }

    sub_1BF4A1318(v28, isUniquelyReferenced_nonNull_native);
    v23 = sub_1BF3ECA90(v18);
    if ((v29 & 1) != (v30 & 1))
    {
      type metadata accessor for _ReloadStateKey(0);
      sub_1BF4E9794();
      __break(1u);
      goto LABEL_39;
    }

LABEL_23:
    if (v29)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_39:
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t ChronoMetadataStore.ReloadStateStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E3B30(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v5 = *(Strong + 24);
  v6 = Strong;
  os_unfair_lock_lock(*(v5 + 16));
  v7 = *(v6 + 64);
  os_unfair_lock_unlock(*(v5 + 16));

  if (!v7)
  {
    __break(1u);
LABEL_11:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  v40 = v2;
  v44 = 0;
  v45 = 0xE000000000000000;
  v8 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](63);
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  v49 = v8;
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8B54();

  v13 = sub_1BF3D8148(0, 0xE000000000000000);
  v15 = v14;
  v17 = v16;
  *&v41 = 0x676E69646E696240;
  *(&v41 + 1) = 0xE800000000000000;
  v50 = *(v8 + 16) + 1;
  v18 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v18);

  v19 = v41;
  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v13, v15, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = v8;
  sub_1BF3D6680(v13, v15, v17, v19, *(&v19 + 1), isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v13, v15, v17);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v21 = *(a2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  if (v21)
  {
    v22 = *(a2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    *(&v42 + 1) = MEMORY[0x1E69E6158];
    v43 = &off_1F3DF00A0;
    *&v41 = v22;
    *(&v41 + 1) = v21;
    sub_1BF38E610(&v41, &v44);
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v23 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v46 = sub_1BF4E4B78();
    v47 = &off_1F3DF0088;
    v44 = v23;
  }

  v24 = v46;
  v25 = v47;
  v26 = __swift_project_boxed_opaque_existential_1(&v44, v46);

  sub_1BF478C08(v26, v48, v24, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF4E71F4();
  v28 = sub_1BF3D833C(v27);
  v30 = v29;
  v32 = v31;
  v44 = 0x676E69646E696240;
  v45 = 0xE800000000000000;
  *&v41 = *(v49 + 16) + 1;
  v33 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v33);

  v34 = v44;
  v35 = v45;
  MEMORY[0x1BFB58C90](v44, v45);
  sub_1BF3D8840(v28, v30, v32);
  v36 = v49;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v36;
  sub_1BF3D6680(v28, v30, v32, v34, v35, v37);

  sub_1BF3D88B8(v28, v30, v32);
  v38 = v44;
  v49 = v44;
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_11;
  }

  sub_1BF3E4F48(v38);

  if (!v40)
  {
  }

  return result;
}

uint64_t sub_1BF4E40F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A20, &unk_1BF4F7D20);
    v2 = sub_1BF4E94B4();
    v20 = v2;
    sub_1BF4E9414();
    v3 = sub_1BF4E9444();
    if (v3)
    {
      v4 = v3;
      sub_1BF4E79A4();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1BF4E7904();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1BF4A1034(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        sub_1BF4E5A38(&qword_1EBDD8B08, MEMORY[0x1E69C7338]);
        result = sub_1BF4E8874();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1BF4E9444();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1BF4E4368(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8740, &qword_1BF4EB260);
    v2 = sub_1BF4E94B4();
    v18 = v2;
    sub_1BF4E9414();
    if (sub_1BF4E9444())
    {
      type metadata accessor for _ReloadStateKey(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for _ReloadState(0);
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_1BF4A1318(v4 + 1, 1);
        }

        v2 = v18;
        v5 = *(v18 + 40);
        sub_1BF4E9804();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
        sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
        sub_1BF4E8884();
        if (*(v17 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
        {
          v6 = *(v17 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
          sub_1BF4E9824();
          sub_1BF4E89F4();
        }

        else
        {
          sub_1BF4E9824();
        }

        result = sub_1BF4E9844();
        v8 = v18 + 64;
        v9 = -1 << *(v18 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v18 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v10) & ~*(v18 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v11 == v13;
            if (v11 == v13)
            {
              v11 = 0;
            }

            v12 |= v14;
            v15 = *(v8 + 8 * v11);
          }

          while (v15 == -1);
          v3 = __clz(__rbit64(~v15)) + (v11 << 6);
        }

        *(v8 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v18 + 48) + 8 * v3) = v17;
        *(*(v18 + 56) + 8 * v3) = v16;
        ++*(v18 + 16);
      }

      while (sub_1BF4E9444());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t _s9ChronoKit15_ReloadStateKeyC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v13 == v11 && v14 == v12)
  {
  }

  else
  {
    v4 = sub_1BF4E9734();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v6 = *(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  v7 = *(a2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  v5 = (v6 | v7) == 0;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind) == *(a2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind) && v6 == v7)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BF4E9734();
    }
  }

  return v5 & 1;
}

uint64_t _s9ChronoKit12_ReloadStateC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  if ((_s9ChronoKit15_ReloadStateKeyC2eeoiySbAC_ACtFZ_0(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    v27 = 0;
    return v27 & 1;
  }

  v33 = v8;
  v20 = v5;
  v21 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3ABF74(a1 + v21, v19);
  v22 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  v23 = *(v9 + 48);
  sub_1BF3ABF74(v19, v12);
  v24 = a2 + v22;
  v25 = v20;
  sub_1BF3ABF74(v24, &v12[v23]);
  v26 = *(v20 + 48);
  if (v26(v12, 1, v4) != 1)
  {
    sub_1BF3ABF74(v12, v16);
    if (v26(&v12[v23], 1, v4) != 1)
    {
      v28 = *(v20 + 32);
      v29 = v33;
      v28(v33, &v12[v23], v4);
      sub_1BF4E5A38(&qword_1EDC9F0C0, MEMORY[0x1E6969530]);
      v27 = sub_1BF4E88C4();
      v30 = *(v25 + 8);
      v30(v29, v4);
      sub_1BF38C9B4(v19, &qword_1EBDD9B00, &qword_1BF4F1E50);
      v30(v16, v4);
      sub_1BF38C9B4(v12, &qword_1EBDD9B00, &qword_1BF4F1E50);
      return v27 & 1;
    }

    sub_1BF38C9B4(v19, &qword_1EBDD9B00, &qword_1BF4F1E50);
    (*(v20 + 8))(v16, v4);
    goto LABEL_8;
  }

  sub_1BF38C9B4(v19, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v26(&v12[v23], 1, v4) != 1)
  {
LABEL_8:
    sub_1BF38C9B4(v12, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    v27 = 0;
    return v27 & 1;
  }

  sub_1BF38C9B4(v12, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v27 = 1;
  return v27 & 1;
}

unint64_t sub_1BF4E4B78()
{
  result = qword_1EDC962F8;
  if (!qword_1EDC962F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC962F8);
  }

  return result;
}

uint64_t sub_1BF4E4BC4()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](159);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FF890);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000023, 0x80000001BF4FF8B0);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FDC40);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4FDC60);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FDC80);
  sub_1BF3E4F48(v1);

  if (!v0)
  {
  }

  return result;
}

void sub_1BF4E4EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v86 = &v76 - v4;
  v85 = sub_1BF4E7334();
  v5 = *(v85 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v76 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v12 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v83 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v76 - v16;
  v97 = MEMORY[0x1E69E7CC0];
  v17 = *(a1 + 16);
  if (!v17)
  {
    v90 = MEMORY[0x1E69E7CC0];
    return;
  }

  v18 = 0;
  v92 = a1 + 32;
  v87 = (v15 + 48);
  v80 = (v15 + 16);
  v81 = (v15 + 32);
  v79 = (v15 + 8);
  v78 = (v5 + 32);
  v77 = (v5 + 56);
  v90 = MEMORY[0x1E69E7CC0];
  v88 = v11;
  v93 = v17;
  do
  {
    if (v18 >= v17)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_31;
    }

    v20 = *(v92 + 8 * v18);
    v94 = v18 + 1;

    v21 = sub_1BF4E92F4();
    v23 = v22;
    v24 = (v20 + 64);
    v25 = *(v20 + 16) + 1;
    do
    {
      if (!--v25)
      {

LABEL_21:

        v17 = v93;
        goto LABEL_22;
      }

      v26 = *(v24 - 2);
      v27 = *(v24 - 1);
      v28 = *v24;
      if (*(v24 - 4) == v21 && *(v24 - 3) == v23)
      {
        break;
      }

      v24 += 40;
    }

    while ((sub_1BF4E9734() & 1) == 0);

    sub_1BF3D8840(v26, v27, v28);

    v30 = sub_1BF4244EC(v26, v27, v28);
    v32 = v31;
    sub_1BF3D88B8(v26, v27, v28);
    if (!v32)
    {
      goto LABEL_21;
    }

    v33 = sub_1BF4E92F4();
    v35 = sub_1BF48063C(v33, v34, v20);
    v37 = v36;
    v39 = v38;
    v40 = ~v38;

    if (!v40 || (v41 = sub_1BF4244EC(v35, v37, v39), v43 = v42, sub_1BF3DB1FC(v35, v37, v39), !v43))
    {
LABEL_18:

      goto LABEL_21;
    }

    v91 = v41;
    v44 = sub_1BF4E92F4();
    v46 = sub_1BF48063C(v44, v45, v20);
    v48 = v47;
    v50 = v49;
    v51 = ~v49;

    if (!v51 || (sub_1BF424634(v46, v48, v50), v53 = v52, sub_1BF3DB1FC(v46, v48, v50), (v53 & 1) != 0))
    {

      goto LABEL_18;
    }

    v95 = v30;
    v96 = v32;
    sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0);
    v55 = v88;
    v54 = v89;
    sub_1BF4E8B64();
    v56 = (*v87)(v55, 1, v54);
    v17 = v93;
    if (v56 == 1)
    {

      sub_1BF38C9B4(v55, &unk_1EBDD92E0, &unk_1BF4F08D0);
    }

    else
    {
      v76 = *v81;
      v57 = v82;
      v58 = v89;
      v76(v82, v55, v89);
      v59 = v83;
      (*v80)(v83, v57, v58);
      v60 = type metadata accessor for _ReloadStateKey(0);
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      v63 = swift_allocObject();
      v90 = v63;
      v76((v63 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier), v59, v58);
      v64 = (v63 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
      *v64 = v91;
      v64[1] = v43;
      v65 = v84;
      sub_1BF4E71E4();

      (*v79)(v57, v58);
      v67 = v85;
      v66 = v86;
      (*v78)(v86, v65, v85);
      v68 = *v77;
      (*v77)(v66, 0, 1, v67);
      v69 = type metadata accessor for _ReloadState(0);
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      v72 = swift_allocObject();
      v68(v72 + OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested, 1, 1, v67);
      *(v72 + 16) = v90;
      v73 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
      swift_beginAccess();
      sub_1BF3AC398(v66, v72 + v73);
      v74 = swift_endAccess();
      MEMORY[0x1BFB58DD0](v74);
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v75 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();
      v90 = v97;
    }

LABEL_22:
    v18 = v94;
  }

  while (v19 != v17);
}

void sub_1BF4E5688()
{
  sub_1BF464F94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BF4E57E0()
{
  sub_1BF3C363C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BF4E5A38(unint64_t *a1, void (*a2)(uint64_t))
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

void DuetWidgetViewIdentity.init(configuration:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = a1;
  v3 = a1;
  v4 = sub_1BF3B253C(v3);
  v6 = v5;
  *a2 = v4;
  a2[1] = v5;

  v7 = [v3 uniqueIdentifier];
  sub_1BF4E8914();

  sub_1BF399080();
  v8 = sub_1BF4E9134();
  v10 = v9;

  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v4, v6);

  a2[3] = v8;
  a2[4] = v10;
}

uint64_t static DuetWidgetViewIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

uint64_t DuetWidgetViewIdentity.budgetIdentity.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t DuetWidgetViewIdentity.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t static DuetWidgetViewIdentity.identifierString(from:uniqueViewID:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BF399080();
  v4 = sub_1BF4E9134();
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v1, v2);
  return v4;
}

uint64_t DuetWidgetViewIdentity.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BF4E89F4();
}

uint64_t DuetWidgetViewIdentity.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4E5D30()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4E5D7C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BF4E89F4();
}

uint64_t sub_1BF4E5D84()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4E5DCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

unint64_t sub_1BF4E5E00()
{
  result = qword_1EBDD9CF8;
  if (!qword_1EBDD9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9CF8);
  }

  return result;
}

uint64_t PushToken.init(subscriptionIdentifier:environmentName:topic:token:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 16);
  v18 = *(type metadata accessor for PushToken() + 32);
  v19 = sub_1BF4E7334();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = v15;
  *(a9 + 56) = v16;
  *(a9 + 64) = v17;
  *a9 = a6;
  *(a9 + 8) = a7;

  return sub_1BF3AC398(a8, a9 + v18);
}

uint64_t type metadata accessor for PushToken()
{
  result = qword_1EDC96538;
  if (!qword_1EDC96538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PushToken.token.getter()
{
  v1 = *v0;
  sub_1BF3D8864(*v0, *(v0 + 8));
  return v1;
}

uint64_t PushToken.token.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1BF3B03C0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PushToken.subscriptionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PushToken.subscriptionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PushToken.environmentName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PushToken.environmentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PushToken.topic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t PushToken.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t PushToken.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushToken() + 32);

  return sub_1BF3ABF74(v3, a1);
}

uint64_t PushToken.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PushToken() + 32);

  return sub_1BF3AC398(a1, v3);
}

uint64_t PushToken.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v18 = sub_1BF407D50(*v0, *(v0 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v6 = sub_1BF4E8894();
  v8 = v7;

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1BF4E92E4();
  v9 = 0xD000000000000012;
  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FF8E0);
  MEMORY[0x1BFB58C90](v1[2], v1[3]);
  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FF900);
  MEMORY[0x1BFB58C90](v1[4], v1[5]);
  MEMORY[0x1BFB58C90](0x3A6369706F74203BLL, 0xE900000000000020);
  v10 = *(v0 + 56);
  if (*(v0 + 64))
  {
    v11 = "extensionIdentity: ";
  }

  else
  {
    v9 = 0xD000000000000013;
    v11 = "; subscriptionType: ";
  }

  v16 = *(v0 + 48);
  v17 = v10;

  MEMORY[0x1BFB58C90](v9, v11 | 0x8000000000000000);

  MEMORY[0x1BFB58C90](v16, v17);

  MEMORY[0x1BFB58C90](0x3A6E656B6F74203BLL, 0xE900000000000020);
  MEMORY[0x1BFB58C90](v6, v8);

  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FF920);
  v12 = type metadata accessor for PushToken();
  sub_1BF3ABF74(v0 + *(v12 + 32), v5);
  v13 = sub_1BF4E8994();
  MEMORY[0x1BFB58C90](v13);

  return v18;
}

BOOL _s9ChronoKit9PushTokenV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  if ((sub_1BF408374(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1BF4E9734() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 64);
  v18 = *(a2 + 64);
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    if (v17 != v18)
    {
      return 0;
    }

LABEL_14:
    v21 = *(type metadata accessor for PushToken() + 32);
    v22 = *(v13 + 48);
    sub_1BF3ABF74(a1 + v21, v16);
    sub_1BF3ABF74(a2 + v21, &v16[v22]);
    v23 = *(v5 + 48);
    if (v23(v16, 1, v4) == 1)
    {
      if (v23(&v16[v22], 1, v4) == 1)
      {
        sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
        return 1;
      }
    }

    else
    {
      sub_1BF3ABF74(v16, v12);
      if (v23(&v16[v22], 1, v4) != 1)
      {
        (*(v5 + 32))(v8, &v16[v22], v4);
        sub_1BF4E68E8();
        v24 = sub_1BF4E88C4();
        v25 = *(v5 + 8);
        v25(v8, v4);
        v25(v12, v4);
        sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
        return (v24 & 1) != 0;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1BF38C9B4(v16, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    return 0;
  }

  v19 = sub_1BF4E9734();
  result = 0;
  if ((v19 & 1) != 0 && ((v17 ^ v18) & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_1BF4E6858()
{
  sub_1BF3C363C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BF4E68E8()
{
  result = qword_1EDC9F0C0;
  if (!qword_1EDC9F0C0)
  {
    sub_1BF4E7334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F0C0);
  }

  return result;
}

void _CHDMonotonicNSEC_cold_1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint64_t _CHDMonotonicNSEC(CHDMonotonicTime, char *)"}];
  [v2 handleFailureInFunction:v3 file:@"CHDMonotonicTimer.m" lineNumber:26 description:{@"failed to decompose %s %llu", v1, v0}];
}

void _CHDMonotonicNSEC_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint64_t _CHDMonotonicNSEC(CHDMonotonicTime, char *)"}];
  [v6 handleFailureInFunction:v7 file:@"CHDMonotonicTimer.m" lineNumber:27 description:{@"expected clock of %s %llu to be DISPATCH_CLOCKID_MONOTONIC but got %lu", a2, a3, *a1}];
}

void _CHDMonotonicNSEC_cold_3()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint64_t _CHDMonotonicNSEC(CHDMonotonicTime, char *)"}];
  [v4 handleFailureInFunction:v5 file:@"CHDMonotonicTimer.m" lineNumber:28 description:{@"unexpected nsecs of %s %llu as 0 means *now* to dispatch but we use only concrete times", v3, v2}];

  *v0 = *v1;
}