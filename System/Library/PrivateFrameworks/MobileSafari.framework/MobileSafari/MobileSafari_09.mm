uint64_t _s4ItemCMa()
{
  result = qword_1EA9D3650;
  if (!qword_1EA9D3650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B97A1DC(uint64_t a1)
{
  v21 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v18 = &v17 - v2;
  v3 = sub_18BC1F538();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1F418();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1FA08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F7D8();
  sub_18BC1F9B8();
  sub_18BC1E3F8();
  sub_18BC1F7E8();
  v22[3] = v10;
  v22[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v22);
  (*(v11 + 16))(boxed_opaque_existential_0Tm, v13, v10);
  MEMORY[0x18CFFC900](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  (*(v7 + 104))(v9, *MEMORY[0x1E69DBF28], v6);
  v15 = sub_18BC1F448();
  (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
  sub_18BC1F528();
  sub_18BC1F4C8();
  (*(v19 + 8))(v5, v20);
  (*(v7 + 8))(v9, v6);
  sub_18BC21458();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_18B97A5D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *a3;
  v8 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
  swift_beginAccess();
  sub_18B7CA054(v7 + v8, v6, &unk_1EA9DA1B0);
  v9 = _s5LayerVMa();
  (*(*(v9 - 8) + 48))(v6, 1, v9);
  sub_18B988BAC(v6, &unk_1EA9DA1B0);
  v12 = v7;
  sub_18B7B0AC0(0, &qword_1EA9D3580);
  _s4ItemCMa();
  sub_18BC1E1A8();
  v10 = sub_18BC212B8();

  return v10;
}

uint64_t sub_18B97A7AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3578);

  return sub_18B97A5D0(a1, a2, a3);
}

uint64_t sub_18B97A86C()
{
  v0 = sub_18BC1FA08();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = Strong;
  v6 = *&Strong[OBJC_IVAR___SFEffectViewEditorViewController_dataSource];
  if (v6)
  {
    v7 = v6;

    sub_18BC1EDC8();
    sub_18BC1FD38();

    if (v11[1])
    {
      v8 = v11[0];
      sub_18BC1F9E8();
      sub_18BC1E3F8();
      sub_18BC1F9B8();
      v11[3] = v0;
      v11[4] = MEMORY[0x1E69DC110];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v11);
      (*(v1 + 16))(boxed_opaque_existential_0Tm, v3, v0);
      MEMORY[0x18CFFC900](v11);

      return (*(v1 + 8))(v3, v0);
    }
  }

  else
  {
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18B97AA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_18BC20BD8() == a2 && v4 == a3)
  {
  }

  else
  {
    v6 = sub_18BC21FD8();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_18B7B0AC0(0, &qword_1EA9D3580);
  return sub_18BC212C8();
}

uint64_t sub_18B97AB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);

  return sub_18B97AA64(a1, a2, a3);
}

uint64_t sub_18B97ABC4(uint64_t a1)
{
  v2 = sub_18BC208F8();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC20928();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  sub_18B7B0AC0(0, &unk_1EA9D3A90);
  v20 = sub_18BC21348();
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v12, v8);
  *(v16 + v15) = v13;
  aBlock[4] = sub_18B988B04;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_287;
  v17 = _Block_copy(aBlock);

  sub_18BC20908();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_18B987260(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18B7B0B08(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  sub_18BC21908();
  v18 = v20;
  MEMORY[0x18CFFC850](0, v7, v4, v17);
  _Block_release(v17);

  (*(v23 + 8))(v4, v2);
  return (*(v21 + 8))(v7, v22);
}

uint64_t sub_18B97AFB8(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - v3;
  v51 = _s5LayerVMa();
  v5 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3AB0);
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3AB8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A88);
  result = sub_18BC1FBB8();
  v14 = result;
  v41 = *(result + 16);
  if (!v41)
  {
  }

  v15 = 0;
  v40 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v39 = v10 + 16;
  v35 = (v7 + 8);
  v48 = v5;
  v49 = (v5 + 48);
  v38 = (v10 + 8);
  v34 = v9;
  v33 = v10;
  v32 = v12;
  v31 = result;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      goto LABEL_34;
    }

    (*(v10 + 16))(v12, v40 + *(v10 + 72) * v15, v9);
    sub_18BC1FF48();
    if (v54)
    {
      break;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();

LABEL_5:
    ++v15;

    result = (*v38)(v12, v9);
    if (v15 == v41)
    {
    }
  }

  v53 = v57;
  v45 = v55;
  v46 = v58;
  v44 = v56;
  v43 = v54;
  v21 = v36;
  sub_18BC1FF38();
  v22 = v37;
  v23 = sub_18BC1FE38();
  result = (*v35)(v21, v22);
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v15;
    if (v24)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }

  result = sub_18BC219A8();
  v24 = result;
  v47 = v15;
  if (!result)
  {
LABEL_3:
    v16 = MEMORY[0x1E69E7CC0];
LABEL_4:

    v17 = OBJC_IVAR___SFEditableEffect_layers;
    v18 = v43;
    swift_beginAccess();
    *&v18[v17] = v16;

    v19 = swift_unknownObjectUnownedLoadStrong();
    Strong = v18;
    sub_18B9777D4();
    v44(v19, Strong);

    v9 = v34;
    v10 = v33;
    v12 = v32;
    v14 = v31;
    v15 = v47;
    goto LABEL_5;
  }

LABEL_10:
  v25 = 0;
  v52 = v23 & 0xC000000000000001;
  v16 = MEMORY[0x1E69E7CC0];
  while (v52)
  {
    result = MEMORY[0x18CFFD010](v25, v23);
    v26 = result;
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_32;
    }

LABEL_16:
    v28 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
    swift_beginAccess();
    sub_18B7CA054(v26 + v28, v4, &unk_1EA9DA1B0);

    if ((*v49)(v4, 1, v51) == 1)
    {
      result = sub_18B988BAC(v4, &unk_1EA9DA1B0);
    }

    else
    {
      sub_18B9875F0(v4, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_18B9B543C(0, v16[2] + 1, 1, v16);
      }

      v30 = v16[2];
      v29 = v16[3];
      if (v30 >= v29 >> 1)
      {
        v16 = sub_18B9B543C(v29 > 1, v30 + 1, 1, v16);
      }

      v16[2] = v30 + 1;
      result = sub_18B9875F0(v50, v16 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v30);
    }

    ++v25;
    if (v27 == v24)
    {
      goto LABEL_4;
    }
  }

  if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  v26 = *(v23 + 8 * v25 + 32);
  result = sub_18BC1E1A8();
  v27 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_16;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

Swift::Void __swiftcall SFEffectViewEditorViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = a1;
  v34 = sub_18BC1EDD8();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1EA98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  *&v15 = MEMORY[0x1EEE9AC00](v14 - 8).n128_u64[0];
  v17 = &v34 - v16;
  v37 = &v34 - v16;
  v38.receiver = v2;
  v38.super_class = SFEffectViewEditorViewController;
  v35 = v3;
  objc_msgSendSuper2(&v38, sel_viewWillAppear_, v3, v15);
  v18 = sub_18BC20F48();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_18B97C5A8();
  (*(v8 + 16))(v10, v13, v7);
  sub_18BC20F28();
  v19 = v2;
  v20 = sub_18BC20F18();
  (*(v8 + 8))(v13, v7);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 2) = v20;
  *(v22 + 3) = v23;
  *(v22 + 4) = v19;
  (*(v8 + 32))(&v22[v21], v10, v7);
  sub_18B97E1A4(0, 0, v37, &unk_18BC3E478, v22);

  v36 = OBJC_IVAR___SFEffectViewEditorViewController_collectionView;
  v37 = v19;
  v24 = *&v19[OBJC_IVAR___SFEffectViewEditorViewController_collectionView];
  if (!v24)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v25 = [v24 indexPathsForSelectedItems];
  if (v25)
  {
    v26 = v25;
    v27 = v34;
    v28 = sub_18BC20D98();

    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = 0;
      while (v30 < *(v28 + 16))
      {
        (*(v4 + 16))(v6, v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v27);
        v31 = *&v37[v36];
        if (!v31)
        {
          goto LABEL_11;
        }

        ++v30;
        v32 = v31;
        v33 = sub_18BC1ED68();
        [v32 deselectItemAtIndexPath:v33 animated:v35];

        (*(v4 + 8))(v6, v27);
        if (v29 == v30)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_8:
  }
}

uint64_t sub_18B97BB90(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v26 - v4;
  v5 = sub_18BC1E998();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EA98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v28 = &v26 - v16;
  sub_18B97C5A8();
  v30 = v26;
  v31 = v27;
  (*(v6 + 104))(v8, *MEMORY[0x1E6968F58], v5);
  sub_18B7B0B50();
  sub_18BC1EA88();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v17(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v18 = v28;
  sub_18BC1EA08();
  v17(v14, v9);
  v19 = sub_18BC20F48();
  (*(*(v19 - 8) + 56))(v29, 1, 1, v19);
  (*(v10 + 16))(v14, v18, v9);
  sub_18BC20F28();
  v20 = v2;
  v21 = sub_18BC20F18();
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  (*(v10 + 32))(v23 + v22, v14, v9);
  *(v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  sub_18B97E1A4(0, 0, v29, &unk_18BC3EF68, v23);

  return (v17)(v28, v9);
}

uint64_t sub_18B97BF3C(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = sub_18BC1EA98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  sub_18B97C5A8();
  aBlock = 46;
  v27 = 0xE100000000000000;
  MEMORY[0x18CFFC150](*(v2 + OBJC_IVAR___SFEffectViewEditorViewController_presetPathExtension), *(v2 + OBJC_IVAR___SFEffectViewEditorViewController_presetPathExtension + 8));
  v11 = aBlock;
  v10 = v27;
  v23 = objc_opt_self();
  (*(v4 + 16))(v6, v9, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v12, v6, v3);
  v15 = (v14 + v13);
  *v15 = v11;
  v15[1] = v10;
  v16 = (v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8));
  v17 = v25;
  *v16 = v24;
  v16[1] = v17;
  v30 = sub_18B987D54;
  v31 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_18B980DAC;
  v29 = &block_descriptor_236;
  v18 = _Block_copy(&aBlock);
  sub_18BC1E1A8();

  v19 = [v23 elementWithUncachedProvider_];
  _Block_release(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18BC3E3E0;
  *(v20 + 32) = v19;
  (*(v4 + 8))(v9, v3);
  return v20;
}

uint64_t sub_18B97C1D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v30 - v5;
  v6 = sub_18BC1E998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1EA98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v32 = &v30 - v17;
  sub_18B97C5A8();
  v36 = v34;
  v37 = v35;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968F58], v6);
  sub_18B7B0B50();
  sub_18BC1EA88();
  (*(v7 + 8))(v9, v6);
  v18 = *(v11 + 8);
  v18(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v31 = v18;
  v19 = v32;
  sub_18BC1EA08();
  v18(v15, v10);
  v20 = sub_18BC20F48();
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  (*(v11 + 16))(v15, v19, v10);
  sub_18BC20F28();
  v21 = v3;
  sub_18BC1E3F8();
  v22 = sub_18BC20F18();
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v22;
  *(v25 + 24) = v26;
  (*(v11 + 32))(v25 + v23, v15, v10);
  *(v25 + v24) = v21;
  v27 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  sub_18B97E1A4(0, 0, v33, &unk_18BC3EF88, v25);

  return v31(v32, v10);
}

uint64_t sub_18B97C5A8()
{
  v0 = sub_18BC1E998();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_18BC1EA98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:5 inDomains:1];

  v10 = sub_18BC20D98();
  if (*(v10 + 16))
  {

    if (*(v10 + 16))
    {
      (*(v5 + 16))(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      strcpy(v12, "ToolbarPresets");
      v12[15] = -18;
      (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v0);
      sub_18B7B0B50();
      sub_18BC1EA88();
      (*(v1 + 8))(v3, v0);
      return (*(v5 + 8))(v7, v4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18B97C830()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B97C87C();
}

void sub_18B97C87C()
{
  v1 = sub_18BC20B98();
  v2 = [objc_opt_self() alertControllerWithTitle:v1 message:0 preferredStyle:1];

  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v19 = sub_18B9888A0;
  v20 = v3;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_18B8370CC;
  v18 = &block_descriptor_266;
  v4 = _Block_copy(&v15);
  v5 = v0;

  [v2 addTextFieldWithConfigurationHandler_];
  _Block_release(v4);
  v6 = sub_18BC20B98();
  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v6 style:1 handler:0];

  [v2 addAction_];
  v9 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v5;
  v11 = v5;
  sub_18BC1E1A8();
  v12 = sub_18BC20B98();
  v19 = sub_18B9888A8;
  v20 = v10;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_18B8370CC;
  v18 = &block_descriptor_275;
  v13 = _Block_copy(&v15);

  v14 = [v7 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v2 addAction_];
  [v11 presentViewController:v2 animated:1 completion:0];
}

void sub_18B97CB5C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B97CBA8();
}

uint64_t sub_18B97CBA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v45 = &v38 - v2;
  v3 = sub_18BC1E998();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_18BC1EA98();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v41 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = [objc_opt_self() defaultManager];
  v19 = [v18 temporaryDirectory];

  sub_18BC1EA38();
  v44 = v0;
  if (*&v0[OBJC_IVAR___SFEffectViewEditorViewController_lastPresetName + 8])
  {
    v20 = *&v0[OBJC_IVAR___SFEffectViewEditorViewController_lastPresetName];
    v21 = *&v0[OBJC_IVAR___SFEffectViewEditorViewController_lastPresetName + 8];
  }

  else
  {
    v21 = 0xE700000000000000;
    v20 = 0x7261626C6F6F54;
  }

  v46 = v20;
  v47 = v21;
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F58], v3);
  sub_18B7B0B50();
  sub_18BC1E3F8();
  sub_18BC1EA88();
  (*(v4 + 8))(v6, v3);

  v22 = v40;
  v23 = *(v40 + 8);
  v24 = v10;
  v25 = v43;
  v23(v24, v43);
  v26 = v23;
  v39 = v23;
  v27 = v44;
  v28 = v17;
  sub_18BC1EA08();
  v26(v13, v25);
  v29 = sub_18BC20F48();
  v30 = v45;
  (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
  v31 = v42;
  (*(v22 + 16))(v42, v28, v25);
  sub_18BC20F28();
  v32 = v27;
  v33 = sub_18BC20F18();
  v34 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E85E0];
  *(v35 + 2) = v33;
  *(v35 + 3) = v36;
  *(v35 + 4) = v32;
  (*(v22 + 32))(&v35[v34], v31, v25);
  sub_18B97E1A4(0, 0, v30, &unk_18BC3EFB0, v35);

  return v39(v28, v25);
}

void sub_18B97D01C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A08);
  sub_18BC1F1E8();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  sub_18BC1F1D8();
  v1 = objc_allocWithZone(MEMORY[0x1E69DC968]);
  v2 = sub_18BC20D88();

  v3 = [v1 initForOpeningContentTypes:v2 asCopy:0];

  [v3 setDelegate_];
  [Strong presentViewController:v3 animated:1 completion:0];
}

void sub_18B97D188(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B97C1D8(a1, a2);
}

void sub_18B97D1F0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B97BB90(a1, a2);
}

void sub_18B97D258(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR___SFEffectViewEditorViewController_sections;
  swift_beginAccess();
  v78 = v5;
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  v75 = v6;
  sub_18BC1E3F8();
  v74 = v7;
  if (!v7)
  {
LABEL_39:

    return;
  }

  v8 = 0;
  v73 = v2;
  v81 = a1;
  while (v8 < *(v75 + 16))
  {
    v9 = v75 + 32 + 48 * v8;
    v10 = *v9;
    v11 = *(v9 + 8);
    v79 = v8;
    v82 = v11;
    v80 = *(v9 + 40);
    if (!*v9)
    {
      sub_18BC1E3F8();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
LABEL_17:
      v32 = *(v11 + 16);
      if (!v32)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    v12 = *(v9 + 32);
    v13 = *(a2 + 16);
    v14 = v10;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    if (!v13)
    {
      goto LABEL_17;
    }

    v15 = sub_18B831970(v12, v80);
    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }

    v17 = *(*(a2 + 56) + 8 * v15);
    swift_beginAccess();
    v18 = *(v3 + v78);
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v78) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_18BAE379C(v18);
      *(v3 + v78) = v18;
    }

    if (v8 >= *(v18 + 2))
    {
      goto LABEL_44;
    }

    v21 = &v18[48 * v8];
    v22 = *(v21 + 4);
    *(v21 + 4) = v19;
    *(v3 + v78) = v18;
    swift_endAccess();

    sub_18B9777D4();
    v23 = *(v3 + v78);
    if (v8 >= *(v23 + 16))
    {
      goto LABEL_45;
    }

    v24 = v23 + 48 * v8;
    v27 = *(v24 + 32);
    v25 = v24 + 32;
    v26 = v27;
    if (v27)
    {
      v28 = *(v25 + 16);
      sub_18BC1E3F8();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v29 = v26;
      v30 = v10;
      v31 = v29;
      sub_18B9777D4();
      v28(v3, v31);
      v8 = v79;

      v10 = v30;

      v32 = *(v11 + 16);
      if (!v32)
      {
        goto LABEL_3;
      }
    }

    else
    {

      v32 = *(v11 + 16);
      if (!v32)
      {
LABEL_3:

        goto LABEL_4;
      }
    }

LABEL_18:
    v76 = v10;
    v85[0] = MEMORY[0x1E69E7CC0];
    sub_18B9B65FC(0, v32, 0);
    v33 = 0;
    v34 = v85[0];
    v35 = (v11 + 48);
    do
    {
      if (v33 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v36 = v32;
      v83 = *(v35 - 1);
      v37 = *v35;
      swift_retain_n();
      v38 = v83;
      v39 = [v38 name];
      v40 = sub_18BC20BD8();
      v42 = v41;

      if (*(a1 + 16))
      {
        v43 = sub_18B831970(v40, v42);
        v45 = v44;

        v46 = v38;
        if (v45)
        {
          v46 = *(*(a1 + 56) + 8 * v43);
        }
      }

      else
      {

        v46 = v38;
      }

      v47 = &v46[OBJC_IVAR___SFEditableProperty_value];
      v48 = *(v47 + 2);
      v49 = *(v47 + 3);
      v50 = *v47;
      v51 = *(v47 + 1);
      v52 = &v38[OBJC_IVAR___SFEditableProperty_value];
      v53 = *&v38[OBJC_IVAR___SFEditableProperty_value];
      v54 = *&v38[OBJC_IVAR___SFEditableProperty_value + 8];
      v55 = *(v52 + 2);
      v56 = *(v52 + 3);
      v57 = v47[32];
      *v52 = *v47;
      *(v52 + 1) = v51;
      *(v52 + 2) = v48;
      *(v52 + 3) = v49;
      v58 = v52[32];
      v52[32] = v57;
      sub_18B9882C8(v50, v51, v48, v49, v57);
      sub_18B9882E8(v53, v54, v55, v56, v58);

      v85[0] = v34;
      v60 = *(v34 + 16);
      v59 = *(v34 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_18B9B65FC((v59 > 1), v60 + 1, 1);
        v34 = v85[0];
      }

      ++v33;
      *(v34 + 16) = v60 + 1;
      v61 = v34 + 24 * v60;
      *(v61 + 32) = v83;
      *(v61 + 48) = v37;
      v35 += 3;
      v32 = v36;
      a1 = v81;
      v11 = v82;
    }

    while (v36 != v33);
    v3 = v73;
    swift_beginAccess();
    v62 = *(v73 + v78);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *(v73 + v78) = v62;
    v8 = v79;
    if ((v63 & 1) == 0)
    {
      v62 = sub_18BAE379C(v62);
      *(v73 + v78) = v62;
    }

    if (v79 >= *(v62 + 2))
    {
      goto LABEL_42;
    }

    *&v62[48 * v79 + 40] = v34;
    *(v73 + v78) = v62;
    swift_endAccess();

    sub_18B9777D4();
    v64 = *(v73 + v78);
    if (v79 >= *(v64 + 16))
    {
      goto LABEL_43;
    }

    v65 = v64 + 48 * v79;
    v66 = *(v65 + 40);
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = *(v65 + 32);
      sub_18BC1E3F8();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v69 = v66 + 48;
      do
      {
        v70 = *(v69 - 16);
        v71 = *(v69 - 8);
        v69 += 24;
        v84 = v70;
        v85[0] = v73;
        v72 = v70;
        sub_18BC1E1A8();
        v71(v85, &v84);

        --v67;
      }

      while (v67);

      v3 = v73;
      a1 = v81;
      v8 = v79;
    }

    else
    {
    }

    v10 = v76;
LABEL_4:
    ++v8;

    if (v8 == v74)
    {
      goto LABEL_39;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_18B97D844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_18BC1E998();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_18BC1EA98();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_18BC20F28();
  v5[18] = sub_18BC20F18();
  v9 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B97D9D4, v9, v8);
}

uint64_t sub_18B97D9D4()
{

  v1 = [objc_opt_self() sf_mobileSafariFrameworkBundle];
  v2 = sub_18BC20B98();
  v3 = sub_18BC20B98();
  v4 = [v1 URLsForResourcesWithExtension:v2 subdirectory:v3];

  if (v4)
  {
    v5 = sub_18BC20D98();

    v57 = objc_opt_self();
    v6 = [v57 defaultManager];
    sub_18BC1EA58();
    v7 = sub_18BC20B98();

    v0[6] = 0;
    v8 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:v0 + 6];

    v9 = v0[6];
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v11 = v9;
      v12 = sub_18BC1E898();

      swift_willThrow();
    }

    v13 = [v57 defaultManager];
    sub_18BC1EA58();
    v14 = sub_18BC20B98();

    v0[7] = 0;
    v15 = [v13 contentsOfDirectoryAtPath:v14 error:v0 + 7];

    v16 = v0[7];
    if (v15)
    {
      v17 = sub_18BC20D98();
      v18 = v16;

      v19 = *(v5 + 16);
      if (!v19)
      {
LABEL_14:

        goto LABEL_21;
      }

      v20 = 0;
      v21 = 0;
      v22 = v0[15];
      v23 = v0[12];
      v61 = v5 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v54 = *MEMORY[0x1E6968F58];
      v52 = (v23 + 8);
      v53 = (v23 + 104);
      v62 = v22;
      v24 = (v22 + 8);
      v55 = v17;
      v56 = v5;
      v51 = *(v5 + 16);
      while (v21 < *(v5 + 16))
      {
        (*(v62 + 16))(v0[17], v61 + *(v62 + 72) * v21, v0[14]);
        v0[2] = sub_18BC1E9C8();
        v0[3] = v25;
        v26 = swift_task_alloc();
        *(v26 + 16) = v0 + 2;
        v27 = sub_18B9B4FCC(sub_18B987C04, v26, v17);

        if (v27)
        {
          (*v24)(v0[17], v0[14]);
        }

        else
        {
          v58 = v20;
          v28 = v0[16];
          v29 = v0[13];
          v60 = v0[14];
          v30 = v0[11];
          v59 = [v57 defaultManager];
          v31 = sub_18BC1E9E8();
          v0[4] = sub_18BC1E9C8();
          v0[5] = v32;
          (*v53)(v29, v54, v30);
          sub_18B7B0B50();
          sub_18BC1EA88();
          (*v52)(v29, v30);

          v33 = sub_18BC1E9E8();
          v34 = *v24;
          (*v24)(v28, v60);
          v0[8] = 0;
          LODWORD(v30) = [v59 copyItemAtURL:v31 toURL:v33 error:v0 + 8];

          v35 = v0[8];
          v36 = v0[17];
          v37 = v0[14];
          if (!v30)
          {
            v40 = v35;

            v17 = sub_18BC1E898();

            swift_willThrow();
            v34(v36, v37);
            goto LABEL_17;
          }

          v38 = v35;
          v34(v36, v37);
          v17 = v55;
          v5 = v56;
          v19 = v51;
          v20 = v58;
        }

        if (v19 == ++v21)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v39 = v16;

      v17 = sub_18BC1E898();

      swift_willThrow();
LABEL_17:
      if (qword_1EA9D2278 == -1)
      {
        goto LABEL_18;
      }
    }

    swift_once();
LABEL_18:
    v41 = sub_18BC1F2C8();
    __swift_project_value_buffer(v41, qword_1EA9F7E20);
    v42 = v17;
    v43 = sub_18BC1F2A8();
    v44 = sub_18BC21238();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v17;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_18B7AC000, v43, v44, "Failed to copy default presets: %@", v45, 0xCu);
      sub_18B988BAC(v46, &qword_1EA9DA790);
      MEMORY[0x18CFFEEE0](v46, -1, -1);
      MEMORY[0x18CFFEEE0](v45, -1, -1);
    }

    else
    {
    }
  }

LABEL_21:

  v49 = v0[1];

  return v49();
}

uint64_t sub_18B97E0AC(uint64_t a1)
{
  v4 = *(sub_18BC1EA98() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18B7B6968;

  return sub_18B97D844(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_18B97E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_18B7CA054(a3, v25 - v10, &qword_1EA9DAE10);
  v12 = sub_18BC20F48();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_18BC1E1A8();
  if (v14 == 1)
  {
    sub_18B988BAC(v11, &qword_1EA9DAE10);
  }

  else
  {
    sub_18BC20F38();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18BC20ED8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18BC20C08() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_18BC1E1A8();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_18B988BAC(a3, &qword_1EA9DAE10);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18B988BAC(a3, &qword_1EA9DAE10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_18B97E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = sub_18BC20F28();
  v5[10] = sub_18BC20F18();
  v6 = sub_18BC20ED8();
  v5[11] = v6;
  v5[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_18B97E574, v6, v7);
}

uint64_t sub_18B97E574()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_18BC1E9E8();
  v0[5] = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 5];

  v4 = v0[5];
  if (v3)
  {
    v5 = v4;

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v4;
    v0[13] = sub_18BC1E898();

    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_18B97E6F4, 0, 0);
  }
}

uint64_t sub_18B97E6F4()
{
  *(v0 + 112) = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B97E7B4, v2, v1);
}

uint64_t sub_18B97E7B4()
{
  v1 = v0[8];

  swift_getErrorValue();
  sub_18BC220B8();
  v2 = sub_18BC20B98();
  v3 = sub_18BC20B98();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = sub_18BC20B98();
  v6 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction_];
  [v1 presentViewController:v4 animated:1 completion:0];

  v7 = v0[11];
  v8 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_18B97E960, v7, v8);
}

uint64_t sub_18B97E960()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

void sub_18B97E9F8(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v5 = sub_18BC20B98();
    goto LABEL_5;
  }

  swift_getErrorValue();
  sub_18BC220B8();
  v4 = v3;
  v5 = sub_18BC20B98();
  if (!v4)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = sub_18BC20B98();

LABEL_6:
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = sub_18BC20B98();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction_];
  [v2 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_18B97EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_18BC1E998();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v9 = sub_18BC1EA98();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = sub_18BC20F28();
  v7[20] = sub_18BC20F18();
  v11 = sub_18BC20ED8();
  v7[21] = v11;
  v7[22] = v10;

  return MEMORY[0x1EEE6DFA0](sub_18B97ECB4, v11, v10);
}

uint64_t sub_18B97ECB4()
{
  v1 = v0;
  v0[2] = 0x73746365666645;
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v0[3] = 0xE700000000000000;
  v5 = *MEMORY[0x1E6968F68];
  v6 = *(v3 + 104);
  v6(v2, v5, v4);
  sub_18B7B0B50();
  sub_18BC1EA88();
  v7 = *(v3 + 8);
  v7(v2, v4);
  v18 = sub_18BC1EAA8();
  v19 = v8;
  v16 = v7;
  v9 = v6;
  v10 = v1[14];
  v11 = v1[12];
  v17 = *(v1[16] + 8);
  v17(v1[18], v1[15]);
  v1[4] = 0x69747265706F7250;
  v1[5] = 0xEA00000000007365;
  v9(v10, v5, v11);
  sub_18BC1EA88();
  v16(v10, v11);
  v12 = sub_18BC1EAA8();
  v14 = v13;
  v17(v1[17], v1[15]);
  sub_18BC1E608();
  swift_allocObject();
  sub_18BC1E5F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D39D8);
  sub_18B988150();
  sub_18BC1E5E8();
  v1[23] = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D39F0);
  sub_18B98820C();
  sub_18BC1E5E8();

  sub_18B9880FC(v12, v14);
  sub_18B9880FC(v18, v19);
  v1[24] = v1[7];

  return MEMORY[0x1EEE6DFA0](sub_18B97F0BC, 0, 0);
}

uint64_t sub_18B97F0BC()
{
  *(v0 + 200) = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B97F148, v2, v1);
}

uint64_t sub_18B97F148()
{
  v1 = v0[24];
  v2 = v0[23];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = (v5 + OBJC_IVAR___SFEffectViewEditorViewController_lastPresetName);
  *v6 = v4;
  v6[1] = v3;

  sub_18BC1E3F8();
  sub_18B97D258(v2, v1);

  v7 = v0[21];
  v8 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_18B97F204, v7, v8);
}

uint64_t sub_18B97F204()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_18B97F280(void *a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR___SFEffectViewEditorViewController_lastPresetName + 8))
  {
    v2 = a1;
    sub_18BC1E3F8();
    v3 = sub_18BC20B98();

    a1 = v2;
  }

  else
  {
    v3 = 0;
  }

  [a1 setText_];
}

void sub_18B97F318()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong textFields];

  if (!v1)
  {
    goto LABEL_22;
  }

  sub_18B7B0AC0(0, &qword_1EA9D3A60);
  v2 = sub_18BC20D98();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_19:

    __break(1u);
    goto LABEL_20;
  }

  if (!sub_18BC219A8())
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(v2 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

LABEL_20:
  v3 = MEMORY[0x18CFFD010](0, v2);
LABEL_7:
  v10 = v3;

  v4 = [v10 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18BC20BD8();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_18B97F4B0(v6, v8);

      return;
    }
  }
}

uint64_t sub_18B97F4B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v30 - v5;
  v6 = sub_18BC1E998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1EA98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v32 = &v30 - v17;
  sub_18B97C5A8();
  v36 = v35;
  v37 = v33;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968F58], v6);
  sub_18B7B0B50();
  sub_18BC1EA88();
  (*(v7 + 8))(v9, v6);
  v18 = *(v11 + 8);
  v18(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v31 = v18;
  v19 = v32;
  sub_18BC1EA08();
  v18(v15, v10);
  v20 = sub_18BC20F48();
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  (*(v11 + 16))(v15, v19, v10);
  sub_18BC20F28();
  v21 = v3;
  v22 = v33;
  sub_18BC1E3F8();
  v23 = sub_18BC20F18();
  v24 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 2) = v23;
  *(v25 + 3) = v26;
  *(v25 + 4) = v21;
  (*(v11 + 32))(&v25[v24], v15, v10);
  v27 = &v25[(v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8];
  v28 = v34;
  *v27 = v35;
  *(v27 + 1) = v22;
  sub_18B97E1A4(0, 0, v28, &unk_18BC3F000, v25);

  return v31(v32, v10);
}

uint64_t sub_18B97F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_18BC20F28();
  v5[5] = sub_18BC20F18();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_18B97F940;

  return sub_18B97FBD0(a5);
}

uint64_t sub_18B97F940()
{

  v1 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B97FA7C, v1, v0);
}

uint64_t sub_18B97FA7C()
{
  v2 = v0[2];
  v1 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3E410;
  v4 = sub_18BC1EA98();
  *(v3 + 56) = v4;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v3 + 32));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0Tm, v1, v4);
  v6 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v7 = sub_18BC20D88();

  v8 = [v6 initWithActivityItems:v7 applicationActivities:0];

  [v2 presentViewController:v8 animated:1 completion:0];
  v9 = v0[1];

  return v9();
}

uint64_t sub_18B97FBD0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_18BC1EA98();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  v2[12] = swift_task_alloc();
  v2[13] = sub_18BC20F28();
  v2[14] = sub_18BC20F18();

  return MEMORY[0x1EEE6DFA0](sub_18B97FCE8, 0, 0);
}

uint64_t sub_18B97FCE8()
{
  *(v0 + 120) = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B97FD74, v2, v1);
}

uint64_t sub_18B97FD74()
{
  v1 = v0[7];

  sub_18B981154(v1, v0 + 2);
  v3 = sub_18BC20ED8();
  v0[16] = v3;
  v0[17] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B97FE3C, v3, v2);
}

uint64_t sub_18B97FE3C()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[18] = v2;
  v0[19] = v1;
  v3 = v0[4];
  v4 = v0[5];
  v0[20] = v3;
  v0[21] = v4;
  v5 = v0[11];
  v6 = v0[12];
  if (v1 >> 60 == 15)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[9];
    v26 = v0[11];
    v27 = v0[10];
    v10 = v0[8];
    v25 = v10;
    v22 = v0[7];
    v11 = v0[6];
    v12 = sub_18BC20F48();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    (*(v9 + 16))(v5, v11, v10);
    sub_18B9884CC(v2, v1, v3, v4);
    v23 = v22;
    sub_18B98851C(v3, v4);
    sub_18B98851C(v2, v1);
    v21 = sub_18BC20F18();
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = v2;
    v14 = (v27 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    *(v16 + 16) = v21;
    *(v16 + 24) = v17;
    (*(v9 + 32))(v16 + v13, v26, v25);
    *(v16 + v14) = v23;
    v18 = (v16 + v15);
    *v18 = v3;
    v18[1] = v4;
    v19 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v19 = v24;
    v19[1] = v1;
    v0[22] = sub_18B97E1A4(0, 0, v6, &unk_18BC3EFD0, v16);
    v20 = swift_task_alloc();
    v0[23] = v20;
    *v20 = v0;
    v20[1] = sub_18B9800F0;

    return MEMORY[0x1EEE6DA40]();
  }
}

uint64_t sub_18B9800F0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_18B980210, v3, v2);
}

uint64_t sub_18B980210()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  sub_18B9886D8(v4, v3, v1, v2);
  sub_18B9880FC(v1, v2);
  sub_18B9880FC(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_18B9802D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v30 = a5;
  v33 = a4;
  v34 = a6;
  v31 = a2;
  v32 = a1;
  v8 = sub_18BC1EA98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_18BC20F48();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a3, v8);
  sub_18BC20F28();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  v16 = sub_18BC20F18();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v16;
  *(v20 + 24) = v21;
  (*(v9 + 32))(v20 + v17, v11, v8);
  v22 = (v20 + v18);
  v23 = v31;
  *v22 = v32;
  v22[1] = v23;
  v24 = (v20 + v19);
  v25 = v30;
  *v24 = v33;
  v24[1] = v25;
  v26 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  v27 = v29;
  *v26 = v34;
  v26[1] = v27;
  sub_18B97E1A4(0, 0, v14, &unk_18BC3EF78, v20);
}

uint64_t sub_18B980544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v13;
  v8[9] = v14;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[10] = sub_18BC20F28();
  v8[11] = sub_18BC20F18();
  v9 = sub_18BC20ED8();
  v8[12] = v9;
  v8[13] = v10;

  return MEMORY[0x1EEE6DFA0](sub_18B980628, v9, v10);
}

uint64_t sub_18B980628()
{
  v1 = [objc_opt_self() defaultManager];
  sub_18BC1EA58();
  v2 = sub_18BC20B98();

  v0[2] = 0;
  v3 = [v1 contentsOfDirectoryAtPath:v2 error:v0 + 2];

  v4 = v0[2];
  if (v3)
  {
    v5 = sub_18BC20D98();
    v6 = v4;

    v7 = *(v5 + 16);
    if (!v7)
    {
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    v8 = 0;
    v9 = -v7;
    v10 = v5 + 40;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = v10 + 16 * v8++;
      while (1)
      {
        if ((v8 - 1) >= *(v5 + 16))
        {
          __break(1u);
LABEL_24:
          __break(1u);
        }

        sub_18BC1E3F8();
        if (sub_18BC20C88())
        {
          break;
        }

        ++v8;
        v12 += 16;
        if (v9 + v8 == 1)
        {
          goto LABEL_20;
        }
      }

      sub_18BC1E3F8();
      if (sub_18BC20C38() < 0)
      {
        goto LABEL_24;
      }

      sub_18BC20C48();
      v13 = sub_18BC20CB8();
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = MEMORY[0x18CFFC110](v13, v15, v17, v19);
      v22 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_18B7B6718(0, *(v11 + 2) + 1, 1, v11);
      }

      v10 = v5 + 40;
      v24 = *(v11 + 2);
      v23 = *(v11 + 3);
      if (v24 >= v23 >> 1)
      {
        v11 = sub_18B7B6718((v23 > 1), v24 + 1, 1, v11);
      }

      *(v11 + 2) = v24 + 1;
      v25 = &v11[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      if (!(v9 + v8))
      {
LABEL_20:
        v0[14] = v11;

        return MEMORY[0x1EEE6DFA0](sub_18B9809E0, 0, 0);
      }
    }
  }

  v26 = v0[4];
  v27 = v4;

  v28 = sub_18BC1E898();

  swift_willThrow();
  v26(MEMORY[0x1E69E7CC0]);
  v29 = v0[1];

  return v29();
}

uint64_t sub_18B9809E0()
{
  *(v0 + 120) = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B980AA0, v2, v1);
}

uint64_t sub_18B980AA0()
{
  v1 = v0[14];

  v2 = *(v1 + 16);
  v3 = v0[14];
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v4 = (v3 + 40);
    do
    {
      v6 = v0[8];
      v5 = v0[9];
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = swift_allocObject();
      v9[2] = v6;
      v9[3] = v5;
      v9[4] = v7;
      v9[5] = v8;
      swift_bridgeObjectRetain_n();
      sub_18BC1E1A8();
      sub_18BC215E8();
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      v4 += 2;
      --v2;
    }

    while (v2);

    v10 = v16;
    if (!(v16 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_5:
      sub_18BC1E3F8();
      sub_18BC22008();
      sub_18B7B0AC0(0, &qword_1EA9D39D0);
      v11 = v10;
      goto LABEL_6;
    }
  }

  sub_18B7B0AC0(0, &qword_1EA9D39D0);
  sub_18BC1E3F8();
  v11 = sub_18BC21D08();

LABEL_6:
  v12 = v0[4];

  v12(v11);

  v13 = v0[12];
  v14 = v0[13];

  return MEMORY[0x1EEE6DFA0](sub_18B980D20, v13, v14);
}

uint64_t sub_18B980D20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B980DAC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_18BC1E1A8();
  v2(sub_18B987E14, v4);
}

void sub_18B980E40(uint64_t a1, uint64_t a2)
{
  sub_18B7B0AC0(0, &qword_1EA9D39D0);
  v3 = sub_18BC20D88();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_18B980EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = sub_18BC20F28();
  v7[6] = sub_18BC20F18();
  v9 = swift_task_alloc();
  v7[7] = v9;
  *v9 = v7;
  v9[1] = sub_18B980F80;

  return sub_18B97FBD0(a5);
}

uint64_t sub_18B980F80()
{

  v1 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B9810BC, v1, v0);
}

uint64_t sub_18B9810BC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v4 = (v3 + OBJC_IVAR___SFEffectViewEditorViewController_lastPresetName);
  *v4 = v1;
  v4[1] = v2;

  v6 = v0[1];
  sub_18BC1E3F8();

  return v6();
}

void sub_18B981154(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = OBJC_IVAR___SFEffectViewEditorViewController_sections;
  swift_beginAccess();
  v49 = a1;
  v6 = sub_18BC1E3F8();
  v7 = sub_18B9816C4(v6);
  v8 = v2;

  if (v7 >> 62)
  {
    v9 = sub_18BC219A8();
    v48 = a2;
    if (v9)
    {
LABEL_3:
      v54 = MEMORY[0x1E69E7CC0];
      sub_18B9B661C(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v10 = 0;
      v11 = v54;
      v12 = v7;
      v50 = v7 & 0xC000000000000001;
      v52 = v7;
      v13 = v9;
      do
      {
        if (v50)
        {
          v14 = MEMORY[0x18CFFD010](v10, v12);
        }

        else
        {
          v14 = *(v12 + 8 * v10 + 32);
        }

        v15 = v14;
        v16 = [v14 name];
        v17 = sub_18BC20BD8();
        v19 = v18;

        v54 = v11;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_18B9B661C((v20 > 1), v21 + 1, 1);
          v11 = v54;
        }

        ++v10;
        *(v11 + 16) = v21 + 1;
        v22 = (v11 + 24 * v21);
        v22[4] = v17;
        v22[5] = v19;
        v22[6] = v15;
        v12 = v52;
      }

      while (v13 != v10);

      v8 = v2;
      if (*(v11 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = a2;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A18);
    v23 = sub_18BC21D88();
    goto LABEL_16;
  }

LABEL_15:
  v23 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v54 = v23;
  v24 = sub_18BC1E3F8();
  sub_18B984238(v24, 1, &v54, sub_18BB2901C, sub_18BB2CE60);
  if (v8)
  {
LABEL_33:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v25 = v54;
  v26 = *(v49 + v5);
  v27 = *(v26 + 16);
  sub_18BC1E3F8();
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v30 = (v26 + 32 + 48 * v28);
  while (v27 != v28)
  {
    if (v28 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    ++v28;
    v31 = v30 + 6;
    v32 = *v30;
    v30 += 6;
    if (v32)
    {
      v33 = *(v31 - 1);
      v51 = *(v31 - 2);
      v53 = v8;
      sub_18BC1E3F8();
      v47 = v32;
      v34 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_18B9B5584(0, v29[2] + 1, 1, v29);
      }

      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        v29 = sub_18B9B5584((v35 > 1), v36 + 1, 1, v29);
      }

      v29[2] = v36 + 1;
      v37 = &v29[3 * v36];
      v37[4] = v51;
      v37[5] = v33;
      v37[6] = v47;
      v25 = v34;
      v8 = v53;
      goto LABEL_18;
    }
  }

  if (v29[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A20);
    v38 = sub_18BC21D88();
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC8];
  }

  v54 = v38;
  v39 = sub_18BC1E3F8();
  sub_18B984238(v39, 1, &v54, sub_18BB29008, sub_18BB2CE4C);

  v40 = v54;
  sub_18BC1E638();
  swift_allocObject();
  sub_18BC1E628();
  v54 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D39D8);
  sub_18B988728();
  v41 = sub_18BC1E618();
  v43 = v42;

  v54 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D39F0);
  sub_18B9887E4();
  v44 = sub_18BC1E618();
  v46 = v45;

  *v48 = v41;
  v48[1] = v43;
  v48[2] = v44;
  v48[3] = v46;
}

uint64_t sub_18B9816C4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v32 = *(a1 + 16);
  if (!v32)
  {
    return v1;
  }

  v2 = 0;
  v31 = a1 + 32;
  v3 = &unk_1EA9D3A50;
  v36 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = v31 + 48 * v2;
    v6 = *(v5 + 8);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *v5;
      v35[0] = v1;
      v34 = v8;
      sub_18BC1E3F8();
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      sub_18BC21B98();
      v9 = 32;
      do
      {
        v10 = *(v6 + v9);
        sub_18BC21B68();
        sub_18BC21BA8();
        sub_18BC21BB8();
        sub_18BC21B78();
        v9 += 24;
        --v7;
      }

      while (v7);

      v1 = v35[0];
      v3 = &unk_1EA9D3A50;
    }

    else
    {
      sub_18BC1E3F8();
    }

    v11 = v1 >> 62;
    if (v1 >> 62)
    {
      v12 = sub_18BC219A8();
    }

    else
    {
      v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v36;
    v14 = v36 >> 62;
    if (v36 >> 62)
    {
      v30 = sub_18BC219A8();
      v16 = v30 + v12;
      if (__OFADD__(v30, v12))
      {
LABEL_37:
        __break(1u);
        return v1;
      }
    }

    else
    {
      v15 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v12;
      if (__OFADD__(v15, v12))
      {
        goto LABEL_37;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v14)
      {
        v17 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *(v17 + 24) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_18BC219A8();
      goto LABEL_20;
    }

    if (v14)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = sub_18BC21B28();
    v36 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v11)
    {
      break;
    }

    v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (((v19 >> 1) - v18) < v12)
    {
      goto LABEL_41;
    }

    v33 = v12;
    v21 = v17 + 8 * v18 + 32;
    if (v11)
    {
      if (v20 < 1)
      {
        goto LABEL_43;
      }

      sub_18B7B0B08(&qword_1EA9D3A58, v3);
      v22 = v3;
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v22);
        v24 = sub_18BA030F8(v35, i, v1);
        v26 = *v25;
        (v24)(v35, 0);
        *(v21 + 8 * i) = v26;
        v22 = &unk_1EA9D3A50;
      }
    }

    else
    {
      type metadata accessor for SFEditableProperty(0);
      swift_arrayInitWithCopy();
      v22 = v3;
    }

    v3 = v22;

    v1 = MEMORY[0x1E69E7CC0];
    if (v33 >= 1)
    {
      v27 = *(v17 + 16);
      v28 = __OFADD__(v27, v33);
      v29 = v27 + v33;
      if (v28)
      {
        goto LABEL_42;
      }

      *(v17 + 16) = v29;
    }

LABEL_4:
    if (++v2 == v32)
    {
      return v36;
    }
  }

  result = sub_18BC219A8();
  v20 = result;
  if (result)
  {
    goto LABEL_25;
  }

LABEL_3:

  v1 = MEMORY[0x1E69E7CC0];
  if (v12 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_18B981A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v15;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = sub_18BC1E998();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v10 = sub_18BC1EA98();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  sub_18BC20F28();
  v8[20] = sub_18BC20F18();
  v12 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B981C18, v12, v11);
}

uint64_t sub_18B981C18()
{

  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  sub_18BC1EA58();
  v3 = sub_18BC20B98();

  v4 = [v2 fileExistsAtPath_];

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = [v1 defaultManager];
  v6 = sub_18BC1E9E8();
  v0[6] = 0;
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:v0 + 6];

  v8 = v0[6];
  if (v7)
  {
    v9 = v8;
LABEL_4:
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[13];
    v0[2] = 0x73746365666645;
    v0[3] = 0xE700000000000000;
    v24 = *MEMORY[0x1E6968F68];
    v23 = *(v10 + 104);
    v23(v11);
    sub_18B7B0B50();
    sub_18BC1EA88();
    v13 = *(v10 + 8);
    v13(v11, v12);
    sub_18BC1EAC8();
    v22 = v13;
    v14 = v0[15];
    v15 = v0[13];
    v16 = *(v0[17] + 8);
    v16(v0[19], v0[16]);
    v0[4] = 0x69747265706F7250;
    v0[5] = 0xEA00000000007365;
    (v23)(v14, v24, v15);
    sub_18BC1EA88();
    v22(v14, v15);
    sub_18BC1EAC8();
    v16(v0[18], v0[16]);
    goto LABEL_6;
  }

  v17 = v8;
  v18 = sub_18BC1E898();

  swift_willThrow();
  v19 = v18;
  sub_18B97E9F8(v18);

LABEL_6:

  v20 = v0[1];

  return v20();
}

void sub_18B981FC8(uint64_t a1, uint64_t *a2)
{
  v4 = _s5LayerVMa();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &unk_18BC3EF28;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31[-1] - v10;
  type metadata accessor for SFLayerEditorViewController();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_18B9876B0(a1, v11);
  (*(v5 + 56))(v11, 0, 1, v4);
  v13 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  swift_beginAccess();
  sub_18B987714(v11, &v12[v13]);
  swift_endAccess();
  sub_18BB7143C();
  v14 = &v12[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_editHandler];
  v15 = *&v12[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_editHandler];
  sub_18BC1E1A8();
  v15(v12);

  sub_18B988BAC(v11, &unk_1EA9DA1B0);
  v34 = *a2;
  v16 = v34;
  if (!v34)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v17 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v19 = *(v18 + 16);
  sub_18BC1E3F8();
  if (v19)
  {
    v8 = 0;
    while (v8 < *(v18 + 16))
    {
      sub_18B9876B0(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7);
      v20 = sub_18B993064(v7, a1);
      sub_18B987654(v7);
      if (v20)
      {
        goto LABEL_8;
      }

      if (v19 == ++v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_7:

  __break(1u);
LABEL_8:

  *&v32 = 0x2320726579614CLL;
  *(&v32 + 1) = 0xE700000000000000;
  v31[0] = v8 + 1;
  v21 = v12;
  v22 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v22);

  v23 = sub_18BC20B98();

  [v21 setTitle_];

  v24 = swift_allocObject();
  v25 = v30;
  swift_unknownObjectWeakInit();
  v33 = a2[1];
  v32 = *(a2 + 2);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = *(a2 + 1);
  *(v26 + 24) = *a2;
  *(v26 + 40) = v27;
  *(v26 + 56) = *(a2 + 2);
  *(v26 + 72) = v8;
  *v14 = sub_18B987784;
  v14[1] = v26;
  sub_18BC1E1A8();
  sub_18B7CA054(&v33, v31, &qword_1EA9D39B0);
  sub_18BC1E1A8();
  sub_18B987794(&v32, v31);
  sub_18B7CA054(&v34, v31, &qword_1EA9D39B8);

  v28 = [v25 navigationController];
  if (v28)
  {
    v29 = v28;
    [v28 pushViewController:v21 animated:1];
  }
}

void sub_18B982410(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  type metadata accessor for SFPropertiesEditorViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_18BC20B98();
  [v6 setTitle_];

  *&v6[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_properties] = a1;
  sub_18BC1E3F8();

  sub_18BA2E900();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *a2;
  v17 = a2[1];
  v18 = v9;
  v10 = swift_allocObject();
  v11 = *(a2 + 1);
  *(v10 + 56) = *(a2 + 2);
  v12 = *a2;
  *(v10 + 40) = v11;
  *(v10 + 16) = v8;
  *(v10 + 24) = v12;
  v13 = &v6[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
  *v13 = sub_18B9878B8;
  v13[1] = v10;
  sub_18BC1E1A8();
  sub_18B7CA054(&v17, v16, &qword_1EA9D39B0);
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18B7CA054(&v18, v16, &qword_1EA9D39B8);

  v14 = [v3 navigationController];
  if (v14)
  {
    v15 = v14;
    [v14 pushViewController:v6 animated:1];
  }
}

size_t sub_18B9826E4(uint64_t a1, uint64_t a2, char **a3, unint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = _s5LayerVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
    swift_beginAccess();
    sub_18B7CA054(a1 + v16, v9, &unk_1EA9DA1B0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return sub_18B988BAC(v9, &unk_1EA9DA1B0);
    }

    sub_18B9875F0(v9, v13);
    v17 = *a3;
    if (!*a3)
    {
      goto LABEL_9;
    }

    v18 = OBJC_IVAR___SFEditableEffect_layers;
    swift_beginAccess();
    v19 = *&v17[v18];
    v20 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    *&v17[v18] = v19;
    if (result)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_18BAE3788(v19);
      v19 = result;
      *&v17[v18] = result;
      if ((a4 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v19[2] > a4)
        {
          sub_18B9877F0(v13, v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a4);
          *&v17[v18] = v19;
          swift_endAccess();
          sub_18B9777D4();
          (a3[2])(v15, v20);

LABEL_9:
          return sub_18B987654(v13);
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void sub_18B982978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(a3 + 8);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 48;
      do
      {
        v9 = *(v8 - 16);
        v10 = *(v8 - 8);
        v8 += 24;
        v12 = v9;
        v13 = v5;
        v11 = v9;
        sub_18BC1E1A8();
        v10(&v13, &v12);

        --v7;
      }

      while (v7);
    }
  }
}

void __swiftcall SFEffectViewEditorViewController.init(nibName:bundle:)(SFEffectViewEditorViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_18BC20B98();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id SFEffectViewEditorViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___SFEffectViewEditorViewController_collectionView] = 0;
  *&v3[OBJC_IVAR___SFEffectViewEditorViewController_dataSource] = 0;
  *&v3[OBJC_IVAR___SFEffectViewEditorViewController_sections] = MEMORY[0x1E69E7CC0];
  v5 = &v3[OBJC_IVAR___SFEffectViewEditorViewController_lastPresetName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR___SFEffectViewEditorViewController_presetPathExtension];
  *v6 = 0x61626C6F6F746673;
  *(v6 + 1) = 0xEF74657365727072;
  if (a2)
  {
    v7 = sub_18BC20B98();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = SFEffectViewEditorViewController;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id SFEffectViewEditorViewController.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SFEffectViewEditorViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR___SFEffectViewEditorViewController_dataSource) = 0;
  *(v1 + OBJC_IVAR___SFEffectViewEditorViewController_sections) = MEMORY[0x1E69E7CC0];
  v3 = (v1 + OBJC_IVAR___SFEffectViewEditorViewController_lastPresetName);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR___SFEffectViewEditorViewController_presetPathExtension);
  *v4 = 0x61626C6F6F746673;
  v4[1] = 0xEF74657365727072;
  v7.super_class = SFEffectViewEditorViewController;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_18B983120()
{

  return swift_deallocClassInstance();
}

void sub_18B983160(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a3;
  v21 = a2;
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = sub_18BC1E998();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1EA98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_18BC1E9E8();
  v22[0] = sub_18BC1E9C8();
  v22[1] = v13;
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v3);
  sub_18B7B0B50();
  sub_18BC1EA88();
  (*(v4 + 8))(v6, v3);

  v14 = sub_18BC1E9E8();
  (*(v8 + 8))(v10, v7);
  v22[0] = 0;
  LODWORD(v8) = [v11 copyItemAtURL:v12 toURL:v14 error:v22];

  v15 = v22[0];
  if (v8)
  {

    v16 = v15;
  }

  else
  {
    v21 = v22[0];
    v17 = v22[0];
    v18 = sub_18BC1E898();

    swift_willThrow();
    v19 = v18;
    sub_18B97E9F8(v18);
  }
}

uint64_t sub_18B983458(uint64_t a1)
{
  v2 = sub_18BC1EA98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_18BC1EA38();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18B983638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 4) = v8;
  return result;
}

uint64_t sub_18B9836A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 4) = v8;
  return v6 & 1;
}

uint64_t sub_18B983704@<X0>(_DWORD *a1@<X8>)
{
  result = sub_18BC22118();
  *a1 = result;
  return result;
}

uint64_t sub_18B983740(uint64_t a1, id *a2)
{
  result = sub_18BC20BB8();
  *a2 = 0;
  return result;
}

uint64_t sub_18B9837B8(uint64_t a1, id *a2)
{
  v3 = sub_18BC20BC8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18B983838@<X0>(uint64_t *a1@<X8>)
{
  sub_18BC20BD8();
  v2 = sub_18BC20B98();

  *a1 = v2;
  return result;
}

uint64_t sub_18B98387C()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t sub_18B9838C4()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t sub_18B983908()
{
  swift_getWitnessTable();

  return sub_18BC1EF18();
}

float sub_18B983974@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_18B983980()
{
  sub_18B987260(&qword_1EA9D3C20, type metadata accessor for UILayoutPriority);
  sub_18B987260(&qword_1EA9D3C28, type metadata accessor for UILayoutPriority);
  return sub_18BC21E08();
}

uint64_t sub_18B983A3C()
{
  sub_18B987260(&qword_1EA9D3978, type metadata accessor for WBSOnboardingIdentifier);
  sub_18B987260(&qword_1EA9D3980, type metadata accessor for WBSOnboardingIdentifier);

  return sub_18BC21E08();
}

uint64_t sub_18B983AF8()
{
  sub_18B987260(&qword_1EA9D3988, type metadata accessor for ID);
  sub_18B987260(&unk_1EA9D3990, type metadata accessor for ID);
  return sub_18BC21E08();
}

uint64_t sub_18B983BB4()
{
  sub_18B987260(&qword_1EA9D3C50, type metadata accessor for SFBrowsingAssistantMenuSectionIdentifier);
  sub_18B987260(&qword_1EA9D3C58, type metadata accessor for SFBrowsingAssistantMenuSectionIdentifier);

  return sub_18BC21E08();
}

uint64_t sub_18B983C70()
{
  sub_18B987260(&qword_1EA9D3C40, type metadata accessor for Key);
  sub_18B987260(&qword_1EA9D3C48, type metadata accessor for Key);

  return sub_18BC21E08();
}

uint64_t sub_18B983D2C()
{
  sub_18B987260(&qword_1EA9D3C30, type metadata accessor for AttributeName);
  sub_18B987260(&qword_1EA9D3C38, type metadata accessor for AttributeName);

  return sub_18BC21E08();
}

uint64_t sub_18B983DE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18BC20B98();

  *a1 = v2;
  return result;
}

uint64_t sub_18B983E30()
{
  sub_18B987260(&qword_1EA9D3C10, type metadata accessor for SFBrowsingAssistantMenuAction);
  sub_18B987260(&qword_1EA9D3C18, type metadata accessor for SFBrowsingAssistantMenuAction);

  return sub_18BC21E08();
}

uint64_t sub_18B983F90()
{
  sub_18BC22158();
  swift_getWitnessTable();
  sub_18BC1EF28();
  return sub_18BC221A8();
}

uint64_t sub_18B984098()
{
  v0 = sub_18BC20BD8();
  v1 = MEMORY[0x18CFFC190](v0);

  return v1;
}

uint64_t sub_18B9840D4()
{
  sub_18BC20BD8();
  sub_18BC20C28();
}

uint64_t sub_18B984128()
{
  sub_18BC20BD8();
  sub_18BC22158();
  sub_18BC20C28();
  v0 = sub_18BC221A8();

  return v0;
}

uint64_t sub_18B9841B0()
{
  v0 = sub_18BC20BD8();
  v2 = v1;
  if (v0 == sub_18BC20BD8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_18BC21FD8();
  }

  return v5 & 1;
}

void sub_18B984238(void *a1, char a2, void *a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v42 = a1[2];
  if (!v42)
  {
    goto LABEL_21;
  }

  LOBYTE(v8) = a2;
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = *a3;
  sub_18BC1E3F8();
  v13 = v11;
  v14 = sub_18B831970(v10, v9);
  v16 = v12[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v20) = v15;
  if (v12[3] < v19)
  {
    a5(v19, v8 & 1);
    v14 = sub_18B831970(v10, v9);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v14 = sub_18BC22078();
    __break(1u);
  }

  if (v8)
  {
LABEL_7:
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v24 = v14;
  a4();
  v14 = v24;
  if (v20)
  {
LABEL_8:
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A48);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v25 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v26 = (v25[6] + 16 * v14);
  *v26 = v10;
  v26[1] = v9;
  *(v25[7] + 8 * v14) = v13;
  v27 = v25[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_18BC21AD8();
    MEMORY[0x18CFFC150](0xD00000000000001BLL, 0x800000018BC60C30);
    sub_18BC21C58();
    MEMORY[0x18CFFC150](39, 0xE100000000000000);
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v25[2] = v28;
  if (v42 != 1)
  {
    v8 = (a1 + 9);
    v20 = 1;
    while (v20 < a1[2])
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v29 = *v8;
      v30 = *a3;
      sub_18BC1E3F8();
      v13 = v29;
      v31 = sub_18B831970(v10, v9);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v18 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v18)
      {
        goto LABEL_23;
      }

      a4 = v32;
      if (v30[3] < v35)
      {
        a5(v35, 1);
        v31 = sub_18B831970(v10, v9);
        if ((a4 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a4)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (v37[6] + 16 * v31);
      *v38 = v10;
      v38[1] = v9;
      *(v37[7] + 8 * v31) = v13;
      v39 = v37[2];
      v18 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      ++v20;
      v37[2] = v40;
      v8 += 3;
      if (v42 == v20)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_18B9845E4(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = 0x706F72646B636142;
  if (v1 != 1)
  {
    v2 = 0xD000000000000019;
  }

  if (*(a1 + 160))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6369736142;
  }

  v21 = v3;
  if (*(a1 + 24))
  {
    MEMORY[0x18CFFC150](*(a1 + 16));
    MEMORY[0x18CFFC150](8251, 0xE200000000000000);
  }

  v5 = *(*(a1 + 80) + 16);
  if (v5)
  {
    v6 = sub_18BC21F48();
    MEMORY[0x18CFFC150](v6);

    MEMORY[0x18CFFC150](32, 0xE100000000000000);
    if (v5 == 1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE900000000000073;
    }

    MEMORY[0x18CFFC150](0x726579616C627573, v7);

    MEMORY[0x18CFFC150](8251, 0xE200000000000000);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_18B7B7A54(0, v9, 0);
    v10 = (v8 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      sub_18BC1E3F8();
      if (v14 >= v13 >> 1)
      {
        sub_18B7B7A54((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v10 += 4;
      --v9;
    }

    while (v9);
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
  sub_18B7B0B08(&unk_1EA9D39A0, &unk_1EA9DB1C0);
  v16 = sub_18BC20AB8();
  v18 = v17;

  MEMORY[0x18CFFC150](v16, v18);

  MEMORY[0x18CFFC150](8251, 0xE200000000000000);
LABEL_21:

  return v21;
}

uint64_t sub_18B9848C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_18BC219A8();
    if (v2 >= 4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= 4)
    {
LABEL_3:
      result = sub_18BC21AD8();
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18CFFD010](0, a1);
        goto LABEL_6;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(a1 + 32);
LABEL_6:
        v5 = v4;
        v6 = [v4 name];

        v7 = sub_18BC20BD8();

        MEMORY[0x18CFFC150](0x20646E6120, 0xE500000000000000);
        sub_18B988AB0();
        v8 = sub_18BC218A8();
        MEMORY[0x18CFFC150](v8);

        MEMORY[0x18CFFC150](0x73726568746F20, 0xE700000000000000);
        return v7;
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  if (!v2)
  {
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0);
    sub_18B7B0B08(&unk_1EA9D39A0, &unk_1EA9DB1C0);
    v26 = sub_18BC20AB8();

    return v26;
  }

  v27 = MEMORY[0x1E69E7CC0];
  result = sub_18B7B7A54(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        MEMORY[0x18CFFD010](v9, a1);
        v10 = [swift_unknownObjectRetain() name];
        v11 = sub_18BC20BD8();
        v13 = v12;
        swift_unknownObjectRelease_n();

        v15 = *(v27 + 16);
        v14 = *(v27 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_18B7B7A54((v14 > 1), v15 + 1, 1);
        }

        ++v9;
        *(v27 + 16) = v15 + 1;
        v16 = v27 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (v2 != v9);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v19 = [v18 name];
        v20 = sub_18BC20BD8();
        v22 = v21;

        v24 = *(v27 + 16);
        v23 = *(v27 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_18B7B7A54((v23 > 1), v24 + 1, 1);
        }

        *(v27 + 16) = v24 + 1;
        v25 = v27 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        ++v17;
        --v2;
      }

      while (v2);
    }

    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_18B984C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_18B984C50(unsigned __int8 a1, char *a2, void (*a3)(uint64_t, char *), uint64_t a4)
{
  v9 = a1;
  v10 = _s5LayerVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  sub_18BC1DE28();
  *v16 = 0;
  v16[8] = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 5) = 0;
  *(v16 + 6) = 0;
  *(v16 + 4) = v17;
  v16[56] = 1;
  *(v16 + 8) = 0;
  *(v16 + 9) = 0x3FF0000000000000;
  *(v16 + 10) = v17;
  *(v16 + 11) = 0;
  *(v16 + 12) = 0;
  *(v16 + 13) = 2;
  *(v16 + 7) = 0u;
  *(v16 + 8) = 0u;
  *(v16 + 9) = 0u;
  v16[160] = a1;
  if (v9 >= 2)
  {
    v18 = 6.0 - _SFOnePixel();
    v19 = _SFOnePixel();
    *(v16 + 11) = 0x4000000000000000;
    *(v16 + 12) = 0x4028000000000000;
    v16[104] = 0;
    __asm { FMOV            V1.2D, #0.5 }

    *(v16 + 7) = _Q1;
    *(v16 + 16) = 12;
    *(v16 + 17) = 0x4008000000000000;
    *(v16 + 18) = v18;
    *(v16 + 19) = v19 + 2.0;
  }

  if (a2)
  {
    v34 = v11;
    v35 = a4;
    sub_18B9876B0(v16, v13);
    v25 = OBJC_IVAR___SFEditableEffect_layers;
    swift_beginAccess();
    v26 = *&a2[v25];
    v27 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a2[v25] = v26;
    v29 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_18B9B543C(0, v26[2] + 1, 1, v26);
      *&a2[v25] = v26;
    }

    v31 = v26[2];
    v30 = v26[3];
    if (v31 >= v30 >> 1)
    {
      v26 = sub_18B9B543C(v30 > 1, v31 + 1, 1, v26);
    }

    v26[2] = v31 + 1;
    sub_18B9875F0(v13, v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31);
    *&a2[v25] = v26;
    swift_endAccess();
    sub_18B9777D4();
    v29(v4, v27);
  }

  return sub_18B987654(v16);
}

uint64_t sub_18B984EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s21PropertyEditorBuilderCMa();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v9 = (v8 + 16);
  (*(a4 + 16))(a4, v8);
  swift_beginAccess();
  v10 = *v9;
  v11 = OBJC_IVAR___SFEffectViewEditorViewController_sections;
  swift_beginAccess();
  v12 = *(a3 + v11);
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_18B9B5464(0, *(v12 + 2) + 1, 1, v12);
    *(a3 + v11) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_18B9B5464((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[48 * v15];
  *(v16 + 4) = 0;
  *(v16 + 5) = v10;
  *(v16 + 6) = CGRectMake;
  *(v16 + 7) = 0;
  *(v16 + 8) = a1;
  *(v16 + 9) = a2;
  *(a3 + v11) = v12;
  swift_endAccess();
  sub_18B9777D4();
}

uint64_t sub_18B985064(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v42[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42[-v18];
  v20 = a1;
  v21 = *(a1 + 16);
  v59 = a2;
  v57 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
  swift_beginAccess();
  v55 = v21;
  if (!v21)
  {
    return 0;
  }

  v56 = 0;
  v54 = v11;
  v53 = (v5 + 48);
  v43 = (v5 + 32);
  v45 = (v5 + 8);
  v22 = _s5LayerVMa();
  v23 = 0;
  v61 = v22;
  v24 = *(v22 - 8);
  v25 = v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v49 = *(v24 + 72);
  v51 = (v24 + 48);
  v62 = v5 + 16;
  v60 = *(v5 + 16);
  v26 = (v5 + 56);
  v46 = (v5 + 56);
  v63 = v16;
  v52 = v8;
  v50 = v19;
  while (1)
  {
    v65 = v23;
    v28 = v61;
    v29 = *(v61 + 60);
    v64 = v25;
    v60(v19, v25 + v29, v4);
    v30 = *v26;
    v31 = 1;
    (*v26)(v19, 0, 1, v4);
    v32 = v19;
    v33 = v26;
    v34 = v54;
    sub_18B7CA054(v59 + v57, v54, &unk_1EA9DA1B0);
    if (!(*v51)(v34, 1, v28))
    {
      v60(v63, v34 + *(v61 + 60), v4);
      v31 = 0;
    }

    sub_18B988BAC(v34, &unk_1EA9DA1B0);
    v35 = v63;
    v30(v63, v31, 1, v4);
    v26 = v33;
    v36 = *(v58 + 48);
    v37 = v52;
    sub_18B7CA054(v32, v52, &unk_1EA9D3AE0);
    sub_18B7CA054(v35, v37 + v36, &unk_1EA9D3AE0);
    v38 = *v53;
    if ((*v53)(v37, 1, v4) == 1)
    {
      break;
    }

    v39 = v47;
    sub_18B7CA054(v37, v47, &unk_1EA9D3AE0);
    if (v38(v37 + v36, 1, v4) != 1)
    {
      v40 = v44;
      (*v43)(v44, v37 + v36, v4);
      sub_18B987260(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
      LODWORD(v48) = sub_18BC20AE8();
      v41 = *v45;
      (*v45)(v40, v4);
      sub_18B988BAC(v63, &unk_1EA9D3AE0);
      v19 = v50;
      sub_18B988BAC(v50, &unk_1EA9D3AE0);
      v41(v39, v4);
      sub_18B988BAC(v37, &unk_1EA9D3AE0);
      v26 = v46;
      result = v65;
      if (v48)
      {
        return result;
      }

      goto LABEL_5;
    }

    sub_18B988BAC(v63, &unk_1EA9D3AE0);
    v19 = v50;
    sub_18B988BAC(v50, &unk_1EA9D3AE0);
    (*v45)(v39, v4);
    v26 = v46;
LABEL_4:
    sub_18B988BAC(v37, &unk_1EA9D92B0);
    result = v65;
LABEL_5:
    v23 = result + 1;
    v25 = v64 + v49;
    v56 = v55 == v23;
    if (v55 == v23)
    {
      return 0;
    }
  }

  sub_18B988BAC(v35, &unk_1EA9D3AE0);
  v48 = v36;
  v19 = v50;
  sub_18B988BAC(v50, &unk_1EA9D3AE0);
  if (v38(v37 + v48, 1, v4) != 1)
  {
    goto LABEL_4;
  }

  sub_18B988BAC(v37, &unk_1EA9D3AE0);
  return v65;
}

uint64_t sub_18B985760(uint64_t *a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v95 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  v16 = _s5LayerVMa();
  v91 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  v25 = a1;
  v26 = *a1;
  v27 = v96;
  result = sub_18B985064(v26, a2);
  if (v27)
  {
    return result;
  }

  v79 = v24;
  v77 = v21;
  v71 = v18;
  v78 = v16;
  v93 = v15;
  v66 = 0;
  if (v29)
  {
    return *(v26 + 16);
  }

  v68 = v25;
  v92 = result;
  v30 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_36;
  }

  v31 = v26;
  v76 = a2;
  v75 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
  result = swift_beginAccess();
  v33 = (v26 + 16);
  v32 = *(v26 + 16);
  v34 = v93;
  v35 = v91;
  v36 = v79;
  if (v30 == v32)
  {
    return v92;
  }

  v37 = v30;
  v90 = (v95 + 2);
  v38 = (v95 + 7);
  v74 = v91 + 48;
  v73 = (v95 + 6);
  v67 = (v95 + 4);
  v69 = (v95 + 1);
  v39 = v89;
  v85 = (v95 + 7);
  while (v37 < v32)
  {
    v40 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v95 = v31;
    v80 = v40;
    v41 = v31 + v40;
    v42 = *(v35 + 72);
    v96 = v37;
    v82 = v42;
    v81 = v42 * v37;
    v83 = v41;
    v84 = v33;
    sub_18B9876B0(&v41[v42 * v37], v36);
    v43 = v78;
    v44 = v36 + *(v78 + 60);
    v88 = *v90;
    v88(v34, v44, v4);
    v45 = *v38;
    v46 = 1;
    (*v38)(v34, 0, 1, v4);
    sub_18B7CA054(v76 + v75, v39, &unk_1EA9DA1B0);
    if (!(*(v35 + 48))(v39, 1, v43))
    {
      v88(v94, v39 + *(v43 + 60), v4);
      v46 = 0;
    }

    sub_18B988BAC(v39, &unk_1EA9DA1B0);
    v47 = v94;
    v45(v94, v46, 1, v4);
    v48 = v86;
    v49 = *(v87 + 48);
    sub_18B7CA054(v93, v86, &unk_1EA9D3AE0);
    sub_18B7CA054(v47, v48 + v49, &unk_1EA9D3AE0);
    v50 = *v73;
    if ((*v73)(v48, 1, v4) == 1)
    {
      sub_18B988BAC(v47, &unk_1EA9D3AE0);
      v34 = v93;
      sub_18B988BAC(v93, &unk_1EA9D3AE0);
      v51 = v50(v48 + v49, 1, v4);
      v39 = v89;
      v52 = v77;
      if (v51 == 1)
      {
        sub_18B988BAC(v48, &unk_1EA9D3AE0);
        v36 = v79;
        result = sub_18B987654(v79);
        v35 = v91;
        v31 = v95;
        v38 = v85;
        v53 = v96;
        goto LABEL_11;
      }
    }

    else
    {
      v54 = v72;
      sub_18B7CA054(v48, v72, &unk_1EA9D3AE0);
      if (v50(v48 + v49, 1, v4) != 1)
      {
        v64 = v70;
        (*v67)(v70, v48 + v49, v4);
        sub_18B987260(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
        LODWORD(v88) = sub_18BC20AE8();
        v65 = *v69;
        (*v69)(v64, v4);
        sub_18B988BAC(v94, &unk_1EA9D3AE0);
        v34 = v93;
        sub_18B988BAC(v93, &unk_1EA9D3AE0);
        v65(v54, v4);
        sub_18B988BAC(v48, &unk_1EA9D3AE0);
        v36 = v79;
        result = sub_18B987654(v79);
        v39 = v89;
        v52 = v77;
        v38 = v85;
        if (v88)
        {
          v35 = v91;
          v31 = v95;
          v53 = v96;
          goto LABEL_11;
        }

        goto LABEL_21;
      }

      sub_18B988BAC(v94, &unk_1EA9D3AE0);
      v34 = v93;
      sub_18B988BAC(v93, &unk_1EA9D3AE0);
      (*v69)(v54, v4);
      v39 = v89;
      v52 = v77;
    }

    sub_18B988BAC(v48, &unk_1EA9D92B0);
    v36 = v79;
    result = sub_18B987654(v79);
    v38 = v85;
LABEL_21:
    v55 = v92;
    v53 = v96;
    if (v96 == v92)
    {
      v31 = v95;
    }

    else
    {
      if ((v92 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v56 = *v84;
      if (v92 >= *v84)
      {
        goto LABEL_33;
      }

      v57 = v83;
      v58 = v82 * v92;
      result = sub_18B9876B0(&v83[v82 * v92], v52);
      if (v96 >= v56)
      {
        goto LABEL_34;
      }

      v59 = v57;
      v60 = v81;
      sub_18B9876B0(&v59[v81], v71);
      v61 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_18BAE3788(v95);
      }

      v62 = v95;
      v63 = v95 + v80;
      result = sub_18B988C0C(v71, v95 + v80 + v58);
      if (v96 >= v62[2])
      {
        goto LABEL_35;
      }

      result = sub_18B988C0C(v52, &v63[v60]);
      v53 = v96;
      *v68 = v62;
      v55 = v92;
      v31 = v62;
      v38 = v85;
      v39 = v61;
    }

    v92 = v55 + 1;
    v35 = v91;
LABEL_11:
    v37 = v53 + 1;
    v33 = v31 + 2;
    v32 = v31[2];
    if (v37 == v32)
    {
      return v92;
    }
  }

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
  __break(1u);
  return result;
}

void sub_18B986078()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = _s5LayerVMa();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___SFEffectViewEditorViewController_dataSource;
  v10 = *(v0 + OBJC_IVAR___SFEffectViewEditorViewController_dataSource);
  if (v10)
  {
    v11 = v10;
    sub_18BC1FD18();

    v12 = v19;
    if (v19)
    {
      v13 = *(v1 + v9);
      if (v13 && (v14 = v13, sub_18BC1EDC8(), sub_18BC1FD38(), v14, v20))
      {
        v15 = v19;
        v16 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
        v18 = v20;
        swift_beginAccess();
        sub_18B7CA054(v12 + v16, v4, &unk_1EA9DA1B0);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_18B988BAC(v4, &unk_1EA9DA1B0);
          if (*(v12 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_properties))
          {
            v17 = sub_18BC1E3F8();
            sub_18B982410(v17, &v19);
          }
        }

        else
        {
          sub_18B9875F0(v4, v8);
          sub_18B981FC8(v8, &v19);

          sub_18B987654(v8);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_18B986330(uint64_t a1)
{
  v100[4] = *MEMORY[0x1E69E9840];
  v3 = sub_18BC1EA98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v98 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = v78 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v96 = v78 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v88 = v78 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v94 = v78 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v86 = v78 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = (v78 - v17);
  v84 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v78 - v21;
  v23 = *(a1 + 16);
  v95 = v4;
  v92 = v1;
  if (v23)
  {
    v90 = &v1[OBJC_IVAR___SFEffectViewEditorViewController_presetPathExtension];
    v91 = *(v4 + 16);
    v87 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v24 = a1 + v87;
    v25 = *(v4 + 72);
    v85 = (v4 + 8);
    v93 = (v4 + 16);
    v26 = (v4 + 32);
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v91(v22, v24, v3, v20);
      if (sub_18BC1E9A8() == *v90 && v28 == *(v90 + 1))
      {
        break;
      }

      v30 = sub_18BC21FD8();

      if (v30)
      {
        goto LABEL_12;
      }

      (*v85)(v22, v3);
LABEL_4:
      v24 += v25;
      if (!--v23)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    v31 = *v26;
    (*v26)(v97, v22, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18B9B665C(0, v27[2] + 1, 1);
      v27 = aBlock[0];
    }

    v34 = v27[2];
    v33 = v27[3];
    if (v34 >= v33 >> 1)
    {
      sub_18B9B665C(v33 > 1, v34 + 1, 1);
      v27 = aBlock[0];
    }

    v27[2] = v34 + 1;
    v31(v27 + v87 + v34 * v25, v97, v3);
    v4 = v95;
    goto LABEL_4;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v35 = v27[2];
  v93 = v27;
  if (v35)
  {
    v36 = 0;
    v97 = (v4 + 16);
    v90 = (v4 + 8);
    v37 = (v4 + 32);
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v86;
    v91 = v35;
    do
    {
      if (v36 >= v27[2])
      {
        __break(1u);
LABEL_45:
        __break(1u);
      }

      v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v41 = *(v4 + 72);
      (*(v4 + 16))(v39, v27 + v40 + v41 * v36, v3, v20);
      if (sub_18BC1EA48())
      {
        v42 = *v37;
        (*v37)(v96, v39, v3);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v38;
        if ((v43 & 1) == 0)
        {
          sub_18B9B665C(0, v38[2] + 1, 1);
          v38 = aBlock[0];
        }

        v27 = v93;
        v45 = v38[2];
        v44 = v38[3];
        if (v45 >= v44 >> 1)
        {
          sub_18B9B665C(v44 > 1, v45 + 1, 1);
          v27 = v93;
          v38 = aBlock[0];
        }

        v38[2] = v45 + 1;
        v42(v38 + v40 + v45 * v41, v96, v3);
        v4 = v95;
        v39 = v86;
        v35 = v91;
      }

      else
      {
        (*v90)(v39, v3);
        v27 = v93;
      }

      ++v36;
    }

    while (v35 != v36);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v79 = v38;
  v46 = v92;
  sub_18B97C5A8();
  v47 = v93[2];
  if (v47)
  {
    v48 = 0;
    v90 = *(v4 + 16);
    v49 = *(v4 + 80);
    v50 = v93 + ((v49 + 32) & ~v49);
    v81 = *(v4 + 72);
    v87 = v49;
    v85 = ((v49 + 16) & ~v49);
    v84 = (v85 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = (v4 + 16);
    v83 = (v4 + 32);
    v82 = v100;
    v86 = (v4 + 8);
    v78[1] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v51 = v90;
    do
    {
      v97 = v47;
      v52 = v88;
      v96 = v50;
      (v51)(v88);
      v53 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
      v54 = sub_18BC1E9E8();
      v80 = *v86;
      v80(v52, v3);
      v55 = v89;
      (v51)(v89, v94, v3);
      v56 = v84;
      v57 = swift_allocObject();
      (*v83)(v85 + v57, v55, v3);
      *(v57 + v56) = v46;
      v58 = v46;
      sub_18B7B171C(v48);
      v59 = swift_allocObject();
      *(v59 + 16) = sub_18B9878DC;
      *(v59 + 24) = v57;
      v100[2] = sub_18B987978;
      v100[3] = v59;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v100[0] = sub_18B983458;
      v100[1] = &block_descriptor;
      v60 = _Block_copy(aBlock);
      sub_18BC1E1A8();

      aBlock[0] = 0;
      [v53 coordinateReadingItemAtURL:v54 options:0 error:aBlock byAccessor:v60];
      _Block_release(v60);

      v61 = aBlock[0];
      LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

      if (v60)
      {
        goto LABEL_45;
      }

      if (v61)
      {
        swift_getErrorValue();
        v62 = v61;
        sub_18BC220B8();
        v63 = sub_18BC20B98();
        v64 = sub_18BC20B98();

        v65 = [objc_opt_self() alertControllerWithTitle:v63 message:v64 preferredStyle:1];

        v66 = sub_18BC20B98();
        v67 = [objc_opt_self() actionWithTitle:v66 style:1 handler:0];

        [v65 addAction_];
        [v58 presentViewController:v65 animated:1 completion:0];
      }

      v50 = &v96[v81];
      v48 = sub_18B9878DC;
      v47 = v97 - 1;
      v46 = v92;
    }

    while (v97 != 1);

    v68 = sub_18B9878DC;
    v4 = v95;
    v69 = v80;
    v80(v94, v3);
  }

  else
  {

    v68 = 0;
    v69 = *(v4 + 8);
    v69(v94, v3);
  }

  v70 = v79[2];
  v71 = v98;
  if (v70)
  {
    v97 = v68;
    v74 = *(v4 + 16);
    v73 = v4 + 16;
    v72 = v74;
    v75 = v79 + ((*(v73 + 64) + 32) & ~*(v73 + 64));
    v76 = *(v73 + 56);
    do
    {
      v72(v71, v75, v3);
      sub_18BC1EA28();
      v71 = v98;
      v69(v98, v3);
      v75 += v76;
      --v70;
    }

    while (v70);

    v68 = v97;
  }

  else
  {
  }

  return sub_18B7B171C(v68);
}

void sub_18B986DB4()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    sub_18B986E94();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_18B986E94()
{
  if (!qword_1EA9D3660)
  {
    _s5LayerVMa();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D3660);
    }
  }
}

uint64_t sub_18B986F9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B986FBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_18B9870D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_18B98711C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18B98717C()
{
  result = qword_1EA9D3908;
  if (!qword_1EA9D3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3908);
  }

  return result;
}

uint64_t sub_18B987260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18B9875F0(uint64_t a1, uint64_t a2)
{
  v4 = _s5LayerVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B987654(uint64_t a1)
{
  v2 = _s5LayerVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B9876B0(uint64_t a1, uint64_t a2)
{
  v4 = _s5LayerVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B987714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B9877F0(uint64_t a1, uint64_t a2)
{
  v4 = _s5LayerVMa();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_198Tm()
{

  return swift_deallocObject();
}

void sub_18B9878DC(uint64_t a1)
{
  v3 = *(sub_18BC1EA98() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_18B983160(a1, (v1 + v4), v5);
}

uint64_t sub_18B9879A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return sub_18B7B0F08(a1, v4);
}

uint64_t sub_18B987A58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B987B10;

  return sub_18B7B0F08(a1, v4);
}

uint64_t sub_18B987B10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B987C34(uint64_t a1)
{
  v4 = *(sub_18BC1EA98() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18B7B6968;

  return sub_18B97E4A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_18B987D54(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_18BC1EA98() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);
  v13 = *(v2 + v8 + 8);

  return sub_18B9802D4(a1, a2, v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_18B987E1C(uint64_t a1)
{
  v3 = *(sub_18BC1EA98() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_18B7B6968;

  return sub_18B980544(a1, v15, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_18B987FB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_18BC1EA98() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_18B7B6968;

  return sub_18B97EB50(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_18B9880FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_18B988150()
{
  result = qword_1EA9D39E0;
  if (!qword_1EA9D39E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D39D8);
    sub_18B987260(&qword_1EA9D39E8, type metadata accessor for SFEditableProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D39E0);
  }

  return result;
}

unint64_t sub_18B98820C()
{
  result = qword_1EA9D39F8;
  if (!qword_1EA9D39F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D39F0);
    sub_18B987260(&qword_1EA9D3A00, type metadata accessor for SFEditableEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D39F8);
  }

  return result;
}

id sub_18B9882C8(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
    return result;
  }

  if (a5 == 1)
  {
    return sub_18BC1E3F8();
  }

  return result;
}

void sub_18B9882E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3)
  {
  }

  else if (a5 == 1)
  {
  }
}

uint64_t objectdestroy_102Tm()
{
  v1 = sub_18BC1EA98();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B9883D4(uint64_t a1)
{
  v4 = *(sub_18BC1EA98() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18B987B10;

  return sub_18B97F880(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_18B9884CC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_18B98851C(result, a2);

    return sub_18B98851C(a3, a4);
  }

  return result;
}

uint64_t sub_18B98851C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_18BC1E1A8();
  }

  return sub_18BC1E1A8();
}

uint64_t sub_18B988570(uint64_t a1)
{
  v3 = *(sub_18BC1EA98() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_18B7B6968;

  return sub_18B981A78(a1, v7, v8, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_18B9886D8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_18B9880FC(result, a2);

    return sub_18B9880FC(a3, a4);
  }

  return result;
}

unint64_t sub_18B988728()
{
  result = qword_1EA9D3A28;
  if (!qword_1EA9D3A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D39D8);
    sub_18B987260(&qword_1EA9D3A30, type metadata accessor for SFEditableProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3A28);
  }

  return result;
}

unint64_t sub_18B9887E4()
{
  result = qword_1EA9D3A38;
  if (!qword_1EA9D3A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D39F0);
    sub_18B987260(&qword_1EA9D3A40, type metadata accessor for SFEditableEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3A38);
  }

  return result;
}

uint64_t sub_18B9888B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_18BC1EA98() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_18B7B6968;

  return sub_18B980EBC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_18B9889EC()
{
  result = qword_1EA9D3A70;
  if (!qword_1EA9D3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3A70);
  }

  return result;
}

uint64_t sub_18B988A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_18B988AB0()
{
  result = qword_1EA9D3A80;
  if (!qword_1EA9D3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3A80);
  }

  return result;
}

uint64_t sub_18B988B04()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A88) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18B97AFB8(v0 + v2, v3);
}

uint64_t sub_18B988BAC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B988C0C(uint64_t a1, uint64_t a2)
{
  v4 = _s5LayerVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_18B988D60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B988D80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_18B9894FC(uint64_t a1)
{
  v2 = sub_18B995F64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B989538(uint64_t a1)
{
  v2 = sub_18B995F64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B989574(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4008);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4010);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4018);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4020);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B995EBC();
  sub_18BC221F8();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_18B995F64();
      sub_18BC21EC8();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_18B995F10();
      v16 = v22;
      sub_18BC21EC8();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_18B995FB8();
    sub_18BC21EC8();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_18B9898F4(uint64_t a1)
{
  v2 = sub_18B995FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B989930(uint64_t a1)
{
  v2 = sub_18B995FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B98996C()
{
  v1 = 0x706F72646B636162;
  if (*v0 != 1)
  {
    v1 = 0x697463656C666572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369736162;
  }
}

uint64_t sub_18B9899C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18B9932EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18B9899F0(uint64_t a1)
{
  v2 = sub_18B995EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B989A2C(uint64_t a1)
{
  v2 = sub_18B995EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B989A68(uint64_t a1)
{
  v2 = sub_18B995F10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B989AA4(uint64_t a1)
{
  v2 = sub_18B995F10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B989AF0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18B993408(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_18B989B38()
{
  v1 = 0x706F72646B636142;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369736142;
  }
}

uint64_t sub_18B989B94(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4058);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4060);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4068);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B99600C();
  sub_18BC221F8();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_18B996060();
    sub_18BC21EC8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_18B9960B4();
    sub_18BC21EC8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_18B989E50()
{
  if (*v0)
  {
    return 0x6C6F43656D656874;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

uint64_t sub_18B989E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v6 || (sub_18BC21FD8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F43656D656874 && a2 == 0xEA0000000000726FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_18BC21FD8();

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

uint64_t sub_18B989F6C(uint64_t a1)
{
  v2 = sub_18B99600C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B989FA8(uint64_t a1)
{
  v2 = sub_18B99600C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B989FE4(uint64_t a1)
{
  v2 = sub_18B9960B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B98A020(uint64_t a1)
{
  v2 = sub_18B9960B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B98A05C(uint64_t a1)
{
  v2 = sub_18B996060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B98A098(uint64_t a1)
{
  v2 = sub_18B996060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B98A0E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18B993978(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_18B98A130()
{
  if (*v0)
  {
    return 0x2065676170626557;
  }

  else
  {
    return 0x6D6F74737543;
  }
}

char *sub_18B98A174(id a1)
{
  v2 = v1;
  if (*(v1 + 8))
  {
    v4 = [objc_opt_self() safari_webpageThemeColor];
    [a1 setBackgroundColor_];
  }

  else
  {
    [a1 setBackgroundColor_];
  }

  v5 = [a1 layer];
  if (*(v2 + 24))
  {
    v6 = sub_18BC20B98();
  }

  else
  {
    v6 = 0;
  }

  [v5 setCompositingFilter_];

  swift_unknownObjectRelease();
  v7 = [a1 layer];
  v8 = v7;
  v9 = *(v2 + 32);
  v10 = *(v9 + 16);
  if (v10)
  {
    v43 = v7;
    v44 = a1;
    v45[0] = MEMORY[0x1E69E7CC0];
    sub_18B9B66A0(0, v10, 0);
    v11 = v45[0];
    v12 = (v9 + 56);
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *v12;
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18B993E34(v13, v14, v15);
      v17 = v16;
      v48 = sub_18B7B0AC0(0, &qword_1EA9D40B8);

      *&v46 = v17;
      v45[0] = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_18B9B66A0((v18 > 1), v19 + 1, 1);
        v11 = v45[0];
      }

      *(v11 + 16) = v19 + 1;
      sub_18B7B1AD4(&v46, (v11 + 32 * v19 + 32));
      v12 += 4;
      --v10;
    }

    while (v10);
    v8 = v43;
  }

  v20 = sub_18BC20D88();

  [v8 setFilters_];

  v21 = *(v2 + 64);
  if (v21)
  {
    v22 = v21;
    v23 = [a1 maskView];
    if (!v23)
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      [a1 setMaskView_];
      v23 = v24;
    }

    v25 = [a1 maskView];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 layer];

      v28 = [v22 CGImage];
      [v27 setContents_];
    }
  }

  else
  {
    sub_18B98A6A8(a1);
    if ((v29 & 1) == 0)
    {
      [a1 setMaskView_];
    }
  }

  result = [a1 setAlpha_];
  if (*(v2 + 160) == 2)
  {
    type metadata accessor for ReflectionView();
    result = swift_dynamicCastClass();
    if (result)
    {
      v31 = result;
      if (*(v2 + 56) == 1)
      {
        v32 = *(v2 + 48);
        sub_18BC1E3F8();
      }

      else
      {
        v32 = 0;
      }

      v33 = *&v31[OBJC_IVAR____TtC12MobileSafari14ReflectionView_backdropView];
      v34 = a1;
      v35 = [v33 backdropLayer];
      if (v32)
      {
        v36 = sub_18BC20B98();
      }

      else
      {
        v36 = 0;
      }

      [v35 setGroupName_];

      v37 = *(v2 + 104);
      if (v37 == 2)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(&v46 + 1) = 0;
        v47 = 0;
      }

      else
      {
        v40 = sub_18B9962E0();
        v38 = swift_allocObject();
        *(v38 + 16) = *(v2 + 88);
        *(v38 + 32) = v37;
        v41 = *(v2 + 128);
        *(v38 + 40) = *(v2 + 112);
        *(v38 + 56) = v41;
        *(v38 + 72) = *(v2 + 144);
        v39 = &type metadata for RoundedRectangleReflection;
      }

      *&v46 = v38;
      v48 = v39;
      v49 = v40;
      v42 = OBJC_IVAR____TtC12MobileSafari14ReflectionView_reflection;
      swift_beginAccess();
      sub_18B7CA054(&v31[v42], v45, &qword_1EA9D40C0);
      swift_beginAccess();
      sub_18B996270(&v46, &v31[v42]);
      swift_endAccess();
      sub_18BBDCF40(v45);

      sub_18B988BAC(v45, &qword_1EA9D40C0);
      return sub_18B988BAC(&v46, &qword_1EA9D40C0);
    }
  }

  return result;
}

void sub_18B98A6A8(void *a1)
{
  v3 = _s5LayerVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v9 < *(v7 + 16))
    {
      sub_18B85B5A0(v10 + *(v4 + 72) * v9, v6, _s5LayerVMa);
      if (v6[160] == 2)
      {
        v11 = *(v6 + 88);
        v12 = *(v6 + 13);
        v13 = *(v6 + 8);
        v22 = *(v6 + 7);
        v23 = v13;
        v24 = *(v6 + 9);
        v25 = v11;
        if (v12 != 2)
        {
          v14 = [a1 maskView];
          if (!v14)
          {
            goto LABEL_10;
          }

          v15 = v14;
          type metadata accessor for RoundedRectangleReflectionMaskView();
          v16 = swift_dynamicCastClass();
          if (!v16)
          {

LABEL_10:
            type metadata accessor for RoundedRectangleReflectionMaskView();
            v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          }

          v17 = &v16[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection];
          v18 = *&v16[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection + 48];
          v26[2] = *&v16[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection + 32];
          v26[3] = v18;
          v19 = *&v16[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection + 16];
          v26[0] = *&v16[OBJC_IVAR____TtC12MobileSafari34RoundedRectangleReflectionMaskView_reflection];
          v26[1] = v19;
          *v17 = v25;
          v20 = v22;
          *(v17 + 40) = v23;
          v27 = *(v17 + 8);
          *(v17 + 2) = v12;
          *(v17 + 24) = v20;
          *(v17 + 56) = v24;
          sub_18BBDF8B4(v26);
          [a1 setMaskView_];
          v21 = [a1 layer];
          [v21 setInvertsMask_];

          sub_18B85B700(v6, _s5LayerVMa);
          return;
        }
      }

      ++v9;
      sub_18B85B700(v6, _s5LayerVMa);
      if (v8 == v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

id sub_18B98A928()
{
  v1 = v0;
  v2 = _s5LayerVMa();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 160))
  {
    if (*(v1 + 160) == 1)
    {
      ObjCClassFromMetadata = SFBackdropView;
    }

    else
    {
      type metadata accessor for ReflectionView();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }
  }

  else
  {
    ObjCClassFromMetadata = MEMORY[0x1E69DD250];
  }

  v7 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = *(v1 + 80);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      v12 = sub_18B85B5A0(v10, v5, _s5LayerVMa);
      v13 = sub_18B98A928(v12);
      sub_18B85B700(v5, _s5LayerVMa);
      [v7 addSubview_];

      v10 += v11;
      --v9;
    }

    while (v9);
  }

  sub_18B98A174(v7);
  return v7;
}

uint64_t sub_18B98AAB0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x697463656C666572;
    v7 = 1701869940;
    if (a1 != 10)
    {
      v7 = 25705;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x67616D496B73616DLL;
    v9 = 0x7974696361706FLL;
    if (a1 != 7)
    {
      v9 = 0x726579616C627573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x756F72676B636162;
    v2 = 0x737265746C6966;
    v3 = 0x6D614E70756F7267;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (a1 != 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_18B98AC38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3EE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B9929CC();
  sub_18BC221F8();
  *&v16 = *v3;
  LOBYTE(v22) = 0;
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3E80);
  sub_18B7B0B08(&qword_1EA9D3EE8, &qword_1EA9D3E80);
  sub_18BC21F28();

  if (!v2)
  {
    LOBYTE(v16) = *(v3 + 8);
    LOBYTE(v22) = 1;
    sub_18B992C48();
    sub_18BC21F28();
    LOBYTE(v16) = 2;
    sub_18BC21ED8();
    *&v16 = *(v3 + 32);
    LOBYTE(v22) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3E98);
    sub_18B992C9C();
    sub_18BC21F28();
    LOBYTE(v16) = 4;
    sub_18BC21ED8();
    LOBYTE(v16) = 5;
    sub_18BC21F08();
    *&v16 = *(v3 + 64);
    LOBYTE(v22) = 6;
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3EB0);
    sub_18B7B0B08(&qword_1EA9D3F08, &qword_1EA9D3EB0);
    sub_18BC21F28();

    *&v16 = *(v3 + 72);
    LOBYTE(v22) = 7;
    sub_18B992D74();
    sub_18BC21F28();
    v22 = *(v3 + 80);
    v21 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3DA0);
    sub_18B98F14C(&qword_1EA9D3DC0, &qword_1EA9D3DC8);
    sub_18BC21F28();
    v12 = *(v3 + 104);
    v13 = *(v3 + 136);
    v18 = *(v3 + 120);
    v19 = v13;
    v20 = *(v3 + 152);
    v16 = *(v3 + 88);
    v17 = v12;
    v15 = 9;
    sub_18B992DC8();
    sub_18BC21EE8();
    LOBYTE(v16) = *(v3 + 160);
    v15 = 10;
    sub_18B992E1C();
    sub_18BC21F28();
    _s5LayerVMa();
    LOBYTE(v16) = 11;
    sub_18BC1EC08();
    sub_18B98EF50(&qword_1EA9D3F28, MEMORY[0x1E69695A8]);
    sub_18BC21F28();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18B98B160(uint64_t a1)
{
  v2 = v1;
  v4 = _s5LayerVMa();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*v1)
  {
    sub_18BC22178();
    v8 = v7;
    sub_18BC215D8();
  }

  else
  {
    sub_18BC22178();
  }

  MEMORY[0x18CFFD660](*(v2 + 8));
  if (v2[3])
  {
    sub_18BC22178();
    sub_18BC20C28();
  }

  else
  {
    sub_18BC22178();
  }

  v9 = v2[4];
  MEMORY[0x18CFFD660](v9[2]);
  v10 = v9[2];
  if (v10)
  {
    v11 = v9 + 7;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC20C28();
      sub_18BB368AC(a1, v12);
      sub_18BC1E3F8();
      sub_18B9927B0(a1, v13);
      swift_bridgeObjectRelease_n();

      v11 += 4;
      --v10;
    }

    while (v10);
  }

  if (v2[6])
  {
    sub_18BC22178();
    sub_18BC20C28();
  }

  else
  {
    sub_18BC22178();
  }

  sub_18BC22178();
  v14 = v2[8];
  sub_18BC22178();
  if (v14)
  {
    v15 = v14;
    sub_18BC215D8();
  }

  v16 = *(v2 + 9);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v16);
  v17 = v2[10];
  MEMORY[0x18CFFD660](v17[2]);
  v18 = v17[2];
  if (v18)
  {
    v19 = v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v20 = *(v25 + 72);
    do
    {
      sub_18B85B5A0(v19, v6, _s5LayerVMa);
      sub_18B98B160(a1);
      sub_18B85B700(v6, _s5LayerVMa);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  v21 = v2[13];
  if (v21 == 2)
  {
    sub_18BC22178();
  }

  else
  {
    v26 = *(v2 + 11);
    v22 = *(v2 + 8);
    v28 = *(v2 + 7);
    v29 = v22;
    v30 = *(v2 + 9);
    v27 = v21;
    sub_18BC22178();
    sub_18BB4007C();
  }

  MEMORY[0x18CFFD660](*(v2 + 160));
  sub_18BC1EC08();
  sub_18B98EF50(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  return sub_18BC20A78();
}

uint64_t sub_18B98B4FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_18BC1EC08();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3E70);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = _s5LayerVMa();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  v12[8] = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 4) = v13;
  v12[56] = 1;
  *(v12 + 8) = 0;
  *(v12 + 9) = 0x3FF0000000000000;
  *(v12 + 10) = v13;
  *(v12 + 11) = 0;
  *(v12 + 12) = 0;
  *(v12 + 13) = 2;
  *(v12 + 7) = 0u;
  *(v12 + 8) = 0u;
  *(v12 + 9) = 0u;
  v12[160] = 0;
  v15 = *(v14 + 68);
  sub_18BC1DE28();
  v16 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  sub_18B9929CC();
  v31 = v9;
  v17 = v34;
  sub_18BC221D8();
  if (!v17)
  {
    v27 = v15;
    v28 = v5;
    v34 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3E80);
    v43 = 0;
    sub_18B7B0B08(&qword_1EA9D3E88, &qword_1EA9D3E80);
    sub_18BC21EA8();
    v18 = v36;

    *v12 = v18;
    v43 = 1;
    sub_18B992A20();
    sub_18BC21EA8();
    v12[8] = v36;
    LOBYTE(v36) = 2;
    *(v12 + 2) = sub_18BC21E58();
    *(v12 + 3) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3E98);
    v43 = 3;
    sub_18B992A74();
    sub_18BC21EA8();
    *(v12 + 4) = v36;
    LOBYTE(v36) = 4;
    *(v12 + 5) = sub_18BC21E58();
    *(v12 + 6) = v20;
    LOBYTE(v36) = 5;
    v12[56] = sub_18BC21E88() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3EB0);
    v43 = 6;
    sub_18B7B0B08(&qword_1EA9D3EB8, &qword_1EA9D3EB0);
    sub_18BC21EA8();
    v22 = v36;

    *(v12 + 8) = v22;
    v43 = 7;
    sub_18B992B4C();
    sub_18BC21EA8();
    *(v12 + 9) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3DA0);
    v43 = 8;
    sub_18B98F14C(&qword_1EA9D3DA8, &qword_1EA9D3DB0);
    sub_18BC21EA8();
    *(v12 + 10) = v36;
    v43 = 9;
    sub_18B992BA0();
    sub_18BC21E68();
    v23 = v39;
    *(v12 + 120) = v38;
    *(v12 + 136) = v23;
    *(v12 + 19) = v40;
    v24 = v37;
    *(v12 + 88) = v36;
    *(v12 + 104) = v24;
    v41 = 10;
    sub_18B992BF4();
    sub_18BC21EA8();
    v12[160] = v42;
    v42 = 11;
    sub_18B98EF50(&qword_1EA9D3ED8, MEMORY[0x1E69695A8]);
    v25 = v31;
    v26 = v32;
    sub_18BC21EA8();
    (*(v33 + 8))(v25, v26);
    (*(v29 + 40))(&v12[v27], v28, v34);
    sub_18B85B5A0(v12, v30, _s5LayerVMa);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return sub_18B85B700(v12, _s5LayerVMa);
}

uint64_t sub_18B98BC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18B9941D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18B98BC58(uint64_t a1)
{
  v2 = sub_18B9929CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B98BC94(uint64_t a1)
{
  v2 = sub_18B9929CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B98BCD0()
{
  sub_18BC22158();
  sub_18B98B160(v1);
  return sub_18BC221A8();
}

uint64_t sub_18B98BD14()
{
  sub_18BC22158();
  sub_18B98B160(v1);
  return sub_18BC221A8();
}

void __swiftcall SFEditableEffect.init()(SFEditableEffect *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id SFEditableEffect.init()()
{
  *(v0 + OBJC_IVAR___SFEditableEffect_layers) = MEMORY[0x1E69E7CC0];
  v2.super_class = SFEditableEffect;
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_18B98BE5C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v60 = a1;
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40F0);
  v7 = _s5LayerVMa();
  v8 = *(*(v7 - 8) + 80);
  v9 = (v8 + 32) & ~v8;
  v59 = *(*(v7 - 8) + 72);
  v10 = 2 * v59;
  v11 = swift_allocObject();
  v65 = xmmword_18BC3E400;
  *(v11 + 16) = xmmword_18BC3E400;
  v61 = v10;
  v57[2] = v8;
  v58 = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18BC3E410;
  if (qword_1EA9D2138 != -1)
  {
    swift_once();
  }

  v57[0] = v12;
  v14 = v12 + v9;
  v63 = v11;
  v15 = v11 + v9;
  v16 = *algn_1EA9F78D8;
  v18 = qword_1EA9F78E0;
  v17 = unk_1EA9F78E8;
  *(v13 + 32) = qword_1EA9F78D0;
  *(v13 + 40) = v16;
  *(v13 + 48) = v18;
  *(v13 + 56) = v17;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1DE28();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = v13;
  *(v14 + 56) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0x3FF0000000000000;
  *(v14 + 80) = MEMORY[0x1E69E7CC0];
  *(v14 + 88) = 0;
  *(v14 + 96) = 0;
  *(v14 + 104) = 2;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 1;
  v19 = *(v7 + 60);
  v66 = v7;
  *&v65 = *(v3 + 32);
  (v65)(v14 + v19, v5, v2);
  v20 = v59;
  v21 = v14 + v59;
  v22 = [objc_opt_self() whiteColor];
  v57[1] = *MEMORY[0x1E6979CF8];
  v23 = sub_18BC20BD8();
  v25 = v24;
  sub_18BC1DE28();
  *v21 = v22;
  *(v21 + 8) = 0;
  *(v21 + 16) = v23;
  *(v21 + 24) = v25;
  *(v21 + 48) = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(v21 + 32) = MEMORY[0x1E69E7CC0];
  *(v21 + 40) = 0;
  *(v21 + 56) = 1;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0x3FB999999999999ALL;
  *(v21 + 80) = v26;
  *(v21 + 88) = 0;
  *(v21 + 96) = 0;
  *(v21 + 104) = 2;
  *(v21 + 112) = 0u;
  *(v21 + 128) = 0u;
  *(v21 + 144) = 0u;
  *(v21 + 160) = 0;
  v27 = v66;
  v28 = v21 + *(v66 + 60);
  v29 = v65;
  (v65)(v28, v5, v2);
  sub_18BC1DE28();
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 32) = v26;
  *(v15 + 56) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0x3FF0000000000000;
  *(v15 + 80) = v57[0];
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 2;
  *(v15 + 112) = 0u;
  *(v15 + 128) = 0u;
  *(v15 + 144) = 0u;
  *(v15 + 160) = 0;
  v29(v15 + *(v27 + 60), v5, v2);
  v30 = v29;
  v31 = v15 + v20;
  v32 = swift_allocObject();
  v58 = v32;
  *(v32 + 16) = xmmword_18BC3FC60;
  v33 = v32 + v9;
  v34 = 6.0 - _SFOnePixel();
  v35 = _SFOnePixel() + 2.0;
  sub_18BC1DE28();
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = v60;
  *(v33 + 32) = MEMORY[0x1E69E7CC0];
  *(v33 + 40) = v37;
  *(v33 + 48) = v62;
  *(v33 + 56) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0x3FF0000000000000;
  *(v33 + 80) = v36;
  *(v33 + 88) = 0x4000000000000000;
  *(v33 + 96) = 0x4028000000000000;
  *(v33 + 104) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(v33 + 112) = _Q0;
  *(v33 + 128) = 12;
  *(v33 + 136) = 0x4008000000000000;
  *(v33 + 144) = v34;
  *(v33 + 152) = v35;
  *(v33 + 160) = 2;
  v30(v33 + *(v27 + 60), v5, v2);
  v43 = v33 + v20;
  v44 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  sub_18BC1E3F8();
  v45 = [v44 initWithWhite:0.35 alpha:1.0];
  v46 = sub_18BC20BD8();
  v48 = v47;
  sub_18BC1DE28();
  *v43 = v45;
  *(v43 + 8) = 0;
  *(v43 + 16) = v46;
  *(v43 + 24) = v48;
  *(v43 + 48) = 0;
  v49 = MEMORY[0x1E69E7CC0];
  *(v43 + 32) = MEMORY[0x1E69E7CC0];
  *(v43 + 40) = 0;
  *(v43 + 56) = 1;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0x3FF0000000000000;
  *(v43 + 80) = v49;
  *(v43 + 88) = 0;
  *(v43 + 96) = 0;
  *(v43 + 104) = 2;
  *(v43 + 112) = 0u;
  *(v43 + 128) = 0u;
  *(v43 + 144) = 0u;
  *(v43 + 160) = 0;
  v50 = v66;
  v51 = v65;
  (v65)(v43 + *(v66 + 60), v5, v2);
  v52 = v33 + v61;
  v53 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.9 alpha:0.3];
  sub_18BC1DE28();
  *v52 = v53;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 40) = 0;
  *(v52 + 48) = 0;
  *(v52 + 32) = v49;
  *(v52 + 56) = 1;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0x3FF0000000000000;
  *(v52 + 80) = v49;
  *(v52 + 88) = 0;
  *(v52 + 96) = 0;
  *(v52 + 104) = 2;
  *(v52 + 112) = 0u;
  *(v52 + 128) = 0u;
  *(v52 + 144) = 0u;
  *(v52 + 160) = 0;
  v51(v52 + *(v50 + 60), v5, v2);
  sub_18BC1DE28();
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 48) = 0;
  *(v31 + 32) = MEMORY[0x1E69E7CC0];
  *(v31 + 40) = 0;
  *(v31 + 56) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0x3FF0000000000000;
  *(v31 + 80) = v58;
  *(v31 + 88) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 2;
  *(v31 + 112) = 0u;
  *(v31 + 128) = 0u;
  *(v31 + 144) = 0u;
  *(v31 + 160) = 0;
  v51(v31 + *(v50 + 60), v5, v2);
  v54 = OBJC_IVAR___SFEditableEffect_layers;
  v55 = v64;
  swift_beginAccess();
  *&v55[v54] = v63;

  return v55;
}

char *sub_18B98C5A0()
{
  v0 = sub_18BC1EC08();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40F0);
  v4 = _s5LayerVMa();
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC3E400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18BC3E410;
  if (qword_1EA9D2140 != -1)
  {
    swift_once();
  }

  v28 = v7;
  v9 = v7 + v6;
  v10 = *algn_1EA9F78F8;
  v11 = qword_1EA9F7900;
  v12 = unk_1EA9F7908;
  *(v8 + 32) = qword_1EA9F78F0;
  *(v8 + 40) = v10;
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1DE28();
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = v8;
  *(v9 + 56) = 1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0x3FF0000000000000;
  *(v9 + 80) = MEMORY[0x1E69E7CC0];
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 2;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 1;
  v13 = *(v4 + 60);
  v27 = *(v1 + 32);
  v27(v9 + v13, v3, v0);
  v14 = v9 + v5;
  v15 = [objc_opt_self() whiteColor];
  v16 = sub_18BC20BD8();
  v18 = v17;
  v19 = objc_opt_self();
  v20 = v0;
  v21 = sub_18BC20B98();
  v22 = [v19 sf:v21 imageNamed:?];

  sub_18BC1DE28();
  *v14 = v15;
  *(v14 + 8) = 0;
  *(v14 + 16) = v16;
  *(v14 + 24) = v18;
  *(v14 + 48) = 0;
  v23 = MEMORY[0x1E69E7CC0];
  *(v14 + 32) = MEMORY[0x1E69E7CC0];
  *(v14 + 40) = 0;
  *(v14 + 56) = 1;
  *(v14 + 64) = v22;
  *(v14 + 72) = 0x3FC999999999999ALL;
  *(v14 + 80) = v23;
  *(v14 + 88) = 0;
  *(v14 + 96) = 0;
  *(v14 + 104) = 2;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0;
  v27(v14 + *(v4 + 60), v3, v20);
  v24 = OBJC_IVAR___SFEditableEffect_layers;
  v25 = v29;
  swift_beginAccess();
  *&v25[v24] = v28;

  return v25;
}

char *sub_18B98C99C(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40F0);
  v10 = (_s5LayerVMa() - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18BC3E410;
  v13 = v12 + v11;
  v14 = v9;
  v15 = a1;
  sub_18BC1DE28();
  *v13 = a1;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = v16;
  *(v13 + 56) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0x3FF0000000000000;
  *(v13 + 80) = v16;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 2;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 0;
  (*(v5 + 32))(v13 + v10[17], v8, v4);

  v17 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  *&v14[v17] = v12;

  return v14;
}

uint64_t sub_18B98CBE8(uint64_t a1, unint64_t a2)
{
  v4 = _s5LayerVMa();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40E8);
  v7 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - v8;
  v33 = a1;
  v9 = *(a1 + 16);
  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  v10 = v9;
  if (v9 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    v23 = 0;
    return v23 & 1;
  }

  if (v9)
  {
    while (1)
    {
      v11 = 0;
      v28 = a2 & 0xFFFFFFFFFFFFFF8;
      v29 = a2 & 0xC000000000000001;
      v27 = v9;
      while (1)
      {
        if (v29)
        {
          v12 = MEMORY[0x18CFFD010](v11, a2, v7);
        }

        else
        {
          if (v11 >= *(v28 + 16))
          {
            goto LABEL_27;
          }

          v12 = *(a2 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 == v11)
        {

          goto LABEL_24;
        }

        if (v11 >= v9)
        {
          goto LABEL_28;
        }

        v15 = v10;
        v16 = v30;
        v17 = *(v31 + 48);
        sub_18B85B5A0(v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v11, &v30[v17], _s5LayerVMa);
        sub_18B9875F0(&v16[v17], v6);
        if (v6[160])
        {
          if (v6[160] == 1)
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              goto LABEL_25;
            }
          }

          else
          {
            type metadata accessor for ReflectionView();
            if (!swift_dynamicCastClass())
            {
LABEL_25:

              sub_18B85B700(v6, _s5LayerVMa);
              v23 = 0;
              return v23 & 1;
            }
          }
        }

        else
        {
          ObjectType = swift_getObjectType();
          if (ObjectType != sub_18B7B0AC0(0, &qword_1EA9D46F0))
          {
            goto LABEL_25;
          }
        }

        v19 = a2;
        v20 = *(v6 + 10);
        v21 = [v13 subviews];
        sub_18B7B0AC0(0, &qword_1EA9D46F0);
        v22 = sub_18BC20D98();

        v23 = sub_18B98CBE8(v20, v22);

        sub_18B85B700(v6, _s5LayerVMa);
        if (v23)
        {
          ++v11;
          v10 = v15;
          v24 = v14 == v15;
          a2 = v19;
          v9 = v27;
          if (!v24)
          {
            continue;
          }
        }

        return v23 & 1;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      if (v9 != sub_18BC219A8())
      {
        goto LABEL_32;
      }

      v10 = sub_18BC219A8();
      if (!v10)
      {
        break;
      }
    }
  }

LABEL_24:
  v23 = 1;
  return v23 & 1;
}

id sub_18B98CF74@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    goto LABEL_13;
  }

  v3 = *v1;
  if (*v1 >> 62)
  {
    result = sub_18BC219A8();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[1];
  if (v5 != result)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x18CFFD010](v1[1], v3);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      result = *(v3 + 8 * v5 + 32);
    }

    v6 = result;
    if (!__OFADD__(v5, 1))
    {
      v1[1] = v5 + 1;
      v8 = v1[2];
      v7 = v1[3];
      v9 = *(v8 + 16);
      if (v7 == v9)
      {

        goto LABEL_12;
      }

      if (v7 < v9)
      {
        v15 = *(_s5LayerVMa() - 8);
        v16 = v7 + 1;
        v17 = v8 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v7;
        v1[3] = v16;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40E8);
        v19 = *(v18 + 48);
        *a1 = v6;
        sub_18B85B5A0(v17, a1 + v19, _s5LayerVMa);
        v11 = *(*(v18 - 8) + 56);
        v13 = a1;
        v14 = 0;
        v12 = v18;
        goto LABEL_14;
      }

LABEL_24:
      __break(1u);
      return result;
    }

    goto LABEL_22;
  }

LABEL_12:
  *(v1 + 32) = 1;
LABEL_13:
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40E8);
  v11 = *(*(v10 - 8) + 56);
  v12 = v10;
  v13 = a1;
  v14 = 1;
LABEL_14:

  return v11(v13, v14, 1, v12);
}

uint64_t sub_18B98D184(uint64_t a1, unint64_t a2)
{
  v4 = _s5LayerVMa();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v17 - v8);
  v10 = *(a1 + 16);
  if (a2 >> 62)
  {
    result = sub_18BC219A8();
    if (v10 != result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 != result)
    {
      return result;
    }
  }

  v17[1] = a2;
  v17[2] = 0;
  v17[3] = a1;
  v17[4] = 0;
  v18 = 0;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  while (1)
  {
    sub_18B98CF74(v9);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40E8);
    if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
    {
      break;
    }

    v13 = *v9;
    sub_18B9875F0(v9 + *(v12 + 48), v6);
    sub_18B98A174(v13);
    v14 = *(v6 + 10);
    v15 = [v13 subviews];
    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v16 = sub_18BC20D98();

    sub_18B98D184(v14, v16);

    sub_18B85B700(v6, _s5LayerVMa);
  }
}

uint64_t SFEditableEffect.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18B7CA054(a1, v10, &qword_1EA9D5220);
  if (!v11)
  {
    sub_18B988BAC(v10, &qword_1EA9D5220);
    goto LABEL_5;
  }

  type metadata accessor for SFEditableEffect(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v3 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  v4 = *&v9[v3];
  v5 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v7 = sub_18B98D8E0(v4, v6);

  return v7 & 1;
}

uint64_t sub_18B98D6C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v22 = a2 + 32;
  v23 = result + 32;
  while (v3 != v2)
  {
    v4 = (v23 + 32 * v3);
    result = *v4;
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    v8 = (v22 + 32 * v3);
    v9 = v8[2];
    v10 = v8[3];
    if (result != *v8 || v5 != v8[1])
    {
      result = sub_18BC21FD8();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(v6 + 16);
    if (v12 != *(v9 + 16))
    {
      return 0;
    }

    v24 = v10;
    if (v12)
    {
      v13 = v6 == v9;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v15 = (v6 + 64);
      v16 = (v9 + 64);
      while (v12)
      {
        v17 = *(v15 - 4);
        v18 = *(v15 - 3);
        result = *(v15 - 1);
        v19 = *(v16 - 4);
        v20 = *(v16 - 3);
        if (*(v15 - 16) == 1)
        {
          if (*&v17 | *&v18)
          {
            if (!*(v16 - 16) || !(*&v19 | *&v20))
            {
              return 0;
            }
          }

          else if (!*(v16 - 16) || *&v19 | *&v20)
          {
            return 0;
          }
        }

        else
        {
          if (*(v16 - 2))
          {
            return 0;
          }

          if (v17 != v19 || v18 != v20)
          {
            return 0;
          }
        }

        if (result != *(v16 - 1) || *v15 != *v16)
        {
          result = sub_18BC21FD8();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v15 += 5;
        v16 += 5;
        if (!--v12)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    v14 = sub_18BABD3FC(v7, v24);

    if ((v14 & 1) == 0)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B98D8E0(uint64_t a1, uint64_t a2)
{
  v4 = _s5LayerVMa() - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_18B85B5A0(v13, v10, _s5LayerVMa);
        sub_18B85B5A0(v14, v6, _s5LayerVMa);
        v16 = sub_18B993064(v10, v6);
        sub_18B85B700(v6, _s5LayerVMa);
        sub_18B85B700(v10, _s5LayerVMa);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_18B98DA88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    v4 = (a2 + 64);
    do
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      if (*(v3 - 16) == 1)
      {
        if (*&v5 | *&v6)
        {
          if (!*(v4 - 16) || !(*&v7 | *&v8))
          {
            return 0;
          }
        }

        else if (!*(v4 - 16) || *&v7 | *&v8)
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 2))
        {
          return 0;
        }

        if (v5 != v7 || v6 != v8)
        {
          return 0;
        }
      }

      if ((*(v3 - 1) != *(v4 - 1) || *v3 != *v4) && (sub_18BC21FD8() & 1) == 0)
      {
        return 0;
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_18B98DB80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  result = sub_18B7B0AC0(0, &qword_1EA9D5BE0);
  v6 = (a1 + 40);
  v7 = (a2 + 40);
  while (v2)
  {
    v8 = *v6;
    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = *(v6 - 1);
    v12 = v9;
    if ((sub_18BC215C8() & 1) == 0)
    {

      return 0;
    }

    result = v8 == v10;
    v13 = v8 != v10 || v2-- == 1;
    v6 += 2;
    v7 += 2;
    if (v13)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B98DCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      updated = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_18B85B5A0(v16, v13, a4);
        sub_18B85B5A0(v17, v9, a4);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B85B700(v9, a4);
        sub_18B85B700(v13, a4);
        if ((updated & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    updated = 0;
  }

  return updated & 1;
}

uint64_t sub_18B98DE58(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_18B85B5A0(v13, v10, _s7SectionVMa_1);
      sub_18B85B5A0(v14, v6, _s7SectionVMa_1);
      if ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      v16 = v10[*(v4 + 20)];
      sub_18B85B700(v10, _s7SectionVMa_1);
      v17 = v6[*(v4 + 20)];
      sub_18B85B700(v6, _s7SectionVMa_1);
      if (((v16 ^ v17) & 1) == 0)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      v18 = v16 ^ v17 ^ 1;
      return v18 & 1;
    }

    sub_18B85B700(v6, _s7SectionVMa_1);
    sub_18B85B700(v10, _s7SectionVMa_1);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_18B98E07C(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x18CFFD010](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x18CFFD010](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_18BC215C8();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_18BC215C8();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_18BC219A8();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_18BC219A8();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_18B98E2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_18B98E344(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_18B98EF50(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
    v22 = sub_18BC20AE8();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_18B98E558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 128);
    for (i = (a1 + 128); ; i += 37)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_18BC21FD8() & 1) == 0)
      {
        break;
      }

      v3 += 37;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_18B98E614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      updated = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_18B85B5A0(v16, v13, a4);
        sub_18B85B5A0(v17, v10, a4);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B85B700(v10, a4);
        sub_18B85B700(v13, a4);
        if ((updated & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    updated = 0;
  }

  return updated & 1;
}

uint64_t sub_18B98E7B4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_18BC21FD8() & 1) == 0)
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

uint64_t sub_18B98E844(uint64_t a1, uint64_t a2)
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
        if (!v6 && (sub_18BC21FD8() & 1) == 0)
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

uint64_t SFEditableEffect.hash.getter()
{
  swift_beginAccess();
  _s5LayerVMa();
  sub_18B98EF50(&qword_1EA9D3D88, _s5LayerVMa);
  sub_18BC1E3F8();
  v0 = sub_18BC20E88();

  return v0;
}

uint64_t sub_18B98EAF8()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B98EB5C()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B98EBA8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_18BC21E28();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_18B98EC28@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_18BC21E28();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_18B98EC80(uint64_t a1)
{
  v2 = sub_18B98EEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B98ECBC(uint64_t a1)
{
  v2 = sub_18B98EEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *SFEditableEffect.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3D90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B98EEFC();
  sub_18BC221D8();
  if (v1)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3DA0);
    sub_18B98F14C(&qword_1EA9D3DA8, &qword_1EA9D3DB0);
    sub_18BC21EA8();
    (*(v4 + 8))(v6, v3);
    v9 = v11[5];
    v10 = OBJC_IVAR___SFEditableEffect_layers;
    swift_beginAccess();
    *&v7[v10] = v9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_18B98EEFC()
{
  result = qword_1EA9D3D98;
  if (!qword_1EA9D3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3D98);
  }

  return result;
}

uint64_t sub_18B98EF50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SFEditableEffect.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3DB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B98EEFC();
  sub_18BC221F8();
  v8 = OBJC_IVAR___SFEditableEffect_layers;
  swift_beginAccess();
  v10 = *(v2 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3DA0);
  sub_18B98F14C(&qword_1EA9D3DC0, &qword_1EA9D3DC8);
  sub_18BC21F28();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18B98F14C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D3DA0);
    sub_18B98EF50(a2, _s5LayerVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_18B98F1E8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = SFEditableEffect.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_18B98F238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_18B98F280(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_18B98F2D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B98F318(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_18B98F420()
{
  result = qword_1EA9D3E20;
  if (!qword_1EA9D3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E20);
  }

  return result;
}

unint64_t sub_18B98F4BC()
{
  result = qword_1EA9D3E38;
  if (!qword_1EA9D3E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E38);
  }

  return result;
}

unint64_t sub_18B98F514()
{
  result = qword_1EA9D3E40;
  if (!qword_1EA9D3E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E40);
  }

  return result;
}

uint64_t sub_18B98F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18B80DBC4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4098);
  sub_18B7B0AC0(0, &qword_1ED6514F0);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v7;
    v6 = 2;
  }

  else
  {
    sub_18B80DBC4(a1, v8);
    result = swift_dynamicCast();
    if (result)
    {
      v5 = v7;
      v6 = 1;
    }

    else
    {
      sub_18B80DBC4(a1, v8);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = 0;
        v5 = v7;
      }

      else
      {
        v5 = 0;
        v6 = -1;
      }
    }
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_18B98F67C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4210);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4218);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4220);
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4228);
  v12 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v21 - v13;
  v28 = *v2;
  v15 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B997194();
  sub_18BC221F8();
  if (v15)
  {
    if (v15 == 1)
    {
      LOBYTE(v30) = 1;
      sub_18B99723C();
      v16 = v29;
      sub_18BC21EC8();
      v30 = v28;
      sub_18B992D74();
      v17 = v24;
      sub_18BC21F28();
      (*(v23 + 8))(v8, v17);
    }

    else
    {
      LOBYTE(v30) = 2;
      sub_18B9971E8();
      v18 = v25;
      v16 = v29;
      sub_18BC21EC8();
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3EB0);
      sub_18B7B0B08(&qword_1EA9D3F08, &qword_1EA9D3EB0);
      v19 = v27;
      sub_18BC21F28();
      (*(v26 + 8))(v18, v19);
    }
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_18B997290();
    v16 = v29;
    sub_18BC21EC8();
    sub_18BC21F08();
    (*(v22 + 8))(v11, v9);
  }

  return (*(v12 + 8))(v14, v16);
}

void sub_18B98FAD8()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    MEMORY[0x18CFFD660](0);
    goto LABEL_12;
  }

  if (*(v0 + 8) == 1)
  {
    MEMORY[0x18CFFD660](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x18CFFD690](v2);
    return;
  }

  MEMORY[0x18CFFD660](2);
  if (!v1)
  {
LABEL_12:
    sub_18BC22178();
    return;
  }

  sub_18BC22178();
  v3 = v1;
  sub_18BC215D8();

  sub_18B9929B8(v1, 2);
}

uint64_t sub_18B98FB8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D41D0);
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v35[-v3];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D41D8);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v35[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D41E0);
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D41E8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35[-v11];
  v13 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_18B997194();
  v14 = v45;
  sub_18BC221D8();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  v37 = 0;
  v16 = v42;
  v15 = v43;
  v45 = v10;
  v17 = v44;
  v18 = sub_18BC21EB8();
  v19 = (2 * *(v18 + 16)) | 1;
  v47 = v18;
  v48 = v18 + 32;
  v49 = 0;
  v50 = v19;
  v20 = sub_18BB38050();
  if (v20 == 3 || v49 != v50 >> 1)
  {
    v24 = sub_18BC21B48();
    swift_allocError();
    v25 = v12;
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FE8);
    *v27 = &type metadata for SFFilter.Value;
    sub_18BC21E48();
    sub_18BC21B38();
    (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v45 + 8))(v25, v9);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  v36 = v20;
  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v51) = 1;
      sub_18B99723C();
      v21 = v37;
      sub_18BC21E38();
      if (!v21)
      {
        sub_18B992B4C();
        v22 = v38;
        sub_18BC21EA8();
        v23 = v45;
        (*(v40 + 8))(v5, v22);
        (*(v23 + 8))(v12, v9);
LABEL_16:
        swift_unknownObjectRelease();
        v31 = v51;
        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v51) = 2;
      sub_18B9971E8();
      v32 = v15;
      v33 = v37;
      sub_18BC21E38();
      if (!v33)
      {
        v42 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3EB0);
        sub_18B7B0B08(&qword_1EA9D3EB8, &qword_1EA9D3EB0);
        v34 = v39;
        sub_18BC21EA8();
        (*(v41 + 8))(v32, v34);
        (*(v45 + 8))(v42, v9);
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  LOBYTE(v51) = 0;
  sub_18B997290();
  v29 = v37;
  sub_18BC21E38();
  if (v29)
  {
LABEL_14:
    (*(v45 + 8))(v12, v9);
    goto LABEL_9;
  }

  v30 = sub_18BC21E88();
  (*(v16 + 1))(v8, v6);
  (*(v45 + 8))(v12, v9);
  swift_unknownObjectRelease();
  v31 = v30 & 1;
LABEL_17:
  *v17 = v31;
  *(v17 + 8) = v36;
  return __swift_destroy_boxed_opaque_existential_1Tm(v46);
}

uint64_t sub_18B99027C(uint64_t a1)
{
  v2 = sub_18B997290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B9902B8(uint64_t a1)
{
  v2 = sub_18B997290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B9902F4(uint64_t a1)
{
  v2 = sub_18B997194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B990330(uint64_t a1)
{
  v2 = sub_18B997194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B99036C(uint64_t a1)
{
  v2 = sub_18B99723C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B9903A8(uint64_t a1)
{
  v2 = sub_18B99723C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B9903E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18BC21FD8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18B990464(uint64_t a1)
{
  v2 = sub_18B9971E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B9904A0(uint64_t a1)
{
  v2 = sub_18B9971E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B9904DC()
{
  sub_18BC22158();
  sub_18B98FAD8();
  return sub_18BC221A8();
}

uint64_t sub_18B990534()
{
  sub_18BC22158();
  sub_18B98FAD8();
  return sub_18BC221A8();
}

uint64_t sub_18B9905B8()
{
  v0 = sub_18BC20BD8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3E410;
  v4 = sub_18BC20BD8();
  *(v3 + 32) = xmmword_18BC3FC70;
  *(v3 + 48) = 0;
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  result = sub_18B9945B0(v0, v2, v3);
  qword_1EA9F7870 = result;
  *algn_1EA9F7878 = v7;
  qword_1EA9F7880 = v8;
  unk_1EA9F7888 = v9;
  return result;
}

uint64_t sub_18B990668()
{
  v0 = sub_18BC20BD8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3E410;
  v4 = sub_18BC20BD8();
  *(v3 + 32) = xmmword_18BC3FC70;
  *(v3 + 48) = 0;
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  result = sub_18B9945B0(v0, v2, v3);
  qword_1EA9F7890 = result;
  *algn_1EA9F7898 = v7;
  qword_1EA9F78A0 = v8;
  unk_1EA9F78A8 = v9;
  return result;
}

uint64_t sub_18B990718()
{
  v0 = sub_18BC20BD8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3E410;
  v4 = sub_18BC20BD8();
  *(v3 + 32) = xmmword_18BC3FC70;
  *(v3 + 48) = 0;
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  result = sub_18B9945B0(v0, v2, v3);
  qword_1EA9F78B0 = result;
  *algn_1EA9F78B8 = v7;
  qword_1EA9F78C0 = v8;
  unk_1EA9F78C8 = v9;
  return result;
}

uint64_t sub_18B9907C8()
{
  result = sub_18B9907F0();
  qword_1EA9F78D0 = result;
  *algn_1EA9F78D8 = v1;
  qword_1EA9F78E0 = v2;
  unk_1EA9F78E8 = v3;
  return result;
}

uint64_t sub_18B9907F0()
{
  v0 = sub_18BC20BD8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3FC60;
  v4 = sub_18BC20BD8();
  *(v3 + 32) = xmmword_18BC3FC80;
  *(v3 + 48) = 0;
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  v6 = sub_18BC20BD8();
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  v8 = sub_18BC20BD8();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 1;
  *(v3 + 136) = v8;
  *(v3 + 144) = v9;
  v13 = sub_18B9945B0(v0, v2, v3);
  v10 = sub_18BC20BD8();
  sub_18B990914(1, v10, v11);
  return v13;
}

uint64_t sub_18B990914(char a1, uint64_t a2, uint64_t a3)
{
  sub_18B994B7C(a2, a3, *(v3 + 16), v20);
  if (v22)
  {
    v7 = v20[0];
    v8 = v20[1];
    v9 = v21;
    if (a1 == 2)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }

    else
    {
      LOBYTE(v15) = a1 & 1;
      sub_18BC21A68();
    }

    v11 = sub_18B994C48(&v17, v7, v8, v9 & 1);
    sub_18B988BAC(v20, &qword_1EA9D4078);
    sub_18B988BAC(&v17, &qword_1EA9D4080);
    if ((v11 & 1) == 0)
    {
    }

    *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4088);
    v19 = sub_18B996108();
    LOBYTE(v17) = a1;
    sub_18B98F568(&v17, &v15);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    v12 = v16;
    if (v16 == 255)
    {
    }

    else
    {
      v13 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v17 = *(v3 + 24);
      sub_18BAA6EAC(v13, v12, a2, a3, isUniquelyReferenced_nonNull_native);

      *(v3 + 24) = v17;
    }
  }

  else
  {
  }

  return result;
}

void sub_18B990AD0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_18B994B7C(a2, a3, *(v3 + 16), v20);
  if (v22)
  {
    v6 = v20[0];
    v7 = v20[1];
    v8 = v21;
    v23 = v21;
    if (a1)
    {
      v15 = a1;
      sub_18B7B0AC0(0, &qword_1ED6514F0);
      sub_18B996208();
      v9 = a1;
      sub_18BC21A68();
      v8 = v23;
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }

    v10 = sub_18B994C48(&v17, v6, v7, v8 & 1);
    sub_18B988BAC(v20, &qword_1EA9D4078);
    sub_18B988BAC(&v17, &qword_1EA9D4080);
    if (v10)
    {
      *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0);
      v19 = sub_18B996184();
      *&v17 = a1;
      sub_18B98F568(&v17, &v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      v11 = v16;
      if (v16 == 255)
      {
      }

      else
      {
        v12 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v17 = *(v3 + 24);
        sub_18BAA6EAC(v12, v11, a2, a3, isUniquelyReferenced_nonNull_native);

        *(v3 + 24) = v17;
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_18B990CD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_18B994B7C(a3, a4, *(v4 + 16), v22);
  if (v24)
  {
    v9 = v22[0];
    v10 = v22[1];
    v11 = v23;
    if (a2)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    else
    {
      v17 = a1;
      sub_18B7F3B64();
      sub_18BC21A68();
    }

    v13 = sub_18B994C48(&v19, v9, v10, v11 & 1);
    sub_18B988BAC(v22, &qword_1EA9D4078);
    sub_18B988BAC(&v19, &qword_1EA9D4080);
    if ((v13 & 1) == 0)
    {
    }

    *(&v20 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40D0);
    v21 = sub_18B996334();
    *&v19 = a1;
    BYTE8(v19) = a2 & 1;
    sub_18B98F568(&v19, &v17);
    __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    v14 = v18;
    if (v18 == 255)
    {
    }

    else
    {
      v15 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v19 = *(v4 + 24);
      sub_18BAA6EAC(v15, v14, a3, a4, isUniquelyReferenced_nonNull_native);

      *(v4 + 24) = v19;
    }
  }

  else
  {
  }

  return result;
}

void sub_18B990E8C()
{
  sub_18B990EB4();
  qword_1EA9F78F0 = v0;
  *algn_1EA9F78F8 = v1;
  qword_1EA9F7900 = v2;
  unk_1EA9F7908 = v3;
}

void sub_18B990EB4()
{
  v0 = sub_18BC20BD8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3FC90;
  v4 = sub_18BC20BD8();
  *(v3 + 32) = xmmword_18BC3FC80;
  *(v3 + 48) = 0;
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 72) = xmmword_18BC3FCA0;
  *(v3 + 88) = 1;
  strcpy((v3 + 96), "inputMaskImage");
  *(v3 + 111) = -18;
  v6 = sub_18BC20BD8();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 1;
  *(v3 + 136) = v6;
  *(v3 + 144) = v7;
  v8 = sub_18BC20BD8();
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 1;
  *(v3 + 176) = v8;
  *(v3 + 184) = v9;
  sub_18B9945B0(v0, v2, v3);
  v10 = objc_opt_self();
  v11 = sub_18BC20B98();
  v12 = [v10 sf:v11 imageNamed:?];

  if (v12)
  {
    sub_18B990AD0(v12, 0x73614D7475706E69, 0xEE006567616D496BLL);
    v13 = sub_18BC20BD8();
    sub_18B990914(1, v13, v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18B991084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3F70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B995190();
  sub_18BC221F8();
  LOBYTE(v17) = 0;
  sub_18BC21EF8();
  if (!v5)
  {
    v11 = v14;
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3F40);
    sub_18B995310();
    sub_18BC21F28();
    v17 = v11;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3F58);
    sub_18B9953E8(&qword_1EA9D3F88, sub_18B99546C);
    sub_18BC21F28();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_18B9912B0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a4;
  *&v28 = a2;
  *(&v28 + 1) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4280);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4288);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4290);
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4298);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B9972E4();
  sub_18BC221F8();
  if (v27)
  {
    if (v28 == 0)
    {
      LOBYTE(v29) = 0;
      sub_18B997464();
      sub_18BC21EC8();
      (*(v21 + 8))(v12, v10);
    }

    else
    {
      LOBYTE(v29) = 2;
      sub_18B997338();
      v17 = v22;
      sub_18BC21EC8();
      (*(v23 + 8))(v17, v24);
    }

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    LOBYTE(v29) = 1;
    sub_18B99738C();
    sub_18BC21EC8();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4268);
    sub_18B9974B8();
    v18 = v26;
    sub_18BC21F28();
    (*(v25 + 8))(v9, v18);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_18B9916B0()
{
  v1 = 0x737475706E69;
  if (*v0 != 1)
  {
    v1 = 0x7365756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_18B9916FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18B994DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18B991724(uint64_t a1)
{
  v2 = sub_18B995190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B991760(uint64_t a1)
{
  v2 = sub_18B995190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B99179C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_18BC22158();
  sub_18BC20C28();
  sub_18BB368AC(v4, v2);
  sub_18B9927B0(v4, v1);
  return sub_18BC221A8();
}

uint64_t sub_18B99180C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_18BC20C28();
  sub_18BB368AC(a1, v4);

  return sub_18B9927B0(a1, v3);
}

uint64_t sub_18B991864()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_18BC22158();
  sub_18BC20C28();
  sub_18BB368AC(v4, v2);
  sub_18B9927B0(v4, v1);
  return sub_18BC221A8();
}

uint64_t sub_18B9918D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18B994EB8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_18B991920(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_18BC21FD8() & 1) == 0 || (sub_18B98DA88(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_18BABD3FC(v3, v4);
}

uint64_t sub_18B9919B4(uint64_t a1)
{
  v2 = sub_18B997464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B9919F0(uint64_t a1)
{
  v2 = sub_18B997464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B991A2C()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t sub_18B991A74()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t sub_18B991AB8(uint64_t a1)
{
  v2 = sub_18B9972E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B991AF4(uint64_t a1)
{
  v2 = sub_18B9972E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B991B30()
{
  sub_18BC22158();
  MEMORY[0x18CFFD660](0);
  return sub_18BC221A8();
}

uint64_t sub_18B991B74()
{
  sub_18BC22158();
  MEMORY[0x18CFFD660](0);
  return sub_18BC221A8();
}

uint64_t sub_18B991BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18BC21FD8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18B991C4C(uint64_t a1)
{
  v2 = sub_18B99738C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B991C88(uint64_t a1)
{
  v2 = sub_18B99738C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B991CC4(uint64_t a1)
{
  v2 = sub_18B997338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B991D00(uint64_t a1)
{
  v2 = sub_18B997338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B991D3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18BC22158();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFFD660](v4);
  }

  else
  {
    MEMORY[0x18CFFD660](1);
    sub_18BB11F14(v1, v2);
  }

  return sub_18BC221A8();
}

uint64_t sub_18B991DD8()
{
  if (*(v0 + 16) == 1)
  {
    if (*v0 == 0)
    {
      v1 = 0;
    }

    else
    {
      v1 = 2;
    }

    return MEMORY[0x18CFFD660](v1);
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    MEMORY[0x18CFFD660](1);

    return sub_18BB11F14(v2, v3);
  }
}

uint64_t sub_18B991E6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18BC22158();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFFD660](v4);
  }

  else
  {
    MEMORY[0x18CFFD660](1);
    sub_18BB11F14(v1, v2);
  }

  return sub_18BC221A8();
}

uint64_t sub_18B991F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18B9955D0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

BOOL sub_18B991F58(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    v6 = *&v4 | *&v5;
    if (*&v2 | *&v3)
    {
      v7 = v6 != 0;
    }

    else
    {
      v7 = v6 == 0;
    }

    return *(a2 + 16) && v7;
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  else
  {
    v9 = v2 == v4;
    return v3 == v5 && v9;
  }
}

uint64_t sub_18B991FC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3FB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18B995DC0();
  sub_18BC221F8();
  v11 = *v3;
  v12 = *(v3 + 16);
  v10[15] = 0;
  sub_18B995E68();
  sub_18BC21F28();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_18BC21EF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18B992168()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x70795465756C6176;
  }
}

uint64_t sub_18B9921A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
  if (v6 || (sub_18BC21FD8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_18BC21FD8();

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

uint64_t sub_18B992284(uint64_t a1)
{
  v2 = sub_18B995DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18B9922C0(uint64_t a1)
{
  v2 = sub_18B995DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18B9922FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18BC22158();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFFD660](v4);
  }

  else
  {
    MEMORY[0x18CFFD660](1);
    sub_18BB11F14(v1, v2);
  }

  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B9923B4()
{
  if (*(v0 + 16) == 1)
  {
    if (*v0 == 0)
    {
      v1 = 0;
    }

    else
    {
      v1 = 2;
    }

    MEMORY[0x18CFFD660](v1);
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    MEMORY[0x18CFFD660](1);
    sub_18BB11F14(v2, v3);
  }

  return sub_18BC20C28();
}

uint64_t sub_18B992458()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18BC22158();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFFD660](v4);
  }

  else
  {
    MEMORY[0x18CFFD660](1);
    sub_18BB11F14(v1, v2);
  }

  sub_18BC20C28();
  return sub_18BC221A8();
}

double sub_18B99250C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18B995BDC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_18B99256C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v6 == 1)
  {
    if (*&v4 | *&v5)
    {
      if (!*(a2 + 16) || !(*&v9 | *&v10))
      {
        return 0;
      }
    }

    else if (!*(a2 + 16) || *&v9 | *&v10)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (v4 != v9 || v5 != v10)
    {
      return 0;
    }
  }

  if (v7 == *(a2 + 24) && v8 == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8();
  }
}

unint64_t sub_18B99260C()
{
  result = qword_1EA9D3E48;
  if (!qword_1EA9D3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E48);
  }

  return result;
}

unint64_t sub_18B992664()
{
  result = qword_1EA9D3E50;
  if (!qword_1EA9D3E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E50);
  }

  return result;
}

unint64_t sub_18B9926BC()
{
  result = qword_1EA9D3E58;
  if (!qword_1EA9D3E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E58);
  }

  return result;
}

unint64_t sub_18B992714()
{
  result = qword_1EA9D3E60;
  if (!qword_1EA9D3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E60);
  }

  return result;
}

uint64_t sub_18B9927B0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_18BC1E3F8();
  v19 = 0;
  v9 = 0;
  while (v6)
  {
LABEL_11:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
    v12 = *(*(a2 + 48) + v11 + 8);
    v13 = *(a2 + 56) + v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_18BC1E3F8();
    sub_18B9929A4(v14, v15);
    if (!v12)
    {
LABEL_22:

      return MEMORY[0x18CFFD660](v19);
    }

    sub_18BC20C28();

    if (v15)
    {
      if (v15 == 1)
      {
        MEMORY[0x18CFFD660](1);
        if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        MEMORY[0x18CFFD690](v16);
      }

      else
      {
        MEMORY[0x18CFFD660](2);
        sub_18BC22178();
        if (v14)
        {
          v17 = v14;
          sub_18BC215D8();
          sub_18B9929B8(v14, 2);
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        sub_18B9929B8(v18, 2);
      }
    }

    else
    {
      MEMORY[0x18CFFD660](0);
      sub_18BC22178();
    }

    v6 &= v6 - 1;
    result = sub_18BC221A8();
    v19 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

id sub_18B9929A4(id result, char a2)
{
  if (a2 == 2)
  {
    return result;
  }

  return result;
}

void sub_18B9929B8(id a1, char a2)
{
  if (a2 == 2)
  {
  }
}

unint64_t sub_18B9929CC()
{
  result = qword_1EA9D3E78;
  if (!qword_1EA9D3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E78);
  }

  return result;
}

unint64_t sub_18B992A20()
{
  result = qword_1EA9D3E90;
  if (!qword_1EA9D3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3E90);
  }

  return result;
}

unint64_t sub_18B992A74()
{
  result = qword_1EA9D3EA0;
  if (!qword_1EA9D3EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D3E98);
    sub_18B992AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3EA0);
  }

  return result;
}