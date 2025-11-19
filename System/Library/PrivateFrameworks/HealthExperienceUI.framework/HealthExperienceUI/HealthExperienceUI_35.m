void sub_1BA2B7524(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SharingInviteActivityViewController();
  objc_msgSendSuper2(&v9, sel__prepareActivity_, a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 messageComposeViewController];
    if (v6)
    {
      v7 = v6;
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      v8 = sub_1BA4A6758();

      [v7 setBody_];

      v5 = v8;
    }
  }
}

id SharingInviteActivityViewController.__allocating_init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A6AE8();

  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF0030);
    v5 = sub_1BA4A6AE8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v2) initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

void sub_1BA2B77B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4 && (a2 & 1) != 0)
  {
    sub_1BA4A1718();
    sub_1B9F0ADF8(0, &qword_1EDC6B610);
    v10 = sub_1BA4A70E8();
    sub_1BA4A1628();
    v11 = sub_1BA4A1A08();
    [v10 setValue:v11 forKey:*MEMORY[0x1E696C8A8]];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1BA2B78E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1BA4A6B08();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

id SharingInviteActivityViewController.init(activityItems:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A6AE8();

  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF0030);
    v5 = sub_1BA4A6AE8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for SharingInviteActivityViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithActivityItems_applicationActivities_, v4, v5);

  return v6;
}

id SharingInviteActivityViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingInviteActivityViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s18HealthExperienceUI35SharingInviteActivityViewControllerC7present2on4with6senderySo06UIViewH0C_0A11AppServices27ContactDeepLinkingParameterVSgypSgtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1BA2B867C(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v94 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - v9;
  v11 = sub_1BA4A15D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  sub_1BA2B867C(0, &qword_1EBBF0038, MEMORY[0x1E69A2CB0], v5);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v77 - v20;
  v22 = sub_1BA4A3708();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B85E8(a2, v21);
  sub_1BA4A36E8();
  v96 = v25;
  sub_1BA4A36F8();
  v26 = v12[6];
  if (v26(v10, 1, v11) == 1)
  {
    sub_1BA0B17A4(v10);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v27 = sub_1BA4A1318();
    sub_1BA2C84D8(a1, 0, 0, v27, v28, MEMORY[0x1E69E7CC0], 0, 0);

    return (*(v23 + 8))(v96, v22);
  }

  v90 = v26;
  v79 = v22;
  v80 = a1;
  v29 = v12[4];
  v83 = v12 + 4;
  v82 = v29;
  v29(v18, v10, v11);
  v89 = v11;
  v30 = v18;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v78 = v23;
  v31 = qword_1EDC84A30;
  v32 = sub_1BA4A6758();
  v33 = [objc_opt_self() imageNamed:v32 inBundle:v31];

  v34 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  v86 = sub_1BA4A1318();
  v85 = v35;
  v84 = v12;
  v36 = v12[2];
  v37 = v95;
  v91 = v30;
  v38 = v89;
  v36(v95, v30, v89);
  v39 = qword_1EBBE8298;
  v40 = v33;
  v88 = v33;
  v87 = v34;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = qword_1EBBEAB18;
  v42 = unk_1EBBEAB20;
  v81 = type metadata accessor for HealthURLActivityItemProvider();
  v43 = objc_allocWithZone(v81);
  v44 = &v43[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_title];
  v45 = v85;
  *v44 = v86;
  v44[1] = v45;
  v36(&v43[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url], v37, v38);
  *&v43[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image] = v40;
  *&v43[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage] = v34;
  v46 = &v43[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_subtitle];
  *v46 = v41;
  v46[1] = v42;
  v47 = v88;
  v48 = v87;

  v49 = v94;
  sub_1BA4A15C8();
  result = v90(v49, 1, v38);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v51 = v93;
    v82(v93, v49, v38);
    v52 = sub_1BA4A1548();
    v53 = v84[1];
    v53(v51, v38);
    v102.receiver = v43;
    v54 = v81;
    v102.super_class = v81;
    v55 = objc_msgSendSuper2(&v102, sel_initWithPlaceholderItem_, v52);
    v94 = v47;

    v53(v37, v38);
    sub_1B9F1FF2C(0, &unk_1EDC6B3F0, MEMORY[0x1E69E6F90]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1BA4B5480;
    *(v56 + 56) = v54;
    *(v56 + 32) = v55;
    v57 = objc_allocWithZone(type metadata accessor for SharingInviteActivityViewController());
    v58 = v55;
    v59 = sub_1BA4A6AE8();

    v60 = [v57 initWithActivityItems:v59 applicationActivities:0];

    v61 = v60;
    v62 = sub_1BA2593F4();
    sub_1BA2B867C(0, &qword_1EBBEE848, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v64 = *MEMORY[0x1E69CDAF8];
    v65 = *MEMORY[0x1E69CDAA8];
    *(inited + 32) = *MEMORY[0x1E69CDAF8];
    *(inited + 40) = v65;
    aBlock[0] = v62;
    v66 = v64;
    v67 = v65;
    sub_1B9FE22C0(inited);
    type metadata accessor for ActivityType(0);
    v68 = sub_1BA4A6AE8();

    [v61 setExcludedActivityTypes_];

    v100 = sub_1BA2B77B4;
    v101 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA2B78E8;
    v99 = &block_descriptor_76;
    v69 = _Block_copy(aBlock);
    [v61 setCompletionWithItemsHandler_];
    _Block_release(v69);

    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v70 = result;
      v71 = [result isiPad];

      v72 = v80;
      v73 = v91;
      if (v71)
      {
        sub_1B9FF168C(v92, aBlock);
        if (v99)
        {
          sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
          if (swift_dynamicCast())
          {
            v74 = v97;
            v75 = [v61 popoverPresentationController];
            if (v75)
            {
              v76 = v75;
              [v75 setSourceView_];
            }

            v73 = v91;
          }
        }

        else
        {
          sub_1B9F23224(aBlock);
        }
      }

      [v72 presentViewController:v61 animated:1 completion:0];

      v53(v73, v38);
      v22 = v79;
      v23 = v78;
      return (*(v23 + 8))(v96, v22);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA2B85E8(uint64_t a1, uint64_t a2)
{
  sub_1BA2B867C(0, &qword_1EBBF0038, MEMORY[0x1E69A2CB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA2B867C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t HealthKitProfileInformationDataSource.__allocating_init(context:profileIdentifier:viewClass:layoutConstructor:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1BA2B8F0C(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v12;
}

uint64_t HealthKitProfileInformationDataSource.init(context:profileIdentifier:viewClass:layoutConstructor:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1BA2B8F0C(a1, a2, a3, a4, a5, a6);
  sub_1B9F0E30C(a5, a6);
  return v8;
}

uint64_t HealthKitProfileInformationDataSource.__deallocating_deinit()
{
  _s18HealthExperienceUI0A31KitProfileInformationDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2B89F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA2B9364(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1BA4A2888();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA06FE18(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1B9F82B24(v6, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    v12 = *(v8 + 32);
    v12(v10, v6, v7);
    v13 = MEMORY[0x1E69A30F0];
    *(a2 + 24) = v7;
    *(a2 + 32) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v12)(boxed_opaque_existential_1, v10, v7);
  }

  return result;
}

char *sub_1BA2B8BC0(void *a1)
{
  sub_1BA2B9364(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  sub_1B9F109F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  *(inited + 32) = a1;
  v22 = MEMORY[0x1E69E7CC0];
  v6 = a1;
  result = sub_1BA066C64(0, 1, 0);
  v8 = v22;
  if ((inited & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1BFAF2860](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(inited + 32);
  }

  v10 = v9;

  sub_1BA0004FC();
  v11 = [objc_opt_self() primaryProfile];
  v12 = sub_1BA4A7798();

  if (v12)
  {
    v13 = sub_1BA4A1D78();
  }

  else
  {
    v13 = v10;
  }

  v22 = v8;
  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1BA066C64((v14 > 1), v15 + 1, 1);
    v8 = v22;
  }

  *(v8 + 16) = v15 + 1;
  *(v8 + 8 * v15 + 32) = v13;
  sub_1BA4A27B8();
  sub_1BA2B9364(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v16 = sub_1BA4A1C68();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5480;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x1E69A3BD8], v16);
  v20 = sub_1BA4A0FA8();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  v21 = MEMORY[0x1BFAED020](v19, 0, v4, v8);

  sub_1B9F82B24(v4, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  return v21;
}

uint64_t sub_1BA2B8F0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *v6;
  sub_1BA2B9364(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_1BA2B8BC0(a2);
  if (a3)
  {
    v17 = *(a4 + 8);
  }

  else
  {
    v17 = 0;
  }

  *(v6 + qword_1EDC6A550) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EDC84CE8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = (v6 + qword_1EDC84CE0);
  *v18 = a3;
  v18[1] = v17;
  v19 = (v6 + qword_1EDC84CF0);
  *v19 = a5;
  v19[1] = a6;
  sub_1B9F109F8();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5470;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  sub_1B9F0F1B8(a5);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:1 selector:sel_localizedStandardCompare_];

  *(v20 + 32) = v23;
  v24 = v6;
  v25 = sub_1BA4A7558();

  sub_1B9F126E0();
  v27 = objc_allocWithZone(v26);
  v28 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v25);
  v29 = sub_1BA4A2888();
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  sub_1BA1F9800();
  swift_allocObject();
  *(v24 + qword_1EDC6A560) = sub_1BA4A4DF8();
  v30 = swift_allocObject();
  *(v30 + 16) = v37;
  v31 = v28;
  v32 = sub_1B9F17A68(v31, sub_1BA2B93C8, v30, 0);

  v33 = *(*v32 + 760);

  v33(v34);
  sub_1BA4A4DA8();

  sub_1B9F82B24(v15, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  return v32;
}

uint64_t type metadata accessor for HealthKitProfileInformationDataSource()
{
  result = qword_1EDC6DE60;
  if (!qword_1EDC6DE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA2B9364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t MessageWithActionVCAutomationBaseProvider.baseIdentifier.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(a2 + 40))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t MessageWithActionVCAutomationBaseProvider.baseIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 56))(v11, a3, a4);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 16);
  v9 = swift_checkMetadataState();
  v8(a1, a2, v9, AssociatedConformanceWitness);
  return v6(v11, 0);
}

void (*MessageWithActionVCAutomationBaseProvider.baseIdentifier.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = MessageWithActionVCAutomationBaseProvider.baseIdentifier.getter(a2, a3);
  v8[1] = v9;
  return sub_1BA2B96DC;
}

void sub_1BA2B96DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[2];
  if (a2)
  {

    MessageWithActionVCAutomationBaseProvider.baseIdentifier.setter(v3, v4, v6, v5);
  }

  else
  {
    MessageWithActionVCAutomationBaseProvider.baseIdentifier.setter(**a1, v4, v6, v5);
  }

  free(v2);
}

uint64_t MessageWithActionVCAutomationBaseProvider<>.updateAutomationIdentifiers(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (a2)
  {
    v10 = sub_1BA4A6758();
  }

  else
  {
    v10 = 0;
  }

  [v4 setAccessibilityIdentifier_];

  v16 = v4;
  (*(a4 + 40))(a3, a4);
  sub_1B9F0D950(0, qword_1EDC65F98);
  if (swift_dynamicCast())
  {
    sub_1B9F25598(v14, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v12 + 8))(a1, a2, v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    return sub_1BA2BC14C(v14, &qword_1EDC65F90, qword_1EDC65F98, &protocol descriptor for UIAutomationIdentifiable, sub_1B9F0D950);
  }
}

void __swiftcall MessageWithActionTileViewWithImage.ViewModel.init(image:attributedTitle:body:actionText:hasSeparator:backgroundColor:automationIdentifier:)(HealthExperienceUI::MessageWithActionTileViewWithImage::ViewModel *__return_ptr retstr, UIImage image, NSAttributedString attributedTitle, Swift::String_optional body, Swift::String actionText, Swift::Bool hasSeparator, UIColor backgroundColor, Swift::String automationIdentifier)
{
  retstr->image = image;
  retstr->title = attributedTitle;
  retstr->body = body;
  retstr->actionText = actionText;
  retstr->hasSeparator = hasSeparator;
  retstr->backgroundColor = backgroundColor;
  retstr->automationIdentifier = automationIdentifier;
}

void __swiftcall MessageWithActionTileViewWithImage.ViewModel.init(image:title:body:actionText:hasSeparator:backgroundColor:automationIdentifier:)(HealthExperienceUI::MessageWithActionTileViewWithImage::ViewModel *__return_ptr retstr, UIImage image, Swift::String title, Swift::String_optional body, Swift::String actionText, Swift::Bool hasSeparator, UIColor backgroundColor, Swift::String automationIdentifier)
{
  object = actionText._object;
  countAndFlagsBits = actionText._countAndFlagsBits;
  v26 = body.value._object;
  v8 = body.value._countAndFlagsBits;
  sub_1BA2B9BE4(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v13 = *MEMORY[0x1E69DDCF8];
  v14 = *MEMORY[0x1E69DB980];
  v15 = v12;
  v16 = sub_1B9F6B774(v13, v14, 0, 0, 0, 0, 1);
  v17 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v16;
  v18 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 labelColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v21;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_1BA4A6758();

  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v24 = sub_1BA4A6618();

  v25 = [v22 initWithString:v23 attributes:v24];

  retstr->image = image;
  retstr->title.super.isa = v25;
  retstr->body.value._countAndFlagsBits = v8;
  retstr->body.value._object = v26;
  retstr->actionText._countAndFlagsBits = countAndFlagsBits;
  retstr->actionText._object = object;
  retstr->hasSeparator = hasSeparator;
  *(&retstr->hasSeparator + 1) = *v30;
  *(&retstr->hasSeparator + 1) = *&v30[3];
  *&retstr->backgroundColor.super.isa = *&backgroundColor.super.isa;
  retstr->automationIdentifier._object = automationIdentifier._object;
}

void sub_1BA2B9BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA2B9C48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA2B9CB4()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA2B9D0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void MessageWithActionTileViewWithImage.MarginAndSizesConfiguration.init(imageLeadingMargin:imageLeadingMarginBiggerAXSizes:messageTopMargin:imageTopMargin:imageWidth:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

__n128 static MessageWithActionTileViewWithImage.MarginAndSizesConfiguration.defaultConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #16.0 }

  *a1 = result;
  *(a1 + 16) = xmmword_1BA4CD950;
  *(a1 + 32) = 0x4044000000000000;
  return result;
}

id MessageWithActionTileViewWithImage.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MessageWithActionTileViewWithImage.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E6720];
  sub_1BA2B9BE4(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v70 - v12;
  v13 = sub_1BA4A7938();
  v78 = *(v13 - 8);
  v79 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B9BE4(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v70 - v16;
  v18 = sub_1BA4A3EA8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier];
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v22 = 0;
  *(v22 + 1) = 0;
  v24 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = *MEMORY[0x1E69DDCF8];
  v26 = *MEMORY[0x1E69DB980];
  v27 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v28 = sub_1B9F6B774(v25, v26, 0, 0, 0, 0, 1);
  [v27 setFont_];

  v29 = *&v24[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v30 = objc_opt_self();
  v75 = v29;
  v31 = [v30 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];
  }

  else
  {
    v73 = v19;
    v74 = v18;
    sub_1BA4A3DD8();
    v34 = v25;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v71 = v36;
      v38 = v37;
      v70 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v82 = v72;
      *v38 = 136315906;
      v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v41 = sub_1B9F0B82C(v39, v40, &v82);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v80 = 0;
      v81 = 1;
      sub_1BA2B9BE4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v42 = sub_1BA4A6808();
      v44 = sub_1B9F0B82C(v42, v43, &v82);

      *(v38 + 14) = v44;
      *(v38 + 22) = 2080;
      LODWORD(v80) = 0;
      type metadata accessor for SymbolicTraits(0);
      v45 = sub_1BA4A6808();
      v47 = sub_1B9F0B82C(v45, v46, &v82);

      *(v38 + 24) = v47;
      *(v38 + 32) = 2112;
      v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v38 + 34) = v48;
      v49 = v70;
      *v70 = v48;
      _os_log_impl(&dword_1B9F07000, v35, v71, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v38, 0x2Au);
      sub_1BA2BC14C(v49, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      v50 = v72;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
    }

    (*(v73 + 8))(v21, v74);
    v51 = [v30 preferredFontDescriptorWithTextStyle_];
    v33 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];
  }

  v52 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView;
  v53 = v75;
  [v75 setFont_];

  sub_1BA4A7998();
  (*(v78 + 104))(v77, *MEMORY[0x1E69DC560], v79);
  sub_1BA4A7828();
  v54 = v76;
  sub_1BA4A4898();
  v55 = sub_1BA4A4888();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  sub_1BA4A7928();
  sub_1BA4A7918();
  v56 = sub_1BA4A79A8();
  (*(*(v56 - 8) + 56))(v17, 0, 1, v56);
  sub_1BA4A79D8();
  *&v5[v52] = v24;
  v57 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView;
  v58 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v59 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  [v58 setImage_];

  v60 = v58;
  [v60 setTranslatesAutoresizingMaskIntoConstraints_];
  [v60 setContentMode_];

  *&v5[v57] = v60;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint] = 0;
  v61 = &v5[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration];
  __asm { FMOV            V0.2D, #16.0 }

  *v61 = _Q0;
  *(v61 + 1) = xmmword_1BA4CD950;
  *(v61 + 4) = 0x4044000000000000;
  v67 = type metadata accessor for MessageWithActionTileViewWithImage();
  v83.receiver = v5;
  v83.super_class = v67;
  v68 = objc_msgSendSuper2(&v83, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA2BB3C8();

  return v68;
}

id MessageWithActionTileViewWithImage.init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1BA2B9BE4(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v62 - v6;
  v7 = sub_1BA4A7938();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B9BE4(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v4);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v72 = a1[1];
  v73 = v16;
  v17 = *(a1 + 4);
  v18 = &v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier];
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v18 = 0;
  *(v18 + 1) = 0;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = *MEMORY[0x1E69DDCF8];
  v22 = *MEMORY[0x1E69DB980];
  v23 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v24 = sub_1B9F6B774(v21, v22, 0, 0, 0, 0, 1);
  [v23 setFont_];

  v25 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v26 = objc_opt_self();
  v67 = v25;
  v27 = [v26 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  if (v27)
  {
    v28 = v27;
    v29 = [objc_opt_self() fontWithDescriptor:v27 size:0.0];
  }

  else
  {
    v65 = v13;
    v66 = v12;
    sub_1BA4A3DD8();
    v30 = v21;
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v63 = v32;
      v34 = v33;
      v62 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v76 = v64;
      *v34 = 136315906;
      v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v37 = sub_1B9F0B82C(v35, v36, &v76);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v74 = 0;
      v75 = 1;
      sub_1BA2B9BE4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, &v76);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      LODWORD(v74) = 0;
      type metadata accessor for SymbolicTraits(0);
      v41 = sub_1BA4A6808();
      v43 = sub_1B9F0B82C(v41, v42, &v76);

      *(v34 + 24) = v43;
      *(v34 + 32) = 2112;
      v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v34 + 34) = v44;
      v45 = v62;
      *v62 = v44;
      _os_log_impl(&dword_1B9F07000, v31, v63, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v34, 0x2Au);
      sub_1BA2BC14C(v45, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
      v46 = v64;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
    }

    (*(v65 + 8))(v15, v66);
    v47 = [v26 preferredFontDescriptorWithTextStyle_];
    v29 = [objc_opt_self() fontWithDescriptor:v47 size:0.0];
  }

  v48 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView;
  v49 = v67;
  [v67 setFont_];

  sub_1BA4A7998();
  (*(v70 + 104))(v69, *MEMORY[0x1E69DC560], v71);
  sub_1BA4A7828();
  v50 = v68;
  sub_1BA4A4898();
  v51 = sub_1BA4A4888();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_1BA4A7928();
  sub_1BA4A7918();
  v52 = sub_1BA4A79A8();
  (*(*(v52 - 8) + 56))(v11, 0, 1, v52);
  sub_1BA4A79D8();
  *&v2[v48] = v20;
  v53 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView;
  v54 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v55 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  [v54 setImage_];

  v56 = v54;
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  [v56 setContentMode_];

  *&v2[v53] = v56;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint] = 0;
  v57 = &v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration];
  v58 = v72;
  *v57 = v73;
  *(v57 + 1) = v58;
  *(v57 + 4) = v17;
  v59 = type metadata accessor for MessageWithActionTileViewWithImage();
  v77.receiver = v2;
  v77.super_class = v59;
  v60 = objc_msgSendSuper2(&v77, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA2BB3C8();

  return v60;
}

id MessageWithActionTileViewWithImage.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA2BAFC0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint;
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint];
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint];
  if (v6)
  {
    [v6 setActive_];
  }

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView];
  v9 = [v8 leadingAnchor];
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v10 = [v0 safeAreaLayoutGuide];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
    v13 = *&v0[v1];
    *&v0[v1] = v12;

    v14 = [v8 topAnchor];
    v15 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:14.0];

    v18 = *&v0[v3];
    *&v0[v3] = v17;

    v19 = [v15 leadingAnchor];
    v20 = [v0 safeAreaLayoutGuide];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:*&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration + 8]];
  }

  else
  {
    v23 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView];
    v24 = [v23 trailingAnchor];
    v25 = [v9 constraintEqualToAnchor_];

    v26 = *&v0[v1];
    *&v0[v1] = v25;

    v27 = [v8 topAnchor];
    v28 = [v0 topAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    v30 = *&v0[v3];
    *&v0[v3] = v29;

    v19 = [v23 leadingAnchor];
    v31 = [v0 safeAreaLayoutGuide];
    v21 = [v31 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:*&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration]];
  }

  v32 = v22;

  v33 = *&v0[v5];
  *&v0[v5] = v32;

  v34 = *&v0[v1];
  if (v34)
  {
    [v34 setActive_];
  }

  v35 = *&v0[v3];
  if (v35)
  {
    [v35 setActive_];
  }

  v36 = *&v0[v5];
  if (v36)
  {
    [v36 setActive_];
  }

  v38.receiver = v0;
  v38.super_class = type metadata accessor for MessageWithActionTileViewWithImage();
  return objc_msgSendSuper2(&v38, sel_updateConstraints);
}

uint64_t sub_1BA2BB3C8()
{
  swift_getObjectType();
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView];
  [v0 addSubview_];
  v3 = [v1 leadingAnchor];
  v4 = [v2 trailingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint] = v5;
  v47 = v5;

  v7 = [v1 topAnchor];
  v8 = [v0 topAnchor];
  v9 = &v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration];
  v10 = [v7 constraintEqualToAnchor:v8 constant:*&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_configuration + 16]];

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint] = v10;
  v12 = v10;

  v13 = [v2 leadingAnchor];
  v14 = [v0 safeAreaLayoutGuide];
  v15 = [v14 leadingAnchor];

  v16 = [v13 &selRef:v15 objectAtIndex:*v9 + 6];
  v17 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint] = v16;
  v18 = v16;

  v46 = objc_opt_self();
  sub_1B9F109F8();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4C27B0;
  v20 = [v2 widthAnchor];
  v21 = [v20 constraintGreaterThanOrEqualToConstant_];

  *(v19 + 32) = v21;
  v22 = [v2 heightAnchor];
  v23 = [v2 widthAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v19 + 40) = v24;
  *(v19 + 48) = v18;
  v45 = v18;
  v25 = [v2 topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:v9[3]];

  *(v19 + 56) = v27;
  v28 = [v0 bottomAnchor];
  v29 = [v2 bottomAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29 constant:14.0];

  *(v19 + 64) = v30;
  *(v19 + 72) = v47;
  *(v19 + 80) = v12;
  v48 = v47;
  v31 = v12;
  v32 = [v0 trailingAnchor];
  v33 = [v1 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v19 + 88) = v34;
  v35 = [v0 bottomAnchor];
  v36 = [v1 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v19 + 96) = v37;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v38 = sub_1BA4A6AE8();

  [v46 activateConstraints_];

  LODWORD(v39) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v39];
  LODWORD(v40) = 1144750080;
  [v1 setContentCompressionResistancePriority:0 forAxis:v40];
  sub_1BA2B9BE4(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BA4B5480;
  v42 = sub_1BA4A4858();
  v43 = MEMORY[0x1E69DC2B0];
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  sub_1BA4A7708();

  swift_unknownObjectRelease();
}

uint64_t sub_1BA2BB9B4(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v37 = *(a1 + 48);
  v7 = a1[8];
  v39 = a1[7];
  v40 = *a1;
  v8 = a1[9];
  aBlock = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v43 = v9;

  MEMORY[0x1BFAF1350](46, 0xE100000000000000);

  MEMORY[0x1BFAF1350](v7, v8);

  v10 = v43;
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier];
  swift_beginAccess();
  v38 = aBlock;
  *v11 = aBlock;
  v11[1] = v10;
  with = v10;

  v41 = v2;
  v12 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView];
  v13 = [objc_opt_self() clearColor];
  [*&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel] setAttributedText_];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  v15 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v35 = v13;
  if (v4)
  {
    v16 = sub_1BA4A6758();
  }

  else
  {
    v16 = 0;
  }

  [v15 setText_];

  [*&v12[v14] setHidden_];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  v18 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v5;
  v20[4] = v6;
  v20[5] = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B9F7B15C;
  *(v21 + 24) = v20;
  v46 = sub_1B9F7B0CC;
  v47 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1B9F7B0FC;
  v45 = &block_descriptor_77;
  v22 = _Block_copy(&aBlock);
  v23 = v18;

  [v19 performWithoutAnimation_];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v25 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v25 = v5 & 0xFFFFFFFFFFFFLL;
    }

    [*&v12[v17] setHidden_];
    v26 = v35;
    [v12 setBackgroundColor_];
    [v12 updateConstraints];
    v27 = sub_1BA42FCF0();
    [v27 setHidden_];

    v28 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v28)
    {
      v29 = 0.0;
      if (v37)
      {
        v29 = 12.0;
      }

      [v28 setConstant_];
    }

    v30 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v30)
    {
      [v30 setConstant_];
    }

    v31.value._countAndFlagsBits = v38;
    v31.value._object = with;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v31);

    v32 = *&v41[OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView];
    [v32 setImage_];
    [v41 setBackgroundColor_];
    aBlock = v38;
    v43 = with;

    MEMORY[0x1BFAF1350](0x6E6F63492ELL, 0xE500000000000000);
    v33 = sub_1BA4A6758();

    [v32 setAccessibilityIdentifier_];

    v34.value._countAndFlagsBits = v38;
    v34.value._object = with;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v34);
  }

  return result;
}

Swift::Void __swiftcall MessageWithActionTileViewWithImage.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  countAndFlagsBits = with.value._countAndFlagsBits;
  if (with.value._object)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView);
    object = with.value._object;

    MEMORY[0x1BFAF1350](0x6E6F63492ELL, 0xE500000000000000);
    v5 = sub_1BA4A6758();

    [v3 setAccessibilityIdentifier_];

    v6 = object;
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView) setAccessibilityIdentifier_];
    v6 = 0;
  }

  v7 = countAndFlagsBits;
  MessageWithActionTileView.updateAutomationIdentifiers(with:)(*(&v6 - 1));
}

id MessageWithActionTileViewWithImage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageWithActionTileViewWithImage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2BBFD4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA2BC030(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA2BC14C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA2BC1A8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA2BC1A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s18HealthExperienceUI025MessageWithActionTileViewE5ImageC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA2B9BE4(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v53 - v4;
  v5 = sub_1BA4A7938();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B9BE4(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v2);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_baseIdentifier);
  type metadata accessor for MessageWithActionTileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v14 = 0;
  v14[1] = 0;
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = *MEMORY[0x1E69DDCF8];
  v18 = *MEMORY[0x1E69DB980];
  v19 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v20 = sub_1B9F6B774(v17, v18, 0, 0, 0, 0, 1);
  [v19 setFont_];

  v21 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v22 = objc_opt_self();
  v59 = v21;
  v23 = [v22 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
  }

  else
  {
    v57 = v11;
    v58 = v10;
    sub_1BA4A3DD8();
    v26 = v17;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v55 = v28;
      v30 = v29;
      v54 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66 = v56;
      *v30 = 136315906;
      v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v33 = sub_1B9F0B82C(v31, v32, &v66);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      v64 = 0;
      v65 = 1;
      sub_1BA2B9BE4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v66);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2080;
      LODWORD(v64) = 0;
      type metadata accessor for SymbolicTraits(0);
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v66);

      *(v30 + 24) = v39;
      *(v30 + 32) = 2112;
      v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v30 + 34) = v40;
      v41 = v54;
      *v54 = v40;
      _os_log_impl(&dword_1B9F07000, v27, v55, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v30, 0x2Au);
      sub_1BA2BC14C(v41, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      v42 = v56;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    (*(v57 + 8))(v13, v58);
    v43 = [v22 preferredFontDescriptorWithTextStyle_];
    v25 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];
  }

  v44 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileView;
  v45 = v59;
  [v59 setFont_];

  sub_1BA4A7998();
  (*(v62 + 104))(v61, *MEMORY[0x1E69DC560], v63);
  sub_1BA4A7828();
  v46 = v60;
  sub_1BA4A4898();
  v47 = sub_1BA4A4888();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  sub_1BA4A7928();
  sub_1BA4A7918();
  v48 = sub_1BA4A79A8();
  (*(*(v48 - 8) + 56))(v9, 0, 1, v48);
  sub_1BA4A79D8();
  *(v1 + v44) = v16;
  v49 = OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageView;
  v50 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v51 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  [v50 setImage_];

  v52 = v50;
  [v52 setTranslatesAutoresizingMaskIntoConstraints_];
  [v52 setContentMode_];

  *(v1 + v49) = v52;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_messageTileViewLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34MessageWithActionTileViewWithImage_imageViewLeadingConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA2BCB5C(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 40) + 8))(v6);
  if (v6[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBE9900);
    if (swift_dynamicCast())
    {
      v2 = *(&v8 + 1);
      if (*(&v8 + 1))
      {
        v3 = v9;
        __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
        v4 = (*(v3 + 8))(v2, v3);
        __swift_destroy_boxed_opaque_existential_1(&v7);
        return v4;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1B9F43A50(&v7, &qword_1EBBE98F8, &qword_1EBBE9900);
  return 0;
}

uint64_t sub_1BA2BCCB0(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 40) + 8))(v6);
  if (v6[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EBBE9900);
    if (swift_dynamicCast())
    {
      v2 = *(&v8 + 1);
      if (*(&v8 + 1))
      {
        v3 = v9;
        __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
        v4 = (*(v3 + 16))(v2, v3);
        __swift_destroy_boxed_opaque_existential_1(&v7);
        return v4;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1B9F43A50(&v7, &qword_1EBBE98F8, &qword_1EBBE9900);
  return 0;
}

uint64_t sub_1BA2BCE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  (*(*(a3 + 40) + 8))(v9, a2);
  if (v9[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC6CCF0);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_1B9F1134C(&v10, v13);
        v6 = v14;
        v7 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v7 + 24))(a1, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  result = sub_1B9F43A50(&v10, qword_1EDC67B40, &qword_1EDC6CCF0);
  *a4 = 2;
  return result;
}

uint64_t sub_1BA2BCF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 40) + 8))(v12, a3);
  if (v13)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC6CCF0);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1B9F1134C(&v9, v12);
        v6 = v13;
        v7 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v7 + 16))(a1, a2, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  return sub_1B9F43A50(&v9, qword_1EDC67B40, &qword_1EDC6CCF0);
}

uint64_t sub_1BA2BD0F0(uint64_t a1, void **a2)
{
  sub_1B9F374E8(a1, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v5);
  return sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA2BD1DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2BD240;
}

uint64_t sub_1BA2BD240(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x80))(result);
  }

  return result;
}

void sub_1BA2BD2A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B9F25350();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B5480;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;

    v6 = sub_1BA4A6AE8();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
  }

  else
  {

    [v2 setAccessibilityIdentifier_];
  }
}

id ContentConfigurationCollectionViewListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ContentConfigurationCollectionViewListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item];
  v10 = type metadata accessor for ContentConfigurationCollectionViewListCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t (*sub_1BA2BD584(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2BF330;
}

uint64_t sub_1BA2BD6D8(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v5);
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA2BD790(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA2BD7F8;
}

uint64_t sub_1BA2BD7FC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F374E8(a1, v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA2BDA58();
  sub_1BA2BDC10();
  sub_1BA2BDC30();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA2BD8C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F374E8(v2 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA2BD92C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA2BDA58();
  sub_1BA2BDC10();
  sub_1BA2BDC30();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA2BD9B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2BDA1C;
}

uint64_t sub_1BA2BDA1C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA2BDA58();
    sub_1BA2BDC10();
    return sub_1BA2BDC30();
  }

  return result;
}

uint64_t sub_1BA2BDA58()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v1, v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v10)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, qword_1EDC5F948);
    if (swift_dynamicCast())
    {
      if (*(&v7 + 1))
      {
        sub_1B9F1134C(&v6, v9);
        v2 = v10;
        v3 = v11;
        __swift_project_boxed_opaque_existential_1(v9, v10);
        (*(v3 + 8))(&v6, v2, v3);
        v4 = *(&v7 + 1) != 0;
        sub_1B9F43A50(&v6, qword_1EDC67B40, &qword_1EDC6CCF0);
        [v0 setUserInteractionEnabled_];
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  return sub_1B9F43A50(&v6, &qword_1EBBF0098, qword_1EDC5F948);
}

uint64_t sub_1BA2BDC30()
{
  v31 = sub_1BA4A3ED8();
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v29 = v21 - v4;
  v28 = sub_1BA4A3FE8();
  v32 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v6, v36, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!v37)
  {
    sub_1B9F43A50(v36, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    return sub_1B9F43A50(&v33, &qword_1EBBF00A0, &qword_1EDC60098);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EDC60098);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    return sub_1B9F43A50(&v33, &qword_1EBBF00A0, &qword_1EDC60098);
  }

  if (!*(&v34 + 1))
  {
    return sub_1B9F43A50(&v33, &qword_1EBBF00A0, &qword_1EDC60098);
  }

  v21[0] = v0;
  sub_1B9F1134C(&v33, v36);
  v7 = v37;
  v8 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  result = (*(v8 + 16))(v7, v8);
  v10 = 0;
  v26 = result;
  v25 = *(result + 16);
  v24 = v32 + 16;
  v23 = *MEMORY[0x1E69DBEF0];
  v22 = (v1 + 104);
  v11 = (v1 + 8);
  v21[1] = (v32 + 8);
  v12 = v32;
  v14 = v28;
  v13 = v29;
  while (1)
  {
    if (v25 == v10)
    {
      v20 = 0;
      goto LABEL_14;
    }

    if (v10 >= *(v26 + 16))
    {
      break;
    }

    v15 = v27;
    (*(v12 + 16))(v27, v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10++, v14);
    sub_1BA4A3F08();
    v17 = v30;
    v16 = v31;
    (*v22)(v30, v23, v31);
    v18 = MEMORY[0x1BFAEE900](v13, v17);
    v19 = *v11;
    (*v11)(v17, v16);
    v19(v13, v16);
    result = (*(v12 + 8))(v15, v14);
    if (v18)
    {
      v20 = 1;
LABEL_14:

      [v21[0] setAccessoryType_];
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA2BE2C0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1BA4A4168();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v3 + v14, v46, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!v47)
  {
    sub_1B9F43A50(v46, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EDC600A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    goto LABEL_8;
  }

  if (!*(&v49 + 1))
  {
LABEL_8:
    sub_1B9F43A50(&v48, &qword_1EBBF0080, &qword_1EDC600A0);
LABEL_9:
    sub_1BA4A4158();
    v18 = [v3 viewController];
    if (v18)
    {
      v19 = v18;
      UIViewController.resolvedPresentation.getter(&aBlock);

      v20 = aBlock;
      if (a1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v20 = 0;
      if (a1)
      {
        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {
      v21 = v20 - 4;
      v22 = objc_opt_self();
      v23 = &selRef_tertiarySystemBackgroundColor;
      if ((v21 & 0xF7) != 0)
      {
        v23 = &selRef_secondarySystemGroupedBackgroundColor;
      }

      v24 = [v22 *v23];
      goto LABEL_17;
    }

LABEL_18:
    if ((v20 - 6) < 2)
    {
      v32 = objc_opt_self();
      v33 = [v32 systemGray5Color];
      v34 = [v32 tertiarySystemGroupedBackgroundColor];
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = v34;
      v35[4] = 0;
      v35[5] = v33;
      v30 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v44 = sub_1B9FD7F54;
      v45 = v35;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v31 = &block_descriptor_78;
      goto LABEL_23;
    }

    if (v20 == 4 || v20 == 12)
    {
      v26 = objc_opt_self();
      v27 = [v26 systemGray5Color];
      v28 = [v26 systemGray4Color];
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = v28;
      v29[4] = 0;
      v29[5] = v27;
      v30 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v44 = sub_1B9FE1088;
      v45 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v31 = &block_descriptor_13_0;
LABEL_23:
      v42 = sub_1B9F7EBBC;
      v43 = v31;
      v36 = _Block_copy(&aBlock);
      [v30 initWithDynamicProvider_];
      _Block_release(v36);

      goto LABEL_24;
    }

    v24 = [objc_opt_self() systemGray5Color];
LABEL_17:
    v25 = v24;
LABEL_24:
    sub_1BA4A4118();
    return (*(v8 + 32))(a3, v10, v7);
  }

  v15 = a3;
  v39 = v3;
  sub_1B9F1134C(&v48, &aBlock);
  v16 = v43;
  v17 = v44;
  __swift_project_boxed_opaque_existential_1(&aBlock, v43);
  (*(v17 + 2))(v16, v17);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1B9F66560(v13);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v3 = v39;
    a3 = v15;
    goto LABEL_9;
  }

  (*(v8 + 32))(v15, v13, v7);
  return __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

id ContentConfigurationTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id ContentConfigurationTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for ContentConfigurationTableViewCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);

  return v7;
}

id ContentConfigurationTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA2BEA64(void *a1, void *a2, uint64_t (*a3)(void))
{
  v5 = &v3[*a2];
  v6 = a3();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = v3;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1BA2BEB04(char *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v6 = &a1[*a4];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v10.receiver = a1;
  v10.super_class = a5();
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_1BA2BEBAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA2BEC2C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F374E8(v2 + v4, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA2BEC98(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2BF334;
}

uint64_t sub_1BA2BEDEC@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  return sub_1B9F374E8(v4 + v5, a2, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA2BEE5C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  swift_endAccess();
  sub_1BA2BDA58();
  sub_1BA2BDC10();
  sub_1BA2BDC30();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA2BEEEC(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA2BEF54;
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B9F374E8(v4 + v5, a3, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

BOOL sub_1BA2BF198(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 40) + 8))(v9);
  if (v10)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, qword_1EDC5F948);
    if (swift_dynamicCast())
    {
      if (*(&v7 + 1))
      {
        sub_1B9F1134C(&v6, v9);
        v2 = v10;
        v3 = v11;
        __swift_project_boxed_opaque_existential_1(v9, v10);
        (*(v3 + 8))(&v6, v2, v3);
        v4 = *(&v7 + 1) != 0;
        sub_1B9F43A50(&v6, qword_1EDC67B40, &qword_1EDC6CCF0);
        __swift_destroy_boxed_opaque_existential_1(v9);
        return v4;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v9, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_1B9F43A50(&v6, &qword_1EBBF0098, qword_1EDC5F948);
  return 0;
}

uint64_t sub_1BA2BF338()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF00A8 = result;
  unk_1EBBF00B0 = v1;
  return result;
}

uint64_t sub_1BA2BF3E4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF00B8 = result;
  unk_1EBBF00C0 = v1;
  return result;
}

id sub_1BA2BF490()
{
  type metadata accessor for SummarySharingInviteToReceiveAnalyticsEvent();
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_healthStore];
  v6 = 1;
  v5 = 1282;
  v2 = v1;
  static SummarySharingInviteToReceiveAnalyticsEvent.submitAnalytics(healthStore:location:version:stepDetails:)(v2, &v6, v3, &v5);

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

id sub_1BA2BF5CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingInvitationAcceptedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA2BF670(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_selectedContactPhotoPublisher] = a2;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_healthStore] = a3;
  v7 = qword_1EBBE8788;

  v8 = a3;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1BA4A6758();
  v10 = sub_1BA4A3348();
  v12 = v11;
  if (qword_1EBBE8790 != -1)
  {
    swift_once();
  }

  sub_1B9F2EAC0();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5480;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1B9F1BE20();
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  sub_1BA4A6768();

  v14 = sub_1BA4A6758();

  v20.receiver = v4;
  v20.super_class = type metadata accessor for SummarySharingInvitationAcceptedViewController();
  v15 = objc_msgSendSuper2(&v20, sel_initWithTitle_detailText_icon_contentLayout_, v9, v14, 0, 3);

  v16 = v15;
  v17 = sub_1BA4A6758();

  sub_1BA10FFDC();
  v18 = sub_1BA4A33C8();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v16;
}

uint64_t sub_1BA2BF8A0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F209BC(a1, v6, sub_1B9F20584);
  v7 = *a2;
  v8 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  sub_1B9F2BAE8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1BA2BF96C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  return sub_1B9F209BC(v1 + v3, a1, sub_1B9F20584);
}

uint64_t sub_1BA2BF9D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  sub_1B9F2BAE8(a1, v1 + v3);
  return swift_endAccess();
}

char *DismissibleCellHeaderView.ViewModel.__allocating_init(titleText:systemImageName:detailText:foregroundColor:backgroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v43 = a7;
  v44 = a5;
  v45 = a6;
  v41 = a3;
  v42 = a4;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v19;
  v20 = swift_allocObject();
  v40 = *a8;
  v21 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v22 = sub_1BA4A2B98();
  v23 = *(*(v22 - 8) + 56);
  v23(&v20[v21], 1, 1, v22);
  v49 = a1;
  v50 = a2;
  sub_1B9F252FC();
  v24 = sub_1BA4A7B38();
  v36 = v25;

  sub_1B9F209BC(v44, v19, sub_1BA2C0448);
  v26 = v16;
  sub_1B9F209BC(v45, v16, sub_1B9F20584);
  *(v20 + 5) = 0;
  *(v20 + 4) = 0;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v28 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v28 - 8) + 56))(&v20[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v23(&v20[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v22);
  v30 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v47 = 0;
  v48 = 0;
  sub_1BA4A4EE8();
  (*(v38 + 32))(&v20[v30], v13, v39);
  *&v20[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v31 = v36;
  *(v20 + 2) = v24;
  *(v20 + 3) = v31;
  swift_beginAccess();
  v32 = v42;
  *(v20 + 4) = v41;
  *(v20 + 5) = v32;

  swift_beginAccess();
  v33 = v37;
  sub_1BA2C047C(v37, &v20[v27], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v26, &v20[v29], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v46 = v40;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F20A8C(v45, sub_1B9F20584);
  sub_1B9F20A8C(v44, sub_1BA2C0448);
  sub_1B9F20A8C(v26, sub_1B9F20584);
  sub_1B9F20A8C(v33, sub_1BA2C0448);
  v34 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();

  sub_1B9F2BAE8(v43, &v20[v34]);
  swift_endAccess();

  return v20;
}

char *DismissibleCellHeaderView.ViewModel.init(titleText:systemImageName:detailText:foregroundColor:backgroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = v8;
  v47 = a7;
  v48 = a5;
  v41 = a6;
  v45 = a3;
  v46 = a4;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v21;
  v44 = *a8;
  v22 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v23 = sub_1BA4A2B98();
  v24 = *(*(v23 - 8) + 56);
  v24(&v9[v22], 1, 1, v23);
  v52 = a1;
  v53 = a2;
  sub_1B9F252FC();
  v25 = sub_1BA4A7B38();
  v38 = v26;
  v39 = v25;

  sub_1B9F209BC(v48, v21, sub_1BA2C0448);
  v27 = v41;
  sub_1B9F209BC(v41, v18, sub_1B9F20584);
  *(v9 + 5) = 0;
  *(v9 + 4) = 0;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v29 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v29 - 8) + 56))(&v9[v28], 1, 1, v29);
  v30 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v24(&v9[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v23);
  v31 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v50 = 0;
  v51 = 0;
  sub_1BA4A4EE8();
  (*(v42 + 32))(&v9[v31], v15, v43);
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v32 = v38;
  *(v9 + 2) = v39;
  *(v9 + 3) = v32;
  swift_beginAccess();
  v33 = v46;
  *(v9 + 4) = v45;
  *(v9 + 5) = v33;

  swift_beginAccess();
  v34 = v40;
  sub_1BA2C047C(v40, &v9[v28], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v18, &v9[v30], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v49 = v44;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F20A8C(v27, sub_1B9F20584);
  sub_1B9F20A8C(v48, sub_1BA2C0448);
  sub_1B9F20A8C(v18, sub_1B9F20584);
  sub_1B9F20A8C(v34, sub_1BA2C0448);
  v35 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();

  sub_1B9F2BAE8(v47, &v9[v35]);
  swift_endAccess();

  return v9;
}

uint64_t sub_1BA2C047C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA2C0508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BA2C0598(uint64_t a1)
{
  v2 = sub_1BA2C0924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2C05D4(uint64_t a1)
{
  v2 = sub_1BA2C0924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *DismissibleCellHeaderView.ViewModel.init(from:)(void *a1)
{
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C15B8(0, &qword_1EDC5DEE8, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-1] - v9;
  v11 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v12 = sub_1BA4A2B98();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  sub_1B9F0A534(a1, v18);
  v13 = CellHeaderViewModel.init(from:)(v18);
  if (!v2)
  {
    v17 = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BA2C0924();
    sub_1BA4A8528();
    sub_1B9F85270(&qword_1EDC6E1D8, MEMORY[0x1E69A3260]);
    v14 = v17;
    sub_1BA4A8178();
    (*(v19 + 8))(v10, v8);
    v16 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    swift_beginAccess();
    sub_1B9F2BAE8(v14, &v13[v16]);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

unint64_t sub_1BA2C0924()
{
  result = qword_1EDC6C6B0;
  if (!qword_1EDC6C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C6B0);
  }

  return result;
}

char *DismissibleCellHeaderView.ViewModel.__allocating_init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v18;
  v19 = swift_allocObject();
  v38 = *a7;
  v20 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v21 = sub_1BA4A2B98();
  v22 = *(*(v21 - 8) + 56);
  v22(&v19[v20], 1, 1, v21);
  v46 = a1;
  v47 = a2;
  sub_1B9F252FC();
  v34 = sub_1BA4A7B38();
  v24 = v23;

  sub_1B9F209BC(v41, v18, sub_1BA2C0448);
  v25 = v15;
  sub_1B9F209BC(v42, v15, sub_1B9F20584);
  *(v19 + 5) = 0;
  *(v19 + 4) = 0;
  v26 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v27 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v27 - 8) + 56))(&v19[v26], 1, 1, v27);
  v28 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v22(&v19[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v21);
  v29 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v44 = 0;
  v45 = 0;
  sub_1BA4A4EE8();
  (*(v36 + 32))(&v19[v29], v12, v37);
  *&v19[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  *(v19 + 2) = v34;
  *(v19 + 3) = v24;
  swift_beginAccess();
  v30 = v40;
  *(v19 + 4) = v39;
  *(v19 + 5) = v30;

  swift_beginAccess();
  v31 = &v19[v26];
  v32 = v35;
  sub_1BA2C047C(v35, v31, sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v25, &v19[v28], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v43 = v38;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F20A8C(v42, sub_1B9F20584);
  sub_1B9F20A8C(v41, sub_1BA2C0448);
  sub_1B9F20A8C(v25, sub_1B9F20584);
  sub_1B9F20A8C(v32, sub_1BA2C0448);
  return v19;
}

char *DismissibleCellHeaderView.ViewModel.init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = v7;
  v38 = a6;
  v43 = a4;
  v44 = a5;
  v42 = a3;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v20;
  v41 = *a7;
  v21 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v22 = sub_1BA4A2B98();
  v23 = *(*(v22 - 8) + 56);
  v23(&v8[v21], 1, 1, v22);
  v48 = a1;
  v49 = a2;
  sub_1B9F252FC();
  v24 = sub_1BA4A7B38();
  v35 = v25;
  v36 = v24;

  sub_1B9F209BC(v44, v20, sub_1BA2C0448);
  v26 = v38;
  sub_1B9F209BC(v38, v17, sub_1B9F20584);
  *(v8 + 5) = 0;
  *(v8 + 4) = 0;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v28 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v28 - 8) + 56))(&v8[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v23(&v8[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v22);
  v30 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v46 = 0;
  v47 = 0;
  sub_1BA4A4EE8();
  (*(v39 + 32))(&v8[v30], v14, v40);
  *&v8[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v31 = v35;
  *(v8 + 2) = v36;
  *(v8 + 3) = v31;
  swift_beginAccess();
  v32 = v43;
  *(v8 + 4) = v42;
  *(v8 + 5) = v32;

  swift_beginAccess();
  v33 = v37;
  sub_1BA2C047C(v37, &v8[v27], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v17, &v8[v29], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v45 = v41;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F20A8C(v26, sub_1B9F20584);
  sub_1B9F20A8C(v44, sub_1BA2C0448);
  sub_1B9F20A8C(v17, sub_1B9F20584);
  sub_1B9F20A8C(v33, sub_1BA2C0448);
  return v8;
}

uint64_t sub_1BA2C129C(void *a1)
{
  sub_1BA2C15B8(0, &qword_1EDC5DD88, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A2B98();
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA032568(a1);
  if (!v2)
  {
    v18 = v6;
    v19 = 0;
    v16 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    swift_beginAccess();
    sub_1B9F209BC(v1 + v16, v11, sub_1B9F20584);
    if ((*(v20 + 48))(v11, 1, v12) == 1)
    {
      return sub_1B9F20A8C(v11, sub_1B9F20584);
    }

    else
    {
      (*(v20 + 32))(v14, v11, v12);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1BA2C0924();
      sub_1BA4A8548();
      sub_1B9F85270(&qword_1EDC6AD70, MEMORY[0x1E69A3260]);
      sub_1BA4A8288();
      (*(v18 + 8))(v8, v5);
      return (*(v20 + 8))(v14, v12);
    }
  }

  return result;
}

void sub_1BA2C15B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA2C0924();
    v7 = a3(a1, &type metadata for DismissibleCellHeaderView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_1BA2C161C(void *a1)
{
  v2 = v1;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v62 = v4;
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - v5;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v63 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  result = [a1 viewModel];
  if (result)
  {
    v22 = result;
    type metadata accessor for CellHeaderViewModel(0);
    v23 = sub_1BA032C70(v22);

    if (v1)
    {
      return v2;
    }

    v49 = 0;
    v48 = v9;
    swift_beginAccess();
    v24 = v23[3];
    v54 = v23[2];
    swift_beginAccess();
    v25 = v23[5];
    v58 = v23[4];
    v55 = v25;
    v26 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
    swift_beginAccess();
    v59 = a1;
    v53 = sub_1BA2C0448;
    v60 = v20;
    sub_1B9F209BC(v23 + v26, v20, sub_1BA2C0448);
    v27 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
    swift_beginAccess();
    v52 = sub_1B9F20584;
    v56 = v14;
    sub_1B9F209BC(v23 + v27, v14, sub_1B9F20584);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1BA4A4F28();

    v57 = v70;
    type metadata accessor for DismissibleCellHeaderView.ViewModel(0);
    v2 = swift_allocObject();
    v28 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    v29 = sub_1BA4A2B98();
    v51 = v6;
    v30 = v29;
    v31 = *(*(v29 - 8) + 56);
    (v31)(&v2[v28], 1, 1, v29);
    v68 = v54;
    v69 = v24;
    sub_1B9F252FC();
    v54 = sub_1BA4A7B38();
    v50 = v32;

    sub_1B9F209BC(v60, v63, v53);
    sub_1B9F209BC(v14, v64, v52);
    *(v2 + 5) = 0;
    *(v2 + 4) = 0;
    v33 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
    v34 = type metadata accessor for CellHeaderDetailText(0);
    (*(*(v34 - 8) + 56))(&v2[v33], 1, 1, v34);
    v35 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
    v53 = v30;
    v52 = v31;
    (v31)(&v2[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v30);
    v36 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
    sub_1B9F64048(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v66 = 0;
    v67 = 0;
    v37 = v51;
    sub_1BA4A4EE8();
    (*(v61 + 32))(&v2[v36], v37, v62);
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
    v38 = v50;
    *(v2 + 2) = v54;
    *(v2 + 3) = v38;
    swift_beginAccess();
    *(v2 + 4) = v58;
    *(v2 + 5) = v55;

    swift_beginAccess();
    v39 = &v2[v33];
    v40 = v59;
    v41 = v63;
    sub_1BA2C047C(v63, v39, sub_1BA2C0448);
    swift_endAccess();
    swift_beginAccess();
    v42 = &v2[v35];
    v43 = v64;
    sub_1BA2C047C(v64, v42, sub_1B9F20584);
    swift_endAccess();
    swift_beginAccess();
    v65 = v57;
    sub_1BA4A4EE8();
    swift_endAccess();
    sub_1B9F418E4();
    sub_1B9F20A8C(v43, sub_1B9F20584);
    sub_1B9F20A8C(v41, sub_1BA2C0448);
    sub_1B9F20A8C(v56, sub_1B9F20584);
    sub_1B9F20A8C(v60, sub_1BA2C0448);
    if (![v40 hasBackgroundColor])
    {
LABEL_6:

      return v2;
    }

    result = [v40 backgroundColor];
    if (result)
    {
      v44 = v48;
      v45 = v49;
      sub_1BA4A2BA8();

      if (!v45)
      {
        (v52)(v44, 0, 1, v53);
        v46 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
        swift_beginAccess();
        sub_1B9F2BAE8(v44, &v2[v46]);
        swift_endAccess();
        return v2;
      }

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BA2C1E40()
{
  v1 = sub_1BA4A2B98();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x1E69A41B8]) init];
  if (result)
  {
    v9 = result;
    v10 = sub_1BA03324C();
    [v9 setViewModel_];

    v11 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    swift_beginAccess();
    sub_1B9F209BC(v0 + v11, v7, sub_1B9F20584);
    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_1B9F20A8C(v7, sub_1B9F20584);
      v12 = 0;
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_1B9F20A8C(v7, sub_1B9F20584);
      v12 = sub_1BA4A2B88();
      (*(v2 + 8))(v4, v1);
    }

    [v9 setBackgroundColor_];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DismissibleCellHeaderView.ViewModel.deinit()
{

  sub_1B9F20A8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, sub_1BA2C0448);
  sub_1B9F20A8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, sub_1B9F20584);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F64048(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1B9F20A8C(v0 + OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor, sub_1B9F20584);
  return v0;
}

uint64_t DismissibleCellHeaderView.ViewModel.__deallocating_deinit()
{

  sub_1B9F20A8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, sub_1BA2C0448);
  sub_1B9F20A8C(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, sub_1B9F20584);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F64048(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F868B4(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1B9F20A8C(v0 + OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor, sub_1B9F20584);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2C23F0(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_1BA1846E4;
  a2[1] = v5;
  return result;
}

uint64_t DismissibleCellHeaderView.tapAction.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DismissibleCellHeaderView.tapAction.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DismissibleCellHeaderView.init(_:tapAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v8 = *(type metadata accessor for DismissibleCellHeaderView(0) + 32);
  *(a4 + v8) = swift_getKeyPath();
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + 8) = a3;
  *(a4 + 16) = a1;
  *a4 = a2;
  return result;
}

{
  v7 = *(a1 + 16);
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v8 = *(type metadata accessor for DismissibleCellHeaderView(0) + 32);
  *(a4 + v8) = swift_getKeyPath();
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();

  *(a4 + 8) = a3;
  *(a4 + 16) = v7;
  *a4 = a2;
  return result;
}

uint64_t DismissibleCellHeaderView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = *(type metadata accessor for DismissibleCellHeaderView(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();

  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *a2 = nullsub_1;
  return result;
}

uint64_t DismissibleCellHeaderView.viewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

id sub_1BA2C2820()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *(v0 + 24);

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA232F2C(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

uint64_t sub_1BA2C298C()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1BA2C2AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DismissibleCellHeaderView(0);
  sub_1BA23D6B4(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BA4A53C8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1BA4A6FB8();
    v13 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void DismissibleCellHeaderView.body.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5868();
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  sub_1BA2C7934(0, &qword_1EDC5F2E8, sub_1BA2C3CC0);
  sub_1BA2C2E24(v1, a1 + *(v3 + 44));
  v4 = sub_1BA4A5B88();
  sub_1BA4A5188();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BA2C4580(0);
  v14 = a1 + *(v13 + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  v15 = sub_1BA4A5B68();
  sub_1BA4A5188();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1BA2C45A0(0, &qword_1EDC5EFA8, sub_1BA2C4580);
  v25 = a1 + *(v24 + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
}

uint64_t sub_1BA2C2E24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = sub_1BA4A62D8();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v93 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C454C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v109 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v88 - v8;
  sub_1BA2C4188();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA2C4140(0);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v88 - v14;
  sub_1BA2C3F4C(0, &qword_1EDC5ED90, sub_1BA2C3DAC, sub_1BA2C4140, MEMORY[0x1E697F948]);
  v98 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v88 - v16;
  sub_1BA2C3DAC();
  v99 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v88 = (&v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v88 - v20;
  v21 = sub_1BA4A53C8();
  v95 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C3D64(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v105 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v88 - v26;
  v27 = sub_1BA4A2B98();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v97 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v88 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v88 - v37;
  v102 = sub_1BA4A2C58();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v40 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a1;
  v41 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v114 = v41;
  sub_1BA4A4F28();

  v42 = v116;
  if (v116)
  {
  }

  sub_1BA2C2820();
  sub_1BA4A2C48();
  v43 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  v44 = v114;
  swift_beginAccess();
  v96 = v43;
  sub_1B9F209BC(v44 + v43, v38, sub_1B9F20584);
  v113 = *(v28 + 48);
  v45 = v113(v38, 1, v27);
  v111 = v40;
  if (v45)
  {
    sub_1B9F20A8C(v38, sub_1B9F20584);
    v46 = sub_1BA4A60A8();
  }

  else
  {
    (*(v28 + 16))(v30, v38, v27);
    sub_1B9F20A8C(v38, sub_1B9F20584);
    v46 = sub_1BA4A2B78();
    (*(v28 + 8))(v30, v27);
  }

  v47 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v48 = v114;
  swift_beginAccess();
  sub_1B9F209BC(v48 + v47, v35, sub_1B9F20584);
  if (v113(v35, 1, v27))
  {
    sub_1B9F20A8C(v35, sub_1B9F20584);
    v112 = 0;
  }

  else
  {
    (*(v28 + 16))(v30, v35, v27);
    sub_1B9F20A8C(v35, sub_1B9F20584);
    v112 = sub_1BA4A2B78();
    (*(v28 + 8))(v30, v27);
  }

  v49 = v46;
  v50 = v94;
  v51 = sub_1BA2C298C();
  v53 = v52;
  sub_1BA2C2AF0(v50);
  if (qword_1EDC67DE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EDC84C60);
  sub_1B9F85270(&qword_1EDC5F2C8, MEMORY[0x1E697E730]);
  v54 = sub_1BA4A66F8();
  (*(v95 + 8))(v50, v21);
  if (v54)
  {
    v55 = sub_1BA4A5878();
    v56 = v91;
    *v91 = v55;
    v56[1] = 0;
    *(v56 + 16) = 1;
    sub_1BA2C7934(0, &qword_1EBBF00E0, sub_1BA2C421C);
    sub_1BA2C5484(v115, v112, v51, v53, v56 + *(v57 + 44));

    sub_1B9F64048(0, &qword_1EBBF00E8, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v59 = sub_1BA4A5BA8();
    *(inited + 32) = v59;
    v60 = sub_1BA4A5BC8();
    *(inited + 33) = v60;
    v61 = sub_1BA4A5BB8();
    sub_1BA4A5BB8();
    v62 = sub_1BA4A5BB8();
    v63 = v104;
    if (v62 != v59)
    {
      v61 = sub_1BA4A5BB8();
    }

    sub_1BA4A5BB8();
    if (sub_1BA4A5BB8() != v60)
    {
      v61 = sub_1BA4A5BB8();
    }

    v64 = v108;

    v65 = sub_1BA4A63C8();
    v67 = v66;
    v68 = v56;
    v69 = v90;
    sub_1BA2C79A0(v68, v90, sub_1BA2C4188);
    v70 = v69 + *(v103 + 36);
    *v70 = v49;
    *(v70 + 8) = v61;
    *(v70 + 16) = v65;
    *(v70 + 24) = v67;
    v71 = v92;
    sub_1BA2C79A0(v69, v92, sub_1BA2C4140);
    sub_1B9F209BC(v71, v100, sub_1BA2C4140);
    swift_storeEnumTagMultiPayload();
    sub_1B9F85270(&qword_1EDC5EAF8, sub_1BA2C3DAC);
    sub_1BA2C7A08();
    sub_1BA4A58E8();
    sub_1B9F20A8C(v71, sub_1BA2C4140);
  }

  else
  {
    v63 = v104;
    if (v42)
    {
      v72 = sub_1BA4A5778();
    }

    else
    {
      v72 = sub_1BA4A5798();
    }

    v73 = v88;
    *v88 = v72;
    *(v73 + 8) = 0x4020000000000000;
    *(v73 + 16) = 0;
    sub_1BA2C7934(0, &qword_1EDC5F310, sub_1BA2C3E40);
    sub_1BA2C4690(v115, v112, v51, v53, v42 != 0, v73 + *(v74 + 44));

    v75 = v89;
    sub_1BA2C79A0(v73, v89, sub_1BA2C3DAC);
    sub_1B9F209BC(v75, v100, sub_1BA2C3DAC);
    swift_storeEnumTagMultiPayload();
    sub_1B9F85270(&qword_1EDC5EAF8, sub_1BA2C3DAC);
    sub_1BA2C7A08();
    sub_1BA4A58E8();
    sub_1B9F20A8C(v75, sub_1BA2C3DAC);
    v64 = v108;
  }

  v76 = v97;
  sub_1B9F209BC(v114 + v96, v97, sub_1B9F20584);
  v77 = 1;
  v78 = v113(v76, 1, v27);
  sub_1B9F20A8C(v76, sub_1B9F20584);
  v79 = v78 == 1;
  v81 = v106;
  v80 = v107;
  if (v79)
  {
    v82 = v93;
    sub_1BA4A62C8();
    (*(v81 + 32))(v64, v82, v80);
    v77 = 0;
  }

  (*(v81 + 56))(v64, v77, 1, v80);
  v83 = v105;
  sub_1B9F209BC(v63, v105, sub_1BA2C3D64);
  v84 = v109;
  sub_1B9F209BC(v64, v109, sub_1BA2C454C);
  v85 = v110;
  sub_1B9F209BC(v83, v110, sub_1BA2C3D64);
  sub_1BA2C3CF4();
  sub_1B9F209BC(v84, v85 + *(v86 + 48), sub_1BA2C454C);

  sub_1B9F20A8C(v64, sub_1BA2C454C);
  sub_1B9F20A8C(v63, sub_1BA2C3D64);
  (*(v101 + 8))(v111, v102);
  sub_1B9F20A8C(v84, sub_1BA2C454C);
  return sub_1B9F20A8C(v83, sub_1BA2C3D64);
}

void sub_1BA2C3CF4()
{
  if (!qword_1EDC5ED20)
  {
    sub_1BA2C3D64(255);
    sub_1BA2C454C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5ED20);
    }
  }
}

void sub_1BA2C3DAC()
{
  if (!qword_1EDC5EAF0)
  {
    sub_1BA2C3E40(255);
    sub_1B9F85270(&qword_1EDC5E988, sub_1BA2C3E40);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EAF0);
    }
  }
}

void sub_1BA2C3E74()
{
  if (!qword_1EDC5F238)
  {
    sub_1BA2C446C(255, &qword_1EDC5F240);
    sub_1BA2C3F04(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5F238);
    }
  }
}

void sub_1BA2C3F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA2C3FD0()
{
  if (!qword_1EDC5EB00)
  {
    sub_1BA2C4064(255);
    sub_1B9F85270(&qword_1EDC5E998, sub_1BA2C4064);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EB00);
    }
  }
}

void sub_1BA2C4098()
{
  if (!qword_1EDC69808)
  {
    type metadata accessor for AccessoryView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC69808);
    }
  }
}

void sub_1BA2C4188()
{
  if (!qword_1EDC5EA60)
  {
    sub_1BA2C421C(255);
    sub_1B9F85270(&qword_1EDC5E8F0, sub_1BA2C421C);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EA60);
    }
  }
}

void sub_1BA2C4250()
{
  if (!qword_1EDC5EB18)
  {
    sub_1BA2C42B8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5EB18);
    }
  }
}

void sub_1BA2C42B8()
{
  if (!qword_1EDC5EB20)
  {
    sub_1BA2C434C(255);
    sub_1B9F85270(&qword_1EDC5E9B8, sub_1BA2C434C);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EB20);
    }
  }
}

void sub_1BA2C4380()
{
  if (!qword_1EDC5F910)
  {
    sub_1BA2C4120(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5F910);
    }
  }
}

void sub_1BA2C43F0()
{
  if (!qword_1EDC5EDB0)
  {
    sub_1BA2C446C(255, &qword_1EDC5F180);
    sub_1BA2C44BC();
    v0 = sub_1BA4A58C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EDB0);
    }
  }
}

void sub_1BA2C446C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A5418();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1BA2C44BC()
{
  result = qword_1EDC5F188;
  if (!qword_1EDC5F188)
  {
    sub_1BA2C446C(255, &qword_1EDC5F180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F188);
  }

  return result;
}

void sub_1BA2C45A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA2C45FC()
{
  if (!qword_1EDC5EA98)
  {
    sub_1BA2C3CC0(255);
    sub_1B9F85270(&qword_1EDC5E930, sub_1BA2C3CC0);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EA98);
    }
  }
}

uint64_t sub_1BA2C4690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v91) = a5;
  v104 = a3;
  v95 = a6;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A6418();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryView(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C4120(0);
  v97 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v85 - v19;
  sub_1BA2C3F4C(0, &qword_1EDC5ED98, sub_1BA2C3FD0, sub_1BA2C4120, MEMORY[0x1E697F948]);
  v92 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v85 - v21;
  sub_1BA2C3FD0();
  v93 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C3F04(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v100 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v99 = &v85 - v28;
  v29 = a1;
  v30 = a1[2];
  swift_beginAccess();
  v31 = v30[3];
  *&v98 = v30[2];
  swift_beginAccess();
  v32 = v30[5];
  v102 = v30[4];
  v103 = a2;

  *(&v98 + 1) = v31;

  v96 = v32;

  v33 = a4;

  v101 = sub_1BA4A5BA8();
  sub_1BA4A5188();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v112) = 0;
  if (v91)
  {
    *v24 = sub_1BA4A5798();
    *(v24 + 1) = 0x402A000000000000;
    v24[16] = 0;
    sub_1BA2C7934(0, &qword_1EDC5F318, sub_1BA2C4064);
    v43 = v103;
    sub_1BA2C4FB4(v29, v103, v104, a4, &v24[*(v42 + 44)]);
    sub_1B9F209BC(v24, v94, sub_1BA2C3FD0);
    swift_storeEnumTagMultiPayload();
    sub_1B9F85270(&qword_1EDC5EB08, sub_1BA2C3FD0);
    sub_1BA2C7AE8();
    v44 = v99;
    sub_1BA4A58E8();
    v45 = sub_1BA2C3FD0;
    v46 = v24;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v91 = a4;
    sub_1BA4A4F28();

    v47 = v112;
    v48 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
    swift_beginAccess();
    v49 = v85;
    sub_1B9F209BC(v30 + v48, v85, sub_1B9F20584);
    v50 = sub_1BA4A2B98();
    v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
    sub_1B9F20A8C(v49, sub_1B9F20584);
    v53 = v86;
    v52 = v87;
    v54 = MEMORY[0x1E6981DF0];
    if (v51 != 1)
    {
      v54 = MEMORY[0x1E6981DB8];
    }

    v55 = v88;
    (*(v87 + 104))(v86, *v54, v88);
    v56 = v91;
    v57 = (v47 & 2) == 0;
    v59 = *v29;
    v58 = v29[1];
    *v15 = v57;
    (*(v52 + 32))(&v15[v13[5]], v53, v55);
    v43 = v103;
    v60 = v104;
    *&v15[v13[6]] = v103;
    v61 = &v15[v13[7]];
    *v61 = v60;
    v61[1] = v56;
    v62 = &v15[v13[8]];
    *v62 = v59;
    v62[1] = v58;
    v33 = v56;

    LOBYTE(v58) = sub_1BA4A5BC8();
    sub_1BA4A5188();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = v89;
    sub_1BA2C79A0(v15, v89, type metadata accessor for AccessoryView);
    v72 = v71 + *(v97 + 36);
    *v72 = v58;
    *(v72 + 8) = v64;
    *(v72 + 16) = v66;
    *(v72 + 24) = v68;
    *(v72 + 32) = v70;
    *(v72 + 40) = 0;
    v73 = v71;
    v74 = v90;
    sub_1BA2C79A0(v73, v90, sub_1BA2C4120);
    sub_1B9F209BC(v74, v94, sub_1BA2C4120);
    swift_storeEnumTagMultiPayload();
    sub_1B9F85270(&qword_1EDC5EB08, sub_1BA2C3FD0);
    sub_1BA2C7AE8();
    v44 = v99;
    sub_1BA4A58E8();
    v45 = sub_1BA2C4120;
    v46 = v74;
  }

  sub_1B9F20A8C(v46, v45);
  v75 = v100;
  sub_1B9F209BC(v44, v100, sub_1BA2C3F04);
  v76 = v98;
  v105 = v98;
  v77 = v96;
  *&v106 = v102;
  *(&v106 + 1) = v96;
  v78 = v104;
  *&v107 = v43;
  *(&v107 + 1) = v104;
  *&v108 = v33;
  BYTE8(v108) = v101;
  HIDWORD(v108) = *(v125 + 3);
  *(&v108 + 9) = v125[0];
  *&v109 = v35;
  *(&v109 + 1) = v37;
  *&v110 = v39;
  *(&v110 + 1) = v41;
  v111 = 0;
  v79 = v110;
  v80 = v95;
  *(v95 + 64) = v109;
  *(v80 + 80) = v79;
  *(v80 + 96) = 0;
  v81 = v106;
  *v80 = v105;
  *(v80 + 16) = v81;
  v82 = v108;
  *(v80 + 32) = v107;
  *(v80 + 48) = v82;
  *(v80 + 104) = 0;
  *(v80 + 112) = 1;
  sub_1BA2C3E74();
  sub_1B9F209BC(v75, v80 + *(v83 + 64), sub_1BA2C3F04);
  sub_1BA2C780C(&v105, &v112, &qword_1EDC5F240, &type metadata for TitleView, MEMORY[0x1E697E5E0], sub_1BA2C446C);
  sub_1B9F20A8C(v44, sub_1BA2C3F04);
  sub_1B9F20A8C(v75, sub_1BA2C3F04);
  v112 = v76;
  v113 = v102;
  v114 = v77;
  v115 = v103;
  v116 = v78;
  v117 = v33;
  v118 = v101;
  *v119 = v125[0];
  *&v119[3] = *(v125 + 3);
  v120 = v35;
  v121 = v37;
  v122 = v39;
  v123 = v41;
  v124 = 0;
  return sub_1BA2C7B98(&v112);
}

uint64_t sub_1BA2C4FB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v44 = a4;
  v45 = a1;
  v52 = a5;
  v53 = a3;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_1BA4A6418();
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AccessoryView(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v42[-v19];
  v20 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v46 = v55;
  v47 = v54;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v43 = v54;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = a2;

  v22 = v44;

  sub_1BA4A4F28();

  v23 = v54;
  v24 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  sub_1B9F209BC(v20 + v24, v9, sub_1B9F20584);
  v25 = sub_1BA4A2B98();
  LODWORD(v24) = (*(*(v25 - 8) + 48))(v9, 1, v25);
  sub_1B9F20A8C(v9, sub_1B9F20584);
  v26 = MEMORY[0x1E6981DF0];
  if (v24 != 1)
  {
    v26 = MEMORY[0x1E6981DB8];
  }

  v27 = v48;
  v28 = v50;
  (*(v10 + 104))(v48, *v26, v50);
  v29 = *v45;
  v30 = v45[1];
  *v17 = (v23 & 2) == 0;
  (*(v10 + 32))(&v17[v13[7]], v27, v28);
  v31 = v21;
  *&v17[v13[8]] = v21;
  v32 = &v17[v13[9]];
  v33 = v53;
  *v32 = v53;
  *(v32 + 1) = v22;
  v34 = &v17[v13[10]];
  *v34 = v29;
  *(v34 + 1) = v30;
  v35 = v49;
  sub_1BA2C79A0(v17, v49, type metadata accessor for AccessoryView);
  v36 = v51;
  sub_1B9F209BC(v35, v51, type metadata accessor for AccessoryView);
  v37 = v52;
  v38 = v46;
  *v52 = v47;
  v37[1] = v38;
  *(v37 + 16) = (v43 & 1) == 0;
  v37[3] = v31;
  v37[4] = v33;
  v37[5] = v22;
  v39 = v37;
  sub_1BA2C4098();
  sub_1B9F209BC(v36, v39 + *(v40 + 48), type metadata accessor for AccessoryView);

  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_1B9F20A8C(v35, type metadata accessor for AccessoryView);
  sub_1B9F20A8C(v36, type metadata accessor for AccessoryView);
}

uint64_t sub_1BA2C5484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  sub_1BA2C42B8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  *v15 = sub_1BA4A5778();
  *(v15 + 1) = 0x402A000000000000;
  v15[16] = 0;
  sub_1BA2C7934(0, &qword_1EBBF00F0, sub_1BA2C434C);
  sub_1BA2C56FC(a1, a2, a3, a4, &v15[*(v16 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v17 = v26;
  v18 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v19 = v26;
  sub_1B9F209BC(v15, v12, sub_1BA2C42B8);
  sub_1B9F209BC(v12, a5, sub_1BA2C42B8);
  sub_1BA2C4250();
  v21 = a5 + *(v20 + 48);
  *v21 = v17;
  *(v21 + 8) = v18;
  *(v21 + 16) = (v19 & 1) == 0;
  v22 = v25;
  *(v21 + 24) = a2;
  *(v21 + 32) = v22;
  *(v21 + 40) = a4;

  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_1B9F20A8C(v15, sub_1BA2C42B8);

  return sub_1B9F20A8C(v12, sub_1BA2C42B8);
}

uint64_t sub_1BA2C56FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v67 = a3;
  v68 = a2;
  v55 = a1;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BA4A6418();
  v10 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryView(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C4120(0);
  v65 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16 - 8);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v55 - v21;
  v22 = a1[2];
  swift_beginAccess();
  v23 = v22[3];
  v64 = v22[2];
  v58 = v23;
  swift_beginAccess();
  v24 = v22[5];
  v62 = v22[4];
  v57 = v24;
  swift_getKeyPath();
  swift_getKeyPath();

  v25 = v56;

  sub_1BA4A4F28();

  v26 = v69;
  v27 = OBJC_IVAR____TtCV18HealthExperienceUI25DismissibleCellHeaderView9ViewModel_backgroundColor;
  swift_beginAccess();
  sub_1B9F209BC(v22 + v27, v9, sub_1B9F20584);
  v28 = sub_1BA4A2B98();
  LODWORD(v22) = (*(*(v28 - 8) + 48))(v9, 1, v28);
  sub_1B9F20A8C(v9, sub_1B9F20584);
  v29 = MEMORY[0x1E6981DF0];
  if (v22 != 1)
  {
    v29 = MEMORY[0x1E6981DB8];
  }

  v30 = v59;
  v31 = v61;
  (*(v10 + 104))(v59, *v29, v61);
  v33 = *v55;
  v32 = v55[1];
  *v15 = (v26 & 2) == 0;
  (*(v10 + 32))(&v15[v13[7]], v30, v31);
  v35 = v67;
  v34 = v68;
  *&v15[v13[8]] = v68;
  v36 = &v15[v13[9]];
  *v36 = v35;
  *(v36 + 1) = v25;
  v37 = &v15[v13[10]];
  *v37 = v33;
  *(v37 + 1) = v32;
  v38 = v25;

  LOBYTE(v32) = sub_1BA4A5B68();
  sub_1BA4A5188();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v60;
  sub_1BA2C79A0(v15, v60, type metadata accessor for AccessoryView);
  v48 = v47 + *(v65 + 44);
  *v48 = v32;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  v49 = v63;
  sub_1BA2C79A0(v47, v63, sub_1BA2C4120);
  v50 = v66;
  sub_1B9F209BC(v49, v66, sub_1BA2C4120);
  v51 = v58;
  *a5 = v64;
  *(a5 + 8) = v51;
  v52 = v57;
  *(a5 + 16) = v62;
  *(a5 + 24) = v52;
  *(a5 + 32) = v34;
  *(a5 + 40) = v35;
  *(a5 + 48) = v38;
  *(a5 + 56) = 0;
  *(a5 + 64) = 1;
  sub_1BA2C4380();
  sub_1B9F209BC(v50, a5 + *(v53 + 64), sub_1BA2C4120);

  sub_1B9F20A8C(v49, sub_1BA2C4120);
  sub_1B9F20A8C(v50, sub_1BA2C4120);
}

uint64_t DismissibleCellHeaderView.dismissInDetailViewHidden(presentation:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 4)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1BA4A4F38();
  }

  return sub_1B9F209BC(v2, a2, type metadata accessor for DismissibleCellHeaderView);
}

void sub_1BA2C5D50(uint64_t a1@<X8>)
{
  *a1 = sub_1BA4A5868();
  *(a1 + 8) = 0x402C000000000000;
  *(a1 + 16) = 0;
  sub_1BA2C7934(0, &qword_1EDC5F2E8, sub_1BA2C3CC0);
  sub_1BA2C2E24(v1, a1 + *(v3 + 44));
  v4 = sub_1BA4A5B88();
  sub_1BA4A5188();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1BA2C4580(0);
  v14 = a1 + *(v13 + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  v15 = sub_1BA4A5B68();
  sub_1BA4A5188();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1BA2C45A0(0, &qword_1EDC5EFA8, sub_1BA2C4580);
  v25 = a1 + *(v24 + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
}

uint64_t sub_1BA2C5E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v6 = *(a2 + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_1B9F205B8(0, &qword_1EDC6B6E0, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();

  *(a3 + 8) = 0;
  *(a3 + 16) = v5;
  *a3 = nullsub_1;
  return result;
}

uint64_t sub_1BA2C5F58(uint64_t a1)
{
  result = sub_1B9F85270(qword_1EDC65B68, type metadata accessor for DismissibleCellHeaderView);
  *(a1 + 8) = result;
  return result;
}

void sub_1BA2C5FD8()
{
  sub_1B9F37BB8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DismissibleCellHeaderView.ViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_1B9F205B8(319, &qword_1EDC6B6C0, sub_1B9F2ACE8, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1B9F64048(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1B9F205B8(319, &qword_1EDC6B6D0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BA2C6130()
{
  sub_1B9F20584(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1BA2C62C4()
{
  result = qword_1EDC5EFB0;
  if (!qword_1EDC5EFB0)
  {
    sub_1BA2C45A0(255, &qword_1EDC5EFA8, sub_1BA2C4580);
    sub_1BA2C6360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EFB0);
  }

  return result;
}

unint64_t sub_1BA2C6360()
{
  result = qword_1EDC5F100;
  if (!qword_1EDC5F100)
  {
    sub_1BA2C4580(255);
    sub_1B9F85270(&qword_1EDC5EAA0, sub_1BA2C45FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F100);
  }

  return result;
}

void sub_1BA2C6438()
{
  sub_1BA4A6418();
  if (v0 <= 0x3F)
  {
    sub_1B9F64048(319, &qword_1EDC5EB98, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9F37BB8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BA2C6510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA2C6558(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1BA2C65B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BA2C65FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA2C666C()
{
  result = qword_1EBBF00D8;
  if (!qword_1EBBF00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF00D8);
  }

  return result;
}

void sub_1BA2C66DC(uint64_t a1@<X8>)
{
  v27[1] = a1;
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A5D68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F84E50();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v1;
  v33 = v1[1];
  v34 = v13;
  v30 = *(&v13 + 1);
  v31 = v13;
  v28 = *(&v33 + 1);
  v29 = v33;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980F30], v5);
  v14 = sub_1BA4A5C28();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1B9F87E20(&v34, v32);
  sub_1BA2C780C(&v33, v32, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F64048);
  sub_1BA4A5CB8();
  v15 = sub_1BA4A5CD8();
  sub_1B9F20A8C(v4, sub_1B9F87DEC);
  (*(v6 + 8))(v8, v5);
  KeyPath = swift_getKeyPath();
  v17 = *(v1 + 4);
  if (!v17)
  {
    v18 = [objc_opt_self() secondaryLabelColor];
    v17 = sub_1BA4A6048();
  }

  v19 = swift_getKeyPath();
  v20 = (v12 + *(v10 + 36));
  sub_1B9F57FD4();

  sub_1BA4A54C8();
  *v20 = swift_getKeyPath();
  v21 = v30;
  *v12 = v31;
  v12[1] = v21;
  v22 = v28;
  v12[2] = v29;
  v12[3] = v22;
  v12[4] = KeyPath;
  v12[5] = v15;
  v12[6] = v19;
  v12[7] = v17;
  sub_1B9F64048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B9FD0;
  v24 = *(v1 + 6);
  *(v23 + 32) = *(v1 + 5);
  *(v23 + 40) = v24;
  *(v23 + 48) = 0x726564616548;
  *(v23 + 56) = 0xE600000000000000;
  *(v23 + 64) = 0x656C746954;
  *(v23 + 72) = 0xE500000000000000;

  v25 = sub_1BA4A6AE8();

  v26 = HKUIJoinStringsForAutomationIdentifier();

  if (v26)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA2C7880(&qword_1EDC5EFA0, sub_1B9F84E50, sub_1B9F85130);
    sub_1BA4A5F18();

    sub_1B9F20A8C(v12, sub_1B9F84E50);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA2C6B8C(uint64_t a1@<X8>)
{
  sub_1B9F87DEC(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A5D68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F8706C();
  v11 = v10;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[1];
  if (v16 && (v1[2] & 1) != 0)
  {
    v17 = *v1;
    v29 = v12;
    v30 = v17;
    (*(v7 + 104))(v9, *MEMORY[0x1E6980F30], v6, v13.n128_f64[0]);
    v18 = sub_1BA4A5C28();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);

    v19 = sub_1BA4A5CD8();
    sub_1B9F20A8C(v5, sub_1B9F87DEC);
    (*(v7 + 8))(v9, v6);
    KeyPath = swift_getKeyPath();
    v21 = v1[3];
    if (!v21)
    {
      v22 = [objc_opt_self() secondaryLabelColor];
      v21 = sub_1BA4A6048();
    }

    v23 = swift_getKeyPath();
    v32 = v30;
    v33 = v16;
    v34 = KeyPath;
    v35 = v19;
    v36 = v23;
    v37 = v21;
    sub_1B9F64048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    v38 = *(v1 + 2);
    v25 = v38;
    *(v24 + 16) = xmmword_1BA4B9FD0;
    *(v24 + 32) = v25;
    *(v24 + 48) = 0x726564616548;
    *(v24 + 56) = 0xE600000000000000;
    *(v24 + 64) = 1702125892;
    *(v24 + 72) = 0xE400000000000000;
    sub_1B9F87E20(&v38, v31);

    v26 = sub_1BA4A6AE8();

    v27 = HKUIJoinStringsForAutomationIdentifier();

    if (v27)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1B9F84ED0(0, &qword_1EDC5F0A8, &qword_1EDC5F278);
      sub_1B9F870EC();
      sub_1BA4A5F18();

      sub_1BA2C79A0(v15, a1, sub_1B9F8706C);
      (*(v29 + 56))(a1, 0, 1, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v28 = *(v12 + 56);

    v28(a1, 1, 1, v11, v13);
  }
}

void sub_1BA2C7078(uint64_t a1@<X8>)
{
  sub_1BA2C7510(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA2C3F4C(0, &qword_1EDC5EF68, sub_1BA2C7510, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v12 = v31 - v11;
  if (*v1 == 1)
  {
    v32 = v9;
    v33 = v8;
    v13 = type metadata accessor for AccessoryView(0);
    v14 = &v1[v13[8]];
    v15 = *v14;
    v16 = v14[1];
    v34 = a1;
    v35 = v15;
    v17 = *&v1[v13[6]];
    if (v17)
    {

      v18 = v17;
    }

    else
    {
      v20 = objc_opt_self();

      v21 = [v20 tertiaryLabelColor];
      v18 = sub_1BA4A6048();
    }

    KeyPath = swift_getKeyPath();
    v23 = *(v4 + 36);
    v31[1] = v4;
    v24 = (v6 + v23);
    sub_1B9F57FD4();

    sub_1BA4A54C8();
    *v24 = swift_getKeyPath();
    *v6 = v35;
    v6[1] = v16;
    v6[2] = KeyPath;
    v6[3] = v18;
    sub_1B9F64048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BA4B9FD0;
    v26 = &v1[v13[7]];
    v27 = v26[1];
    *(v25 + 32) = *v26;
    *(v25 + 40) = v27;
    *(v25 + 48) = 0x726564616548;
    *(v25 + 56) = 0xE600000000000000;
    *(v25 + 64) = 0x6E6F7474754258;
    *(v25 + 72) = 0xE700000000000000;

    v28 = sub_1BA4A6AE8();

    v29 = HKUIJoinStringsForAutomationIdentifier();

    if (v29)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA2C7880(&qword_1EDC5F0A0, sub_1BA2C7510, sub_1BA2C75E4);
      sub_1BA4A5F18();

      sub_1B9F20A8C(v6, sub_1BA2C7510);
      v30 = v34;
      sub_1BA2C76D8(v12, v34);
      (*(v32 + 56))(v30, 0, 1, v33);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = *(v9 + 56);

    v19(a1, 1, 1, v10);
  }
}

unint64_t sub_1BA2C7464()
{
  result = qword_1EDC6C6A0;
  if (!qword_1EDC6C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C6A0);
  }

  return result;
}

unint64_t sub_1BA2C74BC()
{
  result = qword_1EDC6C6A8;
  if (!qword_1EDC6C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C6A8);
  }

  return result;
}

void sub_1BA2C7558()
{
  if (!qword_1EDC5F268)
  {
    sub_1B9F868B4(255, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F268);
    }
  }
}

unint64_t sub_1BA2C75E4()
{
  result = qword_1EDC5F270;
  if (!qword_1EDC5F270)
  {
    sub_1BA2C7558();
    sub_1BA2C7684();
    sub_1B9F87878(&qword_1EDC5EC40, &qword_1EDC5EC38, &qword_1EDC5EB98, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F270);
  }

  return result;
}

unint64_t sub_1BA2C7684()
{
  result = qword_1EDC646F0;
  if (!qword_1EDC646F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC646F0);
  }

  return result;
}

uint64_t sub_1BA2C76D8(uint64_t a1, uint64_t a2)
{
  sub_1BA2C3F4C(0, &qword_1EDC5EF68, sub_1BA2C7510, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA2C7780(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1B9F868B4(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v3 = sub_1BA4A5418();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1BA2C780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA2C7880(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1B9F85270(&qword_1EDC5EC70, sub_1B9F57FD4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2C7934(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A52C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA2C79A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA2C7A08()
{
  result = qword_1EDC5F0F0;
  if (!qword_1EDC5F0F0)
  {
    sub_1BA2C4140(255);
    sub_1B9F85270(&qword_1EDC5EA68, sub_1BA2C4188);
    sub_1B9F85270(&qword_1EDC5EDB8, sub_1BA2C43F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F0F0);
  }

  return result;
}

unint64_t sub_1BA2C7AE8()
{
  result = qword_1EDC5F2A0;
  if (!qword_1EDC5F2A0)
  {
    sub_1BA2C4120(255);
    sub_1B9F85270(&qword_1EDC694D8, type metadata accessor for AccessoryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F2A0);
  }

  return result;
}

uint64_t sub_1BA2C7B98(uint64_t a1)
{
  sub_1BA2C446C(0, &qword_1EDC5F240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA2C7C0C()
{
  if (!qword_1EDC5EF60)
  {
    sub_1BA2C3F4C(255, &qword_1EDC5EF68, sub_1BA2C7510, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EF60);
    }
  }
}

unint64_t sub_1BA2C7CA8()
{
  result = qword_1EDC5EF70;
  if (!qword_1EDC5EF70)
  {
    sub_1BA2C3F4C(255, &qword_1EDC5EF68, sub_1BA2C7510, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1BA2C7880(&qword_1EDC5F0A0, sub_1BA2C7510, sub_1BA2C75E4);
    sub_1B9F85270(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EF70);
  }

  return result;
}

uint64_t sub_1BA2C7DCC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2C7E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v46 = a7;
  v49 = a4;
  v50 = a2;
  v13 = sub_1BA4A3EA8();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1BA4A64F8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v19 = sub_1BA4A7308();
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v20 = sub_1BA4A6528();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v23 = 136315650;
    *(v23 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, &v51);
    *(v23 + 12) = 2080;
    aBlock = v50;
    v53 = a3;
    sub_1BA2CDEB0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v45 = a8;

    v24 = sub_1BA4A6808();
    v43 = v22;
    v26 = sub_1B9F0B82C(v24, v25, &v51);

    *(v23 + 14) = v26;
    *(v23 + 22) = 2080;
    aBlock = v49;
    v53 = a5;

    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, &v51);

    *(v23 + 24) = v29;
    a8 = v45;
    _os_log_impl(&dword_1B9F07000, v21, v43, "[%s] Received an error: %s, %s", v23, 0x20u);
    v30 = v44;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);

    (*(v47 + 8))(v15, v48);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v31 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  (*(v47 + 8))(v15, v48);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v31 = sub_1BA4A6758();
  if (a5)
  {
LABEL_5:
    v32 = sub_1BA4A6758();
    goto LABEL_9;
  }

LABEL_8:
  v32 = 0;
LABEL_9:
  v15 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v34 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1BFAF2860](v34, a6);
      }

      else
      {
        if (v34 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v35 = *(a6 + 8 * v34 + 32);
      }

      v36 = v35;
      a8 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      [v15 addAction_];

      ++v34;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v37 = swift_allocObject();
  v38 = v46;
  *(v37 + 16) = v46;
  *(v37 + 24) = a8;
  sub_1B9F0F1B4(v38, a8);
  v39 = sub_1BA4A6758();

  v56 = sub_1BA2CDEA8;
  v57 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1BA0B06D4;
  v55 = &block_descriptor_79;
  v40 = _Block_copy(&aBlock);

  v41 = [objc_opt_self() actionWithTitle:v39 style:0 handler:v40];
  _Block_release(v40);

  [v15 addAction_];
LABEL_26:
  [a1 presentViewController:v15 animated:1 completion:0];
}

void sub_1BA2C84D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v46 = a7;
  v49 = a4;
  v50 = a2;
  v13 = sub_1BA4A3EA8();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1BA4A64F8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v19 = sub_1BA4A7308();
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v20 = sub_1BA4A6528();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v23 = 136315650;
    *(v23 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4FB650, &v51);
    *(v23 + 12) = 2080;
    aBlock = v50;
    v53 = a3;
    sub_1BA2CDEB0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v45 = a8;

    v24 = sub_1BA4A6808();
    v43 = v22;
    v26 = sub_1B9F0B82C(v24, v25, &v51);

    *(v23 + 14) = v26;
    *(v23 + 22) = 2080;
    aBlock = v49;
    v53 = a5;

    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, &v51);

    *(v23 + 24) = v29;
    a8 = v45;
    _os_log_impl(&dword_1B9F07000, v21, v43, "[%s] Received an error: %s, %s", v23, 0x20u);
    v30 = v44;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);

    (*(v47 + 8))(v15, v48);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v31 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  (*(v47 + 8))(v15, v48);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v31 = sub_1BA4A6758();
  if (a5)
  {
LABEL_5:
    v32 = sub_1BA4A6758();
    goto LABEL_9;
  }

LABEL_8:
  v32 = 0;
LABEL_9:
  v15 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v34 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1BFAF2860](v34, a6);
      }

      else
      {
        if (v34 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v35 = *(a6 + 8 * v34 + 32);
      }

      v36 = v35;
      a8 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      [v15 addAction_];

      ++v34;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v37 = swift_allocObject();
  v38 = v46;
  *(v37 + 16) = v46;
  *(v37 + 24) = a8;
  sub_1B9F0F1B4(v38, a8);
  v39 = sub_1BA4A6758();

  v56 = sub_1BA2CEA54;
  v57 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1BA0B06D4;
  v55 = &block_descriptor_43_1;
  v40 = _Block_copy(&aBlock);

  v41 = [objc_opt_self() actionWithTitle:v39 style:0 handler:v40];
  _Block_release(v40);

  [v15 addAction_];
LABEL_26:
  [a1 presentViewController:v15 animated:1 completion:0];
}

void sub_1BA2C8B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v46 = a7;
  v49 = a4;
  v50 = a2;
  v13 = sub_1BA4A3EA8();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1BA4A64F8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v19 = sub_1BA4A7308();
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v20 = sub_1BA4A6528();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v23 = 136315650;
    *(v23 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, &v51);
    *(v23 + 12) = 2080;
    aBlock = v50;
    v53 = a3;
    sub_1BA2CDEB0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v45 = a8;

    v24 = sub_1BA4A6808();
    v43 = v22;
    v26 = sub_1B9F0B82C(v24, v25, &v51);

    *(v23 + 14) = v26;
    *(v23 + 22) = 2080;
    aBlock = v49;
    v53 = a5;

    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, &v51);

    *(v23 + 24) = v29;
    a8 = v45;
    _os_log_impl(&dword_1B9F07000, v21, v43, "[%s] Received an error: %s, %s", v23, 0x20u);
    v30 = v44;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);

    (*(v47 + 8))(v15, v48);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v31 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  (*(v47 + 8))(v15, v48);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v31 = sub_1BA4A6758();
  if (a5)
  {
LABEL_5:
    v32 = sub_1BA4A6758();
    goto LABEL_9;
  }

LABEL_8:
  v32 = 0;
LABEL_9:
  v15 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v34 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1BFAF2860](v34, a6);
      }

      else
      {
        if (v34 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v35 = *(a6 + 8 * v34 + 32);
      }

      v36 = v35;
      a8 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      [v15 addAction_];

      ++v34;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v37 = swift_allocObject();
  v38 = v46;
  *(v37 + 16) = v46;
  *(v37 + 24) = a8;
  sub_1B9F0F1B4(v38, a8);
  v39 = sub_1BA4A6758();

  v56 = sub_1BA2CEA54;
  v57 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1BA0B06D4;
  v55 = &block_descriptor_68;
  v40 = _Block_copy(&aBlock);

  v41 = [objc_opt_self() actionWithTitle:v39 style:0 handler:v40];
  _Block_release(v40);

  [v15 addAction_];
LABEL_26:
  [a1 presentViewController:v15 animated:1 completion:0];
}

void sub_1BA2C91F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v46 = a7;
  v49 = a4;
  v50 = a2;
  v13 = sub_1BA4A3EA8();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1BA4A64F8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v19 = sub_1BA4A7308();
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v20 = sub_1BA4A6528();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BA4A3DD8();

  v21 = sub_1BA4A3E88();
  v22 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v23 = 136315650;
    *(v23 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4E3670, &v51);
    *(v23 + 12) = 2080;
    aBlock = v50;
    v53 = a3;
    sub_1BA2CDEB0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v45 = a8;

    v24 = sub_1BA4A6808();
    v43 = v22;
    v26 = sub_1B9F0B82C(v24, v25, &v51);

    *(v23 + 14) = v26;
    *(v23 + 22) = 2080;
    aBlock = v49;
    v53 = a5;

    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, &v51);

    *(v23 + 24) = v29;
    a8 = v45;
    _os_log_impl(&dword_1B9F07000, v21, v43, "[%s] Received an error: %s, %s", v23, 0x20u);
    v30 = v44;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v23, -1, -1);

    (*(v47 + 8))(v15, v48);
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v31 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  (*(v47 + 8))(v15, v48);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v31 = sub_1BA4A6758();
  if (a5)
  {
LABEL_5:
    v32 = sub_1BA4A6758();
    goto LABEL_9;
  }

LABEL_8:
  v32 = 0;
LABEL_9:
  v15 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

  if (a6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v34 = 0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1BFAF2860](v34, a6);
      }

      else
      {
        if (v34 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v35 = *(a6 + 8 * v34 + 32);
      }

      v36 = v35;
      a8 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      [v15 addAction_];

      ++v34;
      if (a8 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v37 = swift_allocObject();
  v38 = v46;
  *(v37 + 16) = v46;
  *(v37 + 24) = a8;
  sub_1B9F0F1B4(v38, a8);
  v39 = sub_1BA4A6758();

  v56 = sub_1BA2CEA54;
  v57 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1BA0B06D4;
  v55 = &block_descriptor_56_1;
  v40 = _Block_copy(&aBlock);

  v41 = [objc_opt_self() actionWithTitle:v39 style:0 handler:v40];
  _Block_release(v40);

  [v15 addAction_];
LABEL_26:
  [a1 presentViewController:v15 animated:1 completion:0];
}

id sub_1BA2C988C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 startAnimating];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA2C9980(double a1, double a2, double a3, double a4)
{
  sub_1B9F663F0(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_syncObserver] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner] = 0;
  v15 = &v4[OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item];
  v16 = type metadata accessor for AddNewSharingRelationshipCell();
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v23.receiver = v4;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA4A4158();
  v18 = sub_1BA4A4168();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v14, 0, 1, v18);
  v20 = MEMORY[0x1BFAF1F10](v14);
  MEMORY[0x1BFAF1F00](v20);
  if ((*(v19 + 48))(v11, 1, v18))
  {
    sub_1B9F66128(v11, v14);
    MEMORY[0x1BFAF1F10](v14);

    sub_1BA2CDFCC(v11, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  }

  else
  {
    v21 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v11);
  }

  return v17;
}

uint64_t sub_1BA2C9C90()
{
  v1 = v0;
  sub_1B9F663F0(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - v6;
  v8 = sub_1BA4A4428();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1BA2CDF00(&v1[v12], v33, sub_1B9F7B6F8);
  if (!v34)
  {
    return sub_1B9F44348(v33, sub_1B9F7B6F8);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  type metadata accessor for AddNewSharingRelationshipItem();
  result = swift_dynamicCast();
  if (result)
  {
    v32[0] = v9;
    v14 = v32[1];
    sub_1B9F0ADF8(0, &unk_1EDC5E3E0);
    v15 = *(v14 + 104);
    v16 = sub_1BA4A7438();

    v33[0] = v16;
    sub_1B9F1146C();
    sub_1BA2CCBB4(&qword_1EDC5F478, 255, sub_1B9F1146C);
    v17 = sub_1BA4A4F98();

    v18 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_syncObserver;
    swift_beginAccess();
    *&v1[v18] = v17;

    [v1 setUserInteractionEnabled_];
    sub_1BA4A43A8();

    sub_1BA4A43B8();
    LODWORD(v17) = *(v14 + 112);
    v19 = objc_opt_self();
    v20 = [v19 linkColor];
    if (v17 != 2)
    {
      [v19 secondaryLabelColor];
    }

    v21 = sub_1BA4A4238();
    sub_1BA4A41F8();
    v21(v33, 0);
    v34 = v8;
    v35 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    v23 = v32[0];
    (*(v32[0] + 16))(boxed_opaque_existential_1, v11, v8);
    MEMORY[0x1BFAF1EF0](v33);
    v24 = [v1 contentView];
    v25 = v24;
    if (*(v14 + 112))
    {
      v26 = 0.75;
    }

    else
    {
      v26 = 1.0;
    }

    [v24 setAlpha_];

    MEMORY[0x1BFAF1F00]();
    v27 = sub_1BA4A4168();
    if ((*(*(v27 - 8) + 48))(v7, 1, v27))
    {
      sub_1B9F66128(v7, v4);
      MEMORY[0x1BFAF1F10](v4);
      sub_1BA2CDFCC(v7, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    }

    else
    {
      v28 = [v19 secondarySystemGroupedBackgroundColor];
      v29 = v28;
      if (*(v14 + 112))
      {
        v30 = 0.75;
      }

      else
      {
        v30 = 1.0;
      }

      v31 = [v28 colorWithAlphaComponent_];

      sub_1BA4A4118();
      MEMORY[0x1BFAF1F10](v7);
    }

    sub_1BA2CA1B0();

    return (*(v23 + 8))(v11, v8);
  }

  return result;
}

void sub_1BA2CA1B0()
{
  v1 = v0;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696F6774754F2ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x496E6F737265502ELL, 0xED0000657469766ELL);

  v2 = sub_1BA4A6758();
  [v1 setAccessibilityIdentifier_];

  v3 = sub_1BA2C988C();

  MEMORY[0x1BFAF1350](0x72656E6E6970532ELL, 0xE800000000000000);

  v4 = sub_1BA4A6758();

  [v3 setAccessibilityIdentifier_];
}

id sub_1BA2CA34C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddNewSharingRelationshipCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2CA408@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  swift_beginAccess();
  return sub_1BA2CDF00(v1 + v3, a1, sub_1B9F7B6F8);
}

uint64_t sub_1BA2CA474(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA2C9C90();
  return sub_1B9F44348(a1, sub_1B9F7B6F8);
}

uint64_t (*sub_1BA2CA4F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2CA558;
}

uint64_t sub_1BA2CA558(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA2C9C90();
  }

  return result;
}

uint64_t sub_1BA2CA5B4()
{
  v1 = v0;
  sub_1B9F663F0(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = aBlock - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = aBlock - v9;
  v11 = sub_1BA4A40A8();
  v12 = type metadata accessor for AddNewSharingRelationshipCell();
  v27.receiver = v1;
  v27.super_class = v12;
  objc_msgSendSuper2(&v27, sel__bridgedUpdateConfigurationUsingState_, v11);

  if ([v1 isHighlighted])
  {
    MEMORY[0x1BFAF1F00]();
    v13 = sub_1BA4A4168();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13))
    {
      sub_1B9F66128(v10, v7);
      MEMORY[0x1BFAF1F10](v7);
      v14 = MEMORY[0x1E69DC0D8];
      v15 = v10;
      return sub_1BA2CDFCC(v15, &qword_1EDC6B770, v14);
    }

    v18 = objc_opt_self();
    v19 = [v18 systemGray5Color];
    v20 = [v18 tertiarySystemGroupedBackgroundColor];
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = v20;
    v21[4] = 0;
    v21[5] = v19;
    v22 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    aBlock[4] = sub_1B9FD7F54;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_49_0;
    v23 = _Block_copy(aBlock);
    [v22 initWithDynamicProvider_];
    _Block_release(v23);

    sub_1BA4A4118();
    v24 = v10;
  }

  else
  {
    MEMORY[0x1BFAF1F00]();
    v16 = sub_1BA4A4168();
    if ((*(*(v16 - 8) + 48))(v4, 1, v16))
    {
      sub_1B9F66128(v4, v7);
      MEMORY[0x1BFAF1F10](v7);
      v14 = MEMORY[0x1E69DC0D8];
      v15 = v4;
      return sub_1BA2CDFCC(v15, &qword_1EDC6B770, v14);
    }

    v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    v24 = v4;
  }

  return MEMORY[0x1BFAF1F10](v24);
}

uint64_t sub_1BA2CAA20()
{
  sub_1B9F663F0(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v17 = &v14 - v1;
  v15 = sub_1BA4A3FD8();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A3F98();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F663F0(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  sub_1BA2C988C();
  sub_1B9FD7EE0();
  v9 = &v4[*(v8 + 48)];
  v10 = *MEMORY[0x1E69DBF28];
  v11 = sub_1BA4A3F18();
  (*(*(v11 - 8) + 104))(v4, v10, v11);
  *v9 = sub_1B9FF87F0;
  v9[1] = 0;
  (*(v2 + 104))(v4, *MEMORY[0x1E69DBF60], v15);
  v12 = sub_1BA4A3F48();
  (*(*(v12 - 8) + 56))(v17, 1, 1, v12);
  sub_1BA4A3F88();
  sub_1BA4A3EE8();
  (*(v5 + 8))(v7, v16);
  return sub_1BA4A75F8();
}

uint64_t sub_1BA2CADEC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_syncObserver;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_1BA2CAEFC(__int128 *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v18 = 0xD00000000000001ELL;
  v19 = 0x80000001BA4FB6B0;
  sub_1BA4A1788();
  sub_1BA2CCBB4(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v13 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v13);

  (*(v9 + 8))(v11, v8);
  v14 = v19;
  *(v4 + 16) = v18;
  *(v4 + 24) = v14;
  v18 = type metadata accessor for AddNewSharingRelationshipCell();
  sub_1BA2CE9F0();
  *(v4 + 32) = sub_1BA4A6808();
  *(v4 + 40) = v15;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v4 + 48) = sub_1BA4A1318();
  *(v4 + 56) = v16;
  *(v4 + 112) = 2;
  *(v4 + 128) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F25598(a1, v4 + 64);
  *(v4 + 104) = a2;
  *(v4 + 112) = v12;
  return v4;
}

uint64_t sub_1BA2CB14C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  sub_1B9FAB600(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2CB1E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA2CB28C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BA4A3EA8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SummarySharingOnboardingError();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  sub_1BA4A75F8();
  sub_1BA2CDF00(a1, v10, sub_1BA02F428);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v21 = sub_1BA02F428;
    v22 = v10;
  }

  else
  {
    v32 = a3;
    sub_1BA2CDF68(v10, v20);
    sub_1BA4A3DD8();
    sub_1BA2CDF00(v20, v17, type metadata accessor for SummarySharingOnboardingError);
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, &v35);
      *(v25 + 12) = 2080;
      sub_1BA2CDF00(v17, v14, type metadata accessor for SummarySharingOnboardingError);
      v27 = sub_1BA4A6828();
      v29 = v28;
      sub_1B9F44348(v17, type metadata accessor for SummarySharingOnboardingError);
      v30 = sub_1B9F0B82C(v27, v29, &v35);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] Received error when presenting onboarding flow: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    else
    {

      sub_1B9F44348(v17, type metadata accessor for SummarySharingOnboardingError);
    }

    (*(v33 + 8))(v7, v34);
    sub_1BA0C6BA4(v32, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);
    v21 = type metadata accessor for SummarySharingOnboardingError;
    v22 = v20;
  }

  return sub_1B9F44348(v22, v21);
}

uint64_t sub_1BA2CB6B8(void *a1)
{
  sub_1BA2CDE2C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v11 = a1;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v4;
    v17 = v16;
    v29 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, &v29);
    *(v15 + 12) = 2080;
    v28 = a1;
    v18 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v19 = sub_1BA4A6828();
    v21 = sub_1B9F0B82C(v19, v20, &v29);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Received error when fetching suggested categories: %s", v15, 0x16u);
    swift_arrayDestroy();
    v22 = v17;
    v4 = v26;
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    v23 = v15;
    v3 = v27;
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v29 = &unk_1F37FDB28;
  sub_1BA2CDEB0(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA4A4E78();
  sub_1BA2CCBB4(&qword_1EBBF0160, 255, sub_1BA2CDE2C);
  v24 = sub_1BA4A4F98();
  (*(v4 + 8))(v6, v3);
  return v24;
}

uint64_t sub_1BA2CBA08(void *a1)
{
  sub_1BA2CDE2C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v11 = a1;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v4;
    v17 = v16;
    v29 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, &v29);
    *(v15 + 12) = 2080;
    v28 = a1;
    v18 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v19 = sub_1BA4A6828();
    v21 = sub_1B9F0B82C(v19, v20, &v29);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Received error when fetching suggested categories: %s", v15, 0x16u);
    swift_arrayDestroy();
    v22 = v17;
    v4 = v26;
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    v23 = v15;
    v3 = v27;
    MEMORY[0x1BFAF43A0](v23, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v29 = &unk_1F37FDB50;
  sub_1BA2CDEB0(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA4A4E78();
  sub_1BA2CCBB4(&qword_1EBBF0160, 255, sub_1BA2CDE2C);
  v24 = sub_1BA4A4F98();
  (*(v4 + 8))(v6, v3);
  return v24;
}

uint64_t sub_1BA2CBD58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA2CB6B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BA2CBD84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA2CBA08(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BA2CBDB0(void *a1)
{
  v2 = v1;
  sub_1B9F663F0(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v109 = &v81 - v5;
  sub_1BA2CDEB0(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v100 = v6;
  v99 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v81 - v7;
  sub_1BA02DF24(0);
  v102 = v8;
  v101 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E124();
  v105 = v10;
  v104 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8();
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BA4A3EA8();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1BA2CDF00(&v2[v25], &v114, sub_1B9F7B6F8);
  if (!v115)
  {
    return sub_1B9F44348(&v114, sub_1B9F7B6F8);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  type metadata accessor for AddNewSharingRelationshipItem();
  result = swift_dynamicCast();
  if (result)
  {
    v92 = v16;
    v93 = v15;
    v94 = v113;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v90 = a1;
      v29 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
      swift_beginAccess();
      (*(v22 + 16))(v24, v28 + v29, v21);
      v30 = sub_1BA4A4578();
      (*(v22 + 8))(v24, v21);
      v31 = *(v30 + 16);
      v32 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
      swift_beginAccess();
      if (v31)
      {
        v33 = 0;
        v34 = v30 + 40;
        v87 = v31 - 1;
        v91 = MEMORY[0x1E69E7CC0];
        v89 = v2;
        v88 = v30 + 40;
        while (1)
        {
          v35 = (v34 + 16 * v33);
          v2 = v33;
          while (1)
          {
            if (v2 >= *(v30 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v36 = *(v28 + v32);
            if (*(v36 + 16))
            {
              break;
            }

LABEL_7:
            ++v2;
            v35 += 2;
            if (v31 == v2)
            {
              v2 = v89;
              goto LABEL_24;
            }
          }

          v37 = *(v35 - 1);
          v38 = *v35;

          v39 = sub_1B9F24A34(v37, v38);
          if ((v40 & 1) == 0)
          {
            break;
          }

          v41 = (*(v36 + 56) + 48 * v39);
          v42 = v41[1];
          v85 = *v41;
          v43 = v41[2];
          v81 = v41[3];
          v44 = v41[5];
          v84 = v41[4];
          v82 = v42;

          v86 = v43;
          v45 = v81;

          v83 = v44;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v46 = v82;
          }

          else
          {
            v46 = v82;
            v91 = sub_1B9F21540(0, *(v91 + 2) + 1, 1, v91);
          }

          v48 = *(v91 + 2);
          v47 = *(v91 + 3);
          if (v48 >= v47 >> 1)
          {
            v91 = sub_1B9F21540((v47 > 1), v48 + 1, 1, v91);
          }

          v33 = v2 + 1;
          v49 = v91;
          *(v91 + 2) = v48 + 1;
          v50 = &v49[48 * v48];
          *(v50 + 4) = v85;
          *(v50 + 5) = v46;
          *(v50 + 6) = v86;
          *(v50 + 7) = v45;
          v51 = v83;
          *(v50 + 8) = v84;
          *(v50 + 9) = v51;
          v52 = v87 == v2;
          v2 = v89;
          v34 = v88;
          if (v52)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_7;
      }

      v91 = MEMORY[0x1E69E7CC0];
LABEL_24:

      v54 = sub_1BA00A2A0(v91);

      if (v54 >> 62)
      {
LABEL_32:
        v53 = sub_1BA4A7CC8();
      }

      else
      {
        v53 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = v90;
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0;
    }

    v55 = *(v94 + 104);
    sub_1BA4A3DD8();
    v56 = sub_1BA4A3E88();
    v57 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v114 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, &v114);
      _os_log_impl(&dword_1B9F07000, v56, v57, "[%s]: Checking criteria for Sharing onboaring", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1BFAF43A0](v59, -1, -1);
      MEMORY[0x1BFAF43A0](v58, -1, -1);
    }

    (*(v95 + 8))(v19, v96);
    sub_1BA2CAA20();
    *&v114 = sub_1BA02E358();
    v112 = v53;
    v60 = v97;
    sub_1BA4A4E78();
    sub_1BA4A4D08();
    sub_1BA02DF60(0);
    sub_1BA02E060();
    sub_1BA2CCBB4(&qword_1EBBEA0F8, 255, sub_1BA02DF60);
    v61 = v98;
    v62 = v100;
    sub_1BA4A5168();
    (*(v99 + 8))(v60, v62);
    sub_1BA2CCBB4(&qword_1EBBEA7B0, 255, sub_1BA02DF24);
    v63 = v102;
    v64 = sub_1BA4A4F98();
    (*(v101 + 8))(v61, v63);
    v112 = v64;
    v111 = sub_1BA2B1C48(v55);
    v65 = v103;
    sub_1BA4A4AB8();
    sub_1BA2CCBB4(&qword_1EBBEA798, 255, sub_1BA02E124);
    v66 = v106;
    v67 = v105;
    sub_1BA4A5038();
    (*(v104 + 8))(v65, v67);
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v68 = sub_1BA4A7308();
    *&v114 = v68;
    v69 = sub_1BA4A72A8();
    v70 = v109;
    (*(*(v69 - 8) + 56))(v109, 1, 1, v69);
    sub_1BA2CCBB4(&qword_1EBBEA7A8, 255, sub_1BA02E1C8);
    sub_1B9F3DC80();
    v71 = v110;
    v72 = v108;
    sub_1BA4A50A8();
    sub_1BA2CDFCC(v70, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

    (*(v107 + 8))(v66, v72);
    v73 = swift_allocObject();
    *(v73 + 16) = v2;
    *(v73 + 24) = a1;
    sub_1B9F0A534(v94 + 64, &v114);
    v74 = swift_allocObject();
    *(v74 + 16) = a1;
    *(v74 + 24) = v2;
    *(v74 + 32) = v55;
    sub_1B9F25598(&v114, v74 + 40);
    *(v74 + 80) = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_1BA2CCC04;
    *(v75 + 24) = v74;
    sub_1BA2CCBB4(&qword_1EBBEA7B8, 255, sub_1BA02E25C);
    v76 = v2;
    v77 = a1;
    v78 = v76;
    v79 = v55;
    v80 = v93;
    sub_1BA4A4F88();

    (*(v92 + 8))(v71, v80);
  }

  return result;
}

uint64_t sub_1BA2CCBB4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA2CCC24(uint64_t a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SummarySharingOnboardingError();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  sub_1BA2CDF00(a1, v9, sub_1BA02F428);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v20 = sub_1BA02F428;
    v21 = v9;
  }

  else
  {
    v34 = v4;
    sub_1BA2CDF68(v9, v19);
    sub_1BA4A3DD8();
    sub_1BA2CDF00(v19, v16, type metadata accessor for SummarySharingOnboardingError);
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = a2;
      v25 = v24;
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, &v36);
      *(v25 + 12) = 2080;
      sub_1BA2CDF00(v16, v13, type metadata accessor for SummarySharingOnboardingError);
      v27 = sub_1BA4A6828();
      v29 = v28;
      sub_1B9F44348(v16, type metadata accessor for SummarySharingOnboardingError);
      v30 = sub_1B9F0B82C(v27, v29, &v36);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] Received error when presenting onboarding flow: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      v31 = v25;
      a2 = v33;
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    else
    {

      sub_1B9F44348(v16, type metadata accessor for SummarySharingOnboardingError);
    }

    (*(v35 + 8))(v6, v34);
    sub_1BA0C6BA4(a2, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);
    v20 = type metadata accessor for SummarySharingOnboardingError;
    v21 = v19;
  }

  return sub_1B9F44348(v21, v20);
}

void sub_1BA2CD048(char a1, char a2, int a3, void *a4, void *a5, uint64_t a6, int a7, int a8)
{
  LODWORD(v8) = a8;
  v63 = a3;
  v64 = a7;
  v65 = a6;
  v56 = a5;
  sub_1BA2CD9FC();
  v61 = v12;
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA2CDC1C();
  v62 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1BA4A3EA8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3DD8();
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FC8();
  v22 = os_log_type_enabled(v20, v21);
  v66 = a4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v55 = v8;
    v8 = v24;
    v67[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4CE150, v67);
    *(v23 + 12) = 1024;
    *(v23 + 14) = a1 & 1;
    *(v23 + 18) = 1024;
    v25 = a2;
    *(v23 + 20) = a2 & 1;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%s] iCloud sync eligible: %{BOOL}d, less than sharing limit: %{BOOL}d", v23, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v26 = v8;
    LOBYTE(v8) = v55;
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    v27 = v23;
    a4 = v66;
    MEMORY[0x1BFAF43A0](v27, -1, -1);
  }

  else
  {
    v25 = a2;
  }

  (*(v17 + 8))(v19, v16);
  if (a1 & 1) != 0 && (v25)
  {
    if (v8)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    v55 = v28;
    v29 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
    v30 = v56;
    v31 = [v29 initWithHealthStore_];
    v67[0] = sub_1BA440AA8();
    sub_1BA2CDCF0();
    sub_1BA2CCBB4(&qword_1EBBF0148, 255, sub_1BA2CDCF0);
    v32 = sub_1BA4A4F98();

    *(swift_allocObject() + 16) = v30;
    sub_1BA2CDDCC(0, &qword_1EBBEB540);
    swift_allocObject();
    v33 = v30;
    v67[0] = sub_1BA4A4EA8();
    sub_1BA2CDD7C(&qword_1EBBEB548, &qword_1EBBEB540);
    v34 = sub_1BA4A4F98();

    v67[0] = sub_1BA2896CC(v33, v65);
    sub_1BA2CDAEC();
    sub_1BA2CDB90();
    sub_1BA2CCBB4(&qword_1EBBF0128, 255, sub_1BA2CDAEC);
    sub_1BA2CCBB4(&qword_1EBBE9D08, 255, sub_1BA2CDB90);
    v35 = v57;
    sub_1BA4A5018();

    sub_1BA2CDEB0(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA2CCBB4(&qword_1EBBF0138, 255, sub_1BA2CD9FC);
    v36 = v58;
    v37 = v61;
    sub_1BA4A4FE8();
    (*(v59 + 8))(v35, v37);
    sub_1BA2CCBB4(&qword_1EBBF0150, 255, sub_1BA2CDC1C);
    v38 = v62;
    v39 = sub_1BA4A4F98();
    (*(v60 + 8))(v36, v38);
    sub_1BA2CDDCC(0, &qword_1EDC5F400);
    swift_allocObject();
    v67[0] = sub_1BA4A4EA8();
    sub_1BA2CDD7C(&qword_1EDC5F408, &qword_1EDC5F400);
    v40 = sub_1BA4A4F98();

    LOBYTE(v67[0]) = v55;
    type metadata accessor for SummarySharingSelectionFlowContext();
    swift_allocObject();
    LOBYTE(v35) = v63;
    v41 = v64;
    v42 = sub_1B9FF2A10(v32, v34, v39, v40, v67, v64 & 1, v64 & 1u & v63);

    if (v35)
    {
      v43 = v66;
      if (v41)
      {
        sub_1B9F0A534(v65, v67);
        v44 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingSettingUpViewController());
        v45 = v33;

        v46 = sub_1BA2B2378(v67, v45, v42);
LABEL_19:
        v51 = v46;

        v52 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v52 setModalInPresentation_];
        [v43 presentViewController:v52 animated:1 completion:0];

        return;
      }
    }

    else
    {
      *(v42 + 72) = 1;
      v43 = v66;
      if (v41)
      {
        sub_1B9F0ADF8(0, &qword_1EDC5E540);
        if (sub_1BA4A7028())
        {
          sub_1B9F0A534(v65, v67);
          v49 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController());
          v45 = v33;

          v46 = sub_1BA202D18(v45, v67, v42);
        }

        else
        {
          sub_1B9F0A534(v65, v67);
          v53 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());
          v45 = v33;

          v46 = sub_1BA1F1518(v45, v67, v42);
        }

        goto LABEL_19;
      }
    }

    sub_1B9F0A534(v65, v67);
    v50 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingInfoViewController());
    v45 = v33;

    v46 = sub_1BA294B44(v67, v45, v42);
    goto LABEL_19;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v47 = sub_1BA4A1318();
  sub_1BA2C7E48(a4, 0xD00000000000001ALL, 0x80000001BA4FB630, v47, v48, MEMORY[0x1E69E7CC0], 0, 0);
}

void sub_1BA2CD9FC()
{
  if (!qword_1EBBF0118)
  {
    sub_1BA2CDAEC();
    sub_1BA2CDB90();
    sub_1BA2CCBB4(&qword_1EBBF0128, 255, sub_1BA2CDAEC);
    sub_1BA2CCBB4(&qword_1EBBE9D08, 255, sub_1BA2CDB90);
    v0 = sub_1BA4A4BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0118);
    }
  }
}

void sub_1BA2CDAEC()
{
  if (!qword_1EBBF0120)
  {
    sub_1BA2CDEB0(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0120);
    }
  }
}

void sub_1BA2CDB90()
{
  if (!qword_1EBBE9CE0)
  {
    sub_1BA2CDEB0(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE9CE0);
    }
  }
}

void sub_1BA2CDC1C()
{
  if (!qword_1EBBF0130)
  {
    sub_1BA2CD9FC();
    sub_1BA2CDEB0(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA2CCBB4(&qword_1EBBF0138, 255, sub_1BA2CD9FC);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0130);
    }
  }
}

void sub_1BA2CDCF0()
{
  if (!qword_1EBBF0140)
  {
    sub_1BA2CDEB0(255, &qword_1EBBE9CD0, &type metadata for SummarySharingSetupAnalyticsBaseEvent.SharingEntriesAnalytics, MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A4E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0140);
    }
  }
}

uint64_t sub_1BA2CDD7C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BA2CDDCC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2CDDCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A4E98();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1BA2CDE2C()
{
  if (!qword_1EBBF0158)
  {
    sub_1BA2CDEB0(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A4E68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0158);
    }
  }
}

void sub_1BA2CDEB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA2CDF00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA2CDF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingOnboardingError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2CDFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F663F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA2CE03C(char a1, char a2, int a3, void *a4, void *a5, uint64_t a6, int a7, int a8)
{
  LODWORD(v8) = a8;
  v63 = a3;
  v64 = a7;
  v65 = a6;
  v56 = a5;
  sub_1BA2CD9FC();
  v61 = v12;
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA2CDC1C();
  v62 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1BA4A3EA8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3DD8();
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FC8();
  v22 = os_log_type_enabled(v20, v21);
  v66 = a4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v55 = v8;
    v8 = v24;
    v67[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, v67);
    *(v23 + 12) = 1024;
    *(v23 + 14) = a1 & 1;
    *(v23 + 18) = 1024;
    v25 = a2;
    *(v23 + 20) = a2 & 1;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%s] iCloud sync eligible: %{BOOL}d, less than sharing limit: %{BOOL}d", v23, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v26 = v8;
    LOBYTE(v8) = v55;
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    v27 = v23;
    a4 = v66;
    MEMORY[0x1BFAF43A0](v27, -1, -1);
  }

  else
  {
    v25 = a2;
  }

  (*(v17 + 8))(v19, v16);
  if (a1 & 1) != 0 && (v25)
  {
    if (v8)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    v55 = v28;
    v29 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
    v30 = v56;
    v31 = [v29 initWithHealthStore_];
    v67[0] = sub_1BA440AA8();
    sub_1BA2CDCF0();
    sub_1BA2CCBB4(&qword_1EBBF0148, 255, sub_1BA2CDCF0);
    v32 = sub_1BA4A4F98();

    *(swift_allocObject() + 16) = v30;
    sub_1BA2CDDCC(0, &qword_1EBBEB540);
    swift_allocObject();
    v33 = v30;
    v67[0] = sub_1BA4A4EA8();
    sub_1BA2CDD7C(&qword_1EBBEB548, &qword_1EBBEB540);
    v34 = sub_1BA4A4F98();

    v67[0] = sub_1BA2896CC(v33, v65);
    sub_1BA2CDAEC();
    sub_1BA2CDB90();
    sub_1BA2CCBB4(&qword_1EBBF0128, 255, sub_1BA2CDAEC);
    sub_1BA2CCBB4(&qword_1EBBE9D08, 255, sub_1BA2CDB90);
    v35 = v57;
    sub_1BA4A5018();

    sub_1BA2CDEB0(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA2CCBB4(&qword_1EBBF0138, 255, sub_1BA2CD9FC);
    v36 = v58;
    v37 = v61;
    sub_1BA4A4FE8();
    (*(v59 + 8))(v35, v37);
    sub_1BA2CCBB4(&qword_1EBBF0150, 255, sub_1BA2CDC1C);
    v38 = v62;
    v39 = sub_1BA4A4F98();
    (*(v60 + 8))(v36, v38);
    sub_1BA2CDDCC(0, &qword_1EDC5F400);
    swift_allocObject();
    v67[0] = sub_1BA4A4EA8();
    sub_1BA2CDD7C(&qword_1EDC5F408, &qword_1EDC5F400);
    v40 = sub_1BA4A4F98();

    LOBYTE(v67[0]) = v55;
    type metadata accessor for SummarySharingSelectionFlowContext();
    swift_allocObject();
    LOBYTE(v35) = v63;
    v41 = v64;
    v42 = sub_1B9FF2A10(v32, v34, v39, v40, v67, v64 & 1, v64 & 1u & v63);

    if (v35)
    {
      v43 = v66;
      if (v41)
      {
        sub_1B9F0A534(v65, v67);
        v44 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingSettingUpViewController());
        v45 = v33;

        v46 = sub_1BA2B2378(v67, v45, v42);
LABEL_19:
        v51 = v46;

        v52 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v52 setModalInPresentation_];
        [v43 presentViewController:v52 animated:1 completion:0];

        return;
      }
    }

    else
    {
      *(v42 + 72) = 1;
      v43 = v66;
      if (v41)
      {
        sub_1B9F0ADF8(0, &qword_1EDC5E540);
        if (sub_1BA4A7028())
        {
          sub_1B9F0A534(v65, v67);
          v49 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController());
          v45 = v33;

          v46 = sub_1BA202D18(v45, v67, v42);
        }

        else
        {
          sub_1B9F0A534(v65, v67);
          v53 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());
          v45 = v33;

          v46 = sub_1BA1F1518(v45, v67, v42);
        }

        goto LABEL_19;
      }
    }

    sub_1B9F0A534(v65, v67);
    v50 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingInfoViewController());
    v45 = v33;

    v46 = sub_1BA294B44(v67, v45, v42);
    goto LABEL_19;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v47 = sub_1BA4A1318();
  sub_1BA2C8B68(a4, 0xD00000000000001ALL, 0x80000001BA4FB630, v47, v48, MEMORY[0x1E69E7CC0], 0, 0);
}

unint64_t sub_1BA2CE9F0()
{
  result = qword_1EDC642A8[0];
  if (!qword_1EDC642A8[0])
  {
    type metadata accessor for AddNewSharingRelationshipCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC642A8);
  }

  return result;
}

uint64_t StandardWithChartDataTypeDetailConfigurationProvider.configuration(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BA4A1A48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A1A88();
  static DataTypeDetailConfiguration.standardWithChart(measureIdentifier:)(v7, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA2CEB88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BA4A1A48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A1A88();
  static DataTypeDetailConfiguration.standardWithChart(measureIdentifier:)(v7, a2);
  return (*(v5 + 8))(v7, v4);
}

HealthExperienceUI::DataTypeDetailConfiguration __swiftcall StandardWithSampleListDataTypeDetailConfigurationProvider.configuration(for:)(HKObjectType a1)
{
  v3 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v28 = a1.super.isa;
    static DataTypeDetailConfiguration.standardWithSampleList(sampleType:)(v9, v3);
    v10 = v28;
  }

  else
  {
    sub_1BA4A3D88();
    v12 = a1.super.isa;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v14;
      v16 = v15;
      v28 = swift_slowAlloc();
      v29 = v28;
      *v16 = 136315394;
      *(v16 + 4) = sub_1B9F0B82C(0xD000000000000039, 0x80000001BA4CE290, &v29);
      *(v16 + 12) = 2080;
      v17 = v12;
      v18 = [(objc_class *)v17 description];
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v13;
      v20 = v12;
      v22 = v21;

      v23 = sub_1B9F0B82C(v19, v22, &v29);
      v12 = v20;

      *(v16 + 14) = v23;
      v24 = v26;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s]: Configuration error: Cannot use the Sample List configuration with a non-HKSampleType: %s", v16, 0x16u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    return static DataTypeDetailConfiguration.standardWithChart(hkType:)(v12, v3);
  }

  return result;
}

char *ListFeedItemsDataSource.__allocating_init(fetchedResultsController:sectionLayout:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[qword_1EBBF0168] = 0;
  *&v5[qword_1EBC09850] = a2;
  return _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(a1);
}

void sub_1BA2CF04C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EBC09850;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA2CF0AC()
{
  v1 = qword_1EBC09850;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA2CF100(uint64_t a1)
{
  v3 = qword_1EBC09850;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA2CF1B8()
{
  v1 = qword_1EBBF0168;
  v2 = *(v0 + qword_1EBBF0168);
  if (v2)
  {
    v3 = *(v0 + qword_1EBBF0168);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v5 = sub_1BA4A6758();
    [v4 setDateFormat_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t sub_1BA2CF274@<X0>(void *a1@<X8>)
{
  v39 = a1;
  v38 = sub_1BA4A4428();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v37 = sub_1BA4A1728();
  v8 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = qword_1EDC84AD8;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = sub_1BA4A18F8();
  v17 = [v15 objectAtIndexPath_];

  v18 = [v17 relevantStartDate];
  if (v18)
  {
    sub_1BA4A16F8();

    v19 = v37;
    (*(v8 + 32))(v13, v10, v37);
    v20 = sub_1BA2CF1B8();
    v21 = sub_1BA4A16B8();
    v22 = [v20 stringFromDate_];

    v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v25 = v24;

    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v26 = v38;
    (*(v2 + 16))(v4, v7, v38);
    v27 = type metadata accessor for HeaderItem();
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v23, v25, 0, 0, 0, 0, v4, 0, 0);
    v29 = v28;
    (*(v2 + 8))(v7, v26);
    v30 = v39;
    v39[3] = v27;
    v30[4] = sub_1BA011754();
    *v30 = v29;
    return (*(v8 + 8))(v13, v19);
  }

  else
  {
    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v32 = v38;
    (*(v2 + 16))(v4, v7, v38);
    v33 = type metadata accessor for HeaderItem();
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(0, 0xE000000000000000, 0, 0, 0, 0, v4, 0, 0);
    v35 = v34;
    (*(v2 + 8))(v7, v32);
    v36 = v39;
    v39[3] = v33;
    result = sub_1BA011754();
    v36[4] = result;
    *v36 = v35;
  }

  return result;
}

char *ListFeedItemsDataSource.init(fetchedResultsController:sectionLayout:)(void *a1, uint64_t a2)
{
  *(v2 + qword_1EBBF0168) = 0;
  *(v2 + qword_1EBC09850) = a2;
  return _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(a1);
}

id sub_1BA2CF680()
{
  v1 = qword_1EBC09850;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BA2CF700()
{
  v1 = *(v0 + qword_1EBBF0168);
}

id ListFeedItemsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListFeedItemsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ListFeedItemsDataSource()
{
  result = qword_1EBBF0170;
  if (!qword_1EBBF0170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA2CF7C4(uint64_t a1)
{
  v2 = *(a1 + qword_1EBBF0168);
}

id sub_1BA2CF834()
{
  v1 = *v0;
  v2 = qword_1EBC09850;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_1BA2CFAD4(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA2CFB6C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F6DEE0(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA2CFBD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(a1, v1 + v3);
  return swift_endAccess();
}

id DataTypeTileHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeTileHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataTypeTileHeaderView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint] = 0;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
  v4 = type metadata accessor for TileHeaderDetailKind();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_minimumViewHeight] = 0x4040800000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToTop] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToBottom] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToAccessory] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToDetail] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailToAccessory] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_glyphBaselineOffset] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DataTypeTileHeaderView();
  v6 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 defaultCenter];
    [v9 addObserver:v8 selector:sel_updateTitleText name:*MEMORY[0x1E69A40A0] object:0];

    a1 = v9;
  }

  return v6;
}

uint64_t sub_1BA2CFF40()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v9 = sub_1BA4A7308();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1BA2D1E98;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_80;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A9A4(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_1BA2D01F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = v3;
    sub_1B9F6F658();
    if (v5)
    {
      v6 = sub_1BA4A6758();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText_];
  }
}

id sub_1BA2D03A4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v16 = *(v0 + v7);
  v8 = v2;
  v9 = v4;
  v10 = v6;
  [v8 removeFromSuperview];
  [v9 removeFromSuperview];
  [v10 removeFromSuperview];
  [v16 removeFromSuperview];
  sub_1B9F6DF70(0, &unk_1EDC5E200, &qword_1EDC6B4A0, 0x1E69DD250, sub_1B9F0ADF8);
  swift_arrayDestroy();
  v11 = *(v0 + v1);
  *(v0 + v1) = 0;

  v12 = *(v0 + v3);
  *(v0 + v3) = 0;

  v13 = *(v0 + v5);
  *(v0 + v5) = 0;

  v14 = *(v0 + v7);
  *(v0 + v7) = 0;

  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint);
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

void sub_1BA2D0568(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA2D0620()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA2D066C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA2D0724(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA2D07DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA2D0894()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = &selRef_preferredContentSizeCategory;
  if (v7)
  {
    v9 = *MEMORY[0x1E69DDD80];
    v10 = *MEMORY[0x1E69DB980];
    v11 = v7;
    v12 = sub_1B9F6B774(v9, v10, 0, 0, 0, 0, 1);
    [v11 setFont_];
  }

  v13 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    v55 = v3;
    v15 = *MEMORY[0x1E69DDD28];
    v16 = objc_opt_self();
    v17 = v14;
    v18 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
    if (v18)
    {
      v19 = v18;
      v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
    }

    else
    {
      v53 = v2;
      sub_1BA4A3DD8();
      v21 = v15;
      v22 = sub_1BA4A3E88();
      v23 = sub_1BA4A6FB8();
      v54 = v21;

      v52 = v23;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v56 = v51;
        *v24 = 136315906;
        v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v27 = sub_1B9F0B82C(v25, v26, &v56);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2080;
        v57 = 0;
        v58 = 1;
        sub_1B9F0A9A4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v28 = sub_1BA4A6808();
        v30 = sub_1B9F0B82C(v28, v29, &v56);

        *(v24 + 14) = v30;
        *(v24 + 22) = 2080;
        LODWORD(v57) = 0;
        type metadata accessor for SymbolicTraits(0);
        v31 = sub_1BA4A6808();
        v33 = sub_1B9F0B82C(v31, v32, &v56);

        *(v24 + 24) = v33;
        *(v24 + 32) = 2112;
        v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v24 + 34) = v34;
        v35 = v50;
        *v50 = v34;
        _os_log_impl(&dword_1B9F07000, v22, v52, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v24, 0x2Au);
        sub_1B9F6F238(v35, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v35, -1, -1);
        v36 = v51;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v36, -1, -1);
        v37 = v24;
        v8 = &selRef_preferredContentSizeCategory;
        MEMORY[0x1BFAF43A0](v37, -1, -1);
      }

      (*(v55 + 8))(v5, v53);
      v19 = [v16 preferredFontDescriptorWithTextStyle_];
      v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
    }

    v38 = v20;

    [v17 v8[98]];
  }

  v39 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v40 = *(v1 + v39);
  if (v40)
  {
    v41 = objc_opt_self();
    v42 = *MEMORY[0x1E69DDCF8];
    v43 = v40;
    v44 = [v41 _preferredFontForTextStyle_variant_];
    if (!v44)
    {
      __break(1u);
      return;
    }

    v45 = v44;
    [v43 v8[98]];
  }

  sub_1B9F711CC();
  v46 = *(v1 + v13);
  if (v46)
  {
    v47 = v46;
    sub_1B9F6F658();
    if (v48)
    {
      v49 = sub_1BA4A6758();
    }

    else
    {
      v49 = 0;
    }

    [v47 setText_];
  }

  sub_1B9F71D38();
}

void sub_1BA2D0F04(uint64_t a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v7, v20);
  if (!v21)
  {
    sub_1B9F6F238(v20, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_11;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18);
  sub_1B9F0D950(0, qword_1EDC6E100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_11;
  }

  if (!*(&v23 + 1))
  {
LABEL_11:
    sub_1B9F6F238(&v22, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    goto LABEL_12;
  }

  sub_1B9F1134C(&v22, v25);
  v8 = v26;
  v9 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v10 = (*(v9 + 40))(v8, v9);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 displayTypeController];

    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = [v12 displayTypeForObjectType_];

    if (v13)
    {
      v14 = [objc_opt_self() categoryWithID_];
      if (v14)
      {
        v15 = v14;
        [v14 color];

        __swift_destroy_boxed_opaque_existential_1(v25);
        return;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_12:
  sub_1BA4A3DD8();
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B9F07000, v16, v17, "Invalid configuration: unable to resolve hkType. If the DataTypeTileHeaderDataSource provides a hkType, it must also provide a healthStore", v18, 2u);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

void sub_1BA2D126C(uint64_t a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v7, v20);
  if (!v21)
  {
    sub_1B9F6F238(v20, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_10;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18);
  sub_1B9F0D950(0, qword_1EDC6E100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_10;
  }

  if (!*(&v23 + 1))
  {
LABEL_10:
    sub_1B9F6F238(&v22, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    goto LABEL_11;
  }

  sub_1B9F1134C(&v22, v25);
  v8 = v26;
  v9 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v10 = (*(v9 + 40))(v8, v9);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 displayTypeController];

    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = [v12 displayTypeForObjectType_];

    if (v13)
    {
      v14 = [v13 localization];
      v15 = [v14 displayName];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      __swift_destroy_boxed_opaque_existential_1(v25);
      return;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_11:
  sub_1BA4A3DD8();
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B9F07000, v16, v17, "Invalid configuration: unable to resolve hkType. If the DataTypeTileHeaderDataSource provides a hkType, it must also provide a healthStore", v18, 2u);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

id DataTypeTileHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeTileHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA2D16F4(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA2D17E0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA2D1840(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_chromeHostView;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t CellHeaderXMarkAccessoryView.init(tapAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B9F0E310(0);
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t CellHeaderXMarkAccessoryView.body.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1B9F0F1B4(v2, v1);
  sub_1BA2D20D0(0);
  sub_1BA2D2840(&qword_1EDC5EFE0, sub_1BA2D20D0, sub_1BA2D217C, sub_1BA2D221C);

  return sub_1BA4A61C8();
}

uint64_t sub_1BA2D1FD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A6128();
  sub_1BA4A5CF8();
  sub_1BA4A5CB8();
  v3 = sub_1BA4A5D08();

  KeyPath = swift_getKeyPath();
  sub_1BA2D20D0(0);
  v6 = (a1 + *(v5 + 36));
  sub_1BA267DE4(0);
  v8 = *(v7 + 28);
  sub_1BA4A5898();
  v9 = sub_1BA4A58B8();
  (*(*(v9 - 8) + 56))(v6 + v8, 0, 1, v9);
  result = swift_getKeyPath();
  *v6 = result;
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  return result;
}

void sub_1BA2D2104()
{
  if (!qword_1EDC5F150)
  {
    sub_1B9F86930(255, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F150);
    }
  }
}

unint64_t sub_1BA2D217C()
{
  result = qword_1EDC5F158;
  if (!qword_1EDC5F158)
  {
    sub_1BA2D2104();
    sub_1B9F89514(&qword_1EDC5EC50, &qword_1EDC5EC48, &qword_1EDC5EBD8, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F158);
  }

  return result;
}

uint64_t sub_1BA2D2250()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1B9F0F1B4(v2, v1);
  sub_1BA2D20D0(0);
  sub_1BA2D2840(&qword_1EDC5EFE0, sub_1BA2D20D0, sub_1BA2D217C, sub_1BA2D221C);

  return sub_1BA4A61C8();
}

uint64_t CellHeaderDetailTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F252FC();

  v2 = sub_1BA4A5E18();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1BA2D23E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BA4A56A8();
  *a1 = result;
  return result;
}

uint64_t sub_1BA2D245C(uint64_t a1)
{
  v2 = sub_1BA4A6188();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BA4A5518();
}

uint64_t sub_1BA2D2524(uint64_t a1, uint64_t a2)
{
  sub_1B9F89828();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2D2588@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA4A5668();
  *a1 = result;
  return result;
}

uint64_t sub_1BA2D25DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BA4A56C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BA2D2640(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA2D26DC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1BA2D2738(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1BA2D2798()
{
  if (!qword_1EDC5EB80)
  {
    sub_1BA2D20D0(255);
    sub_1BA2D2840(&qword_1EDC5EFE0, sub_1BA2D20D0, sub_1BA2D217C, sub_1BA2D221C);
    v0 = sub_1BA4A61F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EB80);
    }
  }
}

uint64_t sub_1BA2D2840(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2D28CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA2D2974(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA2D29BC()
{
  result = qword_1EDC5F1E0;
  if (!qword_1EDC5F1E0)
  {
    sub_1B9F88B28();
    sub_1B9F89514(&qword_1EDC5EC10, &qword_1EDC5EC08, &qword_1EDC6B640, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F1E0);
  }

  return result;
}

uint64_t sub_1BA2D2A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UITraitCollection.presentation.getter()
{
  sub_1B9F3AEE8();

  return sub_1BA4A7358();
}

unint64_t sub_1BA2D2B18(char a1)
{
  result = 0x467972616D6D7573;
  switch(a1)
  {
    case 1:
      result = 0x446C6C41776F6873;
      break;
    case 2:
      result = 0x686372616573;
      break;
    case 3:
      result = 0x79726F6765746163;
      break;
    case 4:
      result = 0x6C6961746564;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x684368746C616568;
      break;
    case 7:
      result = 0x656C69666F7270;
      break;
    case 8:
      result = 0x4F676E6972616873;
      break;
    case 9:
      result = 0x50676E6972616873;
      break;
    case 10:
      result = 0x72616265646973;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x697461636964656DLL;
      break;
    case 13:
      result = 0x646E6572546C6C61;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BA2D2CE8(uint64_t a1)
{
  v2 = sub_1BA2D4490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2D24(uint64_t a1)
{
  v2 = sub_1BA2D4490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2D60(uint64_t a1)
{
  v2 = sub_1BA2D47D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2D9C(uint64_t a1)
{
  v2 = sub_1BA2D47D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA2D71E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA2D2E14(uint64_t a1)
{
  v2 = sub_1BA2D4928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2E50(uint64_t a1)
{
  v2 = sub_1BA2D4928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2E8C(uint64_t a1)
{
  v2 = sub_1BA2D4730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2EC8(uint64_t a1)
{
  v2 = sub_1BA2D4730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2F04(uint64_t a1)
{
  v2 = sub_1BA2D4784();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2F40(uint64_t a1)
{
  v2 = sub_1BA2D4784();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2F7C(uint64_t a1)
{
  v2 = sub_1BA2D443C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D2FB8(uint64_t a1)
{
  v2 = sub_1BA2D443C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D2FF4(uint64_t a1)
{
  v2 = sub_1BA2D46DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3030(uint64_t a1)
{
  v2 = sub_1BA2D46DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D306C(uint64_t a1)
{
  v2 = sub_1BA2D4538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D30A8(uint64_t a1)
{
  v2 = sub_1BA2D4538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D30E4(uint64_t a1)
{
  v2 = sub_1BA2D44E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3120(uint64_t a1)
{
  v2 = sub_1BA2D44E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D315C(uint64_t a1)
{
  v2 = sub_1BA2D4688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3198(uint64_t a1)
{
  v2 = sub_1BA2D4688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D31D4(uint64_t a1)
{
  v2 = sub_1BA2D482C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3210(uint64_t a1)
{
  v2 = sub_1BA2D482C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D324C(uint64_t a1)
{
  v2 = sub_1BA2D4634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3288(uint64_t a1)
{
  v2 = sub_1BA2D4634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D32C4(uint64_t a1)
{
  v2 = sub_1BA2D45E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3300(uint64_t a1)
{
  v2 = sub_1BA2D45E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D333C(uint64_t a1)
{
  v2 = sub_1BA2D4880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3378(uint64_t a1)
{
  v2 = sub_1BA2D4880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D33B4(uint64_t a1)
{
  v2 = sub_1BA2D458C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D33F0(uint64_t a1)
{
  v2 = sub_1BA2D458C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2D342C(uint64_t a1)
{
  v2 = sub_1BA2D48D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2D3468(uint64_t a1)
{
  v2 = sub_1BA2D48D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Presentation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1BA2D5BD8(0, &qword_1EDC5DDE8, sub_1BA2D443C, &type metadata for Presentation.EditFavoritesViewCodingKeys, MEMORY[0x1E69E6F58]);
  v106 = *(v5 - 8);
  v107 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v65 - v6;
  sub_1BA2D5BD8(0, &qword_1EDC5DE28, sub_1BA2D4490, &type metadata for Presentation.AllTrendsCodingKeys, v4);
  v103 = *(v7 - 8);
  v104 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v65 - v8;
  sub_1BA2D5BD8(0, &qword_1EDC5DE08, sub_1BA2D44E4, &type metadata for Presentation.MedicationsRoomCodingKeys, v4);
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v65 - v10;
  sub_1BA2D5BD8(0, &qword_1EDC5DDF8, sub_1BA2D4538, &type metadata for Presentation.InternalSettingsCodingKeys, v4);
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v65 - v12;
  sub_1BA2D5BD8(0, &qword_1EDC5DE38, sub_1BA2D458C, &type metadata for Presentation.SidebarCodingKeys, v4);
  v94 = *(v13 - 8);
  v95 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v65 - v14;
  sub_1BA2D5BD8(0, &qword_1EDC5DE10, sub_1BA2D45E0, &type metadata for Presentation.SharingPreviewCodingKeys, v4);
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v65 - v16;
  sub_1BA2D5BD8(0, &qword_1EDC5DE00, sub_1BA2D4634, &type metadata for Presentation.SharingOverviewCodingKeys, v4);
  v89 = v17;
  v88 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v65 - v18;
  sub_1BA2D5BD8(0, &qword_1EDC5DE40, sub_1BA2D4688, &type metadata for Presentation.ProfileCodingKeys, v4);
  v86 = v19;
  v85 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v65 - v20;
  sub_1BA2D5BD8(0, &qword_1EDC5DE60, sub_1BA2D46DC, &type metadata for Presentation.HealthChecklistCodingKeys, v4);
  v83 = v21;
  v82 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v65 - v22;
  sub_1BA2D5BD8(0, &qword_1EDC5DDF0, sub_1BA2D4730, &type metadata for Presentation.CustomShowAllDataCodingKeys, v4);
  v80 = v23;
  v79 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v78 = &v65 - v24;
  sub_1BA2D5BD8(0, &qword_1EDC5DE50, sub_1BA2D4784, &type metadata for Presentation.DetailCodingKeys, v4);
  v77 = v25;
  v76 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v75 = &v65 - v26;
  sub_1BA2D5BD8(0, &qword_1EDC5DE30, sub_1BA2D47D8, &type metadata for Presentation.CategoryCodingKeys, v4);
  v74 = v27;
  v73 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v65 - v28;
  sub_1BA2D5BD8(0, &qword_1EDC5DE48, sub_1BA2D482C, &type metadata for Presentation.SearchCodingKeys, v4);
  v71 = v29;
  v70 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v65 - v30;
  sub_1BA2D5BD8(0, &qword_1EDC5DE20, sub_1BA2D4880, &type metadata for Presentation.ShowAllDataCodingKeys, v4);
  v68 = v31;
  v67 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v66 = &v65 - v32;
  sub_1BA2D5BD8(0, &qword_1EDC5DE18, sub_1BA2D48D4, &type metadata for Presentation.SummaryFeedCodingKeys, v4);
  v34 = v33;
  v65 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v65 - v35;
  sub_1BA2D5BD8(0, &qword_1EDC5DE58, sub_1BA2D4928, &type metadata for Presentation.CodingKeys, v4);
  v109 = v37;
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v65 - v39;
  v41 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA2D4928();
  v108 = v40;
  sub_1BA4A8548();
  v42 = (v38 + 8);
  switch(v41)
  {
    case 1:
      v111 = 1;
      sub_1BA2D4880();
      v60 = v66;
      v46 = v108;
      v47 = v109;
      sub_1BA4A81F8();
      (*(v67 + 8))(v60, v68);
      goto LABEL_15;
    case 2:
      v112 = 2;
      sub_1BA2D482C();
      v57 = v69;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v54 = *(v70 + 8);
      v55 = v57;
      v56 = &v103;
      goto LABEL_20;
    case 3:
      v113 = 3;
      sub_1BA2D47D8();
      v58 = v72;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v54 = *(v73 + 8);
      v55 = v58;
      v56 = &v106;
      goto LABEL_20;
    case 4:
      v114 = 4;
      sub_1BA2D4784();
      v53 = v75;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v54 = *(v76 + 8);
      v55 = v53;
      v56 = &v109;
      goto LABEL_20;
    case 5:
      v115 = 5;
      sub_1BA2D4730();
      v61 = v78;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v54 = *(v79 + 8);
      v55 = v61;
      v56 = v117;
      goto LABEL_20;
    case 6:
      v116 = 6;
      sub_1BA2D46DC();
      v63 = v81;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v54 = *(v82 + 8);
      v55 = v63;
      v56 = &v118;
      goto LABEL_20;
    case 7:
      v117[16] = 7;
      sub_1BA2D4688();
      v59 = v84;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v54 = *(v85 + 8);
      v55 = v59;
      v56 = &v119;
      goto LABEL_20;
    case 8:
      v117[17] = 8;
      sub_1BA2D4634();
      v64 = v87;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v54 = *(v88 + 8);
      v55 = v64;
      v56 = &v120;
LABEL_20:
      v54(v55, *(v56 - 32));
      goto LABEL_21;
    case 9:
      v117[18] = 9;
      sub_1BA2D45E0();
      v50 = v90;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v52 = v91;
      v51 = v92;
      goto LABEL_18;
    case 10:
      v117[19] = 10;
      sub_1BA2D458C();
      v50 = v93;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v52 = v94;
      v51 = v95;
      goto LABEL_18;
    case 11:
      v117[20] = 11;
      sub_1BA2D4538();
      v50 = v96;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v52 = v97;
      v51 = v98;
      goto LABEL_18;
    case 12:
      v117[21] = 12;
      sub_1BA2D44E4();
      v50 = v99;
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      v52 = v100;
      v51 = v101;
LABEL_18:
      (*(v52 + 8))(v50, v51);
      goto LABEL_21;
    case 13:
      v117[22] = 13;
      sub_1BA2D4490();
      v45 = v102;
      v46 = v108;
      v47 = v109;
      sub_1BA4A81F8();
      v49 = v103;
      v48 = v104;
      goto LABEL_14;
    case 14:
      v117[23] = 14;
      sub_1BA2D443C();
      v45 = v105;
      v46 = v108;
      v47 = v109;
      sub_1BA4A81F8();
      v49 = v106;
      v48 = v107;
LABEL_14:
      (*(v49 + 8))(v45, v48);
LABEL_15:
      result = (*v42)(v46, v47);
      break;
    default:
      v110 = 0;
      sub_1BA2D48D4();
      v44 = v108;
      v43 = v109;
      sub_1BA4A81F8();
      (*(v65 + 8))(v36, v34);
LABEL_21:
      result = (*v42)(v44, v43);
      break;
  }

  return result;
}

unint64_t sub_1BA2D443C()
{
  result = qword_1EDC6DC68;
  if (!qword_1EDC6DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC68);
  }

  return result;
}

unint64_t sub_1BA2D4490()
{
  result = qword_1EDC6DD28;
  if (!qword_1EDC6DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD28);
  }

  return result;
}

unint64_t sub_1BA2D44E4()
{
  result = qword_1EDC6DCC8;
  if (!qword_1EDC6DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCC8);
  }

  return result;
}

unint64_t sub_1BA2D4538()
{
  result = qword_1EDC6DC98;
  if (!qword_1EDC6DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC98);
  }

  return result;
}

unint64_t sub_1BA2D458C()
{
  result = qword_1EDC6DD58;
  if (!qword_1EDC6DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD58);
  }

  return result;
}

unint64_t sub_1BA2D45E0()
{
  result = qword_1EDC6DCE0;
  if (!qword_1EDC6DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCE0);
  }

  return result;
}

unint64_t sub_1BA2D4634()
{
  result = qword_1EDC6DCB0;
  if (!qword_1EDC6DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCB0);
  }

  return result;
}

unint64_t sub_1BA2D4688()
{
  result = qword_1EDC6DD70;
  if (!qword_1EDC6DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD70);
  }

  return result;
}

unint64_t sub_1BA2D46DC()
{
  result = qword_1EDC6DDD0;
  if (!qword_1EDC6DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DDD0);
  }

  return result;
}

unint64_t sub_1BA2D4730()
{
  result = qword_1EDC6DC70;
  if (!qword_1EDC6DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC70);
  }

  return result;
}

unint64_t sub_1BA2D4784()
{
  result = qword_1EDC6DDA0;
  if (!qword_1EDC6DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DDA0);
  }

  return result;
}

unint64_t sub_1BA2D47D8()
{
  result = qword_1EDC6DD40;
  if (!qword_1EDC6DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD40);
  }

  return result;
}

unint64_t sub_1BA2D482C()
{
  result = qword_1EDC6DD88;
  if (!qword_1EDC6DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD88);
  }

  return result;
}

unint64_t sub_1BA2D4880()
{
  result = qword_1EDC6DD10;
  if (!qword_1EDC6DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD10);
  }

  return result;
}

unint64_t sub_1BA2D48D4()
{
  result = qword_1EDC6DCF8;
  if (!qword_1EDC6DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCF8);
  }

  return result;
}

unint64_t sub_1BA2D4928()
{
  result = qword_1EDC6DDB8;
  if (!qword_1EDC6DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DDB8);
  }

  return result;
}

uint64_t Presentation.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t Presentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v116 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1BA2D5BD8(0, &qword_1EDC5DF28, sub_1BA2D443C, &type metadata for Presentation.EditFavoritesViewCodingKeys, MEMORY[0x1E69E6F48]);
  v101 = v4;
  v100 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v71 - v5;
  sub_1BA2D5BD8(0, &qword_1EDC5DF68, sub_1BA2D4490, &type metadata for Presentation.AllTrendsCodingKeys, v3);
  v99 = v6;
  v98 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v71 - v7;
  sub_1BA2D5BD8(0, &qword_1EDC5DF48, sub_1BA2D44E4, &type metadata for Presentation.MedicationsRoomCodingKeys, v3);
  v97 = v8;
  v96 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v71 - v9;
  sub_1BA2D5BD8(0, &qword_1EDC5DF38, sub_1BA2D4538, &type metadata for Presentation.InternalSettingsCodingKeys, v3);
  v95 = v10;
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v71 - v11;
  sub_1BA2D5BD8(0, &qword_1EDC5DF78, sub_1BA2D458C, &type metadata for Presentation.SidebarCodingKeys, v3);
  v93 = v12;
  v92 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v71 - v13;
  sub_1BA2D5BD8(0, &qword_1EDC5DF50, sub_1BA2D45E0, &type metadata for Presentation.SharingPreviewCodingKeys, v3);
  v91 = v14;
  v90 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v71 - v15;
  sub_1BA2D5BD8(0, &qword_1EDC5DF40, sub_1BA2D4634, &type metadata for Presentation.SharingOverviewCodingKeys, v3);
  v89 = v16;
  v88 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v71 - v17;
  sub_1BA2D5BD8(0, &qword_1EDC5DF80, sub_1BA2D4688, &type metadata for Presentation.ProfileCodingKeys, v3);
  v87 = v18;
  v86 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v71 - v19;
  sub_1BA2D5BD8(0, &qword_1EDC5DFA0, sub_1BA2D46DC, &type metadata for Presentation.HealthChecklistCodingKeys, v3);
  v85 = v20;
  v84 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v71 - v21;
  sub_1BA2D5BD8(0, &qword_1EDC5DF30, sub_1BA2D4730, &type metadata for Presentation.CustomShowAllDataCodingKeys, v3);
  v82 = v22;
  v83 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v71 - v23;
  sub_1BA2D5BD8(0, &qword_1EDC5DF90, sub_1BA2D4784, &type metadata for Presentation.DetailCodingKeys, v3);
  v78 = v24;
  v81 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v115 = &v71 - v25;
  sub_1BA2D5BD8(0, &qword_1EDC5DF70, sub_1BA2D47D8, &type metadata for Presentation.CategoryCodingKeys, v3);
  v80 = v26;
  v79 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v71 - v27;
  sub_1BA2D5BD8(0, &qword_1EDC5DF88, sub_1BA2D482C, &type metadata for Presentation.SearchCodingKeys, v3);
  v77 = v28;
  v76 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v113 = &v71 - v29;
  sub_1BA2D5BD8(0, &qword_1EDC5DF60, sub_1BA2D4880, &type metadata for Presentation.ShowAllDataCodingKeys, v3);
  v75 = v30;
  v74 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v102 = &v71 - v31;
  sub_1BA2D5BD8(0, &qword_1EDC5DF58, sub_1BA2D48D4, &type metadata for Presentation.SummaryFeedCodingKeys, v3);
  v33 = v32;
  v73 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v71 - v34;
  sub_1BA2D5BD8(0, &qword_1EDC5DF98, sub_1BA2D4928, &type metadata for Presentation.CodingKeys, v3);
  v37 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = a1[3];
  v119 = a1;
  v40 = a1;
  v42 = &v71 - v41;
  __swift_project_boxed_opaque_existential_1(v40, v39);
  sub_1BA2D4928();
  v117 = v42;
  v43 = v118;
  sub_1BA4A8528();
  if (v43)
  {
    goto LABEL_6;
  }

  v118 = v35;
  v72 = v33;
  v44 = v113;
  v45 = v114;
  v47 = v115;
  v46 = v116;
  v48 = v38;
  v49 = sub_1BA4A81D8();
  v50 = (2 * *(v49 + 16)) | 1;
  v120 = v49;
  v121 = v49 + 32;
  v122 = 0;
  v123 = v50;
  v51 = sub_1B9FFD3B8();
  if (v122 != v123 >> 1)
  {
LABEL_5:
    v54 = sub_1BA4A7E68();
    swift_allocError();
    v56 = v55;
    sub_1B9FFFD90();
    *v56 = &type metadata for Presentation;
    v57 = v117;
    sub_1BA4A8128();
    sub_1BA4A7E48();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    (*(v48 + 8))(v57, v37);
    swift_unknownObjectRelease();
LABEL_6:
    v58 = v119;
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v52 = v51;
  switch(v51)
  {
    case 0:
      v124 = 0;
      sub_1BA2D48D4();
      v53 = v118;
      sub_1BA4A8118();
      (*(v73 + 8))(v53, v72);
      break;
    case 1:
      v124 = 1;
      sub_1BA2D4880();
      v65 = v102;
      sub_1BA4A8118();
      (*(v74 + 8))(v65, v75);
      break;
    case 2:
      v124 = 2;
      sub_1BA2D482C();
      sub_1BA4A8118();
      (*(v76 + 8))(v44, v77);
      break;
    case 3:
      v124 = 3;
      sub_1BA2D47D8();
      sub_1BA4A8118();
      (*(v79 + 8))(v45, v80);
      break;
    case 4:
      v124 = 4;
      sub_1BA2D4784();
      sub_1BA4A8118();
      (*(v81 + 8))(v47, v78);
      break;
    case 5:
      v124 = 5;
      sub_1BA2D4730();
      v66 = v103;
      sub_1BA4A8118();
      (*(v83 + 8))(v66, v82);
      break;
    case 6:
      v124 = 6;
      sub_1BA2D46DC();
      v68 = v104;
      sub_1BA4A8118();
      (*(v84 + 8))(v68, v85);
      break;
    case 7:
      v124 = 7;
      sub_1BA2D4688();
      v64 = v105;
      sub_1BA4A8118();
      (*(v86 + 8))(v64, v87);
      break;
    case 8:
      v124 = 8;
      sub_1BA2D4634();
      v70 = v106;
      sub_1BA4A8118();
      (*(v88 + 8))(v70, v89);
      break;
    case 9:
      v124 = 9;
      sub_1BA2D45E0();
      v63 = v107;
      sub_1BA4A8118();
      (*(v90 + 8))(v63, v91);
      break;
    case 10:
      v124 = 10;
      sub_1BA2D458C();
      v69 = v108;
      sub_1BA4A8118();
      (*(v92 + 8))(v69, v93);
      break;
    case 11:
      v124 = 11;
      sub_1BA2D4538();
      v61 = v109;
      sub_1BA4A8118();
      (*(v94 + 8))(v61, v95);
      break;
    case 12:
      v124 = 12;
      sub_1BA2D44E4();
      v62 = v110;
      sub_1BA4A8118();
      (*(v96 + 8))(v62, v97);
      break;
    case 13:
      v124 = 13;
      sub_1BA2D4490();
      v67 = v111;
      sub_1BA4A8118();
      (*(v98 + 8))(v67, v99);
      break;
    case 14:
      v124 = 14;
      sub_1BA2D443C();
      v60 = v112;
      sub_1BA4A8118();
      (*(v100 + 8))(v60, v101);
      break;
    default:
      goto LABEL_5;
  }

  (*(v48 + 8))(v117, v37);
  swift_unknownObjectRelease();
  v58 = v119;
  *v46 = v52;
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

void sub_1BA2D5BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t Presentation.description.getter()
{
  result = 0x467972616D6D7573;
  switch(*v0)
  {
    case 1:
      result = 0x446C6C41776F6873;
      break;
    case 2:
      result = 0x686372616573;
      break;
    case 3:
      result = 0x79726F6765746163;
      break;
    case 4:
      result = 0x6C6961746564;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x684368746C616568;
      break;
    case 7:
      result = 0x656C69666F7270;
      break;
    case 8:
      result = 0x4F676E6972616873;
      break;
    case 9:
      result = 0x50676E6972616873;
      break;
    case 0xA:
      result = 0x72616265646973;
      break;
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0x697461636964656DLL;
      break;
    case 0xD:
      result = 0x646E6572546C6C61;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static HKTraitPresentation.defaultValue.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBBF0190;
  return result;
}

uint64_t static HKTraitPresentation.defaultValue.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBBF0190 = v1;
  return result;
}

uint64_t static HKTraitPresentation.identifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBF0198;

  return v0;
}

uint64_t static HKTraitPresentation.identifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBF0198 = a1;
  off_1EBBF01A0 = a2;
}

uint64_t sub_1BA2D603C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBF0198 = v2;
  off_1EBBF01A0 = v1;
}

uint64_t UIMutableTraits.presentation.getter()
{
  sub_1B9F3AEE8();

  return sub_1BA4A3FF8();
}

uint64_t (*UIMutableTraits.presentation.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = a2;
  sub_1B9F3AEE8();
  sub_1BA4A3FF8();
  return sub_1BA2D6178;
}

uint64_t sub_1BA2D6178(uint64_t a1)
{
  *(a1 + 24) = *(a1 + 25);
  sub_1B9F3AEE8();
  return sub_1BA4A4008();
}

uint64_t sub_1BA2D61D4()
{
  result = swift_beginAccess();
  byte_1EBBF01A8 = byte_1EBBF0190;
  return result;
}

uint64_t static HKTraitPresentationKey.defaultValue.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDC67248 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EBBF01A8;
  return result;
}

uint64_t sub_1BA2D6284@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDC67248 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1EBBF01A8;
  return result;
}

uint64_t sub_1BA2D62E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B9F8090C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.presentation.getter()
{
  sub_1B9F7F1F8();

  return sub_1BA4A5728();
}

uint64_t (*EnvironmentValues.presentation.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1B9F7F1F8();
  sub_1BA4A5728();
  return sub_1BA2D6434;
}

uint64_t static HKTraitPresentationKey.write(to:value:)(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1B9F3AEE8();
  return sub_1BA4A4008();
}

unint64_t sub_1BA2D6690()
{
  result = qword_1EBBF01B0;
  if (!qword_1EBBF01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF01B0);
  }

  return result;
}

unint64_t sub_1BA2D66E8()
{
  result = qword_1EDC6DDA8;
  if (!qword_1EDC6DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DDA8);
  }

  return result;
}

unint64_t sub_1BA2D6740()
{
  result = qword_1EDC6DDB0;
  if (!qword_1EDC6DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DDB0);
  }

  return result;
}

unint64_t sub_1BA2D6798()
{
  result = qword_1EDC6DCE8;
  if (!qword_1EDC6DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCE8);
  }

  return result;
}

unint64_t sub_1BA2D67F0()
{
  result = qword_1EDC6DCF0;
  if (!qword_1EDC6DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DCF0);
  }

  return result;
}

unint64_t sub_1BA2D6848()
{
  result = qword_1EDC6DD00;
  if (!qword_1EDC6DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD00);
  }

  return result;
}

unint64_t sub_1BA2D68A0()
{
  result = qword_1EDC6DD08;
  if (!qword_1EDC6DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD08);
  }

  return result;
}

unint64_t sub_1BA2D68F8()
{
  result = qword_1EDC6DD78;
  if (!qword_1EDC6DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD78);
  }

  return result;
}

unint64_t sub_1BA2D6950()
{
  result = qword_1EDC6DD80;
  if (!qword_1EDC6DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD80);
  }

  return result;
}

unint64_t sub_1BA2D69A8()
{
  result = qword_1EDC6DD30;
  if (!qword_1EDC6DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD30);
  }

  return result;
}

unint64_t sub_1BA2D6A00()
{
  result = qword_1EDC6DD38;
  if (!qword_1EDC6DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD38);
  }

  return result;
}

unint64_t sub_1BA2D6A58()
{
  result = qword_1EDC6DD90;
  if (!qword_1EDC6DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD90);
  }

  return result;
}

unint64_t sub_1BA2D6AB0()
{
  result = qword_1EDC6DD98;
  if (!qword_1EDC6DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD98);
  }

  return result;
}

unint64_t sub_1BA2D6B08()
{
  result = qword_1EDC6DC78;
  if (!qword_1EDC6DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC78);
  }

  return result;
}

unint64_t sub_1BA2D6B60()
{
  result = qword_1EDC6DC80;
  if (!qword_1EDC6DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC80);
  }

  return result;
}

unint64_t sub_1BA2D6BB8()
{
  result = qword_1EDC6DDC0;
  if (!qword_1EDC6DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DDC0);
  }

  return result;
}

unint64_t sub_1BA2D6C10()
{
  result = qword_1EDC6DDC8;
  if (!qword_1EDC6DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DDC8);
  }

  return result;
}

unint64_t sub_1BA2D6C68()
{
  result = qword_1EDC6DD60;
  if (!qword_1EDC6DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD60);
  }

  return result;
}

unint64_t sub_1BA2D6CC0()
{
  result = qword_1EDC6DD68;
  if (!qword_1EDC6DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DD68);
  }

  return result;
}