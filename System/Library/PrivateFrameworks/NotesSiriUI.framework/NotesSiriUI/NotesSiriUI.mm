void sub_25C777F28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v88 = a3;
  v89 = a2;
  v90 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v81 - v9;
  v11 = sub_25C78E744();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v86 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v81 - v18;
  *(a4 + 24) = 0u;
  *(a4 + 16) = 0x403C000000000000;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  v20 = objc_opt_self();
  v21 = [v20 mainScreen];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v91.origin.x = v23;
  v91.origin.y = v25;
  v91.size.width = v27;
  v91.size.height = v29;
  Height = CGRectGetHeight(v91);
  v31 = Height + Height;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  *(a4 + 64) = v31;
  *(a4 + 72) = 0x4049000000000000;
  v32 = [v20 mainScreen];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v92.origin.x = v34;
  v92.origin.y = v36;
  v92.size.width = v38;
  v92.size.height = v40;
  *(a4 + 80) = CGRectGetWidth(v92);
  v41 = [v20 mainScreen];
  [v41 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v93.origin.x = v43;
  v93.origin.y = v45;
  v93.size.width = v47;
  v93.size.height = v49;
  Width = CGRectGetWidth(v93);
  v51 = [v20 mainScreen];
  [v51 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v94.origin.x = v53;
  v94.origin.y = v55;
  v94.size.width = v57;
  v94.size.height = v59;
  v60 = CGRectGetHeight(v94);
  *(a4 + 88) = v60 < Width;
  v61 = [objc_opt_self() sharedInstance];
  v62 = [v61 supportsPrivateCloudComputeSummary];

  *(a4 + 89) = v62;
  *(a4 + 96) = 0x4074800000000000;
  v63 = v89;
  sub_25C78E734();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25C77AB6C(v10, &qword_27FC14000, " \r");
    v64 = 0;
    v65 = 0xE000000000000000;
  }

  else
  {
    v85 = v62;
    v66 = v11;
    v67 = *(v12 + 32);
    v67(v19, v10, v66);
    v68 = objc_opt_self();
    v69 = sub_25C78E714();
    v70 = [v68 NotesAppIDForNoteMentionedInURL_];

    if (v70)
    {
      v64 = sub_25C78F034();
      v65 = v71;

      (*(v12 + 8))(v19, v66);
    }

    else
    {
      v83 = v66;
      v84 = v12;
      v82 = v67;
      v72 = sub_25C78E714();
      v73 = [v68 isShowHTMLNoteURL_];

      if (v73 && (v74 = sub_25C78E714(), v75 = [v68 objectIDURIRepresentationForHTMLNoteMentionedInURL_], v74, v75))
      {
        v76 = v86;
        sub_25C78E724();

        v77 = v87;
        v78 = v83;
        v82(v87, v76, v83);
        v64 = sub_25C78E704();
        v65 = v79;
        v80 = *(v84 + 8);
        v80(v77, v78);
        v80(v19, v78);
      }

      else
      {
        (*(v84 + 8))(v19, v83);
        v64 = 0;
        v65 = 0xE000000000000000;
      }
    }

    v63 = v89;
    LOBYTE(v62) = v85;
  }

  *a4 = v64;
  *(a4 + 8) = v65;
  *(a4 + 104) = [objc_allocWithZone(type metadata accessor for NotesSiriSingleNoteHelper()) init];
  *(a4 + 112) = a5;
  sub_25C77A850(v88, a4 + 24);
  *(a4 + 120) = v90;
  *(a4 + 128) = v63;
  *(a4 + 90) = (v60 < Width) & (v62 ^ 1);
}

id sub_25C7784F0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v63 = [objc_allocWithZone(MEMORY[0x277CBEB98]) init];
  v3 = [objc_opt_self() sharedContext];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 managedObjectContext];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  v7 = v5;
  result = [v6 sharedContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_55;
  }

  v9 = result;
  v10 = [result managedObjectContext];

  if (!v5 || (MEMORY[0x28223BE20](), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC140A0, &unk_25C78FF20), sub_25C78F0F4(), v7, !v62))
  {
    if (!v10)
    {

LABEL_53:

      return v2;
    }

    MEMORY[0x28223BE20]();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC140A0, &unk_25C78FF20);
    sub_25C78F0F4();

    if (!v62)
    {

      goto LABEL_53;
    }
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v35 = v12;
    v36 = swift_unknownObjectRelease();
    v37 = CGSizeMake(v36, 300.0, 300.0);
    v39 = [objc_opt_self() createTextViewWithNote:v35 size:{v37, v38}];
    v40 = [objc_opt_self() isEnabled];
    v41 = v39;
    v42 = v41;
    v43 = &selRef_setPaperEnabled_;
    if (!v40)
    {
      v43 = &selRef_setStylusDrawingEnabled_;
    }

    [v41 *v43];
    v44 = v42;
    [v44 setDataDetectorTypes_];
    v45 = [v44 textDragInteraction];

    [v45 setEnabled_];
    v46 = [v44 textStorage];
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      [v47 fixupAfterEditing];
    }

    v48 = v44;
    sub_25C7792FC(v48);
    [v48 setUserInteractionEnabled_];
    [v48 setSelectable_];
    [v48 setScrollEnabled_];

    v49 = objc_opt_self();
    sub_25C77ADD4(0, &qword_27FC140B0, 0x277D367E8);
    [v49 registerTextAttachmentClass:swift_getObjCClassFromMetadata() forFileType:*MEMORY[0x277CD96A8]];
    sub_25C77ADD4(0, &qword_27FC140B8, 0x277D368E8);
    [v49 registerTextAttachmentClass:swift_getObjCClassFromMetadata() forFileType:*MEMORY[0x277CD96B0]];
    v50 = objc_opt_self();
    v51 = v48;
    v52 = [v50 clearColor];
    [v51 setBackgroundColor_];

    v53 = [v50 ICTintColor];
    [v51 setTintColor_];

    swift_unknownObjectRelease();
    v2 = v51;
    goto LABEL_53;
  }

  swift_unknownObjectRelease();
  v13 = swift_dynamicCastObjCProtocolConditional();
  if (!v13)
  {

    swift_unknownObjectRelease();
    goto LABEL_53;
  }

  CGSizeMake(v13, 300.0, 300.0);
  v14 = CGRectMake();
  v18 = [objc_allocWithZone(MEMORY[0x277D369C0]) initWithFrame_];
  [v18 setDelegate_];
  result = [v18 webView];
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v19 = result;
  v20 = [result scrollView];

  v21 = [v20 subviews];
  sub_25C77ADD4(0, &qword_27FC140A8, 0x277D75D18);
  v22 = sub_25C78F074();

  v60 = v7;
  v61 = v2;
  v59 = v10;
  v58 = v18;
  if (v22 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C78F1A4())
  {
    v24 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x25F88CF20](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v25 className];
      if (v28)
      {
        v29 = v28;
        v30 = sub_25C78F034();
        v32 = v31;

        if (v30 == 0x6E65746E6F434B57 && v32 == 0xED00007765695674)
        {

LABEL_37:

          sub_25C7792FC(v26);

          goto LABEL_42;
        }

        v34 = sub_25C78F1C4();

        if (v34)
        {
          goto LABEL_37;
        }
      }

      ++v24;
      if (v27 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:

LABEL_42:
  if ([v63 count] < 1)
  {
    v55 = sub_25C78F024();
    [v58 setHtmlString:v55 attachments:0];
  }

  else
  {
    if ([v58 delegate])
    {
      type metadata accessor for NotesSiriSingleNoteHelper();
      if (swift_dynamicCastClass())
      {
        sub_25C77A33C();
      }

      swift_unknownObjectRelease();
    }

    v54 = sub_25C78F024();
    v55 = [v63 allObjects];
    if (!v55)
    {
      sub_25C78F074();
      v55 = sub_25C78F064();
    }

    [v58 setHtmlString:v54 attachments:v55];
  }

  result = [v58 webView];
  if (result)
  {
    v56 = result;
    v57 = [result scrollView];

    [v57 setScrollEnabled_];
    [v58 setInsideSiriSnippet_];
    swift_unknownObjectRelease();

    v2 = v58;
    goto LABEL_53;
  }

LABEL_56:
  __break(1u);
  return result;
}

id sub_25C778E88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  sub_25C77ADD4(0, &unk_27FC140C0, 0x277D35F28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = *a1;
  v12 = a1[1];
  v13 = sub_25C78F024();
  v14 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:a2];

  if (v14)
  {
    *a3 = [v14 isPasswordProtected];
    result = [v14 isUnsupported];
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  *a4 = result;
  *a5 = v14;
  return result;
}

void sub_25C778F68(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X3>, void **a5@<X4>, void *a6@<X8>)
{
  v38 = a5;
  v39 = a6;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v37 - v12;
  v14 = sub_25C78E744();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = a1[1];
  sub_25C78E734();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_25C77AB6C(v13, &qword_27FC14000, " \r");
    v21 = 0;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v22 = sub_25C78E714();
    v23 = [a2 ic:v22 objectIDFromURL:?];

    if (v23)
    {
      v37 = v6;
      v24 = [a2 ic:v23 existingObjectWithID:?];
      if (v24)
      {
        v25 = v24;
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        v21 = v26;
        if (v26)
        {
          *a3 = [v26 isPlainText];
          v27 = [v21 content];
          if (v27)
          {
            v28 = v27;
            v29 = sub_25C78F034();
            v31 = v30;
          }

          else
          {
            v29 = 0;
            v31 = 0xE000000000000000;
          }

          v32 = a4[1];
          *a4 = v29;
          a4[1] = v31;

          v33 = [v21 attachments];
          if (v33)
          {
            v34 = v33;
            sub_25C78F0B4();

            v35 = sub_25C78F0A4();
          }

          else
          {
            v35 = [objc_allocWithZone(MEMORY[0x277CBEB98]) init];
          }

          (*(v15 + 8))(v18, v14);
          v36 = *v38;
          *v38 = v35;
        }

        else
        {

          (*(v15 + 8))(v18, v14);
        }
      }

      else
      {
        (*(v15 + 8))(v18, v14);

        v21 = 0;
      }
    }

    else
    {
      (*(v15 + 8))(v18, v14);
      v21 = 0;
    }
  }

  *v39 = v21;
}

void sub_25C7792FC(void *a1)
{
  [a1 setUserInteractionEnabled_];
  v2 = [a1 subviews];
  sub_25C77ADD4(0, &qword_27FC140A8, 0x277D75D18);
  v3 = sub_25C78F074();

  if (v3 >> 62)
  {
    v4 = sub_25C78F1A4();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25F88CF20](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    sub_25C7792FC();
  }

LABEL_10:
}

id sub_25C779414(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  if (a2)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *&a1;
  }

  if (a4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *&a3;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = a5;
    result = [v12 textLayoutManager];
    if (result)
    {
      v15 = result;
      if ((a2 & 1) != 0 || (a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        if (v9 > -9.22337204e18)
        {
          if (v9 < 9.22337204e18)
          {
            v16 = v9;
            v72 = result;
            v73 = v13;
            if (qword_27FC13F50 == v9 && (*(v5 + 120) == qword_27FC13F40 && *(v5 + 128) == qword_27FC13F48 || (sub_25C78F1C4() & 1) != 0) || *(v5 + 72) >= v9 || v9 >= *(v5 + 80))
            {
              v70 = 0;
              v71 = 0;
              goto LABEL_29;
            }

            v17 = [v15 textContainer];
            if (v17)
            {
              v18 = v17;
              [v17 setSize_];
            }

            v90[0] = 0;
            v89 = 0;
            if (*(v5 + 90) != 1)
            {
              v58 = [v15 documentRange];
              v59 = [v58 location];

              sub_25C77AC6C(v5, &v80);
              v60 = swift_allocObject();
              v61 = v84;
              *(v60 + 104) = v85;
              v62 = v87;
              *(v60 + 120) = v86;
              *(v60 + 136) = v62;
              v63 = v80;
              *(v60 + 40) = v81;
              v64 = v83;
              *(v60 + 56) = v82;
              *(v60 + 72) = v64;
              *(v60 + 88) = v61;
              *(v60 + 16) = v90;
              v65 = v88;
              *(v60 + 24) = v63;
              *(v60 + 152) = v65;
              *(v60 + 160) = &v89;
              v66 = swift_allocObject();
              *(v66 + 16) = sub_25C77ACA8;
              *(v66 + 24) = v60;
              v78 = sub_25C77ACD0;
              v79 = v66;
              aBlock = MEMORY[0x277D85DD0];
              v75 = 1107296256;
              v76 = sub_25C779D04;
              v77 = &block_descriptor;
              v67 = _Block_copy(&aBlock);

              v68 = [v15 enumerateTextLayoutFragmentsFromLocation:v59 options:4 usingBlock:v67];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              _Block_release(v67);
              LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

              if ((v59 & 1) == 0)
              {
                v71 = sub_25C77ACA8;
                v70 = 0;
LABEL_44:
                v69 = *(v5 + 128);
                qword_27FC13F40 = *(v5 + 120);
                qword_27FC13F48 = v69;
                qword_27FC13F50 = v16;
                qword_27FC13F58 = v90[0];
                byte_27FC13F60 = v89;

LABEL_29:
                v32 = objc_opt_self();
                v33 = [v32 standardUserDefaults];
                v34 = sub_25C78F024();
                v35 = [v33 BOOLForKey_];

                v36 = [v32 standardUserDefaults];
                v37 = sub_25C78F024();
                v38 = [v36 BOOLForKey_];

                v39 = byte_27FC13F60;
                if (v35 != byte_27FC13F60 || v38 != byte_27FC13F60)
                {
                  v40 = [v32 standardUserDefaults];
                  v41 = sub_25C78F024();
                  [v40 setBool:v39 forKey:v41];

                  sub_25C77AAFC(v5 + 24, &v80);
                  if (*(&v81 + 1))
                  {
                    __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
                    v42 = off_286E65B68[0];
                    v43 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
                    v42(v43);
                    __swift_destroy_boxed_opaque_existential_1(&v80);
                  }

                  else
                  {
                    sub_25C77AB6C(&v80, &qword_27FC14008, " \r");
                  }
                }

                v54 = qword_27FC13F50;
                v55 = qword_27FC13F58;
                v56 = *(v5 + 16);

                v52 = CGSizeMake(v57, v54, v56 + v55);
                sub_25C77ABCC(v70);
                sub_25C77ABCC(v71);
                return *&v52;
              }

              goto LABEL_49;
            }

            [v12 contentSize];
            result = [v13 systemLayoutSizeFittingSize_];
            v20 = v19;
            if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v19 > -9.22337204e18)
              {
                if (v19 < 9.22337204e18)
                {
                  v21 = [v15 documentRange];
                  v22 = [v21 location];

                  sub_25C77AC6C(v5, &v80);
                  v23 = swift_allocObject();
                  v24 = v84;
                  *(v23 + 104) = v85;
                  v25 = v87;
                  *(v23 + 120) = v86;
                  *(v23 + 136) = v25;
                  v26 = v80;
                  *(v23 + 40) = v81;
                  v27 = v83;
                  *(v23 + 56) = v82;
                  *(v23 + 72) = v27;
                  *(v23 + 88) = v24;
                  *(v23 + 16) = v90;
                  v28 = v88;
                  *(v23 + 24) = v26;
                  *(v23 + 152) = v28;
                  *(v23 + 160) = &v89;
                  v29 = swift_allocObject();
                  *(v29 + 16) = sub_25C77AE28;
                  *(v29 + 24) = v23;
                  v78 = sub_25C77AE30;
                  v79 = v29;
                  aBlock = MEMORY[0x277D85DD0];
                  v75 = 1107296256;
                  v76 = sub_25C779D04;
                  v77 = &block_descriptor_18;
                  v30 = _Block_copy(&aBlock);

                  v31 = [v15 enumerateTextLayoutFragmentsFromLocation:v22 options:4 usingBlock:v30];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  _Block_release(v30);
                  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

                  if ((v22 & 1) == 0)
                  {
                    if (*(v5 + 64) <= v20)
                    {
                      v70 = sub_25C77AE28;
                      v71 = 0;
                    }

                    else
                    {
                      v71 = 0;
                      v90[0] = v20;
                      v70 = sub_25C77AE28;
                    }

                    goto LABEL_44;
                  }

                  goto LABEL_52;
                }

LABEL_51:
                __break(1u);
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {
    [a5 systemLayoutSizeFittingSize_];
    v52 = v53;
    return *&v52;
  }

  v45 = v44;
  v46 = a5;
  result = [v45 webView];
  if (result)
  {
    v47 = result;
    v48 = [result scrollView];

    [v48 contentSize];
    v50 = v49;

    [v46 systemLayoutSizeFittingSize_];
    v52 = v51;

    return *&v52;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_25C779D04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

void sub_25C779D48(void *a1, uint64_t *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *a2;
  [a1 layoutFragmentFrame];
  MaxY = CGRectGetMaxY(v10);
  if ((*&MaxY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (MaxY <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (MaxY >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7 + MaxY;
  if (__OFADD__(v7, MaxY))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v9 >= *(a3 + 64))
  {
    *a4 = 1;
  }

  else
  {
    *a4 = 0;
    *a2 = v9;
  }
}

uint64_t sub_25C779E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25C77AAA8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25C779EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25C77AAA8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_25C779F48()
{
  sub_25C77AAA8();
  sub_25C78EC34();
  __break(1u);
}

uint64_t sub_25C779F70@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  if (a1)
  {
    v8 = sub_25C78F024();
    v9 = sub_25C77A524(v8);
    v10 = [v9 dataFileURL];
    if (v10)
    {
      v11 = v10;
      sub_25C78E724();

      v12 = sub_25C78E744();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {

      v16 = sub_25C78E744();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_25C77A8D0(v7, a2);
  }

  else
  {
    v13 = sub_25C78E744();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

void sub_25C77A33C()
{
  v0 = sub_25C78E6E4();
  v8 = *(v0 - 8);
  v9 = v0;
  v1 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C77ADD4(0, &qword_27FC14018, 0x277CBEB18);
  v4 = MEMORY[0x25F88CEB0](MEMORY[0x277D84F90]);
  sub_25C78F104();
  sub_25C78E6D4();
  while (v14)
  {
    sub_25C77A8C0(&v13, &v12);
    sub_25C77ADD4(0, &qword_27FC14020, 0x277D35920);
    if (swift_dynamicCast())
    {
      v5 = v11;
      v6 = [objc_allocWithZone(MEMORY[0x277D369B8]) initWithNoteAttachmentObject_];
      [v4 ic:v6 addNonNilObject:?];
    }

    sub_25C78E6D4();
  }

  (*(v8 + 8))(v3, v9);
  v7 = *(v10 + OBJC_IVAR____TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper_attachmentPresentations);
  *(v10 + OBJC_IVAR____TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper_attachmentPresentations) = v4;
}

id sub_25C77A524(uint64_t a1)
{
  v3 = sub_25C78E6E4();
  v13 = *(v3 - 8);
  v14 = v3;
  v4 = *(v13 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper_attachmentPresentations);
  sub_25C78F124();

  sub_25C78E6D4();
  while (v18)
  {
    sub_25C77A8C0(&v17, &v16);
    sub_25C77ADD4(0, &qword_27FC14010, 0x277D369B8);
    if (swift_dynamicCast())
    {
      v8 = v15;
      result = [v15 contentID];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      v11 = [result isEqual_];

      if (v11)
      {
        (*(v13 + 8))(v6, v14);
        return v8;
      }
    }

    sub_25C78E6D4();
  }

  (*(v13 + 8))(v6, v14);
  return [objc_allocWithZone(MEMORY[0x277D369B8]) init];
}

id sub_25C77A79C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesSiriSingleNoteHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25C77A850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14008, " \r");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25C77A8C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C77A8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11NotesSiriUI0aB25TextEditorWrapperDelegate_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25C77A98C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_25C77A9D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25C77AA48()
{
  result = qword_27FC14090;
  if (!qword_27FC14090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14090);
  }

  return result;
}

unint64_t sub_25C77AAA8()
{
  result = qword_27FC14098;
  if (!qword_27FC14098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14098);
  }

  return result;
}

uint64_t sub_25C77AAFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14008, " \r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C77AB6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C77ABCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25C77ACD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  v2 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_25C77ADD4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25C77AE34()
{
  v0 = sub_25C78E914();
  __swift_allocate_value_buffer(v0, qword_27FC14130);
  __swift_project_value_buffer(v0, qword_27FC14130);
  return sub_25C78E8F4();
}

uint64_t sub_25C77AE88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25C78EAB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14158, &qword_25C78FFA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NotesSiriListView();
  sub_25C780FAC(v1 + *(v12 + 24), v11, &qword_27FC14158, &qword_25C78FFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25C78E7C4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25C78F0D4();
    v16 = sub_25C78ECD4();
    sub_25C78E8E4();

    sub_25C78EAA4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t NotesSiriListView.init(noteIdentifier:headerText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14148, &qword_25C78FF60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19[-v12];
  [objc_opt_self() startSharedContextWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14150, &qword_25C78FF68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C78FF30;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  NotesSiriListView.init(noteIdentifiers:modernManagedObjectContext:htmlManagedObjectContext:query:)(inited, 0, 0, a3, a4, v13);
  v15 = type metadata accessor for NotesSiriListView();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15))
  {
    sub_25C77AB6C(v13, &qword_27FC14148, &qword_25C78FF60);
    v17 = 1;
  }

  else
  {
    sub_25C77B6E8(v13, a5);
    v17 = 0;
  }

  return (*(v16 + 56))(a5, v17, 1, v15);
}

id NotesSiriListView.init(noteIdentifiers:modernManagedObjectContext:htmlManagedObjectContext:query:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, id a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, unint64_t a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v10 = type metadata accessor for NotesSiriListView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x277D84F90];
  *v15 = MEMORY[0x277D84F90];
  v17 = v15 + *(v13 + 20);
  sub_25C78EFD4();
  v18 = *(v10 + 24);
  *(v15 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14158, &qword_25C78FFA0);
  swift_storeEnumTagMultiPayload();
  v19 = a2;
  if (!a2)
  {
    v20 = [objc_opt_self() sharedContext];
    if (v20)
    {
      v18 = v20;
      v19 = [v20 managedObjectContext];
    }

    else
    {
      v19 = 0;
    }
  }

  v43 = a2;
  v44 = v15;
  v45 = a3;
  if (a3)
  {
    v21 = v19;
    v22 = a2;
    if (v19)
    {
LABEL_7:
      v42 = v10;
      v23 = v45;

LABEL_12:
      v40 = v11;
      v41 = a6;
      v50 = v16;
      v10 = *(a1 + 16);
      if (!v10)
      {
LABEL_20:

        v30 = v44;
        *v44 = v16;
        v31 = v41;
        sub_25C781014(v30, v41, type metadata accessor for NotesSiriListView);
        (*(v40 + 56))(v31, 0, 1, v42);
        return sub_25C78107C(v30, type metadata accessor for NotesSiriListView);
      }

      a6 = 0;
      v11 = a1 + 40;
      while (a6 < *(a1 + 16))
      {
        v18 = *v11;
        v49[0] = *(v11 - 8);
        v49[1] = v18;

        sub_25C788AD8(v49, a3, v46, v47, v19, &v48);

        if (v48)
        {
          MEMORY[0x25F88CDF0](v29);
          v18 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25C78F084();
          }

          sub_25C78F094();
          v16 = v50;
        }

        ++a6;
        v11 += 16;
        if (v10 == a6)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v24 = objc_opt_self();
    v25 = v19;
    v26 = a2;
    result = [v24 sharedContext];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    a3 = [result managedObjectContext];

    if (v19)
    {
      goto LABEL_7;
    }
  }

  if (a3)
  {
    v42 = v10;
    v28 = v45;
    goto LABEL_12;
  }

  v18 = v45;

  if (qword_27FC13F68 != -1)
  {
LABEL_26:
    swift_once();
  }

  v32 = sub_25C78E914();
  __swift_project_value_buffer(v32, qword_27FC14130);
  v33 = sub_25C78E904();
  v34 = sub_25C78F0C4();
  v35 = os_log_type_enabled(v33, v34);
  v37 = v43;
  v36 = v44;
  if (v35)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_25C776000, v33, v34, "No object context found!", v38, 2u);
    MEMORY[0x25F88D470](v38, -1, -1);
  }

  sub_25C78107C(v36, type metadata accessor for NotesSiriListView);
  return (*(v11 + 56))(a6, 1, 1, v10);
}

uint64_t type metadata accessor for NotesSiriListView()
{
  result = qword_27FC14178;
  if (!qword_27FC14178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C77B6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NotesSiriListView.init(models:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotesSiriListView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v9 + *(v7 + 20);
  sub_25C78EFD4();
  v11 = *(v4 + 24);
  *(v9 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14158, &qword_25C78FFA0);
  swift_storeEnumTagMultiPayload();
  *v9 = a1;
  sub_25C781014(v9, a2, type metadata accessor for NotesSiriListView);
  (*(v5 + 56))(a2, 0, 1, v4);
  return sub_25C78107C(v9, type metadata accessor for NotesSiriListView);
}

uint64_t NotesSiriListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14160, &qword_25C78FFA8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14168, &qword_25C78FFB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  v15 = *v1;
  if (*v1 >> 62)
  {
    if (v15 < 0)
    {
      v22 = *v1;
    }

    v25 = v12;
    result = sub_25C78F1A4();
    v12 = v25;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v23 = *(v12 + 56);

    return v23(a1, 1, 1, v7);
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v25 = v12;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x25F88CF20](0, v15);
    goto LABEL_6;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);

LABEL_6:
    sub_25C77BB7C(v17, v6);

    sub_25C78EF74();
    sub_25C78E9F4();
    sub_25C780F44(v6, v11, &qword_27FC14160, &qword_25C78FFA8);
    v18 = &v11[*(v7 + 36)];
    v19 = v31;
    *(v18 + 4) = v30;
    *(v18 + 5) = v19;
    *(v18 + 6) = v32;
    v20 = v27;
    *v18 = v26;
    *(v18 + 1) = v20;
    v21 = v29;
    *(v18 + 2) = v28;
    *(v18 + 3) = v21;
    sub_25C780F44(v11, v14, &qword_27FC14168, &qword_25C78FFB0);
    sub_25C780F44(v14, a1, &qword_27FC14168, &qword_25C78FFB0);
    return (*(v25 + 56))(a1, 0, 1, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C77BB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for NotesSiriListView();
  v34[0] = *(v4 - 8);
  v5 = *(v34[0] + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34[1] = v6;
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C78E784();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C78E7C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v2;
  sub_25C77AE88(v16);
  if ([objc_opt_self() currentNoteListSortType] == 1)
  {
    v17 = &OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_creationDate;
  }

  else
  {
    v17 = &OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_modificationDate;
  }

  v18 = a1 + *v17;
  swift_beginAccess();
  (*(v8 + 16))(v11, v18, v7);
  v19 = sub_25C78E754();
  v21 = v20;
  sub_25C78E754();

  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v22 = sub_25C77C3C4(a1);
  v24 = v23;
  v25 = sub_25C78E894();
  v27 = v26;
  *&v38 = a1;
  *(&v38 + 1) = v19;
  *v39 = v21;
  *&v39[8] = xmmword_25C78FF40;
  *&v39[24] = xmmword_25C78FF50;
  *&v39[40] = 0x4018000000000000;
  v40 = 0;
  v28 = v35;
  sub_25C781014(v36, v35, type metadata accessor for NotesSiriListView);
  v29 = (*(v34[0] + 80) + 24) & ~*(v34[0] + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  sub_25C77B6E8(v28, v30 + v29);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC141B8, &qword_25C790040);
  sub_25C78060C();
  v31 = v37;
  sub_25C78EE04();

  v41[2] = *&v39[16];
  v41[3] = *&v39[32];
  v42 = v40;
  v41[0] = v38;
  v41[1] = *v39;
  sub_25C77AB6C(v41, &qword_27FC141B8, &qword_25C790040);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14160, &qword_25C78FFA8);
  v33 = (v31 + *(result + 36));
  *v33 = v22;
  v33[1] = v24;
  v33[2] = v25;
  v33[3] = v27;
  return result;
}

uint64_t sub_25C77BF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v33 = a1;
  v40 = a6;
  v6 = sub_25C78ECB4();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25C78EB74();
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC144C8, &qword_25C790450);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC144D0, &qword_25C790458);
  v19 = *(v18 - 8);
  v31 = v18;
  v32 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC144D8, &qword_25C790460);
  v23 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v25 = &v29 - v24;
  sub_25C78EB54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC144E0, &qword_25C790468);
  sub_25C78240C(&qword_27FC144E8, &qword_27FC144E0, &qword_25C790468);
  sub_25C78EE14();
  (*(v10 + 8))(v13, v29);
  sub_25C78ECA4();
  v26 = sub_25C781F80();
  sub_25C78EE44();
  (*(v34 + 8))(v9, v35);
  sub_25C77AB6C(v17, &qword_27FC144C8, &qword_25C790450);
  v43 = v36;
  v44 = v37;
  v41 = v14;
  v42 = v26;
  swift_getOpaqueTypeConformance2();
  sub_25C781450();
  v27 = v31;
  sub_25C78EE34();
  (*(v32 + 8))(v22, v27);
  v43 = v38;
  v44 = v39;
  sub_25C78E9C4();
  return sub_25C77AB6C(v25, &qword_27FC144D8, &qword_25C790460);
}

uint64_t sub_25C77C3C4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
  v3 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder + 8);

  v4 = sub_25C78E804();
  v6 = v5;

  v7 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
  v8 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account + 8);

  v9 = sub_25C78E814();
  v11 = v10;

  v12 = (a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v41 = v13;
  v42 = v14;
  v15 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString + 8);
  v43 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
  v44 = v15;
  v16 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet + 8);
  v45 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
  v46 = v16;
  v47 = v4;
  v48 = v6;
  v49 = v9;
  v50 = v11;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
LABEL_2:
  if (v18 <= 5)
  {
    v20 = 5;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (v18 != 5)
  {
    if (v21 == ++v18)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v23 = v22 + 16;
    v24 = *&v40[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v40[v23 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25C7810DC(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_25C7810DC((v26 > 1), v27 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14500, &qword_25C790470);
  result = swift_arrayDestroy();
  v29 = 0;
  v30 = *(v19 + 16);
  v31 = MEMORY[0x277D84F90];
LABEL_15:
  v32 = (v19 + 40 + 16 * v29);
  while (v30 != v29)
  {
    if (v29 >= *(v19 + 16))
    {
      goto LABEL_28;
    }

    ++v29;
    v34 = *(v32 - 1);
    v33 = *v32;
    v32 += 2;
    v35 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v35 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25C7811E8(0, *(v31 + 16) + 1, 1);
      }

      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_25C7811E8((v36 > 1), v37 + 1, 1);
      }

      *(v31 + 16) = v37 + 1;
      v38 = v31 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v33;
      goto LABEL_15;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14508, &qword_25C790478);
  sub_25C78240C(&qword_27FC14510, &qword_27FC14508, &qword_25C790478);
  v39 = sub_25C78F014();

  return v39;
}

uint64_t sub_25C77C72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25C78F004();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C78E744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v15 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
  swift_beginAccess();
  (*(v10 + 16))(v13, a1 + v15, v9);
  v16 = sub_25C78E714();
  (*(v10 + 8))(v13, v9);
  [v14 setPunchOutUri_];

  v17 = a2 + *(type metadata accessor for NotesSiriListView() + 20);
  sub_25C78EFC4();
  v18 = v14;
  sub_25C78EFF4();

  return (*(v5 + 8))(v8, v4);
}

double sub_25C77C954@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC141E8, &qword_25C790170);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC141F0, &qword_25C790178);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  *v6 = sub_25C78EBA4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC141F8, &qword_25C790180);
  sub_25C77CB50(v1, &v6[*(v12 + 44)]);
  sub_25C78EF74();
  sub_25C78E9F4();
  sub_25C780F44(v6, v11, &qword_27FC141E8, &qword_25C790170);
  v13 = &v11[*(v8 + 44)];
  v14 = v20[5];
  *(v13 + 4) = v20[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v20[6];
  v15 = v20[1];
  *v13 = v20[0];
  *(v13 + 1) = v15;
  v16 = v20[3];
  *(v13 + 2) = v20[2];
  *(v13 + 3) = v16;
  v17 = sub_25C78ECF4();
  sub_25C780F44(v11, a1, &qword_27FC141F0, &qword_25C790178);
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14200, &qword_25C790188) + 36);
  *v18 = v17;
  result = 0.0;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 1;
  return result;
}

uint64_t sub_25C77CB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14208, &qword_25C790190);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9];
  v11 = *(a1 + 48);
  sub_25C78EF64();
  sub_25C78E994();
  v30 = v34;
  v31 = v32;
  v29 = v36;
  v28 = v37;
  v46 = 1;
  v45 = v33;
  v44 = v35;
  *v10 = sub_25C78EAD4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14210, &qword_25C790198);
  sub_25C77CE04(a1, &v10[*(v12 + 44)]);
  sub_25C78EF64();
  sub_25C78E994();
  v27 = v38;
  v26 = v40;
  v25 = v42;
  v24 = v43;
  v49 = 1;
  v48 = v39;
  v47 = v41;
  v13 = v46;
  LOBYTE(a1) = v45;
  v14 = v44;
  sub_25C780FAC(v10, v8, &qword_27FC14208, &qword_25C790190);
  v15 = v49;
  LOBYTE(v11) = v48;
  v23 = v47;
  *a2 = 0;
  *(a2 + 8) = v13;
  v16 = v30;
  *(a2 + 16) = v31;
  *(a2 + 24) = a1;
  *(a2 + 32) = v16;
  *(a2 + 40) = v14;
  v17 = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14218, &qword_25C7901A0);
  sub_25C780FAC(v8, a2 + *(v18 + 48), &qword_27FC14208, &qword_25C790190);
  v19 = a2 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = v15;
  *(v19 + 16) = v27;
  *(v19 + 24) = v11;
  *(v19 + 32) = v26;
  *(v19 + 40) = v23;
  v20 = v24;
  *(v19 + 48) = v25;
  *(v19 + 56) = v20;
  sub_25C77AB6C(v10, &qword_27FC14208, &qword_25C790190);
  return sub_25C77AB6C(v8, &qword_27FC14208, &qword_25C790190);
}

uint64_t sub_25C77CE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14220, &qword_25C7901A8);
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14228, &unk_25C7901B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = (&v56 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v65 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14230, &qword_25C7901C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v69 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v56 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14238, &qword_25C7901C8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v68 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v56 - v29;
  *v30 = sub_25C78EBA4();
  *(v30 + 1) = 0x4010000000000000;
  v30[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14240, &qword_25C7901D0);
  sub_25C77D580(a1, &v30[*(v31 + 44)]);
  v32 = *a1;
  v33 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  swift_beginAccess();
  sub_25C780FAC(v32 + v33, v19, &qword_27FC14000, " \r");
  v34 = sub_25C78E744();
  v35 = 1;
  v36 = (*(*(v34 - 8) + 48))(v19, 1, v34);
  sub_25C77AB6C(v19, &qword_27FC14000, " \r");
  if (v36 != 1)
  {
    v57 = sub_25C78EEA4();
    v37 = *(a1 + 40);
    sub_25C78EF64();
    sub_25C78E994();
    v63 = v75;
    v62 = v76;
    v61 = v77;
    v60 = v78;
    v59 = v79;
    v58 = v80;
    v38 = sub_25C78EB94();
    v39 = v64;
    *v64 = v38;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14250, &qword_25C7901E0) + 44);
    v40 = v32 + v33;
    v41 = v66;
    sub_25C780FAC(v40, v66, &qword_27FC14000, " \r");
    v42 = swift_allocObject();
    v43 = *(a1 + 16);
    v42[1] = *a1;
    v42[2] = v43;
    v44 = *(a1 + 48);
    v42[3] = *(a1 + 32);
    v42[4] = v44;
    sub_25C780FAC(v41, v65, &qword_27FC14000, " \r");
    v45 = swift_allocObject();
    v45[2] = sub_25C780944;
    v45[3] = v42;
    v45[4] = sub_25C77FE90;
    v45[5] = 0;
    sub_25C780BD0(a1, v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14258, &qword_25C7901E8);
    sub_25C780C08();
    sub_25C78E924();
    sub_25C77AB6C(v41, &qword_27FC14000, " \r");
    v46 = v67;
    sub_25C780FAC(v39, v67, &qword_27FC14228, &unk_25C7901B0);
    *v6 = 0;
    v6[8] = 1;
    v47 = v63;
    *(v6 + 2) = v57;
    *(v6 + 3) = v47;
    v6[32] = v62;
    *(v6 + 5) = v61;
    v6[48] = v60;
    v48 = v58;
    *(v6 + 7) = v59;
    *(v6 + 8) = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142C8, &qword_25C790220);
    sub_25C780FAC(v46, &v6[*(v49 + 64)], &qword_27FC14228, &unk_25C7901B0);

    sub_25C77AB6C(v39, &qword_27FC14228, &unk_25C7901B0);
    sub_25C77AB6C(v46, &qword_27FC14228, &unk_25C7901B0);

    sub_25C780F44(v6, v73, &qword_27FC14220, &qword_25C7901A8);
    v35 = 0;
  }

  v50 = v73;
  (*(v70 + 56))(v73, v35, 1, v71);
  v51 = v68;
  sub_25C780FAC(v30, v68, &qword_27FC14238, &qword_25C7901C8);
  v52 = v69;
  sub_25C780FAC(v50, v69, &qword_27FC14230, &qword_25C7901C0);
  v53 = v72;
  sub_25C780FAC(v51, v72, &qword_27FC14238, &qword_25C7901C8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14248, &qword_25C7901D8);
  sub_25C780FAC(v52, v53 + *(v54 + 48), &qword_27FC14230, &qword_25C7901C0);
  sub_25C77AB6C(v50, &qword_27FC14230, &qword_25C7901C0);
  sub_25C77AB6C(v30, &qword_27FC14238, &qword_25C7901C8);
  sub_25C77AB6C(v52, &qword_27FC14230, &qword_25C7901C0);
  return sub_25C77AB6C(v51, &qword_27FC14238, &qword_25C7901C8);
}

uint64_t sub_25C77D580@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142F0, &qword_25C790248);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142F8, &qword_25C790250);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14300, &qword_25C790258);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  *v23 = sub_25C78EAD4();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14308, &qword_25C790260);
  sub_25C77D908(a1, &v23[*(v24 + 44)]);
  *v16 = sub_25C78EAD4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14310, &qword_25C790268);
  sub_25C77E9AC(a1, &v16[*(v25 + 44)]);
  *v9 = sub_25C78EAD4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14318, &qword_25C790270);
  sub_25C77F0E0(a1, &v9[*(v26 + 44)]);
  v27 = v21;
  v32 = v21;
  sub_25C780FAC(v23, v21, &qword_27FC14300, &qword_25C790258);
  sub_25C780FAC(v16, v14, &qword_27FC142F8, &qword_25C790250);
  v28 = v7;
  sub_25C780FAC(v9, v7, &qword_27FC142F0, &qword_25C790248);
  v29 = v33;
  sub_25C780FAC(v27, v33, &qword_27FC14300, &qword_25C790258);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14320, &qword_25C790278);
  sub_25C780FAC(v14, v29 + *(v30 + 48), &qword_27FC142F8, &qword_25C790250);
  sub_25C780FAC(v28, v29 + *(v30 + 64), &qword_27FC142F0, &qword_25C790248);
  sub_25C77AB6C(v9, &qword_27FC142F0, &qword_25C790248);
  sub_25C77AB6C(v16, &qword_27FC142F8, &qword_25C790250);
  sub_25C77AB6C(v23, &qword_27FC14300, &qword_25C790258);
  sub_25C77AB6C(v28, &qword_27FC142F0, &qword_25C790248);
  sub_25C77AB6C(v14, &qword_27FC142F8, &qword_25C790250);
  return sub_25C77AB6C(v32, &qword_27FC14300, &qword_25C790258);
}

uint64_t sub_25C77D908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC143E8, &qword_25C790390);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  *v10 = sub_25C78EAD4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC143F0, &qword_25C790398);
  sub_25C77DBD8(a1, &v10[*(v11 + 44)]);
  v12 = a1[4];
  sub_25C78EF64();
  sub_25C78E994();
  v13 = &v10[*(v4 + 44)];
  v14 = v34;
  *v13 = v33;
  *(v13 + 1) = v14;
  *(v13 + 2) = v35;
  sub_25C77E634(&v41);
  v16 = v41;
  v15 = v42;
  v30 = v42;
  v29 = v43;
  v17 = v45;
  v28 = v44;
  v18 = v46;
  LOBYTE(v12) = v47;
  v19 = sub_25C78EB84();
  LOBYTE(v36) = v12;
  v31 = v8;
  sub_25C780FAC(v10, v8, &qword_27FC143E8, &qword_25C790390);
  v20 = v8;
  v21 = v32;
  sub_25C780FAC(v20, v32, &qword_27FC143E8, &qword_25C790390);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC143F8, &qword_25C7903A0) + 48));
  *&v36 = v16;
  *(&v36 + 1) = v15;
  LOBYTE(v21) = v29;
  LOBYTE(v37) = v29;
  v23 = v28;
  *(&v37 + 1) = v28;
  *&v38 = v17;
  *(&v38 + 1) = v18;
  LOBYTE(v39) = v12;
  *(&v39 + 1) = v19;
  *&v40 = sub_25C77E984;
  *(&v40 + 1) = 0;
  v24 = v37;
  *v22 = v36;
  v22[1] = v24;
  v25 = v39;
  v22[2] = v38;
  v22[3] = v25;
  v22[4] = v40;
  sub_25C780FAC(&v36, &v41, &qword_27FC14400, &qword_25C7903A8);
  sub_25C77AB6C(v10, &qword_27FC143E8, &qword_25C790390);
  v41 = v16;
  v42 = v30;
  v43 = v21;
  v44 = v23;
  v45 = v17;
  v46 = v18;
  v47 = v12;
  v48 = v19;
  v49 = sub_25C77E984;
  v50 = 0;
  sub_25C77AB6C(&v41, &qword_27FC14400, &qword_25C7903A8);
  return sub_25C77AB6C(v31, &qword_27FC143E8, &qword_25C790390);
}

uint64_t sub_25C77DBD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14380, &qword_25C790368);
  v4 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v6 = &v74 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14408, &qword_25C7903B0);
  v7 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v81 = &v74 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14410, &qword_25C7903B8);
  v9 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v11 = &v74 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14418, &qword_25C7903C0);
  v12 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v83 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14420, &qword_25C7903C8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14428, &qword_25C7903D0);
  v18 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v74 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14430, &qword_25C7903D8);
  v20 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v74 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14438, &qword_25C7903E0);
  v22 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v24 = &v74 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14440, &qword_25C7903E8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v74 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14448, &qword_25C7903F0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v74 - v32;
  v34 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected) == 1)
  {
    v85 = v31;
    v35 = *(v34 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isAuthenticated);
    v77 = v17;
    v78 = a2;
    v86 = v14;
    if (v35 == 1)
    {
      v82 = sub_25C78EEE4();
      LODWORD(v83) = 0;
    }

    else
    {
      v82 = sub_25C78EEE4();
      LODWORD(v83) = 1;
    }

    v51 = sub_25C78EC94();
    v52 = sub_25C78ED14();
    KeyPath = swift_getKeyPath();
    v54 = &v28[*(v25 + 36)];
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
    v56 = *MEMORY[0x277CE1050];
    v57 = sub_25C78EF04();
    (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
    *v54 = swift_getKeyPath();
    *v28 = v82;
    *(v28 + 2) = v51;
    *(v28 + 2) = KeyPath;
    *(v28 + 3) = v52;
    sub_25C780FAC(v28, v24, &qword_27FC14440, &qword_25C7903E8);
    swift_storeEnumTagMultiPayload();
    sub_25C781A4C();
    sub_25C78EC64();
    sub_25C77AB6C(v28, &qword_27FC14440, &qword_25C7903E8);
    sub_25C780FAC(v33, v88, &qword_27FC14448, &qword_25C7903F0);
    swift_storeEnumTagMultiPayload();
    sub_25C7819C8();
    sub_25C781BBC();
    v58 = v89;
    sub_25C78EC64();
    sub_25C780FAC(v58, v77, &qword_27FC14430, &qword_25C7903D8);
    swift_storeEnumTagMultiPayload();
    sub_25C78193C();
    sub_25C78EC64();
    sub_25C77AB6C(v58, &qword_27FC14430, &qword_25C7903D8);
    v59 = v33;
    v60 = &qword_27FC14448;
    v61 = &qword_25C7903F0;
  }

  else
  {
    if (*(v34 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) != 1)
    {
      *v17 = 0;
      v17[8] = 1;
      swift_storeEnumTagMultiPayload();
      sub_25C78193C();
      return sub_25C78EC64();
    }

    v85 = v31;
    v86 = v14;
    if (*(v34 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) == 1)
    {
      v84 = sub_25C78EEE4();
      v36 = [objc_opt_self() ICTintColor];
      v76 = sub_25C78EE74();
      v75 = swift_getKeyPath();
      v37 = sub_25C78EC94();
      v38 = sub_25C78ED14();
      v39 = swift_getKeyPath();
      v40 = v17;
      v41 = &v11[*(v80 + 36)];
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
      v43 = *MEMORY[0x277CE1050];
      v44 = sub_25C78EF04();
      (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
      *v41 = swift_getKeyPath();
      v17 = v40;
      v46 = v75;
      v45 = v76;
      *v11 = v84;
      *(v11 + 1) = v46;
      *(v11 + 2) = v45;
      *(v11 + 6) = v37;
      *(v11 + 4) = v39;
      *(v11 + 5) = v38;
      sub_25C780FAC(v11, v81, &qword_27FC14410, &qword_25C7903B8);
      swift_storeEnumTagMultiPayload();
      sub_25C781C48();
      sub_25C7815D0();
      v47 = v83;
      sub_25C78EC64();
      v48 = v11;
      v49 = &qword_27FC14410;
      v50 = &qword_25C7903B8;
    }

    else
    {
      v63 = sub_25C78EEE4();
      v64 = sub_25C78EC94();
      v65 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14398, &qword_25C790370) + 36)];
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
      v67 = *MEMORY[0x277CE1050];
      v68 = sub_25C78EF04();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      *v65 = swift_getKeyPath();
      *v6 = v63;
      *(v6 + 2) = v64;
      v69 = sub_25C78ED14();
      v70 = swift_getKeyPath();
      v71 = v81;
      v72 = &v6[*(v82 + 36)];
      *v72 = v70;
      v72[1] = v69;
      sub_25C780FAC(v6, v71, &qword_27FC14380, &qword_25C790368);
      swift_storeEnumTagMultiPayload();
      sub_25C781C48();
      sub_25C7815D0();
      v47 = v83;
      sub_25C78EC64();
      v48 = v6;
      v49 = &qword_27FC14380;
      v50 = &qword_25C790368;
    }

    sub_25C77AB6C(v48, v49, v50);
    sub_25C780FAC(v47, v88, &qword_27FC14418, &qword_25C7903C0);
    swift_storeEnumTagMultiPayload();
    sub_25C7819C8();
    sub_25C781BBC();
    v73 = v89;
    sub_25C78EC64();
    sub_25C780FAC(v73, v17, &qword_27FC14430, &qword_25C7903D8);
    swift_storeEnumTagMultiPayload();
    sub_25C78193C();
    sub_25C78EC64();
    sub_25C77AB6C(v73, &qword_27FC14430, &qword_25C7903D8);
    v59 = v47;
    v60 = &qword_27FC14418;
    v61 = &qword_25C7903C0;
  }

  return sub_25C77AB6C(v59, v60, v61);
}

uint64_t sub_25C77E634@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC147D0, &qword_25C790358);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v45 - v5;
  v7 = sub_25C78E6A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = *v1;
  v16 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
  swift_beginAccess();
  sub_25C780FAC(v15 + v16, v6, &unk_27FC147D0, &qword_25C790358);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25C77AB6C(v6, &unk_27FC147D0, &qword_25C790358);
    v17 = (v15 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v49 = v18;
    v50 = v19;
    sub_25C781450();

    v20 = sub_25C78EDA4();
    v22 = v21;
    v24 = v23;
    sub_25C78ED44();
    v25 = sub_25C78ED74();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    sub_25C7814B4(v20, v22, v24 & 1);
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v12, v14, v7);
    v32 = sub_25C78ED94();
    v34 = v33;
    v36 = v35;
    v47 = v37;
    sub_25C78ED44();
    v48 = sub_25C78ED74();
    v46 = v38;
    v40 = v39;
    v31 = v41;

    v42 = v36 & 1;
    v29 = v40;
    v43 = v34;
    v27 = v46;
    sub_25C7814B4(v32, v43, v42);

    (*(v8 + 8))(v14, v7);
    v25 = v48;
  }

  result = swift_getKeyPath();
  *a1 = v25;
  *(a1 + 8) = v27;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v31;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_25C77E9AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14358, &qword_25C790308);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  *v10 = sub_25C78EAD4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14360, &qword_25C790310);
  sub_25C77ECD4(a1, &v10[*(v11 + 44)]);
  v12 = a1[4];
  sub_25C78EF64();
  sub_25C78E994();
  v13 = &v10[*(v4 + 44)];
  v14 = *&v28[11];
  *v13 = *&v28[9];
  *(v13 + 1) = v14;
  *(v13 + 2) = *&v28[13];
  v15 = sub_25C78EAC4();
  LOBYTE(v35[0]) = 1;
  sub_25C77F420(a1, v29);
  *(&v28[2] + 7) = v29[1];
  *(&v28[4] + 7) = v29[2];
  *(&v28[6] + 7) = v29[3];
  HIBYTE(v28[8]) = v30;
  *(v28 + 7) = v29[0];
  v16 = v35[0];
  LODWORD(a1) = sub_25C78EC94();
  KeyPath = swift_getKeyPath();
  LOBYTE(v35[0]) = 0;
  v26 = v8;
  sub_25C780FAC(v10, v8, &qword_27FC14358, &qword_25C790308);
  v18 = v27;
  sub_25C780FAC(v8, v27, &qword_27FC14358, &qword_25C790308);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14368, &qword_25C790348) + 48);
  *(&v32[2] + 1) = *&v28[4];
  *(&v32[1] + 1) = *&v28[2];
  v20 = v18 + v19;
  v31 = v15;
  LOBYTE(v32[0]) = v16;
  *(&v32[4] + 1) = v28[8];
  *(&v32[3] + 1) = *&v28[6];
  *(v32 + 1) = *v28;
  HIDWORD(v32[4]) = a1;
  *&v33 = KeyPath;
  *(&v33 + 1) = 1;
  v34 = 0;
  *(v20 + 112) = 0;
  v21 = v32[4];
  *(v20 + 64) = v32[3];
  *(v20 + 80) = v21;
  *(v20 + 96) = v33;
  v22 = v32[2];
  *(v20 + 32) = v32[1];
  *(v20 + 48) = v22;
  v23 = v32[0];
  *v20 = v31;
  *(v20 + 16) = v23;
  sub_25C780FAC(&v31, v35, &qword_27FC14370, &qword_25C790350);
  sub_25C77AB6C(v10, &qword_27FC14358, &qword_25C790308);
  v38 = *&v28[2];
  v39 = *&v28[4];
  v40 = *&v28[6];
  v35[0] = v15;
  v35[1] = 0;
  v36 = v16;
  v41 = v28[8];
  v37 = *v28;
  v42 = a1;
  v43 = KeyPath;
  v44 = 1;
  v45 = 0;
  sub_25C77AB6C(v35, &qword_27FC14370, &qword_25C790350);
  return sub_25C77AB6C(v26, &qword_27FC14358, &qword_25C790308);
}

uint64_t sub_25C77ECD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14328, &qword_25C790280);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14378, &qword_25C790360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14380, &qword_25C790368);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - v14;
  if (*(*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) == 1 && *(*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) == 1)
  {
    v16 = sub_25C78EEE4();
    v17 = sub_25C78EC94();
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14398, &qword_25C790370) + 36);
    v37[1] = a2;
    v19 = &v15[v18];
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
    v21 = *MEMORY[0x277CE1050];
    v22 = sub_25C78EF04();
    (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
    *v19 = swift_getKeyPath();
    *v15 = v16;
    *(v15 + 2) = v17;
    v23 = sub_25C78ED14();
    KeyPath = swift_getKeyPath();
    v25 = &v15[*(v12 + 36)];
    *v25 = KeyPath;
    v25[1] = v23;
    sub_25C780FAC(v15, v11, &qword_27FC14380, &qword_25C790368);
    swift_storeEnumTagMultiPayload();
    sub_25C7815D0();
    sub_25C7817F8();
    sub_25C78EC64();
    v26 = v15;
    v27 = &qword_27FC14380;
    v28 = &qword_25C790368;
  }

  else
  {
    v29 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14330, &qword_25C790288) + 36)];
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
    v31 = *MEMORY[0x277CE1050];
    v32 = sub_25C78EF04();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    *v7 = 0;
    v7[8] = 1;
    v33 = a1[4];
    sub_25C78EF64();
    sub_25C78E994();
    v34 = &v7[*(v4 + 36)];
    v35 = v39;
    *v34 = v38;
    *(v34 + 1) = v35;
    *(v34 + 2) = v40;
    sub_25C780FAC(v7, v11, &qword_27FC14328, &qword_25C790280);
    swift_storeEnumTagMultiPayload();
    sub_25C7815D0();
    sub_25C7817F8();
    sub_25C78EC64();
    v26 = v7;
    v27 = &qword_27FC14328;
    v28 = &qword_25C790280;
  }

  return sub_25C77AB6C(v26, v27, v28);
}

uint64_t sub_25C77F0E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14328, &qword_25C790280);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-v9];
  v11 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14330, &qword_25C790288) + 36) - v9];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
  v13 = *MEMORY[0x277CE1050];
  v14 = sub_25C78EF04();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v10 = 0;
  v10[8] = 1;
  v15 = a1[4];
  sub_25C78EF64();
  sub_25C78E994();
  v16 = &v10[*(v4 + 44)];
  v17 = *&v32[11];
  *v16 = *&v32[9];
  v16[1] = v17;
  v16[2] = *&v32[13];
  v18 = sub_25C78EAC4();
  LOBYTE(v36[0]) = 1;
  sub_25C77F930(a1, v33);
  *(v32 + 7) = v33[0];
  *(&v32[2] + 7) = v33[1];
  *(&v32[4] + 7) = v33[2];
  *(&v32[6] + 7) = v33[3];
  LOBYTE(a1) = v36[0];
  v19 = sub_25C78ED14();
  KeyPath = swift_getKeyPath();
  v29 = sub_25C78EC94();
  v30 = v8;
  sub_25C780FAC(v10, v8, &qword_27FC14328, &qword_25C790280);
  v21 = v8;
  v22 = v31;
  sub_25C780FAC(v21, v31, &qword_27FC14328, &qword_25C790280);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14340, &qword_25C7902F8) + 48));
  v34 = v18;
  LOBYTE(v4) = a1;
  LOBYTE(v35[0]) = a1;
  *(&v35[3] + 1) = *&v32[6];
  *(&v35[2] + 1) = *&v32[4];
  *(&v35[1] + 1) = *&v32[2];
  *(v35 + 1) = *v32;
  *&v35[4] = *(&v32[7] + 7);
  *(&v35[4] + 1) = KeyPath;
  *&v35[5] = v19;
  LODWORD(a1) = v29;
  DWORD2(v35[5]) = v29;
  v24 = v35[4];
  v23[4] = v35[3];
  v23[5] = v24;
  *(v23 + 92) = *(&v35[4] + 12);
  v25 = v35[0];
  *v23 = v34;
  v23[1] = v25;
  v26 = v35[2];
  v23[2] = v35[1];
  v23[3] = v26;
  sub_25C780FAC(&v34, v36, &qword_27FC14348, &qword_25C790300);
  sub_25C77AB6C(v10, &qword_27FC14328, &qword_25C790280);
  v39 = *&v32[2];
  v40 = *&v32[4];
  *v41 = *&v32[6];
  v36[0] = v18;
  v36[1] = 0;
  v37 = v4;
  v38 = *v32;
  *&v41[15] = *(&v32[7] + 7);
  v42 = KeyPath;
  v43 = v19;
  v44 = a1;
  sub_25C77AB6C(v36, &qword_27FC14348, &qword_25C790300);
  return sub_25C77AB6C(v30, &qword_27FC14328, &qword_25C790280);
}

uint64_t sub_25C77F420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC147D0, &qword_25C790358);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v62 - v6;
  v8 = sub_25C78E6A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v62 - v13;
  v14 = a1[2];
  v74 = a1[1];
  v75 = v14;
  v15 = sub_25C781450();

  v62 = v15;
  v16 = sub_25C78EDA4();
  v18 = v17;
  v20 = v19;
  sub_25C78ED14();
  v21 = sub_25C78ED74();
  v66 = v22;
  v67 = v21;
  v65 = v23;
  v68 = v24;

  sub_25C7814B4(v16, v18, v20 & 1);

  v25 = *a1;
  v26 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet;
  swift_beginAccess();
  sub_25C780FAC(v25 + v26, v7, &unk_27FC147D0, &qword_25C790358);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25C77AB6C(v7, &unk_27FC147D0, &qword_25C790358);
    v27 = *(v25 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet + 8);
    if (!v27)
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = -1;
      goto LABEL_6;
    }

    v74 = *(v25 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
    v75 = v27;

    v28 = sub_25C78EDA4();
    v30 = v29;
    v32 = v31;
    sub_25C78ED14();
    v33 = sub_25C78ED74();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    sub_25C7814B4(v28, v30, v32 & 1);

    v69 = v33;
    v70 = v35;
    v71 = v37 & 1;
    v72 = v39;
    v73 = 1;
    sub_25C78EC64();
  }

  else
  {
    v40 = v64;
    (*(v9 + 32))(v64, v7, v8);
    (*(v9 + 16))(v63, v40, v8);
    v41 = sub_25C78ED94();
    v43 = v42;
    v45 = v44;
    sub_25C78ED14();
    v46 = sub_25C78ED74();
    v62 = v47;
    v49 = v48;
    v63 = v8;
    v51 = v50;

    sub_25C7814B4(v41, v43, v45 & 1);

    v69 = v46;
    v70 = v62;
    v71 = v49 & 1;
    v72 = v51;
    v73 = 0;
    sub_25C78EC64();
    (*(v9 + 8))(v64, v63);
  }

  v52 = v74;
  v53 = v75;
  v54 = v76;
  v55 = v77;
  v56 = v78;
  sub_25C781540(v74, v75, v76);
LABEL_6:
  v57 = v65 & 1;
  v59 = v66;
  v58 = v67;
  sub_25C7814A4(v67, v66, v65 & 1);
  v60 = v68;

  sub_25C781528(v52, v53, v54, v55, v56);
  sub_25C78157C(v52, v53, v54, v55, v56);
  LOBYTE(v74) = v57;
  *a2 = v58;
  *(a2 + 8) = v59;
  *(a2 + 16) = v57;
  *(a2 + 24) = v60;
  *(a2 + 32) = v52;
  *(a2 + 40) = v53;
  *(a2 + 48) = v54;
  *(a2 + 56) = v55;
  *(a2 + 64) = v56;
  sub_25C78157C(v52, v53, v54, v55, v56);
  sub_25C7814B4(v58, v59, v57);
}

uint64_t sub_25C77F930@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25C78EEE4();
  v4 = sub_25C78EDB4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *a1;
  v12 = (*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
  v13 = *v12;
  v14 = v12[1];
  v15 = (v11 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
  v16 = *v15;
  v17 = v15[1];

  sub_25C78E834();

  sub_25C781450();
  v18 = sub_25C78EDA4();
  v20 = v19;
  v21 = v8 & 1;
  v26 = v8 & 1;
  v23 = v22 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v21;
  *(a2 + 24) = v10;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v24;
  sub_25C7814A4(v4, v6, v21);

  sub_25C7814A4(v18, v20, v23);

  sub_25C7814B4(v18, v20, v23);

  sub_25C7814B4(v4, v6, v26);
}

uint64_t sub_25C77FAC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_25C78E9E4();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C78EEF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
  v14 = sub_25C78EF14();
  (*(v10 + 8))(v13, v9);
  *&v39 = v14;
  sub_25C78EDC4();

  v15 = *(a1 + 24);
  sub_25C78EF64();
  sub_25C78E994();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14290, &qword_25C790200) + 36));
  v17 = v40;
  *v16 = v39;
  v16[1] = v17;
  v16[2] = v41;
  v18 = *(a1 + 56);
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14280, &qword_25C7901F8) + 36));
  v20 = *(v5 + 28);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_25C78EB34();
  v23 = *(*(v22 - 8) + 104);
  v23(&v19[v20], v21, v22);
  *v19 = v18;
  *(v19 + 1) = v18;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142A0, &qword_25C790208) + 36)] = 256;
  v23(&v8[*(v5 + 28)], v21, v22);
  *v8 = v18;
  *(v8 + 1) = v18;
  LODWORD(v5) = sub_25C78EC74();
  sub_25C78E954();
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14270, &qword_25C7901F0) + 36);
  v25 = MEMORY[0x277CDFC08];
  sub_25C781014(v8, v24, MEMORY[0x277CDFC08]);
  v26 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142D8, &qword_25C790230) + 36);
  v27 = v43;
  *v26 = v42;
  *(v26 + 16) = v27;
  *(v26 + 32) = v44;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142E0, &qword_25C790238);
  *(v24 + *(v28 + 52)) = v5;
  *(v24 + *(v28 + 56)) = 256;
  v29 = sub_25C78EF64();
  v31 = v30;
  sub_25C78107C(v8, v25);
  v32 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142E8, &qword_25C790240) + 36));
  *v32 = v29;
  v32[1] = v31;
  v33 = sub_25C78EF64();
  v35 = v34;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142B0, &qword_25C790210);
  v37 = (v24 + *(result + 36));
  *v37 = v33;
  v37[1] = v35;
  return result;
}

double sub_25C77FE90@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_25C78EEA4();
  sub_25C78EF64();
  sub_25C78E994();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

double sub_25C77FF0C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_25C77C954(a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25C780014(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25C78EFE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14170, &unk_25C790010);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25C780158(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_25C78EFE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14170, &unk_25C790010);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_25C780288()
{
  sub_25C780384(319, &qword_27FC14188, type metadata accessor for NoteViewModel, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25C78EFE4();
    if (v1 <= 0x3F)
    {
      sub_25C780384(319, &qword_27FC14190, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25C780384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25C7803EC()
{
  result = qword_27FC14198;
  if (!qword_27FC14198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC141A0, &qword_25C790038);
    sub_25C7804B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14198);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25C7804B8()
{
  result = qword_27FC141A8;
  if (!qword_27FC141A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14168, &qword_25C78FFB0);
    sub_25C780544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141A8);
  }

  return result;
}

unint64_t sub_25C780544()
{
  result = qword_27FC141B0;
  if (!qword_27FC141B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14160, &qword_25C78FFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC141B8, &qword_25C790040);
    sub_25C78060C();
    swift_getOpaqueTypeConformance2();
    sub_25C780718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141B0);
  }

  return result;
}

unint64_t sub_25C78060C()
{
  result = qword_27FC141C0;
  if (!qword_27FC141C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC141B8, &qword_25C790040);
    sub_25C7806C4();
    sub_25C78240C(&qword_27FC141D0, &qword_27FC141D8, &qword_25C790048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141C0);
  }

  return result;
}

unint64_t sub_25C7806C4()
{
  result = qword_27FC141C8;
  if (!qword_27FC141C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141C8);
  }

  return result;
}

unint64_t sub_25C780718()
{
  result = qword_27FC141E0;
  if (!qword_27FC141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141E0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C780778(uint64_t a1, int a2)
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

uint64_t sub_25C7807C0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25C780824(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25C78086C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25C780904()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25C78094C@<X0>(void (*a1)(uint64_t)@<X1>, void (*a2)(void *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142D0, &qword_25C790228);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14270, &qword_25C7901F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-1] - v11;
  v13 = sub_25C78E9B4();
  if (v13)
  {
    a1(v13);
    sub_25C780FAC(v12, v8, &qword_27FC14270, &qword_25C7901F0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142C0, &qword_25C790218);
    sub_25C780C94();
    sub_25C780EC0();
    sub_25C78EC64();

    return sub_25C77AB6C(v12, &qword_27FC14270, &qword_25C7901F0);
  }

  else
  {
    a2(v21);
    v15 = v21[1];
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    *v8 = v21[0];
    *(v8 + 1) = v15;
    v8[16] = v16;
    *(v8 + 3) = v17;
    v8[32] = v18;
    *(v8 + 40) = v19;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142C0, &qword_25C790218);
    sub_25C780C94();
    sub_25C780EC0();
    return sub_25C78EC64();
  }
}

uint64_t sub_25C780B84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25C780BC4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return sub_25C78094C(*(v1 + 16), *(v1 + 32), a1);
}

unint64_t sub_25C780C08()
{
  result = qword_27FC14260;
  if (!qword_27FC14260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14258, &qword_25C7901E8);
    sub_25C780C94();
    sub_25C780EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14260);
  }

  return result;
}

unint64_t sub_25C780C94()
{
  result = qword_27FC14268;
  if (!qword_27FC14268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14270, &qword_25C7901F0);
    sub_25C780D4C();
    sub_25C78240C(&qword_27FC142A8, &qword_27FC142B0, &qword_25C790210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14268);
  }

  return result;
}

unint64_t sub_25C780D4C()
{
  result = qword_27FC14278;
  if (!qword_27FC14278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14280, &qword_25C7901F8);
    sub_25C780E04();
    sub_25C78240C(&qword_27FC14298, &qword_27FC142A0, &qword_25C790208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14278);
  }

  return result;
}

unint64_t sub_25C780E04()
{
  result = qword_27FC14288;
  if (!qword_27FC14288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14290, &qword_25C790200);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14288);
  }

  return result;
}

unint64_t sub_25C780EC0()
{
  result = qword_27FC142B8;
  if (!qword_27FC142B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC142C0, &qword_25C790218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC142B8);
  }

  return result;
}

uint64_t sub_25C780F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C780FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C781014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C78107C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_25C7810DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14150, &qword_25C78FF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25C7811E8(char *a1, int64_t a2, char a3)
{
  result = sub_25C781208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C781208(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14150, &qword_25C78FF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25C781338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_25C781450()
{
  result = qword_27FC14350;
  if (!qword_27FC14350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14350);
  }

  return result;
}

uint64_t sub_25C7814A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7814B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7814C4@<X0>(uint64_t a1@<X8>)
{
  result = sub_25C78EA84();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25C7814F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_25C78EA94();
}

uint64_t sub_25C781528(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_25C781540(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25C781540(uint64_t a1, uint64_t a2, char a3)
{
  sub_25C7814A4(a1, a2, a3 & 1);
}

uint64_t sub_25C78157C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_25C781594(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25C781594(uint64_t a1, uint64_t a2, char a3)
{
  sub_25C7814B4(a1, a2, a3 & 1);
}

unint64_t sub_25C7815D0()
{
  result = qword_27FC14388;
  if (!qword_27FC14388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14380, &qword_25C790368);
    sub_25C781688();
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14388);
  }

  return result;
}

unint64_t sub_25C781688()
{
  result = qword_27FC14390;
  if (!qword_27FC14390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14398, &qword_25C790370);
    sub_25C781740();
    sub_25C78240C(&qword_27FC143C0, &qword_27FC14338, &qword_25C790290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14390);
  }

  return result;
}

unint64_t sub_25C781740()
{
  result = qword_27FC143A0;
  if (!qword_27FC143A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC143A8, &qword_25C790378);
    sub_25C78240C(&qword_27FC143B0, &qword_27FC143B8, &qword_25C790380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC143A0);
  }

  return result;
}

unint64_t sub_25C7817F8()
{
  result = qword_27FC143D8;
  if (!qword_27FC143D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14328, &qword_25C790280);
    sub_25C781884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC143D8);
  }

  return result;
}

unint64_t sub_25C781884()
{
  result = qword_27FC143E0;
  if (!qword_27FC143E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14330, &qword_25C790288);
    sub_25C78240C(&qword_27FC143C0, &qword_27FC14338, &qword_25C790290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC143E0);
  }

  return result;
}

unint64_t sub_25C78193C()
{
  result = qword_27FC14450;
  if (!qword_27FC14450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14430, &qword_25C7903D8);
    sub_25C7819C8();
    sub_25C781BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14450);
  }

  return result;
}

unint64_t sub_25C7819C8()
{
  result = qword_27FC14458;
  if (!qword_27FC14458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14448, &qword_25C7903F0);
    sub_25C781A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14458);
  }

  return result;
}

unint64_t sub_25C781A4C()
{
  result = qword_27FC14460;
  if (!qword_27FC14460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14440, &qword_25C7903E8);
    sub_25C781B04();
    sub_25C78240C(&qword_27FC143C0, &qword_27FC14338, &qword_25C790290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14460);
  }

  return result;
}

unint64_t sub_25C781B04()
{
  result = qword_27FC14468;
  if (!qword_27FC14468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14470, &qword_25C7903F8);
    sub_25C781740();
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14468);
  }

  return result;
}

unint64_t sub_25C781BBC()
{
  result = qword_27FC14478;
  if (!qword_27FC14478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14418, &qword_25C7903C0);
    sub_25C781C48();
    sub_25C7815D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14478);
  }

  return result;
}

unint64_t sub_25C781C48()
{
  result = qword_27FC14480;
  if (!qword_27FC14480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14410, &qword_25C7903B8);
    sub_25C781D00();
    sub_25C78240C(&qword_27FC143C0, &qword_27FC14338, &qword_25C790290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14480);
  }

  return result;
}

unint64_t sub_25C781D00()
{
  result = qword_27FC14488;
  if (!qword_27FC14488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14490, &qword_25C790400);
    sub_25C781DB8();
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14488);
  }

  return result;
}

unint64_t sub_25C781DB8()
{
  result = qword_27FC14498;
  if (!qword_27FC14498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144A0, &qword_25C790408);
    sub_25C781E70();
    sub_25C78240C(&qword_27FC143B0, &qword_27FC143B8, &qword_25C790380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14498);
  }

  return result;
}

unint64_t sub_25C781E70()
{
  result = qword_27FC144A8;
  if (!qword_27FC144A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144B0, &qword_25C790410);
    sub_25C78240C(&qword_27FC144B8, &qword_27FC144C0, &qword_25C790418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC144A8);
  }

  return result;
}

uint64_t sub_25C781F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C78EA34();
  *a1 = result;
  return result;
}

uint64_t sub_25C781F54(uint64_t *a1)
{
  v1 = *a1;

  return sub_25C78EA44();
}

unint64_t sub_25C781F80()
{
  result = qword_27FC144F0;
  if (!qword_27FC144F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144C8, &qword_25C790450);
    sub_25C78240C(&qword_27FC144E8, &qword_27FC144E0, &qword_25C790468);
    sub_25C782038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC144F0);
  }

  return result;
}

unint64_t sub_25C782038()
{
  result = qword_27FC144F8;
  if (!qword_27FC144F8)
  {
    sub_25C78ECC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC144F8);
  }

  return result;
}

uint64_t sub_25C782090()
{
  v1 = (type metadata accessor for NotesSiriListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[7];
  v9 = sub_25C78EFE4();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14158, &qword_25C78FFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25C78E7C4();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
    v12 = *(v6 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25C7821F8()
{
  v1 = *(type metadata accessor for NotesSiriListView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_25C77C72C(v2, v3);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_25C7822C8()
{
  result = qword_27FC14518;
  if (!qword_27FC14518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14200, &qword_25C790188);
    sub_25C782354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14518);
  }

  return result;
}

unint64_t sub_25C782354()
{
  result = qword_27FC14520;
  if (!qword_27FC14520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC141F0, &qword_25C790178);
    sub_25C78240C(&qword_27FC14528, &qword_27FC141E8, &qword_25C790170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14520);
  }

  return result;
}

uint64_t sub_25C78240C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25C782458()
{
  result = qword_27FC14530;
  if (!qword_27FC14530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144D8, &qword_25C790460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144C8, &qword_25C790450);
    sub_25C781F80();
    swift_getOpaqueTypeConformance2();
    sub_25C782038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14530);
  }

  return result;
}

unint64_t NotesSiriSingleNoteView.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  v6 = a3 + *(type metadata accessor for NotesSiriSingleNoteView(0) + 28);
  sub_25C78E734();
  v7 = objc_opt_self();
  [v7 startSharedContextWithOptions_];
  *a3 = a1;
  *(a3 + 8) = a2;

  v8 = [v7 sharedContext];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 managedObjectContext];
  }

  else
  {
    v10 = 0;
  }

  result = [objc_opt_self() sharedContext];
  if (!result)
  {
    goto LABEL_24;
  }

  v12 = result;
  v13 = [result managedObjectContext];

  v24[0] = a1;
  v24[1] = a2;
  v14 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v15 = v13;
  v22[0] = a1;
  v22[1] = a2;

  sub_25C788AD8(v22, v13, 0, 0, v10, &v21);

  if (v21)
  {
    MEMORY[0x25F88CDF0](v16);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25C78F084();
    }

    sub_25C78F094();
    v14 = v23;
  }

  sub_25C786830(v24);
  if (!(v14 >> 62))
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_18:

    v19 = 0;
    goto LABEL_19;
  }

  v17 = sub_25C78F1A4();
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_11:
  v18 = __OFSUB__(v17, 1);
  result = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v19 = MEMORY[0x25F88CF20](result, v14);
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v14 + 8 * result + 32);

LABEL_16:

LABEL_19:

    *(a3 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t NotesSiriSingleNoteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = sub_25C78EB74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14548, &qword_25C7904A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];

  sub_25C7829EC(v15, v16, v17, v10);
  sub_25C78EB54();
  sub_25C786C9C(&qword_27FC14550, type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView);
  sub_25C78EE14();
  (*(v3 + 8))(v6, v2);
  sub_25C7868A4(v10);
  v20[2] = sub_25C78E854();
  v20[3] = v18;
  sub_25C781450();
  sub_25C78E9C4();

  return sub_25C77AB6C(v14, &qword_27FC14548, &qword_25C7904A0);
}

void sub_25C7829EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v39 = a2;
  v6 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v7 = (v6 - 8);
  v40 = *(v6 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C78E7A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v17 = v7[9];
  sub_25C78E734();
  v18 = a4 + v7[10];
  sub_25C78EFD4();
  *(a4 + v7[11]) = 0x4028000000000000;
  v19 = a4 + v7[12];
  LOBYTE(v42) = 0;
  sub_25C78EF24();
  v20 = v44;
  *v19 = aBlock;
  *(v19 + 8) = v20;
  v21 = (a4 + v7[13]);
  v42 = 0xBFF0000000000000;
  sub_25C78EF24();
  v22 = v44;
  *v21 = aBlock;
  v21[1] = v22;
  v23 = v7[14];
  sub_25C78E794();
  (*(v10 + 16))(v14, v16, v9);
  sub_25C78EF24();
  (*(v10 + 8))(v16, v9);
  v24 = (a4 + v7[15]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = v7[16];
  *(a4 + v25) = 0;
  v26 = v7[17];
  *(a4 + v26) = 0;
  *(a4 + v7[18]) = 0x4034000000000000;
  *(a4 + v7[19]) = 0x4038000000000000;
  *(a4 + v7[20]) = 0x403C000000000000;
  *(a4 + v7[21]) = 0x404A000000000000;
  [objc_opt_self() startSharedContextWithOptions_];
  v27 = v39;
  *a4 = v38;
  *(a4 + 8) = v27;
  if (a3)
  {

    sub_25C77AB6C(a4 + v17, &qword_27FC14000, " \r");
    v28 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
    swift_beginAccess();
    v29 = sub_25C78E744();
    v30 = *(v29 - 8);
    (*(v30 + 16))(a4 + v17, a3 + v28, v29);
    (*(v30 + 56))(a4 + v17, 0, 1, v29);
    v31 = (a3 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
    swift_beginAccess();
    v32 = v31[1];
    *v24 = *v31;
    v24[1] = v32;
    *(a4 + v25) = *(a3 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected);
    *(a4 + v26) = *(a3 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isUnsupported);
    LOBYTE(v28) = *(a3 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isModernNote);

    *(a4 + 24) = v28;
  }

  v33 = objc_opt_self();
  v34 = v41;
  sub_25C7872A4(a4, v41);
  v35 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v36 = swift_allocObject();
  sub_25C78730C(v34, v36 + v35);
  v47 = sub_25C78832C;
  v48 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_25C78301C;
  v46 = &block_descriptor_0;
  v37 = _Block_copy(&aBlock);

  [v33 setOpenURLHandler_];

  _Block_release(v37);
}

void sub_25C782EC4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_25C78F004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v12 = sub_25C78E714();
  [v11 setPunchOutUri_];

  v13 = a4 + *(type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0) + 32);
  sub_25C78EFC4();
  v14 = v11;
  sub_25C78EFF4();

  (*(v7 + 8))(v10, v6);
  if (a2)
  {
    a2(1);
  }
}

uint64_t sub_25C78301C(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_25C78E744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_25C78E724();
  v12 = _Block_copy(a3);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_25C788404;
  }

  else
  {
    v13 = 0;
  }

  v11(v9, v12, v13);
  sub_25C77ABCC(v12);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25C783178@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_25C78EB74();
  v30 = *(v31 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14780, &qword_25C7907A0);
  v28 = *(v27 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v9 = &v26 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14680, &qword_25C7906C8);
  v10 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v12 = &v26 - v11;
  v14 = *v1;
  v13 = v1[1];
  v15 = (v1 + *(v5 + 44));
  v16 = *v15;
  v17 = v15[1];
  v37[0] = v16;
  v37[1] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145C8, &qword_25C790608);
  sub_25C78EF34();
  v18 = v33;
  v35 = v5;
  v36 = &off_286E65B60;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  sub_25C7872A4(v1, boxed_opaque_existential_1);
  sub_25C777F28(v14, v13, &v33, v37, *&v18);
  sub_25C7872A4(v1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_25C78730C(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = sub_25C77AA48();
  sub_25C78EE04();

  sub_25C78EB54();
  v33 = &type metadata for NotesSiriTextEditorWrapper;
  v34 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_25C78EE14();
  (*(v30 + 8))(v4, v31);
  (*(v28 + 8))(v9, v23);
  v33 = sub_25C78E854();
  v34 = v24;
  sub_25C781450();
  sub_25C78E9C4();

  sub_25C77AB6C(v12, &qword_27FC14680, &qword_25C7906C8);
  return sub_25C7882D8(v37);
}

uint64_t sub_25C7835C4(uint64_t a1)
{
  v2 = sub_25C78F004();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v12 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  sub_25C780FAC(a1 + *(v12 + 28), v10, &qword_27FC14000, " \r");
  v13 = sub_25C78E744();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    v15 = sub_25C78E714();
    (*(v14 + 8))(v10, v13);
  }

  [v11 setPunchOutUri_];

  v16 = a1 + *(v12 + 32);
  sub_25C78EFC4();
  v17 = v11;
  sub_25C78EFF4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25C7837EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = sub_25C78F024();
  v9 = [v7 BOOLForKey_];

  v10 = [v6 standardUserDefaults];
  v11 = sub_25C78F024();
  [v10 setBool:v9 forKey:v11];

  *a1 = sub_25C78EF64();
  a1[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145A8, &qword_25C7905E8);
  sub_25C783AC8(v2, v9, a1 + *(v13 + 44));
  v14 = [objc_opt_self() defaultCenter];
  if (qword_27FC13F78 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145B0, &qword_25C7905F0);
  v16 = a1 + *(v15 + 52);
  sub_25C78F0E4();

  sub_25C7872A4(v2, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_25C78730C(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = (a1 + *(v15 + 56));
  *v19 = sub_25C787370;
  v19[1] = v18;
  v20 = *(v23 + 48);
  LODWORD(v17) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145B8, &qword_25C7905F8) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  return sub_25C78EF34();
}

uint64_t sub_25C783AC8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v37 = a3;
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145D0, &qword_25C790610);
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145D8, &qword_25C790618);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145E0, &qword_25C790620);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - v23;
  *v24 = sub_25C78EBA4();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145E8, &qword_25C790628);
  sub_25C783F10(a1, v35, &v24[*(v25 + 44)]);
  *&v24[*(v18 + 44)] = 0;
  if (*(a1 + 24) == 1)
  {
    v38 = sub_25C78EE94();
    v39 = 0x3F50624DD2F1A9FCLL;
    sub_25C7872A4(a1, &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v27 = swift_allocObject();
    sub_25C78730C(&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145F8, &qword_25C790638);
    sub_25C787AC8();
    sub_25C78EE04();

    v28 = v36;
    *&v9[*(v36 + 36)] = 0x3FF0000000000000;
    sub_25C780F44(v9, v16, &qword_27FC145D0, &qword_25C790610);
    v29 = 0;
    v30 = v28;
  }

  else
  {
    v29 = 1;
    v30 = v36;
  }

  (*(v6 + 56))(v16, v29, 1, v30);
  sub_25C780FAC(v24, v22, &qword_27FC145E0, &qword_25C790620);
  sub_25C780FAC(v16, v14, &qword_27FC145D8, &qword_25C790618);
  v31 = v37;
  sub_25C780FAC(v22, v37, &qword_27FC145E0, &qword_25C790620);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145F0, &qword_25C790630);
  sub_25C780FAC(v14, v31 + *(v32 + 48), &qword_27FC145D8, &qword_25C790618);
  sub_25C77AB6C(v16, &qword_27FC145D8, &qword_25C790618);
  sub_25C77AB6C(v24, &qword_27FC145E0, &qword_25C790620);
  sub_25C77AB6C(v14, &qword_27FC145D8, &qword_25C790618);
  return sub_25C77AB6C(v22, &qword_27FC145E0, &qword_25C790620);
}

uint64_t sub_25C783F10@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v66) = a2;
  v70 = a3;
  v65 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v58 = *(v65 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v65);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25C78E7E4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = sub_25C78EFB4();
  v61 = *(v62 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14630, &qword_25C790650);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14638, &qword_25C790658);
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14640, &qword_25C790660);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v68 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14648, &qword_25C790668);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v67 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v58 - v28;
  *v29 = sub_25C78EAD4();
  *(v29 + 1) = 0;
  v30 = 1;
  v29[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14650, &qword_25C790670);
  sub_25C784788(a1, &v29[*(v31 + 44)]);
  if (v66)
  {
    v66 = v13;
    v32 = sub_25C78E864();
    *(&v76 + 1) = MEMORY[0x277D837D0];
    *&v77 = MEMORY[0x277D63F80];
    *&v75 = v32;
    *(&v75 + 1) = v33;
    v74 = 0;
    v73 = 0u;
    v72 = 0u;
    sub_25C78E7D4();
    v71[3] = sub_25C78EF84();
    v71[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v71);
    sub_25C78EF94();
    sub_25C78EFA4();
    v34 = v59;
    sub_25C7872A4(a1, v59);
    v35 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v36 = swift_allocObject();
    sub_25C78730C(v34, v36 + v35);
    sub_25C786C9C(&qword_27FC14660, MEMORY[0x277D63CD0]);
    v37 = v62;
    sub_25C78EE04();

    (*(v61 + 8))(v9, v37);
    LOBYTE(v37) = sub_25C78ED04();
    v38 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14668, &qword_25C790680) + 36)];
    *v38 = v37;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    v38[40] = 1;
    v39 = &v12[*(v60 + 36)];
    *v39 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14670, &qword_25C7906B8);
    swift_storeEnumTagMultiPayload();
    v40 = sub_25C78EF64();
    v42 = v41;
    v43 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14678, &qword_25C7906C0) + 36));
    *v43 = v40;
    v43[1] = v42;
    v44 = *(a1 + *(v65 + 76));
    sub_25C78EF64();
    sub_25C78E9F4();
    v45 = v64;
    sub_25C780F44(v12, v64, &qword_27FC14630, &qword_25C790650);
    v13 = v66;
    v46 = (v45 + *(v66 + 36));
    v47 = v78;
    v48 = v80;
    v49 = v81;
    v46[4] = v79;
    v46[5] = v48;
    v46[6] = v49;
    v50 = v76;
    *v46 = v75;
    v46[1] = v50;
    v46[2] = v77;
    v46[3] = v47;
    v51 = v45;
    v52 = v63;
    sub_25C780F44(v51, v63, &qword_27FC14638, &qword_25C790658);
    sub_25C780F44(v52, v23, &qword_27FC14638, &qword_25C790658);
    v30 = 0;
  }

  (*(v69 + 56))(v23, v30, 1, v13);
  v53 = v67;
  sub_25C780FAC(v29, v67, &qword_27FC14648, &qword_25C790668);
  v54 = v68;
  sub_25C780FAC(v23, v68, &qword_27FC14640, &qword_25C790660);
  v55 = v70;
  sub_25C780FAC(v53, v70, &qword_27FC14648, &qword_25C790668);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14658, &qword_25C790678);
  sub_25C780FAC(v54, v55 + *(v56 + 48), &qword_27FC14640, &qword_25C790660);
  sub_25C77AB6C(v23, &qword_27FC14640, &qword_25C790660);
  sub_25C77AB6C(v29, &qword_27FC14648, &qword_25C790668);
  sub_25C77AB6C(v54, &qword_27FC14640, &qword_25C790660);
  return sub_25C77AB6C(v53, &qword_27FC14648, &qword_25C790668);
}

uint64_t sub_25C784788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14680, &qword_25C7906C8);
  v3 = *(*(v64 - 1) + 64);
  MEMORY[0x28223BE20](v64);
  v59 = &v57 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14688, &qword_25C7906D0);
  v5 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v57 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14690, &qword_25C7906D8);
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14698, &qword_25C7906E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v57 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC146A0, &qword_25C7906E8);
  v13 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v15 = &v57 - v14;
  v16 = sub_25C78EB74();
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x28223BE20](v16);
  v68 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v65 = *(v19 - 1);
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC146A8, &qword_25C7906F0);
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC146B0, &qword_25C7906F8);
  v25 = *(*(v71 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v71);
  MEMORY[0x28223BE20](v26);
  if ((*(a1 + v19[14]) & 1) != 0 || *(a1 + v19[15]) == 1)
  {
    v63 = v28;
    v64 = &v57 - v27;
    v58 = sub_25C78EBA4();
    v83 = 1;
    sub_25C785114(a1, v81);
    memcpy(v85, v81, sizeof(v85));
    memcpy(v86, v81, 0x250uLL);
    v59 = a1;
    v61 = v16;
    sub_25C780FAC(v85, v73, &qword_27FC14728, &qword_25C790728);
    sub_25C77AB6C(v86, &qword_27FC14728, &qword_25C790728);
    memcpy(&v82[7], v85, 0x250uLL);
    v29 = v83;
    sub_25C78EF74();
    sub_25C78E9F4();
    v30 = sub_25C78ED14();
    KeyPath = swift_getKeyPath();
    v32 = sub_25C78EC84();
    v62 = v10;
    v33 = v32;
    v34 = sub_25C78ECF4();
    v60 = v15;
    v35 = v34;
    v84 = 1;
    v73[0] = v58;
    v73[1] = 0;
    LOBYTE(v73[2]) = v29;
    memcpy(&v73[2] + 1, v82, 0x257uLL);
    *&v73[85] = v78;
    *&v73[87] = v79;
    *&v73[89] = v80;
    *&v73[77] = v74;
    *&v73[79] = v75;
    *&v73[81] = v76;
    *&v73[83] = v77;
    v73[91] = KeyPath;
    v73[92] = v30;
    LODWORD(v73[93]) = v33;
    LOBYTE(v73[94]) = v35;
    memset(&v73[95], 0, 32);
    LOBYTE(v73[99]) = 1;
    sub_25C7872A4(v59, &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v37 = swift_allocObject();
    sub_25C78730C(&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC146D0, &qword_25C790700);
    v39 = sub_25C787F00(&qword_27FC146D8, &qword_27FC146D0, &qword_25C790700, sub_25C787F84);
    sub_25C78EE04();

    memcpy(v81, v73, 0x319uLL);
    sub_25C77AB6C(v81, &qword_27FC146D0, &qword_25C790700);
    v40 = v68;
    sub_25C78EB54();
    v73[0] = v38;
    v73[1] = v39;
    swift_getOpaqueTypeConformance2();
    v41 = v63;
    v42 = v67;
    sub_25C78EE14();
    (*(v69 + 8))(v40, v61);
    (*(v66 + 8))(v24, v42);
    v73[0] = sub_25C78E854();
    v73[1] = v43;
    sub_25C781450();
    v44 = v64;
    sub_25C78E9C4();

    v45 = &qword_27FC146B0;
    v46 = &qword_25C7906F8;
    sub_25C77AB6C(v41, &qword_27FC146B0, &qword_25C7906F8);
    sub_25C780FAC(v44, v60, &qword_27FC146B0, &qword_25C7906F8);
    swift_storeEnumTagMultiPayload();
    sub_25C787DD4();
    sub_25C7881AC();
    sub_25C78EC64();
    v47 = v44;
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      sub_25C783178(v9);
      v48 = *(a1 + v19[9]);
      v49 = sub_25C78ECE4();
      v50 = &v9[*(v62 + 36)];
      *v50 = v49;
      *(v50 + 1) = v48;
      *(v50 + 2) = 0;
      *(v50 + 3) = v48;
      *(v50 + 4) = 0;
      v50[40] = 0;
      sub_25C780FAC(v9, v60, &qword_27FC14690, &qword_25C7906D8);
      swift_storeEnumTagMultiPayload();
      sub_25C787F00(&qword_27FC146B8, &qword_27FC14690, &qword_25C7906D8, sub_25C787CEC);
      sub_25C787CEC();
      v51 = v63;
      sub_25C78EC64();
      v52 = v9;
      v53 = &qword_27FC14690;
      v54 = &qword_25C7906D8;
    }

    else
    {
      v55 = v59;
      sub_25C783178(v59);
      sub_25C780FAC(v55, v60, &qword_27FC14680, &qword_25C7906C8);
      swift_storeEnumTagMultiPayload();
      sub_25C787F00(&qword_27FC146B8, &qword_27FC14690, &qword_25C7906D8, sub_25C787CEC);
      sub_25C787CEC();
      v51 = v63;
      sub_25C78EC64();
      v52 = v55;
      v53 = &qword_27FC14680;
      v54 = &qword_25C7906C8;
    }

    sub_25C77AB6C(v52, v53, v54);
    v45 = &qword_27FC14698;
    v46 = &qword_25C7906E0;
    sub_25C780FAC(v51, v15, &qword_27FC14698, &qword_25C7906E0);
    swift_storeEnumTagMultiPayload();
    sub_25C787DD4();
    sub_25C7881AC();
    sub_25C78EC64();
    v47 = v51;
  }

  return sub_25C77AB6C(v47, v45, v46);
}

uint64_t sub_25C785114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0) + 68));
  sub_25C78EF64();
  sub_25C78E994();
  v16 = v42;
  v17 = v40;
  v14 = v45;
  v15 = v44;
  v53 = 1;
  v52 = v41;
  v51 = v43;
  v13 = sub_25C78EAD4();
  v39 = 1;
  sub_25C7853F4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v55, __src, 0x148uLL);
  sub_25C780FAC(__dst, v29, &qword_27FC14730, &qword_25C790760);
  sub_25C77AB6C(v55, &qword_27FC14730, &qword_25C790760);
  memcpy(&v38[7], __dst, 0x148uLL);
  v5 = v39;
  sub_25C78EF74();
  sub_25C78E9F4();
  sub_25C78EF64();
  sub_25C78E994();
  v12 = v46;
  v6 = v47;
  v7 = v48;
  v8 = v49;
  v28 = 1;
  v27 = v47;
  v26 = v49;
  v9 = v53;
  v10 = v52;
  LOBYTE(v4) = v51;
  v29[0] = v13;
  LOBYTE(v29[1]) = v5;
  memcpy(&v29[1] + 1, v38, 0x14FuLL);
  v29[26] = v23;
  v29[27] = v24;
  v29[28] = v25;
  v29[22] = v19;
  v29[23] = v20;
  v29[24] = v21;
  v29[25] = v22;
  *a2 = 0;
  *(a2 + 8) = v9;
  *(a2 + 16) = v17;
  *(a2 + 24) = v10;
  *(a2 + 32) = v16;
  *(a2 + 40) = v4;
  *(a2 + 48) = v15;
  *(a2 + 56) = v14;
  memcpy((a2 + 64), v29, 0x1D0uLL);
  *(a2 + 528) = 0;
  *(a2 + 536) = 1;
  *(a2 + 544) = v12;
  *(a2 + 552) = v6;
  *(a2 + 560) = v7;
  *(a2 + 568) = v8;
  *(a2 + 576) = v50;
  *__src = v13;
  *&__src[8] = 0;
  __src[16] = v5;
  memcpy(&__src[17], v38, 0x14FuLL);
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  sub_25C780FAC(v29, v18, &qword_27FC14738, &qword_25C790768);
  return sub_25C77AB6C(__src, &qword_27FC14738, &qword_25C790768);
}

uint64_t sub_25C7853F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v5 = *(a1 + *(v4 + 64));
  sub_25C78EF64();
  sub_25C78E994();
  v6 = v74;
  v29 = v78;
  v30 = v76;
  v28 = v79;
  v95 = 1;
  v94 = v75;
  v93 = v77;
  if (*(a1 + *(v4 + 56)) == 1)
  {
    v7 = sub_25C78EBA4();
    LOBYTE(v57) = 1;
    sub_25C785A60(a1, &v80);
    v40 = v88;
    v41 = v89;
    v36 = v84;
    v37 = v85;
    v38 = v86;
    v39 = v87;
    v32 = v80;
    v33 = v81;
    v34 = v82;
    v35 = v83;
    v51 = v88;
    v52 = v89;
    v47 = v84;
    v48 = v85;
    v49 = v86;
    v50 = v87;
    v43 = v80;
    v44 = v81;
    v42 = v90;
    v53 = v90;
    v45 = v82;
    v46 = v83;
    sub_25C780FAC(&v32, &v71, &qword_27FC14770, &qword_25C790790);
    sub_25C77AB6C(&v43, &qword_27FC14770, &qword_25C790790);
    *&v31[119] = v39;
    *&v31[135] = v40;
    *&v31[151] = v41;
    *&v31[167] = v42;
    *&v31[55] = v35;
    *&v31[71] = v36;
    *&v31[87] = v37;
    *&v31[103] = v38;
    *&v31[7] = v32;
    *&v31[23] = v33;
    *&v31[39] = v34;
    *&v72[113] = *&v31[112];
    *&v72[129] = *&v31[128];
    *&v72[145] = *&v31[144];
    *&v72[160] = *&v31[159];
    *&v72[49] = *&v31[48];
    *&v72[65] = *&v31[64];
    *&v72[81] = *&v31[80];
    *&v72[97] = *&v31[96];
    *&v72[1] = *v31;
    *&v72[17] = *&v31[16];
    v71 = v7;
    v72[0] = v57;
    *&v72[33] = *&v31[32];
    sub_25C788278(&v71);
  }

  else
  {
    v8 = sub_25C78EBA4();
    LOBYTE(v57) = 1;
    sub_25C785D5C(a1, &v80);
    v38 = v86;
    v39 = v87;
    v40 = v88;
    v41 = v89;
    v34 = v82;
    v35 = v83;
    v36 = v84;
    v37 = v85;
    v32 = v80;
    v33 = v81;
    v49 = v86;
    v50 = v87;
    v51 = v88;
    v52 = v89;
    v45 = v82;
    v46 = v83;
    v47 = v84;
    v48 = v85;
    v43 = v80;
    v44 = v81;
    sub_25C780FAC(&v32, &v71, &qword_27FC14740, &qword_25C790770);
    sub_25C77AB6C(&v43, &qword_27FC14740, &qword_25C790770);
    *&v70[55] = v35;
    *&v70[39] = v34;
    *&v70[103] = v38;
    *&v70[119] = v39;
    *&v70[135] = v40;
    *&v70[151] = v41;
    *&v70[71] = v36;
    *&v70[87] = v37;
    *&v70[7] = v32;
    *&v70[23] = v33;
    *&v72[113] = *&v70[112];
    *&v72[129] = *&v70[128];
    *&v72[145] = *&v70[144];
    *&v72[49] = *&v70[48];
    *&v72[65] = *&v70[64];
    *&v72[81] = *&v70[80];
    *&v72[97] = *&v70[96];
    *&v72[1] = *v70;
    *&v72[17] = *&v70[16];
    v71 = v8;
    v72[0] = v57;
    *&v72[160] = *(&v41 + 1);
    *&v72[33] = *&v70[32];
    sub_25C78826C(&v71);
  }

  v67 = *&v72[144];
  v68 = *&v72[160];
  v69 = v73;
  v63 = *&v72[80];
  v64 = *&v72[96];
  v65 = *&v72[112];
  v66 = *&v72[128];
  v59 = *&v72[16];
  v60 = *&v72[32];
  v61 = *&v72[48];
  v62 = *&v72[64];
  v57 = v71;
  v58 = *v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14748, &qword_25C790778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14750, &qword_25C790780);
  sub_25C78240C(&qword_27FC14758, &qword_27FC14748, &qword_25C790778);
  sub_25C78240C(&qword_27FC14760, &qword_27FC14750, &qword_25C790780);
  sub_25C78EC64();
  sub_25C78EF64();
  sub_25C78E994();
  *&v72[144] = v90;
  *&v72[160] = v91;
  v9 = v86;
  *&v72[80] = v86;
  *&v72[96] = v87;
  v10 = v88;
  *&v72[128] = v89;
  *&v72[112] = v88;
  v11 = v82;
  *&v72[16] = v82;
  *&v72[32] = v83;
  v12 = v84;
  *&v72[64] = v85;
  *&v72[48] = v84;
  v13 = v80;
  v71 = v80;
  *v72 = v81;
  v14 = v91;
  v67 = v90;
  v68 = v91;
  v15 = v87;
  v63 = v86;
  v64 = v87;
  v16 = v89;
  v65 = v88;
  v66 = v89;
  v17 = v83;
  v59 = v82;
  v60 = v83;
  v18 = v85;
  v61 = v84;
  v62 = v85;
  v19 = v81;
  v57 = v80;
  v58 = v81;
  *(a2 + 224) = v90;
  *(a2 + 240) = v14;
  *(a2 + 160) = v9;
  *(a2 + 176) = v15;
  *(a2 + 192) = v10;
  *(a2 + 208) = v16;
  *(a2 + 96) = v11;
  *(a2 + 112) = v17;
  *(a2 + 128) = v12;
  *(a2 + 144) = v18;
  v20 = v32;
  v21 = v33;
  v56 = 1;
  v55 = BYTE8(v32);
  v54 = BYTE8(v33);
  v22 = v95;
  v23 = v94;
  v24 = v93;
  v73 = v92;
  v25 = BYTE8(v32);
  v26 = BYTE8(v33);
  v69 = v92;
  *a2 = 0;
  *(a2 + 8) = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v23;
  *(a2 + 32) = v30;
  *(a2 + 40) = v24;
  *(a2 + 48) = v29;
  *(a2 + 56) = v28;
  *(a2 + 256) = v92;
  *(a2 + 64) = v13;
  *(a2 + 80) = v19;
  *(a2 + 264) = 0;
  *(a2 + 272) = 1;
  *(a2 + 280) = v20;
  *(a2 + 288) = v25;
  *(a2 + 296) = v21;
  *(a2 + 304) = v26;
  *(a2 + 312) = v34;
  sub_25C780FAC(&v57, &v43, &qword_27FC14768, &qword_25C790788);
  return sub_25C77AB6C(&v71, &qword_27FC14768, &qword_25C790788);
}

uint64_t sub_25C785A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v5 = (a1 + *(v4 + 52));
  v6 = v5[1];
  v47 = *v5;
  v48 = v6;
  sub_25C781450();

  v7 = sub_25C78EDA4();
  v9 = v8;
  v30 = v10;
  v31 = v11;
  v12 = *(a1 + *(v4 + 72));
  sub_25C78EF64();
  sub_25C78E994();
  v13 = v33;
  v14 = v35;
  v15 = v37;
  v16 = v38;
  v41 = 1;
  v40 = v34;
  v39 = v36;
  v17 = sub_25C78EAC4();
  sub_25C785C78(&v47);
  v18 = v47;
  v19 = v48;
  v20 = v49;
  v21 = v50;
  v22 = v51;
  v23 = v52;
  v24 = v34;
  v25 = v36;
  v32[72] = v30 & 1;
  v42 = v17;
  LOBYTE(v43) = 1;
  *(&v43 + 1) = v47;
  LODWORD(v44) = v48;
  *(&v44 + 1) = v49;
  *&v45 = v50;
  BYTE8(v45) = v51;
  v46 = v52;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v13;
  *(a2 + 56) = v24;
  *(a2 + 64) = v14;
  *(a2 + 72) = v25;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  v26 = v44;
  v27 = v45;
  *(a2 + 160) = v23;
  *(a2 + 128) = v26;
  *(a2 + 144) = v27;
  v28 = v43;
  *(a2 + 96) = v42;
  *(a2 + 112) = v28;
  v47 = v17;
  v48 = 0;
  LOBYTE(v49) = 1;
  v50 = v18;
  v51 = v19;
  v52 = v20;
  v53 = v21;
  v54 = v22;
  v55 = v23;
  sub_25C7814A4(v7, v9, v30 & 1);

  sub_25C780FAC(&v42, v32, &qword_27FC14778, &qword_25C790798);
  sub_25C77AB6C(&v47, &qword_27FC14778, &qword_25C790798);
  sub_25C7814B4(v7, v9, v30 & 1);
}

uint64_t sub_25C785C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25C78EEE4();
  v3 = sub_25C78EC94();
  sub_25C78E7F4();
  sub_25C781450();
  v4 = sub_25C78EDA4();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  LOBYTE(v3) = v7 & 1;
  *(a1 + 32) = v7 & 1;
  *(a1 + 40) = v8;

  sub_25C7814A4(v4, v6, v3);

  sub_25C7814B4(v4, v6, v3);
}

uint64_t sub_25C785D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v5 = (a1 + *(v4 + 52));
  v33 = *v5;
  v34 = v5[1];
  sub_25C781450();

  v30 = sub_25C78EDA4();
  v31 = v6;
  v32 = v7;
  v29 = v8;
  v9 = *(a1 + *(v4 + 72));
  sub_25C78EF64();
  sub_25C78E994();
  sub_25C78E844();
  v10 = sub_25C78EDA4();
  v12 = v11;
  v14 = v13;
  sub_25C78ED24();
  v15 = sub_25C78ED54();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_25C7814B4(v10, v12, v14 & 1);

  sub_25C78E884();
  v22 = sub_25C78EDA4();
  v24 = v23;
  v26 = v25 & 1;
  *a2 = v30;
  *(a2 + 8) = v32;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v33;
  *(a2 + 56) = v34;
  *(a2 + 64) = v35;
  *(a2 + 72) = v36;
  *(a2 + 80) = v37;
  *(a2 + 88) = v38;
  *(a2 + 96) = v15;
  *(a2 + 104) = v17;
  *(a2 + 112) = v19 & 1;
  *(a2 + 120) = v21;
  *(a2 + 128) = v22;
  *(a2 + 136) = v23;
  *(a2 + 144) = v25 & 1;
  *(a2 + 152) = v27;
  sub_25C7814A4(v30, v32, v29 & 1);

  sub_25C7814A4(v15, v17, v19 & 1);

  sub_25C7814A4(v22, v24, v26);

  sub_25C7814B4(v22, v24, v26);

  sub_25C7814B4(v15, v17, v19 & 1);

  sub_25C7814B4(v30, v32, v29 & 1);
}

uint64_t sub_25C786000(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C78E7A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  sub_25C78E794();
  v11 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v12 = *(v11 + 48);
  (*(v4 + 16))(v8, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  sub_25C78EF44();
  (*(v4 + 8))(v10, v3);
  v13 = sub_25C78E694();
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  v22[1] = 0x6965486C616E6966;
  v22[2] = 0xEB00000000746867;
  sub_25C78F164();
  if (!*(v14 + 16) || (v15 = sub_25C7876A8(v23), (v16 & 1) == 0))
  {

    sub_25C7876EC(v23);
LABEL_8:
    v24 = 0u;
    v25 = 0u;
    return sub_25C77AB6C(&v24, &qword_27FC145C0, &qword_25C790600);
  }

  sub_25C787740(*(v14 + 56) + 32 * v15, &v24);
  sub_25C7876EC(v23);

  if (!*(&v25 + 1))
  {
    return sub_25C77AB6C(&v24, &qword_27FC145C0, &qword_25C790600);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v18 = v23[0];
    v19 = (a2 + *(v11 + 44));
    v20 = *v19;
    v21 = v19[1];
    v23[0] = v20;
    v23[1] = v21;
    *&v24 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145C8, &qword_25C790608);
    return sub_25C78EF44();
  }

  return result;
}

uint64_t sub_25C78627C()
{
  v0 = sub_25C78EE84();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_25C78EED4();
  qword_27FC14FC0 = result;
  return result;
}

uint64_t sub_25C78635C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25C78E944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_25C7873E0(&v14 - v8);
  (*(v3 + 104))(v7, *MEMORY[0x277CDF3C0], v2);
  v10 = sub_25C78E934();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  if (v10)
  {
    sub_25C78EEB4();
  }

  else
  {
    if (qword_27FC13F70 != -1)
    {
      swift_once();
    }
  }

  v12 = sub_25C78EEC4();

  *a1 = v12;
  return result;
}

uint64_t sub_25C78650C(uint64_t a1)
{
  v2 = sub_25C78E7A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_25C78E794();
  v10 = *(a1 + 48);
  (*(v3 + 16))(v7, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  sub_25C78EF44();
  return (*(v3 + 8))(v9, v2);
}

id sub_25C78665C()
{
  v0 = sub_25C78F024();

  return v0;
}

id sub_25C7866B8()
{
  v0 = sub_25C78F024();

  return v0;
}

uint64_t sub_25C7866F8()
{
  result = sub_25C78F024();
  qword_27FC14538 = result;
  return result;
}

uint64_t sub_25C786754()
{
  result = sub_25C78F024();
  qword_27FC14540 = result;
  return result;
}

id sub_25C7867B0(void *a1, void **a2)
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

uint64_t sub_25C7868A4(uint64_t a1)
{
  v2 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C786930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25C786A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25C786AB0()
{
  sub_25C78862C(319, &qword_27FC14568, type metadata accessor for NoteViewModel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25C78862C(319, &qword_27FC147F0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25C786BB0()
{
  result = qword_27FC14570;
  if (!qword_27FC14570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14548, &qword_25C7904A0);
    sub_25C786C9C(&qword_27FC14550, type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView);
    sub_25C786C9C(&qword_27FC144F8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14570);
  }

  return result;
}

uint64_t sub_25C786C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C786CF8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_25C78EFE4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_25C786E90(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_25C78EFE4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_25C787014()
{
  sub_25C78862C(319, &qword_27FC14568, type metadata accessor for NoteViewModel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25C78862C(319, &qword_27FC147F0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25C78EFE4();
      if (v2 <= 0x3F)
      {
        sub_25C7871E4(319, &qword_27FC14590);
        if (v3 <= 0x3F)
        {
          sub_25C7871E4(319, &qword_27FC14598);
          if (v4 <= 0x3F)
          {
            sub_25C78862C(319, &qword_27FC145A0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25C7871E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25C78EF54();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25C787230(uint64_t a1)
{
  result = sub_25C786C9C(&qword_27FC14550, type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25C7872A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78730C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C787370(uint64_t a1)
{
  v3 = *(type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25C786000(a1, v4);
}

uint64_t sub_25C7873E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25C78EAB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14670, &qword_25C7906B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_25C780FAC(v2, &v17 - v11, &qword_27FC14670, &qword_25C7906B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25C78E944();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25C78F0D4();
    v16 = sub_25C78ECD4();
    sub_25C78E8E4();

    sub_25C78EAA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_25C7875E0(uint64_t a1)
{
  v2 = sub_25C78E944();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25C78EA24();
}

unint64_t sub_25C7876A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25C78F144();

  return sub_25C78779C(a1, v5);
}

uint64_t sub_25C787740(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25C78779C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25C787864(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F88CEF0](v9, a1);
      sub_25C7876EC(v9);
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

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = v1[7];
  v9 = sub_25C78E744();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[8];
  v12 = sub_25C78EFE4();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = *(v5 + v1[10] + 8);

  v14 = *(v5 + v1[11] + 8);

  v15 = v5 + v1[12];
  v16 = sub_25C78E7A4();
  (*(*(v16 - 8) + 8))(v15, v16);
  v17 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548) + 28));

  v18 = *(v5 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_25C787AC8()
{
  result = qword_27FC14600;
  if (!qword_27FC14600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC145F8, &qword_25C790638);
    sub_25C787B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14600);
  }

  return result;
}

unint64_t sub_25C787B54()
{
  result = qword_27FC14608;
  if (!qword_27FC14608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14610, &qword_25C790640);
    sub_25C787C0C();
    sub_25C78240C(&qword_27FC14620, &qword_27FC14628, &qword_25C790648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14608);
  }

  return result;
}

unint64_t sub_25C787C0C()
{
  result = qword_27FC14618;
  if (!qword_27FC14618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14618);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_25C787CEC()
{
  result = qword_27FC146C0;
  if (!qword_27FC146C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14680, &qword_25C7906C8);
    sub_25C77AA48();
    swift_getOpaqueTypeConformance2();
    sub_25C786C9C(&qword_27FC144F8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC146C0);
  }

  return result;
}

unint64_t sub_25C787DD4()
{
  result = qword_27FC146C8;
  if (!qword_27FC146C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC146B0, &qword_25C7906F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC146D0, &qword_25C790700);
    sub_25C787F00(&qword_27FC146D8, &qword_27FC146D0, &qword_25C790700, sub_25C787F84);
    swift_getOpaqueTypeConformance2();
    sub_25C786C9C(&qword_27FC144F8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC146C8);
  }

  return result;
}

uint64_t sub_25C787F00(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25C787F84()
{
  result = qword_27FC146E0;
  if (!qword_27FC146E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC146E8, &qword_25C790708);
    sub_25C78803C();
    sub_25C78240C(&qword_27FC143B0, &qword_27FC143B8, &qword_25C790380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC146E0);
  }

  return result;
}

unint64_t sub_25C78803C()
{
  result = qword_27FC146F0;
  if (!qword_27FC146F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC146F8, &qword_25C790710);
    sub_25C7880F4();
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC146F0);
  }

  return result;
}

unint64_t sub_25C7880F4()
{
  result = qword_27FC14700;
  if (!qword_27FC14700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14708, &qword_25C790718);
    sub_25C78240C(&qword_27FC14710, &qword_27FC14718, &qword_25C790720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14700);
  }

  return result;
}

unint64_t sub_25C7881AC()
{
  result = qword_27FC14720;
  if (!qword_27FC14720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14698, &qword_25C7906E0);
    sub_25C787F00(&qword_27FC146B8, &qword_27FC14690, &qword_25C7906D8, sub_25C787CEC);
    sub_25C787CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14720);
  }

  return result;
}

void sub_25C78832C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = *(type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_25C782EC4(a1, a2, a3, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C7883CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C788430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14788, &qword_25C7907A8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25C7884BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14788, &qword_25C7907A8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25C788558(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25C788590()
{
  sub_25C78862C(319, &qword_27FC147A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25C78862C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25C788714()
{
  v0 = sub_25C78E914();
  __swift_allocate_value_buffer(v0, qword_27FC147B0);
  __swift_project_value_buffer(v0, qword_27FC147B0);
  return sub_25C78E8F4();
}

uint64_t sub_25C788760(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_25C7887CC()
{
  v1 = (v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25C788824(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_25C788954(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  swift_beginAccess();
  sub_25C78C308(v7, v8 + v9, &qword_27FC14000, " \r");
  return swift_endAccess();
}

uint64_t sub_25C7888FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  swift_beginAccess();
  return sub_25C788954(v1 + v3, a1);
}

uint64_t sub_25C788954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7889C4(uint64_t a1, char *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  if (v5)
  {
    v11 = (a1 + 40);
    do
    {
      v12 = *v11;
      v17[0] = *(v11 - 1);
      v17[1] = v12;

      sub_25C788AD8(v17, a3, a4, a5, a2, &v16);

      if (v16)
      {
        MEMORY[0x25F88CDF0](v13);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25C78F084();
        }

        sub_25C78F094();
        v6 = v18;
      }

      v11 += 2;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void sub_25C788AD8(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v134 = a6;
  v132 = a4;
  v133 = a5;
  v131 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v126 - v10;
  v12 = sub_25C78E744();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v128 = (&v126 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v127 = &v126 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v126 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v126 - v25;
  v28 = *a1;
  v27 = a1[1];
  sub_25C78E734();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25C77AB6C(v11, &qword_27FC14000, " \r");
    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v29 = sub_25C78E914();
    __swift_project_value_buffer(v29, qword_27FC147B0);

    v30 = sub_25C78E904();
    v31 = sub_25C78F0C4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v136 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_25C78BC28(v28, v27, &v136);
      _os_log_impl(&dword_25C776000, v30, v31, "URL invalid with identifier: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x25F88D470](v33, -1, -1);
      MEMORY[0x25F88D470](v32, -1, -1);
    }

LABEL_28:
    v53 = 0;
    goto LABEL_29;
  }

  v129 = v13;
  v130 = v12;
  (*(v13 + 32))(v26, v11, v12);
  v34 = objc_opt_self();
  v35 = sub_25C78E714();
  v36 = [v34 isShowHTMLNoteURL_];

  if (v36)
  {
    v37 = a2 == 0;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = a2;
    v39 = sub_25C78E714();
    v40 = [v34 objectIDURIRepresentationForHTMLNoteMentionedInURL_];

    if (v40)
    {
      v41 = v24;
      sub_25C78E724();

      v42 = sub_25C78E714();
      v43 = [v38 ic:v42 objectIDFromURL:?];

      if (v43)
      {
        v45 = v26;
        MEMORY[0x28223BE20](v44);
        *(&v126 - 2) = v38;
        *(&v126 - 1) = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14818, &qword_25C7908A8);
        v46 = v135;
        sub_25C78F0F4();
        v47 = v136;
        v48 = v38;
        v49 = v129;
        if (v136)
        {
          v50 = type metadata accessor for NoteViewModel();
          v51 = *(v50 + 48);
          v52 = *(v50 + 52);
          v53 = swift_allocObject();
          v54 = v132;

          sub_25C78AB8C(v47, v48, v131, v54);

          v55 = *(v49 + 8);
          v56 = v130;
          v55(v41, v130);
          v55(v45, v56);
        }

        else
        {
          v132 = v48;
          if (qword_27FC13F88 != -1)
          {
            swift_once();
          }

          v106 = sub_25C78E914();
          __swift_project_value_buffer(v106, qword_27FC147B0);
          v107 = *(v49 + 16);
          v108 = v127;
          v133 = v45;
          v109 = v130;
          v107(v127, v45, v130);
          v110 = sub_25C78E904();
          v111 = sub_25C78F0C4();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = v108;
            v113 = swift_slowAlloc();
            v126 = v113;
            v114 = swift_slowAlloc();
            v135 = v46;
            v128 = v114;
            v136 = v114;
            *v113 = 136315138;
            sub_25C78C1D0();
            v115 = sub_25C78F1B4();
            v131 = v43;
            v116 = v115;
            v118 = v117;
            v119 = *(v49 + 8);
            v119(v112, v109);
            v120 = sub_25C78BC28(v116, v118, &v136);

            v121 = v126;
            *(v126 + 1) = v120;
            v122 = v121;
            _os_log_impl(&dword_25C776000, v110, v111, "HTML note not found with url: %s", v121, 0xCu);
            v123 = v128;
            __swift_destroy_boxed_opaque_existential_1(v128);
            MEMORY[0x25F88D470](v123, -1, -1);
            MEMORY[0x25F88D470](v122, -1, -1);

            v119(v41, v109);
            v119(v133, v109);
          }

          else
          {

            v125 = *(v49 + 8);
            v125(v108, v109);
            v125(v41, v109);
            v125(v133, v109);
          }

          v53 = 0;
        }

        goto LABEL_29;
      }

      (*(v129 + 8))(v41, v130);
    }
  }

  v57 = sub_25C78E714();
  v58 = [v34 isShowNoteURL_];

  v59 = v130;
  if (!v58 || !v133)
  {
LABEL_23:
    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v75 = sub_25C78E914();
    __swift_project_value_buffer(v75, qword_27FC147B0);
    v76 = v129;
    (*(v129 + 16))(v17, v26, v59);
    v77 = v26;
    v78 = sub_25C78E904();
    v79 = sub_25C78F0C4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v136 = v81;
      *v80 = 136315138;
      sub_25C78C1D0();
      v133 = v77;
      v82 = sub_25C78F1B4();
      v83 = v59;
      v85 = v84;
      v86 = *(v76 + 8);
      v87 = v17;
      v88 = v83;
      v86(v87, v83);
      v89 = sub_25C78BC28(v82, v85, &v136);

      *(v80 + 4) = v89;
      _os_log_impl(&dword_25C776000, v78, v79, "UUID invalid: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x25F88D470](v81, -1, -1);
      MEMORY[0x25F88D470](v80, -1, -1);

      v86(v133, v88);
    }

    else
    {

      v90 = *(v76 + 8);
      v90(v17, v59);
      v90(v77, v59);
    }

    goto LABEL_28;
  }

  v60 = v26;
  v61 = v133;
  v62 = v60;
  v63 = sub_25C78E714();
  v64 = [v34 NotesAppIDForNoteMentionedInURL_];

  if (!v64)
  {

    v26 = v62;
    goto LABEL_23;
  }

  v65 = sub_25C78F034();
  v67 = v66;

  MEMORY[0x28223BE20](v68);
  *(&v126 - 4) = v65;
  *(&v126 - 3) = v67;
  *(&v126 - 2) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14810, &unk_25C790898);
  v69 = v135;
  sub_25C78F0F4();
  v135 = v69;

  v70 = v136;
  if (!v136)
  {
    v91 = v129;
    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v92 = sub_25C78E914();
    __swift_project_value_buffer(v92, qword_27FC147B0);
    v93 = v128;
    (*(v91 + 16))(v128, v62, v59);
    v94 = sub_25C78E904();
    v95 = sub_25C78F0C4();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v133 = v62;
      v97 = v91;
      v98 = v96;
      v132 = swift_slowAlloc();
      v136 = v132;
      *v98 = 136315138;
      sub_25C78C1D0();
      v99 = sub_25C78F1B4();
      v100 = v59;
      v102 = v101;
      v103 = *(v97 + 8);
      v103(v93, v100);
      v104 = sub_25C78BC28(v99, v102, &v136);

      *(v98 + 4) = v104;
      _os_log_impl(&dword_25C776000, v94, v95, "Modern note not found with url: %s", v98, 0xCu);
      v105 = v132;
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x25F88D470](v105, -1, -1);
      MEMORY[0x25F88D470](v98, -1, -1);

      v103(v133, v130);
    }

    else
    {

      v124 = *(v91 + 8);
      v124(v93, v59);
      v124(v62, v59);
    }

    goto LABEL_28;
  }

  v71 = type metadata accessor for NoteViewModel();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  v53 = swift_allocObject();
  v74 = v132;

  sub_25C789818(v70, v61, v131, v74);
  (*(v129 + 8))(v62, v59);
LABEL_29:
  *v134 = v53;
}

void sub_25C7896FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 ic:a2 existingObjectWithID:?];
  if (v4)
  {
    v5 = v4;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      *a3 = v6;
      return;
    }
  }

  *a3 = 0;
}

void sub_25C789778(uint64_t a1@<X2>, void *a2@<X8>)
{
  sub_25C77ADD4(0, &unk_27FC140C0, 0x277D35F28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_25C78F024();
  v6 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v5 context:a1];

  *a2 = v6;
}

uint64_t sub_25C789818(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_25C78E6F4();
  v9 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  sub_25C78E774();
  sub_25C78E774();
  v13 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
  *v13 = 0;
  v13[1] = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isAuthenticated) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isUnsupported) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isModernNote) = 1;
  v14 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  v15 = sub_25C78E744();
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
  v17 = sub_25C78E6A4();
  v18 = *(*(v17 - 8) + 56);
  v18(v4 + v16, 1, 1, v17);
  v18(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v4;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25C78C3C0;
  *(v20 + 24) = v19;
  v25[4] = sub_25C78C3D8;
  v25[5] = v20;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_25C78AB64;
  v25[3] = &block_descriptor_68;
  v21 = _Block_copy(v25);
  v22 = a1;

  v23 = a2;

  [v23 performBlockAndWait_];

  _Block_release(v21);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    return v4;
  }

  __break(1u);
  return result;
}

void sub_25C789B48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v122 = a3;
  v123 = a5;
  v127 = a2;
  v128 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC147D0, &qword_25C790358);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v121 = &v116 - v11;
  v129 = sub_25C78E784();
  v131 = *(v129 - 8);
  v12 = v131[8];
  v13 = MEMORY[0x28223BE20](v129);
  v126 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v116 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v132 = &v116 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v116 - v20;
  MEMORY[0x28223BE20](v19);
  v130 = &v116 - v22;
  v23 = sub_25C78E744();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v116 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v116 - v32;
  v34 = [a1 identifier];
  sub_25C78F034();

  v35 = sub_25C78F024();

  v36 = NotesAppURLForNoteIdentifier();

  if (!v36)
  {
    return;
  }

  sub_25C78E724();

  (*(v24 + 32))(v33, v31, v23);
  v37 = [a1 title];
  if (!v37)
  {
    (*(v24 + 8))(v33, v23);
    return;
  }

  v38 = v37;
  v39 = sub_25C78F034();
  v41 = v40;

  v42 = [a1 folder];
  if (!v42)
  {
    (*(v24 + 8))(v33, v23);
LABEL_11:

    return;
  }

  v43 = v42;
  v44 = [a1 creationDate];
  if (!v44)
  {
    (*(v24 + 8))(v33, v23);

    goto LABEL_11;
  }

  v116 = v39;
  v117 = v43;
  v118 = v33;
  v119 = v24;
  v120 = v23;
  v45 = v44;
  sub_25C78E764();

  v47 = v130;
  v46 = v131;
  v48 = v131[4];
  v49 = v129;
  v48(v130, v21, v129);
  v50 = [a1 modificationDate];
  if (v50)
  {
    v51 = v125;
    v52 = v50;
    sub_25C78E764();

    v48(v132, v51, v49);
    v53 = v119;
    v54 = v120;
    (*(v119 + 16))(v28, v118, v120);
    v55 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
    v125 = a1;
    v56 = v127;
    swift_beginAccess();
    (*(v53 + 40))(v56 + v55, v28, v54);
    swift_endAccess();
    v57 = (v56 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
    swift_beginAccess();
    v58 = v57[1];
    *v57 = v116;
    v57[1] = v41;
    v59 = v56;

    v60 = v117;
    v61 = [v117 localizedTitle];
    v62 = sub_25C78F034();
    v64 = v63;

    v65 = (v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
    v66 = *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder + 8);
    *v65 = v62;
    v65[1] = v64;

    v67 = [v60 account];
    v68 = [v67 localizedName];

    v69 = sub_25C78F034();
    v71 = v70;

    v72 = (v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
    v73 = *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account + 8);
    *v72 = v69;
    v72[1] = v71;

    v74 = v131;
    v75 = v131[2];
    v76 = v126;
    v75(v126, v47, v49);
    v77 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_creationDate;
    swift_beginAccess();
    v78 = v74;
    v79 = v74[5];
    v79(v59 + v77, v76, v49);
    swift_endAccess();
    v75(v76, v132, v49);
    v80 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_modificationDate;
    swift_beginAccess();
    v79(v59 + v80, v76, v49);
    swift_endAccess();
    v81 = objc_opt_self();
    v82 = v125;
    v83 = [v81 dateForCurrentSortTypeAccessibilityStringForNote:v125 folderNoteSortType:0];
    v84 = v49;
    v85 = v82;
    if (v83)
    {
      v86 = v83;
      v87 = sub_25C78F034();
      v89 = v88;
    }

    else
    {
      v87 = 0;
      v89 = 0xE000000000000000;
    }

    v90 = (v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
    v91 = *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString + 8);
    *v90 = v87;
    v90[1] = v89;

    v92 = [v85 contentInfoText];
    v93 = sub_25C78F034();
    v95 = v94;

    v96 = (v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
    v97 = *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet + 8);
    *v96 = v93;
    v96[1] = v95;

    v98 = [v85 isPasswordProtected];
    *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected) = v98;
    v99 = [v85 isAuthenticated];
    *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isAuthenticated) = v99;
    v100 = [v85 isUnsupported];
    *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isUnsupported) = v100;
    v101 = [v85 isSharedViaICloud];
    *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) = v101;
    v102 = [v85 hasUnreadChanges];
    *(v59 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) = v102;
    if (v128)
    {
      v103 = [v85 noteAsPlainTextWithoutTitle];
      if (!v103)
      {
        sub_25C78F034();
        v103 = sub_25C78F024();
      }

      v104 = [v103 ic_whitespaceAndNewlineCoalescedString];

      sub_25C78F034();
      type metadata accessor for NoteViewModel();
      v105 = v121;
      sub_25C78A628(v121);

      v106 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet;
      swift_beginAccess();
      sub_25C78C308(v105, v59 + v106, &unk_27FC147D0, &qword_25C790358);
      swift_endAccess();
      v107 = *v57;
      v108 = v57[1];

      sub_25C78A628(v105);

      v109 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
      swift_beginAccess();
      sub_25C78C308(v105, v59 + v109, &unk_27FC147D0, &qword_25C790358);
      swift_endAccess();
      v85 = v125;
      v84 = v129;
    }

    [v85 updateThumbnailAttachmentIdentifier];
    v110 = [v85 thumbnailAttachmentIdentifier];
    if (v110)
    {
      v111 = v110;
      sub_25C78F034();

      type metadata accessor for NoteViewModel();
      v112 = v124;
      sub_25C78A7D4(v123, v124);

      v113 = v78[1];
      v113(v132, v84);
      v113(v130, v84);
      (*(v119 + 8))(v118, v120);
      v114 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
      swift_beginAccess();
      sub_25C78C308(v112, v59 + v114, &qword_27FC14000, " \r");
      swift_endAccess();
      return;
    }

    v115 = v78[1];
    v115(v132, v84);
    v115(v130, v84);
  }

  else
  {

    (v46[1])(v47, v49);
  }

  (*(v119 + 8))(v118, v120);
}

void sub_25C78A628(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277D368D0]);
  v3 = sub_25C78F024();
  v4 = [v2 initWithSearchString_];

  v5 = sub_25C78F024();
  v6 = [v4 firstMatchInDocumentWithGlobalFallback_];

  v7 = objc_opt_self();
  v8 = sub_25C78F024();
  v9 = [objc_opt_self() ICTintColor];
  v10 = [v7 attributedStringWithMatchHighlighted:v8 optionalAttributedHighlightedString:0 textCheckingResult:v6 highlightColor:v9 insideFrame:v4 finishingUpRegexMatchFinder:{0.0, 0.0, 286.0, 20.0}];

  if (v10)
  {
    sub_25C78E6B4();

    v11 = sub_25C78E6A4();
    v12 = *(*(v11 - 8) + 56);

    v12(a1, 0, 1, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C78A7D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_25C77ADD4(0, &unk_27FC14880, 0x277D35E00);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_25C78F024();
  v6 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v5 context:a1];

  if (!v6)
  {
    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v13 = sub_25C78E914();
    __swift_project_value_buffer(v13, qword_27FC147B0);
    v9 = sub_25C78E904();
    v14 = sub_25C78F0C4();
    if (os_log_type_enabled(v9, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25C776000, v9, v14, "Cannot create attachment for identifier — returning nil preview image", v15, 2u);
      MEMORY[0x25F88D470](v15, -1, -1);
    }

LABEL_19:
    v12 = 1;
    goto LABEL_20;
  }

  [objc_opt_self() ic_scale];
  v8 = [v6 attachmentPreviewImageWithMinSize:25.0 scale:25.0, v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 previewImageURL];
    if (v10)
    {
      v11 = v10;
      sub_25C78E724();

      v12 = 0;
      goto LABEL_20;
    }

    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v20 = sub_25C78E914();
    __swift_project_value_buffer(v20, qword_27FC147B0);
    v21 = sub_25C78E904();
    v22 = sub_25C78F0C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_25C776000, v21, v22, "Cannot get previewImageURL for preview image - returning nil preview image", v23, 2u);
      MEMORY[0x25F88D470](v23, -1, -1);
    }

    goto LABEL_19;
  }

  if (qword_27FC13F88 != -1)
  {
    swift_once();
  }

  v16 = sub_25C78E914();
  __swift_project_value_buffer(v16, qword_27FC147B0);
  v17 = sub_25C78E904();
  v18 = sub_25C78F0C4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_25C776000, v17, v18, "Cannot create preview image for attachment — returning nil preview image", v19, 2u);
    MEMORY[0x25F88D470](v19, -1, -1);
  }

  v12 = 1;
  v9 = v6;
LABEL_20:

  v24 = sub_25C78E744();
  v25 = *(*(v24 - 8) + 56);

  return v25(a2, v12, 1, v24);
}

uint64_t sub_25C78AB8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_25C78E6F4();
  v9 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  sub_25C78E774();
  sub_25C78E774();
  v13 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
  *v13 = 0;
  v13[1] = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isAuthenticated) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isUnsupported) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isModernNote) = 1;
  v14 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  v15 = sub_25C78E744();
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
  v17 = sub_25C78E6A4();
  v18 = *(*(v17 - 8) + 56);
  v18(v4 + v16, 1, 1, v17);
  v18(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v4;
  v19[4] = a3;
  v19[5] = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25C78C2AC;
  *(v20 + 24) = v19;
  v23[4] = sub_25C78C2C8;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_25C78AB64;
  v23[3] = &block_descriptor_1;
  v21 = _Block_copy(v23);
  swift_unknownObjectRetain();

  [a2 performBlockAndWait_];
  swift_unknownObjectRelease();

  _Block_release(v21);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if ((a2 & 1) == 0)
  {
    return v4;
  }

  __break(1u);
  return result;
}

id sub_25C78AEB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v93 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC147D0, &qword_25C790358);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v81 - v8;
  v10 = sub_25C78E784();
  v91 = *(v10 - 8);
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25C78E744();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v81 - v23;
  result = [objc_opt_self() appURLForHTMLNote_];
  if (!result)
  {
    return result;
  }

  v90 = a2;
  v26 = result;
  sub_25C78E724();

  (*(v15 + 32))(v24, v22, v14);
  v27 = [a1 title];
  if (!v27)
  {
    return (*(v15 + 8))(v24, v14);
  }

  v87 = v9;
  v28 = v27;
  v88 = sub_25C78F034();
  v30 = v29;

  v31 = [a1 folder];
  if (!v31)
  {
    (*(v15 + 8))(v24, v14);
  }

  v89 = v30;
  v32 = [v31 name];
  swift_unknownObjectRelease();
  if (!v32)
  {
    (*(v15 + 8))(v24, v14);
  }

  v33 = sub_25C78F034();
  v35 = v34;

  v36 = [a1 account];
  if (!v36 || (v86 = v33, v37 = [v36 localizedName], swift_unknownObjectRelease(), !v37))
  {
    (*(v15 + 8))(v24, v14);
  }

  v84 = sub_25C78F034();
  v39 = v38;

  v95 = &unk_286E88080;
  v85 = swift_dynamicCastObjCProtocolConditional();
  if (!v85)
  {

    return (*(v15 + 8))(v24, v14);
  }

  (*(v15 + 16))(v19, v24, v14);
  v82 = v35;
  v83 = v39;
  v40 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
  v41 = v90;
  swift_beginAccess();
  v81 = *(v15 + 40);
  swift_unknownObjectRetain();
  v81(v41 + v40, v19, v14);
  swift_endAccess();
  v42 = (v41 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v43 = v42[1];
  v44 = v89;
  *v42 = v88;
  v42[1] = v44;
  v88 = v42;

  v45 = (v41 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
  v46 = *(v41 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder + 8);
  v47 = v82;
  *v45 = v86;
  v45[1] = v47;

  v48 = v41;
  v49 = (v41 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
  v50 = *(v41 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account + 8);
  v51 = v83;
  *v49 = v84;
  v49[1] = v51;

  v94 = &unk_286E88080;
  v52 = swift_dynamicCastObjCProtocolConditional();
  if (v52)
  {
    v53 = v52;
    v54 = objc_opt_self();
    swift_unknownObjectRetain();
    v55 = [v54 dateForCurrentSortTypeAccessibilityStringForNote:v53 folderNoteSortType:0];
    if (v55)
    {
      v56 = v55;
      v57 = sub_25C78F034();
      v59 = v58;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v57 = 0;
      v59 = 0xE000000000000000;
    }

    v48 = v90;
    v60 = (v90 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
    v61 = *(v90 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString + 8);
    *v60 = v57;
    v60[1] = v59;
  }

  v62 = [a1 creationDate];
  sub_25C78E764();

  v63 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_creationDate;
  swift_beginAccess();
  v64 = *(v91 + 40);
  v64(v48 + v63, v13, v10);
  swift_endAccess();
  v65 = [a1 modificationDate];
  sub_25C78E764();

  v66 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_modificationDate;
  swift_beginAccess();
  v64(v48 + v66, v13, v10);
  swift_endAccess();
  v67 = v85;
  v68 = [v85 contentInfoText];
  v69 = sub_25C78F034();
  v71 = v70;

  v72 = (v48 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
  v73 = *(v48 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet + 8);
  *v72 = v69;
  v72[1] = v71;

  *(v48 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isModernNote) = 0;
  if (v92)
  {
    v74 = [v67 noteAsPlainTextWithoutTitle];
    sub_25C78F034();

    type metadata accessor for NoteViewModel();
    v75 = v87;
    sub_25C78A628(v87);

    v76 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet;
    v77 = v90;
    swift_beginAccess();
    sub_25C78C308(v75, v77 + v76, &unk_27FC147D0, &qword_25C790358);
    swift_endAccess();
    v79 = *v88;
    v78 = v88[1];

    sub_25C78A628(v75);
    swift_unknownObjectRelease();

    (*(v15 + 8))(v24, v14);
    v80 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
    swift_beginAccess();
    sub_25C78C308(v75, v77 + v80, &unk_27FC147D0, &qword_25C790358);
    return swift_endAccess();
  }

  else
  {
    (*(v15 + 8))(v24, v14);
    return swift_unknownObjectRelease();
  }
}

uint64_t NoteViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
  v2 = sub_25C78E744();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title + 8);

  v4 = *(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder + 8);

  v5 = *(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account + 8);

  v6 = *(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString + 8);

  v7 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_creationDate;
  v8 = sub_25C78E784();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_modificationDate, v8);
  v10 = *(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet + 8);

  sub_25C77AB6C(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail, &qword_27FC14000, " \r");
  sub_25C77AB6C(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle, &unk_27FC147D0, &qword_25C790358);
  sub_25C77AB6C(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet, &unk_27FC147D0, &qword_25C790358);
  return v0;
}

uint64_t NoteViewModel.__deallocating_deinit()
{
  NoteViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25C78B8A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_25C78B8FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  swift_beginAccess();
  return sub_25C788954(v3 + v4, a2);
}

uint64_t type metadata accessor for NoteViewModel()
{
  result = qword_27FC147E0;
  if (!qword_27FC147E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25C78B9B0()
{
  v0 = sub_25C78E744();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_25C78E784();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_25C78BBD4(319, &qword_27FC147F0, MEMORY[0x277CC9260]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_25C78BBD4(319, &unk_27FC147F8, MEMORY[0x277CC8C40]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_25C78BBD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25C78F134();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25C78BC28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25C78BCF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25C787740(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25C78BCF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25C78BE00(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25C78F194();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25C78BE00(uint64_t a1, unint64_t a2)
{
  v4 = sub_25C78BE4C(a1, a2);
  sub_25C78BF7C(&unk_286E657E0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25C78BE4C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25C78C068(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25C78F194();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25C78F044();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25C78C068(v10, 0);
        result = sub_25C78F174();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25C78BF7C(uint64_t result)
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

  result = sub_25C78C0DC(result, v12, 1, v3);
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

void *sub_25C78C068(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC14890, &unk_25C7908B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25C78C0DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC14890, &unk_25C7908B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25C78C1D0()
{
  result = qword_27FC14808;
  if (!qword_27FC14808)
  {
    sub_25C78E744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14808);
  }

  return result;
}

void sub_25C78C228(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_25C789778(v1[4], a1);
}

uint64_t sub_25C78C264()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25C78C2C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C78C308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C78C370()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t NotesSiriListHeaderView.headerText.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NotesSiriListHeaderView.defaultFolderUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotesSiriListHeaderView() + 28);
  v4 = sub_25C78E744();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NotesSiriListHeaderView()
{
  result = qword_27FC14958;
  if (!qword_27FC14958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NotesSiriListHeaderView.init(noteCount:headerText:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a3;
  v9 = type metadata accessor for NotesSiriListHeaderView();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  v13[1] = sub_25C78E8B4();
  v13[2] = v14;
  v15 = v13 + v9[6];
  sub_25C78EFD4();
  v16 = v9[7];
  v17 = [objc_opt_self() appURLForDefaultFolder];
  sub_25C78E724();

  *(v13 + v9[8]) = 26;
  v18 = v9[9];
  *(v13 + v18) = 0;
  if ((a2 & 1) == 0)
  {
    if (a1 >= 26)
    {
      *v13 = 25;
      *(v13 + v18) = 1;
      if (!a4)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    *v13 = a1;
  }

  if (a4)
  {
LABEL_5:
    v19 = sub_25C78F024();

    v20 = [v19 ic_quotedString];

    v21 = sub_25C78F034();
    v23 = v22;

    v13[1] = v21;
    v13[2] = v23;
  }

LABEL_6:
  sub_25C78C714(v13, a5);
  (*(v10 + 56))(a5, 0, 1, v9);
  return sub_25C78C778(v13);
}

uint64_t sub_25C78C714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriListHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78C778(uint64_t a1)
{
  v2 = type metadata accessor for NotesSiriListHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotesSiriListHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_25C78EB74();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotesSiriListHeaderView();
  v50 = *(v7 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14900, &qword_25C7908C0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14908, &qword_25C7908C8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14910, &qword_25C7908D0);
  v53 = *(v51 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v20 = &v46 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14918, &qword_25C7908D8);
  v21 = *(*(v52 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v52);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v47 = &v46 - v25;
  *v13 = sub_25C78EAD4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14920, &qword_25C7908E0);
  sub_25C78CEF8(v2, &v13[*(v26 + 44)]);
  v27 = sub_25C78ED34();
  KeyPath = swift_getKeyPath();
  v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14928, &qword_25C790918) + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v30 = sub_25C78ECE4();
  v31 = &v13[*(v10 + 44)];
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  sub_25C78EF74();
  sub_25C78E9F4();
  sub_25C78D854(v13, v17);
  v32 = &v17[*(v14 + 36)];
  v33 = v64;
  *(v32 + 4) = v63;
  *(v32 + 5) = v33;
  *(v32 + 6) = v65;
  v34 = v60;
  *v32 = v59;
  *(v32 + 1) = v34;
  v35 = v62;
  *(v32 + 2) = v61;
  *(v32 + 3) = v35;
  v36 = v48;
  sub_25C78C714(v46, v48);
  v37 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v38 = swift_allocObject();
  sub_25C78D9F0(v36, v38 + v37);
  v39 = sub_25C78DAB4();
  sub_25C78EE04();

  sub_25C77AB6C(v17, &qword_27FC14908, &qword_25C7908C8);
  sub_25C78EB44();
  v57 = v14;
  v58 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v51;
  sub_25C78EE64();
  v41 = v55;
  v42 = *(v54 + 8);
  v42(v6, v55);
  (*(v53 + 8))(v20, v40);
  sub_25C78EB54();
  v43 = v47;
  sub_25C78E9D4();
  v42(v6, v41);
  sub_25C77AB6C(v24, &qword_27FC14918, &qword_25C7908D8);
  v57 = sub_25C78E874();
  v58 = v44;
  sub_25C781450();
  sub_25C78E9C4();

  return sub_25C77AB6C(v43, &qword_27FC14918, &qword_25C7908D8);
}

uint64_t sub_25C78CDB4(uint64_t a1)
{
  v2 = sub_25C78F004();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v8 = type metadata accessor for NotesSiriListHeaderView();
  v9 = a1 + *(v8 + 28);
  v10 = sub_25C78E714();
  [v7 setPunchOutUri_];

  v11 = a1 + *(v8 + 24);
  sub_25C78EFC4();
  v12 = v7;
  sub_25C78EFF4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25C78CEF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14998, &qword_25C7909D8);
  v3 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A0, &qword_25C7909E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - v9;
  v10 = sub_25C78EB74();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A8, &unk_25C7909E8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v64 = &v53 - v19;
  v54 = a1;
  v20 = a1[2];
  v65 = a1[1];
  v66 = v20;
  v57 = sub_25C781450();

  v21 = sub_25C78EDA4();
  v23 = v22;
  v25 = v24;
  v26 = sub_25C78ED64();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_25C7814B4(v21, v23, v25 & 1);

  v65 = v26;
  v66 = v28;
  LOBYTE(v67) = v30 & 1;
  v68 = v32;
  sub_25C78EB64();
  v33 = v64;
  sub_25C78EE14();
  (*(v55 + 8))(v13, v56);
  sub_25C7814B4(v26, v28, v30 & 1);

  *(v33 + *(v15 + 44)) = sub_25C78EC84();
  v34 = v54;
  v35 = *v54;
  v36 = sub_25C78EAC4();
  sub_25C78D450(v34, v35, &v65);
  v37 = v65;
  v38 = v66;
  v39 = v67;
  v40 = v68;
  v74 = 0;
  v73 = v69;
  v65 = v36;
  v66 = 0;
  LOBYTE(v67) = 0;
  v68 = v37;
  v69 = v38;
  v70 = v39;
  v71 = v40;
  v72 = v73;
  sub_25C78ED24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14978, &qword_25C7909C8);
  sub_25C78240C(&qword_27FC14970, &qword_27FC14978, &qword_25C7909C8);
  v41 = v59;
  sub_25C78EDF4();
  sub_25C781594(v37, v38, v39);
  *(v41 + *(v61 + 36)) = sub_25C78EC94();
  v65 = sub_25C78E824();
  v66 = v42;
  sub_25C78E14C();
  v43 = v60;
  sub_25C78EE34();

  sub_25C77AB6C(v41, &qword_27FC14998, &qword_25C7909D8);
  v44 = v64;
  v45 = v58;
  sub_25C78E274(v64, v58);
  v46 = v43;
  v47 = v43;
  v48 = v62;
  sub_25C78E2E4(v46, v62);
  v49 = v63;
  sub_25C78E274(v45, v63);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149B8, &qword_25C7909F8);
  v51 = v49 + *(v50 + 48);
  *v51 = 0;
  *(v51 + 8) = 0;
  sub_25C78E2E4(v48, v49 + *(v50 + 64));
  sub_25C77AB6C(v47, &qword_27FC149A0, &qword_25C7909E0);
  sub_25C78E354(v44);
  sub_25C77AB6C(v48, &qword_27FC149A0, &qword_25C7909E0);
  return sub_25C78E354(v45);
}

__n128 NotesSiriListHeaderView.noteCountHelper(noteCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25C78EAC4();
  sub_25C78D450(v2, a1, v9);
  v6 = v10;
  result = v9[0];
  v8 = v9[1];
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 40) = v8;
  *(a2 + 56) = v6;
  return result;
}

double sub_25C78D450@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25C78E7C4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14980, &qword_25C7909D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_25C78EB14();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  if (*(a1 + *(type metadata accessor for NotesSiriListHeaderView() + 36)) == 1)
  {
    *&v33 = sub_25C78E8A4();
    *(&v33 + 1) = v15;
    sub_25C781450();
    v28 = sub_25C78EDA4();
    v29 = v16;
    v30 = v17 & 1;
    v31 = v18;
    v32 = 0;
  }

  else
  {
    sub_25C78EB04();
    sub_25C78EAF4();
    *&v33 = a2;
    sub_25C78E7B4();
    sub_25C78E0F8();
    sub_25C78E6C4();
    sub_25C78240C(&qword_27FC14990, &qword_27FC14980, &qword_25C7909D0);
    sub_25C78EAE4();
    (*(v9 + 8))(v12, v8);
    sub_25C78EAF4();
    sub_25C78EB24();
    v19 = ICSharedFrameworkBundleIdentifier();
    if (!v19)
    {
      sub_25C78F034();
      v19 = sub_25C78F024();
    }

    v20 = [objc_opt_self() bundleWithIdentifier_];

    v28 = sub_25C78ED84();
    v29 = v21;
    v30 = v22 & 1;
    v31 = v23;
    v32 = 1;
  }

  sub_25C78EC64();
  result = *&v33;
  v25 = v34;
  v26 = v35;
  *a3 = v33;
  *(a3 + 16) = v25;
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_25C78D7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C78EA54();
  *a1 = result;
  return result;
}

uint64_t sub_25C78D7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C78EA54();
  *a1 = result;
  return result;
}

uint64_t sub_25C78D7FC(uint64_t *a1)
{
  v1 = *a1;

  return sub_25C78EA64();
}

uint64_t sub_25C78D828(uint64_t *a1)
{
  v1 = *a1;

  return sub_25C78EA64();
}

uint64_t sub_25C78D854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14900, &qword_25C7908C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78D8C4()
{
  v1 = (type metadata accessor for NotesSiriListHeaderView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 16);

  v6 = v1[8];
  v7 = sub_25C78EFE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[9];
  v9 = sub_25C78E744();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25C78D9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriListHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78DA54()
{
  v1 = *(type metadata accessor for NotesSiriListHeaderView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25C78CDB4(v2);
}

unint64_t sub_25C78DAB4()
{
  result = qword_27FC14930;
  if (!qword_27FC14930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14908, &qword_25C7908C8);
    sub_25C78DB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14930);
  }

  return result;
}

unint64_t sub_25C78DB40()
{
  result = qword_27FC14938;
  if (!qword_27FC14938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14900, &qword_25C7908C0);
    sub_25C78DBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14938);
  }

  return result;
}

unint64_t sub_25C78DBCC()
{
  result = qword_27FC14940;
  if (!qword_27FC14940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14928, &qword_25C790918);
    sub_25C78240C(&qword_27FC14948, &qword_27FC14950, &unk_25C790920);
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14940);
  }

  return result;
}

uint64_t sub_25C78DCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25C78EFE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25C78E744();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25C78DE18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_25C78EFE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25C78E744();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25C78DF3C()
{
  result = sub_25C78EFE4();
  if (v1 <= 0x3F)
  {
    result = sub_25C78E744();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25C78DFEC()
{
  result = qword_27FC14968;
  if (!qword_27FC14968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14918, &qword_25C7908D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14908, &qword_25C7908C8);
    sub_25C78DAB4();
    swift_getOpaqueTypeConformance2();
    sub_25C782038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14968);
  }

  return result;
}

unint64_t sub_25C78E0F8()
{
  result = qword_27FC14988;
  if (!qword_27FC14988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14988);
  }

  return result;
}

unint64_t sub_25C78E14C()
{
  result = qword_27FC149B0;
  if (!qword_27FC149B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14998, &qword_25C7909D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14978, &qword_25C7909C8);
    sub_25C78240C(&qword_27FC14970, &qword_27FC14978, &qword_25C7909C8);
    swift_getOpaqueTypeConformance2();
    sub_25C78240C(&qword_27FC143B0, &qword_27FC143B8, &qword_25C790380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC149B0);
  }

  return result;
}

uint64_t sub_25C78E274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A8, &unk_25C7909E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78E2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A0, &qword_25C7909E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78E354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A8, &unk_25C7909E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotesSiriSashView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25C78E8C4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149C0, &qword_25C790A00);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_25C78E420@<X0>(uint64_t a1@<X8>)
{
  sub_25C78E8C4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149C0, &qword_25C790A00);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t getEnumTagSinglePayload for NotesSiriSashView(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NotesSiriSashView(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25C78E54C()
{
  result = qword_27FC149C8;
  if (!qword_27FC149C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC149C0, &qword_25C790A00);
    sub_25C78E5D8();
    sub_25C78E630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC149C8);
  }

  return result;
}

unint64_t sub_25C78E5D8()
{
  result = qword_27FC149D0;
  if (!qword_27FC149D0)
  {
    sub_25C78E8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC149D0);
  }

  return result;
}

unint64_t sub_25C78E630()
{
  result = qword_27FC149D8;
  if (!qword_27FC149D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FC149E0, " B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC149D8);
  }

  return result;
}