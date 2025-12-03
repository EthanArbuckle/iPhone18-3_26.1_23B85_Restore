@interface ICAddAttachmentsManager
+ (id)sharedManager;
- (id)saveAttachmentsToNewNote:(id)note inFolder:(id)folder isSystemPaper:(BOOL)paper textBefore:(id)before textAfter:(id)after;
- (unsigned)styleForTitleLength:(int64_t)length;
- (void)saveAttachments:(id)attachments toNote:(id)note textBefore:(id)before textAfter:(id)after fetchFirst:(BOOL)first;
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

- (id)saveAttachmentsToNewNote:(id)note inFolder:(id)folder isSystemPaper:(BOOL)paper textBefore:(id)before textAfter:(id)after
{
  paperCopy = paper;
  v82 = *MEMORY[0x1E69E9840];
  noteCopy = note;
  folderCopy = folder;
  beforeCopy = before;
  afterCopy = after;
  if (!folderCopy)
  {
    v16 = MEMORY[0x1E69B7760];
    [MEMORY[0x1E69B7800] sharedContext];
    v18 = v17 = afterCopy;
    [v18 managedObjectContext];
    v20 = v19 = beforeCopy;
    folderCopy = [v16 defaultFolderInContext:v20];

    beforeCopy = v19;
    afterCopy = v17;
  }

  v21 = [MEMORY[0x1E69B77F0] newEmptyNoteInFolder:folderCopy];
  v22 = v21;
  if (paperCopy)
  {
    [v21 markAsSystemPaperIfNeeded:1];
  }

  [v22 updateChangeCountWithReason:@"Saved attachment to new note"];
  v76 = afterCopy;
  if ([beforeCopy length] || objc_msgSend(afterCopy, "length"))
  {
    v23 = v22;
    v24 = folderCopy;
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    string = [beforeCopy string];
    v27 = -[ICAddAttachmentsManager styleForTitleLength:](self, "styleForTitleLength:", [string length]);

    v28 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:v27];
    [v25 setObject:v28 forKey:*MEMORY[0x1E69B7600]];

    v29 = MEMORY[0x1E69B7A90];
    string2 = [beforeCopy string];
    v31 = [v29 rangeForTitleInContent:string2 truncated:0];
    v33 = v32;

    if (v31 != 0x7FFFFFFFFFFFFFFFLL && v31 + v33 <= [beforeCopy length])
    {
      v34 = [beforeCopy mutableCopy];
      [v34 addAttributes:v25 range:{v31, v33}];
      v35 = [v34 copy];

      beforeCopy = v35;
    }

    v36 = v24;

    v37 = v23;
    afterCopy = v76;
    goto LABEL_11;
  }

  v71 = beforeCopy;
  v72 = v22;
  v73 = folderCopy;
  selfCopy = self;
  v70 = noteCopy;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = noteCopy;
  v39 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v39)
  {
    v75 = 0;
    v41 = 0;
LABEL_31:

    attachment2 = 0;
    v37 = v72;
    v36 = v73;
    beforeCopy = v71;
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
    attachment = [v45 attachment];
    title = [attachment title];
    v48 = [title length];

    if (v48)
    {
      attachment2 = [v45 attachment];
      v45 = attachment2;
      goto LABEL_33;
    }

    mediaUTI = [v45 mediaUTI];
    if (!mediaUTI)
    {
      break;
    }

    v50 = mediaUTI;
    v51 = MEMORY[0x1E6982C40];
    mediaUTI2 = [v45 mediaUTI];
    v53 = [v51 typeWithIdentifier:mediaUTI2];
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
      afterCopy = v76;
      if (v40)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }
  }

  v55 = MEMORY[0x1E69B7680];
  mediaUTI3 = [v45 mediaUTI];
  LODWORD(v55) = [v55 typeUTIIsPlayableMovie:mediaUTI3];

  if (v55)
  {
    ++v41;
    goto LABEL_26;
  }

  title2 = [v45 title];
  v58 = [title2 length];

  if (!v58)
  {
    goto LABEL_26;
  }

  attachment2 = [v45 attachment];
LABEL_33:
  title3 = [v45 title];

  afterCopy = v76;
  v37 = v72;
  v36 = v73;
  beforeCopy = v71;
  if (title3)
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
    title3 = __ICLocalizedFrameworkString_impl(v61, v61, 0, 1);
    if (title3)
    {
LABEL_51:
      v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v63 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:{+[ICTextStyle noteDefaultNamedStyle](ICTextStyle, "noteDefaultNamedStyle")}];
      [v62 setObject:v63 forKey:*MEMORY[0x1E69B7600]];

      if (attachment2)
      {
        v64 = MEMORY[0x1E695DFF8];
        urlString = [attachment2 urlString];
        v66 = [v64 URLWithString:urlString];

        if ([v66 ic_isMapURL])
        {
          [v62 setObject:v66 forKey:*MEMORY[0x1E69DB670]];
        }
      }

      textStorage = [v72 textStorage];
      v68 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:title3 attributes:v62];
      [textStorage appendAttributedString:v68];

      v37 = v72;
      v36 = v73;
      beforeCopy = v71;
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

  self = selfCopy;
  noteCopy = v70;
LABEL_11:
  [(ICAddAttachmentsManager *)self saveAttachments:noteCopy toNote:v37 textBefore:beforeCopy textAfter:afterCopy fetchFirst:0, selfCopy, v70];

  return v37;
}

- (unsigned)styleForTitleLength:(int64_t)length
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

  if (length > 64)
  {
    return v5;
  }

  return result;
}

- (void)saveAttachments:(id)attachments toNote:(id)note textBefore:(id)before textAfter:(id)after fetchFirst:(BOOL)first
{
  firstCopy = first;
  v145 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  noteCopy = note;
  beforeCopy = before;
  afterCopy = after;
  if (firstCopy)
  {
    v14 = MEMORY[0x1E69B77F0];
    identifier = [noteCopy identifier];
    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    managedObjectContext = [mEMORY[0x1E69B7800] managedObjectContext];
    v18 = [v14 refreshAllOfNoteWithIdentifier:identifier context:managedObjectContext];
  }

  v19 = objc_alloc_init(ICTextController);
  [(ICTextController *)v19 setNote:noteCopy stylingTextUsingSeparateTextStorageForRendering:0 withLayoutManager:0];
  textStorage = [noteCopy textStorage];
  v124 = v19;
  [textStorage setStyler:v19];

  v21 = [MEMORY[0x1E695DF00] now];
  [noteCopy setModificationDate:v21];

  if ([beforeCopy length])
  {
    textStorage2 = [noteCopy textStorage];
    string = [textStorage2 string];
    textStorage3 = [noteCopy textStorage];
    [string paragraphRangeForRange:{objc_msgSend(textStorage3, "length"), 0}];
    v26 = v25;

    if (v26)
    {
      textStorage4 = [noteCopy textStorage];
      textStorage5 = [noteCopy textStorage];
      [textStorage4 replaceCharactersInRange:objc_msgSend(textStorage5 withString:{"length"), 0, @"\n"}];

      textStorage6 = [noteCopy textStorage];
      modificationDate = [noteCopy modificationDate];
      textStorage7 = [noteCopy textStorage];
      [textStorage6 setTimestamp:modificationDate range:{objc_msgSend(textStorage7, "length") - 1, 1}];
    }

    textStorage8 = [noteCopy textStorage];
    textStorage9 = [noteCopy textStorage];
    [textStorage8 replaceCharactersInRange:objc_msgSend(textStorage9 withAttributedString:{"length"), 0, beforeCopy}];

    textStorage10 = [noteCopy textStorage];
    textStorage11 = [noteCopy textStorage];
    [textStorage10 replaceCharactersInRange:objc_msgSend(textStorage11 withString:{"length"), 0, @"\n"}];

    textStorage12 = [noteCopy textStorage];
    modificationDate2 = [noteCopy modificationDate];
    textStorage13 = [noteCopy textStorage];
    [textStorage12 setTimestamp:modificationDate2 range:{objc_msgSend(textStorage13, "length") + ~objc_msgSend(beforeCopy, "length"), objc_msgSend(beforeCopy, "length") + 1}];
  }

  v125 = beforeCopy;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = attachmentsCopy;
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
        account = [noteCopy account];
        v44 = [v42 attachmentIfExistsForAccount:account];

        if (v44)
        {
LABEL_13:
          [v44 setNote:noteCopy];
          [noteCopy addAttachmentsObject:v44];
          image = [v42 image];

          if (image)
          {
            attachment = [v42 attachment];
            image2 = [v42 image];
            v48 = [attachment updateAttachmentPreviewImageWithImage:image2 scale:1 scaleWhenDrawing:0 metadata:1 sendNotification:0.0];
          }

          goto LABEL_32;
        }

        if (ICInternalSettingsDefaultToPaperKitPDFsAndScans())
        {
          mediaUTI = [v42 mediaUTI];
          if (mediaUTI)
          {
            v50 = mediaUTI;
            v51 = MEMORY[0x1E6982C40];
            mediaUTI2 = [v42 mediaUTI];
            v53 = [v51 typeWithIdentifier:mediaUTI2];
            v54 = [v53 conformsToType:v129];

            if (v54)
            {
              uUID = [MEMORY[0x1E696AFB0] UUID];
              uUIDString = [uUID UUIDString];
              v44 = [noteCopy addPaperDocumentAttachmentWithIdentifier:uUIDString subtype:v128];

              title = [v42 title];
              [v44 setTitle:title];

              v58 = MEMORY[0x1E69B7838];
              mediaURL = [v42 mediaURL];
              v137 = 0;
              LOBYTE(v58) = [v58 createPaperDocumentForAttachment:v44 fromLegacyMediaAtURL:mediaURL error:&v137];
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

        mediaURL2 = [v42 mediaURL];

        if (mediaURL2)
        {
          mediaURL3 = [v42 mediaURL];
          v44 = [noteCopy addAttachmentWithFileURL:mediaURL3];

          title2 = [v42 title];
          [v44 setTitle:title2];
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
          textStorage14 = [noteCopy textStorage];
          v78 = [textStorage14 length];

          if ([noteCopy attachmentViewType] == 1)
          {
            v79 = noteCopy;
            if (v78 >= 2)
            {
              textStorage15 = [noteCopy textStorage];
              string2 = [textStorage15 string];

              newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
              if ([newlineCharacterSet characterIsMember:{objc_msgSend(string2, "characterAtIndex:", v78 - 1)}])
              {
                textStorage16 = [noteCopy textStorage];
                v84 = [textStorage16 attribute:v133 atIndex:v78 - 2 longestEffectiveRange:0 inRange:{v78 - 2, 1}];

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v74 supportsMultipleThumbnailsOnSameLine])
                {
                  --v78;
                }
              }
            }

            noteCopy = v79;
          }

          textStorage17 = [noteCopy textStorage];
          [textStorage17 replaceCharactersInRange:v78 withAttributedString:{0, v76}];

          textStorage18 = [noteCopy textStorage];
          modificationDate3 = [noteCopy modificationDate];
          v40 = 1;
          [textStorage18 setTimestamp:modificationDate3 range:{v78, 1}];

          [v44 updateChangeCountWithReason:@"Saved attachment"];
          media = [v44 media];
          [media updateChangeCountWithReason:@"Saved attachment"];

          mEMORY[0x1E69B7800]2 = [MEMORY[0x1E69B7800] sharedContext];
          [mEMORY[0x1E69B7800]2 save];

          v90 = +[ICAttachmentPreviewGenerator sharedGenerator];
          [v90 generatePreviewIfNeededForAttachment:v44];

          v41 = v134;
LABEL_42:

          goto LABEL_43;
        }

        mediaData = [v42 mediaData];

        if (mediaData)
        {
          title2 = [v42 mediaUTI];
          mediaData2 = [v42 mediaData];
          mediaFilenameExtension = [v42 mediaFilenameExtension];
          v68 = noteCopy;
          v69 = title2;
          v70 = mediaData2;
          v71 = mediaFilenameExtension;
LABEL_30:
          v44 = [v68 addAttachmentWithUTI:v69 data:v70 filenameExtension:v71];

          goto LABEL_31;
        }

        image3 = [v42 image];

        if (image3)
        {
          image4 = [v42 image];
          title2 = [image4 ic_JPEGData];

          mediaData2 = [v127 preferredFilenameExtension];
          mediaFilenameExtension = [v127 identifier];
          v68 = noteCopy;
          v69 = mediaFilenameExtension;
          v70 = title2;
          v71 = mediaData2;
          goto LABEL_30;
        }

        attributedContentText = [v42 attributedContentText];
        v92 = [attributedContentText length];

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

  if ([afterCopy length])
  {
    textStorage19 = [noteCopy textStorage];
    string3 = [textStorage19 string];
    textStorage20 = [noteCopy textStorage];
    [string3 paragraphRangeForRange:{objc_msgSend(textStorage20, "length"), 0}];
    v98 = v97;

    if (v98)
    {
      textStorage21 = [noteCopy textStorage];
      textStorage22 = [noteCopy textStorage];
      [textStorage21 replaceCharactersInRange:objc_msgSend(textStorage22 withString:{"length"), 0, @"\n"}];

      textStorage23 = [noteCopy textStorage];
      modificationDate4 = [noteCopy modificationDate];
      textStorage24 = [noteCopy textStorage];
      [textStorage23 setTimestamp:modificationDate4 range:{objc_msgSend(textStorage24, "length") - 1, 1}];
    }

    textStorage25 = [noteCopy textStorage];
    textStorage26 = [noteCopy textStorage];
    [textStorage25 replaceCharactersInRange:objc_msgSend(textStorage26 withAttributedString:{"length"), 0, afterCopy}];

    textStorage27 = [noteCopy textStorage];
    textStorage28 = [noteCopy textStorage];
    [textStorage27 replaceCharactersInRange:objc_msgSend(textStorage28 withString:{"length"), 0, @"\n"}];

    textStorage29 = [noteCopy textStorage];
    modificationDate5 = [noteCopy modificationDate];
    textStorage30 = [noteCopy textStorage];
    v111 = [textStorage30 length];
    v112 = ~[afterCopy length];
    v113 = [afterCopy length];
    v114 = v111 + v112;
    v115 = v113 + 1;
    v116 = textStorage29;
    v117 = modificationDate5;
    goto LABEL_53;
  }

  if ((v40 & 1) != 0 && [noteCopy attachmentViewType] != 1)
  {
    textStorage31 = [noteCopy textStorage];
    textStorage32 = [noteCopy textStorage];
    [textStorage31 replaceCharactersInRange:objc_msgSend(textStorage32 withString:{"length"), 0, @"\n"}];

    textStorage29 = [noteCopy textStorage];
    modificationDate5 = [noteCopy modificationDate];
    textStorage30 = [noteCopy textStorage];
    v114 = [textStorage30 length] - 1;
    v116 = textStorage29;
    v117 = modificationDate5;
    v115 = 1;
LABEL_53:
    [v116 setTimestamp:v117 range:{v114, v115}];
  }

  if ([obj count] || objc_msgSend(v125, "length") || objc_msgSend(afterCopy, "length"))
  {
    textStorage33 = [noteCopy textStorage];
    [textStorage33 fixupAfterEditing];

    [noteCopy updateChangeCountWithReason:@"Saved attachment"];
  }

  mEMORY[0x1E69B7800]3 = [MEMORY[0x1E69B7800] sharedContext];
  [mEMORY[0x1E69B7800]3 save];

  v120 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
  {
    [ICAddAttachmentsManager saveAttachments:noteCopy toNote:v120 textBefore:? textAfter:? fetchFirst:?];
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