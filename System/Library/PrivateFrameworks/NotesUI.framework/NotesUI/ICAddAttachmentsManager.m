@interface ICAddAttachmentsManager
+ (id)sharedManager;
- (id)saveAttachmentsToNewNote:(id)a3 inFolder:(id)a4 isSystemPaper:(BOOL)a5 textBefore:(id)a6 textAfter:(id)a7;
- (unsigned)styleForTitleLength:(int64_t)a3;
- (void)saveAttachments:(id)a3 toNote:(id)a4 textBefore:(id)a5 textAfter:(id)a6 fetchFirst:(BOOL)a7;
@end

@implementation ICAddAttachmentsManager

+ (id)sharedManager
{
  if (sharedManager_once != -1)
  {
    +[ICAddAttachmentsManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __40__ICAddAttachmentsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(ICAddAttachmentsManager);
  sharedManager_sharedManager = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (id)saveAttachmentsToNewNote:(id)a3 inFolder:(id)a4 isSystemPaper:(BOOL)a5 textBefore:(id)a6 textAfter:(id)a7
{
  v9 = a5;
  v82 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (!v13)
  {
    v16 = MEMORY[0x1E69B7760];
    [MEMORY[0x1E69B7800] sharedContext];
    v18 = v17 = v15;
    [v18 managedObjectContext];
    v20 = v19 = v14;
    v13 = [v16 defaultFolderInContext:v20];

    v14 = v19;
    v15 = v17;
  }

  v21 = [MEMORY[0x1E69B77F0] newEmptyNoteInFolder:v13];
  v22 = v21;
  if (v9)
  {
    [v21 markAsSystemPaperIfNeeded:1];
  }

  [v22 updateChangeCountWithReason:@"Saved attachment to new note"];
  v76 = v15;
  if ([v14 length] || objc_msgSend(v15, "length"))
  {
    v23 = v22;
    v24 = v13;
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = [v14 string];
    v27 = -[ICAddAttachmentsManager styleForTitleLength:](self, "styleForTitleLength:", [v26 length]);

    v28 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:v27];
    [v25 setObject:v28 forKey:*MEMORY[0x1E69B7600]];

    v29 = MEMORY[0x1E69B7A90];
    v30 = [v14 string];
    v31 = [v29 rangeForTitleInContent:v30 truncated:0];
    v33 = v32;

    if (v31 != 0x7FFFFFFFFFFFFFFFLL && v31 + v33 <= [v14 length])
    {
      v34 = [v14 mutableCopy];
      [v34 addAttributes:v25 range:{v31, v33}];
      v35 = [v34 copy];

      v14 = v35;
    }

    v36 = v24;

    v37 = v23;
    v15 = v76;
    goto LABEL_11;
  }

  v71 = v14;
  v72 = v22;
  v73 = v13;
  v69 = self;
  v70 = v12;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v12;
  v39 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v39)
  {
    v75 = 0;
    v41 = 0;
LABEL_31:

    v59 = 0;
    v37 = v72;
    v36 = v73;
    v14 = v71;
    goto LABEL_34;
  }

  v40 = v39;
  v75 = 0;
  v41 = 0;
  v42 = *v78;
  v43 = *MEMORY[0x1E6982E30];
LABEL_16:
  v44 = 0;
  while (1)
  {
    if (*v78 != v42)
    {
      objc_enumerationMutation(obj);
    }

    v45 = *(*(&v77 + 1) + 8 * v44);
    v46 = [v45 attachment];
    v47 = [v46 title];
    v48 = [v47 length];

    if (v48)
    {
      v59 = [v45 attachment];
      v45 = v59;
      goto LABEL_33;
    }

    v49 = [v45 mediaUTI];
    if (!v49)
    {
      break;
    }

    v50 = v49;
    v51 = MEMORY[0x1E6982C40];
    v52 = [v45 mediaUTI];
    v53 = [v51 typeWithIdentifier:v52];
    v54 = [v53 conformsToType:v43];

    if (!v54)
    {
      break;
    }

    ++v75;
LABEL_26:
    if (v40 == ++v44)
    {
      v40 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
      v15 = v76;
      if (v40)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }
  }

  v55 = MEMORY[0x1E69B7680];
  v56 = [v45 mediaUTI];
  LODWORD(v55) = [v55 typeUTIIsPlayableMovie:v56];

  if (v55)
  {
    ++v41;
    goto LABEL_26;
  }

  v57 = [v45 title];
  v58 = [v57 length];

  if (!v58)
  {
    goto LABEL_26;
  }

  v59 = [v45 attachment];
LABEL_33:
  v60 = [v45 title];

  v15 = v76;
  v37 = v72;
  v36 = v73;
  v14 = v71;
  if (v60)
  {
    goto LABEL_51;
  }

LABEL_34:
  if (v75)
  {
    if (v41)
    {
      if (v75 == 1)
      {
        if (v41 == 1)
        {
          v61 = @"Saved Photo and Saved Video";
        }

        else
        {
          v61 = @"Saved Photo and Saved Videos";
        }
      }

      else if (v41 == 1)
      {
        v61 = @"Saved Photos and Saved Video";
      }

      else
      {
        v61 = @"Saved Photos and Saved Videos";
      }
    }

    else if (v75 == 1)
    {
      v61 = @"Saved Photo";
    }

    else
    {
      v61 = @"Saved Photos";
    }

LABEL_50:
    v60 = __ICLocalizedFrameworkString_impl(v61, v61, 0, 1);
    if (v60)
    {
LABEL_51:
      v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v63 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:{+[ICTextStyle noteDefaultNamedStyle](ICTextStyle, "noteDefaultNamedStyle")}];
      [v62 setObject:v63 forKey:*MEMORY[0x1E69B7600]];

      if (v59)
      {
        v64 = MEMORY[0x1E695DFF8];
        v65 = [v59 urlString];
        v66 = [v64 URLWithString:v65];

        if ([v66 ic_isMapURL])
        {
          [v62 setObject:v66 forKey:*MEMORY[0x1E69DB670]];
        }
      }

      v67 = [v72 textStorage];
      v68 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v60 attributes:v62];
      [v67 appendAttributedString:v68];

      v37 = v72;
      v36 = v73;
      v14 = v71;
    }
  }

  else if (v41)
  {
    if (v41 == 1)
    {
      v61 = @"Saved Video";
    }

    else
    {
      v61 = @"Saved Videos";
    }

    goto LABEL_50;
  }

  self = v69;
  v12 = v70;
LABEL_11:
  [(ICAddAttachmentsManager *)self saveAttachments:v12 toNote:v37 textBefore:v14 textAfter:v15 fetchFirst:0, v69, v70];

  return v37;
}

- (unsigned)styleForTitleLength:(int64_t)a3
{
  result = +[ICTextStyle noteDefaultNamedStyle];
  if (result <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = result;
  }

  if (a3 > 64)
  {
    return v5;
  }

  return result;
}

- (void)saveAttachments:(id)a3 toNote:(id)a4 textBefore:(id)a5 textAfter:(id)a6 fetchFirst:(BOOL)a7
{
  v7 = a7;
  v145 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v126 = a6;
  if (v7)
  {
    v14 = MEMORY[0x1E69B77F0];
    v15 = [v12 identifier];
    v16 = [MEMORY[0x1E69B7800] sharedContext];
    v17 = [v16 managedObjectContext];
    v18 = [v14 refreshAllOfNoteWithIdentifier:v15 context:v17];
  }

  v19 = objc_alloc_init(ICTextController);
  [(ICTextController *)v19 setNote:v12 stylingTextUsingSeparateTextStorageForRendering:0 withLayoutManager:0];
  v20 = [v12 textStorage];
  v124 = v19;
  [v20 setStyler:v19];

  v21 = [MEMORY[0x1E695DF00] now];
  [v12 setModificationDate:v21];

  if ([v13 length])
  {
    v22 = [v12 textStorage];
    v23 = [v22 string];
    v24 = [v12 textStorage];
    [v23 paragraphRangeForRange:{objc_msgSend(v24, "length"), 0}];
    v26 = v25;

    if (v26)
    {
      v27 = [v12 textStorage];
      v28 = [v12 textStorage];
      [v27 replaceCharactersInRange:objc_msgSend(v28 withString:{"length"), 0, @"\n"}];

      v29 = [v12 textStorage];
      v30 = [v12 modificationDate];
      v31 = [v12 textStorage];
      [v29 setTimestamp:v30 range:{objc_msgSend(v31, "length") - 1, 1}];
    }

    v32 = [v12 textStorage];
    v33 = [v12 textStorage];
    [v32 replaceCharactersInRange:objc_msgSend(v33 withAttributedString:{"length"), 0, v13}];

    v34 = [v12 textStorage];
    v35 = [v12 textStorage];
    [v34 replaceCharactersInRange:objc_msgSend(v35 withString:{"length"), 0, @"\n"}];

    v36 = [v12 textStorage];
    v37 = [v12 modificationDate];
    v38 = [v12 textStorage];
    [v36 setTimestamp:v37 range:{objc_msgSend(v38, "length") + ~objc_msgSend(v13, "length"), objc_msgSend(v13, "length") + 1}];
  }

  v125 = v13;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = v11;
  v132 = [obj countByEnumeratingWithState:&v138 objects:v144 count:16];
  v40 = 0;
  if (v132)
  {
    v131 = *v139;
    v129 = *MEMORY[0x1E6982F10];
    v128 = *MEMORY[0x1E69B7448];
    v127 = *MEMORY[0x1E6982E58];
    v133 = *MEMORY[0x1E69DB5F8];
    *&v39 = 138412290;
    v123 = v39;
    do
    {
      v41 = 0;
      do
      {
        if (*v139 != v131)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v138 + 1) + 8 * v41);
        v43 = [v12 account];
        v44 = [v42 attachmentIfExistsForAccount:v43];

        if (v44)
        {
LABEL_13:
          [v44 setNote:v12];
          [v12 addAttachmentsObject:v44];
          v45 = [v42 image];

          if (v45)
          {
            v46 = [v42 attachment];
            v47 = [v42 image];
            v48 = [v46 updateAttachmentPreviewImageWithImage:v47 scale:1 scaleWhenDrawing:0 metadata:1 sendNotification:0.0];
          }

          goto LABEL_32;
        }

        if (ICInternalSettingsDefaultToPaperKitPDFsAndScans())
        {
          v49 = [v42 mediaUTI];
          if (v49)
          {
            v50 = v49;
            v51 = MEMORY[0x1E6982C40];
            v52 = [v42 mediaUTI];
            v53 = [v51 typeWithIdentifier:v52];
            v54 = [v53 conformsToType:v129];

            if (v54)
            {
              v55 = [MEMORY[0x1E696AFB0] UUID];
              v56 = [v55 UUIDString];
              v44 = [v12 addPaperDocumentAttachmentWithIdentifier:v56 subtype:v128];

              v57 = [v42 title];
              [v44 setTitle:v57];

              v58 = MEMORY[0x1E69B7838];
              v59 = [v42 mediaURL];
              v137 = 0;
              LOBYTE(v58) = [v58 createPaperDocumentForAttachment:v44 fromLegacyMediaAtURL:v59 error:&v137];
              v60 = v137;

              if (v58)
              {

                if (v44)
                {
                  goto LABEL_13;
                }
              }

              else
              {
                v61 = os_log_create("com.apple.notes", "DragAndDrop");
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  *buf = v123;
                  v143 = v60;
                  _os_log_error_impl(&dword_1D4171000, v61, OS_LOG_TYPE_ERROR, "Failed to create paper document attachment; deleting and falling back to PDF (error: %@)", buf, 0xCu);
                }

                [MEMORY[0x1E69B7680] deleteAttachment:v44];
              }
            }
          }
        }

        v62 = [v42 mediaURL];

        if (v62)
        {
          v63 = [v42 mediaURL];
          v44 = [v12 addAttachmentWithFileURL:v63];

          v64 = [v42 title];
          [v44 setTitle:v64];
LABEL_31:

          if (!v44)
          {
            goto LABEL_43;
          }

LABEL_32:
          v134 = v41;
          v74 = [ICTextAttachment textAttachmentWithAttachment:v44];
          v75 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v74];
          v76 = [v75 mutableCopy];

          [v76 addAttribute:v133 value:v74 range:{0, objc_msgSend(v76, "length")}];
          v77 = [v12 textStorage];
          v78 = [v77 length];

          if ([v12 attachmentViewType] == 1)
          {
            v79 = v12;
            if (v78 >= 2)
            {
              v80 = [v12 textStorage];
              v81 = [v80 string];

              v82 = [MEMORY[0x1E696AB08] newlineCharacterSet];
              if ([v82 characterIsMember:{objc_msgSend(v81, "characterAtIndex:", v78 - 1)}])
              {
                v83 = [v12 textStorage];
                v84 = [v83 attribute:v133 atIndex:v78 - 2 longestEffectiveRange:0 inRange:{v78 - 2, 1}];

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v74 supportsMultipleThumbnailsOnSameLine])
                {
                  --v78;
                }
              }
            }

            v12 = v79;
          }

          v85 = [v12 textStorage];
          [v85 replaceCharactersInRange:v78 withAttributedString:{0, v76}];

          v86 = [v12 textStorage];
          v87 = [v12 modificationDate];
          v40 = 1;
          [v86 setTimestamp:v87 range:{v78, 1}];

          [v44 updateChangeCountWithReason:@"Saved attachment"];
          v88 = [v44 media];
          [v88 updateChangeCountWithReason:@"Saved attachment"];

          v89 = [MEMORY[0x1E69B7800] sharedContext];
          [v89 save];

          v90 = +[ICAttachmentPreviewGenerator sharedGenerator];
          [v90 generatePreviewIfNeededForAttachment:v44];

          v41 = v134;
LABEL_42:

          goto LABEL_43;
        }

        v65 = [v42 mediaData];

        if (v65)
        {
          v64 = [v42 mediaUTI];
          v66 = [v42 mediaData];
          v67 = [v42 mediaFilenameExtension];
          v68 = v12;
          v69 = v64;
          v70 = v66;
          v71 = v67;
LABEL_30:
          v44 = [v68 addAttachmentWithUTI:v69 data:v70 filenameExtension:v71];

          goto LABEL_31;
        }

        v72 = [v42 image];

        if (v72)
        {
          v73 = [v42 image];
          v64 = [v73 ic_JPEGData];

          v66 = [v127 preferredFilenameExtension];
          v67 = [v127 identifier];
          v68 = v12;
          v69 = v67;
          v70 = v64;
          v71 = v66;
          goto LABEL_30;
        }

        v91 = [v42 attributedContentText];
        v92 = [v91 length];

        if (!v92)
        {
          v44 = os_log_create("com.apple.notes", "DragAndDrop");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [ICAddAttachmentsManager saveAttachments:v136 toNote:v44 textBefore:? textAfter:? fetchFirst:?];
          }

          goto LABEL_42;
        }

LABEL_43:
        ++v41;
      }

      while (v132 != v41);
      v93 = [obj countByEnumeratingWithState:&v138 objects:v144 count:16];
      v132 = v93;
    }

    while (v93);
  }

  if ([v126 length])
  {
    v94 = [v12 textStorage];
    v95 = [v94 string];
    v96 = [v12 textStorage];
    [v95 paragraphRangeForRange:{objc_msgSend(v96, "length"), 0}];
    v98 = v97;

    if (v98)
    {
      v99 = [v12 textStorage];
      v100 = [v12 textStorage];
      [v99 replaceCharactersInRange:objc_msgSend(v100 withString:{"length"), 0, @"\n"}];

      v101 = [v12 textStorage];
      v102 = [v12 modificationDate];
      v103 = [v12 textStorage];
      [v101 setTimestamp:v102 range:{objc_msgSend(v103, "length") - 1, 1}];
    }

    v104 = [v12 textStorage];
    v105 = [v12 textStorage];
    [v104 replaceCharactersInRange:objc_msgSend(v105 withAttributedString:{"length"), 0, v126}];

    v106 = [v12 textStorage];
    v107 = [v12 textStorage];
    [v106 replaceCharactersInRange:objc_msgSend(v107 withString:{"length"), 0, @"\n"}];

    v108 = [v12 textStorage];
    v109 = [v12 modificationDate];
    v110 = [v12 textStorage];
    v111 = [v110 length];
    v112 = ~[v126 length];
    v113 = [v126 length];
    v114 = v111 + v112;
    v115 = v113 + 1;
    v116 = v108;
    v117 = v109;
    goto LABEL_53;
  }

  if ((v40 & 1) != 0 && [v12 attachmentViewType] != 1)
  {
    v121 = [v12 textStorage];
    v122 = [v12 textStorage];
    [v121 replaceCharactersInRange:objc_msgSend(v122 withString:{"length"), 0, @"\n"}];

    v108 = [v12 textStorage];
    v109 = [v12 modificationDate];
    v110 = [v12 textStorage];
    v114 = [v110 length] - 1;
    v116 = v108;
    v117 = v109;
    v115 = 1;
LABEL_53:
    [v116 setTimestamp:v117 range:{v114, v115}];
  }

  if ([obj count] || objc_msgSend(v125, "length") || objc_msgSend(v126, "length"))
  {
    v118 = [v12 textStorage];
    [v118 fixupAfterEditing];

    [v12 updateChangeCountWithReason:@"Saved attachment"];
  }

  v119 = [MEMORY[0x1E69B7800] sharedContext];
  [v119 save];

  v120 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
  {
    [ICAddAttachmentsManager saveAttachments:v12 toNote:v120 textBefore:? textAfter:? fetchFirst:?];
  }
}

- (void)saveAttachments:(os_log_t)log toNote:textBefore:textAfter:fetchFirst:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "created media attachment without knowing how to save it.", buf, 2u);
}

- (void)saveAttachments:(void *)a1 toNote:(NSObject *)a2 textBefore:textAfter:fetchFirst:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 shortLoggingDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "POST SAVE note: %@", &v4, 0xCu);
}

@end