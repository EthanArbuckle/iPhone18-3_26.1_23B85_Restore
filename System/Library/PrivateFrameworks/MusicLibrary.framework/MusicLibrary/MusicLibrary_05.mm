uint64_t ML3MigrationFunction992140to992141(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:992141];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 992141;"];

  return v4;
}

uint64_t ML3MigrationFunction992141to992142(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item ADD COLUMN base_location_id INTEGER DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:992142];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 992142;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction992142to1002980(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE entity_revision (revision INTEGER PRIMARY KEY, entity_pid INTEGER NOT NULL UNIQUE, deleted INTEGER NOT NULL DEFAULT 0, class INTEGER NOT NULL DEFAULT 0)"}])
  {
    [v4 setCurrentUserVersion:1002980];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1002980;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1002402to1002980(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE entity_revision ADD COLUMN deleted INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE entity_revision ADD COLUMN class INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1002980];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1002980;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1002980to1003342(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN store_xid TEXT"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN store_flavor TEXT"))
  {
    [v4 setCurrentUserVersion:1003342];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1003342;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1003342to1003964(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1003964];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1003964;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1003964to1005492(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN integrity BLOB"])
  {
    [v4 setCurrentUserVersion:1005492];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1005492;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1005492to1006189(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE genius_config (id INTEGER PRIMARY KEY, version INTEGER UNIQUE, default_num_results INTEGER DEFAULT 0, min_num_results INTEGER DEFAULT 0, data BLOB)"}] && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE genius_metadata (genius_id INTEGER PRIMARY KEY, revision_level INTEGER, version INTEGER, checksum INTEGER, data BLOB)") && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE genius_similarities (genius_id INTEGER PRIMARY KEY, data BLOB)"))
  {
    [v4 setCurrentUserVersion:1006189];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1006189;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1006189to1007541(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_items (container_pid INTEGER PRIMARY KEY, item_pid_data BLOB)"}] && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE item_to_container") && objc_msgSend(v3, "executeUpdate:", @"CREATE VIRTUAL TABLE item_to_container USING ML3ContainerItemToContainer (item_pid INTEGER NOT NULL DEFAULT 0, container_pid INTEGER NOT NULL DEFAULT 0, physical_order INTEGER NOT NULL DEFAULT 0, shuffle_order INTEGER NOT NULL DEFAULT 0)"))
  {
    [v4 setCurrentUserVersion:1007541];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1007541;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1007541to1011335(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN store_saga_id INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1011335];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1011335;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1011335to1015139(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE artwork_info (cache_id TEXT NOT NULL, format_id INTEGER NOT NULL, length INTEGER, offset INTEGER, extra_length INTEGER NOT NULL DEFAULT 0, UNIQUE (cache_id, format_id))"}] && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE artwork_free_list (offset INTEGER PRIMARY KEY, length INTEGER)"))
  {
    [v4 setCurrentUserVersion:1015139];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1015139;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1015139to1016427(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN description TEXT"])
  {
    [v4 setCurrentUserVersion:1016427];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1016427;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1016427to1021756(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN store_cloud_id INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1021756];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1021756;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1021756to1026201(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album_artist ADD COLUMN artwork_cache_id INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE album_artist SET artwork_cache_id = IFNULL((SELECT artwork_cache_id FROM item JOIN item_extra USING (item_pid) WHERE item.album_artist_pid = album_artist.album_artist_pid), 0)") && objc_msgSend(v3, "executeUpdate:", @"UPDATE album_artist SET representative_item_pid = IFNULL((SELECT item_pid FROM item WHERE item.album_artist_pid = album_artist.album_artist_pid), 0)"))
  {
    [v4 setCurrentUserVersion:1026201];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1026201;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1026201to1028771(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToUpdateSortMap:1];
  [v3 setCurrentUserVersion:1028771];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1028771;"];
  return v5;
}

uint64_t ML3MigrationFunction1028771to1033275(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE ubiquitous_bookmarks (key TEXT PRIMARY KEY, bookmark_time_ms REAL, timestamp REAL)"}])
  {
    [v4 setCurrentUserVersion:1033275];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1033275;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1033275to1046932(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN grouping_key BLOB"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE album SET feed_url = NULL WHERE feed_url = ''") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_artist ADD COLUMN grouping_key BLOB") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE album_artist ADD COLUMN grouping_key BLOB") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE composer ADD COLUMN grouping_key BLOB") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE genre ADD COLUMN grouping_key BLOB"))
  {
    [v4 setNeedsToUpdateSortMap:1];
    [v4 setCurrentUserVersion:1046932];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1046932;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1046932to1050919(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN is_temporary_cloud_download INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1050919];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1050919;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1050919to1053827(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE artwork_info ADD COLUMN extra_length INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1053827];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1053827;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1053827to1055456(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN store_matched_status INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN store_redownloaded_status INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1055456];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1055456;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1055456to1058985(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_artist_new (item_artist_pid INTEGER PRIMARY KEY, item_artist TEXT NOT NULL DEFAULT '', sort_item_artist TEXT, series_name TEXT NOT NULL DEFAULT '', sort_series_name TEXT, representative_item_pid INTEGER NOT NULL DEFAULT 0, grouping_key BLOB)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO item_artist_new (item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, representative_item_pid, grouping_key) SELECT item_artist_pid, item_artist, sort_item_artist, series_name, (CASE sort_series_name WHEN '' THEN NULL ELSE sort_series_name END), representative_item_pid, grouping_key FROM item_artist") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE item_artist") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_artist_new RENAME TO item_artist"))
  {
    [v4 setCurrentUserVersion:1058985];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1058985;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1058985to1061040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN cloud_status INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE album_artist ADD COLUMN cloud_status INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_artist ADD COLUMN cloud_status INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE composer ADD COLUMN cloud_status INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE genre ADD COLUMN cloud_status INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1061040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1061040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1061040to1061159(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:1061159];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1061159;"];
  return v5;
}

uint64_t ML3MigrationFunction1061159to1061350(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToUpdateSortMap:1];
  [v3 setCurrentUserVersion:1061350];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1061350;"];
  return v5;
}

uint64_t ML3MigrationFunction1061350to1062137(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN pending_genius_checksum INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1062137];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1062137;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1062137to1063000(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1063000];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1063000;"];

  return v4;
}

uint64_t ML3MigrationFunction1063000to1079529(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"PRAGMA auto_vacuum = 2;"])
  {
    [v4 setCurrentUserVersion:1079529];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1079529;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1079529to1096158(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN is_streaming_quality INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1096158];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1096158;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1096158to1102819(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN store_bookmark_timestamp REAL DEFAULT NULL"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN store_bookmark_entity_revision INTEGER DEFAULT NULL"))
  {
    [v4 setCurrentUserVersion:1102819];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1102819;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1102819to1108291(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item ADD COLUMN exclude_from_shuffle INTEGER NOT NULL DEFAULT 0"]
    && [v3 executeUpdate:@"UPDATE item SET exclude_from_shuffle=1 WHERE item_pid IN (SELECT item_pid FROM item_extra WHERE exclude_from_shuffle=1)"]
    && [v3 executeUpdate:{@"CREATE TABLE item_extra_new (item_pid INTEGER PRIMARY KEY, title TEXT NOT NULL DEFAULT '', sort_title TEXT, disc_count INTEGER DEFAULT 0, track_count INTEGER DEFAULT 0, artwork_cache_id INTEGER NOT NULL DEFAULT 0, location_type INTEGER NOT NULL DEFAULT 0, location TEXT NOT NULL DEFAULT '', extension INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, file_size INTEGER NOT NULL DEFAULT 0, file_creator INTEGER NOT NULL DEFAULT 0, file_type INTEGER NOT NULL DEFAULT 0, num_dir_levels_file INTEGER NOT NULL DEFAULT 0, num_dir_levels_lib INTEGER NOT NULL DEFAULT 0, integrity BLOB, media_kind INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, year INTEGER DEFAULT 0, content_rating INTEGER NOT NULL DEFAULT 0, content_rating_level INTEGER NOT NULL DEFAULT 0, is_user_disabled INTEGER NOT NULL DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, start_time_ms REAL NOT NULL DEFAULT 0, stop_time_ms REAL NOT NULL DEFAULT 0, total_time_ms REAL NOT NULL DEFAULT 0, total_burn_time_ms REAL NOT NULL DEFAULT 0, bpm INTEGER DEFAULT 0, relative_volume INTEGER, eq_preset TEXT, genius_id INTEGER NOT NULL DEFAULT 0, comment TEXT, grouping TEXT, description TEXT, description_long TEXT, collection_description TEXT, is_ota_purchased INTEGER NOT NULL DEFAULT 0, is_compilation INTEGER NOT NULL DEFAULT 0, is_itunes_u INTEGER NOT NULL DEFAULT 0, is_audible_audio_book INTEGER NOT NULL DEFAULT 0, copyright TEXT, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0, is_temporary_cloud_download INTEGER NOT NULL DEFAULT 0, is_streaming_quality INTEGER NOT NULL DEFAULT 0, store_bookmark_timestamp REAL DEFAULT NULL, store_bookmark_entity_revision INTEGER DEFAULT NULL, is_podcast INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, store_kind INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, store_item_id INTEGER NOT NULL DEFAULT 0, store_artist_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, redownload_action_params TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, audio_format INTEGER NOT NULL DEFAULT 0, sample_rate REAL NOT NULL DEFAULT 0, duration INTEGER NOT NULL DEFAULT 0, gapless_heuristic_info INTEGER NOT NULL DEFAULT 0, gapless_encoding_delay INTEGER NOT NULL DEFAULT 0, gapless_encoding_drain INTEGER NOT NULL DEFAULT 0, gapless_last_frame_resynch INTEGER NOT NULL DEFAULT 0, analysis_inhibit_flags INTEGER NOT NULL DEFAULT 0, audio_fingerprint INTEGER NOT NULL DEFAULT 0, volume_normalization_energy INTEGER NOT NULL DEFAULT 0, is_rental INTEGER NOT NULL DEFAULT 0, is_demo INTEGER NOT NULL DEFAULT 0, rental_duration INTEGER NOT NULL DEFAULT 0, rental_playback_duration INTEGER NOT NULL DEFAULT 0, rental_playback_date_started INTEGER NOT NULL DEFAULT 0, rental_date_started INTEGER  NOT NULL DEFAULT 0, has_alternate_audio INTEGER NOT NULL DEFAULT 0, has_subtitles INTEGER NOT NULL DEFAULT 0, is_hd INTEGER NOT NULL DEFAULT 0, season_number INTEGER NOT NULL DEFAULT 0, audio_language INTEGER NOT NULL DEFAULT 0, audio_track_index INTEGER NOT NULL DEFAULT 0, audio_track_id INTEGER NOT NULL DEFAULT 0, subtitle_language INTEGER NOT NULL DEFAULT 0, subtitle_track_index INTEGER NOT NULL DEFAULT 0, subtitle_track_id INTEGER NOT NULL DEFAULT 0, episode_id TEXT NOT NULL DEFAULT '', network_name TEXT NOT NULL DEFAULT '', extended_content_rating TEXT NOT NULL DEFAULT '', movie_info TEXT NOT NULL DEFAULT '', bit_rate INTEGER NOT NULL DEFAULT 0, pending_genius_checksum INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_extra_new (item_pid, title, sort_title, disc_count, track_count, artwork_cache_id, location_type, location, extension, date_created, file_size, file_creator, file_type, num_dir_levels_file, num_dir_levels_lib, integrity, media_kind, date_modified, year, content_rating, content_rating_level, is_user_disabled, remember_bookmark, start_time_ms, stop_time_ms, total_time_ms, total_burn_time_ms, bpm, relative_volume, eq_preset, genius_id, comment, grouping, description, description_long, collection_description, is_ota_purchased, is_compilation, is_itunes_u, is_audible_audio_book, copyright, chosen_by_auto_fill, is_temporary_cloud_download, is_streaming_quality, store_bookmark_timestamp, store_bookmark_entity_revision, is_podcast, external_guid, feed_url, store_kind, date_purchased, date_released, account_id, key_versions, key_platform_id, key_id, store_item_id, store_artist_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, redownload_action_params, artwork_url, store_xid, store_flavor, store_saga_id, store_matched_status, store_redownloaded_status, audio_format, sample_rate, duration, gapless_heuristic_info, gapless_encoding_delay, gapless_encoding_drain, gapless_last_frame_resynch, analysis_inhibit_flags, audio_fingerprint, volume_normalization_energy, is_rental, is_demo, rental_duration, rental_playback_duration, rental_playback_date_started, rental_date_started, has_alternate_audio, has_subtitles, is_hd, season_number, audio_language, audio_track_index, audio_track_id, subtitle_language, subtitle_track_index, subtitle_track_id, episode_id, network_name, extended_content_rating, movie_info, bit_rate, pending_genius_checksum) SELECT item_pid, title, sort_title, disc_count, track_count, artwork_cache_id, location_type, location, extension, date_created, file_size, file_creator, file_type, num_dir_levels_file, num_dir_levels_lib, integrity, media_kind, date_modified, year, content_rating, content_rating_level, is_user_disabled, remember_bookmark, start_time_ms, stop_time_ms, total_time_ms, total_burn_time_ms, bpm, relative_volume, eq_preset, genius_id, comment, grouping, description, description_long, collection_description, is_ota_purchased, is_compilation, is_itunes_u, is_audible_audio_book, copyright, chosen_by_auto_fill, is_temporary_cloud_download, is_streaming_quality, store_bookmark_timestamp, store_bookmark_entity_revision, is_podcast, external_guid, feed_url, store_kind, date_purchased, date_released, account_id, key_versions, key_platform_id, key_id, store_item_id, store_artist_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, redownload_action_params, artwork_url, store_xid, store_flavor, store_saga_id, store_matched_status, store_redownloaded_status, audio_format, sample_rate, duration, gapless_heuristic_info, gapless_encoding_delay, gapless_encoding_drain, gapless_last_frame_resynch, analysis_inhibit_flags, audio_fingerprint, volume_normalization_energy, is_rental, is_demo, rental_duration, rental_playback_duration, rental_playback_date_started, rental_date_started, has_alternate_audio, has_subtitles, is_hd, season_number, audio_language, audio_track_index, audio_track_id, subtitle_language, subtitle_track_index, subtitle_track_id, episode_id, network_name, extended_content_rating, movie_info, bit_rate, pending_genius_checksum FROM item_extra"}]
    && [v3 executeUpdate:@"DROP TABLE item_extra"]
    && [v3 executeUpdate:@"ALTER TABLE item_extra_new RENAME TO item_extra"])
  {
    [v4 setCurrentUserVersion:1108291];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1108291;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1108291to1111152(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitle"] && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemTitle_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbum") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbumArtist") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbumArtist_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbum_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemItemArtist_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemComposer_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemGenre_Section") && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE entity_revision_new (revision INTEGER PRIMARY KEY, entity_pid INTEGER NOT NULL, deleted INTEGER NOT NULL DEFAULT 0, class INTEGER NOT NULL DEFAULT 0, revision_type INTEGER NOT NULL DEFAULT 0, UNIQUE(entity_pid, revision_type))") && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO entity_revision_new (revision, entity_pid, deleted, class) SELECT revision, entity_pid, deleted, class FROM entity_revision") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE entity_revision") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE entity_revision_new RENAME TO entity_revision"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1111152];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1111152;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1111152to1111153(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:1111153];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1111153;"];
  return v5;
}

uint64_t ML3MigrationFunction1111153to1113775(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE item_extra SET location =  WHERE location = /"])
  {
    [v4 setCurrentUserVersion:1113775];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1113775;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1113775to1114502(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 originalUserVersion] < 1108291 || objc_msgSend(v4, "originalUserVersion") > 1124264 || +[ML3MusicLibrary updateTrackIntegrityOnConnection:](ML3MusicLibrary, "updateTrackIntegrityOnConnection:", v3))
  {
    [v4 setCurrentUserVersion:1114502];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1114502;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1114502to1114940(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN has_cloud_play_order INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1114940];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1114940;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1114940to1115195(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE composer ADD COLUMN artwork_cache_id INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE composer SET artwork_cache_id = IFNULL((SELECT artwork_cache_id FROM item JOIN item_extra USING (item_pid) WHERE item.item_pid = composer.representative_item_pid), 0)"))
  {
    [v4 setCurrentUserVersion:1115195];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1115195;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1115195to1115482(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:1115482];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1115482;"];
  return v5;
}

uint64_t ML3MigrationFunction1115482to1118969(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE artwork_info_new(cache_id TEXT NOT NULL, format_id INTEGER NOT NULL, length INTEGER, offset INTEGER, extra_length INTEGER NOT NULL DEFAULT 0, UNIQUE (cache_id, format_id))"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO artwork_info_new SELECT cache_id, format_id, length, offset, extra_length FROM artwork_info") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE artwork_info") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE artwork_info_new RENAME TO artwork_info"))
  {
    [v4 setCurrentUserVersion:1118969];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1118969;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1118969to1120346(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE purgeable_list (item_pid INTEGER PRIMARY KEY, is_purgeable INTEGER NOT NULL DEFAULT 0)"}])
  {
    [v4 setCurrentUserVersion:1120346];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1120346;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1120346to1121591(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE purgeable_list_new (item_pid INTEGER PRIMARY KEY, is_purgeable INTEGER NOT NULL DEFAULT 1, date_last_used INTEGER DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO purgeable_list_new (item_pid, is_purgeable) SELECT item_pid, is_purgeable FROM purgeable_list") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE purgeable_list") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE purgeable_list_new RENAME TO purgeable_list") && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO purgeable_list (item_pid, date_last_used) SELECT item_pid, date_played FROM item_stats"))
  {
    [v4 setCurrentUserVersion:1121591];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1121591;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1121591to1124264(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE purgeable_list_new (item_pid INTEGER PRIMARY KEY, is_alarm INTEGER NOT NULL DEFAULT 0, date_last_used INTEGER DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO purgeable_list_new (item_pid, is_alarm, date_last_used) SELECT item_pid, is_purgeable, date_last_used FROM purgeable_list") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE purgeable_list") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE purgeable_list_new RENAME TO purgeable_list"))
  {
    [v4 setCurrentUserVersion:1124264];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1124264;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1124264to1132637(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_search (item_pid INTEGER PRIMARY KEY, search_title INTEGER NOT NULL DEFAULT 0, search_album INTEGER NOT NULL DEFAULT 0, search_artist INTEGER NOT NULL DEFAULT 0, search_composer INTEGER NOT NULL DEFAULT 0, search_album_artist INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT OR REPLACE INTO item_search (item_pid, search_title) SELECT item_extra.item_pid, sort_map.name_order from sort_map JOIN item_extra ON item_extra.title = sort_map.name") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_search SET search_album = IFNULL((SELECT sort_map.name_order FROM sort_map JOIN album ON album.album = sort_map.name JOIN item ON item.album_pid = album.album_pid WHERE item.item_pid = item_search.item_pid), 0)") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_search SET search_artist = IFNULL((SELECT sort_map.name_order FROM sort_map JOIN item_artist ON item_artist.item_artist = sort_map.name JOIN item ON item.item_artist_pid = item_artist.item_artist_pid WHERE item.item_pid = item_search.item_pid), 0)") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_search SET search_composer = IFNULL((SELECT sort_map.name_order FROM sort_map JOIN composer ON composer.composer = sort_map.name JOIN item ON item.composer_pid = composer.composer_pid WHERE item.item_pid = item_search.item_pid), 0)"))
  {
    [v4 setCurrentUserVersion:1132637];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1132637;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1132637to1138219(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRemoveLocationsForItemsMissingAssets:1];
  [v3 setCurrentUserVersion:1138219];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1138219;"];
  return v5;
}

uint64_t ML3MigrationFunction1134019to1138219(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRemoveLocationsForItemsMissingAssets:1];
  [v3 setCurrentUserVersion:1138219];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1138219;"];
  return v5;
}

uint64_t ML3MigrationFunction1138219to1138254(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_search_new (item_pid INTEGER PRIMARY KEY, search_title INTEGER NOT NULL DEFAULT 0, search_album INTEGER NOT NULL DEFAULT 0, search_artist INTEGER NOT NULL DEFAULT 0, search_composer INTEGER NOT NULL DEFAULT 0, search_album_artist INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO item_search_new (item_pid, search_title, search_album, search_artist, search_composer) SELECT item_pid, search_title, search_album, search_artist, search_composer FROM item_search") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_search_new SET search_album_artist = IFNULL((SELECT sort_map.name_order FROM sort_map JOIN album_artist ON album_artist.album_artist = sort_map.name JOIN item ON item.album_artist_pid = album_artist.album_artist_pid WHERE item.item_pid = item_search_new.item_pid), 0)") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE item_search") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_search_new RENAME TO item_search"))
  {
    [v4 setCurrentUserVersion:1138254];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1138254;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1138254to1140115(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN smart_evaluation_order INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1140115];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140115;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140115to1140116(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN jalisco_token INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN codec_type INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN codec_subtype INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN format TEXT") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN data_kind INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN data_url TEXT") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN has_video INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN key_id_2 INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN has_chapter_data INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1140116];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140116;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140116to1140117(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN purchase_history_id INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1140117];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140117;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140117to1140118(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (ML3MigrationModifyTableWithResultingSchema(v3, @"item_extra", 0, 0, &cfstr_ItemPidInteger) && ML3MigrationExecuteSQLArray(v3, &unk_2840C6638))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1140118];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140118;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140118to1140119(void *a1, void *a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_store (item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_artist_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, redownload_action_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_store (item_pid, store_item_id, store_artist_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, redownload_action_params, store_saga_id, purchase_history_id, purchase_history_token, is_ota_purchased, store_kind, account_id, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status) SELECT item_pid, store_item_id, store_artist_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, redownload_action_params, store_saga_id, purchase_history_id, jalisco_token, is_ota_purchased, store_kind, account_id, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status FROM item_extra"}]
    && [v3 executeUpdate:{@"CREATE TABLE item_playback (item_pid INTEGER PRIMARY KEY, audio_format INTEGER NOT NULL DEFAULT 0, bit_rate INTEGER NOT NULL DEFAULT 0, codec_type INTEGER NOT NULL DEFAULT 0, codec_subtype INTEGER NOT NULL DEFAULT 0, data_kind INTEGER NOT NULL DEFAULT 0, data_url TEXT, duration INTEGER NOT NULL DEFAULT 0, eq_preset TEXT, format TEXT, gapless_heuristic_info INTEGER NOT NULL DEFAULT 0, gapless_encoding_delay INTEGER NOT NULL DEFAULT 0, gapless_encoding_drain INTEGER NOT NULL DEFAULT 0, gapless_last_frame_resynch INTEGER NOT NULL DEFAULT 0, has_video INTEGER NOT NULL DEFAULT 0, relative_volume INTEGER, sample_rate REAL NOT NULL DEFAULT 0, start_time_ms REAL NOT NULL DEFAULT 0, stop_time_ms REAL NOT NULL DEFAULT 0, volume_normalization_energy INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_playback (item_pid, audio_format, bit_rate, codec_type, codec_subtype, data_kind, data_url, duration, eq_preset, format, gapless_heuristic_info, gapless_encoding_delay, gapless_encoding_drain, gapless_last_frame_resynch, has_video, relative_volume, sample_rate, start_time_ms, stop_time_ms, volume_normalization_energy) SELECT item_pid, audio_format, bit_rate, codec_type, codec_subtype, data_kind, data_url, duration, eq_preset, format, gapless_heuristic_info, gapless_encoding_delay, gapless_encoding_drain, gapless_last_frame_resynch, has_video, relative_volume, sample_rate, start_time_ms, stop_time_ms, volume_normalization_energy FROM item_extra"}]
    && [v3 executeUpdate:{@"CREATE TABLE item_video (item_pid INTEGER PRIMARY KEY, video_quality INTEGER NOT NULL DEFAULT 0, is_rental INTEGER NOT NULL DEFAULT 0, has_chapter_data INTEGER NOT NULL DEFAULT 0, season_number INTEGER NOT NULL DEFAULT 0, episode_id TEXT NOT NULL DEFAULT '', network_name TEXT NOT NULL DEFAULT '', extended_content_rating TEXT NOT NULL DEFAULT '', movie_info TEXT NOT NULL DEFAULT '', has_alternate_audio INTEGER NOT NULL DEFAULT 0, has_subtitles INTEGER NOT NULL DEFAULT 0, audio_language INTEGER NOT NULL DEFAULT 0, audio_track_index INTEGER NOT NULL DEFAULT 0, audio_track_id INTEGER NOT NULL DEFAULT 0, subtitle_language INTEGER NOT NULL DEFAULT 0, subtitle_track_index INTEGER NOT NULL DEFAULT 0, rental_duration INTEGER NOT NULL DEFAULT 0, rental_playback_duration INTEGER NOT NULL DEFAULT 0, rental_playback_date_started INTEGER NOT NULL DEFAULT 0, rental_date_started INTEGER  NOT NULL DEFAULT 0, is_demo INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_video (item_pid, video_quality, is_rental, has_chapter_data, season_number, episode_id, network_name, extended_content_rating, movie_info, has_alternate_audio, has_subtitles, audio_language, audio_track_index, audio_track_id, subtitle_language, subtitle_track_index, rental_duration, rental_playback_duration, rental_playback_date_started, rental_date_started, is_demo) SELECT item_pid, is_hd, is_rental, has_chapter_data, season_number, episode_id, network_name, extended_content_rating, movie_info, has_alternate_audio, has_subtitles, audio_language, audio_track_index, audio_track_id, subtitle_language, subtitle_track_index, rental_duration, rental_playback_duration, rental_playback_date_started, rental_date_started, is_demo FROM item_extra"}])
  {
    v5 = [[ML3MigrationAddedColumn alloc] initWithName:@"date_accessed" foreignTable:@"purgeable_list" foreignColumn:@"date_last_used" joinColumn:@"item_pid"];
    v6 = [[ML3MigrationAddedColumn alloc] initWithName:@"is_alarm" foreignTable:@"purgeable_list" foreignColumn:@"is_alarm" joinColumn:@"item_pid", v5];
    v11[1] = v6;
    v7 = [[ML3MigrationAddedColumn alloc] initWithName:@"chosen_by_auto_fill" foreignTable:@"item_extra" foreignColumn:@"chosen_by_auto_fill" joinColumn:@"item_pid"];
    v11[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

    if (ML3MigrationModifyTableWithResultingSchema(v3, @"item_stats", 0, v8, @"item_pid INTEGER PRIMARY KEY, user_rating INTEGER DEFAULT 0, is_downloading INTEGER NOT NULL DEFAULT 0, download_identifier TEXT, play_count_user INTEGER DEFAULT 0, play_count_recent INTEGER DEFAULT 0, has_been_played INTEGER DEFAULT 0, date_played INTEGER DEFAULT 0, date_skipped INTEGER DEFAULT 0, date_accessed INTEGER DEFAULT 0, is_alarm INTEGER NOT NULL DEFAULT 0, skip_count_user INTEGER DEFAULT 0, skip_count_recent INTEGER DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL, store_bookmark_timestamp REAL DEFAULT NULL, store_bookmark_entity_revision INTEGER DEFAULT NULL, hidden INTEGER DEFAULT 0, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0") && ML3MigrationModifyTableWithResultingSchema(v3, @"item_extra", 0, 0, @"item_pid INTEGER PRIMARY KEY, title TEXT NOT NULL DEFAULT '', sort_title TEXT, artwork_cache_id INTEGER NOT NULL DEFAULT 0, disc_count INTEGER DEFAULT 0, track_count INTEGER DEFAULT 0, total_time_ms REAL NOT NULL DEFAULT 0, year INTEGER DEFAULT 0, location TEXT NOT NULL DEFAULT '', file_size INTEGER NOT NULL DEFAULT 0, integrity BLOB, is_temporary_cloud_download INTEGER NOT NULL DEFAULT 0, is_streaming_quality INTEGER NOT NULL DEFAULT 0, is_compilation INTEGER NOT NULL DEFAULT 0, is_audible_audio_book INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, media_kind INTEGER NOT NULL DEFAULT 0, content_rating INTEGER NOT NULL DEFAULT 0, content_rating_level INTEGER NOT NULL DEFAULT 0, is_user_disabled INTEGER NOT NULL DEFAULT 0, bpm INTEGER DEFAULT 0, genius_id INTEGER NOT NULL DEFAULT 0, comment TEXT, grouping TEXT, description TEXT, description_long TEXT, collection_description TEXT, copyright TEXT, pending_genius_checksum INTEGER NOT NULL DEFAULT 0") && [v3 executeUpdate:@"DROP TABLE purgeable_list"])
    {
      [v4 setNeedsToRecreateIndexes:1];
      [v4 setNeedsToRecreateTriggers:1];
      [v4 setCurrentUserVersion:1140119];
      v9 = [v3 executeUpdate:@"PRAGMA user_version = 1140119;"];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t ML3MigrationFunction1140119to1140120(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN sync_id INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET sync_id = item_pid WHERE item_pid IN (SELECT item_pid from item JOIN base_location USING (base_location_id) WHERE base_location_id != 0 AND path != 'Purchases' AND path != 'CloudAssets')"))
  {
    [v4 setCurrentUserVersion:1140120];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140120;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140120to1140130(void *a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE item SET base_location_id = 200 WHERE item_pid IN (SELECT item_pid FROM item JOIN base_location USING(base_location_id) WHERE path = 'CloudAssets')"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE base_location SET base_location_id = 200 WHERE path = 'CloudAssets'") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item SET base_location_id = 300 WHERE item_pid IN (SELECT item_pid FROM item JOIN base_location USING(base_location_id) WHERE path = 'Purchases')") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item SET base_location_id = 300 WHERE item_pid IN (SELECT item_pid FROM item JOIN base_location USING(base_location_id) WHERE path = '/var/mobile/Media/Purchases')") && objc_msgSend(v3, "executeUpdate:", @"UPDATE base_location SET base_location_id = 300 WHERE path = 'Purchases'"))
  {
    v5 = 0;
    while (1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item SET base_location_id = %d WHERE item_pid IN (SELECT item_pid FROM item JOIN base_location USING(base_location_id) WHERE path = 'iTunes_Control/Music/F%02d')", (v5 + 3840), v5];
      v7 = [v3 executeUpdate:v6];

      if (!v7)
      {
        break;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE base_location SET base_location_id = %d WHERE path = 'iTunes_Control/Music/F%02d'", (v5 + 3840), v5];
      v9 = [v3 executeUpdate:v8];

      if ((v9 & 1) == 0)
      {
        break;
      }

      v5 = (v5 + 1);
      if (v5 == 50)
      {
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v11 = MLMobileUserHomeDirectory();
        v12 = [v11 stringByAppendingPathComponent:@"Media/LoFiCloudAssets"];
        v13 = [v10 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:0];

        if (!v13)
        {
          break;
        }

        v14 = [MEMORY[0x277CBEB18] array];
        v15 = [v3 executeQuery:@"SELECT location FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE is_streaming_quality = 1 AND path = 'CloudAssets' AND LENGTH(location) > 0"];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __ML3MigrationFunction1140120to1140130_block_invoke;
        v52[3] = &unk_278766118;
        v16 = v14;
        v53 = v16;
        [v15 enumerateRowsWithBlock:v52];
        if ([v3 executeUpdate:@"UPDATE item SET base_location_id = 100 WHERE item_pid IN (SELECT item_pid from item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE is_streaming_quality = 1 AND path = 'CloudAssets')"] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO base_location VALUES (100, 'LoFiCloudAssets')"))
        {
          v44 = v15;
          v45 = v4;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v43 = v16;
          obj = v16;
          v17 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
          if (v17)
          {
            v18 = v17;
            v47 = *v49;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v49 != v47)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v48 + 1) + 8 * i);
                v21 = MLMobileUserHomeDirectory();
                v22 = [v21 stringByAppendingPathComponent:@"Media/CloudAssets"];
                v23 = [v22 stringByAppendingPathComponent:v20];

                v24 = MLMobileUserHomeDirectory();
                v25 = [v24 stringByAppendingPathComponent:@"Media/LoFiCloudAssets"];
                v26 = [v25 stringByAppendingPathComponent:v20];

                v27 = [v23 stringByDeletingPathExtension];
                v28 = [v27 stringByAppendingPathExtension:@".plist"];

                v29 = [v26 stringByDeletingPathExtension];
                v30 = [v29 stringByAppendingPathExtension:@".plist"];

                v31 = os_log_create("com.apple.amp.medialibrary", "Migration");
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v58 = v23;
                  v59 = 2114;
                  v60 = v26;
                  _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "Moving %{public}@ to %{public}@", buf, 0x16u);
                }

                v32 = [MEMORY[0x277CCAA00] defaultManager];
                [v32 moveItemAtPath:v23 toPath:v26 error:0];

                v33 = [MEMORY[0x277CCAA00] defaultManager];
                [v33 moveItemAtPath:v28 toPath:v30 error:0];
              }

              v18 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
            }

            while (v18);
          }

          v4 = v45;
          if (ML3MigrationModifyTableWithResultingSchema(v3, @"item_stats", &unk_2840CA520, 0, @"item_pid INTEGER PRIMARY KEY, user_rating INTEGER DEFAULT 0, needs_restore INTEGER NOT NULL DEFAULT 0, download_identifier TEXT, play_count_user INTEGER DEFAULT 0, play_count_recent INTEGER DEFAULT 0, has_been_played INTEGER DEFAULT 0, date_played INTEGER DEFAULT 0, date_skipped INTEGER DEFAULT 0, date_accessed INTEGER DEFAULT 0, is_alarm INTEGER NOT NULL DEFAULT 0, skip_count_user INTEGER DEFAULT 0, skip_count_recent INTEGER DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL, store_bookmark_timestamp REAL DEFAULT NULL, store_bookmark_entity_revision INTEGER DEFAULT NULL, hidden INTEGER DEFAULT 0, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0"))
          {
            v34 = [[ML3MigrationAddedColumn alloc] initWithName:@"store_link_id" foreignTable:@"item" foreignColumn:@"store_link_id" joinColumn:@"item_pid"];
            v56 = v34;
            v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];

            if (ML3MigrationModifyTableWithResultingSchema(v3, @"item_store", &unk_2840CA548, v35, @"item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_artist_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, purchase_history_redownload_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, match_redownload_params TEXT, sync_id INTEGER NOT NULL DEFAULT 0, home_sharing_id INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, store_link_id INTEGER NOT NULL DEFAULT 0"))
            {
              v36 = [[ML3MigrationAddedColumn alloc] initWithName:@"category_id" foreignTable:@"item" foreignColumn:@"category_id" joinColumn:@"item_pid"];
              v55[0] = v36;
              v37 = [[ML3MigrationAddedColumn alloc] initWithName:@"location_kind_id" foreignTable:@"item" foreignColumn:@"location_kind_id" joinColumn:@"item_pid"];
              v55[1] = v37;
              v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];

              if (ML3MigrationModifyTableWithResultingSchema(v3, @"item_extra", 0, v38, @"item_pid INTEGER PRIMARY KEY, title TEXT NOT NULL DEFAULT '', sort_title TEXT, artwork_cache_id INTEGER NOT NULL DEFAULT 0, disc_count INTEGER DEFAULT 0, track_count INTEGER DEFAULT 0, total_time_ms REAL NOT NULL DEFAULT 0, year INTEGER DEFAULT 0, location TEXT NOT NULL DEFAULT '', file_size INTEGER NOT NULL DEFAULT 0, integrity BLOB, is_compilation INTEGER NOT NULL DEFAULT 0, is_audible_audio_book INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, media_kind INTEGER NOT NULL DEFAULT 0, content_rating INTEGER NOT NULL DEFAULT 0, content_rating_level INTEGER NOT NULL DEFAULT 0, is_user_disabled INTEGER NOT NULL DEFAULT 0, bpm INTEGER DEFAULT 0, genius_id INTEGER NOT NULL DEFAULT 0, comment TEXT, grouping TEXT, description TEXT, description_long TEXT, collection_description TEXT, copyright TEXT, pending_genius_checksum INTEGER NOT NULL DEFAULT 0, category_id INTEGER DEFAULT 0, location_kind_id INTEGER NOT NULL DEFAULT 0"))
              {
                v39 = [[ML3MigrationAddedColumn alloc] initWithName:@"remote_location_id" foreignTable:@"item_store" foreignColumn:@"(CASE WHEN store_saga_id != 0 THEN 200 ELSE (CASE WHEN purchase_history_id != 0 THEN 100 ELSE 0 END) END)" joinColumn:@"item_pid"];
                v54 = v39;
                v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];

                if (ML3MigrationModifyTableWithResultingSchema(v3, @"item", &unk_2840CA570, v40, @"item_pid INTEGER PRIMARY KEY, media_type INTEGER NOT NULL DEFAULT 0, title_order INTEGER NOT NULL DEFAULT 0, title_order_section INTEGER NOT NULL DEFAULT 0, item_artist_pid INTEGER NOT NULL DEFAULT 0, item_artist_order INTEGER NOT NULL DEFAULT 0, item_artist_order_section INTEGER NOT NULL DEFAULT 0, series_name_order INTEGER NOT NULL DEFAULT 0, series_name_order_section INTEGER NOT NULL DEFAULT 0, album_pid INTEGER NOT NULL DEFAULT 0, album_order INTEGER NOT NULL DEFAULT 0, album_order_section INTEGER NOT NULL DEFAULT 0, album_artist_pid INTEGER NOT NULL DEFAULT 0, album_artist_order INTEGER NOT NULL DEFAULT 0, album_artist_order_section INTEGER NOT NULL DEFAULT 0, composer_pid INTEGER NOT NULL DEFAULT 0, composer_order INTEGER NOT NULL DEFAULT 0, composer_order_section INTEGER NOT NULL DEFAULT 0, genre_id INTEGER NOT NULL DEFAULT 0, genre_order INTEGER NOT NULL DEFAULT 0, genre_order_section INTEGER NOT NULL DEFAULT 0, disc_number INTEGER DEFAULT 0, track_number INTEGER DEFAULT 0, episode_sort_id INTEGER DEFAULT 0, base_location_id INTEGER NOT NULL DEFAULT 0, remote_location_id INTEGER NOT NULL DEFAULT 0, exclude_from_shuffle INTEGER NOT NULL DEFAULT 0, is_video INTEGER NOT NULL DEFAULT 0, is_podcast INTEGER NOT NULL DEFAULT 0, is_itunes_u INTEGER NOT NULL DEFAULT 0") && [ML3MusicLibrary updateTrackIntegrityOnConnection:v3])
                {
                  [v45 setNeedsToRecreateIndexes:1];
                  [v45 setNeedsToRecreateTriggers:1];
                  [v45 setCurrentUserVersion:1140130];
                  v41 = [v3 executeUpdate:@"PRAGMA user_version = 1140130;"];
                }

                else
                {
                  v41 = 0;
                }

                v16 = v43;
                v15 = v44;
              }

              else
              {
                v41 = 0;
                v16 = v43;
                v15 = v44;
              }
            }

            else
            {
              v41 = 0;
              v16 = v43;
              v15 = v44;
            }
          }

          else
          {
            v41 = 0;
            v16 = v43;
            v15 = v44;
          }
        }

        else
        {
          v41 = 0;
        }

        goto LABEL_29;
      }
    }
  }

  v41 = 0;
LABEL_29:

  return v41;
}

void __ML3MigrationFunction1140120to1140130_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringForColumnIndex:0];
  [*(a1 + 32) addObject:v3];
}

uint64_t ML3MigrationFunction1140130to1140140(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_storebookmark_identifier (item_pid INTEGER PRIMARY KEY, storebookmark_identifier TEXT NOT NULL)"}])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1140140];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140140;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140140to1140150(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_update_item_setIsMediaColumns"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_insert_item_setRemoteLocationColumn") && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setRemoteLocationColumn"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1140150];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140150;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140150to1140160(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN contained_media_type INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE container_item_media_type (container_pid INTEGER NOT NULL, media_type INTEGER NOT NULL, count INTEGER NOT NULL DEFAULT 0, UNIQUE(container_pid, media_type))"))
  {
    [v4 setCurrentUserVersion:1140160];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140160;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140160to1140170(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_upp (item_pid INTEGER PRIMARY KEY, bookkeeper_identifier TEXT NOT NULL, metadata_timestamp REAL DEFAULT NULL, metadata_entity_revision INTEGER DEFAULT NULL)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO item_upp (item_pid, bookkeeper_identifier, metadata_timestamp, metadata_entity_revision) SELECT item_pid, storebookmark_identifier, store_bookmark_timestamp, store_bookmark_entity_revision FROM item JOIN item_storebookmark_identifier USING(item_pid) JOIN item_stats USING(item_pid);") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemStorebookmarkIdentifier_identifier") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemBookkeeperItemLookup") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE IF EXISTS item_storebookmark_identifier") && ML3MigrationModifyTableWithResultingSchema(v3, @"item_stats", 0, 0, @"item_pid INTEGER PRIMARY KEY, user_rating INTEGER DEFAULT 0, needs_restore INTEGER NOT NULL DEFAULT 0, download_identifier TEXT, play_count_user INTEGER DEFAULT 0, play_count_recent INTEGER DEFAULT 0, has_been_played INTEGER DEFAULT 0, date_played INTEGER DEFAULT 0, date_skipped INTEGER DEFAULT 0, date_accessed INTEGER DEFAULT 0, is_alarm INTEGER NOT NULL DEFAULT 0, skip_count_user INTEGER DEFAULT 0, skip_count_recent INTEGER DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL, hidden INTEGER DEFAULT 0, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setNeedsToReloadStoreBookmarkMetadataIdentifiers:1];
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1140170];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140170;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140170to1140180(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_artist ADD COLUMN artist_artwork_cache_id TEXT NOT NULL DEFAULT ''"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE album_artist ADD COLUMN artist_artwork_cache_id TEXT NOT NULL DEFAULT ''"))
  {
    [v4 setCurrentUserVersion:1140180];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140180;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140180to1140190(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN is_ignorable_itunes_playlist INTEGER DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET is_ignorable_itunes_playlist = 1 WHERE (is_hidden = 1 AND distinguished_kind NOT IN (19, 20, 32))"))
  {
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1140190];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140190;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140190to1140200(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1140200];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1140200;"];

  return v4;
}

uint64_t ML3MigrationFunction1140200to1140210(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_update_container_setIsIgnorableITunesPlaylist"])
  {
    [v4 setCurrentUserVersion:1140210];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140210;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140210to1140230(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN screenshot_cache_id TEXT"])
  {
    [v4 setCurrentUserVersion:1140230];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140230;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140230to1140240(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE item SET base_location_id = 400 WHERE item_pid IN (SELECT item_pid FROM item JOIN base_location USING(base_location_id) WHERE path = 'Podcasts')"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE base_location SET base_location_id = 400 WHERE path = 'Podcasts'") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item SET base_location_id = 400 WHERE item_pid IN (SELECT item_pid FROM item JOIN base_location USING(base_location_id) WHERE path = '/var/mobile/Media/Podcasts')"))
  {
    [v4 setCurrentUserVersion:1140240];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140240;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140240to1140250(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setCurrentUserVersion:1140250];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1140250;"];
  return v5;
}

uint64_t ML3MigrationFunction1140250to1140260(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1140260];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1140260;"];

  return v4;
}

uint64_t ML3MigrationFunction1140260to1140300(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS ItemLocation"] && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemTitle") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbum") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbumArtist") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemItemArtist") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemComposer") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemGenre"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1140300];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1140300;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1140300to1140310(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1140310];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1140310;"];

  return v4;
}

uint64_t ML3MigrationFunction1140310to1140320(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v5 = [v3 executeQuery:{@"select item_pid, item_extra.title, item_extra.total_time_ms from item_store join item_extra using (item_pid) where item_pid in (select sync_id from item_store where sync_id != 0) and sync_id = 0"}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __ML3MigrationFunction1140310to1140320_block_invoke;
  v12 = &unk_278765180;
  v6 = v3;
  v13 = v6;
  v14 = &v15;
  [v5 enumerateRowsWithBlock:&v9];
  [v6 executeUpdate:{@"update _MLDatabaseProperties set value=0 where key='MLSyncClientSyncAnchor'", v9, v10, v11, v12}];
  if (v16[3])
  {
    [v4 setCurrentUserVersion:1140320];
    v7 = [v6 executeUpdate:@"PRAGMA user_version = 1140320;"];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

void sub_22D3E7A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction1140310to1140320_block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 stringForColumnIndex:1];
  v6 = [v3 numberForColumnIndex:2];

  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CBEA60];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  v10 = [v8 arrayWithObjects:{v9, v5, v6, 0}];
  v11 = [v7 executeQuery:@"select item_pid from item_store join item_extra using (item_pid) where item_store.sync_id = ? and (item_extra.title = ? or item_extra.total_time_ms = ?)" withParameters:v10];
  v12 = [v11 int64ValueForFirstRowAndColumn];

  if (v12)
  {
    v23 = v5;
    v13 = *(a1 + 32);
    v14 = MEMORY[0x277CBEA60];
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
    v17 = [v14 arrayWithObjects:{v15, v16, 0}];
    LOBYTE(v13) = [v13 executeUpdate:@"update item_store set sync_id = ? where item_pid = ?" withParameters:v17 error:0];

    if (v13)
    {
      v18 = MEMORY[0x277CBEA60];
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
      v20 = [v18 arrayWithObject:v19];

      v5 = v23;
      if (![*(a1 + 32) executeUpdate:@"delete from item where item_pid = ?" withParameters:v20 error:0] || !objc_msgSend(*(a1 + 32), "executeUpdate:withParameters:error:", @"delete from item_extra where item_pid = ?", v20, 0) || !objc_msgSend(*(a1 + 32), "executeUpdate:withParameters:error:", @"delete from item_store where item_pid = ?", v20, 0) || !objc_msgSend(*(a1 + 32), "executeUpdate:withParameters:error:", @"delete from item_stats where item_pid = ?", v20, 0) || !objc_msgSend(*(a1 + 32), "executeUpdate:withParameters:error:", @"delete from item_playback where item_pid = ?", v20, 0) || !objc_msgSend(*(a1 + 32), "executeUpdate:withParameters:error:", @"delete from item_search where item_pid = ?", v20, 0) || !objc_msgSend(*(a1 + 32), "executeUpdate:withParameters:error:", @"delete from item_video where item_pid = ?", v20, 0) || (objc_msgSend(*(a1 + 32), "executeUpdate:withParameters:error:", @"delete from entity_revision where entity_pid = ?", v20, 0) & 1) == 0)
      {
        v21 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v25 = v4;
          _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "failed to delete duplicate item for %lld", buf, 0xCu);
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }

    else
    {
      v22 = os_log_create("com.apple.amp.medialibrary", "Migration");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v25 = v4;
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, "failed to merge duplicate items for %lld", buf, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      v5 = v23;
    }
  }
}

uint64_t ML3MigrationFunction1140320to1150000(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1150000];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1150000;"];

  return v4;
}

uint64_t ML3MigrationFunction1150000to1150010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DELETE FROM entity_revision where class = 7"])
  {
    [v4 setCurrentUserVersion:1150010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1150010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1150010to1150020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_insert_item_setIsMediaColumns;"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setIsMediaColumns;") && ML3MigrationModifyTableWithResultingSchema(v3, @"item", 0, 0, @"item_pid INTEGER PRIMARY KEY, media_type INTEGER NOT NULL DEFAULT 0, title_order INTEGER NOT NULL DEFAULT 0, title_order_section INTEGER NOT NULL DEFAULT 0, item_artist_pid INTEGER NOT NULL DEFAULT 0, item_artist_order INTEGER NOT NULL DEFAULT 0, item_artist_order_section INTEGER NOT NULL DEFAULT 0, series_name_order INTEGER NOT NULL DEFAULT 0, series_name_order_section INTEGER NOT NULL DEFAULT 0, album_pid INTEGER NOT NULL DEFAULT 0, album_order INTEGER NOT NULL DEFAULT 0, album_order_section INTEGER NOT NULL DEFAULT 0, album_artist_pid INTEGER NOT NULL DEFAULT 0, album_artist_order INTEGER NOT NULL DEFAULT 0, album_artist_order_section INTEGER NOT NULL DEFAULT 0, composer_pid INTEGER NOT NULL DEFAULT 0, composer_order INTEGER NOT NULL DEFAULT 0, composer_order_section INTEGER NOT NULL DEFAULT 0, genre_id INTEGER NOT NULL DEFAULT 0, genre_order INTEGER NOT NULL DEFAULT 0, genre_order_section INTEGER NOT NULL DEFAULT 0, disc_number INTEGER DEFAULT 0, track_number INTEGER DEFAULT 0, episode_sort_id INTEGER DEFAULT 0, base_location_id INTEGER NOT NULL DEFAULT 0, remote_location_id INTEGER NOT NULL DEFAULT 0, exclude_from_shuffle INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1150020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1150020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1150020to1150030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE item SET media_type = ML3StandardizedMediaType(media_type);"])
  {
    [v4 setNeedsToReloadContainerMediaTypes:1];
    [v4 setCurrentUserVersion:1150030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1150030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1150030to1150040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"update item_store set store_item_id = 0 where store_item_id = -1"])
  {
    [v4 setCurrentUserVersion:1150040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1150040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1150040to1150050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN album_year INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE album SET album_year = (SELECT IFNULL(MAX(year), 0) FROM item_extra JOIN item USING(item_pid) WHERE item.album_pid = album.album_pid)"))
  {
    [v4 setCurrentUserVersion:1150050];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1150050;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1150050to1150060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_insert_item_setRemoteLocationColumn"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setRemoteLocationColumn") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item SET remote_location_id = (SELECT CASE WHEN home_sharing_id != 0 THEN 300 ELSE (CASE WHEN IFNULL(match_redownload_params, '') != '' THEN 200 ELSE (CASE WHEN IFNULL(purchase_history_redownload_params, '') != '' AND purchase_history_id != 0 THEN 100 ELSE 0 END) END) END FROM item_store WHERE item.item_pid = item_store.item_pid)"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1150060];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1150060;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1150060to1150070(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1150070];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1150070;"];

  return v4;
}

uint64_t ML3MigrationFunction1150070to1150080(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MGGetBoolAnswer() && ([v3 executeQuery:{@"SELECT 1 FROM item WHERE media_type IN (4, 256) LIMIT 1"}], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasAtLeastOneRow"), v5, v6) && !objc_msgSend(v3, "executeUpdate:", @"INSERT OR REPLACE INTO _MLDatabaseProperties (value, key) VALUES (1, 'NeedToRemovePodcastsFromSiri')"))
  {
    v7 = 0;
  }

  else
  {
    [v4 setCurrentUserVersion:1150080];
    v7 = [v3 executeUpdate:@"PRAGMA user_version = 1150080;"];
  }

  return v7;
}

uint64_t ML3MigrationFunction1150080to1150090(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v22 = a2;
  v4 = MLMobileUserHomeDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"Media"];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v3 executeQuery:{@"SELECT item.ROWID, base_location.path, item_extra.location FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE item.base_location_id != 0 AND item_extra.file_size = 0"}];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __ML3MigrationFunction1150080to1150090_block_invoke;
  v27[3] = &unk_278764618;
  v20 = v5;
  v28 = v20;
  v19 = v6;
  v29 = v19;
  v9 = v8;
  v30 = v9;
  v21 = v7;
  [v7 enumerateRowsWithBlock:v27];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if (([v3 executeUpdate:{v15, v19, v20}] & 1) == 0)
        {
          v16 = os_log_create("com.apple.amp.medialibrary", "Migration");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v15;
            _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Failed to update file size. %@", buf, 0xCu);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v12);
  }

  [v22 setCurrentUserVersion:1150090];
  v17 = [v3 executeUpdate:@"PRAGMA user_version = 1150090;"];

  return v17;
}

void __ML3MigrationFunction1150080to1150090_block_invoke(uint64_t a1, void *a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 stringForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];

  v7 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v16 = v4;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Found an item (%lld) that has a location in the database, but no file size.", buf, 0xCu);
  }

  v8 = MEMORY[0x277CCACA8];
  v19[0] = *(a1 + 32);
  v19[1] = v5;
  v19[2] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v10 = [v8 pathWithComponents:v9];

  if ([*(a1 + 40) fileExistsAtPath:v10 isDirectory:0])
  {
    v11 = [*(a1 + 40) attributesOfItemAtPath:v10 error:0];
    v12 = [v11 fileSize];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item_extra SET file_size = %zu WHERE item_pid = %lld", v12, v4];
    v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v16 = v12;
      v17 = 2048;
      v18 = v4;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Computed %zu file size for item %lld.", buf, 0x16u);
    }

    [*(a1 + 48) addObject:v13];
  }

  else
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = v4;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "WARNING: item with pid %lld has a location in the database but no file on disk.", buf, 0xCu);
    }
  }
}

uint64_t ML3MigrationFunction1150090to1160000(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [&unk_2840C6650 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v16 = v4;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(&unk_2840C6650);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE %@ ADD COLUMN keep_local INTEGER NOT NULL DEFAULT 0", v9];
        v11 = [v3 executeUpdate:v10];

        if (v11)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE %@ ADD COLUMN keep_local_status INTEGER NOT NULL DEFAULT 0", v9];
          v13 = [v3 executeUpdate:v12];

          if (v13)
          {
            continue;
          }
        }

        v14 = 0;
        v4 = v16;
        goto LABEL_20;
      }

      v6 = [&unk_2840C6650 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v4 = v16;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([v3 executeUpdate:@"CREATE INDEX IF NOT EXISTS ItemKeepLocal ON item (keep_local)"] && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ItemArtistKeepLocal ON item_artist (keep_local)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS AlbumKeepLocal ON album (keep_local)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS AlbumArtistKeepLocal ON album_artist (keep_local)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ContainerKeepLocal ON container (keep_local)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS GenreKeepLocal ON genre (keep_local)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ComposerKeepLocal ON composer (keep_local)"))
  {
    [v4 setCurrentUserVersion:1160000];
    v14 = [v3 executeUpdate:@"PRAGMA user_version = 1160000;"];
  }

  else
  {
    v14 = 0;
  }

LABEL_20:

  return v14;
}

uint64_t ML3MigrationFunction1160000to1160010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN reserved TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:1160010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160010to1160020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN version TEXT NOT NULL DEFAULT ''"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN display_version TEXT NOT NULL DEFAULT ''") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_playback ADD COLUMN progression_direction INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN vpp_is_licensed INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN vpp_org_id INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN vpp_org_name TEXT NOT NULL DEFAULT ''"))
  {
    [v4 setCurrentUserVersion:1160020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160020to1160030(void *a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_artwork (item_pid INTEGER PRIMARY KEY, best_artwork_token TEXT NOT NULL DEFAULT '', best_artwork_source_type INTEGER NOT NULL DEFAULT 0, cloud_artwork_token TEXT NOT NULL DEFAULT '', sync_artwork_token TEXT NOT NULL DEFAULT '', purchase_history_artwork_token TEXT NOT NULL DEFAULT '', store_artwork_token TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"CREATE TABLE item_screenshot (item_pid INTEGER PRIMARY KEY, best_screenshot_token TEXT NOT NULL DEFAULT '', best_screenshot_source_type INTEGER NOT NULL DEFAULT 0, cloud_screenshot_token TEXT NOT NULL DEFAULT '', sync_screenshot_token TEXT NOT NULL DEFAULT '', purchase_history_screenshot_token TEXT NOT NULL DEFAULT '', store_screenshot_token TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"CREATE TABLE artwork (artwork_token TEXT NOT NULL DEFAULT '', artwork_source_type INTEGER NOT NULL DEFAULT 0, relative_path TEXT NOT NULL DEFAULT '', artwork_type INTEGER NOT NULL DEFAULT 0, UNIQUE (artwork_token, artwork_source_type))"}]
    && [v3 executeUpdate:{@"INSERT INTO item_artwork (item_pid, cloud_artwork_token) SELECT item_pid, artwork_cache_id FROM item_extra JOIN item_store USING (item_pid) WHERE artwork_cache_id IS NOT NULL AND artwork_cache_id != 0 AND store_saga_id != 0"}]
    && [v3 executeUpdate:{@"INSERT INTO item_artwork (item_pid, sync_artwork_token) SELECT item_pid, artwork_cache_id FROM item_extra JOIN item_store USING (item_pid) WHERE artwork_cache_id IS NOT NULL AND artwork_cache_id != 0 AND store_saga_id = 0 AND sync_id != 0 AND artwork_cache_id < 10001"}]
    && [v3 executeUpdate:{@"INSERT INTO item_artwork (item_pid, purchase_history_artwork_token) SELECT item_pid, artwork_cache_id FROM item_extra JOIN item_store USING (item_pid) WHERE artwork_cache_id IS NOT NULL AND artwork_cache_id != 0 AND store_saga_id = 0 AND purchase_history_id != 0 AND sync_id = 0"}]
    && [v3 executeUpdate:{@"INSERT INTO item_screenshot (item_pid, cloud_screenshot_token) SELECT item_pid, screenshot_cache_id FROM item_extra JOIN item_store USING (item_pid) WHERE screenshot_cache_id IS NOT NULL AND screenshot_cache_id != 0 AND store_saga_id != 0"}]
    && [v3 executeUpdate:{@"INSERT INTO item_screenshot (item_pid, sync_screenshot_token) SELECT item_pid, screenshot_cache_id FROM item_extra JOIN item_store USING (item_pid) WHERE screenshot_cache_id IS NOT NULL AND screenshot_cache_id != 0 AND store_saga_id = 0 AND sync_id != 0 AND screenshot_cache_id < 10001"}]
    && [v3 executeUpdate:{@"INSERT INTO item_screenshot (item_pid, purchase_history_screenshot_token) SELECT item_pid, screenshot_cache_id FROM item_extra JOIN item_store USING (item_pid) WHERE screenshot_cache_id IS NOT NULL AND screenshot_cache_id != 0 AND store_saga_id = 0 AND purchase_history_id != 0 AND sync_id = 0"}]
    && [v3 executeUpdate:{@"UPDATE item_artwork SET best_artwork_token = (CASE WHEN cloud_artwork_token != '' THEN cloud_artwork_token ELSE (CASE WHEN sync_artwork_token != '' THEN sync_artwork_token ELSE (CASE WHEN purchase_history_artwork_token != '' THEN purchase_history_artwork_token ELSE (CASE WHEN store_artwork_token != '' THEN store_artwork_token ELSE '' END) END) END) END), best_artwork_source_type = (CASE WHEN cloud_artwork_token != '' THEN 1 ELSE (CASE WHEN sync_artwork_token != '' THEN 2 ELSE (CASE WHEN purchase_history_artwork_token != '' THEN 3 ELSE (CASE WHEN store_artwork_token != '' THEN 4 ELSE 0 END) END) END) END)"}]
    && [v3 executeUpdate:{@"UPDATE item_screenshot SET best_screenshot_token = (CASE WHEN cloud_screenshot_token != '' THEN cloud_screenshot_token ELSE (CASE WHEN sync_screenshot_token != '' THEN sync_screenshot_token ELSE (CASE WHEN purchase_history_screenshot_token != '' THEN purchase_history_screenshot_token ELSE (CASE WHEN store_screenshot_token != '' THEN store_screenshot_token ELSE '' END) END) END) END), best_screenshot_source_type = (CASE WHEN cloud_screenshot_token != '' THEN 1 ELSE (CASE WHEN sync_screenshot_token != '' THEN 2 ELSE (CASE WHEN purchase_history_screenshot_token != '' THEN 3 ELSE (CASE WHEN store_screenshot_token != '' THEN 4 ELSE 0 END) END) END) END)"}])
  {
    v5 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork"];
    v6 = ML3MigrationTemporaryPathFromPath(v5);
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v58 = 0;
    [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v58];
    v8 = v58;
    if (v8)
    {
      v9 = _ML3LogCategoryMigration();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v60 = v8;
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Failed to create temporary new artwork directory with error: %{public}@", buf, 0xCu);
      }

      v10 = 0;
      goto LABEL_62;
    }

    v39 = v5;
    v12 = [v3 executeQuery:{@"SELECT DISTINCT(best_artwork_token), best_artwork_source_type FROM item_artwork WHERE best_artwork_token != ''"}];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __ML3MigrationFunction1160020to1160030_block_invoke;
    v54[3] = &unk_278764618;
    v38 = v7;
    v13 = v7;
    v55 = v13;
    v35 = v6;
    v14 = v6;
    v56 = v14;
    v15 = v3;
    v57 = v15;
    v34 = v12;
    [v12 enumerateRowsWithBlock:v54];
    v16 = [v15 executeQuery:{@"SELECT DISTINCT(best_screenshot_token), best_screenshot_source_type FROM item_screenshot WHERE best_screenshot_token != ''"}];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __ML3MigrationFunction1160020to1160030_block_invoke_993;
    v50[3] = &unk_278764618;
    v17 = v13;
    v51 = v17;
    v18 = v14;
    v52 = v18;
    v19 = v15;
    v53 = v19;
    v37 = v16;
    [v16 enumerateRowsWithBlock:v50];
    v20 = [v19 executeQuery:{@"SELECT item_pid, chapter_data FROM chapter JOIN item USING (item_pid) WHERE chapter_data IS NOT NULL"}];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __ML3MigrationFunction1160020to1160030_block_invoke_997;
    v46[3] = &unk_278764618;
    v21 = v17;
    v47 = v21;
    v22 = v18;
    v48 = v22;
    v23 = v19;
    v49 = v23;
    v36 = v20;
    [v20 enumerateRowsWithBlock:v46];
    v24 = [v23 executeQuery:@"SELECT DISTINCT(artist_artwork_cache_id) FROM album_artist WHERE artist_artwork_cache_id != ''"];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __ML3MigrationFunction1160020to1160030_block_invoke_1009;
    v42[3] = &unk_278764618;
    v25 = v21;
    v43 = v25;
    v26 = v22;
    v44 = v26;
    v27 = v23;
    v45 = v27;
    [v24 enumerateRowsWithBlock:v42];
    v28 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork"];
    LODWORD(v23) = [v25 fileExistsAtPath:v28];

    if (v23 && (+[ML3MusicLibrary mediaFolderPathByAppendingPathComponent:](ML3MusicLibrary, "mediaFolderPathByAppendingPathComponent:", @"iTunes_Control/iTunes/Artwork"), v29 = objc_claimAutoreleasedReturnValue(), v41 = 0, [v25 removeItemAtPath:v29 error:&v41], v30 = v41, v29, v30))
    {
      v31 = _ML3LogCategoryMigration();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v60 = v30;
        v32 = "Failed to delete old artwork directory during migration with error: %{public}@";
LABEL_26:
        _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);
      }
    }

    else
    {
      if (![v25 fileExistsAtPath:v26] || (v40 = 0, objc_msgSend(v25, "moveItemAtPath:toPath:error:", v26, v39, &v40), (v33 = v40) == 0))
      {
        if ([v27 executeUpdate:{@"CREATE TABLE new_album (album_pid INTEGER PRIMARY KEY, album TEXT NOT NULL DEFAULT '', sort_album TEXT, album_artist_pid INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, representative_item_artwork_token TEXT NOT NULL DEFAULT '', grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, user_rating INTEGER NOT NULL DEFAULT 0, all_compilations INTEGER NOT NULL DEFAULT 0, feed_url TEXT, season_number INTEGER, album_year INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
          && [v27 executeUpdate:{@"INSERT INTO new_album (album_pid, album, sort_album, album_artist_pid, representative_item_pid, representative_item_artwork_token, grouping_key, cloud_status, user_rating, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status) SELECT album_pid, album, sort_album, album_artist_pid, representative_item_pid, artwork_cache_id, grouping_key, cloud_status, user_rating, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status FROM album"}]
          && [v27 executeUpdate:@"UPDATE new_album SET representative_item_artwork_token = '' WHERE representative_item_artwork_token = '0'"]
          && [v27 executeUpdate:@"DROP TABLE album"]
          && [v27 executeUpdate:@"ALTER TABLE new_album RENAME TO album"]
          && [v27 executeUpdate:{@"CREATE TABLE new_item_artist (item_artist_pid INTEGER PRIMARY KEY, item_artist TEXT NOT NULL DEFAULT '', sort_item_artist TEXT, series_name TEXT NOT NULL DEFAULT '', sort_series_name TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, representative_item_artwork_token TEXT NOT NULL DEFAULT '', artist_artwork_token TEXT NOT NULL DEFAULT '', keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
          && [v27 executeUpdate:{@"INSERT INTO new_item_artist (item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, representative_item_pid, artist_artwork_token, keep_local, keep_local_status) SELECT item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, representative_item_pid, artist_artwork_cache_id, keep_local, keep_local_status FROM item_artist"}]
          && [v27 executeUpdate:{@"UPDATE new_item_artist SET representative_item_artwork_token = IFNULL( (SELECT best_artwork_token FROM item_artwork WHERE item_pid = representative_item_pid), '')"}]
          && [v27 executeUpdate:@"DROP TABLE item_artist"]
          && [v27 executeUpdate:@"ALTER TABLE new_item_artist RENAME TO item_artist"]
          && [v27 executeUpdate:{@"CREATE TABLE new_album_artist (album_artist_pid INTEGER PRIMARY KEY, album_artist TEXT NOT NULL DEFAULT '', sort_album_artist TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, artist_artwork_token TEXT NOT NULL DEFAULT '', representative_item_pid INTEGER NOT NULL DEFAULT 0, representative_item_artwork_token TEXT NOT NULL DEFAULT '', keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
          && [v27 executeUpdate:{@"INSERT INTO new_album_artist (album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, artist_artwork_token, representative_item_pid, representative_item_artwork_token, keep_local, keep_local_status) SELECT album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, artist_artwork_cache_id, representative_item_pid, artwork_cache_id, keep_local, keep_local_status FROM album_artist"}]
          && [v27 executeUpdate:@"UPDATE new_album_artist SET representative_item_artwork_token = '' WHERE representative_item_artwork_token = '0'"]
          && [v27 executeUpdate:@"DROP TABLE album_artist"]
          && [v27 executeUpdate:@"ALTER TABLE new_album_artist RENAME TO album_artist"]
          && [v27 executeUpdate:{@"CREATE TABLE new_composer (composer_pid INTEGER PRIMARY KEY, composer TEXT NOT NULL DEFAULT '', sort_composer TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, representative_item_artwork_token TEXT NOT NULL DEFAULT '', keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
          && [v27 executeUpdate:{@"INSERT INTO new_composer (composer_pid, composer, sort_composer, grouping_key, cloud_status, representative_item_pid, representative_item_artwork_token, keep_local, keep_local_status) SELECT composer_pid, composer, sort_composer, grouping_key, cloud_status, representative_item_pid, artwork_cache_id, keep_local, keep_local_status FROM composer"}]
          && [v27 executeUpdate:@"UPDATE new_composer SET representative_item_artwork_token = '' WHERE representative_item_artwork_token = '0'"]
          && [v27 executeUpdate:@"DROP TABLE composer"]
          && [v27 executeUpdate:@"ALTER TABLE new_composer RENAME TO composer"]
          && [v27 executeUpdate:{@"CREATE TABLE new_genre (genre_id INTEGER PRIMARY KEY, genre TEXT NOT NULL UNIQUE, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, representative_item_artwork_token TEXT NOT NULL DEFAULT '', keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
          && [v27 executeUpdate:{@"INSERT INTO new_genre (genre_id, genre, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status) SELECT genre_id, genre, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status FROM genre"}]
          && [v27 executeUpdate:{@"UPDATE new_genre SET representative_item_artwork_token = IFNULL( (SELECT best_artwork_token FROM item_artwork WHERE item_pid = representative_item_pid), '')"}]
          && [v27 executeUpdate:@"DROP TABLE genre"]
          && [v27 executeUpdate:@"ALTER TABLE new_genre RENAME TO genre"]
          && [v27 executeUpdate:{@"CREATE TABLE new_item_extra (item_pid INTEGER PRIMARY KEY, title TEXT NOT NULL DEFAULT '', sort_title TEXT, disc_count INTEGER DEFAULT 0, track_count INTEGER DEFAULT 0, total_time_ms REAL NOT NULL DEFAULT 0, year INTEGER DEFAULT 0, location TEXT NOT NULL DEFAULT '', file_size INTEGER NOT NULL DEFAULT 0, integrity BLOB, is_compilation INTEGER NOT NULL DEFAULT 0, is_audible_audio_book INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, media_kind INTEGER NOT NULL DEFAULT 0, content_rating INTEGER NOT NULL DEFAULT 0, content_rating_level INTEGER NOT NULL DEFAULT 0, is_user_disabled INTEGER NOT NULL DEFAULT 0, bpm INTEGER DEFAULT 0, genius_id INTEGER NOT NULL DEFAULT 0, comment TEXT, grouping TEXT, description TEXT, description_long TEXT, collection_description TEXT, copyright TEXT, pending_genius_checksum INTEGER NOT NULL DEFAULT 0, category_id INTEGER DEFAULT 0, location_kind_id INTEGER NOT NULL DEFAULT 0, version TEXT NOT NULL DEFAULT '', display_version TEXT NOT NULL DEFAULT '')"}]
          && [v27 executeUpdate:{@"INSERT INTO new_item_extra (item_pid, title, sort_title, disc_count, track_count, total_time_ms, year, location, file_size, integrity, is_compilation, is_audible_audio_book, date_created, date_modified, media_kind, content_rating, content_rating_level, is_user_disabled, bpm, genius_id, comment, grouping, description, description_long, collection_description, copyright, pending_genius_checksum, category_id, location_kind_id, version, display_version) SELECT item_pid, title, sort_title, disc_count, track_count, total_time_ms, year, location, file_size, integrity, is_compilation, is_audible_audio_book, date_created, date_modified, media_kind, content_rating, content_rating_level, is_user_disabled, bpm, genius_id, comment, grouping, description, description_long, collection_description, copyright, pending_genius_checksum, category_id, location_kind_id, version, display_version FROM item_extra"}]
          && [v27 executeUpdate:@"DROP TABLE item_extra"]
          && [v27 executeUpdate:@"ALTER TABLE new_item_extra RENAME TO item_extra"]
          && [v27 executeUpdate:@"DROP TABLE artwork_info"]
          && [v27 executeUpdate:@"DROP TABLE IF EXISTS artwork_conversion"])
        {
          [v4 setNeedsToAutogenerateArtworkVariants:1];
          [v4 setNeedsToRecreateIndexes:1];
          [v4 setNeedsToRecreateTriggers:1];
          [v4 setCurrentUserVersion:1160030];
          v10 = [v27 executeUpdate:@"PRAGMA user_version = 1160030;"];
LABEL_61:
          v5 = v39;
          v8 = 0;
          v6 = v35;
          v9 = v34;

          v7 = v38;
LABEL_62:

          goto LABEL_17;
        }

LABEL_60:
        v10 = 0;
        goto LABEL_61;
      }

      v30 = v33;
      v31 = _ML3LogCategoryMigration();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v60 = v30;
        v32 = "Failed to rename new temp artwork directory during migration with error: %{public}@";
        goto LABEL_26;
      }
    }

    goto LABEL_60;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

void __ML3MigrationFunction1160020to1160030_block_invoke(uint64_t a1, void *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = [v3 intForColumnIndex:1];

  v6 = ML3MigrationPathFromArtworkCacheIDAsOf1160030(v4);
  if ([*(a1 + 32) fileExistsAtPath:v6])
  {
    v7 = v5;
    v8 = ML3MigrationRelativePathFromArtworkComponentsAsOf1160030(v4, 1, v5);
    v9 = [*(a1 + 40) stringByAppendingPathComponent:v8];
    v10 = [v9 stringByDeletingLastPathComponent];
    if (([*(a1 + 32) fileExistsAtPath:v10] & 1) == 0)
    {
      [*(a1 + 32) createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v11 = *(a1 + 32);
    v19 = 0;
    [v11 moveItemAtPath:v6 toPath:v9 error:&v19];
    v12 = v19;
    if (v12)
    {
      v13 = v12;
      v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v21 = v6;
        v22 = 2114;
        v23 = v9;
        v24 = 2114;
        v25 = v13;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Failed to migrate artwork from '%{public}@' to '%{public}@' with error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v15 = *(a1 + 48);
      v26[0] = v4;
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v26[1] = v14;
      v26[2] = v8;
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v26[3] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
      v18 = 0;
      [v15 executeUpdate:@"INSERT INTO artwork (artwork_token withParameters:artwork_source_type error:{relative_path, artwork_type) VALUES (?, ?, ?, ?)", v17, &v18}];
      v13 = v18;
    }
  }
}

void __ML3MigrationFunction1160020to1160030_block_invoke_993(uint64_t a1, void *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = [v3 intForColumnIndex:1];

  v6 = ML3MigrationPathFromArtworkCacheIDAsOf1160030(v4);
  if ([*(a1 + 32) fileExistsAtPath:v6])
  {
    v7 = v5;
    v8 = ML3MigrationRelativePathFromArtworkComponentsAsOf1160030(v4, 2, v5);
    v9 = [*(a1 + 40) stringByAppendingPathComponent:v8];
    v10 = [v9 stringByDeletingLastPathComponent];
    if (([*(a1 + 32) fileExistsAtPath:v10] & 1) == 0)
    {
      [*(a1 + 32) createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v11 = *(a1 + 32);
    v19 = 0;
    [v11 moveItemAtPath:v6 toPath:v9 error:&v19];
    v12 = v19;
    if (v12)
    {
      v13 = v12;
      v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v21 = v6;
        v22 = 2114;
        v23 = v9;
        v24 = 2114;
        v25 = v13;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Failed to migrate screenshot from '%{public}@' to '%{public}@' with error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v15 = *(a1 + 48);
      v26[0] = v4;
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v26[1] = v14;
      v26[2] = v8;
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      v26[3] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
      v18 = 0;
      [v15 executeUpdate:@"INSERT INTO artwork (artwork_token withParameters:artwork_source_type error:{relative_path, artwork_type) VALUES (?, ?, ?, ?)", v17, &v18}];
      v13 = v18;
    }
  }
}

void __ML3MigrationFunction1160020to1160030_block_invoke_997(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 dataForColumnIndex:1];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __ML3MigrationFunction1160020to1160030_block_invoke_2;
  v6[3] = &unk_27875D0F8;
  v7 = a1[4];
  v10 = v4;
  v8 = a1[5];
  v9 = a1[6];
  [MLITChapterTOC enumerateArtworkCacheIDsInFlattenedChapterData:v5 usingBlock:v6];
}

void __ML3MigrationFunction1160020to1160030_block_invoke_1009(uint64_t a1, void *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = [a2 stringForColumnIndex:0];
  v4 = ML3MigrationPathFromArtworkCacheIDAsOf1160030(v3);
  if ([*(a1 + 32) fileExistsAtPath:v4])
  {
    v5 = ML3MigrationRelativePathFromArtworkComponentsAsOf1160030(v3, 4, 500);
    v6 = [*(a1 + 40) stringByAppendingPathComponent:v5];
    v7 = [v6 stringByDeletingLastPathComponent];
    if (([*(a1 + 32) fileExistsAtPath:v7] & 1) == 0)
    {
      [*(a1 + 32) createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v8 = *(a1 + 32);
    v16 = 0;
    [v8 moveItemAtPath:v4 toPath:v6 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = v9;
      v11 = os_log_create("com.apple.amp.medialibrary", "Migration");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v18 = v4;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v10;
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Failed to migrate artist hero artwork from '%{public}@' to '%{public}@' with error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v12 = *(a1 + 48);
      v23[0] = v3;
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:500];
      v23[1] = v11;
      v23[2] = v5;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:4];
      v23[3] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
      v15 = 0;
      [v12 executeUpdate:@"INSERT INTO artwork (artwork_token withParameters:artwork_source_type error:{relative_path, artwork_type) VALUES (?, ?, ?, ?)", v14, &v15}];
      v10 = v15;
    }
  }
}

void __ML3MigrationFunction1160020to1160030_block_invoke_2(uint64_t a1, void *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    v4 = ML3MigrationPathFromArtworkCacheIDAsOf1160030(v3);
    if ([*(a1 + 32) fileExistsAtPath:v4])
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"chapter=%llu", *(a1 + 56)];
      v6 = [v3 rangeOfString:@"-"];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v22 = v3;
          _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Encountered invalid chapter artwork_cache_id '%{public}@', skipping...", buf, 0xCu);
        }
      }

      else
      {
        v7 = [v3 stringByReplacingCharactersInRange:0 withString:v6, v5];
        v8 = ML3MigrationRelativePathFromArtworkComponentsAsOf1160030(v7, 3, 0);
        v9 = [*(a1 + 40) stringByAppendingPathComponent:v8];
        v10 = [v9 stringByDeletingLastPathComponent];
        if (([*(a1 + 32) fileExistsAtPath:v10] & 1) == 0)
        {
          [*(a1 + 32) createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:0];
        }

        v11 = *(a1 + 32);
        v20 = 0;
        [v11 moveItemAtPath:v4 toPath:v9 error:&v20];
        v12 = v20;
        if (v12)
        {
          v13 = v12;
          v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v22 = v4;
            v23 = 2114;
            v24 = v9;
            v25 = 2114;
            v26 = v13;
            _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Failed to migrate chapter artwork from '%{public}@' to '%{public}@' with error: %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v15 = *(a1 + 48);
          v27[0] = v7;
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          v27[1] = v14;
          v27[2] = v8;
          [MEMORY[0x277CCABB0] numberWithInteger:3];
          v16 = v18 = v8;
          v27[3] = v16;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
          v19 = 0;
          [v15 executeUpdate:@"INSERT INTO artwork (artwork_token withParameters:artwork_source_type error:{relative_path, artwork_type) VALUES (?, ?, ?, ?)", v17, &v19}];
          v13 = v19;

          v8 = v18;
        }
      }
    }
  }

  else
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "Encountered missing chapter artwork_cache_id, skipping...", buf, 2u);
    }
  }
}

uint64_t ML3MigrationFunction1160030to1160040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"INSERT OR IGNORE INTO item_artwork (item_pid) SELECT item_pid FROM item"] && objc_msgSend(v3, "executeUpdate:", @"INSERT OR IGNORE INTO item_screenshot (item_pid) SELECT item_pid FROM item"))
  {
    [v4 setCurrentUserVersion:1160040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160040to1160050(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v22 = a2;
  v4 = MLMobileUserHomeDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"Media"];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v3 executeQuery:{@"SELECT item.ROWID, base_location.path, item_extra.location FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE item.base_location_id != 0 AND item_extra.file_size = 0"}];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __ML3MigrationFunction1160040to1160050_block_invoke;
  v27[3] = &unk_278764618;
  v20 = v5;
  v28 = v20;
  v19 = v6;
  v29 = v19;
  v9 = v8;
  v30 = v9;
  v21 = v7;
  [v7 enumerateRowsWithBlock:v27];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if (([v3 executeUpdate:{v15, v19, v20}] & 1) == 0)
        {
          v16 = os_log_create("com.apple.amp.medialibrary", "Migration");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v32 = v15;
            _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Failed to update file size. %{public}@", buf, 0xCu);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v12);
  }

  [v22 setCurrentUserVersion:1160050];
  v17 = [v3 executeUpdate:@"PRAGMA user_version = 1160050;"];

  return v17;
}

void __ML3MigrationFunction1160040to1160050_block_invoke(uint64_t a1, void *a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 stringForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];

  v7 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v16 = v4;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Found an item (%lld) that has a location in the database, but no file size.", buf, 0xCu);
  }

  v8 = MEMORY[0x277CCACA8];
  v19[0] = *(a1 + 32);
  v19[1] = v5;
  v19[2] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v10 = [v8 pathWithComponents:v9];

  if ([*(a1 + 40) fileExistsAtPath:v10 isDirectory:0])
  {
    v11 = [*(a1 + 40) attributesOfItemAtPath:v10 error:0];
    v12 = [v11 fileSize];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item_extra SET file_size = %zu WHERE item_pid = %lld", v12, v4];
    v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v16 = v12;
      v17 = 2048;
      v18 = v4;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Computed %zu file size for item %lld.", buf, 0x16u);
    }

    [*(a1 + 48) addObject:v13];
  }

  else
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = v4;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "WARNING: item with pid %lld has a location in the database but no file on disk.", buf, 0xCu);
    }
  }
}

uint64_t ML3MigrationFunction1160050to1160060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DELETE FROM artwork WHERE artwork_token=''"])
  {
    [v4 setCurrentUserVersion:1160060];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160060;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160060to1160070(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!ML3MigrationColumnExistsInTable(v3, @"extras_url", @"item_store") || [v3 executeUpdate:{@"CREATE TABLE item_store_new (item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_artist_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, purchase_history_redownload_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, match_redownload_params TEXT, sync_id INTEGER NOT NULL DEFAULT 0, home_sharing_id INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, store_link_id INTEGER NOT NULL DEFAULT 0, reserved TEXT NOT NULL DEFAULT '', vpp_is_licensed INTEGER NOT NULL DEFAULT 0, vpp_org_id INTEGER NOT NULL DEFAULT 0, vpp_org_name TEXT NOT NULL DEFAULT '')"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO item_store_new (item_pid, store_item_id, store_artist_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, reserved, vpp_is_licensed, vpp_org_id, vpp_org_name) SELECT item_pid, store_item_id, store_artist_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, extras_url, vpp_is_licensed, vpp_org_id, vpp_org_name FROM item_store") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE item_store") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store_new RENAME TO item_store"))
  {
    [v4 setCurrentUserVersion:1160070];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160070;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160070to1160080(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"UPDATE item SET remote_location_id = (SELECT (CASE WHEN home_sharing_id != 0 THEN 300 ELSE (CASE WHEN IFNULL(match_redownload_params, '') != '' THEN 200 ELSE (CASE WHEN IFNULL(purchase_history_redownload_params, '') != '' AND purchase_history_id != 0 THEN 100 ELSE 0 END) END) END) FROM item_store WHERE item_store.item_pid = item.item_pid)"}])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1160080];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160080;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160080to1160090(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MGGetBoolAnswer() && [v4 originalUserVersion] > 1159999 && !objc_msgSend(v3, "executeUpdate:", @"INSERT OR REPLACE INTO _MLDatabaseProperties (value, key) VALUES (1, 'ResetSyncToRemoveMultiverseIdentifiersFromSiri')"))
  {
    v5 = 0;
  }

  else
  {
    [v4 setCurrentUserVersion:1160090];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160090;"];
  }

  return v5;
}

uint64_t ML3MigrationFunction1160090to1160100(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_stats_new (item_pid INTEGER PRIMARY KEY, user_rating INTEGER NOT NULL DEFAULT 0, needs_restore INTEGER NOT NULL DEFAULT 0, download_identifier TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, has_been_played INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, date_skipped INTEGER NOT NULL DEFAULT 0, date_accessed INTEGER NOT NULL DEFAULT 0, is_alarm INTEGER NOT NULL DEFAULT 0, skip_count_user INTEGER NOT NULL DEFAULT 0, skip_count_recent INTEGER NOT NULL DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL NOT NULL DEFAULT 0.0, hidden INTEGER NOT NULL DEFAULT 0, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO item_stats_new (item_pid, user_rating, needs_restore, download_identifier, play_count_user, play_count_recent, has_been_played, date_played, date_skipped, date_accessed, is_alarm, skip_count_user, skip_count_recent, remember_bookmark, bookmark_time_ms, hidden, chosen_by_auto_fill) SELECT item_pid, IFNULL(user_rating, 0), IFNULL(needs_restore, 0), download_identifier, IFNULL(play_count_user, 0), IFNULL(play_count_recent, 0), IFNULL(has_been_played, 0), IFNULL(date_played, 0), IFNULL(date_skipped, 0), IFNULL(date_accessed, 0), IFNULL(is_alarm, 0), IFNULL(skip_count_user, 0), IFNULL(skip_count_recent, 0), IFNULL(remember_bookmark, 0), IFNULL(bookmark_time_ms, 0.0), IFNULL(hidden, 0), IFNULL(chosen_by_auto_fill, 0) FROM item_stats") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE item_stats") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_stats_new RENAME TO item_stats"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1160100];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160100;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160100to1160110(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_store_new (item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_artist_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, purchase_history_redownload_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, match_redownload_params TEXT, cloud_status INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, home_sharing_id INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, downloader_account_id INTEGER NOT NULL DEFAULT 0, family_account_id INTEGER NOT NULL DEFAULT 0, is_protected INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, store_link_id INTEGER NOT NULL DEFAULT 0, reserved TEXT NOT NULL DEFAULT '', vpp_is_licensed INTEGER NOT NULL DEFAULT 0, vpp_org_id INTEGER NOT NULL DEFAULT 0, vpp_org_name TEXT NOT NULL DEFAULT '')"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO item_store_new (item_pid, store_item_id, store_artist_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, reserved, vpp_is_licensed, vpp_org_id, vpp_org_name) SELECT item_pid, store_item_id, store_artist_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, reserved, vpp_is_licensed, vpp_org_id, vpp_org_name FROM item_store") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store_new SET downloader_account_id = account_id WHERE item_pid IN (SELECT item_pid FROM item JOIN item_store USING (item_pid) WHERE base_location_id > 0 AND base_location_id <= 3840)"))
  {
    v19 = v4;
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [v3 executeQuery:{@"SELECT item_pid, location FROM item JOIN item_extra USING (item_pid) WHERE base_location_id = 300"}];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __ML3MigrationFunction1160100to1160110_block_invoke;
    v24[3] = &unk_278766118;
    v7 = v5;
    v25 = v7;
    v18 = v6;
    [v6 enumerateRowsWithBlock:v24];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if (([v3 executeUpdate:v13] & 1) == 0)
          {
            v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v27 = v13;
              _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Failed to update is_protected in item_store_new. %{public}@", buf, 0xCu);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v10);
    }

    if ([v3 executeUpdate:{@"UPDATE item_store_new SET is_protected = 1 WHERE item_pid IN (SELECT item_pid FROM item WHERE base_location_id IN (100, 200))"}])
    {
      v15 = v18;
      v4 = v19;
      if ([v3 executeUpdate:@"UPDATE item_store_new SET is_protected = 1 WHERE item_pid IN (SELECT item_pid FROM item JOIN item_store USING (item_pid) WHERE base_location_id >= 3840 AND key_id > 0)"] && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE item_store") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store_new RENAME TO item_store"))
      {
        [v19 setNeedsToRecreateIndexes:1];
        [v19 setNeedsToRecreateTriggers:1];
        [v19 setCurrentUserVersion:1160110];
        v16 = [v3 executeUpdate:@"PRAGMA user_version = 1160110;"];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v15 = v18;
      v4 = v19;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __ML3MigrationFunction1160100to1160110_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v9 = [v3 stringForColumnIndex:1];

  v5 = [v9 pathExtension];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqualToString:@"m4p"];

  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item_store_new SET is_protected = 1 WHERE item_pid = %lld", v4];
    [*(a1 + 32) addObject:v8];
  }
}

uint64_t ML3MigrationFunction1160110to1160120(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE item_stats SET play_count_recent = 0 WHERE item_pid IN (SELECT item_pid from item WHERE remote_location_id = 200)"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_stats SET skip_count_recent = 0 WHERE item_pid IN (SELECT item_pid from item WHERE remote_location_id = 200)"))
  {
    [v4 setCurrentUserVersion:1160120];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160120;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160120to1160130(void *a1, void *a2)
{
  v113[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v3 executeQuery:{@"SELECT artwork_token, relative_path FROM artwork"}];
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __ML3MigrationFunction1160120to1160130_block_invoke;
  v107[3] = &unk_278766118;
  v7 = v5;
  v108 = v7;
  [v6 enumerateRowsWithBlock:v107];
  if (![v7 count])
  {
    goto LABEL_52;
  }

  v76 = v7;
  v77 = v4;
  v74 = v6;
  v83 = v3;
  v8 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork"];
  v9 = ML3MigrationTemporaryPathFromPath(v8);
  v10 = ML3MigrationArtworkCacheDirectoryAsOf1160130();
  v11 = ML3MigrationTemporaryPathFromPath(v10);
  v73 = v8;
  v81 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8 isDirectory:1];
  v72 = v9;
  v75 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9 isDirectory:1];
  v71 = v10;
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:1];
  v70 = v11;
  v80 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:1];
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = *MEMORY[0x277CBE868];
  v113[0] = *MEMORY[0x277CBE868];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:1];
  v78 = v12;
  v79 = v13;
  v17 = [v13 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v16 options:4 error:0];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v103 objects:v112 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v104;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v104 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v103 + 1) + 8 * i);
        v102 = 0;
        v24 = [v23 getResourceValue:&v102 forKey:v15 error:0];
        v25 = v102;
        v26 = v25;
        if (v24 && [v25 BOOLValue])
        {
          [v14 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v103 objects:v112 count:16];
    }

    while (v20);
  }

  v101 = 0;
  v27 = v79;
  v28 = v75;
  [v79 createDirectoryAtURL:v75 withIntermediateDirectories:1 attributes:0 error:&v101];
  v29 = v101;
  if (v29)
  {
    v30 = v29;
    v31 = os_log_create("com.apple.amp.medialibrary", "Migration");
    v32 = v80;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v111 = v30;
      _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "Failed to create temporary new artwork directory with error: %{public}@", buf, 0xCu);
    }

    v33 = v31;
    v34 = 0;
    v3 = v83;
    v4 = v77;
    goto LABEL_51;
  }

  v100 = 0;
  v32 = v80;
  [v79 createDirectoryAtURL:v80 withIntermediateDirectories:1 attributes:0 error:&v100];
  v35 = v100;
  if (!v35)
  {
    v37 = [MEMORY[0x277CBEB58] set];
    v38 = [MEMORY[0x277CBEB18] array];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __ML3MigrationFunction1160120to1160130_block_invoke_1202;
    v92[3] = &unk_27875D120;
    v39 = v81;
    v93 = v39;
    v40 = v79;
    v94 = v40;
    v66 = v75;
    v95 = v66;
    v68 = v37;
    v96 = v68;
    v97 = v14;
    v65 = v80;
    v98 = v65;
    v41 = v38;
    v99 = v41;
    [v7 enumerateKeysAndObjectsUsingBlock:v92];
    v42 = [v39 path];
    LODWORD(v38) = [v40 fileExistsAtPath:v42];

    v4 = v77;
    v69 = v41;
    if (v38 && (v91 = 0, [v40 removeItemAtURL:v39 error:&v91], (v43 = v91) != 0))
    {
      v44 = v43;
      v45 = os_log_create("com.apple.amp.medialibrary", "Migration");
      v3 = v83;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v111 = v44;
        v46 = "Failed to delete original artwork directory during migration with error: %{public}@";
LABEL_28:
        _os_log_impl(&dword_22D2FA000, v45, OS_LOG_TYPE_ERROR, v46, buf, 0xCu);
      }
    }

    else
    {
      v47 = [v66 path];
      v82 = v40;
      v48 = [v40 fileExistsAtPath:v47];

      v3 = v83;
      if (!v48 || (v90 = 0, [v82 moveItemAtURL:v66 toURL:v39 error:&v90], (v49 = v90) == 0))
      {
        v50 = [v78 path];
        v51 = [v82 fileExistsAtPath:v50];

        if (v51 && (v89 = 0, [v82 removeItemAtURL:v78 error:&v89], (v52 = v89) != 0))
        {
          v44 = v52;
          v53 = _ML3LogCategoryMigration();
          v27 = v79;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v111 = v44;
            _os_log_impl(&dword_22D2FA000, v53, OS_LOG_TYPE_ERROR, "Failed to delete artwork cache directory during migration with error: %{public}@", buf, 0xCu);
          }

          v34 = 0;
        }

        else
        {
          v54 = [v65 path];
          v55 = [v82 fileExistsAtPath:v54];

          if (v55)
          {
            v88 = 0;
            [v82 moveItemAtURL:v65 toURL:v78 error:&v88];
            v67 = v88;
          }

          else
          {
            v67 = 0;
          }

          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v56 = v41;
          v57 = [v56 countByEnumeratingWithState:&v84 objects:v109 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v85;
            do
            {
              for (j = 0; j != v58; ++j)
              {
                if (*v85 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = *(*(&v84 + 1) + 8 * j);
                if (([v3 executeUpdate:v61] & 1) == 0)
                {
                  v62 = os_log_create("com.apple.amp.medialibrary", "Migration");
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v111 = v61;
                    _os_log_impl(&dword_22D2FA000, v62, OS_LOG_TYPE_ERROR, "Failed to update relative_path in artwork. %{public}@", buf, 0xCu);
                  }

                  v3 = v83;
                }
              }

              v58 = [v56 countByEnumeratingWithState:&v84 objects:v109 count:16];
            }

            while (v58);
          }

          v34 = 1;
          v4 = v77;
          [v77 setNeedsToAutogenerateArtworkVariants:1];
          v28 = v75;
          v27 = v79;
          v44 = v67;
        }

        goto LABEL_50;
      }

      v44 = v49;
      v45 = _ML3LogCategoryMigration();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v111 = v44;
        v46 = "Failed to rename new temp artwork directory during migration with error: %{public}@";
        goto LABEL_28;
      }
    }

    v34 = 0;
    v27 = v79;
LABEL_50:

    v32 = v80;
    v30 = v68;
    v33 = v69;
    goto LABEL_51;
  }

  v30 = v35;
  v36 = os_log_create("com.apple.amp.medialibrary", "Migration");
  v3 = v83;
  v4 = v77;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v111 = v30;
    _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_ERROR, "Failed to create temporary new artwork cache directory with error: %{public}@", buf, 0xCu);
  }

  v33 = v36;
  v34 = 0;
  v7 = v76;
LABEL_51:

  v6 = v74;
  if (!v34)
  {
    v63 = 0;
    goto LABEL_54;
  }

LABEL_52:
  [v4 setCurrentUserVersion:{1160130, v65}];
  v63 = [v3 executeUpdate:@"PRAGMA user_version = 1160130;"];
LABEL_54:

  return v63;
}

void __ML3MigrationFunction1160120to1160130_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 stringForColumnIndex:0];
  v4 = [v3 stringForColumnIndex:1];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __ML3MigrationFunction1160120to1160130_block_invoke_1202(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v43 = v5;
  v44 = ML3MigrationRelativePathFromArtworkTokenAsOf1160130(v5);
  v7 = [*(a1 + 32) URLByAppendingPathComponent:v6];
  v8 = *(a1 + 40);
  v9 = [v7 path];
  LODWORD(v8) = [v8 fileExistsAtPath:v9];

  if (v8)
  {
    v10 = [*(a1 + 48) URLByAppendingPathComponent:v44];
    v11 = [v10 URLByDeletingLastPathComponent];
    if (([*(a1 + 56) containsObject:v11] & 1) == 0)
    {
      v12 = *(a1 + 40);
      v13 = [v11 path];
      LOBYTE(v12) = [v12 fileExistsAtPath:v13];

      if ((v12 & 1) == 0)
      {
        v14 = *(a1 + 40);
        v54 = 0;
        [v14 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v54];
        v15 = v54;
        if (v15)
        {
          v16 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v57 = v11;
            v58 = 2114;
            v59 = v15;
            _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Failed to create artwork directory '%{public}@' with error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          [*(a1 + 56) addObject:v11];
        }
      }
    }

    v17 = *(a1 + 40);
    v53 = 0;
    [v17 moveItemAtURL:v7 toURL:v10 error:&v53];
    v18 = v53;
    if (v18)
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v57 = v7;
        v58 = 2114;
        v59 = v10;
        v60 = 2114;
        v61 = v18;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Failed to move original artwork from '%{public}@' to '%{public}@' with error: %{public}@", buf, 0x20u);
      }
    }
  }

  v42 = v7;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = *(a1 + 64);
  v20 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v50;
    do
    {
      v23 = 0;
      v45 = v21;
      do
      {
        if (*v50 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v49 + 1) + 8 * v23);
        v25 = [v24 lastPathComponent];
        v26 = [v24 URLByAppendingPathComponent:v6];
        v27 = *(a1 + 40);
        v28 = [v26 path];
        LODWORD(v27) = [v27 fileExistsAtPath:v28];

        if (v27)
        {
          v29 = v6;
          v30 = [*(a1 + 72) URLByAppendingPathComponent:v25];
          v31 = [v30 URLByAppendingPathComponent:v44];

          v32 = [v31 URLByDeletingLastPathComponent];
          if (([*(a1 + 56) containsObject:v32] & 1) == 0)
          {
            v33 = *(a1 + 40);
            v34 = [v32 path];
            LOBYTE(v33) = [v33 fileExistsAtPath:v34];

            if ((v33 & 1) == 0)
            {
              v35 = *(a1 + 40);
              v48 = 0;
              [v35 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v48];
              v36 = v48;
              if (v36)
              {
                v37 = os_log_create("com.apple.amp.medialibrary", "Default");
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v57 = v32;
                  v58 = 2114;
                  v59 = v36;
                  _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_ERROR, "Failed to create artwork cache directory '%{public}@' with error: %{public}@", buf, 0x16u);
                }
              }

              else
              {
                [*(a1 + 56) addObject:v32];
              }
            }
          }

          v38 = *(a1 + 40);
          v47 = 0;
          [v38 moveItemAtURL:v26 toURL:v31 error:&v47];
          v39 = v47;
          if (v39)
          {
            v40 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v57 = v26;
              v58 = 2114;
              v59 = v31;
              v60 = 2114;
              v61 = v39;
              _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_ERROR, "Failed to move cached artwork from '%{public}@' to '%{public}@' with error: %{public}@", buf, 0x20u);
            }
          }

          v6 = v29;
          v21 = v45;
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v21);
  }

  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE artwork SET relative_path = '%@' WHERE artwork_token = '%@'", v44, v43];
  [*(a1 + 80) addObject:v41];
}

uint64_t ML3MigrationFunction1160130to1160140(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE container SET play_order = 40 WHERE store_cloud_id != 0 AND play_order = 37"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order = 41 WHERE store_cloud_id != 0 AND play_order = 38") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order = 43 WHERE store_cloud_id != 0 AND play_order = 39") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order =  1 WHERE store_cloud_id != 0 AND play_order = 40") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order = 44 WHERE store_cloud_id != 0 AND play_order = 41") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order = 45 WHERE store_cloud_id != 0 AND play_order = 42") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order = 46 WHERE store_cloud_id != 0 AND play_order = 43") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order = 47 WHERE store_cloud_id != 0 AND play_order = 44") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order = play_order + 4 WHERE store_cloud_id != 0 AND play_order >= 45 AND play_order <= 58") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET play_order = play_order + 5 WHERE store_cloud_id != 0 AND play_order >= 59"))
  {
    [v4 setCurrentUserVersion:1160140];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1160140;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1160140to1160150(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v3 executeQuery:{@"SELECT location_kind_id, kind FROM location_kind"}];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __ML3MigrationFunction1160140to1160150_block_invoke;
  v18[3] = &unk_278766118;
  v7 = v5;
  v19 = v7;
  [v6 enumerateRowsWithBlock:v18];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __ML3MigrationFunction1160140to1160150_block_invoke_2;
  v11[3] = &unk_27875D148;
  v8 = v3;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  if ((v15[3] & 1) != 0 && [v8 executeUpdate:@"DROP TABLE location_kind"])
  {
    [v4 setCurrentUserVersion:1160150];
    v9 = [v8 executeUpdate:@"PRAGMA user_version = 1160150;"];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v14, 8);
  return v9;
}

void sub_22D3EC0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction1160140to1160150_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 numberForColumnIndex:0];
  v4 = [v3 stringForColumnIndex:1];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void __ML3MigrationFunction1160140to1160150_block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([v8 length])
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:ML3KindForString(v8)];
    v12[0] = v10;
    v12[1] = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    LOBYTE(v9) = [v9 executeUpdate:@"UPDATE item_extra set location_kind_id = ? WHERE location_kind_id = ?" withParameters:v11 error:0];

    if ((v9 & 1) == 0)
    {
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

uint64_t ML3MigrationFunction1160150to1160160(void *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork"];
  v7 = ML3MigrationTemporaryPathFromPath(v6);
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
  v37 = v7;
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:1];
  v10 = [v8 path];
  v11 = [v5 fileExistsAtPath:v10];

  v38 = v9;
  if (!v11 || (v42 = 0, [v5 moveItemAtURL:v8 toURL:v9 error:&v42], (v12 = v42) == 0))
  {
    v36 = v4;
    v16 = MEMORY[0x277CBEBC0];
    v17 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork/Originals"];
    v13 = [v16 fileURLWithPath:v17 isDirectory:1];

    v18 = [v13 URLByDeletingLastPathComponent];
    v41 = 0;
    [v5 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v41];
    v14 = v41;

    if (v14)
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Migration");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v14;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Failed to create intermediate directories for new original artwork directory during migration with error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v20 = [v38 path];
      v21 = [v5 fileExistsAtPath:v20];

      if (!v21 || (v40 = 0, [v5 moveItemAtURL:v38 toURL:v13 error:&v40], (v22 = v40) == 0))
      {
        v34 = v3;
        v24 = MEMORY[0x277CBEBC0];
        v25 = ML3MigrationArtworkCacheDirectoryBefore1160160();
        v19 = [v24 fileURLWithPath:v25 isDirectory:1];

        v26 = MEMORY[0x277CBEBC0];
        v27 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork/Caches"];
        v28 = [v26 fileURLWithPath:v27 isDirectory:1];

        v29 = [v19 path];
        LODWORD(v27) = [v5 fileExistsAtPath:v29];

        if (v27 && (v39 = 0, [v5 moveItemAtURL:v19 toURL:v28 error:&v39], (v30 = v39) != 0))
        {
          v31 = v30;
          v32 = os_log_create("com.apple.amp.medialibrary", "Migration");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v44 = v31;
            _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_ERROR, "Failed to move to new cache artwork directory during migration with error: %{public}@", buf, 0xCu);
          }

          v15 = 0;
          v3 = v34;
        }

        else
        {
          [v36 setCurrentUserVersion:{1160160, v34}];
          v3 = v35;
          v15 = [v35 executeUpdate:@"PRAGMA user_version = 1160160;"];
        }

        goto LABEL_22;
      }

      v19 = v22;
      v23 = os_log_create("com.apple.amp.medialibrary", "Migration");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v19;
        _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_ERROR, "Failed to move to new original artwork directory during migration with error: %{public}@", buf, 0xCu);
      }
    }

    v15 = 0;
LABEL_22:

    v4 = v36;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v44 = v13;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Failed to create new temp original artwork directory during migration with error: %{public}@", buf, 0xCu);
  }

  v15 = 0;
LABEL_23:

  return v15;
}

uint64_t ML3MigrationFunction1160160to1162010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN sync_redownload_params TEXT NOT NULL DEFAULT ''"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_insert_item_setRemoteLocationColumn") && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setRemoteLocationColumn"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1162010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162010to1162020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitle_Section"] && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbum_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemItemArtist_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbumArtist_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemComposer_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemGenre_Section"))
  {
    [v4 setNeedsToUpdateSortMap:1];
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1162020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162020to1162030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS ItemExtraDateModified"])
  {
    [v4 setNeedsToUpdateSortMap:1];
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1162030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162030to1162040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS ItemComposer"])
  {
    [v4 setNeedsToUpdateSortMap:1];
    [v4 setForceUpdateOriginals:1];
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1162040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162040to1162050(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:1162050];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1162050;"];
  return v5;
}

uint64_t ML3MigrationFunction1162050to1162060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_artwork (container_pid INTEGER PRIMARY KEY, best_artwork_token TEXT NOT NULL DEFAULT '', best_artwork_source_type INTEGER NOT NULL DEFAULT 0, cloud_artwork_token TEXT NOT NULL DEFAULT '', sync_artwork_token TEXT NOT NULL DEFAULT '', purchase_history_artwork_token TEXT NOT NULL DEFAULT '', store_artwork_token TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:@"INSERT OR IGNORE INTO container_artwork (container_pid) SELECT container_pid FROM container"]
    && [v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', reserved1 INTEGER NOT NULL DEFAULT 0, reserved2 TEXT NOT NULL DEFAULT '', reserved3 INTEGER NOT NULL DEFAULT 0, reserved4 INTEGER NOT NULL DEFAULT 0, reserved5 INTEGER NOT NULL DEFAULT 0, reserved6 TEXT NOT NULL DEFAULT '', keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, name, name_order, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, keep_local, keep_local_status) SELECT container_pid, distinguished_kind, date_created, date_modified, name, name_order, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, keep_local, keep_local_status FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"]
    && [v3 executeUpdate:{@"CREATE TABLE item_stats_new (item_pid INTEGER PRIMARY KEY, user_rating INTEGER NOT NULL DEFAULT 0, needs_restore INTEGER NOT NULL DEFAULT 0, download_identifier TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, has_been_played INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, date_skipped INTEGER NOT NULL DEFAULT 0, date_accessed INTEGER NOT NULL DEFAULT 0, is_alarm INTEGER NOT NULL DEFAULT 0, skip_count_user INTEGER NOT NULL DEFAULT 0, skip_count_recent INTEGER NOT NULL DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL NOT NULL DEFAULT 0.0, hidden INTEGER NOT NULL DEFAULT 0, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_stats_new (item_pid, user_rating, needs_restore, download_identifier, play_count_user, play_count_recent, has_been_played, date_played, date_skipped, date_accessed, is_alarm, skip_count_user, skip_count_recent, remember_bookmark, bookmark_time_ms, hidden, chosen_by_auto_fill) SELECT item_pid, user_rating, needs_restore, download_identifier, play_count_user, play_count_recent, has_been_played, date_played, date_skipped, date_accessed, is_alarm, skip_count_user, skip_count_recent, remember_bookmark, bookmark_time_ms, hidden, chosen_by_auto_fill FROM item_stats"}]
    && [v3 executeUpdate:@"DROP TABLE item_stats"]
    && [v3 executeUpdate:@"ALTER TABLE item_stats_new RENAME TO item_stats"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1162060];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162060;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162060to1162070(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE local_playback_event (id INTEGER PRIMARY KEY AUTOINCREMENT, item_pid INTEGER NOT NULL DEFAULT 0, store_item_id INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0)"}])
  {
    [v4 setCurrentUserVersion:1162070];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162070;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162070to1162080(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!ML3MigrationColumnExistsInTable(v3, @"store_item_pid", @"local_playback_event") || [v3 executeUpdate:{@"CREATE TABLE local_playback_event_new (id INTEGER PRIMARY KEY AUTOINCREMENT, item_pid INTEGER NOT NULL DEFAULT 0, store_item_id INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO local_playback_event_new (id, item_pid, store_item_id, date_played) SELECT id, item_pid, store_item_pid, date_played FROM local_playback_event") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE local_playback_event") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE local_playback_event_new RENAME TO local_playback_event"))
  {
    [v4 setCurrentUserVersion:1162080];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162080;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162080to1162090(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', reserved1 INTEGER NOT NULL DEFAULT 0, reserved2 TEXT NOT NULL DEFAULT '', reserved3 INTEGER NOT NULL DEFAULT 0, reserved4 INTEGER NOT NULL DEFAULT 0, reserved5 INTEGER NOT NULL DEFAULT 0, reserved6 TEXT NOT NULL DEFAULT '', keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, name, name_order, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, reserved1, reserved2, reserved3, reserved4, reserved5, reserved6, keep_local, keep_local_status) SELECT container_pid, distinguished_kind, date_created, date_modified, name, name_order, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, reserved1, reserved2, reserved3, reserved4, reserved5, reserved6, keep_local, keep_local_status FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"]
    && [v3 executeUpdate:@"UPDATE container SET is_editable = 1 WHERE distinguished_kind = 0 AND smart_criteria IS NULL AND smart_is_genius = 0 AND is_hidden = 0 AND is_src_remote = 0"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1162090];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162090;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162090to1162100(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_artist_new (item_artist_pid INTEGER PRIMARY KEY, item_artist TEXT NOT NULL DEFAULT '', sort_item_artist TEXT, series_name TEXT NOT NULL DEFAULT '', sort_series_name TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, artist_artwork_token TEXT NOT NULL DEFAULT '', representative_item_pid INTEGER NOT NULL DEFAULT 0, representative_item_artwork_token TEXT NOT NULL DEFAULT '', keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_artist_new (item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, artist_artwork_token, representative_item_pid, representative_item_artwork_token, keep_local, keep_local_status) SELECT item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, artist_artwork_token, representative_item_pid, representative_item_artwork_token, keep_local, keep_local_status FROM item_artist"}]
    && [v3 executeUpdate:@"DROP TABLE item_artist"]
    && [v3 executeUpdate:@"ALTER TABLE item_artist_new RENAME TO item_artist"]
    && [v3 executeUpdate:{@"UPDATE item_artist SET store_id = IFNULL((SELECT store_artist_id FROM item JOIN item_store USING (item_pid) WHERE purchase_history_id != 0 AND item.item_artist_pid = item_artist.item_artist_pid), 0)"}]
    && [v3 executeUpdate:{@"CREATE TABLE album_artist_new (album_artist_pid INTEGER PRIMARY KEY, album_artist TEXT NOT NULL DEFAULT '', sort_album_artist TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, artist_artwork_token TEXT NOT NULL DEFAULT '', representative_item_pid INTEGER NOT NULL DEFAULT 0, representative_item_artwork_token TEXT NOT NULL DEFAULT '', keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO album_artist_new (album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, artist_artwork_token, representative_item_pid, representative_item_artwork_token, keep_local, keep_local_status) SELECT album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, artist_artwork_token, representative_item_pid, representative_item_artwork_token, keep_local, keep_local_status FROM album_artist"}]
    && [v3 executeUpdate:@"DROP TABLE album_artist"]
    && [v3 executeUpdate:@"ALTER TABLE album_artist_new RENAME TO album_artist"]
    && [v3 executeUpdate:{@"UPDATE album_artist SET store_id = IFNULL((SELECT store_artist_id FROM item JOIN item_store USING (item_pid) WHERE purchase_history_id = 0 AND item.album_artist_pid = album_artist.album_artist_pid), 0)"}]
    && [v3 executeUpdate:{@"CREATE TABLE item_store_new (item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, purchase_history_redownload_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, match_redownload_params TEXT, cloud_status INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, home_sharing_id INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, downloader_account_id INTEGER NOT NULL DEFAULT 0, family_account_id INTEGER NOT NULL DEFAULT 0, is_protected INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, store_link_id INTEGER NOT NULL DEFAULT 0, extras_url TEXT NOT NULL DEFAULT '', vpp_is_licensed INTEGER NOT NULL DEFAULT 0, vpp_org_id INTEGER NOT NULL DEFAULT 0, vpp_org_name TEXT NOT NULL DEFAULT '', sync_redownload_params TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"INSERT INTO item_store_new (item_pid, store_item_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, cloud_status, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, downloader_account_id, family_account_id, is_protected, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, extras_url, vpp_is_licensed, vpp_org_id, vpp_org_name, sync_redownload_params) SELECT item_pid, store_item_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, cloud_status, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, downloader_account_id, family_account_id, is_protected, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, reserved, vpp_is_licensed, vpp_org_id, vpp_org_name, IFNULL(sync_redownload_params, '') FROM item_store"}]
    && [v3 executeUpdate:@"DROP TABLE item_store"]
    && [v3 executeUpdate:@"ALTER TABLE item_store_new RENAME TO item_store"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1162100];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1162100;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1162100to1162110(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:1162110];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1162110;"];
  return v5;
}

uint64_t ML3MigrationFunction1162110to1240000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN is_foreign INTEGER NOT NULL DEFAULT 0"]
    && [v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_is_shared INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_shared, cloud_author_display_name, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status) SELECT container_pid, distinguished_kind, date_created, date_modified, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, reserved1, reserved2, reserved3, reserved4, reserved5, keep_local, keep_local_status FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1240000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1240000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1163070to1164010(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1164010];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1164010;"];

  return v4;
}

uint64_t ML3MigrationFunction1164010to1240000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN is_foreign INTEGER NOT NULL DEFAULT 0"]
    && [v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_is_shared INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_shared, cloud_author_display_name, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status) SELECT container_pid, distinguished_kind, date_created, date_modified, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_shared, cloud_author_display_name, cloud_subscriber_count, cloud_subscriber_play_count, cloud_subscriber_like_count, keep_local, keep_local_status FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1240000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1240000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1240000to1240010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_store_new (item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, purchase_history_redownload_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, match_redownload_params TEXT, cloud_status INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, home_sharing_id INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, downloader_account_id INTEGER NOT NULL DEFAULT 0, family_account_id INTEGER NOT NULL DEFAULT 0, is_protected INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, store_link_id INTEGER NOT NULL DEFAULT 0, extras_url TEXT NOT NULL DEFAULT '', vpp_is_licensed INTEGER NOT NULL DEFAULT 0, vpp_org_id INTEGER NOT NULL DEFAULT 0, vpp_org_name TEXT NOT NULL DEFAULT '', sync_redownload_params TEXT NOT NULL DEFAULT '', is_playlist_only INTEGER NOT NULL DEFAULT 0, needs_reporting INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_store_new (item_pid, store_item_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, cloud_status, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, downloader_account_id, family_account_id, is_protected, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, extras_url, vpp_is_licensed, vpp_org_id, vpp_org_name, sync_redownload_params, is_playlist_only) SELECT item_pid, store_item_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, cloud_status, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, downloader_account_id, family_account_id, is_protected, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, extras_url, vpp_is_licensed, vpp_org_id, vpp_org_name, sync_redownload_params, is_foreign FROM item_store"}]
    && [v3 executeUpdate:@"DROP TABLE item_store"]
    && [v3 executeUpdate:@"ALTER TABLE item_store_new RENAME TO item_store"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1240010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1240010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1240010to1240020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN matched_store_item_id INTEGER NOT NULL DEFAULT 0"]
    && [v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_is_shared INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_shared, cloud_author_display_name, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status) SELECT container_pid, distinguished_kind, date_created, date_modified, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_shared, cloud_author_display_name, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"]
    && [v3 executeUpdate:{@"CREATE TABLE album_new (album_pid INTEGER PRIMARY KEY, album TEXT NOT NULL DEFAULT '', sort_album TEXT, album_artist_pid INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, representative_item_artwork_token TEXT NOT NULL DEFAULT '', grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, user_rating INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, all_compilations INTEGER NOT NULL DEFAULT 0, feed_url TEXT, season_number INTEGER, album_year INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO album_new (album_pid, album, sort_album, album_artist_pid, representative_item_pid, representative_item_artwork_token, grouping_key, cloud_status, user_rating, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status) SELECT album_pid, album, sort_album, album_artist_pid, representative_item_pid, representative_item_artwork_token, grouping_key, cloud_status, user_rating, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status FROM album"}]
    && [v3 executeUpdate:@"DROP TABLE album"]
    && [v3 executeUpdate:@"ALTER TABLE album_new RENAME TO album"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1240020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1240020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1240020to1240030(void *a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v28 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32 = v3;
  v27 = [v3 executeQuery:{@"SELECT item.album_pid, album.album_artist_pid FROM item JOIN album USING (album_pid) GROUP BY item.album_pid HAVING COUNT(DISTINCT item.album_artist_pid) > 1"}];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __ML3MigrationFunction1240020to1240030_block_invoke;
  v55[3] = &unk_278766118;
  v29 = v4;
  v56 = v29;
  [v27 enumerateRowsWithBlock:v55];
  if (![v29 count])
  {
    goto LABEL_23;
  }

  v5 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v29 count];
    v7 = [v29 allKeys];
    *buf = 134218242;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_ERROR, "Repairing %lu misgrouped albums: %{public}@", buf, 0x16u);
  }

  v26 = [v29 allKeys];
  v25 = [v26 componentsJoinedByString:{@", "}];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID, album_artist_pid, album_pid FROM item WHERE album_pid IN (%@)", v25];
  v23 = [v32 executeQuery:v24];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __ML3MigrationFunction1240020to1240030_block_invoke_1437;
  v53[3] = &unk_278766118;
  v8 = v29;
  v54 = v8;
  [v23 enumerateRowsWithBlock:v53];
  [v8 allValues];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v33 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (!v33)
  {

LABEL_23:
    [v28 setNeedsToUpdateSortMap:1];
    [v28 setForceUpdateOriginals:1];
    [v28 setCurrentUserVersion:1240030];
    v21 = [v32 executeUpdate:@"PRAGMA user_version = 1240030;"];
    goto LABEL_24;
  }

  v31 = *v50;
  v35 = 1;
  do
  {
    v9 = 0;
    do
    {
      if (*v50 != v31)
      {
        v10 = v9;
        objc_enumerationMutation(obj);
        v9 = v10;
      }

      v34 = v9;
      v36 = *(*(&v49 + 1) + 8 * v9);
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = [v36 misgroupedTracks];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v45 objects:v61 count:16];
      if (v14)
      {
        v15 = *v46;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v45 + 1) + 8 * i);
            v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v17, "albumArtistPID")}];
            v19 = [v11 objectForKeyedSubscript:v18];
            if (!v19)
            {
              v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v11 setObject:v19 forKeyedSubscript:v18];
            }

            [v19 addObject:v17];
          }

          v14 = [v13 countByEnumeratingWithState:&v45 objects:v61 count:16];
        }

        while (v14);
      }

      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v58 = __Block_byref_object_copy__2414;
      v59 = __Block_byref_object_dispose__2415;
      v60 = 0;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __ML3MigrationFunction1240020to1240030_block_invoke_1439;
      v37[3] = &unk_27875D170;
      v37[4] = v36;
      v39 = &v41;
      v38 = v32;
      v40 = buf;
      [v11 enumerateKeysAndObjectsUsingBlock:v37];
      v20 = *(v42 + 24);

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v41, 8);

      v35 &= v20;
      v9 = v34 + 1;
    }

    while (v34 + 1 != v33);
    v33 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
  }

  while (v33);

  if (v35)
  {
    goto LABEL_23;
  }

  v21 = 0;
LABEL_24:

  return v21;
}

void sub_22D3EDB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction1240020to1240030_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];

  v8 = [[ML3MigrationMisgroupedAlbum alloc] initWithAlbumPID:v4 albumArtistPID:v5];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

void __ML3MigrationFunction1240020to1240030_block_invoke_1437(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];
  v8 = [v3 numberForColumnIndex:2];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v7 = [[ML3MigrationMisgroupedTrack alloc] initWithPersistentID:v4 albumArtistPID:v5];
  [v6 addMisgroupedTrack:v7];
}

uint64_t __Block_byref_object_copy__2414(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ML3MigrationFunction1240020to1240030_block_invoke_1439(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [a2 longLongValue];
  if (v8 != [*(a1 + 32) albumArtistPID])
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) albumPID];
    v11 = *(*(a1 + 56) + 8);
    obj = *(v11 + 40);
    LOBYTE(v9) = ML3MigrationCreateNewAlbumForMisgroupedTracks(v9, v10, v7, &obj);
    objc_storeStrong((v11 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v9;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v12 = os_log_create("com.apple.amp.medialibrary", "Migration");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543362;
        v16 = v13;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Error while splitting misgrouped track into new album. %{public}@", buf, 0xCu);
      }

      *a4 = 1;
    }
  }
}

uint64_t ML3MigrationFunction1240030to1240040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE album SET sort_album = NULL WHERE sort_album = ''"])
  {
    [v4 setNeedsToUpdateSortMap:1];
    [v4 setForceUpdateOriginals:1];
    [v4 setCurrentUserVersion:1240040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1240040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1240040to1260000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE lyrics_new (item_pid INTEGER PRIMARY KEY, checksum INTEGER NOT NULL DEFAULT 0, pending_checksum INTEGER NOT NULL DEFAULT 0, lyrics TEXT NOT NULL DEFAULT '')"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO lyrics_new (item_pid, checksum, pending_checksum, lyrics) SELECT item_pid, IFNULL(checksum, 0), IFNULL(checksum, 0), IFNULL(lyrics, '') FROM lyrics") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE lyrics") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE lyrics_new RENAME TO lyrics"))
  {
    [v4 setCurrentUserVersion:1260000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1260000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1260000to1280000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN playback_endpoint_type INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN is_mastered_for_itunes INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1280000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280000to1280010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((ML3MigrationColumnExistsInTable(v3, @"pending_checksum", @"lyrics") & 1) != 0 || [v3 executeUpdate:{@"CREATE TABLE lyrics_new (item_pid INTEGER PRIMARY KEY, checksum INTEGER NOT NULL DEFAULT 0, pending_checksum INTEGER NOT NULL DEFAULT 0, lyrics TEXT NOT NULL DEFAULT '')"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO lyrics_new (item_pid, checksum, pending_checksum, lyrics) SELECT item_pid, IFNULL(checksum, 0), IFNULL(checksum, 0), IFNULL(lyrics, '') FROM lyrics") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE lyrics") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE lyrics_new RENAME TO lyrics"))
  {
    [v4 setCurrentUserVersion:1280010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280010to1280020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE artwork_token (artwork_token TEXT NOT NULL DEFAULT '', artwork_source_type INTEGER NOT NULL DEFAULT 0, artwork_type INTEGER NOT NULL DEFAULT 0, entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, UNIQUE (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type))"}]
    && [v3 executeUpdate:{@"CREATE TABLE best_artwork_token (entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, artwork_type INTEGER NOT NULL DEFAULT 0, available_artwork_token TEXT NOT NULL DEFAULT '', fetchable_artwork_token TEXT NOT NULL DEFAULT '', fetchable_artwork_source_type INTEGER NOT NULL DEFAULT 0, UNIQUE (entity_pid, entity_type, artwork_type))"}]
    && [v3 executeUpdate:@"CREATE INDEX ArtworkTokenArtworkToken ON artwork_token (artwork_token)"]
    && [v3 executeUpdate:{@"CREATE INDEX ArtworkTokenEntityPIDEntityType ON artwork_token (entity_pid, entity_type)"}]
    && [v3 executeUpdate:@"ALTER TABLE artwork ADD COLUMN interest_data BLOB"]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT cloud_artwork_token, 1, 1, item_pid, 0 FROM item_artwork WHERE cloud_artwork_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT sync_artwork_token, 2, 1, item_pid, 0 FROM item_artwork WHERE sync_artwork_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT purchase_history_artwork_token, 3, 1, item_pid, 0 FROM item_artwork WHERE purchase_history_artwork_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT store_artwork_token, 4, 1, item_pid, 0 FROM item_artwork WHERE store_artwork_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT cloud_screenshot_token, 1, 2, item_pid, 0 FROM item_screenshot WHERE cloud_screenshot_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT sync_screenshot_token, 2, 2, item_pid, 0 FROM item_screenshot WHERE sync_screenshot_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT purchase_history_screenshot_token, 3, 2, item_pid, 0 FROM item_screenshot WHERE purchase_history_screenshot_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT store_screenshot_token, 4, 2, item_pid, 0 FROM item_screenshot WHERE store_screenshot_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT artist_artwork_token, 4, 4, item_artist_pid, 2 FROM item_artist WHERE artist_artwork_token != ''"}]
    && [v3 executeUpdate:{@"INSERT INTO artwork_token (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT artist_artwork_token, 4, 4, album_artist_pid, 7 FROM album_artist WHERE artist_artwork_token != ''"}]
    && (ML3MigrationUpdateAllBestArtworkTokens(v3), [v3 executeUpdate:{@"CREATE TABLE album_new (album_pid INTEGER PRIMARY KEY, album TEXT NOT NULL DEFAULT '', sort_album TEXT, album_artist_pid INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, user_rating INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, all_compilations INTEGER NOT NULL DEFAULT 0, feed_url TEXT, season_number INTEGER, album_year INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}])
    && [v3 executeUpdate:{@"INSERT INTO album_new (album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status) SELECT album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status FROM album"}]
    && [v3 executeUpdate:@"DROP TABLE album"]
    && [v3 executeUpdate:@"ALTER TABLE album_new RENAME TO album"]
    && [v3 executeUpdate:{@"CREATE TABLE item_artist_new (item_artist_pid INTEGER PRIMARY KEY, item_artist TEXT NOT NULL DEFAULT '', sort_item_artist TEXT, series_name TEXT NOT NULL DEFAULT '', sort_series_name TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_artist_new (item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status) SELECT item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status FROM item_artist"}]
    && [v3 executeUpdate:@"DROP TABLE item_artist"]
    && [v3 executeUpdate:@"ALTER TABLE item_artist_new RENAME TO item_artist"]
    && [v3 executeUpdate:{@"CREATE TABLE album_artist_new (album_artist_pid INTEGER PRIMARY KEY, album_artist TEXT NOT NULL DEFAULT '', sort_album_artist TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO album_artist_new (album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status) SELECT album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status FROM album_artist"}]
    && [v3 executeUpdate:@"DROP TABLE album_artist"]
    && [v3 executeUpdate:@"ALTER TABLE album_artist_new RENAME TO album_artist"]
    && [v3 executeUpdate:{@"CREATE TABLE composer_new (composer_pid INTEGER PRIMARY KEY, composer TEXT NOT NULL DEFAULT '', sort_composer TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO composer_new (composer_pid, composer, sort_composer, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status) SELECT composer_pid, composer, sort_composer, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status FROM composer"}]
    && [v3 executeUpdate:@"DROP TABLE composer"]
    && [v3 executeUpdate:@"ALTER TABLE composer_new RENAME TO composer"]
    && [v3 executeUpdate:{@"CREATE TABLE genre_new (genre_id INTEGER PRIMARY KEY, genre TEXT NOT NULL UNIQUE, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO genre_new (genre_id, genre, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status) SELECT genre_id, genre, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status FROM genre"}]
    && [v3 executeUpdate:@"DROP TABLE genre"]
    && [v3 executeUpdate:@"ALTER TABLE genre_new RENAME TO genre"]
    && [v3 executeUpdate:@"DROP TABLE container_artwork"]
    && [v3 executeUpdate:@"DROP TABLE item_artwork"]
    && [v3 executeUpdate:@"DROP TABLE item_screenshot"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280020to1280030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 schemaDeleteColumn:@"is_playlist_only" inTable:@"item_store"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280030to1280040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 schemaRenameColumn:@"matched_store_item_id" inTable:@"item_store" toNewColumnName:@"subscription_store_item_id"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v14 = 0;
    v7 = "Failed to rename matched_store_item_id column.";
    v8 = &v14;
LABEL_17:
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_18;
  }

  if (([v3 schemaAddColumnDefinition:@"playlist_author_id TEXT NOT NULL DEFAULT ''" toTable:@"container"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v13 = 0;
    v7 = "Failed to add playlist_author_id column.";
    v8 = &v13;
    goto LABEL_17;
  }

  if (([v3 schemaAddColumnDefinition:@"radio_station_id TEXT NOT NULL DEFAULT ''" toTable:@"item_store"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v12 = 0;
    v7 = "Failed to add radio_station_id column.";
    v8 = &v12;
    goto LABEL_17;
  }

  if (([v3 schemaAddColumnDefinition:@"advertisement_unique_id INTEGER NOT NULL DEFAULT 0" toTable:@"item_store"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v11 = 0;
    v7 = "Failed to add advertisement_unique_id column.";
    v8 = &v11;
    goto LABEL_17;
  }

  if (([v3 schemaAddColumnDefinition:@"advertisement_type INTEGER NOT NULL DEFAULT 0" toTable:@"item_store"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Failed to add advertisement_type column.";
      v8 = &v10;
      goto LABEL_17;
    }

LABEL_18:

    v5 = 0;
    goto LABEL_19;
  }

  [v4 setNeedsToRecreateIndexes:1];
  [v4 setNeedsToRecreateTriggers:1];
  [v4 setCurrentUserVersion:1280040];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280040;"];
LABEL_19:

  return v5;
}

uint64_t ML3MigrationFunction1280040to1280050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_id TEXT NOT NULL DEFAULT '', cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_public, cloud_author_display_name, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_shared, cloud_author_display_name, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280050];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280050;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280050to1280060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE artwork_token SET artwork_source_type = 200 WHERE artwork_source_type = 1"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE best_artwork_token SET fetchable_artwork_source_type = 200 WHERE fetchable_artwork_source_type = 1") && objc_msgSend(v3, "executeUpdate:", @"UPDATE artwork SET artwork_source_type = 200 WHERE artwork_source_type = 1") && objc_msgSend(v3, "executeUpdate:", @"UPDATE artwork_token SET artwork_source_type = 300 WHERE artwork_source_type = 2") && objc_msgSend(v3, "executeUpdate:", @"UPDATE best_artwork_token SET fetchable_artwork_source_type = 300 WHERE fetchable_artwork_source_type = 2") && objc_msgSend(v3, "executeUpdate:", @"UPDATE artwork SET artwork_source_type = 300 WHERE artwork_source_type = 2") && objc_msgSend(v3, "executeUpdate:", @"UPDATE artwork_token SET artwork_source_type = 400 WHERE artwork_source_type = 3") && objc_msgSend(v3, "executeUpdate:", @"UPDATE best_artwork_token SET fetchable_artwork_source_type = 400 WHERE fetchable_artwork_source_type = 3") && objc_msgSend(v3, "executeUpdate:", @"UPDATE artwork SET artwork_source_type = 400 WHERE artwork_source_type = 3") && objc_msgSend(v3, "executeUpdate:", @"UPDATE artwork_token SET artwork_source_type = 500 WHERE artwork_source_type = 4") && objc_msgSend(v3, "executeUpdate:", @"UPDATE best_artwork_token SET fetchable_artwork_source_type = 500 WHERE fetchable_artwork_source_type = 4") && objc_msgSend(v3, "executeUpdate:", @"UPDATE artwork SET artwork_source_type = 500 WHERE artwork_source_type = 4") && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE artwork_token_new (artwork_token TEXT NOT NULL DEFAULT '', artwork_source_type INTEGER NOT NULL DEFAULT 0, artwork_type INTEGER NOT NULL DEFAULT 0, entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, UNIQUE (artwork_source_type, artwork_type, entity_pid, entity_type))") && objc_msgSend(v3, "executeUpdate:", @"INSERT OR REPLACE INTO artwork_token_new SELECT * FROM artwork_token") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE artwork_token") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE artwork_token_new RENAME TO artwork_token"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280060];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280060;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280060to1280070(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToUpdateSortMap:1];
  [v3 setForceUpdateOriginals:1];
  [v3 setCurrentUserVersion:1280070];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1280070;"];
  return v5;
}

uint64_t ML3MigrationFunction1280070to1280080(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((ML3MigrationColumnExistsInTable(v3, @"radio_station_id", @"item_store") & 1) != 0 || [v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN radio_station_id TEXT NOT NULL DEFAULT ''"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN advertisement_unique_id INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN advertisement_type INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1280080];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280080;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280080to1280090(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToUpdateSortMap:1];
  [v3 setForceUpdateOriginals:1];
  [v3 setCurrentUserVersion:1280090];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1280090;"];
  return v5;
}

uint64_t ML3MigrationFunction1280090to1280100(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS ItemMediaType"])
  {
    [v4 setNeedsToUpdateSortMap:1];
    [v4 setForceUpdateOriginals:1];
    [v4 setCurrentUserVersion:1280100];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280100;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280100to1280110(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_insert_item_setRemoteLocationColumn"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setRemoteLocationColumn"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280110];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280110;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280110to1280120(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"PRAGMA auto_vacuum = 0;"])
  {
    [v4 setCurrentUserVersion:1280120];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280120;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280120to1280130(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_seed_new (container_pid INTEGER PRIMARY KEY, item_pid INTEGER NOT NULL DEFAULT 0, seed_order INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO container_seed_new (container_pid, item_pid, seed_order) SELECT container_pid, item_pid, seed_order FROM container_seed") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE container_seed") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container_seed_new RENAME TO container_seed"))
  {
    [v4 setCurrentUserVersion:1280130];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280130;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280130to1280140(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN is_artist_uploaded_content INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1280140];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280140;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280140to1280150(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_store_new (item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, purchase_history_redownload_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, match_redownload_params TEXT, cloud_status INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, home_sharing_id INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, downloader_account_id INTEGER NOT NULL DEFAULT 0, family_account_id INTEGER NOT NULL DEFAULT 0, is_protected INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, store_link_id INTEGER NOT NULL DEFAULT 0, extras_url TEXT NOT NULL DEFAULT '', vpp_is_licensed INTEGER NOT NULL DEFAULT 0, vpp_org_id INTEGER NOT NULL DEFAULT 0, vpp_org_name TEXT NOT NULL DEFAULT '', sync_redownload_params TEXT NOT NULL DEFAULT '', needs_reporting INTEGER NOT NULL DEFAULT 0, subscription_store_item_id INTEGER NOT NULL DEFAULT 0, playback_endpoint_type INTEGER NOT NULL DEFAULT 0, is_mastered_for_itunes INTEGER NOT NULL DEFAULT 0, radio_station_id TEXT NOT NULL DEFAULT '', advertisement_unique_id TEXT NOT NULL DEFAULT '', advertisement_type INTEGER NOT NULL DEFAULT 0, is_artist_uploaded_content INTEGER NOT NULL DEFAULT 0, cloud_asset_available INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_store_new (item_pid, store_item_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, cloud_status, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, downloader_account_id, family_account_id, is_protected, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, extras_url, vpp_is_licensed, vpp_org_id, vpp_org_name, sync_redownload_params, needs_reporting, subscription_store_item_id, playback_endpoint_type, is_mastered_for_itunes, radio_station_id, advertisement_type, is_artist_uploaded_content) SELECT item_pid, store_item_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, cloud_status, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, downloader_account_id, family_account_id, is_protected, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, store_link_id, extras_url, vpp_is_licensed, vpp_org_id, vpp_org_name, sync_redownload_params, needs_reporting, subscription_store_item_id, playback_endpoint_type, is_mastered_for_itunes, radio_station_id, advertisement_type, is_artist_uploaded_content FROM item_store"}]
    && [v3 executeUpdate:@"DROP TABLE item_store"]
    && [v3 executeUpdate:@"ALTER TABLE item_store_new RENAME TO item_store"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280150];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280150;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280150to1280160(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitle"] && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemTitle_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbum") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbum_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemItemArtist") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemItemArtist_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbumArtist") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemAlbumArtist_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemComposer") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemComposer_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemGenre") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemGenre_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemSeries") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemSeries_Section") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemExtraDateCreated") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ItemExtraIsCompilation") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item ADD COLUMN in_my_library INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item ADD COLUMN is_compilation INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item ADD COLUMN date_added INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item SET in_my_library = (remote_location_id != 250), is_compilation = (SELECT is_compilation FROM item_extra WHERE item.item_pid = item_extra.item_pid), date_added = (SELECT date_created FROM item_extra WHERE item.item_pid = item_extra.item_pid)") && objc_msgSend(v3, "schemaDeleteColumns:inTable:", &unk_2840C6668, @"item_extra"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280160];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280160;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280160to1280170(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1280170];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1280170;"];

  return v4;
}

uint64_t ML3MigrationFunction1280170to1280180(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_artist ADD COLUMN app_data BLOB"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE album_artist ADD COLUMN app_data BLOB"))
  {
    [v4 setCurrentUserVersion:1280180];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280180;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280180to1280190(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN is_subscription INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_insert_item_setRemoteLocationColumn") && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setRemoteLocationColumn"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280190];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280190;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280190to1280200(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE item_store SET store_saga_id = 0 WHERE store_saga_id = -3"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_insert_item_setRemoteLocationColumn") && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setRemoteLocationColumn") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item SET remote_location_id = 50 WHERE (remote_location_id = 250 OR remote_location_id  = 201) AND (SELECT 1 FROM item_store WHERE item.item_pid = item_store.item_pid AND subscription_store_item_id != 0)") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET cloud_asset_available = 1 WHERE IFNULL(purchase_history_redownload_params, '') != '' OR IFNULL(match_redownload_params, '') != ''"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280200];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280200;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280200to1280210(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TABLE local_playback_event"])
  {
    [v4 setCurrentUserVersion:1280210];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280210;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280210to1280220(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_insert_item_setInMyLibraryColumn"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setInMyLibraryColumn"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280220];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280220;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280220to1280230(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE item SET keep_local = 1 WHERE base_location_id >= 300"])
  {
    [v4 setCurrentUserVersion:1280230];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280230;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280230to1280240(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_public, cloud_is_subscribed, cloud_author_display_name, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_public, cloud_is_subscribed, cloud_author_display_name, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"]
    && [v3 executeUpdate:@"UPDATE container SET distinguished_kind = 10000 WHERE distinguished_kind = 35"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280240];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280240;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280240to1280250(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:1280250];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1280250;"];
  return v5;
}

uint64_t ML3MigrationFunction1280250to1280260(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_public, cloud_is_subscribed, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_is_public, cloud_is_subscribed, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"])
  {
    [v3 executeUpdate:@"UPDATE _MLDatabaseProperties SET value = 0 WHERE key = 'MLSyncClientSyncAnchor'"];
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280260];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280260;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280260to1280270(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_seed_new (container_pid INTEGER PRIMARY KEY, item_pid INTEGER NOT NULL DEFAULT 0, seed_order INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO container_seed_new (container_pid, item_pid, seed_order) SELECT container_pid, item_pid, seed_order FROM container_seed") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE container_seed") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container_seed_new RENAME TO container_seed"))
  {
    [v4 setCurrentUserVersion:1280270];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280270;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280270to1280280(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_insert_item_setInMyLibraryColumn"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setInMyLibraryColumn") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET store_saga_id=store_saga_id"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1280280];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1280280;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1280280to1290000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_stats ADD COLUMN liked_state_changed INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1290000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1290000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1290000to1290010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS ItemArtistRepresentativeItemPID"] && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS AlbumArtistRepresentativeItemPID") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS GenreRepresentativeItemPID") && objc_msgSend(v3, "executeUpdate:", @"DROP INDEX IF EXISTS ComposerRepresentativeItemPID"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1290010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1290010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1290010to1310020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_insert_item_setInMyLibraryColumn"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setInMyLibraryColumn") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN sync_in_my_library INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET sync_in_my_library = 1 WHERE sync_id != 0"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1310020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1310020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1310020to1310030(void *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 executeQuery:@"SELECT item_pid FROM item WHERE (media_type & 8 != 0) AND album_pid = 0"];
  v6 = [v5 objectsInColumn:0];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v31 = *v33;
    v29 = v4;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v33 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        valuePtr = ML3CreateIntegerUUID();
        for (i = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr); ; i = v15)
        {
          v42 = i;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
          v13 = [v3 executeQuery:@"SELECT 1 FROM album WHERE album_pid = ?" withParameters:v12];
          v14 = [v13 hasAtLeastOneRow];

          if (!v14)
          {
            break;
          }

          valuePtr = ML3CreateIntegerUUID();
          v15 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
        }

        v41[0] = i;
        v41[1] = v10;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
        v17 = [v3 executeUpdate:@"INSERT INTO album (album_pid withParameters:representative_item_pid) VALUES(? error:{?)", v16, 0}];

        if (!v17 || (v40[0] = i, v40[1] = v10, [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v3, "executeUpdate:withParameters:error:", @"UPDATE item SET album_pid = ? WHERE item_pid = ?", v18, 0), v18, !v19) || (v39 = v10, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v39, 1), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v3, "executeUpdate:withParameters:error:", @"INSERT OR REPLACE INTO entity_revision (entity_pid, deleted, class, revision_type) VALUES(?, 0, 0, 0)", v20, 0), v20, !v21) || (v38 = v10, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v38, 1), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v3, "executeUpdate:withParameters:error:", @"DELETE FROM entity_revision WHERE entity_pid = ? AND revision_type > 0", v22, 0), v22, !v23))
        {

LABEL_18:
          v26 = obj;

          v27 = 0;
          v4 = v29;
          goto LABEL_19;
        }

        v37 = i;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        v25 = [v3 executeUpdate:@"INSERT OR REPLACE INTO entity_revision (entity_pid withParameters:deleted error:{class, revision_type) VALUES(?, 0, 4, 0)", v24, 0}];

        if (!v25)
        {
          goto LABEL_18;
        }

        ++v9;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
      v4 = v29;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v26 = obj;

  [v4 setCurrentUserVersion:1310030];
  v27 = [v3 executeUpdate:@"PRAGMA user_version = 1310030;"];
LABEL_19:

  return v27;
}

uint64_t ML3MigrationFunction1310030to1310040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DELETE FROM best_artwork_token WHERE available_artwork_token = '' AND fetchable_artwork_token = ''"])
  {
    [v4 setCurrentUserVersion:1310040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1310040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1310040to1310050(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1310050];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1310050;"];

  return v4;
}

uint64_t ML3MigrationFunction1310050to1320000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_remove_source_setPlaybackEndpointType"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET playback_endpoint_type = 1 WHERE store_saga_id = 0 AND purchase_history_id != 0 AND playback_endpoint_type = 3"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1320000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1320000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1320000to1330000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE item_store SET is_protected = 1 WHERE item_pid IN (SELECT item_pid FROM item JOIN item_store USING (item_pid) WHERE base_location_id >= 3840 AND is_protected = 0 AND key_id != 0)"])
  {
    [v4 setCurrentUserVersion:1330000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1330000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1330000to1330010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item ADD COLUMN show_composer INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1330010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1330010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1330010to1350010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN app_data BLOB"])
  {
    [v4 setCurrentUserVersion:1350010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1350010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1350000to1350010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE album SET app_data = NULL WHERE LENGTH(app_data) = 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_artist SET app_data = NULL WHERE LENGTH(app_data) = 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE album_artist SET app_data = NULL WHERE LENGTH(app_data) = 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE album SET grouping_key = NULL WHERE LENGTH(grouping_key) = 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET smart_criteria = NULL WHERE LENGTH(smart_criteria) = 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container_items SET item_pid_data = NULL WHERE LENGTH(item_pid_data) = 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE chapter SET chapter_data = NULL WHERE LENGTH(chapter_data) = 0"))
  {
    [v4 setCurrentUserVersion:1350010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1350010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1350010to1350020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_new (item_pid INTEGER PRIMARY KEY, media_type INTEGER NOT NULL DEFAULT 0, title_order INTEGER NOT NULL DEFAULT 0, title_order_section INTEGER NOT NULL DEFAULT 0, item_artist_pid INTEGER NOT NULL DEFAULT 0, item_artist_order INTEGER NOT NULL DEFAULT 0, item_artist_order_section INTEGER NOT NULL DEFAULT 0, series_name_order INTEGER NOT NULL DEFAULT 0, series_name_order_section INTEGER NOT NULL DEFAULT 0, album_pid INTEGER NOT NULL DEFAULT 0, album_order INTEGER NOT NULL DEFAULT 0, album_order_section INTEGER NOT NULL DEFAULT 0, album_artist_pid INTEGER NOT NULL DEFAULT 0, album_artist_order INTEGER NOT NULL DEFAULT 0, album_artist_order_section INTEGER NOT NULL DEFAULT 0, composer_pid INTEGER NOT NULL DEFAULT 0, composer_order INTEGER NOT NULL DEFAULT 0, composer_order_section INTEGER NOT NULL DEFAULT 0, genre_id INTEGER NOT NULL DEFAULT 0, genre_order INTEGER NOT NULL DEFAULT 0, genre_order_section INTEGER NOT NULL DEFAULT 0, disc_number INTEGER NOT NULL DEFAULT 0, track_number INTEGER NOT NULL DEFAULT 0, episode_sort_id INTEGER NOT NULL DEFAULT 0, base_location_id INTEGER NOT NULL DEFAULT 0, remote_location_id INTEGER NOT NULL DEFAULT 0, exclude_from_shuffle INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, in_my_library INTEGER NOT NULL DEFAULT 0, is_compilation INTEGER NOT NULL DEFAULT 0, date_added INTEGER NOT NULL DEFAULT 0, show_composer INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO item_new (item_pid, media_type, title_order, title_order_section, item_artist_pid, item_artist_order, item_artist_order_section, series_name_order, series_name_order_section, album_pid, album_order, album_order_section, album_artist_pid, album_artist_order, album_artist_order_section, composer_pid, composer_order, composer_order_section, genre_id, genre_order, genre_order_section, disc_number, track_number, episode_sort_id, base_location_id, remote_location_id, exclude_from_shuffle, keep_local, keep_local_status, in_my_library, is_compilation, date_added, show_composer) SELECT item_pid, media_type, title_order, title_order_section, item_artist_pid, item_artist_order, item_artist_order_section, series_name_order, series_name_order_section, album_pid, album_order, album_order_section, album_artist_pid, album_artist_order, album_artist_order_section, composer_pid, composer_order, composer_order_section, genre_id, genre_order, genre_order_section, IFNULL(disc_number, 0), IFNULL(track_number, 0), IFNULL(episode_sort_id, 0), base_location_id, remote_location_id, exclude_from_shuffle, keep_local, keep_local_status, in_my_library, is_compilation, date_added, IFNULL(show_composer, 0) FROM item") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE item") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_new RENAME TO item"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1350020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1350020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1350020to1350030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_insert_item_setInMyLibraryColumn"] && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_update_item_setInMyLibraryColumn") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN cloud_in_my_library INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET cloud_in_my_library = 1 WHERE store_saga_id != 0"))
  {
    ML3MigrationRemoveNonLibraryItemsFromContainers(v3);
    [v4 setNeedsToReloadContainerMediaTypes:1];
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1350030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1350030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1350030to1350040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_remove_source_setNeedsReporting"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET needs_reporting = 0 WHERE store_saga_id = 0"))
  {
    [v4 setCurrentUserVersion:1350040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1350040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1350040to1350050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN external_vendor_identifier TEXT NOT NULL DEFAULT ''"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN external_vendor_display_name TEXT NOT NULL DEFAULT ''") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN external_vendor_container_tag TEXT NOT NULL DEFAULT ''") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1350050];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1350050;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1350050to1350060(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToReloadCollectionRepresentativeItems:1];
  [v3 setCurrentUserVersion:1350060];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1350060;"];
  return v5;
}

uint64_t ML3MigrationFunction1350060to1360000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_remove_source_setPlaybackEndpointType"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET playback_endpoint_type = (CASE WHEN sync_id THEN 0 WHEN purchase_history_id THEN 1 WHEN is_ota_purchased THEN 0 WHEN is_subscription THEN 3 ELSE 0 END) WHERE store_saga_id = 0"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1360000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1360000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1360000to1360010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_remove_source_setPlaybackEndpointType"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET is_subscription = 0 WHERE playback_endpoint_type = 2") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET is_subscription = 1 WHERE playback_endpoint_type = 3"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1360010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1360010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1360010to1410000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN classical_work TEXT NOT NULL DEFAULT ''"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN classical_movement TEXT NOT NULL DEFAULT ''") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN classical_movement_count INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_extra ADD COLUMN classical_movement_number INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1410000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410000to1410010(void *a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v26 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_item (container_item_pid INTEGER PRIMARY KEY, container_pid INTEGER NOT NULL DEFAULT 0, item_pid INTEGER NOT NULL DEFAULT 0, position INTEGER NOT NULL DEFAULT 0)"}])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v25 = [v3 executeQuery:@"SELECT container_pid FROM container WHERE smart_criteria IS NULL OR smart_is_genius"];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __ML3MigrationFunction1410000to1410010_block_invoke;
    v44[3] = &unk_278766118;
    v5 = v4;
    v45 = v5;
    [v25 enumerateRowsWithBlock:v44];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v5;
    v29 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v29)
    {
      v28 = *v41;
      v32 = 1;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v41 != v28)
          {
            v7 = v6;
            objc_enumerationMutation(obj);
            v6 = v7;
          }

          v30 = v6;
          v8 = *(*(&v40 + 1) + 8 * v6);
          v34 = 0;
          v35 = &v34;
          v36 = 0x3032000000;
          v37 = __Block_byref_object_copy__2414;
          v38 = __Block_byref_object_dispose__2415;
          v39 = 0;
          v47 = v8;
          v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:{1, v25}];
          v31 = [v3 executeQuery:@"SELECT item_pid_data FROM container_items WHERE container_pid = ?" withParameters:v9];

          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __ML3MigrationFunction1410000to1410010_block_invoke_2;
          v33[3] = &unk_2787653C8;
          v33[4] = &v34;
          [v31 enumerateRowsWithBlock:v33];
          v10 = v35[5];
          if (v10 && (v11 = [v10 bytes], v12 = objc_msgSend(v35[5], "length"), v12 >= 8))
          {
            v14 = 0;
            v15 = (v12 >> 3) - 1;
            do
            {
              v16 = *(v11 + 8 * v14);
              v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v32 + v14];
              v46[0] = v17;
              v46[1] = v8;
              v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v16];
              v46[2] = v18;
              v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
              v46[3] = v19;
              v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
              v13 = [v3 executeUpdate:@"INSERT INTO container_item (container_item_pid withParameters:container_pid error:{item_pid, position) VALUES (?, ?, ?, ?)", v20, 0}];

              v21 = v14 + 1;
              if (v15 == v14)
              {
                v22 = 0;
              }

              else
              {
                v22 = v13;
              }

              ++v14;
            }

            while ((v22 & 1) != 0);
            v32 += v21;
          }

          else
          {
            v13 = 1;
          }

          _Block_object_dispose(&v34, 8);
          if (!v13)
          {

            goto LABEL_23;
          }

          v6 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    if ([v3 executeUpdate:@"DROP TABLE IF EXISTS container_items"])
    {
      [v26 setNeedsToRecreateIndexes:1];
      [v26 setNeedsToRecreateTriggers:1];
      [v26 setCurrentUserVersion:1410010];
      v23 = [v3 executeUpdate:@"PRAGMA user_version = 1410010;"];
    }

    else
    {
LABEL_23:
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

void sub_22D3F0E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction1410000to1410010_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 numberForColumnIndex:0];
  [v2 addObject:v3];
}

uint64_t __ML3MigrationFunction1410000to1410010_block_invoke_2(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 dataForColumnIndex:0];

  return MEMORY[0x2821F96F8]();
}

uint64_t ML3MigrationFunction1410010to1410020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN has_hls INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE lyrics ADD COLUMN store_lyrics_available INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1410020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410020to1410030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_remove_source_setPlaybackEndpointType"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET playback_endpoint_type = (CASE WHEN sync_id THEN 0 WHEN purchase_history_id THEN 1 WHEN is_ota_purchased THEN 0 WHEN is_subscription THEN 3 ELSE 0 END) WHERE store_saga_id = 0"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1410030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410030to1410040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE container_item SET position = position - 1 WHERE container_pid IN (SELECT DISTINCT(container_pid) FROM container_item WHERE container_pid IN (SELECT DISTINCT(container_pid) FROM container_item WHERE position > 0) AND container_pid NOT IN (SELECT container_pid FROM container_item WHERE position = 0))"])
  {
    [v4 setCurrentUserVersion:1410040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410040to1410050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE play_event (play_event_pid INTEGER PRIMARY KEY, date_played INTEGER NOT NULL DEFAULT 0, album_pid INTEGER NOT NULL DEFAULT 0, container_pid INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO play_event (date_played, container_pid) SELECT date_played, container_pid FROM container WHERE is_hidden = 0 AND date_played > 0 ORDER BY date_played DESC"))
  {
    [v4 setCurrentUserVersion:1410050];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410050;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410050to1410060(void *a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (MGGetBoolAnswer() && ![v3 executeUpdate:{@"INSERT OR REPLACE INTO _MLDatabaseProperties (value, key) VALUES (1, 'MLArtworkShouldConvertToASTC')"}])
  {
    v22 = 0;
  }

  else
  {
    v25 = v4;
    v26 = v3;
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = MEMORY[0x277CBEBC0];
    v7 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork"];
    v8 = [v6 fileURLWithPath:v7 isDirectory:1];

    v9 = *MEMORY[0x277CBE868];
    v34[0] = *MEMORY[0x277CBE868];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    v27 = v5;
    v24 = v8;
    v11 = [v5 enumeratorAtURL:v8 includingPropertiesForKeys:v10 options:4 errorHandler:0];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v28 = 0;
          [v17 getResourceValue:&v28 forKey:v9 error:0];
          v18 = v28;
          if (([v18 BOOLValue] & 1) == 0)
          {
            v19 = [v17 pathExtension];
            v20 = [v19 isEqualToString:@"jpeg"];

            if (v20)
            {
              v21 = [v17 URLByDeletingPathExtension];
              [v27 moveItemAtURL:v17 toURL:v21 error:0];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    v3 = v26;
    if ([v26 executeUpdate:{@"UPDATE artwork SET relative_path = SUBSTR(relative_path, 0, 41)"}])
    {
      v4 = v25;
      [v25 setCurrentUserVersion:1410060];
      v22 = [v26 executeUpdate:@"PRAGMA user_version = 1410060;"];
    }

    else
    {
      v22 = 0;
      v4 = v25;
    }
  }

  return v22;
}

uint64_t ML3MigrationFunction1410060to1410070(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN cloud_album_id TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:1410070];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410070;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410070to1410080(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN sync_id INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET sync_id=container_pid WHERE is_src_remote=1 AND store_cloud_id=0"))
  {
    [v4 setCurrentUserVersion:1410080];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410080;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410080to1410090(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_remove_source_setPlaybackEndpointType"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET is_subscription = 0 WHERE playback_endpoint_type = 2") && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET is_subscription = 1 WHERE playback_endpoint_type = 3"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1410090];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410090;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410090to1410100(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN contains_classical_work INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE album SET contains_classical_work=1 WHERE album_pid IN (SELECT DISTINCT(album_pid) FROM item JOIN item_extra USING (item_pid) WHERE classical_work!='' OR (show_composer=1 AND grouping!=''))"))
  {
    [v4 setCurrentUserVersion:1410100];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410100;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410100to1410110(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToReloadCollectionRepresentativeItems:1];
  [v3 setCurrentUserVersion:1410110];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1410110;"];
  return v5;
}

uint64_t ML3MigrationFunction1410110to1410120(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP INDEX IF EXISTS SortMapSortKeys"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemArtistGrouping"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS AlbumArtistGrouping"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS AlbumGrouping"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ComposerGrouping"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS GenreGrouping"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS AlbumRepresentativeItemPID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemArtistRepresentativeItemPID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS AlbumArtistRepresentativeItemPID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS GenreRepresentativeItemPID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ComposerRepresentativeItemPID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemArtistKeepLocal"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS AlbumKeepLocal"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS AlbumArtistKeepLocal"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ContainerKeepLocal"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS GenreKeepLocal"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ComposerKeepLocal"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ArtworkTokenArtworkToken"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ArtworkTokenEntityPIDEntityType"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS BestArtworkTokenEntityPIDEntityType"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ContainerItemItemPid"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ContainerItemPosition"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitleInAlbum"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitleInAlbumArtist"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitleInItemArtist"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitleInComposer"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitleInGenre"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemTitle"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemAlbum"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemAlbumByAlbumArtist"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemItemArtist"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemAlbumArtist"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemComposer"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemGenre"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemSeries"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemDateCreated"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemExtraGeniusID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemStoreSagaID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemStoreItemID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemSubscriptionStoreItemID"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemStatsPlayCount"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemStatsPlayDate"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemStatsUserRating"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemStatsRememberBookmark"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemUPP_BookkeeperItemLookup"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemUPP_BookkeeperIdentifier"]
    && [v3 executeUpdate:@"DROP INDEX IF EXISTS ItemKeepLocal"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1410120];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410120;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410120to1410130(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN cloud_version_hash TEXT NOT NULL DEFAULT ''"))
  {
    [v4 setCurrentUserVersion:1410130];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410130;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410130to1410140(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE genius_config_new (id INTEGER PRIMARY KEY, version INTEGER UNIQUE, default_num_results INTEGER NOT NULL DEFAULT 0, min_num_results INTEGER NOT NULL DEFAULT 0, data BLOB)"}]
    && [v3 executeUpdate:{@"INSERT INTO genius_config_new (id, version, default_num_results, min_num_results, data) SELECT id, version, IFNULL(default_num_results, 0), IFNULL(min_num_results, 0), data FROM genius_config"}]
    && [v3 executeUpdate:@"DROP TABLE genius_config"]
    && [v3 executeUpdate:@"ALTER TABLE genius_config_new RENAME TO genius_config"]
    && [v3 executeUpdate:{@"CREATE TABLE genius_metadata_new (genius_id INTEGER PRIMARY KEY, revision_level INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, checksum INTEGER NOT NULL DEFAULT 0, data BLOB)"}]
    && [v3 executeUpdate:{@"INSERT INTO genius_metadata_new (genius_id, revision_level, version, checksum, data) SELECT genius_id, IFNULL(revision_level, 0), IFNULL(version, 0), IFNULL(checksum, 0), data FROM genius_metadata"}]
    && [v3 executeUpdate:@"DROP TABLE genius_metadata"]
    && [v3 executeUpdate:@"ALTER TABLE genius_metadata_new RENAME TO genius_metadata"]
    && [v3 executeUpdate:{@"CREATE TABLE album_new (album_pid INTEGER PRIMARY KEY, album TEXT NOT NULL DEFAULT '', sort_album TEXT, album_artist_pid INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, user_rating INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, all_compilations INTEGER NOT NULL DEFAULT 0, feed_url TEXT, season_number INTEGER NOT NULL DEFAULT 0, album_year INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, app_data BLOB, contains_classical_work INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO album_new (album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, app_data, contains_classical_work) SELECT album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, IFNULL(season_number, 0), album_year, keep_local, keep_local_status, app_data, contains_classical_work FROM album"}]
    && [v3 executeUpdate:@"DROP TABLE album"]
    && [v3 executeUpdate:@"ALTER TABLE album_new RENAME TO album"]
    && [v3 executeUpdate:{@"CREATE TABLE item_extra_new (item_pid INTEGER PRIMARY KEY, title TEXT NOT NULL DEFAULT '', sort_title TEXT, disc_count INTEGER NOT NULL DEFAULT 0, track_count INTEGER NOT NULL DEFAULT 0, total_time_ms REAL NOT NULL DEFAULT 0, year INTEGER NOT NULL DEFAULT 0, location TEXT NOT NULL DEFAULT '', file_size INTEGER NOT NULL DEFAULT 0, integrity BLOB, is_audible_audio_book INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, media_kind INTEGER NOT NULL DEFAULT 0, content_rating INTEGER NOT NULL DEFAULT 0, content_rating_level INTEGER NOT NULL DEFAULT 0, is_user_disabled INTEGER NOT NULL DEFAULT 0, bpm INTEGER NOT NULL DEFAULT 0, genius_id INTEGER NOT NULL DEFAULT 0, comment TEXT, grouping TEXT, description TEXT, description_long TEXT, collection_description TEXT, copyright TEXT, pending_genius_checksum INTEGER NOT NULL DEFAULT 0, category_id INTEGER NOT NULL DEFAULT 0, location_kind_id INTEGER NOT NULL DEFAULT 0, version TEXT NOT NULL DEFAULT '', display_version TEXT NOT NULL DEFAULT '', classical_work TEXT NOT NULL DEFAULT '', classical_movement TEXT NOT NULL DEFAULT '', classical_movement_count INTEGER NOT NULL DEFAULT 0, classical_movement_number INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_extra_new (item_pid, title, sort_title, disc_count, track_count, total_time_ms, year, location, file_size, integrity, is_audible_audio_book, date_modified, media_kind, content_rating, content_rating_level, is_user_disabled, bpm, genius_id, comment, grouping, description, description_long, collection_description, copyright, pending_genius_checksum, category_id, location_kind_id, version, display_version, classical_work, classical_movement, classical_movement_count, classical_movement_number) SELECT item_pid, title, sort_title, IFNULL(disc_count, 0), IFNULL(track_count, 0), total_time_ms, IFNULL(year, 0), location, file_size, integrity, is_audible_audio_book, date_modified, media_kind, content_rating, content_rating_level, is_user_disabled, IFNULL(bpm, 0), genius_id, comment, grouping, description, description_long, collection_description, copyright, pending_genius_checksum, IFNULL(category_id, 0), location_kind_id, version, display_version, classical_work, classical_movement, classical_movement_count, classical_movement_number FROM item_extra"}]
    && [v3 executeUpdate:@"DROP TABLE item_extra"]
    && [v3 executeUpdate:@"ALTER TABLE item_extra_new RENAME TO item_extra"]
    && [v3 executeUpdate:{@"CREATE TABLE entity_changes (class INTEGER NOT NULL, entity_pid INTEGER NOT NULL, source_pid INTEGER NOT NULL, change_type INTEGER NOT NULL, changes TEXT NOT NULL DEFAULT '', UNIQUE (class, entity_pid, source_pid, change_type))"}]
    && [v3 executeUpdate:{@"CREATE TABLE source (source_pid INTEGER PRIMARY KEY, source_name TEXT, last_sync_date INTEGER NOT NULL DEFAULT 0, last_sync_revision INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"CREATE TABLE library_property (property_pid INTEGER PRIMARY KEY, source_id INTEGER, key TEXT, value TEXT, UNIQUE (source_id, key))"}])
  {
    [v4 setNeedsToUpdateSortMap:1];
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1410140];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410140;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410140to1410150(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN date_played_local NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN date_played_local NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE album SET date_played_local = IFNULL((SELECT date_played FROM play_event WHERE play_event.album_pid = album.album_pid), 0)") && objc_msgSend(v3, "executeUpdate:", @"UPDATE container SET date_played_local = IFNULL((SELECT date_played FROM play_event WHERE play_event.container_pid = container.container_pid), 0)") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE play_event"))
  {
    [v4 setCurrentUserVersion:1410150];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410150;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410150to1410160(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"UPDATE container SET distinguished_kind = 0 WHERE cloud_is_curator_playlist OR is_external_vendor_playlist"])
  {
    [v4 setCurrentUserVersion:1410160];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410160;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410160to1410170(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN audio_track_locale TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:1410170];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410170;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410170to1410180(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_stats ADD COLUMN user_rating_is_derived INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE album ADD COLUMN user_rating_is_derived INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1410180];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410180;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410180to1410190(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN cloud_playback_endpoint_type INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET cloud_playback_endpoint_type = playback_endpoint_type") && objc_msgSend(v3, "executeUpdate:", @"DROP TRIGGER IF EXISTS on_remove_source_setPlaybackEndpointType"))
  {
    [v4 setNeedsToUpdateSortMap:1];
    [v4 setForceUpdateOriginals:1];
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1410190];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410190;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410190to1410200(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DROP TRIGGER IF EXISTS on_remove_source_setPlaybackEndpointType"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE item_store SET playback_endpoint_type = (CASE WHEN sync_id THEN 0 WHEN purchase_history_id THEN 1 WHEN is_ota_purchased THEN 0 WHEN is_subscription THEN 3 ELSE 0 END) WHERE store_saga_id = 0"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1410200];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1410200;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1410200to1410210(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = a2;
  v5 = a1;
  v6 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork/Caches"];
  v7 = [v3 fileURLWithPath:v6 isDirectory:1];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  [v8 removeItemAtURL:v7 error:0];

  [v4 setNeedsToAutogenerateArtworkVariants:1];
  [v4 setCurrentUserVersion:1410210];

  v9 = [v5 executeUpdate:@"PRAGMA user_version = 1410210;"];
  return v9;
}

uint64_t ML3MigrationFunction1410210to1430000(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v3 executeQuery:{@"SELECT item_pid, (CASE WHEN store_item_id != 0 THEN store_item_id ELSE subscription_store_item_id END) AS adam_id FROM item_store JOIN item_upp USING (item_pid) WHERE adam_id != 0 AND adam_id != bookkeeper_identifier"}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __ML3MigrationFunction1410210to1430000_block_invoke;
  v25[3] = &unk_278766118;
  v7 = v5;
  v26 = v7;
  [v6 enumerateRowsWithBlock:v25];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v20 = 0;
        v14 = [v3 executeUpdate:@"UPDATE item_upp SET bookkeeper_identifier = ? WHERE item_pid = ?" withParameters:v13 error:&v20];
        v15 = v20;
        v16 = v15;
        if ((v14 & 1) == 0)
        {
          v18 = os_log_create("com.apple.amp.medialibrary", "Migration");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v28 = v16;
            _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Failed to update item_upp with error: %@", buf, 0xCu);
          }

          v17 = 0;
          goto LABEL_13;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [v4 setCurrentUserVersion:1430000];
  v17 = [v3 executeUpdate:@"PRAGMA user_version = 1430000;"];
LABEL_13:

  return v17;
}

void __ML3MigrationFunction1410210to1430000_block_invoke(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 numberForColumnIndex:0];
  v5 = [v3 numberForColumnIndex:1];

  v6 = *(a1 + 32);
  v8[0] = v4;
  v8[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v6 addObject:v7];
}

uint64_t ML3MigrationFunction1430000to1450000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE cloud_kvs (key TEXT PRIMARY KEY, play_count_user INTEGER NOT NULL DEFAULT 0, has_been_played INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL NOT NULL DEFAULT 0, bookmark_sync_timestamp INTEGER NOT NULL DEFAULT 0, bookmark_sync_revision INTEGER NOT NULL DEFAULT 0)"}])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1450000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1450000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1450000to1450010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE IF NOT EXISTS item_upp (item_pid INTEGER PRIMARY KEY, bookkeeper_identifier TEXT NOT NULL DEFAULT '', metadata_timestamp REAL, metadata_entity_revision INTEGER)"}])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:1450010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1450010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1450010to1450020(void *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = ML3MigrationStoreBookeeperDatabaseFilePathAsOf1450020();
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = [[ML3DatabaseConnection alloc] initWithDatabasePath:v5];
  [(ML3DatabaseConnection *)v8 setReadOnly:1];
  [(ML3DatabaseConnection *)v8 open];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [(ML3DatabaseConnection *)v8 executeQuery:@"SELECT key withParameters:propertyValuesBlob, timestamp FROM ubiquitous_bookmarks", 0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __ML3MigrationFunction1450010to1450020_block_invoke;
  v37[3] = &unk_278766118;
  v11 = v9;
  v38 = v11;
  [v10 enumerateRowsWithBlock:v37];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2414;
  v35 = __Block_byref_object_dispose__2415;
  v36 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __ML3MigrationFunction1450010to1450020_block_invoke_2382;
  v28[3] = &unk_27875D198;
  v12 = v3;
  v29 = v12;
  v30 = &v31;
  [v11 enumerateKeysAndObjectsUsingBlock:v28];
  if (!v32[5])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__2414;
    v44 = __Block_byref_object_dispose__2415;
    v45 = 0;
    v16 = [(ML3DatabaseConnection *)v8 executeQuery:@"SELECT key withParameters:value FROM ubiquitous_database_properties", 0];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __ML3MigrationFunction1450010to1450020_block_invoke_2399;
    v25[3] = &unk_278765180;
    v26 = v12;
    p_buf = &buf;
    [v16 enumerateRowsWithBlock:v25];
    v17 = *(*(&buf + 1) + 40);
    v15 = v17 == 0;
    if (v17)
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(&buf + 1) + 40);
        *v39 = 138543362;
        v40 = v19;
        v20 = "There was an error when migrating SBK table while inserting data from SBK properties table, %{public}@";
        v21 = v18;
        v22 = 12;
LABEL_12:
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, v20, v39, v22);
      }
    }

    else
    {
      if ([(ML3DatabaseConnection *)v8 close])
      {
LABEL_14:

        _Block_object_dispose(&buf, 8);
        goto LABEL_15;
      }

      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v39 = 0;
        v20 = "There was an error closing the SBK database file. Migration step will continue, but StoreBookkeeper database files might not be deleted.";
        v21 = v18;
        v22 = 2;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = v32[5];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "There was an error when migrating SBK table while inserting data from SBK %{public}@", &buf, 0xCu);
  }

  v15 = 0;
LABEL_15:

  _Block_object_dispose(&v31, 8);
  if (!v15)
  {
LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

LABEL_16:
  if (![v3 executeUpdate:{@"UPDATE cloud_kvs SET bookmark_sync_revision = IFNULL((SELECT metadata_entity_revision FROM item_upp WHERE cloud_kvs.key = item_upp.bookkeeper_identifier), 0)"}] || !objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE item_kvs (item_pid INTEGER PRIMARY KEY, key TEXT NOT NULL DEFAULT '')") || !objc_msgSend(v3, "executeUpdate:", @"INSERT INTO item_kvs (item_pid, key) SELECT item_pid, bookkeeper_identifier FROM item_upp") || !objc_msgSend(v3, "executeUpdate:", @"DROP TABLE item_upp") || !objc_msgSend(v3, "executeUpdate:", @"DROP TABLE IF EXISTS ubiquitous_bookmarks") || !objc_msgSend(v3, "executeUpdate:", @"DROP TABLE IF EXISTS item_storebookmark_identifier"))
  {
    goto LABEL_23;
  }

  [v4 setNeedsToRecreateIndexes:1];
  [v4 setNeedsToRecreateTriggers:1];
  [v4 setCurrentUserVersion:1450020];
  v23 = [v3 executeUpdate:@"PRAGMA user_version = 1450020;"];
LABEL_24:

  return v23;
}

void sub_22D3F2C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose((v14 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction1450010to1450020_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = [v6 stringForColumnIndex:0];
  v8 = [v6 dataForColumnIndex:1];
  [v6 doubleForColumnIndex:2];
  v10 = v9;

  v11 = MEMORY[0x277CCAAC8];
  v12 = MSVPropertyListDataClasses();
  v18 = 0;
  v13 = [v11 unarchivedObjectOfClasses:v12 fromData:v8 error:&v18];
  v14 = v18;
  v15 = [v13 mutableCopy];

  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [v15 setObject:v16 forKey:@"timestamp"];

    [*(a1 + 32) setObject:v15 forKey:v7];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "Failed to decode sbk property values. err=%{public}@", buf, 0xCu);
    }
  }
}

void __ML3MigrationFunction1450010to1450020_block_invoke_2382(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a2;
  v9 = [v7 objectForKey:@"item_stats.play_count_user"];
  v10 = [v9 longLongValue];

  v11 = [v7 objectForKey:@"item_stats.has_been_played"];
  v12 = [v11 longLongValue];

  v13 = [v7 objectForKey:@"item_stats.bookmark_time_ms"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v7 objectForKey:@"timestamp"];

  v17 = [v16 longLongValue];
  v27[0] = v8;
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  v27[1] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
  v27[2] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v27[3] = v20;
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
  v27[4] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:5];

  v23 = *(a1 + 32);
  v24 = *(*(a1 + 40) + 8);
  obj = *(v24 + 40);
  [v23 executeUpdate:@"INSERT OR REPLACE INTO cloud_kvs (key withParameters:play_count_user error:{has_been_played, bookmark_time_ms, bookmark_sync_timestamp) VALUES (?, ?, ?, ?, ?)", v22, &obj}];
  objc_storeStrong((v24 + 40), obj);
  v25 = *(*(*(a1 + 40) + 8) + 40);

  if (v25)
  {
    *a4 = 1;
  }
}

void __ML3MigrationFunction1450010to1450020_block_invoke_2399(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v9 = [v7 stringForColumnIndex:0];
    v10 = [v7 stringForColumnIndex:1];
    v11 = *(a1 + 32);
    v15[0] = v9;
    v15[1] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v13 = *(*(a1 + 40) + 8);
    obj = *(v13 + 40);
    LOBYTE(v11) = [v11 executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key withParameters:value) VALUES (? error:{?)", v12, &obj}];
    objc_storeStrong((v13 + 40), obj);

    if ((v11 & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

uint64_t ML3MigrationFunction1450020to1450030(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  TCCAccessReset();
  [v3 setCurrentUserVersion:1450030];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1450030;"];
  return v5;
}

uint64_t ML3MigrationFunction1450030to1450040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN show_sort_type INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_video ADD COLUMN episode_type INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_video ADD COLUMN episode_type_display_name TEXT NOT NULL DEFAULT ''") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_video ADD COLUMN episode_sub_sort_order INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1450040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1450040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1450040to1450050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item ADD COLUMN is_music_show INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1450050];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1450050;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1450050to1450060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key = 'MLArtworkShouldConvertToASTC'"])
  {
    if (MSVDeviceOSIsInternalInstall() && MGGetBoolAnswer())
    {
      v5 = MEMORY[0x277CBEBC0];
      v6 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork/Caches"];
      v7 = [v5 fileURLWithPath:v6 isDirectory:1];

      v8 = [MEMORY[0x277CCAA00] defaultManager];
      [v8 removeItemAtURL:v7 error:0];

      [v4 setNeedsToAutogenerateArtworkVariants:1];
    }

    [v4 setCurrentUserVersion:1450060];
    v9 = [v3 executeUpdate:@"PRAGMA user_version = 1450060;"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t ML3MigrationFunction1450060to1450070(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  ML3MigrationRemoveInvalidContainerItems(@"SELECT container_pid, position FROM container_item LEFT OUTER JOIN item USING (item_pid) WHERE item.item_pid IS NULL", v4);
  [v3 setNeedsToReloadContainerMediaTypes:1];
  [v3 setCurrentUserVersion:1450070];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1450070;"];
  return v5;
}

uint64_t ML3MigrationFunction1450070to1450080(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  ML3MigrationRemoveInvalidContainerItems(@"SELECT container_item.container_pid, position FROM container JOIN container_item USING (container_pid) JOIN item USING (item_pid) WHERE distinguished_kind IN (19, 20) AND in_my_library = 0", v4);
  [v3 setNeedsToReloadContainerMediaTypes:1];
  [v3 setCurrentUserVersion:1450080];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1450080;"];
  return v5;
}

uint64_t ML3MigrationFunction1450080to1450090(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MSVDeviceOSIsInternalInstall() && MGGetBoolAnswer() && (MGGetBoolAnswer() & 1) == 0 && (v5 = MEMORY[0x277CBEBC0], +[ML3MusicLibrary mediaFolderPathByAppendingPathComponent:](ML3MusicLibrary, "mediaFolderPathByAppendingPathComponent:", @"iTunes_Control/iTunes/Artwork/Caches"), v6 = objc_claimAutoreleasedReturnValue(), [v5 fileURLWithPath:v6 isDirectory:1], v7 = objc_claimAutoreleasedReturnValue(), v6, objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "removeItemAtURL:error:", v7, 0), v8, objc_msgSend(v4, "setNeedsToAutogenerateArtworkVariants:", 1), LODWORD(v8) = objc_msgSend(v3, "executeUpdate:", @"INSERT OR REPLACE INTO _MLDatabaseProperties (value, key) VALUES (1, 'MLMigrationHasDisabledAstcOnErie')"), v7, !v8))
  {
    v9 = 0;
  }

  else
  {
    [v4 setCurrentUserVersion:1450090];
    v9 = [v3 executeUpdate:@"PRAGMA user_version = 1450090;"];
  }

  return v9;
}

uint64_t ML3MigrationFunction1450090to1510000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN cloud_author_handle TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:1510000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1510000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1510000to1510010(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  ML3MigrationRemoveInvalidContainerItems(@"SELECT container_pid, position FROM container_item LEFT OUTER JOIN item USING (item_pid) WHERE item.item_pid IS NULL", v4);
  [v3 setNeedsToReloadContainerMediaTypes:1];
  [v3 setCurrentUserVersion:1510010];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1510010;"];
  return v5;
}

uint64_t ML3MigrationFunction1510010to1510020(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  ML3MigrationRemoveInvalidContainerItems(@"SELECT container_item.container_pid, position FROM container JOIN container_item USING (container_pid) JOIN item USING (item_pid) WHERE distinguished_kind IN (19, 20) AND in_my_library = 0", v4);
  [v3 setNeedsToReloadContainerMediaTypes:1];
  [v3 setCurrentUserVersion:1510020];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1510020;"];
  return v5;
}

uint64_t ML3MigrationFunction1510020to1510030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!MSVDeviceOSIsInternalInstall() || !MGGetBoolAnswer() || (MGGetBoolAnswer() & 1) != 0)
  {
    goto LABEL_7;
  }

  v5 = [v3 executeQuery:@"SELECT 1 FROM _MLDatabaseProperties WHERE key = 'MLMigrationHasDisabledAstcOnErie'"];
  v6 = [v5 objectForFirstRowAndColumn];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork/Caches"];
    v10 = [v8 fileURLWithPath:v9 isDirectory:1];

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    [v11 removeItemAtURL:v10 error:0];

    [v4 setNeedsToAutogenerateArtworkVariants:1];
  }

  if (![v3 executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key ='MLMigrationHasDisabledAstcOnErie'"])
  {
    v12 = 0;
  }

  else
  {
LABEL_7:
    [v4 setCurrentUserVersion:1510030];
    v12 = [v3 executeUpdate:@"PRAGMA user_version = 1510030;"];
  }

  return v12;
}

uint64_t ML3MigrationFunction1510030to1510040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN hls_offline_playback_keys BLOB"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_video ADD COLUMN is_premium INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_video ADD COLUMN color_capability INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_video ADD COLUMN hls_color_capability INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_video ADD COLUMN hls_video_quality INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1510040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1510040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1510040to1510050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN sync_id INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1510050];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1510050;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1510050to1510060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN cloud_universal_library_id TEXT NOT NULL DEFAULT ''"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN cloud_universal_library_id TEXT NOT NULL DEFAULT ''"))
  {
    [v4 setCurrentUserVersion:1510060];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1510060;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1510060to1510070(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_artist ADD COLUMN sync_id INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE album_artist ADD COLUMN sync_id INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE composer ADD COLUMN sync_id INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE genre ADD COLUMN sync_id INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1510070];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1510070;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1510070to1550000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN hls_playlist_url TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:1550000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1550000;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1550000to1550010(void *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 executeQuery:@"SELECT item_pid FROM item WHERE (media_type & 8 != 0) AND album_order = 0 and album_pid != 0"];
  v6 = [v5 objectsInColumn:0];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v31 = *v33;
    v29 = v4;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v33 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        valuePtr = ML3CreateIntegerUUID();
        for (i = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr); ; i = v15)
        {
          v42 = i;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
          v13 = [v3 executeQuery:@"SELECT 1 FROM album WHERE album_pid = ?" withParameters:v12];
          v14 = [v13 hasAtLeastOneRow];

          if (!v14)
          {
            break;
          }

          valuePtr = ML3CreateIntegerUUID();
          v15 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
        }

        v41[0] = i;
        v41[1] = v10;
        v41[2] = v10;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
        v17 = [v3 executeUpdate:@"INSERT INTO album (album_pid withParameters:representative_item_pid error:{album_artist_pid, cloud_status, user_rating, all_compilations, album_year, keep_local, keep_local_status, contains_classical_work, date_played_local, user_rating_is_derived) SELECT ?, ?, album_artist_pid, cloud_status, user_rating, all_compilations, album_year, keep_local, keep_local_status, contains_classical_work, date_played_local, user_rating_is_derived FROM album WHERE album_pid=(SELECT album_pid FROM item WHERE item_pid=?)", v16, 0}];

        if (!v17 || (v40[0] = i, v40[1] = v10, [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v3, "executeUpdate:withParameters:error:", @"UPDATE item SET album_pid = ? WHERE item_pid = ?", v18, 0), v18, !v19) || (v39 = v10, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v39, 1), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v3, "executeUpdate:withParameters:error:", @"INSERT OR REPLACE INTO entity_revision (entity_pid, deleted, class, revision_type) VALUES(?, 0, 0, 0)", v20, 0), v20, !v21) || (v38 = v10, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v38, 1), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v3, "executeUpdate:withParameters:error:", @"DELETE FROM entity_revision WHERE entity_pid = ? AND revision_type > 0", v22, 0), v22, !v23))
        {

LABEL_18:
          v26 = obj;

          v27 = 0;
          v4 = v29;
          goto LABEL_19;
        }

        v37 = i;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        v25 = [v3 executeUpdate:@"INSERT OR REPLACE INTO entity_revision (entity_pid withParameters:deleted error:{class, revision_type) VALUES(?, 0, 4, 0)", v24, 0}];

        if (!v25)
        {
          goto LABEL_18;
        }

        ++v9;
      }

      while (v9 != v8);
      v8 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
      v4 = v29;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v26 = obj;

  [v4 setCurrentUserVersion:1550010];
  v27 = [v3 executeUpdate:@"PRAGMA user_version = 1550010;"];
LABEL_19:

  return v27;
}

uint64_t ML3MigrationFunction1550010to1560000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (MGGetBoolAnswer() && ![v3 executeUpdate:{@"INSERT OR REPLACE INTO _MLDatabaseProperties (value, key) VALUES (1, 'ForceSiriResetSync')"}])
  {
    v5 = 0;
  }

  else
  {
    [v4 setCurrentUserVersion:1560000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1560000;"];
  }

  return v5;
}

uint64_t ML3MigrationFunction1560000to1610000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE account (dsid INTEGER PRIMARY KEY DEFAULT 0, apple_id TEXT NOT NULL DEFAULT '', alt_dsid TEXT NOT NULL DEFAULT '')"}])
  {
    v5 = MLMobileUserHomeDirectory();
    v6 = [v5 stringByAppendingPathComponent:@"Library/MusicLibrary/AccountCache.sqlitedb"];
    v7 = [v6 msv_stringByResolvingRealPath];

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    LODWORD(v6) = [v8 fileExistsAtPath:v7];

    if (v6)
    {
      v9 = [[ML3DatabaseConnection alloc] initWithDatabasePath:v7];
      if ([(ML3DatabaseConnection *)v9 open])
      {
        v10 = [(ML3DatabaseConnection *)v9 executeQuery:@"SELECT dsid, apple_id FROM account"];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __ML3MigrationFunction1560000to1610000_block_invoke;
        v13[3] = &unk_278766118;
        v14 = v3;
        [v10 enumerateRowsWithBlock:v13];
        [(ML3DatabaseConnection *)v9 close];
      }
    }

    [v4 setCurrentUserVersion:1610000];
    v11 = [v3 executeUpdate:@"PRAGMA user_version = 1610000;"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __ML3MigrationFunction1560000to1610000_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (!a3)
    {
      v4 = a2;
      v5 = [v4 numberForColumnIndex:0];
      v6 = [v4 stringForColumnIndex:1];

      v7 = *(a1 + 32);
      v9[0] = v5;
      v9[1] = v6;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
      [v7 executeUpdate:@"INSERT OR REPLACE INTO account (dsid withParameters:apple_id) VALUES(? error:{?)", v8, 0}];
    }
  }
}

uint64_t ML3MigrationFunction1610000to1610010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN audio_capability INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_video ADD COLUMN hls_audio_capability INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1610010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1610010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1610010to1610020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE person (person_pid INTEGER PRIMARY KEY, cloud_id TEXT NOT NULL UNIQUE, handle TEXT NOT NULL DEFAULT '', name TEXT NOT NULL DEFAULT '', image_url TEXT NOT NULL DEFAULT '', image_token TEXT NOT NULL DEFAULT '')"}] && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE container_item_person (container_item_person_pid INTEGER PRIMARY KEY, container_item_pid INTEGER NOT NULL DEFAULT 0, person_pid INTEGER NOT NULL DEFAULT 0, UNIQUE (container_item_pid, person_pid))") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS PersonPID ON person (person_pid ASC)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS PersonCloudID ON person (cloud_id ASC)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ContainerItemPerson ON container_item_person (container_item_pid ASC)") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN should_display_index INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:1610020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1610020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1610020to1610030(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = a1;
  v6 = [v3 defaultManager];
  v7 = MLMobileUserHomeDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"Library/MusicLibrary/AccountCache.sqlitedb"];

  [v6 removeItemAtPath:v8 error:0];
  v9 = [v8 stringByAppendingString:@"-shm"];
  [v6 removeItemAtPath:v9 error:0];

  v10 = [v8 stringByAppendingString:@"-wal"];
  [v6 removeItemAtPath:v10 error:0];

  [v4 setCurrentUserVersion:1610030];
  v11 = [v5 executeUpdate:@"PRAGMA user_version = 1610030;"];

  return v11;
}

uint64_t ML3MigrationFunction1610030to1710000(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item ADD COLUMN date_downloaded INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN date_downloaded INTEGER NOT NULL DEFAULT 0"))
  {
    v5 = MLMobileUserHomeDirectory();
    v6 = [v5 stringByAppendingPathComponent:@"Media"];

    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Start back filling date_downloaded", buf, 2u);
    }

    v9 = [v3 executeQuery:{@"SELECT item.ROWID, base_location.path, item_extra.location FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE item.base_location_id >= 300 "}];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __ML3MigrationFunction1610030to1710000_block_invoke;
    v19[3] = &unk_278763E40;
    v20 = v6;
    v10 = v7;
    v21 = v10;
    v11 = v6;
    [v9 enumerateRowsWithBlock:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __ML3MigrationFunction1610030to1710000_block_invoke_2625;
    v17[3] = &unk_27875D1C0;
    v12 = v3;
    v18 = v12;
    [v10 enumerateKeysAndObjectsUsingBlock:v17];
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 count];
      *buf = 134217984;
      v23 = v14;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Finished back filling date_downloaded for %ld items", buf, 0xCu);
    }

    [v4 setCurrentUserVersion:1710000];
    v15 = [v12 executeUpdate:@"PRAGMA user_version = 1710000;"];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __ML3MigrationFunction1610030to1710000_block_invoke(uint64_t a1, void *a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 stringForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];

  v7 = MEMORY[0x277CCACA8];
  v21[0] = *(a1 + 32);
  v21[1] = v5;
  v21[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v9 = [v7 pathWithComponents:v8];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v10 fileExistsAtPath:v9])
  {
    v16 = 0;
    v11 = [v10 attributesOfItemAtPath:v9 error:&v16];
    v12 = v16;
    if (v12 || !v11)
    {
      v13 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = v9;
        v19 = 2114;
        v20 = v12;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Could not get attributes for item at %{public}@, error=%{public}@", buf, 0x16u);
      }
    }

    else
    {
      v13 = [v11 objectForKey:*MEMORY[0x277CCA108]];
      if (v13)
      {
        v14 = *(a1 + 40);
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
        [v14 setObject:v13 forKey:v15];
      }

      else
      {
        v15 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v18 = v9;
          _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Could not get creation date for item at %{public}@", buf, 0xCu);
        }
      }
    }
  }
}

void __ML3MigrationFunction1610030to1710000_block_invoke_2625(uint64_t a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v18[0] = v6;
  v18[1] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v13 = 0;
  v9 = [v7 executeUpdate:@"UPDATE item SET date_downloaded = ? WHERE item_pid = ?" withParameters:v8 error:&v13];
  v10 = v13;

  if ((v9 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 longLongValue];
      *buf = 134218242;
      v15 = v12;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Could not update date downloaded for item_pid %lld, error=%{public}@", buf, 0x16u);
    }
  }
}

uint64_t ML3MigrationFunction1710000to1710010(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = [v3 originalUserVersion];
  v6 = os_log_create("com.apple.amp.medialibrary", "Migration");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 <= 1709999)
  {
    if (v7)
    {
      v10 = 136446466;
      v11 = "ML3MigrationFunction1710000to1710010";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Found original user version %d, which pre-dates any work specific to iOS 13.0. Leaving subscription status cache intact.", &v10, 0x12u);
    }
  }

  else
  {
    if (v7)
    {
      v10 = 136446466;
      v11 = "ML3MigrationFunction1710000to1710010";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Found original user version %d, which indicates a pre-release version of iOS 13.0 was previously installed. Clearing subscription status cache.", &v10, 0x12u);
    }

    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.itunescloud"];
    [v6 removeObjectForKey:@"ICDefaultsCachedSubscriptionStatus"];
    [v6 synchronize];
  }

  [v3 setCurrentUserVersion:1710010];
  v8 = [v4 executeUpdate:@"PRAGMA user_version = 1710010;"];

  return v8;
}

uint64_t ML3MigrationFunction1710010to1710020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album_artist ADD COLUMN cloud_universal_library_id TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:1710020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1710020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1710020to1710030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item ADD COLUMN download_source_container_pid INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1710030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1710030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1710030to1710040(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v3 executeQuery:@"select container_pid from container where distinguished_kind = 10000 AND is_container_type_active_target AND date_created != (select max(date_created) FROM container where distinguished_kind = 10000 AND is_container_type_active_target)"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __ML3MigrationFunction1710030to1710040_block_invoke;
  v19[3] = &unk_278766118;
  v7 = v5;
  v20 = v7;
  [v6 enumerateRowsWithBlock:v19];
  v8 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Will remove duplicate plaback history playlists=%{public}@", buf, 0xCu);
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __ML3MigrationFunction1710030to1710040_block_invoke_2658;
  v17 = &unk_278762520;
  v9 = v3;
  v18 = v9;
  [v7 enumerateObjectsUsingBlock:&v14];
  if (([v9 executeUpdate:{@"delete from container_item where container_pid in (select container_pid from container where distinguished_kind = 10000 AND is_container_type_active_target AND date_created != (select max(date_created) FROM container where distinguished_kind = 10000 AND is_container_type_active_target))", v14, v15, v16, v17}] & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Could not delete duplicate container_pids from container_item", buf, 2u);
    }
  }

  if (([v9 executeUpdate:@"delete from container where container_pid in (select container_pid from container where distinguished_kind = 10000 AND is_container_type_active_target AND date_created != (select max(date_created) from container where distinguished_kind = 10000 AND is_container_type_active_target))"] & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Could not delete duplicate container_pids from container", buf, 2u);
    }
  }

  [v4 setCurrentUserVersion:1710040];
  v12 = [v9 executeUpdate:@"PRAGMA user_version = 1710040;"];

  return v12;
}

void __ML3MigrationFunction1710030to1710040_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
  [v4 addObject:v5];
}

void __ML3MigrationFunction1710030to1710040_block_invoke_2658(uint64_t a1, void *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v14[0] = v3;
  v14[1] = &unk_2840C88B8;
  v14[2] = &unk_2840C88D0;
  v14[3] = &unk_2840C88E8;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  v9 = 0;
  v6 = [v4 executeUpdate:@"INSERT OR REPLACE INTO entity_revision (entity_pid withParameters:revision_type error:{deleted, class) VALUES(?, ?, ?, ?)", v5, &v9}];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Could not update entity_revision table for containerPID=%{public}@, error=%{public}@", buf, 0x16u);
    }
  }
}

uint64_t ML3MigrationFunction1710040to1710050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((ML3MigrationColumnExistsInTable(v3, @"download_source_container_pid", @"item") & 1) != 0 || [v3 executeUpdate:@"ALTER TABLE item ADD COLUMN download_source_container_pid INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1710050];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1710050;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1710050to1710051(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  _ML3MigrationFunctionPatchUpIncorrectDateDownloaded(v4);
  [v3 setCurrentUserVersion:1710051];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1710051;"];
  return v5;
}

void _ML3MigrationFunctionPatchUpIncorrectDateDownloaded(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MLMobileUserHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Media"];

  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "Starting to patch up date_downloaded", buf, 2u);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v1 executeQuery:{@"SELECT item.ROWID, base_location.path, item_extra.location, item.date_downloaded FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE item.base_location_id >= 300 AND item.date_downloaded != 0"}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ML3MigrationFunctionPatchUpIncorrectDateDownloaded_block_invoke;
  v14[3] = &unk_278763E40;
  v15 = v3;
  v7 = v5;
  v16 = v7;
  v8 = v3;
  [v6 enumerateRowsWithBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ML3MigrationFunctionPatchUpIncorrectDateDownloaded_block_invoke_2690;
  v12[3] = &unk_27875D1C0;
  v13 = v1;
  v9 = v1;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];
  v10 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 count];
    *buf = 134217984;
    v18 = v11;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "Finished patching up date_downloaded for %ld items", buf, 0xCu);
  }
}

uint64_t ML3MigrationFunction1710051to1710060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((MSVDeviceSupportsSideLoadedMediaContent() & 1) == 0)
  {
    if (([v3 executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key ='MLLastKnownActiveLockerAccountDSID'"] & 1) == 0)
    {
      v5 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_ERROR, "Could not remove last known locker account ID", buf, 2u);
      }
    }

    if (([v3 executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key ='MLCloudLibraryPrefersToMerge'"] & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Could not remove cloud library merge preference", v9, 2u);
      }
    }
  }

  [v4 setCurrentUserVersion:1710060];
  v7 = [v3 executeUpdate:@"PRAGMA user_version = 1710060;"];

  return v7;
}

uint64_t ML3MigrationFunction1710060to1710061(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  _ML3MigrationFunctionPatchUpIncorrectDateDownloaded(v4);
  [v3 setCurrentUserVersion:1710061];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1710061;"];
  return v5;
}

uint64_t ML3MigrationFunction1710061to1750000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Merging split is_compilation albums", buf, 2u);
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [v3 executeQuery:{@"SELECT album_artist_pid, album FROM album GROUP BY album, album_artist_pid HAVING MIN(all_compilations) = 0 AND MAX(all_compilations) = 1"}];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __ML3MigrationFunction1710061to1750000_block_invoke;
  v23[3] = &unk_278766118;
  v24 = v7;
  v9 = v7;
  [v8 enumerateRowsWithBlock:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __ML3MigrationFunction1710061to1750000_block_invoke_2;
  v20[3] = &unk_27875D1E8;
  v10 = v3;
  v21 = v10;
  v22 = v6;
  v11 = v6;
  [v9 enumerateObjectsUsingBlock:v20];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __ML3MigrationFunction1710061to1750000_block_invoke_2724;
  v18 = &unk_278762520;
  v19 = v10;
  v12 = v10;
  [v11 enumerateObjectsUsingBlock:&v15];
  [v4 setCurrentUserVersion:{1750000, v15, v16, v17, v18}];

  v13 = [v12 executeUpdate:@"PRAGMA user_version = 1750000;"];
  return v13;
}

void __ML3MigrationFunction1710061to1750000_block_invoke(uint64_t a1, void *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 numberForColumnIndex:0];
  v7[0] = v4;
  v5 = [v3 stringForColumnIndex:1];

  v7[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  [v2 addObject:v6];
}

void __ML3MigrationFunction1710061to1750000_block_invoke_2(uint64_t a1, void *a2)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 executeQuery:@"SELECT album_pid FROM album WHERE all_compilations = 0 AND album_artist_pid = ? AND album = ?" withParameters:v4];
  v6 = [v5 int64ValueForFirstRowAndColumn];

  v7 = [*(a1 + 32) executeQuery:@"SELECT album_pid FROM album WHERE all_compilations = 1 AND album_artist_pid = ? AND album = ?" withParameters:v4];

  v8 = [v7 int64ValueForFirstRowAndColumn];
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v49[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  v12 = [v9 executeQuery:@"SELECT item_pid FROM item WHERE album_pid = ?" withParameters:v11];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __ML3MigrationFunction1710061to1750000_block_invoke_3;
  v38[3] = &unk_278766118;
  v39 = *(a1 + 40);
  [v12 enumerateRowsWithBlock:v38];
  v13 = *(a1 + 32);
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v48[0] = v14;
  v48[1] = &unk_2840C88B8;
  v48[2] = &unk_2840C88D0;
  v48[3] = &unk_2840C8900;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v37 = 0;
  LOBYTE(v13) = [v13 executeUpdate:@"INSERT OR REPLACE INTO entity_revision (entity_pid withParameters:revision_type error:{deleted, class) VALUES(?, ?, ?, ?)", v15, &v37}];
  v16 = v37;

  if ((v13 & 1) == 0)
  {
    v17 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
      *buf = 138543618;
      v42 = v18;
      v43 = 2114;
      v44 = v16;
      _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "Could not update entity_revision table for album_pid=%{public}@, error=%{public}@", buf, 0x16u);
    }
  }

  v19 = *(a1 + 32);
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  v47[0] = v20;
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v47[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v36 = v16;
  v23 = [v19 executeUpdate:@"UPDATE item SET album_pid = ? WHERE album_pid = ?" withParameters:v22 error:&v36];
  v24 = v36;

  if ((v23 & 1) == 0)
  {
    v25 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
      v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
      *buf = 138543874;
      v42 = v26;
      v43 = 2114;
      v44 = v27;
      v45 = 2114;
      v46 = v24;
      _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_ERROR, "Could not update item album_pid from %{public}@ to %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  v28 = *(a1 + 32);
  v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v40 = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v35 = v24;
  v31 = [v28 executeUpdate:@"DELETE FROM album WHERE album_pid = ?" withParameters:v30 error:&v35];
  v32 = v35;

  if ((v31 & 1) == 0)
  {
    v33 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
      *buf = 138543618;
      v42 = v34;
      v43 = 2114;
      v44 = v32;
      _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_ERROR, "Could not delete album with pid=%{public}@, error=%{public}@", buf, 0x16u);
    }
  }
}

void __ML3MigrationFunction1710061to1750000_block_invoke_2724(uint64_t a1, void *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v14[0] = v3;
  v14[1] = &unk_2840C88B8;
  v14[2] = &unk_2840C88B8;
  v14[3] = &unk_2840C8918;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  v9 = 0;
  v6 = [v4 executeUpdate:@"INSERT OR REPLACE INTO entity_revision (entity_pid withParameters:revision_type error:{deleted, class) VALUES(?, ?, ?, ?)", v5, &v9}];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Could not update entity_revision table for item_pid=%{public}@, error=%{public}@", buf, 0x16u);
    }
  }
}

void __ML3MigrationFunction1710061to1750000_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 numberForColumnIndex:0];
  [v2 addObject:v3];
}

uint64_t ML3MigrationFunction1750000to1770000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "Patch up podcasts synced with incorrect composite media type", buf, 2u);
  }

  if ([v3 executeUpdate:@"UPDATE item SET media_type=4 WHERE media_type=12"])
  {
    [v4 setCurrentUserVersion:1770000];
    v6 = [v3 executeUpdate:@"PRAGMA user_version = 1770000;"];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Could not patch up composite media_type for synced podcasts", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t ML3MigrationFunction1770000to1800000(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1800000];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1800000;"];

  return v4;
}

uint64_t ML3MigrationFunction1800000to1810000(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:1810000];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 1810000;"];

  return v4;
}

uint64_t ML3MigrationFunction1810000to1850000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN is_personalized_mix INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v7 = "Could not update container table to support personalized type";
      v8 = &v11;
LABEL_8:
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    }

LABEL_9:

    v5 = 0;
    goto LABEL_10;
  }

  if (([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN personalized_mix_sort_key TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Could not update container table to support personalized sort key";
      v8 = &v10;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [v4 setCurrentUserVersion:1850000];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 1850000;"];
LABEL_10:

  return v5;
}

uint64_t ML3MigrationFunction1850000to1850010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_stats ADD COLUMN liked_state_changed_date INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1850010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1850010;"];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Could not update item_stats table to support liked state change date", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1850010to1850020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_extra ADD COLUMN is_preorder INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1850020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1850020;"];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to add is_preorder column to item_extra table", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1850020to1850030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER  NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, is_personalized_mix, personalized_mix_sort_key FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"])
  {
    [v4 setCurrentUserVersion:1850030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1850030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1850030to1850040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN hls_asset_traits INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = 0;
    v7 = "Failed to add hls_key_server_url column to item_video table";
    v8 = &v12;
LABEL_11:
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_12;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN hls_key_server_url TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = 0;
    v7 = "Failed to add hls_key_server_url column to item_video table";
    v8 = &v11;
    goto LABEL_11;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN hls_key_cert_url TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Failed to add hls_key_cert_url column to item_video table";
      v8 = &v10;
      goto LABEL_11;
    }

LABEL_12:

    v5 = 0;
    goto LABEL_13;
  }

  [v4 setCurrentUserVersion:1850040];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 1850040;"];
LABEL_13:

  return v5;
}

uint64_t ML3MigrationFunction1850040to1850050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN reporting_store_item_id INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v7 = "Failed to add reporting_store_item_id column to item_store table";
      v8 = &v11;
LABEL_8:
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    }

LABEL_9:

    v5 = 0;
    goto LABEL_10;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN asset_store_item_id INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Failed to add asset_store_item_id column to item_store table";
      v8 = &v10;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [v4 setCurrentUserVersion:1850050];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 1850050;"];
LABEL_10:

  return v5;
}

uint64_t ML3MigrationFunction1850050to1910000(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (MGGetBoolAnswer() && MGGetBoolAnswer())
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork/Caches"];
    v7 = [v5 fileURLWithPath:v6 isDirectory:1];

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    [v8 removeItemAtURL:v7 error:0];

    [v3 setNeedsToAutogenerateArtworkVariants:1];
  }

  [v3 setCurrentUserVersion:1910000];
  v9 = [v4 executeUpdate:@"PRAGMA user_version = 1910000;"];

  return v9;
}

uint64_t ML3MigrationFunction1910000to1910010(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CFLocaleCopyCurrent();
  v6 = MEMORY[0x2318CC6A0]();
  HasPrefix = CFStringHasPrefix(v6, @"ja");
  CFRelease(v5);
  [v3 setNeedsToUpdateSortMap:1];
  if (HasPrefix)
  {
    [v3 setForceUpdateOriginals:1];
  }

  [v3 setCurrentUserVersion:1910010];
  v8 = [v4 executeUpdate:@"PRAGMA user_version = 1910010;"];

  return v8;
}

uint64_t ML3MigrationFunction1910010to1910020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE lyrics ADD COLUMN time_synced_lyrics_available INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:1910020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1910020;"];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to add time_synced_lyrics_available column to item_lyrics table", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1910020to1910030(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CFLocaleCopyCurrent();
  v6 = MEMORY[0x2318CC6A0]();
  HasPrefix = CFStringHasPrefix(v6, @"ja");
  CFRelease(v5);
  [v3 setNeedsToUpdateSortMap:1];
  if (HasPrefix)
  {
    [v3 setForceUpdateOriginals:1];
  }

  [v3 setCurrentUserVersion:1910030];
  v8 = [v4 executeUpdate:@"PRAGMA user_version = 1910030;"];

  return v8;
}

uint64_t ML3MigrationFunction1910030to1950000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:@"ALTER TABLE item_video ADD COLUMN hls_key_server_protocol TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v7 = "Failed to add hls_key_server_protocol column to item_video table";
      v8 = &v11;
LABEL_8:
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    }

LABEL_9:

    v5 = 0;
    goto LABEL_10;
  }

  if (([v3 executeUpdate:@"UPDATE item_video SET hls_key_server_protocol = 'simplified' WHERE item_video.hls_key_server_url != '' AND item_video.hls_asset_traits != 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Failed to back-fill hls_key_server_protocol column";
      v8 = &v10;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [v4 setCurrentUserVersion:1950000];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 1950000;"];
LABEL_10:

  return v5;
}

uint64_t ML3MigrationFunction1950000to1950010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE booklet (booklet_pid INTEGER PRIMARY KEY, item_pid INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', store_item_id INTEGER NOT NULL DEFAULT 0, redownload_params TEXT NOT NULL DEFAULT '', file_size INTEGER NOT NULL DEFAULT 0)"}] && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS BookletItemPersistentID ON booklet (item_pid ASC)"))
  {
    [v4 setCurrentUserVersion:1950010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1950010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1950010to1950020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_new (item_pid INTEGER PRIMARY KEY, media_type INTEGER NOT NULL DEFAULT 0, title_order INTEGER NOT NULL DEFAULT 0, title_order_section INTEGER NOT NULL DEFAULT 0, item_artist_pid INTEGER NOT NULL DEFAULT 0, item_artist_order INTEGER NOT NULL DEFAULT 0, item_artist_order_section INTEGER NOT NULL DEFAULT 0, series_name_order INTEGER NOT NULL DEFAULT 0, series_name_order_section INTEGER NOT NULL DEFAULT 0, album_pid INTEGER NOT NULL DEFAULT 0, album_order INTEGER NOT NULL DEFAULT 0, album_order_section INTEGER NOT NULL DEFAULT 0, album_artist_pid INTEGER NOT NULL DEFAULT 0, album_artist_order INTEGER NOT NULL DEFAULT 0, album_artist_order_section INTEGER NOT NULL DEFAULT 0, composer_pid INTEGER NOT NULL DEFAULT 0, composer_order INTEGER NOT NULL DEFAULT 0, composer_order_section INTEGER NOT NULL DEFAULT 0, genre_id INTEGER NOT NULL DEFAULT 0, genre_order INTEGER NOT NULL DEFAULT 0, genre_order_section INTEGER NOT NULL DEFAULT 0, disc_number INTEGER NOT NULL DEFAULT 0, track_number INTEGER NOT NULL DEFAULT 0, episode_sort_id INTEGER NOT NULL DEFAULT 0, base_location_id INTEGER NOT NULL DEFAULT 0, remote_location_id INTEGER NOT NULL DEFAULT 0, exclude_from_shuffle INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, in_my_library INTEGER NOT NULL DEFAULT 0, is_compilation INTEGER NOT NULL DEFAULT 0, date_added INTEGER NOT NULL DEFAULT 0, show_composer INTEGER NOT NULL DEFAULT 0, is_music_show INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, download_source_container_pid INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_new (item_pid, media_type, title_order, title_order_section, item_artist_pid, item_artist_order, item_artist_order_section, series_name_order, series_name_order_section, album_pid, album_order, album_order_section, album_artist_pid, album_artist_order, album_artist_order_section, composer_pid, composer_order, composer_order_section, genre_id, genre_order, genre_order_section, disc_number, track_number, episode_sort_id, base_location_id, remote_location_id, exclude_from_shuffle, keep_local, keep_local_status, in_my_library, is_compilation, date_added, show_composer, is_music_show, date_downloaded, download_source_container_pid) SELECT item_pid, media_type, title_order, title_order_section, item_artist_pid, item_artist_order, item_artist_order_section, series_name_order, series_name_order_section, album_pid, album_order, album_order_section, album_artist_pid, album_artist_order, album_artist_order_section, composer_pid, composer_order, composer_order_section, genre_id, genre_order, genre_order_section, disc_number, track_number, episode_sort_id, base_location_id, remote_location_id, exclude_from_shuffle, keep_local, keep_local_status, in_my_library, is_compilation, date_added, show_composer, is_music_show, date_downloaded, download_source_container_pid FROM item"}]
    && [v3 executeUpdate:@"DROP TABLE item"]
    && [v3 executeUpdate:@"ALTER TABLE item_new RENAME TO item"]
    && [v3 executeUpdate:{@"CREATE TABLE album_new (album_pid INTEGER PRIMARY KEY, album TEXT NOT NULL DEFAULT '', sort_album TEXT, album_artist_pid INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, user_rating INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, all_compilations INTEGER NOT NULL DEFAULT 0, feed_url TEXT, season_number INTEGER NOT NULL DEFAULT 0, album_year INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, contains_classical_work INTEGER NOT NULL DEFAULT 0, date_played_local INTEGER NOT NULL DEFAULT 0, user_rating_is_derived INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO album_new (album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, app_data, contains_classical_work, date_played_local, user_rating_is_derived, sync_id) SELECT album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, app_data, contains_classical_work, date_played_local, user_rating_is_derived, sync_id FROM album"}]
    && [v3 executeUpdate:@"DROP TABLE album"]
    && [v3 executeUpdate:@"ALTER TABLE album_new RENAME TO album"]
    && [v3 executeUpdate:{@"CREATE TABLE item_artist_new (item_artist_pid INTEGER PRIMARY KEY, item_artist TEXT NOT NULL DEFAULT '', sort_item_artist TEXT, series_name TEXT NOT NULL DEFAULT '', sort_series_name TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, sync_id INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_artist_new (item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, app_data, sync_id) SELECT item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, app_data, sync_id FROM item_artist"}]
    && [v3 executeUpdate:@"DROP TABLE item_artist"]
    && [v3 executeUpdate:@"ALTER TABLE item_artist_new RENAME TO item_artist"]
    && [v3 executeUpdate:{@"CREATE TABLE album_artist_new (album_artist_pid INTEGER PRIMARY KEY, album_artist TEXT NOT NULL DEFAULT '', sort_album_artist TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, sync_id INTEGER NOT NULL DEFAULT 0, cloud_universal_library_id TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"INSERT INTO album_artist_new (album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, app_data, sync_id, cloud_universal_library_id) SELECT album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, app_data, sync_id, cloud_universal_library_id FROM album_artist"}]
    && [v3 executeUpdate:@"DROP TABLE album_artist"]
    && [v3 executeUpdate:@"ALTER TABLE album_artist_new RENAME TO album_artist"]
    && [v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"]
    && [v3 executeUpdate:{@"CREATE TABLE genre_new (genre_id INTEGER PRIMARY KEY, genre TEXT NOT NULL DEFAULT '', grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO genre_new (genre_id, genre, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status, sync_id) SELECT genre_id, genre, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status, sync_id FROM genre"}]
    && [v3 executeUpdate:@"DROP TABLE genre"]
    && [v3 executeUpdate:@"ALTER TABLE genre_new RENAME TO genre"]
    && [v3 executeUpdate:{@"CREATE TABLE composer_new (composer_pid INTEGER PRIMARY KEY, composer TEXT NOT NULL DEFAULT '', sort_composer TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO composer_new (composer_pid, composer, sort_composer, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status, sync_id) SELECT composer_pid, composer, sort_composer, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status, sync_id FROM composer"}]
    && [v3 executeUpdate:@"DROP TABLE composer"]
    && [v3 executeUpdate:@"ALTER TABLE composer_new RENAME TO composer"])
  {
    [v4 setCurrentUserVersion:1950020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 1950020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction1950020to1950030(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:1950030];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 1950030;"];
  return v5;
}

uint64_t ML3MigrationFunction1950030to1950040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN classical_experience_available INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = 0;
    v7 = "Failed to add classical_experience_available column to album table";
    v8 = &v12;
LABEL_11:
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_12;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album_artist ADD COLUMN classical_experience_available INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = 0;
    v7 = "Failed to add classical_experience_available column to album_artist table";
    v8 = &v11;
    goto LABEL_11;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_artist ADD COLUMN classical_experience_available INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Failed to add classical_experience_available column to item_artist table";
      v8 = &v10;
      goto LABEL_11;
    }

LABEL_12:

    v5 = 0;
    goto LABEL_13;
  }

  [v4 setCurrentUserVersion:1950040];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 1950040;"];
LABEL_13:

  return v5;
}

uint64_t ML3MigrationFunction1950040to2000000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN extended_playback_attribute INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:2000000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2000000;"];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to add extended_playback_attribute column to item_store", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2000000to2000010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_new (item_pid INTEGER PRIMARY KEY, media_type INTEGER NOT NULL DEFAULT 0, title_order INTEGER NOT NULL DEFAULT 0, title_order_section INTEGER NOT NULL DEFAULT 0, item_artist_pid INTEGER NOT NULL DEFAULT 0, item_artist_order INTEGER NOT NULL DEFAULT 0, item_artist_order_section INTEGER NOT NULL DEFAULT 0, series_name_order INTEGER NOT NULL DEFAULT 0, series_name_order_section INTEGER NOT NULL DEFAULT 0, album_pid INTEGER NOT NULL DEFAULT 0, album_order INTEGER NOT NULL DEFAULT 0, album_order_section INTEGER NOT NULL DEFAULT 0, album_artist_pid INTEGER NOT NULL DEFAULT 0, album_artist_order INTEGER NOT NULL DEFAULT 0, album_artist_order_section INTEGER NOT NULL DEFAULT 0, composer_pid INTEGER NOT NULL DEFAULT 0, composer_order INTEGER NOT NULL DEFAULT 0, composer_order_section INTEGER NOT NULL DEFAULT 0, genre_id INTEGER NOT NULL DEFAULT 0, genre_order INTEGER NOT NULL DEFAULT 0, genre_order_section INTEGER NOT NULL DEFAULT 0, disc_number INTEGER NOT NULL DEFAULT 0, track_number INTEGER NOT NULL DEFAULT 0, episode_sort_id INTEGER NOT NULL DEFAULT 0, base_location_id INTEGER NOT NULL DEFAULT 0, remote_location_id INTEGER NOT NULL DEFAULT 0, exclude_from_shuffle INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, in_my_library INTEGER NOT NULL DEFAULT 0, is_compilation INTEGER NOT NULL DEFAULT 0, date_added INTEGER NOT NULL DEFAULT 0, show_composer INTEGER NOT NULL DEFAULT 0, is_music_show INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, download_source_container_pid INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_new (item_pid, media_type, title_order, title_order_section, item_artist_pid, item_artist_order, item_artist_order_section, series_name_order, series_name_order_section, album_pid, album_order, album_order_section, album_artist_pid, album_artist_order, album_artist_order_section, composer_pid, composer_order, composer_order_section, genre_id, genre_order, genre_order_section, disc_number, track_number, episode_sort_id, base_location_id, remote_location_id, exclude_from_shuffle, keep_local, keep_local_status, keep_local_constraints, in_my_library, is_compilation, date_added, show_composer, is_music_show, date_downloaded, download_source_container_pid) SELECT item_pid, media_type, title_order, title_order_section, item_artist_pid, item_artist_order, item_artist_order_section, series_name_order, series_name_order_section, album_pid, album_order, album_order_section, album_artist_pid, album_artist_order, album_artist_order_section, composer_pid, composer_order, composer_order_section, genre_id, genre_order, genre_order_section, disc_number, track_number, episode_sort_id, base_location_id, remote_location_id, exclude_from_shuffle, keep_local, keep_local_status, keep_local_constraints, in_my_library, is_compilation, date_added, show_composer, is_music_show, date_downloaded, download_source_container_pid FROM item"}]
    && [v3 executeUpdate:@"DROP TABLE item"]
    && [v3 executeUpdate:@"ALTER TABLE item_new RENAME TO item"]
    && [v3 executeUpdate:{@"CREATE TABLE album_new (album_pid INTEGER PRIMARY KEY, album TEXT NOT NULL DEFAULT '', sort_album TEXT, album_artist_pid INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, user_rating INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, all_compilations INTEGER NOT NULL DEFAULT 0, feed_url TEXT, season_number INTEGER NOT NULL DEFAULT 0, album_year INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, contains_classical_work INTEGER NOT NULL DEFAULT 0, date_played_local INTEGER NOT NULL DEFAULT 0, user_rating_is_derived INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, classical_experience_available INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO album_new (album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, keep_local_constraints, app_data, contains_classical_work, date_played_local, user_rating_is_derived, sync_id, classical_experience_available) SELECT album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, keep_local_constraints, app_data, contains_classical_work, date_played_local, user_rating_is_derived, sync_id, classical_experience_available FROM album"}]
    && [v3 executeUpdate:@"DROP TABLE album"]
    && [v3 executeUpdate:@"ALTER TABLE album_new RENAME TO album"]
    && [v3 executeUpdate:{@"CREATE TABLE item_artist_new (item_artist_pid INTEGER PRIMARY KEY, item_artist TEXT NOT NULL DEFAULT '', sort_item_artist TEXT, series_name TEXT NOT NULL DEFAULT '', sort_series_name TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, sync_id INTEGER NOT NULL DEFAULT 0, classical_experience_available INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_artist_new (item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_constraints, app_data, sync_id, classical_experience_available) SELECT item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_constraints, app_data, sync_id, classical_experience_available FROM item_artist"}]
    && [v3 executeUpdate:@"DROP TABLE item_artist"]
    && [v3 executeUpdate:@"ALTER TABLE item_artist_new RENAME TO item_artist"]
    && [v3 executeUpdate:{@"CREATE TABLE album_artist_new (album_artist_pid INTEGER PRIMARY KEY, album_artist TEXT NOT NULL DEFAULT '', sort_album_artist TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, sync_id INTEGER NOT NULL DEFAULT 0, cloud_universal_library_id TEXT NOT NULL DEFAULT '', classical_experience_available INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO album_artist_new (album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_constraints, app_data, sync_id, cloud_universal_library_id, classical_experience_available) SELECT album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_constraints, app_data, sync_id, cloud_universal_library_id, classical_experience_available FROM album_artist"}]
    && [v3 executeUpdate:@"DROP TABLE album_artist"]
    && [v3 executeUpdate:@"ALTER TABLE album_artist_new RENAME TO album_artist"]
    && [v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"]
    && [v3 executeUpdate:{@"CREATE TABLE genre_new (genre_id INTEGER PRIMARY KEY, genre TEXT NOT NULL DEFAULT '', grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO genre_new (genre_id, genre, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status, keep_local_constraints, sync_id) SELECT genre_id, genre, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status, keep_local_constraints, sync_id FROM genre"}]
    && [v3 executeUpdate:@"DROP TABLE genre"]
    && [v3 executeUpdate:@"ALTER TABLE genre_new RENAME TO genre"]
    && [v3 executeUpdate:{@"CREATE TABLE composer_new (composer_pid INTEGER PRIMARY KEY, composer TEXT NOT NULL DEFAULT '', sort_composer TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO composer_new (composer_pid, composer, sort_composer, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status, keep_local_constraints, sync_id) SELECT composer_pid, composer, sort_composer, grouping_key, cloud_status, representative_item_pid, keep_local, keep_local_status, keep_local_constraints, sync_id FROM composer"}]
    && [v3 executeUpdate:@"DROP TABLE composer"]
    && [v3 executeUpdate:@"ALTER TABLE composer_new RENAME TO composer"])
  {
    [v4 setCurrentUserVersion:2000010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2000010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2000010to2000020(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:2000020];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2000020;"];
  return v5;
}

uint64_t ML3MigrationFunction2000020to2030000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN extended_lyrics_attribute INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:2030000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2030000;"];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to add extended_lyrics_attribute column to item_store", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2030000to2050000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:@"ALTER TABLE item_stats ADD COLUMN is_favorite INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add is favorite column to item_stats";
LABEL_32:
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v9, 2u);
    goto LABEL_33;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_stats ADD COLUMN date_favorited INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add date favorited column to item_stats";
    goto LABEL_32;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN is_favorite INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add is_favorite column to album";
    goto LABEL_32;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN date_favorited INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add date favorited column to album";
    goto LABEL_32;
  }

  if (([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN is_favorite INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add is favorite column to container";
    goto LABEL_32;
  }

  if (([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN date_favorited INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add date favorited column to container";
    goto LABEL_32;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_artist ADD COLUMN is_favorite INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add is favorite column to item_artist";
    goto LABEL_32;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_artist ADD COLUMN date_favorited INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add date favorited column to item_artist";
    goto LABEL_32;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album_artist ADD COLUMN is_favorite INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *v9 = 0;
    v7 = "Failed to add is favorite column to album_artist";
    goto LABEL_32;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album_artist ADD COLUMN date_favorited INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      v7 = "Failed to add date favorited column to album_artist";
      goto LABEL_32;
    }

LABEL_33:

    v5 = 0;
    goto LABEL_34;
  }

  [v4 setCurrentUserVersion:2050000];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 2050000;"];
LABEL_34:

  return v5;
}

uint64_t ML3MigrationFunction2050000to2050010(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = a2;
  v5 = a1;
  v6 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork/Caches"];
  v7 = [v3 fileURLWithPath:v6 isDirectory:1];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  [v8 removeItemAtURL:v7 error:0];

  [v4 setNeedsToAutogenerateArtworkVariants:1];
  [v4 setCurrentUserVersion:2050010];

  v9 = [v5 executeUpdate:@"PRAGMA user_version = 2050010;"];
  return v9;
}

uint64_t ML3MigrationFunction2050010to2050020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN store_id INTEGER NOT NULL DEFAULT 0"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v15 = 0;
    v7 = "Failed to add store id column to album";
    v8 = &v15;
LABEL_20:
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_21;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN cloud_library_id TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v14 = 0;
    v7 = "Failed to add cloud library id column to album";
    v8 = &v14;
    goto LABEL_20;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album ADD COLUMN cloud_universal_library_id TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v13 = 0;
    v7 = "Failed to add universal library id column to album";
    v8 = &v13;
    goto LABEL_20;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_artist ADD COLUMN cloud_library_id TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v12 = 0;
    v7 = "Failed to add cloud library id column to item_artist";
    v8 = &v12;
    goto LABEL_20;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_artist ADD COLUMN cloud_universal_library_id TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v11 = 0;
    v7 = "Failed to add universal library id column to item_artist";
    v8 = &v11;
    goto LABEL_20;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album_artist ADD COLUMN cloud_library_id TEXT NOT NULL DEFAULT ''"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Failed to add cloud library id column to album_artist";
      v8 = &v10;
      goto LABEL_20;
    }

LABEL_21:

    v5 = 0;
    goto LABEL_22;
  }

  [v4 setCurrentUserVersion:2050020];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 2050020;"];
LABEL_22:

  return v5;
}

uint64_t ML3MigrationFunction2050020to2050030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (ML3MigrationColumnExistsInTable(v3, @"extended_lyrics_attribute", @"item_store") & 1) != 0 || ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN extended_lyrics_attribute INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:2050030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2050030;"];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to add extended_lyrics_attribute column to item_store", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2050030to2050040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE album_new (album_pid INTEGER PRIMARY KEY, album TEXT NOT NULL DEFAULT '', sort_album TEXT, album_artist_pid INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, user_rating INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, all_compilations INTEGER NOT NULL DEFAULT 0, feed_url TEXT, season_number INTEGER NOT NULL DEFAULT 0, album_year INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, contains_classical_work INTEGER NOT NULL DEFAULT 0, date_played_local INTEGER NOT NULL DEFAULT 0, user_rating_is_derived INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, classical_experience_available INTEGER NOT NULL DEFAULT 0, favorite_state INTEGER NOT NULL DEFAULT 0, date_favorited INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, cloud_library_id TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"INSERT INTO album_new (album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, contains_classical_work, date_played_local, user_rating_is_derived, sync_id, classical_experience_available, favorite_state, date_favorited, store_id, cloud_library_id, cloud_universal_library_id) SELECT album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, contains_classical_work, date_played_local, user_rating_is_derived, sync_id, classical_experience_available, is_favorite, date_favorited, store_id, cloud_library_id, cloud_universal_library_id FROM album"}]
    && [v3 executeUpdate:@"DROP TABLE album"]
    && [v3 executeUpdate:@"ALTER TABLE album_new RENAME TO album"]
    && [v3 executeUpdate:{@"CREATE TABLE item_artist_new (item_artist_pid INTEGER PRIMARY KEY, item_artist TEXT NOT NULL DEFAULT '', sort_item_artist TEXT, series_name TEXT NOT NULL DEFAULT '', sort_series_name TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, sync_id INTEGER NOT NULL DEFAULT 0, classical_experience_available INTEGER NOT NULL DEFAULT 0, favorite_state INTEGER NOT NULL DEFAULT 0, date_favorited INTEGER NOT NULL DEFAULT 0, cloud_library_id TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"INSERT INTO item_artist_new (item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, sync_id, classical_experience_available, favorite_state, date_favorited, cloud_library_id, cloud_universal_library_id) SELECT item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, sync_id, classical_experience_available, is_favorite, date_favorited, cloud_library_id, cloud_universal_library_id FROM item_artist"}]
    && [v3 executeUpdate:@"DROP TABLE item_artist"]
    && [v3 executeUpdate:@"ALTER TABLE item_artist_new RENAME TO item_artist"]
    && [v3 executeUpdate:{@"CREATE TABLE album_artist_new (album_artist_pid INTEGER PRIMARY KEY, album_artist TEXT NOT NULL DEFAULT '', sort_album_artist TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, sync_id INTEGER NOT NULL DEFAULT 0, cloud_universal_library_id TEXT NOT NULL DEFAULT '', classical_experience_available INTEGER NOT NULL DEFAULT 0, favorite_state INTEGER NOT NULL DEFAULT 0, date_favorited INTEGER NOT NULL DEFAULT 0, cloud_library_id TEXT NOT NULL DEFAULT '')"}]
    && [v3 executeUpdate:{@"INSERT INTO album_artist_new (album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, sync_id, cloud_universal_library_id, classical_experience_available, favorite_state, date_favorited, cloud_library_id) SELECT album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, sync_id, cloud_universal_library_id, classical_experience_available, is_favorite, date_favorited, cloud_library_id FROM album_artist"}]
    && [v3 executeUpdate:@"DROP TABLE album_artist"]
    && [v3 executeUpdate:@"ALTER TABLE album_artist_new RENAME TO album_artist"]
    && [v3 executeUpdate:{@"CREATE TABLE item_stats_new (item_pid INTEGER PRIMARY KEY, user_rating INTEGER NOT NULL DEFAULT 0, needs_restore INTEGER NOT NULL DEFAULT 0, download_identifier TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, has_been_played INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, date_skipped INTEGER NOT NULL DEFAULT 0, date_accessed INTEGER NOT NULL DEFAULT 0, is_alarm INTEGER NOT NULL DEFAULT 0, skip_count_user INTEGER NOT NULL DEFAULT 0, skip_count_recent INTEGER NOT NULL DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL NOT NULL DEFAULT 0, hidden INTEGER NOT NULL DEFAULT 0, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, liked_state_changed INTEGER NOT NULL DEFAULT 0, user_rating_is_derived INTEGER NOT NULL DEFAULT 0, liked_state_changed_date INTEGER NOT NULL DEFAULT 0, favorite_state INTEGER NOT NULL DEFAULT 0, date_favorited INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO item_stats_new (item_pid, user_rating, needs_restore, download_identifier, play_count_user, play_count_recent, has_been_played, date_played, date_skipped, date_accessed, is_alarm, skip_count_user, skip_count_recent, remember_bookmark, bookmark_time_ms, hidden, chosen_by_auto_fill, liked_state, liked_state_changed, user_rating_is_derived, liked_state_changed_date, favorite_state, date_favorited) SELECT item_pid, user_rating, needs_restore, download_identifier, play_count_user, play_count_recent, has_been_played, date_played, date_skipped, date_accessed, is_alarm, skip_count_user, skip_count_recent, remember_bookmark, bookmark_time_ms, hidden, chosen_by_auto_fill, liked_state, liked_state_changed, user_rating_is_derived, liked_state_changed_date, is_favorite, date_favorited FROM item_stats"}]
    && [v3 executeUpdate:@"DROP TABLE item_stats"]
    && [v3 executeUpdate:@"ALTER TABLE item_stats_new RENAME TO item_stats"]
    && [v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '', favorite_state INTEGER NOT NULL DEFAULT 0, date_favorited INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, favorite_state, date_favorited) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, is_favorite, date_favorited FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"])
  {
    [v4 setCurrentUserVersion:2050040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2050040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2050040to2050050(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:2050050];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2050050;"];
  return v5;
}

uint64_t ML3MigrationFunction2050050to2050060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '', favorite_state INTEGER NOT NULL DEFAULT 0, date_favorited INTEGER NOT NULL DEFAULT 0, traits INTEGER NOT NULL DEFAULT 0)"}]
    && [v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, favorite_state, date_favorited) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, favorite_state, date_favorited FROM container"}]
    && [v3 executeUpdate:@"DROP TABLE container"]
    && [v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"])
  {
    [v4 setCurrentUserVersion:2050060];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2050060;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2050060to2050070(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE item_stats_new (item_pid INTEGER PRIMARY KEY, user_rating INTEGER NOT NULL DEFAULT 0, needs_restore INTEGER NOT NULL DEFAULT 0, download_identifier TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, has_been_played INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, date_skipped INTEGER NOT NULL DEFAULT 0, date_accessed INTEGER NOT NULL DEFAULT 0, is_alarm INTEGER NOT NULL DEFAULT 0, skip_count_user INTEGER NOT NULL DEFAULT 0, skip_count_recent INTEGER NOT NULL DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL NOT NULL DEFAULT 0, hidden INTEGER NOT NULL DEFAULT 0, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, liked_state_changed INTEGER NOT NULL DEFAULT 0, user_rating_is_derived INTEGER NOT NULL DEFAULT 0, liked_state_changed_date INTEGER NOT NULL DEFAULT 0, favorite_state INTEGER NOT NULL DEFAULT 0, date_favorited INTEGER NOT NULL DEFAULT 0, FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}]
    && [v3 executeUpdate:@"INSERT INTO item_stats_new SELECT * FROM item_stats"]
    && [v3 executeUpdate:@"DROP TABLE item_stats"]
    && [v3 executeUpdate:@"ALTER TABLE item_stats_new RENAME TO item_stats"]
    && [v3 executeUpdate:{@"CREATE TABLE item_extra_new (item_pid INTEGER PRIMARY KEY, title TEXT NOT NULL DEFAULT '', sort_title TEXT, disc_count INTEGER NOT NULL DEFAULT 0, track_count INTEGER NOT NULL DEFAULT 0, total_time_ms REAL NOT NULL DEFAULT 0, year INTEGER NOT NULL DEFAULT 0, location TEXT NOT NULL DEFAULT '', file_size INTEGER NOT NULL DEFAULT 0, integrity BLOB, is_audible_audio_book INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, media_kind INTEGER NOT NULL DEFAULT 0, content_rating INTEGER NOT NULL DEFAULT 0, content_rating_level INTEGER NOT NULL DEFAULT 0, is_user_disabled INTEGER NOT NULL DEFAULT 0, bpm INTEGER NOT NULL DEFAULT 0, genius_id INTEGER NOT NULL DEFAULT 0, comment TEXT, grouping TEXT, description TEXT, description_long TEXT, collection_description TEXT, copyright TEXT, pending_genius_checksum INTEGER NOT NULL DEFAULT 0, category_id INTEGER NOT NULL DEFAULT 0, location_kind_id INTEGER NOT NULL DEFAULT 0, version TEXT NOT NULL DEFAULT '', display_version TEXT NOT NULL DEFAULT '', classical_work TEXT NOT NULL DEFAULT '', classical_movement TEXT NOT NULL DEFAULT '', classical_movement_count INTEGER NOT NULL DEFAULT 0, classical_movement_number INTEGER NOT NULL DEFAULT 0, is_preorder INTEGER NOT NULL DEFAULT 0, FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}]
    && [v3 executeUpdate:@"INSERT INTO item_extra_new SELECT * FROM item_extra"]
    && [v3 executeUpdate:@"DROP TABLE item_extra"]
    && [v3 executeUpdate:@"ALTER TABLE item_extra_new RENAME TO item_extra"]
    && [v3 executeUpdate:{@"CREATE TABLE item_kvs_new (item_pid INTEGER PRIMARY KEY, key TEXT NOT NULL DEFAULT '', FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}]
    && [v3 executeUpdate:@"INSERT INTO item_kvs_new SELECT * FROM item_kvs"]
    && [v3 executeUpdate:@"DROP TABLE item_kvs"]
    && [v3 executeUpdate:@"ALTER TABLE item_kvs_new RENAME TO item_kvs"]
    && [v3 executeUpdate:{@"CREATE TABLE item_playback_new (item_pid INTEGER PRIMARY KEY, audio_format INTEGER NOT NULL DEFAULT 0, bit_rate INTEGER NOT NULL DEFAULT 0, codec_type INTEGER NOT NULL DEFAULT 0, codec_subtype INTEGER NOT NULL DEFAULT 0, data_kind INTEGER NOT NULL DEFAULT 0, data_url TEXT, duration INTEGER NOT NULL DEFAULT 0, eq_preset TEXT, format TEXT, gapless_heuristic_info INTEGER NOT NULL DEFAULT 0, gapless_encoding_delay INTEGER NOT NULL DEFAULT 0, gapless_encoding_drain INTEGER NOT NULL DEFAULT 0, gapless_last_frame_resynch INTEGER NOT NULL DEFAULT 0, has_video INTEGER NOT NULL DEFAULT 0, relative_volume INTEGER, sample_rate REAL NOT NULL DEFAULT 0, start_time_ms REAL NOT NULL DEFAULT 0, stop_time_ms REAL NOT NULL DEFAULT 0, volume_normalization_energy INTEGER NOT NULL DEFAULT 0, progression_direction INTEGER NOT NULL DEFAULT 0, FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}]
    && [v3 executeUpdate:@"INSERT INTO item_playback_new SELECT * FROM item_playback"]
    && [v3 executeUpdate:@"DROP TABLE item_playback"]
    && [v3 executeUpdate:@"ALTER TABLE item_playback_new RENAME TO item_playback"]
    && [v3 executeUpdate:{@"CREATE TABLE item_search_new (item_pid INTEGER PRIMARY KEY, search_title INTEGER NOT NULL DEFAULT 0, search_album INTEGER NOT NULL DEFAULT 0, search_artist INTEGER NOT NULL DEFAULT 0, search_composer INTEGER NOT NULL DEFAULT 0, search_album_artist INTEGER NOT NULL DEFAULT 0, FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}]
    && [v3 executeUpdate:@"INSERT INTO item_search_new SELECT * FROM item_search"]
    && [v3 executeUpdate:@"DROP TABLE item_search"]
    && [v3 executeUpdate:@"ALTER TABLE item_search_new RENAME TO item_search"]
    && [v3 executeUpdate:{@"CREATE TABLE item_store_new (item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, purchase_history_redownload_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, match_redownload_params TEXT, cloud_status INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, home_sharing_id INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, downloader_account_id INTEGER NOT NULL DEFAULT 0, family_account_id INTEGER NOT NULL DEFAULT 0, is_protected INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, store_link_id INTEGER NOT NULL DEFAULT 0, extras_url TEXT NOT NULL DEFAULT '', vpp_is_licensed INTEGER NOT NULL DEFAULT 0, vpp_org_id INTEGER NOT NULL DEFAULT 0, vpp_org_name TEXT NOT NULL DEFAULT '', sync_redownload_params TEXT NOT NULL DEFAULT '', needs_reporting INTEGER NOT NULL DEFAULT 0, subscription_store_item_id INTEGER NOT NULL DEFAULT 0, playback_endpoint_type INTEGER NOT NULL DEFAULT 0, is_mastered_for_itunes INTEGER NOT NULL DEFAULT 0, radio_station_id TEXT NOT NULL DEFAULT '', advertisement_unique_id TEXT NOT NULL DEFAULT '', advertisement_type INTEGER NOT NULL DEFAULT 0, is_artist_uploaded_content INTEGER NOT NULL DEFAULT 0, cloud_asset_available INTEGER NOT NULL DEFAULT 0, is_subscription INTEGER NOT NULL DEFAULT 0, sync_in_my_library INTEGER NOT NULL DEFAULT 0, cloud_in_my_library INTEGER NOT NULL DEFAULT 0, cloud_album_id TEXT NOT NULL DEFAULT '', cloud_playback_endpoint_type INTEGER NOT NULL DEFAULT 0, cloud_universal_library_id TEXT NOT NULL DEFAULT '', reporting_store_item_id INTEGER NOT NULL DEFAULT 0, asset_store_item_id INTEGER NOT NULL DEFAULT 0, extended_playback_attribute INTEGER NOT NULL DEFAULT 0, extended_lyrics_attribute INTEGER NOT NULL DEFAULT 0, FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}]
    && [v3 executeUpdate:@"INSERT INTO item_store_new SELECT * FROM item_store"]
    && [v3 executeUpdate:@"DROP TABLE item_store"]
    && [v3 executeUpdate:@"ALTER TABLE item_store_new RENAME TO item_store"]
    && [v3 executeUpdate:{@"CREATE TABLE item_video_new (item_pid INTEGER PRIMARY KEY, video_quality INTEGER NOT NULL DEFAULT 0, is_rental INTEGER NOT NULL DEFAULT 0, has_chapter_data INTEGER NOT NULL DEFAULT 0, season_number INTEGER NOT NULL DEFAULT 0, episode_id TEXT NOT NULL DEFAULT '', network_name TEXT NOT NULL DEFAULT '', extended_content_rating TEXT NOT NULL DEFAULT '', movie_info TEXT NOT NULL DEFAULT '', has_alternate_audio INTEGER NOT NULL DEFAULT 0, has_subtitles INTEGER NOT NULL DEFAULT 0, audio_language INTEGER NOT NULL DEFAULT 0, audio_track_index INTEGER NOT NULL DEFAULT 0, audio_track_id INTEGER NOT NULL DEFAULT 0, subtitle_language INTEGER NOT NULL DEFAULT 0, subtitle_track_index INTEGER NOT NULL DEFAULT 0, rental_duration INTEGER NOT NULL DEFAULT 0, rental_playback_duration INTEGER NOT NULL DEFAULT 0, rental_playback_date_started INTEGER NOT NULL DEFAULT 0, rental_date_started INTEGER NOT NULL DEFAULT 0, is_demo INTEGER NOT NULL DEFAULT 0, has_hls INTEGER NOT NULL DEFAULT 0, audio_track_locale TEXT NOT NULL DEFAULT '', show_sort_type INTEGER NOT NULL DEFAULT 0, episode_type INTEGER NOT NULL DEFAULT 0, episode_type_display_name TEXT NOT NULL DEFAULT '', episode_sub_sort_order INTEGER NOT NULL DEFAULT 0, hls_offline_playback_keys BLOB, is_premium INTEGER NOT NULL DEFAULT 0, color_capability INTEGER NOT NULL DEFAULT 0, hls_color_capability INTEGER NOT NULL DEFAULT 0, hls_video_quality INTEGER NOT NULL DEFAULT 0, hls_playlist_url TEXT NOT NULL DEFAULT '', audio_capability INTEGER NOT NULL DEFAULT 0, hls_audio_capability INTEGER NOT NULL DEFAULT 0, hls_asset_traits INTEGER NOT NULL DEFAULT 0, hls_key_server_url TEXT NOT NULL DEFAULT '', hls_key_cert_url TEXT NOT NULL DEFAULT '', hls_key_server_protocol TEXT NOT NULL DEFAULT '', FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}]
    && [v3 executeUpdate:@"INSERT INTO item_video_new SELECT * FROM item_video"]
    && [v3 executeUpdate:@"DROP TABLE item_video"]
    && [v3 executeUpdate:@"ALTER TABLE item_video_new RENAME TO item_video"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:2050070];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2050070;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2050070to2050080(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([ML3MusicLibrary updateTrackIntegrityOnConnection:v3])
  {
    [v4 setCurrentUserVersion:2050080];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2050080;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2050080to2100000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:{@"CREATE TABLE album_new (album_pid INTEGER PRIMARY KEY, album TEXT NOT NULL DEFAULT '', sort_album TEXT, album_artist_pid INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, user_rating INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, all_compilations INTEGER NOT NULL DEFAULT 0, feed_url TEXT, season_number INTEGER NOT NULL DEFAULT 0, album_year INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, contains_classical_work INTEGER NOT NULL DEFAULT 0, date_played_local INTEGER NOT NULL DEFAULT 0, user_rating_is_derived INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, classical_experience_available INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, cloud_library_id TEXT NOT NULL DEFAULT '', liked_state_changed_date INTEGER NOT NULL DEFAULT 0)"}] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to create album table";
LABEL_86:
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v9, 2u);
    goto LABEL_87;
  }

  if (([v3 executeUpdate:{@"INSERT INTO album_new (album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, contains_classical_work, date_played_local, user_rating_is_derived, sync_id, classical_experience_available, store_id, cloud_library_id) SELECT album_pid, album, sort_album, album_artist_pid, representative_item_pid, grouping_key, cloud_status, user_rating, liked_state, all_compilations, feed_url, season_number, album_year, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, contains_classical_work, date_played_local, user_rating_is_derived, sync_id, classical_experience_available, store_id, cloud_library_id FROM album"}] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to populate new album table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"DROP TABLE album"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to drop album table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album_new RENAME TO album"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to rename album table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"CREATE TABLE item_artist_new (item_artist_pid INTEGER PRIMARY KEY, item_artist TEXT NOT NULL DEFAULT '', sort_item_artist TEXT, series_name TEXT NOT NULL DEFAULT '', sort_series_name TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, sync_id INTEGER NOT NULL DEFAULT 0, classical_experience_available INTEGER NOT NULL DEFAULT 0)"}] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to create artist table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"INSERT INTO item_artist_new (item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, sync_id, classical_experience_available) SELECT item_artist_pid, item_artist, sort_item_artist, series_name, sort_series_name, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, sync_id, classical_experience_available FROM item_artist"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to populate artist table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"DROP TABLE item_artist"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to drop artist table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_artist_new RENAME TO item_artist"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to rename artist table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"CREATE TABLE album_artist_new (album_artist_pid INTEGER PRIMARY KEY, album_artist TEXT NOT NULL DEFAULT '', sort_album_artist TEXT, grouping_key BLOB, cloud_status INTEGER NOT NULL DEFAULT 0, store_id INTEGER NOT NULL DEFAULT 0, representative_item_pid INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, app_data BLOB, sync_id INTEGER NOT NULL DEFAULT 0, cloud_universal_library_id TEXT NOT NULL DEFAULT '', classical_experience_available INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, liked_state_changed_date INTEGER NOT NULL DEFAULT 0)"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to create album artist table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"INSERT INTO album_artist_new (album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, sync_id, cloud_universal_library_id, classical_experience_available) SELECT album_artist_pid, album_artist, sort_album_artist, grouping_key, cloud_status, store_id, representative_item_pid, keep_local, keep_local_status, keep_local_status_reason, keep_local_constraints, app_data, sync_id, cloud_universal_library_id, classical_experience_available FROM album_artist"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to populate album artist table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"DROP TABLE album_artist"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to drop album artist table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"ALTER TABLE album_artist_new RENAME TO album_artist"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to rename album artist table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '', traits INTEGER NOT NULL DEFAULT 0, liked_state_changed_date INTEGER NOT NULL DEFAULT 0)"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to create continer table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, traits) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, traits FROM container"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to populate container table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"DROP TABLE container"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to drop container table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to rename container table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"CREATE TABLE item_stats_new (item_pid INTEGER PRIMARY KEY, user_rating INTEGER NOT NULL DEFAULT 0, needs_restore INTEGER NOT NULL DEFAULT 0, download_identifier TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, has_been_played INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, date_skipped INTEGER NOT NULL DEFAULT 0, date_accessed INTEGER NOT NULL DEFAULT 0, is_alarm INTEGER NOT NULL DEFAULT 0, skip_count_user INTEGER NOT NULL DEFAULT 0, skip_count_recent INTEGER NOT NULL DEFAULT 0, remember_bookmark INTEGER NOT NULL DEFAULT 0, bookmark_time_ms REAL NOT NULL DEFAULT 0, hidden INTEGER NOT NULL DEFAULT 0, chosen_by_auto_fill INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, liked_state_changed INTEGER NOT NULL DEFAULT 0, user_rating_is_derived INTEGER NOT NULL DEFAULT 0, liked_state_changed_date INTEGER NOT NULL DEFAULT 0, FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to create item stats table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"INSERT INTO item_stats_new (item_pid, user_rating, needs_restore, download_identifier, play_count_user, play_count_recent, has_been_played, date_played, date_skipped, date_accessed, is_alarm, skip_count_user, skip_count_recent, remember_bookmark, bookmark_time_ms, hidden, chosen_by_auto_fill, liked_state, liked_state_changed, user_rating_is_derived, liked_state_changed_date) SELECT item_pid, user_rating, needs_restore, download_identifier, play_count_user, play_count_recent, has_been_played, date_played, date_skipped, date_accessed, is_alarm, skip_count_user, skip_count_recent, remember_bookmark, bookmark_time_ms, hidden, chosen_by_auto_fill, liked_state, liked_state_changed, user_rating_is_derived, liked_state_changed_date FROM item_stats"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to populate item stats table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"DROP TABLE item_stats"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to drop item stats table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_stats_new RENAME TO item_stats"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to rename item stats table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"UPDATE album SET store_id = (SELECT store_playlist_id FROM item_store WHERE item_store.item_pid=album.representative_item_pid) WHERE album.representative_item_pid != 0"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to update album store id ";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"UPDATE album SET cloud_library_id = (SELECT cloud_album_id FROM item_store WHERE item_store.item_pid=album.representative_item_pid) WHERE album.representative_item_pid != 0"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to update album cloud id ";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"DROP TABLE store_link"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to drop store_link table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"CREATE TABLE item_store_new (item_pid INTEGER PRIMARY KEY, store_item_id INTEGER NOT NULL DEFAULT 0, store_composer_id INTEGER NOT NULL DEFAULT 0, store_genre_id INTEGER NOT NULL DEFAULT 0, store_playlist_id INTEGER NOT NULL DEFAULT 0, storefront_id INTEGER NOT NULL DEFAULT 0, purchase_history_id INTEGER NOT NULL DEFAULT 0, purchase_history_token INTEGER NOT NULL DEFAULT 0, purchase_history_redownload_params TEXT, store_saga_id INTEGER NOT NULL DEFAULT 0, match_redownload_params TEXT, cloud_status INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, home_sharing_id INTEGER NOT NULL DEFAULT 0, is_ota_purchased INTEGER NOT NULL DEFAULT 0, store_kind INTEGER NOT NULL DEFAULT 0, account_id INTEGER NOT NULL DEFAULT 0, downloader_account_id INTEGER NOT NULL DEFAULT 0, family_account_id INTEGER NOT NULL DEFAULT 0, is_protected INTEGER NOT NULL DEFAULT 0, key_versions INTEGER NOT NULL DEFAULT 0, key_platform_id INTEGER NOT NULL DEFAULT 0, key_id INTEGER NOT NULL DEFAULT 0, key_id_2 INTEGER NOT NULL DEFAULT 0, date_purchased INTEGER NOT NULL DEFAULT 0, date_released INTEGER NOT NULL DEFAULT 0, external_guid TEXT, feed_url TEXT, artwork_url TEXT, store_xid TEXT, store_flavor TEXT, store_matched_status INTEGER NOT NULL DEFAULT 0, store_redownloaded_status INTEGER NOT NULL DEFAULT 0, extras_url TEXT NOT NULL DEFAULT '', vpp_is_licensed INTEGER NOT NULL DEFAULT 0, vpp_org_id INTEGER NOT NULL DEFAULT 0, vpp_org_name TEXT NOT NULL DEFAULT '', sync_redownload_params TEXT NOT NULL DEFAULT '', needs_reporting INTEGER NOT NULL DEFAULT 0, subscription_store_item_id INTEGER NOT NULL DEFAULT 0, playback_endpoint_type INTEGER NOT NULL DEFAULT 0, is_mastered_for_itunes INTEGER NOT NULL DEFAULT 0, radio_station_id TEXT NOT NULL DEFAULT '', advertisement_unique_id TEXT NOT NULL DEFAULT '', advertisement_type INTEGER NOT NULL DEFAULT 0, is_artist_uploaded_content INTEGER NOT NULL DEFAULT 0, cloud_asset_available INTEGER NOT NULL DEFAULT 0, is_subscription INTEGER NOT NULL DEFAULT 0, sync_in_my_library INTEGER NOT NULL DEFAULT 0, cloud_in_my_library INTEGER NOT NULL DEFAULT 0, cloud_album_id TEXT NOT NULL DEFAULT '', cloud_playback_endpoint_type INTEGER NOT NULL DEFAULT 0, cloud_universal_library_id TEXT NOT NULL DEFAULT '', reporting_store_item_id INTEGER NOT NULL DEFAULT 0, asset_store_item_id INTEGER NOT NULL DEFAULT 0, extended_playback_attribute INTEGER NOT NULL DEFAULT 0, extended_lyrics_attribute INTEGER NOT NULL DEFAULT 0, FOREIGN KEY(item_pid) REFERENCES item(item_pid))"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to create item_store_new table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:{@"INSERT INTO item_store_new (item_pid, store_item_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, cloud_status, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, downloader_account_id, family_account_id, is_protected, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, extras_url, vpp_is_licensed, vpp_org_id, vpp_org_name, sync_redownload_params, needs_reporting, subscription_store_item_id, playback_endpoint_type, is_mastered_for_itunes, radio_station_id, advertisement_unique_id, advertisement_type, is_artist_uploaded_content, cloud_asset_available, is_subscription, sync_in_my_library, cloud_in_my_library, cloud_album_id, cloud_playback_endpoint_type, cloud_universal_library_id, reporting_store_item_id, asset_store_item_id, extended_playback_attribute, extended_lyrics_attribute) SELECT item_pid, store_item_id, store_composer_id, store_genre_id, store_playlist_id, storefront_id, purchase_history_id, purchase_history_token, purchase_history_redownload_params, store_saga_id, match_redownload_params, cloud_status, sync_id, home_sharing_id, is_ota_purchased, store_kind, account_id, downloader_account_id, family_account_id, is_protected, key_versions, key_platform_id, key_id, key_id_2, date_purchased, date_released, external_guid, feed_url, artwork_url, store_xid, store_flavor, store_matched_status, store_redownloaded_status, extras_url, vpp_is_licensed, vpp_org_id, vpp_org_name, sync_redownload_params, needs_reporting, subscription_store_item_id, playback_endpoint_type, is_mastered_for_itunes, radio_station_id, advertisement_unique_id, advertisement_type, is_artist_uploaded_content, cloud_asset_available, is_subscription, sync_in_my_library, cloud_in_my_library, cloud_album_id, cloud_playback_endpoint_type, cloud_universal_library_id, reporting_store_item_id, asset_store_item_id, extended_playback_attribute, extended_lyrics_attribute FROM item_store"}] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to populate item_store_new table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"DROP TABLE item_store"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to drop item store table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"ALTER TABLE item_store_new RENAME TO item_store"] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    *v9 = 0;
    v7 = "Failed to rename item store table";
    goto LABEL_86;
  }

  if (([v3 executeUpdate:@"DELETE FROM entity_revision WHERE class=?" withParameters:&unk_2840C6680 error:0] & 1) == 0)
  {
    v6 = _ML3LogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      v7 = "Failed to remove all entries for class ML3EntityTypeStoreLink";
      goto LABEL_86;
    }

LABEL_87:

    v5 = 0;
    goto LABEL_88;
  }

  [v4 setCurrentUserVersion:2100000];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100000;"];
LABEL_88:

  return v5;
}

uint64_t ML3MigrationFunction2100000to2100010(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:2100010];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2100010;"];
  return v5;
}

uint64_t ML3MigrationFunction2100010to2100020(void *a1, void *a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v41 = a2;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v3 executeQuery:{@"SELECT item_pid, media_type, base_location_id, path, location FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE location != ''"}];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __ML3MigrationFunction2100010to2100020_block_invoke;
  v55[3] = &unk_27875D210;
  v62 = &v63;
  v8 = v5;
  v56 = v8;
  v9 = v3;
  v57 = v9;
  v10 = v4;
  v58 = v10;
  v11 = v6;
  v59 = v11;
  v60 = @"NewLocation";
  v61 = @"OldLocation";
  [v7 enumerateRowsWithBlock:v55];
  v12 = [ML3MusicLibrary alloc];
  v13 = [v9 databasePath];
  v14 = [(ML3MusicLibrary *)v12 initWithPath:v13];

  if (v14)
  {
    if (v64[3])
    {
      v15 = [v9 executeUpdate:@"INSERT INTO base_location (base_location_id withParameters:path) VALUES (? error:{?)", &unk_2840C6698, 0}];
      *(v64 + 24) = v15;
      if (v15)
      {
        v16 = [v9 executeQuery:@"SELECT base_location_id FROM base_location"];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __ML3MigrationFunction2100010to2100020_block_invoke_3206;
        v51[3] = &unk_27875D2D8;
        v52 = v14;
        v54 = &v63;
        v53 = v9;
        [v16 enumerateRowsWithBlock:v51];
      }

      else
      {
        v19 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Error adding base_location_id=250 to base_location table", buf, 2u);
        }
      }
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v9 databasePath];
      *buf = 138412290;
      v68 = v18;
      _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "Could not find library with connection path=%@", buf, 0xCu);
    }

    *(v64 + 24) = 0;
  }

  if (*(v64 + 24) == 1)
  {
    v20 = [ML3Track clearLocationFromLibrary:v14 persistentIDs:v8 disableKeepLocal:0 usingConnection:v9];
    *(v64 + 24) = v20;
    if (v20)
    {
      goto LABEL_46;
    }

    v21 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "Failed to clear location from cached tracks", buf, 2u);
    }

    if (v64[3])
    {
LABEL_46:
      if (MSVDeviceSupportsMultipleLibraries())
      {
        v22 = +[ML3MusicLibrary cloudAssetsSharedCacheFolderPath];
        v23 = [v10 fileExistsAtPath:v22];

        if (v23)
        {
          v24 = +[ML3MusicLibrary cloudAssetsSharedCacheFolderPath];
          v50 = 0;
          v25 = [v10 removeItemAtPath:v24 error:&v50];
          v26 = v50;
          *(v64 + 24) = v25;

          if ((v64[3] & 1) == 0)
          {
            v27 = os_log_create("com.apple.amp.medialibrary", "Migration");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v68 = v26;
              _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_ERROR, "Encountered error removing cloudAssetsSharedCacheFolder. error=%@", buf, 0xCu);
            }
          }
        }

        else
        {
          v26 = 0;
        }

        v40 = [(ML3MusicLibrary *)v14 pathForResourceFileOrFolder:9];
        v28 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v40;
          _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEFAULT, "Deleting Multi-user lofi-cache at path %@", buf, 0xCu);
        }

        if ([v10 fileExistsAtPath:v40])
        {
          v49 = v26;
          v29 = [v10 removeItemAtPath:v40 error:&v49];
          v30 = v49;

          *(v64 + 24) = v29;
          if ((v29 & 1) == 0)
          {
            v31 = os_log_create("com.apple.amp.medialibrary", "Migration");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v68 = v40;
              v69 = 2112;
              v70 = v30;
              _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "Encountered error deleting %@. error=%@", buf, 0x16u);
            }
          }
        }

        else
        {
          v30 = v26;
        }

        v32 = [(ML3MusicLibrary *)v14 pathForResourceFileOrFolder:8];
        v33 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v32;
          _os_log_impl(&dword_22D2FA000, v33, OS_LOG_TYPE_DEFAULT, "Deleting Multi-user cache at path %@", buf, 0xCu);
        }

        if ([v10 fileExistsAtPath:v32])
        {
          v48 = v30;
          v34 = [v10 removeItemAtPath:v32 error:&v48];
          v35 = v48;

          *(v64 + 24) = v34;
          if ((v34 & 1) == 0)
          {
            v36 = os_log_create("com.apple.amp.medialibrary", "Migration");
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v68 = v32;
              v69 = 2112;
              v70 = v35;
              _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_ERROR, "Encountered error deleting %@. error=%@", buf, 0x16u);
            }
          }
        }

        else
        {
          v35 = v30;
        }
      }
    }
  }

  v37 = [MEMORY[0x277CBEB18] array];
  if (*(v64 + 24) != 1 || (v42[0] = MEMORY[0x277D85DD0], v42[1] = 3221225472, v42[2] = __ML3MigrationFunction2100010to2100020_block_invoke_3211, v42[3] = &unk_27875D238, v43 = @"OldLocation", v44 = @"NewLocation", v45 = v10, v47 = &v63, v46 = v37, [v11 enumerateObjectsUsingBlock:v42], v46, v45, v44, v43, (v64[3] & 1) == 0))
  {
    [MEMORY[0x277D27EF0] snapshotWithDomain:*MEMORY[0x277D27EC0] type:@"Bug" subType:@"Migration Error" context:@"Encountered Error Migrating Downloads" triggerThresholdValues:0 events:0 completion:0];
  }

  [v41 setCurrentUserVersion:2100020];
  v38 = [v9 executeUpdate:@"PRAGMA user_version = 2100020;"];

  _Block_object_dispose(&v63, 8);
  return v38;
}

void __ML3MigrationFunction2100010to2100020_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!v8)
  {
    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 longLongValue];

    v12 = [v7 objectAtIndexedSubscript:1];
    v13 = [v12 integerValue];

    v14 = [v7 objectAtIndexedSubscript:2];
    v15 = [v14 integerValue];

    v16 = [v7 objectAtIndexedSubscript:3];
    v17 = [v7 objectAtIndexedSubscript:4];
    if ((MSVDeviceSupportsMultipleLibraries() & 1) != 0 || v15 == 100)
    {
LABEL_6:
      v18 = *(a1 + 32);
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
      [v18 addObject:v19];

LABEL_7:
      goto LABEL_8;
    }

    if (v15 != 300)
    {
      if (v15 != 200)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if ((v13 & 8) == 0)
    {
      goto LABEL_7;
    }

    v20 = *(a1 + 40);
    v46[0] = &unk_2840C8948;
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
    v46[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v38 = 0;
    [v20 executeUpdate:@"UPDATE item SET base_location_id = ? WHERE item_pid = ?" withParameters:v22 error:&v38];
    v23 = v38;

    if (v23)
    {
      v24 = _ML3LogCategoryMigration();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v43 = v11;
        v44 = 2112;
        v45 = v23;
        _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_ERROR, "Encountered error updating item.base_location_id to 250 for item_pid=%lld. error=%@", buf, 0x16u);
      }

      *(*(*(a1 + 80) + 8) + 24) = 0;
      *a4 = 1;
    }

    else
    {
      v25 = [ML3MusicLibrary pathForBaseLocationPath:250];
      if ([*(a1 + 48) fileExistsAtPath:v25])
      {
        v23 = 0;
      }

      else
      {
        v26 = *(a1 + 48);
        v37 = 0;
        v27 = [v26 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v37];
        v23 = v37;
        *(*(*(a1 + 80) + 8) + 24) = v27;
        if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
        {
          v34 = _ML3LogCategoryMigration();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v43 = v25;
            v44 = 2112;
            v45 = v23;
            _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_ERROR, "Encountered error creating directory at path %@. error=%@", buf, 0x16u);
          }

          *a4 = 1;
          goto LABEL_25;
        }
      }

      v35 = *(a1 + 56);
      v40[0] = *(a1 + 64);
      v28 = [v25 stringByAppendingPathComponent:v17];
      v40[1] = *(a1 + 72);
      v41[0] = v28;
      v36 = v25;
      v29 = MEMORY[0x277CCACA8];
      v30 = +[ML3MusicLibrary mediaFolderPath];
      v39[0] = v30;
      v39[1] = v16;
      v39[2] = v17;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
      v32 = [v29 pathWithComponents:v31];
      v41[1] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      [v35 addObject:v33];
    }

LABEL_25:

    goto LABEL_7;
  }

  v9 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v43 = v8;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Encountered error with initial query. error=%@", buf, 0xCu);
  }

  *(*(*(a1 + 80) + 8) + 24) = 0;
  *a4 = 1;
LABEL_8:
}

void __ML3MigrationFunction2100010to2100020_block_invoke_3206(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 integerValue];

  if (v8)
  {
    v9 = [*(a1 + 32) pathForBaseLocationPath:v8];
    v10 = [*(a1 + 32) mediaFolderRelativePath:v9];
    v11 = os_log_create("com.apple.amp.medialibrary", "Migration");
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        v21 = v8;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEBUG, "Updating base_location table. base_location_id=%lld path=%@", buf, 0x16u);
      }

      v13 = *(a1 + 40);
      v26[0] = v10;
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
      v26[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      v19 = 0;
      v16 = [v13 executeUpdate:@"UPDATE base_location SET path = ? where base_location_id = ?" withParameters:v15 error:&v19];
      v12 = v19;
      *(*(*(a1 + 48) + 8) + 24) = v16;

      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        v17 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v21 = v8;
          v22 = 2112;
          v23 = v10;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "Encountered error updating base_location table. base_location_id=%lld path=%@ error=%@", buf, 0x20u);
        }

        *a4 = 1;
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = [v6 stringForColumnIndex:1];
      *buf = 134218242;
      v21 = v8;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "Failed to form a base for base_location %lld, path=%{public}@", buf, 0x16u);
    }
  }
}

void __ML3MigrationFunction2100010to2100020_block_invoke_3211(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v8 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  if ([*(a1 + 48) fileExistsAtPath:v7])
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEBUG, "Moving %@ to %@", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v16 = 0;
    v11 = [v10 moveItemAtPath:v7 toPath:v8 error:&v16];
    v12 = v16;
    *(*(*(a1 + 64) + 8) + 24) = v11;
    v13 = *(*(*(a1 + 64) + 8) + 24);
    v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "Moved asset from %@ to %@", buf, 0x16u);
      }

      [*(a1 + 56) addObject:v6];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Encountered error moving file from %@ to %@. error=%@", buf, 0x20u);
      }

      *a4 = 1;
    }
  }
}

uint64_t ML3MigrationFunction2100020to2100030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"update _MLDatabaseProperties set value=0 where key='MLSyncClientSyncAnchor'"])
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:2100030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100030;"];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to clear MLSyncClientSyncAnchor from the database", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2100030to2100040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([ML3MusicLibrary updateTrackIntegrityOnConnection:v3])
  {
    [v4 setCurrentUserVersion:2100040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2100040to2100050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN cover_artwork_recipe BLOB"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN is_collaborative INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN collaborator_invite_options INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN collaborator_permissions INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container_item ADD COLUMN uuid TEXT NOT NULL DEFAULT ''") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container_item ADD COLUMN position_uuid TEXT NOT NULL DEFAULT ''") && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE container_author (container_author_pid INTEGER PRIMARY KEY, container_pid INTEGER NOT NULL DEFAULT 0, person_pid INTEGER NOT NULL DEFAULT 0, role INTEGER NOT NULL DEFAULT 0, UNIQUE (container_pid, person_pid))") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ContainerAuthorContainerPID ON container_author (container_pid ASC)") && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE container_item_reaction (container_item_reaction_pid INTEGER PRIMARY KEY, container_item_pid INTEGER NOT NULL DEFAULT 0, person_pid INTEGER NOT NULL DEFAULT 0, reaction TEXT NOT NULL DEFAULT '', date INTEGER NOT NULL DEFAULT 0)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ContainerItemReactionContainerItemPID ON container_item_reaction (container_item_pid ASC)"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:2100050];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100050;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2100050to2100060(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  if (!MSVDeviceOSIsInternalInstall() || (MSVDeviceIsWatch() & 1) != 0 || (MSVDeviceSupportsMultipleLibraries() & 1) != 0)
  {
    goto LABEL_14;
  }

  v5 = [ML3MusicLibrary alloc];
  v6 = [v3 databasePath];
  v7 = [(ML3MusicLibrary *)v5 initWithPath:v6];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v3 executeQuery:@"SELECT base_location_id withParameters:{path, location FROM item JOIN item_extra USING(item_pid) join base_location USING (base_location_id) WHERE base_location_id >= ? AND base_location_id <= ?", &unk_2840C66B0}];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __ML3MigrationFunction2100050to2100060_block_invoke;
  v31[3] = &unk_27875D260;
  v32 = @"Music/iTunes";
  v10 = v7;
  v33 = v10;
  v11 = v8;
  v34 = v11;
  v35 = @"iTunes_Control/Music";
  [v9 enumerateRowsWithBlock:v31];
  v23 = v9;
  v12 = [v3 executeQuery:@"SELECT base_location_id FROM base_location WHERE base_location_id >= ? AND base_location_id <= ?" withParameters:&unk_2840C66C8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __ML3MigrationFunction2100050to2100060_block_invoke_3287;
  v27[3] = &unk_27875D2D8;
  v13 = v10;
  v28 = v13;
  v14 = v3;
  v29 = v14;
  v30 = &v36;
  [v12 enumerateRowsWithBlock:v27];
  if (*(v37 + 24) != 1)
  {
    goto LABEL_11;
  }

  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [v14 executeQuery:@"SELECT item_pid withParameters:{base_location_id FROM item WHERE base_location_id < ? OR base_location_id > ? ", &unk_2840C66E0}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __ML3MigrationFunction2100050to2100060_block_invoke_3297;
  v25[3] = &unk_278766118;
  v17 = v15;
  v26 = v17;
  [v16 enumerateRowsWithBlock:v25];
  [ML3Track clearLocationFromLibrary:v13 persistentIDs:v17 disableKeepLocal:0 usingConnection:v14];
  v24 = 0;
  v18 = [v14 executeUpdate:@"DELETE FROM base_location where base_location_id < ? OR base_location_id > ? " withParameters:&unk_2840C66F8 error:&v24];
  v19 = v24;
  if (v18)
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v19;
      _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_ERROR, "SyncLocationRollback: Encountered error deleting invalid base_location_ids error=%@", buf, 0xCu);
    }
  }

  if (!v18)
  {
    v21 = 0;
  }

  else
  {
LABEL_11:
    v21 = 1;
  }

  if (v21)
  {
LABEL_14:
    [v4 setCurrentUserVersion:2100060];
    v21 = [v3 executeUpdate:@"PRAGMA user_version = 2100060;"];
  }

  _Block_object_dispose(&v36, 8);

  return v21;
}

void __ML3MigrationFunction2100050to2100060_block_invoke(uint64_t a1, void *a2)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 integerValue];

  v6 = [v3 objectAtIndexedSubscript:1];
  v7 = [v3 objectAtIndexedSubscript:2];

  if ([v6 hasPrefix:*(a1 + 32)])
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [*(a1 + 40) mediaFolderPath];
    v43[0] = v9;
    v43[1] = v6;
    v43[2] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
    v11 = [v8 pathWithComponents:v10];

    v12 = [*(a1 + 40) pathForBaseLocationPath:v5];
    v13 = [v12 stringByAppendingPathComponent:v7];
    if ([*(a1 + 48) fileExistsAtPath:v13])
    {
      v14 = *(a1 + 48);
      v36 = 0;
      v15 = [v14 removeItemAtPath:v13 error:&v36];
      v16 = v36;
      v17 = v16;
      if (v15)
      {
        v18 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v13;
          _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "SyncLocationRollback: Removed existing file at path=%@", buf, 0xCu);
        }

        if (v17)
        {
          goto LABEL_28;
        }
      }

      else if (v16)
      {
        v25 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v38 = v13;
          v39 = 2112;
          v40 = v17;
          v26 = "SyncLocationRollback: Failed to remove existing file at path=%@ error=%@";
          v27 = v25;
          v28 = OS_LOG_TYPE_ERROR;
LABEL_26:
          _os_log_impl(&dword_22D2FA000, v27, v28, v26, buf, 0x16u);
        }

LABEL_27:

LABEL_28:
        goto LABEL_29;
      }
    }

    if (([*(a1 + 48) fileExistsAtPath:v12] & 1) == 0)
    {
      v29 = *(a1 + 48);
      v35 = 0;
      v30 = [v29 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v35];
      v17 = v35;
      if ((v30 & 1) == 0)
      {
        v31 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v38 = v12;
          v39 = 2112;
          v40 = v17;
          _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "SyncLocationRollback: Encountered error creating directory at path: %@ error=%@", buf, 0x16u);
        }
      }

      if (v17)
      {
        goto LABEL_28;
      }
    }

    v32 = *(a1 + 48);
    v34 = 0;
    v33 = [v32 moveItemAtPath:v11 toPath:v13 error:&v34];
    v17 = v34;
    if (!v33)
    {
      goto LABEL_28;
    }

    v25 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v11;
      v39 = 2112;
      v40 = v13;
      v26 = "SyncLocationRollback: Successfully moved item from %@ to %@";
      v27 = v25;
      v28 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v19 = [v6 hasPrefix:*(a1 + 56)];
  v20 = os_log_create("com.apple.amp.medialibrary", "Migration");
  v17 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v6;
      v39 = 2112;
      v40 = v7;
      v21 = "SyncLocationRollback: Asset location is %@/%@. Nothing to do";
      v22 = v17;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 22;
LABEL_13:
      _os_log_impl(&dword_22D2FA000, v22, v23, v21, buf, v24);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    v41 = 2048;
    v42 = v5;
    v21 = "SyncLocationRollback: encountered unexpected path %@/%@ for item with base_location %llu";
    v22 = v17;
    v23 = OS_LOG_TYPE_ERROR;
    v24 = 32;
    goto LABEL_13;
  }

LABEL_29:
}

void __ML3MigrationFunction2100050to2100060_block_invoke_3287(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = [a2 objectAtIndexedSubscript:0];
  v7 = [v6 longLongValue];

  v8 = a1[4];
  v9 = [v8 pathForBaseLocationPath:v7];
  v10 = [v8 mediaFolderRelativePath:v9];

  v11 = a1[5];
  v19[0] = v10;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
  v19[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  LOBYTE(v11) = [v11 executeUpdate:@"UPDATE base_location SET path = ? WHERE base_location_id = ?" withParameters:v13 error:0];

  if ((v11 & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v10;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "SyncLocationRollback: could not set path %@ for item with base_location %llu", &v15, 0x16u);
    }

    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 0;
  }
}

void __ML3MigrationFunction2100050to2100060_block_invoke_3297(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 longLongValue];

  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [v6 longLongValue];
  v8 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = v5;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "SyncLocationRollback: Clearing location for pid=%lld with base_location_id %lld", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  [v9 addObject:v10];
}

uint64_t ML3MigrationFunction2100060to2100070(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToAutogenerateArtworkVariants:1];
  [v3 setCurrentUserVersion:2100070];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2100070;"];
  return v5;
}