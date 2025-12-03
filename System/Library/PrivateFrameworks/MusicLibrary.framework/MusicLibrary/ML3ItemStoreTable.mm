@interface ML3ItemStoreTable
- (id)columns;
@end

@implementation ML3ItemStoreTable

- (id)columns
{
  v69[61] = *MEMORY[0x277D85DE8];
  columns = self->_columns;
  if (!columns)
  {
    selfCopy = self;
    v68 = [ML3DatabaseColumn columnWithName:@"item_pid" datatype:2 constraints:1 defaultValue:0];
    v69[0] = v68;
    v67 = [ML3DatabaseColumn columnWithName:@"store_item_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[1] = v67;
    v66 = [ML3DatabaseColumn columnWithName:@"store_composer_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[2] = v66;
    v65 = [ML3DatabaseColumn columnWithName:@"store_genre_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[3] = v65;
    v64 = [ML3DatabaseColumn columnWithName:@"store_playlist_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[4] = v64;
    v63 = [ML3DatabaseColumn columnWithName:@"storefront_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[5] = v63;
    v62 = [ML3DatabaseColumn columnWithName:@"purchase_history_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[6] = v62;
    v61 = [ML3DatabaseColumn columnWithName:@"purchase_history_token" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[7] = v61;
    v60 = [ML3DatabaseColumn columnWithName:@"purchase_history_redownload_params" datatype:4 constraints:0 defaultValue:0];
    v69[8] = v60;
    v59 = [ML3DatabaseColumn columnWithName:@"store_saga_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[9] = v59;
    v58 = [ML3DatabaseColumn columnWithName:@"match_redownload_params" datatype:4 constraints:0 defaultValue:0];
    v69[10] = v58;
    v57 = [ML3DatabaseColumn columnWithName:@"cloud_status" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[11] = v57;
    v56 = [ML3DatabaseColumn columnWithName:@"sync_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[12] = v56;
    v55 = [ML3DatabaseColumn columnWithName:@"home_sharing_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[13] = v55;
    v54 = [ML3DatabaseColumn columnWithName:@"is_ota_purchased" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[14] = v54;
    v52 = [ML3DatabaseColumn columnWithName:@"store_kind" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[15] = v52;
    v51 = [ML3DatabaseColumn columnWithName:@"account_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[16] = v51;
    v50 = [ML3DatabaseColumn columnWithName:@"downloader_account_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[17] = v50;
    v49 = [ML3DatabaseColumn columnWithName:@"family_account_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[18] = v49;
    v48 = [ML3DatabaseColumn columnWithName:@"is_protected" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[19] = v48;
    v47 = [ML3DatabaseColumn columnWithName:@"key_versions" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[20] = v47;
    v46 = [ML3DatabaseColumn columnWithName:@"key_platform_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[21] = v46;
    v45 = [ML3DatabaseColumn columnWithName:@"key_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[22] = v45;
    v44 = [ML3DatabaseColumn columnWithName:@"key_id_2" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[23] = v44;
    v43 = [ML3DatabaseColumn columnWithName:@"date_purchased" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[24] = v43;
    v42 = [ML3DatabaseColumn columnWithName:@"date_released" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[25] = v42;
    v41 = [ML3DatabaseColumn columnWithName:@"external_guid" datatype:4 constraints:0 defaultValue:0];
    v69[26] = v41;
    v40 = [ML3DatabaseColumn columnWithName:@"feed_url" datatype:4 constraints:0 defaultValue:0];
    v69[27] = v40;
    v39 = [ML3DatabaseColumn columnWithName:@"artwork_url" datatype:4 constraints:0 defaultValue:0];
    v69[28] = v39;
    v38 = [ML3DatabaseColumn columnWithName:@"store_xid" datatype:4 constraints:0 defaultValue:0];
    v69[29] = v38;
    v37 = [ML3DatabaseColumn columnWithName:@"store_flavor" datatype:4 constraints:0 defaultValue:0];
    v69[30] = v37;
    v36 = [ML3DatabaseColumn columnWithName:@"store_matched_status" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[31] = v36;
    v35 = [ML3DatabaseColumn columnWithName:@"store_redownloaded_status" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[32] = v35;
    v34 = [ML3DatabaseColumn columnWithName:@"extras_url" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[33] = v34;
    v33 = [ML3DatabaseColumn columnWithName:@"vpp_is_licensed" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[34] = v33;
    v32 = [ML3DatabaseColumn columnWithName:@"vpp_org_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[35] = v32;
    v31 = [ML3DatabaseColumn columnWithName:@"vpp_org_name" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[36] = v31;
    v30 = [ML3DatabaseColumn columnWithName:@"sync_redownload_params" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[37] = v30;
    v29 = [ML3DatabaseColumn columnWithName:@"needs_reporting" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[38] = v29;
    v28 = [ML3DatabaseColumn columnWithName:@"subscription_store_item_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[39] = v28;
    v27 = [ML3DatabaseColumn columnWithName:@"playback_endpoint_type" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[40] = v27;
    v26 = [ML3DatabaseColumn columnWithName:@"is_mastered_for_itunes" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[41] = v26;
    v25 = [ML3DatabaseColumn columnWithName:@"radio_station_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[42] = v25;
    v24 = [ML3DatabaseColumn columnWithName:@"advertisement_unique_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[43] = v24;
    v23 = [ML3DatabaseColumn columnWithName:@"advertisement_type" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[44] = v23;
    v22 = [ML3DatabaseColumn columnWithName:@"is_artist_uploaded_content" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[45] = v22;
    v21 = [ML3DatabaseColumn columnWithName:@"cloud_asset_available" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[46] = v21;
    v20 = [ML3DatabaseColumn columnWithName:@"is_subscription" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[47] = v20;
    v19 = [ML3DatabaseColumn columnWithName:@"sync_in_my_library" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[48] = v19;
    v18 = [ML3DatabaseColumn columnWithName:@"cloud_in_my_library" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[49] = v18;
    v17 = [ML3DatabaseColumn columnWithName:@"cloud_album_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[50] = v17;
    v16 = [ML3DatabaseColumn columnWithName:@"cloud_playback_endpoint_type" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[51] = v16;
    v4 = [ML3DatabaseColumn columnWithName:@"cloud_universal_library_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[52] = v4;
    v5 = [ML3DatabaseColumn columnWithName:@"reporting_store_item_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[53] = v5;
    v6 = [ML3DatabaseColumn columnWithName:@"asset_store_item_id" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[54] = v6;
    v7 = [ML3DatabaseColumn columnWithName:@"extended_playback_attribute" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[55] = v7;
    v8 = [ML3DatabaseColumn columnWithName:@"extended_lyrics_attribute" datatype:2 constraints:16 defaultValue:&unk_2840C9440];
    v69[56] = v8;
    v9 = [ML3DatabaseColumn columnWithName:@"store_canonical_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[57] = v9;
    v10 = [ML3DatabaseColumn columnWithName:@"tv_show_canonical_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[58] = v10;
    v11 = [ML3DatabaseColumn columnWithName:@"tv_season_canonical_id" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[59] = v11;
    v12 = [ML3DatabaseColumn columnWithName:@"immersive_deep_link_url" datatype:4 constraints:16 defaultValue:&stru_28408B690];
    v69[60] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:61];
    v14 = selfCopy->_columns;
    selfCopy->_columns = v13;

    columns = selfCopy->_columns;
  }

  return columns;
}

@end