uint64_t sub_190AA2A80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_190D58760() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || (sub_1909A6DC8(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  _s17BackgroundSectionVMa(0);

  return sub_190D51870();
}

uint64_t sub_190AA2B30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_190D52690();

    return sub_190D52690();
  }

  return result;
}

unint64_t sub_190AA2B74(unint64_t result)
{
  if (result >> 62 == 2)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_190AA2B98(uint64_t a1, uint64_t a2)
{
  v4 = _s21BackgroundGalleryItemVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_190AA2C08()
{
  _s19ImageViewControllerCMa();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_190AA2C40(char *a1)
{
  v3 = *v1;
  v4 = objc_opt_self();
  v5 = *&a1[OBJC_IVAR____TtCV7ChatKit7Gallery19ImageViewController_imageView];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v10[4] = sub_190AA3434;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_190840E6C;
  v10[3] = &block_descriptor_69;
  v7 = _Block_copy(v10);
  v8 = v3;
  v9 = a1;

  [v4 transitionWithView:v5 duration:5242880 options:v7 animations:0 completion:0.3];
  _Block_release(v7);
}

uint64_t sub_190AA2D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AA33E0();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190AA2DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AA33E0();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190AA2E24()
{
  sub_190AA33E0();
  sub_190D55130();
  __break(1u);
}

void sub_190AA2E4C()
{
  v27.receiver = v0;
  v27.super_class = _s19ImageViewControllerCMa();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtCV7ChatKit7Gallery19ImageViewController_imageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setContentMode_];
  [v1 setClipsToBounds_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_190DD86A0;
  v5 = [v1 leadingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 leadingAnchor];

  v9 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 trailingAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v4 + 40) = v14;
  v15 = [v1 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v4 + 48) = v19;
  v20 = [v1 bottomAnchor];
  v21 = [v0 view];
  if (v21)
  {
    v22 = v21;
    v23 = objc_opt_self();
    v24 = [v22 bottomAnchor];

    v25 = [v20 constraintEqualToAnchor_];
    *(v4 + 56) = v25;
    sub_19086225C();
    v26 = sub_190D57160();

    [v23 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_190AA3364()
{
  v2.receiver = v0;
  v2.super_class = _s19ImageViewControllerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190AA33E0()
{
  result = qword_1EAD5C2E0;
  if (!qword_1EAD5C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C2E0);
  }

  return result;
}

id sub_190AA3450()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *v0;
  v7 = sub_1909CD2B4(v4, v5);
  sub_1909CD400(v3);
  v8 = _s39PosterKitRenderingWrappedViewControllerCMa(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_wrappedViewController] = 0;
  *&v9[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_posterContents] = v6;
  *&v9[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_snapshotController] = v7;
  sub_190866DA0(v3, &v9[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_channelIdentifier]);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
  sub_190AA463C(v3);
  return v10;
}

uint64_t sub_190AA3580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AA4A58(&unk_1EAD5C390, _s45PosterKitRenderingViewControllerRepresentableVMa);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190AA3614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AA4A58(&unk_1EAD5C390, _s45PosterKitRenderingViewControllerRepresentableVMa);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190AA36A8()
{
  sub_190AA4A58(&unk_1EAD5C390, _s45PosterKitRenderingViewControllerRepresentableVMa);
  sub_190D55130();
  __break(1u);
}

id sub_190AA3700()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  _s39PosterKitRenderingWrappedViewControllerCMa(0);
  v4 = *v0;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  swift_unknownObjectRetain();
  v7 = sub_1909CD2B4(v5, v6);
  sub_1909CD400(v3);
  swift_getObjectType();
  return sub_190AA4AA0(v4, v7, v3);
}

uint64_t sub_190AA37E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AA4A58(&qword_1EAD5C388, _s52PosterKitRenderingViewControllerContentRepresentableVMa);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190AA387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AA4A58(&qword_1EAD5C388, _s52PosterKitRenderingViewControllerContentRepresentableVMa);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190AA3910()
{
  sub_190AA4A58(&qword_1EAD5C388, _s52PosterKitRenderingViewControllerContentRepresentableVMa);
  sub_190D55130();
  __break(1u);
}

void sub_190AA39D0()
{
  v81 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v68 - v2;
  v4 = _s39PosterKitRenderingWrappedViewControllerCMa(0);
  v78.receiver = v0;
  v78.super_class = v4;
  objc_msgSendSuper2(&v78, sel_viewDidLoad);
  v5 = [objc_allocWithZone(type metadata accessor for CKPosterRenderingContext()) init];
  v76 = v0;
  sub_190866DA0(&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_channelIdentifier], v3);
  v6 = sub_190D518A0();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v3, 1, v6) != 1)
  {
    v8 = sub_190D51860();
    (*(v7 + 8))(v3, v6);
  }

  v9 = objc_opt_self();
  v10 = [v9 snapshotDefinitionForChannelIdentifier_];

  v11 = v76;
  v12 = [v76 traitCollection];
  v13 = [v12 userInterfaceStyle];

  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotDescriptor(v14);
  v16 = objc_allocWithZone(*(v15 + 232));
  v75 = v10;
  v17 = [v16 initWithUserInterfaceStyle:v13 interfaceOrientation:1 snapshotDefinition:?];
  v18 = *&v11[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_posterContents];
  gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotRequest(v19);
  v21 = objc_allocWithZone(*(v20 + 248));
  v71 = v17;
  v22 = [v21 initWithPoster:v18 snapshotDescriptor:v17];
  v23 = *&v11[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_snapshotController];
  v73 = v22;
  v74 = v23;
  if (v23)
  {
    v79 = 0;
    v24 = [v23 currentSnapshotBundleForRequest:v22 error:&v79];
    v25 = v79;
    if (!v24)
    {
      v26 = v25;
      v27 = sub_190D51420();

      swift_willThrow();
    }

    v28 = [v23 description];
    v29 = sub_190D56F10();
    v31 = v30;

    if (v24)
    {
      v32 = [v24 description];
      v70 = sub_190D56F10();
      v34 = v33;
    }

    else
    {
      v70 = 7104878;
      v34 = 0xE300000000000000;
    }
  }

  else
  {
    v70 = 7104878;
    v24 = 0;
    v34 = 0xE300000000000000;
    v29 = 7104878;
    v31 = 0xE300000000000000;
  }

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v35 = sub_190D53040();
  __swift_project_value_buffer(v35, qword_1EAD9D730);
  sub_190D52690();
  sub_190D52690();
  v36 = sub_190D53020();
  v37 = sub_190D57680();

  v38 = os_log_type_enabled(v36, v37);
  v72 = v31;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v68 = v35;
    v40 = v18;
    v41 = v9;
    v42 = v34;
    v43 = v5;
    v44 = v31;
    v45 = v39;
    v46 = swift_slowAlloc();
    v69 = v24;
    v47 = v46;
    v79 = v46;
    *v45 = 136315394;
    v48 = v44;
    v5 = v43;
    v49 = v42;
    v9 = v41;
    v18 = v40;
    v35 = v68;
    *(v45 + 4) = sub_19021D9F8(v29, v48, &v79);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_19021D9F8(v70, v49, &v79);
    _os_log_impl(&dword_19020E000, v36, v37, "Loading PRUISPosterRenderingViewController in a tile with snapshotController=%s snapshotBundle=%s", v45, 0x16u);
    swift_arrayDestroy();
    v50 = v47;
    v24 = v69;
    MEMORY[0x193AF7A40](v50, -1, -1);
    MEMORY[0x193AF7A40](v45, -1, -1);
  }

  v51 = v5;
  v52 = v75;
  v53 = [v9 posterRenderingViewControllerWithContents:v18 context:v51 snapshotController:v74 initialSnapshotBundle:v24 snapshotDefinition:v75];

  v79 = 0;
  v80 = 0xE000000000000000;
  MEMORY[0x193AF28B0](60, 0xE100000000000000);
  v77 = v53;
  sub_190D58450();
  MEMORY[0x193AF28B0](62, 0xE100000000000000);
  v54 = v79;
  v55 = v80;
  if (qword_1EAD51AE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v35, qword_1EAD9DCE8);
  sub_190D52690();
  v56 = sub_190D53020();
  v57 = sub_190D57680();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v79 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_19021D9F8(v54, v55, &v79);
    _os_log_impl(&dword_19020E000, v56, v57, "Initing tile rendering VC %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x193AF7A40](v59, -1, -1);
    MEMORY[0x193AF7A40](v58, -1, -1);
  }

  v60 = v53;
  v61 = v76;
  [v76 addChildViewController_];
  v62 = [v61 view];
  if (!v62)
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v63 = v62;
  v64 = [v60 view];
  if (!v64)
  {
    goto LABEL_22;
  }

  v65 = v64;

  [v63 addSubview_];

  v66 = v76;
  [v60 didMoveToParentViewController_];

  v67 = *&v66[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_wrappedViewController];
  *&v66[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_wrappedViewController] = v60;
}

id sub_190AA4188()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_wrappedViewController];
  if (v2)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    v3 = v2;
    MEMORY[0x193AF28B0](60, 0xE100000000000000);
    sub_190D58450();
    MEMORY[0x193AF28B0](62, 0xE100000000000000);
    if (qword_1EAD51AE0 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9DCE8);
    sub_190D52690();
    v5 = sub_190D53020();
    v6 = sub_190D57680();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v9 = sub_19021D9F8(0, 0xE000000000000000, v12);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_19020E000, v5, v6, "Deiniting tile rendering VC %s>", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x193AF7A40](v8, -1, -1);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    else
    {
    }
  }

  v10 = _s39PosterKitRenderingWrappedViewControllerCMa(0);
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

void sub_190AA4434()
{
  v14.receiver = v0;
  v14.super_class = _s39PosterKitRenderingWrappedViewControllerCMa(0);
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_wrappedViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_190AA4598()
{
  sub_1902201F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_190AA463C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_190AA46F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_190D53A80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C328);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C328);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_190AA490C()
{
  sub_190AA46F8(319, &qword_1EAD5C348, &qword_1EAD5C350);
  if (v0 <= 0x3F)
  {
    sub_190AA46F8(319, &unk_1EAD5C358, &unk_1EAD58460);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_190AA4A58(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_190AA4AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s39PosterKitRenderingWrappedViewControllerCMa(0);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_wrappedViewController] = 0;
  *&v7[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_posterContents] = a1;
  *&v7[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_snapshotController] = a2;
  sub_190866DA0(a3, &v7[OBJC_IVAR____TtCV7ChatKit7GalleryP33_4489ABB75B5637A93D728B7DF599FBFA39PosterKitRenderingWrappedViewController_channelIdentifier]);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  sub_190AA463C(a3);
  return v8;
}

uint64_t sub_190AA4B70()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_190AA4C38()
{
  swift_getKeyPath();
  v3 = v0;
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v1 = *(v0 + 40);
  sub_19091B348(v1, *(v3 + 48));
  return v1;
}

uint64_t sub_190AA4CEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  a2[1] = v5;
  return sub_19091B348(v4, v5);
}

uint64_t sub_190AA4D98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_19091B348(*a1, v2);
  return sub_190AA4DDC(v1, v2);
}

uint64_t sub_190AA4DDC(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        if (a2 == 6)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_26;
        }

        if (a2 == 7)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v6 == 4)
    {
      if (a2 == 4)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 5)
    {
      goto LABEL_31;
    }

LABEL_27:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();
    sub_190AAEA40(a1, a2);
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (a2 == 2)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 3)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (!v6)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (v6 != 1)
  {
LABEL_26:
    if (a2 >= 8)
    {
      if (v5 == a1 && v6 == a2)
      {
        goto LABEL_31;
      }

      v9 = *(v2 + 40);
      v10 = *(v2 + 48);
      v11 = sub_190D58760();
      v6 = v10;
      v12 = v11;
      v5 = v9;
      if (v12)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_27;
  }

  if (a2 != 1)
  {
    goto LABEL_27;
  }

LABEL_31:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return sub_190AAEA40(v5, v6);
}

uint64_t sub_190AA5014()
{
  swift_getKeyPath();
  v3 = v0;
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v1 = *(v0 + 56);
  sub_190A945C4(v1, *(v3 + 64), *(v3 + 72));
  return v1;
}

uint64_t sub_190AA50D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  v6 = *(a1 + 72);
  *(a1 + 72) = a4;
  sub_190A945C4(a2, a3, a4);
  return sub_190AAEA64(v4, v5, v6);
}

uint64_t sub_190AA5130()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  return *(v0 + 96);
}

uint64_t sub_190AA51D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_190AA52A0(uint64_t result)
{
  if (*(v1 + 96) == (result & 1))
  {
    *(v1 + 96) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190AA53B8()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  swift_beginAccess();
  return sub_190D52690();
}

uint64_t sub_190AA5470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  swift_beginAccess();
  *a2 = *(v3 + 104);
  return sub_190D52690();
}

uint64_t sub_190AA555C(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_190D52690();
  v4 = sub_1909A84E8(v3, a1);

  if (v4)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();
  }
}

uint64_t sub_190AA56A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 104) = a2;
  sub_190D52690();
}

void *sub_190AA570C()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void sub_190AA57B4(void *a1, double a2)
{
  v3 = v2;
  v5 = *(v2 + 112);
  if (!v5)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  gotLoadHelper_x2__OBJC_CLASS___PRUISPosterChannel(a2);
  sub_1902188FC(0, v6);
  v7 = v5;
  v8 = a1;
  v9 = sub_190D57D90();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + 112);
LABEL_8:
  *(v3 + 112) = a1;
}

uint64_t sub_190AA5944()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  return sub_190D50920();
}

uint64_t sub_190AA59E8(uint64_t a1)
{
  if (*(v1 + 120) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();
  }
}

void *sub_190AA5B1C()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

id sub_190AA5BC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v4 = *(v3 + 136);
  *a2 = v4;

  return v4;
}

void sub_190AA5C7C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 136);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1902188FC(0, &qword_1EAD44EB0);
  v5 = v4;
  v6 = a1;
  v7 = sub_190D57D90();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 136);
LABEL_8:
  *(v2 + 136) = a1;
}

uint64_t sub_190AA5E0C()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  return *(v0 + 144);
}

__n128 sub_190AA5EB0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  result = *(v3 + 144);
  v5 = *(v3 + 160);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_190AA5F58()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C10();
}

uint64_t sub_190AA6030()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  return *(v0 + 176);
}

__n128 sub_190AA60D4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v4 = v3[12].n128_u64[0];
  result = v3[11];
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

uint64_t sub_190AA6184()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C10();
}

uint64_t sub_190AA6264()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  return *(v0 + 200);
}

uint64_t sub_190AA6304(uint64_t result)
{
  if (qword_190DEE6D8[*(v1 + 200)] == qword_190DEE6D8[result])
  {
    *(v1 + 200) = result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190AA6430()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtCV7ChatKit7Gallery9ViewModel___observationRegistrar;
  v16 = v0;
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v3 = v0[18];
  if (v3 == 2)
  {
    v4 = v0[4];
    swift_getKeyPath();
    v16 = v0;
    sub_190D51C20();

    v15[3] = v0[24];
    v5 = sub_190977CF0(v4);
    LODWORD(v6) = [objc_opt_self() generativePlaygroundModelsAvailable];
    v7 = [v4 chat];
    v15[2] = v2;
    if (v7)
    {
      v8 = v7;
      if ([v7 isGroupChat])
      {

        LOBYTE(v9) = 2;
      }

      else
      {
        v11 = [v8 isChatBot];

        if (v11)
        {
          LOBYTE(v9) = 3;
        }

        else
        {
          LOBYTE(v9) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    KeyPath = swift_getKeyPath();
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](KeyPath);
    LODWORD(v10) = v6;
    LOBYTE(v6) = v5;
    v16 = v1;
    sub_190D51C10();
  }

  else
  {
    v10 = (v3 >> 8) & 1;
    v9 = v3 >> 16;
    v6 = v0[18];
  }

  if (v10)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFF00FFFE | v6 & 1 | (v9 << 16);
}

void *sub_190AA66C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C3B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v175 = &v175 - v2;
  v3 = _s21BackgroundGalleryItemVMa(0);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v178 = (&v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v180 = &v175 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v185 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v190 = (&v175 - v11);
  v12 = _s17BackgroundContentOMa(0);
  v13 = *(v12 - 8);
  v195 = v12;
  v196 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v188 = (&v175 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v175 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v175 - v22;
  v191 = sub_190AA857C();
  v192 = v24;
  v193 = v25;
  swift_getKeyPath();
  v197 = v0;
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v194 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v179 = v15;
  if (Strong)
  {
    v27 = [*(Strong + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation) chat];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 transcriptBackgroundCommSafetyState];
      swift_unknownObjectRelease();

      v186 = v29 == 1;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v186 = 0;
LABEL_6:
  swift_getKeyPath();
  v30 = v194;
  v197 = v194;
  sub_190D51C20();

  v31 = v30[17];
  if (v31)
  {
    *v20 = v31;
  }

  else
  {
    *v20 = 0;
  }

  swift_storeEnumTagMultiPayload();
  sub_190AAF4C8(v20, v23, _s17BackgroundContentOMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D10);
  v32 = *(v4 + 72);
  v33 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v181 = 3 * v32;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_190DD5600;
  v35 = v31;
  sub_190AA0634(v34 + v33);
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v37 = result;
  v189 = v34 + v33;
  v176 = 6 * v32;
  v177 = v33;
  v187 = v34;
  v38 = sub_190D56ED0();
  v39 = sub_190D56ED0();
  v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

  v41 = sub_190D56F10();
  v182 = v42;
  v183 = v41;

  v44 = v191;
  v43 = v192;
  v45 = v193;
  v46 = sub_190AAEDCC(v191, v192, v193, 0, v186);
  v47 = v190;
  sub_190AADF10(v44, v43, v45, 0, v190);
  v184 = v23;
  v48 = v188;
  sub_190AA183C(v23, v188, _s17BackgroundContentOMa);
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v49 = result;
  v50 = v32;
  v51 = v189 + v32;
  v52 = sub_190D56ED0();
  v53 = sub_190D56ED0();
  v54 = [v49 localizedStringForKey:v52 value:0 table:v53];

  v55 = sub_190D56F10();
  v57 = v56;

  v58 = v182;
  *v51 = v183;
  *(v51 + 8) = v58;
  *(v51 + 16) = xmmword_190DD06F0;
  *(v51 + 32) = v46 & 1;
  sub_190AAF01C(v47, v51 + v3[7]);
  sub_190AAF4C8(v48, v51 + v3[8], _s17BackgroundContentOMa);
  v59 = (v51 + v3[9]);
  *v59 = v55;
  v59[1] = v57;
  v59[2] = 0xD000000000000012;
  v59[3] = 0x8000000190E638E0;
  *(v51 + v3[10]) = xmmword_190DEE220;
  *(v51 + v3[11]) = 0;
  v60 = (v51 + v3[12]);
  *v60 = 0xD000000000000011;
  v60[1] = 0x8000000190E71010;
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v61 = result;
  v183 = v50;
  v62 = v189;
  v63 = v189 + 2 * v50;
  v64 = sub_190D56ED0();
  v65 = sub_190D56ED0();
  v66 = [v61 localizedStringForKey:v64 value:0 table:v65];

  v67 = sub_190D56F10();
  v69 = v68;

  sub_190AADF10(v191, v192, v193, 3u, (v63 + v3[7]));
  v70 = v3[8];
  v71 = objc_opt_self();
  v72 = sub_190D56ED0();
  v190 = v71;
  v73 = [v71 ckImageNamed_];

  *(v63 + v70) = v73;
  v74 = v195;
  swift_storeEnumTagMultiPayload();
  *v63 = v67;
  *(v63 + 8) = v69;
  *(v63 + 16) = xmmword_190DEC9B0;
  *(v63 + 32) = 0;
  v75 = (v63 + v3[9]);
  *v75 = 0u;
  v75[1] = 0u;
  *(v63 + v3[10]) = xmmword_190DEE230;
  *(v63 + v3[11]) = 0;
  v76 = (v63 + v3[12]);
  *v76 = 0xD000000000000011;
  v76[1] = 0x8000000190E71050;
  result = CKFrameworkBundle();
  v77 = v196;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v78 = result;
  v79 = v62;
  v80 = v62 + v181;
  v81 = sub_190D56ED0();
  v82 = sub_190D56ED0();
  v83 = [v78 localizedStringForKey:v81 value:0 table:v82];

  v84 = sub_190D56F10();
  v86 = v85;

  v87 = v3[7];
  v88 = *(v77 + 56);
  v196 = v77 + 56;
  v188 = v88;
  (v88)(v80 + v87, 1, 1, v74);
  v89 = v3[8];
  v90 = sub_190D56ED0();
  v91 = [v190 ckImageNamed_];

  *(v80 + v89) = v91;
  v92 = v195;
  swift_storeEnumTagMultiPayload();
  v93 = sub_190821AD4(&unk_1F0402C28);
  sub_19022EEA4(&unk_1F0402C48, &unk_1EAD53C60);
  *v80 = v84;
  *(v80 + 8) = v86;
  *(v80 + 16) = xmmword_190DEE240;
  *(v80 + 32) = 0;
  v94 = (v80 + v3[9]);
  *v94 = 0u;
  v94[1] = 0u;
  v95 = (v80 + v3[10]);
  *v95 = 2;
  v95[1] = v93;
  *(v80 + v3[11]) = 0;
  v96 = (v80 + v3[12]);
  *v96 = 0x6765746143796B53;
  v96[1] = 0xEF6C6C654379726FLL;
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v97 = result;
  v98 = v79;
  v99 = v183;
  v100 = v98 + 4 * v183;
  v101 = sub_190D56ED0();
  v102 = sub_190D56ED0();
  v103 = [v97 localizedStringForKey:v101 value:0 table:v102];

  v104 = sub_190D56F10();
  v106 = v105;

  (v188)(v100 + v3[7], 1, 1, v92);
  v107 = v3[8];
  v108 = sub_190D56ED0();
  v109 = [v190 ckImageNamed_];

  *(v100 + v107) = v109;
  swift_storeEnumTagMultiPayload();
  v110 = sub_190821AD4(&unk_1F0402C68);
  sub_19022EEA4(&unk_1F0402C88, &unk_1EAD53C60);
  *v100 = v104;
  *(v100 + 8) = v106;
  *(v100 + 16) = xmmword_190DEE250;
  *(v100 + 32) = 0;
  v111 = (v100 + v3[9]);
  *v111 = 0u;
  v111[1] = 0u;
  v112 = (v100 + v3[10]);
  *v112 = 2;
  v112[1] = v110;
  *(v100 + v3[11]) = 0;
  v113 = (v100 + v3[12]);
  *v113 = 0xD000000000000011;
  v113[1] = 0x8000000190E710B0;
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v114 = result;
  v115 = v98 + 5 * v99;
  v116 = sub_190D56ED0();
  v117 = sub_190D56ED0();
  v118 = [v114 localizedStringForKey:v116 value:0 table:v117];

  v119 = sub_190D56F10();
  v121 = v120;

  v122 = v188;
  (v188)(v115 + v3[7], 1, 1, v92);
  v123 = v3[8];
  v124 = sub_190D56ED0();
  v125 = v190;
  v126 = [v190 ckImageNamed_];

  *(v115 + v123) = v126;
  swift_storeEnumTagMultiPayload();
  v127 = sub_190821AD4(&unk_1F0402CA8);
  sub_19022EEA4(&unk_1F0402CC8, &unk_1EAD53C60);
  *v115 = v119;
  *(v115 + 8) = v121;
  *(v115 + 16) = xmmword_190DEE260;
  *(v115 + 32) = 0;
  v128 = (v115 + v3[9]);
  *v128 = 0u;
  v128[1] = 0u;
  v129 = (v115 + v3[10]);
  *v129 = 2;
  v129[1] = v127;
  *(v115 + v3[11]) = 0;
  v130 = (v115 + v3[12]);
  *v130 = 0xD000000000000012;
  v130[1] = 0x8000000190E710F0;
  v131 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v119) = [v131 isGlitterBackgroundEnabled];

  v132 = v185;
  if (v119)
  {
    result = CKFrameworkBundle();
    if (result)
    {
      v133 = result;
      v134 = sub_190D56ED0();
      v135 = sub_190D56ED0();
      v136 = [v133 localizedStringForKey:v134 value:0 table:v135];

      v137 = sub_190D56F10();
      v139 = v138;

      v140 = v180;
      v122(&v180[v3[7]], 1, 1, v195);
      v141 = v3[8];
      v142 = sub_190D56ED0();
      v143 = [v125 ckImageNamed_];

      *(v140 + v141) = v143;
      swift_storeEnumTagMultiPayload();
      v144 = sub_190821AD4(&unk_1F0402CE8);
      sub_19022EEA4(&unk_1F0402D08, &unk_1EAD53C60);
      *v140 = v137;
      *(v140 + 8) = v139;
      *(v140 + 16) = xmmword_190DEE270;
      *(v140 + 32) = 0;
      v145 = (v140 + v3[9]);
      *v145 = 0u;
      v145[1] = 0u;
      v146 = (v140 + v3[10]);
      *v146 = 2;
      v146[1] = v144;
      *(v140 + v3[11]) = 0;
      v147 = (v140 + v3[12]);
      *v147 = 0xD000000000000013;
      v147[1] = 0x8000000190E711B0;
      v148 = sub_1908364C0(1uLL, 7, 1, v187);
      v148[2] = 7;
      v187 = v148;
      sub_190AAF4C8(v140, v148 + v177 + v176, _s21BackgroundGalleryItemVMa);
      v149 = v184;
      v132 = v185;
      goto LABEL_19;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v149 = v184;
LABEL_19:
  if (![sub_190D51EB0() available])
  {
    sub_190A9385C(v149, _s17BackgroundContentOMa);
    sub_190234150(v191);
    return v187;
  }

  result = CKFrameworkBundle();
  if (!result)
  {
    goto LABEL_38;
  }

  v150 = result;
  v151 = sub_190D56ED0();
  v152 = sub_190D56ED0();
  v153 = [v150 localizedStringForKey:v151 value:0 table:v152];

  v154 = sub_190D56F10();
  v196 = v155;

  v157 = v191;
  v156 = v192;
  v158 = v193;
  v159 = sub_190AAEDCC(v191, v192, v193, 4u, v186);
  sub_190AADF10(v157, v156, v158, 4u, v132);
  v160 = v132;
  v161 = v179;
  *v179 = 1;
  swift_storeEnumTagMultiPayload();
  result = CKFrameworkBundle();
  if (result)
  {
    v162 = result;
    v163 = sub_190D56ED0();
    v164 = sub_190D56ED0();
    v165 = [v162 &selRef_messageContext + 4];

    v166 = sub_190D56F10();
    v168 = v167;

    v169 = v178;
    *v178 = v154;
    v170 = v169;
    v169[1] = v196;
    *(v169 + 1) = xmmword_190DEE280;
    *(v169 + 32) = v159 & 1;
    sub_190AAF01C(v160, v169 + v3[7]);
    sub_190AAF4C8(v161, v170 + v3[8], _s17BackgroundContentOMa);
    v171 = (v170 + v3[9]);
    *v171 = v166;
    v171[1] = v168;
    v171[2] = 0xD000000000000016;
    v171[3] = 0x8000000190E71130;
    *(v170 + v3[10]) = xmmword_190DEE290;
    *(v170 + v3[11]) = 0;
    v172 = (v170 + v3[12]);
    *v172 = 0xD00000000000001BLL;
    v172[1] = 0x8000000190E71150;
    v173 = v187;
    v174 = v187[2];
    if (v174 < 3)
    {
      __break(1u);
    }

    else
    {
      v166 = v175;
      sub_190AAF4C8(v170, v175, _s21BackgroundGalleryItemVMa);
      v174 = v173[2];
      if (v174 >= 3)
      {
        v197 = v173;
        if (v174 < v173[3] >> 1)
        {
LABEL_25:
          sub_190CAAB88(3, 3, 1, v166);
          sub_190234150(v191);
          sub_190A9385C(v184, _s17BackgroundContentOMa);
          return v173;
        }

LABEL_30:
        v173 = sub_1908364C0(1uLL, v174 + 1, 1, v173);
        v197 = v173;
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_190AA7A50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v33 = _s17BackgroundContentOMa(0);
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s21BackgroundGalleryItemVMa(0);
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtCV7ChatKit7Gallery9ViewModel___observationRegistrar;
  v34 = v2;
  v13 = sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();
  v14 = v13;

  v34 = v2;
  swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  v15 = *(v2 + 104);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 104) = v15;
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    if (v15[2] <= (v31 & 1))
    {
      __break(1u);
      return result;
    }

    v28 = v7;
    v17 = v31;
    _s17BackgroundSectionVMa(0);
    v18 = sub_190D52690();
    sub_190CAA38C(v18);
    *(v3 + 104) = v15;
    swift_endAccess();
    v34 = v3;
    swift_getKeyPath();
    sub_190D51C30();

    if ((v17 & 1) == 0)
    {
      return result;
    }

    v26[1] = v14;
    v26[2] = v12;
    v27 = v3;
    v12 = *(v18 + 16);
    if (!v12)
    {
      break;
    }

    v15 = 0;
    v14 = 0;
    v19 = v18 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v31 = *(v29 + 72);
    v3 = v28 + 48;
    v20 = 1;
    while (1)
    {
      sub_190AA183C(v19, v11, _s21BackgroundGalleryItemVMa);
      v7 = v32;
      sub_19083B610(&v11[*(v32 + 28)], v6);
      if ((*v3)(v6, 1, v33) == 1)
      {
        sub_19022EEA4(v6, &unk_1EAD54060);
        sub_190AA183C(&v11[*(v7 + 32)], v9, _s17BackgroundContentOMa);
        sub_190A9385C(v11, _s21BackgroundGalleryItemVMa);
      }

      else
      {
        sub_190A9385C(v11, _s21BackgroundGalleryItemVMa);
        sub_190AAF4C8(v6, v9, _s17BackgroundContentOMa);
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 9)
      {
        break;
      }

      v23 = 1 << EnumCaseMultiPayload;
      if (((1 << EnumCaseMultiPayload) & 0x30) != 0)
      {
        goto LABEL_6;
      }

      if ((v23 & 0x180) == 0)
      {
        if ((v23 & 0x240) != 0)
        {
          goto LABEL_7;
        }

        break;
      }

      sub_190A9385C(v9, _s17BackgroundContentOMa);
      v21 = __OFADD__(v20++, 1);
      if (v21)
      {
        goto LABEL_26;
      }

LABEL_7:
      v19 += v31;
      if (!--v12)
      {
        goto LABEL_23;
      }
    }

    if (EnumCaseMultiPayload - 1 < 3)
    {
      sub_190A9385C(v9, _s17BackgroundContentOMa);
      v21 = __OFADD__(v15, 1);
      v15 = (v15 + 1);
      if (v21)
      {
        __break(1u);
        break;
      }

      goto LABEL_7;
    }

LABEL_6:
    sub_190A9385C(v9, _s17BackgroundContentOMa);
    v21 = __OFADD__(v14++, 1);
    if (!v21)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_190A5BC60(v15);
    v15 = result;
    *(v3 + 104) = result;
  }

  v15 = 0;
  v14 = 0;
  v20 = 1;
LABEL_23:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v25 = v27;
  v26[-4] = v27;
  v26[-3] = v20;
  v26[-2] = v14;
  v26[-1] = v15;
  v34 = v25;
  sub_190D51C10();
}

void sub_190AA8020(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = a1;
    sub_190AA57B4(a1, v3);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_190AA857C();
  }

  else
  {
    v4 = 0;
  }

  v24 = v4;
  v5 = sub_19091B6B0(v4);
  v7 = v6;
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D730);
  sub_19091B348(v5, v7);
  v9 = sub_190D53020();
  v10 = sub_190D57680();
  sub_190AAEA40(v5, v7);
  if (!os_log_type_enabled(v9, v10))
  {

    goto LABEL_30;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v25[0] = v12;
  *v11 = 136315138;
  if (v7 > 3)
  {
    if (v7 <= 5)
    {
      if (v7 == 4)
      {
        v14 = 0xE700000000000000;
        v15 = 0x656C6954796B53;
      }

      else
      {
        v14 = 0xE900000000000065;
        v15 = 0x6C69547265746157;
      }

      goto LABEL_29;
    }

    if (v7 == 6)
    {
      v13 = 0x61726F727541;
      goto LABEL_27;
    }

    if (v7 != 7)
    {
LABEL_28:
      v15 = v5;
      v14 = v7;
      goto LABEL_29;
    }

    v14 = 0xEB00000000656C69;
    v15 = 0x5472657474696C47;
  }

  else
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = 0xEC000000656C6954;
        v15 = 0x746E656964617247;
      }

      else
      {
        v14 = 0x8000000190E66560;
        v15 = 0xD000000000000013;
      }

      goto LABEL_29;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        v13 = 0x736F746F6850;
LABEL_27:
        v15 = v13 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v14 = 0xEA0000000000656CLL;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v14 = 0xEF656C69546E6F69;
    v15 = 0x7463656C65536F4ELL;
  }

LABEL_29:
  sub_19091B348(v5, v7);
  v16 = sub_19021D9F8(v15, v14, v25);

  *(v11 + 4) = v16;
  _os_log_impl(&dword_19020E000, v9, v10, "Gallery launching with selected tile: %s.", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v12);
  MEMORY[0x193AF7A40](v12, -1, -1);
  MEMORY[0x193AF7A40](v11, -1, -1);

LABEL_30:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_190AA4DDC(v5, v7);
  }

  else
  {
    sub_190AAEA40(v5, v7);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_36;
  }

  if (sub_190CA9B5C(0, *(Strong + 88)))
  {

LABEL_36:
    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = *(v18 + 80);
      sub_190D50920();

      v20 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      sub_190D50920();
      sub_190B0B328(v19, v20);
      sub_190234150(v24);
    }

    else
    {
      sub_190234150(v24);
    }

    return;
  }

  v21 = sub_190D53020();
  v22 = sub_190D57680();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_19020E000, v21, v22, "Suggestion availability indicates that poster channel suggestions are disabled. Not fetching.", v23, 2u);
    MEMORY[0x193AF7A40](v23, -1, -1);
  }

  sub_190234150(v24);
}

id sub_190AA857C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_190D518A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  swift_getKeyPath();
  v21 = v0;
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v11 = *(v0 + 112);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [v12 posterConfiguration];
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  v15 = [v13 _path];
  v16 = [v15 serverIdentity];

  if (v16)
  {
    v17 = [v16 posterUUID];

    sub_190D51880();
    v18 = *(v5 + 32);
    v18(v3, v7, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v18(v10, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    sub_190D50450();
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_19022EEA4(v3, &unk_1EAD58460);
    }
  }

  sub_190D51850();

  (*(v5 + 8))(v10, v4);
  return v14;
}

uint64_t sub_190AA88C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D56770();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_190D567A0();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v10 = sub_190D57870();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_190AAF4C0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_193_0;
  v12 = _Block_copy(aBlock);
  sub_190D50920();
  sub_190D52690();
  sub_190D56790();
  v17 = MEMORY[0x1E69E7CC0];
  sub_190A9457C(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v9, v6, v12);
  _Block_release(v12);

  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_190AA8BC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_190AA8D90(1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_190AACC50();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_190AA7A50(a2, 1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190AA8D90(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v8 = v1;
  swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  v4 = *(v1 + 104);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 104) = v4;
  if ((result & 1) == 0)
  {
    result = sub_190A5BC60(v4);
    v4 = result;
    *(v2 + 104) = result;
  }

  v6 = a1 & 1;
  if (v4[2] <= v6)
  {
    __break(1u);
  }

  else
  {
    v7 = *(_s17BackgroundSectionVMa(0) - 8);
    *(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6 + 24) = MEMORY[0x1E69E7CC0];
    *(v2 + 104) = v4;
    swift_endAccess();

    swift_getKeyPath();
    sub_190D51C30();
  }

  return result;
}

uint64_t sub_190AA8F74(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v2 = v1;
      sub_190AA5C7C(v1);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_190AAD55C();
    }
  }

  return result;
}

void sub_190AA901C(uint64_t a1)
{
  v2 = sub_190D518A0();
  v126 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  v12 = sub_190D52E90();
  v127 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v119 - v16;
  v18 = (a1 + *(_s21BackgroundGalleryItemVMa(0) + 40));
  v20 = *v18;
  v19 = v18[1];
  v21 = *v18 >> 62;
  if (v21 <= 1)
  {
    if (v21)
    {
      v46 = v20;
      swift_getKeyPath();
      aBlock = v128;
      sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
      sub_190D51C20();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_190A938BC();
        swift_unknownObjectRelease();
      }

      v47 = sub_1909786D8(a1);
      v48 = sub_190AA6430();
      LOBYTE(v139) = 1;
      BYTE1(v139) = v47 & 1;
      WORD1(v139) = v48 & 0x101;
      BYTE4(v139) = 0x503060302uLL >> (8 * v46);
      *(&v139 + 5) = 513;
      BYTE7(v139) = BYTE2(v48);
      *(&v139 + 1) = 1;
      *&v140 = v49;
      *(&v140 + 1) = v51;
      v141 = v50;
      sub_190977A30();

      v137 = &_s24GalleryEngagementPayloadVN;
      v138 = &off_1F040EAA0;
      v52 = swift_allocObject();
      v136[0] = v52;
      v53 = v140;
      *(v52 + 16) = v139;
      *(v52 + 32) = v53;
      *(v52 + 48) = v141;
      v41 = sub_190D56ED0();
      sub_19083B854(v136, v135);
      v54 = swift_allocObject();
      sub_19029058C(v135, v54 + 16);
      v133 = sub_190897A84;
      v134 = v54;
      aBlock = MEMORY[0x1E69E9820];
      v130 = 1107296256;
      v43 = &block_descriptor_174;
    }

    else
    {
      v22 = v20;
      v23 = qword_1EAD46218;
      v24 = v19;
      sub_190D52690();
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = sub_190D53040();
      __swift_project_value_buffer(v25, qword_1EAD9D730);
      v26 = sub_190D53020();
      v27 = sub_190D57680();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock = v29;
        *v28 = 136315138;
        LOBYTE(v139) = v22;
        v30 = sub_190D56F50();
        v32 = sub_19021D9F8(v30, v31, &aBlock);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_19020E000, v26, v27, "Asked to show editor for poster extension %s.", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x193AF7A40](v29, -1, -1);
        MEMORY[0x193AF7A40](v28, -1, -1);
      }

      v33 = v128;
      swift_getKeyPath();
      aBlock = v33;
      sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
      sub_190D51C20();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_190A90340(v22, v24);
        swift_unknownObjectRelease();
      }

      sub_190AA2B74(v22);
      v34 = sub_1909786D8(a1);
      v35 = sub_190AA6430();
      LOBYTE(v139) = 1;
      BYTE1(v139) = v34 & 1;
      WORD1(v139) = v35 & 0x101;
      BYTE4(v139) = 0x503060302uLL >> (8 * v22);
      *(&v139 + 5) = 513;
      BYTE7(v139) = BYTE2(v35);
      *(&v139 + 1) = 1;
      *&v140 = v36;
      *(&v140 + 1) = v38;
      v141 = v37;
      sub_190977A30();

      v137 = &_s24GalleryEngagementPayloadVN;
      v138 = &off_1F040EAA0;
      v39 = swift_allocObject();
      v136[0] = v39;
      v40 = v140;
      *(v39 + 16) = v139;
      *(v39 + 32) = v40;
      *(v39 + 48) = v141;
      v41 = sub_190D56ED0();
      sub_19083B854(v136, v135);
      v42 = swift_allocObject();
      sub_19029058C(v135, v42 + 16);
      v133 = sub_190897A84;
      v134 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v130 = 1107296256;
      v43 = &block_descriptor_182;
    }

    v131 = sub_190A928AC;
    v132 = v43;
    v55 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v55);

    __swift_destroy_boxed_opaque_existential_0(v136);
    return;
  }

  if (v21 == 2)
  {
    v44 = v20 & 0x3FFFFFFFFFFFFFFFLL;
    if (*((v20 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state) == 2)
    {
      v123 = v6;
      v124 = v19;
      v125 = v20;
      v45 = *(v44 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8);
      if (v45 >> 60 == 15)
      {
        sub_190D50920();
      }

      else
      {
        v120 = v20 & 0x3FFFFFFFFFFFFFFFLL;
        v122 = *(v44 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
        v82 = v122;
        v121 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_190AAF314(v125);
        sub_19087C5A8(v82, v45);
        v83 = sub_190D51660();
        v84 = [(__CFData *)v121 initWithData:v83];

        v85 = [(__CFData *)v84 CGImage];
        sub_19029064C(v122, v45);
        if (v85)
        {
          sub_1902188FC(0, &qword_1EAD560A8);
          sub_190D52E30();
          v121 = sub_190939024(v85);
          v122 = v86;
          if (v86 >> 60 != 15)
          {
            v119 = v85;
            sub_190938BC0();
            v87 = [objc_opt_self() ck_temporaryImageDirectoryURL];
            sub_190D515B0();

            sub_190D50450();
            sub_190D51850();
            (v126)[1](v4, v2);
            sub_190D51580();

            v88 = v123 + 8;
            v89 = *(v123 + 8);
            v89(v8, v5);
            sub_190D51690();
            v94 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
            v95 = swift_allocObject();
            *(v95 + 16) = xmmword_190DD55F0;
            v96 = objc_allocWithZone(MEMORY[0x1E69C0820]);
            v123 = v88;
            v97 = sub_190D51570();
            v98 = [v96 initWithImageAtURL_];

            *(v95 + 32) = v98;
            sub_1902188FC(0, &qword_1EAD574D0);
            v99 = sub_190D57160();

            v126 = v94;
            [v94 setMedia_];

            sub_19029064C(v121, v122);
            v89(v11, v5);
            (*(v127 + 8))(v14, v12);
            v100 = v128;
            v101 = *(v128 + 128);
            v102 = *(v120 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index);
            sub_190974A70(v102);
            v103 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
            swift_beginAccess();
            v104 = *(v101 + v103);
            if (*(v104 + 16))
            {
              v105 = sub_190875CC8(v102);
              if (v106)
              {
                *(*(*(v104 + 56) + 8 * v105) + 17) = 2;
              }
            }

            sub_19097472C(v102);
            if (*(v100 + 200) != 5)
            {
              KeyPath = swift_getKeyPath();
              MEMORY[0x1EEE9AC00](KeyPath);
              *(&v119 - 2) = v100;
              *(&v119 - 8) = 5;
              aBlock = v100;
              sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
              sub_190D51C10();
            }

            v108 = sub_190AA6430();
            LOWORD(v139) = 257;
            WORD1(v139) = v108 & 0x101;
            WORD2(v139) = 261;
            BYTE6(v139) = 4;
            BYTE7(v139) = BYTE2(v108);
            *(&v139 + 1) = 1;
            *&v140 = v109;
            *(&v140 + 1) = v111;
            v141 = v110;
            sub_190977A30();

            v137 = &_s24GalleryEngagementPayloadVN;
            v138 = &off_1F040EAA0;
            v112 = swift_allocObject();
            v136[0] = v112;
            v113 = v140;
            *(v112 + 16) = v139;
            *(v112 + 32) = v113;
            *(v112 + 48) = v141;
            v114 = sub_190D56ED0();
            sub_19083B854(v136, v135);
            v115 = swift_allocObject();
            sub_19029058C(v135, v115 + 16);
            v133 = sub_190897A84;
            v134 = v115;
            aBlock = MEMORY[0x1E69E9820];
            v130 = 1107296256;
            v131 = sub_190A928AC;
            v132 = &block_descriptor_153;
            v116 = _Block_copy(&aBlock);

            AnalyticsSendEventLazy();
            _Block_release(v116);

            __swift_destroy_boxed_opaque_existential_0(v136);
            swift_getKeyPath();
            aBlock = v100;
            sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
            sub_190D51C20();

            if (swift_unknownObjectWeakLoadStrong())
            {
              v117 = v126;
              v118 = v126;
              sub_190A939E0(v117);
              swift_unknownObjectRelease();

              sub_190AA2B74(v125);
              return;
            }

LABEL_42:
            sub_190AA2B74(v125);
            return;
          }

          (*(v127 + 8))(v14, v12);
        }
      }

      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v90 = sub_190D53040();
      __swift_project_value_buffer(v90, qword_1EAD9D730);
      v91 = sub_190D53020();
      v92 = sub_190D57680();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_19020E000, v91, v92, "No configs for selectImagePlaygroundSuggestion", v93, 2u);
        MEMORY[0x193AF7A40](v93, -1, -1);
      }

      goto LABEL_42;
    }

    v72 = v20;
    v73 = qword_1EAD46218;
    sub_190D50920();
    if (v73 != -1)
    {
      swift_once();
    }

    v74 = sub_190D53040();
    __swift_project_value_buffer(v74, qword_1EAD9D730);
    v75 = sub_190D53020();
    v76 = sub_190D57680();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_19020E000, v75, v76, "Not generated background yet, no action", v77, 2u);
      MEMORY[0x193AF7A40](v77, -1, -1);
    }

    sub_190AA2B74(v72);
  }

  else if (v20 ^ 0xC000000000000000 | v19)
  {
    if (v20 ^ 0xC000000000000001 | v19)
    {
      v78 = sub_190AA6430() & 0xFF0101;

      sub_190AAA490(v78, v79, v80, v81, a1);
    }

    else
    {
      v56 = v128;
      v57 = sub_190AA6430();
      LOWORD(v139) = 1;
      WORD1(v139) = v57 & 0x101;
      WORD2(v139) = 261;
      BYTE6(v139) = 2;
      BYTE7(v139) = BYTE2(v57);
      *(&v139 + 1) = 1;
      *&v140 = v58;
      *(&v140 + 1) = v60;
      v141 = v59;
      sub_190977A30();

      v137 = &_s24GalleryEngagementPayloadVN;
      v138 = &off_1F040EAA0;
      v61 = swift_allocObject();
      v136[0] = v61;
      v62 = v140;
      *(v61 + 16) = v139;
      *(v61 + 32) = v62;
      *(v61 + 48) = v141;
      v63 = sub_190D56ED0();
      sub_19083B854(v136, v135);
      v64 = swift_allocObject();
      sub_19029058C(v135, v64 + 16);
      v133 = sub_190897A84;
      v134 = v64;
      aBlock = MEMORY[0x1E69E9820];
      v130 = 1107296256;
      v131 = sub_190A928AC;
      v132 = &block_descriptor_161_0;
      v65 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v65);

      __swift_destroy_boxed_opaque_existential_0(v136);
      swift_getKeyPath();
      aBlock = v56;
      sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
      sub_190D51C20();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(*(Strong + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_playgroundDelegate) + OBJC_IVAR____TtC7ChatKit29GalleryImagePlaygroundManager_isFromSuggestion) = 0;
        v67 = Strong;
        v68 = sub_190D572E0();
        (*(*(v68 - 8) + 56))(v17, 1, 1, v68);
        sub_190D572A0();
        swift_unknownObjectRetain();
        v69 = sub_190D57290();
        v70 = swift_allocObject();
        v71 = MEMORY[0x1E69E85E0];
        v70[2] = v69;
        v70[3] = v71;
        v70[4] = v67;
        v70[5] = 0;
        v70[6] = 0;
        v70[7] = 0;
        sub_190857E08(0, 0, v17, &unk_190DEE5E0, v70);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_190AAA490(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(&v120 + 1) = a4;
  v121 = a3;
  *&v120 = a2;
  v123 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v112 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v112 - v13;
  v15 = _s17BackgroundContentOMa(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v112 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v112 - v23;
  v25 = _s21BackgroundGalleryItemVMa(0);
  v118 = *(v25 + 28);
  sub_19083B610(a5 + v118, v14);
  v119 = *(v16 + 48);
  if (v119(v14, 1, v15) == 1)
  {
    sub_19022EEA4(v14, &unk_1EAD54060);
    sub_190AA183C(a5 + *(v25 + 32), v24, _s17BackgroundContentOMa);
  }

  else
  {
    sub_190AAF4C8(v14, v24, _s17BackgroundContentOMa);
  }

  v26 = a5;
  v27 = v123 & 0x100;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload >= 4)
    {
      v29 = *(v24 + 1);
      v116 = *v24;
      v113 = v29;
      v30 = *(v24 + 2);
      v31 = *(v26 + 16);
      v32 = *(v26 + 24);
      v114 = v26;
      sub_19091B348(v31, v32);
      sub_190AA4DDC(v31, v32);
      sub_190AACA58();
      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v33 = sub_190D53040();
      __swift_project_value_buffer(v33, qword_1EAD9D730);
      v34 = v116;
      sub_190D52690();
      v35 = sub_190D53020();
      v36 = sub_190D57680();

      v115 = v34;

      LODWORD(v112) = v36;
      v37 = v36;
      v38 = v35;
      v39 = os_log_type_enabled(v35, v37);
      v40 = v30;
      v116 = v30;
      v117 = v27;
      if (v39)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock = v42;
        *v41 = 136315138;
        sub_190D52690();
        v43 = v113;
        v44 = sub_19021D9F8(v113, v40, &aBlock);

        *(v41 + 4) = v44;
        v40 = v116;
        _os_log_impl(&dword_19020E000, v38, v112, "Asked to select a background item from the gallery. id=%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x193AF7A40](v42, -1, -1);
        v45 = v41;
        v46 = v114;
        MEMORY[0x193AF7A40](v45, -1, -1);
      }

      else
      {

        v43 = v113;
        v46 = v114;
      }

      v70 = sub_190A9F07C(v115, v43, v40);
      sub_19083B610(v46 + v118, v11);
      v71 = v119(v11, 1, v15);
      v72 = v70;
      if (v71 == 1)
      {
        sub_19022EEA4(v11, &unk_1EAD54060);
        sub_190AA183C(v46 + *(v25 + 32), v21, _s17BackgroundContentOMa);
      }

      else
      {
        sub_190AAF4C8(v11, v21, _s17BackgroundContentOMa);
      }

      v86 = sub_190978278(v21);
      sub_190A9385C(v21, _s17BackgroundContentOMa);
      v87 = v122;
      if (qword_190DEE6D8[*(v122 + 200)] == qword_190DEE6D8[v86])
      {
        *(v122 + 200) = v86;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v112 - 2) = v87;
        *(&v112 - 8) = v86;
        aBlock = v87;
        sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
        sub_190D51C10();
      }

      swift_getKeyPath();
      aBlock = v87;
      sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
      sub_190D51C20();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (*(Strong + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_detailsViewCoordinator))
        {
          v90 = swift_unknownObjectWeakLoadStrong();
          if (v90)
          {
            [v90 didSelectTranscriptBackground_];
            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRelease();
      }

      v104 = v123;
      v105 = HIWORD(v123);
      v106 = sub_1909786D8(v46);
      LOBYTE(v134) = 1;
      BYTE1(v134) = v106 & 1;
      BYTE2(v134) = v104 & 1;
      BYTE3(v134) = BYTE1(v117);
      BYTE4(v134) = v86;
      *(&v134 + 5) = 1025;
      BYTE7(v134) = v105;
      *(&v134 + 1) = 1;
      v135 = v120;
      v136 = v121;
      sub_190977A30();

      v132 = &_s24GalleryEngagementPayloadVN;
      v133 = &off_1F040EAA0;
      v107 = swift_allocObject();
      v131[0] = v107;
      v108 = v135;
      *(v107 + 16) = v134;
      *(v107 + 32) = v108;
      *(v107 + 48) = v136;
      v109 = sub_190D56ED0();
      sub_19083B854(v131, v130);
      v110 = swift_allocObject();
      sub_19029058C(v130, v110 + 16);
      v128 = sub_190897A84;
      v129 = v110;
      aBlock = MEMORY[0x1E69E9820];
      v125 = 1107296256;
      v126 = sub_190A928AC;
      v127 = &block_descriptor_119;
      v111 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();

      _Block_release(v111);
      __swift_destroy_boxed_opaque_existential_0(v131);
      return;
    }

LABEL_13:
    sub_190A9385C(v24, _s17BackgroundContentOMa);
    return;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      return;
    }

    v117 = v27;
    v113 = *v24;
    v112 = *(v24 + 2);
    v47 = *(v26 + 16);
    v48 = *(v26 + 24);
    v114 = swift_getKeyPath();
    v116 = &v112;
    MEMORY[0x1EEE9AC00](v114);
    v49 = v26;
    v50 = v122;
    *(&v112 - 4) = v122;
    *(&v112 - 3) = v47;
    *(&v112 - 2) = v48;
    *(&v112 - 8) = 0;
    v115 = OBJC_IVAR____TtCV7ChatKit7Gallery9ViewModel___observationRegistrar;
    aBlock = v50;
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C10();

    sub_19083B610(v49 + v118, v8);
    if (v119(v8, 1, v15) == 1)
    {
      sub_19022EEA4(v8, &unk_1EAD54060);
      sub_190AA183C(v49 + *(v25 + 32), v18, _s17BackgroundContentOMa);
    }

    else
    {
      sub_190AAF4C8(v8, v18, _s17BackgroundContentOMa);
    }

    v91 = v123;
    v92 = HIWORD(v123);
    v93 = sub_190978278(v18);
    sub_190A9385C(v18, _s17BackgroundContentOMa);
    v94 = sub_1909786D8(v49);
    LOBYTE(v134) = 1;
    BYTE1(v134) = v94 & 1;
    BYTE2(v134) = v91 & 1;
    BYTE3(v134) = BYTE1(v117);
    BYTE4(v134) = v93;
    *(&v134 + 5) = 513;
    BYTE7(v134) = v92;
    *(&v134 + 1) = 1;
    v135 = v120;
    v136 = v121;
    sub_190977A30();

    v132 = &_s24GalleryEngagementPayloadVN;
    v133 = &off_1F040EAA0;
    v95 = swift_allocObject();
    v131[0] = v95;
    v96 = v135;
    *(v95 + 16) = v134;
    *(v95 + 32) = v96;
    *(v95 + 48) = v136;
    v97 = sub_190D56ED0();
    sub_19083B854(v131, v130);
    v98 = swift_allocObject();
    sub_19029058C(v130, v98 + 16);
    v128 = sub_190897A84;
    v129 = v98;
    aBlock = MEMORY[0x1E69E9820];
    v125 = 1107296256;
    v126 = sub_190A928AC;
    v127 = &block_descriptor_110_0;
    v99 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v99);

    __swift_destroy_boxed_opaque_existential_0(v131);
    swift_getKeyPath();
    aBlock = v122;
    sub_190D51C20();

    v100 = swift_unknownObjectWeakLoadStrong();
    if (v100)
    {
      v101 = v100;
      v102 = v113;
      swift_getObjectType();
      v103 = sub_190A92E7C(v102, v101);
      sub_190A90C40(v103);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

LABEL_60:
    swift_unknownObjectRelease();
    return;
  }

  if (EnumCaseMultiPayload == 7 || EnumCaseMultiPayload == 8)
  {
    goto LABEL_13;
  }

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v51 = BYTE1(v27);
  v52 = sub_190D53040();
  __swift_project_value_buffer(v52, qword_1EAD9D730);
  v53 = v122;
  sub_190D50920();
  v54 = sub_190D53020();
  v55 = sub_190D57680();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v26;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136315138;
    swift_getKeyPath();
    *&v134 = v53;
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C20();

    v59 = 0xE700000000000000;
    v60 = 0x6E776F6E6B6E75;
    v61 = *(v53 + 200);
    v62 = 0xEF646E756F726779;
    v63 = 0x616C506567616D69;
    if (v61 != 5)
    {
      v63 = 0x726568746FLL;
      v62 = 0xE500000000000000;
    }

    v64 = 0x726F6C6F63;
    if (v61 != 3)
    {
      v64 = 0x696A6F6D65;
    }

    if (*(v53 + 200) <= 4u)
    {
      v63 = v64;
      v62 = 0xE500000000000000;
    }

    v65 = 0xE400000000000000;
    v66 = 1701736302;
    if (v61 != 1)
    {
      v66 = 0x736F746F6870;
      v65 = 0xE600000000000000;
    }

    if (*(v53 + 200))
    {
      v60 = v66;
      v59 = v65;
    }

    if (*(v53 + 200) <= 2u)
    {
      v67 = v60;
    }

    else
    {
      v67 = v63;
    }

    if (*(v53 + 200) <= 2u)
    {
      v68 = v59;
    }

    else
    {
      v68 = v62;
    }

    v69 = sub_19021D9F8(v67, v68, &aBlock);

    *(v57 + 4) = v69;
    _os_log_impl(&dword_19020E000, v54, v55, "Asked to unset the background from the gallery. - last selected type: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x193AF7A40](v58, -1, -1);
    MEMORY[0x193AF7A40](v57, -1, -1);

    v26 = v56;
  }

  else
  {
  }

  v73 = v123;
  v74 = HIWORD(v123);
  swift_getKeyPath();
  aBlock = v53;
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v75 = *(v53 + 200);
  LOWORD(v134) = 1;
  BYTE2(v134) = v73 & 1;
  BYTE3(v134) = v51;
  BYTE4(v134) = v75;
  *(&v134 + 5) = 1281;
  BYTE7(v134) = v74;
  *(&v134 + 1) = 1;
  v135 = v120;
  v136 = v121;
  sub_190977A30();

  v132 = &_s24GalleryEngagementPayloadVN;
  v133 = &off_1F040EAA0;
  v76 = swift_allocObject();
  v131[0] = v76;
  v77 = v135;
  *(v76 + 16) = v134;
  *(v76 + 32) = v77;
  *(v76 + 48) = v136;
  v78 = sub_190D56ED0();
  sub_19083B854(v131, v130);
  v79 = swift_allocObject();
  sub_19029058C(v130, v79 + 16);
  v128 = sub_190897A84;
  v129 = v79;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_190A928AC;
  v127 = &block_descriptor_127;
  v80 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v80);

  __swift_destroy_boxed_opaque_existential_0(v131);
  v81 = *(v26 + 16);
  v82 = *(v26 + 24);
  sub_19091B348(v81, v82);
  sub_190AA4DDC(v81, v82);
  if (*(v53 + 200) != 1)
  {
    v83 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v83);
    *(&v112 - 2) = v53;
    *(&v112 - 8) = 1;
    aBlock = v53;
    sub_190D51C10();
  }

  swift_getKeyPath();
  aBlock = v53;
  sub_190D51C20();

  v84 = swift_unknownObjectWeakLoadStrong();
  if (v84)
  {
    if (*(v84 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_detailsViewCoordinator))
    {
      v85 = swift_unknownObjectWeakLoadStrong();
      if (v85)
      {
        [v85 didSelectTranscriptBackground_];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_60;
  }
}

void sub_190AAB7B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v79 - v8;
  v10 = _s17BackgroundContentOMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = _s21BackgroundGalleryItemVMa(0);
  v18 = *(v17 + 28);
  sub_19083B610(a1 + v18, v9);
  v19 = *(v11 + 48);
  v20 = v19(v9, 1, v10);
  v81 = v17;
  if (v20 == 1)
  {
    sub_19022EEA4(v9, &unk_1EAD54060);
    sub_190AA183C(a1 + *(v17 + 32), v16, _s17BackgroundContentOMa);
  }

  else
  {
    sub_190AAF4C8(v9, v16, _s17BackgroundContentOMa);
  }

  v21 = sub_190978278(v16);
  sub_190A9385C(v16, _s17BackgroundContentOMa);
  v22 = sub_1909786D8(a1);
  v23 = sub_190AA6430();
  LOBYTE(v86) = 1;
  BYTE1(v86) = v22 & 1;
  WORD1(v86) = v23 & 0x101;
  BYTE4(v86) = v21;
  *(&v86 + 5) = 769;
  BYTE7(v86) = BYTE2(v23);
  *(&v86 + 1) = 1;
  *&v87 = v24;
  *(&v87 + 1) = v26;
  v88 = v25;
  sub_190977A30();

  v85[3] = &_s24GalleryEngagementPayloadVN;
  v85[4] = &off_1F040EAA0;
  v27 = swift_allocObject();
  v85[0] = v27;
  v28 = v87;
  *(v27 + 16) = v86;
  *(v27 + 32) = v28;
  *(v27 + 48) = v88;
  v29 = sub_190D56ED0();
  sub_19083B854(v85, v84);
  v30 = swift_allocObject();
  sub_19029058C(v84, v30 + 16);
  aBlock[4] = sub_190897A2C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190A928AC;
  aBlock[3] = &block_descriptor_97;
  v31 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v31);

  __swift_destroy_boxed_opaque_existential_0(v85);
  sub_19083B610(a1 + v18, v6);
  if (v19(v6, 1, v10) == 1)
  {
    sub_19022EEA4(v6, &unk_1EAD54060);
    sub_190AA183C(a1 + *(v81 + 32), v13, _s17BackgroundContentOMa);
  }

  else
  {
    sub_190AAF4C8(v6, v13, _s17BackgroundContentOMa);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_10;
      }

      v62 = *v13;
      swift_getKeyPath();
      aBlock[0] = v82;
      sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
      sub_190D51C20();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v64 = Strong;
        swift_getObjectType();
        v34 = sub_190A92E7C(v62, v64);
        sub_190A90C40(v34);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_14:

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_9;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_10;
      }

      v38 = *v13;
      v37 = v13[1];
      v40 = v13[2];
      v39 = v13[3];
      v41 = v13[4];
      v42 = v13[5];
      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v43 = sub_190D53040();
      __swift_project_value_buffer(v43, qword_1EAD9D730);
      v44 = sub_190D53020();
      v45 = sub_190D57680();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = v38;
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_19020E000, v44, v45, "Asked to edit a generated image playground suggestion.", v47, 2u);
        v48 = v47;
        v38 = v46;
        MEMORY[0x193AF7A40](v48, -1, -1);
      }

      v49 = *(v82 + 128);
      sub_190974A70(v42);
      v50 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
      swift_beginAccess();
      v51 = *(v49 + v50);
      if (*(v51 + 16))
      {
        v52 = sub_190875CC8(v42);
        if (v53)
        {
          *(*(*(v51 + 56) + 8 * v52) + 17) = 1;
        }
      }

      sub_19097472C(v42);
      swift_getKeyPath();
      v85[0] = v82;
      sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
      sub_190D51C20();

      v54 = swift_unknownObjectWeakLoadStrong();
      if (v54)
      {
        *(*(v54 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_playgroundDelegate) + OBJC_IVAR____TtC7ChatKit29GalleryImagePlaygroundManager_isFromSuggestion) = 1;
        v55 = v54;
        v56 = sub_190D572E0();
        v57 = v80;
        (*(*(v56 - 8) + 56))(v80, 1, 1, v56);
        sub_190D572A0();
        swift_unknownObjectRetain();
        sub_190D52690();
        v58 = v40;
        v59 = sub_190D57290();
        v60 = swift_allocObject();
        v61 = MEMORY[0x1E69E85E0];
        v60[2] = v59;
        v60[3] = v61;
        v60[4] = v55;
        v60[5] = v38;
        v60[6] = v37;
        v60[7] = v40;
        sub_190857E08(0, 0, v57, &unk_190DEE538, v60);

        sub_19083B6D4(v39, v41);
        swift_unknownObjectRelease();
      }

      else
      {

        sub_19083B6D4(v39, v41);
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload < 4)
    {
LABEL_9:
      sub_190A9385C(v13, _s17BackgroundContentOMa);
LABEL_10:
      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v33 = sub_190D53040();
      __swift_project_value_buffer(v33, qword_1EAD9D730);
      v34 = sub_190D53020();
      v35 = sub_190D57680();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_19020E000, v34, v35, "Asked to edit a gallery item that is not editable. Programming error.", v36, 2u);
        MEMORY[0x193AF7A40](v36, -1, -1);
      }

      goto LABEL_14;
    }

    v65 = *v13;
    v66 = v13[1];
    v67 = v13[2];
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v68 = sub_190D53040();
    __swift_project_value_buffer(v68, qword_1EAD9D730);
    v69 = v65;
    sub_190D52690();
    v70 = sub_190D53020();
    v71 = sub_190D57680();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v72 = 136315138;
      sub_190D52690();
      v74 = sub_19021D9F8(v66, v67, aBlock);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_19020E000, v70, v71, "Asked to edit a background item from the gallery. id=%s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x193AF7A40](v73, -1, -1);
      MEMORY[0x193AF7A40](v72, -1, -1);
    }

    swift_getKeyPath();
    aBlock[0] = v82;
    sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
    sub_190D51C20();

    v75 = swift_unknownObjectWeakLoadStrong();
    if (v75)
    {
      v77 = sub_19027B358(v69, *(v75 + OBJC_IVAR____TtC7ChatKit33CKBackgroundGalleryViewController_conversation), v76);
      v78 = [objc_allocWithZone(CKPRUISPosterEditingViewController) initWithEditingConfiguration_];

      sub_190A90C40(v78);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_190AAC338(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  v8 = *(v3 + 104);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 104) = v8;
  if ((result & 1) == 0)
  {
    result = sub_190A5BC60(v8);
    v8 = result;
    *(v3 + 104) = result;
  }

  if (v8[2] <= (a3 & 1))
  {
    __break(1u);
  }

  else
  {
    v10 = *(_s17BackgroundSectionVMa(0) - 8);
    v11 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (a3 & 1);
    sub_190D52690();
    v12 = sub_190AAE548((v11 + 24), a1, a2);

    v13 = *(*(v11 + 24) + 16);
    if (v13 >= v12)
    {
      sub_190A0F124(v12, v13);
      *(v4 + 104) = v8;
      swift_endAccess();
      swift_getKeyPath();
      sub_190D51C30();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_190AAC55C(void *a1, char a2)
{
  v3 = v2;
  v6 = _s21BackgroundGalleryItemVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v2;
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v20 = v2;
  KeyPath = swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  v11 = *(v2 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 104) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_190A5BC60(v11);
    *(v3 + 104) = v11;
  }

  v13 = a2 & 1;
  if (v11[2] <= v13)
  {
    __break(1u);
  }

  else
  {
    v14 = *(_s17BackgroundSectionVMa(0) - 8);
    KeyPath = v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v13;
    sub_190AA183C(a1, v9, _s21BackgroundGalleryItemVMa);
    a1 = *(KeyPath + 24);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *(KeyPath + 24) = a1;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  a1 = sub_1908364C0(0, a1[2] + 1, 1, a1);
  *(KeyPath + 24) = a1;
LABEL_5:
  v17 = a1[2];
  v16 = a1[3];
  if (v17 >= v16 >> 1)
  {
    a1 = sub_1908364C0(v16 > 1, v17 + 1, 1, a1);
    *(KeyPath + 24) = a1;
  }

  a1[2] = v17 + 1;
  sub_190AAF4C8(v9, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, _s21BackgroundGalleryItemVMa);
  *(v3 + 104) = v11;
  swift_endAccess();
  v20 = v3;
  swift_getKeyPath();
  sub_190D51C30();
}

uint64_t sub_190AAC868(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  v9 = *(v4 + 104);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 104) = v9;
  if ((result & 1) == 0)
  {
    result = sub_190A5BC60(v9);
    v9 = result;
    *(v4 + 104) = result;
  }

  if (v9[2] <= (a4 & 1))
  {
    __break(1u);
  }

  else
  {
    _s17BackgroundSectionVMa(0);
    sub_190A9FF3C(a1, a2, a3);
    *(v4 + 104) = v9;
    swift_endAccess();
    swift_getKeyPath();
    sub_190D51C30();
  }

  return result;
}

uint64_t sub_190AACA58()
{
  swift_getKeyPath();
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v1 = *(v0 + 72);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190D51C10();
  }

  else
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_190A945DC(v3, v4, 0);
    sub_190D51C10();
    sub_190AAEA64(v3, v4, v1);
  }
}

void sub_190AACC50()
{
  v0 = _s21BackgroundGalleryItemVMa(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([sub_190D51EB0() available])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_190DEE2A0;
    v4 = objc_opt_self();
    v5 = sub_190D56ED0();
    v6 = [v4 ckImageNamed_];

    if (v6)
    {
      *(v3 + 32) = v6;
      v7 = sub_190D56ED0();
      v8 = [v4 ckImageNamed_];

      if (v8)
      {
        *(v3 + 40) = v8;
        v9 = sub_190D56ED0();
        v10 = [v4 ckImageNamed_];

        if (v10)
        {
          *(v3 + 48) = v10;
          v11 = sub_190D56ED0();
          v12 = [v4 ckImageNamed_];

          if (v12)
          {
            *(v3 + 56) = v12;
            v13 = sub_190D56ED0();
            v14 = [v4 ckImageNamed_];

            if (v14)
            {
              *(v3 + 64) = v14;
              v15 = sub_190D56ED0();
              v16 = [v4 ckImageNamed_];

              if (v16)
              {
                *(v3 + 72) = v16;
                v17 = sub_190D56ED0();
                v18 = [v4 ckImageNamed_];

                if (v18)
                {
                  *(v3 + 80) = v18;
                  v19 = sub_190D56ED0();
                  v20 = [v4 ckImageNamed_];

                  if (v20)
                  {
                    *(v3 + 88) = v20;
                    v21 = sub_190D56ED0();
                    v22 = [v4 ckImageNamed_];

                    if (v22)
                    {
                      *(v3 + 96) = v22;
                      v23 = sub_190D56ED0();
                      v24 = [v4 ckImageNamed_];

                      if (v24)
                      {
                        *(v3 + 104) = v24;
                        v25 = v0[7];
                        v26 = _s17BackgroundContentOMa(0);
                        (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
                        *&v2[v0[8]] = v3;
                        swift_storeEnumTagMultiPayload();
                        *v2 = 0;
                        *(v2 + 1) = 0;
                        *(v2 + 2) = 0xD000000000000018;
                        *(v2 + 3) = 0x8000000190E71310;
                        v2[32] = 0;
                        v27 = &v2[v0[9]];
                        *v27 = 0u;
                        *(v27 + 1) = 0u;
                        *&v2[v0[10]] = xmmword_190DEE290;
                        *&v2[v0[11]] = 0;
                        v28 = &v2[v0[12]];
                        *v28 = 0xD000000000000015;
                        *(v28 + 1) = 0x8000000190E708E0;
                        sub_190AAC55C(v2, 1);
                        sub_190A9385C(v2, _s21BackgroundGalleryItemVMa);
                        return;
                      }

LABEL_23:
                      __break(1u);
                      return;
                    }

LABEL_22:
                    __break(1u);
                    goto LABEL_23;
                  }

LABEL_21:
                  __break(1u);
                  goto LABEL_22;
                }

LABEL_20:
                __break(1u);
                goto LABEL_21;
              }

LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_190AAD124()
{
  v1 = sub_190D56770();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_190D567A0();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v7 = sub_190D57870();
  aBlock[4] = sub_190AAF08C;
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_70;
  v8 = _Block_copy(aBlock);
  sub_190D50920();
  sub_190D56790();
  v13 = MEMORY[0x1E69E7CC0];
  sub_190A9457C(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v6, v3, v8);
  _Block_release(v8);

  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_190AAD400(uint64_t a1)
{
  sub_190AAD55C();
  v2 = *(a1 + 32);
  v3 = [v2 transcriptBackground];
  _s7ChatKit31CKTranscriptBackgroundAnalyticsC05trackD7Changed4from2to2in7contextyAA0cD0CSg_AKSo14CKConversationCAC13ChangeContextOtFZ_0(0, v3, v2, 2);
}

void sub_190AAD55C()
{
  v1 = v0;
  sub_190AA8D90(0);
  v2 = sub_190AA66C4();
  sub_190AA7A50(v2, 0);

  swift_getKeyPath();
  v35 = v0;
  sub_190A9457C(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v3 = *(v0 + 72);
  if (v3 == 255 || (v3 & 1) == 0)
  {
    v12 = sub_190AA857C();
    v14 = v13;
    v15 = sub_19091B6B0(v12);
    v17 = v16;
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9D730);
    sub_19091B348(v15, v17);
    v19 = sub_190D53020();
    v20 = sub_190D57680();
    sub_190AAEA40(v15, v17);
    if (!os_log_type_enabled(v19, v20))
    {

LABEL_44:
      sub_190AA4DDC(v15, v17);
      sub_190234150(v12);
      goto LABEL_53;
    }

    v34 = v12;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136315138;
    v33 = v14;
    if (v17 > 3)
    {
      if (v17 <= 5)
      {
        if (v17 == 4)
        {
          v25 = 0xE700000000000000;
          v24 = 0x656C6954796B53;
        }

        else
        {
          v24 = 0x6C69547265746157;
          v25 = 0xE900000000000065;
        }

        goto LABEL_43;
      }

      if (v17 == 6)
      {
        v23 = 0x61726F727541;
        goto LABEL_41;
      }

      if (v17 != 7)
      {
LABEL_42:
        v24 = v15;
        v25 = v17;
        goto LABEL_43;
      }

      v24 = 0x5472657474696C47;
      v25 = 0xEB00000000656C69;
    }

    else
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v24 = 0x746E656964617247;
          v25 = 0xEC000000656C6954;
        }

        else
        {
          v24 = 0xD000000000000013;
          v25 = 0x8000000190E66560;
        }

        goto LABEL_43;
      }

      if (v17)
      {
        if (v17 == 1)
        {
          v23 = 0x736F746F6850;
LABEL_41:
          v24 = v23 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
          v25 = 0xEA0000000000656CLL;
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v24 = 0x7463656C65536F4ELL;
      v25 = 0xEF656C69546E6F69;
    }

LABEL_43:
    sub_19091B348(v15, v17);
    v28 = sub_19021D9F8(v24, v25, &v35);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_19020E000, v19, v20, "Reloading category section - selected tile: %s.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x193AF7A40](v22, -1, -1);
    MEMORY[0x193AF7A40](v21, -1, -1);

    v12 = v34;
    goto LABEL_44;
  }

  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_190A945DC(v4, v5, 1);
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D730);
  sub_190A945DC(v4, v5, 1);
  v7 = sub_190D53020();
  v8 = sub_190D57680();
  sub_190AAEA64(v4, v5, v3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315138;
    if (v5 > 3)
    {
      if (v5 <= 5)
      {
        if (v5 == 4)
        {
          v27 = 0xE700000000000000;
          v26 = 0x656C6954796B53;
        }

        else
        {
          v26 = 0x6C69547265746157;
          v27 = 0xE900000000000065;
        }

        goto LABEL_51;
      }

      if (v5 == 6)
      {
        v11 = 0x61726F727541;
        goto LABEL_49;
      }

      if (v5 != 7)
      {
LABEL_50:
        v26 = v4;
        v27 = v5;
        goto LABEL_51;
      }

      v26 = 0x5472657474696C47;
      v27 = 0xEB00000000656C69;
    }

    else
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v26 = 0x746E656964617247;
          v27 = 0xEC000000656C6954;
        }

        else
        {
          v26 = 0xD000000000000013;
          v27 = 0x8000000190E66560;
        }

        goto LABEL_51;
      }

      if (v5)
      {
        if (v5 == 1)
        {
          v11 = 0x736F746F6850;
LABEL_49:
          v26 = v11 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
          v27 = 0xEA0000000000656CLL;
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v26 = 0x7463656C65536F4ELL;
      v27 = 0xEF656C69546E6F69;
    }

LABEL_51:
    sub_190A945C4(v4, v5, v3);
    v29 = sub_19021D9F8(v26, v27, &v35);

    *(v9 + 4) = v29;
    _os_log_impl(&dword_19020E000, v7, v8, "We have a selection override, so selecting %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x193AF7A40](v10, -1, -1);
    MEMORY[0x193AF7A40](v9, -1, -1);

    goto LABEL_52;
  }

LABEL_52:
  sub_190AA4DDC(v4, v5);
LABEL_53:
  v30 = [*(v1 + 32) transcriptBackground];
  v31 = sub_1908968B0(v30);
  if (qword_190DEE6D8[*(v1 + 200)] == qword_190DEE6D8[v31])
  {

    *(v1 + 200) = v31;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v35 = v1;
    sub_190D51C10();
  }
}

uint64_t sub_190AADC88()
{
  sub_19024C978(v0 + 16);

  sub_190AAEA40(*(v0 + 40), *(v0 + 48));
  sub_190AAEA64(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  v1 = OBJC_IVAR____TtCV7ChatKit7Gallery9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_190AADD44()
{
  sub_190AADC88();

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_9()
{
  result = qword_1EAD5C3A8;
  if (!qword_1EAD5C3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AADDF0()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_190AADF10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v34[0] = 0;
    v9 = a1;
    sub_190D52690();
    v10 = [v9 loadUserInfoWithError_];
    v11 = v34[0];
    if (v10)
    {
      v12 = v10;
      v13 = sub_190D56D90();
      v14 = v11;

      if (v13)
      {
        v32 = sub_190D56F10();
        v33 = v15;
        sub_190D58230();
        if (*(v13 + 16))
        {
          v16 = sub_190875C84(v34);
          if (v17)
          {
            sub_19021834C(*(v13 + 56) + 32 * v16, &v35);
            sub_19084CFD0(v34);

            if (*(&v36 + 1))
            {
              if (swift_dynamicCast())
              {
                v18 = v34[0];
LABEL_17:
                v24 = [v9 providerBundleIdentifier];
                if (v24)
                {
                  v25 = v24;
                  v26 = sub_190D56F10();
                  v28 = v27;
                }

                else
                {
                  v26 = 0;
                  v28 = 0xE000000000000000;
                }

                v29 = sub_19088A098(v26, v28, v18);

                if (v29 == 5 || v29 != a4)
                {

                  v31 = _s17BackgroundContentOMa(0);
                  return (*(*(v31 - 8) + 56))(a5, 1, 1, v31);
                }

                else
                {
                  *a5 = v9;
                  a5[1] = a2;
                  a5[2] = a3;
                  v30 = _s17BackgroundContentOMa(0);
                  swift_storeEnumTagMultiPayload();
                  return (*(*(v30 - 8) + 56))(a5, 0, 1, v30);
                }
              }

LABEL_16:
              v18 = 0;
              goto LABEL_17;
            }

LABEL_15:
            sub_19022EEA4(&v35, &unk_1EAD551C0);
            goto LABEL_16;
          }
        }

        sub_19084CFD0(v34);
      }
    }

    else
    {
      v22 = v34[0];
      v23 = sub_190D51420();

      swift_willThrow();
    }

    v35 = 0u;
    v36 = 0u;
    goto LABEL_15;
  }

  v19 = _s17BackgroundContentOMa(0);
  v20 = *(*(v19 - 8) + 56);

  return v20(a5, 1, 1, v19);
}

uint64_t sub_190AAE27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *(a1 + 16);
  if (v16)
  {
    v6 = 0;
    v7 = *(_s21BackgroundGalleryItemVMa(0) - 8);
    v8 = (((*(v7 + 80) + 32) & ~*(v7 + 80)) + a1 + 24);
    v15 = *(v7 + 72);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      if (*v8 > 3)
      {
        if (v10 > 5)
        {
          if (v10 == 6)
          {
            v11 = 0x61726F727541;
LABEL_28:
            v12 = 0xEA0000000000656CLL;
            if ((v11 & 0xFFFFFFFFFFFFLL | 0x6954000000000000) != a2)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          if (v10 != 7)
          {
LABEL_30:
            v12 = *v8;
            if (v9 != a2)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          v12 = 0xEB00000000656C69;
          if (a2 != 0x5472657474696C47)
          {
            goto LABEL_32;
          }
        }

        else if (v10 == 4)
        {
          v12 = 0xE700000000000000;
          if (a2 != 0x656C6954796B53)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_30;
          }

          v12 = 0xE900000000000065;
          if (a2 != 0x6C69547265746157)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          if (!v10)
          {
            v12 = 0xEF656C69546E6F69;
            if (a2 != 0x7463656C65536F4ELL)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

          if (v10 != 1)
          {
            goto LABEL_30;
          }

          v11 = 0x736F746F6850;
          goto LABEL_28;
        }

        if (v10 == 2)
        {
          v12 = 0xEC000000656C6954;
          if (a2 != 0x746E656964617247)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v10 != 3)
          {
            goto LABEL_30;
          }

          v12 = 0x8000000190E66560;
          if (a2 != 0xD000000000000013)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_31:
      if (v12 == a3)
      {
        sub_19091B348(*(v8 - 1), *v8);

        return v6;
      }

LABEL_32:
      v13 = sub_190D58760();
      sub_19091B348(v9, v10);

      if (v13)
      {
        return v6;
      }

      v8 = (v8 + v15);
      if (v16 == ++v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_190AAE548(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = _s21BackgroundGalleryItemVMa(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = *a1;
  result = sub_190AAE27C(*a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v20 = v17;
  v52 = a2;
  v43 = 0;
  if (v19)
  {
    return *(v17 + 16);
  }

  v44 = v11;
  v45 = v14;
  v42 = a1;
  v47 = result;
  v21 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_56;
  }

  v22 = v20;
  v24 = v20 + 2;
  v23 = v20[2];
  if (v21 == v23)
  {
    return v47;
  }

  v41 = 0x8000000190E66560;
  v46 = a3;
  v48 = v8;
  while (v21 < v23)
  {
    v49 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v26 = v22 + v49;
    v27 = *(v8 + 72);
    v50 = v27 * v21;
    sub_190AA183C(v22 + v49 + v27 * v21, v16, _s21BackgroundGalleryItemVMa);
    v28 = *(v16 + 2);
    v29 = *(v16 + 3);
    v51 = v26;
    if (v29 > 3)
    {
      v30 = v52;
      v31 = v22;
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v25 = 0xE700000000000000;
          if (v52 != 0x656C6954796B53)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v25 = 0xE900000000000065;
          if (v52 != 0x6C69547265746157)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_10;
      }

      if (v29 == 6)
      {
        v32 = 0x61726F727541;
LABEL_36:
        v25 = 0xEA0000000000656CLL;
        if ((v32 & 0xFFFFFFFFFFFFLL | 0x6954000000000000) != v30)
        {
          goto LABEL_39;
        }

        goto LABEL_10;
      }

      if (v29 == 7)
      {
        v25 = 0xEB00000000656C69;
        if (v52 != 0x5472657474696C47)
        {
          goto LABEL_39;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v30 = v52;
      v31 = v22;
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v25 = 0xEC000000656C6954;
          if (v52 != 0x746E656964617247)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v25 = v41;
          if (v52 != 0xD000000000000013)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_10;
      }

      if (!v29)
      {
        v25 = 0xEF656C69546E6F69;
        if (v52 != 0x7463656C65536F4ELL)
        {
          goto LABEL_39;
        }

        goto LABEL_10;
      }

      if (v29 == 1)
      {
        v32 = 0x736F746F6850;
        goto LABEL_36;
      }
    }

    v25 = v29;
    if (v28 != v30)
    {
      goto LABEL_39;
    }

LABEL_10:
    if (v25 == a3)
    {
      sub_19091B348(v28, v29);

      result = sub_190A9385C(v16, _s21BackgroundGalleryItemVMa);
LABEL_12:
      v8 = v48;
      v22 = v31;
      goto LABEL_13;
    }

LABEL_39:
    v33 = sub_190D58760();
    sub_19091B348(v28, v29);

    result = sub_190A9385C(v16, _s21BackgroundGalleryItemVMa);
    if (v33)
    {
      a3 = v46;
      goto LABEL_12;
    }

    v34 = v47;
    v22 = v31;
    if (v21 == v47)
    {
      a3 = v46;
      v8 = v48;
    }

    else
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      v35 = *v24;
      if (v47 >= v35)
      {
        goto LABEL_53;
      }

      v36 = v27 * v47;
      v37 = v51;
      result = sub_190AA183C(&v51[v27 * v47], v45, _s21BackgroundGalleryItemVMa);
      if (v21 >= v35)
      {
        goto LABEL_54;
      }

      v38 = v50;
      sub_190AA183C(&v37[v50], v44, _s21BackgroundGalleryItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_190A5BC74(v22);
      }

      v8 = v48;
      v39 = v22 + v49;
      result = sub_190AAF45C(v44, v22 + v49 + v36);
      if (v21 >= v22[2])
      {
        goto LABEL_55;
      }

      result = sub_190AAF45C(v45, &v39[v38]);
      *v42 = v22;
      a3 = v46;
      v34 = v47;
    }

    v47 = v34 + 1;
LABEL_13:
    ++v21;
    v24 = v22 + 2;
    v23 = v22[2];
    if (v21 == v23)
    {
      return v47;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_190AAEA40(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
  }

  return result;
}

uint64_t sub_190AAEA64(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_190AAEA7C(result, a2, a3 & 1);
  }

  return result;
}

__n128 sub_190AAEA80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[11] = result;
  v1[12].n128_u64[0] = v2;
  return result;
}

id sub_190AAEA98()
{
  v0 = _s17BackgroundSectionVMa(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  sub_19082E144(0, 1, 1);
  v5 = v31;
  v7 = *(v31 + 16);
  v6 = *(v31 + 24);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
LABEL_17:
    sub_19082E144((v6 > 1), v9, 1);
    v5 = v31;
    v6 = *(v31 + 24);
    v8 = v6 >> 1;
  }

  *(v5 + 16) = v9;
  *(v5 + v7 + 32) = 0;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_19082E144((v6 > 1), v7 + 2, 1);
    v5 = v31;
  }

  *(v5 + 16) = v10;
  *(v5 + v9 + 32) = 1;
  v31 = v4;
  sub_19082E100(0, v7 + 2, 0);
  v7 = 0;
  v11 = v31;
  v26 = "GenerativeSuggestionTile";
  v27 = v5;
  v29 = v10;
  v30 = v10 & ~(v10 >> 63);
  v9 = v5;
  v28 = v3;
  while (1)
  {
    v6 = v30;
    if (v30 == v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = *(v9 + 16);
    if (v7 >= v6)
    {
      goto LABEL_16;
    }

    v12 = *(v9 + v7 + 32);
    if (v12 != 1)
    {
      v21 = 0;
      v23 = 0;
      goto LABEL_11;
    }

    v13 = v4;
    v14 = v1;
    v15 = v0;
    result = CKFrameworkBundle();
    if (!result)
    {
      break;
    }

    v17 = result;
    v18 = sub_190D56ED0();
    v19 = sub_190D56ED0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:{v19, v26}];

    v21 = sub_190D56F10();
    v23 = v22;

    v0 = v15;
    v1 = v14;
    v4 = v13;
    v9 = v27;
    v3 = v28;
LABEL_11:
    sub_190D50450();
    *v3 = v21;
    *(v3 + 1) = v23;
    v3[16] = v12 ^ 1;
    *(v3 + 3) = v4;
    v31 = v11;
    v25 = *(v11 + 16);
    v24 = *(v11 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_19082E100(v24 > 1, v25 + 1, 1);
      v11 = v31;
    }

    ++v7;
    *(v11 + 16) = v25 + 1;
    sub_190AAF4C8(v3, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v25, _s17BackgroundSectionVMa);
    if (v29 == v7)
    {

      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_190AAEDCC(void *result, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v29[0] = 0;
  v7 = result;
  sub_190D52690();
  v8 = [v7 loadUserInfoWithError_];
  v9 = v29[0];
  if (!v8)
  {
    v17 = v29[0];
    v18 = sub_190D51420();

    swift_willThrow();
    goto LABEL_11;
  }

  v10 = v8;
  v11 = sub_190D56D90();
  v12 = v9;

  if (!v11)
  {
LABEL_11:
    v30 = 0u;
    v31 = 0u;
    goto LABEL_12;
  }

  v27 = sub_190D56F10();
  v28 = v13;
  sub_190D58230();
  if (!*(v11 + 16) || (v14 = sub_190875C84(v29), (v15 & 1) == 0))
  {

    sub_19084CFD0(v29);
    goto LABEL_11;
  }

  sub_19021834C(*(v11 + 56) + 32 * v14, &v30);
  sub_19084CFD0(v29);

  if (!*(&v31 + 1))
  {
LABEL_12:
    sub_19022EEA4(&v30, &unk_1EAD551C0);
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v16 = v29[0];
LABEL_14:
  v19 = [v7 providerBundleIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_190D56F10();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = sub_19088A098(v21, v23, v16);

  v26 = v24 != 5 && v24 == a4;
  return (v26 & a5);
}

uint64_t sub_190AAF01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AAF0AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA0;

  return sub_1908CFC18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_190AAF180()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  v7 = *(v2 + 72);
  *(v2 + 72) = v6;
  sub_190A945C4(v1, v3, v6);
  return sub_190AAEA64(v4, v5, v7);
}

__n128 sub_190AAF1DC()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 144) = result;
  *(v1 + 160) = v3;
  return result;
}

void sub_190AAF1F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 136);
  *(v1 + 136) = v2;
  v4 = v2;
}

uint64_t sub_190AAF228()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
  sub_190D50920();
}

void sub_190AAF264()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;
}

uint64_t sub_190AAF2C8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  sub_19091B348(v1, v3);
  return sub_190AAEA40(v4, v5);
}

unint64_t sub_190AAF314(unint64_t result)
{
  if (result >> 62 == 2)
  {
    return sub_190D50920();
  }

  if (!(result >> 62))
  {
    return sub_190D52690();
  }

  return result;
}

uint64_t objectdestroy_99Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_190AAF388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA4;

  return sub_1908CFC18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_190AAF45C(uint64_t a1, uint64_t a2)
{
  v4 = _s21BackgroundGalleryItemVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AAF4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_190AAF588()
{
  result = qword_1EAD5C3D8;
  if (!qword_1EAD5C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C3D8);
  }

  return result;
}

uint64_t sub_190AAF680(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_190AAF6C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_190AAF738@<X0>(void *a1@<X8>)
{
  sub_190866C78();
  result = sub_190D54830();
  *a1 = v3;
  return result;
}

uint64_t sub_190AAF788(void **a1)
{
  v1 = *a1;
  sub_190866C78();
  v2 = v1;
  return sub_190D54840();
}

uint64_t sub_190AAF824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_19022FD14(a1, &v9 - v6, &unk_1EAD58460);
  sub_19022FD14(v7, v4, &unk_1EAD58460);
  sub_190866C24();
  sub_190D54840();
  return sub_19022EEA4(v7, &unk_1EAD58460);
}

uint64_t sub_190AAF928@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_190AAF9D8()
{
  swift_getKeyPath();
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C10();
}

id sub_190AAFAA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_190AAFB60(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190AA57B4(v1, v3);
}

uint64_t sub_190AAFB90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  *a2 = *(v3 + 120);
  return sub_190D50920();
}

uint64_t sub_190AAFC68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v3);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C480);
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C488);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v34 = v1;
  sub_190D54AC0();
  v35 = 0;
  sub_190AB6A40(&qword_1EAD5AB40, MEMORY[0x1E697FCB0]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C490);
  sub_190233640(&qword_1EAD5C498, &qword_1EAD5C490);
  sub_190D53A10();
  v10 = sub_190D552A0();
  v11 = *(v2 + 24);
  v12 = 0uLL;
  v13 = 0uLL;
  if (v11)
  {
    sub_190D539C0();
    *(&v13 + 1) = v14;
    *(&v12 + 1) = v15;
  }

  v30 = v13;
  v31 = v12;
  (*(v4 + 32))(v9, v6, v32);
  v16 = &v9[*(v7 + 36)];
  *v16 = v10;
  v17 = v31;
  *(v16 + 24) = v30;
  *(v16 + 8) = v17;
  v16[40] = (v11 & 1) == 0;
  v18 = sub_190D552D0();
  sub_190D539C0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v33;
  sub_19081E40C(v9, v33, &qword_1EAD5C488);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4A0);
  v29 = v27 + *(result + 36);
  *v29 = v18;
  *(v29 + 8) = v20;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_190AAFF94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4A8);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v57 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4B0);
  MEMORY[0x1EEE9AC00](v64);
  v72 = &v57 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4B8);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v57 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v57 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4C8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  sub_190D56500();
  v19 = 1;
  sub_190D53C60();
  v63 = v85;
  v62 = v87;
  v61 = v89;
  v60 = v90;
  v95 = 1;
  v94 = v86;
  v93 = v88;
  v20 = a1[1];
  v21 = a1[2];
  v59 = *a1;
  v82 = v59;
  v83 = v20;
  v77 = v20;
  v76 = v21;
  v84 = v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C420);
  MEMORY[0x193AF1A80](&v78);
  v22 = v78;
  swift_getKeyPath();
  v82 = v22;
  v23 = sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v24 = *(v22 + 96);

  if ((v24 & 1) == 0)
  {
    *v13 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
    swift_storeEnumTagMultiPayload();
    v25 = sub_190D552D0();
    sub_190D539C0();
    v26 = v13 + *(v10 + 36);
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    sub_19081E40C(v13, v18, &qword_1EAD5C4C0);
    v19 = 0;
  }

  v31 = *(v11 + 56);
  v58 = v18;
  v31(v18, v19, 1, v10);
  v32 = v59;
  v82 = v59;
  v83 = v77;
  v84 = v76;
  MEMORY[0x193AF1A80](&v78, v75);
  v33 = v78;
  swift_getKeyPath();
  v82 = v33;
  v57 = v23;
  sub_190D51C20();

  swift_beginAccess();
  v34 = *(v33 + 104);
  sub_190D52690();

  v78 = v34;
  v91 = a1[4];
  v92 = v32;
  v35 = swift_allocObject();
  v36 = *(a1 + 1);
  *(v35 + 16) = *a1;
  *(v35 + 32) = v36;
  *(v35 + 48) = a1[4];
  sub_1908693CC(&v92, &v81);
  sub_190D50920();
  sub_190D50920();
  sub_19022FD14(&v91, &v81, &qword_1EAD5B760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4D0);
  sub_190D518A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4D8);
  sub_190233640(&qword_1EAD5C4E0, &qword_1EAD5C4D0);
  sub_190233640(&qword_1EAD5C4E8, &qword_1EAD5C4D8);
  sub_190AB6A40(&qword_1EAD5C4F0, _s17BackgroundSectionVMa);
  v37 = v65;
  sub_190D56290();
  v38 = v77;
  v78 = v32;
  v79 = v77;
  v39 = v76;
  v80 = v76;
  v40 = v75;
  MEMORY[0x193AF1A80](&v81, v75);
  v41 = v81;
  swift_getKeyPath();
  v78 = v41;
  sub_190D51C20();

  LODWORD(v34) = *(v41 + 96);

  if (v34)
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.35;
  }

  v43 = v72;
  (*(v68 + 32))(v72, v37, v69);
  *(v43 + *(v64 + 36)) = v42;
  v78 = v32;
  v79 = v38;
  v80 = v39;
  MEMORY[0x193AF1A80](&v81, v40);
  v44 = v81;
  swift_getKeyPath();
  v78 = v44;
  sub_190D51C20();

  v45 = *(v44 + 96);

  v46 = v67;
  sub_19081E40C(v43, v67, &qword_1EAD5C4B0);
  *(v46 + *(v70 + 36)) = v45;
  v47 = v73;
  sub_19081E40C(v46, v73, &qword_1EAD5C4B8);
  LOBYTE(v43) = v95;
  v48 = v94;
  v49 = v93;
  v50 = v58;
  v51 = v66;
  sub_19022FD14(v58, v66, &qword_1EAD5C4C8);
  v52 = v74;
  sub_19022FD14(v47, v74, &qword_1EAD5C4B8);
  v53 = v71;
  *v71 = 0;
  *(v53 + 8) = v43;
  v53[2] = v63;
  *(v53 + 24) = v48;
  v53[4] = v62;
  *(v53 + 40) = v49;
  v54 = v60;
  v53[6] = v61;
  v53[7] = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C4F8);
  sub_19022FD14(v51, v53 + *(v55 + 48), &qword_1EAD5C4C8);
  sub_19022FD14(v52, v53 + *(v55 + 64), &qword_1EAD5C4B8);
  sub_19022EEA4(v47, &qword_1EAD5C4B8);
  sub_19022EEA4(v50, &qword_1EAD5C4C8);
  sub_19022EEA4(v52, &qword_1EAD5C4B8);
  return sub_19022EEA4(v51, &qword_1EAD5C4C8);
}

uint64_t sub_190AB095C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v80 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v80);
  v81 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C500);
  v83 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v82 = v77 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C508);
  MEMORY[0x1EEE9AC00](v84);
  v9 = v77 - v8;
  v10 = _s17BackgroundSectionVMa(0);
  v78 = *(v10 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C510);
  MEMORY[0x1EEE9AC00](v89);
  v13 = (v77 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C518);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v86 = v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C520);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C528);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v85 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = *(a1 + 8);
  v90 = v77 - v25;
  if (v26)
  {
    v77[1] = v11;
    v27 = v9;
    v28 = v6;
    v29 = *a1;
    *v21 = sub_190D548D0();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v30 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C5D8) + 44)];
    v31 = v29;
    v6 = v28;
    v9 = v27;
    v32 = v90;
    sub_190AB13A0(v31, v26, v30);
    v33 = sub_190D552A0();
    sub_190D539C0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C5E0) + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = sub_190D552C0();
    sub_190D539C0();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C5E8) + 36)];
    *v52 = v43;
    *(v52 + 1) = v45;
    *(v52 + 2) = v47;
    *(v52 + 3) = v49;
    *(v52 + 4) = v51;
    v52[40] = 0;
    v53 = sub_190D552D0();
    sub_190D539C0();
    v54 = &v21[*(v18 + 36)];
    *v54 = v53;
    *(v54 + 1) = v55;
    *(v54 + 2) = v56;
    *(v54 + 3) = v57;
    *(v54 + 4) = v58;
    v54[40] = 0;
    sub_19081E40C(v21, v32, &qword_1EAD5C520);
    v59 = (*(v19 + 56))(v32, 0, 1, v18);
  }

  else
  {
    v59 = (*(v19 + 56))(v77 - v25, 1, 1, v18);
  }

  if (*(a1 + 16) == 1)
  {
    if (a2[3])
    {
      v60 = 7.0;
    }

    else
    {
      v60 = 8.0;
    }

    v61 = sub_190D54AC0();
    *v13 = 4;
    v13[1] = v60;
    v13[2] = v60;
    v13[3] = 56.0;
    *(v13 + 32) = 0;
    *(v13 + 5) = v61;
    v83 = *(v89 + 44);
    v62 = *(a1 + 24);
    v94 = *a2;
    v63 = a2[4];
    v92 = v62;
    v93 = v63;
    v64 = v79;
    sub_190AB6068(a1, v79, _s17BackgroundSectionVMa);
    v65 = (*(v78 + 80) + 56) & ~*(v78 + 80);
    v66 = swift_allocObject();
    v67 = *(a2 + 1);
    *(v66 + 16) = *a2;
    *(v66 + 32) = v67;
    *(v66 + 48) = a2[4];
    sub_190AB65A8(v64, v66 + v65, _s17BackgroundSectionVMa);
    sub_190D52690();
    sub_1908693CC(&v94, v91);
    sub_190D50920();
    sub_190D50920();
    sub_19022FD14(&v93, v91, &qword_1EAD5B760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C5C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C548);
    sub_190233640(&qword_1EAD5C5C8, &qword_1EAD5C5C0);
    sub_190AB5730();
    sub_190AB6A40(&qword_1EAD5C5D0, _s21BackgroundGalleryItemVMa);
    sub_190D56290();
    sub_19022FD14(v13, v9, &qword_1EAD5C510);
    swift_storeEnumTagMultiPayload();
    sub_190AB5AC0();
    sub_190233640(&qword_1EAD5C5B0, &qword_1EAD5C500);
    v68 = v86;
    sub_190D54C50();
    sub_19022EEA4(v13, &qword_1EAD5C510);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v59);
    sub_190D52690();
    sub_190D54AC0();
    LODWORD(v94) = 0;
    sub_190AB6A40(&qword_1EAD5AB40, MEMORY[0x1E697FCB0]);
    sub_190D58970();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C530);
    sub_190AB56AC();
    v69 = v82;
    sub_190D565F0();
    v70 = v83;
    (*(v83 + 16))(v9, v69, v6);
    swift_storeEnumTagMultiPayload();
    sub_190AB5AC0();
    sub_190233640(&qword_1EAD5C5B0, &qword_1EAD5C500);
    v68 = v86;
    sub_190D54C50();
    (*(v70 + 8))(v69, v6);
  }

  v71 = v90;
  v72 = v85;
  sub_19022FD14(v90, v85, &qword_1EAD5C528);
  v73 = v87;
  sub_19022FD14(v68, v87, &qword_1EAD5C518);
  v74 = v88;
  sub_19022FD14(v72, v88, &qword_1EAD5C528);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C5B8);
  sub_19022FD14(v73, v74 + *(v75 + 48), &qword_1EAD5C518);
  sub_19022EEA4(v68, &qword_1EAD5C518);
  sub_19022EEA4(v71, &qword_1EAD5C528);
  sub_19022EEA4(v73, &qword_1EAD5C518);
  return sub_19022EEA4(v72, &qword_1EAD5C528);
}

uint64_t sub_190AB13A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_190D54A60();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C5F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v33 - v11;
  v39 = a1;
  v40 = a2;
  sub_19081E484();
  sub_190D52690();
  v12 = sub_190D555F0();
  v14 = v13;
  v16 = v15;
  sub_190D55400();
  v17 = sub_190D555B0();
  v19 = v18;
  v21 = v20;

  sub_19081E474(v12, v14, v16 & 1);

  sub_190D553D0();
  v22 = sub_190D55540();
  v24 = v23;
  LOBYTE(v12) = v25;
  v27 = v26;
  sub_19081E474(v17, v19, v21 & 1);

  v39 = v22;
  v40 = v24;
  v41 = v12 & 1;
  v42 = v27;
  sub_190D54A50();
  v28 = v34;
  sub_190D55A80();
  (*(v36 + 8))(v7, v37);
  sub_19081E474(v22, v24, v12 & 1);

  v29 = v35;
  sub_19022FD14(v28, v35, &qword_1EAD5C5F0);
  v30 = v38;
  sub_19022FD14(v29, v38, &qword_1EAD5C5F0);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C5F8) + 48);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_19022EEA4(v28, &qword_1EAD5C5F0);
  return sub_19022EEA4(v29, &qword_1EAD5C5F0);
}

uint64_t sub_190AB169C(uint64_t *a1, uint64_t a2)
{
  v4 = _s17BackgroundSectionVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(a2 + 24);
  v16 = *a1;
  v8 = a1[4];
  v14 = v7;
  v15 = v8;
  sub_190AB6068(a2, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], _s17BackgroundSectionVMa);
  v9 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(a1 + 1);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v11;
  *(v10 + 48) = a1[4];
  sub_190AB65A8(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, _s17BackgroundSectionVMa);
  sub_190D52690();
  sub_1908693CC(&v16, v13);
  sub_190D50920();
  sub_190D50920();
  sub_19022FD14(&v15, v13, &qword_1EAD5B760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C548);
  sub_190233640(&qword_1EAD5C5C8, &qword_1EAD5C5C0);
  sub_190AB5730();
  sub_190AB6A40(&qword_1EAD5C5D0, _s21BackgroundGalleryItemVMa);
  return sub_190D56290();
}

uint64_t sub_190AB190C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a4;
  v94 = a3;
  v6 = sub_190D54390();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D54A60();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s21BackgroundGalleryItemVMa(0);
  v69 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = v11;
  v71 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C590);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v66 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C578);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v66 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C600);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v66 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C570);
  MEMORY[0x1EEE9AC00](v92);
  v73 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v66 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C608);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v66 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C550);
  v66 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v20 = &v66 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C610);
  v68 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v67 = &v66 - v21;
  v23 = *a2;
  v22 = a2[1];
  v24 = a2[2];
  v95 = *a2;
  v96 = v22;
  v97 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C420);
  MEMORY[0x193AF1A80](&v100, v25);
  v26 = v100;
  swift_getKeyPath();
  v95 = v26;
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v28 = *(v26 + 40);
  v27 = *(v26 + 48);
  sub_19091B348(v28, v27);

  v29 = sub_19091B248(v28, v27, *(a1 + 16), *(a1 + 24));
  sub_190AAEA40(v28, v27);
  if ((v29 & 1) == 0)
  {
    v32 = 0;
    v33 = *(v94 + 16);
    goto LABEL_6;
  }

  v30 = sub_190AA09B8();
  v31 = v30;
  if (*(v94 + 16) != 1)
  {
    v30 = sub_190AA07C4();
    v32 = v30;
    if ((v31 & 1) == 0)
    {
      v33 = 0;
      goto LABEL_6;
    }

LABEL_11:
    MEMORY[0x1EEE9AC00](v30);
    *(&v66 - 2) = a2;
    *(&v66 - 1) = a1;
    MEMORY[0x1EEE9AC00](v58);
    *(&v66 - 4) = a1;
    *(&v66 - 3) = v59;
    *(&v66 - 16) = 1;
    *(&v66 - 15) = v32 & 1;
    *(&v66 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C680);
    sub_190AB5E00();
    sub_190AB5EBC();
    sub_190D554F0();
    v60 = sub_190233640(&qword_1EAD5C558, &qword_1EAD5C550);
    v61 = sub_190AB5840();
    v62 = v67;
    v63 = v89;
    sub_190D55730();
    (*(v66 + 8))(v20, v63);
    v64 = v68;
    v65 = v90;
    (*(v68 + 16))(v91, v62, v90);
    swift_storeEnumTagMultiPayload();
    v95 = v63;
    v96 = &type metadata for NonDimmingMenuLabelStyle;
    v97 = v60;
    v98 = v61;
    swift_getOpaqueTypeConformance2();
    sub_190AB5894();
    sub_190D54C50();
    return (*(v64 + 8))(v62, v65);
  }

  v32 = 0;
  if (v30)
  {
    goto LABEL_11;
  }

  v33 = 1;
LABEL_6:
  v99 = a2[4];
  v100 = v23;
  v34 = v71;
  sub_190AB6068(a1, v71, _s21BackgroundGalleryItemVMa);
  v35 = (*(v69 + 80) + 56) & ~*(v69 + 80);
  v36 = swift_allocObject();
  v37 = *(a2 + 1);
  *(v36 + 16) = *a2;
  *(v36 + 32) = v37;
  *(v36 + 48) = a2[4];
  v38 = sub_190AB65A8(v34, v36 + v35, _s21BackgroundGalleryItemVMa);
  MEMORY[0x1EEE9AC00](v38);
  v39 = v94;
  *(&v66 - 6) = a1;
  *(&v66 - 5) = v39;
  *(&v66 - 32) = v29 & 1;
  *(&v66 - 3) = a2;
  *(&v66 - 16) = v32 & 1;
  sub_1908693CC(&v100, &v95);
  sub_190D50920();
  sub_190D50920();
  sub_19022FD14(&v99, &v95, &qword_1EAD5B760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C618);
  sub_190AB5BA8();
  v40 = v72;
  sub_190D56030();
  if (v33)
  {
    v95 = MEMORY[0x1E69E7CC0];
    sub_190AB6A40(&qword_1EAD5C660, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C668);
    sub_190233640(&qword_1EAD5C670, &qword_1EAD5C668);
    v41 = v81;
    v42 = v83;
    sub_190D58170();
    v43 = v82;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C658);
    v43 = v82;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_190DD1D90;
    sub_190D54A30();
    v95 = v44;
    sub_190AB6A40(&qword_1EAD5C660, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C668);
    sub_190233640(&qword_1EAD5C670, &qword_1EAD5C668);
    v41 = v81;
    v42 = v83;
    sub_190D58170();
  }

  sub_190233640(&qword_1EAD5C588, &qword_1EAD5C590);
  v45 = v78;
  v46 = v75;
  sub_190D55A80();
  (*(v43 + 8))(v41, v42);
  (*(v74 + 8))(v40, v46);
  v47 = v85;
  sub_190D54380();
  sub_190AB59D8();
  sub_190AB6A40(&qword_1EAD54AF8, MEMORY[0x1E697C248]);
  v48 = v76;
  v49 = v87;
  sub_190D55720();
  (*(v86 + 8))(v47, v49);
  sub_19022EEA4(v45, &qword_1EAD5C578);
  v50 = sub_190D55E00();
  KeyPath = swift_getKeyPath();
  v52 = v73;
  (*(v79 + 32))(v73, v48, v80);
  v53 = (v52 + *(v92 + 36));
  *v53 = KeyPath;
  v53[1] = v50;
  v54 = v84;
  sub_19081E40C(v52, v84, &qword_1EAD5C570);
  sub_19022FD14(v54, v91, &qword_1EAD5C570);
  swift_storeEnumTagMultiPayload();
  v55 = sub_190233640(&qword_1EAD5C558, &qword_1EAD5C550);
  v56 = sub_190AB5840();
  v95 = v89;
  v96 = &type metadata for NonDimmingMenuLabelStyle;
  v97 = v55;
  v98 = v56;
  swift_getOpaqueTypeConformance2();
  sub_190AB5894();
  sub_190D54C50();
  return sub_19022EEA4(v54, &qword_1EAD5C570);
}

uint64_t sub_190AB2730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C6A0);
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = _s21BackgroundGalleryItemVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v43 - v19;
  v20 = a1;
  if (sub_190AA09B8())
  {
    v49 = v12;
    v21 = *v3;
    v22 = v3[2];
    v47 = v3[1];
    v48 = v22;
    v59 = v3[4];
    v60 = v21;
    v45 = v20;
    v46 = _s21BackgroundGalleryItemVMa;
    sub_190AB6068(v20, &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s21BackgroundGalleryItemVMa);
    v50 = v7;
    v23 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v24 = swift_allocObject();
    v51 = v5;
    v25 = *(v3 + 1);
    *(v24 + 16) = *v3;
    *(v24 + 32) = v25;
    *(v24 + 48) = v3[4];
    v44 = _s21BackgroundGalleryItemVMa;
    sub_190AB65A8(&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, _s21BackgroundGalleryItemVMa);
    sub_1908693CC(&v60, v58);
    sub_190D50920();
    sub_190D50920();
    sub_19022FD14(&v59, v58, &qword_1EAD5B760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
    v43 = sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    v26 = v52;
    sub_190D56030();
    v27 = v45;
    sub_190AB6068(v45, &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
    v28 = swift_allocObject();
    v29 = *(v3 + 1);
    *(v28 + 16) = *v3;
    *(v28 + 32) = v29;
    *(v28 + 48) = v3[4];
    v30 = sub_190AB65A8(&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v23, v44);
    MEMORY[0x1EEE9AC00](v30);
    *(&v43 - 2) = v27;
    sub_1908693CC(&v60, v58);
    sub_190D50920();
    sub_190D50920();
    sub_19022FD14(&v59, v58, &qword_1EAD5B760);
    v31 = v53;
    sub_190D56030();
    v32 = v49;
    v33 = *(v49 + 16);
    v34 = v54;
    v33(v54, v26, v11);
    v35 = v55;
    v33(v55, v31, v11);
    v36 = v50;
    v33(v50, v34, v11);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C6A8);
    v33((v36 + *(v37 + 48)), v35, v11);
    v38 = *(v32 + 8);
    v38(v31, v11);
    v38(v26, v11);
    v38(v35, v11);
    v38(v34, v11);
    v39 = v56;
    sub_19081E40C(v36, v56, &qword_1EAD5C6A0);
    return (*(v57 + 56))(v39, 0, 1, v51);
  }

  else
  {
    v41 = v56;
    v42 = *(v57 + 56);

    return v42(v41, 1, 1, v5);
  }
}

id sub_190AB2D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v36 = a6;
  v10 = _s21BackgroundGalleryItemVMa(0);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s21BackgroundPreviewCellVMa(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C678);
  MEMORY[0x1EEE9AC00](v32);
  v18 = &v32 - v17;
  LOBYTE(a2) = *(a2 + 16);
  v34 = a1;
  sub_190AB6068(a1, v16, _s21BackgroundGalleryItemVMa);
  v16[*(v14 + 28)] = a2;
  v16[*(v14 + 32)] = a3;
  result = CKFrameworkBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_190D56ED0();
    v22 = sub_190D56ED0();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    v24 = sub_190D56F10();
    v26 = v25;

    v27 = *a5;
    v38 = a5[4];
    v39 = v27;
    sub_190AB6068(v34, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s21BackgroundGalleryItemVMa);
    v28 = (*(v33 + 80) + 56) & ~*(v33 + 80);
    v29 = swift_allocObject();
    v30 = *(a5 + 1);
    *(v29 + 16) = *a5;
    *(v29 + 32) = v30;
    *(v29 + 48) = a5[4];
    sub_190AB65A8(v12, v29 + v28, _s21BackgroundGalleryItemVMa);
    sub_190AB65A8(v16, v18, _s21BackgroundPreviewCellVMa);
    v31 = &v18[*(v32 + 36)];
    *v31 = v24;
    *(v31 + 1) = v26;
    v31[16] = v35 & 1;
    *(v31 + 3) = sub_190AB6A8C;
    *(v31 + 4) = v29;
    sub_19081E40C(v18, v36, &qword_1EAD5C678);
    sub_1908693CC(&v39, v37);
    sub_190D50920();
    sub_190D50920();
    return sub_19022FD14(&v38, v37, &qword_1EAD5B760);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190AB30A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v42 = a6;
  v10 = _s21BackgroundGalleryItemVMa(0);
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = v11;
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s21BackgroundPreviewCellVMa(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C6B0);
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C618);
  MEMORY[0x1EEE9AC00](v36);
  v20 = &v35 - v19;
  LOBYTE(a2) = *(a2 + 16);
  sub_190AB6068(a1, v15, _s21BackgroundGalleryItemVMa);
  v15[*(v13 + 20)] = a2;
  v15[*(v13 + 24)] = a3;
  v43 = a4;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C628);
  sub_190AB6A40(&qword_1EAD5C630, _s21BackgroundPreviewCellVMa);
  sub_190AB5CC0();
  sub_190D55750();
  sub_190AB60D0(v15, _s21BackgroundPreviewCellVMa);
  result = CKFrameworkBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_190D56ED0();
    v24 = sub_190D56ED0();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v26 = sub_190D56F10();
    v28 = v27;

    v29 = *a4;
    v46 = a4[4];
    v47 = v29;
    sub_190AB6068(a1, v12, _s21BackgroundGalleryItemVMa);
    v30 = v12;
    v31 = (*(v39 + 80) + 56) & ~*(v39 + 80);
    v32 = swift_allocObject();
    v33 = *(a4 + 1);
    *(v32 + 16) = *a4;
    *(v32 + 32) = v33;
    *(v32 + 48) = a4[4];
    sub_190AB65A8(v30, v32 + v31, _s21BackgroundGalleryItemVMa);
    (*(v37 + 32))(v20, v18, v38);
    v34 = &v20[*(v36 + 36)];
    *v34 = v26;
    *(v34 + 1) = v28;
    v34[16] = v41 & 1;
    *(v34 + 3) = sub_190AB6050;
    *(v34 + 4) = v32;
    sub_19081E40C(v20, v42, &qword_1EAD5C618);
    sub_1908693CC(&v47, v45);
    sub_190D50920();
    sub_190D50920();
    return sub_19022FD14(&v46, v45, &qword_1EAD5B760);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190AB3534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C648);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C6B8);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = v51 - v9;
  v10 = _s21BackgroundGalleryItemVMa(0);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v54 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v60 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v66 = v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54060);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v51 - v17;
  v19 = _s17BackgroundContentOMa(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19022FD14(a1 + *(v10 + 28), v18, &unk_1EAD54060);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_19022EEA4(v18, &unk_1EAD54060);
    sub_190AB6068(a1 + *(v10 + 32), v22, _s17BackgroundContentOMa);
  }

  else
  {
    sub_190AB65A8(v18, v22, _s17BackgroundContentOMa);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_190AB60D0(v22, _s17BackgroundContentOMa);
  if (EnumCaseMultiPayload == 8)
  {
    v24 = *v2;
    v25 = v2[2];
    v51[0] = v2[1];
    v51[1] = v25;
    v69 = v2[4];
    v70[0] = v24;
    v52 = _s21BackgroundGalleryItemVMa;
    v26 = v54;
    sub_190AB6068(a1, v54, _s21BackgroundGalleryItemVMa);
    v27 = (*(v53 + 80) + 56) & ~*(v53 + 80);
    v28 = swift_allocObject();
    v53 = a1;
    v29 = *(v2 + 1);
    *(v28 + 16) = *v2;
    *(v28 + 32) = v29;
    *(v28 + 48) = v2[4];
    sub_190AB65A8(v26, v28 + v27, _s21BackgroundGalleryItemVMa);
    sub_1908693CC(v70, &v68);
    sub_190D50920();
    sub_190D50920();
    sub_19022FD14(&v69, &v68, &qword_1EAD5B760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    sub_190D56030();
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v31 = &unk_1F0402F40;
    if (has_internal_diagnostics)
    {
      v31 = &unk_1F0402F18;
    }

    v68 = v31;
    swift_getKeyPath();
    sub_190AB6068(v53, v26, v52);
    v32 = swift_allocObject();
    v33 = *(v2 + 1);
    *(v32 + 16) = *v2;
    *(v32 + 32) = v33;
    *(v32 + 48) = v2[4];
    sub_190AB65A8(v26, v32 + v27, _s21BackgroundGalleryItemVMa);
    sub_1908693CC(v70, v67);
    sub_190D50920();
    sub_190D50920();
    sub_19022FD14(&v69, v67, &qword_1EAD5B760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C6C0);
    sub_190233640(&qword_1EAD5C6C8, &qword_1EAD5C6C0);
    sub_190AB6554();
    sub_190233640(&qword_1EAD5B9D8, &qword_1EAD5B9D0);
    v34 = v61;
    v35 = v56;
    sub_190D56280();
    v36 = v55;
    v37 = *(v55 + 16);
    v38 = v60;
    v37(v60, v66, v35);
    v40 = v57;
    v39 = v58;
    v41 = *(v58 + 16);
    v42 = v34;
    v43 = v59;
    v41(v57, v42, v59);
    v37(v62, v38, v35);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C6D8);
    v45 = v62;
    v41(&v62[*(v44 + 48)], v40, v43);
    v46 = *(v39 + 8);
    v46(v61, v43);
    v47 = *(v36 + 8);
    v47(v66, v35);
    v46(v40, v43);
    v47(v60, v35);
    v48 = v65;
    sub_19081E40C(v45, v65, &qword_1EAD5C648);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v65;
  }

  return (*(v63 + 56))(v48, v49, 1, v64);
}

id sub_190AB3D84(uint64_t a1)
{
  if (*(a1 + *(_s21BackgroundGalleryItemVMa(0) + 36) + 8))
  {
    sub_190D52690();
    v1 = sub_190D52690();
LABEL_5:
    MEMORY[0x1EEE9AC00](v1);
    MEMORY[0x1EEE9AC00](v7);
    sub_190D55F20();
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_190AB3F50@<X0>(uint64_t a1@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  result = sub_190D555F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190AB3FBC(__int128 *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C420);
  MEMORY[0x193AF1A80](&v7, v5);
  a3(a2);
}

id sub_190AB4038()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D55F40();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190AB4144(char *a1, uint64_t *a2, uint64_t a3)
{
  v6 = _s21BackgroundGalleryItemVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  v10 = *a2;
  v17 = a2[4];
  v18 = v10;
  sub_190AB6068(a3, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], _s21BackgroundGalleryItemVMa);
  v11 = (*(v7 + 80) + 57) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = *(a2 + 1);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v13;
  *(v12 + 48) = a2[4];
  *(v12 + 56) = v9;
  sub_190AB65A8(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, _s21BackgroundGalleryItemVMa);
  v15[16] = v9;
  sub_1908693CC(&v18, v16);
  sub_190D50920();
  sub_190D50920();
  sub_19022FD14(&v17, v16, &qword_1EAD5B760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  return sub_190D56030();
}

uint64_t sub_190AB4358(__int128 *a1, int a2, uint64_t a3)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C420);
  MEMORY[0x193AF1A80](&v7, v5);
  sub_19083A3E8(a2, a3);
}

uint64_t sub_190AB43D4(char a1)
{
  sub_190BF69B4(a1);
  sub_19081E484();
  return sub_190D55F40();
}

uint64_t sub_190AB44C4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C3E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C3E8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C3F0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v47 - v19;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C3F8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v47 - v20;
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  sub_190AB51C8();
  sub_190D50920();
  sub_190D52590();
  sub_190233640(&qword_1EAD5C408, &qword_1EAD5C3E0);
  sub_190D55AA0();
  (*(v12 + 8))(v14, v11);
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  v23 = &v18[*(v16 + 44)];
  *v23 = KeyPath;
  v23[1] = sub_190AB521C;
  v23[2] = v22;
  v24 = swift_getKeyPath();
  v64 = a1;
  v65 = a2;
  v54 = a2;
  sub_190D50920();
  sub_190D50920();
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C410);
  sub_190D55FD0();
  v25 = v61;
  swift_getKeyPath();
  v64 = v25;
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v26 = *(v25 + 14);
  v27 = v26;

  if (v26)
  {
    v26 = [v27 snapshotController];
  }

  v28 = v49;
  sub_19081E40C(v18, v49, &qword_1EAD5C3E8);
  v29 = (v28 + *(v48 + 36));
  *v29 = v24;
  v29[1] = v26;
  v30 = swift_getKeyPath();
  v64 = a1;
  v65 = v54;
  sub_190D55FD0();
  v31 = v61;
  swift_getKeyPath();
  v64 = v31;
  sub_190D51C20();

  v32 = *(v31 + 14);
  v33 = v32;

  if (v32)
  {
    v34 = [v33 channelIdentifier];

    v35 = v50;
    sub_190D51880();

    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v50;
  }

  v37 = sub_190D518A0();
  (*(*(v37 - 8) + 56))(v35, v36, 1, v37);
  v38 = v51;
  v39 = &v51[*(v53 + 36)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C418);
  sub_19081E40C(v35, v39 + *(v40 + 28), &unk_1EAD58460);
  *v39 = v30;
  sub_19081E40C(v28, v38, &qword_1EAD5C3F0);
  v61 = a1;
  v50 = a1;
  v41 = v54;
  v62 = v54;
  sub_190D55FF0();
  v42 = v64;
  v43 = v65;
  v44 = v66;
  swift_getKeyPath();
  v64 = v42;
  v65 = v43;
  v66 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C420);
  sub_190D56210();

  v45 = v63;

  v59 = v50;
  v60 = v41;
  sub_190D55FD0();
  sub_190AB5234();
  sub_190D55680();

  return sub_19022EEA4(v38, &qword_1EAD5C3F8);
}

double sub_190AB4BB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v18 = a3;
  v7 = sub_190D563C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v17[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C410);
  sub_190D55FF0();
  v11 = v19;
  sub_190D563D0();
  *v17 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_190DD1DA0;
  v16 = xmmword_190DE3850;
  *v10 = xmmword_190DE3850;
  v13 = *MEMORY[0x1E697D748];
  v14 = *(v8 + 104);
  v14(v10, v13, v7);
  sub_190D563E0();
  *v10 = v16;
  v14(v10, v13, v7);
  sub_190D563E0();
  *a4 = v11;
  result = v17[0];
  *(a4 + 8) = *v17;
  *(a4 + 24) = v18;
  *(a4 + 32) = v12;
  return result;
}

double sub_190AB4DEC@<D0>(_OWORD *a1@<X8>)
{
  sub_190AB55AC();
  sub_190D54830();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_190AB4E3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_190AB562C;
    *(v4 + 24) = v3;
  }

  sub_19029063C(v1);
  sub_190AB55AC();
  return sub_190D54840();
}

uint64_t sub_190AB4F3C(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C410);
  sub_190D55FD0();
  swift_getKeyPath();
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_190A93B14(v1);
    swift_unknownObjectRelease();
  }
}

id sub_190AB5028@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v4 = *(*(v3 + 120) + 16);
  *a2 = v4;

  return v4;
}

void sub_190AB50E4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_190AB6A40(&qword_1EAD5BB80, _s9ViewModelCMa_9);
  sub_190D51C20();

  v4 = *(v3 + 120);
  v5 = *(v4 + 16);
  *(v4 + 16) = v2;
  sub_190D50920();
  v6 = v2;
}

unint64_t sub_190AB51C8()
{
  result = qword_1EAD5C400;
  if (!qword_1EAD5C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C400);
  }

  return result;
}

unint64_t sub_190AB5234()
{
  result = qword_1EAD5C428;
  if (!qword_1EAD5C428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C3F8);
    sub_190AB52EC();
    sub_190233640(&qword_1EAD5C470, &qword_1EAD5C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C428);
  }

  return result;
}

unint64_t sub_190AB52EC()
{
  result = qword_1EAD5C430;
  if (!qword_1EAD5C430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C3F0);
    sub_190AB53A4();
    sub_190233640(&qword_1EAD5C460, &qword_1EAD5C468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C430);
  }

  return result;
}

unint64_t sub_190AB53A4()
{
  result = qword_1EAD5C438;
  if (!qword_1EAD5C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C3E8);
    sub_190AB545C();
    sub_190233640(&qword_1EAD5C450, &qword_1EAD5C458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C438);
  }

  return result;
}

unint64_t sub_190AB545C()
{
  result = qword_1EAD5C440;
  if (!qword_1EAD5C440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C448);
    sub_190233640(&qword_1EAD5C408, &qword_1EAD5C3E0);
    sub_190AB6A40(&qword_1EAD56800, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C440);
  }

  return result;
}

uint64_t sub_190AB5544@<X0>(uint64_t a1@<X8>)
{
  sub_190D54F60();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C6F8);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

unint64_t sub_190AB55AC()
{
  result = qword_1EAD5C478;
  if (!qword_1EAD5C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C478);
  }

  return result;
}

uint64_t sub_190AB562C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 1;
  return v2(&v4);
}

unint64_t sub_190AB56AC()
{
  result = qword_1EAD5C538;
  if (!qword_1EAD5C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C530);
    sub_190AB5730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C538);
  }

  return result;
}

unint64_t sub_190AB5730()
{
  result = qword_1EAD5C540;
  if (!qword_1EAD5C540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C550);
    sub_190233640(&qword_1EAD5C558, &qword_1EAD5C550);
    sub_190AB5840();
    swift_getOpaqueTypeConformance2();
    sub_190AB5894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C540);
  }

  return result;
}

unint64_t sub_190AB5840()
{
  result = qword_1EAD5C560;
  if (!qword_1EAD5C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C560);
  }

  return result;
}

unint64_t sub_190AB5894()
{
  result = qword_1EAD5C568;
  if (!qword_1EAD5C568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C578);
    sub_190D54390();
    sub_190AB59D8();
    sub_190AB6A40(&qword_1EAD54AF8, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C568);
  }

  return result;
}

unint64_t sub_190AB59D8()
{
  result = qword_1EAD5C580;
  if (!qword_1EAD5C580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C578);
    sub_190233640(&qword_1EAD5C588, &qword_1EAD5C590);
    sub_190AB6A40(&qword_1EAD56800, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C580);
  }

  return result;
}

unint64_t sub_190AB5AC0()
{
  result = qword_1EAD5C598;
  if (!qword_1EAD5C598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C510);
    sub_190233640(&qword_1EAD5C5A0, &qword_1EAD5C5A8);
    sub_190AB56AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C598);
  }

  return result;
}

unint64_t sub_190AB5BA8()
{
  result = qword_1EAD5C620;
  if (!qword_1EAD5C620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C618);
    _s21BackgroundPreviewCellVMa(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C628);
    sub_190AB6A40(&qword_1EAD5C630, _s21BackgroundPreviewCellVMa);
    sub_190AB5CC0();
    swift_getOpaqueTypeConformance2();
    sub_190AB5D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C620);
  }

  return result;
}

unint64_t sub_190AB5CC0()
{
  result = qword_1EAD5C638;
  if (!qword_1EAD5C638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C628);
    sub_190233640(&qword_1EAD5C640, &qword_1EAD5C648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C638);
  }

  return result;
}

unint64_t sub_190AB5D70()
{
  result = qword_1EAD5C650;
  if (!qword_1EAD5C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C650);
  }

  return result;
}

unint64_t sub_190AB5E00()
{
  result = qword_1EAD5C688;
  if (!qword_1EAD5C688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C678);
    sub_190AB6A40(&qword_1EAD5C630, _s21BackgroundPreviewCellVMa);
    sub_190AB5D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C688);
  }

  return result;
}

unint64_t sub_190AB5EBC()
{
  result = qword_1EAD5C690;
  if (!qword_1EAD5C690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C680);
    sub_190233640(&qword_1EAD5C698, &qword_1EAD5C6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C690);
  }

  return result;
}

uint64_t sub_190AB5FE4@<X0>(uint64_t *a1@<X8>)
{
  sub_190D52690();
  result = sub_190D55ED0();
  *a1 = result;
  return result;
}

uint64_t sub_190AB6068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190AB60D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_63Tm()
{
  v1 = _s21BackgroundGalleryItemVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  if (*(v0 + v3 + 24) >= 8uLL)
  {
  }

  v6 = v5 + v1[7];
  v7 = _s17BackgroundContentOMa(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          if (EnumCaseMultiPayload == 8)
          {

            sub_19083B6D4(*(v6 + 24), *(v6 + 32));
          }

          goto LABEL_4;
        }

        v12 = sub_190D518A0();
        (*(*(v12 - 8) + 8))(v6, v12);
        _s21GeneratingTileContentVMa(0);
LABEL_42:

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 4)
      {
      }

      else
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_4;
        }

        swift_unknownObjectRelease();
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

LABEL_4:
  v8 = v5 + v1[8];
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 <= 3)
  {
    if (v9 <= 1)
    {
      if (!v9)
      {

        goto LABEL_30;
      }

      if (v9 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_18:

    goto LABEL_30;
  }

  if (v9 <= 6)
  {
    if (v9 == 4)
    {
    }

    else
    {
      if (v9 != 5)
      {
        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  if (v9 == 7)
  {
    v11 = sub_190D518A0();
    (*(*(v11 - 8) + 8))(v8, v11);
    _s21GeneratingTileContentVMa(0);
LABEL_29:

    goto LABEL_30;
  }

  if (v9 == 8)
  {

    sub_19083B6D4(*(v8 + 24), *(v8 + 32));
  }

LABEL_30:
  if (*(v5 + v1[9] + 8))
  {
  }

  sub_190AA2B74(*(v5 + v1[10]));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190AB64D0(char *a1)
{
  v3 = *(_s21BackgroundGalleryItemVMa(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_190AB4144(a1, (v1 + 16), v4);
}

unint64_t sub_190AB6554()
{
  result = qword_1EAD5C6D0;
  if (!qword_1EAD5C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C6D0);
  }

  return result;
}

uint64_t sub_190AB65A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190AB6610()
{
  v1 = *(_s21BackgroundGalleryItemVMa(0) - 8);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(v1 + 80) + 57) & ~*(v1 + 80));

  return sub_190AB4358((v0 + 16), v2, v3);
}

uint64_t objectdestroy_56Tm()
{
  v1 = (_s17BackgroundSectionVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_190D518A0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190AB6790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s17BackgroundSectionVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_190AB190C(a1, (v2 + 16), v6, a2);
}

unint64_t sub_190AB6824()
{
  result = qword_1EAD5C6E0;
  if (!qword_1EAD5C6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C4A0);
    sub_190AB68B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C6E0);
  }

  return result;
}

unint64_t sub_190AB68B0()
{
  result = qword_1EAD5C6E8;
  if (!qword_1EAD5C6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C488);
    sub_190233640(&qword_1EAD5C6F0, &qword_1EAD5C480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C6E8);
  }

  return result;
}

unint64_t sub_190AB6984()
{
  result = qword_1EAD452A0;
  if (!qword_1EAD452A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C6F8);
    sub_190AB6A40(&qword_1EAD45210, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD452A0);
  }

  return result;
}

uint64_t sub_190AB6A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_190AB6A9C(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190AB6A98();
  return sub_190AB6AE4;
}

uint64_t (*sub_190AB6B04(uint64_t *a1))(void *)
{
  a1[1] = v1;
  *a1 = sub_190AB6AE8();
  return sub_190AB6B4C;
}

uint64_t (*sub_190AB6B54(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190AB6B50();
  return sub_190AB6B9C;
}

uint64_t (*sub_190AB6BA4(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190AB6BA0();
  return sub_190AB6BEC;
}

id sub_190AB6BFC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_190AB7158();
    *(v0 + 16) = v1;
    sub_190D52690();
  }

  sub_190D52690();
  return v1;
}

uint64_t (*sub_190AB6C68(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190AB6A98();
  return sub_190AB7C50;
}

uint64_t sub_190AB6CB0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_190AB6D0C();
    v1 = v2;
    *(v0 + 24) = v2;
    sub_190D52690();
  }

  sub_190D52690();
  return v1;
}

void sub_190AB6D0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD5600;
  v1 = IMBalloonExtensionIDWithSuffix();
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = IMStickersExtensionIdentifier();
  v12 = IMBalloonExtensionIDWithSuffix();

  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = IMBalloonExtensionIDWithSuffix();
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sub_190D56F10();
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = IMBalloonExtensionIDWithSuffix();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = IMBalloonExtensionIDWithSuffix();
  if (v26)
  {
    v27 = v26;
    v28 = sub_190D56F10();
    v30 = v29;

    *(v0 + 112) = v28;
    *(v0 + 120) = v30;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t (*sub_190AB6EC0(uint64_t *a1))(void *)
{
  a1[1] = v1;
  *a1 = sub_190AB6CB0();
  return sub_190AB7C54;
}

id sub_190AB6F08()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
LABEL_5:
    sub_190D52690();
    return v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_190DD1D90;
  result = IMBalloonExtensionIDWithSuffix();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56F10();
    v6 = v5;

    *(v1 + 32) = v4;
    *(v1 + 40) = v6;
    *(v0 + 32) = v1;
    sub_190D52690();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_190AB6FD0(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190AB6B50();
  return sub_190AB7C58;
}

id sub_190AB7018()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_190AB7158();
    *(v0 + 40) = v1;
    sub_190D52690();
  }

  sub_190D52690();
  return v1;
}

uint64_t (*sub_190AB7084(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190AB6BA0();
  return sub_190AB7C5C;
}

uint64_t _s7ChatKit29Fall2024SendMenuOrderProviderCfd_0()
{

  return v0;
}

uint64_t _s7ChatKit29Fall2024SendMenuOrderProviderCfD_0()
{

  return swift_deallocClassInstance();
}

id sub_190AB7158()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD1DA0;
  result = IMBalloonExtensionIDWithSuffix();
  if (result)
  {
    v2 = result;
    v3 = sub_190D56F10();
    v5 = v4;

    *(v0 + 32) = v3;
    *(v0 + 40) = v5;
    result = IMBalloonExtensionIDWithSuffix();
    if (result)
    {
      v6 = result;
      v7 = sub_190D56F10();
      v9 = v8;

      *(v0 + 48) = v7;
      *(v0 + 56) = v9;
      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190AB723C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_190AB72A0();
    v1 = v2;
    *(v0 + 24) = v2;
    sub_190D52690();
  }

  sub_190D52690();
  return v1;
}

void sub_190AB72A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DEC810;
  v1 = IMBalloonExtensionIDWithSuffix();
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = IMStickersExtensionIdentifier();
  v12 = IMBalloonExtensionIDWithSuffix();

  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = IMBalloonExtensionIDWithSuffix();
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  v18 = sub_190D56F10();
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = IMBalloonExtensionIDWithSuffix();
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = IMBalloonExtensionIDWithSuffix();
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = v26;
  v28 = sub_190D56F10();
  v30 = v29;

  *(v0 + 112) = v28;
  *(v0 + 120) = v30;
  v31 = IMBalloonExtensionIDWithSuffix();
  if (v31)
  {
    v32 = v31;
    v33 = sub_190D56F10();
    v35 = v34;

    *(v0 + 128) = v33;
    *(v0 + 136) = v35;
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t (*sub_190AB7490(uint64_t *a1))(void *)
{
  a1[1] = v1;
  *a1 = sub_190AB7220();
  return sub_190AB7C54;
}

uint64_t DevelopmentFall2024SendMenuOrderProvider.deinit()
{

  return v0;
}

uint64_t DevelopmentFall2024SendMenuOrderProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t keypath_set_13Tm(void *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
  sub_190D52690();
}

uint64_t keypath_set_15Tm(void *a1, uint64_t a2)
{
  *(*a2 + 40) = *a1;
  sub_190D52690();
}

uint64_t keypath_setTm_6(void *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
  sub_190D52690();
}

uint64_t keypath_set_11Tm(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
  sub_190D52690();
}

unint64_t sub_190AB7C8C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_190AB8704(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void static AudioMessageRecordingView.button(for:with:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {

      sub_190AB8714();
      return;
    }

    if (a1 == 1)
    {

      sub_190AB8AC8();
      return;
    }

LABEL_18:
    sub_190D58790();
    __break(1u);
    return;
  }

  if (a1 == 2)
  {

    sub_190AB8E34();
  }

  else
  {
    if (a1 != 3)
    {
      goto LABEL_18;
    }

    sub_190AB92E8();
  }
}

id sub_190AB7DEC(void *a1)
{
  v1 = [a1 userInterfaceStyle] == 2;
  v2 = [objc_opt_self() systemRedColor];
  v3 = [v2 colorWithAlphaComponent_];

  return v3;
}

uint64_t sub_190AB7E6C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = sub_190D57FB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57FD0();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    *(swift_allocObject() + 16) = a1;
    v15 = a1;
    sub_190D53310();
    v16 = sub_190D53300();
    v17 = *(*(v16 - 8) + 56);
    v17(v4, 0, 1, v16);
    v18 = sub_190D57DE0();
    sub_190D53240();
    v18(v22, 0);
    *(swift_allocObject() + 16) = v15;
    v15;
    sub_190D53310();
    v17(v4, 0, 1, v16);
    sub_190D57F10();
    v19 = v21;
    (*(v11 + 16))(v21, v13, v10);
    (*(v11 + 56))(v19, 0, 1, v10);
    sub_190D57FE0();
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

void sub_190AB81D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_190D57FB0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57FD0();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v15 = [a1 isSelected];
    v27 = v7;
    if (v15)
    {
      v16 = sub_190D56ED0();
      v17 = [objc_opt_self() systemImageNamed_];

      if (v17)
      {
LABEL_6:
        sub_190D57F60();
        sub_190D57EE0();
        v20 = sub_190D57DE0();
        sub_190D53230();
        v20(v28, 0);
        *(swift_allocObject() + 16) = a1;
        v21 = a1;
        sub_190D53310();
        v22 = sub_190D53300();
        v23 = *(*(v22 - 8) + 56);
        v23(v4, 0, 1, v22);
        v24 = sub_190D57DE0();
        sub_190D53240();
        v24(v28, 0);
        *(swift_allocObject() + 16) = v21;
        v21;
        sub_190D53310();
        v23(v4, 0, 1, v22);
        sub_190D57F10();
        v25 = v27;
        (*(v12 + 16))(v27, v14, v11);
        (*(v12 + 56))(v25, 0, 1, v11);
        sub_190D57FE0();
        (*(v12 + 8))(v14, v11);
        return;
      }

      __break(1u);
    }

    v18 = sub_190D56ED0();
    v19 = [objc_opt_self() systemImageNamed_];

    if (v19)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

id sub_190AB8640(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0.0;
  [a1 getRed:0 green:0 blue:0 alpha:v8];
  v4 = [a2 isHighlighted];
  v5 = v8[0];
  if (v4)
  {
    v5 = v8[0] * 0.4;
  }

  v6 = [a1 colorWithAlphaComponent_];

  return v6;
}

unint64_t sub_190AB8704(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

void sub_190AB8714()
{
  v0 = sub_190D57E10();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_190D57F40();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D57FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  sub_190D57F50();
  v13 = *MEMORY[0x1E69DDCF8];
  v14 = objc_opt_self();
  v15 = [v14 configurationWithTextStyle:v13 scale:1];
  v16 = [v14 configurationWithWeight_];
  v17 = [v15 configurationByApplyingConfiguration_];

  sub_190D57DD0();
  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  sub_190D57F00();
  v20 = [v18 quaternarySystemFillColor];
  sub_190D57EF0();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC568], v2);
  sub_190D57E00();
  v21 = sub_190D56ED0();
  v22 = [objc_opt_self() systemImageNamed_];

  if (v22)
  {
    sub_190D57F60();
    (*(v25 + 104))(v24, *MEMORY[0x1E69DC508], v26);
    sub_190D57E20();
    sub_190956C24();
    (*(v7 + 16))(v9, v12, v6);
    sub_190D57FC0();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_190AB8AC8()
{
  v0 = sub_190D57F40();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_190D57E10();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D57FB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_190D57F50();
  v13 = sub_190D56ED0();
  v14 = [objc_opt_self() systemImageNamed_];

  if (v14)
  {
    sub_190D57F60();
    v15 = *MEMORY[0x1E69DDCF8];
    v16 = objc_opt_self();
    v17 = [v16 configurationWithTextStyle:v15 scale:2];
    v18 = [v16 configurationWithWeight_];
    v19 = [v17 configurationByApplyingConfiguration_];

    sub_190D57DD0();
    (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v21);
    sub_190D57E20();
    (*(v22 + 104))(v2, *MEMORY[0x1E69DC568], v23);
    sub_190D57E00();
    sub_190956C24();
    (*(v7 + 16))(v9, v12, v6);
    sub_190D57FC0();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_190AB8E34()
{
  v0 = sub_190D57F40();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_190D57E10();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_190D57FB0();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  sub_190D57F90();
  v12 = sub_190D56ED0();
  v13 = [objc_opt_self() systemImageNamed_];

  if (v13)
  {
    sub_190D57F60();
    v14 = *MEMORY[0x1E69DDCF8];
    v15 = objc_opt_self();
    v16 = [v15 configurationWithTextStyle:v14 scale:1];
    v17 = [v15 configurationWithWeight_];
    v18 = [v16 configurationByApplyingConfiguration_];

    sub_190D57DD0();
    v19 = [objc_opt_self() systemRedColor];
    sub_190D57F00();
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v33 = sub_190AB7DEC;
    v34 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_190D1017C;
    v32 = &block_descriptor_71;
    v21 = _Block_copy(&aBlock);
    [v20 initWithDynamicProvider_];
    _Block_release(v21);

    sub_190D57EF0();
    (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v25);
    sub_190D57E20();
    (*(v26 + 104))(v2, *MEMORY[0x1E69DC568], v27);
    sub_190D57E00();
    sub_190956C24();
    v22 = v28;
    (*(v6 + 16))(v8, v11, v28);
    v23 = sub_190D57FC0();
    v33 = sub_190AB7E6C;
    v34 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_19084156C;
    v32 = &block_descriptor_3_2;
    v24 = _Block_copy(&aBlock);
    [v23 setConfigurationUpdateHandler_];
    _Block_release(v24);
    (*(v6 + 8))(v11, v22);
  }

  else
  {
    __break(1u);
  }
}

void *sub_190AB92E8()
{
  v27 = sub_190D57F40();
  v0 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_190D57E10();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_190D57FB0();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  sub_190D57F50();
  v12 = *MEMORY[0x1E69DDCF8];
  v13 = objc_opt_self();
  v14 = [v13 configurationWithTextStyle:v12 scale:1];
  v15 = [v13 configurationWithWeight_];
  v16 = [v14 configurationByApplyingConfiguration_];

  sub_190D57DD0();
  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  sub_190D57F00();
  v19 = [v17 tertiarySystemFillColor];
  sub_190D57EF0();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v25);
  sub_190D57E20();
  (*(v0 + 104))(v2, *MEMORY[0x1E69DC568], v27);
  sub_190D57E00();
  sub_190956C24();
  v20 = v26;
  (*(v6 + 16))(v8, v11, v26);
  v21 = sub_190D57FC0();
  aBlock[4] = sub_190AB81D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_9_7;
  v22 = _Block_copy(aBlock);
  [v21 setConfigurationUpdateHandler_];
  _Block_release(v22);
  (*(v6 + 8))(v11, v20);
  return v21;
}

unint64_t sub_190AB96C8()
{
  result = qword_1EAD5C700;
  if (!qword_1EAD5C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C700);
  }

  return result;
}

Swift::Void __swiftcall CKMessagesController.didSelectFilterFromViewMenu(command:)(UICommand *command)
{
  v2 = v1;
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D8E0);
  v5 = command;
  v6 = sub_190D53020();
  v7 = sub_190D576C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_19020E000, v6, v7, "Filter mode selected from view menu with command: %@", v8, 0xCu);
    sub_19022EEA4(v9, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  v11 = [v2 conversationListController];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      [v13 filterCommandSelected_];
      [v14 dismissSearchIfNeeded];
    }
  }

  [v2 reloadMacToolbarItems];
}

void sub_190AB9990(void *a1)
{
  v2 = v1;
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D8E0);
  v5 = a1;
  v6 = sub_190D53020();
  v7 = sub_190D576C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_19020E000, v6, v7, "Filter mode selected with command: %@", v8, 0xCu);
    sub_19022EEA4(v9, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  v11 = [v2 conversationListController];
  if (v11)
  {
    v14 = v11;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      [v12 filterCommandSelected_];
      [v13 dismissSearchIfNeeded];
    }
  }
}

Swift::Void __swiftcall CKMessagesController.showSpamCategoryUpdatedAlert()()
{
  v2 = v0;
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9D8E0);
  v4 = sub_190D53020();
  v5 = sub_190D576C0();
  if (os_log_type_enabled(v4, v5))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_19020E000, v4, v5, "Presenting spam category update alert to user.", v1, 2u);
    MEMORY[0x193AF7A40](v1, -1, -1);
  }

  v6 = CKFrameworkBundle();
  if (!v6)
  {
    __break(1u);
LABEL_16:

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_190D56ED0();
  v9 = sub_190D56ED0();
  v1 = [v7 localizedStringForKey:v8 value:0 table:v9];

  if (!v1)
  {
    sub_190D56F10();
    v1 = sub_190D56ED0();
  }

  v10 = CKFrameworkBundle();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = sub_190D56ED0();
  v13 = sub_190D56ED0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  if (!v14)
  {
    sub_190D56F10();
    v14 = sub_190D56ED0();
  }

  v15 = [objc_opt_self() alertControllerWithTitle:v1 message:v14 preferredStyle:1];

  v16 = CKFrameworkBundle();
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v18 = sub_190D56ED0();
  v19 = sub_190D56ED0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  if (!v20)
  {
    sub_190D56F10();
    v20 = sub_190D56ED0();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  v25[4] = sub_190ABA3A4;
  v25[5] = v21;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_19084156C;
  v25[3] = &block_descriptor_72;
  v22 = _Block_copy(v25);
  v23 = v2;

  v24 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v22];
  _Block_release(v22);

  [v15 addAction_];
  [v23 presentViewController:v15 animated:1 completion:0];
}

void sub_190ABA028(int a1, id a2)
{
  v2 = [a2 conversationListController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      CKConversationListCollectionViewController.updateFiltersAfterJunkDetection()();
    }
  }
}

id _sSo20CKMessagesControllerC7ChatKitE35didSelectFilterSettingsFromViewMenu7commandySo9UICommandC_tF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D8E0);
  v7 = sub_190D53020();
  v8 = sub_190D576C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_19020E000, v7, v8, "Requested to open message filtering settings", v9, 2u);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  sub_190D515E0();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    sub_190844DA8(v5, v3);
    v12 = sub_190D515F0();
    v13 = *(v12 - 8);
    v14 = 0;
    if ((*(v13 + 48))(v3, 1, v12) != 1)
    {
      v14 = sub_190D51570();
      (*(v13 + 8))(v3, v12);
    }

    sub_190820FDC(MEMORY[0x1E69E7CC0]);
    v15 = sub_190D56D60();

    [v11 openSensitiveURL:v14 withOptions:v15];

    return sub_19022EEA4(v5, &unk_1EAD55F20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190ABA3AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D8E0);
  v7 = sub_190D53020();
  v8 = sub_190D576C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_19020E000, v7, v8, "Requested to open Priority settings", v9, 2u);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  sub_190D515E0();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    sub_190844DA8(v5, v2);
    v12 = sub_190D515F0();
    v13 = *(v12 - 8);
    v14 = 0;
    if ((*(v13 + 48))(v2, 1, v12) != 1)
    {
      v14 = sub_190D51570();
      (*(v13 + 8))(v2, v12);
    }

    sub_190820FDC(MEMORY[0x1E69E7CC0]);
    v15 = sub_190D56D60();

    [v11 openSensitiveURL:v14 withOptions:v15];

    return sub_19022EEA4(v5, &unk_1EAD55F20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190ABA654@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_190ABBD18(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  result = sub_1908553EC();
  *a1 = result & 1;
  return result;
}

void sub_190ABA710(unsigned __int8 *a1@<X8>)
{
  swift_getKeyPath();
  sub_190ABBD18(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 restrictLocationSharing];

    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

id sub_190ABA7F4()
{
  v1 = v0;
  v2 = *v0;
  result = [v2 defaultIMHandle];
  if (!result)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v4 = result;
  v35 = v2;
  v5 = [result ID];

  if (!v5)
  {
    sub_190D56F10();
    v5 = sub_190D56ED0();
  }

  [v5 _appearsToBePhoneNumber];

  sub_190D56F10();
  v6 = v1[1];
  v7 = objc_opt_self();
  v8 = [v7 isCNContactAKnownContact_];
  v9 = objc_opt_self();
  v10 = &selRef_viewControllerForContact_;
  if (!v8)
  {
    v10 = &selRef_viewControllerForUnknownContact_;
  }

  v11 = [v9 *v10];
  v12 = [v6 identifier];
  if (!v12)
  {
    sub_190D56F10();
    v12 = sub_190D56ED0();
  }

  v13 = sub_190D56ED0();
  [v11 highlightPropertyWithKey:v13 identifier:v12];

  if (qword_1EAD519E0 != -1)
  {
    swift_once();
  }

  [v11 setContactStore_];
  [v11 setActions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C798);
  sub_190D55210();
  [v11 setDelegate_];

  result = [v11 contentViewController];
  if (!result)
  {
    goto LABEL_30;
  }

  v14 = result;
  sub_190D55210();
  [v14 setContactDelegate_];

  v15 = [v11 respondsToSelector_];
  if (v15)
  {
    [v11 setShouldUseModernNavigationBarHiding_];
  }

  if (!CNUIIsMessages())
  {
    goto LABEL_18;
  }

  if (([v7 isCNContactAKnownContact_] & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for ContactViewController(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  swift_getKeyPath();
  sub_190ABBD18(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v16 = sub_1908553EC();

  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_190D56320();
  swift_getKeyPath();
  sub_190D51C20();

  v17 = objc_opt_self();
  result = [v17 sharedInstance];
  if (!result)
  {
    goto LABEL_31;
  }

  v18 = result;
  v19 = [result restrictLocationSharing];

  if (v19)
  {
    goto LABEL_18;
  }

  result = [v17 sharedInstance];
  if (!result)
  {
    goto LABEL_32;
  }

  v23 = result;

  v24 = [v35 defaultIMHandle];
  v25 = [v23 handleIsFollowingMyLocation_];

  result = CKFrameworkBundle();
  v26 = result;
  if (v25)
  {
    if (result)
    {
LABEL_26:
      v27 = sub_190D56ED0();
      v28 = sub_190D56ED0();
      v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

      sub_190D56F10();
      v30 = [v11 contentViewController];
      if (v30)
      {
        v31 = v30;
        [v30 setShouldShowLinkedContacts_];
        v32 = v31;
        v33 = sub_190D56ED0();

        sub_190D55210();
        v34 = [v32 cardFooterGroup];
        [v32 addActionWithTitle:v33 target:v36 selector:sel_toggleSharingStateFromABCard inGroup:v34 destructive:v25];

        goto LABEL_19;
      }

LABEL_18:

LABEL_19:
      sub_190D55210();
      v20 = *&v36[OBJC_IVAR____TtCV7ChatKit21ContactViewController22ContactViewCoordinator_viewController];
      *&v36[OBJC_IVAR____TtCV7ChatKit21ContactViewController22ContactViewCoordinator_viewController] = v11;
      v21 = v11;

      v22 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      return v22;
    }

    goto LABEL_33;
  }

  if (result)
  {
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_190ABAED8(void *a1)
{
  v1 = [a1 topViewController];
  if (v1)
  {
    v7 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 navigationItem];
      v5 = [v4 backAction];

      if (v5)
      {

        v6 = [v3 navigationItem];
        [v6 setLeftBarButtonItem_];
      }
    }
  }
}

void sub_190ABAFD0()
{
  type metadata accessor for ContactViewController(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  swift_getKeyPath();
  sub_190ABBD18(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v0 = *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState];

  sub_1908657D4();
}

uint64_t sub_190ABB1BC()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ContactViewController(0);
  v1 = swift_allocObject();
  *(v1 + 16) = sub_190ABBD60;
  *(v1 + 24) = v0;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C7B0);
  sub_190D56200();
  sub_190D50920();
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FA8);
  sub_190D56200();
}

void sub_190ABB310(int a1)
{
  v2 = type metadata accessor for ContactViewController(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtCV7ChatKit21ContactViewController22ContactViewCoordinator_viewController);
  }

  else
  {
    v7 = 0;
  }

  v8 = CKFrameworkBundle();
  v9 = v8;
  v28 = a1;
  if (a1)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_8:
  v10 = sub_190D56ED0();
  v11 = sub_190D56ED0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  sub_190D56F10();
  v13 = [v7 contentViewController];
  if (v13)
  {
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = v13;
    v16 = [v15 cardFooterGroup];
    v27 = v2;
    v17 = v16;
    [v15 removeActionWithTarget:v14 selector:sel_toggleSharingStateFromABCard inGroup:v16];

    v18 = v15;
    v19 = sub_190D56ED0();

    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    v21 = [v18 cardFooterGroup];
    [v18 addActionWithTitle:v19 target:v20 selector:sel_toggleSharingStateFromABCard inGroup:v21 destructive:v28 & 1];

    v2 = v27;
  }

  else
  {
  }

  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_190ABBCB4(v22 + OBJC_IVAR____TtCV7ChatKit21ContactViewController22ContactViewCoordinator_parent, v4);

    v24 = &v4[*(v2 + 28)];
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v24) = v24[16];
    v30 = v25;
    v31 = v26;
    v32 = v24;
    v29 = 0;
    sub_190D50920();
    sub_190D50920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FA8);
    sub_190D56200();

    sub_1908CCF2C(v4);
  }

  else
  {
  }
}

id sub_190ABB724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactViewController.ContactViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190ABB7D0()
{
  result = type metadata accessor for ContactViewController(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_190ABB8B0()
{
  sub_1902188FC(319, &qword_1EAD44E80);
  if (v0 <= 0x3F)
  {
    sub_1902188FC(319, &qword_1EAD44E40);
    if (v1 <= 0x3F)
    {
      sub_1908CB130();
      if (v2 <= 0x3F)
      {
        sub_19091CBA0();
        if (v3 <= 0x3F)
        {
          sub_190ABB99C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_190ABB99C()
{
  if (!qword_1EAD5C788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55F90);
    v0 = sub_190D56250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5C788);
    }
  }
}

uint64_t sub_190ABBA1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190ABBCB4(v2, v5);
  v6 = type metadata accessor for ContactViewController.ContactViewCoordinator(0);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV7ChatKit21ContactViewController22ContactViewCoordinator_viewController] = 0;
  sub_190ABBCB4(v5, &v7[OBJC_IVAR____TtCV7ChatKit21ContactViewController22ContactViewCoordinator_parent]);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1908CCF2C(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_190ABBAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190ABBD18(&qword_1EAD5C7A8, type metadata accessor for ContactViewController);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190ABBB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190ABBD18(&qword_1EAD5C7A8, type metadata accessor for ContactViewController);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190ABBC14()
{
  sub_190ABBD18(&qword_1EAD5C7A8, type metadata accessor for ContactViewController);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_190ABBCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactViewController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190ABBD18(unint64_t *a1, void (*a2)(uint64_t))
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

id ReportSpamReasonContoller.__allocating_init(conversations:didReportBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___CKReportSpamReasonContoller_reportSpamReson];
  *v8 = 0;
  v8[8] = 1;
  *&v7[OBJC_IVAR___CKReportSpamReasonContoller_conversations] = a1;
  *v8 = 0;
  v8[8] = 1;
  v9 = &v7[OBJC_IVAR___CKReportSpamReasonContoller_didReportBlock];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

id ReportSpamReasonContoller.init(conversations:didReportBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___CKReportSpamReasonContoller_reportSpamReson];
  *v4 = 0;
  v4[8] = 1;
  *&v3[OBJC_IVAR___CKReportSpamReasonContoller_conversations] = a1;
  *v4 = 0;
  v4[8] = 1;
  v5 = &v3[OBJC_IVAR___CKReportSpamReasonContoller_didReportBlock];
  *v5 = a2;
  *(v5 + 1) = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ReportSpamReasonContoller();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

void sub_190ABC004()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for ReportSpamReasonContoller();
  objc_msgSendSuper2(&v57, sel_viewDidLoad);
  v2 = [v0 navigationItem];
  v3 = CKFrameworkBundle();
  if (!v3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  v5 = sub_190D56ED0();
  v6 = sub_190D56ED0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    sub_190D56F10();
    v7 = sub_190D56ED0();
  }

  [v2 setTitle_];

  v8 = [v1 navigationItem];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissReportSpamController];
  [v8 setLeftBarButtonItem_];

  v10 = [v1 navigationItem];
  v11 = CKFrameworkBundle();
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  sub_1902188FC(0, &qword_1EAD46690);
  v13 = sub_190D56ED0();
  v14 = sub_190D56ED0();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  sub_190D56F10();
  swift_unknownObjectRetain();
  v16 = sub_190D57760();
  [v10 setRightBarButtonItem_];

  v17 = [v1 navigationItem];
  v18 = [v17 rightBarButtonItem];

  if (v18)
  {
    [v18 setEnabled_];
  }

  LOBYTE(v56) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C7D0);
  sub_190D55FC0();
  v19 = v51;
  v20 = v53;
  v21 = v55;
  v52 = v1;
  v54 = v19;
  LOBYTE(v55) = v20;
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C7D8));
  sub_190D50920();
  v23 = v1;
  v24 = sub_190D54B60();
  [v23 addChildViewController_];
  v25 = [v23 view];
  if (!v25)
  {
    goto LABEL_19;
  }

  v26 = v25;
  v27 = [v24 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  [v26 addSubview_];

  [v24 didMoveToParentViewController_];
  v29 = [v24 view];

  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_190DDA780;
  v31 = [v24 view];

  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = [v31 heightAnchor];

  v33 = [v23 view];
  if (!v33)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = v33;
  v35 = [v33 heightAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v30 + 32) = v36;
  v37 = [v24 view];

  if (!v37)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v38 = [v37 leadingAnchor];

  v39 = [v23 view];
  if (!v39)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v39;
  v41 = [v39 leadingAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  *(v30 + 40) = v42;
  v43 = [v24 view];

  if (!v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = [v43 trailingAnchor];

  v45 = [v23 view];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 trailingAnchor];

    v48 = [v44 constraintEqualToAnchor_];
    *(v30 + 48) = v48;
    v49 = objc_opt_self();
    sub_1902188FC(0, &qword_1EAD45040);
    v50 = sub_190D57160();

    [v49 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_190ABC730()
{
  v1 = [v0 navigationController];
  if (v1 && ((v2 = v1, v3 = [v1 viewControllers], v2, sub_1902188FC(0, &qword_1EAD45060), v4 = sub_190D57180(), v3, v4 >> 62) ? (v5 = sub_190D581C0()) : (v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v5 >= 2))
  {
    v6 = [v0 navigationController];
    if (!v6)
    {
      return;
    }

    v8 = v6;
  }

  else
  {
    v7 = [v0 navigationController];
    if (!v7)
    {
      return;
    }

    v8 = v7;
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_190ABC8E4()
{
  v1 = *(v0 + OBJC_IVAR___CKReportSpamReasonContoller_conversations);
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v3 = 0;
    v4 = v12 + OBJC_IVAR___CKReportSpamReasonContoller_reportSpamReson;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = [v7 chat];
      if (v10)
      {
        if (*(v4 + 8))
        {
          __break(1u);
          break;
        }

        v5 = v10;
        [v10 markBusinessChatAsSpam_];
      }

      v6 = [v8 chat];
      [v6 closeSession];

      ++v3;
      if (v9 == i)
      {
        return (*(v12 + OBJC_IVAR___CKReportSpamReasonContoller_didReportBlock))();
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return (*(v12 + OBJC_IVAR___CKReportSpamReasonContoller_didReportBlock))();
}

id ReportSpamReasonContoller.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ReportSpamReasonContoller.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportSpamReasonContoller();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AttributionViewBackgroundModifier()
{
  result = qword_1EAD5C7F0;
  if (!qword_1EAD5C7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190ABCCA4()
{
  result = sub_190D53A60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_190ABCD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C800);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C808);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C810);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v14 = result;
    v15 = [result usesTapbackRefreshStyling];

    if (v15)
    {
      v16 = *v2;
      v17 = &v12[*(v10 + 36)];
      v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C848) + 36)];
      v19 = *(sub_190D543E0() + 20);
      v20 = *MEMORY[0x1E697F468];
      v21 = sub_190D54A20();
      (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
      *v18 = v16;
      *(v18 + 1) = v16;
      *v17 = 1;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C828);
      (*(*(v22 - 8) + 16))(v12, a1, v22);
      v23 = &qword_1EAD5C810;
      sub_19022FD14(v12, v9, &qword_1EAD5C810);
      swift_storeEnumTagMultiPayload();
      sub_190ABDB10();
      sub_190ABDBF4();
      sub_190D54C50();
      v24 = v12;
    }

    else
    {
      v25 = sub_190D56500();
      v27 = v26;
      v28 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C818) + 36)];
      sub_190ABD154(v2, v28);
      v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C820) + 36));
      *v29 = v25;
      v29[1] = v27;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C828);
      (*(*(v30 - 8) + 16))(v6, a1, v30);
      sub_190D55D90();
      v31 = sub_190D55DF0();

      v32 = &v6[*(v4 + 36)];
      *v32 = v31;
      *(v32 + 8) = xmmword_190DEF0F0;
      *(v32 + 3) = 0x4020000000000000;
      v23 = &qword_1EAD5C800;
      sub_19022FD14(v6, v9, &qword_1EAD5C800);
      swift_storeEnumTagMultiPayload();
      sub_190ABDB10();
      sub_190ABDBF4();
      sub_190D54C50();
      v24 = v6;
    }

    return sub_19022EEA4(v24, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190ABD154@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v49 = sub_190D55D00();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_190D53A60();
  v4 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D543E0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C868);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C870);
  MEMORY[0x1EEE9AC00](v53);
  v14 = &v47 - v13;
  v55 = sub_190D56500();
  v54 = v15;
  sub_190ABD7FC(a1, &v66);
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v63 = v69;
  v64[0] = v66;
  v64[1] = v67;
  v64[2] = v68;
  v65 = v69;
  sub_19022FD14(&v60, v58, &qword_1EAD5C878);
  sub_19022EEA4(v64, &qword_1EAD5C878);
  v69 = v63;
  v67 = v61;
  v68 = v62;
  v66 = v60;
  v16 = *a1;
  v56 = v7;
  v17 = *(v7 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_190D54A20();
  v20 = *(v19 - 8);
  v21 = *(v20 + 104);
  v22 = v9 + v17;
  v23 = v18;
  v51 = v19;
  v52 = v20 + 104;
  v21(v22, v18);
  *v9 = v16;
  v9[1] = v16;
  v24 = type metadata accessor for AttributionViewBackgroundModifier();
  v25 = v50;
  (*(v4 + 16))(v6, &a1[*(v24 + 20)], v50);
  v26 = (*(v4 + 88))(v6, v25);
  if (v26 == *MEMORY[0x1E697DBB8])
  {
    v27 = v21;
    (*(v47 + 104))(v48, *MEMORY[0x1E69814D8], v49);
    v28 = sub_190D55E20();
LABEL_5:
    sub_190D53AD0();
    sub_190958654(v9, v12);
    v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE10) + 36)];
    v30 = v58[1];
    *v29 = v58[0];
    *(v29 + 1) = v30;
    *(v29 + 4) = v59;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE18);
    *&v12[*(v31 + 52)] = v28;
    *&v12[*(v31 + 56)] = 256;
    v32 = sub_190D56500();
    v34 = v33;
    sub_1909586B8(v9);
    v35 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BE20) + 36)];
    *v35 = v32;
    v35[1] = v34;
    v36 = sub_190D56500();
    v38 = v37;
    v39 = &v14[*(v53 + 36)];
    sub_19081E40C(v12, v39, &qword_1EAD5C868);
    v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C880) + 36));
    *v40 = v36;
    v40[1] = v38;
    v41 = v54;
    *v14 = v55;
    *(v14 + 1) = v41;
    v14[64] = v69;
    v42 = v68;
    *(v14 + 2) = v67;
    *(v14 + 3) = v42;
    *(v14 + 1) = v66;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C888);
    v44 = v57;
    v45 = (v57 + *(v43 + 36));
    v27(&v45[*(v56 + 20)], v23, v51);
    *v45 = v16;
    *(v45 + 1) = v16;
    *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)] = 256;
    return sub_19081E40C(v14, v44, &qword_1EAD5C870);
  }

  if (v26 == *MEMORY[0x1E697DBA8])
  {
    v27 = v21;
    sub_190D55DC0();
    v28 = sub_190D55DF0();

    goto LABEL_5;
  }

  result = sub_190D58510();
  __break(1u);
  return result;
}

uint64_t sub_190ABD7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D53A60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = [objc_opt_self() effectWithBlurRadius_];
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = type metadata accessor for AttributionViewBackgroundModifier();
  (*(v5 + 16))(v10, a1 + *(v13 + 20), v4);
  v14 = (*(v5 + 88))(v10, v4);
  v15 = *MEMORY[0x1E697DBB8];
  if (v14 != v15)
  {
    if (v14 == *MEMORY[0x1E697DBA8])
    {
      if (qword_1EAD51BF0 != -1)
      {
        swift_once();
      }

      v16 = &qword_1EAD5C7E8;
      goto LABEL_10;
    }

LABEL_15:
    result = sub_190D58510();
    __break(1u);
    return result;
  }

  if (qword_1EAD51BE8 != -1)
  {
    swift_once();
  }

  v16 = &qword_1EAD5C7E0;
LABEL_10:
  v17 = *v16;
  sub_190D50920();
  v18 = *(a1 + *(v13 + 24));
  if (v18 == 1)
  {
    (*(v5 + 104))(v7, v15, v4);
    sub_190D53A50();
    (*(v5 + 8))(v7, v4);
    sub_190D55D90();
    v19 = sub_190D55DF0();
  }

  else
  {
    v19 = sub_190D55DA0();
  }

  result = sub_190D565C0();
  *a2 = v12;
  *(a2 + 8) = v17;
  *(a2 + 16) = 256;
  *(a2 + 24) = v19;
  *(a2 + 32) = 256;
  *(a2 + 40) = result;
  *(a2 + 48) = v18;
  return result;
}

unint64_t sub_190ABDB10()
{
  result = qword_1EAD5C830;
  if (!qword_1EAD5C830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C810);
    sub_190233640(&qword_1EAD5C838, &qword_1EAD5C828);
    sub_190233640(&qword_1EAD5C840, &qword_1EAD5C848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C830);
  }

  return result;
}

unint64_t sub_190ABDBF4()
{
  result = qword_1EAD5C850;
  if (!qword_1EAD5C850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C800);
    sub_190ABDC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C850);
  }

  return result;
}

unint64_t sub_190ABDC80()
{
  result = qword_1EAD5C858;
  if (!qword_1EAD5C858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C818);
    sub_190233640(&qword_1EAD5C838, &qword_1EAD5C828);
    sub_190233640(&qword_1EAD5C860, &qword_1EAD5C820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C858);
  }

  return result;
}

uint64_t sub_190ABDD64()
{
  sub_190D55DC0();
  v0 = sub_190D55DF0();

  qword_1EAD5C7E0 = v0;
  return result;
}

uint64_t sub_190ABDDA8()
{
  v0 = sub_190D55D00();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v1);
  result = sub_190D55E20();
  qword_1EAD5C7E8 = result;
  return result;
}

unint64_t sub_190ABDE94()
{
  result = qword_1EAD5C890;
  if (!qword_1EAD5C890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C898);
    sub_190ABDB10();
    sub_190ABDBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C890);
  }

  return result;
}

double CKDashSpacingForCGRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  result = a5;
  v7 = a6 * 6.28318531 + a3 + a4 + a6 * -4.0 + a3 + a4 + a6 * -4.0;
  v8 = floor(v7 / (a5 + a5));
  v9 = (a5 + a5) * v8 - v7;
  if (v9 >= 0.0)
  {
    if (v9 <= 0.0)
    {
      return result;
    }

    v8 = v8 + 1.0;
  }

  else
  {
    v9 = fabs(v9);
  }

  return v9 / v8 + a5;
}

uint64_t type metadata accessor for MessageEntityRepresentation()
{
  result = qword_1EAD5C8C0;
  if (!qword_1EAD5C8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190ABE060(uint64_t a1)
{
  v3 = sub_190D523B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EAD5C8A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54788);
  swift_allocObject();
  *(v1 + v7) = sub_190D52450();
  v8 = qword_1EAD5C8A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C918);
  swift_allocObject();
  *(v1 + v8) = sub_190D52450();
  v9 = qword_1EAD5C8B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C920);
  swift_allocObject();
  *(v1 + v9) = sub_190D52450();
  v10 = qword_1EAD5C8B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C928);
  swift_allocObject();
  *(v1 + v10) = sub_190D52450();
  (*(v4 + 16))(v6, a1, v3);
  v11 = sub_190D52410();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_190ABE254()
{
}

uint64_t sub_190ABE2B4()
{
  sub_190D52400();
  sub_190D50920();

  return swift_deallocClassInstance();
}

uint64_t sub_190ABE374(uint64_t a1)
{
  v3 = sub_190ABE620(&qword_1EAD5C910);

  return MEMORY[0x1EEDEC120](a1, v1, v3);
}

uint64_t sub_190ABE3D0()
{
  v1 = sub_190ABE620(&qword_1EAD5C900);

  return MEMORY[0x1EEDEBE30](v0, v1);
}

uint64_t sub_190ABE41C(uint64_t a1)
{
  v3 = sub_190ABE620(&qword_1EAD5C910);

  return MEMORY[0x1EEDEC110](a1, v1, v3);
}

uint64_t sub_190ABE620(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessageEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_190ABE668()
{
  v1 = v0;
  v2 = [v0 chatItem];
  v3 = objc_allocWithZone(type metadata accessor for TapbackPickerViewController());
  v4 = TapbackPickerViewController.init(chatItem:)(v2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = v4;
  [v1 addChildViewController_];
  [v5 loadViewIfNeeded];
  sub_190ABE850();
  v19[0] = 0;
  v20[0] = v6;
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  v21 = 0;
  sub_19098C510(v19, v20);
  [v5 preferredContentSize];
  v11 = v10;
  v13 = v12;
  v14 = objc_allocWithZone(type metadata accessor for TapbackPickerBalloonParentView());
  v15 = TapbackPickerBalloonParentView.init(tapbackPickerPreferredContentSize:)(v11, v13);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v16 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v17 = *&v15[v16];
  *&v15[v16] = v5;
  v18 = v5;

  sub_19092A530();
  [v18 didMoveToParentViewController_];
  [v1 setTapbackPickerViewController_];

  [v1 setPickerBalloonParentView_];
}

void sub_190ABE850()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      [v2 fullScreenBalloonViewControllerSafeAreaLayoutFrame_];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 bounds];
  v4 = v13;
  v6 = v14;
  v8 = v15;
  v10 = v16;

LABEL_7:
  v17 = sub_190AC37E8();
  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;

  CGRectInset(*&v18, v17, 0.0);
}