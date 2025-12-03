@interface KVItemConverter
+ (id)_convertFromKVItemType_AppInfo:(id)info error:(id *)error;
+ (id)_convertFromKVItemType_AppIntentsEntity:(id)entity error:(id *)error;
+ (id)_convertFromKVItemType_AppIntentsEnum:(id)enum error:(id *)error;
+ (id)_convertFromKVItemType_AppShortcut:(id)shortcut error:(id *)error;
+ (id)_convertFromKVItemType_AutoShortcut:(id)shortcut error:(id *)error;
+ (id)_convertFromKVItemType_CalendarEvent:(id)event error:(id *)error;
+ (id)_convertFromKVItemType_Contact:(id)contact error:(id *)error;
+ (id)_convertFromKVItemType_CustomTerm:(id)term error:(id *)error;
+ (id)_convertFromKVItemType_FindMy:(id)my error:(id *)error;
+ (id)_convertFromKVItemType_Fitness:(id)fitness error:(id *)error;
+ (id)_convertFromKVItemType_GlobalTerm:(id)term error:(id *)error;
+ (id)_convertFromKVItemType_Health:(id)health error:(id *)error;
+ (id)_convertFromKVItemType_HomeEntity:(id)entity error:(id *)error;
+ (id)_convertFromKVItemType_HomeServiceArea:(id)area error:(id *)error;
+ (id)_convertFromKVItemType_LearnedContact:(id)contact error:(id *)error;
+ (id)_convertFromKVItemType_LearnedMediaEntity:(id)entity error:(id *)error;
+ (id)_convertFromKVItemType_LocationOfInterest:(id)interest error:(id *)error;
+ (id)_convertFromKVItemType_MediaEntity:(id)entity error:(id *)error;
+ (id)_convertFromKVItemType_Podcast:(id)podcast error:(id *)error;
+ (id)_convertFromKVItemType_RadioEntity:(id)entity error:(id *)error;
+ (id)_convertFromKVItemType_UserAccount:(id)account error:(id *)error;
+ (id)cascadeItemFromItem:(id)item error:(id *)error;
+ (id)itemFromCascadeItem:(id)item error:(id *)error;
+ (int64_t)fieldTypeFromCascadeFieldType:(unsigned __int16)type;
+ (unsigned)cascadeFieldTypeFromFieldType:(int64_t)type;
+ (unsigned)cascadeItemTypeFromItemType:(int64_t)type;
@end

@implementation KVItemConverter

+ (id)itemFromCascadeItem:(id)item error:(id *)error
{
  itemCopy = item;
  v11 = objc_msgSend_content(itemCopy, v6, v7, v8, v9, v10);
  v12 = objc_opt_class();
  v18 = objc_msgSend_itemType(v12, v13, v14, v15, v16, v17);
  v19 = objc_opt_class();
  v24 = objc_msgSend_itemTypeFromCascadeItemType_(v19, v20, v18, v21, v22, v23);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = objc_msgSend_metaContent(itemCopy, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_sourceItemIdentifier(v30, v31, v32, v33, v34, v35);
  }

  else
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = objc_msgSend_sharedIdentifier(itemCopy, v25, v26, v27, v28, v29);
    v44 = objc_msgSend_unsignedLongLongValue(v38, v39, v40, v41, v42, v43);
    v36 = objc_msgSend_stringWithFormat_(v37, v45, @"%llx", v46, v47, v48, v44);

    v30 = 0;
  }

  v49 = objc_alloc_init(KVItemBuilder);
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = sub_2559B7298;
  v112 = sub_2559B72A8;
  v113 = 0;
  v107 = 0;
  v52 = objc_msgSend_setItemType_itemId_error_(v49, v50, v24, v36, &v107, v51);
  objc_storeStrong(&v113, v107);

  if (v52)
  {
    errorCopy = error;
    v103 = 0;
    v104 = &v103;
    v105 = 0x2020000000;
    v106 = 0;
    v82 = v36;
    if (v30)
    {
      v102 = 0;
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = sub_2559B7464;
      v98[3] = &unk_279803F38;
      v100 = &v103;
      v99 = v49;
      v101 = &v108;
      v56 = objc_msgSend_recursivelyEnumerateFieldsWithError_usingBlock_(v30, v53, &v102, v98, v54, v55);
      v57 = v102;
      v58 = v57;
      if ((v56 & 1) == 0)
      {
        v59 = sub_2559B75F0(v57, itemCopy);
        goto LABEL_14;
      }

      if (*(v104 + 24) == 1)
      {
        v59 = sub_2559B72B0(v109[5], itemCopy);
LABEL_14:
        if (error)
        {
          v36 = v82;
          if (v59)
          {
            v59 = v59;
            *error = v59;
          }
        }

        else
        {
          v36 = v82;
        }

        v61 = 0;
        goto LABEL_39;
      }

      v63 = v58;
    }

    else
    {
      v63 = 0;
    }

    v92 = 0;
    v93 = &v92;
    v94 = 0x3032000000;
    v95 = sub_2559B7298;
    v96 = sub_2559B72A8;
    v97 = 0;
    v90 = v24;
    v91 = v63;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_2559B76E0;
    v84[3] = &unk_279803F60;
    v87 = &v103;
    v88 = &v92;
    v64 = itemCopy;
    v85 = v64;
    v65 = v49;
    v86 = v65;
    v89 = &v108;
    v69 = objc_msgSend_recursivelyEnumerateFieldsWithError_usingBlock_(v11, v66, &v91, v84, v67, v68);
    v58 = v91;

    if (v69)
    {
      if (*(v104 + 24) != 1)
      {
LABEL_23:

        v71 = v109;
        obj = v109[5];
        v76 = objc_msgSend_buildItemWithError_(v65, v72, &obj, v73, v74, v75);
        objc_storeStrong(v71 + 5, obj);
        if (v76)
        {
          v77 = v76;
          v61 = v77;
        }

        else
        {
          v79 = sub_2559B72B0(v109[5], v64);
          if (errorCopy && v79)
          {
            v79 = v79;
            *errorCopy = v79;
          }

          v77 = 0;
          v61 = 0;
        }

        v36 = v82;
LABEL_38:

        _Block_object_dispose(&v92, 8);
LABEL_39:
        _Block_object_dispose(&v103, 8);
        goto LABEL_40;
      }

      v70 = v93[5];
      if (v70)
      {
        if (errorCopy)
        {
          *errorCopy = v70;
        }

        goto LABEL_23;
      }

      v78 = sub_2559B72B0(v109[5], v64);
    }

    else
    {
      v78 = sub_2559B75F0(v58, v64);
    }

    if (errorCopy)
    {
      v36 = v82;
      if (v78)
      {
        v78 = v78;
        *errorCopy = v78;
      }
    }

    else
    {
      v36 = v82;
    }

    v61 = 0;
    v77 = v85;
    goto LABEL_38;
  }

  v60 = sub_2559B72B0(v109[5], itemCopy);
  v58 = v60;
  v61 = 0;
  if (error && v60)
  {
    v62 = v60;
    v61 = 0;
    *error = v58;
  }

LABEL_40:

  _Block_object_dispose(&v108, 8);

  return v61;
}

+ (id)_convertFromKVItemType_HomeServiceArea:(id)area error:(id *)error
{
  areaCopy = area;
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = sub_2559B7298;
  v91 = sub_2559B72A8;
  v92 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_2559B7298;
  v85 = sub_2559B72A8;
  v86 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_2559B7298;
  v79 = sub_2559B72A8;
  v80 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_2559B7298;
  v73 = sub_2559B72A8;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_2559B7298;
  v67 = sub_2559B72A8;
  v68 = 0;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_2559B9550;
  v62[3] = &unk_279803DD0;
  v62[4] = &v87;
  v62[5] = &v81;
  v62[6] = &v69;
  v62[7] = &v75;
  v62[8] = &v63;
  objc_msgSend_enumerateFieldsUsingBlock_(areaCopy, v6, v62, v7, v8, v9);
  v10 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v57 = objc_msgSend_numberFromString_(v10, v11, v70[5], v12, v13, v14);
  if (v88[5])
  {
    v19 = objc_msgSend_numberFromString_(v10, v15, v82[5], v16, v17, v18);
    v20 = objc_alloc(MEMORY[0x277D21008]);
    v21 = v88[5];
    v61 = 0;
    v23 = objc_msgSend_initWithName_areaIdentifier_associatedMapIdentifier_error_(v20, v22, v21, v19, v57, &v61);
    v24 = v61;

    v29 = 1;
    if (v23)
    {
LABEL_3:
      v30 = objc_msgSend_numberFromString_(v10, v25, v64[5], v26, v27, v28);
      v31 = objc_alloc(MEMORY[0x277D21010]);
      v59 = v24;
      v33 = objc_msgSend_initWithMatterDeviceIdentifier_serviceArea_serviceAreaType_error_(v31, v32, v30, v23, v29, &v59);
      v34 = v59;

      if (v33)
      {
        v35 = objc_alloc(MEMORY[0x277D21020]);
        v41 = objc_msgSend_itemId(areaCopy, v36, v37, v38, v39, v40);
        v58 = v34;
        v45 = objc_msgSend_initWithSourceItemIdentifier_error_(v35, v42, v41, &v58, v43, v44);
        v24 = v58;

        if (v45)
        {
          v46 = sub_2559B96C0(v33, v45, areaCopy, error);
        }

        else
        {
          v55 = sub_2559B95D0(v24, areaCopy);
          if (error && v55)
          {
            v55 = v55;
            *error = v55;
          }

          v45 = 0;
          v46 = 0;
        }
      }

      else
      {
        v53 = sub_2559B95D0(v34, areaCopy);
        v45 = v53;
        v46 = 0;
        if (error && v53)
        {
          v54 = v53;
          v46 = 0;
          *error = v45;
        }

        v24 = v34;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v47 = objc_alloc(MEMORY[0x277D21018]);
    v48 = v76[5];
    v60 = 0;
    v23 = objc_msgSend_initWithName_mapIdentifier_error_(v47, v49, v48, v57, &v60, v50);
    v24 = v60;
    v29 = 2;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  v51 = sub_2559B95D0(v24, areaCopy);
  v30 = v51;
  v46 = 0;
  if (error && v51)
  {
    v52 = v51;
    v46 = 0;
    *error = v30;
  }

LABEL_19:

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);

  _Block_object_dispose(&v87, 8);

  return v46;
}

+ (id)_convertFromKVItemType_AppIntentsEnum:(id)enum error:(id *)error
{
  enumCopy = enum;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = sub_2559B7298;
  v100 = sub_2559B72A8;
  v101 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = sub_2559B7298;
  v94 = sub_2559B72A8;
  v95 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_2559B7298;
  v88 = sub_2559B72A8;
  v89 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_2559B7298;
  v82 = sub_2559B72A8;
  v83 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = sub_2559B7298;
  v76[4] = sub_2559B72A8;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = sub_2559B7298;
  v74[4] = sub_2559B72A8;
  v75 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = sub_2559B7298;
  v72[4] = sub_2559B72A8;
  v73 = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_2559B7298;
  v70[4] = sub_2559B72A8;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_2559B7298;
  v68 = sub_2559B72A8;
  v69 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_2559B9E44;
  v59[3] = &unk_279803EE8;
  v59[4] = v76;
  v59[5] = v74;
  v59[6] = v72;
  v59[7] = v70;
  v59[8] = &v64;
  v59[9] = &v78;
  v6 = MEMORY[0x259C45590](v59);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2559BA008;
  v49[3] = &unk_279803F10;
  v51 = &v96;
  v52 = &v90;
  v53 = &v84;
  v54 = v76;
  v7 = v6;
  v50 = v7;
  v55 = &v60;
  v56 = v74;
  v57 = v72;
  v58 = v70;
  objc_msgSend_enumerateFieldsUsingBlock_(enumCopy, v8, v49, v9, v10, v11);
  if (*(v61 + 24) == 1 || (v7[2](v7) & 1) == 0)
  {
    v38 = sub_2559B95D0(v65[5], enumCopy);
    v18 = v38;
    v37 = 0;
    if (error && v38)
    {
      v39 = v38;
      v37 = 0;
      *error = v18;
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D20E58]);
    v13 = v91[5];
    v14 = v85[5];
    v15 = (v65 + 5);
    obj = v65[5];
    v18 = objc_msgSend_initWithName_synonyms_error_(v12, v16, v13, v14, &obj, v17);
    objc_storeStrong(v15, obj);
    if (v18)
    {
      v19 = objc_alloc(MEMORY[0x277D20F10]);
      v20 = v97[5];
      v21 = v79[5];
      v22 = (v65 + 5);
      v47 = v65[5];
      v24 = objc_msgSend_initWithTypeIdentifier_typeDisplayRepresentation_cases_error_(v19, v23, v20, v18, v21, &v47);
      objc_storeStrong(v22, v47);
      if (v24)
      {
        v25 = objc_alloc(MEMORY[0x277D20F18]);
        v31 = objc_msgSend_itemId(enumCopy, v26, v27, v28, v29, v30);
        v32 = (v65 + 5);
        v46 = v65[5];
        v36 = objc_msgSend_initWithSourceItemIdentifier_error_(v25, v33, v31, &v46, v34, v35);
        objc_storeStrong(v32, v46);

        if (v36)
        {
          v37 = sub_2559B96C0(v24, v36, enumCopy, error);
        }

        else
        {
          v44 = sub_2559B95D0(v65[5], enumCopy);
          if (error && v44)
          {
            v44 = v44;
            *error = v44;
          }

          v36 = 0;
          v37 = 0;
        }
      }

      else
      {
        v42 = sub_2559B95D0(v65[5], enumCopy);
        v36 = v42;
        v37 = 0;
        if (error && v42)
        {
          v43 = v42;
          v37 = 0;
          *error = v36;
        }
      }
    }

    else
    {
      v40 = sub_2559B95D0(v65[5], enumCopy);
      v24 = v40;
      v37 = 0;
      if (error && v40)
      {
        v41 = v40;
        v37 = 0;
        *error = v24;
      }
    }
  }

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(v72, 8);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v76, 8);

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v84, 8);

  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v96, 8);

  return v37;
}

+ (id)_convertFromKVItemType_AppIntentsEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_2559B7298;
  v88 = sub_2559B72A8;
  v89 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_2559B7298;
  v82 = sub_2559B72A8;
  v83 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_2559B7298;
  v76 = sub_2559B72A8;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_2559B7298;
  v70 = sub_2559B72A8;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_2559B7298;
  v64 = sub_2559B72A8;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_2559B7298;
  v58 = sub_2559B72A8;
  v59 = 0;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_2559BA740;
  v53[3] = &unk_279803EC0;
  v53[4] = &v84;
  v53[5] = &v60;
  v53[6] = &v54;
  v53[7] = &v78;
  v53[8] = &v72;
  v53[9] = &v66;
  objc_msgSend_enumerateFieldsUsingBlock_(entityCopy, v6, v53, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D20E38]);
  v11 = v79[5];
  v12 = v73[5];
  v13 = v67[5];
  v52 = 0;
  v15 = objc_msgSend_initWithTitle_subtitle_synonyms_error_(v10, v14, v11, v12, v13, &v52);
  v16 = v52;
  v17 = v16;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x277D20E40]);
    v19 = v61[5];
    v20 = v55[5];
    v51 = v17;
    v23 = objc_msgSend_initWithName_synonyms_error_(v18, v21, v19, v20, &v51, v22);
    v24 = v51;

    if (v23)
    {
      v25 = objc_alloc(MEMORY[0x277D20F00]);
      v26 = v85[5];
      v50 = v24;
      v28 = objc_msgSend_initWithTypeIdentifier_displayRepresentation_typeDisplayRepresentation_error_(v25, v27, v26, v15, v23, &v50);
      v29 = v50;

      if (v28)
      {
        v30 = objc_alloc(MEMORY[0x277D20F08]);
        v36 = objc_msgSend_itemId(entityCopy, v31, v32, v33, v34, v35);
        v49 = v29;
        v39 = objc_msgSend_initWithSourceItemIdentifier_rank_error_(v30, v37, v36, 0, &v49, v38);
        v24 = v49;

        if (v39)
        {
          v40 = sub_2559B96C0(v28, v39, entityCopy, error);
        }

        else
        {
          v47 = sub_2559B95D0(v24, entityCopy);
          if (error && v47)
          {
            v47 = v47;
            *error = v47;
          }

          v39 = 0;
          v40 = 0;
        }
      }

      else
      {
        v45 = sub_2559B95D0(v29, entityCopy);
        v39 = v45;
        v40 = 0;
        if (error && v45)
        {
          v46 = v45;
          v40 = 0;
          *error = v39;
        }

        v24 = v29;
      }
    }

    else
    {
      v43 = sub_2559B95D0(v24, entityCopy);
      v28 = v43;
      v40 = 0;
      if (error && v43)
      {
        v44 = v43;
        v40 = 0;
        *error = v28;
      }
    }

    v17 = v24;
  }

  else
  {
    v41 = sub_2559B95D0(v16, entityCopy);
    v23 = v41;
    v40 = 0;
    if (error && v41)
    {
      v42 = v41;
      v40 = 0;
      *error = v23;
    }
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v84, 8);

  return v40;
}

+ (id)_convertFromKVItemType_LearnedMediaEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_2559B7298;
  v75 = sub_2559B72A8;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_2559B7298;
  v69 = sub_2559B72A8;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_2559B7298;
  v63 = sub_2559B72A8;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_2559B7298;
  v57 = sub_2559B72A8;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_2559B7298;
  v51 = sub_2559B72A8;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_2559B7298;
  v45 = sub_2559B72A8;
  v46 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2559BACBC;
  v40[3] = &unk_279803EC0;
  v40[4] = &v71;
  v40[5] = &v65;
  v40[6] = &v59;
  v40[7] = &v47;
  v40[8] = &v53;
  v40[9] = &v41;
  objc_msgSend_enumerateFieldsUsingBlock_(entityCopy, v6, v40, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D21140]);
  v11 = v72[5];
  v12 = v66[5];
  v13 = v60[5];
  v14 = v54[5];
  v15 = v48[5];
  v16 = v42[5];
  v39 = 0;
  v18 = objc_msgSend_initWithUserPhrasedSongName_userPhrasedArtistName_userPhrasedAlbumName_userPhrasedEntityName_userPhrasedVersion_suggestedAdamId_error_(v10, v17, v11, v12, v13, v14, v15, v16, &v39);
  v19 = v39;
  v20 = v19;
  if (v18)
  {
    v21 = objc_alloc(MEMORY[0x277D21148]);
    v27 = objc_msgSend_itemId(entityCopy, v22, v23, v24, v25, v26);
    v38 = v20;
    v31 = objc_msgSend_initWithSourceItemIdentifier_error_(v21, v28, v27, &v38, v29, v30);
    v32 = v38;

    if (v31)
    {
      v33 = sub_2559B96C0(v18, v31, entityCopy, error);
    }

    else
    {
      v36 = sub_2559B95D0(v32, entityCopy);
      if (error && v36)
      {
        v36 = v36;
        *error = v36;
      }

      v31 = 0;
      v33 = 0;
    }
  }

  else
  {
    v34 = sub_2559B95D0(v19, entityCopy);
    v31 = v34;
    v33 = 0;
    if (error && v34)
    {
      v35 = v34;
      v33 = 0;
      *error = v31;
    }

    v32 = v20;
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);

  return v33;
}

+ (id)_convertFromKVItemType_LearnedContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_2559B7298;
  v48 = sub_2559B72A8;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_2559B7298;
  v42 = sub_2559B72A8;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2559BAFC4;
  v37[3] = &unk_279803E70;
  v37[4] = &v38;
  v37[5] = &v44;
  objc_msgSend_enumerateFieldsUsingBlock_(contactCopy, v6, v37, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D21130]);
  v11 = v45[5];
  v12 = v39[5];
  v36 = 0;
  v15 = objc_msgSend_initWithUserPhrasedName_suggestedContactId_error_(v10, v13, v11, v12, &v36, v14);
  v16 = v36;
  v17 = v16;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x277D21138]);
    v24 = objc_msgSend_itemId(contactCopy, v19, v20, v21, v22, v23);
    v35 = v17;
    v28 = objc_msgSend_initWithSourceItemIdentifier_error_(v18, v25, v24, &v35, v26, v27);
    v29 = v35;

    if (v28)
    {
      v30 = sub_2559B96C0(v15, v28, contactCopy, error);
    }

    else
    {
      v33 = sub_2559B95D0(v29, contactCopy);
      if (error && v33)
      {
        v33 = v33;
        *error = v33;
      }

      v28 = 0;
      v30 = 0;
    }
  }

  else
  {
    v31 = sub_2559B95D0(v16, contactCopy);
    v28 = v31;
    v30 = 0;
    if (error && v31)
    {
      v32 = v31;
      v30 = 0;
      *error = v28;
    }

    v29 = v17;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v30;
}

+ (id)_convertFromKVItemType_FindMy:(id)my error:(id *)error
{
  myCopy = my;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_2559B7298;
  v60 = sub_2559B72A8;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_2559B7298;
  v54 = sub_2559B72A8;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_2559B7298;
  v48 = sub_2559B72A8;
  v49 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2559BB378;
  v43[3] = &unk_279803D80;
  v43[4] = &v56;
  v43[5] = &v50;
  v43[6] = &v44;
  objc_msgSend_enumerateFieldsUsingBlock_(myCopy, v6, v43, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D20FA8]);
  v11 = v51[5];
  v12 = v45[5];
  v42 = 0;
  Name_lastName_error = objc_msgSend_initWithFirstName_lastName_error_(v10, v13, v11, v12, &v42, v14);
  v16 = v42;
  v17 = objc_alloc(MEMORY[0x277D20F98]);
  v18 = v57[5];
  v41 = v16;
  v21 = objc_msgSend_initWithName_owner_error_(v17, v19, v18, Name_lastName_error, &v41, v20);
  v22 = v41;

  if (v21)
  {
    v23 = objc_alloc(MEMORY[0x277D20FA0]);
    v29 = objc_msgSend_itemId(myCopy, v24, v25, v26, v27, v28);
    v40 = v22;
    v33 = objc_msgSend_initWithSourceItemIdentifier_error_(v23, v30, v29, &v40, v31, v32);
    v34 = v40;

    if (v33)
    {
      v35 = sub_2559B96C0(v21, v33, myCopy, error);
    }

    else
    {
      v38 = sub_2559B95D0(v34, myCopy);
      if (error && v38)
      {
        v38 = v38;
        *error = v38;
      }

      v33 = 0;
      v35 = 0;
    }
  }

  else
  {
    v36 = sub_2559B95D0(v22, myCopy);
    v33 = v36;
    v35 = 0;
    if (error && v36)
    {
      v37 = v36;
      v35 = 0;
      *error = v33;
    }

    v34 = v22;
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);

  return v35;
}

+ (id)_convertFromKVItemType_UserAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_2559B7298;
  v48 = sub_2559B72A8;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_2559B7298;
  v42 = sub_2559B72A8;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2559BB680;
  v37[3] = &unk_279803E70;
  v37[4] = &v44;
  v37[5] = &v38;
  objc_msgSend_enumerateFieldsUsingBlock_(accountCopy, v6, v37, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D21180]);
  v11 = v45[5];
  v12 = v39[5];
  v36 = 0;
  v15 = objc_msgSend_initWithUserName_givenName_error_(v10, v13, v11, v12, &v36, v14);
  v16 = v36;
  v17 = v16;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x277D21188]);
    v24 = objc_msgSend_itemId(accountCopy, v19, v20, v21, v22, v23);
    v35 = v17;
    v28 = objc_msgSend_initWithSourceItemIdentifier_error_(v18, v25, v24, &v35, v26, v27);
    v29 = v35;

    if (v28)
    {
      v30 = sub_2559B96C0(v15, v28, accountCopy, error);
    }

    else
    {
      v33 = sub_2559B95D0(v29, accountCopy);
      if (error && v33)
      {
        v33 = v33;
        *error = v33;
      }

      v28 = 0;
      v30 = 0;
    }
  }

  else
  {
    v31 = sub_2559B95D0(v16, accountCopy);
    v28 = v31;
    v30 = 0;
    if (error && v31)
    {
      v32 = v31;
      v30 = 0;
      *error = v28;
    }

    v29 = v17;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v30;
}

+ (id)_convertFromKVItemType_Health:(id)health error:(id *)error
{
  healthCopy = health;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_2559B7298;
  v48 = sub_2559B72A8;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_2559B7298;
  v42 = sub_2559B72A8;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2559BB994;
  v37[3] = &unk_279803E70;
  v37[4] = &v44;
  v37[5] = &v38;
  objc_msgSend_enumerateFieldsUsingBlock_(healthCopy, v6, v37, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D20FC0]);
  v11 = v45[5];
  v12 = v39[5];
  v36 = 0;
  v15 = objc_msgSend_initWithName_nickname_error_(v10, v13, v11, v12, &v36, v14);
  v16 = v36;
  v17 = v16;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x277D20FC8]);
    v24 = objc_msgSend_itemId(healthCopy, v19, v20, v21, v22, v23);
    v35 = v17;
    v28 = objc_msgSend_initWithSourceItemIdentifier_error_(v18, v25, v24, &v35, v26, v27);
    v29 = v35;

    if (v28)
    {
      v30 = sub_2559B96C0(v15, v28, healthCopy, error);
    }

    else
    {
      v33 = sub_2559B95D0(v29, healthCopy);
      if (error && v33)
      {
        v33 = v33;
        *error = v33;
      }

      v28 = 0;
      v30 = 0;
    }
  }

  else
  {
    v31 = sub_2559B95D0(v16, healthCopy);
    v28 = v31;
    v30 = 0;
    if (error && v31)
    {
      v32 = v31;
      v30 = 0;
      *error = v28;
    }

    v29 = v17;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v30;
}

+ (id)_convertFromKVItemType_Fitness:(id)fitness error:(id *)error
{
  fitnessCopy = fitness;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_2559B7298;
  v42 = sub_2559B72A8;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2559BBC4C;
  v37[3] = &unk_279803E98;
  v37[4] = &v38;
  objc_msgSend_enumerateFieldsUsingBlock_(fitnessCopy, v6, v37, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D20FB0]);
  v11 = v39[5];
  v36 = 0;
  v15 = objc_msgSend_initWithName_error_(v10, v12, v11, &v36, v13, v14);
  v16 = v36;
  v17 = v16;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x277D20FB8]);
    v24 = objc_msgSend_itemId(fitnessCopy, v19, v20, v21, v22, v23);
    v35 = v17;
    v28 = objc_msgSend_initWithSourceItemIdentifier_error_(v18, v25, v24, &v35, v26, v27);
    v29 = v35;

    if (v28)
    {
      v30 = sub_2559B96C0(v15, v28, fitnessCopy, error);
    }

    else
    {
      v33 = sub_2559B95D0(v29, fitnessCopy);
      if (error && v33)
      {
        v33 = v33;
        *error = v33;
      }

      v28 = 0;
      v30 = 0;
    }
  }

  else
  {
    v31 = sub_2559B95D0(v16, fitnessCopy);
    v28 = v31;
    v30 = 0;
    if (error && v31)
    {
      v32 = v31;
      v30 = 0;
      *error = v28;
    }

    v29 = v17;
  }

  _Block_object_dispose(&v38, 8);

  return v30;
}

+ (id)_convertFromKVItemType_Podcast:(id)podcast error:(id *)error
{
  podcastCopy = podcast;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_2559B7298;
  v63 = sub_2559B72A8;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_2559B7298;
  v57 = sub_2559B72A8;
  v58 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_2559BC018;
  v52[3] = &unk_279803D80;
  v52[4] = &v65;
  v52[5] = &v59;
  v52[6] = &v53;
  objc_msgSend_enumerateFieldsUsingBlock_(podcastCopy, v6, v52, v7, v8, v9);
  v10 = *(v66 + 6);
  if (v10 == 1)
  {
    v18 = objc_alloc(MEMORY[0x277D21100]);
    v19 = v60[5];
    v20 = v54[5];
    v51 = 0;
    v13 = &v51;
    v17 = objc_msgSend_initWithName_author_error_(v18, v21, v19, v20, &v51, v22);
    goto LABEL_5;
  }

  if (v10 == 2)
  {
    v11 = objc_alloc(MEMORY[0x277D210F8]);
    v12 = v60[5];
    v50 = 0;
    v13 = &v50;
    v17 = objc_msgSend_initWithName_error_(v11, v14, v12, &v50, v15, v16);
LABEL_5:
    v23 = v17;
    v24 = *v13;
    goto LABEL_7;
  }

  v23 = 0;
  v24 = 0;
LABEL_7:
  v25 = objc_alloc(MEMORY[0x277D210E8]);
  v26 = *(v66 + 6);
  v49 = v24;
  v29 = objc_msgSend_initWithEntity_entityType_error_(v25, v27, v23, v26, &v49, v28);
  v30 = v49;

  if (v29)
  {
    v31 = objc_alloc(MEMORY[0x277D210F0]);
    v37 = objc_msgSend_itemId(podcastCopy, v32, v33, v34, v35, v36);
    v48 = v30;
    v41 = objc_msgSend_initWithSourceItemIdentifier_error_(v31, v38, v37, &v48, v39, v40);
    v42 = v48;

    if (v41)
    {
      v43 = sub_2559B96C0(v29, v41, podcastCopy, error);
    }

    else
    {
      v46 = sub_2559B95D0(v42, podcastCopy);
      if (error && v46)
      {
        v46 = v46;
        *error = v46;
      }

      v41 = 0;
      v43 = 0;
    }
  }

  else
  {
    v44 = sub_2559B95D0(v30, podcastCopy);
    v41 = v44;
    v43 = 0;
    if (error && v44)
    {
      v45 = v44;
      v43 = 0;
      *error = v41;
    }

    v42 = v30;
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(&v65, 8);

  return v43;
}

+ (id)_convertFromKVItemType_CalendarEvent:(id)event error:(id *)error
{
  eventCopy = event;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_2559B7298;
  v48 = sub_2559B72A8;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_2559B7298;
  v42 = sub_2559B72A8;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2559BC354;
  v37[3] = &unk_279803E70;
  v37[4] = &v44;
  v37[5] = &v38;
  objc_msgSend_enumerateFieldsUsingBlock_(eventCopy, v6, v37, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D20F40]);
  v11 = v45[5];
  v12 = v39[5];
  v36 = 0;
  v15 = objc_msgSend_initWithTitle_locationName_error_(v10, v13, v11, v12, &v36, v14);
  v16 = v36;
  v17 = v16;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x277D20F48]);
    v24 = objc_msgSend_itemId(eventCopy, v19, v20, v21, v22, v23);
    v35 = v17;
    v28 = objc_msgSend_initWithSourceItemIdentifier_error_(v18, v25, v24, &v35, v26, v27);
    v29 = v35;

    if (v28)
    {
      v30 = sub_2559B96C0(v15, v28, eventCopy, error);
    }

    else
    {
      v33 = sub_2559B95D0(v29, eventCopy);
      if (error && v33)
      {
        v33 = v33;
        *error = v33;
      }

      v28 = 0;
      v30 = 0;
    }
  }

  else
  {
    v31 = sub_2559B95D0(v16, eventCopy);
    v28 = v31;
    v30 = 0;
    if (error && v31)
    {
      v32 = v31;
      v30 = 0;
      *error = v28;
    }

    v29 = v17;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v30;
}

+ (id)_convertFromKVItemType_LocationOfInterest:(id)interest error:(id *)error
{
  interestCopy = interest;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_2559B7298;
  v85 = sub_2559B72A8;
  v86 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_2559B7298;
  v79 = sub_2559B72A8;
  v80 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_2559B7298;
  v73 = sub_2559B72A8;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_2559B7298;
  v67 = sub_2559B72A8;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_2559B7298;
  v61 = sub_2559B72A8;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_2559B7298;
  v55 = sub_2559B72A8;
  v56 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v50[3] = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_2559BC8CC;
  v45[3] = byte_279803E48;
  v45[4] = v50;
  v45[5] = &v81;
  v45[6] = &v75;
  v45[7] = &v46;
  v45[8] = &v69;
  v45[9] = &v63;
  v45[10] = &v57;
  v45[11] = &v51;
  objc_msgSend_enumerateFieldsUsingBlock_(interestCopy, byte_279803E48, v45, v6, v7, v8);
  if (v47[3])
  {
    v9 = objc_alloc(MEMORY[0x277D21118]);
    v10 = v70[5];
    v11 = v64[5];
    v12 = v58[5];
    v13 = v52[5];
    v44 = 0;
    v15 = objc_msgSend_initWithThoroughfare_subLocality_locality_country_error_(v9, v14, v10, v11, v12, v13, &v44);
    v16 = v44;
    v17 = v16;
    if (!v15)
    {
      v18 = sub_2559B95D0(v16, interestCopy);
      v15 = v18;
      v19 = 0;
      if (error && v18)
      {
        v20 = v18;
        v19 = 0;
        *error = v15;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v21 = objc_alloc(MEMORY[0x277D21120]);
  v22 = v82[5];
  v23 = v76[5];
  v43 = v17;
  v25 = objc_msgSend_initWithPreferredName_mapItemName_address_error_(v21, v24, v22, v23, v15, &v43);
  v26 = v43;

  if (v25)
  {
    v27 = objc_alloc(MEMORY[0x277D21128]);
    v33 = objc_msgSend_itemId(interestCopy, v28, v29, v30, v31, v32);
    v42 = v26;
    v37 = objc_msgSend_initWithSourceItemIdentifier_error_(v27, v34, v33, &v42, v35, v36);
    v17 = v42;

    if (v37)
    {
      v19 = sub_2559B96C0(v25, v37, interestCopy, error);
    }

    else
    {
      v40 = sub_2559B95D0(v17, interestCopy);
      if (error && v40)
      {
        v40 = v40;
        *error = v40;
      }

      v37 = 0;
      v19 = 0;
    }
  }

  else
  {
    v38 = sub_2559B95D0(v26, interestCopy);
    v37 = v38;
    v19 = 0;
    if (error && v38)
    {
      v39 = v38;
      v19 = 0;
      *error = v37;
    }

    v17 = v26;
  }

LABEL_19:
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);

  return v19;
}

+ (id)_convertFromKVItemType_RadioEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_2559B7298;
  v66 = sub_2559B72A8;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_2559B7298;
  v60 = sub_2559B72A8;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_2559B7298;
  v54 = sub_2559B72A8;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_2559B7298;
  v48 = sub_2559B72A8;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2559BCD44;
  v39[3] = &unk_279803DD0;
  v39[4] = &v62;
  v39[5] = &v56;
  v39[6] = &v50;
  v39[7] = &v44;
  v39[8] = &v40;
  objc_msgSend_enumerateFieldsUsingBlock_(entityCopy, v6, v39, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D21108]);
  v11 = v63[5];
  v12 = v57[5];
  v13 = v51[5];
  v14 = v45[5];
  v15 = *(v41 + 6);
  v38 = 0;
  v17 = objc_msgSend_initWithName_callSign_frequency_channel_signalType_error_(v10, v16, v11, v12, v13, v14, v15, &v38);
  v18 = v38;
  v19 = v18;
  if (v17)
  {
    v20 = objc_alloc(MEMORY[0x277D21110]);
    v26 = objc_msgSend_itemId(entityCopy, v21, v22, v23, v24, v25);
    v37 = v19;
    v30 = objc_msgSend_initWithSourceItemIdentifier_error_(v20, v27, v26, &v37, v28, v29);
    v31 = v37;

    if (v30)
    {
      v32 = sub_2559B96C0(v17, v30, entityCopy, error);
    }

    else
    {
      v35 = sub_2559B95D0(v31, entityCopy);
      if (error && v35)
      {
        v35 = v35;
        *error = v35;
      }

      v30 = 0;
      v32 = 0;
    }
  }

  else
  {
    v33 = sub_2559B95D0(v18, entityCopy);
    v30 = v33;
    v32 = 0;
    if (error && v33)
    {
      v34 = v33;
      v32 = 0;
      *error = v30;
    }

    v31 = v19;
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);

  return v32;
}

+ (id)_convertFromKVItemType_AppShortcut:(id)shortcut error:(id *)error
{
  shortcutCopy = shortcut;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_2559B7298;
  v68 = sub_2559B72A8;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_2559B7298;
  v62 = sub_2559B72A8;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_2559B7298;
  v56 = sub_2559B72A8;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_2559B7298;
  v50 = sub_2559B72A8;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_2559B7298;
  v44 = sub_2559B72A8;
  v45 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2559BD260;
  v39[3] = &unk_279803DD0;
  v39[4] = &v64;
  v39[5] = &v58;
  v39[6] = &v52;
  v39[7] = &v46;
  v39[8] = &v40;
  objc_msgSend_enumerateFieldsUsingBlock_(shortcutCopy, v6, v39, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D20F20]);
  v11 = v65[5];
  v12 = v59[5];
  v13 = v53[5];
  v14 = v47[5];
  v15 = v41[5];
  v38 = 0;
  v17 = objc_msgSend_initWithEntityTitle_entityInstanceIdentifier_entityTypeIdentifier_providerClass_entitySynonyms_error_(v10, v16, v11, v12, v13, v14, v15, &v38);
  v18 = v38;
  v19 = v18;
  if (v17)
  {
    v20 = objc_alloc(MEMORY[0x277D20F28]);
    v26 = objc_msgSend_itemId(shortcutCopy, v21, v22, v23, v24, v25);
    v37 = v19;
    v30 = objc_msgSend_initWithSourceItemIdentifier_error_(v20, v27, v26, &v37, v28, v29);
    v31 = v37;

    if (v30)
    {
      v32 = sub_2559B96C0(v17, v30, shortcutCopy, error);
    }

    else
    {
      v35 = sub_2559B95D0(v31, shortcutCopy);
      if (error && v35)
      {
        v35 = v35;
        *error = v35;
      }

      v30 = 0;
      v32 = 0;
    }
  }

  else
  {
    v33 = sub_2559B95D0(v18, shortcutCopy);
    v30 = v33;
    v32 = 0;
    if (error && v33)
    {
      v34 = v33;
      v32 = 0;
      *error = v30;
    }

    v31 = v19;
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);

  return v32;
}

+ (id)_convertFromKVItemType_AutoShortcut:(id)shortcut error:(id *)error
{
  shortcutCopy = shortcut;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_2559B7298;
  v54 = sub_2559B72A8;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_2559B7298;
  v48 = sub_2559B72A8;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_2559B7298;
  v42 = sub_2559B72A8;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2559BD680;
  v37[3] = &unk_279803D80;
  v37[4] = &v50;
  v37[5] = &v44;
  v37[6] = &v38;
  objc_msgSend_enumerateFieldsUsingBlock_(shortcutCopy, v6, v37, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D20F30]);
  v11 = v51[5];
  v12 = v45[5];
  v13 = v39[5];
  v36 = 0;
  v15 = objc_msgSend_initWithPhrase_baseTemplate_templateParameterValue_error_(v10, v14, v11, v12, v13, &v36);
  v16 = v36;
  v17 = v16;
  if (v15)
  {
    v18 = objc_alloc(MEMORY[0x277D20F38]);
    v24 = objc_msgSend_itemId(shortcutCopy, v19, v20, v21, v22, v23);
    v35 = v17;
    v28 = objc_msgSend_initWithSourceItemIdentifier_error_(v18, v25, v24, &v35, v26, v27);
    v29 = v35;

    if (v28)
    {
      v30 = sub_2559B96C0(v15, v28, shortcutCopy, error);
    }

    else
    {
      v33 = sub_2559B95D0(v29, shortcutCopy);
      if (error && v33)
      {
        v33 = v33;
        *error = v33;
      }

      v28 = 0;
      v30 = 0;
    }
  }

  else
  {
    v31 = sub_2559B95D0(v16, shortcutCopy);
    v28 = v31;
    v30 = 0;
    if (error && v31)
    {
      v32 = v31;
      v30 = 0;
      *error = v28;
    }

    v29 = v17;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);

  return v30;
}

+ (id)_convertFromKVItemType_MediaEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_2559B7298;
  v67 = sub_2559B72A8;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_2559B7298;
  v61 = sub_2559B72A8;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_2559B7298;
  v55 = sub_2559B72A8;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_2559BDB00;
  v46[3] = &unk_279803DF8;
  v46[4] = &v51;
  v46[5] = &v57;
  v6 = MEMORY[0x259C45590](v46);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2559BDBD8;
  v40[3] = &unk_279803E20;
  v7 = v6;
  v41 = v7;
  v42 = &v47;
  v43 = &v69;
  v44 = &v63;
  v45 = &v51;
  objc_msgSend_enumerateFieldsUsingBlock_(entityCopy, v8, v40, v9, v10, v11);
  if (*(v48 + 24) == 1)
  {
    v12 = sub_2559B95D0(v52[5], entityCopy);
    v13 = v12;
    v14 = 0;
    if (error && v12)
    {
      v15 = v12;
      v14 = 0;
      *error = v13;
    }
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277D21070]);
    v17 = v64[5];
    v18 = *(v70 + 6);
    v19 = (v52 + 5);
    obj = v52[5];
    v13 = objc_msgSend_initWithEntity_entityType_error_(v16, v20, v17, v18, &obj, v21);
    objc_storeStrong(v19, obj);
    if (v13)
    {
      v22 = objc_alloc(MEMORY[0x277D21088]);
      v28 = objc_msgSend_itemId(entityCopy, v23, v24, v25, v26, v27);
      v29 = v58[5];
      v30 = (v52 + 5);
      v38 = v52[5];
      v33 = objc_msgSend_initWithSourceItemIdentifier_linkedIdentifiers_error_(v22, v31, v28, v29, &v38, v32);
      objc_storeStrong(v30, v38);

      if (v33)
      {
        v14 = sub_2559B96C0(v13, v33, entityCopy, error);
      }

      else
      {
        v36 = sub_2559B95D0(v52[5], entityCopy);
        if (error && v36)
        {
          v36 = v36;
          *error = v36;
        }

        v33 = 0;
        v14 = 0;
      }
    }

    else
    {
      v34 = sub_2559B95D0(v52[5], entityCopy);
      v33 = v34;
      v14 = 0;
      if (error && v34)
      {
        v35 = v34;
        v14 = 0;
        *error = v33;
      }
    }
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);

  return v14;
}

+ (id)_convertFromKVItemType_HomeEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_2559B7298;
  v53 = sub_2559B72A8;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_2559B7298;
  v47 = sub_2559B72A8;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_2559B7298;
  v41 = sub_2559B72A8;
  v42 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2559BE618;
  v36[3] = &unk_279803D58;
  v36[4] = &v55;
  v36[5] = &v49;
  v36[6] = &v37;
  v36[7] = &v43;
  objc_msgSend_enumerateFieldsUsingBlock_(entityCopy, v6, v36, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D20FE0]);
  v11 = v50[5];
  v12 = *(v56 + 6);
  v13 = (v38 + 5);
  obj = v38[5];
  v16 = objc_msgSend_initWithEntity_entityType_error_(v10, v14, v11, v12, &obj, v15);
  objc_storeStrong(v13, obj);
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277D20FE8]);
    v23 = objc_msgSend_itemId(entityCopy, v18, v19, v20, v21, v22);
    v24 = v44[5];
    v25 = (v38 + 5);
    v34 = v38[5];
    v28 = objc_msgSend_initWithSourceItemIdentifier_assistantHomeKitIdentifier_error_(v17, v26, v23, v24, &v34, v27);
    objc_storeStrong(v25, v34);

    if (v28)
    {
      v29 = sub_2559B96C0(v16, v28, entityCopy, error);
    }

    else
    {
      v32 = sub_2559B95D0(v38[5], entityCopy);
      if (error && v32)
      {
        v32 = v32;
        *error = v32;
      }

      v28 = 0;
      v29 = 0;
    }
  }

  else
  {
    v30 = sub_2559B95D0(v38[5], entityCopy);
    v28 = v30;
    v29 = 0;
    if (error && v30)
    {
      v31 = v30;
      v29 = 0;
      *error = v28;
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  return v29;
}

+ (id)_convertFromKVItemType_AppInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_2559B7298;
  v67 = sub_2559B72A8;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_2559B7298;
  v61 = sub_2559B72A8;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_2559B7298;
  v55 = sub_2559B72A8;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_2559B7298;
  v49 = sub_2559B72A8;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_2559B7298;
  v43 = sub_2559B72A8;
  v44 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2559BEDA4;
  v38[3] = &unk_279803DD0;
  v38[4] = &v63;
  v38[5] = &v57;
  v38[6] = &v51;
  v38[7] = &v39;
  v38[8] = &v45;
  objc_msgSend_enumerateFieldsUsingBlock_(infoCopy, v6, v38, v7, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D21040]);
  v11 = v64[5];
  v12 = v58[5];
  v13 = v52[5];
  v14 = v46[5];
  v37 = 0;
  v16 = objc_msgSend_initWithBundleIdentifier_bundleName_displayAppName_spokenName_alternativeAppNames_carPlayAlternativeDisplayName_spotlightName_providerName_error_(v10, v15, v11, v12, v13, 0, v14, 0, 0, 0, &v37);
  v17 = v37;
  v18 = v17;
  if (v16)
  {
    v19 = objc_alloc(MEMORY[0x277D21048]);
    v25 = objc_msgSend_itemId(infoCopy, v20, v21, v22, v23, v24);
    v26 = v40[5];
    v36 = v18;
    v29 = objc_msgSend_initWithSourceItemIdentifier_bundleVersion_error_(v19, v27, v25, v26, &v36, v28);
    v30 = v36;

    if (v29)
    {
      v31 = sub_2559B96C0(v16, v29, infoCopy, error);
    }

    else
    {
      v34 = sub_2559B95D0(v30, infoCopy);
      if (error && v34)
      {
        v34 = v34;
        *error = v34;
      }

      v29 = 0;
      v31 = 0;
    }
  }

  else
  {
    v32 = sub_2559B95D0(v17, infoCopy);
    v29 = v32;
    v31 = 0;
    if (error && v32)
    {
      v33 = v32;
      v31 = 0;
      *error = v29;
    }

    v30 = v18;
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);

  return v31;
}

+ (id)_convertFromKVItemType_Contact:(id)contact error:(id *)error
{
  contactCopy = contact;
  v182 = 0;
  v183 = &v182;
  v184 = 0x3032000000;
  v185 = sub_2559B7298;
  v186 = sub_2559B72A8;
  v187 = 0;
  v176 = 0;
  v177 = &v176;
  v178 = 0x3032000000;
  v179 = sub_2559B7298;
  v180 = sub_2559B72A8;
  v181 = 0;
  v170 = 0;
  v171 = &v170;
  v172 = 0x3032000000;
  v173 = sub_2559B7298;
  v174 = sub_2559B72A8;
  v175 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x3032000000;
  v167 = sub_2559B7298;
  v168 = sub_2559B72A8;
  v169 = 0;
  v158 = 0;
  v159 = &v158;
  v160 = 0x3032000000;
  v161 = sub_2559B7298;
  v162 = sub_2559B72A8;
  v163 = 0;
  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = sub_2559B7298;
  v156 = sub_2559B72A8;
  v157 = 0;
  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = sub_2559B7298;
  v150 = sub_2559B72A8;
  v151 = 0;
  v140 = 0;
  v141 = &v140;
  v142 = 0x3032000000;
  v143 = sub_2559B7298;
  v144 = sub_2559B72A8;
  v145 = 0;
  v134 = 0;
  v135 = &v134;
  v136 = 0x3032000000;
  v137 = sub_2559B7298;
  v138 = sub_2559B72A8;
  v139 = 0;
  v128 = 0;
  v129 = &v128;
  v130 = 0x3032000000;
  v131 = sub_2559B7298;
  v132 = sub_2559B72A8;
  v133 = 0;
  v122 = 0;
  v123 = &v122;
  v124 = 0x3032000000;
  v125 = sub_2559B7298;
  v126 = sub_2559B72A8;
  v127 = 0;
  v116 = 0;
  v117 = &v116;
  v118 = 0x3032000000;
  v119 = sub_2559B7298;
  v120 = sub_2559B72A8;
  v121 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = sub_2559B7298;
  v114 = sub_2559B72A8;
  v115 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = sub_2559B7298;
  v108 = sub_2559B72A8;
  v109 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = sub_2559B7298;
  v102 = sub_2559B72A8;
  v103 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = sub_2559B7298;
  v96 = sub_2559B72A8;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_2559B7298;
  v90 = sub_2559B72A8;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = sub_2559B7298;
  v84 = sub_2559B72A8;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_2559B7298;
  v78 = sub_2559B72A8;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_2559B7298;
  v72 = sub_2559B72A8;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_2559B7298;
  v66 = sub_2559B72A8;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_2559B7298;
  v60 = sub_2559B72A8;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_2559BFA00;
  v51[3] = &unk_279803DA8;
  v51[4] = &v182;
  v51[5] = &v176;
  v51[6] = &v170;
  v51[7] = &v164;
  v51[8] = &v158;
  v51[9] = &v152;
  v51[10] = &v146;
  v51[11] = &v56;
  v51[12] = &v52;
  v51[13] = &v140;
  v51[14] = &v134;
  v51[15] = &v128;
  v51[16] = &v122;
  v51[17] = &v116;
  v51[18] = &v110;
  v51[19] = &v104;
  v51[20] = &v98;
  v51[21] = &v92;
  v51[22] = &v86;
  v51[23] = &v80;
  v51[24] = &v74;
  v51[25] = &v68;
  v51[26] = &v62;
  objc_msgSend_enumerateFieldsUsingBlock_(contactCopy, &v128, v51, &v116, &v110, &v104);
  if (*(v53 + 24) == 1)
  {
    v6 = sub_2559B95D0(v57[5], contactCopy);
    v7 = v6;
    v8 = 0;
    if (error && v6)
    {
      v9 = v6;
      v8 = 0;
      *error = v7;
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277D20F50]);
    v11 = v183[5];
    v12 = v177[5];
    v13 = v171[5];
    v14 = v165[5];
    v15 = v159[5];
    v16 = v153[5];
    v17 = v147[5];
    v18 = v141[5];
    v19 = v135[5];
    v20 = v129[5];
    v21 = v123[5];
    v22 = v117[5];
    v23 = v111[5];
    v24 = v105[5];
    v25 = v99[5];
    v26 = v93[5];
    v27 = v87[5];
    v28 = v81[5];
    v29 = v75[5];
    v30 = v69[5];
    v31 = v63[5];
    v32 = (v57 + 5);
    obj = v57[5];
    v7 = objc_msgSend_initWithGivenName_middleName_familyName_previousFamilyName_nickname_namePrefix_nameSuffix_phoneNumbers_emailAddresses_postalAddresses_urlAddresses_socialProfiles_instantMessageAddresses_relations_organizationName_departmentName_jobTitle_phoneticGivenName_phoneticMiddleName_phoneticFamilyName_phoneticOrganizationName_note_birthday_nonGregorianBirthday_dates_error_(v10, v27, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, 0, 0, 0, 0, &obj);
    objc_storeStrong(v32, obj);
    if (v7)
    {
      v33 = objc_alloc(MEMORY[0x277D20F68]);
      v39 = objc_msgSend_itemId(contactCopy, v34, v35, v36, v37, v38);
      v40 = (v57 + 5);
      v49 = v57[5];
      v44 = objc_msgSend_initWithSourceItemIdentifier_error_(v33, v41, v39, &v49, v42, v43);
      objc_storeStrong(v40, v49);

      if (v44)
      {
        v8 = sub_2559B96C0(v7, v44, contactCopy, error);
      }

      else
      {
        v47 = sub_2559B95D0(v57[5], contactCopy);
        if (error && v47)
        {
          v47 = v47;
          *error = v47;
        }

        v44 = 0;
        v8 = 0;
      }
    }

    else
    {
      v45 = sub_2559B95D0(v57[5], contactCopy);
      v44 = v45;
      v8 = 0;
      if (error && v45)
      {
        v46 = v45;
        v8 = 0;
        *error = v44;
      }
    }
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v92, 8);

  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v104, 8);

  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v116, 8);

  _Block_object_dispose(&v122, 8);
  _Block_object_dispose(&v128, 8);

  _Block_object_dispose(&v134, 8);
  _Block_object_dispose(&v140, 8);

  _Block_object_dispose(&v146, 8);
  _Block_object_dispose(&v152, 8);

  _Block_object_dispose(&v158, 8);
  _Block_object_dispose(&v164, 8);

  _Block_object_dispose(&v170, 8);
  _Block_object_dispose(&v176, 8);

  _Block_object_dispose(&v182, 8);

  return v8;
}

+ (id)_convertFromKVItemType_GlobalTerm:(id)term error:(id *)error
{
  v65[1] = *MEMORY[0x277D85DE8];
  termCopy = term;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2050000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2050000000;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_2559B7298;
  v54 = sub_2559B72A8;
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2559C03AC;
  v49[3] = &unk_279803D80;
  v49[4] = &v60;
  v49[5] = &v56;
  v49[6] = &v50;
  objc_msgSend_enumerateFieldsUsingBlock_(termCopy, v6, v49, v7, v8, v9);
  v14 = v61[3];
  if (v14 && v57[3])
  {
    v15 = [v14 alloc];
    v16 = v51[5];
    v48 = 0;
    v20 = objc_msgSend_initWithVocabularyStrings_error_(v15, v17, v16, &v48, v18, v19);
    v21 = v48;
    v22 = v21;
    if (v20)
    {
      v23 = objc_alloc(v57[3]);
      v29 = objc_msgSend_itemId(termCopy, v24, v25, v26, v27, v28);
      v47 = v22;
      v33 = objc_msgSend_initWithSourceItemIdentifier_error_(v23, v30, v29, &v47, v31, v32);
      v34 = v47;

      if (v33)
      {
        v35 = sub_2559B96C0(v20, v33, termCopy, error);
      }

      else
      {
        v44 = sub_2559B95D0(v34, termCopy);
        if (error && v44)
        {
          v44 = v44;
          *error = v44;
        }

        v33 = 0;
        v35 = 0;
      }

      v22 = v34;
    }

    else
    {
      v42 = sub_2559B95D0(v21, termCopy);
      v33 = v42;
      v20 = 0;
      if (error && v42)
      {
        v43 = v42;
        v20 = 0;
        v35 = 0;
        *error = v33;
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    v36 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA068];
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"No supported conversion for CustomTerm KVItem: %@", v11, v12, v13, termCopy);
    v65[0] = v20;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v65, &v64, 1, v38);
    v41 = objc_msgSend_errorWithDomain_code_userInfo_(v36, v39, @"com.apple.koa.item.converter", 1, v33, v40);
    if (error && v41)
    {
      v41 = v41;
      *error = v41;
    }

    v22 = 0;
    v35 = 0;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  v45 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)_convertFromKVItemType_CustomTerm:(id)term error:(id *)error
{
  v71[1] = *MEMORY[0x277D85DE8];
  termCopy = term;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_2559B7298;
  v60 = sub_2559B72A8;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_2559B7298;
  v54 = sub_2559B72A8;
  v55 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2559C0840;
  v49[3] = &unk_279803D58;
  v49[4] = &v66;
  v49[5] = &v62;
  v49[6] = &v56;
  v49[7] = &v50;
  objc_msgSend_enumerateFieldsUsingBlock_(termCopy, v6, v49, v7, v8, v9);
  v14 = v67[3];
  if (v14 && v63[3])
  {
    v15 = [v14 alloc];
    v16 = v57[5];
    v17 = v51[5];
    v48 = 0;
    v20 = objc_msgSend_initWithVocabularyString_vocabularyIdentifier_error_(v15, v18, v16, v17, &v48, v19);
    v21 = v48;
    v22 = v21;
    if (v20)
    {
      v23 = objc_alloc(v63[3]);
      v29 = objc_msgSend_itemId(termCopy, v24, v25, v26, v27, v28);
      v47 = v22;
      v33 = objc_msgSend_initWithSourceItemIdentifier_error_(v23, v30, v29, &v47, v31, v32);
      v34 = v47;

      if (v33)
      {
        v35 = sub_2559B96C0(v20, v33, termCopy, error);
      }

      else
      {
        v44 = sub_2559B95D0(v34, termCopy);
        if (error && v44)
        {
          v44 = v44;
          *error = v44;
        }

        v33 = 0;
        v35 = 0;
      }

      v22 = v34;
    }

    else
    {
      v42 = sub_2559B95D0(v21, termCopy);
      v33 = v42;
      v20 = 0;
      if (error && v42)
      {
        v43 = v42;
        v20 = 0;
        v35 = 0;
        *error = v33;
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    v36 = MEMORY[0x277CCA9B8];
    v70 = *MEMORY[0x277CCA068];
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"No supported conversion for CustomTerm KVItem: %@", v11, v12, v13, termCopy);
    v71[0] = v20;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v71, &v70, 1, v38);
    v41 = objc_msgSend_errorWithDomain_code_userInfo_(v36, v39, @"com.apple.koa.item.converter", 1, v33, v40);
    if (error && v41)
    {
      v41 = v41;
      *error = v41;
    }

    v22 = 0;
    v35 = 0;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);

  v45 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)cascadeItemFromItem:(id)item error:(id *)error
{
  v132[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_opt_class();
    v16 = objc_msgSend_itemType(itemCopy, v11, v12, v13, v14, v15);
    v26 = objc_msgSend_cascadeItemTypeFromItemType_(v10, v17, v16, v18, v19, v20);
    if (v26 == *MEMORY[0x277CF94A8])
    {
      v27 = objc_msgSend_itemType(itemCopy, v21, v22, v23, v24, v25);
      if (v27 == 14)
      {
        v54 = objc_opt_class();
        v32 = objc_msgSend__convertFromKVItemType_GlobalTerm_error_(v54, v55, itemCopy, error, v56, v57);
        goto LABEL_30;
      }

      if (v27 == 1)
      {
        v28 = objc_opt_class();
        v32 = objc_msgSend__convertFromKVItemType_CustomTerm_error_(v28, v29, itemCopy, error, v30, v31);
LABEL_30:
        v41 = v32;
        goto LABEL_31;
      }
    }

    if (v26 <= 36433)
    {
      if (v26 <= 15756)
      {
        if (v26 > 12009)
        {
          if (v26 == 12010)
          {
            v84 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_AutoShortcut_error_(v84, v85, itemCopy, error, v86, v87);
            goto LABEL_30;
          }

          if (v26 == 12996)
          {
            v64 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_Health_error_(v64, v65, itemCopy, error, v66, v67);
            goto LABEL_30;
          }
        }

        else
        {
          if (v26 == 7690)
          {
            v80 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_HomeEntity_error_(v80, v81, itemCopy, error, v82, v83);
            goto LABEL_30;
          }

          if (v26 == 7822)
          {
            v60 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_AppShortcut_error_(v60, v61, itemCopy, error, v62, v63);
            goto LABEL_30;
          }
        }
      }

      else if (v26 <= 18539)
      {
        if (v26 == 15757)
        {
          v104 = objc_opt_class();
          v32 = objc_msgSend__convertFromKVItemType_LocationOfInterest_error_(v104, v105, itemCopy, error, v106, v107);
          goto LABEL_30;
        }

        if (v26 == 17034)
        {
          v68 = objc_opt_class();
          v32 = objc_msgSend__convertFromKVItemType_HomeServiceArea_error_(v68, v69, itemCopy, error, v70, v71);
          goto LABEL_30;
        }
      }

      else
      {
        switch(v26)
        {
          case 18540:
            v92 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_MediaEntity_error_(v92, v93, itemCopy, error, v94, v95);
            goto LABEL_30;
          case 19668:
            v88 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_Contact_error_(v88, v89, itemCopy, error, v90, v91);
            goto LABEL_30;
          case 27122:
            v46 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_FindMy_error_(v46, v47, itemCopy, error, v48, v49);
            goto LABEL_30;
        }
      }
    }

    else if (v26 > 53600)
    {
      if (v26 <= 54384)
      {
        if (v26 == 53601)
        {
          v120 = objc_opt_class();
          v32 = objc_msgSend__convertFromKVItemType_LearnedContact_error_(v120, v121, itemCopy, error, v122, v123);
          goto LABEL_30;
        }

        if (v26 == 53614)
        {
          v76 = objc_opt_class();
          v32 = objc_msgSend__convertFromKVItemType_Fitness_error_(v76, v77, itemCopy, error, v78, v79);
          goto LABEL_30;
        }
      }

      else
      {
        switch(v26)
        {
          case 54385:
            v112 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_CalendarEvent_error_(v112, v113, itemCopy, error, v114, v115);
            goto LABEL_30;
          case 61509:
            v100 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_UserAccount_error_(v100, v101, itemCopy, error, v102, v103);
            goto LABEL_30;
          case 62158:
            v50 = objc_opt_class();
            v32 = objc_msgSend__convertFromKVItemType_LearnedMediaEntity_error_(v50, v51, itemCopy, error, v52, v53);
            goto LABEL_30;
        }
      }
    }

    else if (v26 <= 42610)
    {
      if (v26 == 36434)
      {
        v116 = objc_opt_class();
        v32 = objc_msgSend__convertFromKVItemType_AppInfo_error_(v116, v117, itemCopy, error, v118, v119);
        goto LABEL_30;
      }

      if (v26 == 42184)
      {
        v72 = objc_opt_class();
        v32 = objc_msgSend__convertFromKVItemType_Podcast_error_(v72, v73, itemCopy, error, v74, v75);
        goto LABEL_30;
      }
    }

    else
    {
      switch(v26)
      {
        case 42611:
          v108 = objc_opt_class();
          v32 = objc_msgSend__convertFromKVItemType_AppIntentsEnum_error_(v108, v109, itemCopy, error, v110, v111);
          goto LABEL_30;
        case 47341:
          v96 = objc_opt_class();
          v32 = objc_msgSend__convertFromKVItemType_AppIntentsEntity_error_(v96, v97, itemCopy, error, v98, v99);
          goto LABEL_30;
        case 49066:
          v42 = objc_opt_class();
          v32 = objc_msgSend__convertFromKVItemType_RadioEntity_error_(v42, v43, itemCopy, error, v44, v45);
          goto LABEL_30;
      }
    }

    v124 = MEMORY[0x277CCA9B8];
    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"No supported conversion for KVItem: %@", v23, v24, v25, itemCopy, *MEMORY[0x277CCA068]);
    v130 = v34;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v125, &v130, &v129, 1, v126);
    objc_msgSend_errorWithDomain_code_userInfo_(v124, v127, @"com.apple.koa.item.converter", 1, v37, v128);
  }

  else
  {
    v33 = MEMORY[0x277CCA9B8];
    v131 = *MEMORY[0x277CCA068];
    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"Cannot convert invalid KVItem: %@", v7, v8, v9, itemCopy);
    v132[0] = v34;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v132, &v131, 1, v36);
    objc_msgSend_errorWithDomain_code_userInfo_(v33, v38, @"com.apple.koa.item.converter", 2, v37, v39);
  }
  v40 = ;
  if (error && v40)
  {
    v40 = v40;
    *error = v40;
  }

  v41 = 0;
LABEL_31:

  v58 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (unsigned)cascadeFieldTypeFromFieldType:(int64_t)type
{
  if (type > 299)
  {
    if (type > 899)
    {
      if (type > 1099)
      {
        if (type <= 1149)
        {
          if (type <= 1102)
          {
            if (type == 1100)
            {
              return -18182;
            }

            if (type == 1101)
            {
              return -18184;
            }

            return -18183;
          }

          switch(type)
          {
            case 1103:
              return -18189;
            case 1104:
              return -18188;
            case 1105:
              return -18187;
          }
        }

        else
        {
          if (type <= 1152)
          {
            if (type == 1150)
            {
              return -22924;
            }

            if (type == 1151)
            {
              return -22915;
            }

            return -22914;
          }

          if (type <= 1154)
          {
            if (type == 1153)
            {
              return -22919;
            }

            else
            {
              return -22918;
            }
          }

          if (type == 1155)
          {
            return -22917;
          }

          if (type == 1156)
          {
            return -22916;
          }
        }
      }

      else if (type <= 1000)
      {
        if (type > 950)
        {
          switch(type)
          {
            case 951:
              return 27131;
            case 952:
              return 27132;
            case 1000:
              return -11931;
          }
        }

        else
        {
          switch(type)
          {
            case 900:
              return -4024;
            case 901:
              return -4023;
            case 950:
              return 27126;
          }
        }
      }

      else if (type <= 1051)
      {
        switch(type)
        {
          case 1001:
            return -11932;
          case 1050:
            return -3377;
          case 1051:
            return -3376;
        }
      }

      else
      {
        if (type <= 1053)
        {
          if (type == 1052)
          {
            return -3375;
          }

          else
          {
            return -3373;
          }
        }

        if (type == 1054)
        {
          return -3374;
        }

        if (type == 1055)
        {
          return -3372;
        }
      }
    }

    else if (type > 649)
    {
      if (type <= 799)
      {
        if (type > 700)
        {
          switch(type)
          {
            case 701:
              return -23346;
            case 702:
              return -23348;
            case 750:
              return -11919;
          }
        }

        else
        {
          switch(type)
          {
            case 650:
              return -11148;
            case 651:
              return -11147;
            case 700:
              return -23347;
          }
        }
      }

      else
      {
        if (type <= 802)
        {
          if (type == 800)
          {
            return 7826;
          }

          if (type == 801)
          {
            return 7825;
          }

          return 7827;
        }

        if (type > 849)
        {
          if (type == 850)
          {
            return 12999;
          }

          if (type == 851)
          {
            return 13000;
          }
        }

        else
        {
          if (type == 803)
          {
            return 7828;
          }

          if (type == 804)
          {
            return 7830;
          }
        }
      }
    }

    else if (type <= 353)
    {
      if (type > 350)
      {
        if (type == 351)
        {
          return -16467;
        }

        if (type == 352)
        {
          return -16466;
        }

        return -16465;
      }

      switch(type)
      {
        case 300:
          return 12013;
        case 301:
          return 12014;
        case 302:
          return 12015;
      }
    }

    else if (type <= 600)
    {
      switch(type)
      {
        case 354:
          return -16464;
        case 355:
          return -16463;
        case 600:
          return -31224;
      }
    }

    else
    {
      if (type <= 602)
      {
        if (type == 601)
        {
          return 3620;
        }

        else
        {
          return 8199;
        }
      }

      if (type == 603)
      {
        return 14030;
      }

      if (type == 604)
      {
        return -29472;
      }
    }

    return *MEMORY[0x277CF94A8];
  }

  result = -4181;
  switch(type)
  {
    case 1:
      return result;
    case 2:
      result = -2164;
      break;
    case 3:
      result = 13887;
      break;
    case 4:
      result = -12051;
      break;
    case 5:
      result = -20598;
      break;
    case 6:
      result = 14819;
      break;
    case 7:
      result = 803;
      break;
    case 8:
      result = 16254;
      break;
    case 9:
      result = 25886;
      break;
    case 10:
      result = 26515;
      break;
    case 11:
      result = 5598;
      break;
    case 12:
      result = -32568;
      break;
    case 13:
      result = 7722;
      break;
    case 14:
      result = 14709;
      break;
    case 15:
      result = -27282;
      break;
    case 16:
      result = 15575;
      break;
    case 17:
      result = 30601;
      break;
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      return *MEMORY[0x277CF94A8];
    case 50:
      result = 19679;
      break;
    case 51:
      result = 19680;
      break;
    case 52:
      result = 19681;
      break;
    case 53:
      result = 19682;
      break;
    case 54:
      result = 19683;
      break;
    case 55:
      result = 19684;
      break;
    case 56:
      result = 19685;
      break;
    case 57:
      result = 19747;
      break;
    case 58:
      result = 19765;
      break;
    case 59:
      result = 19749;
      break;
    case 60:
      result = 19767;
      break;
    case 61:
      result = 19760;
      break;
    case 62:
      result = 19744;
      break;
    case 63:
      result = 19758;
      break;
    case 64:
      result = 19693;
      break;
    case 65:
      result = 19694;
      break;
    case 66:
      result = 19695;
      break;
    case 67:
      result = 19696;
      break;
    case 68:
      result = 19697;
      break;
    case 69:
      result = 19698;
      break;
    case 70:
      result = 19699;
      break;
    case 100:
      result = -29099;
      break;
    case 101:
      result = -29098;
      break;
    case 102:
      result = -29097;
      break;
    case 103:
      result = -29090;
      break;
    case 104:
      result = -29095;
      break;
    default:
      switch(type)
      {
        case 150:
          result = 7701;
          break;
        case 151:
          result = 7710;
          break;
        case 152:
          result = 7704;
          break;
        case 153:
          result = 7706;
          break;
        case 154:
          result = 7708;
          break;
        case 155:
          result = 7705;
          break;
        case 156:
          result = 7709;
          break;
        case 157:
          result = 7702;
          break;
        case 158:
          result = 7700;
          break;
        case 170:
          result = 17037;
          break;
        case 171:
          result = 17038;
          break;
        case 172:
          result = 17039;
          break;
        case 173:
          result = 17041;
          break;
        case 174:
          result = 17042;
          break;
        case 175:
          result = 17035;
          break;
        case 201:
        case 203:
        case 205:
        case 207:
        case 209:
        case 211:
        case 213:
        case 215:
        case 225:
        case 227:
        case 229:
        case 231:
          result = 18567;
          break;
        case 202:
          result = 18556;
          break;
        case 204:
          result = 18555;
          break;
        case 206:
          result = 18558;
          break;
        case 208:
          result = 18557;
          break;
        case 210:
          result = 18559;
          break;
        case 212:
          result = 18560;
          break;
        case 214:
          result = 18561;
          break;
        case 216:
          result = 18562;
          break;
        case 226:
          result = 18564;
          break;
        case 228:
          result = 18563;
          break;
        case 230:
          result = 18565;
          break;
        case 232:
          result = 18566;
          break;
        default:
          return *MEMORY[0x277CF94A8];
      }

      break;
  }

  return result;
}

+ (int64_t)fieldTypeFromCascadeFieldType:(unsigned __int16)type
{
  if (type > 19746)
  {
    if (type <= 42621)
    {
      if (type <= 34311)
      {
        if (type > 26514)
        {
          if (type > 27131)
          {
            switch(type)
            {
              case 0x69FCu:
                return 952;
              case 0x7789u:
                return 17;
              case 0x80C8u:
                return 12;
            }
          }

          else
          {
            switch(type)
            {
              case 0x6793u:
                return 10;
              case 0x69F6u:
                return 950;
              case 0x69FBu:
                return 951;
            }
          }

          return 0;
        }

        if (type > 19758)
        {
          if (type != 19759)
          {
            if (type == 19765)
            {
              return 58;
            }

            if (type == 25886)
            {
              return 9;
            }

            return 0;
          }
        }

        else
        {
          if (type == 19747)
          {
            return 57;
          }

          if (type == 19749)
          {
            return 59;
          }

          if (type != 19758)
          {
            return 0;
          }
        }

        return 63;
      }

      if (type <= 42188)
      {
        if (type > 36440)
        {
          switch(type)
          {
            case 0x8E59u:
              return 104;
            case 0x956Eu:
              return 15;
            case 0xA4CAu:
              return 702;
          }
        }

        else
        {
          switch(type)
          {
            case 0x8608u:
              return 600;
            case 0x8CE0u:
              return 604;
            case 0x8E57u:
              return 102;
          }
        }

        return 0;
      }

      if (type <= 42618)
      {
        switch(type)
        {
          case 0xA4CDu:
            return 700;
          case 0xA4CEu:
            return 701;
          case 0xA67Au:
            return 1154;
        }

        return 0;
      }

      if (type == 42619)
      {
        return 1155;
      }

      else if (type == 42620)
      {
        return 1156;
      }

      else
      {
        return 1151;
      }
    }

    else
    {
      if (type <= 53484)
      {
        if (type > 47352)
        {
          if (type > 49070)
          {
            switch(type)
            {
              case 0xBFAFu:
                return 353;
              case 0xBFB0u:
                return 354;
              case 0xBFB1u:
                return 355;
            }
          }

          else
          {
            switch(type)
            {
              case 0xB8F9u:
                return 1102;
              case 0xBFADu:
                return 351;
              case 0xBFAEu:
                return 352;
            }
          }
        }

        else if (type > 47347)
        {
          switch(type)
          {
            case 0xB8F4u:
              return 1104;
            case 0xB8F5u:
              return 1105;
            case 0xB8F8u:
              return 1101;
          }
        }

        else
        {
          switch(type)
          {
            case 0xA67Eu:
              return 1152;
            case 0xAF8Au:
              return 5;
            case 0xB8F3u:
              return 1103;
          }
        }

        return 0;
      }

      if (type <= 61511)
      {
        if (type > 54387)
        {
          switch(type)
          {
            case 0xD474u:
              return 650;
            case 0xD475u:
              return 651;
            case 0xEFABu:
              return 1;
          }
        }

        else
        {
          switch(type)
          {
            case 0xD0EDu:
              return 4;
            case 0xD164u:
              return 1001;
            case 0xD171u:
              return 750;
          }
        }

        return 0;
      }

      if (type <= 62159)
      {
        switch(type)
        {
          case 0xF048u:
            return 900;
          case 0xF049u:
            return 901;
          case 0xF2CFu:
            return 1050;
        }

        return 0;
      }

      if (type > 62161)
      {
        if (type == 62162)
        {
          return 1054;
        }

        if (type == 63372)
        {
          return 2;
        }

        return 0;
      }

      if (type == 62160)
      {
        return 1051;
      }

      else
      {
        return 1052;
      }
    }
  }

  else
  {
    if (type <= 15767)
    {
      if (type > 7721)
      {
        if (type > 12999)
        {
          if (type > 14708)
          {
            switch(type)
            {
              case 0x3975u:
                return 14;
              case 0x39E3u:
                return 6;
              case 0x3CD7u:
                return 16;
            }
          }

          else
          {
            switch(type)
            {
              case 0x32C8u:
                return 851;
              case 0x363Fu:
                return 3;
              case 0x36CEu:
                return 603;
            }
          }
        }

        else if (type > 8198)
        {
          switch(type)
          {
            case 0x2007u:
              return 602;
            case 0x2EEDu:
              return 300;
            case 0x32C7u:
              return 850;
          }
        }

        else
        {
          switch(type)
          {
            case 0x1E2Au:
              return 13;
            case 0x1E91u:
              return 801;
            case 0x1E96u:
              return 804;
          }
        }
      }

      else if (type > 7703)
      {
        if (type > 7707)
        {
          switch(type)
          {
            case 0x1E1Cu:
              return 154;
            case 0x1E1Du:
              return 156;
            case 0x1E1Eu:
              return 151;
          }
        }

        else
        {
          switch(type)
          {
            case 0x1E18u:
              return 152;
            case 0x1E19u:
              return 155;
            case 0x1E1Au:
              return 153;
          }
        }
      }

      else if (type > 7699)
      {
        switch(type)
        {
          case 0x1E14u:
            return 158;
          case 0x1E15u:
            return 150;
          case 0x1E16u:
            return 157;
        }
      }

      else
      {
        switch(type)
        {
          case 0x323u:
            return 7;
          case 0xE24u:
            return 601;
          case 0x15DEu:
            return 11;
        }
      }

      return 0;
    }

    if (type <= 18559)
    {
      if (type <= 16253)
      {
        if ((type - 15770) < 4)
        {
          return 552;
        }

        if ((type - 15768) < 2)
        {
          return 551;
        }

        return 0;
      }

      if (type <= 18556)
      {
        switch(type)
        {
          case 0x3F7Eu:
            return 8;
          case 0x487Bu:
            return 204;
          case 0x487Cu:
            return 202;
        }

        return 0;
      }

      if (type == 18557)
      {
        return 208;
      }

      else if (type == 18558)
      {
        return 206;
      }

      else
      {
        return 210;
      }
    }

    else
    {
      if (type > 18565)
      {
        if (type <= 19680)
        {
          switch(type)
          {
            case 0x4886u:
              return 232;
            case 0x4CDFu:
              return 50;
            case 0x4CE0u:
              return 51;
          }
        }

        else
        {
          if (type <= 19682)
          {
            if (type == 19681)
            {
              return 52;
            }

            else
            {
              return 53;
            }
          }

          if (type == 19683)
          {
            return 54;
          }

          if (type == 19693)
          {
            return 64;
          }
        }

        return 0;
      }

      if (type > 18562)
      {
        if (type == 18563)
        {
          return 228;
        }

        else if (type == 18564)
        {
          return 226;
        }

        else
        {
          return 230;
        }
      }

      else if (type == 18560)
      {
        return 212;
      }

      else if (type == 18561)
      {
        return 214;
      }

      else
      {
        return 216;
      }
    }
  }
}

+ (unsigned)cascadeItemTypeFromItemType:(int64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  result = 19668;
  switch(type)
  {
    case 0:
    case 1:
    case 6:
    case 7:
    case 10:
    case 11:
    case 13:
    case 14:
      goto LABEL_2;
    case 2:
      break;
    case 3:
      result = -29102;
      break;
    case 4:
      result = 7690;
      break;
    case 5:
      result = 18540;
      break;
    case 8:
      result = 12010;
      break;
    case 9:
      result = -16470;
      break;
    case 12:
      result = 15757;
      break;
    case 15:
      result = -11151;
      break;
    case 16:
      result = -23352;
      break;
    case 17:
      result = -11922;
      break;
    case 18:
      result = 7822;
      break;
    case 19:
      result = 12996;
      break;
    case 20:
      result = -4027;
      break;
    case 21:
      result = 27122;
      break;
    case 22:
      result = -11935;
      break;
    case 23:
      result = -3378;
      break;
    case 24:
      result = -18195;
      break;
    case 25:
      result = -22925;
      break;
    case 26:
      result = 17034;
      break;
    default:
      v6 = qword_28106B3C0;
      if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v13 = KVItemTypeDescription(type, v8, v9, v10, v11, v12);
        v14 = 136315394;
        v15 = "+[KVItemConverter cascadeItemTypeFromItemType:]";
        v16 = 2112;
        v17 = v13;
        _os_log_error_impl(&dword_2559A5000, v7, OS_LOG_TYPE_ERROR, "%s KVItemType: %@ has no valid Cascade item type mapping.", &v14, 0x16u);
      }

LABEL_2:
      result = *MEMORY[0x277CF94A8];
      break;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end