@interface CKLStreamLogMessageObserver
- (id)_colorString:(id)string withForeground:(unint64_t)foreground;
- (void)eventMatched:(id)matched;
@end

@implementation CKLStreamLogMessageObserver

- (id)_colorString:(id)string withForeground:(unint64_t)foreground
{
  foregroundCopy = foreground;
  stringCopy = string;
  if (objc_msgSend_colorOutput(self, v7, v8))
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%sm%@\x1B[0m", off_278548630[foregroundCopy & 7], stringCopy);
  }

  else
  {
    v10 = &stru_28385ED00;
  }

  return v10;
}

- (void)eventMatched:(id)matched
{
  matchedCopy = matched;
  v6 = objc_msgSend_processImagePath(matchedCopy, v4, v5);
  v8 = objc_msgSend__processNameForPath_(self, v7, v6);

  if (!v8)
  {
    v11 = objc_msgSend_senderImagePath(matchedCopy, v9, v10);
    v8 = objc_msgSend__processNameForPath_(self, v12, v11);
  }

  v13 = objc_msgSend_timeZone(matchedCopy, v9, v10);

  if (v13)
  {
    v16 = objc_msgSend_timeZone(matchedCopy, v14, v15);
    v19 = objc_msgSend_formatter(self, v17, v18);
    objc_msgSend_setTimeZone_(v19, v20, v16);
  }

  v21 = objc_msgSend_composedMessage(matchedCopy, v14, v15);
  if (objc_msgSend_hasPrefix_(v21, v22, @"SIM: "))
  {
    v25 = objc_msgSend_substringFromIndex_(v21, v23, 5);

    v21 = v25;
  }

  v26 = objc_msgSend_colorOutput(self, v23, v24);
  v29 = MEMORY[0x277CCACA8];
  if (v26)
  {
    v30 = objc_msgSend_threadIdentifier(matchedCopy, v27, v28);
    v32 = objc_msgSend_stringWithFormat_(v29, v31, @"%lu", v30);
    v35 = objc_msgSend_threadIdentifier(matchedCopy, v33, v34);
    v129 = objc_msgSend__colorString_withForeground_(self, v36, v32, v35);

    v37 = MEMORY[0x277CCACA8];
    v40 = objc_msgSend_activityIdentifier(matchedCopy, v38, v39);
    v42 = objc_msgSend_stringWithFormat_(v37, v41, @"%lu", v40);
    v45 = objc_msgSend_activityIdentifier(matchedCopy, v43, v44);
    v47 = objc_msgSend__colorString_withForeground_(self, v46, v42, v45);

    v48 = MEMORY[0x277CCACA8];
    v51 = objc_msgSend_parentActivityIdentifier(matchedCopy, v49, v50);
    v53 = objc_msgSend_stringWithFormat_(v48, v52, @"%lu", v51);
    v56 = objc_msgSend_parentActivityIdentifier(matchedCopy, v54, v55);
    v58 = objc_msgSend__colorString_withForeground_(self, v57, v53, v56);

    v128 = v47;
    if (objc_msgSend_type(matchedCopy, v59, v60) == 1024 && (objc_msgSend_logType(matchedCopy, v61, v62) == 16 || objc_msgSend_logType(matchedCopy, v63, v64) == 17))
    {
      v65 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v63, @"💩💩💩%@", v21);
      v67 = objc_msgSend__colorString_withForeground_(self, v66, v65, 0);

      v21 = v67;
    }

    v126 = objc_alloc(MEMORY[0x277CCACA8]);
    v70 = objc_msgSend_formatter(self, v68, v69);
    v127 = objc_msgSend_date(matchedCopy, v71, v72);
    v74 = objc_msgSend_stringFromDate_(v70, v73, v127);
    v77 = objc_msgSend_hash(v8, v75, v76);
    objc_msgSend__colorString_withForeground_(self, v78, v8, v77);
    v79 = v130 = v8;
    v82 = objc_msgSend_processIdentifier(matchedCopy, v80, v81);
    v85 = objc_msgSend_parentActivityIdentifier(matchedCopy, v83, v84);
    v87 = objc_msgSend__colorString_withForeground_(self, v86, @"|", v85);
    v90 = objc_msgSend_activityIdentifier(matchedCopy, v88, v89);
    v92 = objc_msgSend__colorString_withForeground_(self, v91, @"|", v90);
    v94 = v128;
    v93 = v129;
    v96 = objc_msgSend_initWithFormat_(v126, v95, @"\x1B[1m\x1B[37m%@\x1B[0m %@[%d:%@:%@:%@]%@%@ %@", v74, v79, v82, v129, v128, v58, v87, v92, v21);
    v97 = v96;
    v100 = objc_msgSend_UTF8String(v97, v98, v99);
    puts(v100);

    v8 = v130;
  }

  else
  {
    v101 = objc_alloc(MEMORY[0x277CCACA8]);
    v104 = objc_msgSend_formatter(self, v102, v103);
    v94 = objc_msgSend_date(matchedCopy, v105, v106);
    v58 = objc_msgSend_stringFromDate_(v104, v107, v94);
    v110 = objc_msgSend_processIdentifier(matchedCopy, v108, v109);
    v113 = objc_msgSend_threadIdentifier(matchedCopy, v111, v112);
    v116 = objc_msgSend_activityIdentifier(matchedCopy, v114, v115);
    v119 = objc_msgSend_parentActivityIdentifier(matchedCopy, v117, v118);
    v125 = v113;
    v93 = v104;
    v70 = objc_msgSend_initWithFormat_(v101, v120, @"%@ %@[%d:%llu:%llu:%llu] %@", v58, v8, v110, v125, v116, v119, v21);
    v121 = v70;
    v124 = objc_msgSend_UTF8String(v121, v122, v123);
    puts(v124);
  }
}

@end