@interface IMPluginPayload
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualAttachmentFileURLsToPluginPayload:(id)a3;
- (BOOL)isEqualToPluginPayload:(id)a3;
- (BOOL)shouldHideAttachments;
- (CKContainerSetupInfo)containerSetupInfo;
- (IMBalloonPluginDataSource)datasource;
- (IMPluginPayload)initWithCoder:(id)a3 additionalAllowedClasses:(id)a4;
- (IMPluginPayload)initWithMessage:(id)a3;
- (IMPluginPayload)initWithMessageItem:(id)a3 chatContext:(id)a4;
- (NSString)pluginSessionGUID;
- (id)_transformPluginBundleIDIfNeeded:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)payloadDictionary;
- (unint64_t)hash;
- (void)acceptPurgedTransfers;
- (void)addAttachmentsFromFilePaths:(id)a3;
- (void)addAttachmentsFromFileTransferGUIDs:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setData:(id)a3;
- (void)setPluginBundleID:(id)a3;
@end

@implementation IMPluginPayload

- (IMPluginPayload)initWithMessage:(id)a3
{
  v4 = objc_msgSend__imMessageItem(a3, a2, a3);
  v6 = objc_msgSend_initWithMessageItem_(self, v5, v4);

  return v6;
}

- (IMPluginPayload)initWithMessageItem:(id)a3 chatContext:(id)a4
{
  v171[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v168.receiver = self;
  v168.super_class = IMPluginPayload;
  v10 = [(IMPluginPayload *)&v168 init];
  if (!v10)
  {
    goto LABEL_40;
  }

  v11 = objc_msgSend_guid(v6, v8, v9);
  messageGUID = v10->_messageGUID;
  v10->_messageGUID = v11;

  v15 = objc_msgSend_time(v6, v13, v14);
  time = v10->_time;
  v10->_time = v15;

  v19 = objc_msgSend_pluginSessionGUID(v6, v17, v18);
  pluginSessionGUID = v10->_pluginSessionGUID;
  v10->_pluginSessionGUID = v19;

  v23 = objc_msgSend_balloonBundleID(v6, v21, v22);
  v25 = objc_msgSend__transformPluginBundleIDIfNeeded_(v10, v24, v23);
  pluginBundleID = v10->_pluginBundleID;
  v10->_pluginBundleID = v25;

  v29 = objc_msgSend_body(v6, v27, v28);
  v32 = objc_msgSend__pluginPayloadURLFromIMMessageItemBody(v29, v30, v31);
  url = v10->_url;
  v153 = v10;
  v10->_url = v32;

  v158 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v36 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35);
  v39 = objc_msgSend_set(MEMORY[0x1E695DFA8], v37, v38);
  v155 = v7;
  v41 = objc_msgSend__newMessagePartsForMessageItem_chatContext_(IMMessagePartChatItem, v40, v6, v7);
  v44 = 0x1E780D000uLL;
  v156 = v6;
  if (v41)
  {
    v45 = v41;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v171[0] = v45;
      v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v46, v171, 1);

      v45 = v47;
    }

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    obj = v45;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v164, v170, 16);
    if (v49)
    {
      v50 = v49;
      v51 = *v165;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v165 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v164 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
            v57 = objc_msgSend_subject(v54, v55, v56);
            if (!v57)
            {
              v57 = objc_msgSend_text(v54, v58, v59);
              if (!v57)
              {
                goto LABEL_18;
              }
            }

            v60 = v57;
            objc_msgSend_appendAttributedString_(v158, v58, v57, v153);
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v54 = objc_msgSend_transferGUID(v53, v61, v62);
            v65 = objc_msgSend_sharedInstance(IMFileTransferCenter, v63, v64);
            v60 = objc_msgSend_transferForGUID_(v65, v66, v54);

            v69 = objc_msgSend_localURL(v60, v67, v68);

            if (v69)
            {
              objc_msgSend_addObject_(v39, v70, v54);
              v73 = objc_msgSend_localURL(v60, v71, v72);
              objc_msgSend_addObject_(v36, v74, v73);
            }
          }

LABEL_18:
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, &v164, v170, 16);
      }

      while (v50);
    }

    v6 = v156;
    v44 = 0x1E780D000;
  }

  else
  {
    obj = 0;
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v75 = objc_msgSend_fileTransferGUIDs(v6, v42, v43, v153);
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v160, v169, 16);
  if (!v77)
  {
    goto LABEL_37;
  }

  v79 = v77;
  v80 = *v161;
  do
  {
    v81 = 0;
    v157 = v79;
    do
    {
      if (*v161 != v80)
      {
        objc_enumerationMutation(v75);
      }

      v82 = *(*(&v160 + 1) + 8 * v81);
      if ((objc_msgSend_containsObject_(v39, v78, v82) & 1) == 0)
      {
        objc_msgSend_addObject_(v39, v78, v82);
        v85 = objc_msgSend_sharedInstance(*(v44 + 2496), v83, v84);
        v87 = objc_msgSend_transferForGUID_(v85, v86, v82);

        v90 = objc_msgSend_localURL(v87, v88, v89);
        if (v90)
        {
          goto LABEL_33;
        }

        v93 = objc_msgSend_localPath(v87, v91, v92);

        if (!v93)
        {
          goto LABEL_32;
        }

        v95 = MEMORY[0x1E695DFF8];
        objc_msgSend_localPath(v87, v91, v94);
        v96 = v80;
        v97 = v75;
        v98 = v39;
        v99 = v36;
        v101 = v100 = v44;
        v103 = objc_msgSend_fileURLWithPath_(v95, v102, v101);

        v44 = v100;
        v36 = v99;
        v39 = v98;
        v75 = v97;
        v80 = v96;
        v79 = v157;
        if (!v103)
        {
LABEL_32:
          v90 = objc_msgSend_null(MEMORY[0x1E695DFB0], v91, v94);
LABEL_33:
          v103 = v90;
        }

        objc_msgSend_addObject_(v36, v91, v103);
      }

      ++v81;
    }

    while (v79 != v81);
    v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v78, &v160, v169, 16);
  }

  while (v79);
LABEL_37:

  v10 = v154;
  objc_storeStrong(&v154->_text, v158);
  v6 = v156;
  v106 = objc_msgSend_breadcrumbText(v156, v104, v105);
  v109 = objc_msgSend_string(v106, v107, v108);
  breadcrumbText = v154->_breadcrumbText;
  v154->_breadcrumbText = v109;

  v113 = objc_msgSend_copy(v36, v111, v112);
  attachments = v154->_attachments;
  v154->_attachments = v113;

  v117 = objc_msgSend_payloadData(v156, v115, v116);
  v120 = objc_msgSend__FTOptionallyDecompressData(v117, v118, v119);
  data = v154->_data;
  v154->_data = v120;

  v154->_sticker = objc_msgSend_isSticker(v156, v122, v123);
  v126 = objc_msgSend_associatedMessageType(v156, v124, v125);
  v154->_customAcknowledgement = v126 == 4000;
  if (v126 == 4000)
  {
    v129 = objc_msgSend_associatedMessageGUID(v156, v127, v128);
    associatedMessageGUID = v154->_associatedMessageGUID;
    v154->_associatedMessageGUID = v129;

    v133 = objc_msgSend_pluginSessionGUID(v156, v131, v132);
    v134 = v154->_pluginSessionGUID;
    v154->_pluginSessionGUID = v133;
  }

  v154->_shouldExpire = objc_msgSend_isExpirable(v156, v127, v128);
  v137 = objc_msgSend_consumedSessionPayloads(v156, v135, v136);
  consumedSessionPayloads = v154->_consumedSessionPayloads;
  v154->_consumedSessionPayloads = v137;

  v154->_isFromMe = objc_msgSend_isFromMe(v156, v139, v140);
  v143 = objc_msgSend_sender(v156, v141, v142);
  sender = v154->_sender;
  v154->_sender = v143;

  v154->_isPlayed = objc_msgSend_isPlayed(v156, v145, v146);
  v149 = objc_msgSend_allObjects(v39, v147, v148);
  fileTransferGUIDs = v154->_fileTransferGUIDs;
  v154->_fileTransferGUIDs = v149;

  v7 = v155;
LABEL_40:

  v151 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)addAttachmentsFromFileTransferGUIDs:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v4;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v31, v35, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v32;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v31 + 1) + 8 * v17);
          v19 = objc_msgSend_sharedInstance(IMFileTransferCenter, v13, v14, v31);
          v21 = objc_msgSend_transferForGUID_(v19, v20, v18);

          if (v9)
          {
            v24 = objc_msgSend_localURL(v21, v22, v23);

            if (v24)
            {
              v27 = objc_msgSend_localURL(v21, v25, v26);
              CFArrayAppendValue(v9, v27);
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v31, v35, 16);
      }

      while (v15);
    }

    objc_msgSend_setAttachments_(self, v28, v9);
    objc_msgSend_setFileTransferGUIDs_(self, v29, v10);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqualAttachmentFileURLsToPluginPayload:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v8 = objc_msgSend_attachments(self, v6, v7);
  v10 = objc_msgSend_setWithArray_(v4, v9, v8);

  v11 = MEMORY[0x1E695DFD8];
  v14 = objc_msgSend_attachments(v5, v12, v13);

  v16 = objc_msgSend_setWithArray_(v11, v15, v14);

  LOBYTE(v5) = objc_msgSend_isEqualToSet_(v10, v17, v16);
  return v5;
}

- (void)acceptPurgedTransfers
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_fileTransferGUIDs;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v14, v18, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_msgSend_sharedInstance(IMFileTransferCenter, v5, v6, v14);
        objc_msgSend_acceptTransfer_(v11, v12, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v14, v18, 16);
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addAttachmentsFromFilePaths:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v4;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v25, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v13, *(*(&v21 + 1) + 8 * i), v21);
          v18 = v17;
          if (v9 && v17)
          {
            CFArrayAppendValue(v9, v17);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v21, v25, 16);
      }

      while (v14);
    }

    objc_msgSend_setAttachments_(self, v19, v9);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)_transformPluginBundleIDIfNeeded:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E69A6920];
  v5 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(v3, v6, v5);

  v8 = v3;
  if (isEqualToString)
  {
    v9 = *MEMORY[0x1E69A68E0];
    v8 = IMBalloonExtensionIDWithSuffix();
  }

  return v8;
}

- (void)setPluginBundleID:(id)a3
{
  if (self->_pluginBundleID != a3)
  {
    v5 = objc_msgSend__transformPluginBundleIDIfNeeded_(self, a2, a3);
    pluginBundleID = self->_pluginBundleID;
    self->_pluginBundleID = v5;

    MEMORY[0x1EEE66BB8](v5);
  }
}

- (void)setData:(id)a3
{
  v4 = objc_msgSend__FTOptionallyDecompressData(a3, a2, a3);
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4);
}

- (NSString)pluginSessionGUID
{
  pluginSessionGUID = self->_pluginSessionGUID;
  if (!pluginSessionGUID)
  {
    pluginSessionGUID = self->_messageGUID;
  }

  v3 = pluginSessionGUID;

  return v3;
}

- (BOOL)shouldHideAttachments
{
  v3 = objc_msgSend_data(self, a2, v2);
  v6 = objc_msgSend_length(v3, v4, v5) != 0;

  return v6;
}

- (CKContainerSetupInfo)containerSetupInfo
{
  collaborationMetadata = self->_collaborationMetadata;
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_containerSetupInfo(self->_collaborationMetadata, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToPluginPayload:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_text(self, v5, v6);
  v10 = objc_msgSend_text(v4, v8, v9);
  v11 = sub_1A8280928(v7, v10);

  if (!v11)
  {
    goto LABEL_44;
  }

  v14 = objc_msgSend_data(self, v12, v13);
  v17 = objc_msgSend_data(v4, v15, v16);
  v18 = sub_1A8280998(v14, v17);

  if (!v18)
  {
    goto LABEL_44;
  }

  v21 = objc_msgSend_generativePlaygroundRecipeData(self, v19, v20);
  v24 = objc_msgSend_generativePlaygroundRecipeData(v4, v22, v23);
  v25 = sub_1A8280998(v21, v24);

  if (!v25)
  {
    goto LABEL_44;
  }

  v28 = objc_msgSend_breadcrumbText(self, v26, v27);
  v31 = objc_msgSend_breadcrumbText(v4, v29, v30);
  v32 = sub_1A8280A08(v28, v31);

  if (!v32)
  {
    goto LABEL_44;
  }

  v35 = objc_msgSend_statusText(self, v33, v34);
  v38 = objc_msgSend_statusText(v4, v36, v37);
  v39 = sub_1A8280A08(v35, v38);

  if (!v39)
  {
    goto LABEL_44;
  }

  isUpdate = objc_msgSend_isUpdate(self, v40, v41);
  if (isUpdate != objc_msgSend_isUpdate(v4, v43, v44))
  {
    goto LABEL_44;
  }

  v47 = objc_msgSend_url(self, v45, v46);
  v50 = objc_msgSend_url(v4, v48, v49);
  v51 = sub_1A8280998(v47, v50);

  if (!v51)
  {
    goto LABEL_44;
  }

  v54 = objc_msgSend_userInfo(self, v52, v53);
  v57 = objc_msgSend_userInfo(v4, v55, v56);
  v58 = sub_1A8280A78(v54, v57);

  if (!v58)
  {
    goto LABEL_44;
  }

  v61 = objc_msgSend_messageGUID(self, v59, v60);
  v64 = objc_msgSend_messageGUID(v4, v62, v63);
  v65 = sub_1A8280A08(v61, v64);

  if (!v65)
  {
    goto LABEL_44;
  }

  v68 = objc_msgSend_associatedMessageGUID(self, v66, v67);
  v71 = objc_msgSend_associatedMessageGUID(v4, v69, v70);
  v72 = sub_1A8280A08(v68, v71);

  if (!v72)
  {
    goto LABEL_44;
  }

  v75 = objc_msgSend_pluginSessionGUID(self, v73, v74);
  v78 = objc_msgSend_pluginSessionGUID(v4, v76, v77);
  v79 = sub_1A8280A08(v75, v78);

  if (!v79)
  {
    goto LABEL_44;
  }

  v82 = objc_msgSend_pluginBundleID(self, v80, v81);
  v85 = objc_msgSend_pluginBundleID(v4, v83, v84);
  v86 = sub_1A8280A08(v82, v85);

  if (!v86)
  {
    goto LABEL_44;
  }

  v89 = objc_msgSend_attachments(self, v87, v88);
  v92 = objc_msgSend_attachments(v4, v90, v91);
  v93 = sub_1A8280AE8(v89, v92);

  if (!v93)
  {
    goto LABEL_44;
  }

  v96 = objc_msgSend_fileTransferGUIDs(self, v94, v95);
  v99 = objc_msgSend_fileTransferGUIDs(v4, v97, v98);
  v100 = sub_1A8280AE8(v96, v99);

  if (!v100)
  {
    goto LABEL_44;
  }

  isSticker = objc_msgSend_isSticker(self, v101, v102);
  if (isSticker != objc_msgSend_isSticker(v4, v104, v105))
  {
    goto LABEL_44;
  }

  isCustomAcknowledgement = objc_msgSend_isCustomAcknowledgement(self, v106, v107);
  if (isCustomAcknowledgement != objc_msgSend_isCustomAcknowledgement(v4, v109, v110))
  {
    goto LABEL_44;
  }

  shouldExpire = objc_msgSend_shouldExpire(self, v111, v112);
  if (shouldExpire != objc_msgSend_shouldExpire(v4, v114, v115))
  {
    goto LABEL_44;
  }

  v118 = objc_msgSend_sender(self, v116, v117);
  v121 = objc_msgSend_sender(v4, v119, v120);
  v122 = sub_1A8280A08(v118, v121);

  if (!v122)
  {
    goto LABEL_44;
  }

  v125 = objc_msgSend_isFromMe(self, v123, v124);
  if (v125 != objc_msgSend_isFromMe(v4, v126, v127))
  {
    goto LABEL_44;
  }

  isPlayed = objc_msgSend_isPlayed(self, v128, v129);
  if (isPlayed != objc_msgSend_isPlayed(v4, v131, v132))
  {
    goto LABEL_44;
  }

  v135 = objc_msgSend_payloadCollaborationType(self, v133, v134);
  if (v135 != objc_msgSend_payloadCollaborationType(v4, v136, v137))
  {
    goto LABEL_44;
  }

  v140 = objc_msgSend_sendAsCopy(self, v138, v139);
  if (v140 != objc_msgSend_sendAsCopy(v4, v141, v142))
  {
    goto LABEL_44;
  }

  v145 = objc_msgSend_sendAsCopyURL(self, v143, v144);
  v148 = objc_msgSend_sendAsCopyURL(v4, v146, v147);

  if (v145 != v148)
  {
    goto LABEL_44;
  }

  v151 = objc_msgSend_skipConfigurePlugin(self, v149, v150);
  if (v151 != objc_msgSend_skipConfigurePlugin(v4, v152, v153))
  {
    goto LABEL_44;
  }

  v156 = objc_msgSend_cloudKitShare(self, v154, v155);
  v159 = objc_msgSend_cloudKitShare(v4, v157, v158);
  v160 = sub_1A8280998(v156, v159);

  if (!v160)
  {
    goto LABEL_44;
  }

  v163 = objc_msgSend_containerSetupInfo(self, v161, v162);
  v166 = objc_msgSend_containerSetupInfo(v4, v164, v165);
  v167 = sub_1A8280998(v163, v166);

  if (!v167)
  {
    goto LABEL_44;
  }

  v170 = objc_msgSend_collaborationMetadata(self, v168, v169);
  v173 = objc_msgSend_collaborationMetadata(v4, v171, v172);
  v174 = sub_1A8280998(v170, v173);

  if (!v174)
  {
    goto LABEL_44;
  }

  v177 = objc_msgSend_collaborationMetadata(self, v175, v176);
  v180 = objc_msgSend_userSelectedShareOptions(v177, v178, v179);
  v183 = objc_msgSend_collaborationMetadata(v4, v181, v182);
  v186 = objc_msgSend_userSelectedShareOptions(v183, v184, v185);
  v187 = sub_1A8280998(v180, v186);

  if (!v187)
  {
    goto LABEL_44;
  }

  v190 = objc_msgSend_collaborationOptionsSummary(self, v188, v189);
  v193 = objc_msgSend_collaborationOptionsSummary(v4, v191, v192);
  v194 = sub_1A8280A08(v190, v193);

  if (!v194)
  {
    goto LABEL_44;
  }

  v197 = objc_msgSend_groupActivity(self, v195, v196);
  v200 = objc_msgSend_groupActivity(v4, v198, v199);
  v201 = sub_1A8280998(v197, v200);

  if (!v201)
  {
    goto LABEL_44;
  }

  v204 = objc_msgSend_time(self, v202, v203);
  v207 = objc_msgSend_time(v4, v205, v206);
  v208 = sub_1A8280998(v204, v207);

  if (!v208)
  {
    goto LABEL_44;
  }

  v211 = objc_msgSend_consumedSessionPayloads(self, v209, v210);
  v214 = objc_msgSend_consumedSessionPayloads(v4, v212, v213);
  v215 = v211;
  v216 = v214;
  v218 = v216;
  if (v215 == v216)
  {
  }

  else
  {
    if (!v215 || !v216)
    {

LABEL_44:
      LOBYTE(v249) = 0;
      goto LABEL_45;
    }

    isEqualToArray = objc_msgSend_isEqualToArray_(v215, v217, v216);

    if ((isEqualToArray & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v222 = objc_msgSend_threadIdentifier(self, v220, v221);
  v225 = objc_msgSend_threadIdentifier(v4, v223, v224);
  v226 = sub_1A8280998(v222, v225);

  if (!v226)
  {
    goto LABEL_44;
  }

  v229 = objc_msgSend_dataDetectedResult(self, v227, v228);
  v232 = objc_msgSend_dataDetectedResult(v4, v230, v231);
  v233 = sub_1A8280998(v229, v232);

  if (!v233)
  {
    goto LABEL_44;
  }

  shouldHideAttachments = objc_msgSend_shouldHideAttachments(self, v234, v235);
  if (shouldHideAttachments != objc_msgSend_shouldHideAttachments(v4, v237, v238))
  {
    goto LABEL_44;
  }

  v241 = objc_msgSend_supportsCollaboration(self, v239, v240);
  if (v241 != objc_msgSend_supportsCollaboration(v4, v242, v243))
  {
    goto LABEL_44;
  }

  v246 = objc_msgSend_liveEditableInEntryView(self, v244, v245);
  v249 = v246 ^ objc_msgSend_liveEditableInEntryView(v4, v247, v248) ^ 1;
LABEL_45:

  return v249;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_pluginBundleID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_data(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) + v7;
  v16 = objc_msgSend_generativePlaygroundRecipeData(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_url(self, v20, v21);
  v25 = v13 + v19 + objc_msgSend_hash(v22, v23, v24);
  v28 = objc_msgSend_messageGUID(self, v26, v27);
  v31 = objc_msgSend_hash(v28, v29, v30);

  return v25 + v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToPluginPayload = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToPluginPayload = objc_msgSend_isEqualToPluginPayload_(self, v5, v4);
    }

    else
    {
      isEqualToPluginPayload = 0;
    }
  }

  return isEqualToPluginPayload;
}

- (id)payloadDictionary
{
  v23[9] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v23[3] = objc_opt_class();
  v23[4] = objc_opt_class();
  v23[5] = objc_opt_class();
  v23[6] = objc_opt_class();
  v23[7] = objc_opt_class();
  v23[8] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v23, 9);
  v7 = objc_msgSend_setWithArray_(v3, v6, v5);

  v8 = objc_opt_respondsToSelector();
  v9 = MEMORY[0x1E696ACD0];
  v13 = objc_msgSend_data(self, v10, v11);
  if (v8)
  {
    v22 = 0;
    v14 = &v22;
    v15 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v9, v12, v7, v13, &v22);
  }

  else
  {
    v21 = 0;
    v14 = &v21;
    v15 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v9, v12, v7, v13, &v21);
  }

  v16 = v15;
  v17 = *v14;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v108 = a3;
  v6 = objc_msgSend_text(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(v108, v7, v6, @"IMPLUGIN_TEXT_KEY");

  v10 = objc_msgSend_data(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(v108, v11, v10, @"IMPLUGIN_DATA_KEY");

  v14 = objc_msgSend_url(self, v12, v13);
  objc_msgSend_encodeObject_forKey_(v108, v15, v14, @"IMPLUGIN_URL_KEY");

  v18 = objc_msgSend_breadcrumbText(self, v16, v17);
  objc_msgSend_encodeObject_forKey_(v108, v19, v18, @"IMPLUGIN_BREADCRUMBTEXT_KEY");

  v22 = objc_msgSend_statusText(self, v20, v21);
  objc_msgSend_encodeObject_forKey_(v108, v23, v22, @"IMPLUGIN_STATUSTEXT_KEY");

  isUpdate = objc_msgSend_isUpdate(self, v24, v25);
  objc_msgSend_encodeBool_forKey_(v108, v27, isUpdate, @"IMPLUGIN_UPDATE_KEY");
  v30 = objc_msgSend_userInfo(self, v28, v29);
  objc_msgSend_encodeObject_forKey_(v108, v31, v30, @"IMPLUGIN_USERINFO_KEY");

  v34 = objc_msgSend_messageGUID(self, v32, v33);
  objc_msgSend_encodeObject_forKey_(v108, v35, v34, @"IMPLUGIN_MESSAGEGUID_KEY");

  v38 = objc_msgSend_associatedMessageGUID(self, v36, v37);
  objc_msgSend_encodeObject_forKey_(v108, v39, v38, @"IMPLUGIN_ASSOCIATEDMESSAGEGUID_KEY");

  v42 = objc_msgSend_pluginSessionGUID(self, v40, v41);
  objc_msgSend_encodeObject_forKey_(v108, v43, v42, @"IMPLUGIN_PLUGINSESSIONGUID_KEY");

  v46 = objc_msgSend_pluginBundleID(self, v44, v45);
  objc_msgSend_encodeObject_forKey_(v108, v47, v46, @"IMPLUGIN_PLUGINBUNDLEID_KEY");

  v50 = objc_msgSend_attachments(self, v48, v49);
  objc_msgSend_encodeObject_forKey_(v108, v51, v50, @"IMPLUGIN_ATTACHMENTS_KEY");

  v54 = objc_msgSend_fileTransferGUIDs(self, v52, v53);
  objc_msgSend_encodeObject_forKey_(v108, v55, v54, @"IMPLUGIN_TRANSFERGUIDS_KEY");

  shouldExpire = objc_msgSend_shouldExpire(self, v56, v57);
  objc_msgSend_encodeBool_forKey_(v108, v59, shouldExpire, @"IMPLUGIN_SHOULD_EXPIRE_KEY");
  isSticker = objc_msgSend_isSticker(self, v60, v61);
  objc_msgSend_encodeBool_forKey_(v108, v63, isSticker, @"IMPLUGIN_IS_STICKER_KEY");
  isCustomAcknowledgement = objc_msgSend_isCustomAcknowledgement(self, v64, v65);
  objc_msgSend_encodeBool_forKey_(v108, v67, isCustomAcknowledgement, @"IMPLUGIN_IS_CUSTOM_ACKNOWLEDGEMENT_KEY");
  v70 = objc_msgSend_isFromMe(self, v68, v69);
  objc_msgSend_encodeBool_forKey_(v108, v71, v70, @"IMPLUGIN_IS_FROM_ME");
  v74 = objc_msgSend_sender(self, v72, v73);
  objc_msgSend_encodeObject_forKey_(v108, v75, v74, @"IMPLUGIN_SENDER");

  v78 = objc_msgSend_cloudKitShare(self, v76, v77);
  objc_msgSend_encodeObject_forKey_(v108, v79, v78, @"IMPLUGIN_CKSHARE");

  isPlayed = objc_msgSend_isPlayed(self, v80, v81);
  objc_msgSend_encodeBool_forKey_(v108, v83, isPlayed, @"IMPLUGIN_IS_PLAYED");
  v86 = objc_msgSend_payloadCollaborationType(self, v84, v85);
  objc_msgSend_encodeInteger_forKey_(v108, v87, v86, @"IMPLUGIN_COLLABORATION_TYPE");
  v90 = objc_msgSend_collaborationMetadata(self, v88, v89);
  objc_msgSend_encodeObject_forKey_(v108, v91, v90, @"IMPLUGIN_PLUGIN_COLLABORATIONMETADATA_KEY");

  v94 = objc_msgSend_collaborationOptionsSummary(self, v92, v93);
  objc_msgSend_encodeObject_forKey_(v108, v95, v94, @"IMPLUGIN_PLUGIN_COLLABORATIONOPTIONSSUMMARY_KEY");

  v98 = objc_msgSend_skipConfigurePlugin(self, v96, v97);
  objc_msgSend_encodeBool_forKey_(v108, v99, v98, @"IMPLUGIN_SKIPCONFIGURATION_KEY");
  v102 = objc_msgSend_sendAsCopyURL(self, v100, v101);
  objc_msgSend_encodeObject_forKey_(v108, v103, v102, @"IMPLUGIN_SENDASCOPYURL_KEY");

  v106 = objc_msgSend_sendAsCopy(self, v104, v105);
  objc_msgSend_encodeBool_forKey_(v108, v107, v106, @"IMPLUGIN_SENDASCOPY_KEY");
}

- (IMPluginPayload)initWithCoder:(id)a3 additionalAllowedClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v116.receiver = self;
  v116.super_class = IMPluginPayload;
  v8 = [(IMPluginPayload *)&v116 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DFA8]);
    v10 = objc_opt_class();
    v11 = v7;
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v115 = v12;
    v7 = v11;
    v19 = objc_msgSend_initWithObjects_(v9, v18, v10, v115, v13, v14, v15, v16, v17, 0);
    v21 = v19;
    if (v11)
    {
      objc_msgSend_unionSet_(v19, v20, v11);
    }

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v23, v22, @"IMPLUGIN_TEXT_KEY");
    objc_msgSend_setText_(v8, v25, v24);

    v26 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v27, v26, @"IMPLUGIN_DATA_KEY");
    objc_msgSend_setData_(v8, v29, v28);

    v30 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v31, v30, @"IMPLUGIN_GENERATIVE_PLAYGROUND_RECIPE_DATA_KEY");
    objc_msgSend_setGenerativePlaygroundRecipeData_(v8, v33, v32);

    v34 = objc_opt_class();
    v36 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v35, v34, @"IMPLUGIN_URL_KEY");
    objc_msgSend_setUrl_(v8, v37, v36);

    v38 = objc_opt_class();
    v40 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v39, v38, @"IMPLUGIN_BREADCRUMBTEXT_KEY");
    objc_msgSend_setBreadcrumbText_(v8, v41, v40);

    v42 = objc_opt_class();
    v44 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v43, v42, @"IMPLUGIN_STATUSTEXT_KEY");
    objc_msgSend_setStatusText_(v8, v45, v44);

    v47 = objc_msgSend_decodeBoolForKey_(v6, v46, @"IMPLUGIN_UPDATE_KEY");
    objc_msgSend_setUpdate_(v8, v48, v47);
    v50 = objc_msgSend_decodeObjectOfClasses_forKey_(v6, v49, v21, @"IMPLUGIN_USERINFO_KEY");
    objc_msgSend_setUserInfo_(v8, v51, v50);

    v52 = objc_opt_class();
    v54 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v53, v52, @"IMPLUGIN_MESSAGEGUID_KEY");
    objc_msgSend_setMessageGUID_(v8, v55, v54);

    v56 = objc_opt_class();
    v58 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v57, v56, @"IMPLUGIN_ASSOCIATEDMESSAGEGUID_KEY");
    objc_msgSend_setAssociatedMessageGUID_(v8, v59, v58);

    v60 = objc_opt_class();
    v62 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v61, v60, @"IMPLUGIN_PLUGINSESSIONGUID_KEY");
    objc_msgSend_setPluginSessionGUID_(v8, v63, v62);

    v64 = objc_opt_class();
    v66 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v65, v64, @"IMPLUGIN_PLUGINBUNDLEID_KEY");
    objc_msgSend_setPluginBundleID_(v8, v67, v66);

    v69 = objc_msgSend_decodeObjectOfClasses_forKey_(v6, v68, v21, @"IMPLUGIN_ATTACHMENTS_KEY");
    objc_msgSend_setAttachments_(v8, v70, v69);

    v72 = objc_msgSend_decodeObjectOfClasses_forKey_(v6, v71, v21, @"IMPLUGIN_TRANSFERGUIDS_KEY");
    objc_msgSend_setFileTransferGUIDs_(v8, v73, v72);

    v75 = objc_msgSend_decodeBoolForKey_(v6, v74, @"IMPLUGIN_IS_STICKER_KEY");
    objc_msgSend_setSticker_(v8, v76, v75);
    v78 = objc_msgSend_decodeBoolForKey_(v6, v77, @"IMPLUGIN_SHOULD_EXPIRE_KEY");
    objc_msgSend_setShouldExpire_(v8, v79, v78);
    v81 = objc_msgSend_decodeBoolForKey_(v6, v80, @"IMPLUGIN_IS_FROM_ME");
    objc_msgSend_setIsFromMe_(v8, v82, v81);
    v84 = objc_msgSend_decodeBoolForKey_(v6, v83, @"IMPLUGIN_IS_CUSTOM_ACKNOWLEDGEMENT_KEY");
    objc_msgSend_setCustomAcknowledgement_(v8, v85, v84);
    v86 = objc_opt_class();
    v88 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v87, v86, @"IMPLUGIN_SENDER");
    objc_msgSend_setSender_(v8, v89, v88);

    v91 = objc_msgSend_decodeBoolForKey_(v6, v90, @"IMPLUGIN_IS_PLAYED");
    objc_msgSend_setIsPlayed_(v8, v92, v91);
    v94 = objc_msgSend_decodeIntegerForKey_(v6, v93, @"IMPLUGIN_COLLABORATION_TYPE");
    objc_msgSend_setPayloadCollaborationType_(v8, v95, v94);
    v96 = objc_opt_class();
    v98 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v97, v96, @"IMPLUGIN_PLUGIN_COLLABORATIONMETADATA_KEY");
    objc_msgSend_setCollaborationMetadata_(v8, v99, v98);

    v100 = objc_opt_class();
    v102 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v101, v100, @"IMPLUGIN_PLUGIN_COLLABORATIONOPTIONSSUMMARY_KEY");
    objc_msgSend_setCollaborationOptionsSummary_(v8, v103, v102);

    v105 = objc_msgSend_decodeBoolForKey_(v6, v104, @"IMPLUGIN_SKIPCONFIGURATION_KEY");
    objc_msgSend_setSkipConfigurePlugin_(v8, v106, v105);
    v107 = objc_opt_class();
    v109 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v108, v107, @"IMPLUGIN_SENDASCOPYURL_KEY");
    objc_msgSend_setSendAsCopyURL_(v8, v110, v109);

    v112 = objc_msgSend_decodeBoolForKey_(v6, v111, @"IMPLUGIN_SENDASCOPY_KEY");
    objc_msgSend_setSendAsCopy_(v8, v113, v112);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_text(self, v8, v9);
  objc_msgSend_setText_(v7, v11, v10);

  v14 = objc_msgSend_data(self, v12, v13);
  objc_msgSend_setData_(v7, v15, v14);

  v18 = objc_msgSend_generativePlaygroundRecipeData(self, v16, v17);
  objc_msgSend_setGenerativePlaygroundRecipeData_(v7, v19, v18);

  v22 = objc_msgSend_url(self, v20, v21);
  objc_msgSend_setUrl_(v7, v23, v22);

  v26 = objc_msgSend_breadcrumbText(self, v24, v25);
  objc_msgSend_setBreadcrumbText_(v7, v27, v26);

  v30 = objc_msgSend_statusText(self, v28, v29);
  objc_msgSend_setStatusText_(v7, v31, v30);

  isUpdate = objc_msgSend_isUpdate(self, v32, v33);
  objc_msgSend_setUpdate_(v7, v35, isUpdate);
  v38 = objc_msgSend_userInfo(self, v36, v37);
  objc_msgSend_setUserInfo_(v7, v39, v38);

  v42 = objc_msgSend_messageGUID(self, v40, v41);
  objc_msgSend_setMessageGUID_(v7, v43, v42);

  v46 = objc_msgSend_associatedMessageGUID(self, v44, v45);
  objc_msgSend_setAssociatedMessageGUID_(v7, v47, v46);

  v50 = objc_msgSend_pluginSessionGUID(self, v48, v49);
  objc_msgSend_setPluginSessionGUID_(v7, v51, v50);

  v54 = objc_msgSend_pluginBundleID(self, v52, v53);
  objc_msgSend_setPluginBundleID_(v7, v55, v54);

  v58 = objc_msgSend_attachments(self, v56, v57);
  objc_msgSend_setAttachments_(v7, v59, v58);

  v62 = objc_msgSend_fileTransferGUIDs(self, v60, v61);
  objc_msgSend_setFileTransferGUIDs_(v7, v63, v62);

  shouldExpire = objc_msgSend_shouldExpire(self, v64, v65);
  objc_msgSend_setShouldExpire_(v7, v67, shouldExpire);
  isSticker = objc_msgSend_isSticker(self, v68, v69);
  objc_msgSend_setSticker_(v7, v71, isSticker);
  isCustomAcknowledgement = objc_msgSend_isCustomAcknowledgement(self, v72, v73);
  objc_msgSend_setCustomAcknowledgement_(v7, v75, isCustomAcknowledgement);
  v78 = objc_msgSend_isFromMe(self, v76, v77);
  objc_msgSend_setIsFromMe_(v7, v79, v78);
  v82 = objc_msgSend_sender(self, v80, v81);
  objc_msgSend_setSender_(v7, v83, v82);

  isPlayed = objc_msgSend_isPlayed(self, v84, v85);
  objc_msgSend_setIsPlayed_(v7, v87, isPlayed);
  v90 = objc_msgSend_datasource(self, v88, v89);
  objc_msgSend_setDatasource_(v7, v91, v90);

  v94 = objc_msgSend_payloadCollaborationType(self, v92, v93);
  objc_msgSend_setPayloadCollaborationType_(v7, v95, v94);
  v98 = objc_msgSend_sendAsCopy(self, v96, v97);
  objc_msgSend_setSendAsCopy_(v7, v99, v98);
  v102 = objc_msgSend_skipConfigurePlugin(self, v100, v101);
  objc_msgSend_setSkipConfigurePlugin_(v7, v103, v102);
  v106 = objc_msgSend_cloudKitShare(self, v104, v105);
  objc_msgSend_setCloudKitShare_(v7, v107, v106);

  v110 = objc_msgSend_groupActivity(self, v108, v109);
  objc_msgSend_setGroupActivity_(v7, v111, v110);

  v114 = objc_msgSend_collaborationMetadata(self, v112, v113);
  objc_msgSend_setCollaborationMetadata_(v7, v115, v114);

  v118 = objc_msgSend_collaborationOptionsSummary(self, v116, v117);
  objc_msgSend_setCollaborationOptionsSummary_(v7, v119, v118);

  v122 = objc_msgSend_sendAsCopyURL(self, v120, v121);
  objc_msgSend_setSendAsCopyURL_(v7, v123, v122);

  v126 = objc_msgSend_liveEditableInEntryView(self, v124, v125);
  objc_msgSend_setLiveEditableInEntryView_(v7, v127, v126);
  return v7;
}

- (IMBalloonPluginDataSource)datasource
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);

  return WeakRetained;
}

@end