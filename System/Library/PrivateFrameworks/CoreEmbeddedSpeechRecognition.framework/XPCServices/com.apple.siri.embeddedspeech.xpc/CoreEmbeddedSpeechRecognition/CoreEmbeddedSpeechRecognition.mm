void sub_100001D3C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ESSelfHelper logPersonalizationExperimentTriggersForExperimentIds:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s SELF: Failed trying to emit trigger logging due to error: %@", &v4, 0x16u);
    }
  }
}

void sub_1000032B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a2 == 1)
  {
    v30 = objc_begin_catch(a1);
    v31 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *(v29 - 144) = 136315394;
      v32 = v29 - 144;
      *(v32 + 4) = "[ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:]";
      *(v29 - 132) = 2112;
      *(v32 + 14) = a29;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s SELF: Encountered malformed string during SELF logging for interpolation weights in speech results from recognizer. String: %@", (v29 - 144), 0x16u);
      v31 = AFSiriLogContextSpeech;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *(v29 - 144) = 136315138;
      *(v29 - 140) = "[ESSelfHelper logRequestEndedOrFailedOrCancelledWithError:recognizerComponents:averageActiveTokensPerFrame:languageModelInterpolationWeights:signalToNoiseRatioInDecibels:recognitionDurationInSec:audioDurationMs:eagerUsed:utteranceDetectionEnabled:utteranceConcatenationEnabled:cpuRealTimeFactor:numLmeDataStreams:phoneticMatchDecoderName:pauseDurations:itnDurationInNs:isEmojiPersonalizationUsed:isEmojiDisambiguationUsed:isEmojiExpectedButNotRecognized:recognizedEmojis:totalITNDurationInNs:totalITNRuns:totalSecondaryPassDurationInNs:totalSecondaryPasses:cpuInstructionsInMillionsPerSecond:aneUsed:]";
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s SELF: Expected interpolation weight sets separated by delimiter ';' - starting with a set of weights delimited by ',' and ending the with start/end times delimited by ':'. Ex: '0.999646,0.000354:0:4280;0.947514,0.000158:0:3859'", (v29 - 144), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100002DD0);
  }

  _Unwind_Resume(a1);
}

id sub_100003AB4(int a1, void *a2, void *a3, id *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 tokenSausage];
  v43 = v5;
  v8 = [v5 interpretationIndices];
  v9 = v7;
  v48 = v6;
  v41 = v8;
  v10 = [NSOrderedSet orderedSetWithArray:v8];
  v11 = [v10 array];

  v12 = objc_alloc_init(NSMutableArray);
  if ([v11 count])
  {
    v13 = 0;
    do
    {
      v14 = objc_alloc_init(ASRSchemaASRUtterance);
      v15 = objc_alloc_init(NSArray);
      [v14 setInterpretationIndices:v15];

      [v12 addObject:v14];
      ++v13;
    }

    while (v13 < [v11 count]);
  }

  v47 = objc_alloc_init(NSMutableArray);
  v45 = objc_alloc_init(NSMutableArray);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v9;
  v16 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v46 = *v59;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v59 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v58 + 1) + 8 * i);
        v21 = objc_alloc_init(ASRSchemaASRPhrase);
        v22 = objc_alloc_init(NSMutableOrderedSet);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100003F64;
        v50[3] = &unk_100054BD0;
        v23 = v12;
        v56 = v18;
        v57 = a1;
        v51 = v23;
        v52 = v20;
        v53 = v48;
        v54 = v47;
        v24 = v22;
        v55 = v24;
        [v11 enumerateObjectsUsingBlock:v50];
        if ([v24 count])
        {
          [v24 array];
          v25 = v12;
          v27 = v26 = v11;
          v28 = [v27 copy];
          [v21 setInterpretations:v28];

          v11 = v26;
          v12 = v25;
          [v45 addObject:v21];
          ++v18;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v17);
  }

  if ([v12 count])
  {
    v29 = [NSOrderedSet orderedSetWithArray:v12];
    v30 = [v29 array];
    v31 = v30;
  }

  else
  {
    v30 = 0;
  }

  if (a1)
  {
    v32 = objc_alloc_init(ASRSchemaASRRecognitionResultTier1);
    [v32 setTokens:v47];
    v33 = [SISchemaUUID alloc];
    v34 = +[NSUUID UUID];
    v35 = [v33 initWithNSUUID:v34];
    [v32 setLinkId:v35];

    v36 = v32;
    *a4 = v32;
  }

  v37 = v30;
  v38 = objc_alloc_init(ASRSchemaASRRecognitionResult);
  [v38 setPhrases:v45];
  [v38 setUtterances:v37];

  if (a1)
  {
    v39 = [*a4 linkId];
    [v38 setLinkId:v39];
  }

  return v38;
}

void sub_100003F64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v48 = [*(a1 + 32) objectAtIndex:a3];
  v49 = v5;
  v6 = [v5 objectAtIndexedSubscript:*(a1 + 72)];
  v7 = [v6 unsignedIntegerValue];

  v55 = *(a1 + 80);
  v8 = [*(a1 + 40) objectAtIndexedSubscript:v7];
  v47 = a1;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = v8;
  v51 = v9;
  v50 = v10;
  v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v11;
  v56 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v56)
  {
    v53 = *v58;
    v54 = v12;
    do
    {
      for (i = 0; i != v56; i = i + 1)
      {
        if (*v58 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v57 + 1) + 8 * i);
        v15 = objc_alloc_init(ASRSchemaASRToken);
        [v14 start];
        v16 = [NSNumber numberWithDouble:?];
        [v16 doubleValue];
        v18 = [NSNumber numberWithDouble:v17 * 1000000000.0];
        [v15 setStartTimeInNs:{objc_msgSend(v18, "unsignedLongLongValue")}];

        [v14 end];
        v19 = [NSNumber numberWithDouble:?];
        [v19 doubleValue];
        v21 = [NSNumber numberWithDouble:v20 * 1000000000.0];
        [v15 setEndTimeInNs:{objc_msgSend(v21, "unsignedLongLongValue")}];

        [v15 setAppendSpaceAfter:{objc_msgSend(v14, "hasSpaceAfter")}];
        [v14 silenceStart];
        v22 = [NSNumber numberWithDouble:?];
        [v22 doubleValue];
        v24 = [NSNumber numberWithDouble:v23 * 1000000000.0];
        [v15 setSilenceStartTimeInNs:{objc_msgSend(v24, "unsignedLongLongValue")}];

        [v14 confidence];
        [v15 setConfidence:v25];
        if ([v14 appendedAutoPunctuation])
        {
          v26 = 1;
        }

        else
        {
          v26 = [v14 prependedAutoPunctuation];
        }

        [v15 setIsAutoPunctuation:{v26, v47}];
        [v15 setIsModifiedByAutoPunctuation:{objc_msgSend(v14, "isModifiedByAutoPunctuation")}];
        v27 = [v14 tokenName];
        v28 = [v27 length];
        v29 = [v14 tokenName];
        v30 = +[NSCharacterSet punctuationCharacterSet];
        v31 = [v29 rangeOfCharacterFromSet:v30];
        v33 = v32;

        if (!v31 && v28 == v33)
        {
          v34 = [v14 tokenName];
          [v15 setPunctuationText:v34];
        }

        v12 = v54;
        if (v55)
        {
          v35 = objc_alloc_init(ASRSchemaASRTokenTier1);
          v36 = [v14 tokenName];
          v37 = [v51 baseStringForEmojiString:v36];
          [v35 setText:v37];

          v38 = [v14 phoneSequence];
          [v35 setPhoneSequence:v38];

          v39 = [v14 ipaPhoneSequence];
          [v35 setIpaPhoneSequence:v39];

          if ([v50 containsObject:v35])
          {
            [v15 setLinkIndex:{objc_msgSend(v50, "indexOfObject:", v35)}];
          }

          else
          {
            [v15 setLinkIndex:{objc_msgSend(v50, "count")}];
            [v50 addObject:v35];
          }
        }

        [v54 addObject:v15];
      }

      v56 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v56);
  }

  if ([v12 count])
  {
    v40 = objc_alloc_init(ASRSchemaASRInterpretation);
    [v40 setTokens:v12];
    v41 = [*(v47 + 64) containsObject:v40];
    v42 = *(v47 + 64);
    if (v41)
    {
      v43 = [v42 indexOfObject:v40];
    }

    else
    {
      v43 = [v42 count];
      [*(v47 + 64) addObject:v40];
    }

    v44 = [v48 interpretationIndices];
    v45 = [NSNumber numberWithUnsignedInteger:v43];
    v46 = [v44 arrayByAddingObject:v45];
    [v48 setInterpretationIndices:v46];
  }
}

void sub_1000073EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007418(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007430(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 hasPrefix:@"LM"])
  {
    v3 = [v10 pathExtension];
    v4 = v3;
    if (v3)
    {
      v3 = [v3 integerValue];
    }

    v5 = *(*(a1 + 40) + 8);
    if (v3 >= *(v5 + 24))
    {
      *(v5 + 24) = v3;
      v6 = [*(a1 + 32) stringByAppendingPathComponent:v10];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  return _objc_release_x1();
}

void sub_1000075CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000075EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v7 = +[NSMutableArray array];
    v8 = [v4 elements];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isUIApplicationElement])
          {
            v14 = [v13 bundleIdentifier];
            if (v14)
            {
              [v7 addObject:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    os_unfair_lock_lock(v6 + 8);
    v15 = *&v6[2]._os_unfair_lock_opaque;
    *&v6[2]._os_unfair_lock_opaque = v7;

    os_unfair_lock_unlock(v6 + 8);
  }
}

uint64_t sub_1000085B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000085CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
    v10 = 136315650;
    v11 = "[ESSpeechProfileBuilderConnection finishAndSaveProfile:completion:]_block_invoke";
    v12 = 2048;
    v13 = [v6 count];
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Processing %lu CCSharedItems for categories: %@", &v10, 0x20u);
  }

  v8 = [[ESUserData alloc] initWithItems:v6 applicableSpeechCategories:v5];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
}

void sub_10000965C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009680(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v3 = v2;
      v4 = +[NSXPCListener _UUID];
      v6 = 136315650;
      v7 = "[ESSpeechProfileBuilderConnection initWithXPCConnection:]_block_invoke";
      v8 = 2112;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@ cancelling instance %@; Connection interrupted.", &v6, 0x20u);
    }

    [WeakRetained[16] logASRSpeechProfileUpdateFailedWithReason:2];
    [WeakRetained[14] invalidate];
    v5 = WeakRetained[14];
    WeakRetained[14] = 0;
  }
}

void sub_1000097A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v3 = v2;
      v4 = +[NSXPCListener _UUID];
      v6 = 136315650;
      v7 = "[ESSpeechProfileBuilderConnection initWithXPCConnection:]_block_invoke";
      v8 = 2112;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@ cancelling instance %@; Connection invalidated.", &v6, 0x20u);
    }

    [WeakRetained[14] invalidate];
    v5 = WeakRetained[14];
    WeakRetained[14] = 0;
  }
}

void sub_100009B64(id *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isEqualToString:@"\\contact-first"] && (v6 = a1 + 4, objc_msgSend(a1[4], "length")) || objc_msgSend(v9, "isEqualToString:", @"\\contact-last") && (v6 = a1 + 5, objc_msgSend(a1[5], "length")) || objc_msgSend(v9, "isEqualToString:", @"\\contact-middle") && (v6 = a1 + 6, objc_msgSend(a1[6], "length")))
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [[_EARWordPart alloc] initWithOrthography:v5 pronunciations:0 tagName:v9 frequency:objc_msgSend(a1[7] phoneticOrthography:{"frequency"), v7}];

  [a1[8] addObject:v8];
}

void sub_10000A09C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 lmeTemplate];
  [v7 addObject:v8];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [_EARWordPart alloc];
        v15 = +[NSSet set];
        v16 = [v5 lmeTag];
        v17 = [v14 initWithOrthography:v13 pronunciations:v15 tagName:v16 frequency:1];

        v18 = *(a1 + 40);
        v26 = v17;
        v19 = [NSArray arrayWithObjects:&v26 count:1];
        v20 = [v5 lmeTemplate];
        [v18 addWordWithParts:v19 templateName:v20];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }
}

void sub_10000B384(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = objc_alloc_init(PPNamedEntityQuery);
  if (v9 && [v9 count])
  {
    [v12 setMatchingSourceBundleIds:v9];
  }

  v13 = [v10 dateByAddingTimeInterval:-*(a1 + 40)];
  [v12 setFromDate:v13];

  v14 = [v11 dateByAddingTimeInterval:-*(a1 + 40)];
  [v12 setToDate:v14];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v15 = objc_opt_new();
  v23[6] = a5;
  v24 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000B93C;
  v23[3] = &unk_100054CC0;
  v23[4] = *(a1 + 32);
  v23[5] = v25;
  v16 = [v15 iterRankedNamedEntitiesWithQuery:v12 error:&v24 block:v23];
  v17 = v24;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if ((v18 & 1) == 0)
  {
    v19 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v17 description];
      v21 = v20;
      v22 = [v20 UTF8String];
      *buf = 136315394;
      v27 = "[ESContextualData fetchNamedEntitiesWithTimeInterval:]_block_invoke";
      v28 = 2080;
      v29 = v22;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s Error fetching Proactive named entities, error: %s", buf, 0x16u);
    }
  }

  _Block_object_dispose(v25, 8);
}

void sub_10000B5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B610(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = objc_alloc_init(_PSPredictionContext);
  [v11 setBundleID:v9];
  v12 = [v10 dateByAddingTimeInterval:-*(a1 + 48)];
  [v11 setSuggestionDate:v12];

  v13 = [*(a1 + 32) rankedGlobalSuggestionsFromContext:v11 contactsOnly:a4];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  if ([v13 count])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000B778;
    v14[3] = &unk_100054D10;
    v14[4] = *(a1 + 40);
    v14[5] = v15;
    v14[6] = a5;
    [v13 enumerateObjectsUsingBlock:v14];
  }

  _Block_object_dispose(v15, 8);
}

void sub_10000B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B778(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 recipients];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = EARContextualNamedEntitySourceFrameworkKey;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (v11)
        {
          v12 = [*(*(&v18 + 1) + 8 * v10) displayName];
          v13 = [v12 length];

          if (v13)
          {
            v14 = objc_alloc_init(NSMutableDictionary);
            [v14 setObject:&off_1000584F0 forKey:v9];
            v15 = *(a1[4] + 8);
            v16 = [v11 displayName];
            LODWORD(v15) = [v15 addNamedEntity2:v16 metadata:v14];

            if (v15)
            {
              ++*(*(a1[5] + 8) + 24);
            }

            if (*(*(a1[5] + 8) + 24) >= a1[6])
            {
              *a4 = 1;
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

void sub_10000B93C(void *a1, void *a2, _BYTE *a3)
{
  v16 = a2;
  v5 = [v16 item];
  v6 = [v5 name];

  if ([v6 length])
  {
    v7 = [v16 item];
    v8 = [v7 bestLanguage];
    v9 = [v8 length];

    if (v9)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      [v10 setObject:&off_1000584D8 forKey:EARContextualNamedEntitySourceFrameworkKey];
      [v16 score];
      v11 = [NSNumber numberWithDouble:?];
      [v10 setObject:v11 forKey:EARContextualNamedEntityScoreKey];

      v12 = [v16 item];
      v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 category]);
      [v10 setObject:v13 forKey:EARContextualNamedEntityCategoryKey];

      v14 = [v16 item];
      v15 = [v14 bestLanguage];
      [v10 setObject:v15 forKey:EARContextualNamedEntityLanguageKey];

      if ([*(a1[4] + 8) addNamedEntity2:v6 metadata:v10])
      {
        ++*(*(a1[5] + 8) + 24);
      }

      if (*(*(a1[5] + 8) + 24) >= a1[6])
      {
        *a3 = 1;
      }
    }
  }
}

void sub_10000BC5C()
{
  AFLogInitIfNeeded();
  if (qword_1000615E8 != -1)
  {

    dispatch_once(&qword_1000615E8, &stru_100054D58);
  }
}

void sub_10000BCAC(id a1)
{
  v1 = os_log_create("com.apple.siri", "Speech");
  v2 = qword_100061630;
  qword_100061630 = v1;

  v3 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "ESLogInitIfNeeded_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ::: embeddedspeech logging initialized.", &v4, 0xCu);
  }
}

void sub_10000C228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ESUserData _vocabularyLabelsForFieldType:directDonationConfig:](ESUserData, "_vocabularyLabelsForFieldType:directDonationConfig:", [v3 fieldType], *(*(a1 + 32) + 16));
  if (v4)
  {
    v5 = [v3 dataType];
    if (v5 == 1)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = [v3 repeatedStringValue];
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(a1 + 32) _processSingleVocabItem:objc_msgSend(v3 fieldContent:"fieldType") vocabularyLabel:*(*(&v14 + 1) + 8 * v13) vocabularyWords:{v4, *(a1 + 40)}];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }

    else if (!v5)
    {
      v6 = *(a1 + 32);
      v7 = [v3 fieldType];
      v8 = [v3 stringValue];
      [v6 _processSingleVocabItem:v7 fieldContent:v8 vocabularyLabel:v4 vocabularyWords:*(a1 + 40)];
    }
  }
}

void sub_10000C714(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([ESUserData _addVocabWord:a2 vocabularyLabel:v7 toVocabularyWords:*(a1 + 32)])
  {
    v8 = *(a1 + 40);
    v9 = *(v8 + 56);
    *(v8 + 56) = v9 - 1;
    if (v9 <= 1)
    {
      *a4 = 1;
    }
  }

  else
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v11 = v10;
      v12 = [v7 lmeTag];
      v13 = 136315394;
      v14 = "[ESUserData _performEntityExtractionAndAddToVocabWords:vocabularyWords:extractionVocabLabels:]_block_invoke";
      v15 = 2112;
      v16 = v12;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Entity Extraction: Failed to add extracted entity (type: %@) to vocabulary.", &v13, 0x16u);
    }
  }
}

void sub_10000CC70(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 fieldType] + 16467) <= 1u)
  {
    v3 = *(a1 + 32);
    v4 = [v6 stringValue];
    v5 = [v3 _applyEntityCleanupToNonAppEntity:v4];

    [*(a1 + 40) addObject:v5];
  }
}

uint64_t sub_10000CF04(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = [v3 stringValueTrimmingWhitespace];
  v4 = [v3 fieldType];

  if (v4 <= 19696)
  {
    if (v4 <= 19682)
    {
      switch(v4)
      {
        case 19679:
          v5 = *(a1 + 32);
          v6 = [*(a1 + 40) _applyEntityCleanupToNonAppEntity:v26];
          v7 = @"\\contact-first";
          break;
        case 19680:
          v5 = *(a1 + 32);
          v6 = [*(a1 + 40) _applyEntityCleanupToNonAppEntity:v26];
          v7 = @"\\contact-middle";
          break;
        case 19681:
          v5 = *(a1 + 32);
          v6 = [*(a1 + 40) _applyEntityCleanupToNonAppEntity:v26];
          v7 = @"\\contact-last";
          break;
        default:
          goto LABEL_36;
      }

      goto LABEL_35;
    }

    switch(v4)
    {
      case 19683:
        v5 = *(a1 + 32);
        v6 = [*(a1 + 40) _applyEntityCleanupToNonAppEntity:v26];
        v7 = @"\\contact-nickname";
        break;
      case 19693:
        v5 = *(a1 + 32);
        v6 = [*(a1 + 40) _applyEntityCleanupToNonAppEntity:v26];
        v7 = @"\\company-first";
        break;
      case 19696:
        v8 = *(a1 + 32);
        v9 = @"\\contact-first-phonetic";
        goto LABEL_32;
      default:
        goto LABEL_36;
    }

LABEL_35:
    [v5 setValue:v6 forKey:v7];

    goto LABEL_36;
  }

  if (v4 <= 61354)
  {
    switch(v4)
    {
      case 19697:
        v8 = *(a1 + 32);
        v9 = @"\\contact-middle-phonetic";
        break;
      case 19698:
        v8 = *(a1 + 32);
        v9 = @"\\contact-last-phonetic";
        break;
      case 19699:
        v8 = *(a1 + 32);
        v9 = @"\\company-first-phonetic";
        break;
      default:
        goto LABEL_36;
    }

LABEL_32:
    [v8 setValue:v26 forKey:v9];
    goto LABEL_36;
  }

  if (v4 != 61355)
  {
    if (v4 == 63372)
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) _applyEntityCleanupToNonAppEntity:v26];
      v7 = @"\\smsGroupName-first";
    }

    else
    {
      if (v4 != 61513)
      {
        goto LABEL_36;
      }

      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) _applyEntityCleanupToNonAppEntity:v26];
      v7 = @"\\useraccountidentity-first";
    }

    goto LABEL_35;
  }

  v10 = [*(a1 + 40) _applyEntityCleanupToNonAppEntity:v26];
  [*(a1 + 32) setValue:v10 forKey:@"\\personFullName-first"];
  v11 = objc_alloc_init(NSPersonNameComponentsFormatter);
  v12 = [v11 personNameComponentsFromString:v10];
  v13 = [v12 givenName];
  v14 = [v13 length];

  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = [v12 givenName];
    [v15 setValue:v16 forKey:@"\\appcontact-first"];
  }

  v17 = [v12 middleName];
  v18 = [v17 length];

  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = [v12 middleName];
    [v19 setValue:v20 forKey:@"\\appcontact-middle"];
  }

  v21 = [v12 familyName];
  v22 = [v21 length];

  if (v22)
  {
    v23 = *(a1 + 32);
    v24 = [v12 familyName];
    [v23 setValue:v24 forKey:@"\\appcontact-last"];
  }

LABEL_36:

  return _objc_release_x2();
}

void sub_10000E2EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = a2;
    v9 = [v5 count];
    v10 = [v8 lmeTemplate];
    v11 = [v8 lmeTag];

    v12 = 136315906;
    v13 = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]_block_invoke";
    v14 = 2048;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Enrolled %tu items for (%@, %@).", &v12, 0x2Au);
  }

  *(*(*(a1 + 32) + 8) + 24) += [v5 count];
}

void sub_100010508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100010520(uint64_t a1, void *a2)
{
  result = [a2 numComponents];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_1000106DC(uint64_t a1)
{
  v2 = +[CESRGeoLMRegionIDCache sharedInstance];
  v6 = [v2 purgeUnusedGeoLMRegionIdFromCacheForLanguage:*(a1 + 32)];

  if (v6)
  {
    v3 = [[SFEntitledAssetConfig alloc] initWithLanguage:*(a1 + 32) assetType:5];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 bundleIdentifier];
    [SFEntitledAssetManager unsubscribeFromAssetWithConfig:v3 regionId:v6 subscriberId:v5];
  }
}

void sub_10001097C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    objc_begin_catch(a1);
    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = "[ESAssetManager _geoLMCompatibleWithMainAsset:geoAssetConfig:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s GeoLM: Exception thrown while reading json configs", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1000108A8);
  }

  _Unwind_Resume(a1);
}

void sub_100010D18(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    objc_begin_catch(a1);
    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = "[ESAssetManager installedGeoLMRegionSpecificAssetForLanguage:regionId:mainAssetConfig:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s GeoLM: Exception thrown while reading geo-config json", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100010C04);
  }

  _Unwind_Resume(a1);
}

void sub_1000112D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    objc_begin_catch(a1);
    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = "[ESAssetManager validateHammerConfigFile:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Exception thrown while reading hammer config", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1000112A0);
  }

  _Unwind_Resume(a1);
}

void sub_100011754(id a1, NSString *a2, NSString *a3, BOOL *a4)
{
  v6 = a2;
  if (AFOfflineDictationStatusStringIsInstalled())
  {
    v4 = [[SFEntitledAssetConfig alloc] initWithLanguage:v6 assetType:3];
    v5 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
    [SFEntitledAssetManager subscribeToAssetWithConfig:v4 regionId:0 subscriberId:v5 expiration:0];
  }
}

void sub_1000118AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 bundleIdentifier];
  v8 = [SFEntitledAssetManager unsubscribeFromAssetsWithAssetType:v2 exceptLanguages:v3 subscriberId:v5];

  v6 = *(a1 + 48);
  if (v6 == 3)
  {
    v7 = +[CESRGeoLMRegionIDCache sharedInstance];
    [v7 purgeUserDefaultsGeoLMAssetsInfoDictForLanguages:v8];

    v6 = *(a1 + 48);
  }

  [*(a1 + 40) _invalidateInstallationStatusCacheForAssetType:v6];
}

void sub_100011D64(uint64_t a1)
{
  v2 = objc_alloc_init(UAFAssetUtilities);
  [v2 refreshUnderstandingOnDeviceAssetsAvailableAsync];
  if ([v2 understandingOnDeviceAssetsAvailable])
  {
    v5[0] = @"language";
    v5[1] = @"assetType";
    v3 = *(a1 + 40);
    v6[0] = *(a1 + 32);
    v6[1] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
    [CESRUtilities generateABCSnapshotForType:@"CoreSpeech" subType:@"assets_missing" context:v4];
  }
}

uint64_t sub_10001229C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000122B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ((!*(*(*(a1 + 40) + 8) + 40) || (*(a1 + 56) & 1) != 0 || *(a1 + 57) == 1) && [*(a1 + 32) isTrialAssetDeliveryEnabled])
  {
    v7 = objc_alloc_init(SFEntitledAssetManager);
    v8 = *(a1 + 57);
    v9 = *(a1 + 48);
    v14 = v7;
    if (v8 == 1)
    {
      v2 = +[NSBundle mainBundle];
      v3 = [v2 bundleIdentifier];
      [v14 detailedInstallationStatusForLanguagesWithAssetType:v9 subscriberId:v3];
    }

    else
    {
      [v7 installationStatusForLanguagesWithAssetType:v9];
    }
    v10 = ;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
    if (v8)
    {

      v10 = v2;
    }

    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = *(*(a1 + 32) + 16);
    v13 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }
}

void sub_1000124B0(id a1, NSString *a2, NSNumber *a3, BOOL *a4)
{
  v5 = a2;
  v6 = [(NSNumber *)a3 intValue];
  if (v6 != -1)
  {
    v7 = notify_cancel(v6);
    if (v7)
    {
      v8 = v7;
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315650;
        v11 = "[ESAssetManager dealloc]_block_invoke";
        v12 = 2112;
        v13 = v5;
        v14 = 1024;
        v15 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to cancel notification %@: %u", &v10, 0x1Cu);
      }
    }
  }
}

void sub_10001284C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012884(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateInstallationStatusCacheForAssetType:3];
}

void sub_1000129F0(id a1)
{
  qword_1000615F0 = objc_alloc_init(ESAssetManager);

  _objc_release_x1();
}

void sub_100013394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

void sub_1000133E4(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 unsignedLongLongValue];

    v6 = [v3 objectAtIndex:1];
    v7 = [v6 unsignedLongLongValue];

    if (*(a1[4] + 488))
    {
      v8 = os_signpost_id_generate(AFSiriLogContextSpeech);
      v9 = AFSiriLogContextSpeech;
      v10 = v9;
      if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v11 = AFSiriLogContextSpeech;
      }

      else
      {
        if (os_signpost_enabled(v9))
        {
          v13 = 134349056;
          v14 = v5;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ES: ITN Process", "%{public, signpost.description:begin_time}llu", &v13, 0xCu);
        }

        v11 = AFSiriLogContextSpeech;
        if (os_signpost_enabled(v11))
        {
          v13 = 134349056;
          v14 = v7;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v8, "ES: ITN Process", "%{public, signpost.description:end_time}llu", &v13, 0xCu);
        }
      }
    }

    [CESRUtilities hostTimeToSeconds:v7 - v5];
    *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + v12;
    ++*(*(a1[6] + 8) + 24);
  }
}

void sub_1000135D4(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 unsignedLongLongValue];

    v6 = [v3 objectAtIndex:1];
    v7 = [v6 unsignedLongLongValue];

    if (*(a1[4] + 488))
    {
      v8 = os_signpost_id_generate(AFSiriLogContextSpeech);
      v9 = AFSiriLogContextSpeech;
      v10 = v9;
      if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v11 = AFSiriLogContextSpeech;
      }

      else
      {
        if (os_signpost_enabled(v9))
        {
          v13 = 134349056;
          v14 = v5;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ES: Secondary Pass Process", "%{public, signpost.description:begin_time}llu", &v13, 0xCu);
        }

        v11 = AFSiriLogContextSpeech;
        if (os_signpost_enabled(v11))
        {
          v13 = 134349056;
          v14 = v7;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v8, "ES: Secondary Pass Process", "%{public, signpost.description:end_time}llu", &v13, 0xCu);
        }
      }
    }

    [CESRUtilities hostTimeToSeconds:v7 - v5];
    *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + v12;
    *(*(a1[6] + 8) + 24) = (2 * *(*(a1[6] + 8) + 24)) | 1;
  }
}

void sub_100015F1C(uint64_t a1)
{
  v8 = [*(*(a1 + 32) + 8) objectAtIndex:1];
  v2 = [v8 objectAtIndex:0];
  [v2 floatValue];
  v4 = v3;
  v5 = [*(*(a1 + 32) + 8) objectAtIndex:0];
  v6 = [v5 objectAtIndex:0];
  [v6 floatValue];
  *&qword_100061618 = (v4 - v7);
}

uint64_t sub_1000161B0(uint64_t a1)
{
  qword_100061600 = [[ESProfiler alloc] initWithESSelfHelper:0 signpostHelper:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_1000168CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 nBest];
  v6 = [v4 formattedRecognitionWithNBestList:v5];

  v7 = qword_100061620;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100016AE4;
  v10[3] = &unk_1000554A8;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_1000169A8(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 oneBest];
    v6 = [v5 valueForKey:@"tokenName"];
    v9 = 136315394;
    v10 = "[ESConnection speechRecognizer:didRecognizeRawEagerRecognitionCandidate:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s raw eager recognition candidate: %@", &v9, 0x16u);
  }

  v7 = [*(a1 + 40) _delegate];
  v8 = [CESRUtilities afRecognitionForEARSausage:*(a1 + 32) processedAudioDuration:*(*(a1 + 40) + 144)];
  [v7 speechServiceDidRecognizeRawEagerRecognitionCandidate:v8];
}

void sub_100016AE4(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 oneBest];
    v6 = [v5 valueForKey:@"tokenName"];
    v9 = 136315394;
    v10 = "[ESConnection speechRecognizer:didRecognizeRawEagerRecognitionCandidate:]_block_invoke_2";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #ASR on device eager formatted recognition candidate: %@", &v9, 0x16u);
  }

  v7 = [*(a1 + 40) _delegate];
  v8 = [CESRUtilities afRecognitionForEARSausage:*(a1 + 32) processedAudioDuration:*(*(a1 + 40) + 144)];
  [v7 speechServiceDidRecognizeRawEagerRecognitionCandidate:v8];
}

void sub_100016D5C(uint64_t a1)
{
  *(*(a1 + 32) + 144) = *(a1 + 48);
  v2 = [*(a1 + 32) _delegate];
  [v2 speechServiceDidProcessAudioDuration:*(a1 + 48)];

  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v6 = 136315394;
    v7 = "[ESConnection speechRecognizer:didProcessAudioDuration:]_block_invoke";
    v8 = 2048;
    v9 = v5;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s didProcessAudioDuration %f", &v6, 0x16u);
  }

  v4 = +[ESProfiler sharedProfiler];
  [v4 logTotalAudioProcessedOfDuration:*(a1 + 40) timeInTicks:*(a1 + 48)];
}

void sub_100016F34(uint64_t a1)
{
  v2 = +[ESProfiler sharedProfiler];
  v3 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = v3;
    [v4 statusForError:v5];
    v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 136315394;
    v126 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v127 = 2114;
    v128 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Recognition finished with status %{public}@", buf, 0x16u);
  }

  v8 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = +[NSProcessInfo processInfo];
    [v10 systemUptime];
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v13 - *(v11 + 168);
    v15 = *(v11 + 32);
    *buf = 136315906;
    v126 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v127 = 2048;
    v128 = v14;
    v129 = 2112;
    v130 = v15;
    v131 = 2112;
    v132 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Audio finish to recognizer finish = %lf sec, connection is %@, error %@", buf, 0x2Au);
  }

  v16 = +[NSProcessInfo processInfo];
  [v16 systemUptime];
  *(*(a1 + 32) + 248) = v17;

  *(*(a1 + 32) + 256) = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 32) + 328) = 0;
  +[CESRUtilities noteSuccessfulUse];
  +[ESConnection _scheduleCooldownTimer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if ([WeakRetained concatenateUtterances])
  {
    v19 = *(*(a1 + 32) + 40);

    if (!v19)
    {
      goto LABEL_14;
    }

    if ([*(a1 + 48) enableVoiceCommands] && (objc_msgSend(*(a1 + 32), "_delegate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, (v21 & 1) != 0))
    {
      v22 = [*(a1 + 32) _delegate];
      [v22 speechServiceDidRecognizePackage:*(*(a1 + 32) + 40) withMetadata:*(*(a1 + 32) + 48)];

      v23 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v24 = *(*(a1 + 32) + 48);
        *buf = 136315394;
        v126 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
        v127 = 2112;
        v128 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s AFSpeechInfo Package %@", buf, 0x16u);
      }
    }

    else
    {
      v25 = [*(a1 + 32) _delegate];
      [v25 speechServiceDidRecognizePackage:*(*(a1 + 32) + 40)];
    }

    v26 = *(a1 + 32);
    v27 = *(v26 + 48);
    *(v26 + 48) = 0;

    v28 = *(a1 + 32);
    WeakRetained = *(v28 + 40);
    *(v28 + 40) = 0;
  }

LABEL_14:
  v123 = v2;
  v29 = [*(a1 + 48) recognitionUtterenceStatistics];
  v30 = *(*(a1 + 32) + 232);
  if (!v30)
  {
    v31 = objc_alloc_init(NSMutableDictionary);
    v32 = *(a1 + 32);
    v33 = *(v32 + 232);
    *(v32 + 232) = v31;

    v30 = *(*(a1 + 32) + 232);
  }

  v34 = [*(a1 + 48) recognitionStatistics];
  [v30 addEntriesFromDictionary:v34];

  v35 = [v29 valueForKey:@"recognizer-components"];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = &stru_100055AC8;
  }

  [*(*(a1 + 32) + 232) setObject:v37 forKeyedSubscript:@"recognizer-components"];

  v38 = [v29 valueForKey:@"lm_interp_weights"];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = &stru_100055AC8;
  }

  [*(*(a1 + 32) + 232) setObject:v40 forKeyedSubscript:@"lm_interp_weights"];

  v41 = [NSNumber numberWithDouble:*(*(a1 + 32) + 128)];
  [*(*(a1 + 32) + 232) setObject:v41 forKeyedSubscript:@"audioDurationMs"];

  v42 = [*(a1 + 48) recognitionStatistics];
  v43 = *(a1 + 32);
  v45 = *(v43 + 240);
  v44 = *(v43 + 248);
  if (v45 <= v44)
  {
    v47 = (v44 - v45) * 1000.0;
  }

  else
  {
    v46 = AFSiriLogContextSpeech;
    v47 = -1.0;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v48 = v46;
      [NSNumber numberWithDouble:v45];
      v49 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v50 = [NSNumber numberWithDouble:*(*(a1 + 32) + 248)];
      *buf = 136315650;
      v126 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
      v127 = 2112;
      v128 = v49;
      v129 = 2112;
      v130 = v50;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s _recognitionBeginTime (%@) is greater than _recognitionEndTime (%@)", buf, 0x20u);
    }
  }

  v51 = [NSNumber numberWithDouble:v47];
  [*(*(a1 + 32) + 232) setObject:v51 forKeyedSubscript:@"recognitionDurationMs"];

  v52 = *(a1 + 32);
  if (*(v52 + 112))
  {
    [*(v52 + 112) setRecognitionEndTime:*(v52 + 256)];
    v52 = *(a1 + 32);
  }

  v53 = [v52 _delegate];
  [v53 speechServiceDidFinishRecognitionWithStatistics:*(*(a1 + 32) + 232) error:*(a1 + 40)];

  v54 = [*(a1 + 48) recognitionMetrics];
  v55 = [v54 pauseDurations];

  [v55 enumerateObjectsUsingBlock:&stru_1000555F0];
  if (v55)
  {
    v56 = [v55 valueForKeyPath:@"@sum.self"];
  }

  else
  {
    v56 = 0;
  }

  v115 = v56;
  [v56 doubleValue];
  v58 = *(*(a1 + 32) + 128);
  v122 = v55;
  if (v58 == 0.0)
  {
    v121 = 0;
  }

  else
  {
    v59 = v58 + v57 * -1000.0;
    v60 = [v42 objectForKey:EARRecognitionStatisticRecogCpuTime];
    [v60 doubleValue];
    v121 = [NSNumber numberWithDouble:v61 / v59];
  }

  v62 = [*(a1 + 48) recognitionMetrics];
  v113 = *(a1 + 40);
  v120 = [v29 valueForKey:@"recognizer-components"];
  v119 = [v42 valueForKey:@"AverageActiveTokensPerFrame"];
  v111 = [v29 valueForKey:@"lm_interp_weights"];
  v110 = [v42 valueForKey:@"SNR"];
  v108 = [NSNumber numberWithDouble:*(*(a1 + 32) + 248) - *(*(a1 + 32) + 240)];
  v118 = [NSNumber numberWithDouble:*(*(a1 + 32) + 128)];
  v117 = [v42 valueForKey:@"EagerUsed"];
  v112 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v107 = [v112 detectUtterances];
  v109 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v106 = [v109 concatenateUtterances];
  v105 = [v42 valueForKey:@"numLmeDataStreams"];
  v104 = [v29 valueForKey:@"PM-decoder"];
  v103 = [v62 itnDurationInNs];
  v102 = [v62 isEmojiPersonalizationUsed];
  v63 = [v62 isEmojiDisambiguationUsed];
  v64 = [v62 isEmojiExpectedButNotRecognized];
  v101 = [v62 recognizedEmojis];
  v114 = v62;
  v100 = [v62 allItnRunIntervals];
  v116 = v29;
  v99 = [v29 valueForKey:@"ANEUsed"];
  v65 = qword_100061660;
  v66 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v67 = [v66 modelInfo];
  v68 = [v67 version];
  BYTE2(v98) = v64;
  BYTE1(v98) = v63;
  LOBYTE(v98) = v102;
  BYTE1(v97) = v106;
  LOBYTE(v97) = v107;
  [v123 logRequestEndedOrFailedOrCancelledWithError:v113 recognizerComponents:v120 averageActiveTokensPerFrame:v119 languageModelInterpolationWeights:v111 signalToNoiseRatioInDecibels:v110 recognitionDurationInSec:v108 audioDurationMs:v118 eagerUsed:v117 utteranceDetectionEnabled:v97 utteranceConcatenationEnabled:v121 cpuRealTimeFactor:v105 numLmeDataStreams:v104 phoneticMatchDecoderName:v122 pauseDurations:v103 itnDurationInNs:v98 isEmojiPersonalizationUsed:v101 isEmojiDisambiguationUsed:v100 isEmojiExpectedButNotRecognized:&__NSArray0__struct recognizedEmojis:@"didFinishRecognitionWithError" allItnRunIntervals:v99 allSecondaryPassIntervals:v65 powerLogEvent:v68 aneUsed:*(*(a1 + 32) + 368) language:? modelVersion:? applicationName:?];

  if (([*(*(a1 + 32) + 304) isEqualToString:CoreEmbeddedSpeechRecognizerTaskBeto] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 304), "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskBetoDictation) & 1) == 0)
  {
    v69 = [v116 valueForKey:@"PM-input"];
    v70 = [v116 valueForKey:@"PM-output"];
    [v123 logIntermediateUtteranceInfoTier1WithPmInput:v69 pmOutput:v70];
  }

  [v123 logFirstAudioPacketRecordedWithTimeInTicks:*(*(a1 + 32) + 184)];
  [v123 logAudioPacketArrivalStartedOrChangedWithTimeInTicks:*(*(a1 + 32) + 192)];
  [v123 logAudioPacketArrivalEndedWithTimeInTicks:*(*(a1 + 32) + 200)];
  [v123 logPendingANEModelInitializationContextEvents:qword_1000616F8];
  v71 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v71 cancelRecognition];

  v72 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v73 = qword_100061638;

  if (v72 == v73)
  {
    v74 = qword_100061638;
    qword_100061638 = 0;
  }

  objc_storeWeak((*(a1 + 32) + 16), 0);
  [v123 setESSelfHelper:0];
  objc_storeWeak((*(a1 + 32) + 8), 0);
  v75 = *(a1 + 40);
  if (!v75 && qword_1000616B0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017CB4;
    block[3] = &unk_100055618;
    block[4] = *(a1 + 32);
    v76 = dispatch_block_create(0, block);
    v77 = qword_1000616C0;
    qword_1000616C0 = v76;

    v78 = dispatch_time(0, 30000000000);
    dispatch_after(v78, qword_100061620, qword_1000616C0);
    v79 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v126 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "%s Submitted delayedBlock to dispatch_after", buf, 0xCu);
    }

    v75 = *(a1 + 40);
  }

  if (v75)
  {
    goto LABEL_45;
  }

  v81 = dispatch_block_create(0, &stru_100055638);
  v82 = qword_1000616C8;
  qword_1000616C8 = v81;

  v83 = dispatch_time(0, 30000000000);
  dispatch_after(v83, qword_100061620, qword_1000616C8);
  v84 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v126 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, "%s Submitted editDelayedBlock to dispatch_after", buf, 0xCu);
  }

  v80 = *(a1 + 32);
  if (!*(a1 + 40) && *(v80 + 24) == 1 && (*(v80 + 27) & 1) == 0 && *(v80 + 104))
  {
    v85 = +[CESRDictationOnDeviceSampling sharedManager];
    [v85 incrementSampledRequestCount];

LABEL_45:
    v80 = *(a1 + 32);
  }

  v86 = *(v80 + 104);
  if (v86)
  {
    if (!*(a1 + 40))
    {
      [v86 saveAudioToDisk];
      v80 = *(a1 + 32);
      v86 = *(v80 + 104);
    }

    *(v80 + 104) = 0;

    v80 = *(a1 + 32);
  }

  v87 = *(v80 + 112);
  if (v87)
  {
    if (!*(a1 + 40))
    {
      [v87 sendEvent];
      v80 = *(a1 + 32);
      v87 = *(v80 + 112);
    }

    *(v80 + 112) = 0;

    v80 = *(a1 + 32);
  }

  v88 = *(v80 + 232);
  if (v88)
  {
    *(v80 + 232) = 0;

    v80 = *(a1 + 32);
  }

  *(v80 + 208) = 0;
  v89 = *(a1 + 32);
  v90 = *(v89 + 192);
  *(v89 + 192) = 0;

  *(*(a1 + 32) + 152) = 0x10000000000000;
  *(*(a1 + 32) + 160) = 0x10000000000000;
  v91 = *(a1 + 32);
  v92 = *(v91 + 368);
  *(v91 + 368) = 0;

  [*(*(a1 + 32) + 336) removeAllObjects];
  [*(*(a1 + 32) + 344) removeAllObjects];
  v93 = *(a1 + 32);
  v94 = *(v93 + 40);
  *(v93 + 40) = 0;

  v95 = *(a1 + 32);
  v96 = *(v95 + 48);
  *(v95 + 48) = 0;

  [*(a1 + 32) startRequestActivityWithCompletion:0];
}

void sub_100017CB4(uint64_t a1)
{
  v1 = qword_1000616B0;
  if (qword_1000616B0)
  {
    v3 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = [v1 interactionIdentifier];
      v9 = 136315394;
      v10 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Writing DES record after 30 seconds delay: interactionId=%@", &v9, 0x16u);
    }

    v6 = +[AFPreferences sharedPreferences];
    v7 = [v6 siriDataSharingOptInStatus];

    [*(a1 + 32) _writeDESRecord:&qword_1000616B0 oneRecordPerDay:v7 == 1];
    v8 = qword_1000616C0;
    qword_1000616C0 = 0;
  }
}

void sub_100017DE8(id a1)
{
  v1 = qword_1000616D0;
  if (qword_1000616D0)
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v4 = v2;
      v5 = [v1 interactionId];
      v6 = 136315394;
      v7 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Send edit event to Biome after 30 seconds delay, interactionId=%@", &v6, 0x16u);

      v1 = qword_1000616D0;
    }

    [v1 sendEvent];
    v3 = qword_1000616C8;
    qword_1000616C8 = 0;
  }
}

void sub_100017EF0(id a1, NSNumber *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ESConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s PauseDuration = %@", &v6, 0x16u);
  }
}

void sub_100018210(id *a1)
{
  v2 = +[ESProfiler sharedProfiler];
  v3 = a1[4];
  ++*(a1[5] + 39);
  v4 = [NSNumber numberWithUnsignedInteger:?];
  setEARPackageResultCandidateId();

  v5 = a1[4];
  v6 = *(a1[5] + 18);
  v7 = [qword_100061690 count] != 0;
  WeakRetained = objc_loadWeakRetained(a1[5] + 1);
  v9 = [WeakRetained modelInfo];
  v10 = [CESRUtilities afSpeechPackageForEARPackage:v5 processedAudioDuration:v7 speechProfileUsed:v9 recognizerModelInfo:0 isVoiceCommandCandidatePackage:v6];

  v11 = [CESRUtilities AFSpeechInfoPackageForEARSpeechRecognitionResultPackage:a1[4]];
  v12 = [CESRUtilities hasRecognizedAnythingInAFSpeechPackage:v10];
  if (v12)
  {
    v13 = a1[5];
    v14 = v13[13];
    if (v14)
    {
      [v14 markRecognition];
      v13 = a1[5];
    }

    v15 = v13[14];
    if (v15)
    {
      [v15 markRecognition];
    }

    if (qword_1000616B0)
    {
      [qword_1000616B0 markRecognition];
    }

    if (qword_1000616D0)
    {
      [qword_1000616D0 markRecognition];
    }
  }

  v16 = objc_loadWeakRetained(a1[5] + 1);
  v17 = [v16 concatenateUtterances];

  if (v17)
  {
    objc_storeStrong(a1[5] + 5, v10);
    objc_storeStrong(a1[5] + 6, v11);
  }

  else
  {
    if ([v10 recognitionPaused])
    {
      v18 = [a1[5] dummyResultPackage:v10];

      v10 = v18;
    }

    if ([a1[6] enableVoiceCommands] && (objc_msgSend(a1[5], "_delegate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_opt_respondsToSelector(), v19, (v20 & 1) != 0))
    {
      v21 = [a1[5] _delegate];
      [v21 speechServiceDidRecognizePackage:v10 withMetadata:v11];

      v22 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v99 = "[ESConnection speechRecognizer:didRecognizeFinalResultPackage:]_block_invoke";
        v100 = 2112;
        v101 = v11;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s AFSpeechInfo Package %@", buf, 0x16u);
      }
    }

    else
    {
      v23 = [a1[5] _delegate];
      [v23 speechServiceDidRecognizePackage:v10];
    }
  }

  if ((v12 & +[CESRUtilities isTaskDictationSpecific:](CESRUtilities, "isTaskDictationSpecific:", *(a1[5] + 38))) == 1 && ([a1[6] detectUtterances] && !objc_msgSend(a1[6], "concatenateUtterances") || objc_msgSend(a1[4], "isFinal")))
  {
    v94 = v12;
    v95 = v11;
    v25 = a1[4];
    v24 = a1[5];
    v26 = v24[43];
    v27 = v24[41];
    v28 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v2 logFinalResultGeneratedWithEARPackage:v25 firstSeenPartialResultTokens:v26 partialResultOffset:v27 timeInTicks:v28];

    v29 = [*(a1[5] + 42) count];
    v30 = [a1[4] correctPartialResultIndexList];
    v31 = [v30 count];

    if (v31 && v29)
    {
      v32 = [a1[4] correctPartialResultIndexList];
      v33 = [v32 count];

      if (v33 < 1)
      {
        v77 = &stru_100055AC8;
      }

      else
      {
        v93 = v2;
        v34 = 0;
        v35 = 0;
        v36 = &stru_100055AC8;
        v37 = 0.0;
        v38 = 1.79769313e308;
        v39 = 0.0;
        v96 = v29;
        do
        {
          v40 = [a1[4] correctPartialResultIndexList];
          v41 = [v40 objectAtIndex:v34];
          v42 = [v41 unsignedIntValue];

          if (v29 > v42)
          {
            v97 = v35;
            v43 = v42;
            v44 = [a1[4] preITNRecognition];
            v45 = [v44 oneBest];
            v46 = [v45 objectAtIndex:v34];
            [v46 silenceStart];
            v48 = v47;
            [a1[4] utteranceStart];
            v50 = v48 + v49;

            v51 = [*(a1[5] + 42) objectAtIndex:v43];
            [v51 doubleValue];
            v53 = v52;

            v54 = *(a1[5] + 19);
            v55 = [a1[4] preITNRecognition];
            v56 = [v55 oneBest];
            v57 = [v56 objectAtIndex:v34];
            v58 = [v57 tokenName];

            v59 = [*(a1[5] + 24) unsignedLongLongValue];
            *&v60 = v50;
            v61 = [CESRUtilities secondsToHostTime:v60];
            v62 = [*(a1[5] + 42) objectAtIndex:v43];
            [v62 doubleValue];
            *&v63 = v63;
            v64 = [CESRUtilities secondsToHostTime:v63];

            v65 = [CESRUtilities machAbsoluteTimeToMachContinuousTime:&v59[v61]];
            v66 = [CESRUtilities machAbsoluteTimeToMachContinuousTime:v64];
            if (v66 >= v65)
            {
              v67 = v66;
              v68 = os_signpost_id_generate(AFSiriLogContextSpeech);
              v69 = AFSiriLogContextSpeech;
              v70 = v69;
              if (v68 - 1 > 0xFFFFFFFFFFFFFFFDLL)
              {

                v72 = AFSiriLogContextSpeech;
              }

              else
              {
                if (os_signpost_enabled(v69))
                {
                  v71 = [v58 UTF8String];
                  *buf = 134349314;
                  v99 = v65;
                  v100 = 2080;
                  v101 = v71;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_BEGIN, v68, "ES: Time to Word", "%{public, signpost.description:begin_time}llu %s", buf, 0x16u);
                }

                v72 = AFSiriLogContextSpeech;
                if (os_signpost_enabled(v72))
                {
                  *buf = 134349056;
                  v99 = v67;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_END, v68, "ES: Time to Word", "%{public, signpost.description:end_time}llu", buf, 0xCu);
                }
              }
            }

            v35 = v97 + 1;
            v73 = v53 - (v50 + v54);
            v74 = [NSString stringWithFormat:@"%@ %@:%f, ", v36, v58, *&v73];

            v37 = v37 + v73;
            if (v39 < v73)
            {
              v39 = v73;
            }

            if (v38 >= v73)
            {
              v38 = v73;
            }

            v36 = v74;
            v29 = v96;
          }

          ++v34;
          v75 = [a1[4] correctPartialResultIndexList];
          v76 = [v75 count];
        }

        while (v34 < v76);
        if (v35 <= 0)
        {
          v77 = v36;
          v2 = v93;
        }

        else
        {
          v77 = [NSString stringWithFormat:@"%@ TTAW:%f MEAN:%f, MAX:%f, MIN:%f ", v36, *&v37, v37 / v35, *&v39, *&v38];

          v78 = os_signpost_id_generate(AFSiriLogContextSpeech);
          v79 = AFSiriLogContextSpeech;
          v80 = v79;
          v2 = v93;
          if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
          {
            *buf = 138412290;
            v99 = v77;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_EVENT, v78, "ES: TTAW", "Partially Recognized Results: %@", buf, 0xCu);
          }
        }
      }
    }

    [*(a1[5] + 43) removeAllObjects];
    *(a1[5] + 41) += *(a1[5] + 40);
    *(a1[5] + 40) = 0;
    v11 = v95;
    v12 = v94;
  }

  if ((([*(a1[5] + 38) isEqualToString:CoreEmbeddedSpeechRecognizerTaskSearchOrMessaging] & 1) != 0 || objc_msgSend(*(a1[5] + 38), "isEqualToString:", CoreEmbeddedSpeechRecognizerTaskSiriDictation)) && ((objc_msgSend(v10, "isFinal") | v12 ^ 1) & 1) == 0)
  {
    v81 = a1[4];
    v82 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v2 logPackageGeneratedAndRecognitionResultTier1WithEARPackage:v81 loggableSharedUserId:0 timeInTicks:v82];
  }

  v83 = [a1[4] preITNRecognition];
  v84 = [v83 oneBest];
  v85 = [v84 lastObject];

  if (v85 && ([a1[4] isFinal] & 1) == 0)
  {
    v86 = a1[5];
    [v85 silenceStart];
    *&v87 = v87;
    v88 = [v86 _packetReadyUpstreamTimestampsFromAudioTime:v87];
    [v2 logFinalAudioPacketContainingSpeechReadyUpstreamWithTimeInTicks:v88 loggableSharedUserId:0 earPackage:a1[4]];
    v89 = v11;
    v90 = objc_loadWeakRetained(a1[5] + 2);
    [v85 silenceStart];
    *&v91 = v91;
    v92 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v90 packetArrivalTimestampFromAudioTime:v91]);

    v11 = v89;
    [v2 logFinalAudioPacketContainingSpeechReceivedWithTimeInTicks:v92 loggableSharedUserId:0 earPackage:a1[4]];
  }
}

void sub_100018C2C(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[ESConnection speechRecognizer:didRecognizeFinalResultCandidatePackage:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 144);
    v7 = [qword_100061690 count] != 0;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v9 = [WeakRetained modelInfo];
    v10 = [CESRUtilities afSpeechPackageForEARPackage:v5 processedAudioDuration:v7 speechProfileUsed:v9 recognizerModelInfo:0 isVoiceCommandCandidatePackage:v6];

    v11 = [*(a1 + 32) _delegate];
    [v11 speechServiceDidRecognizeFinalResultCandidatePackage:v10];
  }
}

void sub_1000190DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[ESConnection speechRecognizer:didRecognizeVoiceCommandCandidatePackage:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v13, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 144);
    v7 = [qword_100061690 count] != 0;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v9 = [WeakRetained modelInfo];
    v10 = [CESRUtilities afSpeechPackageForEARPackage:v5 processedAudioDuration:v7 speechProfileUsed:v9 recognizerModelInfo:1 isVoiceCommandCandidatePackage:v6];

    v11 = [CESRUtilities AFSpeechInfoPackageForEARSpeechRecognitionResultPackage:*(a1 + 40)];
    v12 = [*(a1 + 32) _delegate];
    [v12 speechServiceDidRecognizeVoiceCommandCandidatePackage:v10 withMetadata:v11];
  }
}

void sub_1000193B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 144);
  v4 = [qword_100061690 count] != 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v6 = [WeakRetained modelInfo];
  v15 = [CESRUtilities afSpeechPackageForEARPackage:v2 processedAudioDuration:v4 speechProfileUsed:v6 recognizerModelInfo:1 isVoiceCommandCandidatePackage:v3];

  v7 = [CESRUtilities AFSpeechInfoPackageForEARSpeechRecognitionResultPackage:*(a1 + 32)];
  v8 = [*(a1 + 40) _delegate];
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v9 = [*(a1 + 40) _delegate];
    [v9 speechServiceDidRecognizePartialPackage:v15 withMetadata:v7];
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) recognition];
  v12 = [v11 oneBest];
  v13 = [*(a1 + 32) preITNRecognition];
  v14 = [v13 oneBest];
  [v10 processPartialResultMetricsWithTokens:v12 preITNTokens:v14 timestamp:*(a1 + 48)];
}

void sub_10001962C(uint64_t a1)
{
  v2 = [*(a1 + 32) tokens];
  v10 = [CESRUtilities afTokensForEARTokens:v2 removeSpaceBefore:0];

  v3 = [CESRUtilities AFSpeechInfoPackageForEARSpeechRecognitionResult:*(a1 + 32)];
  if ([*(a1 + 40) enableVoiceCommands] && (objc_msgSend(*(a1 + 48), "_delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [*(a1 + 48) _delegate];
    [v6 speechServiceDidRecognizeTokens:v10 withMetadata:v3];
  }

  else
  {
    v6 = [*(a1 + 48) _delegate];
    [v6 speechServiceDidRecognizeTokens:v10];
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) tokens];
  v9 = [*(a1 + 32) preITNTokens];
  [v7 processPartialResultMetricsWithTokens:v8 preITNTokens:v9 timestamp:*(a1 + 56)];
}

uint64_t sub_100019AFC(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 344);
  if (v6)
  {
    v17 = v5;
    v7 = [v6 count];
    if (v7 <= a3)
    {
      v8 = v7;
      do
      {
        v9 = *(*(a1 + 32) + 344);
        v10 = +[NSMutableDictionary dictionary];
        [v9 addObject:v10];

        ++v8;
      }

      while (v8 <= a3);
    }

    v11 = [*(*(a1 + 32) + 344) objectAtIndex:a3];
    v12 = [v17 tokenName];
    v13 = [CESRUtilities getNormString:v12];

    v14 = [v11 objectForKey:v13];

    if (!v14)
    {
      v15 = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 320)];
      [v11 setObject:v15 forKey:v13];
    }
  }

  return _objc_release_x1();
}

id sub_100019C48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 tokenName];
  [v3 appendString:v4];

  v5 = *(a1 + 32);

  return [v5 appendString:@" "];
}

void sub_100019D4C(uint64_t a1)
{
  v2 = +[ESProfiler sharedProfiler];
  v3 = [*(a1 + 32) _delegate];
  v4 = objc_opt_respondsToSelector();

  v91 = a1;
  if ((v4 & 1) == 0)
  {
    goto LABEL_61;
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 144);
  v7 = [qword_100061690 count] != 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = [WeakRetained modelInfo];
  v10 = [CESRUtilities afSpeechPackageForEARPackage:v5 processedAudioDuration:v7 speechProfileUsed:v9 recognizerModelInfo:0 isVoiceCommandCandidatePackage:v6];

  v11 = v91;
  v12 = [*(v91 + 32) _delegate];
  [v12 performSelector:"speechServiceDidProduceLoggablePackage:" withObject:v10];

  v89 = v2;
  v90 = v10;
  if (v10 && *(*(v91 + 32) + 112))
  {
    v13 = [v10 rawRecognition];
    v14 = v13;
    if (v13)
    {
      v88 = v13;
      v15 = [*(*(v91 + 32) + 112) taskName];
      if (([v15 isEqualToString:@"Dictation"] & 1) == 0)
      {

LABEL_36:
        v14 = v88;
        goto LABEL_37;
      }

      v16 = [*(*(v91 + 32) + 112) applicationName];
      v17 = [v16 isEqualToString:@"com.apple.MobileSMS"];

      v14 = v88;
      if (v17)
      {
        v18 = objc_alloc_init(NSMutableArray);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        obj = [v88 phrases];
        v94 = [obj countByEnumeratingWithState:&v110 objects:v121 count:16];
        if (v94)
        {
          v93 = *v111;
          do
          {
            for (i = 0; i != v94; i = i + 1)
            {
              if (*v111 != v93)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v110 + 1) + 8 * i);
              v21 = [v20 interpretations];
              v22 = [v21 count];

              if (v22)
              {
                v96 = i;
                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v23 = [v20 interpretations];
                v24 = [v23 firstObject];
                v25 = [v24 tokens];

                v26 = [v25 countByEnumeratingWithState:&v106 objects:v120 count:16];
                if (!v26)
                {
                  goto LABEL_28;
                }

                v27 = v26;
                v28 = *v107;
                while (1)
                {
                  for (j = 0; j != v27; j = j + 1)
                  {
                    if (*v107 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v106 + 1) + 8 * j);
                    v31 = [v30 text];
                    if (([v31 hasSuffix:@"\\jit"] & 1) == 0)
                    {
                      v33 = [v30 text];
                      if ([v33 hasSuffix:@"\\entity-first"])
                      {
                        v34 = qword_1000616D8;

                        if (!v34)
                        {
                          continue;
                        }

LABEL_23:
                        v31 = [v30 text];
                        [v18 addObject:v31];
                      }

                      else
                      {
                      }

                      continue;
                    }

                    v32 = qword_1000616D8;

                    if (v32)
                    {
                      goto LABEL_23;
                    }
                  }

                  v27 = [v25 countByEnumeratingWithState:&v106 objects:v120 count:16];
                  if (!v27)
                  {
LABEL_28:

                    i = v96;
                    break;
                  }
                }
              }
            }

            v94 = [obj countByEnumeratingWithState:&v110 objects:v121 count:16];
          }

          while (v94);
        }

        if (qword_1000616D8 && [v18 count])
        {
          v35 = qword_1000616D8;
          v36 = [*(*(v91 + 32) + 112) interactionId];
          [v35 setObject:v18 forKey:v36];
        }

        v11 = v91;
        goto LABEL_36;
      }
    }

LABEL_37:
  }

  v37 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v115 = "[ESConnection speechRecognizer:didProduceLoggablePackage:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Setting recognized text", buf, 0xCu);
  }

  v38 = [*(v11 + 40) preITNRecognition];
  v39 = [v38 nBest];

  v40 = [*(v11 + 40) recognition];
  v95 = [v40 nBest];

  v41 = +[NSMutableArray array];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v97 = v39;
  v42 = [v97 countByEnumeratingWithState:&v102 objects:v119 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v103;
    do
    {
      for (k = 0; k != v43; k = k + 1)
      {
        if (*v103 != v44)
        {
          objc_enumerationMutation(v97);
        }

        v46 = *(*(&v102 + 1) + 8 * k);
        v47 = +[NSMutableArray array];
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v48 = v46;
        v49 = [v48 countByEnumeratingWithState:&v98 objects:v118 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v99;
          do
          {
            for (m = 0; m != v50; m = m + 1)
            {
              if (*v99 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = [*(*(&v98 + 1) + 8 * m) tokenName];
              [v47 addObject:v53];
            }

            v50 = [v48 countByEnumeratingWithState:&v98 objects:v118 count:16];
          }

          while (v50);
        }

        if ([v47 count])
        {
          [v41 addObject:v47];
        }
      }

      v43 = [v97 countByEnumeratingWithState:&v102 objects:v119 count:16];
    }

    while (v43);
  }

  v54 = [v95 firstObject];
  v55 = [CESRUtilities earTokensToString:v54];

  if ([v41 count])
  {
    v56 = qword_1000616B0;
    v57 = [v41 firstObject];
    [v56 setRecognizedText:v57];

    [qword_1000616B0 setRecognizedNbest:v41];
    [qword_1000616B0 setPostITNRecognizedText:v55];
    v58 = qword_1000616D0;
    if (qword_1000616D0)
    {
      v59 = [v41 firstObject];
      [v58 setRecognizedTokens:v59];

      [qword_1000616D0 setRecognizedNbest:v41];
      [qword_1000616D0 setRecognizedText:v55];
      v60 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315395;
        v115 = "[ESConnection speechRecognizer:didProduceLoggablePackage:]_block_invoke";
        v116 = 2113;
        v117 = v55;
        _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%s Set recognized text: %{private}@", buf, 0x16u);
      }
    }
  }

  v2 = v89;
  a1 = v91;
LABEL_61:
  v61 = *(a1 + 40);
  v62 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  [v2 logPackageGeneratedAndRecognitionResultTier1WithEARPackage:v61 loggableSharedUserId:0 timeInTicks:v62];

  v63 = [*(a1 + 40) unrepairedRecognition];
  v64 = [v63 oneBest];
  v65 = [CESRUtilities earTokensToString:v64];

  v66 = [v2 selfHelper];
  [v66 setUnrepairedPostItn:v65];

  v67 = [*(a1 + 40) preITNRecognition];
  v68 = [v67 oneBest];
  v69 = [v68 firstObject];

  if (v69)
  {
    [v69 silenceStart];
    v71 = v70;
    [*(a1 + 40) utteranceStart];
    v73 = v71 + v72;
    v74 = v73;
    *&v73 = v74;
    v75 = [*(a1 + 32) _packetReadyUpstreamTimestampsFromAudioTime:v73];
    [v2 logAudioPacketContainingEndOfFirstWordReadyUpstreamWithTimeInTicks:v75];
    v76 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v84 = *(v91 + 32);
      v85 = v76;
      *&v86 = v74;
      v87 = [v84 _recordedTimestampFromAudioTime:v86];
      *buf = 136315394;
      v115 = "[ESConnection speechRecognizer:didProduceLoggablePackage:]_block_invoke";
      v116 = 2112;
      v117 = v87;
      _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "%s EmbeddedSpeechMetric: end of first word recorded in ticks (user-facing TTFW start): %@", buf, 0x16u);

      v76 = AFSiriLogContextSpeech;
    }

    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v115 = "[ESConnection speechRecognizer:didProduceLoggablePackage:]_block_invoke";
      v116 = 2112;
      v117 = v75;
      _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "%s EmbeddedSpeechMetric: packet containing end of first word ready upstream in ticks (ASR-component TTFW start): %@", buf, 0x16u);
    }

    v77 = objc_loadWeakRetained((*(v91 + 32) + 16));
    [v69 start];
    *&v78 = v78;
    v79 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v77 packetArrivalTimestampFromAudioTime:v78]);

    [v2 logFirstAudioPacketContainingSpeechReceivedWithTimeInTicks:v79 loggableSharedUserId:0];
    v80 = objc_loadWeakRetained((*(v91 + 32) + 16));
    [v69 start];
    v82 = v81 + 1.0;
    *&v82 = v82;
    v83 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v80 packetArrivalTimestampFromAudioTime:v82]);

    if ([v83 unsignedLongLongValue])
    {
      [v2 logPostSpeechStartOneSecondLaterAudioPacketReceivedWithTimeInTicks:v83 loggableSharedUserId:0];
    }
  }
}

void sub_10001A8CC(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v10 = 136316674;
    v11 = "[ESConnection speechRecognizer:didProduceEndpointFeaturesWithWordCount:trailingSilenceDuration:eosLikelihood:pauseCounts:silencePosterior:processedAudioDurationInMilliseconds:acousticEndpointerScore:]_block_invoke";
    v12 = 2048;
    v13 = v3;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s wordCount = %ld, trailingSilenceDuration = %ld, eosLikelihood = %f, pauseCounts = %@, silencePosterior = %f, acousticEndpointerScore = %f", &v10, 0x48u);
  }

  v9 = [*(a1 + 40) _delegate];
  [v9 speechServiceDidProduceEndpointFeaturesWithWordCount:*(a1 + 48) trailingSilenceDuration:*(a1 + 56) eosLikelihood:*(a1 + 32) pauseCounts:*(a1 + 88) silencePosterior:*(a1 + 64) processedAudioDurationInMilliseconds:*(a1 + 72) acousticEndpointerScore:*(a1 + 80)];
}

id sub_10001ABC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 saveOneRecordPerDay];
  }

  else
  {
    return [v2 save];
  }
}

void sub_10001B194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BCF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10001BD10(void *a1)
{
  v2 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    *buf = 136315906;
    v20 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]_block_invoke";
    v21 = 2112;
    v22 = v3;
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Starting model compilation for the primary %@ asset: %@, using config at path: %@", buf, 0x2Au);
  }

  v6 = a1[6];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = a1[5];
      *buf = 136315650;
      v20 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]_block_invoke";
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Finished model compilation for the primary %@ asset: %@", buf, 0x20u);
    }
  }

  else
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
    {
      v15 = a1[4];
      v16 = a1[5];
      v17 = *(*(a1[9] + 8) + 40);
      *buf = 136315906;
      v20 = "[ESConnection compilePrimaryAssistantAssetWithCompletion:]_block_invoke";
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s Model compilation failed for the primary %@ asset: %@, error: %@", buf, 0x2Au);
    }
  }

  v13 = a1[8];
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(a1[9] + 8) + 40));
  }

  return xpc_transaction_exit_clean();
}

void sub_10001C510(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001BCF8;
  v11 = sub_10001BD08;
  v12 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C62C;
  v4[3] = &unk_1000553E0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = &v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, v8[5]);
  }

  xpc_transaction_exit_clean();

  _Block_object_dispose(&v7, 8);
}

void sub_10001C614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C62C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 136315906;
    v20 = "[ESConnection compileAllAssetsWithType:completion:]_block_invoke_2";
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Starting model compilation for %@ asset: %@, using config at path: %@", buf, 0x2Au);
  }

  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v12 = [_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:v8 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    v13 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 136315650;
      v20 = "[ESConnection compileAllAssetsWithType:completion:]_block_invoke";
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Finished model compilation for %@ asset: %@", buf, 0x20u);
    }
  }

  else
  {
    v15 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136315906;
      v20 = "[ESConnection compileAllAssetsWithType:completion:]_block_invoke";
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v17;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%s Model compilation failed for %@ asset: %@, error: %@", buf, 0x2Au);
    }

    *a4 = 1;
  }
}

void sub_10001CB88(uint64_t a1)
{
  v2 = +[ESAssetManager sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v13 = 0;
  v5 = [v2 purgeInstalledAssetsExceptLanguages:v3 assetType:v4 error:&v13];
  v6 = v13;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001CC74;
  v9[3] = &unk_100055390;
  v7 = *(a1 + 40);
  v12 = v5;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v9);
}

uint64_t sub_10001CC74(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_10001CD58(uint64_t a1)
{
  v2 = +[ESAssetManager sharedInstance];
  v3 = *(a1 + 32);
  v15 = 0;
  v4 = [v2 purgeInstalledAssetsExceptLanguages:v3 assetType:3 error:&v15];
  v5 = v15;

  v6 = &off_100058538;
  if (v4)
  {
    v6 = &off_100058520;
  }

  v7 = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001CE78;
  v11[3] = &unk_100055368;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v12 = v7;
  v9 = v5;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t sub_10001CE78(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_10001D038(uint64_t a1)
{
  v380 = objc_alloc_init(NSMutableDictionary);
  v348 = objc_alloc_init(NSMutableDictionary);
  v352 = objc_alloc_init(NSMutableDictionary);
  v365 = objc_alloc_init(NSMutableDictionary);
  v353 = objc_alloc_init(NSMutableDictionary);
  v498[0] = @"corrected";
  v498[1] = @"recognized";
  v1 = [NSArray arrayWithObjects:v498 count:2];
  v396 = [NSSet setWithArray:v1];

  v2 = [*(a1 + 32) objectForKeyedSubscript:@"evaluations"];
  v347 = v2;
  if (![v2 count] || objc_msgSend(v2, "count") > 0xA)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_341;
  }

  v467 = 0u;
  v466 = 0u;
  v465 = 0u;
  v464 = 0u;
  obj = v2;
  v5 = 0;
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v464 objects:v497 count:16];
  if (!v7)
  {
LABEL_21:

    v344 = [[SFEntitledAssetConfig alloc] initWithLanguage:*(a1 + 40) assetType:3];
    v19 = +[ESAssetManager sharedInstance];
    v459 = 0;
    v395 = [v19 installedQuasarModelPathForAssetConfig:v344 error:&v459];
    v322 = v459;

    v337 = [v395 stringByAppendingPathComponent:@"mini.json"];
    v325 = [v395 stringByAppendingPathComponent:@"ncs"];
    v20 = [[_EARSpeechModelInfo alloc] initWithConfig:v337];
    v319 = [v20 version];

    v21 = AFSiriLogContextFides;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v395;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s modelRoot: %@", buf, 0x16u);
    }

    if (![v395 length] || (+[CESRUtilities isFilePathValid:](CESRUtilities, "isFilePathValid:", v337) & 1) == 0)
    {
      v32 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 40);
        *buf = 136315650;
        *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v39;
        *&buf[22] = 2112;
        v501 = v322;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s No modelRoot for %@: %@", buf, 0x20u);
      }

      if (v322)
      {
        v492 = NSUnderlyingErrorKey;
        v493 = v322;
        v33 = [NSDictionary dictionaryWithObjects:&v493 forKeys:&v492 count:1];
      }

      else
      {
        v33 = 0;
      }

      v34 = [NSError errorWithDomain:kAFAssistantErrorDomain code:600 userInfo:v33];
      if (v322)
      {
      }

      v380 = 0;
      v4 = v34;
LABEL_339:

      obj = v322;
      v3 = v380;

      goto LABEL_340;
    }

    context = objc_autoreleasePoolPush();
    v486 = 0;
    v487 = &v486;
    v488 = 0x3032000000;
    v489 = sub_10001BCF8;
    v490 = sub_10001BD08;
    v491 = 0;
    v453 = 0;
    v454 = &v453;
    v455 = 0x3032000000;
    v456 = sub_10001BCF8;
    v457 = sub_10001BD08;
    v458 = 0;
    v22 = qword_100061620;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021144;
    block[3] = &unk_100055318;
    block[4] = *(a1 + 48);
    v451 = &v453;
    v324 = v344;
    v448 = v324;
    v449 = &__NSDictionary0__struct;
    v326 = v395;
    v450 = v326;
    v452 = &v486;
    dispatch_sync(v22, block);
    if (!v454[5])
    {

      v35 = v487[5];
      if (v35)
      {
        v484 = NSUnderlyingErrorKey;
        v485 = v35;
        v36 = [NSDictionary dictionaryWithObjects:&v485 forKeys:&v484 count:1];
      }

      else
      {
        v36 = 0;
      }

      v342 = [NSError errorWithDomain:kAFAssistantErrorDomain code:600 userInfo:v36];
      v38 = 0;
      v380 = 0;
      v351 = &__NSDictionary0__struct;
      if (!v35)
      {
        goto LABEL_276;
      }

      goto LABEL_275;
    }

    if ((v6 & 1) == 0)
    {
      v315 = 0;
      v37 = 0;
      goto LABEL_64;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v501 = sub_10001BCF8;
    v502 = sub_10001BD08;
    v503 = 0;
    v23 = *(a1 + 56);
    v24 = AFSiriLogContextFides;
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (v25)
      {
        v26 = *(a1 + 56);
        v27 = *(a1 + 64);
        *v504 = 136315650;
        *&v504[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke_2";
        *&v504[12] = 2112;
        *&v504[14] = v26;
        *&v504[22] = 2112;
        *&v504[24] = v27;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Attempting to load Fides-trained Personalized LM fidesPersonalizedLMPath=%@ fidesPersonalizedLMTrainingAsset=%@", v504, 0x20u);
      }

      if ([*(a1 + 64) isEqualToString:v319])
      {
        v315 = [[_EARLmModel alloc] initFromDirectory:*(a1 + 56)];
        v28 = [v315 handle];
        v29 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v28;

LABEL_53:
        if (*(*&buf[8] + 40))
        {
          v44 = AFSiriLogContextFides;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *v504 = 136315138;
            *&v504[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke_2";
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s Loaded Personalized LM", v504, 0xCu);
          }

          v483 = *(*&buf[8] + 40);
          v45 = 1;
          v346 = [NSArray arrayWithObjects:&v483 count:1];
        }

        else
        {
          v46 = [*(a1 + 32) objectForKeyedSubscript:@"personalizedLM"];
          v47 = [v46 objectForKeyedSubscript:@"require"];
          v48 = [v47 BOOLValue];

          if (v48)
          {
            v49 = AFSiriLogContextFides;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *v504 = 136315138;
              *&v504[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s Required Personalized LM not found", v504, 0xCu);
            }

            [v380 setObject:@"Required Personalized LM not found" forKeyedSubscript:@"status"];
            v346 = 0;
            v45 = 0;
          }

          else
          {
            v346 = 0;
            v45 = 1;
          }
        }

        _Block_object_dispose(buf, 8);

        if ((v45 & 1) == 0)
        {
          v38 = 0;
          v342 = 0;
          v351 = &__NSDictionary0__struct;
LABEL_274:

          v36 = v346;
LABEL_275:

LABEL_276:
          _Block_object_dispose(&v453, 8);

          _Block_object_dispose(&v486, 8);
          objc_autoreleasePoolPop(context);
          if (!v38)
          {
            goto LABEL_338;
          }

          v401 = objc_autoreleasePoolPush();
          v271 = AFSiriLogContextFides;
          if (os_log_type_enabled(v271, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v271, OS_LOG_TYPE_INFO, "%s Tokenizing correctedText", buf, 0xCu);
          }

          v421 = 0u;
          v422 = 0u;
          v419 = 0u;
          v420 = 0u;
          v272 = v348;
          v273 = 0;
          v274 = [v272 countByEnumeratingWithState:&v419 objects:v476 count:16];
          if (v274)
          {
            v275 = *v420;
            while (2)
            {
              for (i = 0; i != v274; i = i + 1)
              {
                if (*v420 != v275)
                {
                  objc_enumerationMutation(v272);
                }

                v277 = *(*(&v419 + 1) + 8 * i);
                if ([*(a1 + 48) _invalidated])
                {
                  v282 = AFSiriLogContextFides;
                  if (os_log_type_enabled(v282, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                    _os_log_impl(&_mh_execute_header, v282, OS_LOG_TYPE_INFO, "%s Interrupted evaluation tokenization", buf, 0xCu);
                  }

                  v474 = NSLocalizedDescriptionKey;
                  v475 = @"Interrupted evaluation tokenization";
                  v278 = [NSDictionary dictionaryWithObjects:&v475 forKeys:&v474 count:1];
                  v283 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v278];

                  goto LABEL_295;
                }

                v278 = [v353 objectForKeyedSubscript:v277];
                if (v278)
                {
                  if (!v273)
                  {
                    v273 = [[_EARQuasarTokenizer alloc] initWithModelRoot:v326];
                    if (!v273)
                    {
                      v310 = AFSiriLogContextFides;
                      if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
                      {
                        v313 = *(a1 + 40);
                        *buf = 136315394;
                        *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                        *&buf[12] = 2112;
                        *&buf[14] = v313;
                        _os_log_error_impl(&_mh_execute_header, v310, OS_LOG_TYPE_ERROR, "%s No tokenizer for %@", buf, 0x16u);
                      }

                      v311 = [NSString stringWithFormat:@"No tokenizer for %@", *(a1 + 40)];

                      v472 = NSLocalizedDescriptionKey;
                      v473 = v311;
                      v312 = [NSDictionary dictionaryWithObjects:&v473 forKeys:&v472 count:1];
                      v283 = [NSError errorWithDomain:kAFAssistantErrorDomain code:600 userInfo:v312];

                      v273 = 0;
                      v380 = 0;

LABEL_295:
                      v281 = 0;
                      v342 = v283;
                      goto LABEL_296;
                    }
                  }

                  v279 = [v273 tokenize:v278];
                  v280 = [v352 objectForKeyedSubscript:v277];
                  [v280 setObject:v279 forKeyedSubscript:@"corrected"];
                }
              }

              v274 = [v272 countByEnumeratingWithState:&v419 objects:v476 count:16];
              if (v274)
              {
                continue;
              }

              break;
            }
          }

          v281 = 1;
LABEL_296:

          objc_autoreleasePoolPop(v401);
          if (v281)
          {
            v284 = AFSiriLogContextFides;
            if (os_log_type_enabled(v284, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
              _os_log_impl(&_mh_execute_header, v284, OS_LOG_TYPE_INFO, "%s Computing alignments", buf, 0xCu);
            }

            v417 = 0u;
            v418 = 0u;
            v415 = 0u;
            v416 = 0u;
            v379 = v272;
            v285 = [v379 countByEnumeratingWithState:&v415 objects:v471 count:16];
            if (v285)
            {
              v370 = *v416;
              do
              {
                v286 = 0;
                v367 = v285;
                do
                {
                  if (*v416 != v370)
                  {
                    objc_enumerationMutation(v379);
                  }

                  v287 = *(*(&v415 + 1) + 8 * v286);
                  v374 = [v379 objectForKeyedSubscript:v287];
                  v372 = v286;
                  v402 = [v352 objectForKeyedSubscript:v287];
                  v288 = objc_alloc_init(NSMutableDictionary);
                  v413 = 0u;
                  v414 = 0u;
                  v411 = 0u;
                  v412 = 0u;
                  loga = obj;
                  v384 = [loga countByEnumeratingWithState:&v411 objects:v470 count:16];
                  if (v384)
                  {
                    v382 = *v412;
                    do
                    {
                      for (j = 0; j != v384; j = j + 1)
                      {
                        if (*v412 != v382)
                        {
                          objc_enumerationMutation(loga);
                        }

                        v289 = *(*(&v411 + 1) + 8 * j);
                        v399 = [v402 objectForKeyedSubscript:v289];
                        if (v399)
                        {
                          v290 = [loga objectForKeyedSubscript:v289];
                          v409 = 0u;
                          v410 = 0u;
                          v407 = 0u;
                          v408 = 0u;
                          v391 = v290;
                          v291 = [v290 objectForKeyedSubscript:@"alignmentReferences"];
                          v292 = [v291 countByEnumeratingWithState:&v407 objects:v469 count:16];
                          if (v292)
                          {
                            v293 = *v408;
                            do
                            {
                              for (k = 0; k != v292; k = k + 1)
                              {
                                if (*v408 != v293)
                                {
                                  objc_enumerationMutation(v291);
                                }

                                v295 = *(*(&v407 + 1) + 8 * k);
                                v296 = [v402 objectForKeyedSubscript:v295];
                                v297 = v296;
                                if (v296)
                                {
                                  v298 = sub_100021704(v296, v399, 1);
                                  if (v298)
                                  {
                                    v299 = [v288 objectForKeyedSubscript:v289];
                                    v300 = v299 == 0;

                                    if (v300)
                                    {
                                      v301 = objc_alloc_init(NSMutableDictionary);
                                      [v288 setObject:v301 forKeyedSubscript:v289];
                                    }

                                    v302 = [v288 objectForKeyedSubscript:v289];
                                    [v302 setObject:v298 forKeyedSubscript:v295];
                                  }
                                }
                              }

                              v292 = [v291 countByEnumeratingWithState:&v407 objects:v469 count:16];
                            }

                            while (v292);
                          }
                        }
                      }

                      v384 = [loga countByEnumeratingWithState:&v411 objects:v470 count:16];
                    }

                    while (v384);
                  }

                  [v374 setObject:v288 forKeyedSubscript:@"alignments"];
                  v286 = v372 + 1;
                }

                while ((v372 + 1) != v367);
                v285 = [v379 countByEnumeratingWithState:&v415 objects:v471 count:16];
              }

              while (v285);
            }

            if ((*(a1 + 96) & 1) == 0)
            {
              v405 = 0u;
              v406 = 0u;
              v403 = 0u;
              v404 = 0u;
              v303 = v379;
              v304 = [v303 countByEnumeratingWithState:&v403 objects:v468 count:16];
              if (v304)
              {
                v305 = *v404;
                do
                {
                  for (m = 0; m != v304; m = m + 1)
                  {
                    if (*v404 != v305)
                    {
                      objc_enumerationMutation(v303);
                    }

                    v307 = *(*(&v403 + 1) + 8 * m);
                    v308 = [v365 objectForKeyedSubscript:v307];
                    [v308 setObject:0 forKeyedSubscript:@"corrected"];
                    [v308 setObject:0 forKeyedSubscript:@"recognized"];
                    v309 = [v303 objectForKeyedSubscript:v307];
                    [v309 setObject:v308 forKeyedSubscript:@"tokens"];
                  }

                  v304 = [v303 countByEnumeratingWithState:&v403 objects:v468 count:16];
                }

                while (v304);
              }
            }

            v4 = v342;
            [v380 setObject:v379 forKeyedSubscript:@"results"];
          }

          else
          {
LABEL_338:
            v4 = v342;
          }

          goto LABEL_339;
        }

        v37 = v346;
LABEL_64:
        v346 = v37;
        if (v5)
        {
          v50 = [v325 stringByAppendingPathComponent:@"en_US_napg.json"];
          v51 = [v325 stringByAppendingPathComponent:@"vocdelta.voc"];
          v52 = [v325 stringByAppendingPathComponent:@"pg.voc"];
          v53 = [v325 stringByAppendingPathComponent:@"mrec.psh"];
          LOBYTE(v314) = 1;
          v330 = [[_EARUserProfile alloc] initWithConfiguration:v337 language:*(a1 + 40) overrides:&__NSDictionary0__struct sdapiOverrides:v50 emptyVoc:v51 pgVoc:v52 paramsetHolder:v53 isJit:v314];
        }

        else
        {
          v330 = 0;
        }

        v54 = [*(a1 + 32) objectForKeyedSubscript:@"wordConfidenceThreshold"];
        v55 = [v54 integerValue];
        if (v55)
        {
          v56 = v55;
        }

        else
        {
          v56 = 500;
        }

        v57 = [*(a1 + 32) objectForKeyedSubscript:@"utteranceConfidenceThreshold"];
        v58 = [v57 integerValue];
        if (v58)
        {
          v59 = v58;
        }

        else
        {
          v59 = 500;
        }

        v60 = [*(a1 + 32) objectForKeyedSubscript:@"scoreNbest"];
        v349 = [v60 BOOLValue];

        v61 = [*(a1 + 32) objectForKeyedSubscript:@"compress"];
        v316 = [v61 BOOLValue];

        v440 = 0;
        v441 = &v440;
        v442 = 0x3032000000;
        v443 = sub_10001BCF8;
        v444 = sub_10001BD08;
        v445 = 0;
        v62 = *(a1 + 48);
        v63 = [*(a1 + 40) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
        v439[0] = _NSConcreteStackBlock;
        v439[1] = 3221225472;
        v439[2] = sub_1000212BC;
        v439[3] = &unk_1000552A0;
        v439[4] = &v440;
        [v62 readProfileAndUserDataWithLanguage:v63 allowOverride:0 completion:v439];

        v64 = v441;
        if (*(v441 + 5))
        {
          goto LABEL_79;
        }

        v65 = AFSiriLogContextFides;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke_2";
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "%s Failed to load old type of speech profile. Trying new type.", buf, 0xCu);
        }

        v66 = [CESRUtilities speechProfilePathsWithLanguage:*(a1 + 40)];
        if ([v66 count] == 1)
        {
          v67 = [NSData alloc];
          v68 = [v66 firstObject];
          v69 = [v67 initWithContentsOfFile:v68 options:0 error:0];
          v70 = *(v441 + 5);
          *(v441 + 5) = v69;
        }

        v64 = v441;
        if (*(v441 + 5))
        {
LABEL_79:
          v71 = AFSiriLogContextFides;
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
LABEL_82:

            v438 = 0u;
            v437 = 0u;
            v436 = 0u;
            v435 = 0u;
            v323 = *(a1 + 72);
            v331 = [v323 countByEnumeratingWithState:&v435 objects:v482 count:16];
            if (v331)
            {
              v342 = 0;
              v340 = kAFAssistantErrorDomain;
              v328 = *v436;
              v400 = v56;
              v318 = EARRecognitionStatisticRecogCpuTime;
              v320 = EARRecognitionStatisticAverageActiveTokensPerFrame;
              v351 = &__NSDictionary0__struct;
              while (1)
              {
                for (n = 0; n != v331; n = n + 1)
                {
                  if (*v436 != v328)
                  {
                    objc_enumerationMutation(v323);
                  }

                  v339 = *(*(&v435 + 1) + 8 * n);
                  v76 = [*(a1 + 72) objectForKeyedSubscript:?];
                  log = [CESRFidesASRRecord recordFromData:v76];

                  v77 = AFSiriLogContextFides;
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                    *&buf[12] = 2112;
                    *&buf[14] = log;
                    _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "%s Examining localSpeechDESRecord: %@", buf, 0x16u);
                  }

                  if (!log)
                  {
                    log = AFSiriLogContextSpeech;
                    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315138;
                      *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Unable to load localSpeechDESRecord", buf, 0xCu);
                    }

                    goto LABEL_242;
                  }

                  v78 = [log concatenatedAudioPackets];
                  if (![v78 length])
                  {
                    v258 = v78;
                    v259 = AFSiriLogContextSpeech;
                    if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315138;
                      *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                      _os_log_error_impl(&_mh_execute_header, v259, OS_LOG_TYPE_ERROR, "%s Unable to load audio", buf, 0xCu);
                    }

                    goto LABEL_242;
                  }

                  v343 = v78;
                  v338 = [log task];
                  v79 = [v454[5] modelInfo];
                  v434 = 0;
                  v350 = sub_1000212CC(v79, v338, &v434);
                  v327 = v434;

                  if (!v350)
                  {
                    v260 = AFSiriLogContextFides;
                    if (os_log_type_enabled(v260, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315650;
                      *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                      *&buf[12] = 2114;
                      *&buf[14] = v338;
                      *&buf[22] = 2112;
                      v501 = v327;
                      _os_log_impl(&_mh_execute_header, v260, OS_LOG_TYPE_INFO, "%s Recognizer doesn't support the task %{public}@: %@", buf, 0x20u);
                    }

LABEL_242:
                    continue;
                  }

                  v333 = objc_alloc_init(NSMutableDictionary);
                  v336 = objc_alloc_init(NSMutableDictionary);
                  v332 = objc_alloc_init(NSMutableDictionary);
                  v329 = objc_alloc_init(NSMutableDictionary);
                  v433 = 0u;
                  v432 = 0u;
                  v431 = 0u;
                  v430 = 0u;
                  v373 = obj;
                  v355 = [v373 countByEnumeratingWithState:&v430 objects:v481 count:16];
                  if (v355)
                  {
                    v354 = *v431;
                    do
                    {
                      v392 = 0;
                      do
                      {
                        if (*v431 != v354)
                        {
                          objc_enumerationMutation(v373);
                        }

                        v80 = *(*(&v430 + 1) + 8 * v392);
                        if ([*(a1 + 48) _invalidated])
                        {
                          v261 = AFSiriLogContextFides;
                          if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136315138;
                            *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                            _os_log_impl(&_mh_execute_header, v261, OS_LOG_TYPE_INFO, "%s Interrupted evaluation redecoding", buf, 0xCu);
                          }

                          v479 = NSLocalizedDescriptionKey;
                          v480 = @"Interrupted evaluation redecoding";
                          v262 = [NSDictionary dictionaryWithObjects:&v480 forKeys:&v479 count:1];
                          v111 = [NSError errorWithDomain:v340 code:1503 userInfo:v262];
                          v398 = v262;
                          v263 = v342;
                          goto LABEL_253;
                        }

                        if (([v396 containsObject:v80] & 1) == 0)
                        {
                          v81 = AFSiriLogContextFides;
                          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136315394;
                            *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                            *&buf[12] = 2112;
                            *&buf[14] = v80;
                            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "%s Running recognition for evalName: %@", buf, 0x16u);
                          }

                          v381 = v80;

                          v398 = [v373 objectForKeyedSubscript:v80];
                          v383 = objc_alloc_init(NSMutableDictionary);
                          v82 = [v398 objectForKeyedSubscript:@"overrides"];
                          v83 = v82;
                          if (v82)
                          {
                            v84 = v82;
                          }

                          else
                          {
                            v84 = &__NSDictionary0__struct;
                          }

                          [v383 addEntriesFromDictionary:v84];

                          v85 = [v398 objectForKeyedSubscript:@"overrideFiles"];
                          v86 = *(a1 + 80);
                          v87 = v85;
                          v387 = v86;
                          v375 = v87;
                          if (v87 && [v87 count])
                          {
                            v88 = objc_alloc_init(NSMutableDictionary);
                            v505 = 0u;
                            v506 = 0u;
                            memset(v504, 0, sizeof(v504));
                            v89 = v87;
                            v90 = [v89 countByEnumeratingWithState:v504 objects:buf count:16];
                            if (v90)
                            {
                              v91 = **&v504[16];
                              while (2)
                              {
                                for (ii = 0; ii != v90; ii = ii + 1)
                                {
                                  if (**&v504[16] != v91)
                                  {
                                    objc_enumerationMutation(v89);
                                  }

                                  v93 = *(*&v504[8] + 8 * ii);
                                  v94 = [v89 objectForKeyedSubscript:v93];
                                  v95 = sub_1000214B0(v387, v94);

                                  if (!v95 || ([v95 path], v96 = objc_claimAutoreleasedReturnValue(), v97 = objc_msgSend(v96, "length") == 0, v96, v97))
                                  {
                                    v499 = NSLocalizedDescriptionKey;
                                    v507 = @"Override file is not found in attachments or device";
                                    v100 = [NSDictionary dictionaryWithObjects:&v507 forKeys:&v499 count:1];
                                    v99 = [NSError errorWithDomain:v340 code:1501 userInfo:v100];
                                    v101 = v99;

                                    v366 = 0;
                                    goto LABEL_118;
                                  }

                                  v98 = [v95 path];
                                  [v88 setObject:v98 forKeyedSubscript:v93];
                                }

                                v90 = [v89 countByEnumeratingWithState:v504 objects:buf count:16];
                                if (v90)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v366 = v88;
                            v99 = 0;
LABEL_118:
                          }

                          else
                          {
                            v99 = 0;
                            v366 = 0;
                          }

                          v102 = v99;
                          if (v102)
                          {
                            v264 = AFSiriLogContextFides;
                            if (os_log_type_enabled(v264, OS_LOG_TYPE_INFO))
                            {
                              *buf = 136315394;
                              *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                              *&buf[12] = 2112;
                              *&buf[14] = v102;
                              _os_log_impl(&_mh_execute_header, v264, OS_LOG_TYPE_INFO, "%s Failed to get override files, error: %@", buf, 0x16u);
                            }

                            v265 = v102;
                            v376 = v366;
                            v111 = v265;

LABEL_249:
                            v380 = 0;
                            v266 = v376;
LABEL_252:

                            v263 = v383;
LABEL_253:

                            v267 = 0;
                            v342 = v111;
                            goto LABEL_266;
                          }

                          if (v366)
                          {
                            v103 = v366;
                          }

                          else
                          {
                            v103 = &__NSDictionary0__struct;
                          }

                          [v383 addEntriesFromDictionary:v103];
                          if (([v351 isEqual:v383] & 1) == 0)
                          {
                            v104 = v383;

                            v105 = AFSiriLogContextFides;
                            if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                            {
                              *buf = 136315394;
                              *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                              *&buf[12] = 2112;
                              *&buf[14] = v104;
                              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_INFO, "%s Creating recognizer with overrides: %@", buf, 0x16u);
                            }

                            v106 = v454[5];
                            v454[5] = 0;

                            v107 = qword_100061620;
                            v423[0] = _NSConcreteStackBlock;
                            v423[1] = 3221225472;
                            v423[2] = sub_10002161C;
                            v423[3] = &unk_100055318;
                            v428 = &v453;
                            v424 = v324;
                            v351 = v104;
                            v425 = v351;
                            v108 = v326;
                            v109 = *(a1 + 48);
                            v426 = v108;
                            v427 = v109;
                            v429 = &v486;
                            dispatch_sync(v107, v423);
                            v110 = v454[5];
                            if (v110)
                            {
                              v111 = v342;
                            }

                            else
                            {

                              v112 = v487[5];
                              if (v112)
                              {
                                v477 = NSUnderlyingErrorKey;
                                v478 = v112;
                                v321 = [NSDictionary dictionaryWithObjects:&v478 forKeys:&v477 count:1];
                                v113 = v321;
                              }

                              else
                              {
                                v113 = 0;
                              }

                              v111 = [NSError errorWithDomain:v340 code:600 userInfo:v113];

                              if (v112)
                              {
                              }

                              v380 = 0;
                            }

                            if (!v110)
                            {
                              v265 = 0;
                              v383 = v351;
                              v266 = v366;
                              goto LABEL_252;
                            }

                            v342 = v111;
                          }

                          [v454[5] setScoreNbest:v349];
                          if (v346 && ([v398 objectForKeyedSubscript:@"usePersonalizedLM"], v114 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend(v114, "BOOLValue"), v114, v115))
                          {
                            v116 = AFSiriLogContextFides;
                            if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
                            {
                              *buf = 136315138;
                              *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke_2";
                              _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_INFO, "%s Using Personalized LM", buf, 0xCu);
                            }

                            [v454[5] setExtraLmList:v346];
                            if (v349)
                            {
                              [v454[5] setScoreNbestExtraLmList:&__NSArray0__struct];
                            }
                          }

                          else
                          {
                            v117 = AFSiriLogContextFides;
                            if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
                            {
                              *buf = 136315138;
                              *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                              _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_INFO, "%s Not using Personalized LM", buf, 0xCu);
                            }

                            [v454[5] setExtraLmList:&__NSArray0__struct];
                            if (v349)
                            {
                              [v454[5] setScoreNbestExtraLmList:v346];
                            }
                          }

                          [v454[5] setEnableSpeakerCodeTraining:0];
                          v118 = *(v441 + 5);
                          v119 = [v398 objectForKeyedSubscript:@"restoreAOT"];
                          v120 = [v119 BOOLValue];

                          if (!v120 || ([log profile], v121 = objc_claimAutoreleasedReturnValue(), v118, (v118 = v121) != 0))
                          {
                            v122 = [v398 objectForKeyedSubscript:@"disableAOT"];
                            v123 = [v122 BOOLValue];

                            if (v123)
                            {

                              v118 = 0;
                            }

                            v371 = objc_alloc_init(NSMutableDictionary);
                            v124 = [v398 objectForKeyedSubscript:@"useJIT"];
                            v125 = [v124 BOOLValue];

                            if (!v125)
                            {
                              v165 = 0;
                              goto LABEL_178;
                            }

                            v126 = AFSiriLogContextFides;
                            if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
                            {
                              *buf = 136315138;
                              *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_INFO, "%s Using JIT LME", buf, 0xCu);
                            }

                            v127 = [*(a1 + 32) objectForKeyedSubscript:@"contextualData"];
                            v128 = *(a1 + 80);
                            v129 = [log applicationName];
                            [log timestamp];
                            v131 = v130;
                            v362 = v330;
                            v132 = v128;
                            v133 = v129;
                            v368 = v350;
                            v376 = v118;
                            v388 = v371;
                            v134 = v127;
                            v135 = [v134 objectForKeyedSubscript:@"restoreJIT"];
                            v136 = 0.0;
                            if ([v135 BOOLValue])
                            {
                              v137 = +[NSDate date];
                              [v137 timeIntervalSince1970];
                              v139 = v138;

                              v136 = v139 - v131;
                            }

                            v140 = [v134 objectForKeyedSubscript:@"configurationFile"];

                            if (v330)
                            {
                              if (v132 && [v132 count] && objc_msgSend(v140, "length"))
                              {
                                v141 = sub_1000214B0(v132, v140);
                                v142 = v141;
                                if (!v141 || ([v141 path], v143 = objc_claimAutoreleasedReturnValue(), v144 = objc_msgSend(v143, "length") == 0, v143, v144))
                                {
                                  *v504 = NSLocalizedDescriptionKey;
                                  *buf = @"JIT LME: configuration file is not found in attachments or device";
                                  v244 = [NSDictionary dictionaryWithObjects:buf forKeys:v504 count:1];
                                  v166 = [NSError errorWithDomain:v340 code:1501 userInfo:v244];
                                  v245 = v166;
                                  v170 = 0;
                                }

                                else
                                {
                                  v145 = [ESContextualData alloc];
                                  v146 = [v142 path];
                                  v147 = [(ESContextualData *)v145 initWithConfiguration:v146 taskName:v368 applicationName:v133];

                                  v148 = +[NSProcessInfo processInfo];
                                  [v148 systemUptime];
                                  v150 = v149;

                                  if (!v147 || ([(ESContextualData *)v147 contextualData], v151 = objc_claimAutoreleasedReturnValue(), v152 = v151 == 0, v151, v152))
                                  {
                                    v164 = v147;
                                    v157 = 0;
                                  }

                                  else
                                  {
                                    [(ESContextualData *)v147 fetchNamedEntitiesWithTimeInterval:v136];
                                    v153 = +[NSProcessInfo processInfo];
                                    [v153 systemUptime];
                                    v155 = v154;

                                    v156 = [(ESContextualData *)v147 contextualData];
                                    v157 = [v362 createInlineLmeUserDataForContextData:v156 speechProfile:v376];

                                    v158 = +[NSProcessInfo processInfo];
                                    [v158 systemUptime];
                                    v160 = v159;

                                    if (v388)
                                    {
                                      v161 = [NSNumber numberWithDouble:(v155 - v150) * 1000.0];
                                      [v388 setObject:v161 forKeyedSubscript:@"jitQueryDurationInMs"];

                                      v162 = [NSNumber numberWithDouble:(v160 - v155) * 1000.0];
                                      [v388 setObject:v162 forKeyedSubscript:@"jitLmeDurationInMs"];

                                      v163 = [(ESContextualData *)v147 metrics];
                                      [v388 setObject:v163 forKeyedSubscript:@"jitDataStats"];
                                    }

                                    v164 = v147;
                                  }

                                  v244 = v157;

                                  v166 = 0;
                                  v170 = v244;
                                }

LABEL_172:
                                v171 = v166;

                                if (v170)
                                {
                                  v172 = AFSiriLogContextFides;
                                  if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 136315394;
                                    *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                                    *&buf[12] = 2112;
                                    *&buf[14] = v388;
                                    _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_INFO, "%s JIT LME: Injecting JIT data, jitStats: %@", buf, 0x16u);
                                  }
                                }

                                else if (v171)
                                {
                                  v269 = AFSiriLogContextFides;
                                  if (os_log_type_enabled(v269, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 136315394;
                                    *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                                    *&buf[12] = 2112;
                                    *&buf[14] = v171;
                                    _os_log_impl(&_mh_execute_header, v269, OS_LOG_TYPE_INFO, "%s JIT LME: Error fetching JIT data, error: %@", buf, 0x16u);
                                  }

                                  v111 = v171;
                                  v265 = v366;

                                  goto LABEL_249;
                                }

                                v165 = v170;
LABEL_178:
                                v345 = v165;
                                [v454[5] setJitProfileData:?];
                                v173 = v454[5];
                                v174 = *(a1 + 40);
                                v389 = [log samplingRate];
                                v363 = v173;
                                v369 = v118;
                                v360 = v343;
                                v357 = v174;
                                v358 = v350;
                                v175 = objc_alloc_init(NSMutableArray);
                                v176 = objc_alloc_init(NSMutableDictionary);
                                v177 = +[NSProcessInfo processInfo];
                                [v177 systemUptime];
                                v335 = v178;

                                v356 = [v363 recognitionResultsWithAudioData:v360 userProfileData:v369 language:v357 task:v358 samplingRate:v389 extraLanguageModel:0];
                                v179 = +[NSProcessInfo processInfo];
                                [v179 systemUptime];
                                v334 = v180;

                                if (v356)
                                {
                                  v181 = [v356 firstObject];
                                  v377 = [v181 tokens];

                                  v341 = [v377 count];
                                  if (v341)
                                  {
                                    v505 = 0u;
                                    v506 = 0u;
                                    memset(v504, 0, sizeof(v504));
                                    v182 = v377;
                                    v183 = [v182 countByEnumeratingWithState:v504 objects:buf count:16];
                                    if (v183)
                                    {
                                      v184 = **&v504[16];
                                      v185 = 0.0;
                                      v187 = 10000.0;
                                      v186 = -10000.0;
                                      v188 = 0.0;
                                      v189 = 0.0;
                                      v190 = 0.0;
                                      do
                                      {
                                        for (jj = 0; jj != v183; jj = jj + 1)
                                        {
                                          if (**&v504[16] != v184)
                                          {
                                            objc_enumerationMutation(v182);
                                          }

                                          v192 = *(*&v504[8] + 8 * jj);
                                          [v192 confidence];
                                          v194 = v193;
                                          v195 = [v192 tokenName];
                                          [v175 addObject:v195];

                                          v196 = [v192 tokenName];
                                          v197 = [v196 rangeOfString:@"\"] == 0x7FFFFFFFFFFFFFFFLL;

                                          if (!v197)
                                          {
                                            v188 = v188 + 1.0;
                                          }

                                          [v192 confidence];
                                          if (v198 < v187)
                                          {
                                            [v192 confidence];
                                            v187 = v199;
                                          }

                                          [v192 confidence];
                                          if (v200 > v186)
                                          {
                                            [v192 confidence];
                                            v186 = v201;
                                          }

                                          [v192 confidence];
                                          v190 = v190 + v194;
                                          v189 = v189 + 1.0;
                                          if (v202 > v400)
                                          {
                                            v185 = v185 + 1.0;
                                          }
                                        }

                                        v183 = [v182 countByEnumeratingWithState:v504 objects:buf count:16];
                                      }

                                      while (v183);
                                    }

                                    else
                                    {
                                      v185 = 0.0;
                                      v187 = 10000.0;
                                      v186 = -10000.0;
                                      v188 = 0.0;
                                      v189 = 0.0;
                                      v190 = 0.0;
                                    }

                                    v207 = [NSNumber numberWithDouble:v189];
                                    [v176 setObject:v207 forKey:@"UtteranceLength"];

                                    v208 = [NSNumber numberWithDouble:v188];
                                    [v176 setObject:v208 forKey:@"NumberOfNonTerminals"];

                                    v209 = [NSNumber numberWithDouble:v187];
                                    [v176 setObject:v209 forKey:@"ConfidenceMin"];

                                    v210 = [NSNumber numberWithDouble:v186];
                                    [v176 setObject:v210 forKey:@"ConfidenceMax"];

                                    v211 = [NSNumber numberWithDouble:v185];
                                    [v176 setObject:v211 forKey:@"WordsAboveThreshold"];

                                    v212 = [NSNumber numberWithDouble:v190 / v341];
                                    [v176 setObject:v212 forKey:@"ConfidenceMean"];

                                    v213 = [v363 recognitionStatistics];
                                    v214 = 0.0;
                                    if (v190 / v341 >= v59)
                                    {
                                      v214 = 1.0;
                                    }

                                    v215 = [NSNumber numberWithDouble:v214];
                                    [v176 setObject:v215 forKey:@"UtteranceAboveThreshold"];

                                    if (v389)
                                    {
                                      v216 = ([v360 length] >> 1) / v389;
                                      if (v216 * 1000.0 != 0.0)
                                      {
                                        v217 = [v213 objectForKey:v318];
                                        [v217 doubleValue];
                                        v219 = v218;

                                        v220 = [NSNumber numberWithDouble:v219 / (v216 * 1000.0)];
                                        [v176 setObject:v220 forKey:@"RTF"];

                                        v221 = [NSNumber numberWithDouble:(v334 - v335) / v216];
                                        [v176 setObject:v221 forKey:@"WallRTF"];

                                        v222 = [NSNumber numberWithDouble:v334 - v335];
                                        [v176 setObject:v222 forKey:@"DecodeDuration"];
                                      }
                                    }

                                    v223 = [v213 objectForKey:v320];
                                    [v176 setValue:v223 forKey:@"AverageActiveTokensPerFrame"];
                                  }

                                  else
                                  {
                                    [v176 setObject:@"Empty recognition Result" forKey:@"Error"];
                                  }

                                  v224 = v175;
                                  v225 = v377;
                                  v390 = v176;
                                  v204 = 0;
                                  v206 = v175;
                                  v203 = v377;
                                }

                                else
                                {
                                  *v504 = NSLocalizedFailureReasonErrorKey;
                                  *buf = @"Recipe evaluation failed";
                                  v203 = [NSDictionary dictionaryWithObjects:buf forKeys:v504 count:1];
                                  v204 = [NSError errorWithDomain:v340 code:1108 userInfo:v203];
                                  v205 = v204;
                                  v206 = 0;
                                  v377 = 0;
                                  v390 = 0;
                                }

                                v364 = v204;
                                v226 = v206;
                                v378 = v377;
                                v361 = [v454[5] recognitionUtterenceStatistics];
                                [v454[5] cancelRecognition];
                                if (!v364 && v390 && v226 && v378)
                                {
                                  v227 = objc_alloc_init(NSMutableDictionary);
                                  v228 = [v390 objectForKeyedSubscript:@"WallRTF"];
                                  [v227 setObject:v228 forKeyedSubscript:@"WallRTF"];

                                  v229 = [v390 objectForKeyedSubscript:@"DecodeDuration"];
                                  [v227 setObject:v229 forKeyedSubscript:@"DecodeDuration"];

                                  v230 = [v390 objectForKeyedSubscript:@"AverageActiveTokensPerFrame"];
                                  [v227 setObject:v230 forKeyedSubscript:@"AverageActiveTokensPerFrame"];

                                  v231 = [v361 objectForKeyedSubscript:@"lm_interp_weights"];
                                  [v227 setObject:v231 forKeyedSubscript:@"lm_interp_weights"];

                                  v232 = [v371 objectForKeyedSubscript:@"jitQueryDurationInMs"];
                                  [v227 setObject:v232 forKeyedSubscript:@"jitQueryDurationInMs"];

                                  v233 = [v371 objectForKeyedSubscript:@"jitLmeDurationInMs"];
                                  [v227 setObject:v233 forKeyedSubscript:@"jitLmeDurationInMs"];

                                  v234 = [v371 objectForKeyedSubscript:@"jitDataStats"];
                                  [v227 setObject:v234 forKeyedSubscript:@"jitDataStats"];

                                  [v333 setObject:v227 forKeyedSubscript:v381];
                                  [v336 setObject:v226 forKeyedSubscript:v381];
                                  v235 = v378;
                                  v236 = [CESRUtilities afTokensForEARTokens:v235 removeSpaceBefore:0];
                                  v237 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v235, "count")}];
                                  v505 = 0u;
                                  v506 = 0u;
                                  memset(v504, 0, sizeof(v504));
                                  v238 = v236;
                                  v239 = [v238 countByEnumeratingWithState:v504 objects:buf count:16];
                                  if (v239)
                                  {
                                    v240 = **&v504[16];
                                    do
                                    {
                                      for (kk = 0; kk != v239; kk = kk + 1)
                                      {
                                        if (**&v504[16] != v240)
                                        {
                                          objc_enumerationMutation(v238);
                                        }

                                        v242 = [*(*&v504[8] + 8 * kk) dictionaryRepresentation];
                                        [v237 addObject:v242];
                                      }

                                      v239 = [v238 countByEnumeratingWithState:v504 objects:buf count:16];
                                    }

                                    while (v239);
                                  }

                                  [v332 setObject:v237 forKeyedSubscript:v381];
                                  v243 = [v454[5] recognitionUtteranceInfos];
                                  [v329 setObject:v243 forKeyedSubscript:v381];
                                }

                                else
                                {
                                  v227 = AFSiriLogContextFides;
                                  if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 136315650;
                                    *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                                    *&buf[12] = 2112;
                                    *&buf[14] = v381;
                                    *&buf[22] = 2112;
                                    v501 = v364;
                                    _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_INFO, "%s No results for evalName %@: %@", buf, 0x20u);
                                  }
                                }

                                v168 = v369;
LABEL_221:

                                goto LABEL_222;
                              }

                              *v504 = NSLocalizedDescriptionKey;
                              *buf = @"JIT LME: required configuration/file is missing";
                              v142 = [NSDictionary dictionaryWithObjects:buf forKeys:v504 count:1];
                              v166 = [NSError errorWithDomain:v340 code:1501 userInfo:v142];
                              v167 = v166;
                            }

                            else
                            {
                              *v504 = NSLocalizedDescriptionKey;
                              *buf = @"JIT LME: JIT profile builder is not initialized";
                              v142 = [NSDictionary dictionaryWithObjects:buf forKeys:v504 count:1];
                              v166 = [NSError errorWithDomain:v340 code:1501 userInfo:v142];
                              v169 = v166;
                            }

                            v170 = 0;
                            goto LABEL_172;
                          }

                          v168 = AFSiriLogContextFides;
                          if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136315138;
                            *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
                            _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_INFO, "%s Unable to restore speech profile", buf, 0xCu);
                          }

                          goto LABEL_221;
                        }

LABEL_222:
                        v392 = v392 + 1;
                      }

                      while (v392 != v355);
                      v246 = [v373 countByEnumeratingWithState:&v430 objects:v481 count:16];
                      v355 = v246;
                    }

                    while (v246);
                  }

                  v247 = [log recognizedText];
                  [v336 setObject:v247 forKeyedSubscript:@"recognized"];

                  [v352 setObject:v336 forKeyedSubscript:v339];
                  [v365 setObject:v332 forKeyedSubscript:v339];
                  v248 = [log correctedTextV2];
                  [v353 setObject:v248 forKeyedSubscript:v339];

                  v373 = objc_alloc_init(NSMutableDictionary);
                  v249 = [log interactionIdentifier];
                  [v373 setObject:v249 forKeyedSubscript:@"interactionId"];

                  v250 = [log asrSelfComponentIdentifier];
                  [v373 setObject:v250 forKeyedSubscript:@"asrSelfComponentId"];

                  [v373 setObject:*(a1 + 40) forKeyedSubscript:@"language"];
                  [v373 setObject:v319 forKeyedSubscript:@"asset"];
                  v251 = [log applicationName];
                  [v373 setObject:v251 forKeyedSubscript:@"applicationName"];

                  [log timestamp];
                  v252 = [NSNumber numberWithDouble:?];
                  [v373 setObject:v252 forKeyedSubscript:@"timestamp"];

                  [v373 setObject:v333 forKeyedSubscript:@"metrics"];
                  if ((*(a1 + 96) & 1) == 0)
                  {
                    if (v316)
                    {
                      *v504 = 0;
                      v253 = [NSJSONSerialization dataWithJSONObject:v329 options:0 error:v504];
                      v254 = *v504;
                      if (v253)
                      {
                        v507 = 0;
                        v255 = [v253 compressedDataUsingAlgorithm:3 error:&v507];
                        v256 = v507;
                        if (v255)
                        {
                          v257 = [v255 base64EncodedStringWithOptions:0];
                        }

                        else
                        {
                          v270 = AFSiriLogContextSpeech;
                          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136315394;
                            *&buf[4] = "zlibCompressedJson";
                            *&buf[12] = 2112;
                            *&buf[14] = v256;
                            _os_log_error_impl(&_mh_execute_header, v270, OS_LOG_TYPE_ERROR, "%s Compression failed: %@", buf, 0x16u);
                          }

                          v257 = 0;
                        }
                      }

                      else
                      {
                        v268 = AFSiriLogContextSpeech;
                        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          *&buf[4] = "zlibCompressedJson";
                          *&buf[12] = 2112;
                          *&buf[14] = v254;
                          _os_log_error_impl(&_mh_execute_header, v268, OS_LOG_TYPE_ERROR, "%s JSON serialization failed: %@", buf, 0x16u);
                        }

                        v257 = 0;
                      }

                      [v373 setObject:v257 forKeyedSubscript:@"uttInfosCompressed"];
                    }

                    else
                    {
                      [v373 setObject:v329 forKeyedSubscript:@"uttInfos"];
                    }
                  }

                  [v348 setObject:v373 forKeyedSubscript:v339];
                  v267 = 1;
LABEL_266:

                  if ((v267 & 1) == 0)
                  {
                    v38 = 0;
                    goto LABEL_272;
                  }
                }

                v331 = [v323 countByEnumeratingWithState:&v435 objects:v482 count:16];
                if (!v331)
                {
                  v38 = 1;
                  goto LABEL_272;
                }
              }
            }

            v342 = 0;
            v38 = 1;
            v351 = &__NSDictionary0__struct;
LABEL_272:

            _Block_object_dispose(&v440, 8);
            goto LABEL_274;
          }

          v72 = [*(v64 + 5) length];
          *buf = 136315394;
          *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
          *&buf[12] = 2048;
          *&buf[14] = v72;
          v73 = "%s Loaded speech profile: %lu bytes";
          v74 = v71;
          v75 = 22;
        }

        else
        {
          v71 = AFSiriLogContextFides;
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            goto LABEL_82;
          }

          *buf = 136315138;
          *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
          v73 = "%s Unable to load speech profile";
          v74 = v71;
          v75 = 12;
        }

        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, v73, buf, v75);
        goto LABEL_82;
      }
    }

    else
    {
      if (v25)
      {
        *v504 = 136315138;
        *&v504[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Attempting to load user's Personalized LM", v504, 0xCu);
      }

      *v504 = 0;
      *&v504[8] = v504;
      *&v504[16] = 0x2020000000;
      *&v504[24] = 0;
      v440 = 0;
      v441 = &v440;
      v442 = 0x2020000000;
      v443 = 0;
      v446[0] = _NSConcreteStackBlock;
      v446[1] = 3221225472;
      v446[2] = sub_100021240;
      v446[3] = &unk_1000552F0;
      v40 = *(a1 + 48);
      v446[5] = buf;
      v446[4] = v40;
      v446[6] = &v453;
      v446[7] = v504;
      v446[8] = &v440;
      dispatch_sync(qword_100061620, v446);
      LODWORD(v41) = *(*&v504[8] + 24);
      v42 = [NSNumber numberWithFloat:v41];
      [v380 setObject:v42 forKeyedSubscript:@"personalizedLMWeight"];

      v43 = [NSNumber numberWithDouble:v441[3]];
      [v380 setObject:v43 forKeyedSubscript:@"personalizedLMAge"];

      _Block_object_dispose(&v440, 8);
      _Block_object_dispose(v504, 8);
    }

    v315 = 0;
    goto LABEL_53;
  }

  v8 = *v465;
LABEL_6:
  v9 = 0;
  while (1)
  {
    if (*v465 != v8)
    {
      objc_enumerationMutation(obj);
    }

    v344 = [obj objectForKeyedSubscript:*(*(&v464 + 1) + 8 * v9)];
    v463 = 0u;
    v462 = 0u;
    v461 = 0u;
    v460 = 0u;
    v10 = [v344 objectForKeyedSubscript:@"alignmentReferences"];
    v11 = [v10 countByEnumeratingWithState:&v460 objects:v496 count:16];
    v395 = v10;
    if (v11)
    {
      break;
    }

LABEL_19:

    v16 = [v344 objectForKeyedSubscript:@"usePersonalizedLM"];
    v17 = [v16 BOOLValue];

    v18 = [v344 objectForKeyedSubscript:@"useJIT"];
    LOBYTE(v16) = [v18 BOOLValue];

    v6 |= v17;
    v5 |= v16;
    if (++v9 == v7)
    {
      v7 = [obj countByEnumeratingWithState:&v464 objects:v497 count:16];
      if (!v7)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }
  }

  v12 = *v461;
LABEL_11:
  v13 = 0;
  while (1)
  {
    if (*v461 != v12)
    {
      objc_enumerationMutation(v395);
    }

    v14 = *(*(&v460 + 1) + 8 * v13);
    v15 = [obj objectForKeyedSubscript:v14];
    if (!v15)
    {
      break;
    }

LABEL_17:
    if (v11 == ++v13)
    {
      v11 = [v395 countByEnumeratingWithState:&v460 objects:v496 count:16];
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }
  }

  if ([v396 containsObject:v14])
  {
    goto LABEL_17;
  }

  v30 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v14;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s Unknown evaluation name found in alignmentReferences: %@", buf, 0x16u);
  }

  v337 = [NSString stringWithFormat:@"Unknown evaluation name found in alignmentReferences: %@", v14];

  v494 = NSLocalizedDescriptionKey;
  v495 = v337;
  v31 = [NSDictionary dictionaryWithObjects:&v495 forKeys:&v494 count:1];
  v4 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1501 userInfo:v31];
  v3 = 0;

LABEL_340:
  v380 = obj;
LABEL_341:

  (*(*(a1 + 88) + 16))();
}

void sub_100020C10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  if (a2)
  {
    v54 = objc_begin_catch(a1);
    if (a2 == 2)
    {
      v55 = v54;
      v56 = AFSiriLogContextFides;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        LODWORD(STACK[0xA70]) = 136315394;
        STACK[0xA74] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
        LOWORD(STACK[0xA7C]) = 2112;
        STACK[0xA7E] = v55;
        _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%s Exception evaluating recipe: %@", &STACK[0xA70], 0x16u);
      }

      STACK[0x668] = @"name";
      v57 = [v55 name];
      STACK[0x680] = v57;
      STACK[0x670] = @"callStackReturnAddresses";
      v58 = [v55 callStackReturnAddresses];
      STACK[0x688] = v58;
      STACK[0x678] = @"callStackSymbols";
      v59 = [v55 callStackSymbols];
      STACK[0x690] = v59;
      v60 = [NSDictionary dictionaryWithObjects:&STACK[0x680] forKeys:&STACK[0x668] count:3];
      v61 = [NSMutableDictionary dictionaryWithDictionary:v60];

      v62 = [v55 reason];

      if (v62)
      {
        v63 = [v55 reason];
        [v61 setObject:v63 forKeyedSubscript:@"reason"];
      }

      v64 = [v55 userInfo];

      if (v64)
      {
        v65 = [v55 userInfo];
        [v61 setObject:v65 forKeyedSubscript:@"userInfo"];
      }

      v66 = [NSError alloc];
      [v66 initWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v61];

      objc_end_catch();
    }

    else
    {
      v67 = AFSiriLogContextFides;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        LODWORD(STACK[0xA70]) = 136315138;
        STACK[0xA74] = "[ESConnection runEvaluationWithDESRecordDatas:language:recipe:attachments:fidesPersonalizedLMPath:fidesPersonalizedLMTrainingAsset:scrubResult:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%s Unknown exception evaluating recipe", &STACK[0xA70], 0xCu);
      }

      v68 = [NSError alloc];
      [v68 initWithDomain:kAFAssistantErrorDomain code:1503 userInfo:&off_100058660];

      objc_end_catch();
    }

    v69 = STACK[0x230];
    JUMPOUT(0x1000209DCLL);
  }

  _Unwind_Resume(a1);
}

void *sub_100021144(void *result)
{
  if ((*(result[4] + 96) & 1) == 0)
  {
    v1 = result;
    v2 = result[5];
    v3 = result[6];
    v4 = [NSURL fileURLWithPath:result[7]];
    v5 = *(v1[4] + 26);
    v6 = *(v1[9] + 8);
    obj = *(v6 + 40);
    BYTE1(v10) = v5;
    LOBYTE(v10) = 0;
    v7 = [ESConnection _speechRecognizerWithAssetConfig:v2 geoLMRegionId:0 enableITN:0 overrides:v3 modelOverrideURL:v4 preloadModels:1 requestSource:0 enableParallelLoading:v10 isHighPriority:0 geoLMLoadedOut:&obj error:?];
    objc_storeStrong((v6 + 40), obj);
    v8 = *(v1[8] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    return objc_storeWeak((v1[4] + 272), *(*(v1[8] + 8) + 40));
  }

  return result;
}

uint64_t sub_100021240(uint64_t a1)
{
  v2 = [*(a1 + 32) personalizedLMWithTask:@"Dictation" applicationName:@"com.apple.MobileSMS" recognizer:*(*(*(a1 + 48) + 8) + 40) weightOut:*(*(a1 + 56) + 8) + 24 ageOut:*(*(a1 + 64) + 8) + 24];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void *sub_1000212CC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 tasks];
  v8 = v6;
  if ([v7 containsObject:v8])
  {
    v9 = v8;
LABEL_3:
    a3 = v9;
    v10 = v9;
    goto LABEL_10;
  }

  if ([v8 isEqualToString:CoreEmbeddedSpeechRecognizerTaskSiriDictation])
  {
    v11 = CoreEmbeddedSpeechRecognizerTaskDictation;
    if ([v7 containsObject:CoreEmbeddedSpeechRecognizerTaskDictation])
    {
      v12 = v11;

      v9 = v12;
      goto LABEL_3;
    }
  }

  if (a3)
  {
    v13 = kAFAssistantErrorDomain;
    v18 = NSLocalizedFailureReasonErrorKey;
    v14 = [v5 language];
    v15 = [NSString stringWithFormat:@"Task %@ not available for %@, supported tasks are %@", v8, v14, v7];
    v19 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *a3 = [NSError errorWithDomain:v13 code:1113 userInfo:v16];

    a3 = 0;
  }

  v10 = v8;
LABEL_10:

  return a3;
}

id sub_1000214B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && [v4 length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 lastPathComponent];
          v12 = [v11 isEqualToString:v5];

          if (v12)
          {
            v7 = v10;
            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10002161C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [NSURL fileURLWithPath:a1[6]];
  v5 = *(a1[7] + 26);
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  BYTE1(v11) = v5;
  LOBYTE(v11) = 0;
  v7 = [ESConnection _speechRecognizerWithAssetConfig:v2 geoLMRegionId:0 enableITN:0 overrides:v3 modelOverrideURL:v4 preloadModels:1 requestSource:0 enableParallelLoading:v11 isHighPriority:0 geoLMLoadedOut:&obj error:?];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return objc_storeWeak((a1[7] + 272), *(*(a1[8] + 8) + 40));
}

id sub_100021704(void *a1, void *a2, int a3)
{
  v4 = a1;
  v64 = a2;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  if ([v4 count] != -1)
  {
    v7 = 0;
    do
    {
      v8 = objc_alloc_init(ESAlignmentState);
      [(ESAlignmentState *)v8 setNumberOfInsertions:0];
      [(ESAlignmentState *)v8 setNumberOfSubstitutions:0];
      [(ESAlignmentState *)v8 setNumberOfDeletions:v7];
      [(ESAlignmentState *)v8 setTotalCost:v7];
      [v5 addObject:v8];
      v9 = objc_alloc_init(ESAlignmentState);
      [v6 addObject:v9];

      ++v7;
    }

    while (v7 < [v4 count] + 1);
  }

  v65 = 0;
  v62 = [NSRegularExpression regularExpressionWithPattern:@"\\\\\\S*$" options:0 error:&v65];
  v54 = v65;
  v61 = v4;
  if ([v64 count])
  {
    v55 = 1;
    v57 = v5;
    v58 = v6;
    do
    {
      v10 = [v5 objectAtIndexedSubscript:0];
      v11 = [v10 copy];
      [v6 setObject:v11 atIndexedSubscript:0];

      v12 = [v6 objectAtIndexedSubscript:0];
      [v12 incrementInsertions];

      v13 = [v6 objectAtIndexedSubscript:0];
      [v13 incrementCost];

      if ([v4 count])
      {
        v14 = 1;
        do
        {
          v15 = [v5 objectAtIndexedSubscript:v14];
          v16 = [v15 totalCost];

          v17 = [v6 objectAtIndexedSubscript:v14 - 1];
          v18 = [v17 totalCost];

          v19 = [v5 objectAtIndexedSubscript:v14 - 1];
          v20 = [v19 totalCost];

          v21 = [v64 objectAtIndexedSubscript:v55 - 1];
          v22 = [v4 objectAtIndexedSubscript:v14 - 1];
          if (a3)
          {
            v23 = [v21 lowercaseString];

            v24 = [v22 lowercaseString];

            v21 = v23;
            v22 = v24;
          }

          v25 = [v62 stringByReplacingMatchesInString:v21 options:0 range:0 withTemplate:{objc_msgSend(v21, "length"), &stru_100055AC8}];

          v26 = [v62 stringByReplacingMatchesInString:v22 options:0 range:0 withTemplate:{objc_msgSend(v22, "length"), &stru_100055AC8}];

          v27 = &v20[[v25 isEqualToString:v26] ^ 1];
          v28 = v16;
          v29 = v27 <= v16;
          v30 = v18;
          if (v29 && v27 <= v18)
          {
            v5 = v57;
            v31 = [v57 objectAtIndexedSubscript:v14 - 1];
            v32 = [v31 copy];
            v6 = v58;
            [v58 setObject:v32 atIndexedSubscript:v14];

            if (([v25 isEqualToString:v26] & 1) == 0)
            {
              v33 = [v58 objectAtIndexedSubscript:v14];
              [v33 incrementSubstitutions];
            }

            v34 = [v58 objectAtIndexedSubscript:v14];
            [v34 setTotalCost:v27];
          }

          else
          {
            v5 = v57;
            if (v18 >= v28)
            {
              v38 = [v57 objectAtIndexedSubscript:v14];
              v39 = [v38 copy];
              v6 = v58;
              [v58 setObject:v39 atIndexedSubscript:v14];

              v40 = [v58 objectAtIndexedSubscript:v14];
              [v40 setTotalCost:v28 + 1];

              v34 = [v58 objectAtIndexedSubscript:v14];
              [v34 incrementInsertions];
            }

            else
            {
              v6 = v58;
              v35 = [v58 objectAtIndexedSubscript:v14 - 1];
              v36 = [v35 copy];
              [v58 setObject:v36 atIndexedSubscript:v14];

              v37 = [v58 objectAtIndexedSubscript:v14];
              [v37 setTotalCost:v30 + 1];

              v34 = [v58 objectAtIndexedSubscript:v14];
              [v34 incrementDeletions];
            }
          }

          ++v14;
          v4 = v61;
        }

        while (v14 <= [v61 count]);
      }

      if ([v5 count])
      {
        v41 = 0;
        do
        {
          v42 = [v6 objectAtIndexedSubscript:v41];
          v43 = [v42 copy];
          [v5 setObject:v43 atIndexedSubscript:v41];

          ++v41;
        }

        while (v41 < [v5 count]);
      }

      ++v55;
    }

    while (v55 <= [v64 count]);
  }

  if ([v5 count])
  {
    v44 = [v5 count] - 1;
    v66[0] = @"Insertions";
    v45 = [v5 objectAtIndexedSubscript:v44];
    v63 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v45 numberOfInsertions]);
    v67[0] = v63;
    v66[1] = @"Deletions";
    v60 = [v5 objectAtIndexedSubscript:v44];
    v56 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v60 numberOfDeletions]);
    v67[1] = v56;
    v66[2] = @"Substitutions";
    v46 = [v5 objectAtIndexedSubscript:v44];
    +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v46 numberOfSubstitutions]);
    v48 = v47 = v5;
    v67[2] = v48;
    v66[3] = @"EditDistance";
    v49 = [v47 objectAtIndexedSubscript:v44];
    v50 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v49 totalCost]);
    v67[3] = v50;
    v66[4] = @"ReferenceSize";
    v4 = v61;
    v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v61 count]);
    v67[4] = v51;
    v52 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:5];

    v5 = v47;
  }

  else
  {
    v68[0] = @"Insertions";
    v68[1] = @"Deletions";
    v69[0] = &off_100058538;
    v69[1] = &off_100058538;
    v68[2] = @"Substitutions";
    v68[3] = @"EditDistance";
    v69[2] = &off_100058538;
    v69[3] = &off_100058538;
    v68[4] = @"ReferenceSize";
    v45 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
    v69[4] = v45;
    v52 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:5];
  }

  return v52;
}

void sub_1000223C0(void *a1)
{
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = sub_10001BCF8;
  v153 = sub_10001BD08;
  v154 = 0;
  v2 = [[SFEntitledAssetConfig alloc] initWithLanguage:a1[4] task:0];
  v143 = 0;
  v144 = &v143;
  v145 = 0x3032000000;
  v146 = sub_10001BCF8;
  v147 = sub_10001BD08;
  v148 = 0;
  v3 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002370C;
  block[3] = &unk_100055278;
  v141 = &v143;
  v4 = v2;
  v5 = a1[5];
  v99 = v4;
  v139 = v4;
  v140 = v5;
  v142 = &v149;
  dispatch_sync(v3, block);
  if (v144[5])
  {
    v108 = a1;
    v6 = +[ESAssetManager sharedInstance];
    v7 = (v150 + 5);
    obj = v150[5];
    v98 = [v6 installedQuasarModelPathForAssetConfig:v99 error:&obj];
    objc_storeStrong(v7, obj);

    v8 = [[_EARQuasarTokenizer alloc] initWithModelRoot:v98];
    if (v8)
    {
      v100 = +[NSMutableArray array];
      *v172 = 0;
      *&v172[8] = v172;
      *&v172[16] = 0x3032000000;
      v173 = sub_10001BCF8;
      v174 = sub_10001BD08;
      v175 = 0;
      v9 = v108[5];
      v10 = [v108[4] stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v136[0] = _NSConcreteStackBlock;
      v136[1] = 3221225472;
      v136[2] = sub_100023790;
      v136[3] = &unk_1000552A0;
      v136[4] = v172;
      [v9 readProfileAndUserDataWithLanguage:v10 allowOverride:0 completion:v136];

      v11 = *&v172[8];
      if (*(*&v172[8] + 40))
      {
        goto LABEL_9;
      }

      v12 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke_2";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Failed to load old type of speech profile. Trying new type.", buf, 0xCu);
      }

      v13 = [CESRUtilities speechProfilePathsWithLanguage:v108[4]];
      if ([v13 count] == 1)
      {
        v14 = [NSData alloc];
        v15 = [v13 firstObject];
        v16 = [v14 initWithContentsOfFile:v15 options:0 error:0];
        v17 = *(*&v172[8] + 40);
        *(*&v172[8] + 40) = v16;
      }

      v11 = *&v172[8];
      if (*(*&v172[8] + 40))
      {
LABEL_9:
        v18 = AFSiriLogContextFides;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [*(v11 + 40) length];
          *buf = 136315394;
          *&buf[4] = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
          *&buf[12] = 2048;
          *&buf[14] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Loaded speech profile: %lu bytes", buf, 0x16u);
        }

        v20 = v108;
      }

      else
      {
        v88 = AFSiriLogContextFides;
        v20 = v108;
        if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "%s Unable to load speech profile", buf, 0xCu);
        }
      }

      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v101 = v20[6];
      v21 = [v101 countByEnumeratingWithState:&v132 objects:v171 count:16];
      if (!v21)
      {
LABEL_81:

        v155[0] = @"modelVersion";
        v75 = [v144[5] modelInfo];
        v76 = [v75 version];
        v155[1] = @"results";
        v156[0] = v76;
        v156[1] = v100;
        v101 = [NSDictionary dictionaryWithObjects:v156 forKeys:v155 count:2];

        (*(v108[9] + 16))();
        goto LABEL_89;
      }

      v102 = *v133;
LABEL_14:
      v107 = 0;
      while (1)
      {
        if (*v133 != v102)
        {
          objc_enumerationMutation(v101);
        }

        v22 = *(*(&v132 + 1) + 8 * v107);
        if ([v108[5] _invalidated])
        {
          break;
        }

        v23 = [v108[6] objectForKeyedSubscript:v22];
        v109 = [CESRFidesASRRecord recordFromData:v23];

        v24 = AFSiriLogContextFides;
        if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v109;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Examining localSpeechDESRecord: %@", buf, 0x16u);
        }

        if (v109)
        {
          v104 = [v108[7] objectForKeyedSubscript:v22];
          if (v104)
          {
            v105 = objc_opt_new();
            v106 = [v109 recognizedText];
            v25 = [v109 correctedText];
            v103 = [v8 tokenize:v25];

            if (v106 && [v106 count] && v103 && objc_msgSend(v103, "count"))
            {
              v26 = [v109 task];
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v166 = sub_10001BCF8;
              v167 = sub_10001BD08;
              v168 = 0;
              v27 = qword_100061620;
              v123[0] = _NSConcreteStackBlock;
              v123[1] = 3221225472;
              v123[2] = sub_1000237A0;
              v123[3] = &unk_100055228;
              v128 = buf;
              v129 = &v143;
              v124 = v108[7];
              v125 = v22;
              v130 = v172;
              v126 = v108[4];
              v28 = v26;
              v29 = v108[10];
              v97 = v28;
              v127 = v28;
              v131 = v29;
              dispatch_sync(v27, v123);
              v30 = AFSiriLogContextFides;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = *(*&buf[8] + 40);
                v32 = [v31 count];
                *v159 = 136315650;
                v160 = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke_2";
                v161 = 2112;
                v162 = v31;
                v163 = 2048;
                v164 = v32;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s Recognition result %@, %lu", v159, 0x20u);
              }

              v33 = objc_opt_new();
              v34 = *(*&buf[8] + 40);
              if (v34 && [v34 count])
              {
                v35 = [*(*&buf[8] + 40) firstObject];
                v122 = 0u;
                v120 = 0u;
                v121 = 0u;
                v119 = 0u;
                v95 = v35;
                v36 = [v35 preITNTokens];
                v37 = [v36 countByEnumeratingWithState:&v119 objects:v158 count:16];
                if (v37)
                {
                  v38 = *v120;
                  v110 = v36;
                  do
                  {
                    for (i = 0; i != v37; i = i + 1)
                    {
                      if (*v120 != v38)
                      {
                        objc_enumerationMutation(v110);
                      }

                      v40 = [*(*(&v119 + 1) + 8 * i) tokenName];
                      v41 = [v40 componentsSeparatedByString:@" "];

                      v42 = v21;
                      v43 = v8;
                      v117 = 0u;
                      v118 = 0u;
                      v115 = 0u;
                      v116 = 0u;
                      v44 = v41;
                      v45 = [v44 countByEnumeratingWithState:&v115 objects:v157 count:16];
                      if (v45)
                      {
                        v46 = *v116;
                        do
                        {
                          for (j = 0; j != v45; j = j + 1)
                          {
                            if (*v116 != v46)
                            {
                              objc_enumerationMutation(v44);
                            }

                            [v33 addObject:*(*(&v115 + 1) + 8 * j)];
                          }

                          v45 = [v44 countByEnumeratingWithState:&v115 objects:v157 count:16];
                        }

                        while (v45);
                      }

                      v8 = v43;
                      v21 = v42;
                    }

                    v36 = v110;
                    v37 = [v110 countByEnumeratingWithState:&v119 objects:v158 count:16];
                  }

                  while (v37);
                }

                v48 = *(v108 + 88) ^ 1;
                v49 = sub_100021704(v33, v106, v48 & 1);
                v50 = AFSiriLogContextFides;
                if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
                {
                  *v159 = 136315394;
                  v160 = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
                  v161 = 2112;
                  v162 = v49;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s Edit distance between tts ASR and original ASR %@", v159, 0x16u);
                }

                v113 = 0;
                v114 = 0;
                v51 = sub_100023834(v103, v106, v48 & 1, &v114, &v113);
                v52 = v114;
                v92 = v52;
                v93 = v113;
                v91 = v51;
                if (v51 == -1)
                {
                  [v100 addObject:v105];
                }

                else
                {
                  v94 = [v52 mutableCopy];
                  v111 = [v93 mutableCopy];
                  if (*(v108 + 89) == 1)
                  {
                    v112 = 0;
                    v96 = [NSRegularExpression regularExpressionWithPattern:@"\\\\\\S+$" options:0 error:&v112];
                    v90 = v112;
                    v53 = [v111 count];
                    if ((v53 - 1) >= 0)
                    {
                      while (1)
                      {
                        v54 = [v111 objectAtIndexedSubscript:--v53];
                        v55 = [v96 firstMatchInString:v54 options:0 range:{0, objc_msgSend(v54, "length")}];
                        v56 = v55;
                        if (v55)
                        {
                          break;
                        }

LABEL_62:

                        if (v53 <= 0)
                        {
                          goto LABEL_63;
                        }
                      }

                      v57 = [v55 range];
                      v59 = [v54 substringWithRange:{v57, v58}];
                      v60 = v108[8];
                      v61 = v59;
                      v62 = v60;
                      v63 = v62;
                      if (qword_100061718 == -1)
                      {
                        if (v62)
                        {
                          goto LABEL_52;
                        }

                        goto LABEL_55;
                      }

                      dispatch_once(&qword_100061718, &stru_1000556A8);
                      if (!v63)
                      {
                        goto LABEL_55;
                      }

LABEL_52:
                      if ([v63 containsObject:v61])
                      {
                        v64 = 0;
                      }

                      else
                      {
LABEL_55:
                        v65 = [qword_100061710 objectForKey:v61];
                        if (v65)
                        {
                          v64 = v65;
                        }

                        else
                        {
                          v64 = @"PERSONALINFO";
                        }
                      }

                      if (v64 && v64 != @"PERSONALINFO")
                      {
                        [v94 removeObjectAtIndex:v53];
                        [v111 removeObjectAtIndex:v53];
                      }

                      goto LABEL_62;
                    }

LABEL_63:
                  }

                  v66 = AFSiriLogContextFides;
                  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
                  {
                    *v159 = 136315650;
                    v160 = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
                    v161 = 2112;
                    v162 = v94;
                    v163 = 2112;
                    v164 = v111;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%s correctedOutput: %@, recognizedOutput %@", v159, 0x20u);
                  }

                  [v105 setValue:v94 forKey:@"correctedOutput"];
                  [v105 setValue:v111 forKey:@"recognizedOutput"];
                  v67 = [NSNumber numberWithInteger:v91];
                  [v105 setValue:v67 forKey:@"editDistanceRecognizedCorrected"];

                  v68 = [v49 objectForKeyedSubscript:@"EditDistance"];
                  [v105 setValue:v68 forKey:@"editDistanceRecognizedTTSASR"];

                  [v109 timestamp];
                  v69 = [NSNumber numberWithDouble:?];
                  [v105 setValue:v69 forKey:@"timestamp"];

                  v70 = [v109 interactionIdentifier];
                  [v105 setValue:v70 forKey:@"interactionId"];

                  v71 = [v109 asrSelfComponentIdentifier];
                  [v105 setValue:v71 forKey:@"asrSelfComponentIdentifier"];

                  [v100 addObject:v105];
                }
              }

              else
              {
                [v100 addObject:v105];
              }

              _Block_object_dispose(buf, 8);
            }

            else
            {
              [v100 addObject:v105];
            }
          }

          else
          {
            v73 = AFSiriLogContextFides;
            if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
              *&buf[12] = 2112;
              *&buf[14] = v22;
              _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%s No audio data provided for UUID %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v72 = AFSiriLogContextFides;
          if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%s Unable to load localSpeechDESRecord", buf, 0xCu);
          }
        }

        if (++v107 == v21)
        {
          v74 = [v101 countByEnumeratingWithState:&v132 objects:v171 count:16];
          v21 = v74;
          if (!v74)
          {
            goto LABEL_81;
          }

          goto LABEL_14;
        }
      }

      v83 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s Interrupted corrected text evaluation redecoding", buf, 0xCu);
      }

      v169 = NSLocalizedDescriptionKey;
      v170 = @"Interrupted corrected text evaluation during speech recognition";
      v84 = [NSDictionary dictionaryWithObjects:&v170 forKeys:&v169 count:1];
      v85 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v84];
      v86 = v150[5];
      v150[5] = v85;

      v87 = v150[5];
      (*(v108[9] + 16))();
LABEL_89:

      _Block_object_dispose(v172, 8);
    }

    else
    {
      v78 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
      {
        v89 = v108[4];
        *v172 = 136315394;
        *&v172[4] = "[ESConnection runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:]_block_invoke";
        *&v172[12] = 2112;
        *&v172[14] = v89;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%s No tokenizer for %@", v172, 0x16u);
      }

      v100 = [NSString stringWithFormat:@"No tokenizer for %@", v108[4]];
      v176 = NSLocalizedDescriptionKey;
      v177 = v100;
      v79 = [NSDictionary dictionaryWithObjects:&v177 forKeys:&v176 count:1];
      v80 = [NSError errorWithDomain:kAFAssistantErrorDomain code:600 userInfo:v79];
      v81 = v150[5];
      v150[5] = v80;

      v82 = v150[5];
      (*(v108[9] + 16))();
    }
  }

  else
  {
    v77 = v150[5];
    (*(a1[9] + 16))();
  }

  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v149, 8);
}

void sub_100023624(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Unwind_Resume(a1);
}

void sub_10002370C(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 26);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [ESConnection _speechRecognizerWithAssetConfig:v2 enableITN:0 isHighPriority:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000237A0(uint64_t a1)
{
  v2 = *(*(*(a1 + 72) + 8) + 40);
  v6 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 recognitionResultsWithAudioData:v6 userProfileData:*(*(*(a1 + 80) + 8) + 40) language:*(a1 + 48) task:*(a1 + 56) samplingRate:*(a1 + 88) extraLanguageModel:0];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_100023834(void *a1, void *a2, int a3, void *a4, void *a5)
{
  v91 = a3;
  v8 = a1;
  v9 = a2;
  v93 = v8;
  v10 = [v8 count];
  v92 = v9;
  v11 = [v9 count];
  v12 = -1;
  if (v10)
  {
    v13 = v11;
    if (v11)
    {
      for (i = 0; i != v10; ++i)
      {
        v15 = [v93 objectAtIndexedSubscript:i];

        if (v15 == @"~")
        {
LABEL_57:
          v12 = -1;
          goto LABEL_58;
        }
      }

      v16 = 0;
      do
      {
        v17 = [v92 objectAtIndexedSubscript:v16];

        if (v17 == @"~")
        {
          goto LABEL_57;
        }

        ++v16;
      }

      while (v13 != v16);
      v81 = a4;
      v94 = 0;
      v18 = [NSRegularExpression regularExpressionWithPattern:@"\\\\\\S*$" options:0 error:&v94];
      v79[1] = v79;
      v80 = v94;
      __chkstk_darwin();
      v89 = v79 - v19;
      v20 = 0;
      v86 = v21;
      v22 = 1;
      if (v21 > 1)
      {
        v22 = v13 + 1;
      }

      v23 = vdupq_n_s64(v22 - 1);
      v24 = (v22 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v25 = xmmword_10003B840;
      v26 = vdupq_n_s64(2uLL);
      do
      {
        v27 = vmovn_s64(vcgeq_u64(v23, v25));
        if (v27.i8[0])
        {
          *&v89[8 * v20] = v20;
        }

        if (v27.i8[4])
        {
          *&v89[8 * v20 + 8] = v20 + 1;
        }

        v20 += 2;
        v25 = vaddq_s64(v25, v26);
      }

      while (v24 != v20);
      v82 = a5;
      v90 = v13;
      v28 = 8 * v13;
      v29 = 8 * v13 + 16;
      v84 = v28 + 8;
      v85 = v10;
      v30 = 1;
      v31 = v89;
      do
      {
        v32 = v30 - 1;
        v33 = *&v89[8 * (v30 - 1) * v86] + 1;
        v87 = v31;
        v88 = v30;
        *&v89[8 * v30 * v86] = v33;
        v34 = v31;
        v35 = 1;
        do
        {
          v36 = [v92 objectAtIndexedSubscript:v35 - 1];
          v37 = [v93 objectAtIndexedSubscript:v32];
          if (v91)
          {
            v38 = [v36 lowercaseString];

            v39 = [v37 lowercaseString];

            v37 = v39;
            v36 = v38;
          }

          v40 = [v18 stringByReplacingMatchesInString:v36 options:0 range:0 withTemplate:{objc_msgSend(v36, "length"), &stru_100055AC8}];

          v41 = [v18 stringByReplacingMatchesInString:v37 options:0 range:0 withTemplate:{objc_msgSend(v37, "length"), &stru_100055AC8}];

          v42 = *v34;
          v43 = [v40 isEqualToString:v41];
          v44 = v34[1] + 1;
          if (v44 >= v33 + 1)
          {
            v44 = v33 + 1;
          }

          if (v42 + (v43 ^ 1) >= v44)
          {
            v33 = v44;
          }

          else
          {
            v33 = v42 + (v43 ^ 1);
          }

          *(v34 + v29) = v33;

          ++v35;
          ++v34;
        }

        while (v35 <= v90);
        v30 = v88 + 1;
        v45 = v85;
        v31 = &v87[v84];
      }

      while (v88 + 1 <= v85);
      v46 = +[NSMutableArray array];
      v47 = +[NSMutableArray array];
      v48 = v90;
      v83 = v47;
      v84 = v46;
      while (v45)
      {
        if (v48)
        {
          v49 = v48 - 1;
          v50 = [v92 objectAtIndexedSubscript:v48 - 1];
          v88 = v45;
          v51 = v45 - 1;
          v52 = [v93 objectAtIndexedSubscript:v51];
          if (v91)
          {
            v53 = [v50 lowercaseString];

            v54 = [v52 lowercaseString];

            v50 = v53;
            v52 = v54;
          }

          v55 = [v18 stringByReplacingMatchesInString:v50 options:0 range:0 withTemplate:{objc_msgSend(v50, "length"), &stru_100055AC8}];
          v87 = v55;

          v56 = [v18 stringByReplacingMatchesInString:v52 options:0 range:0 withTemplate:{objc_msgSend(v52, "length"), &stru_100055AC8}];

          v57 = v86;
          v58 = v89;
          v59 = &v89[8 * v51 * v86];
          v60 = *&v59[8 * v49];
          v61 = [v55 isEqualToString:v56];
          v62 = *&v59[8 * v48];
          v63 = v88;
          v64 = *&v58[8 * v88 * v57 + 8 * v49];
          v65 = v62 + 1;
          if (v62 + 1 >= v64 + 1)
          {
            v65 = v64 + 1;
          }

          v66 = v62 <= v64;
          if (v62 <= v64)
          {
            v67 = v48;
          }

          else
          {
            v67 = v48 - 1;
          }

          v68 = v60 + (v61 ^ 1);
          if (v66 || v68 <= v65)
          {
            v70 = v51;
          }

          else
          {
            v70 = v88;
          }

          if (v68 <= v65)
          {
            v71 = v48 - 1;
          }

          else
          {
            v71 = v67;
          }

          v45 = v63;
          v47 = v83;
          v46 = v84;
LABEL_49:
          v72 = @"~";
          if (v70 == v45)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        v71 = 0;
        v70 = v45 - 1;
LABEL_52:
        v72 = [v93 objectAtIndexedSubscript:v70];
        v45 = v70;
LABEL_53:
        v73 = @"~";
        if (v71 != v48)
        {
          v73 = [v92 objectAtIndexedSubscript:v71];
        }

        [v46 addObject:v72];
        [v47 addObject:v73];

        v48 = v71;
        if (!(v45 | v71))
        {
          v74 = [v46 reverseObjectEnumerator];
          v75 = [v74 allObjects];
          *v81 = v75;

          v76 = [v47 reverseObjectEnumerator];
          v77 = [v76 allObjects];
          *v82 = v77;

          v12 = *&v89[8 * v86 * v85 + 8 * v90];
          goto LABEL_58;
        }
      }

      v70 = 0;
      v71 = v48 - 1;
      goto LABEL_49;
    }
  }

LABEL_58:

  return v12;
}

void sub_100023E78(id a1)
{
  v1 = qword_100061710;
  qword_100061710 = &off_100058688;
}

void sub_100023FC0(uint64_t a1)
{
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_10001BCF8;
  v85 = sub_10001BD08;
  v86 = 0;
  v2 = [[SFEntitledAssetConfig alloc] initWithLanguage:*(a1 + 32) task:*(a1 + 40)];
  v42 = a1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_10001BCF8;
  v79 = sub_10001BD08;
  v80 = 0;
  v3 = qword_100061620;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024884;
  block[3] = &unk_100055200;
  v73 = &v75;
  v34 = v2;
  v72 = v34;
  v74 = &v81;
  dispatch_sync(v3, block);
  if (v76[5])
  {
    v37 = objc_alloc_init(NSMutableDictionary);
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = sub_10001BCF8;
    v69 = sub_10001BD08;
    v70 = 0;
    v35 = [CESRUtilities speechProfilePathsWithLanguage:*(v42 + 32)];
    if ([v35 count] == 1)
    {
      v4 = [NSData alloc];
      v5 = [v35 firstObject];
      v6 = [v4 initWithContentsOfFile:v5 options:0 error:0];
      v7 = v66[5];
      v66[5] = v6;
    }

    v8 = v66;
    v9 = AFSiriLogContextFides;
    if (v66[5])
    {
      v10 = AFSiriLogContextFides;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v8[5] length];
        *buf = 136315394;
        *&buf[4] = "[ESConnection redecodeWithAudioDatas:language:task:samplingRate:completion:]_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Loaded speech profile: %lu bytes", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[ESConnection redecodeWithAudioDatas:language:task:samplingRate:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Unable to load speech profile", buf, 0xCu);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = *(v42 + 48);
    v38 = [obj countByEnumeratingWithState:&v61 objects:v95 count:16];
    if (v38)
    {
      v39 = *v62;
      while (2)
      {
        v41 = 0;
        do
        {
          if (*v62 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v61 + 1) + 8 * v41);
          if ([*(v42 + 56) _invalidated])
          {
            v29 = AFSiriLogContextFides;
            if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              *&buf[4] = "[ESConnection redecodeWithAudioDatas:language:task:samplingRate:completion:]_block_invoke";
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Interrupted corrected text evaluation redecoding", buf, 0xCu);
            }

            v93 = NSLocalizedDescriptionKey;
            v94 = @"Interrupted corrected text redecoding during speech recognition";
            v30 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            v31 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1101 userInfo:v30];
            v32 = v82[5];
            v82[5] = v31;

            v33 = v82[5];
            (*(*(v42 + 64) + 16))();

            goto LABEL_45;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v90 = sub_10001BCF8;
          v91 = sub_10001BD08;
          v92 = 0;
          v13 = qword_100061620;
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_100024908;
          v52[3] = &unk_100055228;
          v57 = buf;
          v58 = &v75;
          v53 = *(v42 + 48);
          v54 = v40;
          v59 = &v65;
          v55 = *(v42 + 32);
          v14 = *(v42 + 40);
          v15 = *(v42 + 72);
          v56 = v14;
          v60 = v15;
          dispatch_sync(v13, v52);
          v43 = objc_alloc_init(NSMutableArray);
          v16 = *(*&buf[8] + 40);
          if (v16 && [v16 count])
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v17 = *(*&buf[8] + 40);
            v18 = [v17 countByEnumeratingWithState:&v48 objects:v88 count:16];
            if (v18)
            {
              v19 = *v49;
              do
              {
                v20 = 0;
                do
                {
                  if (*v49 != v19)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v21 = *(*(&v48 + 1) + 8 * v20);
                  v22 = objc_alloc_init(NSMutableArray);
                  v46 = 0u;
                  v47 = 0u;
                  v44 = 0u;
                  v45 = 0u;
                  v23 = [v21 preITNTokens];
                  v24 = [v23 countByEnumeratingWithState:&v44 objects:v87 count:16];
                  if (v24)
                  {
                    v25 = *v45;
                    do
                    {
                      v26 = 0;
                      do
                      {
                        if (*v45 != v25)
                        {
                          objc_enumerationMutation(v23);
                        }

                        v27 = [*(*(&v44 + 1) + 8 * v26) tokenName];
                        [v22 addObject:v27];

                        v26 = v26 + 1;
                      }

                      while (v24 != v26);
                      v24 = [v23 countByEnumeratingWithState:&v44 objects:v87 count:16];
                    }

                    while (v24);
                  }

                  if ([v22 count])
                  {
                    [v43 addObject:v22];
                  }

                  v20 = v20 + 1;
                }

                while (v20 != v18);
                v18 = [v17 countByEnumeratingWithState:&v48 objects:v88 count:16];
              }

              while (v18);
            }
          }

          if ([v43 count])
          {
            [v37 setObject:v43 forKeyedSubscript:v40];
          }

          _Block_object_dispose(buf, 8);
          v41 = v41 + 1;
        }

        while (v41 != v38);
        v38 = [obj countByEnumeratingWithState:&v61 objects:v95 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }

    v28 = *(v42 + 64);
    if (v28)
    {
      (*(v28 + 16))(v28, v37, 0);
    }

LABEL_45:

    _Block_object_dispose(&v65, 8);
  }

  else
  {
    v12 = v82[5];
    (*(*(v42 + 64) + 16))();
  }

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);
}

void sub_1000247F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_100024884(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [ESConnection _speechRecognizerWithAssetConfig:v2 enableITN:0 isHighPriority:0 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100024908(uint64_t a1)
{
  v2 = *(*(*(a1 + 72) + 8) + 40);
  v6 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 recognitionResultsWithAudioData:v6 userProfileData:*(*(*(a1 + 80) + 8) + 40) language:*(a1 + 48) task:*(a1 + 56) samplingRate:*(a1 + 88) extraLanguageModel:0];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_100024BA0(uint64_t a1)
{
  v2 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ESConnection _scheduleCompilationTimerForAssetType:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Model compilation timer for %@ assets fired.", &v5, 0x16u);
  }

  return [*(a1 + 40) compileAllAssetsWithType:*(a1 + 56) completion:*(a1 + 48)];
}

id sub_100024DFC(uint64_t a1)
{
  v2 = qword_100061630;
  if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ESConnection _scheduleCacheResetTimer:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Cache reset timer fired.", &v4, 0xCu);
  }

  return [*(a1 + 32) resetCacheWithCompletion:*(a1 + 40)];
}

void sub_10002535C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100025388(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = &AFAnalyticsEventCreateCurrent_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = &AFAnalyticsEventCreateCurrent_ptr;
      v14 = *v63;
      v56 = v8;
      v57 = v7;
      v54 = a1;
      v55 = a4;
      v53 = v10;
      v50 = *v63;
      while (2)
      {
        v15 = 0;
        v51 = v12;
        do
        {
          if (*v63 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v52 = v15;
          v16 = *(*(&v62 + 1) + 8 * v15);
          v17 = v9[351];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v44 = kAFAssistantErrorDomain;
            v69 = NSLocalizedFailureReasonErrorKey;
            v45 = [NSString stringWithFormat:@"Not an array: %@", v16];
            v70 = v45;
            v46 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
            v47 = [NSError errorWithDomain:v44 code:1102 userInfo:v46];
            v48 = *(*(a1 + 40) + 8);
            v49 = *(v48 + 40);
            *(v48 + 40) = v47;

            *a4 = 1;
            goto LABEL_21;
          }

          v18 = [v13[356] array];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v19 = v16;
          v20 = [v19 countByEnumeratingWithState:&v58 objects:v68 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v59;
            while (2)
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v59 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v58 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v38 = kAFAssistantErrorDomain;
                  v66 = NSLocalizedFailureReasonErrorKey;
                  v39 = [NSString stringWithFormat:@"Not a dictionary: %@", v19];
                  v67 = v39;
                  v40 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
                  v41 = [NSError errorWithDomain:v38 code:1102 userInfo:v40];
                  v42 = *(*(v54 + 40) + 8);
                  v43 = *(v42 + 40);
                  *(v42 + 40) = v41;

                  *v55 = 1;
                  v8 = v56;
                  v7 = v57;
                  v10 = v53;
                  goto LABEL_21;
                }

                v25 = [v24 objectForKey:@"orth"];
                v26 = [v24 objectForKey:@"prons"];
                v27 = [NSSet setWithArray:v26];

                v28 = [v24 objectForKey:@"tag"];
                v29 = [v24 objectForKey:@"freq"];
                v30 = [v29 integerValue];

                v31 = [[_EARWordPart alloc] initWithOrthography:v25 pronunciations:v27 tagName:v28 frequency:v30];
                [v18 addObject:v31];
              }

              v21 = [v19 countByEnumeratingWithState:&v58 objects:v68 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          a1 = v54;
          v7 = v57;
          [*(v54 + 32) addWordWithParts:v18 templateName:v57];

          v15 = v52 + 1;
          a4 = v55;
          v8 = v56;
          v10 = v53;
          v9 = &AFAnalyticsEventCreateCurrent_ptr;
          v13 = &AFAnalyticsEventCreateCurrent_ptr;
          v14 = v50;
        }

        while ((v52 + 1) != v51);
        v12 = [v53 countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
    v32 = kAFAssistantErrorDomain;
    v72 = NSLocalizedFailureReasonErrorKey;
    v33 = [NSString stringWithFormat:@"Not an array: %@", v8];
    v73 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v35 = [NSError errorWithDomain:v32 code:1102 userInfo:v34];
    v36 = *(*(a1 + 40) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;

    *a4 = 1;
  }
}

void sub_100025CF0(id a1)
{
  v1 = +[ESAssetManager sharedInstance];
  [v1 cleanupUnusedSubscriptions];
}

void sub_100025D4C(id a1)
{
  v1 = +[ESAssetManager sharedInstance];
  [v1 handlePostInstallSubscriptions];
}

void sub_100026210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100026228(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v8 = *(a1 + 48);
  v9 = [*(*(a1 + 32) + 224) objectAtIndexedSubscript:a3];
  [v9 doubleValue];
  v11 = v10;

  if (v11 >= v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100026574(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 data];
  [*(*(a1 + 32) + 104) addAudioPacket:v3];
  v4 = [*(a1 + 32) _audioDataPostRecognitionStart:v3];

  [v5 setData:v4];
  if (v4)
  {
    [*(a1 + 32) _processAudioPacket:v5];
  }
}

void sub_100026A40(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 136315906;
    v56 = "[ESConnection sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke";
    v57 = 2112;
    v58 = v3;
    v59 = 2112;
    v60 = v4;
    v61 = 2112;
    v62 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Received corrected texts, interactionId: %@, correctedText: %@, correctedTextV2: %@", buf, 0x2Au);
  }

  if (qword_1000616D8)
  {
    v6 = [qword_1000616D8 valueForKey:*(a1 + 32)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [qword_1000616D8 valueForKey:*(a1 + 32)];

      if (!v7)
      {
        goto LABEL_25;
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v6 = v7;
      v8 = [v6 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v8)
      {
        v10 = v8;
        v11 = @"^20";
        v12 = @" ";
        v13 = *v51;
        *&v9 = 136315138;
        v48 = v9;
        do
        {
          v14 = 0;
          v49 = v10;
          do
          {
            if (*v51 != v13)
            {
              objc_enumerationMutation(v6);
            }

            v15 = [*(*(&v50 + 1) + 8 * v14) stringByReplacingOccurrencesOfString:v11 withString:{v12, v48}];
            v16 = [v15 stringByReplacingOccurrencesOfString:@"\\jit" withString:&stru_100055AC8];

            if ([v16 length])
            {
              v17 = [*(a1 + 40) rangeOfString:v16];
              v18 = [PPFeedback alloc];
              if (v17 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v19 = [v18 initWithExplicitlyRejectedString:v16];
              }

              else
              {
                v19 = [v18 initWithImplicitlyEngagedString:v16];
              }

              v20 = v19;
              v21 = +[PPNamedEntityStore defaultStore];
              v22 = v21;
              if (v21 && v20)
              {
                v23 = v13;
                v24 = v12;
                v25 = v11;
                v26 = v6;
                v27 = a1;
                [v21 setClientIdentifier:@"dictation"];
                [v20 setClientIdentifier:@"dictation"];
                v28 = AFSiriLogContextSpeech;
                if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
                {
                  *buf = v48;
                  v56 = "[ESConnection sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke";
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Sending dictation feedback to Portrait based on correction", buf, 0xCu);
                }

                [v22 registerFeedback:v20 completion:0];
                a1 = v27;
                v6 = v26;
                v11 = v25;
                v12 = v24;
                v13 = v23;
                v10 = v49;
              }
            }

            v14 = v14 + 1;
          }

          while (v10 != v14);
          v10 = [v6 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v10);
      }
    }
  }

LABEL_25:
  if (qword_1000616B0)
  {
    v29 = [qword_1000616B0 interactionIdentifier];
    v30 = [v29 isEqualToString:*(a1 + 32)];

    if (v30)
    {
      [qword_1000616B0 setCorrectedText:*(a1 + 40)];
      [qword_1000616B0 setCorrectedTextV2:*(a1 + 48)];
      v31 = qword_1000616B0;
      v32 = [*(a1 + 56) alternativesSelectedInfo];
      [v31 setAlternatives:v32];

      v33 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
      {
        v44 = *(a1 + 32);
        v45 = *(a1 + 40);
        *buf = 136315650;
        v56 = "[ESConnection sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke";
        v57 = 2112;
        v58 = v44;
        v59 = 2112;
        v60 = v45;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s Set correctedText for CESRFidesASRRecord, interactionId: %@, correctedText: %@", buf, 0x20u);
        v33 = AFSiriLogContextSpeech;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v46 = *(a1 + 32);
        v47 = *(a1 + 48);
        *buf = 136315650;
        v56 = "[ESConnection sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke";
        v57 = 2112;
        v58 = v46;
        v59 = 2112;
        v60 = v47;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s Set correctedTextV2 for CESRFidesASRRecord, interactionId: %@, correctedTextV2: %@", buf, 0x20u);
        v33 = AFSiriLogContextSpeech;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 32);
        v35 = *(a1 + 56);
        v36 = v33;
        v37 = [v35 alternativesSelectedInfo];
        v38 = [v37 description];
        *buf = 136315650;
        v56 = "[ESConnection sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke";
        v57 = 2112;
        v58 = v34;
        v59 = 2112;
        v60 = v38;
        _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s Set alternativeSelection for CESRFidesASRRecord, interactionId: %@, alternatives: %@", buf, 0x20u);
      }
    }

    else
    {
      v39 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v56 = "[ESConnection sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Interaction identifier did not match the DES record in memory", buf, 0xCu);
      }
    }
  }

  if (qword_1000616D0)
  {
    [qword_1000616D0 setCorrectedText:*(a1 + 48) interactionId:*(a1 + 32)];
    v40 = qword_1000616D0;
    v41 = [*(a1 + 56) alternativesSelectedInfo];
    [v40 setSelectedAlternatives:v41];

    v42 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a1 + 32);
      *buf = 136315394;
      v56 = "[ESConnection sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke";
      v57 = 2112;
      v58 = v43;
      _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s Set correctedText for Biome edit record, interactionId: %@", buf, 0x16u);
    }
  }
}

void sub_10002A074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose((v63 - 208), 8);
  _Unwind_Resume(a1);
}

id sub_10002A160(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = v5;
  if (v3)
  {
    [v5 addEntriesFromDictionary:v3];
  }

  if (v4)
  {
    [v6 setObject:v4 forKey:@"ModelOverrideURL"];
  }

  return v6;
}

id sub_10002A1EC(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = sub_10002A290(v3, @"etiquette.json", v4);

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

id sub_10002A290(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[ESAssetManager sharedInstance];
  v30 = 0;
  v8 = [v7 installedQuasarModelPathForAssetConfig:v5 error:&v30];
  v9 = v30;

  if (v8)
  {
    v10 = [v8 stringByAppendingPathComponent:v6];
    v29 = v9;
    v11 = [NSData dataWithContentsOfFile:v10 options:0 error:&v29];
    v12 = v29;

    if (!v11)
    {
      v17 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ReplacementDictionaryForAssetConfig";
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v32 = v12;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Could not read %@: %@", buf, 0x20u);
      }

      v15 = 0;
      goto LABEL_21;
    }

    v28 = v12;
    v13 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&v28];
    v14 = v28;

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v32) = 1;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10002ABB8;
        v24[3] = &unk_100055688;
        v27 = a3;
        v25 = v6;
        v26 = buf;
        [v13 enumerateKeysAndObjectsUsingBlock:v24];
        if (*(*&buf[8] + 24))
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_20;
      }

      v19 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v21 = v19;
        v22 = objc_opt_class();
        *buf = 136315650;
        *&buf[4] = "ReplacementDictionaryForAssetConfig";
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v32 = v22;
        v23 = v22;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s %@ is wrong type: %@", buf, 0x20u);
      }
    }

    else
    {
      v18 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ReplacementDictionaryForAssetConfig";
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v32 = v14;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Could not parse %@: %@", buf, 0x20u);
      }
    }

    v15 = 0;
LABEL_20:

    v12 = v14;
LABEL_21:

    v9 = v12;
    goto LABEL_22;
  }

  v16 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "ReplacementDictionaryForAssetConfig";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Could not locate asset: %@", buf, 0x16u);
  }

  v15 = 0;
LABEL_22:

  return v15;
}

void sub_10002A6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A6FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 40) + 304);
      *buf = 136315394;
      v34 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
      v35 = 2112;
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Fetching contextual data for task: %@", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    [v2 fetchNamedEntitiesWithTimeInterval:0.0];
    v5 = [*(a1 + 32) containsEntity];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 48) count];
  if ((v5 & 1) != 0 || v6)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) modelOverrideURL];
    v10 = [v9 path];
    v11 = *(a1 + 72);
    v32 = 0;
    v12 = [v7 _userProfileWithAssetConfig:v8 modelOverridePath:v10 overrides:v11 isJit:1 returningFoundPath:0 error:&v32];
    v13 = v32;

    if (v12)
    {
      if ([*(a1 + 48) count])
      {
        [v12 createInlineLmeUserDataForContextStrings:*(a1 + 48)];
        v14 = [v12 dataProfile];
        v15 = *(*(a1 + 80) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }

      else if (v5)
      {
        v18 = [*(a1 + 32) contextualData];

        if (v18)
        {
          v19 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v34 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Injecting contextual data to recognizer", buf, 0xCu);
          }

          v20 = [*(a1 + 32) contextualData];
          v21 = [*(a1 + 64) profile];
          v22 = [v12 createInlineLmeUserDataForContextData:v20 speechProfile:v21];
          v23 = *(*(a1 + 80) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;

          v25 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
          {
            v26 = *(*(*(a1 + 80) + 8) + 40);
            v27 = v25;
            v28 = [v26 length];
            *buf = 136315394;
            v34 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
            v35 = 2048;
            v36 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Built inline LME from contextual data, size: %zu", buf, 0x16u);
          }
        }
      }

      v29 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
      v30 = *(*(a1 + 88) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }

    else
    {
      v17 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v34 = "[ESConnection startSpeechRecognitionWithParameters:didStartHandlerWithInfo:]_block_invoke";
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Failed to initialize jit profile builder due to error : %@", buf, 0x16u);
      }
    }
  }
}

id sub_10002AA88(void *a1)
{
  v1 = a1;
  v2 = [v1 samplingRateFilter];
  v3 = [v1 taskTypeFilter];
  v4 = [v1 farFieldFilter];
  v5 = [v1 deviceIdFilter];
  v6 = [v1 bluetoothDeviceIdFilter];
  v7 = [v1 aneContextFilter];
  v8 = [v1 cpuContextFilter];
  v9 = [v1 gpuContextFilter];

  v10 = [NSString stringWithFormat:@"sampling rate = %@\ntask type = %@\nfar field = %@\ndevice ID = %@\n[DEPRECATED] bluetooth device ID = %@\nANE context = %@\nCPU context = %@\nGPU context = %@\n", v2, v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

void sub_10002ABB8(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = a1[6], (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      v12 = 136315906;
      v13 = "ReplacementDictionaryForAssetConfig_block_invoke";
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ contains bogus key/value pair: %@ => %@", &v12, 0x2Au);
    }

    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 0;
  }
}

void sub_10002AEC8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 modelVersion];
  v7 = [v6 modelType];

  (*(v4 + 16))(v4, v8, v7, v5);
}

void sub_10002C09C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v7 = [v5 objectForKey:@"quasarModelPath"];
  v8 = [v5 objectForKey:@"type"];
  v9 = [v7 stringByAppendingPathComponent:@"mini.json"];
  if (([CESRUtilities isFilePathValid:v9]& 1) != 0)
  {
    v10 = [[_EARSpeechModelInfo alloc] initWithConfig:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 version];
      v13 = [[CESRModelProperties alloc] initWithModelVersion:v12 modelType:v8 modelRoot:v7];
    }

    else
    {
      v13 = 0;
    }

LABEL_11:
    v19 = *(a1 + 32);
    if (v19)
    {
      if (v13)
      {
        v20 = 0;
      }

      else
      {
        v20 = v6;
      }

      (*(v19 + 16))(v19, v13, v20);
    }

    goto LABEL_16;
  }

  v14 = kAFAssistantErrorDomain;
  v25 = NSLocalizedDescriptionKey;
  v15 = [NSString stringWithFormat:@"No file at path: %@", v9];
  v26 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v17 = [NSError errorWithDomain:v14 code:600 userInfo:v16];

  v18 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v22 = "[ESConnection fetchModelPropertiesForAssetConfig:completion:]_block_invoke";
    v23 = 2112;
    v24 = v17;
    _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%s %@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v13 = 0;
LABEL_16:
}

void sub_10002CEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002CEE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = qword_100061630;
    if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = +[NSXPCListener _UUID];
      v17 = 136315650;
      v18 = "[ESConnection initWithXPCConnection:]_block_invoke";
      v19 = 2114;
      v20 = WeakRetained;
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}@ cancelling instance %{public}@", &v17, 0x20u);
    }

    v5 = objc_loadWeakRetained(WeakRetained + 2);
    [v5 cancelRecognition];

    v6 = objc_loadWeakRetained(WeakRetained + 2);
    v7 = qword_100061638;

    if (v6 == v7)
    {
      v8 = qword_100061638;
      qword_100061638 = 0;
    }

    objc_storeWeak(WeakRetained + 2, 0);
    objc_storeWeak(WeakRetained + 1, 0);
    [WeakRetained[4] invalidate];
    v9 = WeakRetained[4];
    WeakRetained[4] = 0;

    v10 = WeakRetained[11];
    WeakRetained[11] = 0;

    *(WeakRetained + 96) = 1;
    v11 = WeakRetained[7];
    WeakRetained[7] = 0;

    v12 = WeakRetained[8];
    WeakRetained[8] = 0;

    v13 = WeakRetained[27];
    WeakRetained[27] = 0;

    v14 = WeakRetained[28];
    WeakRetained[28] = 0;

    v15 = WeakRetained[33];
    WeakRetained[33] = 0;

    v16 = objc_loadWeakRetained(WeakRetained + 34);
    [v16 cancelRecognition];
  }
}

void sub_10002D1BC(uint64_t a1)
{
  v5 = +[ESProfiler sharedProfiler];
  v2 = [v5 selfHelper];
  v3 = [v2 asrId];

  if (v3)
  {
    [v5 logAppleNeuralEngineModelInitializationEndedWithTimeInTicks:*(a1 + 32) fileName:*(a1 + 40)];
  }

  else
  {
    v4 = [ESSelfHelper createANEModelInitializationEndedEventWithTimeStamp:*(a1 + 32) fileName:*(a1 + 40)];
    [ESConnection _addPendingProfilerANEModelInitializationEvent:v4];
  }
}

void sub_10002D350(uint64_t a1)
{
  v5 = +[ESProfiler sharedProfiler];
  v2 = [v5 selfHelper];
  v3 = [v2 asrId];

  if (v3)
  {
    [v5 logAppleNeuralEngineModelInitializationStartedOrChangedWithTimeInTicks:*(a1 + 32) fileName:*(a1 + 40)];
  }

  else
  {
    v4 = [ESSelfHelper createANEModelInitializationStartedEventWithTimeStamp:*(a1 + 32) fileName:*(a1 + 40)];
    [ESConnection _addPendingProfilerANEModelInitializationEvent:v4];
  }
}

void sub_10002F918(id a1)
{
  qword_100061650 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  signal(15, 1);
  unsetenv("TMPDIR");
  v4 = NSTemporaryDirectory();
  v5 = dispatch_get_global_queue(21, 0);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v5);

  if (v6)
  {
    dispatch_source_set_event_handler(v6, &stru_1000556E8);
    dispatch_resume(v6);
  }

  sub_10000BC5C();
  +[ESConnection captureESStartTimeInTicks];
  +[ESSelfHelper initializeSharedPowerLoggerIfNeeded];
  +[ESSelfHelper logPowerSnapshotForProcessStarted];
  +[NSXPCListener enableTransactions];
  v7 = objc_alloc_init(ESListenerDelegate);
  v8 = +[NSXPCListener serviceListener];
  [v8 setDelegate:v7];
  [v8 resume];
  +[ESSelfHelper logPowerSnapshotForProcessEnded];
  exit(1);
}

void sub_1000315A8(id a1)
{
  v1 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "main_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s Received SIGTERM. Cleaning and Exiting", &v2, 0xCu);
  }

  +[ESConnection prepareToExit];
  exit(0);
}