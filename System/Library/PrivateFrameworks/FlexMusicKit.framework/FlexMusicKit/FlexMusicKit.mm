uint64_t sub_24B7E667C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_assetID(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_assetID(*(a1 + 32), v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v12, v11, v13, v14);

  return isEqualToString;
}

void sub_24B7E7E8C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = FlexLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "Posting kFlexReachabilityChangedNotification for %@", &v13, 0xCu);
  }

  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6, v7, v8);
  objc_msgSend_postNotificationName_object_(v9, v10, @"kFlexNetworkReachabilityChangedNotification", v3, v11);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24B7E8764(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v6 = objc_msgSend_library(WeakRetained, v2, v3, v4, v5);
    objc_msgSend__updateFromCloud(v6, v7, v8, v9, v10);

    WeakRetained = v11;
  }
}

void sub_24B7EA58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24B7EA5D4(void *a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_values(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_objectForKey_(v8, v9, @"SegmentType", v10, v11);

  if (v12 && (objc_msgSend_isEqualToString_(v12, v13, @"SILENCE", v14, v15) & 1) == 0)
  {
    v20 = objc_msgSend_values(v3, v16, v17, v18, v19);
    v24 = objc_msgSend_objectForKey_(v20, v21, @"PeakValue", v22, v23);

    if (v24)
    {
      objc_msgSend_doubleValue(v24, v25, v26, v27, v28);
      v34 = *(a1[4] + 8);
      if (v33 > *(v34 + 24))
      {
        *(v34 + 24) = v33;
      }
    }

    else
    {
      ++*(*(a1[5] + 8) + 24);
      v35 = FlexLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_24B7EA8F4(v3, v35, v36, v37, v38);
      }
    }

    v39 = objc_msgSend_values(v3, v29, v30, v31, v32);
    v43 = objc_msgSend_objectForKey_(v39, v40, @"Loudness", v41, v42);

    if (v43)
    {
      objc_msgSend_doubleValue(v43, v44, v45, v46, v47);
      if (v52 >= -70.0)
      {
        v53 = v52;
      }

      else
      {
        v53 = -70.0;
      }

      if (v3)
      {
        objc_msgSend_timeRange(v3, v48, v49, v50, v51);
      }

      else
      {
        memset(v59, 0, sizeof(v59));
      }

      time = *&v59[1];
      Seconds = CMTimeGetSeconds(&time);
      if (Seconds > 0.0)
      {
        *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + v53 * Seconds;
        *(*(a1[7] + 8) + 24) = Seconds + *(*(a1[7] + 8) + 24);
      }
    }

    else
    {
      ++*(*(a1[8] + 8) + 24);
      v54 = FlexLogForCategory(0);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        sub_24B7EA9AC(v3, v54, v55, v56, v57);
      }
    }
  }
}

void sub_24B7EA8D4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0xCu);
}

void sub_24B7EA8F4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_name(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_stringWithFormat_(v5, v7, @"Missing peak value for segment item: %@", v8, v9);
  sub_24B7EA8D4(&dword_24B7E5000, v11, v12, "%@", v13, v14, v15, v16, v6, v18, 2u);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24B7EA9AC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_name(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_stringWithFormat_(v5, v7, @"Missing loudness value for segment item: %@", v8, v9);
  sub_24B7EA8D4(&dword_24B7E5000, v11, v12, "%@", v13, v14, v15, v16, v6, v18, 2u);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24B7EAB20(uint64_t a1)
{
  v2 = [FMSongLibrary alloc];
  qword_27F060D28 = objc_msgSend_initWithOptions_(v2, v3, *(a1 + 32), v4, v5);

  return MEMORY[0x2821F96F8]();
}

void sub_24B7EB960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24B7EB984(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (!a3)
    {
      objc_msgSend_setContactedCloud_(WeakRetained, v7, 1, v9, v10);
      objc_msgSend__notifySongsChanged_(*(a1 + 32), v17, v5, v18, v19);
      goto LABEL_8;
    }

    v12 = objc_msgSend_cloudManager(WeakRetained, v7, v8, v9, v10);
    objc_msgSend_retryFetchAllSongs(v12, v13, v14, v15, v16);
  }

  else
  {
    v12 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_24B7E5000, v12, OS_LOG_TYPE_DEFAULT, "Attempted to handle success or error from fetchAllSongsWithCompletion: but self is nil.", v20, 2u);
    }
  }

LABEL_8:
}

uint64_t sub_24B7EC100(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_27F060D48 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, @"songName", a4, a5, @"artistName", @"songVersion", @"artVersion", @"compatibilityVersion", @"recordID", @"mood", @"moodAlt", @"pace", @"arousal", @"valence", @"visualTempo", @"genreStrings", @"regionStrings", @"format", @"style", @"audioEncoderPresetName", @"hidden", @"recalled", 0);

  return MEMORY[0x2821F96F8]();
}

BOOL sub_24B7EE4E8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
  v12 = v11;
  objc_msgSend_doubleValue(*(a1 + 32), v13, v14, v15, v16);
  if (v12 > v21)
  {
    *a4 = 1;
  }

  objc_msgSend_doubleValue(v6, v17, v18, v19, v20);
  v23 = v22;
  objc_msgSend_doubleValue(*(a1 + 40), v24, v25, v26, v27);
  if (v23 >= v32)
  {
    objc_msgSend_doubleValue(v6, v28, v29, v30, v31);
    v35 = v34;
    objc_msgSend_doubleValue(*(a1 + 32), v36, v37, v38, v39);
    v33 = v35 < v40;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void sub_24B7EF864(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_count(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_numberWithUnsignedInteger_(v6, v8, v7, v9, v10);
  v13 = 138412290;
  v14 = v11;
  _os_log_debug_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_DEBUG, "Found %@ number of loop points in rendition.", &v13, 0xCu);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24B7EFC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24B7EFCA8(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (a3)
  {
    v10 = objc_msgSend_allDurations(*(a1 + 32), v5, v6, v7, v8);
    v14 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, a3 - 1, v12, v13);

    if (v9)
    {
      objc_msgSend_CMTimeValue(v9, v15, v16, v17, v18);
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    if (v14)
    {
      objc_msgSend_CMTimeValue(v14, v19, v20, v21, v22);
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    *(*(*(a1 + 40) + 8) + 24) = Seconds - CMTimeGetSeconds(&time) + *(*(*(a1 + 40) + 8) + 24);
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void sub_24B7F2230(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5);
  objc_msgSend_postNotificationName_object_userInfo_(v7, v6, @"FMSongAssetsChanged", *(a1 + 32), 0);
}

void sub_24B7F24C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5);
  objc_msgSend_postNotificationName_object_userInfo_(v7, v6, @"FMSongAssetDownloadProgressChanged", *(a1 + 32), *(a1 + 40));
}

void sub_24B7F35F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[43] = *MEMORY[0x277D85DE8];
  v8[0] = @"Mood_Ethereal";
  v8[1] = @"Mood_Sentimental";
  v8[2] = @"Mood_Chill";
  v8[3] = @"Mood_Gentle";
  v8[4] = @"Mood_Happy";
  v8[5] = @"Mood_Uplifting";
  v8[6] = @"Mood_Party";
  v8[7] = @"Mood_Action";
  v8[8] = @"Mood_Epic";
  v8[9] = @"Mood_Neutral";
  v8[10] = @"SongPace_Slow";
  v8[11] = @"SongPace_Medium";
  v8[12] = @"SongPace_Fast";
  v8[13] = @"MoodAlt_Sentimental";
  v8[14] = @"MoodAlt_Playful";
  v8[15] = @"MoodAlt_Action";
  v8[16] = @"MoodAlt_Event";
  v8[17] = @"MoodAlt_Chill";
  v8[18] = @"MoodAlt_Retro";
  v8[19] = @"MoodAlt_Pop";
  v8[20] = @"Genre_Blues";
  v8[21] = @"Genre_Classical";
  v8[22] = @"Genre_Country";
  v8[23] = @"Genre_Dance";
  v8[24] = @"Genre_Electronic";
  v8[25] = @"Genre_HipHopRap";
  v8[26] = @"Genre_Holiday";
  v8[27] = @"Genre_Indie";
  v8[28] = @"Genre_Jazz";
  v8[29] = @"Genre_KidsFamily";
  v8[30] = @"Genre_Latin";
  v8[31] = @"Genre_Lounge";
  v8[32] = @"Genre_Metal";
  v8[33] = @"Genre_Pop";
  v8[34] = @"Genre_R&B";
  v8[35] = @"Genre_Reggae";
  v8[36] = @"Genre_Rock";
  v8[37] = @"Genre_SingerSongwriter";
  v8[38] = @"Genre_SoulFunk";
  v8[39] = @"Genre_StageScreen";
  v8[40] = @"Genre_World";
  v8[41] = @"Genre_Alternative";
  v8[42] = @"Genre_Downtempo";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v8, 43, a5);
  v6 = qword_27F060D50;
  qword_27F060D50 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24B7F43A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B7F43D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B7F43E8(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_hasPrefix_(v11, v3, @"Mood_", v4, v5))
  {
    objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v11, v11, v7, v8);
  }

  else if (objc_msgSend_hasPrefix_(v11, v6, @"SongPace_", v7, v8))
  {
    objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v11, v11, v9, v10);
  }
}

void sub_24B7F4570(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_24B7F4600(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_uid(a2, a2, a3, a4, a5);
  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_24B7E5000, a3, OS_LOG_TYPE_ERROR, "ERROR: client provide uid %@ does not match expected UID %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void _FMLogMessage(const char *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v15 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x400uLL, a3, &a9);
  v11 = strlen(__str);
  if (v11 <= 0x3FE)
  {
    snprintf(&__str[v11], 1024 - v11, " (file: %s, line: %u)", a1, a2);
  }

  v12 = FlexLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_24B7F47A4(__str, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_24B7F47A4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

id FlexLogForCategory(unint64_t a1)
{
  if (a1 >= 4)
  {
    sub_24B7F4938();
  }

  if (qword_28151B350 != -1)
  {
    sub_24B7F4924();
  }

  v2 = qword_28151B358[a1];

  return v2;
}

uint64_t sub_24B7F487C()
{
  v0 = os_log_create("com.apple.FlexMusicKit", "FlexMusicKit");
  v1 = qword_28151B358[0];
  qword_28151B358[0] = v0;

  v2 = os_log_create("com.apple.FlexMusicKit", "FlexMusicSequencer");
  v3 = qword_28151B360;
  qword_28151B360 = v2;

  v4 = os_log_create("com.apple.FlexMusicKit", "FlexMusicCloud");
  v5 = qword_28151B368;
  qword_28151B368 = v4;

  qword_28151B370 = os_log_create("com.apple.FlexMusicKit", "FlexMusicDatabase");

  return MEMORY[0x2821F96F8]();
}

id FlexDynamicCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_24B7F591C(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v34, v38, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v35;
    v15 = MEMORY[0x277CC0898];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        memset(&v33, 0, sizeof(v33));
        if (v17)
        {
          v18 = *(a1 + 32);
          objc_msgSend_doubleValue(v17, v9, v10, v11, v12);
          CMTimeMakeWithSeconds(&lhs, v19, v18);
        }

        else
        {
          lhs = *v15;
        }

        v31 = *(a1 + 36);
        CMTimeAdd(&v33, &lhs, &v31);
        v20 = MEMORY[0x277CCABB0];
        lhs = v33;
        Seconds = CMTimeGetSeconds(&lhs);
        v26 = objc_msgSend_numberWithDouble_(v20, v22, v23, v24, v25, Seconds);
        objc_msgSend_addObject_(v5, v27, v26, v28, v29);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v34, v38, 16);
    }

    while (v13);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_24B7F7120(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v10 = a3;
  if (v10)
  {
    v11 = FlexLogForCategory(3uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_24B7E5000, v11, OS_LOG_TYPE_DEFAULT, "Failed to load local song local database %@, error %@", &v16, 0x16u);
    }
  }

  else
  {
    v12 = objc_msgSend_newBackgroundContext(*(*(a1 + 32) + 16), v6, v7, v8, v9);
    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    *(v13 + 24) = v12;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24B7F7488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B7F74BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B7F74D4(uint64_t a1)
{
  v109 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = objc_msgSend_uid(*(a1 + 32), v3, v4, v5, v6);
  v94 = objc_msgSend_initWithUUIDString_(v2, v8, v7, v9, v10);

  if (v94)
  {
    v15 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v11, @"LocalSongs", v13, v14);
    v19 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v16, @"uuid == %@", v17, v18, v94);
    objc_msgSend_setPredicate_(v15, v20, v19, v21, v22);

    v23 = objc_loadWeakRetained(&to);
    v100 = 0;
    v93 = objc_msgSend_executeFetchRequest_error_(v23, v24, v15, &v100, v25);
    v26 = v100;

    if (objc_msgSend_count(v93, v27, v28, v29, v30) || v26)
    {
      if (v26)
      {
        v66 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          sub_24B7F8C0C();
        }

        v67 = *(*(a1 + 40) + 8);
        v68 = v26;
        v35 = *(v67 + 40);
        *(v67 + 40) = v68;
      }

      else
      {
        v35 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_24B7F8C74();
        }
      }
    }

    else
    {
      v31 = MEMORY[0x277CBE408];
      v32 = objc_loadWeakRetained(&to);
      v35 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(v31, v33, @"LocalSongs", v32, v34);

      objc_msgSend_setUuid_(v35, v36, v94, v37, v38);
      objc_msgSend_songData(*(a1 + 32), v39, v40, v41, v42);
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v43 = v97 = 0u;
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v96, v108, 16);
      if (v48)
      {
        v49 = *v97;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v97 != v49)
            {
              objc_enumerationMutation(v43);
            }

            v51 = *(*(&v96 + 1) + 8 * i);
            v52 = objc_msgSend_objectForKeyedSubscript_(v43, v45, v51, v46, v47);
            objc_msgSend_setValue_forKey_(v35, v53, v52, v51, v54);
          }

          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v96, v108, 16);
        }

        while (v48);
      }
    }

    v65 = v93;
  }

  else
  {
    v55 = MEMORY[0x277CCACA8];
    v56 = objc_msgSend_uid(*(a1 + 32), v11, v12, v13, v14);
    v15 = objc_msgSend_stringWithFormat_(v55, v57, @"'%@' is an invalid UUID. Record not saved to local database", v58, v59, v56);

    v60 = MEMORY[0x277CCA9B8];
    v106 = *MEMORY[0x277CCA068];
    v107 = v15;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v61, &v107, &v106, 1);
    v63 = objc_msgSend_errorWithDomain_code_userInfo_(v60, v62, @"com.apple.FlexMusicKit.DatabaseError", 0, v26);
    v64 = *(*(a1 + 40) + 8);
    v65 = *(v64 + 40);
    *(v64 + 40) = v63;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v69 = objc_loadWeakRetained(&to);
    hasChanges = objc_msgSend_hasChanges(v69, v70, v71, v72, v73);

    if (hasChanges)
    {
      v75 = objc_loadWeakRetained(&to);
      v76 = *(*(a1 + 40) + 8);
      obj = *(v76 + 40);
      v80 = objc_msgSend_save_(v75, v77, &obj, v78, v79);
      objc_storeStrong((v76 + 40), obj);

      if (!v80)
      {
        v81 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v86 = objc_msgSend_localizedDescription(*(*(*(a1 + 40) + 8) + 40), v82, v83, v84, v85);
          v91 = objc_msgSend_localizedRecoverySuggestion(*(*(*(a1 + 40) + 8) + 40), v87, v88, v89, v90);
          *buf = 138412546;
          v103 = v86;
          v104 = 2112;
          v105 = v91;
          _os_log_impl(&dword_24B7E5000, v81, OS_LOG_TYPE_DEFAULT, "Error updating database\n%@\n%@", buf, 0x16u);
        }

        goto LABEL_28;
      }
    }

    else if (*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_28;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_28:

  objc_destroyWeak(&to);
  v92 = *MEMORY[0x277D85DE8];
}

void sub_24B7F7B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24B7F7B74(uint64_t a1)
{
  v98 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = objc_msgSend_uid(*(a1 + 32), v3, v4, v5, v6);
  v85 = objc_msgSend_initWithUUIDString_(v2, v8, v7, v9, v10);

  if (v85)
  {
    v14 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v11, @"LocalSongs", v12, v13);
    v18 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v15, @"uuid == %@", v16, v17, v85);
    objc_msgSend_setPredicate_(v14, v19, v18, v20, v21);
    v84 = v14;

    v22 = objc_loadWeakRetained(&to);
    v91 = 0;
    v83 = objc_msgSend_executeFetchRequest_error_(v22, v23, v14, &v91, v24);
    v25 = v91;

    if (v25)
    {
      v30 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8C0C();
      }

      v31 = *(*(a1 + 40) + 8);
      v32 = v25;
      v33 = *(v31 + 40);
      *(v31 + 40) = v32;
    }

    else if (objc_msgSend_count(v83, v26, v27, v28, v29))
    {
      v33 = objc_msgSend_firstObject(v83, v34, v35, v36, v37);
      v42 = objc_msgSend_songData(*(a1 + 32), v38, v39, v40, v41);
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v47 = objc_msgSend_allKeys(v42, v43, v44, v45, v46);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v87, v97, 16);
      if (v52)
      {
        v53 = *v88;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v88 != v53)
            {
              objc_enumerationMutation(v47);
            }

            v55 = *(*(&v87 + 1) + 8 * i);
            v56 = objc_msgSend_objectForKeyedSubscript_(v42, v49, v55, v50, v51);
            objc_msgSend_setValue_forKey_(v33, v57, v56, v55, v58);
          }

          v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v87, v97, 16);
        }

        while (v52);
      }
    }

    else
    {
      v33 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8CDC();
      }
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v59 = objc_loadWeakRetained(&to);
    hasChanges = objc_msgSend_hasChanges(v59, v60, v61, v62, v63);

    if (hasChanges)
    {
      v65 = objc_loadWeakRetained(&to);
      v66 = *(*(a1 + 40) + 8);
      obj = *(v66 + 40);
      v70 = objc_msgSend_save_(v65, v67, &obj, v68, v69);
      objc_storeStrong((v66 + 40), obj);

      if (!v70)
      {
        v71 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v76 = objc_msgSend_localizedDescription(*(*(*(a1 + 40) + 8) + 40), v72, v73, v74, v75);
          v81 = objc_msgSend_localizedRecoverySuggestion(*(*(*(a1 + 40) + 8) + 40), v77, v78, v79, v80);
          *buf = 138412546;
          v94 = v76;
          v95 = 2112;
          v96 = v81;
          _os_log_impl(&dword_24B7E5000, v71, OS_LOG_TYPE_DEFAULT, "Error updating database\n%@\n%@", buf, 0x16u);
        }

        goto LABEL_26;
      }
    }

    else if (*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_26;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_26:

  objc_destroyWeak(&to);
  v82 = *MEMORY[0x277D85DE8];
}

void sub_24B7F8148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_24B7F817C(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 64));
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = objc_msgSend_initWithUUIDString_(v2, v3, *(a1 + 32), v4, v5);
  if (v9)
  {
    v10 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v6, @"LocalSongs", v7, v8);
    v14 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v11, @"uuid == %@", v12, v13, v9);
    objc_msgSend_setPredicate_(v10, v15, v14, v16, v17);

    v18 = objc_loadWeakRetained(&to);
    v71 = 0;
    v21 = objc_msgSend_executeFetchRequest_error_(v18, v19, v10, &v71, v20);
    v22 = v71;

    if (v22)
    {
      v27 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8C0C();
      }

      v28 = *(*(a1 + 48) + 8);
      v29 = v22;
      v30 = *(v28 + 40);
      *(v28 + 40) = v29;
    }

    else if (objc_msgSend_count(v21, v23, v24, v25, v26))
    {
      v30 = objc_msgSend_firstObject(v21, v31, v32, v33, v34);
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v35 = *(a1 + 40);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v67, v77, 16);
      if (v39)
      {
        v40 = *v68;
        do
        {
          v41 = 0;
          do
          {
            if (*v68 != v40)
            {
              objc_enumerationMutation(v35);
            }

            objc_msgSend_setValue_forKey_(v30, v37, 0, *(*(&v67 + 1) + 8 * v41++), v38);
          }

          while (v39 != v41);
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v67, v77, 16);
        }

        while (v39);
      }
    }

    else
    {
      v30 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8CDC();
      }
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v42 = objc_loadWeakRetained(&to);
    hasChanges = objc_msgSend_hasChanges(v42, v43, v44, v45, v46);

    if (hasChanges)
    {
      v48 = objc_loadWeakRetained(&to);
      v49 = *(*(a1 + 48) + 8);
      obj = *(v49 + 40);
      v53 = objc_msgSend_save_(v48, v50, &obj, v51, v52);
      objc_storeStrong((v49 + 40), obj);

      if (!v53)
      {
        v54 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v59 = objc_msgSend_localizedDescription(*(*(*(a1 + 48) + 8) + 40), v55, v56, v57, v58);
          v64 = objc_msgSend_localizedRecoverySuggestion(*(*(*(a1 + 48) + 8) + 40), v60, v61, v62, v63);
          *buf = 138412546;
          v74 = v59;
          v75 = 2112;
          v76 = v64;
          _os_log_impl(&dword_24B7E5000, v54, OS_LOG_TYPE_DEFAULT, "Error updating database\n%@\n%@", buf, 0x16u);
        }

        goto LABEL_26;
      }
    }

    else if (*(*(*(a1 + 48) + 8) + 40))
    {
      goto LABEL_26;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_26:

  objc_destroyWeak(&to);
  v65 = *MEMORY[0x277D85DE8];
}

void sub_24B7F8674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B7F868C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 24);
  v46 = 0;
  v8 = objc_msgSend_executeFetchRequest_error_(v7, a2, v6, &v46, a5);
  v9 = v46;
  if (objc_msgSend_count(v8, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_firstObject(v8, v14, v15, v16, v17);
    v23 = objc_msgSend_date(v18, v19, v20, v21, v22);
    v24 = *(*(a1 + 48) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

  else if (v8)
  {
    if (!objc_msgSend_count(v8, v14, v15, v16, v17))
    {
      v30 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v26, v27, v28, v29);
      v31 = *(*(a1 + 48) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      objc_msgSend__insertFirstCloudCheckDate_andSave_(*(a1 + 32), v33, *(*(*(a1 + 48) + 8) + 40), 1, v34);
    }
  }

  else
  {
    v35 = FlexLogForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_24B7F8D44(v9, v35, v36, v37, v38);
    }

    v43 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v39, v40, v41, v42);
    v44 = *(*(a1 + 48) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;
  }
}

void sub_24B7F88A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 24);
  v40 = 0;
  v8 = objc_msgSend_executeFetchRequest_error_(v7, a2, v6, &v40, a5);
  v9 = v40;
  if (objc_msgSend_count(v8, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_firstObject(v8, v14, v15, v16, v17);
    objc_msgSend_setDate_(v18, v19, *(a1 + 48), v20, v21);
LABEL_3:

    goto LABEL_6;
  }

  if (!v8)
  {
    v18 = FlexLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_24B7F8D44(v9, v18, v36, v37, v38);
    }

    goto LABEL_3;
  }

  objc_msgSend__insertFirstCloudCheckDate_andSave_(*(a1 + 32), v14, *(a1 + 48), 0, v17);
LABEL_6:
  if (objc_msgSend_hasChanges(*(*(a1 + 32) + 24), v22, v23, v24, v25))
  {
    v29 = *(*(a1 + 32) + 24);
    v39 = 0;
    v30 = objc_msgSend_save_(v29, v26, &v39, v27, v28);
    v31 = v39;
    if ((v30 & 1) == 0)
    {
      v32 = FlexLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8DC8(v31, v32, v33, v34, v35);
      }
    }
  }
}

void sub_24B7F8B08(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_24B7F8B4C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_24B7F8B6C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_24B7F8B88(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_localizedDescription(a1, a2, a3, a4, a5);
  sub_24B7F8B40();
  sub_24B7F8B08(&dword_24B7E5000, v6, v7, "Error fetching song records:\n%@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24B7F8C0C()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_24B7F8B28();
  sub_24B7F8B4C(&dword_24B7E5000, v0, v1, "Error fetching record for UID %@\n%@");
  v2 = *MEMORY[0x277D85DE8];
}

void sub_24B7F8C74()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_24B7F8B40();
  sub_24B7F8B6C(&dword_24B7E5000, v0, v1, "Song with UID %@ already present in database, new record not saved", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24B7F8CDC()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_24B7F8B40();
  sub_24B7F8B6C(&dword_24B7E5000, v0, v1, "No song record found for UID %@. No database update performed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24B7F8D44(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_localizedDescription(a1, a2, a3, a4, a5);
  sub_24B7F8B40();
  sub_24B7F8B08(&dword_24B7E5000, v6, v7, "Failed to execute date fetch request\n%@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24B7F8DC8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_localizedDescription(a1, a2, a3, a4, a5);
  sub_24B7F8B40();
  sub_24B7F8B08(&dword_24B7E5000, v6, v7, "Error saving last cloud check date to database.\n%@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

BOOL sub_24B7F937C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_attributes(a1, v5, v6, v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_objectForKeyedSubscript_(v9, v11, @"uuid", v12, v13);
  v15 = FlexDynamicCast(v10, v14);

  v16 = objc_opt_class();
  v20 = objc_msgSend_objectForKeyedSubscript_(v9, v17, @"FMAssetType", v18, v19);
  v21 = FlexDynamicCast(v16, v20);

  if (objc_msgSend_isEqualToString_(v21, v22, @"SongBundle", v23, v24))
  {
    v28 = FMSongBundleAssetID;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v21, v25, @"Artwork", v26, v27))
    {
LABEL_10:
      v77 = 0;
      goto LABEL_15;
    }

    v28 = FMSongArtworkAssetID;
  }

  v29 = *v28;
  if (!v29)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v31 = objc_opt_class();
  v35 = objc_msgSend_objectForKeyedSubscript_(v9, v32, @"_ContentVersion", v33, v34);
  v36 = FlexDynamicCast(v31, v35);
  v41 = objc_msgSend_integerValue(v36, v37, v38, v39, v40);

  v42 = objc_opt_class();
  v46 = objc_msgSend_objectForKeyedSubscript_(v9, v43, @"_CompatibilityVersion", v44, v45);
  v47 = FlexDynamicCast(v42, v46);
  v52 = objc_msgSend_integerValue(v47, v48, v49, v50, v51);

  v57 = objc_msgSend_songUID(v4, v53, v54, v55, v56);
  if (objc_msgSend_isEqualToString_(v57, v58, v15, v59, v60))
  {
    v65 = objc_msgSend_assetID(v4, v61, v62, v63, v64);
    v77 = objc_msgSend_isEqualToString_(v65, v66, v30, v67, v68) && objc_msgSend_contentVersion(v4, v69, v70, v71, v72) == v41 && objc_msgSend_compatibilityVersion(v4, v73, v74, v75, v76) == v52;
  }

  else
  {
    v77 = 0;
  }

LABEL_15:
  return v77;
}

void sub_24B7F9C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B7F9CB8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained[28] == a2 || WeakRetained[29] == a2)
  {
    v7 = WeakRetained;
    objc_msgSend_fetchAllSongsWithCompletion_(WeakRetained, v4, &unk_285EA04B0, v5, v6);
    WeakRetained = v7;
  }
}

void sub_24B7FA5FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_24B7FA618(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = objc_msgSend_attributes(v3, v4, v5, v6, v7);
    v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"_CompatibilityVersion", v11, v12);
    v18 = objc_msgSend_integerValue(v13, v14, v15, v16, v17);

    if (objc_msgSend_isEqualToString_(WeakRetained[5], v19, @"Ph", v20, v21))
    {
      v25 = (v18 - 1) >= 2;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v26 = objc_msgSend_objectForKeyedSubscript_(v9, v22, @"uuid", v23, v24);
      v30 = objc_msgSend_objectForKey_(*(a1 + 32), v27, v26, v28, v29);
      v35 = v30;
      if (v30)
      {
        v36 = objc_msgSend_attributes(v30, v31, v32, v33, v34);
        v37 = MEMORY[0x277CBEB98];
        v41 = objc_msgSend_objectForKeyedSubscript_(v36, v38, @"clientIDs", v39, v40);
        v45 = objc_msgSend_setWithArray_(v37, v42, v41, v43, v44);

        v49 = objc_msgSend_containsObject_(v45, v46, WeakRetained[5], v47, v48);
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 1;
    }
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

uint64_t sub_24B7FA7D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_27F060D60 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], a2, @"%K <= %d", a4, a5, @"_CompatibilityVersion", 3);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24B7FAC9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_stringByDeletingPathExtension(v3, v4, v5, v6, v7);
  if (objc_msgSend_containsString_(v8, v9, *(a1 + 32), v10, v11))
  {
    v16 = objc_msgSend_pathExtension(v3, v12, v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v16, v17, @"smsbundle", v18, v19);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_24B7FAFEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_stringByDeletingPathExtension(v3, v4, v5, v6, v7);
  if (objc_msgSend_containsString_(v8, v9, *(a1 + 32), v10, v11))
  {
    v16 = objc_msgSend_pathExtension(v3, v12, v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v16, v17, @"jpg", v18, v19);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

void sub_24B7FB4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B7FB508(void **a1)
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v7 = MEMORY[0x277CBEB18];
    v8 = objc_msgSend_allObjects(a1[4], v2, v3, v4, v5);
    v12 = objc_msgSend_arrayWithArray_(v7, v9, v8, v10, v11);

    v13 = MEMORY[0x277CCAC30];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_24B7FB71C;
    v36[3] = &unk_27900EF90;
    v37 = a1[5];
    v38 = a1[6];
    v17 = objc_msgSend_predicateWithBlock_(v13, v14, v36, v15, v16);
    objc_msgSend_filterUsingPredicate_(v12, v18, v17, v19, v20);

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = v12;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v32, v40, 16);
    if (v23)
    {
      v28 = v23;
      v29 = *v33;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(v21);
          }

          objc_msgSend_purgeSync(*(*(&v32 + 1) + 8 * i), v24, v25, v26, v27, v32);
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v32, v40, 16);
      }

      while (v28);
    }
  }

  else
  {
    v21 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v21, OS_LOG_TYPE_DEFAULT, "StrongSelf is nil in _newestContentSetFromAssets. Returning...", buf, 2u);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24B7FB71C(uint64_t a1, void *a2)
{
  v107 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = objc_msgSend_attributes(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"uuid", v10, v11);
  if (objc_msgSend_containsObject_(*(a1 + 32), v13, v3, v14, v15))
  {
LABEL_15:
    if ((objc_msgSend_containsObject_(*(a1 + 40), v16, v12, v17, v18) & 1) == 0)
    {
      isPresent = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v94 = a1;
    v95 = v8;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v19 = *(a1 + 32);
    v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v102, v106, 16);
    if (v101)
    {
      v25 = *v103;
      v99 = *v103;
      do
      {
        for (i = 0; i != v101; ++i)
        {
          if (*v103 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(*(&v102 + 1) + 8 * i);
          v28 = objc_msgSend_attributes(v27, v21, v22, v23, v24);
          v32 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"uuid", v30, v31);
          isEqualToString = objc_msgSend_isEqualToString_(v32, v33, v12, v34, v35);

          if (isEqualToString)
          {
            v100 = objc_msgSend_attributes(v27, v21, v22, v23, v24);
            v40 = objc_msgSend_objectForKeyedSubscript_(v100, v37, @"_ContentVersion", v38, v39);
            v45 = objc_msgSend_integerValue(v40, v41, v42, v43, v44);
            v50 = objc_msgSend_attributes(v3, v46, v47, v48, v49);
            v54 = objc_msgSend_objectForKeyedSubscript_(v50, v51, @"_ContentVersion", v52, v53);
            if (v45 == objc_msgSend_integerValue(v54, v55, v56, v57, v58))
            {
              v97 = objc_msgSend_attributes(v27, v59, v60, v61, v62);
              v66 = objc_msgSend_objectForKeyedSubscript_(v97, v63, @"_CompatibilityVersion", v64, v65);
              v98 = objc_msgSend_integerValue(v66, v67, v68, v69, v70);
              objc_msgSend_attributes(v3, v71, v72, v73, v74);
              v76 = v75 = v3;
              objc_msgSend_objectForKeyedSubscript_(v76, v77, @"_CompatibilityVersion", v78, v79);
              v80 = v19;
              v82 = v81 = v12;
              v96 = objc_msgSend_integerValue(v82, v83, v84, v85, v86);

              v12 = v81;
              v19 = v80;

              v3 = v75;
              v25 = v99;
              if (v98 == v96)
              {

                a1 = v94;
                v8 = v95;
                goto LABEL_15;
              }
            }

            else
            {

              v25 = v99;
            }
          }
        }

        v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v102, v106, 16);
      }

      while (v101);
    }

    v8 = v95;
  }

  isPresent = objc_msgSend_isPresent(v3, v87, v88, v89, v90);
LABEL_18:

  v92 = *MEMORY[0x277D85DE8];
  return isPresent;
}

void sub_24B7FBB30(uint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = FlexLogForCategory(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend__mobileAssetDownloadResultStringValue_(*(a1 + 32), v5, a2, v6, v7);
    *buf = 138412290;
    v95 = v8;
    _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "Completed catalog download with MADownloadResult: %@", buf, 0xCu);
  }

  v12 = objc_msgSend__responseForDownloadResult_(*(a1 + 32), v9, a2, v10, v11);
  v16 = v12;
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (v12 == 3)
  {
LABEL_19:
    v23 = objc_msgSend__mobileAssetDownloadResultStringValue_(*(a1 + 32), v13, a2, v14, v15);
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v79, @"An error occurred while downloading the Mobile Assets catalog: %@", v80, v81, v23);
    v82 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v95 = v22;
      _os_log_impl(&dword_24B7E5000, v82, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v83 = *MEMORY[0x277CCA470];
    v91[0] = *MEMORY[0x277CCA450];
    v91[1] = v83;
    v92[0] = v22;
    v92[1] = v23;
    v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v84, v92, v91, 2);
    v75 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v85, @"com.apple.FlexMusicKit", v16, v54);
    (*(*(a1 + 40) + 16))();
LABEL_22:

    goto LABEL_23;
  }

  if (v12 == 2)
  {
LABEL_9:
    v17 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(*(a1 + 32), v13, @"SongBundle", 0, v15);
    v22 = objc_msgSend_set(MEMORY[0x277CBEB58], v18, v19, v20, v21);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v23 = v17;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v87, v93, 16);
    if (v25)
    {
      v30 = v25;
      v31 = *v88;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v88 != v31)
          {
            objc_enumerationMutation(v23);
          }

          v33 = *(*(&v87 + 1) + 8 * i);
          v34 = objc_msgSend_attributes(v33, v26, v27, v28, v29);
          v38 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"uuid", v36, v37);

          if (v38)
          {
            v43 = objc_msgSend_attributes(v33, v39, v40, v41, v42);
            v47 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"uuid", v45, v46);
            objc_msgSend_addObject_(v22, v48, v47, v49, v50);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v87, v93, 16);
      }

      while (v30);
    }

    v54 = objc_msgSend__metadataMappingForUUIDSet_(*(a1 + 32), v51, v22, v52, v53);
    v57 = objc_msgSend_filterByClientIDForAssets_forMetadataMapping_(*(a1 + 32), v55, v23, v54, v56);
    v60 = objc_msgSend__processResults_metadataMapping_(*(a1 + 32), v58, v57, v54, v59);
    v61 = *(a1 + 40);
    v66 = objc_msgSend_cloudManagedSongs(*(a1 + 32), v62, v63, v64, v65);
    (*(v61 + 16))(v61, v66, 0);

    v69 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(*(a1 + 32), v67, @"Artwork", 0, v68);
    v72 = objc_msgSend__newestContentSetFromAssets_metadataMapping_(*(a1 + 32), v70, v69, v54, v71);
    v75 = objc_msgSend_filterByClientIDForAssets_forMetadataMapping_(*(a1 + 32), v73, v72, v54, v74);

    v78 = objc_msgSend__processResults_metadataMapping_(*(a1 + 32), v76, v75, v54, v77);
    goto LABEL_22;
  }

LABEL_23:
  v86 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24B7FDADC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_attributes(a2, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"_ContentVersion", v11, v12);
  v18 = objc_msgSend_attributes(v4, v14, v15, v16, v17);

  v22 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"_ContentVersion", v20, v21);
  v26 = objc_msgSend_compare_(v13, v23, v22, v24, v25);

  return v26;
}

void sub_24B7FE338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__runNextAsyncAssetDownloadAndPurge(WeakRetained, v2, v3, v4, v5);
  }

  else
  {
    v7 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_24B7E5000, v7, OS_LOG_TYPE_DEFAULT, "FlexMobileAssetManagerV2 is nil from _dispatchNextAsyncAssetDownloadAndPurge:", v8, 2u);
    }
  }
}

void sub_24B7FED34(uint64_t a1)
{
  v72[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    v17 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&dword_24B7E5000, v17, OS_LOG_TYPE_DEFAULT, "FlexMobileAssetManagerV2 is nil from _dispatchNextAsyncAssetDownloadAndPurge:", &v70, 2u);
    }

    goto LABEL_18;
  }

  v7 = objc_msgSend_assetID(*(a1 + 32), v2, v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"FMSongBundleAssetID", v9, v10);

  if (isEqualToString)
  {
    v16 = FlexMobileAssetPropertySongBundle;
  }

  else
  {
    v18 = objc_msgSend_assetID(*(a1 + 32), v12, v13, v14, v15);
    v22 = objc_msgSend_isEqualToString_(v18, v19, @"FMSongArtworkAssetID", v20, v21);

    if (!v22)
    {
      v17 = 0;
      goto LABEL_15;
    }

    v16 = FlexMobileAssetPropertyArtwork;
  }

  v17 = *v16;
  if (!v17)
  {
    goto LABEL_15;
  }

  v27 = *(a1 + 40);
  v28 = objc_msgSend_uid(*(a1 + 48), v23, v24, v25, v26);
  v72[0] = v28;
  v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, v72, 1, v30);
  v34 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(v27, v32, v17, v31, v33);

  v37 = objc_msgSend_assetWithNewestContentVersionInAssets_preferInstalled_(FlexMobileAssetManagerV2, v35, v34, 0, v36);

  if (!v37)
  {
LABEL_15:
    v37 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(a1 + 56);
      v70 = 138412290;
      v71 = v47;
      _os_log_impl(&dword_24B7E5000, v37, OS_LOG_TYPE_DEFAULT, "Not downloading %@ because no mobile asset exists.", &v70, 0xCu);
    }

    goto LABEL_17;
  }

  if (objc_msgSend_isPresent(v37, v38, v39, v40, v41))
  {
    v45 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 56);
      v70 = 138412290;
      v71 = v46;
      _os_log_impl(&dword_24B7E5000, v45, OS_LOG_TYPE_DEFAULT, "Not downloading %@ because mobile asset is alredy installed.", &v70, 0xCu);
    }

LABEL_17:
    goto LABEL_18;
  }

  if ((objc_msgSend__isDownloadingAsset_(*(a1 + 40), v42, *(a1 + 32), v43, v44) & 1) == 0)
  {
    v49 = WeakRetained[7];
    objc_sync_enter(v49);
    objc_msgSend_addObject_(WeakRetained[9], v50, v37, v51, v52);
    objc_msgSend_setObject_forKey_(WeakRetained[11], v53, *(a1 + 64), v37, v54);
    if (objc_msgSend_containsObject_(WeakRetained[12], v55, v37, v56, v57))
    {
      objc_msgSend_removeObject_(WeakRetained[12], v58, v37, v59, v60);
    }

    if (objc_msgSend_containsObject_(WeakRetained[13], v58, v37, v59, v60))
    {
      objc_msgSend_removeObject_(WeakRetained[13], v61, v37, v62, v63);
    }

    objc_sync_exit(v49);

    objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 48), v64, *(a1 + 32), 0, v65, 0.01);
    objc_msgSend__dispatchNextAsyncAssetDownloadAndPurge(WeakRetained, v66, v67, v68, v69);
  }

LABEL_18:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_24B7FF5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B7FF620(uint64_t a1, void *a2)
{
  v19 = a2;
  if (objc_msgSend_totalExpected(v19, v3, v4, v5, v6) < 1)
  {
    objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 32), v7, *(a1 + 40), 0, v10, 0.01);
  }

  else
  {
    v11 = objc_msgSend_totalWritten(v19, v7, v8, v9, v10);
    v16 = v11 / objc_msgSend_totalExpected(v19, v12, v13, v14, v15);
    objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 32), v17, *(a1 + 40), 0, v18, v16);
  }
}

void sub_24B7FF6AC(uint64_t a1, uint64_t a2)
{
  v118 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = FlexLogForCategory(2uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v6)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = objc_msgSend__mobileAssetDownloadResultStringValue_(*(a1 + 48), v7, a2, v8, v9);
      *buf = 138412802;
      v113 = v11;
      v114 = 2112;
      v115 = v10;
      v116 = 2112;
      v117 = v12;
      _os_log_impl(&dword_24B7E5000, v5, OS_LOG_TYPE_DEFAULT, "Ending download task for UID: %@ assetID: %@. MADownloadResult: %@", buf, 0x20u);
    }

    v16 = objc_msgSend__responseForDownloadResult_(WeakRetained, v13, a2, v14, v15);
    v17 = v16;
    v18 = 0;
    if (v16 > 1)
    {
      if (v16 == 3)
      {
        goto LABEL_15;
      }

      if (v16 != 2)
      {
LABEL_31:
        v95 = FlexLogForCategory(2uLL);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = *(a1 + 32);
          v97 = *(a1 + 40);
          *buf = 138412546;
          v113 = v96;
          v114 = 2112;
          v115 = v97;
          _os_log_impl(&dword_24B7E5000, v95, OS_LOG_TYPE_DEFAULT, "Completed processing of %@ %@", buf, 0x16u);
        }

        if ((v18 & 1) == 0)
        {
          v102 = WeakRetained[7];
          objc_sync_enter(v102);
          objc_msgSend_removeObject_(WeakRetained[10], v103, *(a1 + 56), v104, v105);
          objc_msgSend_removeObjectForKey_(WeakRetained[11], v106, *(a1 + 56), v107, v108);
          objc_sync_exit(v102);
        }

        objc_msgSend__dispatchNextAsyncAssetDownloadAndPurge(WeakRetained, v98, v99, v100, v101);
        goto LABEL_36;
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_31;
      }

LABEL_15:
      v50 = WeakRetained[7];
      objc_sync_enter(v50);
      if (objc_msgSend_containsObject_(WeakRetained[10], v51, *(a1 + 56), v52, v53))
      {
        v54 = FlexLogForCategory(2uLL);
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v55 = *(a1 + 32);
        v56 = *(a1 + 40);
        *buf = 138412802;
        v113 = v55;
        v114 = 2112;
        v115 = v56;
        v116 = 2048;
        v117 = v17;
        v57 = "Asset download failed when attempting to download asset %@ %@ - %lu";
        v58 = v54;
        v59 = 32;
      }

      else
      {
        v54 = FlexLogForCategory(2uLL);
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v60 = *(a1 + 32);
        v61 = *(a1 + 40);
        *buf = 138412546;
        v113 = v60;
        v114 = 2112;
        v115 = v61;
        v57 = "Asset download canceled %@ %@";
        v58 = v54;
        v59 = 22;
      }

      _os_log_impl(&dword_24B7E5000, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
LABEL_21:

      objc_msgSend_removeObjectForKey_(WeakRetained[11], v62, *(a1 + 56), v63, v64);
      objc_sync_exit(v50);

      if (a2 == 10)
      {
        if (objc_msgSend_containsObject_(WeakRetained[13], v65, *(a1 + 56), v66, v67))
        {
          goto LABEL_23;
        }
      }

      else if (a2 == 48)
      {
LABEL_23:
        objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v65, *(a1 + 72), 0, v67, 0.0);
LABEL_30:
        v18 = 0;
        goto LABEL_31;
      }

      v85 = *MEMORY[0x277CCA470];
      v110[0] = *MEMORY[0x277CCA450];
      v110[1] = v85;
      v111[0] = @"Download operation was unsuccessful.";
      v86 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"MobileAsset error %li", v66, v67, a2);
      v111[1] = v86;
      v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, v111, v110, 2);

      v90 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v89, @"com.apple.FlexMusicKit", a2, v88);
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v91, *(a1 + 72), v90, v92, -1.0);
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v93, *(a1 + 72), 0, v94, 0.0);

      goto LABEL_30;
    }

    v19 = WeakRetained[7];
    objc_sync_enter(v19);
    v23 = objc_msgSend_containsObject_(WeakRetained[10], v20, *(a1 + 56), v21, v22);
    objc_sync_exit(v19);

    if (v23)
    {
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v24, *(a1 + 72), 0, v25, 1.0);
      objc_msgSend_refreshState(*(a1 + 56), v26, v27, v28, v29);
      v30 = WeakRetained[7];
      objc_sync_enter(v30);
      objc_msgSend_removeObject_(WeakRetained[10], v31, *(a1 + 56), v32, v33);
      objc_msgSend_removeObjectForKey_(WeakRetained[11], v34, *(a1 + 56), v35, v36);
      objc_sync_exit(v30);

      v40 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v37, *(a1 + 32), v38, v39);
      v44 = objc_msgSend__metadataMappingForUUIDSet_(WeakRetained, v41, v40, v42, v43);

      v48 = objc_msgSend_objectForKey_(v44, v45, *(a1 + 32), v46, v47);
      objc_msgSend__updateExistingSong_usingAsset_metadataAsset_(WeakRetained, v49, *(a1 + 64), *(a1 + 56), v48);
    }

    else
    {
      v68 = FlexLogForCategory(2uLL);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = *(a1 + 32);
        v70 = *(a1 + 40);
        *buf = 138412546;
        v113 = v69;
        v114 = 2112;
        v115 = v70;
        _os_log_impl(&dword_24B7E5000, v68, OS_LOG_TYPE_DEFAULT, "Cancel request after downloading, purging %@ %@", buf, 0x16u);
      }

      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v71, *(a1 + 72), 0, v72, -1.0);
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v73, *(a1 + 72), 0, v74, 0.0);
      v75 = WeakRetained[7];
      objc_sync_enter(v75);
      objc_msgSend_addObject_(WeakRetained[12], v76, *(a1 + 56), v77, v78);
      objc_msgSend_removeObject_(WeakRetained[10], v79, *(a1 + 56), v80, v81);
      objc_msgSend_removeObjectForKey_(WeakRetained[11], v82, *(a1 + 56), v83, v84);
      objc_sync_exit(v75);
    }

    v18 = 1;
    goto LABEL_31;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_24B7E5000, v5, OS_LOG_TYPE_DEFAULT, "attempted to download but no cloud manager", buf, 2u);
  }

LABEL_36:
  v109 = *MEMORY[0x277D85DE8];
}

void sub_24B8001F0(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = FlexLogForCategory(2uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v5)
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *buf = 138412546;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "Cancel download success for mobile asset with songUID: %@ assetID: %@ ", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = objc_msgSend__mobileAssetCancelDownloadResultStringValue_(*(a1 + 48), v6, a2, v7, v8);
    *buf = 138412802;
    v33 = v9;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "Cancel download failed for mobile asset with songUID: %@ assetID: %@ MACancelDownloadResult: %@", buf, 0x20u);
  }

  if (a2 == 3)
  {
LABEL_9:
    objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 56), v12, *(a1 + 64), 0, v14, -1.0);
    objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 56), v27, *(a1 + 64), 0, v28, 0.0);
    goto LABEL_10;
  }

  v15 = *MEMORY[0x277CCA470];
  v30[0] = *MEMORY[0x277CCA450];
  v30[1] = v15;
  v31[0] = @"Cancel operation was unsuccessful.";
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"MobileAsset error %li", v13, v14, a2);
  v31[1] = v16;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v31, v30, 2);

  v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"com.apple.FlexMusicKit", a2, v18);
  objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 56), v21, *(a1 + 64), v20, v22, -1.0);
  objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 56), v23, *(a1 + 64), 0, v24, 0.0);

LABEL_10:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_24B8007B8(uint64_t a1)
{
  v250[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[7];
    objc_sync_enter(v4);
    if (objc_msgSend_containsObject_(*(v3 + 104), v5, *(a1 + 32), v6, v7))
    {
      objc_sync_exit(v4);

      if (!objc_msgSend_isPresent(*(a1 + 32), v12, v13, v14, v15))
      {
LABEL_54:
        v213 = *(v3 + 56);
        objc_sync_enter(v213);
        objc_msgSend_removeObject_(*(v3 + 104), v214, *(a1 + 32), v215, v216);
        objc_sync_exit(v213);

        v217 = *(v3 + 144);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_24B801048;
        block[3] = &unk_27900E970;
        block[4] = v3;
        dispatch_async(v217, block);
        goto LABEL_55;
      }

      v19 = (a1 + 48);
      v228 = objc_msgSend_existingAssetWithID_(*(a1 + 40), v16, *(a1 + 48), v17, v18);
      isEqualToString = objc_msgSend_isEqualToString_(*(a1 + 48), v20, @"FMSongBundleAssetID", v21, v22);
      v27 = *(a1 + 40);
      if (isEqualToString)
      {
        objc_msgSend_existingAssetWithID_(*(a1 + 40), v24, @"FMSongArtworkAssetID", v25, v26);
      }

      else
      {
        objc_msgSend_existingAssetWithID_(*(a1 + 40), v24, @"FMSongBundleAssetID", v25, v26);
      }
      v227 = ;
      v28 = [FlexMobileAssetV2SongAsset alloc];
      v29 = *v19;
      v34 = objc_msgSend_contentVersion(v228, v30, v31, v32, v33);
      v39 = objc_msgSend_compatibilityVersion(v228, v35, v36, v37, v38);
      v226 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v28, v40, v29, 0, v3, v34, v39);
      if (objc_msgSend_isEqualToString_(*v19, v41, @"FMSongBundleAssetID", v42, v43))
      {
        v220 = [FlexSongProxy alloc];
        v225 = objc_msgSend_uid(*(a1 + 40), v47, v48, v49, v50);
        v224 = objc_msgSend_songName(*(a1 + 40), v51, v52, v53, v54);
        v223 = objc_msgSend_artistName(*(a1 + 40), v55, v56, v57, v58);
        v222 = objc_msgSend_tagIDs(*(a1 + 40), v59, v60, v61, v62);
        v221 = objc_msgSend_keywords(*(a1 + 40), v63, v64, v65, v66);
        v71 = objc_msgSend_weightedKeywords(*(a1 + 40), v67, v68, v69, v70);
        v76 = objc_msgSend_hidden(*(a1 + 40), v72, v73, v74, v75);
        v83 = objc_msgSend_recalled(*(a1 + 40), v77, v78, v79, v80);
        if (v227)
        {
          v250[0] = v227;
          v250[1] = v226;
          v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v81, v250, 2, v82);
        }

        else
        {
          v249 = v226;
          v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v81, &v249, 1, v82);
        }

        v99 = v84;
        v100 = objc_msgSend_audioEncoderPresetName(*(a1 + 40), v85, v86, v87, v88);
        v105 = objc_msgSend_metadataVersion(*(a1 + 40), v101, v102, v103, v104);
        v110 = objc_msgSend_songFormat(*(a1 + 40), v106, v107, v108, v109);
        HIBYTE(v219) = v83;
        LOBYTE(v219) = v76;
        v112 = objc_msgSend_initWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_recalled_assets_audioEncoderPresetName_metadataVersion_songFormat_(v220, v111, v225, v224, v223, v222, v221, v71, v219, v99, v100, v105, v110);

        objc_msgSend_updateBackend_(*(a1 + 40), v113, v112, v114, v115);
        v120 = objc_msgSend_uid(*(a1 + 40), v116, v117, v118, v119);
        objc_msgSend__loadBundledSongForSongID_(v3, v121, v120, v122, v123);
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(*(a1 + 48), v44, @"FMSongArtworkAssetID", v45, v46))
        {
          goto LABEL_22;
        }

        v94 = *(a1 + 40);
        if (v227)
        {
          v248[0] = v227;
          v248[1] = v226;
          v95 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v90, v248, 2, v93);
        }

        else
        {
          v247 = v226;
          v95 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v90, &v247, 1, v93);
        }

        v124 = v95;
        objc_msgSend_updateAssets_(v94, v96, v95, v97, v98);

        v112 = objc_msgSend_uid(*(a1 + 40), v125, v126, v127, v128);
        objc_msgSend__loadBundledArtworkForSongID_(v3, v129, v112, v130, v131);
      }

LABEL_22:
      v136 = objc_msgSend_purgeSync(*(a1 + 32), v90, v91, v92, v93);
      if (v136)
      {
        v137 = FlexLogForCategory(2uLL);
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
        {
          v142 = objc_msgSend_uid(*(a1 + 40), v138, v139, v140, v141);
          v143 = *(a1 + 48);
          v147 = objc_msgSend__mobileAssetPurgeResultStringValue_(v3, v144, v136, v145, v146);
          *buf = 138412802;
          v242 = v142;
          v243 = 2112;
          v244 = v143;
          v245 = 2112;
          v246 = v147;
          _os_log_impl(&dword_24B7E5000, v137, OS_LOG_TYPE_DEFAULT, "purge failed for %@ %@ error: %@", buf, 0x20u);
        }
      }

      v152 = objc_msgSend_state(*(a1 + 32), v132, v133, v134, v135);
      v153 = *(a1 + 32);
      if (v152 == 3)
      {
        v154 = objc_msgSend_attributes(v153, v148, v149, v150, v151);
        v158 = objc_msgSend_objectForKeyedSubscript_(v154, v155, @"FMAssetType", v156, v157);
        v240 = *(a1 + 56);
        v161 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v159, &v240, 1, v160);
        v164 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(v3, v162, v158, v161, v163);

        v169 = objc_msgSend_set(MEMORY[0x277CBEB58], v165, v166, v167, v168);
        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v170 = v164;
        v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v171, &v234, v239, 16);
        if (v176)
        {
          v177 = *v235;
          do
          {
            for (i = 0; i != v176; ++i)
            {
              if (*v235 != v177)
              {
                objc_enumerationMutation(v170);
              }

              v179 = objc_msgSend_attributes(*(*(&v234 + 1) + 8 * i), v172, v173, v174, v175);
              v183 = objc_msgSend_objectForKeyedSubscript_(v179, v180, @"uuid", v181, v182);

              if (v183)
              {
                objc_msgSend_addObject_(v169, v184, v183, v185, v186);
              }
            }

            v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v172, &v234, v239, 16);
          }

          while (v176);
        }

        v190 = objc_msgSend__metadataMappingForUUIDSet_(v3, v187, v169, v188, v189);
        v194 = objc_msgSend_objectForKey_(v190, v191, *(a1 + 56), v192, v193);
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v195 = v170;
        v201 = objc_msgSend_countByEnumeratingWithState_objects_count_(v195, v196, &v230, v238, 16);
        if (v201)
        {
          v202 = *v231;
          while (2)
          {
            for (j = 0; j != v201; j = j + 1)
            {
              if (*v231 != v202)
              {
                objc_enumerationMutation(v195);
              }

              v204 = *(*(&v230 + 1) + 8 * j);
              if (objc_msgSend_state(v204, v197, v198, v199, v200) != 3)
              {
                v201 = v204;
                goto LABEL_49;
              }
            }

            v201 = objc_msgSend_countByEnumeratingWithState_objects_count_(v195, v197, &v230, v238, 16);
            if (v201)
            {
              continue;
            }

            break;
          }
        }

LABEL_49:

        v211 = *(a1 + 64);
        objc_sync_enter(v211);
        if (v201)
        {
          objc_msgSend__updateExistingSong_usingAsset_metadataAsset_forceUpdate_(v3, v212, *(a1 + 40), v201, v194, 1);
        }

        objc_sync_exit(v211);
      }

      else
      {
        if (objc_msgSend_refreshState(v153, v148, v149, v150, v151))
        {
LABEL_53:

          goto LABEL_54;
        }

        v195 = FlexLogForCategory(2uLL);
        if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
        {
          v209 = objc_msgSend_uid(*(a1 + 40), v205, v206, v207, v208);
          v210 = *(a1 + 48);
          *buf = 138412546;
          v242 = v209;
          v243 = 2112;
          v244 = v210;
          _os_log_impl(&dword_24B7E5000, v195, OS_LOG_TYPE_DEFAULT, "refreshState failed for %@ %@", buf, 0x16u);
        }
      }

      goto LABEL_53;
    }

    objc_msgSend__dispatchNextAsyncAssetDownloadAndPurge(v3, v8, v9, v10, v11);
    objc_sync_exit(v4);
  }

  else
  {
    v89 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v89, OS_LOG_TYPE_DEFAULT, "attempted to purge but no cloud manager", buf, 2u);
    }
  }

LABEL_55:

  v218 = *MEMORY[0x277D85DE8];
}

void sub_24B801294(uint64_t a1)
{
  v68[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v7 = objc_msgSend_songUID(*(a1 + 40), v2, v3, v4, v5);

      if (v7)
      {
        v8 = *(a1 + 48);
        v9 = *(a1 + 32);
        v10 = objc_msgSend_songUID(*(a1 + 40), v2, v3, v4, v5);
        v68[0] = v10;
        v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v68, 1, v12);
        v16 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(v8, v14, v9, v13, v15);

        v7 = objc_msgSend_assetWithNewestContentVersionInAssets_preferInstalled_(FlexMobileAssetManagerV2, v17, v16, 1, v18);
        if (!v7)
        {
          v19 = FlexLogForCategory(2uLL);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v24 = objc_msgSend_songUID(*(a1 + 40), v20, v21, v22, v23);
            v29 = objc_msgSend_assetID(*(a1 + 40), v25, v26, v27, v28);
            v64 = 138412546;
            v65 = v24;
            v66 = 2112;
            v67 = v29;
            _os_log_impl(&dword_24B7E5000, v19, OS_LOG_TYPE_DEFAULT, "cannot purge due to nil mobileAsset %@ %@", &v64, 0x16u);
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v30 = *(a1 + 48);
    v31 = objc_msgSend_songUID(*(a1 + 40), v2, v3, v4, v5);
    v35 = objc_msgSend__existingSongForUID_(v30, v32, v31, v33, v34);

    v36 = WeakRetained[7];
    objc_sync_enter(v36);
    if (!v7)
    {
      goto LABEL_15;
    }

    if (objc_msgSend__isDownloadingAsset_(*(a1 + 48), v37, *(a1 + 40), v38, v39))
    {
      objc_msgSend_removeObject_(WeakRetained[9], v40, v7, v41, v42);
      objc_msgSend_removeObject_(WeakRetained[10], v43, v7, v44, v45);
      objc_msgSend_updateAsset_downloadProgress_error_(v35, v46, *(a1 + 40), 0, v47, 0.0);
    }

    if (objc_msgSend_containsObject_(WeakRetained[13], v40, v7, v41, v42))
    {
      objc_sync_exit(v36);
    }

    else
    {
LABEL_15:
      objc_sync_exit(v36);

      if (objc_msgSend_assetStatus(*(a1 + 40), v48, v49, v50, v51) == 2)
      {
        objc_msgSend_cancelDownloadOfAsset_(*(a1 + 48), v52, *(a1 + 40), v53, v54);
      }

      v55 = WeakRetained[7];
      objc_sync_enter(v55);
      if (v7)
      {
        objc_msgSend_addObject_(WeakRetained[12], v56, v7, v57, v58);
      }

      objc_sync_exit(v55);

      objc_msgSend__dispatchNextAsyncAssetDownloadAndPurge(*(a1 + 48), v59, v60, v61, v62);
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24B803A0C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_sampleCount(v4, v6, v7, v8, v9);
  if (v10 >= objc_msgSend_sampleCount(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_sampleCount(v4, v15, v16, v17, v18);
    v19 = v20 > objc_msgSend_sampleCount(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_24B804228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_24B80425C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_type(v5, v6, v7, v8, v9) == 2;

  return v10;
}

uint64_t sub_24B80429C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_24B8042B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_segment(*(*(*(a1 + 32) + 8) + 40), v4, v5, v6, v7);
  v13 = objc_msgSend_name(v3, v9, v10, v11, v12);
  if (objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(v8, v14, v13, v15, v16))
  {
    v21 = 0;
  }

  else
  {
    v21 = objc_msgSend_barsUsed(*(*(*(a1 + 32) + 8) + 40), v17, v18, v19, v20) - 1;
  }

  v26 = objc_msgSend_segment(*(*(*(a1 + 32) + 8) + 40), v22, v23, v24, v25);
  v28 = objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v27, v26, v3, v21, 1);

  return v28;
}

void sub_24B804614()
{
  v10 = objc_opt_new();
  for (i = 0; i != 100; ++i)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v0, @"%ld", v1, v2, i);
    objc_msgSend_addObject_(v10, v5, v4, v6, v7);
  }

  v8 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v0, v10, v1, v2);
  v9 = qword_28151B378;
  qword_28151B378 = v8;
}

uint64_t sub_24B80557C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_type(v6, v7, v8, v9, v10) == 3;
  v16 = objc_msgSend_nameIndex(v6, v12, v13, v14, v15);
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%lu", v18, v19, *(a1 + 32));
  isEqualToString = objc_msgSend_isEqualToString_(v16, v21, v20, v22, v23);

  return v11 & isEqualToString;
}

uint64_t sub_24B805624(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_segment(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_indexOfObject_(*(a1 + 32), v9, v3, v10, v11);
  if (v12 >= objc_msgSend_count(*(a1 + 32), v13, v14, v15, v16) - 1)
  {
    v50 = 0;
    v31 = 0;
    objc_msgSend_name(0, v17, v18, v19, v20);
  }

  else
  {
    v21 = v12 + 1;
    v22 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v17, v12 + 1, v19, v20);
    v31 = objc_msgSend_segment(v22, v23, v24, v25, v26);
    while (1)
    {
      if (v21 >= objc_msgSend_count(*(a1 + 32), v27, v28, v29, v30))
      {
        v50 = 0;
        goto LABEL_9;
      }

      v35 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v32, v21, v33, v34);
      v40 = objc_msgSend_segment(v35, v36, v37, v38, v39);
      v45 = objc_msgSend_type(v40, v41, v42, v43, v44);

      if (v45 == 2)
      {
        break;
      }

      ++v21;
    }

    v50 = objc_msgSend_segment(v35, v46, v47, v48, v49);

LABEL_9:
    objc_msgSend_name(v50, v51, v52, v53, v54);
  }
  v55 = ;
  v58 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v8, v56, v55, 0, v57);

  if (v58 && v31 && (objc_msgSend_transitionSegmentName(v58, v59, v60, v61, v62), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v31, v64, v65, v66, v67), v68 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend_isEqualToString_(v63, v69, v68, v70, v71), v68, v63, (v72 & 1) != 0))
  {
    isEqualToString = 0;
  }

  else
  {
    v74 = objc_msgSend_name(v8, v59, v60, v61, v62);
    v79 = objc_msgSend_namePrefix(v8, v75, v76, v77, v78);
    v82 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v74, v80, v79, &stru_285EA09B0, v81);

    v87 = objc_msgSend_nameStem(v8, v83, v84, v85, v86);
    v90 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v82, v88, v87, &stru_285EA09B0, v89);

    if (objc_msgSend_isEqualToString_(v90, v91, *(a1 + 40), v92, v93))
    {
      v98 = objc_msgSend_transitionSegmentName(v58, v94, v95, v96, v97);
      v103 = objc_msgSend_segment(*(a1 + 48), v99, v100, v101, v102);
      v108 = objc_msgSend_name(v103, v104, v105, v106, v107);
      isEqualToString = objc_msgSend_isEqualToString_(v98, v109, v108, v110, v111);
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

uint64_t sub_24B805E38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_name(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_name(*(a1 + 32), v12, v13, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v17, v16, v18, v19);

  return isEqualToString;
}

uint64_t sub_24B807E08(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_priority(v4, v6, v7, v8, v9);
  if (v10 <= objc_msgSend_priority(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_priority(v4, v15, v16, v17, v18);
    v19 = v20 < objc_msgSend_priority(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

uint64_t sub_24B807E94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_name(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_name(*(a1 + 32), v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v12, v11, v13, v14);

  return isEqualToString;
}

uint64_t sub_24B8080E4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_sampleCount(v4, v6, v7, v8, v9);
  if (v10 <= objc_msgSend_sampleCount(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_sampleCount(v4, v15, v16, v17, v18);
    v19 = v20 < objc_msgSend_sampleCount(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

uint64_t sub_24B808634(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_segment(*(*(*(a1 + 32) + 8) + 40), v4, v5, v6, v7);
  v13 = objc_msgSend_name(v3, v9, v10, v11, v12);
  if (objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(v8, v14, v13, v15, v16))
  {
    v21 = 0;
  }

  else
  {
    v21 = objc_msgSend_barsUsed(*(*(*(a1 + 32) + 8) + 40), v17, v18, v19, v20) - 1;
  }

  v26 = objc_msgSend_segment(*(*(*(a1 + 32) + 8) + 40), v22, v23, v24, v25);
  v28 = objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v27, v26, v3, v21, 1);

  return v28;
}

BOOL sub_24B8094F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_name(v5, v6, v7, v8, v9);
  v11 = v10 == 0;

  return v11;
}

BOOL sub_24B809538(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_name(v5, v6, v7, v8, v9);
  v11 = v10 == 0;

  return v11;
}

BOOL sub_24B809580(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_name(v5, v6, v7, v8, v9);
  v11 = v10 == 0;

  return v11;
}

uint64_t sub_24B80A7A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_name(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_segment(*(a1 + 32), v7, v8, v9, v10);
  v16 = objc_msgSend_name(v11, v12, v13, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v17, v16, v18, v19);

  return isEqualToString;
}

void sub_24B80A90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B80A924(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = a2;
  v11 = objc_msgSend_segment(v23, v7, v8, v9, v10);
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_segment(v23, v12, v13, v14, v15);
    v22 = objc_msgSend_type(v17, v18, v19, v20, v21);

    if (v22 == 4)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

uint64_t sub_24B80B550(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_segment(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_nameIndex(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_nameIndex(*(a1 + 32), v14, v15, v16, v17);
  if (objc_msgSend_isEqualToString_(v13, v19, v18, v20, v21))
  {
    v26 = objc_msgSend_segment(v3, v22, v23, v24, v25);
    v31 = objc_msgSend_nameSuffix(v26, v27, v28, v29, v30);
    v35 = objc_msgSend_isEqualToString_(v31, v32, @"a", v33, v34) ^ 1;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

uint64_t sub_24B80B93C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_priority(v4, v6, v7, v8, v9);
  if (v10 <= objc_msgSend_priority(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_priority(v4, v15, v16, v17, v18);
    v19 = v20 < objc_msgSend_priority(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

BOOL sub_24B80B9C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_name(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_name(*(a1 + 32), v7, v8, v9, v10);
  v12 = v6 == v11;

  return v12;
}

void sub_24B80E570(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_24B7E5000, log, OS_LOG_TYPE_DEBUG, "expected silence or outro at end. Algorithm bug?", buf, 2u);
}

void sub_24B80E5B0(void *a1, char *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_lastPathComponent(a1, a2, a3, a4, a5);
  v13 = 138412546;
  v14 = v7;
  v15 = 2048;
  v16 = objc_msgSend_sampleCount(a2, v8, v9, v10, v11);
  _os_log_debug_impl(&dword_24B7E5000, a3, OS_LOG_TYPE_DEBUG, "%@: kExtAudioFileProperty_FileLengthFrames is 1 sample longer than segment.sampleCount %lld", &v13, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24B80E9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B80E9E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B80E9FC(void *a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[6];
  v56 = v7;
  if (v8 == objc_msgSend_sampleTime(v7, v9, v10, v11, v12))
  {
    goto LABEL_2;
  }

  v18 = a1[6];
  if (v18 > objc_msgSend_sampleTime(v56, v13, v14, v15, v16))
  {
    if (objc_msgSend_count(*(*(a1[5] + 8) + 40), v19, v20, v21, v22) - 1 > a3)
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1[5] + 8) + 40), v13, a3 + 1, v15, v16);
      objc_msgSend_value(v56, v24, v25, v26, v27);
      v29 = v28;
      objc_msgSend_value(v23, v30, v31, v32, v33);
      v35 = v34;
      objc_msgSend_value(v56, v36, v37, v38, v39);
      v41 = a1[6];
      v46 = (v35 - v40) * (v41 - objc_msgSend_sampleTime(v56, v42, v43, v44, v45));
      v51 = objc_msgSend_sampleTime(v23, v47, v48, v49, v50);
      *(*(a1[4] + 8) + 24) = v29 + (v46 / (v51 - objc_msgSend_sampleTime(v56, v52, v53, v54, v55)));

      goto LABEL_3;
    }

LABEL_2:
    objc_msgSend_value(v56, v13, v14, v15, v16);
    *(*(a1[4] + 8) + 24) = v17;
LABEL_3:
    *a4 = 1;
  }
}

void sub_24B80ECD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24B80ECF0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v35 = a2;
  v11 = objc_msgSend_sampleTime(*(a1 + 32), v7, v8, v9, v10);
  v20 = objc_msgSend_sampleTime(v35, v12, v13, v14, v15);
  v21 = *(a1 + 32);
  if (v11 == v20)
  {
    objc_msgSend_value(v21, v16, v17, v18, v19);
    objc_msgSend_setValue_(v35, v22, v23, v24, v25);
    *a4 = 1;
  }

  else
  {
    v26 = objc_msgSend_sampleTime(v21, v16, v17, v18, v19);
    if (v26 > objc_msgSend_sampleTime(v35, v27, v28, v29, v30))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v34 = WeakRetained;
      if (WeakRetained)
      {
        objc_msgSend_insertObject_atIndex_(WeakRetained[1], v32, *(a1 + 32), a3 + 1, v33);
      }

      *a4 = 1;
    }
  }
}

void sub_24B80EE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_24B80EEB4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (objc_msgSend_sampleTime(v6, v7, v8, v9, v10) <= *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  v15 = objc_msgSend_sampleTime(v6, v11, v12, v13, v14);

  *(*(*(a1 + 32) + 8) + 24) = v15;
}

void sub_24B80F0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24B80F0E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v39 = v5;
    objc_msgSend_value(v5, v6, v7, v8, v9);
    if (v14 == *(*(*(a1 + 40) + 8) + 24))
    {
      v15 = objc_msgSend_volumeKeyFrames(*(a1 + 32), v10, v11, v12, v13);
      v19 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, a3 - 1, v17, v18);

      objc_msgSend_value(v19, v20, v21, v22, v23);
      v25 = v24;
      objc_msgSend_value(v39, v26, v27, v28, v29);
      if (v25 == v33)
      {
        v34 = *(*(*(a1 + 48) + 8) + 40);
        if (!v34)
        {
          v35 = objc_opt_new();
          v36 = *(*(a1 + 48) + 8);
          v37 = *(v36 + 40);
          *(v36 + 40) = v35;

          v34 = *(*(*(a1 + 48) + 8) + 40);
        }

        objc_msgSend_addObject_(v34, v30, v39, v31, v32);

        goto LABEL_9;
      }
    }

    objc_msgSend_value(v39, v10, v11, v12, v13);
    *(*(*(a1 + 40) + 8) + 24) = v38;
LABEL_9:
    v5 = v39;
  }
}

void sub_24B811580(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch genre:\n%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_24B8115F8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch region:\n%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24B812D9C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_position(v4, v6, v7, v8, v9);
  if (v10 >= objc_msgSend_position(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_position(v4, v15, v16, v17, v18);
    v19 = v20 > objc_msgSend_position(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_24B8141C8(uint64_t a1, void *a2)
{
  v10 = a2;
  if (objc_msgSend_type(v10, v3, v4, v5, v6) == *(a1 + 40))
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v10, v8, v9);
  }
}

uint64_t sub_24B814358(uint64_t a1, void *a2)
{
  v27 = a2;
  if (objc_msgSend_type(v27, v3, v4, v5, v6) == *(a1 + 56))
  {
    v10 = objc_msgSend_nameIndex(v27, v27, v7, v8, v9);
    if (!objc_msgSend_isEqualToString_(v10, v11, *(a1 + 32), v12, v13))
    {

      goto LABEL_9;
    }

    if (*(a1 + 40))
    {
      v18 = objc_msgSend_nameSuffix(v27, v14, v15, v16, v17);
      isEqualToString = objc_msgSend_isEqualToString_(v18, v19, *(a1 + 40), v20, v21);

      v25 = v27;
      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_msgSend_addObject_(*(a1 + 48), v25, v27, v23, v24);
  }

LABEL_9:

  return MEMORY[0x2821F96F8]();
}

void sub_24B81454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B814564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B81457C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v11 = objc_msgSend_name(v16, v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *(a1 + 32), v13, v14);

  if (isEqualToString)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_24B814A04(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_name(a1, a2, a3, a4, a5);
  v8 = 138412290;
  v9 = v6;
  _os_log_debug_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_DEBUG, "Relinking transitions for segment %@ because it is not Sliceable", &v8, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_24B814A9C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_DEBUG, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_24B815B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B815BE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B815BF8(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v11 = objc_msgSend_values(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKey_(v11, v12, @"SectionType", v13, v14);

  if (objc_msgSend_isEqualToString_(v15, v16, @"OUTRO", v17, v18))
  {
    if (v6)
    {
      objc_msgSend_timeRange(v6, v19, v20, v21, v22);
      v23 = *(a1[4] + 8);
      *(v23 + 32) = v38[2];
      *(v23 + 48) = v39;
      objc_msgSend_timeRange(v6, v24, v25, v26, v27);
    }

    else
    {
      v28 = *(a1[4] + 8);
      v28[4] = 0;
      v28[5] = 0;
      v28[6] = 0;
      v37 = 0u;
      memset(v38, 0, 32);
    }

    v29 = *(a1[5] + 8);
    *(v29 + 48) = *(&v38[1] + 1);
    *(v29 + 32) = *(v38 + 8);
    v30 = objc_msgSend_values(v6, v19, v20, v21, v22, v37, *&v38[0]);
    v34 = objc_msgSend_objectForKey_(v30, v31, @"OutroEarlyFade", v32, v33);
    v35 = *(a1[6] + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    *a4 = 1;
  }
}