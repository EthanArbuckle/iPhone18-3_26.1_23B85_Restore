double _MRContentItemMetadataGetCalculatedPlaybackPosition(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0.0;
  if ([v3 hasElapsedTime] && ((objc_msgSend(v3, "hasInferredTimestamp") & 1) != 0 || objc_msgSend(v3, "hasElapsedTimeTimestamp")))
  {
    if ([v3 hasElapsedTimeTimestamp])
    {
      [v3 elapsedTimeTimestamp];
    }

    else
    {
      [v3 inferredTimestamp];
    }

    v7 = v6;
    v8 = 1.0;
    if ([v3 hasPlaybackRate])
    {
      [v3 playbackRate];
      v8 = v9;
    }

    [v4 timeIntervalSinceReferenceDate];
    v11 = v10 - v7;
    [v3 elapsedTime];
    v5 = v12 + v11 * v8;
  }

  return v5;
}

uint64_t _MRContentItemProtobufReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v33) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v33 & 0x7F) << v5;
      if ((v33 & 0x80) == 0)
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
        v14 = 104;
        goto LABEL_73;
      case 2u:
        v15 = objc_alloc_init(_MRContentItemMetadataProtobuf);
        objc_storeStrong((a1 + 128), v15);
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !_MRContentItemMetadataProtobufReadFrom(v15, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_79;
      case 3u:
        v13 = PBReaderReadData();
        v14 = 32;
        goto LABEL_73;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 112;
        goto LABEL_73;
      case 5u:
        v15 = objc_alloc_init(_MRLanguageOptionGroupProtobuf);
        [a1 addAvailableLanguageOptions:v15];
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !_MRLanguageOptionGroupProtobufReadFrom(v15, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_79;
      case 6u:
        v15 = objc_alloc_init(_MRLanguageOptionProtobuf);
        [a1 addCurrentLanguageOptions:v15];
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !_MRLanguageOptionProtobufReadFrom(v15, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_79;
      case 7u:
        v15 = objc_alloc_init(_MRLyricsItemProtobuf);
        objc_storeStrong((a1 + 120), v15);
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !_MRLyricsItemProtobufReadFrom(v15, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_79;
      case 8u:
        v15 = objc_alloc_init(_MRContentItemProtobuf);
        [a1 addSections:v15];
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !_MRContentItemProtobufReadFrom(v15, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_79;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_73;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 8;
        goto LABEL_73;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 144;
        goto LABEL_73;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 160;
        goto LABEL_73;
      case 0xDu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 184) |= 2u;
        while (1)
        {
          LOBYTE(v33) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33 & 0x7F) << v16;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_88;
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

LABEL_88:
        v31 = 44;
        goto LABEL_93;
      case 0xEu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 184) |= 1u;
        while (1)
        {
          LOBYTE(v33) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33 & 0x7F) << v23;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_92;
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

LABEL_92:
        v31 = 40;
LABEL_93:
        *(a1 + v31) = v22;
        goto LABEL_81;
      case 0xFu:
        v13 = PBReaderReadString();
        v14 = 48;
LABEL_73:
        v29 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_81;
      case 0x10u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addAvailableArtworkFormats:v15];
        }

        goto LABEL_80;
      case 0x11u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addAvailableRemoteArtworkFormats:v15];
        }

        goto LABEL_80;
      case 0x12u:
        v15 = objc_alloc_init(_MRDataArtworkProtobuf);
        [a1 addDataArtworks:v15];
        goto LABEL_53;
      case 0x13u:
        v15 = objc_alloc_init(_MRRemoteArtworkProtobuf);
        [a1 addRemoteArtworks:v15];
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !_MRRemoteArtworkProtobufReadFrom(v15, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_79;
      case 0x14u:
        v15 = objc_alloc_init(_MRTranscriptAlignmentProtobuf);
        [a1 addTranscriptAlignments:v15];
        v33 = 0;
        v34 = 0;
        if (PBReaderPlaceMark() && _MRTranscriptAlignmentProtobufReadFrom(v15, a2))
        {
          goto LABEL_79;
        }

        goto LABEL_95;
      case 0x15u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addAvailableAnimatedArtworkFormats:v15];
        }

        goto LABEL_80;
      case 0x16u:
        v15 = objc_alloc_init(_MRDataArtworkProtobuf);
        [a1 addAnimatedArtworkPreviewFrames:v15];
LABEL_53:
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !_MRDataArtworkProtobufReadFrom(v15, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_79;
      case 0x17u:
        v15 = objc_alloc_init(_MRAnimatedArtworkProtobuf);
        [a1 addAnimatedArtworks:v15];
        v33 = 0;
        v34 = 0;
        if (PBReaderPlaceMark() && _MRAnimatedArtworkProtobufReadFrom(v15, a2))
        {
LABEL_79:
          PBReaderRecallMark();
LABEL_80:

LABEL_81:
          v30 = [a2 position];
          if (v30 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_95:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_81;
    }
  }
}

CFTypeRef MRContentItemGetIdentifier(void *a1)
{
  result = [a1 identifier];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

void *MRContentItemCopyMinimalReadableDescription(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"item:<%@", MRContentItemGetIdentifier(v3)];
  v5 = [v3 metadata];
  v6 = [v5 title];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"/%@", MRContentItemGetTitle(v3)];
    [v4 appendString:v7];
  }

  CalculatedPlaybackPosition = MRContentItemGetCalculatedPlaybackPosition(v3);
  if (CalculatedPlaybackPosition != 0.0)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"/CalculatedPlaybackPosition: %lf", *&CalculatedPlaybackPosition];
    [v4 appendString:v9];
  }

  v10 = [v3 metadata];
  v11 = [v10 hasPlaybackRate];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v3 metadata];
    [v13 playbackRate];
    v15 = [v12 initWithFormat:@"/PlaybackRate: %lf", v14];

    [v4 appendString:v15];
  }

  v16 = [v3 currentLanguageOptions];
  if (v16)
  {
  }

  else
  {
    v17 = [v3 availableLanguageOptions];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  [v4 appendString:@"/L"];
LABEL_11:
  v18 = [v3 artwork];
  v19 = [v18 imageData];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = [v3 artwork];
    v22 = [v21 imageData];
    StringRepresentation = MRDataCreateStringRepresentation(v22);
    v24 = [v20 initWithFormat:@"/ArtworkData: %@", StringRepresentation];

    [v4 appendString:v24];
  }

  [v4 appendString:@">"];

  objc_autoreleasePoolPop(v2);
  return v4;
}

CFTypeRef MRContentItemGetTitle(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 title];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

double MRContentItemGetCalculatedPlaybackPosition(void *a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  CalculatedPlaybackPosition = _MRContentItemGetCalculatedPlaybackPosition(a1, v2);

  return CalculatedPlaybackPosition;
}

double _MRContentItemGetCalculatedPlaybackPosition(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 metadata];
  CalculatedPlaybackPosition = _MRContentItemMetadataGetCalculatedPlaybackPosition(v4, v3);

  return CalculatedPlaybackPosition;
}

uint64_t MRContentItemGetMediaType(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 mediaType];

  return v2;
}

uint64_t MRPlaybackQueueCopyContentItems(void *a1)
{
  v1 = [a1 contentItems];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPlaybackQueueGetRange(void *a1)
{
  v1 = a1;
  v2 = [v1 location];
  v3 = [v1 contentItems];

  [v3 count];
  return v2;
}

void __MRMediaRemoteServiceRequestNowPlayingPlaybackQueue_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v8 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    Error = MRMediaRemoteCreateError(1);
    v6 = 0;
  }

  else
  {
    Error = MRCreateClientErrorFromXPCMessage(v3);
    v6 = MRCreatePlaybackQueueFromXPCMessage(v8);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, Error);
  }

  kdebug_trace();
}

_MRDictionaryProtobuf *_MRProtoUtilsProtoDictionaryFromNSDictionary(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(_MRDictionaryProtobuf);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if ((_NSIsNSString() & 1) == 0)
        {
          _MRProtoUtilsProtoDictionaryFromNSDictionary_cold_1();
        }

        v9 = [v3 objectForKeyedSubscript:{v8, v14}];
        v10 = _MRProtoUtilsProtoValueFromPlistType(v9);

        if (v10)
        {
          v11 = objc_alloc_init(_MRKeyValuePairProtobuf);
          [(_MRKeyValuePairProtobuf *)v11 setKey:v8];
          [(_MRKeyValuePairProtobuf *)v11 setValue:v10];
          [(_MRDictionaryProtobuf *)v2 addPair:v11];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t _MRContentItemMetadataProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v378) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v378 & 0x7F) << v6;
      if ((v378 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 576;
        goto LABEL_576;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 560;
        goto LABEL_576;
      case 3u:
        v163 = 0;
        v164 = 0;
        v165 = 0;
        *(a1 + 648) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v166 = [a2 position] + 1;
          if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
          {
            v168 = [a2 data];
            [v168 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v165 |= (v378 & 0x7F) << v163;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v163 += 7;
          v12 = v164++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_652;
          }
        }

        v22 = (v165 != 0) & ~[a2 hasError];
LABEL_652:
        v361 = 630;
        goto LABEL_746;
      case 4u:
        v195 = 0;
        v196 = 0;
        v197 = 0;
        *(a1 + 648) |= 0x80000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v198 = [a2 position] + 1;
          if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 1, v199 <= objc_msgSend(a2, "length")))
          {
            v200 = [a2 data];
            [v200 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v197 |= (v378 & 0x7F) << v195;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v195 += 7;
          v12 = v196++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_666;
          }
        }

        v22 = (v197 != 0) & ~[a2 hasError];
LABEL_666:
        v361 = 637;
        goto LABEL_746;
      case 5u:
        *(a1 + 648) |= 0x100000000uLL;
        LODWORD(v378) = 0;
        v201 = [a2 position] + 4;
        if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 4, v202 <= objc_msgSend(a2, "length")))
        {
          v374 = [a2 data];
          [v374 getBytes:&v378 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v365 = v378;
        v366 = 468;
        goto LABEL_768;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_576;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 592;
        goto LABEL_576;
      case 8u:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_576;
      case 9u:
        v14 = PBReaderReadString();
        v15 = 336;
        goto LABEL_576;
      case 0xAu:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        *(a1 + 648) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            v214 = [a2 data];
            [v214 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (v378 & 0x7F) << v209;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v12 = v210++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_674;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v211;
        }

LABEL_674:
        v362 = 532;
        goto LABEL_737;
      case 0xBu:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 648) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v126 = [a2 position] + 1;
          if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
          {
            v128 = [a2 data];
            [v128 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v125 |= (v378 & 0x7F) << v123;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v12 = v124++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_634;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v125;
        }

LABEL_634:
        v362 = 372;
        goto LABEL_737;
      case 0xCu:
        *(a1 + 648) |= 0x1000uLL;
        v378 = 0;
        v169 = [a2 position] + 8;
        if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 8, v170 <= objc_msgSend(a2, "length")))
        {
          v373 = [a2 data];
          [v373 getBytes:&v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v369 = v378;
        v370 = 104;
        goto LABEL_773;
      case 0xDu:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 648) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            v156 = [a2 data];
            [v156 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v378 & 0x7F) << v151;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v12 = v152++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_648;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v153;
        }

LABEL_648:
        v362 = 464;
        goto LABEL_737;
      case 0xEu:
        *(a1 + 648) |= 1uLL;
        v378 = 0;
        v109 = [a2 position] + 8;
        if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
        {
          v368 = [a2 data];
          [v368 getBytes:&v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v369 = v378;
        v370 = 8;
        goto LABEL_773;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 400;
        goto LABEL_576;
      case 0x10u:
        v183 = 0;
        v184 = 0;
        v185 = 0;
        *(a1 + 648) |= 0x4000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v186 = [a2 position] + 1;
          if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
          {
            v188 = [a2 data];
            [v188 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v185 |= (v378 & 0x7F) << v183;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v183 += 7;
          v12 = v184++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_660;
          }
        }

        v22 = (v185 != 0) & ~[a2 hasError];
LABEL_660:
        v361 = 632;
        goto LABEL_746;
      case 0x11u:
        v239 = 0;
        v240 = 0;
        v241 = 0;
        *(a1 + 648) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v242 = [a2 position] + 1;
          if (v242 >= [a2 position] && (v243 = objc_msgSend(a2, "position") + 1, v243 <= objc_msgSend(a2, "length")))
          {
            v244 = [a2 data];
            [v244 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v241 |= (v378 & 0x7F) << v239;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v239 += 7;
          v12 = v240++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_692;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v241;
        }

LABEL_692:
        v362 = 480;
        goto LABEL_737;
      case 0x12u:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        *(a1 + 648) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            v238 = [a2 data];
            [v238 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (v378 & 0x7F) << v233;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v12 = v234++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_688;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v235;
        }

LABEL_688:
        v362 = 528;
        goto LABEL_737;
      case 0x13u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 648) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v378 & 0x7F) << v97;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_620;
          }
        }

        v22 = (v99 != 0) & ~[a2 hasError];
LABEL_620:
        v361 = 624;
        goto LABEL_746;
      case 0x15u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(a1 + 648) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v378 & 0x7F) << v157;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_650;
          }
        }

        v22 = (v159 != 0) & ~[a2 hasError];
LABEL_650:
        v361 = 627;
        goto LABEL_746;
      case 0x16u:
        v253 = 0;
        v254 = 0;
        v255 = 0;
        *(a1 + 648) |= 0x1000000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v256 = [a2 position] + 1;
          if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
          {
            v258 = [a2 data];
            [v258 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v255 |= (v378 & 0x7F) << v253;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v253 += 7;
          v12 = v254++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_696;
          }
        }

        v22 = (v255 != 0) & ~[a2 hasError];
LABEL_696:
        v361 = 642;
        goto LABEL_746;
      case 0x17u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 648) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v378 & 0x7F) << v103;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_624;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v105;
        }

LABEL_624:
        v362 = 440;
        goto LABEL_737;
      case 0x18u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 648) |= 0x2000000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            v150 = [a2 data];
            [v150 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v378 & 0x7F) << v145;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v12 = v146++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_644;
          }
        }

        v22 = (v147 != 0) & ~[a2 hasError];
LABEL_644:
        v361 = 643;
        goto LABEL_746;
      case 0x19u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 648) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v378 & 0x7F) << v117;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v12 = v118++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_630;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v119;
        }

LABEL_630:
        v362 = 368;
        goto LABEL_737;
      case 0x1Au:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        *(a1 + 648) |= 0x800000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            v176 = [a2 data];
            [v176 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (v378 & 0x7F) << v171;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v12 = v172++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_654;
          }
        }

        v22 = (v173 != 0) & ~[a2 hasError];
LABEL_654:
        v361 = 641;
        goto LABEL_746;
      case 0x1Bu:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 648) |= 0x2000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v378 & 0x7F) << v111;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v12 = v112++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_626;
          }
        }

        v22 = (v113 != 0) & ~[a2 hasError];
LABEL_626:
        v361 = 631;
        goto LABEL_746;
      case 0x1Cu:
        v14 = PBReaderReadString();
        v15 = 280;
        goto LABEL_576;
      case 0x1Du:
        v14 = PBReaderReadString();
        v15 = 496;
        goto LABEL_576;
      case 0x1Eu:
        *(a1 + 648) |= 0x4000uLL;
        v378 = 0;
        v137 = [a2 position] + 8;
        if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 8, v138 <= objc_msgSend(a2, "length")))
        {
          v372 = [a2 data];
          [v372 getBytes:&v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v369 = v378;
        v370 = 120;
        goto LABEL_773;
      case 0x1Fu:
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_576;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_576;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 296;
        goto LABEL_576;
      case 0x22u:
        v283 = 0;
        v284 = 0;
        v285 = 0;
        *(a1 + 648) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v286 = [a2 position] + 1;
          if (v286 >= [a2 position] && (v287 = objc_msgSend(a2, "position") + 1, v287 <= objc_msgSend(a2, "length")))
          {
            v288 = [a2 data];
            [v288 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v285 |= (v378 & 0x7F) << v283;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v283 += 7;
          v12 = v284++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_712;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v285;
        }

LABEL_712:
        v362 = 344;
        goto LABEL_737;
      case 0x23u:
        *(a1 + 648) |= 2uLL;
        v378 = 0;
        v129 = [a2 position] + 8;
        if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 8, v130 <= objc_msgSend(a2, "length")))
        {
          v371 = [a2 data];
          [v371 getBytes:&v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v369 = v378;
        v370 = 16;
        goto LABEL_773;
      case 0x24u:
        v14 = PBReaderReadString();
        v15 = 384;
        goto LABEL_576;
      case 0x25u:
        v277 = 0;
        v278 = 0;
        v279 = 0;
        *(a1 + 648) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v280 = [a2 position] + 1;
          if (v280 >= [a2 position] && (v281 = objc_msgSend(a2, "position") + 1, v281 <= objc_msgSend(a2, "length")))
          {
            v282 = [a2 data];
            [v282 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v279 |= (v378 & 0x7F) << v277;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v277 += 7;
          v12 = v278++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_708;
          }
        }

        v22 = (v279 != 0) & ~[a2 hasError];
LABEL_708:
        v361 = 629;
        goto LABEL_746;
      case 0x27u:
        *(a1 + 648) |= 0x200000000uLL;
        LODWORD(v378) = 0;
        v89 = [a2 position] + 4;
        if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 4, v90 <= objc_msgSend(a2, "length")))
        {
          v367 = [a2 data];
          [v367 getBytes:&v378 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v365 = v378;
        v366 = 472;
        goto LABEL_768;
      case 0x28u:
        v203 = 0;
        v204 = 0;
        v205 = 0;
        *(a1 + 648) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v206 = [a2 position] + 1;
          if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 1, v207 <= objc_msgSend(a2, "length")))
          {
            v208 = [a2 data];
            [v208 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v205 |= (v378 & 0x7F) << v203;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v203 += 7;
          v12 = v204++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_670;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v205;
        }

LABEL_670:
        v362 = 264;
        goto LABEL_737;
      case 0x29u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 648) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v378 & 0x7F) << v83;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_616;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v85;
        }

LABEL_616:
        v362 = 584;
        goto LABEL_737;
      case 0x2Au:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 648) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v378 & 0x7F) << v77;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_612;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v79;
        }

LABEL_612:
        v362 = 588;
        goto LABEL_737;
      case 0x2Bu:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 648) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v378 & 0x7F) << v139;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_642;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v141;
        }

LABEL_642:
        v362 = 600;
        goto LABEL_737;
      case 0x2Cu:
        v14 = PBReaderReadString();
        v15 = 304;
        goto LABEL_576;
      case 0x2Eu:
        v247 = 0;
        v248 = 0;
        v249 = 0;
        *(a1 + 648) |= 0x200000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v250 = [a2 position] + 1;
          if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
          {
            v252 = [a2 data];
            [v252 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v249 |= (v378 & 0x7F) << v247;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v247 += 7;
          v12 = v248++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_694;
          }
        }

        v22 = (v249 != 0) & ~[a2 hasError];
LABEL_694:
        v361 = 639;
        goto LABEL_746;
      case 0x30u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 648) |= 0x20000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v378 & 0x7F) << v50;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_596;
          }
        }

        v22 = (v52 != 0) & ~[a2 hasError];
LABEL_596:
        v361 = 635;
        goto LABEL_746;
      case 0x31u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 648) |= 0x10000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v378 & 0x7F) << v91;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_618;
          }
        }

        v22 = (v93 != 0) & ~[a2 hasError];
LABEL_618:
        v361 = 634;
        goto LABEL_746;
      case 0x32u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        *(a1 + 648) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (v378 & 0x7F) << v177;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v12 = v178++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_658;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v179;
        }

LABEL_658:
        v363 = 96;
        goto LABEL_751;
      case 0x34u:
        v14 = PBReaderReadString();
        v15 = 512;
        goto LABEL_576;
      case 0x35u:
        v14 = PBReaderReadString();
        v15 = 520;
        goto LABEL_576;
      case 0x36u:
        v189 = 0;
        v190 = 0;
        v191 = 0;
        *(a1 + 648) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v192 = [a2 position] + 1;
          if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 1, v193 <= objc_msgSend(a2, "length")))
          {
            v194 = [a2 data];
            [v194 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v191 |= (v378 & 0x7F) << v189;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v12 = v190++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_664;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v191;
        }

LABEL_664:
        v363 = 56;
        goto LABEL_751;
      case 0x37u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 648) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v378 & 0x7F) << v65;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_604;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v67;
        }

LABEL_604:
        v363 = 64;
        goto LABEL_751;
      case 0x38u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 648) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v378 & 0x7F) << v56;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_600;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_600:
        v363 = 48;
        goto LABEL_751;
      case 0x39u:
        v299 = 0;
        v300 = 0;
        v301 = 0;
        *(a1 + 648) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v302 = [a2 position] + 1;
          if (v302 >= [a2 position] && (v303 = objc_msgSend(a2, "position") + 1, v303 <= objc_msgSend(a2, "length")))
          {
            v304 = [a2 data];
            [v304 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v301 |= (v378 & 0x7F) << v299;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v299 += 7;
          v12 = v300++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_720;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v301;
        }

LABEL_720:
        v363 = 40;
        goto LABEL_751;
      case 0x3Au:
        v14 = PBReaderReadData();
        v15 = 504;
        goto LABEL_576;
      case 0x3Bu:
        *(a1 + 648) |= 0x100000uLL;
        LODWORD(v378) = 0;
        v63 = [a2 position] + 4;
        if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 4, v64 <= objc_msgSend(a2, "length")))
        {
          v364 = [a2 data];
          [v364 getBytes:&v378 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v365 = v378;
        v366 = 320;
        goto LABEL_768;
      case 0x3Cu:
        v215 = 0;
        v216 = 0;
        v217 = 0;
        *(a1 + 648) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v218 = [a2 position] + 1;
          if (v218 >= [a2 position] && (v219 = objc_msgSend(a2, "position") + 1, v219 <= objc_msgSend(a2, "length")))
          {
            v220 = [a2 data];
            [v220 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v217 |= (v378 & 0x7F) << v215;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          v12 = v216++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_678;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v217;
        }

LABEL_678:
        v362 = 352;
        goto LABEL_737;
      case 0x3Du:
        *(a1 + 648) |= 0x400000uLL;
        LODWORD(v378) = 0;
        v245 = [a2 position] + 4;
        if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 4, v246 <= objc_msgSend(a2, "length")))
        {
          v375 = [a2 data];
          [v375 getBytes:&v378 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v365 = v378;
        v366 = 348;
LABEL_768:
        *(a1 + v366) = v365;
        goto LABEL_774;
      case 0x3Eu:
        v14 = PBReaderReadData();
        v15 = 184;
        goto LABEL_576;
      case 0x3Fu:
        v14 = PBReaderReadString();
        v15 = 536;
        goto LABEL_576;
      case 0x40u:
        v259 = 0;
        v260 = 0;
        v261 = 0;
        *(a1 + 648) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v262 = [a2 position] + 1;
          if (v262 >= [a2 position] && (v263 = objc_msgSend(a2, "position") + 1, v263 <= objc_msgSend(a2, "length")))
          {
            v264 = [a2 data];
            [v264 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v261 |= (v378 & 0x7F) << v259;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v259 += 7;
          v12 = v260++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_700;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v261;
        }

LABEL_700:
        v362 = 428;
        goto LABEL_737;
      case 0x41u:
        v329 = 0;
        v330 = 0;
        v331 = 0;
        *(a1 + 648) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v332 = [a2 position] + 1;
          if (v332 >= [a2 position] && (v333 = objc_msgSend(a2, "position") + 1, v333 <= objc_msgSend(a2, "length")))
          {
            v334 = [a2 data];
            [v334 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v331 |= (v378 & 0x7F) << v329;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v329 += 7;
          v12 = v330++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_736;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v331;
        }

LABEL_736:
        v362 = 424;
        goto LABEL_737;
      case 0x43u:
        v14 = PBReaderReadData();
        v15 = 432;
        goto LABEL_576;
      case 0x44u:
        v14 = PBReaderReadData();
        v15 = 616;
        goto LABEL_576;
      case 0x45u:
        v265 = 0;
        v266 = 0;
        v267 = 0;
        *(a1 + 648) |= 0x400000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v268 = [a2 position] + 1;
          if (v268 >= [a2 position] && (v269 = objc_msgSend(a2, "position") + 1, v269 <= objc_msgSend(a2, "length")))
          {
            v270 = [a2 data];
            [v270 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v267 |= (v378 & 0x7F) << v265;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v265 += 7;
          v12 = v266++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_702;
          }
        }

        v22 = (v267 != 0) & ~[a2 hasError];
LABEL_702:
        v361 = 640;
        goto LABEL_746;
      case 0x46u:
        v14 = PBReaderReadString();
        v15 = 224;
        goto LABEL_576;
      case 0x47u:
        v14 = PBReaderReadString();
        v15 = 416;
        goto LABEL_576;
      case 0x48u:
        v14 = PBReaderReadData();
        v15 = 328;
        goto LABEL_576;
      case 0x49u:
        v14 = PBReaderReadData();
        v15 = 288;
        goto LABEL_576;
      case 0x4Au:
        *(a1 + 648) |= 4uLL;
        v378 = 0;
        v289 = [a2 position] + 8;
        if (v289 >= [a2 position] && (v290 = objc_msgSend(a2, "position") + 8, v290 <= objc_msgSend(a2, "length")))
        {
          v376 = [a2 data];
          [v376 getBytes:&v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v369 = v378;
        v370 = 24;
        goto LABEL_773;
      case 0x4Bu:
        *(a1 + 648) |= 0x100uLL;
        v378 = 0;
        v297 = [a2 position] + 8;
        if (v297 >= [a2 position] && (v298 = objc_msgSend(a2, "position") + 8, v298 <= objc_msgSend(a2, "length")))
        {
          v377 = [a2 data];
          [v377 getBytes:&v378 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v369 = v378;
        v370 = 72;
LABEL_773:
        *(a1 + v370) = v369;
        goto LABEL_774;
      case 0x4Cu:
        v14 = PBReaderReadString();
        v15 = 544;
        goto LABEL_576;
      case 0x4Du:
        v311 = 0;
        v312 = 0;
        v313 = 0;
        *(a1 + 648) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v314 = [a2 position] + 1;
          if (v314 >= [a2 position] && (v315 = objc_msgSend(a2, "position") + 1, v315 <= objc_msgSend(a2, "length")))
          {
            v316 = [a2 data];
            [v316 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v313 |= (v378 & 0x7F) << v311;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v311 += 7;
          v12 = v312++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_726;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v313;
        }

LABEL_726:
        v362 = 196;
        goto LABEL_737;
      case 0x4Eu:
        v271 = 0;
        v272 = 0;
        v273 = 0;
        *(a1 + 648) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v274 = [a2 position] + 1;
          if (v274 >= [a2 position] && (v275 = objc_msgSend(a2, "position") + 1, v275 <= objc_msgSend(a2, "length")))
          {
            v276 = [a2 data];
            [v276 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v273 |= (v378 & 0x7F) << v271;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v271 += 7;
          v12 = v272++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_706;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v273;
        }

LABEL_706:
        v362 = 192;
        goto LABEL_737;
      case 0x4Fu:
        v14 = PBReaderReadData();
        v15 = 312;
        goto LABEL_576;
      case 0x50u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_576;
      case 0x51u:
        v221 = 0;
        v222 = 0;
        v223 = 0;
        *(a1 + 648) |= 0x40000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v224 = [a2 position] + 1;
          if (v224 >= [a2 position] && (v225 = objc_msgSend(a2, "position") + 1, v225 <= objc_msgSend(a2, "length")))
          {
            v226 = [a2 data];
            [v226 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v223 |= (v378 & 0x7F) << v221;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v221 += 7;
          v12 = v222++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_680;
          }
        }

        v22 = (v223 != 0) & ~[a2 hasError];
LABEL_680:
        v361 = 636;
        goto LABEL_746;
      case 0x52u:
        v14 = PBReaderReadData();
        v15 = 232;
        goto LABEL_576;
      case 0x53u:
        v335 = 0;
        v336 = 0;
        v337 = 0;
        *(a1 + 648) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v338 = [a2 position] + 1;
          if (v338 >= [a2 position] && (v339 = objc_msgSend(a2, "position") + 1, v339 <= objc_msgSend(a2, "length")))
          {
            v340 = [a2 data];
            [v340 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v337 |= (v378 & 0x7F) << v335;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v335 += 7;
          v12 = v336++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_741;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v337;
        }

LABEL_741:
        v363 = 80;
        goto LABEL_751;
      case 0x54u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 648) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v378 & 0x7F) << v25;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_584;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

LABEL_584:
        v362 = 376;
        goto LABEL_737;
      case 0x55u:
        v14 = PBReaderReadString();
        v15 = 200;
        goto LABEL_576;
      case 0x56u:
        v14 = PBReaderReadString();
        v15 = 256;
        goto LABEL_576;
      case 0x57u:
        v14 = PBReaderReadString();
        v15 = 408;
        goto LABEL_576;
      case 0x58u:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_576;
      case 0x59u:
        v227 = 0;
        v228 = 0;
        v229 = 0;
        *(a1 + 648) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v230 = [a2 position] + 1;
          if (v230 >= [a2 position] && (v231 = objc_msgSend(a2, "position") + 1, v231 <= objc_msgSend(a2, "length")))
          {
            v232 = [a2 data];
            [v232 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v229 |= (v378 & 0x7F) << v227;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v227 += 7;
          v12 = v228++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_684;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v229;
        }

LABEL_684:
        v362 = 552;
        goto LABEL_737;
      case 0x5Au:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 648) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v378 & 0x7F) << v32;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v12 = v33++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_588;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v34;
        }

LABEL_588:
        v362 = 160;
        goto LABEL_737;
      case 0x5Bu:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 648) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v378 & 0x7F) << v71;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_608;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v73;
        }

LABEL_608:
        v362 = 476;
        goto LABEL_737;
      case 0x5Cu:
        v23 = objc_alloc_init(_MRAudioFormatProtobuf);
        v24 = 488;
        goto LABEL_480;
      case 0x5Du:
        v23 = objc_alloc_init(_MRAudioFormatProtobuf);
        v24 = 128;
LABEL_480:
        objc_storeStrong((a1 + v24), v23);
        goto LABEL_481;
      case 0x5Eu:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 648) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v378 & 0x7F) << v131;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v12 = v132++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_638;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v133;
        }

LABEL_638:
        v362 = 136;
        goto LABEL_737;
      case 0x5Fu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 648) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v378 & 0x7F) << v38;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_592;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v40;
        }

LABEL_592:
        v362 = 380;
LABEL_737:
        *(a1 + v362) = v31;
        goto LABEL_774;
      case 0x60u:
        v23 = objc_alloc_init(_MRAudioRouteProtobuf);
        objc_storeStrong((a1 + 248), v23);
        v378 = 0;
        v379 = 0;
        if (!PBReaderPlaceMark() || (_MRAudioRouteProtobufReadFrom(v23, a2) & 1) == 0)
        {
          goto LABEL_776;
        }

        goto LABEL_483;
      case 0x61u:
        v23 = objc_alloc_init(_MRAudioFormatProtobuf);
        [a1 addAlternativeFormats:v23];
LABEL_481:
        v378 = 0;
        v379 = 0;
        if (PBReaderPlaceMark() && (_MRAudioFormatProtobufReadFrom(v23, a2) & 1) != 0)
        {
LABEL_483:
          PBReaderRecallMark();

LABEL_774:
          v4 = a2;
          continue;
        }

LABEL_776:

        return 0;
      case 0x62u:
        v347 = 0;
        v348 = 0;
        v349 = 0;
        *(a1 + 648) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v350 = [a2 position] + 1;
          if (v350 >= [a2 position] && (v351 = objc_msgSend(a2, "position") + 1, v351 <= objc_msgSend(a2, "length")))
          {
            v352 = [a2 data];
            [v352 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v349 |= (v378 & 0x7F) << v347;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v347 += 7;
          v12 = v348++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_745;
          }
        }

        v22 = (v349 != 0) & ~[a2 hasError];
LABEL_745:
        v361 = 628;
        goto LABEL_746;
      case 0x63u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 648) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v378 & 0x7F) << v16;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_580;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_580:
        v361 = 626;
        goto LABEL_746;
      case 0x64u:
        v14 = PBReaderReadString();
        v15 = 456;
        goto LABEL_576;
      case 0x65u:
        v14 = PBReaderReadString();
        v15 = 448;
        goto LABEL_576;
      case 0x66u:
        v14 = PBReaderReadString();
        v15 = 272;
        goto LABEL_576;
      case 0x67u:
        v317 = 0;
        v318 = 0;
        v319 = 0;
        *(a1 + 648) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v320 = [a2 position] + 1;
          if (v320 >= [a2 position] && (v321 = objc_msgSend(a2, "position") + 1, v321 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v319 |= (v378 & 0x7F) << v317;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v317 += 7;
          v12 = v318++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_730;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v319;
        }

LABEL_730:
        v363 = 112;
        goto LABEL_751;
      case 0x68u:
        v353 = 0;
        v354 = 0;
        v355 = 0;
        *(a1 + 648) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v356 = [a2 position] + 1;
          if (v356 >= [a2 position] && (v357 = objc_msgSend(a2, "position") + 1, v357 <= objc_msgSend(a2, "length")))
          {
            v358 = [a2 data];
            [v358 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v355 |= (v378 & 0x7F) << v353;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v353 += 7;
          v12 = v354++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_750;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v355;
        }

LABEL_750:
        v363 = 88;
        goto LABEL_751;
      case 0x69u:
        v291 = 0;
        v292 = 0;
        v293 = 0;
        *(a1 + 648) |= 8uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v294 = [a2 position] + 1;
          if (v294 >= [a2 position] && (v295 = objc_msgSend(a2, "position") + 1, v295 <= objc_msgSend(a2, "length")))
          {
            v296 = [a2 data];
            [v296 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v293 |= (v378 & 0x7F) << v291;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v291 += 7;
          v12 = v292++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_716;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v293;
        }

LABEL_716:
        v363 = 32;
LABEL_751:
        *(a1 + v363) = v62;
        goto LABEL_774;
      case 0x6Au:
        v14 = PBReaderReadString();
        v15 = 360;
        goto LABEL_576;
      case 0x6Bu:
        v341 = 0;
        v342 = 0;
        v343 = 0;
        *(a1 + 648) |= 0x100000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v344 = [a2 position] + 1;
          if (v344 >= [a2 position] && (v345 = objc_msgSend(a2, "position") + 1, v345 <= objc_msgSend(a2, "length")))
          {
            v346 = [a2 data];
            [v346 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v343 |= (v378 & 0x7F) << v341;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v341 += 7;
          v12 = v342++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_743;
          }
        }

        v22 = (v343 != 0) & ~[a2 hasError];
LABEL_743:
        v361 = 638;
        goto LABEL_746;
      case 0x6Cu:
        v14 = PBReaderReadString();
        v15 = 392;
        goto LABEL_576;
      case 0x6Du:
        v323 = 0;
        v324 = 0;
        v325 = 0;
        *(a1 + 648) |= 0x8000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v326 = [a2 position] + 1;
          if (v326 >= [a2 position] && (v327 = objc_msgSend(a2, "position") + 1, v327 <= objc_msgSend(a2, "length")))
          {
            v328 = [a2 data];
            [v328 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v325 |= (v378 & 0x7F) << v323;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v323 += 7;
          v12 = v324++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_732;
          }
        }

        v22 = (v325 != 0) & ~[a2 hasError];
LABEL_732:
        v361 = 633;
        goto LABEL_746;
      case 0x6Eu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 648) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v378 & 0x7F) << v44;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_594;
          }
        }

        v22 = (v46 != 0) & ~[a2 hasError];
LABEL_594:
        v361 = 625;
        goto LABEL_746;
      case 0x6Fu:
        v305 = 0;
        v306 = 0;
        v307 = 0;
        *(a1 + 648) |= 0x4000000000000000uLL;
        while (1)
        {
          LOBYTE(v378) = 0;
          v308 = [a2 position] + 1;
          if (v308 >= [a2 position] && (v309 = objc_msgSend(a2, "position") + 1, v309 <= objc_msgSend(a2, "length")))
          {
            v310 = [a2 data];
            [v310 getBytes:&v378 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v307 |= (v378 & 0x7F) << v305;
          if ((v378 & 0x80) == 0)
          {
            break;
          }

          v305 += 7;
          v12 = v306++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_722;
          }
        }

        v22 = (v307 != 0) & ~[a2 hasError];
LABEL_722:
        v361 = 644;
LABEL_746:
        *(a1 + v361) = v22;
        goto LABEL_774;
      case 0x70u:
        v14 = PBReaderReadString();
        v15 = 568;
        goto LABEL_576;
      case 0x71u:
        v14 = PBReaderReadData();
        v15 = 608;
LABEL_576:
        v359 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_774;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_774;
    }
  }
}

uint64_t _MRPlaybackQueueProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 92) |= 1u;
            while (1)
            {
              LOBYTE(v35) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v35 & 0x7F) << v16;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_78;
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

LABEL_78:
            *(a1 + 40) = v22;
            goto LABEL_60;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_MRContentItemProtobuf);
            [a1 addContentItem:v14];
LABEL_37:
            v35 = 0;
            v36 = 0;
            if (!PBReaderPlaceMark() || !_MRContentItemProtobufReadFrom(v14, a2))
            {
              goto LABEL_82;
            }

LABEL_58:
            PBReaderRecallMark();
LABEL_59:

            goto LABEL_60;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(_MRPlaybackQueueContextProtobuf);
              objc_storeStrong((a1 + 24), v14);
              v35 = 0;
              v36 = 0;
              if (!PBReaderPlaceMark() || !_MRPlaybackQueueContextProtobufReadFrom(v14, a2))
              {
LABEL_82:

                return 0;
              }

              goto LABEL_58;
            case 4:
              v23 = PBReaderReadString();
              v24 = 72;
LABEL_51:
              v25 = *(a1 + v24);
              *(a1 + v24) = v23;

              goto LABEL_60;
            case 5:
              v14 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
              objc_storeStrong((a1 + 80), v14);
              v35 = 0;
              v36 = 0;
              if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v14->super.super.isa, a2))
              {
                goto LABEL_82;
              }

              goto LABEL_58;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addHomeUserIdentifiers:v14];
            }

            goto LABEL_59;
          case 0xA:
            v14 = objc_alloc_init(_MRDictionaryProtobuf);
            v15 = 56;
            goto LABEL_53;
          case 0xB:
            v14 = objc_alloc_init(_MRDictionaryProtobuf);
            v15 = 8;
LABEL_53:
            objc_storeStrong((a1 + v15), v14);
            v35 = 0;
            v36 = 0;
            if (!PBReaderPlaceMark() || !_MRDictionaryProtobufReadFrom(v14, a2))
            {
              goto LABEL_82;
            }

            goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 92) |= 2u;
            while (1)
            {
              LOBYTE(v35) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v35 & 0x7F) << v27;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                LOBYTE(v33) = 0;
                goto LABEL_80;
              }
            }

            v33 = (v29 != 0) & ~[a2 hasError];
LABEL_80:
            *(a1 + 88) = v33;
            goto LABEL_60;
          case 7:
            v23 = PBReaderReadString();
            v24 = 64;
            goto LABEL_51;
          case 8:
            v14 = objc_alloc_init(_MRContentItemProtobuf);
            [a1 addParticipants:v14];
            goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_60:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id MREncodeObjectWithEncoding(void *a1, uint64_t a2)
{
  v4 = a1;
  if (v4)
  {
    if (a2 == 1)
    {
      v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:0];
    }

    else
    {
      if (a2)
      {
        goto LABEL_8;
      }

      v5 = MSVArchivedDataWithRootObject();
    }

    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

LABEL_8:

  return v2;
}

_MRValueProtobuf *_MRProtoUtilsProtoValueFromPlistType(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(_MRValueProtobuf);
  if (_NSIsNSString())
  {
    [(_MRValueProtobuf *)v2 setStringValue:v1];
LABEL_3:
    v3 = v2;
    goto LABEL_44;
  }

  if (_NSIsNSNumber())
  {
    v4 = v1;
    v5 = v4;
    if (*MEMORY[0x1E695E4D0] == v4)
    {
      v10 = v2;
      v11 = 1;
    }

    else
    {
      if (*MEMORY[0x1E695E4C0] != v4)
      {
        Type = CFNumberGetType(v4);
        if (Type <= kCFNumberFloat64Type)
        {
          if ((Type - 1) < 4)
          {
            goto LABEL_42;
          }

          if (Type == kCFNumberFloat32Type)
          {
            goto LABEL_50;
          }

          if (Type != kCFNumberFloat64Type)
          {
LABEL_42:
            [(_MRValueProtobuf *)v2 setInt64Value:[(__CFNumber *)v5 longLongValue]];
            goto LABEL_43;
          }
        }

        else
        {
          if (Type <= kCFNumberFloatType)
          {
            if ((Type - 7) < 5 || Type != kCFNumberFloatType)
            {
              goto LABEL_42;
            }

LABEL_50:
            [(__CFNumber *)v5 floatValue];
            [(_MRValueProtobuf *)v2 setFloatValue:?];
            goto LABEL_43;
          }

          if ((Type - 14) < 2 || Type != kCFNumberDoubleType && Type != kCFNumberCGFloatType)
          {
            goto LABEL_42;
          }
        }

        [(__CFNumber *)v5 doubleValue];
        [(_MRValueProtobuf *)v2 setDoubleValue:?];
LABEL_43:
        v3 = v2;

        goto LABEL_44;
      }

      v10 = v2;
      v11 = 0;
    }

    [(_MRValueProtobuf *)v10 setBoolValue:v11];
    goto LABEL_43;
  }

  if (_NSIsNSData())
  {
    [(_MRValueProtobuf *)v2 setDataValue:v1];
    goto LABEL_3;
  }

  if (_NSIsNSDate())
  {
    v7 = _ISO8601DateFormatter_onceToken;
    v8 = v1;
    if (v7 != -1)
    {
      _MRProtoUtilsPlistTypeFromProtoValue_cold_1();
    }

    v9 = [0 stringFromDate:v8];

    [(_MRValueProtobuf *)v2 setDateValue:v9];
    goto LABEL_3;
  }

  if (_NSIsNSArray())
  {
    v12 = v1;
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = _MRProtoUtilsProtoValueFromPlistType(*(*(&v24 + 1) + 8 * i));
          if (v19)
          {
            [v13 addObject:{v19, v24}];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    [(_MRValueProtobuf *)v2 setArrayValues:v13];
    v3 = v2;
  }

  else
  {
    if (_NSIsNSDictionary())
    {
      v20 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v1);
      [(_MRValueProtobuf *)v2 setDictionaryValue:v20];

      goto LABEL_3;
    }

    v23 = _MRLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _MRProtoUtilsProtoValueFromPlistType_cold_1(v1, v23);
    }

    v3 = 0;
  }

LABEL_44:

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t _MRAudioFormatProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v79 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v79 & 0x7F) << v5;
        if ((v79 & 0x80) == 0)
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
      if ((v12 >> 3) <= 6)
      {
        break;
      }

      if (v13 > 9)
      {
        switch(v13)
        {
          case 0xA:
            v21 = PBReaderReadString();
            v22 = 48;
            break;
          case 0xB:
            v21 = PBReaderReadString();
            v22 = 64;
            break;
          case 0xC:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 80) |= 0x20u;
            while (1)
            {
              v80 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v80 & 0x7F) << v30;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_128;
              }
            }

            if ([a2 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v32;
            }

LABEL_128:
            v77 = 56;
            goto LABEL_153;
          default:
LABEL_117:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_154;
        }
      }

      else
      {
        if (v13 == 7)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 80) |= 0x80u;
          while (1)
          {
            v87 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v87 & 0x7F) << v43;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_134;
            }
          }

          v29 = (v45 != 0) & ~[a2 hasError];
LABEL_134:
          v76 = 76;
LABEL_135:
          *(a1 + v76) = v29;
          goto LABEL_154;
        }

        if (v13 == 8)
        {
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 80) |= 8u;
          while (1)
          {
            v85 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v85 & 0x7F) << v61;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v11 = v62++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_148;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v63;
          }

LABEL_148:
          v77 = 40;
          goto LABEL_153;
        }

        if (v13 != 9)
        {
          goto LABEL_117;
        }

        v21 = PBReaderReadString();
        v22 = 32;
      }

      v73 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_154:
      v78 = [a2 position];
      if (v78 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 3)
    {
      switch(v13)
      {
        case 1:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 80) |= 0x40u;
          while (1)
          {
            v81 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v81 & 0x7F) << v37;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_132;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v39;
          }

LABEL_132:
          v77 = 72;
LABEL_153:
          *(a1 + v77) = v36;
          goto LABEL_154;
        case 2:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            v84 = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v84 & 0x7F) << v55;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_143;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v57;
          }

LABEL_143:
          v75 = 16;
          break;
        case 3:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 80) |= 4u;
          while (1)
          {
            v83 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v83 & 0x7F) << v14;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_122;
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

LABEL_122:
          v75 = 24;
          break;
        default:
          goto LABEL_117;
      }

      goto LABEL_144;
    }

    if (v13 == 4)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 80) |= 1u;
      while (1)
      {
        v82 = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v82 & 0x7F) << v49;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_139;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v51;
      }

LABEL_139:
      v75 = 8;
LABEL_144:
      *(a1 + v75) = v20;
      goto LABEL_154;
    }

    if (v13 == 5)
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      *(a1 + 80) |= 0x10u;
      while (1)
      {
        v86 = 0;
        v70 = [a2 position] + 1;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
        {
          v72 = [a2 data];
          [v72 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v69 |= (v86 & 0x7F) << v67;
        if ((v86 & 0x80) == 0)
        {
          break;
        }

        v67 += 7;
        v11 = v68++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_152;
        }
      }

      if ([a2 hasError])
      {
        v36 = 0;
      }

      else
      {
        v36 = v69;
      }

LABEL_152:
      v77 = 44;
      goto LABEL_153;
    }

    if (v13 != 6)
    {
      goto LABEL_117;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(a1 + 80) |= 0x100u;
    while (1)
    {
      v88 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v88 & 0x7F) << v23;
      if ((v88 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
      if (v11)
      {
        LOBYTE(v29) = 0;
        goto LABEL_124;
      }
    }

    v29 = (v25 != 0) & ~[a2 hasError];
LABEL_124:
    v76 = 77;
    goto LABEL_135;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRAudioRouteProtobufReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v42 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v42 & 0x7F) << v31;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_59;
            }
          }

          v22 = (v33 != 0) & ~[a2 hasError];
LABEL_59:
          v37 = 21;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_61;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v41 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v41 & 0x7F) << v16;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_53;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_53:
          v37 = 20;
        }

        *(a1 + v37) = v22;
      }

      else if (v13 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v40 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v40 & 0x7F) << v24;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_57:
        *(a1 + 16) = v30;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_32;
        }

        v14 = PBReaderReadString();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

LABEL_61:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

MRPlaybackQueue *MRCreatePlaybackQueueFromXPCMessage(void *a1)
{
  v1 = MRCreateDataFromXPCMessage(a1, "MRXPC_NOWPLAYING_PLAYBACK_QUEUE_KEY");
  if (v1)
  {
    v2 = [[MRPlaybackQueue alloc] initWithData:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _MRDictionaryProtobufReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRKeyValuePairProtobuf);
        [a1 addPair:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRKeyValuePairProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id MRDecodeObjectWithEncoding(void *a1, uint64_t a2)
{
  v4 = a1;
  if (a2 == 1)
  {
    v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:4 error:0];
  }

  else if (!a2)
  {
    v5 = MSVPropertyListDataClasses();
    v2 = MSVUnarchivedObjectOfClasses();
  }

  return v2;
}

id _MRProtoUtilsNSDictionaryFromProtoDictionary(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v1 pairs];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 value];
        v10 = _MRProtoUtilsPlistTypeFromProtoValue(v9);
        v11 = [v8 key];
        [v2 setObject:v10 forKeyedSubscript:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [v2 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void sub_1A28AFDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MRAddRequestDetailsToXPCMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 data];
  MRAddDataToXPCMessage(v3, v4, "MRXPC_REQUEST_DETAILS");
}

MRRequestDetails *MRCreateRequestDetailsFromXPCMessage(void *a1)
{
  v1 = a1;
  v2 = [MRRequestDetails alloc];
  v3 = MRCreateDataFromXPCMessage(v1, "MRXPC_REQUEST_DETAILS");

  v4 = [(MRRequestDetails *)v2 initWithData:v3];

  return v4;
}

uint64_t _MRRequestDetailsProtobufReadFrom(uint64_t a1, void *a2)
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
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 > 7)
        {
          switch(v13)
          {
            case 8:
              v21 = PBReaderReadString();
              v22 = 32;
              break;
            case 9:
              v21 = PBReaderReadString();
              v22 = 24;
              break;
            case 0xA:
              v21 = PBReaderReadString();
              v22 = 64;
              break;
            default:
              goto LABEL_73;
          }

          goto LABEL_72;
        }

        if (v13 == 6)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            v51 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v51 & 0x7F) << v30;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_78;
            }
          }

          v29 = (v32 != 0) & ~[a2 hasError];
LABEL_78:
          v45 = 73;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_73:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_88;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            v50 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v50 & 0x7F) << v23;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_76;
            }
          }

          v29 = (v25 != 0) & ~[a2 hasError];
LABEL_76:
          v45 = 72;
        }

        *(a1 + v45) = v29;
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v21 = PBReaderReadString();
            v22 = 16;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_73;
            }

            v21 = PBReaderReadString();
            v22 = 56;
          }

          goto LABEL_72;
        }

        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 48;
LABEL_72:
            v43 = *(a1 + v22);
            *(a1 + v22) = v21;

            break;
          case 4:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              v48 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v48 & 0x7F) << v36;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_87:
            *(a1 + 40) = v42;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 76) |= 1u;
            while (1)
            {
              v49 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v49 & 0x7F) << v14;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_83;
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

LABEL_83:
            *(a1 + 8) = v20;
            break;
          default:
            goto LABEL_73;
        }
      }

LABEL_88:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A28B0E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MRAddDistantEndpointToXPCMessage(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    xdict = v3;
    v4 = objc_autoreleasePoolPush();
    v5 = a2;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRAddDistantEndpointToXPCMessage_cold_1();
    }

    v6 = v5;
    v7 = MSVArchivedDataWithRootObject();
    xpc_dictionary_set_data(xdict, "MRXPC_DISTANT_ENDPOINT_METADATA_KEY", [v7 bytes], objc_msgSend(v7, "length"));
    v8 = [v6 externalDeviceListenerEndpoint];

    if (v8)
    {
      v9 = [v6 externalDeviceListenerEndpoint];
      v10 = [v9 _endpoint];

      xpc_dictionary_set_value(xdict, "MRXPC_EXTERNAL_DEVICE_LISTENER_KEY", v10);
    }

    objc_autoreleasePoolPop(v4);
    v3 = xdict;
  }
}

id MREndpointFromXPCMessage(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = MRCreateDataFromXPCMessage(v1, "MRXPC_DISTANT_ENDPOINT_METADATA_KEY");
    if (!v3 || (objc_opt_class(), MSVUnarchivedObjectOfClass(), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      objc_autoreleasePoolPop(v2);
      v8 = 0;
      goto LABEL_12;
    }

    v5 = v4;
    v6 = xpc_dictionary_get_value(v1, "MRXPC_EXTERNAL_DEVICE_LISTENER_KEY");
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v7 _setEndpoint:v6];
      [v5 setExternalDeviceListenerEndpoint:v7];
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;
  v8 = v9;
  if ([v9 connectionType] == 1)
  {
    v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  }

LABEL_12:

  return v8;
}

CFStringRef MRExternalDeviceConnectionStateCopyDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E76A30B8[a1];
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

void OUTLINED_FUNCTION_15_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x20u);
}

void sub_1A28B1884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MRAVOutputDeviceCopyUniqueIdentifier(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 uid];
  v4 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t MRMediaRemoteSetRouteDiscoveryMode(uint64_t a1)
{
  v2 = MRGetSharedService();
  MRMediaRemoteServiceSetRouteDiscoveryMode(v2, a1);
  v3 = +[MRNowPlayingOriginClientManager sharedManager];
  v4 = [v3 localOriginClient];
  [v4 setRouteDiscoveryMode:a1];

  return 1;
}

void MRMediaRemoteServiceSetRouteDiscoveryMode(void *a1, unsigned int a2)
{
  kdebug_trace();
  v4 = a1;
  message = MRCreateXPCMessage(0x300000000000001uLL);
  xpc_dictionary_set_uint64(message, "MRXPC_ROUTE_DISCOVERY_MODE_KEY", a2);
  v5 = [v4 connection];

  xpc_connection_send_message(v5, message);
}

void sub_1A28B1F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MRContentItemCreate(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    MRContentItemCreate_cold_1();
  }

  v3 = [MRContentItem alloc];

  return [(MRContentItem *)v3 initWithIdentifier:a2];
}

void sub_1A28B2644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A28B2884(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

BOOL MRGroupSessionAllowsMigrationForEndpoint(void *a1)
{
  v1 = a1;
  v2 = [v1 groupSessionInfo];

  if (v2)
  {
    v3 = [v1 designatedGroupLeader];
    v4 = [v3 transportType] != 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id MRMediaRemoteServiceGetExternalDevice(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"getExternalDevice", v8];
  v10 = v9;
  if (v5)
  {
    [(__CFString *)v9 appendFormat:@" for %@", v5];
  }

  v11 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v10;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v12 = a1;
  v13 = MRCreateXPCMessage(0x30000000000001DuLL);
  MRAddEndpointUIDToXPCMessage(v13, v5);
  v14 = [v12 mrXPCConnection];

  v31 = 0;
  v15 = [v14 sendSyncMessage:v13 error:&v31];
  v16 = v31;

  if (a3)
  {
    v17 = v16;
    *a3 = v16;
  }

  v18 = MRCreateDistantExternalDeviceFromXPCMessage(v15);
  v19 = _MRLogForCategory(0xAuLL);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v5)
    {
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:v6];
      *buf = 138544386;
      v33 = @"getExternalDevice";
      v34 = 2114;
      v35 = v8;
      v36 = 2112;
      v37 = v18;
      v38 = 2114;
      v39 = v5;
      v40 = 2048;
      v41 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v19;
      v25 = 52;
      goto LABEL_19;
    }

    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = [MEMORY[0x1E695DF00] date];
    [v21 timeIntervalSinceDate:v6];
    *buf = 138544130;
    v33 = @"getExternalDevice";
    v34 = 2114;
    v35 = v8;
    v36 = 2112;
    v37 = v18;
    v38 = 2048;
    v39 = v27;
    v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_16;
  }

  if (v5)
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = [MEMORY[0x1E695DF00] date];
    [v21 timeIntervalSinceDate:v6];
    *buf = 138544130;
    v33 = @"getExternalDevice";
    v34 = 2114;
    v35 = v8;
    v36 = 2114;
    v37 = v5;
    v38 = 2048;
    v39 = v26;
    v23 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_16:
    v24 = v19;
    v25 = 42;
    goto LABEL_19;
  }

  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = [MEMORY[0x1E695DF00] date];
  [v21 timeIntervalSinceDate:v6];
  *buf = 138543874;
  v33 = @"getExternalDevice";
  v34 = 2114;
  v35 = v8;
  v36 = 2048;
  v37 = v28;
  v23 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
  v24 = v19;
  v25 = 32;
LABEL_19:
  _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

LABEL_20:
  v29 = *MEMORY[0x1E69E9840];

  return v18;
}

void MRAddEndpointUIDToXPCMessage(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    MRAddStringToXPCMessage(v5, v3, "MRXPC_ENDPOINT_UID_KEY");
    objc_autoreleasePoolPop(v4);
  }
}

void _MRLoadContentItemAssets(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v27 = a4;
  v12 = a5;
  v29 = v9;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _MRLoadContentItemAssets_cold_1();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  _MRLoadContentItemAssets_cold_2();
LABEL_3:
  v26 = v12;
  if (!v12)
  {
    _MRLoadContentItemAssets_cold_3();
  }

  v13 = [v9 subscriptionController];
  [v13 subscribeToPlaybackQueue:v11 forRequest:v10];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = v11;
  obj = [v11 contentItems];
  v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        if ([v10 includeSections])
        {
          v20 = [v29 clientCallbacks];
          v21 = [v20 createChildItemCallbacks];
          v22 = [v21 callbacks];
          v23 = _onQueue_MRCreateSectionsForRequest(v29, v22, v10, v19);

          if (v23 && [v23 count] >= 2)
          {
            v24 = [v23 mutableCopy];
            [v19 setSections:v24];
          }
        }

        [v14 addObject:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  _onQueue_MRLoadContentItemAssets(v29, v10, v14, v27, v26);
  v25 = *MEMORY[0x1E69E9840];
}

void _onQueue_MRInvokeClientAssetCallbacks(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    _onQueue_MRInvokeClientCallbacks_cold_6(v10, v11);
  }

  if (v9)
  {
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_41:
    _onQueue_MRInvokeClientAssetCallbacks_cold_3();
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

  _onQueue_MRInvokeClientAssetCallbacks_cold_2();
  if (!v10)
  {
    goto LABEL_41;
  }

LABEL_5:
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_42:
  _onQueue_MRInvokeClientAssetCallbacks_cold_4();
LABEL_6:
  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = dispatch_group_create();
  if ([v10 includeMetadata])
  {
    v16 = [v10 skeleton];
    [v16 setIncludeMetadata:1];
    dispatch_group_enter(v15);
    v17 = [v9 clientCallbacks];
    v18 = [v17 metadataCallbacks];
    v19 = [v18 callbacks];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke;
    v99[3] = &unk_1E769B6D0;
    v100 = v71;
    v101 = v15;
    _onQueue_MRInvokeClientCallbacks(v9, v19, v16, v11, 1, @"metadata", v12, v99);
  }

  if ([v10 includeLanguageOptions])
  {
    v20 = [v10 skeleton];
    [v20 setIncludeLanguageOptions:1];
    dispatch_group_enter(v15);
    v21 = [v9 clientCallbacks];
    v22 = [v21 languageOptionsCallbacks];
    v23 = [v22 callbacks];
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_2;
    v96[3] = &unk_1E769B6D0;
    v97 = v71;
    v98 = v15;
    _onQueue_MRInvokeClientCallbacks(v9, v23, v20, v11, 0, @"language options", v12, v96);
  }

  if ([v10 includeInfo])
  {
    v24 = [v10 skeleton];
    [v24 setIncludeInfo:1];
    dispatch_group_enter(v15);
    v25 = [v9 clientCallbacks];
    v26 = [v25 infoCallbacks];
    v27 = [v26 callbacks];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_3;
    v93[3] = &unk_1E769B6D0;
    v94 = v71;
    v95 = v15;
    _onQueue_MRInvokeClientCallbacks(v9, v27, v24, v11, 0, @"info", v12, v93);
  }

  if ([v10 includeAlignments])
  {
    v28 = [v10 skeleton];
    [v28 setIncludeAlignments:1];
    dispatch_group_enter(v15);
    v29 = [v9 clientCallbacks];
    v30 = [v29 transcriptAlignmentsCallbacks];
    v31 = [v30 callbacks];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_4;
    v90[3] = &unk_1E769B6D0;
    v91 = v71;
    v92 = v15;
    _onQueue_MRInvokeClientCallbacks(v9, v31, v28, v11, 0, @"alignments", v12, v90);
  }

  if ([v10 includeLyrics])
  {
    v32 = [v10 skeleton];
    [v32 setIncludeLyrics:1];
    dispatch_group_enter(v15);
    v33 = [v9 clientCallbacks];
    v34 = [v33 lyricsCallbacks];
    v35 = [v34 callbacks];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_5;
    v87[3] = &unk_1E769B6D0;
    v88 = v71;
    v89 = v15;
    _onQueue_MRInvokeClientCallbacks(v9, v35, v32, v11, 0, @"lyrics", v12, v87);
  }

  if ([v10 includeAvailableArtworkFormats])
  {
    v36 = [v10 skeleton];
    [v36 setIncludeAvailableArtworkFormats:1];
    dispatch_group_enter(v15);
    v37 = [v9 clientCallbacks];
    v38 = [v37 availableArtworkFormatsCallbacks];
    v39 = [v38 callbacks];
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_6;
    v84[3] = &unk_1E769B6D0;
    v85 = v71;
    v86 = v15;
    _onQueue_MRInvokeClientCallbacks(v9, v39, v36, v11, 0, @"artwork formats", v12, v84);
  }

  if (([v10 includeArtwork] & 1) != 0 || objc_msgSend(v10, "includeRemoteArtwork"))
  {
    v40 = [v10 skeleton];
    [v10 artworkWidth];
    [v40 setArtworkWidth:?];
    [v10 artworkHeight];
    [v40 setArtworkHeight:?];
    v41 = [v10 requestedArtworkFormats];
    [v40 setRequestedArtworkFormats:v41];

    v42 = [v10 requestedRemoteArtworkFormats];
    [v40 setRequestedRemoteArtworkFormats:v42];

    v43 = [v10 requestedAnimatedArtworkPreviewFrameFormats];
    [v40 setRequestedAnimatedArtworkPreviewFrameFormats:v43];

    v44 = [v10 requestedAnimatedArtworkAssetURLFormats];
    [v40 setRequestedAnimatedArtworkAssetURLFormats:v44];

    v45 = [v40 requestedArtworkFormats];
    v70 = v12;
    if ([v45 count])
    {

      if (_os_feature_enabled_impl())
      {
        v68 = v15;
        v46 = v9;
        v47 = v13;
        v48 = v11;
        v49 = 1;
LABEL_24:
        v52 = [v40 requestedAnimatedArtworkPreviewFrameFormats];
        if ([v52 count])
        {
          v53 = 1;
        }

        else
        {
          v54 = [v40 requestedAnimatedArtworkAssetURLFormats];
          v53 = [v54 count] != 0;
        }

        if (v49)
        {
          v11 = v48;
          v13 = v47;
          v9 = v46;
          v15 = v68;
LABEL_31:
          dispatch_group_enter(v15);
          v55 = [v9 clientCallbacks];
          v56 = [v55 formattedArtworkCallbacks];
          v57 = [v56 callbacks];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_7;
          v81[3] = &unk_1E769B6D0;
          v82 = v71;
          v83 = v15;
          _onQueue_MRInvokeClientCallbacks(v9, v57, v40, v11, 0, @"formatted artwork", v70, v81);

          if (!v53)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }

        v11 = v48;
        v13 = v47;
        v9 = v46;
        v15 = v68;
        if (v53)
        {
LABEL_34:
          v67 = v13;
          dispatch_group_enter(v15);
          v58 = [v9 clientCallbacks];
          v59 = [v58 animatedArtworkCallbacks];
          v60 = [v59 callbacks];
          v61 = v11;
          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 3221225472;
          v78[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_8;
          v78[3] = &unk_1E769B6D0;
          v69 = &v79;
          v79 = v71;
          v62 = &v80;
          v80 = v15;
          v63 = @"animated artwork";
          v64 = v78;
          goto LABEL_35;
        }

LABEL_38:
        if (![v40 includeArtwork])
        {
          goto LABEL_36;
        }

        v67 = v13;
        dispatch_group_enter(v15);
        v58 = [v9 clientCallbacks];
        v59 = [v58 artworkCallbacks];
        v60 = [v59 callbacks];
        v61 = v11;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_9;
        v75[3] = &unk_1E769B6D0;
        v69 = &v76;
        v76 = v71;
        v62 = &v77;
        v77 = v15;
        v63 = @"artwork";
        v64 = v75;
LABEL_35:
        v11 = v61;
        _onQueue_MRInvokeClientCallbacks(v9, v60, v40, v61, 0, v63, v70, v64);

        v13 = v67;
LABEL_36:

        v12 = v70;
        goto LABEL_37;
      }
    }

    else
    {
      v68 = v15;
      v46 = v9;
      v47 = v13;
      v48 = v11;
      v50 = [v40 requestedRemoteArtworkFormats];
      v51 = [v50 count];
      v49 = v51 != 0;

      if (_os_feature_enabled_impl())
      {
        goto LABEL_24;
      }

      v11 = v48;
      v13 = v47;
      v9 = v46;
      v15 = v68;
      if (!v51)
      {
        goto LABEL_38;
      }
    }

    LOBYTE(v53) = 0;
    goto LABEL_31;
  }

LABEL_37:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___onQueue_MRInvokeClientAssetCallbacks_block_invoke_10;
  block[3] = &unk_1E769AB28;
  v73 = v71;
  v74 = v13;
  v65 = v71;
  v66 = v13;
  dispatch_group_notify(v15, v12, block);
}

void _onQueue_MRInvokeClientCallbacks(void *a1, void *a2, void *a3, void *a4, char a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  if (v15)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _onQueue_MRInvokeClientCallbacks_cold_1();
    if (v17)
    {
LABEL_3:
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  _onQueue_MRInvokeClientCallbacks_cold_2();
  if (v18)
  {
LABEL_4:
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_15:
    _onQueue_MRInvokeClientCallbacks_cold_4();
    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_14:
  _onQueue_MRInvokeClientCallbacks_cold_3();
  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v21)
  {
    goto LABEL_6;
  }

LABEL_16:
  _onQueue_MRInvokeClientCallbacks_cold_5();
LABEL_6:
  v22 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    _onQueue_MRInvokeClientCallbacks_cold_6(v17, v18);
  }

  v23 = [v16 firstObject];
  if (v23)
  {
    SkeletonFrom = MRContentItemCreateSkeletonFrom(v18);
    v35 = a5;
    v25 = [v17 copy];
    [v23 queue];
    v36 = v21;
    v26 = v18;
    v27 = v17;
    v28 = v20;
    v29 = v16;
    v30 = v15;
    v32 = v31 = v19;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___onQueue_MRInvokeClientCallbacks_block_invoke;
    block[3] = &unk_1E76A42A0;
    v38 = v30;
    v39 = v23;
    v40 = v25;
    v41 = SkeletonFrom;
    v42 = v28;
    v43 = v26;
    v44 = v29;
    v48 = v35;
    v45 = v27;
    v46 = v31;
    v47 = v36;
    v33 = SkeletonFrom;
    v34 = v25;
    dispatch_sync(v32, block);

    v19 = v31;
    v15 = v30;
    v16 = v29;
    v20 = v28;
    v17 = v27;
    v18 = v26;
    v21 = v36;
  }

  else
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Callback does not exist for: %@", v19];
    v33 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:14 description:v34];
    (*(v21 + 2))(v21, v33);
  }
}

void _onClientQueue_MRInvokeClientCallback(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _onClientQueue_MRInvokeClientCallback_cold_1();
    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  _onClientQueue_MRInvokeClientCallback_cold_2();
  if (v13)
  {
LABEL_4:
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  _onClientQueue_MRInvokeClientCallback_cold_3();
  if (v14)
  {
LABEL_5:
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_15:
    _onClientQueue_MRInvokeClientCallback_cold_5();
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_14:
  _onClientQueue_MRInvokeClientCallback_cold_4();
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_16:
  _onClientQueue_MRInvokeClientCallback_cold_6();
LABEL_7:
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = ___onClientQueue_MRInvokeClientCallback_block_invoke;
  v39[3] = &unk_1E76A1BC0;
  v17 = v11;
  v40 = v17;
  v18 = v14;
  v41 = v18;
  v19 = v13;
  v42 = v19;
  v43 = v15;
  v44 = v16;
  v20 = v16;
  v21 = v15;
  v22 = MEMORY[0x1A58E3570](v39);
  if ([v19 includeArtwork])
  {
    v23 = 63.0;
  }

  else
  {
    v23 = 8.0;
  }

  v24 = [MRBlockGuard alloc];
  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PlaybackQueue request %@ for item %@ datasource callback completion was not called. This is a bug in client code", v19, v18];
  v26 = [(MRBlockGuard *)v24 initWithTimeout:v25 reason:v22 handler:v23];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = ___onClientQueue_MRInvokeClientCallback_block_invoke_2;
  v33[3] = &unk_1E76A4250;
  v37 = v17;
  v38 = v22;
  v34 = v26;
  v35 = v18;
  v36 = v19;
  v27 = v12[2];
  v28 = v17;
  v29 = v19;
  v30 = v18;
  v31 = v22;
  v32 = v26;
  v27(v12, v29, v30, v33);
}

uint64_t MRContentItemIdentifierIsEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a2;
  v4 = [a1 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void MRContentItemMerge(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a1 == a2)
    {
      v3 = _MRLogForCategory(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        MRContentItemMerge_cold_2(a2, v3);
      }
    }

    else
    {
      v3 = a1;
      v4 = [a2 copy];
      v5 = [v3 identifier];
      v6 = [v4 identifier];
      v7 = [v5 isEqualToString:v6];

      if ((v7 & 1) == 0)
      {
        MRContentItemMerge_cold_1(v3, a2);
      }

      v8 = [v4 sections];

      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x1E695DF70]);
        v10 = [v4 sections];
        v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

        v12 = objc_alloc(MEMORY[0x1E695DF90]);
        v13 = [v3 sections];
        v14 = [v12 initWithCapacity:{objc_msgSend(v13, "count")}];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v15 = [v3 sections];
        v16 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v38;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v14 setObject:*(*(&v37 + 1) + 8 * i) forKeyedSubscript:MRContentItemGetIdentifier(*(*(&v37 + 1) + 8 * i))];
            }

            v17 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v17);
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = [v4 sections];
        v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v34;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v33 + 1) + 8 * j);
              v26 = [v14 objectForKeyedSubscript:MRContentItemGetIdentifier(v25)];
              v27 = v26;
              if (v26)
              {
                MRContentItemMerge(v26, v25);
                v28 = v11;
                v29 = v27;
              }

              else
              {
                v28 = v11;
                v29 = v25;
              }

              [v28 addObject:v29];
            }

            v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v22);
        }

        [v3 setSections:0];
        [v4 setSections:v11];
      }

      v30 = [v4 currentLanguageOptions];

      if (v30)
      {
        [v3 setCurrentLanguageOptions:0];
      }

      v31 = [v4 availableLanguageOptions];

      if (v31)
      {
        [v3 setAvailableLanguageOptions:0];
      }

      [v3 mergeFrom:v4];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

double MRContentItemGetInferredTimestamp(void *a1)
{
  v1 = [a1 metadata];
  [v1 inferredTimestamp];
  v3 = v2;

  return v3;
}

void MRCreateItemMetadataIfNotPresent(void *a1)
{
  v3 = a1;
  v1 = [v3 metadata];

  if (!v1)
  {
    v2 = objc_alloc_init(MRContentItemMetadata);
    [v3 setMetadata:v2];
  }
}

void _onQueue_MRLoadContentItemAssets(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v9;
  v36 = v13;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _onQueue_MRLoadContentItemAssets_cold_1();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  _onQueue_MRLoadContentItemAssets_cold_2();
LABEL_3:
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = [v10 contentItemIdentifiers];
  v38 = [MEMORY[0x1E695DFD8] setWithArray:?];
  v16 = dispatch_group_create();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v11;
  v17 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v50 + 1) + 8 * i);
        if (![v10 hasLocation])
        {
          goto LABEL_19;
        }

        [v21 identifier];
        v40 = v21;
        v22 = v16;
        v23 = v10;
        v24 = v18;
        v25 = v19;
        v26 = v15;
        v27 = v12;
        v29 = v28 = v14;
        v30 = [v38 containsObject:v29];

        v14 = v28;
        v12 = v27;
        v15 = v26;
        v19 = v25;
        v18 = v24;
        v10 = v23;
        v16 = v22;
        v21 = v40;
        if ((v30 & 1) == 0)
        {
LABEL_19:
          if ([v10 shouldRequestItem])
          {
            dispatch_group_enter(v16);
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = ___onQueue_MRLoadContentItemAssets_block_invoke;
            v47[3] = &unk_1E76A4318;
            v48 = v15;
            v49 = v16;
            _onQueue_MRInvokeClientAssetCallbacks(v14, v10, v21, v12, v47);
          }
        }

        dispatch_group_enter(v16);
        v31 = [v21 sections];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = ___onQueue_MRLoadContentItemAssets_block_invoke_2;
        v44[3] = &unk_1E769B6D0;
        v45 = v15;
        v46 = v16;
        _onQueue_MRLoadContentItemAssets(v14, v10, v31, v12, v44);
      }

      v18 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v18);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___onQueue_MRLoadContentItemAssets_block_invoke_3;
  block[3] = &unk_1E769A0A0;
  v42 = v15;
  v43 = v36;
  v32 = v36;
  v33 = v14;
  v34 = v15;
  dispatch_group_notify(v16, v12, block);

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1A28B7A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MRContentItemSetInferredTimestamp(void *a1, double a2)
{
  v11 = a1;
  v3 = [v11 metadata];

  v4 = v11;
  if (v11 && v3)
  {
    MRCreateItemMetadataIfNotPresent(v11);
    v5 = v11;
    v6 = [v5 metadata];
    [v6 inferredTimestamp];
    if (v7 == a2)
    {
      v8 = [v5 metadata];
      v9 = [v8 hasInferredTimestamp];

      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = [v5 metadata];
    [v10 setInferredTimestamp:a2];

LABEL_8:
    v4 = v11;
  }
}

void MRMediaRemoteNowPlayingPing(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServicePing(v4, v5, v3);
}

uint64_t MRMediaRemoteActiveEndpointChangeTypeCopyDescription(uint64_t a1)
{
  v1 = @"Deferrable";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"Immediate";
  }

  return [(__CFString *)v2 copy];
}

id MRLogCategoryMediaControl()
{
  if (MRLogCategoryMediaControl_onceToken != -1)
  {
    MRLogCategoryMediaControl_cold_1();
  }

  v1 = MRLogCategoryMediaControl_log;

  return v1;
}

uint64_t _MRKeyValuePairProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_MRValueProtobuf);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !_MRValueProtobufReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRValueProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            *(a1 + 76) |= 4u;
            LODWORD(v40) = 0;
            v33 = [a2 position] + 4;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 4, v34 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v40 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 56) = v40;
            goto LABEL_75;
          }

          if (v13 == 4)
          {
            *(a1 + 76) |= 1u;
            v40 = 0;
            v22 = [a2 position] + 8;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v40;
            goto LABEL_75;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v31 = PBReaderReadString();
            v32 = 64;
LABEL_59:
            v35 = *(a1 + v32);
            *(a1 + v32) = v31;

            goto LABEL_75;
          }

          if (v13 == 2)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v40 & 0x7F) << v15;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_68;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_68:
            *(a1 + 16) = v21;
            goto LABEL_75;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v31 = PBReaderReadData();
          v32 = 32;
          goto LABEL_59;
        }

        if (v13 == 6)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            LOBYTE(v40) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v40 & 0x7F) << v24;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_70;
            }
          }

          v30 = (v26 != 0) & ~[a2 hasError];
LABEL_70:
          *(a1 + 72) = v30;
          goto LABEL_75;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v31 = PBReaderReadString();
            v32 = 40;
            goto LABEL_59;
          case 8:
            v14 = objc_alloc_init(_MRValueProtobuf);
            [a1 addArrayValue:v14];
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !_MRValueProtobufReadFrom(v14, a2))
            {
LABEL_77:

              return 0;
            }

            goto LABEL_62;
          case 9:
            v14 = objc_alloc_init(_MRDictionaryProtobuf);
            objc_storeStrong((a1 + 48), v14);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !_MRDictionaryProtobufReadFrom(v14, a2))
            {
              goto LABEL_77;
            }

LABEL_62:
            PBReaderRecallMark();

            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _MRProtoUtilsPlistTypeFromProtoValue(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 hasStringValue])
  {
    v2 = [v1 stringValue];
LABEL_13:
    v5 = v2;
    goto LABEL_14;
  }

  if ([v1 hasInt64Value])
  {
    v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v1, "int64Value")}];
    goto LABEL_13;
  }

  if ([v1 hasFloatValue])
  {
    v3 = MEMORY[0x1E696AD98];
    [v1 floatValue];
    v2 = [v3 numberWithFloat:?];
    goto LABEL_13;
  }

  if ([v1 hasDoubleValue])
  {
    v4 = MEMORY[0x1E696AD98];
    [v1 doubleValue];
    v2 = [v4 numberWithDouble:?];
    goto LABEL_13;
  }

  if ([v1 hasDataValue])
  {
    v2 = [v1 dataValue];
    goto LABEL_13;
  }

  if ([v1 hasBoolValue])
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "BOOLValue")}];
    goto LABEL_13;
  }

  if ([v1 hasDateValue])
  {
    v8 = [v1 dateValue];
    if (_ISO8601DateFormatter_onceToken != -1)
    {
      _MRProtoUtilsPlistTypeFromProtoValue_cold_1();
    }

    v9 = [0 dateFromString:v8];
    goto LABEL_23;
  }

  if ([v1 hasDictionaryValue])
  {
    v8 = [v1 dictionaryValue];
    v9 = _MRProtoUtilsNSDictionaryFromProtoDictionary();
LABEL_23:
    v5 = v9;
LABEL_24:

    goto LABEL_14;
  }

  if ([v1 arrayValuesCount])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "arrayValuesCount")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v1 arrayValues];
    v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = _MRProtoUtilsPlistTypeFromProtoValue(*(*(&v15 + 1) + 8 * i));
          if (v14)
          {
            [v5 addObject:v14];
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    goto LABEL_24;
  }

  v5 = 0;
LABEL_14:

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void __MRServiceClientPlaybackQueueRequestCallback_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v8 = [v7 playbackQueueDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRServiceClientPlaybackQueueRequestCallback_block_invoke_2;
  block[3] = &unk_1E76A1B18;
  v12 = a1[4];
  v13 = v5;
  v14 = a1[5];
  v15 = v6;
  v16 = a1[6];
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

id MRMediaRemoteBundle()
{
  if (MRMediaRemoteBundle_onceToken != -1)
  {
    MRMediaRemoteBundle_cold_1();
  }

  v1 = MRMediaRemoteBundle_bundle;

  return v1;
}

void MRMediaRemoteServicePing(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = MRCreateXPCMessage(0x10000000000000CuLL);
  v9 = [MEMORY[0x1E695DF00] date];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = ___MRMediaRemoteServicePing_block_invoke;
  v19 = &unk_1E769C668;
  v20 = v9;
  v21 = v6;
  v10 = v6;
  v11 = v9;
  v12 = MEMORY[0x1A58E3570](&v16);
  v13 = v12;
  if (v5 && v10)
  {
    v14 = _MRServiceCreateErrorHandlerBlock(v12);
    v15 = [v7 connection];
    xpc_connection_send_message_with_reply(v15, v8, v5, v14);
  }

  else
  {
    v14 = [v7 connection];
    xpc_connection_send_message(v14, v8);
  }
}

id MRLocalizedStringFromTable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MRMediaRemoteBundle();
  v6 = MEMORY[0x1E696AAE8];
  v7 = [v5 localizations];
  v8 = [MEMORY[0x1E695DF58] preferredLanguages];
  v9 = [v6 preferredLocalizationsFromArray:v7 forPreferences:v8];

  v10 = [0 copy];
  if ([v9 count])
  {
    if (!v10)
    {
      v11 = [v9 objectAtIndexedSubscript:0];
      v12 = [v5 pathForResource:v4 ofType:@"strings" inDirectory:@"." forLocalization:v11];
      v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v12];
    }

    v13 = [v10 objectForKey:v3];
    if (!v13)
    {
      v13 = [v5 localizedStringForKey:v3 value:&stru_1F1513E38 table:v4];
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id MRCreateDistantExternalDeviceFromXPCMessage(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = xpc_dictionary_get_value(v1, "MRXPC_EXTERNAL_DEVICE_LISTENER_KEY");
    if (v3)
    {
      v4 = v3;
      v5 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v5 _setEndpoint:v4];

      objc_autoreleasePoolPop(v2);
      goto LABEL_6;
    }

    objc_autoreleasePoolPop(v2);
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void MRAddClientErrorToXPCMessage(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    v4 = MSVArchivedDataWithRootObject();
    v3 = v4;
    xpc_dictionary_set_data(v2, "MRXPC_CLIENT_ERROR_DATA_KEY", [v4 bytes], objc_msgSend(v4, "length"));
  }
}

double MRContentItemGetDuration(void *a1)
{
  v1 = [a1 metadata];
  [v1 duration];
  v3 = v2;

  return v3;
}

double MRContentItemGetElapsedTime(void *a1)
{
  v1 = [a1 metadata];
  [v1 elapsedTime];
  v3 = v2;

  return v3;
}

uint64_t MRContentItemGetPlayCount(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 playCount];

  return v2;
}

CFTypeRef MRContentItemGetAlbumName(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 albumName];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

CFTypeRef MRContentItemGetTrackArtistName(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 trackArtistName];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

CFTypeRef MRContentItemGetReleaseDate(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 releaseDate];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

uint64_t MRContentItemGetITunesStoreIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 iTunesStoreIdentifier];

  return v2;
}

_MRVolumeControlAvailabilityProtobuf *MRCapabilitiesToProtobuf(uint64_t a1)
{
  v2 = objc_alloc_init(_MRVolumeControlAvailabilityProtobuf);
  [(_MRVolumeControlAvailabilityProtobuf *)v2 setVolumeControlAvailable:a1 != 0];
  [(_MRVolumeControlAvailabilityProtobuf *)v2 setVolumeCapabilities:a1];

  return v2;
}

uint64_t MRMediaRemoteApplicationIsSystemAppleTVApplication(uint64_t a1)
{
  if (MRMediaRemoteApplicationIsSystemAppleTVApplication___once != -1)
  {
    MRMediaRemoteApplicationIsSystemAppleTVApplication_cold_1();
  }

  v2 = MRMediaRemoteApplicationIsSystemAppleTVApplication___allKnownSystemAppleTVApplications;

  return [v2 containsObject:a1];
}

uint64_t MRAVOutputDeviceIsGroupable(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 isGroupable];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRAVOutputDeviceGetSubtype(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 deviceSubtype];
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MRDataCreateStringRepresentation(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if ([v1 length] < 5)
  {
    v4 = [v1 description];
  }

  else
  {
    v2 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:objc_msgSend(v1 length:"bytes") freeWhenDone:{4, 0}];
    v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:objc_msgSend(v1 length:"bytes") + objc_msgSend(v1 freeWhenDone:{"length") - 4, 4, 0}];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...%@:%lu bytes", v2, v3, objc_msgSend(v1, "length")];
  }

  return v4;
}

uint64_t MRPlaybackQueueCreate(uint64_t a1, uint64_t a2)
{
  v4 = [MRPlaybackQueue alloc];

  return [(MRPlaybackQueue *)v4 initWithContentItems:a1 location:a2];
}

uint64_t MRPlaybackQueueCreateWithContentItem(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MRPlaybackQueue alloc];
  v7[0] = a1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(MRPlaybackQueue *)v2 initWithContentItems:v3];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t MRPlaybackQueueCreateWithContentItems(uint64_t a1)
{
  v2 = [MRPlaybackQueue alloc];

  return [(MRPlaybackQueue *)v2 initWithContentItems:a1];
}

uint64_t MRPlaybackQueueCreateWithNowPlayingContentItem(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MRPlaybackQueue alloc];
  v7[0] = a1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(MRPlaybackQueue *)v2 initWithContentItems:v3 location:0];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t MRPlaybackQueueCreateFromNowPlayingInfo(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = [[MRContentItem alloc] initWithNowPlayingInfo:a1];
  v2 = [MRPlaybackQueue alloc];
  v7[0] = v1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(MRPlaybackQueue *)v2 initWithContentItems:v3 location:0];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t MRPlaybackQueueCreateEmpty()
{
  v0 = [MRPlaybackQueue alloc];
  v1 = MEMORY[0x1E695E0F0];

  return [(MRPlaybackQueue *)v0 initWithContentItems:v1];
}

void *MRPlaybackQueueGetResolvedPlayerPath(void *a1)
{
  v1 = [a1 resolvedPlayerPath];

  return v1;
}

uint64_t MRPlaybackQueueGetContentItemsCount(void *a1)
{
  v1 = [a1 contentItems];
  v2 = [v1 count];

  return v2;
}

uint64_t MRPlaybackQueueQueueIsEqualToPlaybackQueue(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

uint64_t MRPlaybackQueueCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [MRPlaybackQueue alloc];

  return [(MRPlaybackQueue *)v2 initWithData:a1];
}

__CFString *MRPlaybackQueueCopyReadableDescription(void *a1)
{
  v1 = [a1 description];
  v2 = v1;
  v3 = @"NULL";
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  return v4;
}

void *MRPlaybackQueueCopyContentItemIdentifiers(void *result)
{
  if (result)
  {
    [result contentItemIdentifiers];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

void *MRPlaybackQueueGetRequestID(void *a1)
{
  v1 = [a1 requestIdentifier];

  return v1;
}

void *MRPlaybackQueueGetQueueID(void *a1)
{
  v1 = [a1 queueIdentifier];

  return v1;
}

uint64_t MRPlaybackQueueCopyMinimalReadableDescription(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 dictionaryRepresentation];
  v3 = [v2 mutableCopy];

  v4 = [v1 contentItems];

  v5 = MRContentItemsCopyMinimalReadableDescription(v4, 0);
  if (v5)
  {
    [v3 setObject:v5 forKey:@"contentItem"];
  }

  v6 = [v3 description];

  return v6;
}

void MRMediaRemotePlaybackQueueResetRequestsWithDataForPlayer(void *a1, void *a2)
{
  v4 = MRGetSharedService();

  MRMediaRemoteServiceResetPlaybackQueueRequests(v4, a1, a2);
}

void sub_1A28BF49C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void MRMediaRemoteSupportedCommandsHaveChangedForOrigin(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = @"kMRMediaRemoteOriginDataUserInfoKey";
    v1 = [a1 data];
    v6[0] = v1;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = MRGetSharedService();
  MRMediaRemoteServicePostNotification(v3, @"kMRMediaRemoteSupportedCommandsDidChangeNotification", v2);

  v4 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteRegisterForElapsedTimeChangesWithHandler(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v5 = a2;
  v6 = [v5 copy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteRegisterForElapsedTimeChangesWithHandler_block_invoke;
  v9[3] = &unk_1E769A0A0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __MRMediaRemoteRegisterForElapsedTimeChangesWithHandler_block_invoke(uint64_t a1)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteRegisterForElapsedTimeChangesWithHandler_block_invoke_2;
  handler[3] = &unk_1E769A078;
  v1 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2 = notify_register_dispatch("com.apple.MRMediaRemote.elapsedTimeDidChange", &__elapsedTimeChangeHandlerToken, v1, handler);
  __elapsedTimeChangeHandlerTokenIsValid = v2 == 0;
  if (!v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Registered for elapsed time changes.", v4, 2u);
    }
  }
}

void __MRMediaRemoteRegisterForElapsedTimeChangesWithHandler_block_invoke_2(uint64_t a1, int a2)
{
  v4 = _MRLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Got elapsed time change.", buf, 2u);
  }

  if (*(a1 + 32))
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    (*(*(a1 + 32) + 16))(*&state64);
  }
}

void __MRMediaRemoteUnregisterForElapsedTimeChanges_block_invoke()
{
  if (__elapsedTimeChangeHandlerTokenIsValid == 1)
  {
    notify_cancel(__elapsedTimeChangeHandlerToken);
    __elapsedTimeChangeHandlerTokenIsValid = 0;
    v0 = _MRLogForCategory(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A2860000, v0, OS_LOG_TYPE_DEFAULT, "Unregistered for elapsed time changes.", v1, 2u);
    }
  }
}

void MRMediaRemoteRegisterForPlaybackSpeedChangesWithHandler(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v5 = a2;
  v6 = [v5 copy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteRegisterForPlaybackSpeedChangesWithHandler_block_invoke;
  v9[3] = &unk_1E769A0A0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __MRMediaRemoteRegisterForPlaybackSpeedChangesWithHandler_block_invoke(uint64_t a1)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteRegisterForPlaybackSpeedChangesWithHandler_block_invoke_2;
  handler[3] = &unk_1E769A078;
  v1 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2 = notify_register_dispatch("com.apple.MRMediaRemote.playbackSpeedDidChange", &__playbackSpeedChangeHandlerToken, v1, handler);
  __playbackSpeedChangeHandlerTokenIsValid = v2 == 0;
  if (!v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Registered for playback speed changes.", v4, 2u);
    }
  }
}

void __MRMediaRemoteRegisterForPlaybackSpeedChangesWithHandler_block_invoke_2(uint64_t a1, int a2)
{
  v4 = _MRLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Got playback speed change.", buf, 2u);
  }

  if (*(a1 + 32))
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    (*(*(a1 + 32) + 16))();
  }
}

void __MRMediaRemoteUnregisterForPlaybackSpeedChanges_block_invoke()
{
  if (__playbackSpeedChangeHandlerTokenIsValid == 1)
  {
    notify_cancel(__playbackSpeedChangeHandlerToken);
    __playbackSpeedChangeHandlerTokenIsValid = 0;
    v0 = _MRLogForCategory(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A2860000, v0, OS_LOG_TYPE_DEFAULT, "Unregistered for playback speed changes.", v1, 2u);
    }
  }
}

void MRMediaRemoteRegisterForRepeatModeChangesWithHandler(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v5 = a2;
  v6 = [v5 copy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteRegisterForRepeatModeChangesWithHandler_block_invoke;
  v9[3] = &unk_1E769A0A0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __MRMediaRemoteRegisterForRepeatModeChangesWithHandler_block_invoke(uint64_t a1)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteRegisterForRepeatModeChangesWithHandler_block_invoke_2;
  handler[3] = &unk_1E769A078;
  v1 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2 = notify_register_dispatch("com.apple.MRMediaRemote.repeatModeDidChange", &__repeatModeChangeHandlerToken, v1, handler);
  __repeatModeChangeHandlerTokenIsValid = v2 == 0;
  if (!v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Registered for repeat mode changes.", v4, 2u);
    }
  }
}

void __MRMediaRemoteRegisterForRepeatModeChangesWithHandler_block_invoke_2(uint64_t a1, int a2)
{
  v4 = _MRLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Got repeat mode change.", buf, 2u);
  }

  if (*(a1 + 32))
  {
    state64 = 1;
    notify_get_state(a2, &state64);
    (*(*(a1 + 32) + 16))();
  }
}

void __MRMediaRemoteUnregisterForRepeatModeChanges_block_invoke()
{
  if (__repeatModeChangeHandlerTokenIsValid == 1)
  {
    notify_cancel(__repeatModeChangeHandlerToken);
    __repeatModeChangeHandlerTokenIsValid = 0;
    v0 = _MRLogForCategory(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A2860000, v0, OS_LOG_TYPE_DEFAULT, "Unregistered for repeat mode changes", v1, 2u);
    }
  }
}

void MRMediaRemoteRegisterForShuffleModeChangesWithHandler(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v5 = a2;
  v6 = [v5 copy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MRMediaRemoteRegisterForShuffleModeChangesWithHandler_block_invoke;
  v9[3] = &unk_1E769A0A0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __MRMediaRemoteRegisterForShuffleModeChangesWithHandler_block_invoke(uint64_t a1)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteRegisterForShuffleModeChangesWithHandler_block_invoke_2;
  handler[3] = &unk_1E769A078;
  v1 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2 = notify_register_dispatch("com.apple.MRMediaRemote.shuffleModeDidChange", &__shuffleModeChangeHandlerToken, v1, handler);
  __shuffleModeChangeHandlerTokenIsValid = v2 == 0;
  if (!v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Registered for shuffle mode changes.", v4, 2u);
    }
  }
}

void __MRMediaRemoteRegisterForShuffleModeChangesWithHandler_block_invoke_2(uint64_t a1, int a2)
{
  v4 = _MRLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Got shuffle mode change.", buf, 2u);
  }

  if (*(a1 + 32))
  {
    state64 = 1;
    notify_get_state(a2, &state64);
    (*(*(a1 + 32) + 16))();
  }
}

void __MRMediaRemoteUnregisterForShuffleModeChanges_block_invoke()
{
  if (__shuffleModeChangeHandlerTokenIsValid == 1)
  {
    notify_cancel(__shuffleModeChangeHandlerToken);
    __shuffleModeChangeHandlerTokenIsValid = 0;
    v0 = _MRLogForCategory(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1A2860000, v0, OS_LOG_TYPE_DEFAULT, "Unregistered for shuffle mode changes", v1, 2u);
    }
  }
}

uint64_t _MRTransactionPacketProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = PBReaderReadData();
          v22 = 40;
LABEL_34:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_58;
        }

        goto LABEL_47;
      }

      v30 = objc_alloc_init(_MRTransactionKeyProtobuf);
      objc_storeStrong((a1 + 32), v30);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !_MRTransactionKeyProtobufReadFrom(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_58:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v21 = PBReaderReadString();
        v22 = 24;
        goto LABEL_34;
      case 4:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v34[0] & 0x7F) << v24;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v26;
        }

LABEL_52:
        v31 = 8;
        goto LABEL_57;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34[0] & 0x7F) << v14;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_56;
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

LABEL_56:
        v31 = 16;
LABEL_57:
        *(a1 + v31) = v20;
        goto LABEL_58;
    }

LABEL_47:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_58;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRLyricsTokenProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR____MRLyricsTokenProtobuf__identifier;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR____MRLyricsTokenProtobuf__userData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRPlaybackSessionProtobufReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR____MRPlaybackSessionProtobuf__playbackSessionData;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR____MRPlaybackSessionProtobuf__identifier;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = &OBJC_IVAR____MRPlaybackSessionProtobuf__type;
            goto LABEL_28;
          case 4:
            v14 = PBReaderReadString();
            v15 = &OBJC_IVAR____MRPlaybackSessionProtobuf__revision;
            goto LABEL_28;
          case 5:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR____MRPlaybackSessionProtobuf__metadata;
LABEL_28:
            v16 = *v15;
            v17 = *(a1 + v16);
            *(a1 + v16) = v14;

            goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id MRAVOutputContextGetSharedSystemAudioContext()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[MRAVOutputContext sharedSystemAudioContext];
  objc_autoreleasePoolPop(v0);
  return v1;
}

id MRAVOutputContextGetSharedSystemScreenContext()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[MRAVOutputContext sharedSystemScreenContext];
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t MRAVOutputContextCreateiTunesAudioContext()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[MRAVOutputContext iTunesContext];
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t MRAVOutputContextCreateRoutingContext(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    a1 = [MRAVConcreteOutputContext createOutputContextWithUniqueIdentifier:a1];
  }

  objc_autoreleasePoolPop(v2);
  return a1;
}

uint64_t MRAVOutputContextGetType(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 type];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRAVOutputContextSetOutputDevice(void *a1, uint64_t a2, void *a3, void *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v12[0] = a2;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [a1 setOutputDevices:v10 withCallbackQueue:v7 block:v8];

  objc_autoreleasePoolPop(v9);
  v11 = *MEMORY[0x1E69E9840];
}

void MRAVOutputContextSetOutputDeviceWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v14[0] = a2;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [a1 setOutputDevices:v12 initiator:a3 withCallbackQueue:v9 block:v10];

  objc_autoreleasePoolPop(v11);
  v13 = *MEMORY[0x1E69E9840];
}

void MRAVOutputContextSetOutputDeviceWithPassword(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v14[0] = a2;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [a1 setOutputDevices:v12 withPassword:a3 withCallbackQueue:v9 block:v10];

  objc_autoreleasePoolPop(v11);
  v13 = *MEMORY[0x1E69E9840];
}

void MRAVOutputContextSetOutputDevices(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [a1 setOutputDevices:a2 withCallbackQueue:v9 block:v7];
  objc_autoreleasePoolPop(v8);
}

void MRAVOutputContextSetOutputDevicesWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [a1 setOutputDevices:a2 initiator:a3 withCallbackQueue:v11 block:v9];
  objc_autoreleasePoolPop(v10);
}

void MRAVOutputContextAddOutputDevice(void *a1, uint64_t a2, void *a3, void *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v12[0] = a2;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [a1 addOutputDevices:v10 withCallbackQueue:v7 block:v8];

  objc_autoreleasePoolPop(v9);
  v11 = *MEMORY[0x1E69E9840];
}

void MRAVOutputContextAddOutputDeviceWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v14[0] = a2;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [a1 addOutputDevices:v12 initiator:a3 withCallbackQueue:v9 block:v10];

  objc_autoreleasePoolPop(v11);
  v13 = *MEMORY[0x1E69E9840];
}

void MRAVOutputContextAddOutputDevices(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [a1 addOutputDevices:a2 withCallbackQueue:v9 block:v7];
  objc_autoreleasePoolPop(v8);
}

void MRAVOutputContextAddOutputDevicesWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [a1 addOutputDevices:a2 initiator:a3 withCallbackQueue:v11 block:v9];
  objc_autoreleasePoolPop(v10);
}

void MRAVOutputContextRemoveOutputDevice(void *a1, uint64_t a2, void *a3, void *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v12[0] = a2;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [a1 removeOutputDevices:v10 withCallbackQueue:v7 block:v8];

  objc_autoreleasePoolPop(v9);
  v11 = *MEMORY[0x1E69E9840];
}

void MRAVOutputContextRemoveOutputDeviceWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v14[0] = a2;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [a1 removeOutputDevices:v12 initiator:a3 withCallbackQueue:v9 block:v10];

  objc_autoreleasePoolPop(v11);
  v13 = *MEMORY[0x1E69E9840];
}

void MRAVOutputContextRemoveOutputDevices(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [a1 removeOutputDevices:a2 withCallbackQueue:v9 block:v7];
  objc_autoreleasePoolPop(v8);
}

void MRAVOutputContextRemoveOutputDevicesWithInitiator(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [a1 removeOutputDevices:a2 initiator:a3 withCallbackQueue:v11 block:v9];
  objc_autoreleasePoolPop(v10);
}

void MRAVOutputContextRemoveAllDevices(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  [a1 removeAllOutputDevicesWithCallbackQueue:v7 block:v5];
  objc_autoreleasePoolPop(v6);
}

uint64_t MRAVOutputContextSupportsMultipleBluetoothOutputDevices(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 supportsMultipleBluetoothOutputDevices];
  objc_autoreleasePoolPop(v2);
  return v3;
}

void MRAVOutputContextResetPredictedOutputDevice(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 resetPredictedOutputDevice];

  objc_autoreleasePoolPop(v2);
}

void sub_1A28C9008(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A28C91FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MRPlaybackSessionCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MRPlaybackSession alloc];

  return [(MRPlaybackSession *)v6 initWithIdentifier:a1 type:a2 playbackSessionData:a3 revision:0 metadata:0];
}

uint64_t MRPlaybackSessionCopyIdentifier(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPlaybackSessionCopyType(void *a1)
{
  v1 = [a1 type];
  v2 = [v1 copy];

  return v2;
}

uint64_t MRPlaybackSessionCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [MRPlaybackSession alloc];

  return [(MRPlaybackSession *)v2 initWithData:a1];
}

uint64_t _MRTextInputTraitsProtobufReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v89[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v89[0] & 0x7F) << v5;
        if ((v89[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 64) |= 0x40u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v89[0] & 0x7F) << v48;
              if ((v89[0] & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_139;
              }
            }

            v20 = (v50 != 0) & ~[a2 hasError];
LABEL_139:
            v80 = 61;
            goto LABEL_153;
          }

          if (v13 == 7)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 64) |= 0x80u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v89[0] & 0x7F) << v36;
              if ((v89[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_133;
              }
            }

            v20 = (v38 != 0) & ~[a2 hasError];
LABEL_133:
            v80 = 62;
            goto LABEL_153;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v60 = 0;
              v61 = 0;
              v62 = 0;
              *(a1 + 64) |= 2u;
              while (1)
              {
                LOBYTE(v89[0]) = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v89[0] & 0x7F) << v60;
                if ((v89[0] & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                v11 = v61++ >= 9;
                if (v11)
                {
                  v66 = 0;
                  goto LABEL_148;
                }
              }

              if ([a2 hasError])
              {
                v66 = 0;
              }

              else
              {
                v66 = v62;
              }

LABEL_148:
              v81 = 40;
              goto LABEL_158;
            case 9:
              v73 = 0;
              v74 = 0;
              v75 = 0;
              *(a1 + 64) |= 1u;
              while (1)
              {
                LOBYTE(v89[0]) = 0;
                v76 = [a2 position] + 1;
                if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
                {
                  v78 = [a2 data];
                  [v78 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v75 |= (v89[0] & 0x7F) << v73;
                if ((v89[0] & 0x80) == 0)
                {
                  break;
                }

                v73 += 7;
                v11 = v74++ >= 9;
                if (v11)
                {
                  v66 = 0;
                  goto LABEL_157;
                }
              }

              if ([a2 hasError])
              {
                v66 = 0;
              }

              else
              {
                v66 = v75;
              }

LABEL_157:
              v81 = 32;
LABEL_158:
              *(a1 + v81) = v66;
              goto LABEL_159;
            case 0xA:
              if ((v12 & 7) == 2)
              {
                v89[0] = 0;
                v89[1] = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v22 = [a2 position];
                  if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v23 = 0;
                  v24 = 0;
                  v25 = 0;
                  while (1)
                  {
                    v90 = 0;
                    v26 = [a2 position] + 1;
                    if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                    {
                      v28 = [a2 data];
                      [v28 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v25 |= (v90 & 0x7F) << v23;
                    if ((v90 & 0x80) == 0)
                    {
                      break;
                    }

                    v23 += 7;
                    v11 = v24++ >= 9;
                    if (v11)
                    {
                      goto LABEL_49;
                    }
                  }

                  [a2 hasError];
LABEL_49:
                  PBRepeatedUInt64Add();
                }

                PBReaderRecallMark();
              }

              else
              {
                v83 = 0;
                v84 = 0;
                v85 = 0;
                while (1)
                {
                  LOBYTE(v89[0]) = 0;
                  v86 = [a2 position] + 1;
                  if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
                  {
                    v88 = [a2 data];
                    [v88 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v85 |= (v89[0] & 0x7F) << v83;
                  if ((v89[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v83 += 7;
                  v11 = v84++ >= 9;
                  if (v11)
                  {
                    goto LABEL_172;
                  }
                }

                [a2 hasError];
LABEL_172:
                PBRepeatedUInt64Add();
              }

              goto LABEL_159;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v89[0]) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v89[0] & 0x7F) << v42;
            if ((v89[0] & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_137;
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

LABEL_137:
          v79 = 48;
          goto LABEL_144;
        }

        if (v13 == 2)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            LOBYTE(v89[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v89[0] & 0x7F) << v29;
            if ((v89[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_131;
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

LABEL_131:
          v79 = 52;
          goto LABEL_144;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 64) |= 0x10u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v57 = [a2 position] + 1;
              if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
              {
                v59 = [a2 data];
                [v59 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v56 |= (v89[0] & 0x7F) << v54;
              if ((v89[0] & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v11 = v55++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_143;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v56;
            }

LABEL_143:
            v79 = 56;
LABEL_144:
            *(a1 + v79) = v35;
            goto LABEL_159;
          case 4:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            *(a1 + 64) |= 0x20u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v69 |= (v89[0] & 0x7F) << v67;
              if ((v89[0] & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              v11 = v68++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_152;
              }
            }

            v20 = (v69 != 0) & ~[a2 hasError];
LABEL_152:
            v80 = 60;
            goto LABEL_153;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 64) |= 0x100u;
            while (1)
            {
              LOBYTE(v89[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v89[0] & 0x7F) << v14;
              if ((v89[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_150;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_150:
            v80 = 63;
LABEL_153:
            *(a1 + v80) = v20;
            goto LABEL_159;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_159:
      v82 = [a2 position];
    }

    while (v82 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void MRMediaRemotePlaybackSessionSetRequestCallbackForOrigin(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 originClientForOrigin:v4];

  [v6 setPlaybackSessionCallback:v3];
}

void MRMediaRemotePlaybackSessionSetMigrateBeginCallbackForOrigin(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 originClientForOrigin:v4];

  [v6 setPlaybackSessionMigrateBeginCallback:v3];
}

void MRMediaRemotePlaybackSessionSetMigrateEndCallbackForOrigin(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 originClientForOrigin:a1];

  [v5 setPlaybackSessionMigrateEndCallback:v3];
}

void MRMediaRemotePlaybackSessionSetMigrateFinalizeCallbackForOrigin(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 originClientForOrigin:v4];

  [v6 setPlaybackSessionMigrateFinalizeCallback:v3];
}

void MRMediaRemotePlaybackSessionSetMigratePostCallback(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v7 = [v5 playerClientForPlayerPath:v4];

  v6 = [v7 clientCallbacks];
  [v6 setPlaybackSessionMigratePostCallback:v3];
}