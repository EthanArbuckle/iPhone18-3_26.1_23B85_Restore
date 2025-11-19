@interface NSDictionary(SFExtras)
- (id)sf_asActionItem:()SFExtras;
- (id)sf_asAirport;
- (id)sf_asAppLink:()SFExtras;
- (id)sf_asAppLinkCardSection:()SFExtras;
- (id)sf_asButton:()SFExtras;
- (id)sf_asColor:()SFExtras;
- (id)sf_asDescriptionCardSection:()SFExtras;
- (id)sf_asDetailedRowCardSection:()SFExtras;
- (id)sf_asFlight;
- (id)sf_asFlightCardSection:()SFExtras;
- (id)sf_asFormattedText:()SFExtras;
- (id)sf_asImage:()SFExtras;
- (id)sf_asKeyValueDataCardSection:()SFExtras;
- (id)sf_asMediaDetail:()SFExtras;
- (id)sf_asMediaInfoCardSection:()SFExtras;
- (id)sf_asMediaItem:()SFExtras;
- (id)sf_asMediaOffer:()SFExtras;
- (id)sf_asMediaPlayerCardSection:()SFExtras;
- (id)sf_asMetaInfoCardSection:()SFExtras;
- (id)sf_asNowPlayingCardSection:()SFExtras;
- (id)sf_asPunchout:()SFExtras;
- (id)sf_asResultEntity;
- (id)sf_asRichText:()SFExtras;
- (id)sf_asRichTitleCardSection:()SFExtras;
- (id)sf_asRowCardSection:()SFExtras;
- (id)sf_asScoreboardCardSection:()SFExtras;
- (id)sf_asSearchResult:()SFExtras factory:;
- (id)sf_asSocialMediaPostCardSection:()SFExtras;
- (id)sf_asStockChartCardSection:()SFExtras;
- (id)sf_asSuggestion:()SFExtras;
- (id)sf_asSuggestionCardSection:()SFExtras;
- (id)sf_asTableAlignmentSchema;
- (id)sf_asTableRowCardSection:()SFExtras;
- (id)sf_asTextColumnsCardSection:()SFExtras;
- (id)sf_asTitleCardSection:()SFExtras;
- (id)sf_asTopic;
- (id)sf_asTrack:()SFExtras;
- (id)sf_asTrackListCardSection:()SFExtras;
- (id)sf_asWatchListCardSection:()SFExtras;
- (id)sf_asWatchListItem:()SFExtras;
- (id)sf_asWebCardSection:()SFExtras;
- (id)sf_imageForKey:()SFExtras reply:;
- (uint64_t)sf_textColorForKey:()SFExtras;
- (void)sf_baseCardSection:()SFExtras reply:;
@end

@implementation NSDictionary(SFExtras)

- (id)sf_asResultEntity
{
  v2 = objc_alloc_init(MEMORY[0x1E69CA370]);
  v3 = [a1 parsec_stringForKey:@"name"];
  [v2 setName:v3];

  v4 = [a1 parsec_stringForKey:@"maps_encrypted_muid"];
  [v2 setMaps_encrypted_muid:v4];

  v5 = objc_alloc_init(MEMORY[0x1E69CA1D0]);
  v6 = [a1 parsec_dictionaryForKey:@"location_type_info"];
  v7 = [v6 parsec_stringForKey:@"address"];
  [v5 setAddress:v7];

  [v2 setLocation_type_info:v5];

  return v2;
}

- (id)sf_asWatchListCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA5A8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 sf_baseCardSection:v6 reply:v5];
  v7 = [a1 objectForKey:@"watch_list_item"];
  v8 = [v7 sf_asWatchListItem:v5];

  [v6 setWatchListItem:v8];

  return v6;
}

- (id)sf_asSuggestionCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA4B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 sf_baseCardSection:v6 reply:v5];

  v7 = [a1 parsec_stringForKey:@"suggestion"];
  v8 = [MEMORY[0x1E69CA3A0] textWithString:v7];
  [v6 setSuggestionText:v8];

  [v6 setIsContact:{objc_msgSend(a1, "parsec_BOOLForKey:", @"is_contact"}];
  v9 = MEMORY[0x1E69CA3A0];
  v10 = [a1 parsec_stringForKey:@"detail_text"];
  v11 = [v9 textWithString:v10];
  [v6 setDetailText:v11];

  return v6;
}

- (id)sf_asFlightCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA0D8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 sf_baseCardSection:v6 reply:v5];

  v7 = [a1 parsec_numberForKey:@"selected_leg_index"];
  v8 = v7;
  if (v7)
  {
    [v6 setSelectedLegIndex:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }

  v9 = [a1 parsec_dictionaryForKey:@"flight"];
  v10 = [v9 sf_asFlight];
  [v6 setFlight:v10];

  return v6;
}

- (id)sf_asWebCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA5C8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 sf_baseCardSection:v6 reply:v5];

  v7 = [a1 parsec_stringForKey:@"html"];
  if (v7)
  {
    [v6 setHtmlString:v7];
  }

  return v6;
}

- (id)sf_asStockChartCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA490];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 sf_baseCardSection:v6 reply:v5];

  v7 = [a1 parsec_URLForKey:@"third_party_content"];
  if (v7)
  {
    [v6 setThirdPartyContentURL:v7];
  }

  return v6;
}

- (id)sf_asTextColumnsCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA508];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 sf_baseCardSection:v6 reply:v5];

  v7 = [a1 parsec_arrayForKey:@"columns"];
  v8 = [v7 parsec_mapAndFilterObjectsUsingBlock:&__block_literal_global_908];
  [v6 setColumns:v8];

  return v6;
}

- (id)sf_asDetailedRowCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA020]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 sf_imageForKey:@"thumbnail" reply:v4];
  [v5 setThumbnail:v6];

  [v5 setPreventThumbnailImageScaling:{objc_msgSend(a1, "parsec_BOOLForKey:", @"thumbnail_image_scaling"}];
  v7 = [a1 objectForKey:@"title"];
  v8 = [v7 sf_asRichText:v4];
  [v5 setTitle:v8];

  v9 = [a1 objectForKey:@"secondary_title"];
  v10 = [v9 sf_asFormattedText:v4];
  [v5 setSecondaryTitle:v10];

  v11 = [a1 sf_imageForKey:@"secondary_image" reply:v4];
  [v5 setSecondaryTitleImage:v11];

  [v5 setIsSecondaryTitleDetached:{objc_msgSend(a1, "parsec_BOOLForKey:", @"secondary_title_detached"}];
  v12 = [a1 parsec_arrayForKey:@"descriptions"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __54__NSDictionary_SFExtras__sf_asDetailedRowCardSection___block_invoke;
  v32[3] = &unk_1E7AC5F00;
  v33 = v4;
  v13 = v4;
  v14 = [v12 parsec_mapObjectsUsingBlock:v32];
  [v5 setDescriptions:v14];

  v15 = [a1 objectForKey:@"footnote"];
  v16 = [v15 sf_asRichText:v13];
  [v5 setFootnote:v16];

  v17 = [a1 objectForKey:@"trailing_top_text"];
  v18 = [v17 sf_asFormattedText:v13];
  [v5 setTrailingTopText:v18];

  v19 = [a1 objectForKey:@"trailing_middle_text"];
  v20 = [v19 sf_asFormattedText:v13];
  [v5 setTrailingMiddleText:v20];

  v21 = [a1 objectForKey:@"trailing_bottom_text"];
  v22 = [v21 sf_asFormattedText:v13];
  [v5 setTrailingBottomText:v22];

  v23 = [a1 parsec_dictionaryForKey:@"action_item"];
  v24 = [v23 sf_asActionItem:v13];
  [v5 setAction:v24];

  v25 = [a1 objectForKey:@"button"];
  v26 = [v25 sf_asButton:v13];
  [v5 setButton:v26];

  v27 = [a1 objectForKey:@"background_color"];
  v28 = [v27 sf_asColor:v13];
  [v5 setBackgroundColor:v28];

  v29 = [a1 objectForKey:@"top_text"];
  v30 = [v29 sf_asRichText:v13];
  [v5 setTopText:v30];

  return v5;
}

- (id)sf_asColor:()SFExtras
{
  v2 = objc_alloc_init(MEMORY[0x1E69C9F78]);
  v3 = [a1 parsec_numberForKey:@"red_component"];
  [v3 floatValue];
  [v2 setRedComponent:v4];

  v5 = [a1 parsec_numberForKey:@"green_component"];
  [v5 floatValue];
  [v2 setGreenComponent:v6];

  v7 = [a1 parsec_numberForKey:@"blue_component"];
  [v7 floatValue];
  [v2 setBlueComponent:v8];

  v9 = [a1 parsec_numberForKey:@"alpha_component"];
  [v9 floatValue];
  [v2 setAlphaComponent:v10];

  return v2;
}

- (id)sf_asButton:()SFExtras
{
  v4 = MEMORY[0x1E69C9EC0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 sf_imageForKey:@"image" reply:v5];
  [v6 setImage:v7];

  v8 = [a1 sf_imageForKey:@"selected_image" reply:v5];

  [v6 setSelectedImage:v8];

  return v6;
}

- (id)sf_asTableRowCardSection:()SFExtras
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 parsec_numberForKey:@"row_type"];
  v6 = [v5 integerValue];

  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = objc_alloc_init(MEMORY[0x1E69CA4E8]);
        [v7 setIsSubHeader:1];
LABEL_18:
        [a1 sf_baseCardSection:v7 reply:v4];
        v15 = [a1 parsec_stringForKey:@"table_id"];
        [v7 setTableIdentifier:v15];

        v16 = [a1 parsec_dictionaryForKey:@"alignment_schema"];
        v17 = [v16 sf_asTableAlignmentSchema];
        [v7 setAlignmentSchema:v17];

        v18 = [a1 parsec_arrayForKey:@"value"];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __51__NSDictionary_SFExtras__sf_asTableRowCardSection___block_invoke;
        v27[3] = &unk_1E7AC5F00;
        v28 = v4;
        v19 = [v18 parsec_mapObjectsUsingBlock:v27];
        [v7 setData:v19];

        v20 = [a1 parsec_stringForKey:@"tab_group_id"];
        [v7 setTabGroupIdentifier:v20];

        [v7 setReducedRowHeight:{objc_msgSend(a1, "parsec_BOOLForKey:", @"reduced_row_height"}];
        v21 = [a1 parsec_numberForKey:@"vertical_align"];
        [v7 setVerticalAlign:{objc_msgSend(v21, "sf_asRowAlignment")}];

        [v7 setHasTopPadding:{objc_msgSend(a1, "parsec_BOOLForKey:", @"card_padding_top"}];
        v22 = [a1 parsec_numberForKey:@"align_rows_to_header"];
        v23 = v22;
        if (v22)
        {
          v24 = [v22 BOOLValue];
        }

        else
        {
          v24 = 1;
        }

        [v7 setAlignRowsToHeader:v24];
        v13 = v7;

        goto LABEL_22;
      }

      goto LABEL_11;
    }

    v14 = MEMORY[0x1E69CA4E8];
LABEL_17:
    v7 = objc_alloc_init(v14);
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    v14 = MEMORY[0x1E69CA4E0];
    goto LABEL_17;
  }

  if (v6 == 3)
  {
    if (PARLogHandleForCategory_onceToken_364 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_364, &__block_literal_global_1075);
    }

    v8 = PARLogHandleForCategory_logHandles_1_365;
    if (!os_log_type_enabled(PARLogHandleForCategory_logHandles_1_365, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v9 = "table row card section footer unsupported";
    v10 = v8;
    v11 = 2;
    goto LABEL_26;
  }

LABEL_11:
  if (PARLogHandleForCategory_onceToken_364 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_364, &__block_literal_global_1075);
  }

  v12 = PARLogHandleForCategory_logHandles_1_365;
  if (!os_log_type_enabled(PARLogHandleForCategory_logHandles_1_365, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  *buf = 134217984;
  v30 = v6;
  v9 = "unknown table row card section row type: %ld";
  v10 = v12;
  v11 = 12;
LABEL_26:
  _os_log_error_impl(&dword_1B1064000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
LABEL_14:
  v13 = 0;
LABEL_22:

  v25 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)sf_asTableAlignmentSchema
{
  v2 = objc_alloc_init(MEMORY[0x1E69CA4D0]);
  v3 = [a1 parsec_arrayForKey:@"column_align"];
  v4 = [a1 parsec_arrayForKey:@"within_column_align"];
  v5 = [a1 parsec_arrayForKey:@"equal_width"];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__NSDictionary_SFExtras__sf_asTableAlignmentSchema__block_invoke;
  v14 = &unk_1E7AC6030;
  v15 = v4;
  v16 = v5;
  v6 = v5;
  v7 = v4;
  v8 = [v3 parsec_mapObjectsUsingBlock:&v11];
  [v2 setTableColumnAlignment:{v8, v11, v12, v13, v14}];

  v9 = [a1 parsec_dictionaryForKey:@"metadata"];
  [v2 setMetadata:v9];

  return v2;
}

- (id)sf_asKeyValueDataCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA178]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_arrayForKey:@"keys"];
  v7 = [a1 parsec_arrayForKey:@"values"];
  if ([v6 count] && (v8 = objc_msgSend(v6, "count"), v8 == objc_msgSend(v7, "count")))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__NSDictionary_SFExtras__sf_asKeyValueDataCardSection___block_invoke;
    v13[3] = &unk_1E7AC6008;
    v14 = v7;
    v9 = [v6 parsec_mapAndFilterObjectsUsingBlock:v13];
    [v5 setData:v9];

    v10 = [a1 sf_imageForKey:@"image" reply:v4];
    [v5 setAccessoryImage:v10];

    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)sf_asNowPlayingCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA270]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_stringForKey:@"title"];
  [v5 setTitle:v6];

  v7 = [a1 parsec_stringForKey:@"subtitle"];
  [v5 setSubtitle:v7];

  v8 = [a1 parsec_arrayForKey:@"movies"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__NSDictionary_SFExtras__sf_asNowPlayingCardSection___block_invoke;
  v12[3] = &unk_1E7AC5F00;
  v13 = v4;
  v9 = v4;
  v10 = [v8 parsec_mapObjectsUsingBlock:v12];
  [v5 setMovies:v10];

  return v5;
}

- (id)sf_asScoreboardCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA3D8]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_stringForKey:@"title"];
  [v5 setTitle:v6];

  v7 = [a1 parsec_stringForKey:@"sub_title"];
  [v5 setSubtitle:v7];

  v8 = [a1 parsec_stringForKey:@"readable_string"];
  [v5 setAccessibilityDescription:v8];

  v9 = [a1 parsec_arrayForKey:@"images"];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53__NSDictionary_SFExtras__sf_asScoreboardCardSection___block_invoke;
  v21[3] = &unk_1E7AC5FE0;
  v22 = v4;
  v10 = v4;
  v11 = [v9 parsec_mapAndFilterObjectsUsingBlock:v21];

  if ([v11 count] == 2)
  {
    v12 = [a1 parsec_arrayForKey:@"scores"];
    if ([v12 count] == 2)
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v11 objectAtIndexedSubscript:0];
      [v14 setScore:v13];

      v15 = [v12 objectAtIndexedSubscript:1];
      v16 = [v11 objectAtIndexedSubscript:1];
      [v16 setScore:v15];
    }

    v17 = [v11 objectAtIndexedSubscript:0];
    [v5 setTeam1:v17];

    v18 = [v11 objectAtIndexedSubscript:1];
    [v5 setTeam2:v18];

    v19 = [a1 parsec_stringForKey:@"event_status"];
    [v5 setEventStatus:v19];
  }

  return v5;
}

- (id)sf_asMetaInfoCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA250];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setTrending:{objc_msgSend(a1, "parsec_BOOLForKey:", @"trending"}];
  v7 = [a1 parsec_URLForKey:@"host_page_url"];
  [v6 setHostPageURL:v7];

  v8 = [a1 parsec_URLForKey:@"content_url"];
  [v6 setContentURL:v8];

  v9 = [a1 sf_imageForKey:@"badge_image" reply:v5];

  [v6 setBadge:v9];

  return v6;
}

- (id)sf_asSocialMediaPostCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA458]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_stringForKey:@"title"];
  [v5 setName:v6];

  [v5 setNameNoWrap:{objc_msgSend(a1, "parsec_BOOLForKey:", @"title_nowrap"}];
  v7 = [a1 parsec_numberForKey:@"title_maxlines"];
  [v5 setNameMaxLines:v7];

  v8 = [a1 parsec_stringForKey:@"subtitle"];
  [v5 setHandle:v8];

  v9 = [a1 sf_imageForKey:@"title_glyph" reply:v4];
  [v5 setVerifiedGlyph:v9];

  v10 = [a1 sf_imageForKey:@"thumbnail" reply:v4];
  [v5 setProfilePicture:v10];

  v11 = objc_alloc_init(MEMORY[0x1E69CA3A0]);
  v12 = [a1 objectForKeyedSubscript:@"formatted_text"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__NSDictionary_SFExtras__sf_asSocialMediaPostCardSection___block_invoke;
  v19[3] = &unk_1E7AC5F00;
  v20 = v4;
  v13 = v4;
  v14 = [v12 parsec_mapAndFilterObjectsUsingBlock:v19];
  [v11 setFormattedTextPieces:v14];

  [v5 setPost:v11];
  v15 = [a1 sf_imageForKey:@"image" reply:v13];
  [v5 setPicture:v15];

  v16 = [a1 parsec_stringForKey:@"date"];
  [v5 setTimestamp:v16];

  v17 = [a1 parsec_stringForKey:@"footnote"];
  [v5 setFootnote:v17];

  return v5;
}

- (id)sf_asMediaPlayerCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA248]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_stringForKey:@"title"];
  [v5 setTitle:v6];

  v7 = [a1 parsec_arrayForKey:@"trailers"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__NSDictionary_SFExtras__sf_asMediaPlayerCardSection___block_invoke;
  v11[3] = &unk_1E7AC5FB8;
  v12 = v4;
  v8 = v4;
  v9 = [v7 parsec_mapAndFilterObjectsUsingBlock:v11];
  [v5 setMediaItems:v9];

  return v5;
}

- (id)sf_asMediaInfoCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA228]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 sf_asMediaItem:v4];
  [v5 setMediaItem:v6];

  v7 = [a1 parsec_arrayForKey:@"sections"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__NSDictionary_SFExtras__sf_asMediaInfoCardSection___block_invoke;
  v27[3] = &unk_1E7AC5F00;
  v8 = v4;
  v28 = v8;
  v9 = [v7 parsec_mapObjectsUsingBlock:v27];
  [v5 setDetails:v9];

  v10 = [a1 parsec_dictionaryForKey:@"action_button"];
  v11 = [v10 sf_asActionItem:v8];
  [v5 setPlayAction:v11];

  v12 = [a1 parsec_arrayForKey:@"buy_button_sections"];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __52__NSDictionary_SFExtras__sf_asMediaInfoCardSection___block_invoke_2;
  v25 = &unk_1E7AC5F00;
  v26 = v8;
  v13 = v8;
  v14 = [v12 parsec_mapObjectsUsingBlock:&v22];
  [v5 setOffers:{v14, v22, v23, v24, v25}];

  v15 = [a1 parsec_stringForKey:@"watchlist_identifier"];
  [v5 setWatchListIdentifier:v15];

  v16 = [a1 parsec_stringForKey:@"watchlist_button_label"];
  [v5 setWatchListButtonLabel:v16];

  v17 = [a1 parsec_stringForKey:@"watchlist_confirmation_text"];
  [v5 setWatchListConfirmationText:v17];

  v18 = [a1 parsec_stringForKey:@"watchlist_continuation_text"];
  [v5 setWatchListContinuationText:v18];

  [v5 setIsMediaContainer:{objc_msgSend(a1, "parsec_BOOLForKey:", @"is_media_container"}];
  v19 = [a1 objectForKey:@"special_offer"];
  v20 = [v19 sf_asRichText:v13];
  [v5 setSpecialOfferButtonLabel:v20];

  return v5;
}

- (id)sf_asMediaOffer:()SFExtras
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69CA240];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 parsec_stringForKey:@"title"];
  [v6 setLabel:v7];

  v8 = [a1 parsec_stringForKey:@"subtitle"];
  [v6 setSublabel:v8];

  v9 = [a1 parsec_stringForKey:@"offer_type"];
  [v6 setOfferIdentifier:v9];

  v10 = [a1 parsec_stringForKey:@"adam_id"];
  v11 = v10;
  if (v10)
  {
    v22[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v6 setStoreIdentifiers:v12];
  }

  else
  {
    [v6 setStoreIdentifiers:0];
  }

  v13 = [a1 parsec_URLForKey:@"url"];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69CA320]);
    v21 = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v14 setUrls:v15];

    v16 = [v6 offerIdentifier];
    if (v16)
    {
      [v14 setActionTarget:v16];
    }

    else
    {
      v17 = [a1 parsec_stringForKey:@"action_target_id"];
      [v14 setActionTarget:v17];
    }

    [v6 setPunchout:v14];
  }

  [v6 setIsEnabled:{objc_msgSend(a1, "parsec_BOOLForKey:", @"enabled"}];
  v18 = [a1 sf_imageForKey:@"image" reply:v5];

  [v6 setImage:v18];
  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)sf_asTrack:()SFExtras
{
  v4 = MEMORY[0x1E69CA530];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 parsec_stringForKey:@"name"];
  [v6 setTitle:v7];

  v8 = [a1 parsec_URLForKey:@"preview_url"];
  [v6 setPreview:v8];
  [v6 setHighlighted:{objc_msgSend(a1, "parsec_BOOLForKey:", @"highlighted"}];
  v9 = [a1 parsec_stringForKey:@"number"];
  [v6 setNumber:v9];

  v10 = [a1 parsec_stringForKey:@"length"];
  [v6 setDuration:v10];

  v11 = [a1 parsec_dictionaryForKey:@"action_button"];
  v12 = [v11 sf_asActionItem:v5];

  [v6 setPlayAction:v12];

  return v6;
}

- (id)sf_asAppLink:()SFExtras
{
  v4 = MEMORY[0x1E69C9EA0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 parsec_stringForKey:@"title"];
  [v6 setTitle:v7];

  v8 = [a1 parsec_URLForKey:@"url"];
  v9 = [MEMORY[0x1E69CA320] punchoutWithURL:v8];
  [v6 setAppPunchout:v9];

  v10 = [a1 sf_imageForKey:@"image" reply:v5];

  [v6 setImage:v10];
  v11 = [a1 parsec_stringForKey:@"image_align"];
  [v6 setImageAlign:{objc_msgSend(v11, "sf_asImageAlignment")}];

  return v6;
}

- (id)sf_asWatchListItem:()SFExtras
{
  v2 = objc_alloc_init(MEMORY[0x1E69CA5B0]);
  v3 = [a1 parsec_stringForKey:@"watchlist_identifier"];
  [v2 setWatchListIdentifier:v3];

  v4 = [a1 parsec_stringForKey:@"added_to_upnext_text"];
  [v2 setAddedToUpNextText:v4];

  v5 = [a1 parsec_stringForKey:@"add_to_upnext_text"];
  [v2 setAddToUpNextText:v5];

  v6 = [a1 parsec_stringForKey:@"in_upnext_text"];
  [v2 setInUpNextText:v6];

  v7 = [a1 parsec_stringForKey:@"season_episode_format"];
  [v2 setSeasonEpisodeTextFormat:v7];

  v8 = [a1 parsec_stringForKey:@"continue_in_format"];
  [v2 setContinueInTextFormat:v8];

  v9 = [a1 parsec_stringForKey:@"open_button"];
  [v2 setOpenButtonTitle:v9];

  v10 = [a1 parsec_stringForKey:@"install_button"];
  [v2 setInstallButtonTitle:v10];

  v11 = [a1 parsec_stringForKey:@"purchase_offer_format"];
  [v2 setPurchaseOfferTextFormat:v11];

  v12 = [a1 parsec_stringForKey:@"watch_live_in_format"];
  [v2 setWatchLiveTextFormat:v12];

  return v2;
}

- (id)sf_asMediaDetail:()SFExtras
{
  v2 = objc_alloc_init(MEMORY[0x1E69CA220]);
  v3 = [a1 parsec_stringForKey:@"title"];
  [v2 setTitle:v3];

  v4 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
  v5 = [a1 parsec_stringForKey:@"description"];
  [v4 setText:v5];

  v6 = [a1 parsec_numberForKey:@"description_maxlines"];
  [v4 setMaxLines:{objc_msgSend(v6, "unsignedIntegerValue")}];

  [v2 setContent:v4];

  return v2;
}

- (id)sf_asMediaItem:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA230]);
  v6 = [a1 parsec_stringForKey:@"title"];
  [v5 setTitle:v6];

  v7 = MEMORY[0x1E69CA4F0];
  v8 = [a1 parsec_stringForKey:@"subtitle"];
  v9 = [v7 textWithString:v8];
  [v5 setSubtitleText:v9];

  v10 = [a1 parsec_numberForKey:@"subtitle_maxlines"];
  v11 = [v10 unsignedIntegerValue];
  v12 = [v5 subtitleText];
  [v12 setMaxLines:v11];

  v13 = [a1 sf_imageForKey:@"image" reply:v4];
  [v5 setThumbnail:v13];

  v14 = [a1 sf_imageForKey:@"rt_glyph" reply:v4];
  [v5 setReviewGlyph:v14];

  v15 = [a1 sf_imageForKey:@"image_overlay" reply:v4];
  [v5 setOverlayImage:v15];

  v16 = [a1 parsec_stringForKey:@"rt_text"];
  [v5 setReviewText:v16];

  v17 = MEMORY[0x1E69CA320];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __41__NSDictionary_SFExtras__sf_asMediaItem___block_invoke;
  v38[3] = &unk_1E7AC5F90;
  v38[4] = a1;
  v18 = [&unk_1F27A0908 parsec_mapAndFilterObjectsUsingBlock:v38];
  v19 = [v17 punchoutWithURLs:v18];
  [v5 setPunchout:v19];

  v20 = [a1 objectForKey:@"trailer_url"];

  if (v20)
  {
    v21 = [a1 parsec_stringForKey:@"caption"];
    [v5 setTitle:v21];

    v22 = [a1 parsec_URLForKey:@"trailer_url"];
    v23 = [v22 sf_asPunchout];

    [v23 setActionTarget:@"trailer"];
    [v5 setPunchout:v23];
  }

  v24 = [a1 parsec_stringForKey:@"content_rating_text"];
  [v5 setContentAdvisory:v24];

  v25 = [a1 parsec_arrayForKey:@"more_glyphs"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __41__NSDictionary_SFExtras__sf_asMediaItem___block_invoke_2;
  v36[3] = &unk_1E7AC5F00;
  v26 = v4;
  v37 = v26;
  v27 = [v25 parsec_mapAndFilterObjectsUsingBlock:v36];

  v28 = [a1 parsec_arrayForKey:@"subtitle_custom_line_breaking"];
  [v5 setSubtitleCustomLineBreaking:v28];

  v29 = [a1 parsec_arrayForKey:@"buy_button_sections"];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __41__NSDictionary_SFExtras__sf_asMediaItem___block_invoke_3;
  v34[3] = &unk_1E7AC5F00;
  v35 = v26;
  v30 = v26;
  v31 = [v29 parsec_mapObjectsUsingBlock:v34];
  [v5 setBuyOptions:v31];

  v32 = [v27 firstObject];
  [v5 setContentAdvisoryImage:v32];

  return v5;
}

- (id)sf_asDescriptionCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA018];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 sf_baseCardSection:v6 reply:v5];
  v7 = [a1 parsec_stringForKey:@"title"];
  [v6 setTitle:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
  v9 = [a1 parsec_stringForKey:@"description"];
  [v8 setText:v9];

  v10 = [a1 parsec_numberForKey:@"description_maxlines"];
  [v8 setMaxLines:{objc_msgSend(v10, "unsignedIntegerValue")}];

  [v6 setDescriptionText:v8];
  v11 = [a1 parsec_stringForKey:@"description_expand_text"];
  [v6 setExpandText:v11];

  v12 = [a1 sf_imageForKey:@"image" reply:v5];
  [v6 setImage:v12];

  [v6 setTitleNoWrap:{objc_msgSend(a1, "parsec_BOOLForKey:", @"title_nowrap"}];
  v13 = [a1 parsec_numberForKey:@"title_weight"];
  [v6 setTitleWeight:v13];

  v14 = [a1 parsec_numberForKey:@"description_size"];
  [v6 setDescriptionSize:v14];

  v15 = [a1 parsec_numberForKey:@"description_weight"];
  [v6 setDescriptionWeight:v15];

  [v6 setDescriptionExpand:{objc_msgSend(a1, "parsec_BOOLForKey:", @"description_expand"}];
  v16 = [a1 parsec_stringForKey:@"image_align"];
  [v6 setImageAlign:{objc_msgSend(v16, "sf_asImageAlignment")}];

  v17 = [a1 parsec_stringForKey:@"text_align"];
  [v6 setTextAlign:{objc_msgSend(v17, "sf_asTextAlignment")}];

  v18 = [a1 parsec_stringForKey:@"attribution_text"];
  [v6 setAttributionText:v18];

  v19 = [a1 parsec_URLForKey:@"attribution_url"];
  [v6 setAttributionURL:v19];

  v20 = [a1 sf_imageForKey:@"attribution_glyph" reply:v5];

  [v6 setAttributionGlyph:v20];

  return v6;
}

- (id)sf_asTrackListCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA538]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_stringForKey:@"title"];
  [v5 setTitle:v6];

  v7 = [a1 parsec_arrayForKey:@"tracks"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__NSDictionary_SFExtras__sf_asTrackListCardSection___block_invoke;
  v11[3] = &unk_1E7AC5F00;
  v12 = v4;
  v8 = v4;
  v9 = [v7 parsec_mapObjectsUsingBlock:v11];
  [v5 setTracks:v9];

  return v5;
}

- (id)sf_asAppLinkCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69C9EA8]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_stringForKey:@"title"];
  [v5 setTitle:v6];

  v7 = [a1 parsec_arrayForKey:@"sections"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__NSDictionary_SFExtras__sf_asAppLinkCardSection___block_invoke;
  v11[3] = &unk_1E7AC5F00;
  v12 = v4;
  v8 = v4;
  v9 = [v7 parsec_mapObjectsUsingBlock:v11];
  [v5 setAppLinks:v9];

  return v5;
}

- (id)sf_asTitleCardSection:()SFExtras
{
  v4 = MEMORY[0x1E69CA518];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 sf_baseCardSection:v6 reply:v5];

  v7 = [a1 parsec_stringForKey:@"title"];
  [v6 setTitle:v7];

  return v6;
}

- (id)sf_asRichTitleCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA3A8]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_stringForKey:@"title"];
  [v5 setTitle:v6];

  v7 = [a1 parsec_stringForKey:@"title_align"];
  [v5 setIsCentered:{objc_msgSend(v7, "isEqualToString:", @"center"}];

  v8 = [a1 parsec_stringForKey:@"subtitle"];
  [v5 setSubtitle:v8];

  v9 = [a1 parsec_stringForKey:@"content_rating_text"];
  [v5 setContentAdvisory:v9];

  v10 = [a1 sf_imageForKey:@"image" reply:v4];
  [v5 setTitleImage:v10];

  v11 = [a1 parsec_stringForKey:@"description"];
  [v5 setDescriptionText:v11];

  v12 = [a1 sf_imageForKey:@"rt_glyph" reply:v4];
  [v5 setReviewGlyph:v12];

  v13 = [a1 parsec_stringForKey:@"rt_text"];
  [v5 setReviewText:v13];

  [v5 setReviewNewLine:{objc_msgSend(a1, "parsec_BOOLForKey:", @"rt_newline"}];
  v14 = [a1 parsec_arrayForKey:@"more_glyphs"];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __52__NSDictionary_SFExtras__sf_asRichTitleCardSection___block_invoke;
  v39[3] = &unk_1E7AC5F00;
  v15 = v4;
  v40 = v15;
  v16 = [v14 parsec_mapAndFilterObjectsUsingBlock:v39];
  [v5 setMoreGlyphs:v16];

  v17 = [a1 parsec_dictionaryForKey:@"auxiliary_info"];
  v18 = [v17 parsec_stringForKey:@"top_text"];
  [v5 setAuxiliaryTopText:v18];

  v19 = [v17 parsec_stringForKey:@"middle_text"];
  [v5 setAuxiliaryMiddleText:v19];

  v20 = [v17 parsec_stringForKey:@"bottom_text"];
  [v5 setAuxiliaryBottomText:v20];

  [v5 setAuxiliaryBottomTextColor:{objc_msgSend(v17, "sf_textColorForKey:", @"bottom_text_color"}];
  v21 = [v17 parsec_numberForKey:@"align"];
  [v5 setAuxiliaryAlignment:v21];

  [v5 setHideVerticalDivider:{objc_msgSend(a1, "parsec_BOOLForKey:", @"hide_vertical_divider"}];
  v22 = [a1 parsec_stringForKey:@"title_align"];
  [v5 setTitleAlign:{objc_msgSend(v22, "sf_asTextAlignment")}];

  v23 = [a1 parsec_numberForKey:@"title_weight"];
  [v5 setTitleWeight:v23];

  [v5 setThumbnailCropCircle:{objc_msgSend(a1, "parsec_BOOLForKey:", @"thumbnail_crop_circle"}];
  v24 = [a1 sf_imageForKey:@"image_overlay" reply:v15];
  [v5 setImageOverlay:v24];

  v25 = [a1 parsec_numberForKey:@"rating"];
  [v5 setRating:v25];

  v26 = [a1 parsec_stringForKey:@"rating_text"];
  [v5 setRatingText:v26];

  v27 = [a1 parsec_dictionaryForKey:@"action_button"];
  v28 = [v27 sf_asActionItem:v15];
  [v5 setPlayAction:v28];

  v29 = [a1 parsec_stringForKey:@"action_button_align"];
  [v5 setPlayActionAlign:{objc_msgSend(v29, "sf_asButtonAlignment")}];

  v30 = [a1 parsec_arrayForKey:@"buy_button_sections"];
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __52__NSDictionary_SFExtras__sf_asRichTitleCardSection___block_invoke_2;
  v37 = &unk_1E7AC5F00;
  v38 = v15;
  v31 = v15;
  v32 = [v30 parsec_mapObjectsUsingBlock:&v34];
  [v5 setOffers:{v32, v34, v35, v36, v37}];

  return v5;
}

- (id)sf_asRowCardSection:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA3B0]);
  [a1 sf_baseCardSection:v5 reply:v4];
  v6 = [a1 parsec_stringForKey:@"key"];
  v7 = [a1 parsec_stringForKey:@"value"];
  v8 = v7;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9;
  v12 = v10;
  if (v11)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69CA3A0]);
    [v13 setText:v11];
    [v5 setLeadingText:v13];
    v14 = [a1 parsec_BOOLForKey:@"key_nowrap"] ^ 1;
    [v5 leadingText];
    v16 = v15 = v11;
    [v16 setMaxLines:v14];

    v11 = v15;
  }

  if (v12)
  {
    v17 = objc_alloc_init(MEMORY[0x1E69CA3A0]);
    [v17 setText:v12];
    [v5 setTrailingText:v17];
  }

  v18 = [a1 sf_imageForKey:@"value_image" reply:v4];
  [v5 setImage:v18];

  v19 = [a1 parsec_stringForKey:@"value_image_align"];
  v20 = [v19 isEqualToString:@"left"];

  if ((v20 & 1) == 0)
  {
    [v5 setImageIsRightAligned:1];
  }

  v21 = [a1 sf_imageForKey:@"attribution_image" reply:v4];
  [v5 setAttributionImage:v21];

  [v5 setKey:v6];
  [v5 setKeyNoWrap:{objc_msgSend(a1, "parsec_BOOLForKey:", @"key_nowrap"}];
  v22 = [a1 parsec_numberForKey:@"key_weight"];
  [v5 setKeyWeight:v22];

  [v5 setCardPaddingBottom:{objc_msgSend(a1, "parsec_BOOLForKey:", @"card_padding_bottom"}];
  [v5 setValue:v8];
  [v5 setValueNoWrap:{objc_msgSend(a1, "parsec_BOOLForKey:", @"value_nowrap"}];
  v23 = [a1 parsec_numberForKey:@"value_weight"];
  [v5 setValueWeight:v23];

  return v5;
}

- (void)sf_baseCardSection:()SFExtras reply:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 parsec_URLForKey:@"url"];
  v9 = [a1 parsec_arrayForKey:@"punchouts"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __51__NSDictionary_SFExtras__sf_baseCardSection_reply___block_invoke;
  v32[3] = &unk_1E7AC5F68;
  v32[4] = v8;
  v32[5] = a1;
  v10 = [v9 parsec_mapObjectsUsingBlock:v32];
  [v6 setPunchoutOptions:v10];

  v11 = [a1 parsec_stringForKey:@"punchout_picker_label"];
  [v6 setPunchoutPickerTitle:v11];

  v12 = [a1 parsec_stringForKey:@"punchout_picker_dismiss_label"];
  [v6 setPunchoutPickerDismissText:v12];

  v13 = [v6 punchoutOptions];
  v14 = [v13 count];

  if (!v14 && v8)
  {
    v15 = objc_alloc_init(MEMORY[0x1E69CA320]);
    v34[0] = v8;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [v15 setUrls:v16];

    v17 = [a1 parsec_stringForKey:@"action_target_id"];
    if ([(__CFString *)v17 length])
    {
      v18 = v17;
    }

    else
    {
      v18 = @"open";
    }

    [v15 setActionTarget:v18];
    v33 = v15;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [v6 setPunchoutOptions:v19];
  }

  v20 = [a1 parsec_stringForKey:@"card_section_id"];
  [v6 setCardSectionId:v20];

  v21 = [a1 parsec_stringForKey:@"result_id"];
  [v6 setResultIdentifier:v21];

  v22 = [a1 parsec_stringForKey:@"type"];
  [v6 setType:v22];

  v23 = [a1 parsec_numberForKey:@"separator_style"];
  v24 = [v23 integerValue];

  [v6 setHideDivider:{objc_msgSend(a1, "parsec_BOOLForKey:", @"hide_divider"}];
  if (!v24)
  {
    if (![v6 hideDivider])
    {
      goto LABEL_11;
    }

    v24 = 1;
  }

  [v6 setSeparatorStyle:v24];
LABEL_11:
  [v6 setCanBeHidden:{objc_msgSend(a1, "parsec_BOOLForKey:", @"can_be_hidden"}];
  v25 = [a1 parsec_stringForKey:@"card_url"];
  if ([v25 length])
  {
    v26 = [MEMORY[0x1E695DFF8] URLWithString:v25];
    if (v26)
    {
      v27 = [a1 parsec_stringForKey:@"card_title"];
      v28 = objc_alloc_init(MEMORY[0x1E69C9F00]);
      [v28 setType:2];
      [v28 setSource:1];
      [v28 setTitle:v27];
      [v28 setUrlValue:v26];
      v29 = [v7 task];
      v30 = [v29 request];
      [v28 setQueryId:{objc_msgSend(v30, "queryId")}];

      [v6 setNextCard:v28];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)sf_asSuggestion:()SFExtras
{
  v4 = a3;
  v5 = [v4 task];
  v6 = [v5 request];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 task];
    v8 = [v7 request];
    v9 = [v8 queryString];
  }

  else
  {
    v9 = [a1 parsec_stringForKey:@"query"];
  }

  v10 = objc_alloc(MEMORY[0x1E69CA3F0]);
  v11 = [a1 parsec_stringForKey:@"suggestion"];
  v12 = [a1 parsec_numberForKey:@"type"];
  v13 = [v12 intValue];
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v10 initWithSuggestion:v11 query:v9 score:v14 type:0.0];

  v16 = [a1 parsec_numberForKey:@"score"];
  [v16 floatValue];
  [v15 setScore:v17];

  v18 = [a1 parsec_stringForKey:@"utterance_text"];
  [v15 setUtteranceText:v18];

  v19 = [a1 parsec_stringForKey:@"bundle_id"];
  [v15 setBundleIdentifier:v19];

  v20 = [a1 parsec_stringForKey:@"fbr"];
  [v15 setFbr:v20];

  [v15 setPreviouslyEngaged:{objc_msgSend(a1, "parsec_BOOLForKey:", @"ice"}];
  v21 = [a1 parsec_stringForKey:@"detail_text"];
  [v15 setDetailText:v21];

  v22 = [a1 parsec_dictionaryForKey:@"server_features"];
  v23 = [v22 mutableCopy];
  [v15 setServerFeatures:v23];

  return v15;
}

- (id)sf_asFlight
{
  v2 = objc_alloc_init(MEMORY[0x1E69CA0D0]);
  v3 = [a1 parsec_stringForKey:@"id"];
  [v2 setFlightID:v3];

  v4 = [a1 parsec_stringForKey:@"carrier_code"];
  [v2 setCarrierCode:v4];

  v5 = [a1 parsec_stringForKey:@"carrier_name"];
  [v2 setCarrierName:v5];

  v6 = [a1 parsec_stringForKey:@"carrier_phone_number"];
  [v2 setCarrierPhoneNumber:v6];

  v7 = [a1 parsec_stringForKey:@"flight_number"];
  [v2 setFlightNumber:v7];

  v8 = [a1 parsec_stringForKey:@"operator_carrier_code"];
  [v2 setOperatorCarrierCode:v8];

  v9 = [a1 parsec_stringForKey:@"operator_flight_number"];
  [v2 setOperatorFlightNumber:v9];

  v10 = [a1 parsec_arrayForKey:@"legs"];
  v11 = [v10 parsec_mapObjectsUsingBlock:&__block_literal_global_462];

  [v2 setLegs:v11];

  return v2;
}

- (id)sf_asTopic
{
  v2 = [a1 parsec_stringForKey:@"query"];
  v3 = [a1 parsec_numberForKey:@"type"];
  v4 = [a1 parsec_stringForKey:@"id"];
  if ([v3 intValue] == 1)
  {
    v5 = [a1 parsec_dictionaryForKey:@"Detail"];
    v6 = [v5 parsec_dictionaryForKey:@"flight"];

    v7 = MEMORY[0x1E695DF00];
    v8 = [v6 parsec_numberForKey:@"timestamp"];
    v9 = [v7 dateWithTimeIntervalSince1970:{objc_msgSend(v8, "intValue")}];

    v10 = [objc_alloc(MEMORY[0x1E69CA0E8]) initWithQuery:v2 date:v9 identifier:v4];
LABEL_3:

    goto LABEL_10;
  }

  if ([v3 intValue] == 2)
  {
    v11 = objc_alloc(MEMORY[0x1E69CA328]);
    v12 = 1;
    goto LABEL_6;
  }

  if ([v3 intValue] != 3)
  {
    if ([v3 intValue] == 4)
    {
      v11 = objc_alloc(MEMORY[0x1E69CA328]);
      v12 = 2;
    }

    else if ([v3 intValue] == 6)
    {
      v11 = objc_alloc(MEMORY[0x1E69CA328]);
      v12 = 6;
    }

    else
    {
      if ([v3 intValue] != 7)
      {
        if ([v3 intValue] == 8)
        {
          v20 = [a1 parsec_dictionaryForKey:@"Detail"];
          v6 = [v20 parsec_dictionaryForKey:@"sports"];

          v21 = objc_alloc(MEMORY[0x1E69CA470]);
          v22 = [v6 parsec_stringForKey:@"requested_entity_type"];
          v10 = [v21 initWithQuery:v2 requestedEntityType:v22 identifier:v4];

          goto LABEL_3;
        }

        v13 = [objc_alloc(MEMORY[0x1E69CA328]) initWithType:7 query:v2];
        goto LABEL_7;
      }

      v11 = objc_alloc(MEMORY[0x1E69CA328]);
      v12 = 8;
    }

LABEL_6:
    v13 = [v11 initWithType:v12 query:v2 identifier:v4];
LABEL_7:
    v10 = v13;
    goto LABEL_10;
  }

  v14 = [a1 parsec_dictionaryForKey:@"Detail"];
  v15 = [v14 parsec_dictionaryForKey:@"weather"];

  v16 = objc_alloc_init(MEMORY[0x1E69CA190]);
  v17 = [v15 parsec_numberForKey:@"lat"];
  [v17 doubleValue];
  [v16 setLat:?];

  v18 = [v15 parsec_numberForKey:@"long"];
  [v18 doubleValue];
  [v16 setLng:?];

  v10 = [objc_alloc(MEMORY[0x1E69CA5C0]) initWithQuery:v2 location:v16 identifier:v4];
LABEL_10:

  return v10;
}

- (id)sf_asAirport
{
  v2 = objc_alloc_init(MEMORY[0x1E69C9E70]);
  v3 = [a1 parsec_stringForKey:@"code"];
  [v2 setCode:v3];

  v4 = MEMORY[0x1E695DFE8];
  v5 = [a1 parsec_stringForKey:@"timezone"];
  v6 = [v4 timeZoneWithName:v5];
  [v2 setTimezone:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69CA190]);
  v8 = [a1 parsec_numberForKey:@"latitude"];
  [v8 doubleValue];
  [v7 setLat:?];

  v9 = [a1 parsec_numberForKey:@"longitude"];
  [v9 doubleValue];
  [v7 setLng:?];

  [v2 setLocation:v7];
  v10 = [a1 parsec_stringForKey:@"city"];
  [v2 setCity:v10];

  v11 = [a1 parsec_stringForKey:@"street"];
  [v2 setStreet:v11];

  v12 = [a1 parsec_stringForKey:@"district"];
  [v2 setDistrict:v12];

  v13 = [a1 parsec_stringForKey:@"state"];
  [v2 setState:v13];

  v14 = [a1 parsec_stringForKey:@"postal_code"];
  [v2 setPostalCode:v14];

  v15 = [a1 parsec_stringForKey:@"country_code"];
  [v2 setCountryCode:v15];

  v16 = [a1 parsec_stringForKey:@"country"];
  [v2 setCountry:v16];

  return v2;
}

- (id)sf_asActionItem:()SFExtras
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C9E68];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 parsec_stringForKey:@"label"];
  [v6 setLabel:v7];

  v8 = [a1 parsec_stringForKey:@"label_itunes"];
  [v6 setLabelForLocalMedia:v8];

  [v6 setIsOverlay:{objc_msgSend(a1, "parsec_BOOLForKey:", @"is_overlay"}];
  v9 = [a1 parsec_arrayForKey:@"adam_ids"];
  [v6 setStoreIdentifiers:v9];

  v10 = [a1 parsec_stringForKey:@"phone_number"];
  [v6 setPhoneNumber:v10];

  v11 = [a1 parsec_stringForKey:@"email"];
  [v6 setEmail:v11];

  [v6 setRequiresLocalMedia:{objc_msgSend(a1, "parsec_BOOLForKey:", @"streaming"}];
  v12 = [a1 parsec_URLForKey:@"url"];
  v13 = [a1 parsec_dictionaryForKey:@"punchout"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 sf_asPunchout:v12];
    v16 = [a1 parsec_stringForKey:@"action_target_id"];
    [v15 setActionTarget:v16];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_6;
    }

    v15 = objc_alloc_init(MEMORY[0x1E69CA320]);
    v17 = [a1 parsec_stringForKey:@"action_target_id"];
    [v15 setActionTarget:v17];

    v31[0] = v12;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    [v15 setUrls:v16];
  }

  [v6 setPunchout:v15];
LABEL_6:
  v18 = [a1 parsec_stringForKey:@"provider"];
  [v6 setProvider:v18];

  v19 = [a1 parsec_stringForKey:@"offer_type"];
  [v6 setOfferType:v19];

  v20 = [a1 parsec_stringForKey:@"type"];
  [v6 setType:v20];

  v21 = [v6 type];
  if ([v21 isEqualToString:@"app"])
  {
    v22 = [v6 punchout];
    v23 = [v22 bundleIdentifier];
    [v6 setApplicationBundleIdentifier:v23];
  }

  else
  {
    [v6 setApplicationBundleIdentifier:0];
  }

  v24 = [a1 parsec_stringForKey:@"label_itunes"];
  [v6 setLabelITunes:v24];

  [v6 setIsITunes:{objc_msgSend(a1, "parsec_BOOLForKey:", @"is_itunes"}];
  v25 = [a1 sf_imageForKey:@"icon" reply:v5];
  [v6 setIcon:v25];

  v26 = [a1 sf_imageForKey:@"base_icon" reply:v5];

  [v6 setBaseIcon:v26];
  v27 = [a1 parsec_stringForKey:@"message_identifier"];
  [v6 setMessageIdentifier:v27];

  v28 = [a1 parsec_URLForKey:@"message_url"];
  [v6 setMessageURL:v28];

  v29 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)sf_asPunchout:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA320]);
  v6 = [a1 parsec_stringForKey:@"name"];
  [v5 setName:v6];

  v7 = [a1 parsec_stringForKey:@"bundle_id"];
  [v5 setBundleIdentifier:v7];

  v8 = [a1 parsec_stringForKey:@"label"];
  [v5 setLabel:v8];

  v9 = [a1 parsec_URLForKey:@"punchout_uri"];
  v10 = [a1 parsec_URLForKey:@"install_url"];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = v11;
  if (v9)
  {
    [v11 addObject:v9];
  }

  if (v4)
  {
    [v12 addObject:v4];
  }

  if (v10)
  {
    [v12 addObject:v10];
  }

  [v5 setUrls:v12];

  return v5;
}

- (id)sf_asRichText:()SFExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69CA3A0]);
  v6 = [a1 parsec_numberForKey:@"star_rating"];
  [v6 floatValue];
  [v5 setStarRating:v7];

  v8 = [a1 parsec_stringForKey:@"content_advisory"];
  [v5 setContentAdvisory:v8];

  v9 = [a1 parsec_arrayForKey:@"more_glyphs"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __40__NSDictionary_SFExtras__sf_asRichText___block_invoke;
  v22[3] = &unk_1E7AC5F00;
  v10 = v4;
  v23 = v10;
  v11 = [v9 parsec_mapAndFilterObjectsUsingBlock:v22];
  [v5 setIcons:v11];

  v12 = [a1 parsec_arrayForKey:@"formatted_text"];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __40__NSDictionary_SFExtras__sf_asRichText___block_invoke_2;
  v20 = &unk_1E7AC5F00;
  v21 = v10;
  v13 = v10;
  v14 = [v12 parsec_mapAndFilterObjectsUsingBlock:&v17];
  [v5 setFormattedTextPieces:{v14, v17, v18, v19, v20}];

  v15 = [a1 parsec_numberForKey:@"text_maxlines"];
  [v5 setMaxLines:{objc_msgSend(v15, "unsignedIntegerValue")}];

  return v5;
}

- (id)sf_asFormattedText:()SFExtras
{
  v4 = MEMORY[0x1E69CA0F0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [a1 parsec_stringForKey:@"text"];
  [v6 setText:v7];

  v8 = [a1 parsec_numberForKey:@"text_maxlines"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntegerValue];
  }

  else
  {
    v10 = 1;
  }

  [v6 setMaxLines:v10];
  v11 = [a1 sf_imageForKey:@"glyph" reply:v5];

  [v6 setGlyph:v11];
  [v6 setIsEmphasized:{objc_msgSend(a1, "parsec_BOOLForKey:", @"emphasized"}];
  [v6 setIsBold:{objc_msgSend(a1, "parsec_BOOLForKey:", @"bold"}];
  [v6 setTextColor:{objc_msgSend(a1, "sf_textColorForKey:", @"text_color"}];

  return v6;
}

- (uint64_t)sf_textColorForKey:()SFExtras
{
  v1 = [a1 parsec_stringForKey:?];
  if ([v1 isEqualToString:@"red"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"green"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"orange"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)sf_imageForKey:()SFExtras reply:
{
  v6 = a4;
  v7 = [a1 parsec_dictionaryForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 sf_asImage:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sf_asImage:()SFExtras
{
  v4 = a3;
  v5 = [a1 parsec_stringForKey:@"data"];
  v6 = [v5 parsec_base64DecodedData];

  v7 = [a1 parsec_URLForKey:@"url"];
  v8 = [a1 parsec_stringForKey:@"mono"];
  v9 = v8;
  if (v6)
  {
    goto LABEL_2;
  }

  if (v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69CA548]);
    [v10 setUrlValue:v7];
  }

  else
  {
    if (![v8 length])
    {
LABEL_2:
      v10 = objc_alloc_init(MEMORY[0x1E69CA138]);
      goto LABEL_7;
    }

    v10 = objc_alloc_init(MEMORY[0x1E69CA260]);
    [v10 setMonogramLetters:v9];
  }

LABEL_7:
  [v10 setSource:1];
  [v10 setImageData:v6];
  [v10 setIsTemplate:{objc_msgSend(a1, "parsec_BOOLForKey:", @"is_template"}];
  v11 = [a1 parsec_numberForKey:@"round_corner_pt"];
  [v11 floatValue];
  [v10 setCornerRadius:v12];

  [v10 setShouldCropToCircle:{objc_msgSend(a1, "parsec_BOOLForKey:", @"crop_circle"}];
  [v4 scale];
  if (v13 == 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    [v4 scale];
    v15 = v14;
  }

  [v10 setScale:v15];
  v16 = [a1 parsec_numberForKey:@"w"];
  [v16 floatValue];
  v18 = v17 / v15;

  v19 = [a1 parsec_numberForKey:@"h"];
  [v19 floatValue];
  v21 = v20 / v15;

  [v10 setSize:{v18, v21}];
  v22 = [a1 parsec_stringForKey:@"id"];
  [v10 setIdentifier:v22];

  v23 = [a1 parsec_stringForKey:@"content_type"];
  [v10 setContentType:v23];

  v24 = [a1 parsec_stringForKey:@"key_color"];
  [v10 setKeyColor:v24];

  return v10;
}

- (id)sf_asSearchResult:()SFExtras factory:
{
  v131[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a1;
  v8 = [a4 createResultObject];
  v9 = [v7 parsec_stringForKey:@"id"];
  [v8 setIdentifier:v9];

  v10 = [v7 parsec_numberForKey:@"_type"];
  [v8 setType:1];
  if (v10 && [v10 intValue])
  {
    [v8 setType:{objc_msgSend(v10, "intValue")}];
  }

  v126 = v10;
  v11 = [v7 parsec_stringForKey:@"type"];
  [v8 setDomainName:v11];

  v12 = [v7 sf_imageForKey:@"thumbnail" reply:v6];
  [v8 setThumbnail:v12];

  v13 = [v7 parsec_BOOLForKey:@"thumbnail_crop_circle"];
  v14 = [v8 thumbnail];
  [v14 setShouldCropToCircle:v13];

  [v8 setPreventThumbnailImageScaling:1];
  v15 = objc_alloc_init(MEMORY[0x1E69CA4F0]);
  v16 = [v7 parsec_stringForKey:@"title"];
  [v15 setText:v16];

  v17 = [v7 parsec_numberForKey:@"title_maxlines"];
  [v15 setMaxLines:{objc_msgSend(v17, "integerValue")}];

  v125 = v15;
  [v8 setTitle:v15];
  v18 = [v7 parsec_stringForKey:@"secondary_title"];
  [v8 setSecondaryTitle:v18];

  v19 = [v7 parsec_stringForKey:@"description"];

  if (v19)
  {
    v20 = [v7 parsec_stringForKey:@"description"];
    [v8 setSecondaryTitle:v20];

    v21 = [v7 parsec_stringForKey:@"description_alignment"];
    [v8 setIsSecondaryTitleDetached:{objc_msgSend(v21, "isEqualToString:", @"right"}];
  }

  v22 = [v7 sf_imageForKey:@"secondary_image" reply:v6];
  [v8 setSecondaryTitleImage:v22];

  v23 = [v7 parsec_arrayForKey:@"descriptions"];
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __52__NSDictionary_SFExtras__sf_asSearchResult_factory___block_invoke;
  v129[3] = &unk_1E7AC5F00;
  v24 = v6;
  v130 = v24;
  v25 = [v23 parsec_mapAndFilterObjectsUsingBlock:v129];
  [v8 setDescriptions:v25];

  v26 = [v7 parsec_stringForKey:@"footnote"];
  [v8 setFootnote:v26];

  v27 = [v7 parsec_stringForKey:@"publish_date"];
  [v8 setPublishDate:v27];

  v28 = [v7 parsec_stringForKey:@"source"];
  [v8 setSourceName:v28];

  v29 = [v7 parsec_stringForKey:@"completion"];
  [v8 setCompletion:v29];

  v30 = [v7 sf_imageForKey:@"completion_icon" reply:v24];
  [v8 setCompletionImage:v30];

  v31 = [v7 parsec_dictionaryForKey:@"auxiliary_info"];
  v32 = [v31 parsec_stringForKey:@"top_text"];
  [v8 setAuxiliaryTopText:v32];

  v33 = [v31 parsec_stringForKey:@"middle_text"];
  [v8 setAuxiliaryMiddleText:v33];

  v34 = [v31 parsec_stringForKey:@"bottom_text"];
  [v8 setAuxiliaryBottomText:v34];

  v124 = v31;
  [v8 setAuxiliaryBottomTextColor:{objc_msgSend(v31, "sf_textColorForKey:", @"bottom_text_color"}];
  v35 = [v7 parsec_dictionaryForKey:@"action_button"];
  v36 = [v35 sf_asActionItem:v24];
  [v8 setAction:v36];

  v37 = [v7 parsec_stringForKey:@"adam_id"];
  [v8 setStoreIdentifier:v37];

  v38 = [v7 parsec_stringForKey:@"entity_identifier"];
  [v8 setEntityIdentifier:v38];

  v39 = [v7 parsec_stringForKey:@"bundle_id"];
  [v8 setResultBundleId:v39];

  v40 = [v7 parsec_stringForKey:@"maps_result_type"];
  [v8 setMapsResultType:v40];

  v41 = [v7 parsec_stringForKey:@"maps_data"];
  if ([v41 length])
  {
    v42 = [v41 parsec_base64DecodedData];
    [v8 setMapsData:v42];
  }

  v123 = v41;
  v43 = MEMORY[0x1E695DFF8];
  v44 = [v7 parsec_stringForKey:@"more_url"];
  v45 = [v43 URLWithString:v44];
  [v8 setMapsMoreURL:v45];

  v46 = [v7 parsec_stringForKey:@"more"];
  [v8 setMapsMoreString:v46];

  v47 = [v7 sf_imageForKey:@"more_icon" reply:v24];
  [v8 setMapsMoreIcon:v47];

  v48 = [v7 parsec_stringForKey:@"nearby_businesses"];
  [v8 setNearbyBusinessesString:v48];

  v49 = [v7 parsec_stringForKey:@"apple_referrer"];
  [v8 setAppleReferrer:v49];

  v50 = [v7 parsec_stringForKey:@"section_bundle_id"];
  [v8 setSectionBundleIdentifier:v50];

  v51 = [v7 parsec_numberForKey:@"tophit"];
  [v8 setTopHit:{objc_msgSend(v51, "sf_asTopHit")}];

  v52 = [v7 parsec_numberForKey:@"score"];
  [v52 doubleValue];
  [v8 setRankingScore:?];

  v53 = [v7 parsec_stringForKey:@"card_title"];
  v54 = [v7 parsec_stringForKey:@"card_url"];
  v55 = [v7 parsec_arrayForKey:@"card_sections"];
  v56 = [v7 parsec_arrayForKey:@"row_sections"];
  v118 = [v7 parsec_dictionaryForKey:@"zkw_topic"];
  v57 = [v118 objectForKeyedSubscript:@"topic"];
  v58 = [v57 sf_asTopic];
  [v8 setNormalizedTopic:v58];

  v119 = v56;
  if ([v56 count])
  {
    v59 = objc_alloc_init(MEMORY[0x1E69C9F00]);
    [v59 setType:1];
    [v59 setSource:1];
    [v59 setTitle:v53];
    v60 = [v56 sf_asCardSections:v24];
    [v59 setCardSections:v60];

    [v8 setInlineCard:v59];
  }

  if ([v55 count])
  {
    v61 = objc_alloc_init(MEMORY[0x1E69C9F00]);
    [v61 setType:1];
    [v61 setSource:1];
    [v61 setTitle:v53];
    v62 = [v7 parsec_stringForKey:@"fbr"];
    [v61 setFbr:v62];

    v63 = [v55 sf_asCardSections:v24];
    [v61 setCardSections:v63];

    [v8 setCard:v61];
LABEL_12:

    goto LABEL_13;
  }

  if ([v54 length])
  {
    v61 = [MEMORY[0x1E695DFF8] URLWithString:v54];
    if (v61)
    {
      v99 = objc_alloc_init(MEMORY[0x1E69C9F00]);
      [v99 setType:2];
      [v99 setSource:1];
      [v99 setTitle:v53];
      [v99 setUrlValue:v61];
      [v8 setCard:v99];
    }

    goto LABEL_12;
  }

LABEL_13:
  v122 = v53;
  v64 = [v7 parsec_stringForKey:@"pb_compact_tophit"];
  v65 = [v64 parsec_base64DecodedData];

  v128 = v65;
  if (v65)
  {
    v66 = [objc_alloc(MEMORY[0x1E69CA5E0]) initWithData:v65];
    if (v66)
    {
      v67 = [objc_alloc(MEMORY[0x1E69C9F00]) initWithProtobuf:v66];
      [v8 setCompactCard:v67];
    }
  }

  v68 = [v7 parsec_stringForKey:@"pb_tophit"];
  v69 = [v68 parsec_base64DecodedData];

  v127 = v69;
  if (v69)
  {
    v70 = [objc_alloc(MEMORY[0x1E69CA5E0]) initWithData:v69];
    if (v70)
    {
      v71 = [objc_alloc(MEMORY[0x1E69C9F00]) initWithProtobuf:v70];
      [v8 setTophitCard:v71];
    }
  }

  v72 = [v7 parsec_stringForKey:@"more_results_punchout"];
  if ([v72 length])
  {
    v73 = [MEMORY[0x1E695DFF8] URLWithString:v72];
    if (v73)
    {
      v74 = v55;
      v75 = [MEMORY[0x1E69CA320] punchoutWithURL:v73];
      v76 = [v7 parsec_stringForKey:@"more_results_label"];
      if ([v76 length])
      {
        [v75 setLabel:v76];
      }

      [v8 setMoreResultsPunchout:v75];

      v55 = v74;
    }
  }

  v121 = v54;
  v77 = [v7 parsec_stringForKey:@"url"];
  v78 = [v7 parsec_dictionaryForKey:@"app"];
  if ([v77 length])
  {
    v79 = parsecExtractCalendarIdentifier(v77);
    [v8 setCalendarIdentifier:v79];

    v80 = [MEMORY[0x1E695DFF8] URLWithString:v77];
    if (v80)
    {
      [v8 setUrl:v80];
    }
  }

  v120 = v55;
  v81 = [v7 parsec_stringForKey:@"application_bundle_id"];
  [v8 setApplicationBundleIdentifier:v81];

  v82 = [v7 parsec_stringForKey:@"placement"];
  [v8 setPlacement:{objc_msgSend(v82, "sf_asResultPlacement")}];

  v83 = [v7 parsec_numberForKey:@"hide_rank"];
  [v8 setMinimumRankOfTopHitToSuppressResult:{objc_msgSend(v83, "unsignedIntegerValue")}];

  v84 = [v7 parsec_stringForKey:@"section_header"];
  [v8 setSectionHeader:v84];

  v85 = [v7 parsec_stringForKey:@"section_header_more"];
  [v8 setSectionHeaderMore:v85];

  v86 = [v7 parsec_URLForKey:@"section_header_more_url"];
  [v8 setSectionHeaderMoreURL:v86];

  v87 = [v7 parsec_stringForKey:@"type"];
  [v8 setResultType:v87];
  v88 = [v7 parsec_stringForKey:@"template"];
  [v8 setResultTemplate:v88];

  [v8 setIsQuickGlance:{objc_msgSend(v7, "parsec_BOOLForKey:", @"is_quick_glance"}];
  [v8 setRenderHorizontallyWithOtherResultsInCategory:{objc_msgSend(v7, "parsec_BOOLForKey:", @"render_horizontally"}];
  [v8 setIsStreaming:{objc_msgSend(v7, "parsec_BOOLForKey:", @"streaming"}];
  v89 = [v7 parsec_numberForKey:@"engagement_score"];
  [v8 setEngagementScore:v89];

  v90 = [v7 parsec_numberForKey:@"qi_engagement_score"];
  [v8 setQueryIndependentScore:v90];

  v91 = [v7 parsec_numberForKey:@"max_age"];
  [v8 setMaxAge:v91];

  v92 = [v7 sf_imageForKey:@"icon" reply:v24];
  [v8 setIcon:v92];

  [v8 setDoNotFold:{objc_msgSend(v7, "parsec_BOOLForKey:", @"do_not_fold"}];
  v93 = [v7 parsec_numberForKey:@"block_id"];
  [v8 setBlockId:{objc_msgSend(v93, "unsignedLongLongValue")}];

  v94 = [v8 url];
  v95 = v94;
  if (v78)
  {
    v96 = [v78 sf_asPunchout:v94];
    [v8 setPunchout:v96];

    v97 = [v8 punchout];
    v98 = [v97 bundleIdentifier];
    [v8 setApplicationBundleIdentifier:v98];
  }

  else
  {

    if (!v95)
    {
      goto LABEL_39;
    }

    v97 = objc_alloc_init(MEMORY[0x1E69CA320]);
    v100 = [v8 url];
    v131[0] = v100;
    v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:1];
    [v97 setUrls:v101];

    [v8 setPunchout:v97];
  }

LABEL_39:
  v102 = [v7 parsec_stringForKey:@"title_note"];
  [v8 setTitleNote:v102];

  v103 = [v7 parsec_numberForKey:@"title_note_size"];
  [v8 setTitleNoteSize:v103];

  v104 = [v7 parsec_stringForKey:@"query"];
  [v8 setCompletedQuery:v104];

  v105 = [v7 parsec_stringForKey:@"align"];
  [v8 setIsCentered:{objc_msgSend(v105, "isEqualToString:", @"center"}];

  v106 = [v7 parsec_stringForKey:@"pb"];
  v107 = [v106 parsec_base64DecodedData];

  if (v107)
  {
    [_TtC10CoreParsec14ProtobufHelper processProtobuf:v24 result:v8 data:v107];
  }

  v108 = [v7 parsec_arrayForKey:@"entities"];
  v109 = CoreParsec_fakeEntityData(v108);
  [v8 setEntityData:v109];

  [v8 setIsInstantAnswer:{objc_msgSend(v7, "parsec_BOOLForKey:", @"is_instant_answer"}];
  [v8 setShouldAutoNavigate:{objc_msgSend(v7, "parsec_BOOLForKey:", @"auto_navigate"}];
  v110 = [v7 parsec_dictionaryForKey:@"server_features"];
  [v8 setServerFeatures:v110];

  [v8 setNoGoTakeover:{objc_msgSend(v7, "parsec_BOOLForKey:", @"no_go_takeover"}];
  [v8 setShouldUseCompactDisplay:{objc_msgSend(v7, "parsec_BOOLForKey:", @"should_use_compact_display"}];
  [v8 setPreferTopPlatter:{objc_msgSend(v7, "parsec_BOOLForKey:", @"prefer_top_platter"}];
  v111 = [v7 parsec_arrayForKey:@"alternative_urls"];
  v112 = [v111 parsec_mapObjectsUsingBlock:&__block_literal_global_472];
  [v8 setAlternativeURLs:v112];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 processVisualCATResultSynchronously];
  }

  v113 = [v7 parsec_dictionaryForKey:@"result_entity"];
  v114 = v113;
  if (v113)
  {
    v115 = [v113 sf_asResultEntity];
    [v8 setResultEntity:v115];
  }

  v116 = *MEMORY[0x1E69E9840];

  return v8;
}

@end