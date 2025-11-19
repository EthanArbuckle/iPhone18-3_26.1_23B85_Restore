void sub_2153BC610(void *a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_2154A182C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v42 - v11;
  MEMORY[0x28223BE20](v12);
  v46 = &v42 - v13;
  sub_2154A195C();
  if (swift_dynamicCastClass())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      [Strong isSharedViaICloud];
    }

    sub_2154A190C();
  }

  sub_2153BF46C(&qword_27CA5BFF8);
  v16 = swift_getObjectType();
  v49 = a1;
  v17 = a1;
  v18 = v3;
  sub_2154A166C();
  v19 = v49;
  if (ICInternalSettingsShouldShowImageGenerationUI())
  {
    if (swift_dynamicCastClass())
    {
      v50 = ObjectType;
      v51 = sub_2153BF46C(&qword_27CA5C008);
      v49 = v18;
      v20 = v18;
      v44 = v7;
      v21 = ObjectType;
      v22 = v20;
      v23 = v19;
      v43 = a2;
      v24 = v8;
      v25 = v23;
      sub_2154A193C();

      v50 = v21;
      v51 = sub_2153BF46C(&unk_27CA5C010);
      v49 = v22;
      v26 = v22;
      v7 = v44;
      v27 = v25;
      v8 = v24;
      v28 = v27;
      sub_2154A194C();

      a2 = v43;
    }

    v29 = objc_opt_self();
    if ((([v29 ic_isiPhone] & 1) != 0 || objc_msgSend(v29, sel_ic_isVision)) && swift_dynamicCastClass())
    {
      sub_2153BF46C(&qword_27CA5C000);
      v30 = v18;
      v31 = v8;
      v32 = v19;
      sub_2154A191C();

      v8 = v31;
    }
  }

  if (ICInternalSettingsIsPaperKitMathEnabled() && (sub_2153BF10C(v19, 0, v18, v16, a2, v48), (v33 & 1) == 0))
  {
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34 && (v35 = v34, v36 = [v34 calculateDocumentController], v35, v36))
    {
      v37 = v36;
      v38 = v45;
      sub_2154A26FC();

      v39 = v46;
      (*(v8 + 32))(v46, v38, v7);
      v40 = v37;
      sub_2154A26EC();
    }

    else
    {
      v39 = v46;
      (*(v8 + 104))(v46, *MEMORY[0x277CD95B0], v7);
      v40 = 0;
    }

    swift_getObjectType();
    v52 = v19;
    sub_2154A167C();
    v41 = v52;
    (*(v8 + 16))(v47, v39, v7);
    swift_getObjectType();
    v52 = v41;
    sub_2154A168C();

    (*(v8 + 8))(v39, v7);
  }

  else
  {
  }
}

Swift::Void __swiftcall PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithAutomaticContent()()
{
  v0 = sub_2154A17AC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CD95A8], v0, v2);
  if (ICInternalSettingsShouldShowImageGenerationUI())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v6 = Strong, v7 = [Strong window], v6, !v7) || (v8 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v9 = objc_msgSend(v8, sel_presentGreymatterAvailabilityAlertControllerInWindow_, v7), v8, v7, (v9 & 1) == 0))
    {
      v10 = sub_2153BD41C(1);
      if (v10)
      {
        v11 = v10;
        sub_2154A195C();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          [v12 bounds];
          sub_2154A192C();
        }
      }
    }
  }

  (*(v1 + 8))(v4, v0);
}

void PaperTextAttachmentManager.insertMagicGenerativePlayground(content:)()
{
  if (ICInternalSettingsShouldShowImageGenerationUI())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v1 = Strong, v2 = [Strong window], v1, !v2) || (v3 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v4 = objc_msgSend(v3, sel_presentGreymatterAvailabilityAlertControllerInWindow_, v2), v3, v2, (v4 & 1) == 0))
    {
      v5 = sub_2153BD41C(1);
      if (v5)
      {
        v6 = v5;
        sub_2154A195C();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          [v7 bounds];
          sub_2154A192C();
        }
      }
    }
  }
}

Swift::Void __swiftcall PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithText(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_2154A17AC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = countAndFlagsBits;
  v7[1] = object;
  (*(v4 + 104))(v7, *MEMORY[0x277CD9598], v3, v5);

  if (ICInternalSettingsShouldShowImageGenerationUI())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v9 = Strong, v10 = [Strong window], v9, !v10) || (v11 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v12 = objc_msgSend(v11, sel_presentGreymatterAvailabilityAlertControllerInWindow_, v10), v11, v10, (v12 & 1) == 0))
    {
      v13 = sub_2153BD41C(1);
      if (v13)
      {
        v14 = v13;
        sub_2154A195C();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          [v15 bounds];
          sub_2154A192C();
        }
      }
    }
  }

  (*(v4 + 8))(v7, v3);
}

Swift::Void __swiftcall PaperTextAttachmentManager.insertMagicGenerativePlaygroundWithImage(_:)(CGImageRef a1)
{
  v2 = sub_2154A17AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  (*(v3 + 104))(v6, *MEMORY[0x277CD95A0], v2, v4);
  v7 = a1;
  if (ICInternalSettingsShouldShowImageGenerationUI())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v9 = Strong, v10 = [Strong window], v9, !v10) || (v11 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v12 = objc_msgSend(v11, sel_presentGreymatterAvailabilityAlertControllerInWindow_, v10), v11, v10, (v12 & 1) == 0))
    {
      v13 = sub_2153BD41C(1);
      if (v13)
      {
        v14 = v13;
        sub_2154A195C();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          [v15 bounds];
          sub_2154A192C();
        }
      }
    }
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_2153BD41C(int a1)
{
  v2 = sub_21549E70C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v9 = Strong;
  v10 = &selRef_startTrackingFindSession;
  v11 = [v7 textStorage];
  if (!v11)
  {

    return 0;
  }

  isEscapingClosureAtFileLocation = v11;
  v56 = a1;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v13 = v9;
  v14 = [v13 editorController];
  v59 = v7;
  v55 = v3;
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 isEditing];

  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = [v13 ic_selectedRanges];
  sub_2151A6C9C(0, &qword_2811994C8);
  v18 = sub_2154A1F4C();

  if (v18 >> 62)
  {
    result = sub_2154A2C8C();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_17:

LABEL_18:
    [isEscapingClosureAtFileLocation length];
    goto LABEL_19;
  }

LABEL_8:
  if ((v18 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v18 + 32); ; i = MEMORY[0x216069960](0, v18))
    {
      v20 = i;

      [v20 rangeValue];

LABEL_19:
      v58 = *MEMORY[0x277D74060];
      v21 = v13;
      v22 = isEscapingClosureAtFileLocation;
      v23 = [v21 v10[274]];
      v24 = [v23 ic_range];
      v26 = v25;

      v27 = swift_allocObject();
      *(v27 + 16) = v21;
      *(v27 + 24) = &v61;
      v13 = swift_allocObject();
      v13[2] = sub_2153BF4E0;
      v13[3] = v27;
      v57 = v27;
      aBlock[4] = sub_215384F20;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21532C43C;
      aBlock[3] = &block_descriptor_33;
      v10 = _Block_copy(aBlock);
      v18 = v21;

      v28 = v22;
      [v22 enumerateAttribute:v58 inRange:v24 options:v26 usingBlock:{0, v10}];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_38:
      ;
    }

    if (v61 || (v56 & 1) == 0)
    {

      v33 = v61;

      return v33;
    }

    v29 = v22;
    if ([v18 isEditing])
    {

      v30 = [v18 selectedRange];
      v32 = &v30[v31];
    }

    else
    {
      v32 = [v22 length];
    }

    sub_21549E6FC();
    sub_21549E6BC();
    (*(v55 + 8))(v5, v2);
    v34 = sub_2154A1D2C();

    v35 = [v59 addSystemPaperAttachmentWithIdentifier_];

    v36 = [v18 editorController];
    v37 = v18;
    if (!v36)
    {
      goto LABEL_35;
    }

    v38 = [v36 attachmentInsertionController];

    v37 = v18;
    if (!v38)
    {
      goto LABEL_35;
    }

    v39 = [v38 addAttachment:v35 atTextRange:{v32, 0}];

    v37 = v18;
    if (!v39)
    {
      goto LABEL_35;
    }

    v40 = [v18 textContainer];

    v41 = [v40 tk2TextView];
    if (v41 && (v42 = [v41 _cachedViewProviderForTextAttachment_], v41, v43 = objc_msgSend(v42, sel_view), v42, v43))
    {
      swift_getObjectType();
      v44 = dynamic_cast_existential_2_conditional(v43);
      if (v44)
      {
        v47 = v61;
        v61 = v44;
        v62 = v45;
        v63 = v46;
        v48 = v44;
        v49 = v45;
        v50 = v46;
        v51 = v43;

        v29 = v28;
        sub_2153BC610(v48, v49, v50);

        v37 = v39;
LABEL_35:

        v52 = sub_2153BD41C(0);
        v53 = v61;

        return v52;
      }
    }

    else
    {
    }

    v37 = v61;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void sub_2153BDB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void **a7)
{
  sub_21532C8D8(a1, v30);
  if (!v31)
  {
    sub_2151ADCD8(v30, &qword_27CA5ABC0);
    return;
  }

  sub_2151A6C9C(0, &qword_281199590);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v11 = Strong;
  v12 = [Strong _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];
  v13 = [v12 view];

  if (v13)
  {

    goto LABEL_6;
  }

  v26 = [v11 textContainer];
  v27 = [v26 tk2TextView];

  if (!v27)
  {

    return;
  }

  v28 = [v27 _cachedViewProviderForTextAttachment_];

  v13 = [v28 view];
  if (!v13)
  {
LABEL_15:

    return;
  }

LABEL_6:
  swift_getObjectType();
  v14 = dynamic_cast_existential_2_conditional(v13);
  if (v14)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    v20 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_215318718(0, v20[2] + 1, 1, v20);
      *a7 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      *a7 = sub_215318718((v22 > 1), v23 + 1, 1, v20);
    }

    v24 = *a7;
    v24[2] = v23 + 1;
    v25 = &v24[3 * v23];
    v25[4] = v17;
    v25[5] = v18;
    v25[6] = v19;
  }

  else
  {
  }
}

void sub_2153BDDA0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, id a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_21532C8D8(a1, v23);
  if (!v24)
  {
    sub_2151ADCD8(v23, &qword_27CA5ABC0);
    return;
  }

  sub_2151A6C9C(0, &qword_281199590);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = [Strong _pk_viewProviderForAttachment_atCharacterIndex_createIfNeeded_];
      v18 = [v17 view];

      if (v18)
      {

LABEL_6:
        if (v18 == a7)
        {
          *a10 = a2;
          *(a10 + 8) = a3;
          *(a10 + 16) = 0;
          *a4 = 1;
        }

        return;
      }

      v19 = [v16 textContainer];
      v20 = [v19 tk2TextView];

      if (!v20)
      {

        return;
      }

      v21 = [v20 _cachedViewProviderForTextAttachment_];

      v18 = [v21 view];
      if (v18)
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_2153BDF98(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6)
{
  sub_21532C8D8(a1, v21);
  if (v22)
  {
    sub_2151A6C9C(0, &qword_27CA5B3A0);
    if (swift_dynamicCast())
    {
      v11 = [a5 textContainer];
      v12 = [v11 tk2TextView];

      if (v12 && (v13 = [v12 _cachedViewProviderForTextAttachment_], v12, v14 = objc_msgSend(v13, sel_view), v13, v14))
      {
        swift_getObjectType();
        v15 = dynamic_cast_existential_2_conditional(v14);
        if (v15)
        {
          v18 = *a6;
          *a6 = v15;
          *(a6 + 8) = v16;
          *(a6 + 16) = v17;
          v19 = v14;

          [a5 ic:a2 scrollRangeToVisible:a3 consideringInsets:1 animated:1];
          *a4 = 1;
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
    sub_2151ADCD8(v21, &qword_27CA5ABC0);
  }
}

id PaperTextAttachmentManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaperTextAttachmentManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PaperTextAttachmentManager.textualContext(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21549E15C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v87 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v87 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v96 = v6;
  v16 = Strong;
  v17 = [Strong textStorage];

  if (!v17)
  {
    goto LABEL_6;
  }

  sub_215333D74(a1, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BFE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2F8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v24 = 1;
    goto LABEL_57;
  }

  v94 = v5;
  v18 = v97;
  v19 = v98;
  v20 = v99;
  ObjectType = swift_getObjectType();
  v22 = sub_2153BF10C(v18, 0, v2, ObjectType, v19, v20);
  if (v23)
  {

LABEL_6:
    v24 = 1;
LABEL_57:
    v86 = sub_2154A157C();
    (*(*(v86 - 8) + 56))(a2, v24, 1, v86);
    return;
  }

  v95 = v22;
  v91 = v18;
  v92 = a2;
  v25 = sub_21549E0EC();
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [v28 safeAreaInsets];
    v38 = v37;
    v40 = v39;

    v25 = [v28 ic:UIEdgeInsetsInsetRect(v30 rangeFromRect:{v32, v34, v36, v38, v40)}];
    v42 = v41;
  }

  else
  {
    v42 = 0;
    v27 = v25;
  }

  if (v25 >= v95)
  {
    v43 = 0;
    v44 = v27;
  }

  else
  {
    v43 = v95 - v25;
    if (__OFSUB__(v95, v25))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v44 = v25;
  }

  v45 = &v25[v42];
  v93 = v2;
  v88 = v43;
  if (v95 >= &v25[v42])
  {
    v87 = 0;
    v90 = v27;
  }

  else
  {
    v46 = __OFSUB__(v45, v95);
    v47 = &v45[-v95];
    if (v46)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v87 = v47;
    v90 = v95;
  }

  sub_21549E0FC();
  v48 = [objc_opt_self() ic_attachmentCharacterSet];
  sub_21549E12C();

  sub_21549E13C();
  v49 = v96 + 8;
  v50 = *(v96 + 8);
  v51 = v94;
  v50(v8, v94);
  v96 = v49;
  v89 = v50;
  v50(v11, v51);
  v52 = v17;
  v53 = [v52 string];
  if (v53)
  {
    v54 = v53;
    v55 = sub_21549E10C();
    v56 = [v54 rangeOfCharacterFromSet:v55 options:4 range:{0, v95}];

    v57 = 0;
    v58 = v27;
    if (v56 != sub_21549E0EC())
    {
      v58 = [v54 paragraphRangeForRange_];
      v57 = v59;
    }

    if (v58 != sub_21549E0EC() && v44 != sub_21549E0EC())
    {
      v60 = &v58[v57];
      if (__OFADD__(v58, v57))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (__OFADD__(v44, v88))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v60 <= &v44[v88])
      {
        v60 = &v44[v88];
      }

      if (v58 < v44)
      {
        v44 = v58;
      }

      if (__OFSUB__(v60, v44))
      {
        goto LABEL_66;
      }
    }

    v88 = sub_2153BEA60(v52);
    v61 = sub_21549E10C();
    v62 = [v52 length];
    v63 = v95;
    if (__OFADD__(v95, 1))
    {
      __break(1u);
    }

    else
    {
      if (v95 + 1 >= v62)
      {
        v64 = v62;
      }

      else
      {
        v64 = (v95 + 1);
      }

      v65 = [v52 length];

      v66 = &v65[-v63];
      if (!__OFSUB__(v65, v63))
      {
        v46 = __OFSUB__(v66, 1);
        v67 = (v66 - 1);
        if (!v46)
        {
          v68 = [v54 rangeOfCharacterFromSet:v61 options:0 range:{v64, v67 & ~(v67 >> 63)}];

          v69 = 0;
          if (v68 != sub_21549E0EC())
          {
            v27 = [v54 paragraphRangeForRange_];
            v69 = v70;
          }

          if (v27 == sub_21549E0EC() || (v71 = sub_21549E0EC(), v72 = v90, v90 == v71))
          {
LABEL_48:
            sub_2153BEA60(v52);
            v74 = swift_unknownObjectWeakLoadStrong();
            v75 = v91;
            if (v74)
            {
              v76 = v74;
              v77 = [v74 title];

              if (v77)
              {
                v78 = sub_2154A1D6C();
                v80 = v79;

                v81 = [objc_opt_self() defaultTitleForEmptyNote];
                v82 = sub_2154A1D6C();
                v84 = v83;

                if (v78 == v82 && v80 == v84)
                {
                }

                else
                {
                  v85 = sub_2154A2FAC();

                  if ((v85 & 1) == 0)
                  {
                    a2 = v92;
                    goto LABEL_56;
                  }
                }
              }
            }

            a2 = v92;
LABEL_56:
            sub_2154A156C();

            v89(v14, v94);
            v24 = 0;
            goto LABEL_57;
          }

          v73 = &v27[v69];
          if (!__OFADD__(v27, v69))
          {
            if (!__OFADD__(v90, v87))
            {
              if (v73 <= &v87[v90])
              {
                v73 = &v87[v90];
              }

              if (v27 < v90)
              {
                v72 = v27;
              }

              if (!__OFSUB__(v73, v72))
              {
                goto LABEL_48;
              }

              goto LABEL_69;
            }

LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_70:
  __break(1u);
}

uint64_t sub_2153BEA60(void *a1)
{
  v32 = sub_21549E15C();
  v2 = *(v32 - 8);
  *&v3 = MEMORY[0x28223BE20](v32).n128_u64[0];
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 ic_range];
  v5 = sub_2154A2B0C();
  v7 = MEMORY[0x277D84F90];
  if ((v8 & 1) == 0)
  {
    v9 = [a1 plainTextParagraphsFromRange_];
    v10 = sub_2154A1F4C();

    v11 = *(v10 + 16);
    if (v11)
    {
      v36 = v7;
      sub_21531B5AC(0, v11, 0);
      v7 = v36;
      v12 = objc_opt_self();
      v29 = (v2 + 8);
      v30 = v12;
      v28[1] = v10;
      v13 = v10 + 40;
      v14 = v31;
      do
      {

        v15 = [v30 ic_attachmentCharacterSet];
        sub_21549E12C();

        v16 = sub_2154A1DCC();
        v18 = v17;
        v19 = *v29;
        v20 = v32;
        (*v29)(v14, v32);
        v34 = v16;
        v35 = v18;
        sub_21549E11C();
        sub_215324954();
        v21 = sub_2154A2B8C();
        v33 = v22;

        v19(v14, v20);

        v36 = v7;
        v24 = *(v7 + 16);
        v23 = *(v7 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_21531B5AC((v23 > 1), v24 + 1, 1);
          v7 = v36;
        }

        *(v7 + 16) = v24 + 1;
        v25 = v7 + 16 * v24;
        v26 = v33;
        *(v25 + 32) = v21;
        *(v25 + 40) = v26;
        v13 += 16;
        --v11;
      }

      while (v11);
    }
  }

  return v7;
}

void PaperTextAttachmentManager.magicGenerativePlaygroundContainer(_:stateDidChange:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BFF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v7 = sub_2154A180C();
  if (!v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v12 = Strong;
    v8 = [objc_allocWithZone(MEMORY[0x277CCAD90]) init];
    [v12 paperTextAttachmentManager:v2 endTrackingUndoManager:v8];
    goto LABEL_11;
  }

  v8 = v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_2154A181C();
  v9 = sub_2154A179C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_2151ADCD8(v6, &qword_27CA5BFF0);
    goto LABEL_9;
  }

  v13 = sub_2154A178C();
  (*(v10 + 8))(v6, v9);
  if ((v13 & 1) == 0)
  {
LABEL_9:
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      [v15 paperTextAttachmentManager:v2 endTrackingUndoManager:v8];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    [v14 paperTextAttachmentManager:v2 beginTrackingUndoManager:v8];
LABEL_11:

    swift_unknownObjectRelease();
    return;
  }

LABEL_12:
}

void sub_2153BEFE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong editorController];

    if (v4)
    {
      v5 = [v4 navigationItemConfiguration];

      [v5 setInlineSketchEditingState_];
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 editorController];

    if (v8)
    {
      v9 = [v8 navigationItemConfiguration];

      [v9 updateAnimated_];
    }
  }
}

uint64_t sub_2153BF10C(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v14 = Strong, v15 = [Strong textStorage], v14, v15))
    {
      v28[0] = 0;
      v28[1] = 0;
      v29 = 1;
      v26 = *MEMORY[0x277D74060];
      v16 = [v15 ic_range];
      v18 = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = a3;
      *(v19 + 24) = a2 & 1;
      *(v19 + 32) = a1;
      *(v19 + 40) = a5;
      *(v19 + 48) = a6;
      *(v19 + 56) = v28;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_2153BF4AC;
      *(v20 + 24) = v19;
      aBlock[4] = sub_215384F20;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21532C43C;
      aBlock[3] = &block_descriptor_23;
      v21 = _Block_copy(aBlock);
      v22 = a3;
      v23 = a1;

      [v15 enumerateAttribute:v26 inRange:v16 options:v18 usingBlock:{0, v21}];

      _Block_release(v21);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v25 = v28[0];

        return v25;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
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

uint64_t sub_2153BF46C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PaperTextAttachmentManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2153BF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2153178E4;
  v16 = &block_descriptor_192;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2153BF69C;
  v16 = &block_descriptor_189;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_2151AF750(a4);
  sub_2151AF750(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_2153BF69C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2151A6C9C(0, &qword_281199650);
  v2 = sub_2154A1F4C();

  v3 = v1(v2);

  return v3;
}

void *sub_2153BF7D0()
{
  v1 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2153BF87C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2153BF8D4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_2153BF9E4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2153BFA50(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2153BFAF0;
}

void sub_2153BFAF0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_2153BFBDC(id a1)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  if (*(v1 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer))
  {
    [a1 addGestureRecognizer_];
    if (*(v1 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer))
    {
      [a1 addGestureRecognizer_];
LABEL_5:
      v3 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
      swift_beginAccess();
      v4 = *(v1 + v3);
      *(v1 + v3) = a1;
      v5 = a1;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void TranscriptDetailPresentationInteraction.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  ObjectType = swift_getObjectType();

  sub_2153CB760(a1, v5, ObjectType, a2);
}

void TranscriptDetailPresentationInteraction.init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2153CB760(a1, v2, ObjectType, a2);
}

void sub_2153BFE7C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v0, ObjectType, v3);
    v7 = v6;
    swift_unknownObjectRelease();
    if (v5)
    {
      [v7 setTransitioningDelegate_];
      [v7 setModalPresentationStyle_];
      v8 = [v7 sheetPresentationController];
      if (v8)
      {
        v9 = v8;
        [v8 _setShouldDismissWhenTappedOutside_];
      }

      v10 = [v7 sheetPresentationController];
      if (v10)
      {
        v11 = v10;
        [v10 _setCornerRadiusForPresentationAndDismissal_];
      }

      v12 = [v7 sheetPresentationController];
      if (v12)
      {
        v13 = v12;
        [v12 setPrefersGrabberVisible_];
      }

      v14 = [v7 sheetPresentationController];
      if (v14)
      {
        v15 = v14;
        v16 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
        swift_beginAccess();
        v17 = *(v1 + v16);
        if (v17 && (v18 = [v17 window]) != 0)
        {

          v19 = *(v1 + v16);
        }

        else
        {
          v19 = 0;
        }

        [v15 setSourceView_];
      }

      if ([objc_opt_self() ic_isiPad])
      {
        v20 = [v7 sheetPresentationController];
        if (v20)
        {
          v21 = v20;
          [v20 _setWantsFullScreen_];
        }

        v22 = [v7 sheetPresentationController];
        if (v22)
        {
          v23 = v22;
          [v22 _setAllowsInteractiveDismissWhenFullScreen_];
        }
      }

      [v5 presentViewController:v7 animated:1 completion:0];
    }
  }
}

id TranscriptDetailPresentationInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2153C0360(void *a1)
{
  v3 = OBJC_IVAR____TtC11NotesEditor29MiniPlayerAnimationController_didPrepareAnimations;
  if ((*(v1 + OBJC_IVAR____TtC11NotesEditor29MiniPlayerAnimationController_didPrepareAnimations) & 1) == 0)
  {
    v4 = [v1 isReversed];
    v5 = MEMORY[0x277D77240];
    if (v4)
    {
      v5 = MEMORY[0x277D77230];
    }

    v6 = [a1 viewControllerForKey_];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    v8 = [v1 sourceView];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 snapshotViewAfterScreenUpdates_];
      if (v10)
      {
        v11 = v10;
        result = [v7 view];
        if (result)
        {
          v13 = result;
          [result bounds];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;

          v22 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
          [v22 setAutoresizingMask_];
          v23 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
          [v22 setBackgroundColor_];

          result = [v7 view];
          if (result)
          {
            v24 = result;
            [result addSubview_];

            [v11 frame];
            [v11 setFrame_];
            result = [v7 view];
            if (result)
            {
              v25 = result;
              [result addSubview_];

              result = [v7 view];
              if (result)
              {
                v26 = result;
                [result bounds];
                v28 = v27;
                v30 = v29;
                v32 = v31;
                v34 = v33;

                v57.origin.x = v28;
                v57.origin.y = v30;
                v57.size.width = v32;
                v57.size.height = v34;
                Width = CGRectGetWidth(v57);
                [v11 frame];
                v36 = floor((Width - CGRectGetWidth(v58)) * 0.5);
                if ([v1 isReversed])
                {
                  [v22 setAlpha_];
                  [v11 frame];
                  [v11 setFrame_];
                  [v11 setAlpha_];
                }

                v37 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v38 = swift_allocObject();
                *(v38 + 16) = v37;
                *(v38 + 24) = v11;
                *(v38 + 32) = v7;
                *(v38 + 40) = v36;
                *(v38 + 48) = v22;
                v53 = sub_2153CCA7C;
                v54 = v38;
                aBlock = MEMORY[0x277D85DD0];
                v50 = 1107296256;
                v51 = sub_2151BD7E4;
                v52 = &block_descriptor_174;
                v39 = _Block_copy(&aBlock);
                v40 = v11;
                v41 = v7;
                v42 = v22;

                [v1 addNoninteractiveAnimations_];
                _Block_release(v39);
                v43 = swift_allocObject();
                *(v43 + 16) = v40;
                *(v43 + 24) = v42;
                v53 = sub_2153CCA90;
                v54 = v43;
                aBlock = MEMORY[0x277D85DD0];
                v50 = 1107296256;
                v51 = sub_2153DF054;
                v52 = &block_descriptor_180;
                v44 = _Block_copy(&aBlock);
                v45 = v40;
                v46 = v42;

                [v1 addNoninteractiveCompletion_];

                _Block_release(v44);
                goto LABEL_16;
              }

LABEL_23:
              __break(1u);
              return result;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_22;
      }
    }

LABEL_16:
    *(v1 + v3) = 1;
  }

  v47 = type metadata accessor for MiniPlayerAnimationController();
  v55.receiver = v1;
  v55.super_class = v47;
  v48 = objc_msgSendSuper2(&v55, sel_interruptibleAnimatorForTransition_, a1);

  return v48;
}

void sub_2153C0854(double a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([v10 isReversed])
    {
      [a3 frame];
      [a3 setFrame_];
    }

    else
    {
      v11 = [a4 view];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      [v11 safeAreaInsets];

      [a3 frame];
      [a3 setFrame_];
      [a3 frame];
      [a3 setFrame_];
    }

    if ([v10 isReversed])
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    [a3 setAlpha_];
    v14 = [v10 isReversed];

    if (v14)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    [a5 setAlpha_];
  }
}

id sub_2153C0A9C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_playPauseButton] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingPauseButton] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingStopButton] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_backButton] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_forwardButton] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_buttonStack] = 0;
  v9 = objc_opt_self();
  v10 = [v9 ic_isVision];
  v11 = objc_opt_self();
  if (v10)
  {
    v12 = [v11 systemBlackColor];
    v13 = [v12 colorWithAlphaComponent_];
  }

  else
  {
    v13 = [v11 labelColor];
  }

  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_labelColor] = v13;
  v14 = [v9 ic_isVision];
  v15 = objc_opt_self();
  if (v14)
  {
    v16 = [v15 systemBlackColor];
    v17 = [v16 colorWithAlphaComponent_];
  }

  else
  {
    v17 = [v15 secondaryLabelColor];
  }

  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_secondaryLabelColor] = v17;
  v18 = &v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_state];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 25) = 0u;
  *&v4[OBJC_IVAR____TtC11NotesEditor10PlayerView_playbackController + 8] = 0;
  swift_unknownObjectWeakInit();
  v21.receiver = v4;
  v21.super_class = type metadata accessor for PlayerView();
  v19 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2153C0F40();

  return v19;
}

id sub_2153C0CF8(void *a1)
{
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_playPauseButton] = 0;
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingPauseButton] = 0;
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingStopButton] = 0;
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_backButton] = 0;
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_forwardButton] = 0;
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_buttonStack] = 0;
  v3 = objc_opt_self();
  v4 = [v3 ic_isVision];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 systemBlackColor];
    v7 = [v6 colorWithAlphaComponent_];
  }

  else
  {
    v7 = [v5 labelColor];
  }

  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_labelColor] = v7;
  v8 = [v3 ic_isVision];
  v9 = objc_opt_self();
  if (v8)
  {
    v10 = [v9 systemBlackColor];
    v11 = [v10 colorWithAlphaComponent_];
  }

  else
  {
    v11 = [v9 secondaryLabelColor];
  }

  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_secondaryLabelColor] = v11;
  v12 = &v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_state];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 25) = 0u;
  *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_playbackController + 8] = 0;
  swift_unknownObjectWeakInit();
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PlayerView();
  v13 = objc_msgSendSuper2(&v17, sel_initWithCoder_, a1);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    sub_2153C0F40();
  }

  return v14;
}

void sub_2153C0F40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C1B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v297 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A5A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v297 - v6;
  v8 = sub_2154A2A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v310 = &v297 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2154A29AC();
  v308 = *(v11 - 8);
  v309 = v11;
  MEMORY[0x28223BE20](v11);
  v307 = &v297 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4D0);
  MEMORY[0x28223BE20](v13 - 8);
  v297 = &v297 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v312 = &v297 - v16;
  v17 = sub_2154A2AAC();
  v317 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v316 = &v297 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v311 = &v297 - v20;
  MEMORY[0x28223BE20](v21);
  v322 = &v297 - v22;
  MEMORY[0x28223BE20](v23);
  v318 = &v297 - v24;
  MEMORY[0x28223BE20](v25);
  v330 = &v297 - v26;
  *&v28 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v325 = &v297 - v29;
  [v0 setTintAdjustmentMode_];
  type metadata accessor for AccessibilityFrameExpandingLabel();
  *&v327 = swift_getObjCClassFromMetadata();
  v30 = [objc_allocWithZone(v327) init];
  v31 = OBJC_IVAR____TtC11NotesEditor10PlayerView_titleLabel;
  v32 = *&v0[OBJC_IVAR____TtC11NotesEditor10PlayerView_titleLabel];
  *&v0[OBJC_IVAR____TtC11NotesEditor10PlayerView_titleLabel] = v30;
  v33 = v30;

  [v33 setAdjustsFontForContentSizeCategory_];
  v34 = *&v1[v31];
  if (!v34)
  {
    __break(1u);
    goto LABEL_102;
  }

  v305 = v9;
  v306 = v8;
  v320 = *&v1[OBJC_IVAR____TtC11NotesEditor10PlayerView_labelColor];
  v321 = v17;
  [v34 setTextColor_];
  v35 = *&v1[v31];
  if (!v35)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v36 = objc_opt_self();
  v37 = v35;
  v328 = v36;
  v38 = [v36 ic_isiPad];
  v39 = objc_opt_self();
  v329 = v31;
  if (v38)
  {
    v40 = [v39 preferredFontForTextStyle_];
  }

  else
  {
    v41 = [v39 preferredFontForTextStyle_];
    v40 = sub_2154A289C();

    v31 = v329;
  }

  [v37 setFont_];

  v42 = *&v1[v31];
  if (!v42)
  {
    goto LABEL_103;
  }

  [v42 setNumberOfLines_];
  v43 = *&v1[v31];
  if (!v43)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  [v43 setMarqueeEnabled_];
  v44 = *&v1[v31];
  if (!v44)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  [v44 setMarqueeRunning_];
  v331 = v1;
  v45 = *&v1[v31];
  if (!v45)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v46 = objc_opt_self();
  v47 = v45;
  v314 = v46;
  v48 = [v46 mainBundle];
  v49 = sub_2154A1D2C();
  v50 = [v48 localizedStringForKey:v49 value:0 table:0];

  if (!v50)
  {
    sub_2154A1D6C();
    v50 = sub_2154A1D2C();
  }

  v303 = v7;
  v304 = v4;
  [v47 setAccessibilityHint_];

  v51 = *&v331[v329];
  if (!v51)
  {
    goto LABEL_107;
  }

  *(v51 + OBJC_IVAR____TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel_accessibilityFrameDelegate + 8) = &off_282753A30;
  swift_unknownObjectWeakAssign();
  v52 = objc_opt_self();
  v53 = [v52 preferredFontForTextStyle_];
  v54 = [v53 fontDescriptor];

  v55 = [v54 fontAttributes];
  type metadata accessor for AttributeName(0);
  sub_2153CC5D0(&qword_281199520, type metadata accessor for AttributeName);
  v56 = sub_2154A1C8C();

  v347 = v56;
  v57 = *MEMORY[0x277D74338];
  v58 = *MEMORY[0x277D74420];
  v326 = v52;
  v59 = [v52 monospacedDigitSystemFontOfSize:0.0 weight:v58];
  v60 = [v59 fontDescriptor];

  v61 = [v60 fontAttributes];
  v62 = sub_2154A1C8C();

  if (*(v62 + 16) && (v63 = sub_2153B1B20(v57), (v64 & 1) != 0))
  {
    sub_21533FC88(*(v62 + 56) + 32 * v63, &v345);

    sub_21531E8D0(&v345, v342);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v340 = v56;
    sub_215472B94(v342, v57, isUniquelyReferenced_nonNull_native);
    v66 = v340;
    v347 = v340;
  }

  else
  {

    sub_21536D148(v57, &v345);
    sub_2151ADCD8(&v345, &qword_27CA5ABC0);
    v66 = v347;
  }

  v67 = v321;
  v68 = v327;
  v69 = objc_allocWithZone(MEMORY[0x277D74310]);
  v70 = sub_2154A1C7C();
  v71 = [v69 initWithFontAttributes_];

  v72 = [objc_allocWithZone(v68) init];
  v73 = OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel;
  v74 = v331;
  v75 = *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel];
  *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel] = v72;
  v76 = v72;

  v77 = [v326 fontWithDescriptor:v71 size:0.0];
  [v76 setFont_];

  v78 = *&v74[v73];
  v79 = v329;
  if (!v78)
  {
    goto LABEL_108;
  }

  [v78 setAdjustsFontForContentSizeCategory_];
  v80 = *&v74[v73];
  if (!v80)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  [v80 setTextColor_];
  v81 = *&v74[v73];
  if (!v81)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v299 = v66;
  [v81 setNumberOfLines_];
  v82 = *&v74[v73];
  if (!v82)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  *(v82 + OBJC_IVAR____TtC11NotesEditorP33_BCDBDF3703124CBFF67EDFC1BC77488932AccessibilityFrameExpandingLabel_accessibilityFrameDelegate + 8) = &off_282753A30;
  swift_unknownObjectWeakAssign();
  [v74 setTintColor_];
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_2154BDB10;
  v84 = *&v74[v79];
  if (!v84)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v298 = v71;
  *(v83 + 32) = v84;
  v313 = v73;
  v85 = *&v74[v73];
  if (!v85)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v86 = v67;
  *(v83 + 40) = v85;
  v87 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v88 = sub_2151A6C9C(0, &qword_2811994D0);
  v89 = v84;
  v90 = v85;
  v315 = v88;
  v91 = sub_2154A1F3C();

  v92 = [v87 initWithArrangedSubviews_];

  [v92 setAxis_];
  [v92 setDistribution_];
  [v92 setAlignment_];
  v93 = v92;
  LODWORD(v94) = 1144750080;
  v300 = v93;
  [v93 setContentHuggingPriority:1 forAxis:v94];
  v95 = *MEMORY[0x277D76A20];
  v96 = objc_opt_self();
  v302 = v95;
  v97 = [v96 configurationWithTextStyle:v95 scale:2];
  v98 = [v96 configurationWithWeight_];
  v99 = [v97 configurationByApplyingConfiguration_];

  v100 = v325;
  sub_2154A298C();
  v101 = sub_2154A1D2C();
  v102 = objc_opt_self();
  v103 = [v102 systemImageNamed_];

  sub_2154A2A6C();
  v104 = v99;
  sub_2154A296C();
  if ([v328 ic_isVision])
  {
    v105 = v320;
    sub_2154A2A2C();
  }

  v106 = sub_2151A6C9C(0, &qword_281199470);
  v107 = v317;
  v326 = *(v317 + 16);
  (v326)(v330, v100, v86);
  *&v327 = v106;
  v108 = sub_2154A2ABC();
  [v108 setSymbolAnimationEnabled_];

  v324 = *(v107 + 8);
  v325 = (v107 + 8);
  v324(v100, v86);
  v109 = v331;
  v110 = *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_backButton];
  v323 = OBJC_IVAR____TtC11NotesEditor10PlayerView_backButton;
  *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_backButton] = v108;
  v111 = v108;

  [v111 addTarget:v109 action:sel_back_ forControlEvents:0x2000];
  v112 = *MEMORY[0x277D76A28];
  v113 = [v96 configurationWithTextStyle:*MEMORY[0x277D76A28] scale:3];
  v114 = [v96 configurationWithWeight_];
  v115 = [v113 configurationByApplyingConfiguration_];

  v116 = v318;
  sub_2154A298C();
  v117 = sub_2154A1D2C();
  v118 = [v102 systemImageNamed_];

  sub_2154A2A6C();
  v119 = v115;
  sub_2154A296C();
  if ([v328 ic_isVision])
  {
    v120 = v320;
    sub_2154A2A2C();
  }

  v121 = v321;
  (v326)(v330, v116, v321);
  v122 = sub_2154A2ABC();
  [v122 setSymbolAnimationEnabled_];

  v324(v116, v121);
  v123 = v331;
  v124 = *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_playPauseButton];
  v318 = OBJC_IVAR____TtC11NotesEditor10PlayerView_playPauseButton;
  *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_playPauseButton] = v122;
  v125 = v122;

  v301 = sel_playPause_;
  [v125 addTarget:v123 action:? forControlEvents:?];

  v126 = [v96 configurationWithTextStyle:v302 scale:2];
  v127 = [v96 configurationWithWeight_];
  v128 = [v126 configurationByApplyingConfiguration_];

  v129 = v322;
  sub_2154A298C();
  v130 = sub_2154A1D2C();
  v131 = [v102 systemImageNamed_];

  sub_2154A2A6C();
  v132 = v128;
  sub_2154A296C();
  if ([v328 ic_isVision])
  {
    v133 = v320;
    sub_2154A2A2C();
  }

  (v326)(v330, v129, v121);
  v134 = sub_2154A2ABC();
  [v134 setSymbolAnimationEnabled_];

  v324(v129, v121);
  v135 = v331;
  v136 = *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_forwardButton];
  v322 = OBJC_IVAR____TtC11NotesEditor10PlayerView_forwardButton;
  *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_forwardButton] = v134;
  v137 = v134;

  [v137 addTarget:v135 action:sel_forward_ forControlEvents:0x2000];
  v138 = [v96 configurationWithTextStyle:v112 scale:2];
  v139 = v311;
  sub_2154A298C();
  v140 = sub_2154A1D2C();
  v141 = [v102 systemImageNamed_];

  sub_2154A2A6C();
  v142 = v138;
  sub_2154A296C();
  v143 = [v328 ic_isVision];
  v144 = v312;
  if (v143)
  {
    v145 = v320;
    sub_2154A2A2C();
  }

  (v326)(v330, v139, v121);
  v146 = sub_2154A2ABC();
  [v146 setSymbolAnimationEnabled_];

  v324(v139, v121);
  v147 = OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingStopButton;
  v148 = v331;
  v149 = *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingStopButton];
  *&v331[OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingStopButton] = v146;
  v150 = v146;

  [v150 addTarget:v148 action:sel_stopRecording_ forControlEvents:0x2000];
  v151 = *&v147[v148];
  if (!v151)
  {
    goto LABEL_114;
  }

  [v151 setHidden_];
  v152 = *&v147[v148];
  if (!v152)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v153 = objc_opt_self();
  v154 = v152;
  v155 = [v153 systemRedColor];
  [v154 setTintColor_];

  v156 = *&v147[v148];
  if (!v156)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v157 = v156;
  sub_2154A2ACC();
  v158 = (*(v317 + 48))(v144, 1, v121);
  v328 = v147;
  if (v158)
  {
    sub_215324EEC(v144, v297, &qword_27CA5B4D0);
    sub_2154A2ADC();

    v121 = v321;
    sub_2151ADCD8(v144, &qword_27CA5B4D0);
  }

  else
  {
    v159 = [v153 systemRedColor];
    sub_2154A2A2C();
    sub_2154A2ADC();
  }

  v160 = v316;
  sub_2154A2A5C();
  (*(v308 + 104))(v307, *MEMORY[0x277D74FD8], v309);
  sub_2154A29BC();
  (*(v305 + 104))(v310, *MEMORY[0x277D75030], v306);
  sub_2154A299C();
  v161 = [v153 systemRedColor];
  sub_2154A2A2C();
  v162 = v303;
  sub_21549F2AC();
  v163 = sub_21549F29C();
  (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
  sub_2154A2A3C();
  swift_allocObject();
  v164 = v331;
  swift_unknownObjectWeakInit();
  v165 = v304;
  sub_21549F23C();
  v166 = sub_21549F22C();
  (*(*(v166 - 8) + 56))(v165, 0, 1, v166);
  v167 = sub_2154A297C();
  sub_21549F16C();
  v167(&v345, 0);
  (v326)(v330, v160, v121);
  v168 = sub_2154A2ABC();
  v169 = OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingPauseButton;
  v170 = *&v164[OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingPauseButton];
  *&v164[OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingPauseButton] = v168;
  v171 = v168;

  [v171 addTarget:v164 action:v301 forControlEvents:0x2000];
  v172 = *&v164[v169];
  if (!v172)
  {
    goto LABEL_117;
  }

  [v172 setHidden_];
  v173 = *&v164[v169];
  if (!v173)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v174 = v173;
  v175 = [v153 clearColor];
  [v174 setTintColor_];

  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_2154BFED0;
  v177 = *&v164[v323];
  if (!v177)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  *(v176 + 32) = v177;
  v178 = *&v318[v164];
  if (!v178)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  *(v176 + 40) = v178;
  v179 = *&v322[v164];
  if (!v179)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  *(v176 + 48) = v179;
  v180 = v164;
  v181 = *&v328[v164];
  if (!v181)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  *(v176 + 56) = v181;
  v330 = v169;
  v182 = *&v180[v169];
  if (!v182)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  *(v176 + 64) = v182;
  v183 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v184 = v182;
  v185 = v181;
  v186 = v179;
  v187 = v178;
  v188 = v177;
  v189 = sub_2154A1F3C();

  v190 = [v183 initWithArrangedSubviews_];

  v191 = OBJC_IVAR____TtC11NotesEditor10PlayerView_buttonStack;
  v192 = *&v180[OBJC_IVAR____TtC11NotesEditor10PlayerView_buttonStack];
  *&v180[OBJC_IVAR____TtC11NotesEditor10PlayerView_buttonStack] = v190;
  v193 = v190;

  if (!v193)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  [v193 setAxis_];

  v194 = *&v180[v191];
  if (!v194)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  [v194 setDistribution_];
  v195 = *&v180[v191];
  if (!v195)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  [v195 setAlignment_];
  v196 = *&v180[v191];
  if (!v196)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  [v196 setSpacing_];
  v197 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_2154BDB70;
  v199 = v300;
  *(v198 + 32) = v300;
  *(v198 + 40) = v197;
  v200 = *&v180[v191];
  if (!v200)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  *(v198 + 48) = v200;
  v201 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v326 = v197;
  v202 = v200;
  v203 = sub_2154A1F3C();

  v204 = [v201 initWithArrangedSubviews_];

  [v204 setAlignment_];
  [v204 setLayoutMarginsRelativeArrangement_];
  v205 = v204;
  [v205 setDirectionalLayoutMargins_];
  [v205 setTranslatesAutoresizingMaskIntoConstraints_];
  v206 = sub_2151A6C9C(0, &qword_27CA5C1C0);
  v343[3] = v206;
  v343[0] = v199;
  v207 = *&v180[v191];
  if (!v207)
  {
    v206 = 0;
    v344[1] = 0;
    v344[2] = 0;
  }

  v344[0] = v207;
  v344[3] = v206;
  v320 = v199;
  v208 = v205;
  v209 = v207;
  sub_215324EEC(v343, &v345, &qword_27CA5ABC0);
  v340 = v345;
  v341 = v346;
  if (*(&v346 + 1))
  {
    sub_21531E8D0(&v340, v342);
    v210 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v210 = sub_2153179B0(0, *(v210 + 2) + 1, 1, v210);
    }

    v212 = *(v210 + 2);
    v211 = *(v210 + 3);
    if (v212 >= v211 >> 1)
    {
      v210 = sub_2153179B0((v211 > 1), v212 + 1, 1, v210);
    }

    *(v210 + 2) = v212 + 1;
    sub_21531E8D0(v342, &v210[32 * v212 + 32]);
  }

  else
  {
    sub_2151ADCD8(&v340, &qword_27CA5ABC0);
    v210 = MEMORY[0x277D84F90];
  }

  sub_215324EEC(v344, &v345, &qword_27CA5ABC0);
  v340 = v345;
  v341 = v346;
  if (*(&v346 + 1))
  {
    sub_21531E8D0(&v340, v342);
    v213 = swift_isUniquelyReferenced_nonNull_native();
    v214 = v331;
    if ((v213 & 1) == 0)
    {
      v210 = sub_2153179B0(0, *(v210 + 2) + 1, 1, v210);
    }

    v216 = *(v210 + 2);
    v215 = *(v210 + 3);
    if (v216 >= v215 >> 1)
    {
      v210 = sub_2153179B0((v215 > 1), v216 + 1, 1, v210);
    }

    *(v210 + 2) = v216 + 1;
    sub_21531E8D0(v342, &v210[32 * v216 + 32]);
  }

  else
  {
    sub_2151ADCD8(&v340, &qword_27CA5ABC0);
    v214 = v331;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC0);
  swift_arrayDestroy();
  v217 = sub_2154A1F3C();

  [v208 setAccessibilityElements_];

  [v208 setAccessibilityContainerType_];
  v218 = [v314 mainBundle];
  v219 = sub_2154A1D2C();
  v220 = [v218 localizedStringForKey:v219 value:0 table:0];

  if (!v220)
  {
    sub_2154A1D6C();
    v220 = sub_2154A1D2C();
  }

  [v208 setAccessibilityLabel_];

  [v214 addSubview_];
  v221 = swift_allocObject();
  v327 = xmmword_2154BDB30;
  *(v221 + 16) = xmmword_2154BDB30;
  v222 = [v214 leadingAnchor];
  v223 = [v208 leadingAnchor];
  v224 = [v222 constraintEqualToAnchor_];

  *(v221 + 32) = v224;
  v225 = [v214 trailingAnchor];
  v226 = [v208 trailingAnchor];
  v227 = [v225 constraintEqualToAnchor_];

  *(v221 + 40) = v227;
  v228 = [v214 topAnchor];
  v229 = [v208 topAnchor];
  v230 = [v228 constraintEqualToAnchor_];

  *(v221 + 48) = v230;
  v231 = [v214 bottomAnchor];
  v232 = [v208 bottomAnchor];

  v233 = [v231 constraintEqualToAnchor_];
  *(v221 + 56) = v233;
  *&v345 = v221;
  inited = swift_initStackObject();
  *(inited + 16) = v327;
  v235 = *(v214 + v323);
  v236 = v328;
  if (!v235)
  {
    goto LABEL_129;
  }

  v237 = inited;
  *(inited + 32) = v235;
  v238 = *&v322[v214];
  if (!v238)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  *(inited + 40) = v238;
  v239 = *&v318[v214];
  if (!v239)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  *(inited + 48) = v239;
  v240 = *&v236[v214];
  if (!v240)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    return;
  }

  v319 = v208;
  *(inited + 56) = v240;
  v241 = v235;
  v242 = v238;
  v243 = v239;
  v244 = v240;
  for (i = 0; i != 4; ++i)
  {
    if ((v237 & 0xC000000000000001) != 0)
    {
      v246 = MEMORY[0x216069960](i, v237);
    }

    else
    {
      v246 = *(v237 + 8 * i + 32);
    }

    v247 = v246;
    v248 = [v247 widthAnchor];
    v249 = [v248 constraintEqualToConstant_];

    MEMORY[0x216068AC0]();
    if (*((v345 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v345 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2154A1F8C();
    }

    sub_2154A1FAC();
    v250 = [v247 heightAnchor];
    v251 = [v247 widthAnchor];

    v252 = [v250 constraintEqualToAnchor_];
    MEMORY[0x216068AC0]();
    if (*((v345 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v345 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2154A1F8C();
    }

    sub_2154A1FAC();
  }

  v253 = v345;
  swift_setDeallocating();
  swift_arrayDestroy();
  v254 = objc_opt_self();
  sub_2151A6C9C(0, &qword_2811995A0);
  *&v327 = v253;
  v255 = sub_2154A1F3C();
  [v254 activateConstraints_];

  v257 = *&v331[v313];
  v258 = *&v318[v331];
  v259 = *&v331[v323];
  v335 = *&v331[v329];
  v256 = v335;
  v336 = v257;
  v337 = v258;
  v338 = v259;
  v339 = *&v322[v331];
  v260 = v339;
  v261 = *MEMORY[0x277D76818];
  v262 = v256;
  v263 = v257;
  v264 = v258;
  v265 = v259;
  for (j = 32; j != 72; j += 8)
  {
    v267 = *&v334[j];
    if (v267)
    {
      v268 = v267;
      [v268 setMaximumContentSizeCategory_];
      [v268 setShowsLargeContentViewer_];
      v269 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
      [v268 addInteraction_];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C1C8);
  swift_arrayDestroy();
  v270 = v331;
  v271 = *&v331[v329];
  v272 = *&v331[v313];
  v332 = v271;
  v333 = v272;
  v273 = v271;
  v274 = v272;
  if (v271)
  {
    [v273 setUserInteractionEnabled_];
  }

  if (v272)
  {
    [v274 setUserInteractionEnabled_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C1D0);
  swift_arrayDestroy();
  v275 = *(v270 + v323);
  if (!v275)
  {
    goto LABEL_133;
  }

  v276 = v275;
  v277 = v314;
  v278 = [v314 mainBundle];
  v279 = sub_2154A1D2C();
  v280 = [v278 localizedStringForKey:v279 value:0 table:0];

  if (!v280)
  {
    sub_2154A1D6C();
    v280 = sub_2154A1D2C();
  }

  [v276 setLargeContentTitle_];

  v281 = *&v322[v270];
  if (!v281)
  {
    goto LABEL_134;
  }

  v282 = v281;
  v283 = [v277 mainBundle];
  v284 = sub_2154A1D2C();
  v285 = [v283 localizedStringForKey:v284 value:0 table:0];

  if (!v285)
  {
    sub_2154A1D6C();
    v285 = sub_2154A1D2C();
  }

  [v282 setLargeContentTitle_];

  v286 = *&v330[v270];
  if (!v286)
  {
    goto LABEL_135;
  }

  v287 = v286;
  v288 = [v277 mainBundle];
  v289 = sub_2154A1D2C();
  v290 = [v288 localizedStringForKey:v289 value:0 table:0];

  if (!v290)
  {
    sub_2154A1D6C();
    v290 = sub_2154A1D2C();
  }

  [v287 setAccessibilityLabel_];

  v291 = *&v328[v270];
  if (!v291)
  {
    goto LABEL_136;
  }

  v292 = v291;

  v293 = [v277 mainBundle];
  v294 = sub_2154A1D2C();
  v295 = [v293 localizedStringForKey:v294 value:0 table:0];

  v296 = v321;
  if (!v295)
  {
    sub_2154A1D6C();
    v295 = sub_2154A1D2C();
  }

  [v292 setAccessibilityLabel_];

  v324(v316, v296);
}

uint64_t sub_2153C330C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21549E30C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  sub_2154A289C();

  sub_215324F74();
  return sub_21549E31C();
}

id sub_2153C33DC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 16), v3 = *(Strong + OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 32), v4 = Strong, , v4, v3) && (, (v2 & 1) != 0))
  {
    v5 = [objc_opt_self() systemBackgroundColor];

    return v5;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_2153C36C8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x216069CA0](*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x216069CA0](*&v2);
  sub_2154A30FC();
  sub_2154A1DFC();
  return MEMORY[0x216069C80](*(v0 + 40));
}

uint64_t sub_2153C3740(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a2 + 40);
    if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
    {
      return v5 ^ v6 ^ 1u;
    }

    v7 = sub_2154A2FAC();
    result = 0;
    if (v7)
    {
      return v5 ^ v6 ^ 1u;
    }
  }

  return result;
}

uint64_t sub_2153C37CC()
{
  sub_2154A30DC();
  sub_2153C36C8();
  return sub_2154A312C();
}

uint64_t sub_2153C3810()
{
  sub_2154A30DC();
  sub_2153C36C8();
  return sub_2154A312C();
}

void sub_2153C384C(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4D0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v132 - v15;
  MEMORY[0x28223BE20](v14);
  v19 = &v132 - v18;
  v20 = v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_state;
  v143 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 32);
  if (v143)
  {
    v21 = *v20;
    v22 = *(v20 + 40);
    v23 = *(v20 + 24);
    v142 = *(v20 + 16);
    v24 = *(v20 + 8);
    v25 = v21;
    v137 = v17;
    v138 = v23;
    if (!v7)
    {

LABEL_15:
      v26 = v142;
LABEL_16:
      v28 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_backButton);
      if (v28)
      {
        [v28 setHidden_];
        v29 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_forwardButton);
        if (v29)
        {
          [v29 setHidden_];
          v140 = OBJC_IVAR____TtC11NotesEditor10PlayerView_playPauseButton;
          v30 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_playPauseButton);
          if (v30)
          {
            [v30 setHidden_];
            v31 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingPauseButton);
            if (v31)
            {
              v136 = OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingPauseButton;
              v134 = v16;
              [v31 setHidden_];
              v135 = OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingStopButton;
              v32 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_recordingStopButton);
              if (v32)
              {
                [v32 setHidden_];
                sub_2154A317C();
                v33 = sub_2154A316C();
                v139 = v34;
                sub_2154A317C();
                v35 = sub_2154A316C();
                v141 = v36;
                if (v22)
                {
                  if (v26)
                  {
                    v61 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel);
                    if (!v61)
                    {
LABEL_88:
                      __break(1u);
                      goto LABEL_89;
                    }

                    v62 = v61;
                    v63 = sub_2154A1D2C();
                    [v62 setText_];

                    v64 = (v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel);
                    v65 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel);
                    if (!v65)
                    {
                      goto LABEL_79;
                    }

                    v66 = objc_opt_self();
                    v67 = v65;
                    v68 = [v66 systemRedColor];
                  }

                  else
                  {
                    v69 = [objc_opt_self() mainBundle];
                    v70 = sub_2154A1D2C();
                    v71 = [v69 &selRef_noteLastModificationDate + 4];

                    sub_2154A1D6C();
                    v72 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel);
                    if (!v72)
                    {
LABEL_89:
                      __break(1u);
                      goto LABEL_90;
                    }

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
                    v73 = swift_allocObject();
                    *(v73 + 16) = xmmword_2154BDB50;
                    *(v73 + 56) = MEMORY[0x277D837D0];
                    *(v73 + 64) = sub_215333D20();
                    v74 = v141;
                    *(v73 + 32) = v35;
                    *(v73 + 40) = v74;

                    v75 = v72;
                    sub_2154A1D3C();

                    v76 = sub_2154A1D2C();

                    [v75 setText_];

                    v64 = (v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel);
                    if (!*(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel))
                    {
                      goto LABEL_79;
                    }

                    v77 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_secondaryLabelColor);
                    v67 = *v64;
                    v68 = v77;
                  }

                  v78 = v68;
                  [v67 setTextColor_];

                  v79 = objc_opt_self();
                  v80 = [v79 mainBundle];
                  v81 = sub_2154A1D2C();
                  v82 = [v80 localizedStringForKey:v81 value:0 table:0];

                  sub_2154A1D6C();
                  v134 = v83;

                  v84 = *v64;
                  if (!*v64)
                  {
LABEL_81:
                    __break(1u);
                    goto LABEL_82;
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
                  v85 = swift_allocObject();
                  *(v85 + 16) = xmmword_2154BDB50;
                  v86 = objc_allocWithZone(MEMORY[0x277D36850]);
                  v87 = v84;
                  v88 = [v86 initWithSeconds:0 ignoreFractionalSeconds:v21];
                  v133 = v79;
                  if (v88)
                  {
                    v89 = v88;
                    v90 = [v88 durationDescription];

                    v53 = v142;
                    if (v90)
                    {
                      v91 = sub_2154A1D6C();
                      v93 = v92;
                    }

                    else
                    {
                      v91 = 0;
                      v93 = 0xE000000000000000;
                    }
                  }

                  else
                  {
                    v91 = 0;
                    v93 = 0xE000000000000000;
                    v53 = v142;
                  }

                  *(v85 + 56) = MEMORY[0x277D837D0];
                  *(v85 + 64) = sub_215333D20();
                  *(v85 + 32) = v91;
                  *(v85 + 40) = v93;
                  sub_2154A1D3C();

                  v94 = sub_2154A1D2C();

                  [v87 setAccessibilityLabel_];

                  v95 = *&v136[v2];
                  if (!v95)
                  {
                    goto LABEL_83;
                  }

                  v96 = v95;
                  sub_2154A2ACC();
                  v97 = sub_2154A2AAC();
                  v98 = (*(*(v97 - 8) + 48))(v12, 1, v97);
                  v99 = v140;
                  v100 = &unk_27CA5C000;
                  if (v98)
                  {
                    sub_215324EEC(v12, v137, &qword_27CA5B4D0);
                    sub_2154A2ADC();

                    sub_2151ADCD8(v12, &qword_27CA5B4D0);
                    v101 = v135;
                  }

                  else
                  {
                    v102 = [v133 mainBundle];
                    v101 = v135;
                    v114 = sub_2154A1D2C();
                    v115 = [v102 localizedStringForKey:v114 value:0 table:0];

                    sub_2154A1D6C();
                    sub_2154A2A8C();
                    sub_2154A2ADC();
                  }

                  v116 = *(v2 + v101);
                  if (!v116)
                  {
                    goto LABEL_85;
                  }

                  v117 = v116;

                  [v117 setHidden_];
                }

                else
                {
                  v136 = objc_opt_self();
                  v37 = [v136 mainBundle];
                  v38 = sub_2154A1D2C();
                  v39 = sub_2154A1D2C();
                  v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

                  sub_2154A1D6C();
                  v42 = v41;

                  v43 = OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel;
                  v44 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_subtitleLabel);
                  if (!v44)
                  {
LABEL_77:
                    __break(1u);
                    goto LABEL_78;
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
                  v45 = swift_allocObject();
                  *(v45 + 16) = xmmword_2154BDB40;
                  v46 = MEMORY[0x277D837D0];
                  *(v45 + 56) = MEMORY[0x277D837D0];
                  v47 = sub_215333D20();
                  v48 = v139;
                  *(v45 + 32) = v33;
                  *(v45 + 40) = v48;
                  *(v45 + 96) = v46;
                  *(v45 + 104) = v47;
                  *(v45 + 64) = v47;
                  *(v45 + 72) = v35;
                  *(v45 + 80) = v141;

                  v49 = v44;
                  v135 = v42;
                  sub_2154A1D3C();

                  v50 = sub_2154A1D2C();

                  [v49 setText_];

                  v51 = *(v2 + v43);
                  if (!v51)
                  {
LABEL_78:
                    __break(1u);
LABEL_79:
                    __break(1u);
                    goto LABEL_80;
                  }

                  [v51 setTextColor_];
                  v52 = *(v2 + v43);
                  v53 = v142;
                  if (!v52)
                  {
LABEL_80:
                    __break(1u);
                    goto LABEL_81;
                  }

                  v54 = v52;
                  _sSd11NotesEditorE34accessibilityElapsedAndTotalString7elapsed5totalSSSd_SdtFZ_0(v24, v25);
                  v55 = sub_2154A1D2C();

                  [v54 setAccessibilityLabel_];

                  v56 = *(v2 + v140);
                  if (!v56)
                  {
LABEL_82:
                    __break(1u);
LABEL_83:
                    __break(1u);
LABEL_84:
                    __break(1u);
LABEL_85:
                    __break(1u);
                    goto LABEL_86;
                  }

                  v57 = v56;
                  sub_2154A2ACC();
                  v58 = sub_2154A2AAC();
                  v59 = *(*(v58 - 8) + 48);
                  v60 = v59(v19, 1, v58);
                  v133 = v59;
                  if (v60)
                  {
                    sub_215324EEC(v19, v137, &qword_27CA5B4D0);
                    sub_2154A2ADC();

                    sub_2151ADCD8(v19, &qword_27CA5B4D0);
                  }

                  else
                  {
                    v103 = sub_2154A1D2C();
                    v104 = [objc_opt_self() systemImageNamed_];

                    sub_2154A2A6C();
                    sub_2154A2ADC();
                  }

                  v99 = v140;
                  v105 = *(v2 + v140);
                  if (!v105)
                  {
                    goto LABEL_84;
                  }

                  v106 = v105;
                  v107 = [v136 mainBundle];
                  v108 = sub_2154A1D2C();
                  v109 = [v107 localizedStringForKey:v108 value:0 table:0];

                  sub_2154A1D6C();
                  v110 = sub_2154A1D2C();

                  [v106 setAccessibilityLabel_];

                  if ([objc_opt_self() ic_isVision])
                  {

                    v100 = &unk_27CA5C000;
                  }

                  else
                  {
                    v111 = *(v2 + v99);
                    v100 = &unk_27CA5C000;
                    if (!v111)
                    {
LABEL_90:
                      __break(1u);
                      return;
                    }

                    v112 = v111;

                    v113 = v134;
                    sub_2154A2ACC();
                    if (v133(v113, 1, v58))
                    {
                      sub_215324EEC(v113, v137, &qword_27CA5B4D0);
                      sub_2154A2ADC();

                      sub_2151ADCD8(v113, &qword_27CA5B4D0);
                    }

                    else
                    {
                      sub_2154A2A2C();
                      sub_2154A2ADC();
                    }
                  }
                }

                v118 = *(v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_titleLabel);
                if (v118)
                {

                  v119 = v118;
                  v120 = sub_2154A1D2C();

                  [v119 setText_];

                  v121 = *(v2 + v100[26]);
                  if (v53)
                  {
                    if (!v121)
                    {
LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

                    v122 = *MEMORY[0x277D765D0];
                    v123 = v121;
                    v124 = [v123 accessibilityTraits];
                    if ((v122 & ~v124) != 0)
                    {
                      v125 = v122;
                    }

                    else
                    {
                      v125 = 0;
                    }

                    [v123 setAccessibilityTraits_];
                  }

                  else
                  {
                    if (!v121)
                    {
LABEL_87:
                      __break(1u);
                      goto LABEL_88;
                    }

                    v126 = *MEMORY[0x277D765D0];
                    v123 = v121;
                    v127 = [v123 accessibilityTraits];
                    v128 = -1;
                    if ((v127 & v126) != 0)
                    {
                      v128 = ~v126;
                    }

                    [v123 setAccessibilityTraits_];
                  }

                  v129 = *(v2 + v99);
                  if (v129)
                  {
                    v130 = v129;

                    v131 = [v130 accessibilityLabel];

                    [v130 setLargeContentTitle_];
                    return;
                  }

                  goto LABEL_76;
                }

LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v4 != v21 || v24 != v3)
    {
      goto LABEL_14;
    }

    if ((v142 ^ v5))
    {
      v26 = v142;

      goto LABEL_16;
    }

    v27 = v23 == v6 && v143 == v7;
    if (!v27 && (sub_2154A2FAC() & 1) == 0 || ((v22 ^ v8) & 1) != 0)
    {
LABEL_14:

      goto LABEL_15;
    }
  }
}

char *sub_2153C4864(void *a1, void *a2, uint64_t a3, void *a4)
{
  v27[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C1F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  *&v4[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingStateCancellable] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingCoordinatorObservation] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingManager] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_attachment] = a1;
  *&v4[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_audioController] = a2;
  v13 = &v4[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_stateChangeHandler];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = type metadata accessor for ICAudioAttachmentPlaybackAdaptor();
  v28.receiver = v4;
  v28.super_class = v14;
  v15 = a1;
  v27[0] = a2;

  v16 = objc_msgSendSuper2(&v28, sel_init);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  [v19 addObserver:v18 selector:sel_timeChanged_ name:*MEMORY[0x277D36480] object:v15];

  v20 = [v17 defaultCenter];
  [v20 addObserver:v18 selector:sel_playPauseToggled_ name:*MEMORY[0x277D36470] object:v15];

  v21 = [v17 defaultCenter];
  [v21 addObserver:v18 selector:sel_playPauseToggled_ name:*MEMORY[0x277D36468] object:v15];

  v22 = [v17 defaultCenter];
  [v22 addObserver:v18 selector:sel_playPauseToggled_ name:*MEMORY[0x277D36478] object:v15];

  sub_21549F93C();
  sub_21549F90C();
  sub_21549F8FC();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2151ACC5C(&qword_27CA5B540, &unk_27CA5C1F0);
  v23 = sub_21549F3EC();

  (*(v10 + 8))(v12, v9);
  *&v18[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingCoordinatorObservation] = v23;

  v24 = v27[0];
  v25 = sub_2153C4D7C(v15, v27[0]);
  (*&v18[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_stateChangeHandler])(v25);

  return v18;
}

void sub_2153C4BFC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingManager);
    *(Strong + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingManager) = 0;

    v5 = OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingStateCancellable;
    if (*&v3[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingStateCancellable])
    {

      sub_21549F31C();
    }

    *&v3[v5] = 0;

    if (!v1)
    {
      v6 = v3;
LABEL_17:

      return;
    }

    v6 = v1;
    v7 = sub_21549F72C();
    v9 = v8;
    v10 = [*&v3[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_attachment] identifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_2154A1D6C();
      v14 = v13;

      if (v7 == v12 && v9 == v14)
      {
      }

      else
      {
        v16 = sub_2154A2FAC();

        if ((v16 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      sub_2153C5180(v6);
    }

    else
    {
    }

LABEL_16:

    goto LABEL_17;
  }
}

id sub_2153C4D7C(void *a1, void *a2)
{
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  sub_21549F93C();
  sub_21549F90C();
  v14 = sub_21549F8EC();

  if (v14)
  {
    sub_21549F90C();
    v15 = sub_21549F91C();

    if (v15)
    {
      sub_2151A6C9C(0, &qword_281199690);
      v16 = a1;
      v17 = sub_2154A291C();

      if (v17)
      {
        sub_21549F73C();
        (*(v5 + 104))(v11, *MEMORY[0x277D359D0], v4);
        sub_2153CC5D0(&qword_27CA5AE28, MEMORY[0x277D359F0]);
        v18 = sub_2154A1D1C();
        v19 = *(v5 + 8);
        v19(v11, v4);
        v19(v13, v4);
        if ((v18 & 1) == 0)
        {
          sub_21549F73C();
          if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D359E8])
          {
            v19(v8, v4);
            sub_21549F6FC();
            v26 = v25;

            return v26;
          }

          else
          {
            sub_21549F6FC();
            v28 = v27;

            v24 = v28;
            v19(v8, v4);
          }

          return v24;
        }
      }
    }
  }

  result = [a2 currentPlayer];
  if (result)
  {
    v21 = result;
    v22 = [result currentItem];

    if (!v22)
    {
      return 0;
    }

    [v22 currentTime];
    if (sub_2154A288C())
    {
      [v22 currentTime];
      sub_2154A287C();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    [v22 duration];
    if (sub_2154A288C())
    {
      [v22 duration];
      sub_2154A287C();
    }

    [a2 isPlaying];

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_2153C5180(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C180);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B520);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C190);
  v13 = *(v12 - 8);
  v23 = v12;
  v24 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingManager);
  *(v2 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingManager) = a1;
  v17 = a1;

  sub_21549F74C();
  sub_21549F70C();
  sub_2151ACC5C(&qword_27CA5B528, &qword_27CA5B520);
  sub_2151ACC5C(&unk_27CA5C1A0, &unk_27CA5C180);
  sub_21549F38C();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2153CC574;
  *(v19 + 24) = v18;
  sub_2151ACC5C(&qword_27CA5B530, &unk_27CA5C190);
  v20 = v23;
  v21 = sub_21549F3EC();

  (*(v24 + 8))(v15, v20);
  *(v2 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_recordingStateCancellable) = v21;
}

void sub_2153C5504(uint64_t a1, double a2)
{
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 88))(v7, v4);
    if (v10 == *MEMORY[0x277D359E8])
    {
      (*(v5 + 8))(v7, v4);
      (*&v9[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_stateChangeHandler])(*&a2, 0, 2);
    }

    else if (v10 == *MEMORY[0x277D359D8])
    {
      (*(v5 + 8))(v7, v4);
      (*&v9[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_stateChangeHandler])(*&a2, 0, 3);
    }

    else
    {
      if (v10 != *MEMORY[0x277D359D0])
      {

        (*(v5 + 8))(v7, v4);
        return;
      }

      (*&v9[OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_stateChangeHandler])(0, 0, 4);
    }
  }
}

void sub_2153C5718()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_audioController);
  v3 = [v2 currentAttachment];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_attachment);
  sub_2151A6C9C(0, &qword_281199690);
  v6 = v5;
  LOBYTE(v5) = sub_2154A291C();

  if ((v5 & 1) == 0)
  {
    return;
  }

  sub_21549E17C();
  if (!v22[3])
  {
    v21 = v22;
LABEL_22:
    sub_2151ADCD8(v21, &qword_27CA5ABC0);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v6;
  v8 = sub_2154A291C();

  if ((v8 & 1) == 0)
  {
    return;
  }

  v9 = sub_21549E18C();
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v10 + 16))
  {
    goto LABEL_19;
  }

  v11 = sub_2153B1010(v22);
  if ((v12 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_21533FC88(*(v10 + 56) + 32 * v11, &v23);
  sub_21533FC34(v22);

  if (!*(&v24 + 1))
  {
LABEL_21:
    v21 = &v23;
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v13 = v22[0];
  v14 = sub_21549E18C();
  if (!v14)
  {
LABEL_20:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_21;
  }

  v15 = v14;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v15 + 16) || (v16 = sub_2153B1010(v22), (v17 & 1) == 0))
  {
LABEL_19:

    sub_21533FC34(v22);
    goto LABEL_20;
  }

  sub_21533FC88(*(v15 + 56) + 32 * v16, &v23);
  sub_21533FC34(v22);

  if (!*(&v24 + 1))
  {
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v18 = v22[0];
    v19 = [v2 isPlaying];
    v20 = *(v1 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_stateChangeHandler);
    if (v19)
    {
      v20(v13, v18, 0);
    }

    else
    {
      v20(v13, v18, 1);
    }
  }
}

void sub_2153C5B00()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedAudioController];
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  v5 = [v3 currentAttachment];

  if (!v5)
  {
    return;
  }

  v6 = *(v1 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_attachment);
  sub_2151A6C9C(0, &qword_281199690);
  v7 = v6;
  v8 = sub_2154A291C();

  if ((v8 & 1) == 0)
  {
    return;
  }

  v9 = [v2 sharedAudioController];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = [v9 currentPlayer];

  if (!v11)
  {
    return;
  }

  v19 = [v11 currentItem];

  if (!v19)
  {
    return;
  }

  [v19 currentTime];
  if (sub_2154A288C())
  {
    [v19 currentTime];
    sub_2154A287C();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [v19 duration];
  if (sub_2154A288C())
  {
    [v20 duration];
    sub_2154A287C();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v2 sharedAudioController];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 isPlaying];

  (*(v1 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_stateChangeHandler))(v13, v15, v18 ^ 1);
}

uint64_t sub_2153C5E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21549E95C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_2154A1FFC();
  v4[6] = sub_2154A1FEC();
  v7 = sub_2154A1FCC();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_2153C5F38, v7, v6);
}

uint64_t sub_2153C5F38()
{
  v1 = sub_2153C6798();
  v0[9] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];
    sub_21549F73C();
    v6 = (*(v4 + 88))(v3, v5);
    if (v6 == *MEMORY[0x277D359E8])
    {
      (*(v0[4] + 8))(v0[5], v0[3]);
      v14 = (*MEMORY[0x277D36370] + MEMORY[0x277D36370]);
      v7 = swift_task_alloc();
      v0[11] = v7;
      *v7 = v0;
      v8 = sub_2153C62D8;
LABEL_7:
      v7[1] = v8;

      return v14();
    }

    if (v6 == *MEMORY[0x277D359D8])
    {
      (*(v0[4] + 8))(v0[5], v0[3]);
      v14 = (*MEMORY[0x277D36380] + MEMORY[0x277D36380]);
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v8 = sub_2153C6144;
      goto LABEL_7;
    }

    v10 = v0[5];
    v11 = v0[3];
    v12 = v0[4];

    (*(v12 + 8))(v10, v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2153C6144()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2153CCBA8;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_2153C6268;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2153C6268()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2153C62D8()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 56);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_2153CCBA8, v3, v4);
}

uint64_t sub_2153C63FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_2154A1FFC();
  v4[4] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_2153C6494, v6, v5);
}

uint64_t sub_2153C6494()
{
  v1 = sub_2153C6798();
  *(v0 + 56) = v1;
  if (v1)
  {
    v5 = (*MEMORY[0x277D36388] + MEMORY[0x277D36388]);
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2153C6598;

    return v5(0);
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2153C6598()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_2153C672C;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_2153C66B4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2153C66B4()
{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2153C672C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_2153C6798()
{
  v1 = sub_21549E95C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  sub_21549F93C();
  sub_21549F90C();
  v8 = sub_21549F91C();

  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_attachment);
    sub_2151A6C9C(0, &qword_281199690);
    v10 = v9;
    v11 = sub_2154A291C();

    if (v11)
    {
      sub_21549F90C();
      v12 = sub_21549F8EC();

      if (v12)
      {
        sub_21549F73C();
        (*(v2 + 104))(v4, *MEMORY[0x277D359D0], v1);
        sub_2153CC5D0(&qword_27CA5AE28, MEMORY[0x277D359F0]);
        v13 = sub_2154A1D1C();
        v14 = *(v2 + 8);
        v14(v4, v1);
        v14(v7, v1);
        if ((v13 & 1) == 0)
        {
          return v12;
        }
      }
    }
  }

  return 0;
}

uint64_t MiniPlayerViewController.CloseReason.hashValue.getter()
{
  v1 = *v0;
  sub_2154A30DC();
  MEMORY[0x216069C80](v1);
  return sub_2154A312C();
}

uint64_t sub_2153C6B2C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___ICMiniPlayerViewController_closeHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_215324CF4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2151BD748(v4);
}

uint64_t sub_2153C6BCC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2153ADD90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___ICMiniPlayerViewController_closeHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_2151BD748(v3);
  return sub_2151AF750(v8);
}

uint64_t sub_2153C6C94()
{
  v1 = (v0 + OBJC_IVAR___ICMiniPlayerViewController_closeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_2151BD748(*v1);
  return v2;
}

uint64_t sub_2153C6CF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICMiniPlayerViewController_closeHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_2151AF750(v6);
}

void *sub_2153C6DFC()
{
  v1 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2153C6EC8(void *a1)
{
  v3 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_2153C6F9C(v4);
}

void sub_2153C6F34(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_2153C6F9C(v5);
}

void sub_2153C6F9C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    sub_2153C76EC(0);
    v5 = *(v2 + v4);
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    sub_2151A6C9C(0, &qword_281199690);
    v6 = v5;
    v7 = a1;
    v8 = sub_2154A291C();

    if (v8)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_opt_self();

  v11 = v5;
  v12 = [v10 sharedAudioController];
  if (v12)
  {
    v13 = v12;
    objc_allocWithZone(type metadata accessor for ICAudioAttachmentPlaybackAdaptor());
    v14 = v11;
    v15 = sub_2153C4864(v14, v13, sub_2153CCB18, v9);

    sub_2153C76EC(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_2153C7124(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR___ICMiniPlayerViewController_playerView);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (!v10 || (v11 = OBJC_IVAR___ICMiniPlayerViewController_attachment, v12 = v10, swift_beginAccess(), v13 = *&v12[v11], v14 = v13, v12, !v13))
      {

        return;
      }

      v15 = [v14 userTitle];
      if (!v15)
      {
        v15 = [v14 title];
        if (!v15)
        {
          v15 = [v14 defaultTitle];
        }
      }

      v16 = v15;
      v17 = sub_2154A1D6C();
      v19 = v18;

      if (a3 <= 1u)
      {
        v23 = &v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state];
        v24 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 25];
        v25 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 16];
        v35 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state];
        v36[0] = v25;
        *(v36 + 9) = v24;
        *v23 = a2;
        *(v23 + 1) = a1;
        if (a3)
        {
          *(v23 + 2) = 0;
        }

        else
        {
          *(v23 + 2) = 1;
        }

        *(v23 + 3) = v17;
        *(v23 + 4) = v19;
        v23[40] = 0;
      }

      else if (a3 == 2)
      {
        v26 = &v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state];
        v27 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 25];
        v28 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 16];
        v35 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state];
        v36[0] = v28;
        *(v36 + 9) = v27;
        *v26 = a1;
        *(v26 + 1) = a1;
        *(v26 + 2) = 1;
        *(v26 + 3) = v17;
        *(v26 + 4) = v19;
        v26[40] = 1;
      }

      else
      {
        if (a3 != 3)
        {

          swift_beginAccess();
          v29 = swift_unknownObjectWeakLoadStrong();
          if (v29)
          {
            v30 = v29;
            v31 = *(v29 + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton);
            v30[OBJC_IVAR___ICMiniPlayerViewController_showCloseButton] = 0;
            sub_2153C8AD4(v31);
            v32 = &v30[OBJC_IVAR___ICMiniPlayerViewController_closeHandler];
            swift_beginAccess();
            v33 = *v32;
            if (*v32)
            {
              v34 = 1;

              v33(&v34);

              sub_2151AF750(v33);
              return;
            }

            goto LABEL_23;
          }

LABEL_22:

LABEL_23:
          return;
        }

        v20 = &v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state];
        v21 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 25];
        v22 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state + 16];
        v35 = *&v9[OBJC_IVAR____TtC11NotesEditor10PlayerView_state];
        v36[0] = v22;
        *(v36 + 9) = v21;
        *v20 = a1;
        *(v20 + 1) = a1;
        *(v20 + 2) = 0;
        *(v20 + 3) = v17;
        *(v20 + 4) = v19;
        v20[40] = 1;
      }

      sub_2153C384C(&v35);
      sub_2151ADCD8(&v35, &qword_27CA5C200);
      goto LABEL_22;
    }
  }
}

void (*sub_2153C7438(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_2153C74D4;
}

void sub_2153C74D4(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_2153C6F9C(v8);

    v8 = *v5;
  }

  else
  {
    sub_2153C6F9C(v8);
  }

  free(v3);
}

uint64_t sub_2153C7570(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2153C762C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_2153C76EC(uint64_t a1)
{
  v2 = OBJC_IVAR___ICMiniPlayerViewController_playbackAdaptor;
  v3 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playbackAdaptor);
  *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playbackAdaptor) = a1;

  v4 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  if (v4)
  {
    v5 = &off_282753A40;
    if (!*(v1 + v2))
    {
      v5 = 0;
    }

    *(v4 + OBJC_IVAR____TtC11NotesEditor10PlayerView_playbackController + 8) = v5;

    swift_unknownObjectWeakAssign();
  }
}

void *sub_2153C776C()
{
  v1 = *(v0 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  v2 = v1;
  return v1;
}

id sub_2153C779C()
{
  result = [objc_opt_self() ic_isVision];
  v1 = 12.0;
  if (result)
  {
    v1 = 24.0;
  }

  qword_27CA64990 = *&v1;
  return result;
}

void sub_2153C77E0()
{
  v1 = v0;
  v2 = sub_2154A2AAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v125 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v128 = &v121 - v6;
  v7 = sub_21549F2CC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v8 bounds];
  v13 = [objc_allocWithZone(type metadata accessor for PlayerView()) initWithFrame_];
  v14 = *&v0[OBJC_IVAR___ICMiniPlayerViewController_playerView];
  v129 = OBJC_IVAR___ICMiniPlayerViewController_playerView;
  *&v0[OBJC_IVAR___ICMiniPlayerViewController_playerView] = v13;
  v15 = v13;

  if (!v15)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v15 setAutoresizingMask_];

  if (_UISolariumEnabled())
  {
    v16 = [objc_opt_self() ic_isVision] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  [v8 bounds];
  v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v22 = OBJC_IVAR___ICMiniPlayerViewController_clipView;
  v23 = *&v0[OBJC_IVAR___ICMiniPlayerViewController_clipView];
  *&v0[OBJC_IVAR___ICMiniPlayerViewController_clipView] = v21;
  v24 = v21;

  if (!v24)
  {
    goto LABEL_44;
  }

  if (!*&v0[v129])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v24 addSubview_];

  v25 = *&v0[v22];
  if (!v25)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v25 setClipsToBounds_];
  v26 = *&v0[v22];
  if (!v26)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = *&v0[v22];
  if (v16)
  {
    if (!v27)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v28 = v27;
    sub_21549F2BC();
    v130[3] = sub_21549F2DC();
    v130[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_0(v130);
    sub_21549F2EC();
    sub_2154A28BC();

LABEL_14:
    if (*&v1[v22])
    {
      v124 = v16;
      v127 = v3;
      [v8 addSubview_];
      v30 = *&v1[v22];
      if (v30)
      {
        v126 = v2;
        v31 = [v30 leadingAnchor];
        v32 = [v8 leadingAnchor];
        v33 = [v31 constraintEqualToAnchor:v32 constant:22.0];

        LODWORD(v34) = 1144750080;
        [v33 setPriority_];
        v35 = *&v1[v22];
        if (v35)
        {
          v36 = [v35 trailingAnchor];
          v37 = [v8 trailingAnchor];
          v38 = [v36 constraintEqualToAnchor:v37 constant:-22.0];

          LODWORD(v39) = 1144750080;
          [v38 setPriority_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_2154BEA50;
          v41 = *&v1[v22];
          if (v41)
          {
            v42 = [v41 leadingAnchor];
            v43 = [v8 safeAreaLayoutGuide];
            v44 = [v43 leadingAnchor];

            v45 = [v42 constraintGreaterThanOrEqualToAnchor_];
            *(v40 + 32) = v45;
            *(v40 + 40) = v33;
            v46 = *&v1[v22];
            if (v46)
            {
              v47 = v33;
              v48 = [v46 trailingAnchor];
              v49 = [v8 safeAreaLayoutGuide];
              v50 = [v49 trailingAnchor];

              v51 = [v48 constraintLessThanOrEqualToAnchor_];
              *(v40 + 48) = v51;
              *(v40 + 56) = v38;
              v52 = *&v1[v22];
              if (v52)
              {
                v53 = v38;
                v54 = [v52 heightAnchor];
                v55 = [v54 constraintEqualToConstant_];

                *(v40 + 64) = v55;
                v56 = *&v1[v22];
                if (v56)
                {
                  v122 = v47;
                  v57 = [v56 topAnchor];
                  v58 = [v8 topAnchor];
                  v59 = [v57 constraintEqualToAnchor_];

                  *(v40 + 72) = v59;
                  v60 = *&v1[v22];
                  if (v60)
                  {
                    v61 = [v60 bottomAnchor];
                    v62 = [v8 bottomAnchor];
                    if (qword_27CA598B0 != -1)
                    {
                      swift_once();
                    }

                    v63 = [v61 constraintEqualToAnchor:v62 constant:-*&qword_27CA64990];

                    *(v40 + 80) = v63;
                    v64 = *&v1[v22];
                    if (v64)
                    {
                      v123 = v53;
                      v65 = [v64 widthAnchor];
                      v66 = [v65 constraintLessThanOrEqualToConstant_];

                      *(v40 + 88) = v66;
                      v67 = *&v1[v22];
                      if (v67)
                      {
                        v68 = objc_opt_self();
                        v69 = [v67 centerXAnchor];
                        v70 = [v8 safeAreaLayoutGuide];
                        v71 = [v70 centerXAnchor];

                        v72 = [v69 constraintEqualToAnchor_];
                        *(v40 + 96) = v72;
                        sub_2151A6C9C(0, &qword_2811995A0);
                        v73 = sub_2154A1F3C();

                        [v68 activateConstraints_];

                        v74 = v129;
                        v75 = *&v1[v129];
                        if (v75)
                        {
                          v76 = [v75 layer];
                          [v76 setCornerRadius_];

                          v77 = *&v1[v74];
                          v78 = v127;
                          if (v77)
                          {
                            [v77 setClipsToBounds_];
                            v79 = *&v1[v74];
                            if (v79)
                            {
                              v80 = objc_opt_self();
                              v81 = v79;
                              v82 = [v80 ic_isVision];
                              v83 = objc_opt_self();
                              v84 = &selRef_systemWhiteColor;
                              v85 = &selRef_clearColor;
                              if (!v124)
                              {
                                v85 = &selRef_secondarySystemGroupedBackgroundColor;
                              }

                              if (!v82)
                              {
                                v84 = v85;
                              }

                              v86 = [v83 *v84];
                              [v81 setBackgroundColor_];

                              v87 = *&v1[v74];
                              if (v87)
                              {
                                v88 = &off_282753A40;
                                if (!*&v1[OBJC_IVAR___ICMiniPlayerViewController_playbackAdaptor])
                                {
                                  v88 = 0;
                                }

                                *(v87 + OBJC_IVAR____TtC11NotesEditor10PlayerView_playbackController + 8) = v88;
                                swift_unknownObjectWeakAssign();
                                v89 = v128;
                                sub_2154A2A9C();
                                v90 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_labelColor];
                                v91 = sub_2154A297C();
                                sub_21549F14C();
                                v91(v130, 0);
                                v92 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
                                sub_2154A2A2C();
                                v93 = [objc_opt_self() mainBundle];
                                v94 = sub_2154A1D2C();
                                v95 = [v93 localizedStringForKey:v94 value:0 table:0];

                                sub_2154A1D6C();
                                sub_2154A2A8C();
                                v96 = sub_2154A29DC();
                                *(v97 + 8) = *(v97 + 8) + 8.0;
                                v96(v130, 0);
                                v98 = sub_2154A29DC();
                                *(v99 + 24) = *(v99 + 24) + 8.0;
                                v98(v130, 0);
                                sub_2151A6C9C(0, &qword_281199470);
                                v100 = v89;
                                v101 = v126;
                                (*(v78 + 16))(v125, v100, v126);
                                v102 = sub_2154A2ABC();
                                v103 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_closeButton];
                                *&v1[OBJC_IVAR___ICMiniPlayerViewController_closeButton] = v102;
                                v104 = v102;

                                [v104 addTarget:v1 action:sel_close_ forControlEvents:0x2000];
                                if (v1[OBJC_IVAR___ICMiniPlayerViewController_swipeToCloseEnabled] == 1)
                                {
                                  v105 = objc_allocWithZone(MEMORY[0x277D75AE0]);
                                  v106 = v1;
                                  v107 = [v105 initWithTarget:v106 action:sel_swipe_];
                                  [v107 setDirection_];
                                  [v8 addGestureRecognizer_];
                                  v101 = v126;
                                  v108 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v106 action:sel_swipe_];

                                  v78 = v127;
                                  [v108 setDirection_];
                                  [v8 addGestureRecognizer_];
                                }

                                v109 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_hideCloseButton_];
                                v110 = OBJC_IVAR___ICMiniPlayerViewController_hideCloseButtonTap;
                                v111 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_hideCloseButtonTap];
                                *&v1[OBJC_IVAR___ICMiniPlayerViewController_hideCloseButtonTap] = v109;
                                v112 = v109;

                                if (v112)
                                {
                                  [v112 setEnabled_];

                                  v113 = *&v1[v22];
                                  v114 = v123;
                                  if (v113)
                                  {
                                    if (*&v1[v110])
                                    {
                                      [v113 addGestureRecognizer_];
                                      v115 = *&v1[v22];
                                      if (v115)
                                      {
                                        v116 = objc_allocWithZone(MEMORY[0x277D753B8]);
                                        v117 = v115;
                                        v118 = [v116 initWithDelegate_];
                                        [v117 addInteraction_];

                                        v119 = v8;
                                        v120 = sub_2154A1D2C();
                                        [v119 setAccessibilityIdentifier_];

                                        [v1 setView_];
                                        (*(v78 + 8))(v128, v101);
                                        return;
                                      }

                                      goto LABEL_65;
                                    }

LABEL_64:
                                    __break(1u);
LABEL_65:
                                    __break(1u);
                                    goto LABEL_66;
                                  }

LABEL_63:
                                  __break(1u);
                                  goto LABEL_64;
                                }

LABEL_62:
                                __break(1u);
                                goto LABEL_63;
                              }

LABEL_61:
                              __break(1u);
                              goto LABEL_62;
                            }

LABEL_60:
                            __break(1u);
                            goto LABEL_61;
                          }

LABEL_59:
                          __break(1u);
                          goto LABEL_60;
                        }

LABEL_58:
                        __break(1u);
                        goto LABEL_59;
                      }

LABEL_57:
                      __break(1u);
                      goto LABEL_58;
                    }

LABEL_56:
                    __break(1u);
                    goto LABEL_57;
                  }

LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }

LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v27)
  {
    v29 = [v27 layer];
    [v29 setCornerRadius_];

    goto LABEL_14;
  }

LABEL_67:
  __break(1u);
}

void sub_2153C85E0()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for MiniPlayerViewController();
  objc_msgSendSuper2(&v42, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v1;
  v3 = OBJC_IVAR___ICMiniPlayerViewController_clipView;
  v4 = *&v0[OBJC_IVAR___ICMiniPlayerViewController_clipView];
  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v4 bounds];
  [v2 convertRect:*&v0[v3] fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!_UISolariumEnabled() || ([objc_opt_self() ic_isVision] & 1) != 0)
  {
    v13 = [v0 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 layer];

      v16 = [objc_opt_self() bezierPathWithRoundedRect:v6 cornerRadius:{v8, v10, v12, 14.0}];
      v17 = [v16 CGPath];

      [v15 setShadowPath_];
      v18 = [v0 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 layer];

        v21 = objc_opt_self();
        v22 = [v21 systemBlackColor];
        v23 = [v22 CGColor];

        [v20 setShadowColor_];
        v24 = [v0 view];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 layer];

          LODWORD(v27) = 1036831949;
          [v26 setShadowOpacity_];

          v28 = [v0 view];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 layer];

            [v30 setShadowRadius_];
            v31 = [v0 view];
            if (v31)
            {
              v32 = v31;
              v33 = [v31 layer];

              [v33 setShadowOffset_];
              v34 = [v0 traitCollection];
              LODWORD(v33) = [v34 ic_isDark];

              v35 = *&v0[v3];
              if (!v33)
              {
                if (v35)
                {
                  v40 = [v35 layer];
                  [v40 setBorderWidth_];
                  goto LABEL_18;
                }

                goto LABEL_27;
              }

              if (v35)
              {
                v36 = [v35 layer];
                v37 = [v21 separatorColor];
                v38 = [v37 CGColor];

                [v36 setBorderColor_];
                v39 = *&v0[v3];
                if (v39)
                {
                  v40 = [v39 layer];
                  [v40 setBorderWidth_];
LABEL_18:

                  return;
                }

                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v41 = *&v0[v3];
  if (v41)
  {
    v40 = [v41 layer];
    v43.origin.x = v6;
    v43.origin.y = v8;
    v43.size.width = v10;
    v43.size.height = v12;
    [v40 setCornerRadius_];
    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
}

void sub_2153C8AD4(char a1)
{
  v2 = OBJC_IVAR___ICMiniPlayerViewController_showCloseButton;
  if (v1[OBJC_IVAR___ICMiniPlayerViewController_showCloseButton] != (a1 & 1))
  {
    if (v1[OBJC_IVAR___ICMiniPlayerViewController_showCloseButton])
    {
      v3 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_clipView];
      if (!v3)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v4 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_closeButton];
      if (!v4)
      {
LABEL_19:
        __break(1u);
        return;
      }

      [v3 insertSubview:v4 atIndex:0];
    }

    v5 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_playerView];
    if (v5)
    {
      [v5 setUserInteractionEnabled_];
      v6 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_hideCloseButtonTap];
      if (v6)
      {
        [v6 setEnabled_];
        v7 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_clipView];
        if (v7)
        {
          [v7 bounds];
          v12 = OBJC_IVAR___ICMiniPlayerViewController_closeButton;
          v13 = *&v1[OBJC_IVAR___ICMiniPlayerViewController_closeButton];
          if (v13)
          {
            v14 = v8;
            v15 = v9;
            v16 = v10;
            v17 = v11;
            [v13 systemLayoutSizeFittingSize_];
            v20 = *&v1[v12];
            if (v20)
            {
              v21 = v18;
              v22 = v19;
              v23 = v20;
              v39.origin.x = v14;
              v39.origin.y = v15;
              v39.size.width = v16;
              v39.size.height = v17;
              v24 = CGRectGetMaxX(v39) - v21;
              v40.origin.x = v14;
              v40.origin.y = v15;
              v40.size.width = v16;
              v40.size.height = v17;
              MinY = CGRectGetMinY(v40);
              v41.origin.x = v14;
              v41.origin.y = v15;
              v41.size.width = v16;
              v41.size.height = v17;
              [v23 setFrame_];

              v26 = objc_opt_self();
              v27 = swift_allocObject();
              *(v27 + 16) = v1;
              *(v27 + 24) = v21;
              *(v27 + 32) = v22;
              v37 = sub_2153CC530;
              v38 = v27;
              v33 = MEMORY[0x277D85DD0];
              v34 = 1107296256;
              v35 = sub_2151BD7E4;
              v36 = &block_descriptor_138;
              v28 = _Block_copy(&v33);
              v29 = v1;

              v30 = swift_allocObject();
              *(v30 + 16) = v29;
              v37 = sub_2153CC53C;
              v38 = v30;
              v33 = MEMORY[0x277D85DD0];
              v34 = 1107296256;
              v35 = sub_2153DF054;
              v36 = &block_descriptor_144;
              v31 = _Block_copy(&v33);
              v32 = v29;

              [v26 animateWithDuration:v28 animations:v31 completion:0.2];
              _Block_release(v31);
              _Block_release(v28);
              return;
            }

            goto LABEL_17;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

void sub_2153C8DF0(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = OBJC_IVAR___ICMiniPlayerViewController_showCloseButton;
  if (*(a1 + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) == 1)
  {
    CGAffineTransformMakeTranslation(&v15, -a2, 0.0);
    v6 = *&v15.a;
    v5 = *&v15.c;
    v7 = *&v15.tx;
  }

  else
  {
    v5 = xmmword_2154BC090;
    v6 = xmmword_2154BC080;
    v7 = 0uLL;
  }

  *&v15.a = v6;
  *&v15.c = v5;
  *&v15.tx = v7;
  [v2 setTransform_];
  v8 = *(a1 + OBJC_IVAR___ICMiniPlayerViewController_clipView);
  if (!v8)
  {
    goto LABEL_11;
  }

  if (*(a1 + v4) == 1)
  {
    v9 = *(a1 + OBJC_IVAR___ICMiniPlayerViewController_labelColor);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v12 = objc_opt_self();
    v13 = v8;
    v11 = [v12 clearColor];
  }

  v14 = v11;
  [v8 setBackgroundColor_];
}

uint64_t sub_2153C8FA4()
{
  v1 = *(v0 + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton);
  *(v0 + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) = 0;
  sub_2153C8AD4(v1);
  v2 = (v0 + OBJC_IVAR___ICMiniPlayerViewController_closeHandler);
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    v5 = 0;

    v4(&v5);
    return sub_2151AF750(v4);
  }

  return result;
}

id MiniPlayerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2154A1D2C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MiniPlayerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR___ICMiniPlayerViewController_closeHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR___ICMiniPlayerViewController_attachment] = 0;
  v7 = &v3[OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR___ICMiniPlayerViewController_playbackAdaptor] = 0;
  *&v3[OBJC_IVAR___ICMiniPlayerViewController_playerView] = 0;
  *&v3[OBJC_IVAR___ICMiniPlayerViewController_clipView] = 0;
  *&v3[OBJC_IVAR___ICMiniPlayerViewController_closeButton] = 0;
  *&v3[OBJC_IVAR___ICMiniPlayerViewController_hideCloseButtonTap] = 0;
  v3[OBJC_IVAR___ICMiniPlayerViewController_swipeToCloseEnabled] = 0;
  v8 = [objc_opt_self() ic_isVision];
  v9 = objc_opt_self();
  if (v8)
  {
    v10 = [v9 systemBlackColor];
    v11 = [v10 colorWithAlphaComponent_];
  }

  else
  {
    v11 = [v9 labelColor];
  }

  *&v3[OBJC_IVAR___ICMiniPlayerViewController_labelColor] = v11;
  v3[OBJC_IVAR___ICMiniPlayerViewController_showCloseButton] = 0;
  if (a2)
  {
    v12 = sub_2154A1D2C();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for MiniPlayerViewController();
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id MiniPlayerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MiniPlayerViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___ICMiniPlayerViewController_closeHandler];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR___ICMiniPlayerViewController_attachment] = 0;
  v4 = &v1[OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR___ICMiniPlayerViewController_playbackAdaptor] = 0;
  *&v1[OBJC_IVAR___ICMiniPlayerViewController_playerView] = 0;
  *&v1[OBJC_IVAR___ICMiniPlayerViewController_clipView] = 0;
  *&v1[OBJC_IVAR___ICMiniPlayerViewController_closeButton] = 0;
  *&v1[OBJC_IVAR___ICMiniPlayerViewController_hideCloseButtonTap] = 0;
  v1[OBJC_IVAR___ICMiniPlayerViewController_swipeToCloseEnabled] = 0;
  v5 = [objc_opt_self() ic_isVision];
  v6 = objc_opt_self();
  if (v5)
  {
    v7 = [v6 systemBlackColor];
    v8 = [v7 colorWithAlphaComponent_];
  }

  else
  {
    v8 = [v6 labelColor];
  }

  *&v1[OBJC_IVAR___ICMiniPlayerViewController_labelColor] = v8;
  v1[OBJC_IVAR___ICMiniPlayerViewController_showCloseButton] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for MiniPlayerViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

UIContextMenuConfiguration_optional __swiftcall MiniPlayerViewController.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v3 = OBJC_IVAR___ICMiniPlayerViewController_attachment;
  swift_beginAccess();
  v5 = *&v2[v3];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = objc_opt_self();
    aBlock[4] = sub_2153CBCE8;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2153BF69C;
    aBlock[3] = &block_descriptor_21;
    v8 = _Block_copy(aBlock);
    v9 = v5;
    v10 = v2;

    v11 = [v7 configurationWithIdentifier:0 previewProvider:0 actionProvider:v8];

    _Block_release(v8);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  result.value.super.isa = v12;
  result.is_nil = v4;
  return result;
}

uint64_t sub_2153C9788(void *a1)
{
  v8[4] = sub_2153C99C0(a1);
  v8[5] = sub_2153C9C98(a1);
  result = sub_2153CA0FC(a1);
  v3 = 0;
  v8[6] = result;
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  while (1)
  {
    if (v3 == 3)
    {
      sub_2151A6C9C(0, &qword_2811994E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C1D8);
      swift_arrayDestroy();
      return sub_2154A28AC();
    }

    if (v4 == v3)
    {
      break;
    }

    v5 = v8[v3++ + 4];
    if (v5)
    {
      v6 = v5;
      MEMORY[0x216068AC0]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      result = sub_2154A1FAC();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2153C99C0(void *a1)
{
  v21[4] = sub_2153CA26C(a1);
  sub_2151A6C9C(0, &qword_281199480);
  v3 = [objc_opt_self() mainBundle];
  v4 = sub_2154A1D2C();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  sub_2154A1D6C();
  v6 = sub_2154A1D2C();
  v7 = [objc_opt_self() systemImageNamed_];

  v8 = swift_allocObject();
  v9 = v1 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate;
  swift_beginAccess();
  *(v8 + 24) = *(v9 + 8);
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a1;
  v11 = a1;
  v12 = 0;
  v21[5] = sub_2154A295C();
  v20 = MEMORY[0x277D84F90];
  while (v12 != 2)
  {
    v13 = v21[v12++ + 4];
    if (v13)
    {
      v14 = v13;
      MEMORY[0x216068AC0](v14, v15, v16, v17, v18);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
    }
  }

  sub_2151A6C9C(0, &qword_2811994E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C1E0);
  swift_arrayDestroy();
  return sub_2154A28AC();
}

uint64_t sub_2153C9C98(void *a1)
{
  sub_2151A6C9C(0, &qword_281199480);
  v30 = objc_opt_self();
  v3 = [v30 mainBundle];
  v4 = sub_2154A1D2C();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  sub_2154A1D6C();
  v6 = sub_2154A1D2C();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed_];

  v9 = swift_allocObject();
  v10 = v1 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate;
  swift_beginAccess();
  *(v9 + 24) = *(v10 + 8);
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a1;
  v12 = a1;
  v32[4] = sub_2154A295C();
  v13 = [v30 mainBundle];
  v14 = sub_2154A1D2C();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  sub_2154A1D6C();
  v16 = sub_2154A1D2C();
  v17 = [v7 systemImageNamed_];

  v18 = swift_allocObject();
  *(v18 + 24) = *(v10 + 8);
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v12;
  v20 = v12;
  v32[5] = sub_2154A295C();
  v32[6] = sub_2153CA594(v20);
  result = sub_2153CA8F4(v20);
  v22 = 0;
  v32[7] = result;
  v31 = MEMORY[0x277D84F90];
LABEL_2:
  if (v22 <= 4)
  {
    v23 = 4;
  }

  else
  {
    v23 = v22;
  }

  while (1)
  {
    if (v22 == 4)
    {
      sub_2151A6C9C(0, &qword_2811994E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C1E0);
      swift_arrayDestroy();
      return sub_2154A28AC();
    }

    if (v23 == v22)
    {
      break;
    }

    v24 = v32[v22++ + 4];
    if (v24)
    {
      v25 = v24;
      MEMORY[0x216068AC0](v25, v26, v27, v28, v29);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      result = sub_2154A1FAC();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2153CA0FC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_state;
    if (*(v3 + 32) && (*(v3 + 40) & 1) == 0)
    {
      v4 = result;
      v9[4] = sub_2153CAE5C(result);
      v5 = 0;
      v9[5] = sub_2153CB070(v4);
      v8 = MEMORY[0x277D84F90];
      while (v5 != 2)
      {
        v6 = v9[v5++ + 4];
        if (v6)
        {
          v7 = v6;
          MEMORY[0x216068AC0]();
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2154A1F8C();
          }

          sub_2154A1FAC();
        }
      }

      sub_2151A6C9C(0, &qword_2811994E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C1E0);
      swift_arrayDestroy();
      return sub_2154A28AC();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153CA26C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_state;
    if (*(v3 + 32) && (*(v3 + 40) & 1) == 0)
    {
      v4 = result;
      sub_2151A6C9C(0, &qword_281199480);
      v5 = [objc_opt_self() mainBundle];
      v6 = sub_2154A1D2C();
      v7 = [v5 localizedStringForKey:v6 value:0 table:0];

      sub_2154A1D6C();
      v8 = sub_2154A1D2C();
      v9 = [objc_opt_self() systemImageNamed_];

      v10 = swift_allocObject();
      v11 = v1 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate;
      swift_beginAccess();
      *(v10 + 24) = *(v11 + 8);
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v4;
      v13 = v4;
      return sub_2154A295C();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153CA484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2153CA50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2153CA594(void *a1)
{
  result = [a1 audioModel];
  if (result)
  {
    v4 = result;
    v5 = [result audioDocument];

    if (v5)
    {
      v6 = [v5 transcriptAsPlainText];
      v7 = sub_2154A1D6C();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10 && ((v11 = [objc_opt_self() sharedInstance], v12 = objc_msgSend(v11, sel_supportsGeneralASR), v11, (v12 & 1) != 0) || objc_msgSend(v5, sel_isCallRecording)))
      {
        v13 = v1;
        sub_21549F93C();
        sub_21549F90C();
        v14 = sub_21549F91C();
        if (!v14 || (v15 = v14, sub_2151A6C9C(0, &qword_281199690), v16 = a1, v17 = sub_2154A291C(), v15, v16, (v17 & 1) == 0) || (sub_21549F92C() & 1) != 0)
        {
          sub_2151A6C9C(0, &qword_281199480);
          v18 = [objc_opt_self() mainBundle];
          v19 = sub_2154A1D2C();
          v20 = [v18 localizedStringForKey:v19 value:0 table:0];

          sub_2154A1D6C();
          v21 = sub_2154A1D2C();
          v22 = [objc_opt_self() systemImageNamed_];

          v23 = swift_allocObject();
          v24 = v13 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate;
          swift_beginAccess();
          *(v23 + 24) = *(v24 + 8);
          swift_unknownObjectWeakInit();
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          *(v25 + 24) = a1;
          v26 = a1;
          v27 = sub_2154A295C();

          return v27;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

id sub_2153CA8F4(void *a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 supportsPrivateCloudComputeSummary];

  if (v4)
  {
    result = [a1 audioModel];
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = [result audioDocument];

    if (v7)
    {
      v8 = [v7 transcriptAsPlainText];
      v9 = sub_2154A1D6C();
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v13 = v1;
        sub_21549F93C();
        sub_21549F90C();
        v14 = sub_21549F91C();
        if (!v14 || (v15 = v14, sub_2151A6C9C(0, &qword_281199690), v16 = a1, v17 = sub_2154A291C(), v15, v16, (v17 & 1) == 0) || (sub_21549F92C() & 1) != 0)
        {
          sub_2151A6C9C(0, &qword_281199480);
          v18 = [objc_opt_self() mainBundle];
          v19 = sub_2154A1D2C();
          v20 = [v18 localizedStringForKey:v19 value:0 table:0];

          sub_2154A1D6C();
          v21 = sub_2154A1D2C();
          v22 = [objc_opt_self() _systemImageNamed_];

          v23 = swift_allocObject();
          v24 = v13 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate;
          swift_beginAccess();
          *(v23 + 24) = *(v24 + 8);
          swift_unknownObjectWeakInit();
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          *(v25 + 24) = a1;
          v26 = a1;
          v27 = sub_2154A295C();

          return v27;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_2153CAC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2153CACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2153CAD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2153CADD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 48))(a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2153CAE5C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_state;
    if (*(v3 + 32) && (*(v3 + 40) & 1) == 0)
    {
      v4 = result;
      sub_2151A6C9C(0, &qword_281199480);
      v5 = [objc_opt_self() mainBundle];
      v6 = sub_2154A1D2C();
      v7 = [v5 localizedStringForKey:v6 value:0 table:0];

      sub_2154A1D6C();
      v8 = sub_2154A1D2C();
      v9 = [objc_opt_self() systemImageNamed_];

      v10 = swift_allocObject();
      v11 = v1 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate;
      swift_beginAccess();
      *(v10 + 24) = *(v11 + 8);
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v4;
      v13 = v4;
      return sub_2154A295C();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153CB070(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_playerView);
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC11NotesEditor10PlayerView_state;
    if (*(v3 + 32) && (*(v3 + 40) & 1) == 0)
    {
      v4 = result;
      sub_2151A6C9C(0, &qword_281199480);
      v5 = [objc_opt_self() mainBundle];
      v6 = sub_2154A1D2C();
      v7 = [v5 localizedStringForKey:v6 value:0 table:0];

      sub_2154A1D6C();
      v8 = sub_2154A1D2C();
      v9 = [objc_opt_self() systemImageNamed_];

      v10 = swift_allocObject();
      v11 = v1 + OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate;
      swift_beginAccess();
      *(v10 + 24) = *(v11 + 8);
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v10;
      v13[3] = v4;
      v13[4] = v12;
      v14 = v4;
      return sub_2154A295C();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2153CB2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2153CB340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(a2 + 24);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(a3, Strong, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_2153CB454()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AccessibilityFrameExpandingLabel();
  objc_msgSendSuper2(&v11, sel_accessibilityFrame);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v12.origin.x = v2;
    v12.origin.y = v4;
    v12.size.width = v6;
    v12.size.height = v8;
    CGRectGetMaxX(v12);
    result = *&v10[OBJC_IVAR____TtC11NotesEditor10PlayerView_buttonStack];
    if (result)
    {
      [result accessibilityFrame];
      CGRectGetMinX(v13);
      v14.origin.x = v2;
      v14.origin.y = v4;
      v14.size.width = v6;
      v14.size.height = v8;
      CGRectGetMinX(v14);
      v15.origin.x = v2;
      v15.origin.y = v4;
      v15.size.width = v6;
      v15.size.height = v8;
      CGRectGetHeight(v15);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_2153CB718(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2153CB760(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view] = 0;
  v6 = &a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate];
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer] = 0;
  *&a2[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer] = 0;
  swift_beginAccess();
  *(v6 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v17.receiver = a2;
  v17.super_class = type metadata accessor for TranscriptDetailPresentationInteraction();
  v7 = objc_msgSendSuper2(&v17, sel_init);
  v8 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v9 = v7;
  v10 = [v8 initWithTarget:v9 action:sel_tap_];
  v11 = *&v9[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer];
  *&v9[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer] = v10;

  v12 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v9 action:sel_pan_];
  v13 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer;
  v14 = *&v9[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer];
  *&v9[OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer] = v12;
  v15 = v12;

  if (v15)
  {
    [v15 setDelegate_];

    v16 = *&v9[v13];
    if (v16)
    {
      [v16 _setHysteresis_];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2153CB8F4()
{
  v1 = OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_view;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_tapGestureRecognizer);
    if (v3)
    {
      v4 = v2;
      [v4 removeGestureRecognizer_];
      if (*(v0 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_panGestureRecognizer))
      {
        [v4 removeGestureRecognizer_];

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

uint64_t sub_2153CB994()
{
  v1 = v0 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [objc_allocWithZone(type metadata accessor for MiniPlayerAnimationController()) init];
      [v6 setSourceView_];
      [v5 bounds];
      [v6 setSourceFrame_];

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2153CBA90()
{
  v1 = v0 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = [objc_allocWithZone(type metadata accessor for MiniPlayerAnimationController()) init];
      [v6 setIsReversed_];
      [v6 setSourceView_];
      [v5 bounds];
      [v6 setSourceFrame_];

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _s11NotesEditor39TranscriptDetailPresentationInteractionC28gestureRecognizerShouldBeginySbSo09UIGestureH0CF_0(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = a1;
  v5 = [v3 view];
  [v3 translationInView_];
  v7 = v6;
  v9 = v8;

  v10 = fabs(v9);
  return v10 > 2.22044605e-16 && fabs(v7 * 0.5) < v10 && v9 < 2.22044605e-16;
}

unint64_t sub_2153CBD14()
{
  result = qword_27CA5C0A8;
  if (!qword_27CA5C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C0A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICAudioAttachmentPlaybackAdaptor.PlaybackState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ICAudioAttachmentPlaybackAdaptor.PlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2153CC3E0(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_2153CC3F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2153CC434(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2153CC47C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2153CC4DC()
{
  result = qword_27CA5C168;
  if (!qword_27CA5C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C168);
  }

  return result;
}

void sub_2153CC53C()
{
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR___ICMiniPlayerViewController_showCloseButton) & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR___ICMiniPlayerViewController_closeButton);
    if (v2)
    {
      [v2 removeFromSuperview];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2153CC57C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C1B0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_2153CC5D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2153CC620(SEL *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_audioController);
    v13 = [v12 currentAttachment];
    if (v13 && (v14 = v13, v15 = *(v11 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_attachment), sub_2151A6C9C(0, &qword_281199690), v16 = v15, v17 = sub_2154A291C(), v16, v14, (v17 & 1) != 0))
    {
      v18 = v12;
    }

    else
    {
      v18 = 0;
    }

    [v18 *a1];

    v19 = sub_2154A202C();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    sub_2154A1FFC();
    swift_unknownObjectRetain();
    v20 = sub_2154A1FEC();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v11;
    a4(0, 0, v9, a3, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2153CC810(SEL *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_audioController);
    v5 = [v4 currentAttachment];
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + OBJC_IVAR____TtC11NotesEditor32ICAudioAttachmentPlaybackAdaptor_attachment);
      sub_2151A6C9C(0, &qword_281199690);
      v8 = v7;
      v9 = sub_2154A291C();

      if (v9)
      {
        v10 = v4;
        [v10 *a1];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2153CC914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_2153C63FC(a1, v4, v5, v6);
}

uint64_t sub_2153CC9C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_2153C5E44(a1, v4, v5, v6);
}

id sub_2153CCA90()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];

  return [v1 removeFromSuperview];
}

unint64_t sub_2153CCB3C()
{
  result = qword_27CA5C208;
  if (!qword_27CA5C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C208);
  }

  return result;
}

void *AttributionView.backgroundColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_2153CCC90(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = sub_215396D4C;
  *(a2 + 40) = v5;
  return result;
}

uint64_t AttributionView.focusAction.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AttributionView.focusAction.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

__n128 AttributionView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C210);
  MEMORY[0x28223BE20](v3);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C218);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = v1[1];
  v19 = *v1;
  v20 = v10;
  v21 = v1[2];
  sub_2153CCFC8(&v19, v5);
  v5[*(v3 + 36)] = 0;
  sub_2153CDD2C();
  sub_2154A0A1C();
  sub_2151ADCD8(v5, &qword_27CA5C210);
  v11 = swift_allocObject();
  v12 = v20;
  *(v11 + 1) = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v21;
  v13 = &v9[*(v7 + 44)];
  *v13 = sub_2153CE218;
  v13[1] = v11;
  sub_2153CE26C(&v19, v18);
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v9, a1, &qword_27CA5C218);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C250) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_2153CCFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C268);
  MEMORY[0x28223BE20](v3 - 8);
  v93 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v78 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C270);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = (&v78 - v9);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C278);
  MEMORY[0x28223BE20](v87);
  v86 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C280);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C288);
  MEMORY[0x28223BE20](v15 - 8);
  v90 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C290);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v78 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C298);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C2A0);
  MEMORY[0x28223BE20](v25 - 8);
  v89 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v30 = &v78 - v29;
  v31 = *(a1 + 16);
  v32 = [v31 isAttributionHidden];
  v95 = v30;
  v88 = a1;
  if (v32)
  {
    (*(v22 + 56))(v30, 1, 1, v21);
    v33 = v94;
  }

  else
  {
    v80 = v19;
    v81 = v7;
    v34 = sub_2154A011C();
    v102 = 1;
    sub_2153CDE94(a1, &selRef_attributionTextStorage, &v103);
    v35 = v103;
    v36 = BYTE8(v103);
    v78 = v105;
    v79 = v104;
    v37 = v106;
    v101 = BYTE8(v103);
    v38 = v102;
    [v31 adjustedFormattedTimestampFrame];
    v40 = v39;
    [v31 attributionFrame];
    if (v40 < CGRectGetHeight(v110) && (v41 = *(a1 + 24)) != 0)
    {
      v42 = v41;
      v43 = sub_2154A0C8C();
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_2154A0FAC();
    v96 = v34;
    LOBYTE(v97) = v38;
    *(&v97 + 1) = v35;
    LOBYTE(v98[0]) = v36;
    *(&v98[1] + 8) = v78;
    *(v98 + 8) = v79;
    *(&v98[2] + 1) = v37;
    *&v99 = v43;
    *(&v99 + 1) = v44;
    v100 = v45;
    [v31 attributionFrame];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C2A8);
    sub_2153CE510();
    v46 = v82;
    sub_2154A096C();
    v106 = v98[1];
    v107 = v98[2];
    v108 = v99;
    *&v109 = v100;
    v103 = v96;
    v104 = v97;
    v105 = v98[0];
    sub_2151ADCD8(&v103, &qword_27CA5C2A8);
    (*(v83 + 32))(v24, v46, v84);
    *&v24[*(v21 + 36)] = 0x3FF0000000000000;
    v47 = v95;
    sub_21533FB7C(v24, v95, &qword_27CA5C298);
    (*(v22 + 56))(v47, 0, 1, v21);
    v7 = v81;
    v33 = v94;
    v19 = v80;
  }

  v48 = [v31 isTimestampHidden];
  v49 = v88;
  if (v48)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C2D8);
    (*(*(v50 - 8) + 56))(v19, 1, 1, v50);
  }

  else
  {
    v51 = sub_2154A011C();
    v102 = 1;
    sub_2153CDE94(v49, &selRef_formattedTimestampTextStorage, &v103);
    v101 = BYTE8(v103);
    v96 = v51;
    LOBYTE(v97) = v102;
    *(&v97 + 1) = v103;
    LOBYTE(v98[0]) = BYTE8(v103);
    *(v98 + 8) = v104;
    *(&v98[1] + 8) = v105;
    *(&v98[2] + 1) = v106;
    [v31 adjustedFormattedTimestampFrame];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C2C0);
    sub_2151ACC5C(&qword_27CA5C2B8, &qword_27CA5C2C0);
    sub_2154A096C();
    v104 = v97;
    v105 = v98[0];
    v106 = v98[1];
    v107 = v98[2];
    v103 = v96;
    sub_2151ADCD8(&v103, &qword_27CA5C2C0);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C2D8);
    (*(*(v52 - 8) + 56))(v19, 0, 1, v52);
  }

  v53 = 1;
  if (([v31 isDisclosureImageHidden] & 1) == 0)
  {
    v54 = sub_2154A0FAC();
    v55 = v85;
    *v85 = v54;
    v55[1] = v56;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C2E0);
    sub_2153CDFC4(v49, v55 + *(v57 + 44));
    sub_2154A0FAC();
    sub_21549FE4C();
    v58 = v55;
    v59 = v86;
    sub_21533FB7C(v58, v86, &qword_27CA5C270);
    v60 = (v59 + *(v87 + 36));
    v61 = v106;
    v62 = v108;
    v63 = v109;
    v60[4] = v107;
    v60[5] = v62;
    v60[6] = v63;
    v64 = v104;
    v65 = v105;
    *v60 = v103;
    v60[1] = v64;
    v60[2] = v65;
    v60[3] = v61;
    [v31 disclosureImageFrame];
    sub_2153CE5F4();
    sub_2154A096C();
    sub_2151ADCD8(v59, &qword_27CA5C278);
    v53 = 0;
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C2F8);
  v67 = 1;
  (*(*(v66 - 8) + 56))(v33, v53, 1, v66);
  if (([v31 isStatusImageHidden] & 1) == 0)
  {
    if ([v31 statusImage])
    {
      v68 = sub_2154A0D6C();
    }

    else
    {
      v68 = 0;
    }

    *&v96 = v68;
    [v31 statusImageFrame];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C300);
    sub_2153CE6AC();
    sub_2154A096C();

    v67 = 0;
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C310);
  (*(*(v69 - 8) + 56))(v7, v67, 1, v69);
  v70 = v89;
  sub_215324EEC(v95, v89, &qword_27CA5C2A0);
  v71 = v19;
  v72 = v90;
  sub_215324EEC(v19, v90, &qword_27CA5C288);
  v73 = v91;
  sub_215324EEC(v33, v91, &qword_27CA5C280);
  v74 = v93;
  sub_215324EEC(v7, v93, &qword_27CA5C268);
  v75 = v92;
  sub_215324EEC(v70, v92, &qword_27CA5C2A0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C318);
  sub_215324EEC(v72, v75 + v76[12], &qword_27CA5C288);
  sub_215324EEC(v73, v75 + v76[16], &qword_27CA5C280);
  sub_215324EEC(v74, v75 + v76[20], &qword_27CA5C268);
  sub_2151ADCD8(v7, &qword_27CA5C268);
  sub_2151ADCD8(v94, &qword_27CA5C280);
  sub_2151ADCD8(v71, &qword_27CA5C288);
  sub_2151ADCD8(v95, &qword_27CA5C2A0);
  sub_2151ADCD8(v74, &qword_27CA5C268);
  sub_2151ADCD8(v73, &qword_27CA5C280);
  sub_2151ADCD8(v72, &qword_27CA5C288);
  return sub_2151ADCD8(v70, &qword_27CA5C2A0);
}

unint64_t sub_2153CDD2C()
{
  result = qword_27CA5C220;
  if (!qword_27CA5C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C210);
    sub_2153CDDE4();
    sub_2151ACC5C(&qword_27CA5C248, &qword_27CA5C980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C220);
  }

  return result;
}

unint64_t sub_2153CDDE4()
{
  result = qword_27CA5C228;
  if (!qword_27CA5C228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C230);
    sub_2151ACC5C(&qword_27CA5C238, &qword_27CA5C240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C228);
  }

  return result;
}

uint64_t sub_2153CDE94@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = [*(a1 + 16) *a2];
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v5 = v11;
    v6 = v12;
    v7 = v13;
    v8 = v14;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  v9 = 0.6;
  *a3 = 0;
  *(a3 + 8) = 1;
  if (!v11)
  {
    v9 = 1.0;
  }

  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 48) = v9;
  sub_2153A2484(v5, v6, v7, v8);
  return sub_2153A24C8(v5, v6, v7, v8);
}

uint64_t sub_2153CDFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C320);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-v6];
  v8 = sub_2154A0D7C();
  v9 = *(a1 + 16);
  v10 = [v9 sharedState];
  v11 = [v10 primaryFontStorage];
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  v12 = sub_2153D5C80(v25);

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  KeyPath = swift_getKeyPath();
  v14 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5E0) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v16 = *MEMORY[0x277CE1050];
  v17 = sub_2154A0D9C();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v7 = v8;
  v7[1] = KeyPath;
  v7[2] = v12;
  *(v7 + *(v5 + 44)) = sub_2154A04AC();
  if ([v9 isFocused])
  {
    v18 = 1.57079633;
  }

  else
  {
    v18 = 0.0;
  }

  sub_2154A107C();
  v20 = v19;
  v22 = v21;
  sub_21533FB7C(v7, a2, &qword_27CA5C320);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C328);
  v24 = a2 + *(result + 36);
  *v24 = v18;
  *(v24 + 8) = v20;
  *(v24 + 16) = v22;
  return result;
}

uint64_t sub_2153CE2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2153CE30C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2153CE368()
{
  result = qword_27CA5C258;
  if (!qword_27CA5C258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C250);
    sub_2153CE3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C258);
  }

  return result;
}

unint64_t sub_2153CE3F4()
{
  result = qword_27CA5C260;
  if (!qword_27CA5C260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C210);
    sub_2153CDD2C();
    swift_getOpaqueTypeConformance2();
    sub_2153CE4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C260);
  }

  return result;
}

unint64_t sub_2153CE4BC()
{
  result = qword_27CA5CB30;
  if (!qword_27CA5CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CB30);
  }

  return result;
}

unint64_t sub_2153CE510()
{
  result = qword_27CA5C2B0;
  if (!qword_27CA5C2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C2A8);
    sub_2151ACC5C(&qword_27CA5C2B8, &qword_27CA5C2C0);
    sub_2151ACC5C(&qword_27CA5C2C8, &qword_27CA5C2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C2B0);
  }

  return result;
}

unint64_t sub_2153CE5F4()
{
  result = qword_27CA5C2E8;
  if (!qword_27CA5C2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C278);
    sub_2151ACC5C(&qword_27CA5C2F0, &qword_27CA5C270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C2E8);
  }

  return result;
}

unint64_t sub_2153CE6AC()
{
  result = qword_27CA5C308;
  if (!qword_27CA5C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C308);
  }

  return result;
}

uint64_t sub_2153CE728(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_215433F30(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2153CE7B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2154329DC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2153CE854()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2154A1A8C();
  }

  return result;
}

uint64_t sub_2153CE8EC(uint64_t a1)
{
  v2 = sub_2154A10EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A110C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2151A6C9C(0, &unk_2811995C0);
  v10 = sub_2154A245C();
  aBlock[4] = sub_2153D3980;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_71;
  v11 = _Block_copy(aBlock);

  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2153D3988(&qword_281199700, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151B5F78();
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2153CEBA0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
    swift_beginAccess();
    if (*(v1 + v2) && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0) && [v3 isLegacyMediaType])
    {
      *(v1 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_shouldUpgradeAttachmentAfterQuickLookIsDismissed) = 1;
    }

    else
    {
      sub_2152EF064();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2153CEC64()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = sub_2153CF848();

  return v1;
}

uint64_t sub_2153CEC9C(unint64_t a1)
{
  sub_2151A6C9C(0, &qword_281199480);
  v2 = objc_opt_self();
  v3 = sub_2154A1D2C();
  v61 = v2;
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  v5 = sub_2154A1D2C();
  v60 = objc_opt_self();
  v6 = [v60 systemImageNamed_];

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = 0;
  v56 = 0;
  v58 = sub_2153D3968;
  v59 = v7;
  v57 = 0;
  v62 = sub_2154A295C();
  v64 = MEMORY[0x277D84F90];
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2154A2C8C())
  {
    v10 = MEMORY[0x277D84F90];
    if (i)
    {
      v11 = 0;
      while (2)
      {
        v12 = v11;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x216069960](v12, a1);
          }

          else
          {
            if (v12 >= *(v8 + 16))
            {
              goto LABEL_47;
            }

            v13 = *(a1 + 8 * v12 + 32);
          }

          v14 = v13;
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            break;
          }

          ++v12;
          if (v11 == i)
          {
            goto LABEL_17;
          }
        }

        MEMORY[0x216068AC0](v15, v16, v17, v18, v19);
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2154A1F8C();
        }

        sub_2154A1FAC();
        v10 = v64;
        if (v11 != i)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
    if (v10 >> 62)
    {
      break;
    }

    a1 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_54;
    }

LABEL_19:
    v20 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x216069960](v20, v10);
      }

      else
      {
        if (v20 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v21 = *(v10 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_48;
      }

      v24 = [v21 identifier];
      v25 = sub_2154A1D6C();
      v8 = v26;
      if (v25 == sub_2154A1D6C() && v8 == v27)
      {
        break;
      }

      v29 = sub_2154A2FAC();

      if (v29)
      {
        goto LABEL_33;
      }

      ++v20;
      if (v23 == a1)
      {
        goto LABEL_54;
      }
    }

LABEL_33:

    v30 = [v22 children];
    sub_2151A6C9C(0, &qword_281199650);
    v31 = sub_2154A1F4C();

    if (v31 >> 62)
    {
      v32 = sub_2154A2C8C();
      if (!v32)
      {
LABEL_56:

        goto LABEL_57;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_56;
      }
    }

    v33 = 0;
    v8 = 0x277D75000uLL;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x216069960](v33, v31);
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      a1 = v34;
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (v36 && [v36 action] && (sub_21549E84C() & 1) != 0)
      {

        goto LABEL_58;
      }

      ++v33;
      if (v35 == v32)
      {
        goto LABEL_56;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  a1 = sub_2154A2C8C();
  if (a1)
  {
    goto LABEL_19;
  }

LABEL_54:

LABEL_57:
  a1 = 0;
LABEL_58:
  v37 = sub_2154A1D2C();
  v38 = [v61 localizedFrameworkStringForKey:v37 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  v39 = sub_2154A1D2C();
  v40 = [v60 systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_2154A295C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2154BDB10;
  v63[4] = v62;
  v63[5] = a1;
  v64 = MEMORY[0x277D84F90];
  v43 = a1;
  v44 = v62;
  for (j = 0; j != 2; ++j)
  {
    v46 = v63[j + 4];
    if (v46)
    {
      v47 = v46;
      MEMORY[0x216068AC0](v47, v48, v49, v50, v51);
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
    }
  }

  sub_2151A6C9C(0, &qword_2811994E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C3E0);
  swift_arrayDestroy();
  *(v42 + 32) = sub_2154A28AC();
  *(v42 + 40) = v41;
  v52 = v41;
  v53 = sub_2154A28AC();

  return v53;
}

void sub_2153CF454()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2153D04A8();
  }
}

void sub_2153CF4A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong print_];
  }
}

void sub_2153CF50C(uint64_t a1, uint64_t a2, char *a3)
{
  if ((a3[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview] & 1) == 0)
  {
    v4 = *&a3[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [a3 traitCollection];
      [v6 horizontalSizeClass];

      sub_2154A14BC();
      sub_2153D0FFC();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2153CF644(char a1)
{
  v2 = v1[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview];
  v1[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview] = a1;
  if (v2 == (a1 & 1))
  {
    return;
  }

  if ((a1 & 1) == 0)
  {
    [v1 setNavigationBarHidden:0 animated:0];
    sub_2153D0FFC();
    v4 = *&v1[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController];
    if (v4)
    {
      v6 = v4;
      v5 = [v1 traitCollection];
      [v5 horizontalSizeClass];

      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  [v1 setNavigationBarHidden:1 animated:0];
  [v1 setToolbarHidden:1 animated:0];
  v3 = *&v1[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v3;
LABEL_8:
  sub_2154A14BC();
}

uint64_t sub_2153CF790(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  v7 = [v6 undoManager];
  [v7 *a4];

  return __swift_destroy_boxed_opaque_existential_0Tm(&v9);
}

id sub_2153CF848()
{
  v0 = sub_21549E56C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_215302998(v4);
    swift_unknownObjectRelease();
    v7 = *(v1 + 32);
    v7(v6, v4, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2154BDB50;
    *(v8 + 56) = v0;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 32));
    v7(boxed_opaque_existential_0, v6, v0);
  }

  v10 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v11 = sub_2154A1F3C();

  v12 = [v10 initWithActivityItems:v11 applicationActivities:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A370);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2154BE4F0;
  v14 = *MEMORY[0x277D360F8];
  v15 = *MEMORY[0x277D54790];
  *(v13 + 32) = *MEMORY[0x277D360F8];
  *(v13 + 40) = v15;
  v16 = *MEMORY[0x277D54730];
  *(v13 + 48) = *MEMORY[0x277D54730];
  type metadata accessor for ActivityType(0);
  v17 = v14;
  v18 = v15;
  v19 = v16;
  v20 = sub_2154A1F3C();

  [v12 setExcludedActivityTypes_];

  return v12;
}

id sub_2153CFB98()
{
  v1 = v0;
  v2 = sub_2154A172C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - v10;
  v13 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state;
  v14 = (v3 + 104);
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) != 1)
  {
LABEL_4:
    *(v1 + v13) = 1;
    result = (*v14)(v5, *MEMORY[0x277CD9568], v2);
    v15 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
    v12 = v5;
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) = 0;
  (*v14)(&v18 - v10, *MEMORY[0x277CD9570], v2, v11);
  v14 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController;
  v15 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (!v15)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_5:
  (*(v3 + 16))(v8, v12, v2);
  v17 = v15;
  sub_2154A14EC();

  sub_2153D0FFC();
  (*(v3 + 8))(v12, v2);
  result = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (result)
  {
    return [result becomeFirstResponder];
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

id sub_2153CFDAC()
{
  v1 = v0;
  v2 = sub_2154A172C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - v10;
  v13 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state;
  v14 = (v3 + 104);
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) != 2)
  {
LABEL_4:
    *(v1 + v13) = 2;
    result = (*v14)(v5, *MEMORY[0x277CD9580], v2);
    v15 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
    v12 = v5;
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) = 0;
  (*v14)(&v18 - v10, *MEMORY[0x277CD9570], v2, v11);
  v14 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController;
  v15 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (!v15)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_5:
  (*(v3 + 16))(v8, v12, v2);
  v17 = v15;
  sub_2154A14EC();

  sub_2153D0FFC();
  (*(v3 + 8))(v12, v2);
  result = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (result)
  {
    return [result becomeFirstResponder];
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2153CFFC0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_2154A2BCC();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v9);
}

uint64_t sub_2153D010C()
{
  v0 = sub_21549E56C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_215302998(v3);
    swift_unknownObjectRelease();
    (*(v1 + 32))(v6, v3, v0);
    v8 = [objc_opt_self() printInfo];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
      swift_beginAccess();
      if (*(v10 + v11) && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0) && (v13 = [v12 attachment]) != 0 && (v14 = v13, v15 = objc_msgSend(v13, sel_title), v14, v15))
      {
        v16 = sub_2154A1D6C();
        v18 = v17;

        v22[5] = v16;
        v22[6] = v18;
        v22[3] = 1717858350;
        v22[4] = 0xE400000000000000;
        v22[1] = 0;
        v22[2] = 0xE000000000000000;
        sub_215324954();
        sub_2154A2B9C();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v19 = sub_2154A1D2C();

    [v8 setJobName_];

    v20 = [objc_opt_self() sharedPrintController];
    v21 = sub_21549E49C();
    [v20 setPrintingItem_];

    [v20 presentAnimated:1 completionHandler:0];
    return (*(v1 + 8))(v6, v0);
  }

  return result;
}

uint64_t sub_2153D04A8()
{
  v1 = v0;
  v2 = sub_21549E56C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_215302998(v6);
    swift_unknownObjectRelease();
    (*(v3 + 32))(v8, v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A368);
    v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2154BDB50;
    (*(v3 + 16))(v11 + v10, v8, v2);
    v12 = objc_allocWithZone(MEMORY[0x277D75458]);
    v13 = sub_2154A1F3C();

    v14 = [v12 initForExportingURLs:v13 asCopy:1];

    [v1 presentViewController:v14 animated:1 completion:0];
    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_2153D0704(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_2153D07A0(v9, a4);

  return sub_2151ADCD8(v9, &qword_27CA5ABC0);
}

void sub_2153D07A0(uint64_t a1, SEL *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (v3)
  {
    v6 = v3;
    v7 = sub_2154A14CC();

    if (v7)
    {
      v8 = sub_2154A126C();

      if (v8)
      {
        sub_21532C8D8(a1, v16);
        v9 = v17;
        if (v17)
        {
          v10 = __swift_project_boxed_opaque_existential_0Tm(v16, v17);
          v11 = *(v9 - 8);
          v12 = MEMORY[0x28223BE20](v10);
          v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v11 + 16))(v14, v12);
          v15 = sub_2154A2F8C();
          (*(v11 + 8))(v14, v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v16);
        }

        else
        {
          v15 = 0;
        }

        [v8 *a2];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2153D0934()
{
  v1 = v0;
  v2 = sub_2154A172C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  sub_21549E17C();
  if (v21)
  {
    sub_2151A6C9C(0, &unk_27CA5C3D0);
    if (swift_dynamicCast())
    {
      v9 = v19[1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_2151ADCD8(v20, &qword_27CA5ABC0);
    v9 = 0;
  }

  v10 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController;
  v11 = *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (!v11)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = sub_2154A14CC();

  if (!v13)
  {
LABEL_10:
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_15:
    if (v13)
    {

      return;
    }

LABEL_17:
    *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) = 3;
    (*(v3 + 104))(v8, *MEMORY[0x277CD9570], v2);
    v17 = *(v1 + v10);
    if (v17)
    {
      (*(v3 + 16))(v5, v8, v2);
      v18 = v17;
      sub_2154A14EC();

      sub_2153D0FFC();
      (*(v3 + 8))(v8, v2);
      return;
    }

    goto LABEL_22;
  }

  v14 = sub_2154A126C();

  if (v14)
  {
    v15 = [v14 findInteraction];

    v13 = [v15 activeFindSession];
    goto LABEL_10;
  }

  v13 = 0;
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v13)
  {
    sub_2151A6C9C(0, &unk_27CA5C3D0);
    v16 = sub_2154A291C();

    if ((v16 & 1) == 0)
    {
      return;
    }

    goto LABEL_17;
  }
}

void sub_2153D0C1C()
{
  v1 = v0;
  v2 = sub_2154A172C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  sub_21549E17C();
  if (v21)
  {
    sub_2151A6C9C(0, &unk_27CA5C3D0);
    if (swift_dynamicCast())
    {
      v9 = v19[1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_2151ADCD8(v20, &qword_27CA5ABC0);
    v9 = 0;
  }

  v10 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController;
  v11 = *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (!v11)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = sub_2154A14CC();

  if (v13)
  {
    v14 = sub_2154A126C();

    if (!v14)
    {
      v13 = 0;
      if (v9)
      {
        goto LABEL_11;
      }

LABEL_15:
      if (v13)
      {

        return;
      }

      goto LABEL_17;
    }

    v15 = [v14 findInteraction];

    v13 = [v15 activeFindSession];
  }

  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!v13)
  {

    return;
  }

  sub_2151A6C9C(0, &unk_27CA5C3D0);
  v16 = sub_2154A291C();

  if ((v16 & 1) == 0)
  {
    return;
  }

LABEL_17:
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) == 3)
  {
    *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) = 0;
    (*(v3 + 104))(v8, *MEMORY[0x277CD9570], v2);
    v17 = *(v1 + v10);
    if (v17)
    {
      (*(v3 + 16))(v5, v8, v2);
      v18 = v17;
      sub_2154A14EC();

      sub_2153D0FFC();
      (*(v3 + 8))(v8, v2);
      return;
    }

    goto LABEL_23;
  }
}

uint64_t sub_2153D0F0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_21549E19C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_2153D0FFC()
{
  if (*(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview))
  {
    return;
  }

  v1 = v0;
  v2 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController;
  v3 = *(v0 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (!v3)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v0 = v3;
  v4 = sub_2154A14DC();

  v5 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state;
  v6 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state);
  if (v6 == 2)
  {
    v7 = 0;
    v137 = 1;
  }

  else
  {
    v137 = [v4 isVisible];
    v7 = *(v1 + v5) == 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2154BFED0;
  v9 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_doneButton;
  v10 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_doneButton);
  if (!v10)
  {
    goto LABEL_138;
  }

  v11 = v8;
  *(v8 + 32) = v10;
  v135 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_markupButton;
  v12 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_markupButton);
  if (!v12)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v133 = v4;
  *(v8 + 40) = v12;
  v138 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_formFillingButton;
  v0 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_formFillingButton);
  if (!v0)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  *(v8 + 48) = v0;
  v139 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_findButton;
  v13 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_findButton);
  if (!v13)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  *(v8 + 56) = v13;
  v14 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_shareButton);
  if (!v14)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v131 = v9;
  v132 = xmmword_2154BFED0;
  *(v8 + 64) = v14;
  v141 = v8;
  v134 = v6;
  v136 = v2;
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_canFillForm))
  {
    v15 = v10;
    v16 = v12;
    v17 = v0;
    v18 = v13;
    v19 = v14;
    goto LABEL_52;
  }

  v20 = v8 & 0xC000000000000001;
  v21 = v10;
  v22 = v12;
  v23 = v0;
  v24 = v13;
  v25 = v14;
  if (v20)
  {
    v26 = MEMORY[0x216069960](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_130;
    }

    v26 = *(v11 + 32);
  }

  v27 = v26;
  v12 = *(v1 + v138);
  if (!v12)
  {

    if (v20)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_2151A6C9C(0, &qword_281199620);
  v28 = v27;
  v29 = v12;
  v30 = sub_2154A291C();

  v2 = v136;
  v31 = 0;
  if ((v30 & 1) == 0)
  {
    if (v20)
    {
LABEL_20:
      v32 = MEMORY[0x216069960](1, v11);
      goto LABEL_24;
    }

LABEL_22:
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_130;
    }

    v32 = *(v11 + 40);
LABEL_24:
    v33 = v32;
    v12 = *(v1 + v138);
    if (v12)
    {
      sub_2151A6C9C(0, &qword_281199620);
      v34 = v33;
      v35 = v12;
      v36 = sub_2154A291C();

      v2 = v136;
      if (v36)
      {
        v31 = 1;
        goto LABEL_51;
      }
    }

    else
    {
    }

    if (v20)
    {
      v37 = MEMORY[0x216069960](2, v11);
    }

    else
    {
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_130;
      }

      v37 = *(v11 + 48);
    }

    v38 = v37;
    v12 = *(v1 + v138);
    if (v12)
    {
      sub_2151A6C9C(0, &qword_281199620);
      v39 = v38;
      v40 = v12;
      v41 = sub_2154A291C();

      v2 = v136;
      if (v41)
      {
        v31 = 2;
        goto LABEL_51;
      }
    }

    else
    {
    }

    if (v20)
    {
      v42 = MEMORY[0x216069960](3, v11);
    }

    else
    {
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_130;
      }

      v42 = *(v11 + 56);
    }

    v43 = v42;
    v12 = *(v1 + v138);
    if (v12)
    {
      sub_2151A6C9C(0, &qword_281199620);
      v44 = v43;
      v45 = v12;
      v46 = sub_2154A291C();

      v2 = v136;
      if (v46)
      {
        v31 = 3;
        goto LABEL_51;
      }
    }

    else
    {
    }

    if (v20)
    {
      v47 = MEMORY[0x216069960](4, v11);
    }

    else
    {
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_130;
      }

      v47 = *(v11 + 64);
    }

    v0 = v47;
    v48 = *(v1 + v138);
    if (!v48)
    {
LABEL_162:

      goto LABEL_163;
    }

    sub_2151A6C9C(0, &qword_281199620);
    v11 = v0;
    v49 = v48;
    v50 = sub_2154A291C();

    if ((v50 & 1) == 0)
    {
LABEL_163:
      __break(1u);
      return;
    }

    v31 = 4;
  }

LABEL_51:

  v6 = v134;
LABEL_52:
  v51 = v6 == 1 || v7;
  if ((v51 | v137))
  {
    v11 = v141;
    v12 = v141 & 0xFFFFFFFFFFFFFF8;
    if (!(v141 >> 62))
    {
      v52 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_58:
      v53 = 0;
      while (1)
      {
        if (v52 == v53)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x216069960](v53, v11);
        }

        else
        {
          if (v53 >= *(v12 + 16))
          {
            goto LABEL_126;
          }

          v55 = *(v11 + 8 * v53 + 32);
        }

        v56 = v55;
        v57 = *(v1 + v139);
        if (v57)
        {
          sub_2151A6C9C(0, &qword_281199620);
          v58 = v56;
          v59 = v57;
          v60 = sub_2154A291C();

          if (v60)
          {

            v6 = v134;
            v2 = v136;
            goto LABEL_69;
          }
        }

        else
        {
        }

        if (__OFADD__(v53++, 1))
        {
          goto LABEL_125;
        }
      }
    }

LABEL_131:
    v52 = sub_2154A2C8C();
    goto LABEL_58;
  }

LABEL_69:
  v0 = [v1 traitCollection];
  v61 = [v0 horizontalSizeClass];

  v62 = *(v1 + v2);
  v63 = &unk_27CA5C000;
  if (v61 != 1)
  {
    if (!v62)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v79 = [v62 navigationItem];
    v0 = sub_2151A6C9C(0, &qword_281199620);
    v80 = sub_2154A1F3C();
    [v79 setRightBarButtonItems_];

    v81 = *(v1 + v2);
    if (!v81)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v82 = v81;
    v0 = sub_2154A1F3C();
    [v82 setToolbarItems_];

    v78 = *(v1 + v2);
    if (!v78)
    {
      goto LABEL_135;
    }

    goto LABEL_83;
  }

  if (v137)
  {
    if (!v62)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v0 = [v62 navigationItem];
    v64 = swift_allocObject();
    *(v64 + 16) = v132;
    v65 = *(v1 + v131);
    if (!v65)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    *(v64 + 32) = v65;
    v66 = *(v1 + v135);
    if (!v66)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    *(v64 + 40) = v66;
    v67 = *(v1 + v138);
    if (!v67)
    {
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    *(v64 + 48) = v67;
    v68 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_redoButton);
    if (!v68)
    {
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    *(v64 + 56) = v68;
    v69 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_undoButton);
    if (!v69)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    *(v64 + 64) = v69;
    sub_2151A6C9C(0, &qword_281199620);
    v70 = v69;
    v71 = v68;
    v72 = v67;
    v73 = v66;
    v74 = v65;
    v75 = sub_2154A1F3C();

    [v0 setRightBarButtonItems_];

    v2 = v136;
    v76 = *(v1 + v136);
    if (!v76)
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v0 = v76;
    v77 = sub_2154A1F3C();
    [v0 setToolbarItems_];

    v63 = &unk_27CA5C000;
    v78 = *(v1 + v136);
    if (!v78)
    {
      goto LABEL_135;
    }

    goto LABEL_83;
  }

  if (!v62)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v100 = [v62 navigationItem];
  v101 = swift_allocObject();
  v139 = 1;
  *(v101 + 16) = xmmword_2154BDB20;
  sub_2153D1E54();
  *(v101 + 32) = v102;
  v103 = sub_2151A6C9C(0, &qword_281199620);
  v0 = sub_2154A1F3C();

  [v100 setRightBarButtonItems_];

  v104 = *(v1 + v138);
  if (!v104)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v0 = v141;
  v105 = v104;
  v106 = sub_215495724(v105, v141);
  v108 = v107;

  if ((v108 & 1) == 0)
  {
    v109 = *(v1 + v135);
    if (!v109)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    v110 = v109;
    v111 = sub_215495724(v110, v141);
    v0 = v112;

    if (v0)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    sub_2153D1F2C(v111, v106);
  }

  v0 = *(v1 + v2);
  if (!v0)
  {
    goto LABEL_156;
  }

  v131 = v103;
  v63 = &unk_27CA5C000;
  if (v141 >> 62)
  {
    v113 = sub_2154A2C8C();
    if (v113)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v113 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v113)
    {
LABEL_107:
      v130 = v1;
      v140 = MEMORY[0x277D84F90];
      v129 = v0;
      v114 = v0;
      sub_21531B52C(0, v113 & ~(v113 >> 63), 0);
      v0 = v140;
      if (v141 >> 62)
      {
        v1 = sub_2154A2C8C();
      }

      else
      {
        v1 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v113 < 0)
      {
        goto LABEL_136;
      }

      v12 = 0;
      *&v132 = v141 & 0xFFFFFFFFFFFFFF8;
      v115 = v1 + 3;
      while ((v1 ^ v12) != 0x8000000000000000)
      {
        v116 = v115 - 4;
        if ((v141 & 0xC000000000000001) != 0)
        {
          v117 = MEMORY[0x216069960](v116, v141);
        }

        else
        {
          if ((v116 & 0x8000000000000000) != 0)
          {
            goto LABEL_128;
          }

          if (v116 >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v117 = *(v141 + 8 * v115);
        }

        v118 = v117;
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_2154BDB20;
        *(v119 + 32) = v118;
        v121 = *(v140 + 16);
        v120 = *(v140 + 24);
        v11 = v121 + 1;
        if (v121 >= v120 >> 1)
        {
          sub_21531B52C((v120 > 1), v121 + 1, 1);
        }

        ++v12;
        *(v140 + 16) = v11;
        *(v140 + 8 * v121 + 32) = v119;
        --v115;
        if (v113 == v12)
        {
          v122 = v129;
          v1 = v130;
          v63 = &unk_27CA5C000;
          goto LABEL_134;
        }
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }
  }

  v123 = v0;
  v122 = v0;
  v0 = MEMORY[0x277D84F90];
LABEL_134:
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BDB20;
  *(inited + 32) = [objc_opt_self() flexibleSpaceItem];
  v125 = sub_2153D2068(inited, v0);
  v127 = v126;

  v0 = sub_2153D2C58(v125, v127);
  v128 = sub_2154A1F3C();

  [v122 setToolbarItems_];

  v6 = v134;
  v2 = v136;
  v78 = *(v1 + v136);
  if (!v78)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

LABEL_83:
  v83 = [v78 navigationController];
  if (v83)
  {
    v0 = v83;
    v84 = *(v1 + v2);
    if (!v84)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v85 = [v84 toolbarItems];
    if (v85)
    {
      v86 = v85;
      sub_2151A6C9C(0, &qword_281199620);
      v87 = sub_2154A1F4C();

      if (!(v87 >> 62))
      {
LABEL_87:
        v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_88:

        [v0 setToolbarHidden_];

        goto LABEL_89;
      }
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_87;
      }
    }

    v88 = sub_2154A2C8C();
    goto LABEL_88;
  }

LABEL_89:
  v0 = *(v1 + v135);
  if (!v0)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v89 = v0;
  if (v137)
  {
    v90 = sub_2154A1D2C();
    v91 = [objc_opt_self() bundleWithIdentifier_];

    v92 = sub_2154A1D2C();
    v93 = [objc_opt_self() imageNamed:v92 inBundle:v91];
  }

  else
  {
    v91 = sub_2154A1D2C();
    v93 = [objc_opt_self() systemImageNamed_];
  }

  [v0 setImage_];
  v94 = *(v1 + v138);
  if (!v94)
  {
    goto LABEL_144;
  }

  [v94 setSelected_];
  v95 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_undoButton);
  if (!v95)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v96 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController__undoManager;
  v0 = *(v1 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController__undoManager);
  v97 = v95;
  [v97 setEnabled_];

  v98 = *(v1 + v63[114]);
  if (!v98)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v99 = v98;

  [v99 setEnabled_];
}

void sub_2153D1E54()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_2154A2C8C())
  {
    if (sub_2154A2C8C())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x216069960](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_2154A2C8C();
LABEL_13:
      if (v3)
      {
        sub_21532A034(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_2153D1F2C(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v6 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x216069960](a1, *v2);
      v9 = MEMORY[0x216069960](a2, v6);
      goto LABEL_7;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 > a1)
      {
        if (v7 > a2)
        {
          v8 = *(v6 + 32 + 8 * a2);
          v3 = *(v6 + 32 + 8 * a1);
          v9 = v8;
LABEL_7:
          v10 = v9;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = sub_215433F30(v6);
            v11 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v11) = 0;
          }

          v12 = v6 & 0xFFFFFFFFFFFFFF8;
          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

          if ((v6 & 0x8000000000000000) == 0 && !v11)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          v6 = sub_215433F30(v6);
          v12 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v12 + 16) > a2)
            {
              v14 = v12 + 8 * a2;
              v15 = *(v14 + 32);
              *(v14 + 32) = v3;

              *v2 = v6;
              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_2153D2068(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v5 = sub_2154A2C8C();
    if (v5)
    {
      v6 = v5;
      v7 = sub_2153259E4(v5, 0);

      sub_215432AD4(v7 + 32, v6, a1);
      v9 = v8;

      if (v9 != v6)
      {
        __break(1u);
      }
    }
  }

  else
  {
  }

  return a2;
}

id sub_2153D21E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickLookalikePaperViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for QuickLookalikePaperViewController.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QuickLookalikePaperViewController.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2153D248C()
{
  result = qword_27CA5C3C0;
  if (!qword_27CA5C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C3C0);
  }

  return result;
}

id sub_2153D24E0(void *a1, void *a2)
{
  v3 = v2;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = objc_opt_self();
  v9 = [v8 secondarySystemBackgroundColor];
  v10 = [v9 ic_resolvedColorForNoteEditor];

  [v7 setBackgroundColor_];
  [a2 setOverrideUserInterfaceStyle_];
  v11 = [v8 clearColor];
  [a2 setBackgroundColor_];

  result = sub_2154A126C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v13 = [v8 clearColor];
  [v12 setBackgroundColor_];

  result = sub_2154A126C();
  if (!result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result documentScrollView];

  if (v15)
  {
    [v15 setContentInsetAdjustmentBehavior_];
  }

  result = sub_2154A126C();
  if (!result)
  {
    goto LABEL_13;
  }

  v16 = result;
  [result setFindInteractionEnabled_];

  v17 = [a1 view];
  result = sub_2154A125C();
  if ((*(v3 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview) & 1) == 0)
  {
    v18 = [v3 traitCollection];
    [v18 horizontalSizeClass];

    return sub_2154A14BC();
  }

  return result;
}

void sub_2153D26F8(uint64_t a1)
{
  v2 = sub_21549E56C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_2154A1D2C();
  v8 = [v6 localizedFrameworkStringForKey:v7 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  sub_21549E45C();
  v9 = sub_2154A1D2C();

  v10 = sub_2154A1D2C();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = sub_2154A1D2C();
  v13 = [v6 localizedFrameworkStringForKey:v12 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  (*(v3 + 16))(v5, a1, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v14, v5, v2);
  v17 = v28;
  *(v16 + v15) = v28;
  v18 = v17;
  v19 = sub_2154A1D2C();

  aBlock[4] = sub_2153D38CC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151B5B78;
  aBlock[3] = &block_descriptor_22;
  v20 = _Block_copy(aBlock);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v11 addAction_];
  v23 = sub_2154A1D2C();
  v24 = [v6 localizedFrameworkStringForKey:v23 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  v25 = sub_2154A1D2C();

  v26 = [v21 actionWithTitle:v25 style:1 handler:0];

  [v11 addAction_];
  [v18 presentViewController:v11 animated:1 completion:0];
}

void sub_2153D2B28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21549E49C();
  v5 = [a3 view];
  if (v5)
  {
    [objc_opt_self() openURL:v4 originatingView:v5 completionHandler:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_2153D2BD0(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 && *(v2 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state) != 1)
  {
    *(v2 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_canFillForm) = 1;
    sub_2153D0FFC();
  }
}

unint64_t sub_2153D2C58(uint64_t a1, uint64_t a2)
{
  v17 = MEMORY[0x277D84F90];
  if (!*(a2 + 16))
  {

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = 0;
      while (v13 < *(a1 + 16))
      {
        v14 = v13 + 1;

        result = sub_2153D2D7C(v15, v16);
        v13 = v14;
        if (v12 == v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_12:

    return v17;
  }

  v3 = *(a1 + 16);
  if (!v3 || (v4 = , result = sub_2153D2D7C(v4, v5), v3 == 1))
  {
LABEL_7:

    goto LABEL_12;
  }

  v7 = (a1 + 40);
  v8 = 1;
  while (v8 < *(a1 + 16))
  {
    ++v8;
    v9 = *v7++;

    sub_2153D3050(v10);
    result = sub_2153D2D7C(v9, v11);
    if (v3 == v8)
    {
      goto LABEL_7;
    }
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_2153D2D7C(unint64_t a1, unint64_t a2)
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = *v2;
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v6 + 24) >> 1, v9 < v7 + v5))
  {
    sub_2154A2E3C();
    v6 = *v2;
    v9 = *(*v2 + 24) >> 1;
  }

  v10 = *(v6 + 16);
  v11 = v9 - v10;
  result = sub_215432AD4(v6 + 8 * v10 + 32, v9 - v10, v4);
  if (v13 < v5)
  {
    goto LABEL_42;
  }

  v4 = result;
  if (v13 < 1)
  {
    goto LABEL_11;
  }

  v14 = *(v6 + 16);
  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v6 + 16) = v16;
LABEL_11:
  if (v13 != v11)
  {
    goto LABEL_34;
  }

  v3 = *(v6 + 16);
  if (!(result >> 62))
  {
    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2 != v17)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_44:
  v28 = a2;
  result = sub_2154A2C8C();
  a2 = v28;
  v17 = result;
  if (v28 != result)
  {
LABEL_14:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v29 = a2;
      result = MEMORY[0x216069960](a2, v4);
      v19 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
LABEL_18:
        v20 = result;
        v32 = v2;
        v30 = v17;
        while (1)
        {
          sub_2154A2E4C();
          v21 = *(*v2 + 24) >> 1;
          v22 = v21 - v3;
          v33 = *v2;
          if (v21 > v3)
          {
            break;
          }

          v21 = v3;
          v25 = v20;
LABEL_32:
          v20 = v25;
          *(v33 + 16) = v21;
        }

        v23 = 0;
        v24 = v3;
        v3 = v17 - v19;
        v31 = v24;
        v2 = *v2 + 8 * v24 + 32;
        v25 = v20;
        while (1)
        {
          *(v2 + 8 * v23) = v25;
          if (v3 == v23)
          {
            *(v33 + 16) = v31 + v23 + 1;
            goto LABEL_34;
          }

          v26 = v19 + v23;
          if ((v4 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x216069960](v19 + v23, v4);
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_38;
            }

            if (v26 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v25 = *(v4 + 32 + 8 * v19 + 8 * v23);
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              v5 = sub_2154A2C8C();
              goto LABEL_3;
            }
          }

          if (v22 == ++v23)
          {
            v19 = v27;
            v3 = v21;
            v2 = v32;
            v17 = v30;
            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (a2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v18 = a2;
      result = *(v4 + 8 * a2 + 32);
      v19 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_34:

  return sub_2154A2E1C();
}