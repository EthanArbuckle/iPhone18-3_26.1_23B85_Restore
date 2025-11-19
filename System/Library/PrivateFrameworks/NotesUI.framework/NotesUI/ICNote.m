@interface ICNote
@end

@implementation ICNote

id __45__ICNote_HTML__htmlStringWithHTMLAttachments__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a1 + 32) attachmentWithIdentifier:a2];
  v7 = [v6 attachmentModel];
  v8 = [v7 canConvertToHTMLForSharing];

  if (v8)
  {
    v9 = [v6 attachmentModel];
    v10 = [v9 attributesForSharingHTMLWithTagName:a3 textContent:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

intptr_t __62__ICNote_HTML__mutableAttributedStringFromHTMLString_baseURL___block_invoke(void *a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(a1[6] + 8) + 24) = 1;
  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

void __49__ICNote_HTML__fixDashedListsInAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v23 = v7;
    v8 = [v7 textLists];
    v9 = [v8 count];

    v7 = v23;
    if (v9)
    {
      v10 = [v23 textLists];
      v11 = [v10 mutableCopy];

      if ([v11 count])
      {
        v22 = a3;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = [v11 objectAtIndexedSubscript:v13];
          v15 = [v14 markerFormat];
          v16 = [v15 isEqualToString:@"{upper-roman}"];

          if (v16)
          {
            v17 = [[fixDashedListsInAttributedString__NSTextListClass alloc] initWithMarkerFormat:@"{hyphen}" options:objc_msgSend(v14, "listOptions")];
            [v17 setStartingItemNumber:{objc_msgSend(v14, "startingItemNumber")}];
            [v11 setObject:v17 atIndexedSubscript:v13];

            v12 = 1;
          }

          ++v13;
        }

        while (v13 < [v11 count]);
        if (v12)
        {
          v18 = [v23 mutableCopy];
          [v18 setTextLists:v11];
          v19 = *(a1 + 32);
          v20 = *MEMORY[0x1E69DB688];
          v21 = [v18 copy];
          [v19 addAttribute:v20 value:v21 range:{v22, a4}];
        }
      }

      v7 = v23;
    }
  }
}

void __43__ICNote_HTML__fixFontsInAttributedString___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!v7)
  {
    goto LABEL_21;
  }

  v27 = v7;
  v8 = [v7 familyName];
  if (([v8 containsString:@"Times New Roman"] & 1) == 0)
  {
    v9 = [v27 familyName];
    if (([v9 isEqualToString:@"Times"] & 1) == 0)
    {
      v10 = [v27 familyName];
      if (([v10 containsString:@"Helvetica"] & 1) == 0)
      {
        v11 = [v27 familyName];
        if (([v11 containsString:@"Noteworthy"] & 1) == 0)
        {
          v25 = [v27 familyName];
          v26 = [v25 containsString:@"Marker Felt"];

          v7 = v27;
          if ((v26 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_10:
  v12 = [a1[4] attribute:*MEMORY[0x1E69B7610] atIndex:a3 effectiveRange:0];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 integerValue] == 0;
  }

  else
  {
    v14 = 1;
  }

  [v27 pointSize];
  if (v15 < 18.0)
  {
    [a1[5] pointSize];
    v17 = v18;
    if (!v14)
    {
      +[ICTTTextController superscriptScaleFactor];
      v17 = round(v17 * v19);
    }
  }

  else
  {
    [v27 pointSize];
    v17 = v16;
  }

  v20 = [v27 fontDescriptor];
  v21 = [v20 symbolicTraits];
  v22 = [a1[6] fontDescriptorWithSymbolicTraits:v21];
  if (!v22)
  {
    v22 = [a1[6] fontDescriptorWithSymbolicTraits:v21 & 0xEFFFFFFF];
    if (!v22)
    {
      v22 = a1[6];
    }
  }

  v23 = v22;
  v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v22 size:v17];
  [a1[4] addAttribute:*MEMORY[0x1E69DB648] value:v24 range:{a3, a4}];

  v7 = v27;
LABEL_21:
}

uint64_t __48__ICNote_HTML__fixTextColorsInAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 ic_isBlack];
  if (result)
  {
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69DB650];

    return [v8 removeAttribute:v9 range:{a3, a4}];
  }

  return result;
}

void __75__ICNote_HTML__htmlStringFromAttributedString_attachmentConversionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = MEMORY[0x1E696AD98];
    v6 = a2;
    v7 = [v5 numberWithUnsignedInteger:a3];
    [v4 setObject:v6 forKeyedSubscript:v7];
  }
}

void __75__ICNote_HTML__htmlStringFromAttributedString_attachmentConversionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v54 = a2;
  v5 = [*(a1 + 72) tagDictionariesForAttributes:? attachmentConversionHandler:?];
  v6 = [v5 count];
  v76 = 0u;
  v77 = 0u;
  v55 = v6 == 0;
  v78 = 0u;
  v79 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (!v7)
  {

    if (v6)
    {
      v8 = 0;
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  v8 = 0;
  v9 = *v77;
  do
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v77 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v76 + 1) + 8 * v10);
      v13 = [v12 objectForKeyedSubscript:@"TagName"];
      v14 = [v12 objectForKeyedSubscript:@"Attributes"];
      v15 = v14;
      v16 = &stru_1F4F94F00;
      if (v14)
      {
        v16 = v14;
      }

      v17 = v16;

      if ([(__CFString *)v17 length]>= 2)
      {
        v18 = [(__CFString *)v17 substringWithRange:0, 1];
        v19 = [v18 isEqualToString:@" "];

        if ((v19 & 1) == 0)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v17];

          v17 = v20;
        }
      }

      v8 = [v12 objectForKeyedSubscript:@"TextContent"];

      [*(a1 + 32) appendFormat:@"<%@%@", v13, v17];
      if ([*(a1 + 40) containsObject:v13])
      {
        [*(a1 + 32) appendString:@"/"];
      }

      else
      {
        v55 = 1;
      }

      [*(a1 + 32) appendString:@">"];

      ++v10;
      v11 = v8;
    }

    while (v7 != v10);
    v7 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  }

  while (v7);

  if (v55)
  {
    if (v8)
    {
LABEL_35:
      [*(a1 + 32) appendString:v8];
      goto LABEL_36;
    }

LABEL_21:
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__3;
    v74 = __Block_byref_object_dispose__3;
    v21 = [*(a1 + 48) string];
    v75 = [v21 substringWithRange:{a3, a4}];

    v22 = [v71[5] ic_stringReplacingUnsafeHTMLCharacters];
    v23 = v71[5];
    v71[5] = v22;

    v24 = [MEMORY[0x1E695DF90] dictionary];
    v25 = *(a1 + 56);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __75__ICNote_HTML__htmlStringFromAttributedString_attachmentConversionHandler___block_invoke_3;
    v66[3] = &unk_1E84694F8;
    v69 = *(a1 + 80);
    v68 = &v70;
    v26 = v24;
    v67 = v26;
    [v25 enumerateKeysAndObjectsUsingBlock:v66];
    if ([v26 count])
    {
      v27 = [MEMORY[0x1E696AD60] string];
      v28 = [v26 allKeys];
      v29 = [v28 sortedArrayUsingSelector:sel_compare_];

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v56 = v29;
      v30 = 0;
      v31 = [v56 countByEnumeratingWithState:&v62 objects:v81 count:16];
      if (v31)
      {
        v32 = *v63;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v63 != v32)
            {
              objc_enumerationMutation(v56);
            }

            v34 = *(*(&v62 + 1) + 8 * i);
            v35 = [v34 unsignedIntegerValue] - *(a1 + 80);
            v36 = [v71[5] substringWithRange:{v30, v35 - v30}];
            [v27 appendFormat:@"<span>%@</span>", v36];
            v37 = [v26 objectForKeyedSubscript:v34];
            [v27 appendString:v37];

            v30 = v35 + 1;
          }

          v31 = [v56 countByEnumeratingWithState:&v62 objects:v81 count:16];
        }

        while (v31);
      }

      v38 = [v71[5] substringWithRange:{v30, objc_msgSend(v71[5], "length") - v30}];
      if ([v38 length])
      {
        [v27 appendFormat:@"<span>%@</span>", v38];
      }

      v39 = [v27 copy];
      v40 = v71[5];
      v71[5] = v39;
    }

    v41 = v71[5];
    v42 = [MEMORY[0x1E696AEC0] ic_attachmentCharacterString];
    v43 = [v41 stringByReplacingOccurrencesOfString:v42 withString:&stru_1F4F94F00];
    v44 = v71[5];
    v71[5] = v43;

    v45 = v71[5];
    v46 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v8 = [v45 stringByTrimmingCharactersInSet:v46];

    if (![(__CFString *)v8 length])
    {

      v8 = @"<br>";
    }

    _Block_object_dispose(&v70, 8);
    goto LABEL_35;
  }

LABEL_36:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v47 = [obj reverseObjectEnumerator];
  v48 = [v47 countByEnumeratingWithState:&v58 objects:v80 count:16];
  if (v48)
  {
    v49 = *v59;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v59 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v51 = [*(*(&v58 + 1) + 8 * j) objectForKeyedSubscript:@"TagName"];
        if (([*(a1 + 40) containsObject:v51] & 1) == 0)
        {
          [*(a1 + 32) appendFormat:@"</%@>", v51];
        }
      }

      v48 = [v47 countByEnumeratingWithState:&v58 objects:v80 count:16];
    }

    while (v48);
  }
}

void __75__ICNote_HTML__htmlStringFromAttributedString_attachmentConversionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v6 = [v21 unsignedIntegerValue];
  v7 = *(a1 + 48);
  v9 = v6 >= v7;
  v8 = v6 - v7;
  v9 = !v9 || v8 >= *(a1 + 56);
  if (!v9)
  {
    v10 = [v21 unsignedIntegerValue] - *(a1 + 48);
    if (v10 < [*(*(*(a1 + 40) + 8) + 40) length])
    {
      v11 = [MEMORY[0x1E696AD60] stringWithString:@"<picture>"];
      v12 = [v5 imageContent];
      v13 = [v12 base64EncodedStringWithOptions:0];

      [v11 appendFormat:@"<source srcset=data:image/x-apple-adaptive-glyph;base64, %@ type=image/x-apple-adaptive-glyph>", v13];
      v14 = MEMORY[0x1E69DCAB8];
      v15 = [v5 imageContent];
      v16 = [v14 imageWithData:v15];
      v17 = UIImagePNGRepresentation(v16);
      v18 = [v17 base64EncodedStringWithOptions:0];

      v19 = [v5 contentDescription];
      v20 = [v19 ic_stringReplacingUnsafeXMLCharacters];
      [v11 appendFormat:@"<img src=data:image/png;base64, %@ alt=%@>", v18, v20];

      [v11 appendString:@"</picture>"];
      [*(a1 + 32) setObject:v11 forKeyedSubscript:v21];
    }
  }
}

void __57__ICNote_UI__rangesModifiedAfterTimestamp_inTextStorage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696B098] valueWithRange:{a2, a3}];
    [v3 addObject:v4];
  }
}

void __51__ICNote_UI__noteDidMergeNoteDocumentWithUserInfo___block_invoke(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [a1[5] authorHighlightsController];
        v9 = [v7 rangeValue];
        v11 = v10;
        v12 = [a1[6] textStorage];
        [v8 extendHighlightsForRange:v9 inTextStorage:{v11, v12}];

        if ([a1[6] isSharedViaICloud] && (objc_msgSend(a1[6], "isFastSyncSessionActive") & 1) == 0)
        {
          v13 = [a1[5] authorHighlightsController];
          v14 = [v7 rangeValue];
          v16 = v15;
          v17 = [a1[6] textStorage];
          [v13 flashHighlightsForRange:v14 withDuration:v16 inTextStorage:{0, v17}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

void __39__ICNote_UI__hasMentionForParticipant___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  v7 = [v10 attachmentType] == 2;
  v8 = v10;
  if (v7)
  {
    v9 = [v10 tokenContentIdentifier];
    if (([v9 isEqualToString:a1[4]] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", a1[5]))
    {
      *(*(a1[6] + 8) + 24) = 1;
      *a5 = 1;
    }

    v8 = v10;
  }
}

id __58__ICNote_UI__noteActivityItemsForSharingWithNoteExporter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isSharable])
  {
    v3 = [WeakRetained textStorage];
    v4 = [*(a1 + 32) managedObjectContext];
    v5 = [v3 standardizedAttributedStringFixingTextAttachmentsInContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __39__ICNote_UI__airDropActivityItemSource__block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__20;
  v15 = __Block_byref_object_dispose__20;
  v16 = 0;
  v2 = [MEMORY[0x1E69B7800] sharedContext];
  v3 = [v2 workerManagedObjectContext];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__ICNote_UI__airDropActivityItemSource__block_invoke_85;
  v7[3] = &unk_1E8469190;
  v8 = *(a1 + 32);
  v4 = v3;
  v9 = v4;
  v10 = &v11;
  [v4 performBlockAndWait:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __39__ICNote_UI__airDropActivityItemSource__block_invoke_85(void *a1)
{
  v5 = [MEMORY[0x1E69B77F0] ic_existingObjectWithID:a1[4] context:a1[5]];
  v2 = [v5 newAirDropDocument];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __56__ICNote_UI__attachmentActivityItemsForSharingForRange___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v20.location = a3;
  v20.length = a4;
  if (NSIntersectionRange(*(a1 + 40), v20).length && ([v7 isTable] & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v7 activityItems];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * v12);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v13 isFileURL])
          {
            [*(a1 + 32) addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

void __51__ICNote_UI__appendAttributedString_options_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textStorage];
  v3 = [v2 length];

  v4 = [*(a1 + 32) textStorage];
  v5 = [v4 string];
  v6 = [v5 hasSuffix:@"\n\n"];

  if (v6)
  {
    --v3;
  }

  else
  {
    v7 = [*(a1 + 32) textStorage];
    if ([v7 length])
    {
      v8 = [*(a1 + 32) textStorage];
      v9 = [v8 string];
      v10 = [v9 hasSuffix:@"\n"];

      if ((v10 & 1) == 0)
      {
        v11 = [*(a1 + 32) textStorage];
        [v11 replaceCharactersInRange:v3 withString:{0, @"\n"}];

        v12 = v3 + 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v12 = v3;
LABEL_8:
  v13 = [*(a1 + 32) textStorage];
  [v13 replaceCharactersInRange:v12 withAttributedString:{0, *(a1 + 40)}];

  v16 = [*(a1 + 32) textStorage];
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [*(a1 + 32) textStorage];
  [v16 setTimestamp:v14 range:{v3, objc_msgSend(v15, "length") - v3}];
}

uint64_t __49__ICNote_UI__updateThumbnailAttachmentIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isVisible])
  {
    v3 = [v2 attachmentModel];
    v4 = [v3 showThumbnailInNoteList];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __49__ICNote_UI__updateThumbnailAttachmentIdentifier__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7)
  {
    v17 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 32);
      v9 = [v17 attachmentIdentifier];
      v10 = [v8 attachmentWithIdentifier:v9];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v17 attachment];
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = [v10 attachmentModel];
    v12 = [v11 showThumbnailInNoteList];

    if (v12)
    {
      v13 = [v10 identifier];
      v14 = [v13 copy];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      *a5 = 1;
    }

    v7 = v17;
  }
}

void __140__ICNote_UI__thumbnailImageWithMinSize_scale_appearanceType_requireAppearance_imageScaling_showAsFileIcon_isMovie_movieDuration_attachment___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = [v7 attachmentModel];
  v9 = [v8 showThumbnailInNoteList];

  if (v9)
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 112);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    v17 = *(a1 + 88);
    v18 = *(a1 + 40);
    v27 = *(a1 + 96);
    obj = *(v10 + 40);
    v19 = [v7 thumbnailImage:&obj minSize:v14 scale:v13 appearanceType:v15 requireAppearance:v16 imageScaling:v17 showAsFileIcon:v18 isMovie:v11 movieDuration:{v12, v27}];
    objc_storeStrong((v10 + 40), obj);
    *a5 = v19;
    if (v19)
    {
      if (!*(a1 + 104) || (v20 = v7, **(a1 + 104) = v7, (*a5 & 1) != 0))
      {
        if (!*(*(*(a1 + 32) + 8) + 40))
        {
          v21 = [v7 attachmentModel];
          v22 = [v21 genericListThumbnailCreator];

          if (v22)
          {
            v23 = v22[2](v22, *(a1 + 56));
            v24 = *(*(a1 + 32) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            if (*(*(*(a1 + 32) + 8) + 40))
            {
              v26 = *(a1 + 80);
              **(a1 + 72) = 1;
              *v26 = 0;
            }
          }
        }
      }
    }
  }
}

void __113__ICNote_UI__fetchThumbnailImageWithMinSize_scale_cache_appearanceInfo_cacheKey_processingBlock_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v20 = a2;
  v7 = [v20 attachmentModel];
  v8 = [v7 showThumbnailInNoteList];

  v9 = v20;
  if (v8)
  {
    v10 = *(a1 + 104);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = [v20 attachmentModel];
    v17 = [v16 genericListThumbnailCreator];
    *(*(*(a1 + 80) + 8) + 24) = [v20 fetchThumbnailImageWithMinSize:v11 scale:v12 appearanceInfo:v13 cache:v14 cacheKey:v15 processingBlock:v17 completionBlock:*(a1 + 88) fallbackBlock:*(a1 + 96) aboutToLoadHandler:{v10, 0}];

    v18 = *(*(*(a1 + 80) + 8) + 24);
    if (v18 == 1)
    {
      v19 = [v20 identifier];
      [*(a1 + 56) setThumbnailAttachmentIdentifier:v19];

      LOBYTE(v18) = *(*(*(a1 + 80) + 8) + 24);
    }

    *a5 = v18;
    v9 = v20;
  }
}

uint64_t __60__ICNote_UI__noteDidApplyAttachmentViewTypeToAllAttachments__block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  objc_opt_class();
  v13 = ICDynamicCast();

  if (v13 && [v13 supportsMultiplePresentationSizes])
  {
    [*(a1 + 32) addObject:v13];
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v8 addObject:v9];

    v10 = *(*(a1 + 48) + 8);
    v11.location = *(v10 + 32);
    if (v11.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v10 + 32) = a3;
      *(v10 + 40) = a4;
    }

    else
    {
      v11.length = *(v10 + 40);
      v15.location = a3;
      v15.length = a4;
      *(*(*(a1 + 48) + 8) + 32) = NSUnionRange(v11, v15);
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

void __18__ICNote_UI__save__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if ([v9 hasChanges])
  {
    v7 = [v9 changedValues];
    v8 = [v7 count];

    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }
}

void __51__ICNote_UI__filterAttachmentsInTextStorage_range___block_invoke_2(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objc_opt_class();
  v8 = ICDynamicCast();
  v9 = [v8 ic_isSystemTextAttachment];

  if ((v9 & 1) == 0)
  {
    if (v7)
    {
      v10 = [*(a1 + 32) attachmentFromObject:v7 createIfNecessary:0];
    }

    else
    {
      v10 = 0;
    }

    objc_opt_class();
    v11 = ICDynamicCast();
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v13 = ICDynamicCast();
      if (!v13)
      {
        goto LABEL_9;
      }

      v14 = v13;
      v15 = objc_opt_class();
      if (v15 != [ICInlineTextAttachment textAttachmentClassForAttachment:v12])
      {

LABEL_9:
        if (!v7 || ![ICTextAttachment textAttachmentIsContent:v7])
        {
          goto LABEL_34;
        }

        v16 = [ICInlineTextAttachment textAttachmentWithAttachment:v12];
        if (v16)
        {
          goto LABEL_12;
        }

        v24 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __51__ICNote_UI__filterAttachmentsInTextStorage_range___block_invoke_2_cold_1(v12, a3, a4);
        }

        goto LABEL_32;
      }

LABEL_35:

      goto LABEL_36;
    }

    if (v7 && [objc_opt_class() isInlineAttachment:v7])
    {
      objc_opt_class();
      v17 = [*(a1 + 32) attachmentFromObject:v7 createIfNecessary:1];
      v12 = ICDynamicCast();

      [v12 setNeedsInitialFetchFromCloud:1];
LABEL_36:

      goto LABEL_37;
    }

    objc_opt_class();
    v12 = ICDynamicCast();
    objc_opt_class();
    v18 = ICDynamicCast();
    v14 = v18;
    if (v18 && v12)
    {
      v19 = objc_opt_class();
      if (v19 == [ICTextAttachment textAttachmentClassForAttachment:v12])
      {
        goto LABEL_35;
      }

      v14 = 0;
    }

    else if (v18 && !v12)
    {
      objc_opt_class();
      v20 = [*(a1 + 32) attachmentFromObject:v14 createIfNecessary:1];
      v12 = ICDynamicCast();

      [v14 setAttachment:v12];
      goto LABEL_35;
    }

    if (!v7 || v14)
    {
      goto LABEL_35;
    }

    if (![ICTextAttachment textAttachmentIsContent:v7])
    {
      goto LABEL_34;
    }

    v21 = *(a1 + 32);
    if (v12)
    {
      v22 = [v21 attachments];
      v23 = [v22 containsObject:v12];

      if ((v23 & 1) == 0 && ([*(a1 + 32) canAddAttachment] & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (([v21 canAddAttachment] & 1) == 0)
      {
LABEL_43:
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v28 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v12 shortLoggingDescription];
          v39.location = a3;
          v39.length = a4;
          v30 = NSStringFromRange(v39);
          v33 = 138412546;
          v34 = v29;
          v35 = 2112;
          v36 = v30;
          _os_log_impl(&dword_1D4171000, v28, OS_LOG_TYPE_DEFAULT, "Removing attachment attribute for attachment that we can't add %@ at %@", &v33, 0x16u);
        }

        [*(a1 + 40) removeAttribute:*MEMORY[0x1E69DB5F8] range:{a3, a4}];
        goto LABEL_34;
      }

      objc_opt_class();
      v25 = [*(a1 + 32) attachmentFromObject:v7 createIfNecessary:1];
      v12 = ICDynamicCast();

      if (!v12)
      {
        v31 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v40.location = a3;
          v40.length = a4;
          v32 = NSStringFromRange(v40);
          v33 = 138478083;
          v34 = v7;
          v35 = 2112;
          v36 = v32;
          _os_log_impl(&dword_1D4171000, v31, OS_LOG_TYPE_DEFAULT, "Found an NSTextAttachment with no corresponding ICAttachment: %{private}@ at %@", &v33, 0x16u);
        }

        [*(a1 + 40) removeAttribute:*MEMORY[0x1E69DB5F8] range:{a3, a4}];
        v14 = 0;
        v12 = 0;
        goto LABEL_35;
      }
    }

    v16 = [ICTextAttachment textAttachmentWithAttachment:v12];
    if (v16)
    {
LABEL_12:
      [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB5F8] value:v16 range:{a3, a4}];
LABEL_33:

LABEL_34:
      v14 = 0;
      goto LABEL_35;
    }

    v24 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v12 shortLoggingDescription];
      v38.location = a3;
      v38.length = a4;
      v27 = NSStringFromRange(v38);
      v33 = 138412546;
      v34 = v26;
      v35 = 2112;
      v36 = v27;
      _os_log_impl(&dword_1D4171000, v24, OS_LOG_TYPE_DEFAULT, "Found an attachment that we could not create a text attachment for: %@ at %@", &v33, 0x16u);
    }

LABEL_32:

    [*(a1 + 40) removeAttribute:*MEMORY[0x1E69DB5F8] range:{a3, a4}];
    goto LABEL_33;
  }

LABEL_37:
}

uint64_t __65__ICNote_UI__textStorage_didProcessEditing_range_changeInLength___block_invoke(uint64_t a1)
{
  [*(a1 + 32) filterAttachmentsInTextStorage:*(a1 + 40) range:{*(a1 + 48), *(a1 + 56)}];
  objc_opt_class();
  v2 = ICDynamicCast();
  [v2 styleTextInRange:{*(a1 + 48), *(a1 + 56)}];

  [*(a1 + 32) didChangeNoteText];
  if ([*(a1 + 32) regenerateTitleAndSnippetIfNecessaryForEdit:*(a1 + 64) range:*(a1 + 48) changeInLength:{*(a1 + 56), *(a1 + 72)}])
  {
    [*(a1 + 32) markShareDirtyIfNeededWithReason:@"Did process editing for text storage"];
  }

  v3 = *(a1 + 32);

  return [v3 didChangeValueForKey:@"isEmpty"];
}

void __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F4FC5D80])
  {
    v4 = ICProtocolCast();
    v5 = [v4 attachmentIdentifier];

    if (v5)
    {
      v6 = MEMORY[0x1E69B7680];
      v7 = [v4 attachmentIdentifier];
      v8 = [*(a1 + 32) managedObjectContext];
      v9 = [v6 attachmentWithIdentifier:v7 context:v8];

      if (v9)
      {
        v10 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke_cold_2(a1, v9);
        }

        [v9 updateMarkedForDeletionStateAttachmentIsInUse:(*(a1 + 40) & 1) == 0];
      }

      else
      {
        v11 = MEMORY[0x1E69B7778];
        v12 = [v4 attachmentIdentifier];
        v13 = [*(a1 + 32) managedObjectContext];
        v14 = [v11 attachmentWithIdentifier:v12 context:v13];

        if (v14)
        {
          v15 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke_cold_2(a1, v14);
          }

          [v14 updateMarkedForDeletionStateInlineAttachmentIsInUse:(*(a1 + 40) & 1) == 0];
        }
      }
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke_cold_4();
      }
    }

LABEL_19:
    goto LABEL_20;
  }

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke_cold_1();
    }

    goto LABEL_19;
  }

LABEL_20:
}

void __61__ICNote_UI__checklistStyleAccessibilityDescriptionForRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v12 = ICDynamicCast();

  v8 = *(*(a1 + 32) + 8);
  if (*(v8 + 24))
  {
    v9 = 1;
  }

  else
  {
    v9 = [v12 style] == 103;
    v8 = *(*(a1 + 32) + 8);
  }

  *(v8 + 24) = v9;
  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 24))
  {
    v11 = 1;
  }

  else
  {
    v11 = [v12 style] != 103;
    v10 = *(*(a1 + 40) + 8);
  }

  *(v10 + 24) = v11;
  if (*(*(*(a1 + 32) + 8) + 24) == 1 && *(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }
}

void __63__ICNote_UI__indentationStyleAccessibilityDescriptionForRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = ICDynamicCast();

  if (v10)
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v5 = [v10 indent];
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
    }

    *(*(*(a1 + 32) + 8) + 24) = v6;
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = [v10 indent];
    if (v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
    }

    *(*(*(a1 + 40) + 8) + 24) = v9;
  }
}

void __60__ICNote_UI__emphasisStyleAccessibilityDescriptionForRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v9 = v7;
  if (v7)
  {
    [v7 intValue];
    ICEmphasisColorTypeForTag();
    *(*(*(a1 + 32) + 8) + 24) |= ICEmphasisColorMaskFromType();
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) |= 1u;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (ICEmphasisNumberOfColorsInMask() == *MEMORY[0x1E69B75D0])
  {
    v8 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v8 = 0;
  }

  *a5 = v8 & 1;
}

void __64__ICNote_UI__updatePKDrawingsWithHandwritingRecognitionEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v9 attachmentModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 40);
    v6 = v4;
    [v6 setHandwritingRecognitionEnabled:v5];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24);
    *(v7 + 24) = 1;
    [v6 setTitleQueryEnabled:*(a1 + 40) & ~v8 & 1];
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t __49__ICNote_UI__addHashtagToNoteBody_onlyIfMissing___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 isHashtagAttachment];
  if (result)
  {
    v10 = [*(a1 + 32) textStorage];
    v11 = [v10 string];
    v12 = [v11 paragraphRangeForRange:{a3, a4}];
    v14 = v13;

    result = [*(a1 + 32) isHashtagRowAtRange:v12 outRangeForAppending:v14 outIndex:*(*(a1 + 40) + 8) + 32 forHashtagAttachment:0 outHashtagCount:{0, 0}];
    if (result)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a5 = 1;
    }
  }

  return result;
}

void __28__ICNote_UI__removeHashtag___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if ([v7 attachmentType] == 1)
  {
    v8 = [v7 tokenContentIdentifier];
    v9 = [a1[4] standardizedContent];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v64 = 0;
      v65 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = [a1[4] displayText];
      v62 = [v11 ic_withHashtagPrefix];

      v12 = [a1[5] textStorage];
      v13 = [v12 string];
      v14 = [v13 paragraphRangeForRange:{a3, a4}];
      v63 = v7;
      v16 = v15;

      if ([a1[5] isHashtagRowAtRange:v14 outRangeForAppending:v16 outIndex:0 forHashtagAttachment:&v65 outHashtagCount:{v7, &v64}])
      {
        if (a3)
        {
          while (1)
          {
            v17 = a3 - 1;
            v18 = [a1[5] textStorage];
            v19 = [v18 string];
            v20 = [v19 characterAtIndex:a3 - 1];

            if (a3 - 2 < 0)
            {
              v25 = 1;
            }

            else
            {
              v21 = [a1[5] textStorage];
              v22 = [v21 string];
              v23 = [v22 characterAtIndex:a3 - 2];

              v24 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
              v25 = [v24 characterIsMember:v23];
            }

            if (v64 == 1)
            {
              v26 = [MEMORY[0x1E696AB08] newlineCharacterSet];
              v27 = [v26 characterIsMember:v20] & v25;

              if (v27 == 1)
              {
                break;
              }
            }

            v28 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v29 = [v28 characterIsMember:v20];

            if (!v29)
            {
              v17 = a3;
              goto LABEL_17;
            }

            ++a4;
            --a3;
            if (!v17)
            {
              goto LABEL_17;
            }
          }

          ++a4;
        }

        else
        {
          v17 = 0;
        }

LABEL_17:
        v31 = 0;
        while (1)
        {
          v32 = [a1[5] textStorage];
          v33 = [v32 string];
          v34 = [v33 length];

          if (v17 + a4 >= v34 || (v31 & 1) != 0)
          {
            break;
          }

          v35 = [a1[5] textStorage];
          v36 = [v35 string];
          v37 = [v36 characterAtIndex:v17 + a4];

          v38 = [a1[5] textStorage];
          v39 = [v38 string];
          v40 = [v39 length];

          if (v40 >= v17 + a4 + 2)
          {
            v42 = [a1[5] textStorage];
            v43 = [v42 string];
            v44 = [v43 characterAtIndex:v17 + a4 + 1];

            v45 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
            v41 = [v45 characterIsMember:v44];
          }

          else
          {
            v41 = 1;
          }

          if (v64 == 1 && ([MEMORY[0x1E696AB08] newlineCharacterSet], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "characterIsMember:", v37) & v41, v46, (v47 & 1) != 0))
          {
            v31 = 1;
          }

          else
          {
            v48 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v49 = [v48 characterIsMember:v37];

            if (!v49)
            {
              break;
            }

            v31 = 0;
          }

          ++a4;
        }

        v50 = v65 == v64 - 1 || v65 == 0;
        v51 = @" ";
        if (v50)
        {
          v51 = &stru_1F4F94F00;
        }

        v30 = v51;

        v7 = v63;
      }

      else
      {
        v17 = a3;
        v30 = v62;
      }

      v52 = [a1[5] textStorage];
      [v52 replaceCharactersInRange:v17 withString:{a4, v30}];

      [a1[6] addObject:v7];
      v53 = [a1[5] textStorage];
      v54 = [v53 string];
      v55 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v56 = [v54 stringByTrimmingCharactersInSet:v55];
      v57 = [v56 length];

      if (!v57)
      {
        v58 = [a1[5] textStorage];
        v59 = [a1[5] textStorage];
        v60 = [v59 ic_range];
        [v58 replaceCharactersInRange:v60 withString:{v61, &stru_1F4F94F00}];
      }
    }
  }
}

uint64_t __101__ICNote_UI__isHashtagRowAtRange_outRangeForAppending_outIndex_forHashtagAttachment_outHashtagCount___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  objc_opt_class();
  v12 = ICDynamicCast();

  if (v12 && ([v12 isHashtagAttachment] & 1) != 0)
  {
    v10 = *(a1[6] + 8);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    ++*(*(a1[7] + 8) + 24);
    if (v12 == a1[4])
    {
      *(*(a1[8] + 8) + 24) = *(*(a1[7] + 8) + 24) - 1;
    }
  }

  else
  {
    *a5 = 1;
    *(*(a1[5] + 8) + 24) = 0;
  }

  return MEMORY[0x1EEE66BB8]();
}

void __53__ICNote_UI__icaxGalleryViewCustomContentDescription__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [*(a1 + 32) _icaxGalleryViewDescriptionForAttachment:a2 fromAttachments:*(a1 + 40) orInlineAttachments:*(a1 + 48)];
    v8 = v7;
    v9 = &stru_1F4F94F00;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    [*(a1 + 56) replaceCharactersInRange:a3 withString:{a4, v10}];
  }
}

void __53__ICNote_UI__icaxGalleryViewCustomContentDescription__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696ADA0];
  v6 = a2;
  v17 = objc_alloc_init(v5);
  objc_opt_class();
  v7 = ICDynamicCast();

  v8 = [v7 style];
  if (v8 <= 99)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v9 = @"Subheading";
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_26;
        }

        v9 = @"monostyled";
      }
    }

    else if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_26;
      }

      v9 = @"Heading";
    }

    else
    {
      v9 = @"Title";
    }

    goto LABEL_19;
  }

  if (v8 <= 101)
  {
    if (v8 == 100)
    {
      v9 = @"bullet";
    }

    else
    {
      v9 = @"dash";
    }

LABEL_19:
    v10 = __ICLocalizedFrameworkString_impl(v9, v9, 0, 1);
    v12 = [v10 mutableCopy];
    goto LABEL_24;
  }

  if (v8 == 102)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "_icaxItemNumberForParagraphAtLocation:withStyle:inAttrString:", a3, v7, *(a1 + 40))}];
    v13 = [v17 stringFromNumber:v10];
  }

  else
  {
    if (v8 != 103)
    {
      goto LABEL_26;
    }

    v10 = [v7 todo];
    if ([v10 done])
    {
      v11 = @"checklist, completed";
    }

    else
    {
      v11 = @"checklist, incomplete";
    }

    v13 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
  }

  v14 = v13;
  v12 = [v13 mutableCopy];

LABEL_24:
  if (v12)
  {
    [v12 appendString:{@", "}];
    v15 = *(a1 + 40);
    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v12];
    [v15 insertAttributedString:v16 atIndex:a3];
  }

LABEL_26:
}

void __75__ICNote_UI___icaxItemNumberForParagraphAtLocation_withStyle_inAttrString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  if ([v10 style] == 102 && (v7 = objc_msgSend(v10, "indent"), v7 == objc_msgSend(*(a1 + 32), "indent")))
  {
    if ([v10 startingItemNumber])
    {
      v8 = [v10 startingItemNumber];
    }

    else
    {
      v8 = 1;
    }

    *(*(*(a1 + 40) + 8) + 24) += v8;
  }

  else if ([v10 style] != 102 || (v9 = objc_msgSend(v10, "indent"), v9 < objc_msgSend(*(a1 + 32), "indent")))
  {
    *a5 = 1;
  }
}

void *__26__ICNote_UI__ic_wordCount__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ic_trimmedString];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void __52__ICNote_SearchIndexable_UI__dataForTypeIdentifier___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__ICNote_SearchIndexable_UI__dataForTypeIdentifier___block_invoke_cold_1(a1, v2);
  }

  v3 = [*(a1 + 40) textStorage];
  v4 = [v3 length];

  v5 = *(a1 + 40);
  v6 = [v5 textStorage];
  [v5 filterAttachmentsInTextStorage:v6 range:{0, v4}];

  v7 = [*(a1 + 40) textStorage];
  v8 = [v7 copyDataForUTI:*(a1 + 32) range:0 persistenceHelper:{v4, *(a1 + 40)}];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [*(*(*(a1 + 48) + 8) + 40) length];
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) shortLoggingDescription];
    v15 = 134218498;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEBUG, "Got %ld bytes for %@ %@", &v15, 0x20u);
  }
}

uint64_t __83__ICNote_AirDropDocumentUI__createNoteForAirDropDocument_legacyContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11)
  {
    if (!v12)
    {
LABEL_20:
      v22 = 0;
      goto LABEL_21;
    }

    v23 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __83__ICNote_AirDropDocumentUI__createNoteForAirDropDocument_legacyContext_completion___block_invoke_cold_2(v13, v23);
    }

LABEL_19:
    goto LABEL_20;
  }

  v14 = [v10 textStorage];
  v15 = [v10 textStorage];
  [v14 replaceCharactersInRange:0 withAttributedString:{objc_msgSend(v15, "length"), v11}];

  v16 = [v10 textStorage];
  [v16 resetUndoManager];

  [v10 markAsCallNoteIfAttachmentIsCallRecording];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [v10 attachments];
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v35 + 1) + 8 * v21++) setRemoteFileURL:0];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v19);
  }

  if (!v9)
  {
    if (*(a1 + 32))
    {
      objc_opt_class();
      v24 = ICCheckedDynamicCast();
      v25 = [v24 defaultStoreForNewNote];

      v26 = v25;
      v27 = [ICCopyModernNotesToLegacyAccountOperation alloc];
      v39 = v10;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __83__ICNote_AirDropDocumentUI__createNoteForAirDropDocument_legacyContext_completion___block_invoke_11;
      v33[3] = &unk_1E846B918;
      v29 = *(a1 + 32);
      v34 = *(a1 + 40);
      v30 = [(ICCopyModernNotesToLegacyAccountOperation *)v27 initWithNotes:v28 toFolder:v26 legacyContext:v29 didCopyBlock:v33];

      v31 = [MEMORY[0x1E696ADC8] mainQueue];
      [v31 addOperation:v30];

      goto LABEL_20;
    }

    v23 = os_log_create("com.apple.notes", "Export");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __83__ICNote_AirDropDocumentUI__createNoteForAirDropDocument_legacyContext_completion___block_invoke_cold_1(v23);
    }

    goto LABEL_19;
  }

  [v10 setFolder:v9];
  v22 = 1;
LABEL_21:

  return v22;
}

uint64_t __83__ICNote_AirDropDocumentUI__createNoteForAirDropDocument_legacyContext_completion___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [MEMORY[0x1E69B77F0] deleteNote:a2];
  if (v7)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = (*(v5 + 16))(v5, v7);
    }
  }

  return MEMORY[0x1EEE66BB8](v5);
}

void __51__ICNote_UI__filterAttachmentsInTextStorage_range___block_invoke_2_cold_1(void *a1, NSUInteger a2, NSUInteger a3)
{
  v5 = [a1 shortLoggingDescription];
  v12.location = a2;
  v12.length = a3;
  v6 = NSStringFromRange(v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4171000, v0, OS_LOG_TYPE_ERROR, "found a non-ICTTAttachment attachment: %@", v1, 0xCu);
}

void __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v2 = [a2 ic_loggingIdentifier];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke_cold_4()
{
  objc_opt_class();
  v0 = ICDynamicCast();
  v1 = [v0 attachment];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __52__ICNote_SearchIndexable_UI__dataForTypeIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) shortLoggingDescription];
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Getting %@ data for %@", &v5, 0x16u);
}

void __83__ICNote_AirDropDocumentUI__createNoteForAirDropDocument_legacyContext_completion___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error copying values to note %@", &v4, 0xCu);
}

@end