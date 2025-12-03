@interface FlexSegment
+ (BOOL)canTransitionFromSegment:(id)segment toSegment:(id)toSegment fromBarIndex:(int64_t)index checkIfPrevented:(BOOL)prevented;
+ (FlexSegment)segmentWithName:(id)name inSegments:(id)segments;
+ (id)longLabelForSegmentType:(unint64_t)type;
+ (id)readInfoFromAudioFileAtPath:(id)path;
+ (id)segmentsWithType:(unint64_t)type inSegments:(id)segments;
+ (id)segmentsWithType:(unint64_t)type nameIndex:(id)index nameSuffix:(id)suffix inSegments:(id)segments;
+ (id)shortLabelForSegmentType:(unint64_t)type;
+ (int64_t)crossfadeLengthInSamplesForFromSeg:(id)seg toSeg:(id)toSeg fadeOutTimeInMsec:(int64_t)msec fadeInTimeInMsec:(int64_t)inMsec validFadeOutSamples:(int64_t *)samples validFadeInSamples:(int64_t *)inSamples;
+ (int64_t)samplesForTimeInMsec:(int64_t)msec atSampleRate:(int64_t)rate;
- (BOOL)isPriorityValid;
- (BOOL)linkedPerBarTransitionsToSegmentNamed:(id)named;
- (BOOL)relinkAllTransitions;
- (FlexSegment)initWithDictionary:(id)dictionary;
- (FlexSegment)initWithFileAtPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsDictionary;
- (id)initAsCrossFade:(id)fade sampleRate:(int64_t)rate sampleCount:(int64_t)count beatsPerBar:(int64_t)bar;
- (id)transitionToSegmentNamed:(id)named fromBarIndex:(int64_t)index;
- (int64_t)barEndPositionForBarIndex:(int64_t)index;
- (int64_t)barStartPositionForBarIndex:(int64_t)index;
- (int64_t)samplesPerBar;
- (void)_decodeTypeInfoFromSegmentName;
- (void)addMetadataValue:(id)value forKey:(id)key;
- (void)addOrReplaceTransition:(id)transition toSegmentNamed:(id)named fromBarIndex:(int64_t)index;
- (void)removeTransitionToSegmentNamed:(id)named fromBarIndex:(int64_t)index;
- (void)setBars:(int64_t)bars;
- (void)setLinkedPerBarTransitions:(BOOL)transitions toSegmentNamed:(id)named;
- (void)setName:(id)name;
@end

@implementation FlexSegment

- (FlexSegment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v124.receiver = self;
  v124.super_class = FlexSegment;
  v8 = [(FlexSegment *)&v124 init];
  if (v8)
  {
    v9 = objc_msgSend_objectForKey_(dictionaryCopy, v5, @"name", v6, v7);
    name = v8->_name;
    v8->_name = v9;

    objc_msgSend__decodeTypeInfoFromSegmentName(v8, v11, v12, v13, v14);
    v18 = objc_msgSend_objectForKey_(dictionaryCopy, v15, @"bars", v16, v17);
    v8->_bars = objc_msgSend_intValue(v18, v19, v20, v21, v22);

    v26 = objc_msgSend_objectForKey_(dictionaryCopy, v23, @"priority", v24, v25);
    v8->_priority = objc_msgSend_intValue(v26, v27, v28, v29, v30);

    v34 = objc_msgSend_objectForKey_(dictionaryCopy, v31, @"beatsPerBar", v32, v33);
    v8->_beatsPerBar = objc_msgSend_intValue(v34, v35, v36, v37, v38);

    if (!v8->_beatsPerBar)
    {
      v8->_beatsPerBar = 4;
    }

    v42 = objc_msgSend_objectForKey_(dictionaryCopy, v39, @"sampleRate", v40, v41);
    v8->_sampleRate = objc_msgSend_intValue(v42, v43, v44, v45, v46);

    v50 = objc_msgSend_objectForKey_(dictionaryCopy, v47, @"sampleCount", v48, v49);
    v8->_sampleCount = objc_msgSend_longLongValue(v50, v51, v52, v53, v54);

    v58 = objc_msgSend_objectForKey_(dictionaryCopy, v55, @"sliceable", v56, v57);
    v8->_sliceable = objc_msgSend_BOOLValue(v58, v59, v60, v61, v62);

    if (v8->_sliceable && objc_msgSend_type(v8, v63, v64, v65, v66) != 2)
    {
      v8->_sliceable = 0;
    }

    v67 = objc_msgSend_objectForKey_(dictionaryCopy, v63, @"customBarMarkers", v65, v66);
    v68 = objc_opt_class();
    v71 = objc_msgSend_decodeItemsInArray_asClass_(FlexUtilities, v69, v67, v68, v70);
    customBarMarkers = v8->_customBarMarkers;
    v8->_customBarMarkers = v71;

    if (objc_msgSend_count(v8->_customBarMarkers, v73, v74, v75, v76))
    {
      sampleCount = -1;
    }

    else
    {
      v81 = v8->_customBarMarkers;
      v8->_customBarMarkers = 0;

      bars = v8->_bars;
      sampleCount = v8->_sampleCount;
      if (bars >= 1)
      {
        sampleCount /= bars;
      }
    }

    v8->_samplesPerBar = sampleCount;
    v83 = objc_msgSend_objectForKey_(dictionaryCopy, v77, @"transitions", v78, v79);
    v84 = objc_opt_class();
    v87 = objc_msgSend_decodeItemsInDict_asClass_(FlexUtilities, v85, v83, v84, v86);
    transitions = v8->_transitions;
    v8->_transitions = v87;

    if ((objc_msgSend_sliceable(v8, v89, v90, v91, v92) & 1) == 0 && objc_msgSend_relinkAllTransitions(v8, v93, v94, v95, v96))
    {
      v97 = FlexLogForCategory(1uLL);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        sub_24B814A04(v8, v97, v98, v99, v100);
      }
    }

    if (objc_msgSend_type(v8, v93, v94, v95, v96) == 4)
    {
      v104 = objc_msgSend_objectForKey_(dictionaryCopy, v101, @"markers", v102, v103);
      v105 = objc_opt_class();
      v108 = objc_msgSend_decodeItemsInDict_asClass_(FlexUtilities, v106, v104, v105, v107);
      markers = v8->_markers;
      v8->_markers = v108;
    }

    v110 = objc_msgSend_objectForKey_(dictionaryCopy, v101, @"peakValue", v102, v103);
    v114 = objc_msgSend_objectForKey_(dictionaryCopy, v111, @"loudness", v112, v113);
    if (v110 | v114)
    {
      v115 = objc_opt_new();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setObject_forKey_(v115, v116, v110, @"PeakValue", v117);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setObject_forKey_(v115, v118, v114, @"Loudness", v120);
      }

      v121 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v118, v115, v119, v120);
      metadataValues = v8->_metadataValues;
      v8->_metadataValues = v121;
    }
  }

  return v8;
}

- (id)initAsCrossFade:(id)fade sampleRate:(int64_t)rate sampleCount:(int64_t)count beatsPerBar:(int64_t)bar
{
  fadeCopy = fade;
  v22.receiver = self;
  v22.super_class = FlexSegment;
  v12 = [(FlexSegment *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, fade);
    objc_msgSend__decodeTypeInfoFromSegmentName(v13, v14, v15, v16, v17);
    if (v13->_type != 5)
    {
      v20 = 0;
      goto LABEL_6;
    }

    *&v13->_priority = vdupq_n_s64(1uLL);
    v13->_sampleRate = rate;
    v13->_sampleCount = count;
    v13->_sliceable = 0;
    v13->_beatsPerBar = bar;
    v13->_samplesPerBar = count;
    customBarMarkers = v13->_customBarMarkers;
    v13->_customBarMarkers = 0;

    transitions = v13->_transitions;
    v13->_transitions = 0;

    v13->_errors = 0;
  }

  v20 = v13;
LABEL_6:

  return v20;
}

- (int64_t)samplesPerBar
{
  if (self->_samplesPerBar == -1)
  {
    return -1;
  }

  bars = self->_bars;
  result = self->_sampleCount;
  if (bars >= 2)
  {
    result /= bars;
  }

  return result;
}

- (FlexSegment)initWithFileAtPath:(id)path
{
  pathCopy = path;
  v60.receiver = self;
  v60.super_class = FlexSegment;
  v9 = [(FlexSegment *)&v60 init];
  if (!v9)
  {
LABEL_9:
    v29 = v9;
    goto LABEL_10;
  }

  v10 = objc_msgSend_lastPathComponent(pathCopy, v5, v6, v7, v8);
  v15 = objc_msgSend_stringByDeletingPathExtension(v10, v11, v12, v13, v14);
  name = v9->_name;
  v9->_name = v15;

  objc_msgSend__decodeTypeInfoFromSegmentName(v9, v17, v18, v19, v20);
  v24 = objc_msgSend_readInfoFromAudioFileAtPath_(FlexSegment, v21, pathCopy, v22, v23);
  v29 = v24;
  if (v24)
  {
    v9->_sampleRate = objc_msgSend_sampleRate(v24, v25, v26, v27, v28);
    v9->_sampleCount = objc_msgSend_sampleCount(v29, v30, v31, v32, v33);
    v9->_beatsPerBar = 4;
    v9->_bars = objc_msgSend_bars(v29, v34, v35, v36, v37);
    v9->_samplesPerBar = objc_msgSend_samplesPerBar(v29, v38, v39, v40, v41);
    v46 = objc_msgSend_customBarMarkers(v29, v42, v43, v44, v45);
    customBarMarkers = v9->_customBarMarkers;
    v9->_customBarMarkers = v46;

    if (objc_msgSend_type(v9, v48, v49, v50, v51) == 2)
    {
      LODWORD(v56) = 10 * objc_msgSend_intValue(v9->_nameIndex, v52, v53, v54, v55);
      if (v56 >= 100)
      {
        LODWORD(v56) = 100;
      }

      v56 = v56;
    }

    else
    {
      v56 = 0;
    }

    v9->_priority = v56;
    v9->_sliceable = 0;
    v57 = objc_opt_new();
    transitions = v9->_transitions;
    v9->_transitions = v57;

    goto LABEL_9;
  }

LABEL_10:

  return v29;
}

- (id)encodeAsDictionary
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v11 = objc_msgSend_name(self, v7, v8, v9, v10);
  objc_msgSend_setValue_forKey_(v6, v12, v11, @"name", v13);

  v14 = MEMORY[0x277CCABB0];
  v19 = objc_msgSend_bars(self, v15, v16, v17, v18);
  v23 = objc_msgSend_numberWithInteger_(v14, v20, v19, v21, v22);
  objc_msgSend_setValue_forKey_(v6, v24, v23, @"bars", v25);

  v26 = MEMORY[0x277CCABB0];
  v31 = objc_msgSend_priority(self, v27, v28, v29, v30);
  v35 = objc_msgSend_numberWithInteger_(v26, v32, v31, v33, v34);
  objc_msgSend_setValue_forKey_(v6, v36, v35, @"priority", v37);

  v38 = MEMORY[0x277CCABB0];
  v43 = objc_msgSend_beatsPerBar(self, v39, v40, v41, v42);
  v47 = objc_msgSend_numberWithInteger_(v38, v44, v43, v45, v46);
  objc_msgSend_setValue_forKey_(v6, v48, v47, @"beatsPerBar", v49);

  v50 = MEMORY[0x277CCABB0];
  v55 = objc_msgSend_sampleRate(self, v51, v52, v53, v54);
  v59 = objc_msgSend_numberWithInteger_(v50, v56, v55, v57, v58);
  objc_msgSend_setValue_forKey_(v6, v60, v59, @"sampleRate", v61);

  v62 = MEMORY[0x277CCABB0];
  v67 = objc_msgSend_sampleCount(self, v63, v64, v65, v66);
  v71 = objc_msgSend_numberWithLongLong_(v62, v68, v67, v69, v70);
  objc_msgSend_setValue_forKey_(v6, v72, v71, @"sampleCount", v73);

  if (objc_msgSend_type(self, v74, v75, v76, v77) == 2 && objc_msgSend_sliceable(self, v78, v79, v80, v81))
  {
    v82 = MEMORY[0x277CCABB0];
    v83 = objc_msgSend_sliceable(self, v78, v79, v80, v81);
    v87 = objc_msgSend_numberWithBool_(v82, v84, v83, v85, v86);
    objc_msgSend_setValue_forKey_(v6, v88, v87, @"sliceable", v89);
  }

  v90 = objc_msgSend_customBarMarkers(self, v78, v79, v80, v81);
  v94 = objc_msgSend_encodeItemsInArray_(FlexUtilities, v91, v90, v92, v93);

  if (v94)
  {
    objc_msgSend_setValue_forKey_(v6, v95, v94, @"customBarMarkers", v98);
  }

  v99 = objc_msgSend_transitions(self, v95, v96, v97, v98);
  v104 = objc_msgSend_count(v99, v100, v101, v102, v103);

  if (v104)
  {
    v109 = objc_msgSend_transitions(self, v105, v106, v107, v108);
    v113 = objc_msgSend_encodeItemsInDict_(FlexUtilities, v110, v109, v111, v112);

    if (v113)
    {
      objc_msgSend_setValue_forKey_(v6, v114, v113, @"transitions", v115);
    }
  }

  if (objc_msgSend_type(self, v105, v106, v107, v108) == 4)
  {
    v120 = objc_msgSend_markers(self, v116, v117, v118, v119);
    v125 = objc_msgSend_count(v120, v121, v122, v123, v124);

    if (v125)
    {
      v127 = objc_msgSend_markers(self, v116, v126, v118, v119);
      v131 = objc_msgSend_encodeItemsInDict_(FlexUtilities, v128, v127, v129, v130);

      if (v131)
      {
        objc_msgSend_setValue_forKey_(v6, v132, v131, @"markers", v133);
      }
    }
  }

  v137 = objc_msgSend_metadataValueForKey_(self, v116, @"PeakValue", v118, v119);
  if (v137)
  {
    objc_msgSend_setValue_forKey_(v6, v134, v137, @"peakValue", v136);
  }

  v140 = objc_msgSend_metadataValueForKey_(self, v134, @"Loudness", v135, v136);
  if (v140)
  {
    objc_msgSend_setValue_forKey_(v6, v138, v140, @"loudness", v139);
  }

  return v6;
}

+ (id)readInfoFromAudioFileAtPath:(id)path
{
  v177 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!pathCopy)
  {
    v20 = 0;
    goto LABEL_17;
  }

  v6 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v3, pathCopy, 0, v4);
  if (!v6)
  {
    v20 = 0;
    goto LABEL_16;
  }

  v7 = objc_opt_new();
  outExtAudioFile = 0;
  if (ExtAudioFileOpenURL(v6, &outExtAudioFile))
  {
    v11 = 1;
  }

  else
  {
    v11 = outExtAudioFile == 0;
  }

  if (v11)
  {
LABEL_10:
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"Cannot open audio file: %@", v9, v10, pathCopy);
    v19 = FlexLogForCategory(1uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_24B814A9C(v18, v19);
    }

    v20 = 0;
    goto LABEL_13;
  }

  v173 = 0;
  memset(outPropertyData, 0, sizeof(outPropertyData));
  ioPropertyDataSize = 40;
  if (ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &ioPropertyDataSize, outPropertyData) || (objc_msgSend_setSampleRate_(v7, v12, *outPropertyData, v13, v14), *outDataSize = 0, ioPropertyDataSize = 8, ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioPropertyDataSize, outDataSize)))
  {
    ExtAudioFileDispose(outExtAudioFile);
    outExtAudioFile = 0;
    goto LABEL_10;
  }

  objc_msgSend_setSampleCount_(v7, v15, *outDataSize, v16, v17);
  ExtAudioFileDispose(outExtAudioFile);
  outExtAudioFile = 0;
  *&outPropertyData[0] = 0;
  if (AudioFileOpenURL(v6, kAudioFileReadPermission, 0, outPropertyData) || !*&outPropertyData[0])
  {
    goto LABEL_29;
  }

  outDataSize[0] = 0;
  if (AudioFileGetPropertyInfo(*&outPropertyData[0], 0x6D6B6C73u, outDataSize, 0) || !outDataSize[0])
  {
    AudioFileClose(*&outPropertyData[0]);
    goto LABEL_29;
  }

  v26 = malloc_type_malloc(outDataSize[0], 0xDE8B280AuLL);
  if (AudioFileGetProperty(*&outPropertyData[0], 0x6D6B6C73u, outDataSize, v26) || !v26[1])
  {
    v27 = 0;
    goto LABEL_26;
  }

  v39 = 0;
  v27 = 0;
  v40 = (v26 + 6);
  do
  {
    v41 = *(v40 - 1);
    if (objc_msgSend_hasPrefix_(v41, v42, @"Tempo:", v43, v44))
    {
      if (objc_msgSend_bpm(v7, v45, v46, v47, v48))
      {
        goto LABEL_45;
      }

      v164 = v27;
      v52 = v26;
      v53 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v49, v41, v50, v51);
      objc_msgSend_scanString_intoString_(v53, v54, @"Tempo:", 0, v55);
      v60 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v56, v57, v58, v59);
      v170 = 0;
      objc_msgSend_scanCharactersFromSet_intoString_(v53, v61, v60, &v170, v62);
      v63 = v170;

      if (objc_msgSend_length(v63, v64, v65, v66, v67))
      {
        v72 = objc_msgSend_intValue(v63, v68, v69, v70, v71);
        if (v72 >= 1)
        {
          objc_msgSend_setBpm_(v7, v73, v72, v74, v75);
        }
      }

      v26 = v52;
      v27 = v164;
    }

    else
    {
      v76 = *v40;
      v77 = *(v40 - 2);
      v78 = [FlexMarker alloc];
      v80 = objc_msgSend_initWithName_markerID_position_(v78, v79, v41, v76, v77);
      v53 = v80;
      if (v80 && objc_msgSend_type(v80, v81, v82, v83, v84))
      {
        if (!v27)
        {
          v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v85, v86, v87, v88);
        }

        objc_msgSend_addObject_(v27, v85, v53, v87, v88);
      }
    }

LABEL_45:
    ++v39;
    v40 += 5;
  }

  while (v39 < v26[1]);
  if (v27)
  {
    objc_msgSend_sortUsingComparator_(v27, v89, &unk_285EA0690, v90, v91);
    if (objc_msgSend_count(v27, v92, v93, v94, v95) == 1)
    {
      v100 = objc_msgSend_firstObject(v27, v96, v97, v98, v99);
      if (objc_msgSend_type(v100, v101, v102, v103, v104) == 2 && objc_msgSend_number(v100, v105, v106, v107, v108) >= 1)
      {
        v113 = objc_msgSend_number(v100, v109, v110, v111, v112);
        objc_msgSend_setBars_(v7, v114, v113, v115, v116);
        v121 = objc_msgSend_sampleCount(v7, v117, v118, v119, v120);
        v126 = objc_msgSend_bars(v7, v122, v123, v124, v125);
        objc_msgSend_setSamplesPerBar_(v7, v127, v121 / v126, v128, v129);
        objc_msgSend_setCustomBarMarkers_(v7, v130, 0, v131, v132);
      }

      else
      {
        v163 = FlexLogForCategory(1uLL);
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
        {
          sub_24B814B14(v163);
        }

        v27 = 0;
      }
    }

    else if (objc_msgSend_count(v27, v96, v97, v98, v99))
    {
      v165 = v26;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v27 = v27;
      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v133, &v166, v176, 16);
      if (v134)
      {
        v139 = v134;
        v140 = *v167;
        v141 = 1;
        while (2)
        {
          v142 = 0;
          v143 = v141;
          v141 += v139;
          do
          {
            if (*v167 != v140)
            {
              objc_enumerationMutation(v27);
            }

            v144 = *(*(&v166 + 1) + 8 * v142);
            if (objc_msgSend_type(v144, v135, v136, v137, v138) != 1 || v143 != objc_msgSend_number(v144, v145, v146, v147, v148))
            {

              v27 = 0;
              goto LABEL_67;
            }

            ++v143;
            ++v142;
          }

          while (v139 != v142);
          v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v135, &v166, v176, 16);
          if (v139)
          {
            continue;
          }

          break;
        }
      }

      v153 = objc_msgSend_count(v27, v149, v150, v151, v152);
      objc_msgSend_setBars_(v7, v154, v153, v155, v156);
      objc_msgSend_setSamplesPerBar_(v7, v157, -1, v158, v159);
      objc_msgSend_setCustomBarMarkers_(v7, v160, v27, v161, v162);
LABEL_67:
      v26 = v165;
    }
  }

LABEL_26:
  free(v26);
  AudioFileClose(*&outPropertyData[0]);
  if (!v27)
  {
LABEL_29:
    objc_msgSend_setBars_(v7, v23, 1, v24, v25);
    v32 = objc_msgSend_sampleCount(v7, v28, v29, v30, v31);
    objc_msgSend_setSamplesPerBar_(v7, v33, v32, v34, v35);
    objc_msgSend_setCustomBarMarkers_(v7, v36, 0, v37, v38);
    v27 = 0;
  }

  v20 = v7;
LABEL_13:

LABEL_16:
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)setName:(id)name
{
  objc_storeStrong(&self->_name, name);

  objc_msgSend__decodeTypeInfoFromSegmentName(self, v4, v5, v6, v7);
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_name(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stringWithFormat_(v5, v7, @"name %@", v8, v9, v6);

  return v10;
}

+ (id)shortLabelForSegmentType:(unint64_t)type
{
  if (type > 5)
  {
    return 0;
  }

  else
  {
    return off_27900F700[type];
  }
}

+ (id)longLabelForSegmentType:(unint64_t)type
{
  if (type > 5)
  {
    return 0;
  }

  else
  {
    return off_27900F730[type];
  }
}

- (void)_decodeTypeInfoFromSegmentName
{
  namePrefix = self->_namePrefix;
  self->_namePrefix = &stru_285EA09B0;

  p_nameStem = &self->_nameStem;
  nameStem = self->_nameStem;
  self->_nameStem = &stru_285EA09B0;

  nameIndex = self->_nameIndex;
  self->_nameIndex = &stru_285EA09B0;

  nameSuffix = self->_nameSuffix;
  self->_nameSuffix = &stru_285EA09B0;

  self->_type = 0;
  v12 = objc_msgSend_name(self, v8, v9, v10, v11);

  if (v12)
  {
    v17 = MEMORY[0x277CCAC80];
    v18 = objc_msgSend_name(self, v13, v14, v15, v16);
    v22 = objc_msgSend_scannerWithString_(v17, v19, v18, v20, v21);

    v111 = 0;
    objc_msgSend_scanUpToString_intoString_(v22, v23, @"_", &v111, v24);
    v29 = v111;
    if (v29 && (objc_msgSend_name(self, v25, v26, v27, v28), v30 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v29, v31, v30, v32, v33), v30, (isEqualToString & 1) == 0))
    {
      v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%@_", v27, v28, v29);
      v39 = self->_namePrefix;
      self->_namePrefix = v38;

      v35 = objc_msgSend_scanLocation(v22, v40, v41, v42, v43) + 1;
      objc_msgSend_setScanLocation_(v22, v44, v35, v45, v46);
    }

    else
    {
      v35 = 0;
      objc_msgSend_setScanLocation_(v22, v25, 0, v27, v28);
    }

    objc_msgSend_scanUpToString_intoString_(v22, v36, @"-", 0, v37);
    v51 = objc_msgSend_scanLocation(v22, v47, v48, v49, v50);
    v56 = objc_msgSend_name(self, v52, v53, v54, v55);
    v61 = objc_msgSend_length(v56, v57, v58, v59, v60);

    objc_msgSend_setScanLocation_(v22, v62, v35, v63, v64);
    if (v51 != v61)
    {
      v107 = 0;
      objc_msgSend_scanUpToString_intoString_(v22, v65, &stru_285EA09B0, &v107, v68);
      v96 = v107;
      v73 = v107;
      objc_storeStrong(&self->_nameStem, v96);
      v84 = 0;
      v95 = 0;
      v97 = 5;
      goto LABEL_23;
    }

    v69 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v65, v66, v67, v68);
    v110 = 0;
    objc_msgSend_scanUpToCharactersFromSet_intoString_(v22, v70, v69, &v110, v71);
    v72 = v110;
    v73 = v110;

    if (v73)
    {
      objc_storeStrong(&self->_nameStem, v72);
      v81 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v77, v78, v79, v80);
      v109 = 0;
      objc_msgSend_scanCharactersFromSet_intoString_(v22, v82, v81, &v109, v83);
      v84 = v109;

      if (v84)
      {
        v86 = MEMORY[0x277CCACA8];
        v87 = objc_msgSend_intValue(v84, v74, v85, v75, v76);
        v91 = objc_msgSend_stringWithFormat_(v86, v88, @"%i", v89, v90, v87);
        objc_storeStrong(&self->_nameIndex, v91);
        v108 = 0;
        objc_msgSend_scanUpToString_intoString_(v22, v92, &stru_285EA09B0, &v108, v93);
        v94 = v108;
        v95 = v108;
        if (v95)
        {
          objc_storeStrong(&self->_nameSuffix, v94);
        }

LABEL_15:
        if (objc_msgSend_isEqualToString_(*p_nameStem, v74, @"Body", v75, v76))
        {
          v97 = 2;
        }

        else if (objc_msgSend_isEqualToString_(*p_nameStem, v98, @"In", v99, v100))
        {
          v97 = 1;
        }

        else if (objc_msgSend_isEqualToString_(*p_nameStem, v101, @"Trans", v102, v103))
        {
          v97 = 3;
        }

        else
        {
          if ((objc_msgSend_isEqualToString_(*p_nameStem, v104, @"Out", v105, v106) & 1) == 0)
          {
LABEL_24:

            return;
          }

          v97 = 4;
        }

LABEL_23:
        self->_type = v97;
        goto LABEL_24;
      }
    }

    else
    {
      v84 = 0;
    }

    v95 = 0;
    goto LABEL_15;
  }
}

- (int64_t)barStartPositionForBarIndex:(int64_t)index
{
  if (index < 0)
  {
    return 0;
  }

  indexCopy = index;
  if (objc_msgSend_bars(self, a2, index, v3, v4) <= index)
  {
    return 0;
  }

  if (objc_msgSend_samplesPerBar(self, v7, v8, v9, v10) != -1)
  {
    indexCopy *= objc_msgSend_samplesPerBar(self, v11, v12, v13, v14);
    return indexCopy;
  }

  v15 = objc_msgSend_customBarMarkers(self, v11, v12, v13, v14);
  v20 = objc_msgSend_count(v15, v16, v17, v18, v19);

  if (v20 <= indexCopy)
  {
    return 0;
  }

  v25 = objc_msgSend_customBarMarkers(self, v21, v22, v23, v24);
  v29 = objc_msgSend_objectAtIndex_(v25, v26, indexCopy, v27, v28);

  if (indexCopy)
  {
    indexCopy = objc_msgSend_position(v29, v30, v31, v32, v33);
  }

  return indexCopy;
}

- (int64_t)barEndPositionForBarIndex:(int64_t)index
{
  if (index < 0 || objc_msgSend_bars(self, a2, index, v3, v4) <= index)
  {
    return 0;
  }

  if (objc_msgSend_bars(self, v7, v8, v9, v10) - 1 == index)
  {

    return objc_msgSend_sampleCount(self, v11, v12, v13, v14);
  }

  else
  {

    return objc_msgSend_barStartPositionForBarIndex_(self, v11, index + 1, v13, v14);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = objc_alloc_init(objc_opt_class());
  if (v9)
  {
    v10 = objc_msgSend_name(self, v5, v6, v7, v8);
    v14 = objc_msgSend_copyWithZone_(v10, v11, zone, v12, v13);
    v15 = v9[2];
    v9[2] = v14;

    objc_msgSend__decodeTypeInfoFromSegmentName(v9, v16, v17, v18, v19);
    v9[3] = objc_msgSend_priority(self, v20, v21, v22, v23);
    v9[4] = objc_msgSend_bars(self, v24, v25, v26, v27);
    v9[5] = objc_msgSend_beatsPerBar(self, v28, v29, v30, v31);
    v9[6] = objc_msgSend_samplesPerBar(self, v32, v33, v34, v35);
    v40 = objc_msgSend_customBarMarkers(self, v36, v37, v38, v39);
    v44 = objc_msgSend_copyWithZone_(v40, v41, zone, v42, v43);
    v45 = v9[7];
    v9[7] = v44;

    v9[8] = objc_msgSend_sampleRate(self, v46, v47, v48, v49);
    v9[9] = objc_msgSend_sampleCount(self, v50, v51, v52, v53);
    *(v9 + 8) = objc_msgSend_sliceable(self, v54, v55, v56, v57);
    v62 = objc_msgSend_transitions(self, v58, v59, v60, v61);
    v66 = objc_msgSend_copyWithZone_(v62, v63, zone, v64, v65);
    v67 = v9[10];
    v9[10] = v66;

    v72 = objc_msgSend_markers(self, v68, v69, v70, v71);
    v76 = objc_msgSend_copyWithZone_(v72, v73, zone, v74, v75);
    v77 = v9[11];
    v9[11] = v76;

    v9[13] = objc_msgSend_errors(self, v78, v79, v80, v81);
    v86 = objc_msgSend_metadataValues(self, v82, v83, v84, v85);
    v90 = objc_msgSend_copyWithZone_(v86, v87, zone, v88, v89);
    v91 = v9[14];
    v9[14] = v90;
  }

  return v9;
}

- (BOOL)linkedPerBarTransitionsToSegmentNamed:(id)named
{
  namedCopy = named;
  v9 = objc_msgSend_transitions(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKey_(v9, v10, namedCopy, v11, v12);

  objc_opt_class();
  LOBYTE(v9) = objc_opt_isKindOfClass();

  return (v9 & 1) == 0;
}

- (void)setLinkedPerBarTransitions:(BOOL)transitions toSegmentNamed:(id)named
{
  transitionsCopy = transitions;
  namedCopy = named;
  if ((transitionsCopy & 1) == 0)
  {
    v10 = objc_msgSend_sliceable(self, v6, v7, v8, v9);
    v6 = namedCopy;
    if (!v10)
    {
      goto LABEL_28;
    }
  }

  if (objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(self, v6, namedCopy, v8, v9) == transitionsCopy)
  {
    goto LABEL_28;
  }

  v14 = objc_msgSend_transitions(self, namedCopy, v11, v12, v13);
  v18 = objc_msgSend_objectForKey_(v14, v15, namedCopy, v16, v17);

  if ((transitionsCopy & 1) == 0)
  {
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v27 = v18;
    }

    else
    {
      v27 = 0;
    }

    v37 = objc_msgSend_array(MEMORY[0x277CBEB18], v19, v20, v21, v22);
    if (objc_msgSend_bars(self, v38, v39, v40, v41) >= 1)
    {
      v46 = 0;
      do
      {
        if (v27)
        {
          v47 = objc_msgSend_copy(v27, v42, v43, v44, v45);
        }

        else
        {
          v47 = objc_opt_new();
        }

        v51 = v47;
        objc_msgSend_addObject_(v37, v48, v47, v49, v50);

        ++v46;
      }

      while (v46 < objc_msgSend_bars(self, v52, v53, v54, v55));
    }

    v56 = MEMORY[0x277CBEB38];
    v57 = objc_msgSend_transitions(self, v42, v43, v44, v45);
    v61 = objc_msgSend_dictionaryWithDictionary_(v56, v58, v57, v59, v60);

    objc_msgSend_setObject_forKey_(v61, v62, v37, namedCopy, v63);
    transitions = self->_transitions;
    self->_transitions = v61;

    goto LABEL_26;
  }

  if (!v18)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = objc_msgSend_firstObject(v18, v23, v24, v25, v26);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_10:
    v27 = 0;
  }

  v28 = MEMORY[0x277CBEB38];
  v29 = objc_msgSend_transitions(self, v23, v24, v25, v26);
  v33 = objc_msgSend_dictionaryWithDictionary_(v28, v30, v29, v31, v32);

  if (v27)
  {
    objc_msgSend_setObject_forKey_(v33, v34, v27, namedCopy, v36);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v33, v34, namedCopy, v35, v36);
  }

  v37 = self->_transitions;
  self->_transitions = v33;
LABEL_26:

LABEL_27:
LABEL_28:

  MEMORY[0x2821F96F8]();
}

- (id)transitionToSegmentNamed:(id)named fromBarIndex:(int64_t)index
{
  namedCopy = named;
  if (!namedCopy)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v11 = objc_msgSend_transitions(self, v6, v7, v8, v9);
  v15 = objc_msgSend_objectForKey_(v11, v12, namedCopy, v13, v14);

  if (!v15)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = 0;
    if (index < 0 || (isKindOfClass & 1) == 0)
    {
      goto LABEL_12;
    }

    if (objc_msgSend_count(v15, v18, v19, v20, v21) > index)
    {
      v16 = objc_msgSend_objectAtIndex_(v15, v22, index, v23, v24);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }

      objc_opt_class();
      objc_opt_isKindOfClass();
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v16 = v15;
LABEL_12:

LABEL_13:

  return v16;
}

- (void)addOrReplaceTransition:(id)transition toSegmentNamed:(id)named fromBarIndex:(int64_t)index
{
  transitionCopy = transition;
  namedCopy = named;
  if (transitionCopy && namedCopy)
  {
    v13 = MEMORY[0x277CBEB38];
    v14 = objc_msgSend_transitions(self, v8, v9, v10, v11);
    v18 = objc_msgSend_dictionaryWithDictionary_(v13, v15, v14, v16, v17);

    if (objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(self, v19, namedCopy, v20, v21))
    {
      if (objc_msgSend_isDefaultTransition(transitionCopy, v22, v23, v24, v25))
      {
        objc_msgSend_removeObjectForKey_(v18, v26, namedCopy, v27, v28);
      }

      else
      {
        objc_msgSend_setObject_forKey_(v18, v26, transitionCopy, namedCopy, v28);
      }
    }

    else
    {
      v29 = objc_msgSend_objectForKey_(v18, v22, namedCopy, v24, v25);
      if (v29)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((index & 0x8000000000000000) == 0 && (isKindOfClass & 1) != 0 && objc_msgSend_count(v29, v31, v32, v33, v34) > index)
        {
          v38 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v35, v29, v36, v37);
          if (objc_msgSend_isDefaultTransition(transitionCopy, v39, v40, v41, v42))
          {
            v45 = objc_opt_new();
            objc_msgSend_setObject_atIndexedSubscript_(v38, v46, v45, index, v47);
          }

          else
          {
            objc_msgSend_setObject_atIndexedSubscript_(v38, v43, transitionCopy, index, v44);
          }

          objc_msgSend_setObject_forKey_(v18, v48, v38, namedCopy, v49);
        }
      }
    }

    transitions = self->_transitions;
    self->_transitions = v18;
  }
}

- (void)removeTransitionToSegmentNamed:(id)named fromBarIndex:(int64_t)index
{
  namedCopy = named;
  if (namedCopy)
  {
    v10 = MEMORY[0x277CBEB38];
    v38 = namedCopy;
    v11 = objc_msgSend_transitions(self, namedCopy, v7, v8, v9);
    v15 = objc_msgSend_dictionaryWithDictionary_(v10, v12, v11, v13, v14);

    if (objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(self, v16, v38, v17, v18))
    {
      objc_msgSend_removeObjectForKey_(v15, v19, v38, v20, v21);
    }

    else
    {
      v22 = objc_msgSend_objectForKey_(v15, v19, v38, v20, v21);
      if (v22)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((index & 0x8000000000000000) == 0 && (isKindOfClass & 1) != 0 && objc_msgSend_count(v22, v24, v25, v26, v27) > index)
        {
          v31 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v28, v22, v29, v30);
          v32 = objc_opt_new();
          objc_msgSend_setObject_atIndexedSubscript_(v31, v33, v32, index, v34);

          objc_msgSend_setObject_forKey_(v15, v35, v31, v38, v36);
        }
      }
    }

    transitions = self->_transitions;
    self->_transitions = v15;
  }

  MEMORY[0x2821F96F8]();
}

+ (BOOL)canTransitionFromSegment:(id)segment toSegment:(id)toSegment fromBarIndex:(int64_t)index checkIfPrevented:(BOOL)prevented
{
  preventedCopy = prevented;
  segmentCopy = segment;
  toSegmentCopy = toSegment;
  v15 = objc_msgSend_type(segmentCopy, v11, v12, v13, v14);
  v20 = objc_msgSend_type(toSegmentCopy, v16, v17, v18, v19);
  LOBYTE(v25) = 0;
  if (v15 == 5 || !v15 || !v20 || v20 == 5)
  {
    goto LABEL_32;
  }

  if (v15 == 3)
  {
    v26 = (v20 & 0xFFFFFFFFFFFFFFFDLL) == 1;
LABEL_12:
    v25 = !v26;
    if (!v25)
    {
      goto LABEL_32;
    }

    goto LABEL_16;
  }

  if (v15 != 2)
  {
    if (v15 == 1)
    {
      v26 = v20 == 1;
      goto LABEL_12;
    }

LABEL_29:
    LOBYTE(v25) = 0;
    goto LABEL_32;
  }

  if ((v20 - 3) >= 2)
  {
    if (v20 != 2)
    {
      goto LABEL_29;
    }

    v44 = objc_msgSend_nameIndex(segmentCopy, v21, v22, v23, v24);
    v49 = objc_msgSend_nameIndex(toSegmentCopy, v45, v46, v47, v48);
    v52 = objc_msgSend_compare_options_(v44, v50, v49, 65, v51);

    if (v52 != -1)
    {
      if (!v52)
      {
        v53 = objc_msgSend_nameSuffix(segmentCopy, v21, v22, v23, v24);
        v58 = objc_msgSend_nameSuffix(toSegmentCopy, v54, v55, v56, v57);
        v62 = objc_msgSend_caseInsensitiveCompare_(v53, v59, v58, v60, v61);

        v67 = objc_msgSend_nameIndex(segmentCopy, v63, v64, v65, v66);
        v72 = objc_msgSend_nameIndex(toSegmentCopy, v68, v69, v70, v71);
        isEqualToString = objc_msgSend_isEqualToString_(v67, v73, v72, v74, v75);

        if (v62 == 1)
        {
          v25 = isEqualToString;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          goto LABEL_32;
        }

        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  LOBYTE(v25) = 1;
LABEL_16:
  if (preventedCopy)
  {
    v27 = objc_msgSend_name(toSegmentCopy, v21, v22, v23, v24);
    v31 = objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(segmentCopy, v28, v27, v29, v30);

    if (v31)
    {
      index = objc_msgSend_bars(segmentCopy, v32, v33, v34, v35) - 1;
    }

    v36 = objc_msgSend_name(toSegmentCopy, v32, v33, v34, v35);
    v39 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(segmentCopy, v37, v36, index, v38);

    if (v39)
    {
      v25 = objc_msgSend_prevented(v39, v40, v41, v42, v43) ^ 1;
    }

    else
    {
      LOBYTE(v25) = 1;
    }
  }

LABEL_32:

  return v25;
}

- (BOOL)isPriorityValid
{
  if (objc_msgSend_type(self, a2, v2, v3, v4) != 2)
  {
    return 1;
  }

  if (objc_msgSend_priority(self, v6, v7, v8, v9) < 1)
  {
    return 0;
  }

  return objc_msgSend_priority(self, v10, v11, v12, v13) < 101;
}

- (BOOL)relinkAllTransitions
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = objc_msgSend_transitions(self, a2, v2, v3, v4, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v12 = v8;
    v13 = 0;
    v14 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ((objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(self, v9, v16, v10, v11) & 1) == 0)
        {
          v13 = 1;
          objc_msgSend_setLinkedPerBarTransitions_toSegmentNamed_(self, v9, 1, v16, v11);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (void)setBars:(int64_t)bars
{
  if (self->_bars != bars)
  {
    objc_msgSend_relinkAllTransitions(self, a2, bars, v3, v4);
    self->_bars = bars;
  }
}

+ (id)segmentsWithType:(unint64_t)type inSegments:(id)segments
{
  v5 = MEMORY[0x277CBEB18];
  segmentsCopy = segments;
  v11 = objc_msgSend_array(v5, v7, v8, v9, v10);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_24B8141C8;
  v24 = &unk_27900F690;
  v25 = v11;
  typeCopy = type;
  v12 = v11;
  objc_msgSend_enumerateObjectsUsingBlock_(segmentsCopy, v13, &v21, v14, v15);

  v19 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v16, v12, v17, v18, v21, v22, v23, v24);

  return v19;
}

+ (id)segmentsWithType:(unint64_t)type nameIndex:(id)index nameSuffix:(id)suffix inSegments:(id)segments
{
  indexCopy = index;
  suffixCopy = suffix;
  v11 = MEMORY[0x277CBEB18];
  segmentsCopy = segments;
  v17 = objc_msgSend_array(v11, v13, v14, v15, v16);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = sub_24B814358;
  v32 = &unk_27900F6B8;
  v33 = indexCopy;
  v34 = suffixCopy;
  v35 = v17;
  typeCopy = type;
  v18 = v17;
  v19 = suffixCopy;
  v20 = indexCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(segmentsCopy, v21, &v29, v22, v23);

  v27 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v24, v18, v25, v26, v29, v30, v31, v32);

  return v27;
}

+ (FlexSegment)segmentWithName:(id)name inSegments:(id)segments
{
  nameCopy = name;
  segmentsCopy = segments;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_24B814564;
  v20 = sub_24B814574;
  v21 = 0;
  if (nameCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_24B81457C;
    v13[3] = &unk_27900F6E0;
    v14 = nameCopy;
    v15 = &v16;
    objc_msgSend_enumerateObjectsUsingBlock_(segmentsCopy, v7, v13, v8, v9);

    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  _Block_object_dispose(&v16, 8);

  return v11;
}

+ (int64_t)samplesForTimeInMsec:(int64_t)msec atSampleRate:(int64_t)rate
{
  rateCopy = rate;
  CMTimeMake(&time, msec, 1000);
  CMTimeConvertScale(&v6, &time, rateCopy, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return v6.value;
}

+ (int64_t)crossfadeLengthInSamplesForFromSeg:(id)seg toSeg:(id)toSeg fadeOutTimeInMsec:(int64_t)msec fadeInTimeInMsec:(int64_t)inMsec validFadeOutSamples:(int64_t *)samples validFadeInSamples:(int64_t *)inSamples
{
  segCopy = seg;
  toSegCopy = toSeg;
  v19 = objc_msgSend_sampleRate(segCopy, v15, v16, v17, v18);
  v22 = objc_msgSend_samplesForTimeInMsec_atSampleRate_(FlexSegment, v20, msec, v19, v21);
  if (v22 > objc_msgSend_sampleCount(segCopy, v23, v24, v25, v26))
  {
    v22 = objc_msgSend_sampleCount(segCopy, v27, v28, v29, v30);
  }

  if (v22 > objc_msgSend_sampleCount(toSegCopy, v27, v28, v29, v30))
  {
    v22 = objc_msgSend_sampleCount(toSegCopy, v31, v32, v33, v34);
  }

  v35 = objc_msgSend_samplesForTimeInMsec_atSampleRate_(FlexSegment, v31, inMsec, v19, v34);
  if (v35 > objc_msgSend_sampleCount(toSegCopy, v36, v37, v38, v39))
  {
    v35 = objc_msgSend_sampleCount(toSegCopy, v40, v41, v42, v43);
  }

  if (samples)
  {
    *samples = v22;
  }

  if (inSamples)
  {
    *inSamples = v35;
  }

  if (v35 <= v22)
  {
    v44 = v22;
  }

  else
  {
    v44 = v35;
  }

  return v44;
}

- (void)addMetadataValue:(id)value forKey:(id)key
{
  if (self->_metadataValues)
  {
    v6 = MEMORY[0x277CBEB38];
    keyCopy = key;
    valueCopy = value;
    v13 = objc_msgSend_metadataValues(self, v9, v10, v11, v12);
    v31 = objc_msgSend_dictionaryWithDictionary_(v6, v14, v13, v15, v16);

    objc_msgSend_setObject_forKey_(v31, v17, valueCopy, keyCopy, v18);
    v22 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v19, v31, v20, v21);
    metadataValues = self->_metadataValues;
    self->_metadataValues = v22;

    v24 = v31;
  }

  else
  {
    v25 = MEMORY[0x277CBEAC0];
    keyCopy2 = key;
    valueCopy2 = value;
    v30 = objc_msgSend_dictionaryWithObject_forKey_(v25, v28, valueCopy2, keyCopy2, v29);

    v24 = self->_metadataValues;
    self->_metadataValues = v30;
  }
}

@end