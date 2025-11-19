void sub_22D480A18(_Unwind_Exception *a1)
{
  if (!v1)
  {
  }

  _Unwind_Resume(a1);
}

id _MLMediaTypeFromTrackProperiesDictionary(NSDictionary *a1)
{
  v1 = a1;
  v2 = [(NSDictionary *)v1 objectForKey:@"is_podcast"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = [(NSDictionary *)v1 objectForKey:@"is_podcast"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  if (isKindOfClass)
  {
  }

  v6 = [(NSDictionary *)v1 objectForKey:@"is_song"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if (v7)
  {
    v8 = [(NSDictionary *)v1 objectForKey:@"is_song"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 BOOLValue];
  if (v7)
  {
  }

  if (v9)
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  if ((v9 & v5) == 1)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "item has both is_podcast and is_song modifiers. Ignoring is_song and treating item as a podcast", buf, 2u);
    }

    v10 = 0;
  }

  v12 = [(NSDictionary *)v1 objectForKey:@"is_audio_book"];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  if (v13)
  {
    v14 = [(NSDictionary *)v1 objectForKey:@"is_audio_book"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 BOOLValue];
  if (v13)
  {
  }

  if (v15)
  {
    v10 |= 2u;
  }

  v16 = [(NSDictionary *)v1 objectForKey:@"is_music_video"];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();
  if (v17)
  {
    v18 = [(NSDictionary *)v1 objectForKey:@"is_music_video"];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v18 BOOLValue];
  if (v17)
  {
  }

  if (v19)
  {
    v10 |= 0x408u;
  }

  v20 = [(NSDictionary *)v1 objectForKey:@"is_movie"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();
  if (v21)
  {
    v22 = [(NSDictionary *)v1 objectForKey:@"is_movie"];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v22 BOOLValue];
  if (v21)
  {
  }

  if (v23)
  {
    if (v5)
    {
      v24 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "item has both is_podcast and is_movie modifiers. Treating media_type as MLMediaTypeVideoPodcast | MLMediaTypePodcast", v45, 2u);
      }

      v10 |= 0x100u;
    }

    else
    {
      v10 |= 0x800u;
    }
  }

  v25 = [(NSDictionary *)v1 objectForKey:@"is_tv_show"];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();
  if (v26)
  {
    v27 = [(NSDictionary *)v1 objectForKey:@"is_tv_show"];
  }

  else
  {
    v27 = 0;
  }

  v28 = [v27 BOOLValue];
  if (v26)
  {
  }

  if (v28)
  {
    v10 |= 0x200u;
  }

  v29 = [(NSDictionary *)v1 objectForKey:@"is_home_video"];
  objc_opt_class();
  v30 = objc_opt_isKindOfClass();
  if (v30)
  {
    v31 = [(NSDictionary *)v1 objectForKey:@"is_home_video"];
  }

  else
  {
    v31 = 0;
  }

  v32 = [v31 BOOLValue];
  if (v30)
  {
  }

  if (v32)
  {
    v10 |= 0x2000u;
  }

  v33 = [(NSDictionary *)v1 objectForKey:@"is_voice_memo"];
  objc_opt_class();
  v34 = objc_opt_isKindOfClass();
  if (v34)
  {
    v35 = [(NSDictionary *)v1 objectForKey:@"is_voice_memo"];
  }

  else
  {
    v35 = 0;
  }

  v36 = [v35 BOOLValue];
  if (v34)
  {
  }

  if (v36)
  {
    v10 |= 0x10u;
  }

  v37 = [(NSDictionary *)v1 objectForKey:@"is_itunes_u"];
  objc_opt_class();
  v38 = objc_opt_isKindOfClass();
  if (v38)
  {
    v39 = [(NSDictionary *)v1 objectForKey:@"is_itunes_u"];
  }

  else
  {
    v39 = 0;
  }

  v40 = [v39 BOOLValue];
  if (v38)
  {
  }

  v41 = v10 | 0x20;
  if (!v40)
  {
    v41 = v10;
  }

  if (v5)
  {
    v42 = v41 | 4;
  }

  else
  {
    v42 = v41;
  }

  if (v42)
  {
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

void sub_22D481250(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

id ML3ITunesSyncTrackImportItem::_getCurrentTrackDiscNumber(id *this)
{
  v2 = [this[12] objectForKey:@"disc_number"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [this[12] objectForKey:@"disc_number"];

    if (v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v4 = [this[10] objectForKey:@"operation"];
  v5 = [v4 isEqualToString:@"insert_track"];

  if (v5)
  {
    v3 = &unk_2840C90E0;
  }

  else
  {
    v3 = 0;
  }

LABEL_8:

  return v3;
}

id ML3ITunesSyncTrackImportItem::_getCurrentTrackIsAudibleAudioBook(id *this)
{
  v2 = [this[11] objectForKey:@"audio_format"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = [this[11] objectForKey:@"audio_format"];

  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v3, "integerValue") - 401) < 6}];
    v2 = v3;
LABEL_5:

    goto LABEL_6;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

id ML3ITunesSyncTrackImportItem::_getCurrentTrackContentRating(id *this)
{
  v2 = [this[12] objectForKey:@"grouping"];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"explicit"];

  if (v4)
  {
    v5 = &unk_2840C90F8;
  }

  else
  {
    v6 = [this[12] objectForKey:@"content_rating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [this[12] objectForKey:@"content_rating"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id ML3ITunesSyncTrackImportItem::_getCurrentTrackRatingLevel(id *this)
{
  v2 = [this[12] objectForKey:@"content_rating_level"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [this[12] objectForKey:@"content_rating_level"];
  }

  else
  {
    v3 = 0;
  }

  v4 = [this[12] objectForKey:@"grouping"];
  v5 = [v4 lowercaseString];
  v6 = [v5 isEqualToString:@"explicit"];

  if (v6)
  {
    if ([v3 longLongValue] >= 1000)
    {
      v7 = [v3 longLongValue];
    }

    else
    {
      v7 = 1000;
    }

    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];

    v3 = v8;
  }

  return v3;
}

void sub_22D4816AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id ML3ITunesSyncTrackImportItem::_getCurrentTrackLocationKind(id *this)
{
  v2 = [this[10] objectForKey:@"location"];
  v3 = [v2 objectForKey:@"kind"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
    goto LABEL_5;
  }

  v4 = [this[10] objectForKey:@"location"];
  v5 = [v4 objectForKey:@"kind"];

  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:ML3KindForString(v5)];
    v2 = v5;
LABEL_5:

    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_22D4817E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id ML3ITunesSyncTrackImportItem::_getCurrentTrackChapterData(id *this)
{
  v2 = [this[10] objectForKey:@"chapter_info"];
  v3 = [ML3Track flattenedChapterDataFromSyncInfoDictionaries:v2 trackPersistentID:this[9]];

  return v3;
}

id ML3ITunesSyncTrackImportItem::getDeduplicationPredicates(id *this)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v3 = ML3ITunesSyncImportItem::getDeduplicationPredicates(this);
  v40 = [v2 arrayWithArray:v3];

  if (this[19] + 1 >= 2)
  {
    if (this[9])
    {
      v4 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:?];
      v42[0] = v4;
      v5 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
      v42[1] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      v7 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v6];
      [v40 addObject:v7];

      v8 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:this[19]];
      v41[0] = v8;
      v9 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:0];
      v41[1] = v9;
      v10 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
      v41[2] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
      v12 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v11];
      [v40 addObject:v12];
    }

    else
    {
      v13 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:?];
      [v40 addObject:v13];
    }
  }

  v14 = [this[12] objectForKey:@"cloud_id"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = 0;
LABEL_11:

    goto LABEL_13;
  }

  v39 = [this[12] objectForKey:@"cloud_id"];

  if (v39)
  {
    if (![v39 longLongValue])
    {
      goto LABEL_13;
    }

    if (this[9])
    {
      v15 = MEMORY[0x277CBEA60];
      v14 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", @"item_store.store_saga_id", [v39 longLongValue]);
      v16 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
      v17 = [v15 arrayWithObjects:{v14, v16, 0}];
      v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];
      [v40 addObject:v18];
    }

    else
    {
      v14 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", @"item_store.store_saga_id", [v39 longLongValue]);
      [v40 addObject:v14];
    }

    goto LABEL_11;
  }

  v39 = 0;
LABEL_13:
  v19 = (*(*this + 27))(this, 100663322);
  if (v19)
  {
    if (this[9])
    {
      v20 = MEMORY[0x277CBEA60];
      v21 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.external_guid" value:v19 comparison:1 caseInsensitive:1];
      v22 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
      v23 = [v20 arrayWithObjects:{v21, v22, 0}];
      v24 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v23];
      [v40 addObject:v24];
    }

    else
    {
      v21 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.external_guid" value:v19 comparison:1 caseInsensitive:1];
      [v40 addObject:v21];
    }
  }

  if (this[9])
  {
    v25 = [MEMORY[0x277CBEB18] array];
    v26 = [this[12] objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [this[12] objectForKey:@"title"];
    }

    else
    {
      v27 = 0;
    }

    v28 = [this[12] objectForKey:@"total_time_ms"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [this[12] objectForKey:@"total_time_ms"];
    }

    else
    {
      v29 = 0;
    }

    if (v27)
    {
      v30 = [ML3ComparisonPredicate predicateWithProperty:@"item_extra.title" equalToValue:v27];
      [v25 addObject:v30];
    }

    if (v29)
    {
      v31 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", @"item_extra.total_time_ms", [v29 longLongValue]);
      [v25 addObject:v31];
    }

    if ([v25 count])
    {
      v32 = MEMORY[0x277CBEA60];
      v33 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:this[9]];
      v34 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
      v35 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v25];
      v36 = [v32 arrayWithObjects:{v33, v34, v35, 0}];
      v37 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v36];
      [v40 addObject:v37];
    }
  }

  return v40;
}

uint64_t ML3ITunesSyncTrackImportItem::getDescription(ML3ITunesSyncTrackImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "<ML3ITunesSyncImportItem ", 25);
  *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v8, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " sync_id=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", store_id=", 11);
  v6 = MEMORY[0x2318CD140](v5, *(this + 19));
  v13 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v13, 1);
  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v12);
}

void ML3ITunesSyncTrackImportItem::~ML3ITunesSyncTrackImportItem(id *this)
{
  ML3ITunesSyncTrackImportItem::~ML3ITunesSyncTrackImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

id ML3ITunesSyncContainerImportItem::_getFoundationValue(ML3ITunesSyncContainerImportItem *this, uint64_t a2)
{
  if ((a2 - 184549376) >> 24 > 2)
  {
    v3 = 0;
    goto LABEL_60;
  }

  v3 = 0;
  if (a2 <= 201326592)
  {
    switch(a2)
    {
      case 184549377:
      case 184549378:
        v4 = *(this + 8);
        v5 = @"pid";
        goto LABEL_58;
      case 184549379:
        v4 = *(this + 12);
        v5 = @"distinguished_kind";
        goto LABEL_58;
      case 184549380:
        v9 = [*(this + 12) objectForKey:@"date_created"];
        if (!v9)
        {
          goto LABEL_53;
        }

        v11 = MEMORY[0x277CCABB0];
        v10 = [*(this + 12) objectForKey:@"date_created"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = [*(this + 12) objectForKey:@"date_created"];
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_66;
      case 184549381:
        v9 = [*(this + 12) objectForKey:@"date_modified"];
        if (!v9)
        {
          goto LABEL_53;
        }

        v11 = MEMORY[0x277CCABB0];
        v10 = [*(this + 12) objectForKey:@"date_modified"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = [*(this + 12) objectForKey:@"date_modified"];
        }

        else
        {
          v13 = 0;
        }

LABEL_66:
        [v13 timeIntervalSinceReferenceDate];
        v3 = [v11 numberWithDouble:?];
        if (isKindOfClass)
        {
        }

        goto LABEL_68;
      case 184549382:
      case 184549383:
      case 184549385:
      case 184549389:
      case 184549390:
      case 184549393:
      case 184549408:
      case 184549412:
      case 184549414:
      case 184549416:
      case 184549417:
      case 184549418:
      case 184549419:
      case 184549420:
      case 184549422:
      case 184549423:
      case 184549424:
      case 184549425:
      case 184549426:
      case 184549427:
      case 184549428:
      case 184549429:
      case 184549430:
      case 184549431:
      case 184549432:
      case 184549434:
      case 184549439:
      case 184549440:
      case 184549441:
      case 184549442:
      case 184549447:
      case 184549448:
      case 184549449:
      case 184549451:
      case 184549452:
      case 184549453:
      case 184549454:
      case 184549455:
      case 184549456:
      case 184549457:
      case 184549458:
      case 184549459:
      case 184549460:
      case 184549461:
      case 184549462:
      case 184549463:
      case 184549464:
      case 184549465:
      case 184549466:
      case 184549467:
      case 184549468:
      case 184549469:
        goto LABEL_60;
      case 184549384:
        v4 = *(this + 12);
        v5 = @"name";
        goto LABEL_58;
      case 184549386:
        v4 = *(this + 12);
        v5 = @"description_long";
        goto LABEL_58;
      case 184549387:
        goto LABEL_23;
      case 184549388:
        v3 = MEMORY[0x277CBEC28];
        goto LABEL_60;
      case 184549391:
        v4 = *(this + 12);
        v5 = @"liked_state";
        goto LABEL_58;
      case 184549392:
        v4 = *(this + 12);
        v5 = @"parent_pid";
        goto LABEL_58;
      case 184549394:
        v4 = *(this + 12);
        v5 = @"workout_template_id";
        goto LABEL_58;
      case 184549395:
        if (*(this + 80))
        {
LABEL_23:
          v3 = MEMORY[0x277CBEC38];
          goto LABEL_60;
        }

        v4 = *(this + 12);
        v5 = @"is_hidden";
LABEL_58:
        v6 = [v4 objectForKey:v5];
        break;
      case 184549396:
        v4 = *(this + 12);
        v5 = @"smart_evaluation_order";
        goto LABEL_58;
      case 184549397:
        v4 = *(this + 12);
        v5 = @"smart_is_folder";
        goto LABEL_58;
      case 184549398:
        v9 = [*(this + 12) objectForKey:@"smart_is_dynamic"];
        if (v9)
        {
          v10 = [*(this + 12) objectForKey:@"smart_is_dynamic"];
          if ([v10 BOOLValue])
          {
            v3 = [MEMORY[0x277CCABB0] numberWithBool:ML3ITunesSyncContainerImportItem::_canEvaluateSmartCriteria(this)];
          }

          else
          {
            v3 = MEMORY[0x277CBEC28];
          }

LABEL_68:
        }

        else
        {
LABEL_53:
          v3 = 0;
        }

        goto LABEL_60;
      case 184549399:
        v4 = *(this + 12);
        v5 = @"smart_is_filtered";
        goto LABEL_58;
      case 184549400:
        v4 = *(this + 12);
        v5 = @"smart_is_genius";
        goto LABEL_58;
      case 184549401:
        v4 = *(this + 12);
        v5 = @"smart_enabled_only";
        goto LABEL_58;
      case 184549402:
        v4 = *(this + 12);
        v5 = @"smart_is_limited";
        goto LABEL_58;
      case 184549403:
        v4 = *(this + 12);
        v5 = @"smart_limit_kind";
        goto LABEL_58;
      case 184549404:
        v4 = *(this + 12);
        v5 = @"smart_limit_order";
        goto LABEL_58;
      case 184549405:
        v4 = *(this + 12);
        v5 = @"smart_limit_value";
        goto LABEL_58;
      case 184549406:
        v4 = *(this + 12);
        v5 = @"smart_reverse_limit_order";
        goto LABEL_58;
      case 184549407:
        v4 = *(this + 12);
        v5 = @"smart_criteria";
        goto LABEL_58;
      case 184549409:
        v4 = *(this + 13);
        v5 = @"play_order";
        goto LABEL_58;
      case 184549410:
        v4 = *(this + 13);
        v5 = @"is_reversed";
        goto LABEL_58;
      case 184549413:
        v3 = &unk_2840C90F8;
        goto LABEL_60;
      case 184549415:
        isMasterDevicePurchasedPlaylist = ML3ITunesSyncContainerImportItem::_isMasterDevicePurchasedPlaylist(this);
        v8 = MEMORY[0x277CBEC38];
        if (!isMasterDevicePurchasedPlaylist)
        {
          v8 = 0;
        }

        v6 = v8;
        break;
      case 184549435:
        v4 = *(this + 13);
        v5 = @"album_field_order";
        goto LABEL_58;
      case 184549436:
        v4 = *(this + 13);
        v5 = @"repeat_mode";
        goto LABEL_58;
      case 184549437:
        v4 = *(this + 13);
        v5 = @"shuffle_items";
        goto LABEL_58;
      case 184549438:
        v4 = *(this + 13);
        v5 = @"has_been_shuffled";
        goto LABEL_58;
      case 184549443:
        v4 = *(this + 12);
        v5 = @"external_vendor_identifier";
        goto LABEL_58;
      case 184549444:
        v4 = *(this + 12);
        v5 = @"external_vendor_display_name";
        goto LABEL_58;
      case 184549445:
        v4 = *(this + 12);
        v5 = @"external_tag";
        goto LABEL_58;
      case 184549446:
        v4 = *(this + 12);
        v5 = @"is_external_vendor_playlist";
        goto LABEL_58;
      case 184549450:
        v6 = ML3ITunesSyncContainerImportItem::_getContainerArtworkCacheId(this);
        break;
      default:
        goto LABEL_10;
    }

LABEL_59:
    v3 = v6;
    goto LABEL_60;
  }

  if ((a2 - 218103810) > 4 || a2 == 218103812)
  {
    if (a2 == 201326593)
    {
      v6 = ML3ITunesSyncContainerImportItem::_getGeniusSeedItemPid(*(this + 12));
    }

    else
    {
      if (a2 == 201326594)
      {
        goto LABEL_60;
      }

LABEL_10:
      v6 = ML3ITunesSyncImportItem::_getFoundationValue(this, a2);
    }

    goto LABEL_59;
  }

LABEL_60:

  return v3;
}

uint64_t ML3ITunesSyncContainerImportItem::_canEvaluateSmartCriteria(id *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!(*(*this + 4))(this, 184549397))
  {
    v3 = [this[12] objectForKey:@"smart_criteria"];
    if (v3)
    {
      if ([ML3Container smartCriteriaCanBeEvaluated:v3])
      {
        v2 = 1;
LABEL_10:

        return v2;
      }

      v4 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 138543362;
        v7 = v3;
        _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "Disabling smart evaluation for unsupported smart playlist type (%{public}@)", &v6, 0xCu);
      }
    }

    v2 = 0;
    goto LABEL_10;
  }

  return 0;
}

BOOL ML3ITunesSyncContainerImportItem::_isMasterDevicePurchasedPlaylist(id *this)
{
  v2 = [this[12] objectForKey:@"distinguished_kind"];
  v3 = [v2 integerValue];

  if (v3 != 20)
  {
    return 0;
  }

  v4 = [this[12] objectForKey:@"source_device_guid"];
  v5 = [v4 longLongValue];

  if (!v5)
  {
    return 1;
  }

  if (ML3ITunesSyncContainerImportItem::_deviceITunesComparableGUID(void)const::onceToken != -1)
  {
    dispatch_once(&ML3ITunesSyncContainerImportItem::_deviceITunesComparableGUID(void)const::onceToken, &__block_literal_global_10087);
  }

  return v5 == ML3ITunesSyncContainerImportItem::_deviceITunesComparableGUID(void)const::iTunesComparableGUID;
}

__CFString *ML3ITunesSyncContainerImportItem::_getContainerArtworkCacheId(id *this)
{
  v2 = [this[12] objectForKey:@"artwork_cache_id"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
    goto LABEL_6;
  }

  v3 = [this[12] objectForKey:@"artwork_cache_id"];

  if (!v3)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_12;
  }

  if ([v3 integerValue])
  {
    v4 = [v3 stringValue];
  }

  else
  {
    if (*(this + 16))
    {
      v6 = &stru_28408B690;
    }

    else
    {
      v6 = 0;
    }

    v4 = v6;
  }

  v5 = v4;
LABEL_12:

  return v5;
}

id ML3ITunesSyncContainerImportItem::_getGeniusSeedItemPid(ML3ITunesSyncContainerImportItem *this)
{
  v1 = [(ML3ITunesSyncContainerImportItem *)this objectForKey:@"genius_seed_tracks"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 firstObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void ___ZNK32ML3ITunesSyncContainerImportItem27_deviceITunesComparableGUIDEv_block_invoke()
{
  v1 = MGCopyAnswer();
  if ([v1 length] >= 0x10)
  {
    v0 = [v1 substringFromIndex:{objc_msgSend(v1, "length") - 16}];
    ML3ITunesSyncContainerImportItem::_deviceITunesComparableGUID(void)const::iTunesComparableGUID = strtoull([v0 UTF8String], 0, 16);
  }
}

id ML3ITunesSyncContainerImportItem::getDeduplicationPredicates(ML3ITunesSyncContainerImportItem *this)
{
  v2 = [MEMORY[0x277CBEB18] array];
  if (*(this + 11))
  {
    v3 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:?];
    [v2 addObject:v3];
  }

  return v2;
}

void ML3ITunesSyncContainerImportItem::getDescription(id *this)
{
  v2 = [this[12] objectForKey:@"name"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 UTF8String];
  }

  else
  {
    v4 = "<null>";
  }

  std::string::basic_string[abi:ne200100]<0>(v17, v4);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "<MLDITunesSyncPlaylistImportItem ", 33);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = MEMORY[0x2318CD100](&v12, this);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " sync_id=", 9);
  *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 2;
  v7 = MEMORY[0x2318CD140]();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", name=", 7);
  if ((v18 & 0x80u) == 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v10 = v18;
  }

  else
  {
    v10 = v17[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v19 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v19, 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v16);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_22D4830AC(_Unwind_Exception *a1)
{
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  _Unwind_Resume(a1);
}

void ML3ITunesSyncContainerImportItem::getImportItemArrayValue(id *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((a2 - 218103813) >= 2)
  {
    if (a2 == 218103812)
    {
      [this[8] objectForKey:@"item_to_container"];
      v4 = memset(v7, 0, sizeof(v7));
      if ([v4 countByEnumeratingWithState:v7 objects:v8 count:16])
      {
        operator new();
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual std::vector<std::shared_ptr<ML3ImportItem>> ML3ITunesSyncContainerImportItem::getImportItemArrayValue(MLImportPropertyKey) const"];
      [v6 handleFailureInFunction:v5 file:@"ML3ITunesSyncImportItem.mm" lineNumber:745 description:{@"getImportItemArrayValue called with unknown property key %x", a2}];
    }
  }
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncContainerTrackItemImportItem>,std::allocator<ML3ITunesSyncContainerTrackItemImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_41ML3ITunesSyncContainerTrackItemImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ITunesSyncContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncContainerTrackItemImportItem>,std::allocator<ML3ITunesSyncContainerTrackItemImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ITunesSyncContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ITunesSyncContainerTrackItemImportItem>,std::allocator<ML3ITunesSyncContainerTrackItemImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ITunesSyncContainerTrackItemImportItem::getDescription(ML3ITunesSyncContainerTrackItemImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "<ML3ITunesSyncContainerTrackItemImportItem ", 43);
  *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v6, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " sync_id=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v11 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v11, 1);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v10);
}

uint64_t ML3ITunesSyncContainerTrackItemImportItem::getIntegerValue(ML3ITunesSyncContainerTrackItemImportItem *this, uint64_t a2)
{
  if (a2 == 234881030)
  {
    return *(this + 8);
  }

  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int64_t ML3ITunesSyncContainerTrackItemImportItem::getIntegerValue(MLImportPropertyKey) const"];
  [v4 handleFailureInFunction:v5 file:@"ML3ITunesSyncImportItem.mm" lineNumber:984 description:{@"ML3ITunesSyncContainerTrackItemImportItem::getIntegerValue called with unknown property key %x", a2}];

  return 0;
}

void ML3ITunesSyncContainerTrackItemImportItem::getStringValue(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = &unk_28408AC60;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if ((a1 - 234881028) > 6 || ((1 << (a1 - 4)) & 0x43) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual ML3ImportStringValue ML3ITunesSyncContainerTrackItemImportItem::getStringValue(MLImportPropertyKey) const"];
    [v6 handleFailureInFunction:v5 file:@"ML3ITunesSyncImportItem.mm" lineNumber:969 description:{@"ML3ITunesSyncContainerTrackItemImportItem::getStringValue called with unknown property key %x", a1}];
  }
}

void sub_22D483998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *v10 = v11;
  if (*(v10 + 39) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(a1);
}

void ML3ITunesSyncContainerTrackItemImportItem::~ML3ITunesSyncContainerTrackItemImportItem(ML3ITunesSyncContainerTrackItemImportItem *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);

  JUMPOUT(0x2318CD250);
}

{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

BOOL ML3ITunesSyncContainerImportItem::hasValue(id *this, int a2)
{
  if (a2 == 218103812)
  {
    v3 = [this[8] objectForKey:@"item_to_container"];
    v4 = v3 != 0;

    return v4;
  }

  else
  {

    return ML3ITunesSyncImportItem::hasValue(this);
  }
}

double ML3ITunesSyncContainerImportItem::getDataValue@<D0>(ML3ITunesSyncContainerImportItem *this@<X0>, _OWORD *a2@<X8>)
{
  ML3ITunesSyncImportItem::getDataValue(this, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void ML3ITunesSyncContainerImportItem::~ML3ITunesSyncContainerImportItem(ML3ITunesSyncContainerImportItem *this)
{
  ML3ITunesSyncContainerImportItem::~ML3ITunesSyncContainerImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_2840867C0;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

id ML3ITunesSyncAlbumImportItem::_getFoundationValue(id *this, int a2)
{
  v3 = 0;
  if (a2 > 33554461)
  {
    switch(a2)
    {
      case 285212673:
        v4 = [this[12] objectForKey:@"album"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[12] objectForKey:@"album"];
        goto LABEL_44;
      case 285212674:
        v4 = [this[12] objectForKey:@"sort_album"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[12] objectForKey:@"sort_album"];
        goto LABEL_44;
      case 285212675:
      case 285212676:
      case 285212677:
      case 285212678:
      case 285212682:
      case 285212685:
      case 285212686:
      case 285212687:
      case 285212689:
      case 285212692:
      case 285212693:
      case 285212694:
      case 285212697:
      case 285212698:
        goto LABEL_47;
      case 285212679:
        v4 = [this[10] objectForKey:@"album_rating"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[10] objectForKey:@"album_rating"];
        goto LABEL_44;
      case 285212680:
        v4 = [this[10] objectForKey:@"album_liked_state"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[10] objectForKey:@"album_liked_state"];
        goto LABEL_44;
      case 285212681:
        v4 = [this[12] objectForKey:@"is_compilation"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[12] objectForKey:@"is_compilation"];
        goto LABEL_44;
      case 285212683:
        v4 = [this[14] objectForKey:@"season_number"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[14] objectForKey:@"season_number"];
        goto LABEL_44;
      case 285212684:
        v4 = [this[12] objectForKey:@"year"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[12] objectForKey:@"year"];
        goto LABEL_44;
      case 285212688:
        v4 = (*(*this + 27))(this, 33554462);
        v6 = (*(*this + 27))(this, 33554451);
        v7 = (*(*this + 27))(this, 16777248);

        v8 = MEMORY[0x277CCABB0];
        v9 = [v4 length];
        v10 = v9 != 0;
        if (v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = v7 == 0;
        }

        if (!v11)
        {
          v10 = [v6 length] != 0;
        }

        v3 = [v8 numberWithBool:v10];

        goto LABEL_46;
      case 285212690:
        v4 = [this[10] objectForKey:@"album_rating_is_derived"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[10] objectForKey:@"album_rating_is_derived"];
        goto LABEL_44;
      case 285212691:
        v4 = [this[12] objectForKey:@"album_pid"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[12] objectForKey:@"album_pid"];
        goto LABEL_44;
      case 285212695:
        v4 = [this[12] objectForKey:@"album_date_liked"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[12] objectForKey:@"album_date_liked"];
        goto LABEL_44;
      case 285212696:
        v4 = [this[13] objectForKey:@"playlist_id"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[13] objectForKey:@"playlist_id"];
        goto LABEL_44;
      case 285212699:
        v4 = [this[12] objectForKey:@"album_artist"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[12] objectForKey:@"album_artist"];
        goto LABEL_44;
      default:
        if (a2 != 33554462)
        {
          goto LABEL_47;
        }

        v4 = [this[12] objectForKey:@"work"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_45;
        }

        v5 = [this[12] objectForKey:@"work"];
        break;
    }

    goto LABEL_44;
  }

  if (a2 == 16777217)
  {
    v3 = _MLMediaTypeFromTrackProperiesDictionary(this[12]);
    goto LABEL_47;
  }

  if (a2 == 16777248)
  {
    v4 = [this[12] objectForKey:@"show_composer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [this[12] objectForKey:@"show_composer"];
      goto LABEL_44;
    }

LABEL_45:
    v3 = 0;
    goto LABEL_46;
  }

  if (a2 != 33554451)
  {
    goto LABEL_47;
  }

  v4 = [this[12] objectForKey:@"grouping"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  v5 = [this[12] objectForKey:@"grouping"];
LABEL_44:
  v3 = v5;
LABEL_46:

LABEL_47:

  return v3;
}

uint64_t ML3ITunesSyncAlbumImportItem::propertyKeyForSortPropertyKey(ML3ITunesSyncAlbumImportItem *this, int a2)
{
  if (a2 == 285212674)
  {
    return 285212673;
  }

  else
  {
    return 0;
  }
}

uint64_t ML3ITunesSyncAlbumImportItem::sortPropertyKeyForPropertyKey(ML3ITunesSyncAlbumImportItem *this, int a2)
{
  if (a2 == 285212673)
  {
    return 285212674;
  }

  else
  {
    return 0;
  }
}

id ML3ITunesSyncAlbumImportItem::getDeduplicationPredicates(ML3ITunesSyncAlbumImportItem *this)
{
  v57[6] = *MEMORY[0x277D85DE8];
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = (*(*this + 32))(this, 285212696);
  v3 = (*(*this + 32))(this, 285212691);
  v44 = (*(*this + 32))(this, 285212683);
  (*(*this + 24))(v50, this, 285212673);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v50[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v52 = __p;
  }

  (*(*this + 24))(v50, this, 285212699);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v50[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v49 = __p;
  }

  (*(*this + 24))(v50, this, 285212682);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v50[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v48 = __p;
  }

  size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v52.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = *(this + 17);
    v6 = ML3CPPBridgeString(&v52, 1);
    v47 = [v5 groupingKeyForString:v6];
  }

  else
  {
    v47 = 0;
  }

  v7 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v49.__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    v8 = *(this + 17);
    v9 = ML3CPPBridgeString(&v49, 1);
    v46 = [v8 groupingKeyForString:v9];
  }

  else
  {
    v46 = 0;
  }

  if (v3)
  {
    v10 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:v3];
    [v45 addObject:v10];
  }

  if (v2)
  {
    if ([v47 length] && objc_msgSend(v46, "length"))
    {
      v11 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v2];
      v57[0] = v11;
      v12 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1];
      v57[1] = v12;
      v13 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v46];
      v57[2] = v13;
      v14 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v47];
      v57[3] = v14;
      v15 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v44];
      v57[4] = v15;
      v16 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:0];
      v57[5] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:6];
      v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];

      [v45 addObject:v18];
    }

    else
    {
      v19 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v2];
      v56[0] = v19;
      v20 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1];
      v56[1] = v20;
      v21 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v56[2] = v21;
      v22 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v56[3] = v22;
      v23 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v44];
      v56[4] = v23;
      v24 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:0];
      v56[5] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:6];
      v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v25];

      [v45 addObject:v18];
    }
  }

  if ([v47 length] && objc_msgSend(v46, "length"))
  {
    v26 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v46];
    v55[0] = v26;
    v27 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v47];
    v55[1] = v27;
    v28 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:v44];
    v55[2] = v28;
    v29 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:0];
    v55[3] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
    v31 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v30];

    [v45 addObject:v31];
  }

  if ([v47 length])
  {
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v48.__r_.__value_.__l.__size_)
      {
        v32 = v48.__r_.__value_.__r.__words[0];
        goto LABEL_40;
      }
    }

    else if (*(&v48.__r_.__value_.__s + 23))
    {
      v32 = &v48;
LABEL_40:
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:v32];
      v34 = [ML3ComparisonPredicate predicateWithProperty:@"feed_url" equalToValue:v33];
      v54[0] = v34;
      v35 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v47];
      v54[1] = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
      v37 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v36];

      [v45 addObject:v37];
    }
  }

  v38 = (*(*this + 32))(this, 16777217);
  if ((MLMediaTypeByStandardizingMediaType(v38) & 0x10042) != 0 && !v47 && v46)
  {
    v39 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
    v53[0] = v39;
    v40 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v46];
    v53[1] = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v42 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v41];

    [v45 addObject:v42];
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  return v45;
}

void sub_22D484C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ITunesSyncAlbumImportItem::getDescription(ML3ITunesSyncAlbumImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "<ML3ITunesSyncAlbumImportItem ", 30);
  *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v6, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " sync_id=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v11 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v11, 1);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v10);
}

BOOL ML3ITunesSyncAlbumImportItem::hasValue(ML3ITunesSyncAlbumImportItem *this)
{
  v1 = (*(*this + 216))(this);
  v2 = v1 != 0;

  return v2;
}

void ML3ITunesSyncAlbumImportItem::~ML3ITunesSyncAlbumImportItem(id *this)
{
  ML3ITunesSyncAlbumImportItem::~ML3ITunesSyncAlbumImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

id ML3ITunesSyncArtistImportItem::_getFoundationValue(id *this, int a2)
{
  v3 = 0;
  if (a2 > 301989902)
  {
    if (a2 > 318767105)
    {
      switch(a2)
      {
        case 318767106:
          v4 = [this[11] objectForKey:@"sort_artist"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [this[11] objectForKey:@"sort_artist"];
            goto LABEL_39;
          }

          break;
        case 318767107:
          v4 = [this[13] objectForKey:@"series_name"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [this[13] objectForKey:@"series_name"];
            goto LABEL_39;
          }

          break;
        case 318767108:
          v4 = [this[13] objectForKey:@"sort_series_name"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [this[13] objectForKey:@"sort_series_name"];
            goto LABEL_39;
          }

          break;
        default:
          goto LABEL_42;
      }
    }

    else
    {
      switch(a2)
      {
        case 301989903:
          v4 = [this[11] objectForKey:@"artist_liked_state"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [this[11] objectForKey:@"artist_liked_state"];
            goto LABEL_39;
          }

          break;
        case 301989904:
          v4 = [this[11] objectForKey:@"artist_date_liked"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [this[11] objectForKey:@"artist_date_liked"];
            goto LABEL_39;
          }

          break;
        case 318767105:
          v4 = [this[11] objectForKey:@"artist"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [this[11] objectForKey:@"artist"];
            goto LABEL_39;
          }

          break;
        default:
          goto LABEL_42;
      }
    }

LABEL_40:
    v3 = 0;
    goto LABEL_41;
  }

  if (a2 > 301989889)
  {
    switch(a2)
    {
      case 301989890:
        v4 = [this[11] objectForKey:@"sort_album_artist"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [this[11] objectForKey:@"sort_album_artist"];
          goto LABEL_39;
        }

        break;
      case 301989893:
        v4 = [this[12] objectForKey:@"artist_id"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [this[12] objectForKey:@"artist_id"];
          goto LABEL_39;
        }

        break;
      case 301989898:
        v4 = [this[11] objectForKey:@"artist_pid"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = [this[11] objectForKey:@"artist_pid"];
          goto LABEL_39;
        }

        break;
      default:
        goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 16777217)
  {
    v3 = _MLMediaTypeFromTrackProperiesDictionary(this[11]);
    goto LABEL_42;
  }

  if (a2 == 16777246)
  {
    v4 = [this[11] objectForKey:@"is_compilation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [this[11] objectForKey:@"is_compilation"];
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (a2 != 301989889)
  {
    goto LABEL_42;
  }

  v4 = [this[11] objectForKey:@"album_artist"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  v5 = [this[11] objectForKey:@"album_artist"];
LABEL_39:
  v3 = v5;
LABEL_41:

LABEL_42:

  return v3;
}

uint64_t ML3ITunesSyncArtistImportItem::propertyKeyForSortPropertyKey(ML3ITunesSyncArtistImportItem *this, int a2)
{
  if (a2 == 318767106)
  {
    v2 = 318767105;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 318767108)
  {
    v3 = 318767107;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 301989890)
  {
    return 301989889;
  }

  else
  {
    return v3;
  }
}

uint64_t ML3ITunesSyncArtistImportItem::sortPropertyKeyForPropertyKey(ML3ITunesSyncArtistImportItem *this, int a2)
{
  if (a2 == 318767105)
  {
    v2 = 318767106;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 318767107)
  {
    v3 = 318767108;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 301989889)
  {
    return 301989890;
  }

  else
  {
    return v3;
  }
}

void ML3ITunesSyncArtistImportItem::getEffectiveSortSeriesName(ML3ITunesSyncArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 318767108);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D485A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3ITunesSyncArtistImportItem::getEffectiveSortArtist(ML3ITunesSyncArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  memset(&v14, 0, sizeof(v14));
  (*(*this + 24))(&v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    *&v11 = &unk_28408AC60;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = v12;
  }

  (*(*this + 24))(&v11, this, 318767106);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    *&v11 = &unk_28408AC60;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = v12;
  }

  std::string::operator=(&v14, &v10);
  v6 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  v7 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  size = v14.__r_.__value_.__l.__size_;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v14.__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
    ML3CPPSortableString(&v11, &v13);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    v14.__r_.__value_.__r.__words[2] = v12.__r_.__value_.__r.__words[0];
    *&v14.__r_.__value_.__l.__data_ = v11;
    v6 = v12.__r_.__value_.__s.__data_[7];
    size = *(&v11 + 1);
    v7 = v12.__r_.__value_.__s.__data_[7];
  }

  if (v7 < 0)
  {
    v6 = size;
  }

  if (v6 && a2)
  {
    ML3CPPSanitizeString(&v11, &v14);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    v14.__r_.__value_.__r.__words[2] = v12.__r_.__value_.__r.__words[0];
    *&v14.__r_.__value_.__l.__data_ = v11;
    v7 = v12.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a3 + 16) = v14;
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_22D485D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3ITunesSyncArtistImportItem::getEffectiveSortAlbumArtist(ML3ITunesSyncArtistImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v20, this, 301989889);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 301989890);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 318767105);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 318767106);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = v21;
  }

  v7 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v19;
  }

  v8 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  size = v16.__r_.__value_.__l.__size_;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v16.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    if (v6)
    {
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  ML3CPPSortableString(&v20, &v22);
  if (v9 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
  *&v16.__r_.__value_.__l.__data_ = v20;
  LOBYTE(v9) = v21.__r_.__value_.__s.__data_[7];
  size = *(&v20 + 1);
  if (!v6)
  {
LABEL_28:
    if ((v9 & 0x80u) == 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = size;
    }

    if (!v11)
    {
      v12 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v22.__r_.__value_.__l.__size_;
      }

      if (!v12)
      {
        (*(*this + 168))(&v20, this, a2);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        }

        else
        {
          v15 = v21;
        }

        if ((v9 & 0x80) != 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v16 = v15;
        *&v20 = &unk_28408AC60;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
        size = v16.__r_.__value_.__l.__size_;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v16.__r_.__value_.__l.__size_;
        }

        if (!v13)
        {
          v14 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v14 = v18.__r_.__value_.__l.__size_;
          }

          if (!v14)
          {
            (*(*this + 176))(&v20, this, a2);
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
            }

            else
            {
              v15 = v21;
            }

            if (v9 < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }

            v16 = v15;
            *&v20 = &unk_28408AC60;
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v21.__r_.__value_.__l.__data_);
            }

            LOBYTE(v9) = *(&v16.__r_.__value_.__s + 23);
            size = v16.__r_.__value_.__l.__size_;
          }
        }
      }
    }
  }

LABEL_56:
  if ((v9 & 0x80u) == 0)
  {
    size = v9;
  }

  if (size && a2)
  {
    ML3CPPSanitizeString(&v20, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
    *&v16.__r_.__value_.__l.__data_ = v20;
    LOBYTE(v9) = v21.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v9 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 16) = v16;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
LABEL_71:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_22D486394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  *(v39 - 136) = &unk_28408AC60;
  if (*(v39 - 97) < 0)
  {
    operator delete(*(v39 - 120));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  _Unwind_Resume(exception_object);
}

void ML3ITunesSyncArtistImportItem::getEffectiveAlbumArtist(ML3ITunesSyncArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v17, this, 318767105);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __str = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 318767107);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 301989889);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v18;
  }

  v7 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = *&v15.__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[0] = v15.__r_.__value_.__r.__words[2];
  }

  if (!v6)
  {
    v8 = v18.__r_.__value_.__s.__data_[7];
    v9 = v18.__r_.__value_.__s.__data_[7];
    v10 = *(&v17 + 1);
    if (v18.__r_.__value_.__s.__data_[7] >= 0)
    {
      v11 = v18.__r_.__value_.__s.__data_[7];
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    if (!v11)
    {
      std::string::operator=(&v17, &__str);
      v8 = v18.__r_.__value_.__s.__data_[7];
      v10 = *(&v17 + 1);
      v9 = v18.__r_.__value_.__s.__data_[7];
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      std::string::operator=(&v17, &v16);
    }
  }

  v12 = v18.__r_.__value_.__s.__data_[7];
  v13 = v18.__r_.__value_.__s.__data_[7];
  if (v18.__r_.__value_.__s.__data_[7] < 0)
  {
    v12 = *(&v17 + 1);
  }

  if (v12 && a2)
  {
    ML3CPPSanitizeString(&v14, &v17);
    if (v18.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v17);
    }

    v18.__r_.__value_.__r.__words[0] = v14.__r_.__value_.__r.__words[2];
    v17 = *&v14.__r_.__value_.__l.__data_;
    v13 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v13 & 0x80) == 0)
  {
    *(a3 + 16) = v17;
    *(a3 + 32) = v18.__r_.__value_.__r.__words[0];
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v17, *(&v17 + 1));
  if ((v18.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  operator delete(v17);
  if (v7 < 0)
  {
LABEL_38:
    operator delete(v15.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_22D486840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  operator delete(__p);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  _Unwind_Resume(a1);
}

id ML3ITunesSyncArtistImportItem::getDeduplicationPredicates(ML3ITunesSyncArtistImportItem *this)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = @"store_id";
  v4 = @"grouping_key";
  memset(&__p, 0, sizeof(__p));
  if (*(this + 16) == 2)
  {
    v5 = 318767111;
  }

  else
  {
    v5 = 301989893;
  }

  v6 = (*(*this + 32))(this, v5);
  if (*(this + 16) == 2)
  {
    (*(*this + 24))(v22, this, 318767105);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v23;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
    v22[0] = &unk_28408AC60;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v7 = (*(*this + 32))(this, 16777217);
    if ((MLMediaTypeByStandardizingMediaType(v7) & 8) == 0)
    {
      (*(*this + 24))(v22, this, 318767107);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
        v22[0] = &unk_28408AC60;
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __str = v23;
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::operator=(&__p, &__str);
        v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v10 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v8 = 0;
  }

  else
  {
    (*(*this + 152))(v22, this, 0);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v23;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
    v22[0] = &unk_28408AC60;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v8 = (*(*this + 32))(this, 301989898);
  }

  v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  if (v11)
  {
    v12 = *(this + 17);
    v13 = ML3CPPBridgeString(&__p, 1);
    v14 = [v12 groupingKeyForString:v13];
  }

  else
  {
    v14 = 0;
  }

  if (v8)
  {
    v15 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:v8];
    [v2 addObject:v15];
  }

  if (v6)
  {
    if ([v14 length])
    {
      v16 = [ML3ComparisonPredicate predicateWithProperty:v3 equalToInt64:v6];
      v27[0] = v16;
      v17 = [ML3ComparisonPredicate predicateWithProperty:v4 equalToValue:v14];
      v27[1] = v17;
      [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    }

    else
    {
      v16 = [ML3ComparisonPredicate predicateWithProperty:v3 equalToInt64:v6];
      v26[0] = v16;
      v17 = [ML3ComparisonPredicate predicateWithProperty:v4 value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v26[1] = v17;
      [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    }
    v18 = ;
    v19 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v18];

    [v2 addObject:v19];
  }

  if ([v14 length])
  {
    v20 = [ML3ComparisonPredicate predicateWithProperty:v4 equalToValue:v14];
    [v2 addObject:v20];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_22D486F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ITunesSyncArtistImportItem::getDescription(ML3ITunesSyncArtistImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  if (*(this + 16) == 2)
  {
    v2 = 318767105;
  }

  else
  {
    v2 = 301989889;
  }

  (*(*this + 24))(v21, this, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v23 = __p;
  }

  if (*(this + 16) == 2)
  {
    v3 = 318767106;
  }

  else
  {
    v3 = 301989890;
  }

  (*(*this + 24))(v21, this, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v21[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v20 = __p;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "<ML3ITunesSyncArtistImportItem ", 31);
  *(&v24 + *(v24 - 24) + 8) = *(&v24 + *(v24 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = MEMORY[0x2318CD100](&v24, this);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " name=", 6);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v23;
  }

  else
  {
    v6 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, size);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " sortName=", 10);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v20;
  }

  else
  {
    v10 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v20.__r_.__value_.__l.__size_;
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " sync_id=", 9);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
  v14 = MEMORY[0x2318CD140]();
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " store_id=", 10);
  *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 2;
  v16 = MEMORY[0x2318CD140]();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " artistType=", 12);
  v18 = MEMORY[0x2318CD120](v17, *(this + 16));
  LOBYTE(v21[0]) = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v21, 1);
  std::stringbuf::str();
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x277D82828];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v28);
}

void sub_22D487460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::ostringstream::~ostringstream(&a29);
  _Unwind_Resume(a1);
}

BOOL ML3ITunesSyncArtistImportItem::hasValue(ML3ITunesSyncArtistImportItem *this)
{
  v1 = (*(*this + 216))(this);
  v2 = v1 != 0;

  return v2;
}

void ML3ITunesSyncArtistImportItem::~ML3ITunesSyncArtistImportItem(id *this)
{
  ML3ITunesSyncArtistImportItem::~ML3ITunesSyncArtistImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

void ML3ITunesSyncImportItem::ML3ITunesSyncImportItem(ML3ITunesSyncImportItem *this, NSDictionary *a2)
{
  v4 = a2;
  *(this + 8) = 256;
  *(this + 18) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  *this = &unk_2840865E0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  objc_storeStrong(this + 8, a2);
  v5 = [(NSDictionary *)v4 objectForKey:@"pid"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = [(NSDictionary *)v4 objectForKey:@"pid"];
  }

  else
  {
    v7 = 0;
  }

  *(this + 9) = [v7 longLongValue];
  if (isKindOfClass)
  {
  }
}

void sub_22D48771C(_Unwind_Exception *a1)
{
  v7 = v5;
  if (v7)
  {
  }

  *v2 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v3);

  _Unwind_Resume(a1);
}

void ML3ITunesSyncTrackImportItem::ML3ITunesSyncTrackImportItem(ML3ITunesSyncTrackImportItem *this, NSDictionary *a2)
{
  v4 = a2;
  ML3ITunesSyncImportItem::ML3ITunesSyncImportItem(this, v4);
  *this = &unk_2840866D0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  objc_storeStrong(this + 10, a2);
  v5 = [*(this + 10) objectForKey:@"avformat_info"];
  v6 = *(this + 11);
  *(this + 11) = v5;

  v7 = [*(this + 10) objectForKey:@"item"];
  v8 = *(this + 12);
  *(this + 12) = v7;

  v9 = [*(this + 10) objectForKey:@"item_stats"];
  v10 = *(this + 13);
  *(this + 13) = v9;

  v11 = [*(this + 10) objectForKey:@"podcast_info"];
  v12 = *(this + 14);
  *(this + 14) = v11;

  v13 = [*(this + 10) objectForKey:@"rental_info"];
  v14 = *(this + 15);
  *(this + 15) = v13;

  v15 = [*(this + 10) objectForKey:@"store_info"];
  v16 = *(this + 16);
  *(this + 16) = v15;

  v17 = [*(this + 10) objectForKey:@"video_info"];
  v18 = *(this + 17);
  *(this + 17) = v17;

  v19 = [*(this + 12) objectForKey:@"lyrics"];
  v20 = *(this + 18);
  *(this + 18) = v19;

  v21 = [*(this + 16) objectForKey:@"store_item_id"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v23 = [*(this + 16) objectForKey:@"store_item_id"];
  }

  else
  {
    v23 = 0;
  }

  *(this + 19) = [v23 longLongValue];
  if (isKindOfClass)
  {
  }

  v24 = [*(this + 8) objectForKey:@"operation"];
  *(this + 17) = [v24 isEqualToString:@"insert_track"];
}

void sub_22D4879A8(_Unwind_Exception *a1)
{
  *v2 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v2 + 24);

  _Unwind_Resume(a1);
}

void ML3ITunesSyncContainerImportItem::ML3ITunesSyncContainerImportItem(ML3ITunesSyncContainerImportItem *this, NSDictionary *a2, char a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = a2;
  ML3ITunesSyncImportItem::ML3ITunesSyncImportItem(this, v30);
  *this = &unk_2840867C0;
  *(this + 80) = a3;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  v5 = [*(this + 8) objectForKey:@"container"];
  v6 = *(this + 12);
  *(this + 12) = v5;

  v7 = [*(this + 8) objectForKey:@"container_ui"];
  v8 = *(this + 13);
  *(this + 13) = v7;

  v9 = [*(this + 8) objectForKey:@"pid"];
  *(this + 11) = [v9 longLongValue];

  *(this + 1) = *(this + 11);
  [*(this + 8) objectForKey:@"item_to_container"];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v10 = v32 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v31 + 1) + 8 * v13) longLongValue];
        v15 = v14;
        v17 = *(this + 15);
        v16 = *(this + 16);
        if (v17 >= v16)
        {
          v19 = *(this + 14);
          v20 = v17 - v19;
          v21 = (v17 - v19) >> 3;
          v22 = v21 + 1;
          if ((v21 + 1) >> 61)
          {
            std::vector<long long>::__throw_length_error[abi:ne200100]();
          }

          v23 = v16 - v19;
          if (v23 >> 2 > v22)
          {
            v22 = v23 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v24);
          }

          v25 = (v17 - v19) >> 3;
          v26 = (8 * v21);
          v27 = (8 * v21 - 8 * v25);
          *v26 = v15;
          v18 = v26 + 1;
          memcpy(v27, v19, v20);
          v28 = *(this + 14);
          *(this + 14) = v27;
          *(this + 15) = v18;
          *(this + 16) = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v17 = v14;
          v18 = v17 + 1;
        }

        *(this + 15) = v18;
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  v29 = [*(this + 8) objectForKey:@"operation"];
  *(this + 17) = [v29 isEqualToString:@"insert_playlist"];
}

void sub_22D487D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = *(v10 + 112);
  if (v14)
  {
    *(v10 + 120) = v14;
    operator delete(v14);
  }

  *v10 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v10 + 24);

  _Unwind_Resume(a1);
}

void ML3ITunesSyncAlbumImportItem::ML3ITunesSyncAlbumImportItem(ML3ITunesSyncAlbumImportItem *this, NSDictionary *a2, ML3MusicLibrary *a3)
{
  v6 = a2;
  v7 = a3;
  ML3ITunesSyncImportItem::ML3ITunesSyncImportItem(this, v6);
  *this = &unk_2840869B8;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  v8 = v7;
  *(this + 17) = v8;
  objc_storeStrong(this + 11, a2);
  v9 = [*(this + 11) objectForKey:@"item_stats"];
  v10 = *(this + 10);
  *(this + 10) = v9;

  v11 = [*(this + 11) objectForKey:@"item"];
  v12 = *(this + 12);
  *(this + 12) = v11;

  v13 = [*(this + 11) objectForKey:@"store_info"];
  v14 = *(this + 13);
  *(this + 13) = v13;

  v15 = [*(this + 11) objectForKey:@"video_info"];
  v16 = *(this + 14);
  *(this + 14) = v15;

  v17 = [*(this + 13) objectForKey:@"store_item_id"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = [*(this + 13) objectForKey:@"store_item_id"];
  }

  else
  {
    v19 = 0;
  }

  *(this + 15) = [v19 longLongValue];
  if (isKindOfClass)
  {
  }

  v20 = [(NSDictionary *)v6 objectForKey:@"pid"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();
  if (v21)
  {
    v22 = [(NSDictionary *)v6 objectForKey:@"pid"];
  }

  else
  {
    v22 = 0;
  }

  *(this + 16) = [v22 longLongValue];
  if (v21)
  {
  }

  v23 = [*(this + 8) objectForKey:@"operation"];
  *(this + 17) = [v23 isEqualToString:@"insert_track"];
}

void sub_22D487FEC(_Unwind_Exception *a1)
{
  *v2 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v2 + 24);

  _Unwind_Resume(a1);
}

uint64_t ML3ITunesSyncArtistImportItem::ML3ITunesSyncArtistImportItem(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  ML3ITunesSyncImportItem::ML3ITunesSyncImportItem(a1, v8);
  *a1 = &unk_284086AA8;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 128) = a3;
  v10 = v9;
  *(a1 + 136) = v10;
  objc_storeStrong((a1 + 80), a2);
  v11 = [*(a1 + 80) objectForKey:@"item"];
  v12 = *(a1 + 88);
  *(a1 + 88) = v11;

  v13 = [*(a1 + 80) objectForKey:@"store_info"];
  v14 = *(a1 + 96);
  *(a1 + 96) = v13;

  v15 = [*(a1 + 80) objectForKey:@"video_info"];
  v16 = *(a1 + 104);
  *(a1 + 104) = v15;

  v17 = [*(a1 + 96) objectForKey:@"store_item_id"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v19 = [*(a1 + 96) objectForKey:@"store_item_id"];
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 112) = [v19 longLongValue];
  if (isKindOfClass)
  {
  }

  v20 = [(NSDictionary *)v8 objectForKey:@"pid"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();
  if (v21)
  {
    v22 = [(NSDictionary *)v8 objectForKey:@"pid"];
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 120) = [v22 longLongValue];
  if (v21)
  {
  }

  v23 = [*(a1 + 64) objectForKey:@"operation"];
  *(a1 + 17) = [v23 isEqualToString:@"insert_track"];

  return a1;
}

void sub_22D4882A8(_Unwind_Exception *a1)
{
  *v2 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v2 + 24);

  _Unwind_Resume(a1);
}

void sub_22D4892F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MLMediaTypeForITMediaKind(unsigned int a1)
{
  v1 = (a1 >> 2) & 2 | (8 * (a1 & 1)) | (((a1 >> 5) & 1) << 10) | (8 * a1) & 0x2200 | HIWORD(a1) & 0x30;
  if ((~a1 & 0x21) == 0)
  {
    ++v1;
  }

  v2 = a1 & 4;
  if ((~a1 & 6) == 0)
  {
    v2 = 256;
  }

  v3 = v1 | v2;
  if ((((v3 & 0xFF00) == 0) & (a1 >> 1)) != 0)
  {
    return v3 | 0x800;
  }

  else
  {
    return v3;
  }
}

uint64_t ITMediaKindForMLMediaType(unsigned int a1)
{
  if (a1 > 65279)
  {
    if (a1 == 0xFFFFFF)
    {
      return 3951;
    }

    if (a1 == 65280)
    {
      return 3682;
    }
  }

  else if (a1 == 255 || a1 == 1535)
  {
    return 301;
  }

  v2 = a1 & 4;
  if ((a1 & 0x100) != 0)
  {
    v2 = 6;
  }

  v3 = (4 * a1) & 8 | (a1 >> 3) & 1 | v2;
  if (a1)
  {
    v3 |= 0x21u;
  }

  return (a1 >> 3) & 0x440 | (((a1 >> 4) & 3) << 20) | (a1 >> 5) & 0x20 | (a1 >> 10) & 2 | v3;
}

id NSStringFromITMediaKind(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = 0;
  v4 = @"Song";
  do
  {
    if ((*(&unk_278762BF8 + v3) & a1) != 0)
    {
      [v2 addObject:v4];
    }

    v4 = *(&unk_278762BF8 + v3 + 24);
    v3 += 16;
  }

  while (v3 != 400);
  v5 = [v2 componentsJoinedByString:@"|"];

  return v5;
}

id NSStringFromITDBTrackField(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v5 = @"kITDBTrackField_Invalid";
      v7 = 0;
      goto LABEL_162;
    case 1:
      v1 = 1;
      v2 = @"kITDBTrackField_PlayStatus";
      goto LABEL_161;
    case 2:
      v1 = 2;
      v2 = @"kITDBTrackField_Name";
      goto LABEL_161;
    case 3:
      v1 = 3;
      v2 = @"kITDBTrackField_Album";
      goto LABEL_161;
    case 4:
      v1 = 4;
      v2 = @"kITDBTrackField_Artist";
      goto LABEL_161;
    case 5:
      v1 = 5;
      v2 = @"kITDBTrackField_BitRate";
      goto LABEL_161;
    case 6:
      v1 = 6;
      v2 = @"kITDBTrackField_SampleRate";
      goto LABEL_161;
    case 7:
      v1 = 7;
      v2 = @"kITDBTrackField_Year";
      goto LABEL_161;
    case 8:
      v1 = 8;
      v2 = @"kITDBTrackField_Genre";
      goto LABEL_161;
    case 9:
      v1 = 9;
      v2 = @"kITDBTrackField_Kind";
      goto LABEL_161;
    case 10:
      v1 = 10;
      v2 = @"kITDBTrackField_Date";
      goto LABEL_161;
    case 11:
      v1 = 11;
      v2 = @"kITDBTrackField_TrackNumber";
      goto LABEL_161;
    case 12:
      v1 = 12;
      v2 = @"kITDBTrackField_TotalSize";
      goto LABEL_161;
    case 13:
      v1 = 13;
      v2 = @"kITDBTrackField_TotalTime";
      goto LABEL_161;
    case 14:
      v1 = 14;
      v2 = @"kITDBTrackField_Comment";
      goto LABEL_161;
    case 15:
      v1 = 15;
      v2 = @"kITDBTrackField_Location";
      goto LABEL_161;
    case 16:
      v1 = 16;
      v2 = @"kITDBTrackField_DateAdded";
      goto LABEL_161;
    case 17:
      v1 = 17;
      v2 = @"kITDBTrackField_EQPreset";
      goto LABEL_161;
    case 18:
      v1 = 18;
      v2 = @"kITDBTrackField_Composer";
      goto LABEL_161;
    case 19:
      v1 = 19;
      v2 = @"kITDBTrackField_ObsoleteDisplayArtist";
      goto LABEL_161;
    case 20:
      v1 = 20;
      v2 = @"kITDBTrackField_NormalizedVolume";
      goto LABEL_161;
    case 21:
      v1 = 21;
      v2 = @"kITDBTrackField_StreamStatus";
      goto LABEL_161;
    case 22:
      v1 = 22;
      v2 = @"kITDBTrackField_UserPlayCount";
      goto LABEL_161;
    case 23:
      v1 = 23;
      v2 = @"kITDBTrackField_PlayDate";
      goto LABEL_161;
    case 24:
      v1 = 24;
      v2 = @"kITDBTrackField_DiscNumber";
      goto LABEL_161;
    case 25:
      v1 = 25;
      v2 = @"kITDBTrackField_TrackRating";
      goto LABEL_161;
    case 26:
      v1 = 26;
      v2 = @"kITDBTrackField_Price";
      goto LABEL_161;
    case 27:
      v1 = 27;
      v2 = @"kITDBTrackField_ObjectID";
      goto LABEL_161;
    case 28:
      v1 = 28;
      v2 = @"kITDBTrackField_PersistentID";
      goto LABEL_161;
    case 29:
      v1 = 29;
      v2 = @"kITDBTrackField_OldUserDisabled";
      goto LABEL_161;
    case 30:
      v1 = 30;
      v2 = @"kITDBTrackField_PlaylistItemID";
      goto LABEL_161;
    case 31:
      v1 = 31;
      v2 = @"kITDBTrackField_Compilation";
      goto LABEL_161;
    case 32:
      v1 = 32;
      v2 = @"kITDBTrackField_PurchaseDate";
      goto LABEL_161;
    case 33:
      v1 = 33;
      v2 = @"kITDBTrackField_Relevance";
      goto LABEL_161;
    case 34:
      v1 = 34;
      v2 = @"kITDBTrackField_ReleaseDate";
      goto LABEL_161;
    case 35:
      v1 = 35;
      v2 = @"kITDBTrackField_BeatsPerMinute";
      goto LABEL_161;
    case 36:
      v1 = 36;
      v2 = @"kITDBTrackField_ParentContainerID";
      goto LABEL_161;
    case 37:
      v1 = 37;
      v2 = @"kITDBTrackField_Artwork";
      goto LABEL_161;
    case 38:
      v1 = 38;
      v2 = @"kITDBTrackField_Popularity";
      goto LABEL_161;
    case 39:
      v1 = 39;
      v2 = @"kITDBTrackField_Grouping";
      goto LABEL_161;
    case 40:
      v1 = 40;
      v2 = @"kITDBTrackField_PlaylistPersistentID";
      goto LABEL_161;
    case 41:
      v1 = 41;
      v2 = @"kITDBTrackField_SongID";
      goto LABEL_161;
    case 42:
      v1 = 42;
      v2 = @"kITDBTrackField_ArtistID";
      goto LABEL_161;
    case 43:
      v1 = 43;
      v2 = @"kITDBTrackField_PlaylistID";
      goto LABEL_161;
    case 44:
      v1 = 44;
      v2 = @"kITDBTrackField_ComposerID";
      goto LABEL_161;
    case 45:
      v1 = 45;
      v2 = @"kITDBTrackField_GenreID";
      goto LABEL_161;
    case 46:
      v1 = 46;
      v2 = @"kITDBTrackField_CodecType";
      goto LABEL_161;
    case 47:
      v1 = 47;
      v2 = @"kITDBTrackField_CodecSubType";
      goto LABEL_161;
    case 48:
      v1 = 48;
      v2 = @"kITDBTrackField_SongDataKind";
      goto LABEL_161;
    case 49:
      v1 = 49;
      v2 = @"kITDBTrackField_DiscCount";
      goto LABEL_161;
    case 50:
      v1 = 50;
      v2 = @"kITDBTrackField_StartTime";
      goto LABEL_161;
    case 51:
      v1 = 51;
      v2 = @"kITDBTrackField_StopTime";
      goto LABEL_161;
    case 52:
      v1 = 52;
      v2 = @"kITDBTrackField_TrackCount";
      goto LABEL_161;
    case 53:
      v1 = 53;
      v2 = @"kITDBTrackField_StorefrontID";
      goto LABEL_161;
    case 54:
      v1 = 54;
      v2 = @"kITDBTrackField_Description";
      goto LABEL_161;
    case 55:
      v1 = 55;
      v2 = @"kITDBTrackField_Category";
      goto LABEL_161;
    case 56:
      v1 = 56;
      v2 = @"kITDBTrackField_Keywords";
      goto LABEL_161;
    case 57:
      v1 = 57;
      v2 = @"kITDBTrackField_Podcast";
      goto LABEL_161;
    case 58:
      v1 = 58;
      v2 = @"kITDBTrackField_CloudMatchState";
      goto LABEL_161;
    case 59:
      v1 = 59;
      v2 = @"kITDBTrackField_HasLyrics";
      goto LABEL_161;
    case 60:
      v1 = 60;
      v2 = @"kITDBTrackField_MediaKind";
      goto LABEL_161;
    case 61:
      v1 = 61;
      v2 = @"kITDBTrackField_Debug";
      goto LABEL_161;
    case 62:
      v1 = 62;
      v2 = @"kITDBTrackField_SeriesName";
      goto LABEL_161;
    case 63:
      v1 = 63;
      v2 = @"kITDBTrackField_SeasonNumber";
      goto LABEL_161;
    case 64:
      v1 = 64;
      v2 = @"kITDBTrackField_EpisodeID";
      goto LABEL_161;
    case 65:
      v1 = 65;
      v2 = @"kITDBTrackField_EpisodeSortID";
      goto LABEL_161;
    case 66:
      v1 = 66;
      v2 = @"kITDBTrackField_NetworkName";
      goto LABEL_161;
    case 67:
      v1 = 67;
      v2 = @"kITDBTrackField_LastBackupDate";
      goto LABEL_161;
    case 68:
      v1 = 68;
      v2 = @"kITDBTrackField_UserSkipCount";
      goto LABEL_161;
    case 69:
      v1 = 69;
      v2 = @"kITDBTrackField_SkipDate";
      goto LABEL_161;
    case 70:
      v1 = 70;
      v2 = @"kITDBTrackField_GaplessAlbum";
      goto LABEL_161;
    case 71:
      v1 = 71;
      v2 = @"kITDBTrackField_AlbumArtist";
      goto LABEL_161;
    case 72:
      v1 = 72;
      v2 = @"kITDBTrackField_ShuffleID";
      goto LABEL_161;
    case 73:
      v1 = 73;
      v2 = @"kITDBTrackField_TrackID";
      goto LABEL_161;
    case 74:
      v1 = 74;
      v2 = @"kITDBTrackField_RelativeVolume";
      goto LABEL_161;
    case 75:
      v1 = 75;
      v2 = @"kITDBTrackField_Attributes";
      goto LABEL_161;
    case 76:
      v1 = 76;
      v2 = @"kITDBTrackField_Private";
      goto LABEL_161;
    case 77:
      v1 = 77;
      v2 = @"kITDBTrackField_AlbumInfo";
      goto LABEL_161;
    case 78:
      v1 = 78;
      v2 = @"kITDBTrackField_SortName";
      goto LABEL_161;
    case 79:
      v1 = 79;
      v2 = @"kITDBTrackField_SortAlbum";
      goto LABEL_161;
    case 80:
      v1 = 80;
      v2 = @"kITDBTrackField_SortArtist";
      goto LABEL_161;
    case 81:
      v1 = 81;
      v2 = @"kITDBTrackField_SortAlbumArtist";
      goto LABEL_161;
    case 82:
      v1 = 82;
      v2 = @"kITDBTrackField_SortComposer";
      goto LABEL_161;
    case 83:
      v1 = 83;
      v2 = @"kITDBTrackField_SortSeriesName";
      goto LABEL_161;
    case 84:
      v1 = 84;
      v2 = @"kITDBTrackField_MovieInfo";
      goto LABEL_161;
    case 85:
      v1 = 85;
      v2 = @"kITDBTrackField_PodcastURL";
      goto LABEL_161;
    case 86:
      v1 = 86;
      v2 = @"kITDBTrackField_LongDescription";
      goto LABEL_161;
    case 87:
      v1 = 87;
      v2 = @"kITDBTrackField_ExternalGUID";
      goto LABEL_161;
    case 88:
      v1 = 88;
      v2 = @"kITDBTrackField_ChapterData";
      goto LABEL_161;
    case 89:
      v1 = 89;
      v2 = @"kITDBTrackField_ExtendedContentRating";
      goto LABEL_161;
    case 90:
      v1 = 90;
      v2 = @"kITDBTrackField_AlbumRating";
      goto LABEL_161;
    case 91:
      v1 = 91;
      v2 = @"kITDBTrackField_RentalExpirationDate";
      goto LABEL_161;
    case 92:
      v1 = 92;
      v2 = @"kITDBTrackField_ObsoleteRingtoneStatus";
      goto LABEL_161;
    case 93:
      v1 = 93;
      v2 = @"kITDBTrackField_BookmarkTime";
      goto LABEL_161;
    case 94:
      v1 = 94;
      v2 = @"kITDBTrackField_RememberBookmark";
      goto LABEL_161;
    case 95:
      v1 = 95;
      v2 = @"kITDBTrackField_HasBeenPlayed";
      goto LABEL_161;
    case 96:
      v1 = 96;
      v2 = @"kITDBTrackField_HasAlternateAudio";
      goto LABEL_161;
    case 97:
      v1 = 97;
      v2 = @"kITDBTrackField_HasSubtitles";
      goto LABEL_161;
    case 98:
      v1 = 98;
      v2 = @"kITDBTrackField_AudioLanguage";
      goto LABEL_161;
    case 99:
      v1 = 99;
      v2 = @"kITDBTrackField_AudioTrackIndex";
      goto LABEL_161;
    case 100:
      v1 = 100;
      v2 = @"kITDBTrackField_AudioTrackID";
      goto LABEL_161;
    case 101:
      v1 = 101;
      v2 = @"kITDBTrackField_SubtitleLanguage";
      goto LABEL_161;
    case 102:
      v1 = 102;
      v2 = @"kITDBTrackField_SubtitleTrackIndex";
      goto LABEL_161;
    case 103:
      v1 = 103;
      v2 = @"kITDBTrackField_SubtitleTrackID";
      goto LABEL_161;
    case 104:
      v1 = 104;
      v2 = @"kITDBTrackField_Studio";
      goto LABEL_161;
    case 105:
      v1 = 105;
      v2 = @"kITDBTrackField_Reserved1";
      goto LABEL_161;
    case 106:
      v1 = 106;
      v2 = @"kITDBTrackField_Reserved2";
      goto LABEL_161;
    case 107:
      v1 = 107;
      v2 = @"kITDBTrackField_Reserved3";
      goto LABEL_161;
    case 108:
      v1 = 108;
      v2 = @"kITDBTrackField_Reserved4";
      goto LABEL_161;
    case 109:
      v1 = 109;
      v2 = @"kITDBTrackField_Reserved5";
      goto LABEL_161;
    case 110:
      v1 = 110;
      v2 = @"kITDBTrackField_GaplessInfo";
      goto LABEL_161;
    case 111:
      v1 = 111;
      v2 = @"kITDBTrackField_GeniusID";
      goto LABEL_161;
    case 112:
      v1 = 112;
      v2 = @"kITDBTrackField_ExcludeFromShuffle";
      goto LABEL_161;
    case 113:
      v1 = 113;
      v2 = @"kITDBTrackField_Lyrics";
      goto LABEL_161;
    case 114:
      v1 = 114;
      v2 = @"kITDBTrackField_StorePersistentID";
      goto LABEL_161;
    case 115:
      v1 = 115;
      v2 = @"kITDBTrackField_JukeboxVotes";
      goto LABEL_161;
    case 116:
      v1 = 116;
      v2 = @"kITDBTrackField_VoiceOverLanguage";
      goto LABEL_161;
    case 117:
      v1 = 117;
      v2 = @"kITDBTrackField_iTunesU";
      goto LABEL_161;
    case 118:
      v1 = 118;
      v2 = @"kITDBTrackField_UncompressedSize";
      goto LABEL_161;
    case 119:
      v1 = 119;
      v2 = @"kITDBTrackField_XID";
      goto LABEL_161;
    case 120:
      v1 = 120;
      v2 = @"kITDBTrackField_GameGUID";
      goto LABEL_161;
    case 121:
      v1 = 121;
      v2 = @"kITDBTrackField_AppIdentifier";
      goto LABEL_161;
    case 122:
      v1 = 122;
      v2 = @"kITDBTrackField_ObsoleteTrackKind";
      goto LABEL_161;
    case 123:
      v1 = 123;
      v2 = @"kITDBTrackField_Version";
      goto LABEL_161;
    case 124:
      v1 = 124;
      v2 = @"kITDBTrackField_Copyright";
      goto LABEL_161;
    case 125:
      v1 = 125;
      v2 = @"kITDBTrackField_UserDisabled";
      goto LABEL_161;
    case 126:
      v1 = 126;
      v2 = @"kITDBTrackField_AlbumArtwork";
      goto LABEL_161;
    case 127:
      v1 = 127;
      v2 = @"kITDBTrackField_CollectionDescription";
      goto LABEL_161;
    case 128:
      v1 = 128;
      v2 = @"kITDBTrackField_Flavor";
      goto LABEL_161;
    case 129:
      v1 = 129;
      v2 = @"kITDBTrackField_CloudID";
      goto LABEL_161;
    case 130:
      v1 = 130;
      v2 = @"kITDBTrackField_CloudDownload";
      goto LABEL_161;
    case 131:
      v1 = 131;
      v2 = @"kITDBTrackField_ChosenByAutoFill";
      goto LABEL_161;
    case 132:
      v1 = 132;
      v2 = @"kITDBTrackField_CloudUserID";
      goto LABEL_161;
    case 133:
      v1 = 133;
      v2 = @"kITDBTrackField_TrackKinds";
      goto LABEL_161;
    case 134:
      v1 = 134;
      v2 = @"kITDBTrackField_CloudType";
      goto LABEL_161;
    case 135:
      v1 = 135;
      v2 = @"kITDBTrackField_Tags";
      goto LABEL_161;
    case 136:
      v1 = 136;
      v2 = @"kITDBTrackField_NumChannels";
      goto LABEL_161;
    case 137:
      v1 = 137;
      v2 = @"kITDBTrackField_CloudFlavorID";
      goto LABEL_161;
    case 138:
      v1 = 138;
      v2 = @"kITDBTrackField_CloudLibraryKind";
      goto LABEL_161;
    case 139:
      v1 = 139;
      v2 = @"kITDBTrackField_StoreVersion";
      goto LABEL_161;
    case 140:
      v1 = 140;
      v2 = @"kITDBTrackField_AppFamilyIDMask";
      goto LABEL_161;
    case 141:
      v1 = 141;
      v2 = @"kITDBTrackField_ItemIsCompilation";
      goto LABEL_161;
    case 142:
      v1 = 142;
      v2 = @"kITDBTrackField_ArtistInfo";
      goto LABEL_161;
    case 143:
      v1 = 143;
      v2 = @"kITDBTrackField_PlaylistItemPersistentID";
      goto LABEL_161;
    case 144:
      v1 = 144;
      v2 = @"kITDBTrackField_AppleID";
      goto LABEL_161;
    case 145:
      v1 = 145;
      v2 = @"kITDBTrackField_OwnerName";
      goto LABEL_161;
    case 146:
      v1 = 146;
      v2 = @"kITDBTrackField_URLExtraInfo";
      goto LABEL_161;
    case 147:
      v1 = 147;
      v2 = @"kITDBTrackField_ManuallyMarked";
      goto LABEL_161;
    case 148:
      v1 = 148;
      v2 = @"kITDBTrackField_DownloaderAppleID";
      goto LABEL_161;
    case 149:
      v1 = 149;
      v2 = @"kITDBTrackField_DownloaderName";
      goto LABEL_161;
    case 150:
      v1 = 150;
      v2 = @"kITDBTrackField_CloudServerAssetState";
      goto LABEL_161;
    case 151:
      v1 = 151;
      v2 = @"kITDBTrackField_SubscriptionAdamID";
      goto LABEL_161;
    case 152:
      v1 = 152;
      v2 = @"kITDBTrackField_ReportPlayEvents";
      goto LABEL_161;
    case 153:
      v1 = 153;
      v2 = @"kITDBTrackField_IsPlaylistOnly";
      goto LABEL_161;
    case 154:
      v1 = 154;
      v2 = @"kITDBTrackField_LikedState";
      goto LABEL_161;
    case 155:
      v1 = 155;
      v2 = @"kITDBTrackField_CloudPlaybackEndpointType";
      goto LABEL_161;
    case 156:
      v1 = 156;
      v2 = @"kITDBTrackField_AlbumLikedState";
      goto LABEL_161;
    case 183:
      v1 = 183;
      v2 = @"kITDBTrackField_LikedStateModDate";
      goto LABEL_161;
    case 184:
      v1 = 184;
      v2 = @"kITDBTrackField_MaxValue";
LABEL_161:
      v5 = v2;
      v7 = v1;
LABEL_162:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%d)", v5, v7];
      break;
    default:
      [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown kITDBTrackField_??? (%ld)", a1, v6];
      break;
  }
  v3 = ;

  return v3;
}

id NSStringFromOSType(uint64_t a1)
{
  if (BYTE3(a1))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"'%c%c%c%c'", (a1 >> 24), ((a1 << 8) >> 24), (a1 >> 8), a1];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a1, v3, v4, v5];
  }
  v1 = ;

  return v1;
}

__CFString *NSStringCreateWithUStr255NoCopy(unsigned __int16 *a1)
{
  if (*a1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:a1 + 1 length:*a1 freeWhenDone:0];
  }

  else
  {
    v2 = &stru_28408B690;
  }

  return v2;
}

__CFString *NSStringCreateWithUStr255(unsigned __int16 *a1)
{
  if (*a1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:a1 + 1 length:*a1];
  }

  else
  {
    v2 = &stru_28408B690;
  }

  return v2;
}

__CFString *MLDescriptionFromChapterData(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = 0;
LABEL_43:
    v26 = @"(null)";
    if (v7)
    {
      v26 = v7;
    }

    v27 = v26;
    goto LABEL_46;
  }

  Flags = ChapterData_GetFlags();
  v3 = ChapterData_GetFlags();
  v4 = ChapterData_GetFlags();
  NumChapters = ChapterData_GetNumChapters();
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:&stru_28408B690];
  v7 = v6;
  v8 = @"Y";
  v31 = Flags;
  if (Flags)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ((v3 & 4) != 0)
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  if ((v4 & 2) == 0)
  {
    v8 = @"N";
  }

  [(__CFString *)v6 appendFormat:@"ChapterDataRef = %p | has[names=%@, urls=%@, pics=%@] | chap count = %d \n", a1, v9, v10, v8, NumChapters];
  if (!NumChapters)
  {
    goto LABEL_43;
  }

  v11 = 1;
  v30 = v3;
  while (1)
  {
    IndChapterTime = ChapterData_GetIndChapterTime();
    if (ChapterData_GetNameCookieForTime() || (v4 & 2) != 0 && ChapterData_GetPictureCookieForTime())
    {
      break;
    }

    if ((v3 & 4) != 0 && ChapterData_GetURLCookieForTime())
    {
      break;
    }

    memset(v38, 0, sizeof(v38));
    if (v31)
    {
      if (ChapterData_CopyProperty())
      {
        break;
      }

      v13 = NSStringCreateWithUStr255(v38);
    }

    else
    {
      v13 = 0;
    }

    buf[1] = 0;
    memset(v35, 0, sizeof(v35));
    if ((v3 & 4) == 0)
    {
      goto LABEL_26;
    }

    if (ChapterData_FindURLForTime())
    {
      goto LABEL_49;
    }

    if (buf[1])
    {
      if (ChapterData_FindURLTitleForTime())
      {
LABEL_49:

        break;
      }

      *(&v34 + 1) = NSStringCreateWithUStr255(v35);
      *&v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    }

    else
    {
LABEL_26:
      v34 = 0uLL;
    }

    v14 = 0;
    v33 = v13;
    if ((v4 & 2) != 0)
    {
      ChapterData_CopyProperty();
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = NSStringFromOSType(0);
      v17 = NSStringFromOSType(0);
      v14 = [v15 initWithFormat:@"loc/fmt=%@%@", v16, v17];

      v13 = v33;
    }

    v32 = NumChapters;
    v18 = [MEMORY[0x277CBEB18] array];
    if ([v13 length])
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"name = %@", v13];
      [v18 addObject:v19];
    }

    if (v34 != 0)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"url = [%@: %@]", *(&v34 + 1), v34];
      [v18 addObject:v20];
    }

    if (v14)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"pic = %@", v14];
      [v18 addObject:v21];
    }

    v22 = IndChapterTime / 1000.0;
    v23 = "";
    if (v22 < 100.0)
    {
      v23 = " ";
    }

    if (v22 >= 10.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = "  ";
    }

    v25 = [v18 componentsJoinedByString:{@", "}];
    [(__CFString *)v7 appendFormat:@"\t{%3d: time=%s%.2f, cookies(name=%2u, pic=%2u, url=%2u), %@", v11, v24, *&v22, 0x7FFFFFFFLL, 0x7FFFFFFFLL, 0x7FFFFFFFLL, v25];

    [(__CFString *)v7 appendString:@"\n"];
    v11 = (v11 + 1);
    LODWORD(NumChapters) = NumChapters - 1;
    v3 = v30;
    if (v32 == 1)
    {
      goto LABEL_43;
    }
  }

  v29 = _ML3LogCategoryDefault();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v37 = "NSString *MLDescriptionFromChapterData(ITChapterDataRef)";
    _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s unexpected error", buf, 0xCu);
  }

  v27 = 0;
LABEL_46:

  return v27;
}

id MLExtendedRatingStringFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = [v1 objectForKey:@"system"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_28408B690;
  }

  [v2 appendFormat:@"%@|", v5];
  v6 = [v1 objectForKey:@"label"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_28408B690;
  }

  [v2 appendFormat:@"%@|", v7];
  v8 = [v1 objectForKey:@"rank"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(__CFString *)v8 stringValue];

    v8 = v9;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_28408B690;
  }

  [v2 appendFormat:@"%@|", v10];
  v11 = [v1 objectForKey:@"content"];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_28408B690;
  }

  [v2 appendString:v12];

  return v2;
}

id MLExtendedRatingInfoDictionaryFromString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 componentsSeparatedByString:@"|"];
    v3 = [v2 count];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 objectAtIndex:0];
      if (v4 == 1)
      {
        v6 = &stru_28408B690;
        v7 = &stru_28408B690;
        v8 = &stru_28408B690;
      }

      else
      {
        v8 = [v2 objectAtIndex:1];
        if (v4 < 3)
        {
          v6 = &stru_28408B690;
          v7 = &stru_28408B690;
        }

        else
        {
          v7 = [v2 objectAtIndex:2];
          if (v4 == 3)
          {
            v6 = &stru_28408B690;
          }

          else
          {
            v6 = [v2 objectAtIndex:3];
          }
        }
      }
    }

    else
    {
      v6 = &stru_28408B690;
      v7 = &stru_28408B690;
      v8 = &stru_28408B690;
      v5 = &stru_28408B690;
    }

    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v5, @"ratingProvider", v8, @"localizedRating", v7, @"ratingLevel", v6, @"localizedReason", 0, @"debugInfo", 0}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id MLLocalizedSeasonDisplayStringForSeasonNumber(uint64_t a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"Season %d" value:&stru_28408B690 table:@"MLLocalizable"];
    v5 = [v2 stringWithFormat:v4, a1];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __MLLocalizedSeasonDisplayStringForSeasonNumber_block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v8 = 0;
    if (MLLocalizedSeasonDisplayStringForSeasonNumber_onceToken != -1)
    {
      dispatch_once(&MLLocalizedSeasonDisplayStringForSeasonNumber_onceToken, block);
    }

    v5 = MLLocalizedSeasonDisplayStringForSeasonNumber_zeroSeasonString;
  }

  return v5;
}

void __MLLocalizedSeasonDisplayStringForSeasonNumber_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v6 localizedStringForKey:@"Season %d" value:&stru_28408B690 table:@"MLLocalizable"];
  v4 = [v2 stringWithFormat:v3, *(a1 + 32)];
  v5 = MLLocalizedSeasonDisplayStringForSeasonNumber_zeroSeasonString;
  MLLocalizedSeasonDisplayStringForSeasonNumber_zeroSeasonString = v4;
}

uint64_t MLGetSeasonNumberForLocalizedSeasonDisplayString(void *a1)
{
  v1 = a1;
  v8 = 0;
  if ([v1 length])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"Season %d" value:&stru_28408B690 table:@"MLLocalizable"];
    v4 = [v3 UTF8String];

    v5 = fmtcheck(v4, "Season %d");
    sscanf([v1 UTF8String], v5, &v8);
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

float MLScaledVolumeAdjustmentFromITValue(int a1)
{
  result = (((a1 + 1000) / 2000.0) * 2.0) + 0.0;
  if (result < 0.0)
  {
    result = 0.0;
  }

  if (result > 2.0)
  {
    return 2.0;
  }

  return result;
}

uint64_t MLVolumeAdjustmentFromScaledValue(float a1)
{
  v1 = (a1 * 2000.0) * 0.5;
  v2 = -1000.0;
  v3 = v1 + -1000.0;
  if (v3 >= -1000.0)
  {
    v2 = v3;
    if (v3 > 1000.0)
    {
      v2 = 1000.0;
    }
  }

  return v2;
}

float MLScaledVolumeNormalizationFromITValue(unsigned int a1)
{
  v1 = 1.0;
  if ((a1 + 1) >= 2u)
  {
    v2 = sqrt(1000.0 / a1);
    v1 = v2;
  }

  if (v1 < 0.251188643)
  {
    v1 = 0.251188636;
  }

  if (v1 > 3.98107171)
  {
    v1 = 3.98107171;
  }

  return floor(log10(v1) * 20.0 + 0.5);
}

void MLChapterDataSetASCIIValue(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a2;
    [(__CFString *)v2 length];
    bzero(buffer, 0x800uLL);
    CString = CFStringGetCString(v2, buffer, 2047, 0x600u);

    if (CString)
    {
      ChapterData_SetProperty();
    }
  }
}

void MLChapterDataSetUTF16Value(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a2;
    [(__CFString *)v2 length];
    memset(v4, 0, sizeof(v4));
    CString = CFStringGetCString(v2, v4, 510, 0x10000100u);

    if (CString)
    {
      ChapterData_SetProperty();
    }
  }
}

uint64_t ML3AlbumArtistDatabaseImportDataSource::integerValueForKey(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 301989908)
  {
    (*(**a2 + 24))(&v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = __p;
    }

    v7 = ML3CPPBridgeString(&v13, 1);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    v11 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = *(*(a1 + 24) + 24);
    v9 = [v8 objectForKey:v7];
    v6 = [v9 ML3NameOrderValue];
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (*(*v4 + 32))(v4, a3);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v6;
}

void sub_22D48B29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3AlbumArtistDatabaseImportDataSource::~ML3AlbumArtistDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3BaseLocationIDFromMediaRelativePathInLibrary(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 resourcesManager];
  v6 = ML3BaseLocationIDFromMediaRelativePathInResourceProvider(v4, v5);

  if (!v6)
  {
    v6 = [v3 isHomeSharingLibrary];
  }

  return v6;
}

uint64_t ML3BaseLocationIDFromMediaRelativePathInResourceProvider(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v5 = 250;
    v6 = [v4 pathForBaseLocationPath:250];
    v7 = [v6 hasSuffix:v3];

    if ((v7 & 1) == 0)
    {
      v5 = 300;
      v8 = [v4 pathForBaseLocationPath:300];
      v9 = [v8 hasSuffix:v3];

      if ((v9 & 1) == 0)
      {
        v5 = 200;
        v10 = [v4 pathForBaseLocationPath:200];
        v11 = [v10 hasSuffix:v3];

        if ((v11 & 1) == 0)
        {
          v5 = 100;
          v12 = [v4 pathForBaseLocationPath:100];
          v13 = [v12 hasSuffix:v3];

          if ((v13 & 1) == 0)
          {
            v5 = 400;
            v14 = [v4 pathForBaseLocationPath:400];
            v15 = [v14 hasSuffix:v3];

            if ((v15 & 1) == 0)
            {
              v5 = 500;
              v16 = [v4 pathForBaseLocationPath:500];
              v17 = [v16 hasSuffix:v3];

              if ((v17 & 1) == 0)
              {
                v5 = 600;
                v18 = [v4 pathForBaseLocationPath:600];
                v19 = [v18 hasSuffix:v3];

                if ((v19 & 1) == 0)
                {
                  v20 = [v3 stringByDeletingLastPathComponent];
                  v21 = [v4 pathForResourceFileOrFolder:11];
                  if ([v21 hasSuffix:v20])
                  {
                    v22 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 2}];
                    v5 = ([v22 intValue] + 3840);
                  }

                  else
                  {
                    v5 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3ArtworkConfigurationMediaTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MLMediaTypeMusicQuiz"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeAudioBook"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"MLMediaTypePodcast"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeSong"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeVoiceMemo"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeITunesUAudio"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeDigitalBooklet"])
  {
    v2 = 64;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeVideoPodcast"])
  {
    v2 = 256;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeTVShow"])
  {
    v2 = 512;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeMusicVideo"])
  {
    v2 = 1024;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeMovie"])
  {
    v2 = 2048;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeVideoITunesU"])
  {
    v2 = 4096;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeHomeVideo"])
  {
    v2 = 0x2000;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeAny"])
  {
    v2 = 0xFFFFFFLL;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeAnyAudio"])
  {
    v2 = 255;
  }

  else if ([v1 isEqualToString:@"MLMediaTypeAnyVideo"])
  {
    v2 = 65280;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double _ML3ArtworkConfigurationCGSizeFromString(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 length];
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &buf[-v4];
  MEMORY[0x28223BE20](v3);
  v7 = &buf[-v6];
  [v1 getCharacters:v5 range:{0, v2}];
  if (v2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0.0;
    do
    {
      while (1)
      {
        if (v11 == 3)
        {
          goto LABEL_19;
        }

        v13 = *&v5[2 * v8];
        if (v11 != 2)
        {
          break;
        }

        if (v13 != 125)
        {
          v7[v9++] = v13;
LABEL_13:
          v11 = 2;
          goto LABEL_15;
        }

        v7[v9] = 0;
        atof(v7);
        v11 = 3;
        v8 = ++v10;
        if (v2 <= v10)
        {
          goto LABEL_19;
        }
      }

      if (v11 == 1)
      {
        if (v13 != 44)
        {
          v7[v9++] = v13;
          v11 = 1;
          goto LABEL_15;
        }

        v7[v9] = 0;
        v12 = atof(v7);
        v9 = 0;
        goto LABEL_13;
      }

      v11 = v13 == 123;
LABEL_15:
      v8 = ++v10;
    }

    while (v2 > v10);
  }

  v14 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "_ML3ArtworkConfigurationCGSizeFromString";
    v18 = 2114;
    v19 = v1;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "%s parse error: error parsing '%{public}@'", buf, 0x16u);
  }

  v12 = *MEMORY[0x277CBF3A8];
LABEL_19:

  return v12;
}

uint64_t __Block_byref_object_copy__11056(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *ML3ArtworkConfigurationStringForArtworkType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_278762E90[a1 - 1];
  }
}

__CFString *ML3ArtworkConfigurationStringForArtworkVariantType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_278762EB8[a1];
  }
}

__CFString *ML3ArtworkConfigurationStringForMediaType(int a1)
{
  if (a1 > 255)
  {
    v10 = @"MLMediaTypeAny";
    if (a1 != 0xFFFFFF)
    {
      v10 = 0;
    }

    if (a1 == 65280)
    {
      v11 = @"MLMediaTypeAnyVideo";
    }

    else
    {
      v11 = v10;
    }

    v12 = @"MLMediaTypeVideoITunesU";
    v13 = @"MLMediaTypeHomeVideo";
    if (a1 != 0x2000)
    {
      v13 = 0;
    }

    if (a1 != 4096)
    {
      v12 = v13;
    }

    if (a1 <= 65279)
    {
      v1 = v12;
    }

    else
    {
      v1 = v11;
    }

    v5 = @"MLMediaTypeMusicVideo";
    v14 = @"MLMediaTypeMovie";
    if (a1 != 2048)
    {
      v14 = 0;
    }

    if (a1 != 1024)
    {
      v5 = v14;
    }

    v15 = @"MLMediaTypeVideoPodcast";
    v16 = @"MLMediaTypeTVShow";
    if (a1 != 512)
    {
      v16 = 0;
    }

    if (a1 != 256)
    {
      v15 = v16;
    }

    if (a1 <= 1023)
    {
      v5 = v15;
    }

    v9 = a1 <= 4095;
  }

  else
  {
    v1 = @"MLMediaTypeDigitalBooklet";
    v2 = @"MLMediaTypeAnyAudio";
    if (a1 != 255)
    {
      v2 = 0;
    }

    if (a1 != 64)
    {
      v1 = v2;
    }

    v3 = @"MLMediaTypeVoiceMemo";
    v4 = @"MLMediaTypeITunesUAudio";
    if (a1 != 32)
    {
      v4 = 0;
    }

    if (a1 != 16)
    {
      v3 = v4;
    }

    if (a1 <= 63)
    {
      v1 = v3;
    }

    v5 = @"MLMediaTypePodcast";
    v6 = @"MLMediaTypeSong";
    if (a1 != 8)
    {
      v6 = 0;
    }

    if (a1 != 4)
    {
      v5 = v6;
    }

    v7 = @"MLMediaTypeMusicQuiz";
    v8 = @"MLMediaTypeAudioBook";
    if (a1 != 2)
    {
      v8 = 0;
    }

    if (a1 != 1)
    {
      v7 = v8;
    }

    if (a1 <= 3)
    {
      v5 = v7;
    }

    v9 = a1 <= 15;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t ML3ArtworkConfigurationArtworkTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ML3ArtworkTypeItem"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ML3ArtworkTypeScreenshot"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"ML3ArtworkTypeChapter"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"ML3ArtworkTypeArtistHero"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"ML3ArtworkTypePlaylist"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ML3ArtworkConfigurationArtworkVariantTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"ML3ArtworkVariantTypeDefault"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"ML3ArtworkVariantTypePortrait"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ML3ArtworkVariantTypeMotion"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"ML3ArtworkVariantTypePortraitMotion"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"ML3ArtworkVariantTypeMotionPreviewFrame"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t MIPSeriesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MIPPlaylistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v236) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v236 & 0x7F) << v5;
      if ((v236 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 224;
        goto LABEL_355;
      case 2u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 340) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v236 & 0x7F) << v104;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v11 = v105++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_418;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v106;
        }

LABEL_418:
        v232 = 72;
        goto LABEL_475;
      case 3u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 340) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v236 & 0x7F) << v116;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_424;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v118;
        }

LABEL_424:
        v231 = 324;
        goto LABEL_480;
      case 4u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 340) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v236 & 0x7F) << v110;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v11 = v111++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_420;
          }
        }

        v66 = (v112 != 0) & ~[a2 hasError];
LABEL_420:
        v233 = 334;
        goto LABEL_483;
      case 5u:
        v15 = objc_alloc_init(MIPSmartPlaylistInfo);
        objc_storeStrong((a1 + 288), v15);
        v236 = 0;
        v237 = 0;
        if (!PBReaderPlaceMark() || !MIPSmartPlaylistInfoReadFrom(v15, a2))
        {
          goto LABEL_486;
        }

        goto LABEL_344;
      case 6u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 340) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v236 & 0x7F) << v128;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v11 = v129++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_430;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v130;
        }

LABEL_430:
        v231 = 296;
        goto LABEL_480;
      case 7u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 340) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v236 & 0x7F) << v122;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_426;
          }
        }

        v66 = (v124 != 0) & ~[a2 hasError];
LABEL_426:
        v233 = 337;
        goto LABEL_483;
      case 8u:
        v15 = objc_alloc_init(MIPMultiverseIdentifier);
        v73 = 232;
        goto LABEL_235;
      case 9u:
        v15 = objc_alloc_init(MIPMultiverseIdentifier);
        v73 = 200;
LABEL_235:
        objc_storeStrong((a1 + v73), v15);
        goto LABEL_342;
      case 0xAu:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 340) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v236 & 0x7F) << v67;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_398;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v69;
        }

LABEL_398:
        v231 = 168;
        goto LABEL_480;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 120;
        goto LABEL_355;
      case 0xCu:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 340) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v236 & 0x7F) << v152;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v11 = v153++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_440;
          }
        }

        v66 = (v154 != 0) & ~[a2 hasError];
LABEL_440:
        v233 = 330;
        goto LABEL_483;
      case 0xDu:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 340) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v236 & 0x7F) << v86;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_406;
          }
        }

        v66 = (v88 != 0) & ~[a2 hasError];
LABEL_406:
        v233 = 328;
        goto LABEL_483;
      case 0xEu:
        v13 = PBReaderReadString();
        v14 = 184;
        goto LABEL_355;
      case 0xFu:
        v13 = PBReaderReadString();
        v14 = 176;
        goto LABEL_355;
      case 0x10u:
        v13 = PBReaderReadString();
        v14 = 192;
        goto LABEL_355;
      case 0x11u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 340) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v236 & 0x7F) << v134;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v11 = v135++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_432;
          }
        }

        v66 = (v136 != 0) & ~[a2 hasError];
LABEL_432:
        v233 = 333;
        goto LABEL_483;
      case 0x12u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 340) |= 8uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v236 & 0x7F) << v74;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_402;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v76;
        }

LABEL_402:
        v232 = 32;
        goto LABEL_475;
      case 0x13u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 340) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v236 & 0x7F) << v98;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_414;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v100;
        }

LABEL_414:
        v232 = 64;
        goto LABEL_475;
      case 0x14u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 340) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v236 & 0x7F) << v158;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v11 = v159++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_444;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v160;
        }

LABEL_444:
        v232 = 40;
        goto LABEL_475;
      case 0x15u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 340) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v236 & 0x7F) << v60;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_394;
          }
        }

        v66 = (v62 != 0) & ~[a2 hasError];
LABEL_394:
        v233 = 329;
        goto LABEL_483;
      case 0x16u:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_355;
      case 0x17u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_355;
      case 0x18u:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        *(a1 + 340) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v178 |= (v236 & 0x7F) << v176;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v11 = v177++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_454;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v178;
        }

LABEL_454:
        v231 = 216;
        goto LABEL_480;
      case 0x19u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 340) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v236 & 0x7F) << v92;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_410;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v94;
        }

LABEL_410:
        v231 = 264;
        goto LABEL_480;
      case 0x1Au:
        v194 = 0;
        v195 = 0;
        v196 = 0;
        *(a1 + 340) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v197 = [a2 position] + 1;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
          {
            v199 = [a2 data];
            [v199 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v196 |= (v236 & 0x7F) << v194;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v11 = v195++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_464;
          }
        }

        v66 = (v196 != 0) & ~[a2 hasError];
LABEL_464:
        v233 = 336;
        goto LABEL_483;
      case 0x1Bu:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 340) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v236 & 0x7F) << v80;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_404;
          }
        }

        v66 = (v82 != 0) & ~[a2 hasError];
LABEL_404:
        v233 = 332;
        goto LABEL_483;
      case 0x1Cu:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 340) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v236 & 0x7F) << v170;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_450;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v172;
        }

LABEL_450:
        v231 = 240;
        goto LABEL_480;
      case 0x1Du:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 340) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v236 & 0x7F) << v140;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v11 = v141++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_434;
          }
        }

        v66 = (v142 != 0) & ~[a2 hasError];
LABEL_434:
        v233 = 338;
        goto LABEL_483;
      case 0x1Eu:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 340) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            v211 = [a2 data];
            [v211 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v236 & 0x7F) << v206;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v11 = v207++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_470;
          }
        }

        v66 = (v208 != 0) & ~[a2 hasError];
LABEL_470:
        v233 = 339;
        goto LABEL_483;
      case 0x1Fu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 340) |= 1uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v236 & 0x7F) << v36;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_380;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v38;
        }

LABEL_380:
        v232 = 8;
        goto LABEL_475;
      case 0x20u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_355;
      case 0x21u:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_355;
      case 0x22u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_355;
      case 0x23u:
        v212 = 0;
        v213 = 0;
        v214 = 0;
        *(a1 + 340) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v214 |= (v236 & 0x7F) << v212;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v11 = v213++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_474;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v214;
        }

LABEL_474:
        v232 = 56;
        goto LABEL_475;
      case 0x24u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 340) |= 2uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v236 & 0x7F) << v42;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_384;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v44;
        }

LABEL_384:
        v232 = 16;
        goto LABEL_475;
      case 0x25u:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        *(a1 + 340) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v191 = [a2 position] + 1;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
          {
            v193 = [a2 data];
            [v193 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v190 |= (v236 & 0x7F) << v188;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v11 = v189++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_462;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v190;
        }

LABEL_462:
        v231 = 300;
        goto LABEL_480;
      case 0x26u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 340) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v236 & 0x7F) << v16;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_368;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_368:
        v231 = 308;
        goto LABEL_480;
      case 0x27u:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        *(a1 + 340) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v236 & 0x7F) << v218;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v11 = v219++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_479;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v220;
        }

LABEL_479:
        v231 = 304;
        goto LABEL_480;
      case 0x28u:
        v13 = PBReaderReadString();
        v14 = 312;
        goto LABEL_355;
      case 0x29u:
        v13 = PBReaderReadString();
        v14 = 248;
        goto LABEL_355;
      case 0x2Au:
        v13 = PBReaderReadString();
        v14 = 128;
        goto LABEL_355;
      case 0x2Bu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 340) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v236 & 0x7F) << v23;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_372;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_372:
        v231 = 280;
        goto LABEL_480;
      case 0x2Cu:
        v13 = PBReaderReadString();
        v14 = 272;
        goto LABEL_355;
      case 0x2Du:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 340) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v236 & 0x7F) << v54;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_392;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v56;
        }

LABEL_392:
        v231 = 244;
        goto LABEL_480;
      case 0x2Eu:
        v13 = PBReaderReadString();
        v14 = 256;
        goto LABEL_355;
      case 0x2Fu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 340) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v236 & 0x7F) << v29;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_376;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_376:
        v232 = 48;
        goto LABEL_475;
      case 0x30u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 340) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v236 & 0x7F) << v146;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v11 = v147++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_438;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v148;
        }

LABEL_438:
        v231 = 320;
        goto LABEL_480;
      case 0x31u:
        v13 = PBReaderReadString();
        v14 = 160;
        goto LABEL_355;
      case 0x32u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 340) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v236 & 0x7F) << v164;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v11 = v165++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_446;
          }
        }

        v66 = (v166 != 0) & ~[a2 hasError];
LABEL_446:
        v233 = 335;
        goto LABEL_483;
      case 0x33u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 340) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v236 & 0x7F) << v48;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_388;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v50;
        }

LABEL_388:
        v231 = 152;
        goto LABEL_480;
      case 0x34u:
        v13 = PBReaderReadString();
        v14 = 144;
LABEL_355:
        v224 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_484;
      case 0x35u:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 340) |= 4uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            v205 = [a2 data];
            [v205 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v202 |= (v236 & 0x7F) << v200;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v11 = v201++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v202;
        }

LABEL_468:
        v232 = 24;
LABEL_475:
        *(a1 + v232) = v35;
        goto LABEL_484;
      case 0x36u:
        v225 = 0;
        v226 = 0;
        v227 = 0;
        *(a1 + 340) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v228 = [a2 position] + 1;
          if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
          {
            v230 = [a2 data];
            [v230 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v227 |= (v236 & 0x7F) << v225;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v225 += 7;
          v11 = v226++ >= 9;
          if (v11)
          {
            LOBYTE(v66) = 0;
            goto LABEL_482;
          }
        }

        v66 = (v227 != 0) & ~[a2 hasError];
LABEL_482:
        v233 = 331;
LABEL_483:
        *(a1 + v233) = v66;
        goto LABEL_484;
      case 0x37u:
        v182 = 0;
        v183 = 0;
        v184 = 0;
        *(a1 + 340) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v236) = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:&v236 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v184 |= (v236 & 0x7F) << v182;
          if ((v236 & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v11 = v183++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_458;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v184;
        }

LABEL_458:
        v231 = 156;
LABEL_480:
        *(a1 + v231) = v22;
        goto LABEL_484;
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
        goto LABEL_21;
      case 0x64u:
        v15 = objc_alloc_init(MIPMultiverseIdentifier);
        [a1 addChildIdentifiers:v15];
        goto LABEL_342;
      default:
        if ((v12 >> 3) != 200)
        {
LABEL_21:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_484;
        }

        v15 = objc_alloc_init(MIPMultiverseIdentifier);
        [a1 addItems:v15];
LABEL_342:
        v236 = 0;
        v237 = 0;
        if (PBReaderPlaceMark() && MIPMultiverseIdentifierReadFrom(v15, a2))
        {
LABEL_344:
          PBReaderRecallMark();

LABEL_484:
          v234 = [a2 position];
          if (v234 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_486:

        return 0;
    }
  }
}

uint64_t ML3MigrationMigrateLibraryToCurrentVersion(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [ML3MusicLibrary userVersionUsingConnection:v6];
  if (v7 == 2310000 || ![v5 isHomeSharingLibrary])
  {
    v11 = [[ML3MigrationDirectives alloc] initWithOriginalUserVersion:v7];
    __exceptionsEnabled = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__11901;
    v38 = __Block_byref_object_dispose__11902;
    v39 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __ML3MigrationMigrateLibraryToCurrentVersion_block_invoke;
    v24[3] = &unk_278763190;
    v28 = &v31;
    v25 = v6;
    v8 = v11;
    v30 = 2310000;
    v26 = v8;
    p_buf = &buf;
    v27 = v5;
    v12 = [v25 performTransactionWithBlock:v24];
    if (MSVDeviceOSIsInternalInstall() && ([MEMORY[0x277CBEBD0] standardUserDefaults], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKey:", @"MLTestHookFailMigration"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v13, v15))
    {
      v16 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "[Migration] Test hook is set to fail migration.", v23, 2u);
      }

      v17 = a3 != 0;
      if (a3)
      {
        v18 = *(*(&buf + 1) + 40);
        if (v18)
        {
          v12 = 0;
LABEL_15:
          v19 = v18;
LABEL_24:
          *a3 = v19;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v17 = a3 != 0;
      if (a3)
      {
        v18 = *(*(&buf + 1) + 40);
        if (v18)
        {
          goto LABEL_15;
        }
      }

      if (v12)
      {
        v12 = 1;
LABEL_25:
        __exceptionsEnabled = 1;
        if (MSVDeviceSupportsSideLoadedMediaContent())
        {
          v10 = *(v32 + 24);
        }

        else
        {
          v10 = v32[3] & v12;
        }

        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(&v31, 8);
        goto LABEL_29;
      }
    }

    v20 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_DEFAULT, "[Migration] Failed to commit transaction.", v23, 2u);
    }

    v21 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_FAULT, "Failed to commit transaction during migration", v23, 2u);
    }

    if (!v17)
    {
      v12 = 0;
      goto LABEL_25;
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ML3DatabaseErrorDomain" code:-1 userInfo:0];
    v12 = 0;
    goto LABEL_24;
  }

  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 databasePath];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[Migration] HomeSharing library at %{public}@ has old schema", &buf, 0xCu);
  }

  v10 = 0;
LABEL_29:

  return v10 & 1;
}

void sub_22D498128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11901(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __ML3MigrationMigrateLibraryToCurrentVersion_block_invoke(uint64_t a1)
{
  v1 = a1;
  v97 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(*(a1 + 64) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v8 = *(a1 + 32);
  v9 = v2;
  if ([v9 currentUserVersion] == v3)
  {
    v10 = 1;
  }

  else
  {
    v77 = v6;
    while (1)
    {
      v11 = ML3MigrationFunctionForLibraryVersion([v9 currentUserVersion]);
      if (!v11)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"No migration path exists to upgrade from (%d) to system version (%d)", objc_msgSend(v9, "currentUserVersion"), v3];
        v20 = 20;
        goto LABEL_12;
      }

      v12 = v11;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v14 = v13;
      LOBYTE(v12) = v12(v8, v9);
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      if ((v12 & 1) == 0)
      {
        break;
      }

      v16 = v15;
      v17 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v9 currentUserVersion];
        *buf = 67109376;
        *v96 = v18;
        *&v96[4] = 2048;
        *&v96[6] = v16 - v14;
        _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_DEFAULT, "[Migration] Database migration to user version %d took %.2fs", buf, 0x12u);
      }

      if ([v9 currentUserVersion] == v3)
      {
        v10 = 1;
        goto LABEL_15;
      }
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to upgrade from version %d.", objc_msgSend(v9, "currentUserVersion")];
    v20 = 30;
LABEL_12:
    v6 = _ML3MigrationCreateMigrationError(v20, v19);

    if (v6)
    {
      v21 = v6;

      v10 = 0;
    }

    else
    {
      v10 = 0;
      v6 = v77;
    }
  }

LABEL_15:

  objc_storeStrong(v5, v6);
  *(*(*(v1 + 56) + 8) + 24) = v10;
  if ((*(*(*(v1 + 56) + 8) + 24) & 1) == 0)
  {
    v34 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(*(*(v1 + 64) + 8) + 40);
      *buf = 138543362;
      *v96 = v35;
      _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_DEFAULT, "[Migration] Migration step failed with error: %{public}@", buf, 0xCu);
    }

    goto LABEL_111;
  }

  v23 = *(v1 + 40);
  v22 = *(v1 + 48);
  v24 = *(v1 + 32);
  v25 = v22;
  v26 = v23;
  if ([v26 needsToReloadContainerMediaTypes])
  {
    [ML3Container populateMediaTypesOfStaticContainersInLibrary:v25];
  }

  if ([v26 needsToReloadStoreBookmarkMetadataIdentifiers])
  {
    [ML3Track updateAllBookmarkableStoreBookmarkMetadataIdentifiersOnConnection:v24];
  }

  if ([v26 needsToRemoveLocationsForItemsMissingAssets] && (ML3MigrationRemoveLocationsForItemsMissingAssets(v24) & 1) == 0)
  {
    v36 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_66;
    }

    *buf = 0;
    v37 = "[Migration] Failed to remove locations missing assets.";
    goto LABEL_41;
  }

  if ([v26 needsToUpdateSortMap] && (!objc_msgSend(v25, "inTransactionUpdateSortMapOnConnection:forceUpdateOriginals:", v24, objc_msgSend(v26, "forceUpdateOriginals")) || (objc_msgSend(v25, "inTransactionUpdateSearchMapOnConnection:", v24) & 1) == 0))
  {
    v36 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_66;
    }

    *buf = 0;
    v37 = "[Migration] Failed to update sort map.";
LABEL_41:
    v38 = buf;
LABEL_65:
    _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, v37, v38, 2u);
    goto LABEL_66;
  }

  if ([v26 needsToReloadCollectionRepresentativeItems])
  {
    *&block = objc_opt_class();
    *(&block + 1) = objc_opt_class();
    v92 = objc_opt_class();
    v93 = objc_opt_class();
    v94 = objc_opt_class();
    [MEMORY[0x277CBEA60] arrayWithObjects:&block count:5];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v27 = v85 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v82 objects:buf count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v83;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v83 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v82 + 1) + 8 * i);
          if (([v32 canonicalizeCollectionRepresentativeItemsInLibrary:v25 usingConnection:v24] & 1) == 0)
          {
            v39 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v87) = 138543362;
              *(&v87 + 4) = v32;
              _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_DEFAULT, "[Migration] Failed to canonicalize collection representative items for class: %{public}@", &v87, 0xCu);
            }

            v33 = 0;
            goto LABEL_46;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v82 objects:buf count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v33 = 1;
LABEL_46:
  }

  else
  {
    v33 = 1;
  }

  if ([v26 needsToRecreateIndexes])
  {
    v40 = v24;
    v41 = +[ML3MusicLibrary indexSchemaSQL];
    v42 = [v41 allObjects];
    v43 = ML3MigrationExecuteSQLArray(v40, v42);

    if ((v43 & 1) == 0)
    {
      v36 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_66;
      }

      LOWORD(v87) = 0;
      v37 = "[Migration] Failed to create indexes.";
LABEL_64:
      v38 = &v87;
      goto LABEL_65;
    }

    v33 = 1;
    [v26 setNeedsAnalyze:1];
  }

  if (![v26 needsToRecreateTriggers])
  {
    goto LABEL_53;
  }

  v44 = v24;
  v45 = +[ML3MusicLibrary allTriggersSQL];
  v46 = ML3MigrationExecuteSQLArray(v44, v45);

  if ((v46 & 1) == 0)
  {
    v36 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_66;
    }

    LOWORD(v87) = 0;
    v37 = "[Migration] Failed to create triggers.";
    goto LABEL_64;
  }

  v33 = 1;
  [v26 setNeedsAnalyze:1];
LABEL_53:
  if (![v26 needsAnalyze])
  {
    goto LABEL_56;
  }

  if (([v24 executeUpdate:@"ANALYZE"] & 1) == 0)
  {
    v36 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v87) = 0;
      v37 = "[Migration] Failed to execute SQLite ANALYZE.";
      goto LABEL_64;
    }

LABEL_66:

    v33 = 0;
    goto LABEL_67;
  }

  v33 = 1;
LABEL_56:
  if ([v26 needsToAutogenerateArtworkVariants])
  {
    [v25 autogenerateSupportedSizesForAllOriginalArtworkWithConnection:v24 completionHandler:&__block_literal_global_11921];
  }

LABEL_67:

  *(*(*(v1 + 56) + 8) + 24) = v33;
  if ((*(*(*(v1 + 56) + 8) + 24) & 1) == 0)
  {
    v69 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v69, OS_LOG_TYPE_DEFAULT, "[Migration] Failed to execute directives after migration.", buf, 2u);
    }

    v70 = 50;
    goto LABEL_110;
  }

  v48 = *(v1 + 40);
  v47 = *(v1 + 48);
  v79 = v1;
  v49 = *(v1 + 32);
  v80 = v47;
  v78 = v48;
  v86 = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v50 = +[ML3MusicLibrary allTables];
  v51 = [v50 countByEnumeratingWithState:&v82 objects:buf count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v83;
    while (2)
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v83 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v82 + 1) + 8 * j);
        if (([v55 isEqualToString:@"sort_map"] & 1) == 0)
        {
          v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(name) FROM sqlite_master WHERE type='table' AND name = '%@'", v55];;
          v57 = [v49 executeQuery:v56];
          v58 = [v57 int64ValueForFirstRowAndColumn];

          if (!v58)
          {
            v71 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(block) = 138543362;
              *(&block + 4) = v55;
              _os_log_impl(&dword_22D2FA000, v71, OS_LOG_TYPE_DEFAULT, "[Migration] Sanity check failure: Database is missing table %{public}@", &block, 0xCu);
            }

            v68 = 0;
            v1 = v79;
            v61 = v80;
            v62 = v78;
            goto LABEL_104;
          }
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v82 objects:buf count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  v59 = [v49 executeQuery:@"SELECT COUNT(name) FROM sqlite_master WHERE type='table' AND name = 'sort_map'"];;
  v60 = [v59 int64ValueForFirstRowAndColumn];

  v1 = v79;
  v61 = v80;
  v62 = v78;
  if (!v60)
  {
    v63 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_22D2FA000, v63, OS_LOG_TYPE_DEFAULT, "[Migration] Sanity check failure: Database is missing sort_map, rebuilding", &block, 2u);
    }

    [v80 updateSortMapOnConnection:v49 forceUpdateOriginals:1];
  }

  [v80 sanitizeDatabaseContentsUsingConnection:v49 removeOrphanedAssets:&v86 + 1];
  if ([v80 sanitizeSortMapContentsUsingConnection:v49 didSortMapEntries:&v86])
  {
    [v80 cleanupArtworkWithOptions:8 usingConnection:v49];
    if ([v78 needsToMarkArtworkPurgeable])
    {
      v64 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [v80 databasePath];
        LODWORD(block) = 138477827;
        *(&block + 4) = v65;
        _os_log_impl(&dword_22D2FA000, v64, OS_LOG_TYPE_DEFAULT, "[Migration] Updating purgeability for library at path %{private}@.", &block, 0xCu);
      }

      v66 = dispatch_get_global_queue(0, 0);
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 3221225472;
      v92 = ___ML3MigrationPerformPostMigration_block_invoke;
      v93 = &unk_278765FB8;
      v94 = v80;
      dispatch_async(v66, &block);
    }

    if ([v78 needsToAutogenerateArtworkVariants])
    {
      [v80 performColorAnalysisForArtworkWithConnection:v49 shouldRegenerateColorAnalysis:1];
    }

    if (HIBYTE(v86) == 1)
    {
      v67 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v87) = 0;
        _os_log_impl(&dword_22D2FA000, v67, OS_LOG_TYPE_DEFAULT, "[Migration] Sanity check: removing orphaned assets", &v87, 2u);
      }

      [v80 removeOrphanedTracksOnlyInCaches:1];
      ML3MigrationRemoveLocationsForItemsMissingAssets(v49);
    }

    if ((v86 & 1) != 0 || HIBYTE(v86) == 1)
    {
      *&v87 = MEMORY[0x277D85DD0];
      *(&v87 + 1) = 3221225472;
      v88 = ___ML3MigrationPerformPostMigration_block_invoke_26;
      v89 = &unk_278765158;
      v90 = v80;
      [v49 enqueueBlockForTransactionCommit:&v87];
    }

    v50 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *v81 = 0;
      _os_log_impl(&dword_22D2FA000, v50, OS_LOG_TYPE_DEFAULT, "[Migration] Migration sanity check complete", v81, 2u);
    }

    v68 = 1;
LABEL_104:
  }

  else
  {
    v68 = 0;
  }

  *(*(*(v1 + 56) + 8) + 24) = v68;
  v72 = *(*(*(v1 + 56) + 8) + 24);
  if ((v72 & 1) == 0)
  {
    v73 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v73, OS_LOG_TYPE_DEFAULT, "[Migration] Post-migration sanity check failed unrecoverably.", buf, 2u);
    }

    v70 = 40;
LABEL_110:
    v74 = _ML3MigrationCreateMigrationError(v70, 0);
    v75 = *(*(v1 + 64) + 8);
    v34 = *(v75 + 40);
    *(v75 + 40) = v74;
LABEL_111:

    v72 = *(*(*(v1 + 56) + 8) + 24);
  }

  return v72 & 1;
}

id _ML3MigrationCreateMigrationError(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x277CCA450];
    v9[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ML3MigrationErrorDomain" code:a1 userInfo:v5];

  return v6;
}

uint64_t ML3MigrationModifyTableWithResultingSchema(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v97 = *MEMORY[0x277D85DE8];
  v72 = a1;
  v9 = a2;
  v75 = a3;
  v77 = a4;
  v74 = a5;
  v10 = [v74 componentsSeparatedByString:{@", "}];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAB50] whitespaceCharacterSet];
  [v12 addCharactersInString:{@", (")}];
  v13 = [v12 invertedSet];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v88 objects:v96 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v89;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v89 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v88 + 1) + 8 * v18);
      v20 = [v19 rangeOfCharacterFromSet:v13 options:0];
      if (!v21)
      {
        break;
      }

      v22 = v20;
      v23 = [v19 rangeOfCharacterFromSet:v12 options:0 range:{v22, objc_msgSend(v19, "length") - v22}];
      if (!v24)
      {
        break;
      }

      v25 = [v19 substringWithRange:{v22, v24 + ~v22 + v23}];
      [v11 addObject:v25];

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v88 objects:v96 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v70 = v13;
  v71 = v12;

  v26 = [v11 count];
  v73 = v14;
  v76 = v9;
  if (v26 == [v14 count])
  {
    v27 = [v11 mutableCopy];
    v79 = [MEMORY[0x277CBEB38] dictionary];
    if (v77)
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v28 = v77;
      v29 = [v28 countByEnumeratingWithState:&v84 objects:v93 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v85;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v85 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v84 + 1) + 8 * i);
            if ([v33 shouldImportFromForeignTable])
            {
              v34 = [v33 joinColumnName];
              v35 = [v33 foreignTableName];
              [v79 setObject:v34 forKey:v35];

              v36 = [v33 columnName];
              v37 = [v11 indexOfObject:v36];

              if (v37 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v38 = os_log_create("com.apple.amp.medialibrary", "Default");
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = [v33 columnName];
                  *buf = 138543362;
                  v95 = v39;
                  _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_ERROR, "ERROR: Adding column not found in schema %{public}@", buf, 0xCu);
                }
              }

              else
              {
                v38 = [v33 foreignColumnName];
                [v27 replaceObjectAtIndex:v37 withObject:v38];
              }
            }

            else
            {
              v40 = [v33 columnName];
              [v11 removeObject:v40];

              v38 = [v33 columnName];
              [v27 removeObject:v38];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v84 objects:v93 count:16];
        }

        while (v30);
      }

      v9 = v76;
    }

    if (v75 && [v27 count])
    {
      v41 = 0;
      do
      {
        v42 = [v27 objectAtIndex:v41];
        v43 = [v75 objectForKey:v42];

        if (v43)
        {
          v44 = [v75 objectForKey:v42];
          [v27 replaceObjectAtIndex:v41 withObject:v44];
        }

        ++v41;
      }

      while ([v27 count]> v41);
    }

    v45 = [v11 componentsJoinedByString:{@", "}];
    v78 = [v27 componentsJoinedByString:@", "];
    v46 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([v79 count])
    {
      v69 = v45;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v47 = v79;
      v48 = [v47 countByEnumeratingWithState:&v80 objects:v92 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v81;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v81 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v80 + 1) + 8 * j);
            v53 = [v47 objectForKey:v52];
            [v46 appendFormat:@" JOIN %@ USING(%@)", v52, v53];
          }

          v49 = [v47 countByEnumeratingWithState:&v80 objects:v92 count:16];
        }

        while (v49);
      }

      v9 = v76;
      v45 = v69;
    }

    v54 = [v9 stringByAppendingString:@"_new"];
    v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE IF EXISTS %@", v54];
    v56 = v72;
    v57 = [v72 executeUpdate:v55];

    if (v57 && ([MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE %@ (%@)", v54, v74], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v72, "executeUpdate:", v58), v58, v59) && (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"INSERT INTO %@ (%@) SELECT %@ FROM %@%@", v54, v45, v78, v9, v46), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v72, "executeUpdate:", v60), v60, v61) && (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"DROP TABLE %@", v9), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v72, "executeUpdate:", v62), v62, v63))
    {
      v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"ALTER TABLE %@ RENAME TO %@", v54, v9];
      v65 = [v72 executeUpdate:v64];
    }

    else
    {
      v65 = 0;
    }

    v66 = v75;
  }

  else
  {
    v27 = os_log_create("com.apple.amp.medialibrary", "Default");
    v66 = v75;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v67 = [v14 objectAtIndex:{objc_msgSend(v11, "count")}];
      *buf = 138543362;
      v95 = v67;
      _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_ERROR, "ERROR: unable to find column name in definition %{public}@", buf, 0xCu);
    }

    v65 = 0;
    v56 = v72;
  }

  return v65;
}

uint64_t ML3MigrationExecuteSQLArray(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![v3 executeUpdate:{*(*(&v11 + 1) + 8 * v8), v11}])
        {
          v9 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

uint64_t ML3MigrationColumnExistsInTable(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info(%@)", v7];
  v9 = [v5 executeQuery:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __ML3MigrationColumnExistsInTable_block_invoke;
  v13[3] = &unk_278765180;
  v10 = v6;
  v14 = v10;
  v15 = &v16;
  [v9 enumerateRowsWithBlock:v13];
  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

void sub_22D499A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationColumnExistsInTable_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 stringForColumnName:@"name"];
  if ([v6 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t ML3MigrationRemoveLocationsForItemsMissingAssets(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__12006;
  v26 = __Block_byref_object_dispose__12007;
  v27 = 0;
  v2 = [v1 executeQuery:{@"SELECT item.item_pid, base_location.path, item_extra.location FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) JOIN item_store USING(item_pid) WHERE remote_location_id > 0 AND base_location_id > 0 OR LENGTH(item_extra.location) > 0"}];
  v3 = v2 != 0;
  if (v2)
  {
    v4 = +[ML3MusicLibrary mediaFolderPath];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__12006;
    v31 = __Block_byref_object_dispose__12007;
    v32 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __ML3MigrationRemoveLocationsForItemsMissingAssets_block_invoke;
    v16[3] = &unk_2787631D8;
    v17 = &unk_2840C8588;
    v6 = v4;
    v18 = v6;
    p_buf = &buf;
    v7 = v5;
    v19 = v7;
    v21 = &v22;
    [v2 enumerateRowsWithBlock:v16];

    _Block_object_dispose(&buf, 8);
  }

  v8 = [v23[5] count];
  if (v8)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v23[5];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "<MLERROR>: Locations for items are set and don't exist, or are missing critical information: %{public}@", &buf, 0xCu);
    }

    v11 = [&stru_28408B690 stringByPaddingToLength:2 * v8 - 1 withString:@" startingAtIndex:{?", 1}];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ IN (%@)", @"UPDATE item SET base_location_id=0 WHERE item.item_pid", v11];
    v13 = [v23[5] allObjects];
    v3 = [v1 executeUpdate:v12 withParameters:v13 error:0];
    if (v3)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ IN (%@)", @"UPDATE item_extra SET location='', file_size=0 WHERE item_extra.item_pid", v11];

      [v1 executeUpdate:v14 withParameters:v13 error:0];
      v12 = v14;
    }
  }

  _Block_object_dispose(&v22, 8);
  return v3;
}

void sub_22D499E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12006(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ML3MigrationRemoveLocationsForItemsMissingAssets_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v26 int64ForColumnIndex:0];
  v8 = [v26 stringForColumnIndex:1];
  v9 = [v26 stringForColumnIndex:2];
  if (v7)
  {
    v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];

    v12 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v13 = [v8 stringByTrimmingCharactersInSet:v12];

    if (![v11 length] || (objc_msgSend(*(a1 + 32), "containsObject:", v11) & 1) != 0 || !objc_msgSend(v13, "length") || (objc_msgSend(*(a1 + 32), "containsObject:", v13) & 1) != 0)
    {
      goto LABEL_12;
    }

    v14 = [*(a1 + 40) stringByAppendingPathComponent:v8];
    v15 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:v14];
    if (!v15)
    {
      v15 = [*(a1 + 48) contentsOfDirectoryAtPath:v14 error:0];
      if (v15)
      {
        v16 = *(*(*(a1 + 56) + 8) + 40);
        if (!v16)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v18 = *(*(a1 + 56) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;

          v16 = *(*(*(a1 + 56) + 8) + 40);
        }

        [v16 setObject:v15 forKey:v14];
      }
    }

    v25 = [v15 containsObject:v9];

    if ((v25 & 1) == 0)
    {
LABEL_12:
      v20 = *(*(*(a1 + 64) + 8) + 40);
      if (!v20)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v22 = *(*(a1 + 64) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        v20 = *(*(*(a1 + 64) + 8) + 40);
      }

      v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v7];
      [v20 addObject:v24];
    }
  }

  objc_autoreleasePoolPop(v6);
}

id ML3MigrationTemporaryPathFromPath(void *a1)
{
  v1 = a1;
  v2 = [v1 lastPathComponent];
  v3 = [v2 stringByAppendingString:@"_tmp"];

  v4 = [v1 stringByDeletingLastPathComponent];

  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

id ML3MigrationArtworkCacheDirectoryAsOf1160130()
{
  v0 = MSVMobileHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library/Caches/com.apple.mediaplayer/Artwork"];

  return v1;
}

id ML3MigrationPathFromArtworkCacheIDAsOf1160030(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataUsingEncoding:4];
  CC_SHA1([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x/%x%x%x%x%x%x%x%x_%d.%@", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], md[8], 268500717, @"jpg"];
  v3 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"iTunes_Control/iTunes/Artwork"];
  v4 = [v3 stringByAppendingPathComponent:v2];

  return v4;
}

id ML3MigrationRelativePathFromArtworkComponentsAsOf1160030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld%ld", a1, a2, a3];
  v4 = [v3 dataUsingEncoding:4];
  CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:45];
  [v5 appendFormat:@"%02x/", md[0]];
  for (i = 1; i != 20; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  [v5 appendString:@".jpeg"];
  v7 = [v5 copy];

  return v7;
}

id ML3MigrationRelativePathFromArtworkTokenAsOf1160130(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataUsingEncoding:4];
  CC_SHA1([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:45];
  [v2 appendFormat:@"%02x/", md[0]];
  for (i = 1; i != 20; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  [v2 appendString:@".jpeg"];
  v4 = [v2 copy];

  return v4;
}

id ML3MigrationArtworkCacheDirectoryBefore1160160()
{
  v0 = MSVMobileHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library/Caches/com.apple.mediaplayer/Artwork"];

  return v1;
}

void ML3MigrationUpdateAllBestArtworkTokens(void *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [v1 executeQuery:{@"SELECT entity_pid, entity_type, artwork_type FROM artwork_token GROUP BY entity_pid, entity_type, artwork_type"}];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __ML3MigrationUpdateAllBestArtworkTokens_block_invoke;
  v53[3] = &unk_278766118;
  v4 = v2;
  v54 = v4;
  [v3 enumerateRowsWithBlock:v53];
  v25 = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v5)
  {
    v24 = *v50;
    do
    {
      v6 = 0;
      v7 = v3;
      do
      {
        if (*v50 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v49 + 1) + 8 * v6);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v58 = 0x3032000000;
        v59 = __Block_byref_object_copy__12006;
        v60 = __Block_byref_object_dispose__12007;
        v61 = &stru_28408B690;
        v48[0] = 0;
        v48[1] = v48;
        v48[2] = 0x2020000000;
        v48[3] = 0;
        v42 = 0;
        v43 = &v42;
        v44 = 0x3032000000;
        v45 = __Block_byref_object_copy__12006;
        v46 = __Block_byref_object_dispose__12007;
        v47 = &stru_28408B690;
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        v3 = [v1 executeQuery:@"SELECT artwork_token.artwork_token withParameters:{artwork_token.artwork_source_type, (artwork.relative_path IS NOT NULL) AS has_artwork_on_disk FROM artwork_token LEFT OUTER JOIN artwork USING (artwork_token) WHERE artwork_token.entity_pid = ? AND artwork_token.entity_type = ? AND artwork_token.artwork_type = ? ORDER BY artwork_token.artwork_source_type ASC", v8}];

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __ML3MigrationUpdateAllBestArtworkTokens_block_invoke_2;
        v31[3] = &unk_278763200;
        v34 = v48;
        p_buf = &buf;
        v36 = &v38;
        v32 = v1;
        v33 = v8;
        v37 = &v42;
        [v3 enumerateRowsWithBlock:v31];
        v9 = [v8 objectAtIndexedSubscript:0];
        v56[0] = v9;
        v10 = [v8 objectAtIndexedSubscript:1];
        v56[1] = v10;
        v11 = [v8 objectAtIndexedSubscript:2];
        v12 = *(*(&buf + 1) + 40);
        v56[2] = v11;
        v56[3] = v12;
        v56[4] = v43[5];
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:v39[3]];
        v56[5] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:6];
        [v25 addObject:v14];

        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v42, 8);

        _Block_object_dispose(v48, 8);
        _Block_object_dispose(&buf, 8);

        ++v6;
        v7 = v3;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v25;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v55 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v26 = 0;
        v20 = [v1 executeUpdate:@"INSERT OR REPLACE INTO best_artwork_token (entity_pid withParameters:entity_type error:{artwork_type, available_artwork_token, fetchable_artwork_token, fetchable_artwork_source_type) VALUES (?, ?, ?, ?, ?, ?)", v19, &v26}];
        v21 = v26;
        if ((v20 & 1) == 0)
        {
          v22 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v21;
            _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, "Failed to update best_artwork_token with error: %{public}@", &buf, 0xCu);
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v55 count:16];
    }

    while (v16);
  }
}

void sub_22D49AC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationUpdateAllBestArtworkTokens_block_invoke(uint64_t a1, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:{1, v4}];
  v8[1] = v5;
  v6 = [v3 objectAtIndexedSubscript:2];

  v8[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v2 addObject:v7];
}

void __ML3MigrationUpdateAllBestArtworkTokens_block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 stringForColumnIndex:0];
  v10 = [v7 intForColumnIndex:1];
  if ([v7 intForColumnIndex:2])
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_25;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
    *(*(*(a1 + 48) + 8) + 24) = v10;
    if (v10 != 300 && v10 != 200)
    {
      goto LABEL_25;
    }

LABEL_20:
    *a4 = 1;
    goto LABEL_25;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v25 = [*(a1 + 40) objectAtIndexedSubscript:1];
    v14 = [v25 intValue];
    v24 = [*(a1 + 40) objectAtIndexedSubscript:2];
    v15 = [v24 intValue];
    v16 = v12;
    v17 = v13;
    v18 = v17;
    if (v14 == 7 || v14 == 2)
    {
      v21 = v10 == 500;
LABEL_18:

      if (v21)
      {
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v9);
        *(*(*(a1 + 64) + 8) + 24) = v10;
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          goto LABEL_20;
        }
      }

      goto LABEL_25;
    }

    if (!v14)
    {
      if (v10 == 400)
      {
        if ((v15 - 1) <= 1)
        {
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 0;
          v32 = v17;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
          v23 = [v16 executeQuery:@"SELECT purchase_history_id FROM item_store WHERE item_pid = ?" withParameters:v22];

          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = ___ML3MigrationIsArtworkFetchable_block_invoke_2;
          v26[3] = &unk_2787653C8;
          v26[4] = &v28;
          [v23 enumerateRowsWithBlock:v26];
          v21 = v29[3] > 0;

          goto LABEL_23;
        }
      }

      else if (v10 == 200 && v15 == 1)
      {
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = 0;
        v33[0] = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
        v20 = [v16 executeQuery:@"SELECT store_saga_id FROM item_store WHERE item_pid = ?" withParameters:v19];

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = ___ML3MigrationIsArtworkFetchable_block_invoke;
        v27[3] = &unk_2787653C8;
        v27[4] = &v28;
        [v20 enumerateRowsWithBlock:v27];
        v21 = v29[3] > 0;

LABEL_23:
        _Block_object_dispose(&v28, 8);
        goto LABEL_18;
      }
    }
  }

LABEL_25:
}

void sub_22D49B184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ML3MigrationRemoveNonLibraryItemsFromContainers(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [v1 executeQuery:@"SELECT container_pid FROM container JOIN container_items USING (container_pid) WHERE distinguished_kind = 0 AND smart_criteria IS NULL AND is_hidden = 0 AND LENGTH(item_pid_data) > 0 AND cloud_is_subscribed = 0 AND cloud_is_curator_playlist = 0"];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __ML3MigrationRemoveNonLibraryItemsFromContainers_block_invoke;
  v41[3] = &unk_278766118;
  v4 = v2;
  v42 = v4;
  [v3 enumerateRowsWithBlock:v41];
  if ([v4 count])
  {
    v26 = v3;
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [v1 executeQuery:@"SELECT item_pid FROM item WHERE in_my_library"];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __ML3MigrationRemoveNonLibraryItemsFromContainers_block_invoke_2;
    v39[3] = &unk_278766118;
    v7 = v5;
    v40 = v7;
    v24 = v6;
    [v6 enumerateRowsWithBlock:v39];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = v4;
    obj = v4;
    v8 = v1;
    v32 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v32)
    {
      v31 = *v36;
      v27 = v1;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v35 + 1) + 8 * i);
          v46 = v33;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
          v11 = [v8 executeQuery:@"SELECT item_pid_data FROM container_items WHERE container_pid = ?" withParameters:v10];

          v34 = v11;
          v12 = [v11 objectForFirstRowAndColumn];
          v13 = [v12 bytes];
          v14 = [v12 length];
          v15 = malloc_type_malloc(v14, 0x83BF1F8DuLL);
          v16 = [MEMORY[0x277CBEB18] array];
          if (v14 >= 8)
          {
            v17 = 0;
            v18 = v14 >> 3;
            v29 = v14 >> 3;
            do
            {
              v19 = [MEMORY[0x277CCABB0] numberWithLongLong:*v13];
              if ([v7 containsObject:v19])
              {
                v15[v17++] = *v13;
              }

              else
              {
                [v16 addObject:v19];
              }

              ++v13;
              --v18;
            }

            while (v18);
            v8 = v27;
            if (v17 != v29)
            {
              if (v17)
              {
                v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v15 length:8 * v17 freeWhenDone:0];
              }

              else
              {
                v20 = [MEMORY[0x277CBEB68] null];
              }

              v30 = v20;
              v45[0] = v33;
              v45[1] = v20;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
              [v27 executeUpdate:@"REPLACE INTO container_items (container_pid withParameters:item_pid_data) VALUES (? error:{?)", v21, 0}];

              v44[0] = v33;
              v44[1] = &unk_2840C9110;
              v44[2] = &unk_2840C9128;
              v44[3] = &unk_2840C9110;
              v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
              [v27 executeUpdate:@"REPLACE INTO entity_revision (entity_pid withParameters:deleted error:{class, revision_type) VALUES (?, ?, ?, ?)", v22, 0}];

              v43[0] = v33;
              v43[1] = &unk_2840C9110;
              v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
              [v27 executeUpdate:@"DELETE FROM entity_revision WHERE entity_pid = ? AND revision_type > ?" withParameters:v23 error:0];
            }
          }

          free(v15);
        }

        v32 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v32);
    }

    v1 = v8;
    v4 = v25;
    v3 = v26;
  }
}

void __ML3MigrationRemoveNonLibraryItemsFromContainers_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 numberForColumnIndex:0];
  [v2 addObject:v3];
}

void __ML3MigrationRemoveNonLibraryItemsFromContainers_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 numberForColumnIndex:0];
  [v2 addObject:v3];
}

uint64_t ML3MigrationClearLocationFromLibraryAsOf2100100(void *a1, int a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if ([v7 count])
  {
    if (a2)
    {
      v9 = @"UPDATE item SET base_location_id=0, date_downloaded=0, download_source_container_pid=0, keep_local=-1, keep_local_constraints=0, keep_local_status=0, keep_local_status_reason=0 WHERE item.item_pid";
    }

    else
    {
      v9 = @"UPDATE item SET base_location_id=0, date_downloaded=0, download_source_container_pid=0 WHERE item.item_pid";
    }

    v10 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v11 = [v10 statementWithPrefix:v9 inParameterCount:{objc_msgSend(v7, "count")}];

    if ([v8 executeUpdate:v11 withParameters:v7 error:0])
    {
      v12 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v13 = [v12 statementWithPrefix:@"UPDATE item_extra SET location = '' WHERE item_extra.item_pid" inParameterCount:{objc_msgSend(v7, "count")}];

      if ([v8 executeUpdate:v13 withParameters:v7 error:0])
      {
        v14 = +[ML3DatabaseStatementRenderer defaultRenderer];
        v15 = [v14 statementWithPrefix:@"UPDATE item_store SET sync_id = 0 inParameterCount:{downloader_account_id = 0, family_account_id = 0, is_protected = 0, is_ota_purchased = 0 WHERE item_store.item_pid", objc_msgSend(v7, "count")}];

        if ([v8 executeUpdate:v15 withParameters:v7 error:0])
        {
          v16 = +[ML3DatabaseStatementRenderer defaultRenderer];
          v17 = [v16 statementWithPrefix:@"UPDATE item_video SET hls_asset_traits = 0 WHERE item_video.item_pid" inParameterCount:{objc_msgSend(v7, "count")}];

          v18 = [v8 executeUpdate:v17 withParameters:v7 error:0];
          if (v18)
          {
            ML3MigrationIncrementRevisionForRevisionTypeContentAsOf2100100(a4, v8, 0, v7);
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

uint64_t ML3MigrationIncrementRevisionForRevisionTypeContentAsOf2100100(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v55 = a2;
  v7 = a4;
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v10 = -1;
    v11 = 1;
    v48 = [&stru_28408B690 stringByPaddingToLength:500 * objc_msgSend(@" withString:(? startingAtIndex:{?, ?, ?)", "length") - 1, @", (?, ?, ?, ?)", 1}];
    v52 = [CFSTR(""REPLACE INTO entity_revision (entity_pid deleted];
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2000];
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v7;
    v14 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    v51 = v13;
    v49 = v7;
    if (v14)
    {
      v15 = v14;
      v47 = -1;
      context = v9;
      v16 = 0;
      v17 = 0;
      v18 = *v61;
      v19 = v50;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v60 + 1) + 8 * i);
          if ([v21 longLongValue])
          {
            [v12 addObject:v21];
            [v12 addObject:v19];
            [v12 addObject:v13];
            [v12 addObject:&unk_2840C9110];
            if ([v12 count] == 2000)
            {
              v59 = v16;
              v22 = [v55 executeUpdate:v52 withParameters:v12 error:&v59];
              v23 = v59;

              if ((v22 & 1) == 0)
              {
                v28 = os_log_create("com.apple.amp.medialibrary", "Default");
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v66 = v23;
                  _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEFAULT, "Failed to insert batch of persistent ids in entity_revision, error = %{public}@", buf, 0xCu);
                }

                v11 = 0;
                goto LABEL_24;
              }

              if ((v17 & 1) == 0)
              {
                v17 = 1;
              }

              [v12 removeAllObjects];
              v16 = v23;
              v13 = v51;
            }
          }

          else if (MSVDeviceOSIsInternalInstall())
          {
            v24 = [MEMORY[0x277CCA890] currentHandler];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL ML3MigrationIncrementRevisionForRevisionTypeContentAsOf2100100(NSInteger, ML3DatabaseConnection *__strong, ML3EntityDeletionType, NSArray *__strong)"}];
            [v24 handleFailureInFunction:v25 file:@"ML3MigrationUtilities.m" lineNumber:509 description:@"incrementRevisionForRevisionTypeContentWithConnection called with invalid pid"];

            v19 = v50;
          }
        }

        v15 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v11 = 1;
      v23 = v16;
LABEL_24:
      v7 = v49;
      v9 = context;
      v10 = v47;
    }

    else
    {
      v23 = 0;
      v17 = 0;
    }

    if ([v12 count])
    {
      v29 = [&stru_28408B690 stringByPaddingToLength:v10 + (objc_msgSend(v12 withString:"count") >> 2) * objc_msgSend(@" startingAtIndex:{(?, ?, ?, ?)", "length"), @", (?, ?, ?, ?)", 1}];
      v30 = [CFSTR(""REPLACE INTO entity_revision (entity_pid deleted];
      v58 = v23;
      v31 = [v55 executeUpdate:v30 withParameters:v12 error:&v58];
      v32 = v58;

      if (!v31)
      {
        v45 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v66 = v32;
          _os_log_impl(&dword_22D2FA000, v45, OS_LOG_TYPE_DEFAULT, "Failed to insert batch of persistent ids in entity_revision, error = %{public}@", buf, 0xCu);
        }

        goto LABEL_45;
      }

      v17 = 1;
      v23 = v32;
    }

    else if (!v11)
    {
LABEL_42:
      v29 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v66 = v23;
        _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "Failed to delete persistent ids in entity_revision, error = %{public}@", buf, 0xCu);
      }

      v32 = v23;
LABEL_45:
      v44 = v48;

      v43 = 0;
      v23 = v32;
      goto LABEL_46;
    }

    LODWORD(v47) = v17;
    v33 = 0;
    do
    {
      v34 = v23;
      contexta = objc_autoreleasePoolPush();
      if (&v9[-v33] >= 0x1F4)
      {
        v35 = 500;
      }

      else
      {
        v35 = &v9[-v33];
      }

      v36 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v37 = [v36 statementWithPrefix:@"DELETE FROM entity_revision WHERE revision_type > ? AND entity_pid" inParameterCount:v35];

      [obj subarrayWithRange:{v33, v35}];
      v39 = v38 = v9;
      v64 = &unk_2840C9110;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      v41 = [v40 arrayByAddingObjectsFromArray:v39];

      v57 = v23;
      v42 = [v55 executeUpdate:v37 withParameters:v41 error:&v57];
      v23 = v57;

      v9 = v38;
      objc_autoreleasePoolPop(contexta);
      if (!v42)
      {
        break;
      }

      v33 += v35;
    }

    while (v33 < v38);
    if (v42)
    {
      v43 = 1;
      v44 = v48;
      v7 = v49;
      v17 = v47;
LABEL_46:

      v27 = v43 & v17;
      goto LABEL_47;
    }

    v7 = v49;
    v17 = v47;
    goto LABEL_42;
  }

  v26 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEBUG, "No entities for which to increment revision numbers.", buf, 2u);
  }

  v27 = 0;
LABEL_47:

  return v27;
}