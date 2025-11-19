@interface ICTextViewScrollState
+ (id)scrollStateForAttachment:(id)a3 inNote:(id)a4;
+ (id)scrollStateForRange:(_NSRange)a3 inNote:(id)a4;
+ (id)scrollStateForTextView:(id)a3;
+ (void)setupDateFormatter;
- (BOOL)applyToTextView:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (ICNote)note;
- (ICTextViewScrollState)initWithData:(id)a3 managedObjectContext:(id)a4;
- (ICTextViewScrollState)initWithDictionary:(id)a3 note:(id)a4;
- (NSData)dataRepresentation;
- (NSDictionary)dictionaryRepresentation;
- (double)timeIntervalSinceCapture;
- (unint64_t)hash;
- (unint64_t)topLeftTextCharacterIndex;
- (void)dataRepresentation;
- (void)setNote:(id)a3;
@end

@implementation ICTextViewScrollState

- (ICTextViewScrollState)initWithDictionary:(id)a3 note:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = ICTextViewScrollState;
  v8 = [(ICTextViewScrollState *)&v29 init];
  v9 = v8;
  if (v8)
  {
    [(ICTextViewScrollState *)v8 setFromArchive:1];
    v10 = [v6 objectForKeyedSubscript:@"ScrollStateTLStringSelectionData"];
    v11 = [v6 objectForKeyedSubscript:@"ScrollStateNoteIdentifier"];
    v12 = [v6 objectForKeyedSubscript:@"ScrollStateTLScrollHeightOffsetRatio"];
    v13 = [v6 objectForKeyedSubscript:@"ScrollStateDate"];
    v14 = [v6 objectForKeyedSubscript:@"ScrollStateTLC"];
    v26 = [v14 unsignedIntegerValue];

    objc_opt_class();
    v28 = v10;
    if (objc_opt_isKindOfClass())
    {
      v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v10 options:0];
    }

    else
    {
      v15 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_opt_class() setupDateFormatter];
      v16 = [dateFormatter dateFromString:v13];
    }

    else
    {
      v16 = 0;
    }

    objc_opt_class();
    v27 = v15;
    v17 = ICDynamicCast();
    if (!v17)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"verifiedSelectionData != ((void*)0)" functionName:"-[ICTextViewScrollState initWithDictionary:note:]" simulateCrash:1 showAlert:0 format:@"Trying to init a text view scroll state without top left StringSelectionData"];
    }

    v18 = [v7 identifier];
    v19 = [v18 isEqualToString:v11];

    if (v19)
    {
      if (v17)
      {
        v20 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [ICTextViewScrollState initWithDictionary:note:];
        }

        v21 = [objc_alloc(MEMORY[0x277D35F80]) initWithData:v17];
        if (v21)
        {
          [(ICTextViewScrollState *)v9 setTopLeftStringSelection:v21];
          [(ICTextViewScrollState *)v9 setDate:v16];
          [(ICTextViewScrollState *)v9 setNote:v7];
          [v12 floatValue];
          [(ICTextViewScrollState *)v9 setTopLeftTextAttachmentScrollHeightOffsetRatio:v22];
          [(ICTextViewScrollState *)v9 setTopLeftCharIndexAtCapture:v26];
        }

        else
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"mergableStringSelection != ((void*)0)" functionName:"-[ICTextViewScrollState initWithDictionary:note:]" simulateCrash:1 showAlert:0 format:@"failure to create mergable string selection from data."];
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v23 = MEMORY[0x277D36198];
      v24 = [v7 identifier];
      [v23 handleFailedAssertWithCondition:"identifierMatches" functionName:"-[ICTextViewScrollState initWithDictionary:note:]" simulateCrash:1 showAlert:0 format:{@"Trying to init a text view scroll state but identifiers don't match: expected %@ : received %@", v24, v11}];
    }

    [(ICTextViewScrollState *)v9 setLoadingFromDictionaryFailed:1];
    v21 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ICTextViewScrollState initWithDictionary:note:];
    }

    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

- (ICTextViewScrollState)initWithData:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:0];
  }

  else
  {
    [MEMORY[0x277CBEAC0] dictionary];
  }
  v8 = ;
  v9 = [v8 objectForKeyedSubscript:@"ScrollStateNoteIdentifier"];
  v10 = v9;
  v11 = 0;
  if (v7 && v9)
  {
    v11 = [MEMORY[0x277D35F28] noteWithIdentifier:v9 context:v7];
  }

  v12 = [(ICTextViewScrollState *)self initWithDictionary:v8 note:v11];

  return v12;
}

+ (id)scrollStateForAttachment:(id)a3 inNote:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 rangeForAttachment:v6];
  v9 = v8;
  v11 = v10;
  if (v7 && v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v6 parentAttachment];

    if (v12)
    {
      v13 = [v6 parentAttachment];
      v9 = [v7 rangeForAttachment:v13];
      v11 = v14;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v15 = [a1 scrollStateForRange:v9 inNote:{v11, v7}];

  return v15;
}

+ (id)scrollStateForRange:(_NSRange)a3 inNote:(id)a4
{
  location = a3.location;
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(ICTextViewScrollState);
  [(ICTextViewScrollState *)v6 setNote:v5];
  v7 = [MEMORY[0x277CBEAA8] date];
  [(ICTextViewScrollState *)v6 setDate:v7];

  v8 = [v5 textStorage];

  v9 = [v8 length];
  if (v9 < location)
  {
    location = v9;
  }

  v10 = [MEMORY[0x277CCAE60] valueWithRange:{location, 0}];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  v12 = [(ICTextViewScrollState *)v6 note];
  v13 = [v12 mergeableString];
  v14 = [v13 selectionForCharacterRanges:v11 selectionAffinity:1];
  [(ICTextViewScrollState *)v6 setTopLeftStringSelection:v14];

  [(ICTextViewScrollState *)v6 setTopLeftCharIndexAtCapture:location];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v17[5] = *MEMORY[0x277D85DE8];
  [objc_opt_class() setupDateFormatter];
  v3 = [(ICTextViewScrollState *)self topLeftStringSelection];
  v4 = [v3 serialize];
  v5 = [v4 base64EncodedStringWithOptions:0];

  v6 = [(ICTextViewScrollState *)self date];
  if (v6)
  {
    v7 = dateFormatter;
    v8 = [(ICTextViewScrollState *)self date];
    v9 = [v7 stringFromDate:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(ICTextViewScrollState *)self noteIdentifier];
  v11 = MEMORY[0x277CCABB0];
  [(ICTextViewScrollState *)self topLeftTextAttachmentScrollHeightOffsetRatio];
  v12 = [v11 numberWithDouble:?];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICTextViewScrollState topLeftCharIndexAtCapture](self, "topLeftCharIndexAtCapture")}];
  if (v5)
  {
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((topLeftDataAsString) != nil)" functionName:"-[ICTextViewScrollState dictionaryRepresentation]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "topLeftDataAsString"}];
    if (v9)
    {
LABEL_6:
      if (v10)
      {
        goto LABEL_7;
      }

LABEL_14:
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((noteIdentifier) != nil)" functionName:"-[ICTextViewScrollState dictionaryRepresentation]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "noteIdentifier"}];
      if (v12)
      {
        goto LABEL_8;
      }

LABEL_15:
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((offsetRatio) != nil)" functionName:"-[ICTextViewScrollState dictionaryRepresentation]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "offsetRatio"}];
      goto LABEL_16;
    }
  }

  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((dateString) != nil)" functionName:"-[ICTextViewScrollState dictionaryRepresentation]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "dateString"}];
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v5 && v9 && v10)
  {
    v16[0] = @"ScrollStateTLStringSelectionData";
    v16[1] = @"ScrollStateDate";
    v17[0] = v5;
    v17[1] = v9;
    v16[2] = @"ScrollStateNoteIdentifier";
    v16[3] = @"ScrollStateTLScrollHeightOffsetRatio";
    v17[2] = v10;
    v17[3] = v12;
    v16[4] = @"ScrollStateTLC";
    v17[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
    goto LABEL_17;
  }

LABEL_16:
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTextViewScrollState dictionaryRepresentation]" simulateCrash:1 showAlert:0 format:{@"Missing data to create scroll state archive, returning nil"}];
  v14 = 0;
LABEL_17:

  return v14;
}

- (NSData)dataRepresentation
{
  v2 = [(ICTextViewScrollState *)self dictionaryRepresentation];
  if (v2)
  {
    v8 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [ICTextViewScrollState dataRepresentation];
      }

      v6 = 0;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setNote:(id)a3
{
  v6 = a3;
  v4 = objc_storeWeak(&self->_note, v6);
  v5 = [v6 identifier];

  [(ICTextViewScrollState *)self setNoteIdentifier:v5];
}

- (unint64_t)topLeftTextCharacterIndex
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(ICTextViewScrollState *)self topLeftStringSelection];
  if (v3)
  {
    v4 = [(ICTextViewScrollState *)self note];

    if (v4)
    {
      v5 = [(ICTextViewScrollState *)self note];
      v6 = [v5 managedObjectContext];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__ICTextViewScrollState_topLeftTextCharacterIndex__block_invoke;
      v9[3] = &unk_2781AC1D0;
      v9[4] = self;
      v9[5] = &v10;
      [v6 performBlockAndWait:v9];
    }
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __50__ICTextViewScrollState_topLeftTextCharacterIndex__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  v3 = [v2 mergeableString];
  v4 = [*(a1 + 32) topLeftStringSelection];
  v8 = [v3 characterRangesForSelection:v4];

  v5 = v8;
  if (v8)
  {
    v6 = [v8 firstObject];
    v7 = [v6 rangeValue];

    v5 = v8;
    *(*(*(a1 + 40) + 8) + 24) = v7;
  }
}

- (BOOL)isValid
{
  v3 = [(ICTextViewScrollState *)self captureIsWithinTimeThreshold];
  if (v3)
  {
    LOBYTE(v3) = ![(ICTextViewScrollState *)self loadingFromDictionaryFailed];
  }

  return v3;
}

- (double)timeIntervalSinceCapture
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(ICTextViewScrollState *)self date];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

+ (id)scrollStateForTextView:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 visibleTextRect];
  v5 = v4;
  v7 = v6;
  [v3 contentInset];
  v9 = v5 + v8;
  v11 = v7 + v10;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [v3 safeAreaInsets];
    v9 = v9 + v12;
    v11 = v11 + v13;
  }

  v14 = [v3 closestPositionToPoint:{v9, v11 + 5.0}];
  v15 = [v3 textRangeFromPosition:v14 toPosition:v14];
  v16 = [v3 ic_characterRangeFromTextRange:v15];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL || (v17 = v16, [v3 textStorage], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v17 >= v19))
  {
    v28 = 0;
  }

  else
  {
    v20 = [v3 textStorage];
    v21 = [v20 containsAttachmentsInRange:{v17, 1}];

    v22 = 0.0;
    if (v21)
    {
      [v3 firstRectForRange:v15];
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
      CGRectGetMidX(v41);
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      CGRectGetMinY(v42);
      TSUClamp();
      v22 = v27;
    }

    v28 = objc_alloc_init(ICTextViewScrollState);
    [(ICTextViewScrollState *)v28 setTopLeftTextAttachmentScrollHeightOffsetRatio:v22];
    v29 = [v3 editorController];
    v30 = [v29 note];
    [(ICTextViewScrollState *)v28 setNote:v30];

    v31 = [MEMORY[0x277CBEAA8] date];
    [(ICTextViewScrollState *)v28 setDate:v31];

    v32 = [MEMORY[0x277CCAE60] valueWithRange:{v17, 0}];
    v39[0] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];

    v34 = [(ICTextViewScrollState *)v28 note];
    v35 = [v34 mergeableString];
    v36 = [v35 selectionForCharacterRanges:v33 selectionAffinity:1];
    [(ICTextViewScrollState *)v28 setTopLeftStringSelection:v36];

    [(ICTextViewScrollState *)v28 setTopLeftCharIndexAtCapture:v17];
  }

  v37 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [(ICTextViewScrollState *)v3 scrollStateForTextView:v37];
  }

  return v28;
}

- (BOOL)applyToTextView:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__20;
  v73 = __Block_byref_object_dispose__20;
  v74 = 0;
  v5 = [(ICTextViewScrollState *)self note];
  v6 = [v5 managedObjectContext];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __41__ICTextViewScrollState_applyToTextView___block_invoke;
  v68[3] = &unk_2781ACF80;
  v68[4] = self;
  v68[5] = &v69;
  [v6 performBlockAndWait:v68];

  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    if (+[ICExtensionSafeAPIShims applicationState]== 2)
    {
      goto LABEL_12;
    }

    v13 = [(ICTextViewScrollState *)self note];
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [v4 editorController];
    if (v14)
    {
      v15 = [v4 editorController];
      v16 = [v15 note];
      v17 = [v16 identifier];
      v18 = [v17 isEqualToString:v70[5]];

      if (!v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v21 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v54 = [v4 editorController];
      v55 = [v54 note];
      v56 = [v55 identifier];
      *buf = 138412290;
      v76 = v56;
      _os_log_debug_impl(&dword_2151A1000, v21, OS_LOG_TYPE_DEBUG, "Applying Text View Scroll State for Note %@", buf, 0xCu);
    }

    if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
    {
      v23 = [v4 ic_visibleRange];
      if (v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v22;
        v25 = [v4 layoutManager];
        [v25 ensureLayoutForCharacterRange:{0, v23 + v24}];
      }
    }

    v26 = [(ICTextViewScrollState *)self topLeftTextCharacterIndex];
    v27 = [v4 ic_textRangeFromCharacterRange:{v26, 1}];
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v28 = [v4 textLayoutManager];
      v29 = [v28 documentRange];
      v30 = [v29 location];

      v31 = [v28 locationFromLocation:v30 withOffset:v26 + 1];
      v32 = [objc_alloc(MEMORY[0x277D742D0]) initWithLocation:v30 endLocation:v31];
      v33 = [v4 textLayoutManager];
      [v33 ensureLayoutForRange:v32];
    }

    else
    {
      v28 = [v4 layoutManager];
      [v28 ensureGlyphsForCharacterRange:{v26, 1}];
    }

    [v4 firstRectForRange:v27];
    v35 = v34;
    v37 = v36;
    if ([(ICTextViewScrollState *)self topLeftTextCharacterIndex])
    {
      [(ICTextViewScrollState *)self topLeftTextAttachmentScrollHeightOffsetRatio];
      if (v38 == 0.0)
      {
        v39 = -2.0;
      }

      else
      {
        v39 = 0.0;
      }

      if (ICInternalSettingsIsTextKit2Enabled())
      {
        [v4 safeAreaInsets];
      }

      else
      {
        [v4 contentInset];
      }

      v42 = v35 + v39 - v40;
    }

    else
    {
      if (ICInternalSettingsIsTextKit2Enabled())
      {
        [v4 safeAreaInsets];
      }

      else
      {
        [v4 contentInset];
      }

      v42 = -v41;
    }

    [(ICTextViewScrollState *)self topLeftTextAttachmentScrollHeightOffsetRatio];
    if (v51 > 0.0)
    {
      [(ICTextViewScrollState *)self topLeftTextAttachmentScrollHeightOffsetRatio];
      v42 = v42 + v37 * v52;
    }

    [v4 contentOffset];
    if (vabdd_f64(v42, v53) > 20.0)
    {
      [v4 setClippedContentOffset:{*MEMORY[0x277CBF348], v42}];
    }

    goto LABEL_43;
  }

  if (+[ICExtensionSafeAPIShims applicationState]!= 2 && ![(ICTextViewScrollState *)self isApplying])
  {
    v7 = [(ICTextViewScrollState *)self note];
    if (v7)
    {
      v8 = [v4 editorController];
      if (!v8)
      {

LABEL_34:
        [(ICTextViewScrollState *)self setIsApplying:1];
        v43 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v57 = [v4 editorController];
          v58 = [v57 note];
          v59 = [v58 identifier];
          *buf = 138412290;
          v76 = v59;
          _os_log_debug_impl(&dword_2151A1000, v43, OS_LOG_TYPE_DEBUG, "Applying Text View Scroll State for Note %@", buf, 0xCu);
        }

        v44 = [(ICTextViewScrollState *)self topLeftTextCharacterIndex];
        objc_opt_class();
        v45 = [v4 textLayoutManager];
        v46 = [v45 textContentManager];
        v47 = ICDynamicCast();
        v27 = [v47 outlineController];

        [v27 expandAncestorsOfRange:{v44, 1}];
        objc_opt_class();
        v48 = ICDynamicCast();
        v49 = MEMORY[0x277D75D18];
        v60 = MEMORY[0x277D85DD0];
        v61 = 3221225472;
        v62 = __41__ICTextViewScrollState_applyToTextView___block_invoke_70;
        v63 = &unk_2781AC678;
        v50 = v48;
        v66 = v44;
        v67 = 1;
        v64 = v50;
        v65 = self;
        [v49 performWithoutAnimation:&v60];
        [(ICTextViewScrollState *)self setIsApplying:0, v60, v61, v62, v63];

LABEL_43:
        v19 = 1;
        goto LABEL_13;
      }

      v9 = [v4 editorController];
      v10 = [v9 note];
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v70[5]];

      if (v12)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  _Block_object_dispose(&v69, 8);

  return v19;
}

void __41__ICTextViewScrollState_applyToTextView___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) note];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __41__ICTextViewScrollState_applyToTextView___block_invoke_70(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) topLeftTextAttachmentScrollHeightOffsetRatio];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 scrollRangeToVisible:v3 withHeightPercentageAdjustment:v4 forceTop:1];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    [objc_opt_class() setupDateFormatter];
    v6 = [(ICTextViewScrollState *)self date];
    if (v6)
    {
      v7 = dateFormatter;
      v8 = [(ICTextViewScrollState *)self date];
      v9 = [v7 stringFromDate:v8];
    }

    else
    {
      v9 = 0;
    }

    v11 = [v5 date];
    if (v11)
    {
      v12 = dateFormatter;
      v13 = [v5 date];
      v14 = [v12 stringFromDate:v13];
    }

    else
    {
      v14 = 0;
    }

    v15 = [(ICTextViewScrollState *)self topLeftStringSelection];
    v16 = [v5 topLeftStringSelection];
    v17 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18;
    if (v17 == v16)
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20;
    if (v19 | v21)
    {
      v22 = v21;
      LOBYTE(v10) = 0;
      if (!v19 || !v21)
      {
        goto LABEL_43;
      }

      v10 = [v19 isEqual:v21];

      if (!v10)
      {
        goto LABEL_44;
      }
    }

    v23 = v17 == v9 ? 0 : v9;
    v19 = v23;
    v24 = v17 == v14 ? 0 : v14;
    v25 = v24;
    if (v19 | v25)
    {
      v22 = v25;
      LOBYTE(v10) = 0;
      if (!v19 || !v25)
      {
        goto LABEL_43;
      }

      v10 = [v19 isEqual:v25];

      if (!v10)
      {
LABEL_44:

        goto LABEL_45;
      }
    }

    v19 = [(ICTextViewScrollState *)self noteIdentifier];
    v22 = [v5 noteIdentifier];
    if (v17 == v19)
    {
      v26 = 0;
    }

    else
    {
      v26 = v19;
    }

    v27 = v26;
    if (v17 == v22)
    {
      v28 = 0;
    }

    else
    {
      v28 = v22;
    }

    v29 = v28;
    if (!(v27 | v29))
    {
      goto LABEL_39;
    }

    v30 = v29;
    if (!v27 || !v29)
    {

      goto LABEL_42;
    }

    v36 = [v27 isEqual:v29];

    if (v36)
    {
LABEL_39:
      [(ICTextViewScrollState *)self topLeftTextAttachmentScrollHeightOffsetRatio];
      v32 = v31;
      [v5 topLeftTextAttachmentScrollHeightOffsetRatio];
      if (v32 == v33)
      {
        v34 = [(ICTextViewScrollState *)self topLeftCharIndexAtCapture];
        LOBYTE(v10) = v34 == [v5 topLeftCharIndexAtCapture];
LABEL_43:

        goto LABEL_44;
      }
    }

LABEL_42:
    LOBYTE(v10) = 0;
    goto LABEL_43;
  }

  LOBYTE(v10) = 0;
LABEL_45:

  return v10;
}

- (unint64_t)hash
{
  [objc_opt_class() setupDateFormatter];
  v3 = [(ICTextViewScrollState *)self date];
  if (v3)
  {
    v4 = dateFormatter;
    v5 = [(ICTextViewScrollState *)self date];
    v6 = [v4 stringFromDate:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ICTextViewScrollState *)self topLeftStringSelection];
  v8 = [v7 hash];
  v9 = [v6 hash];
  v10 = [(ICTextViewScrollState *)self noteIdentifier];
  [v10 hash];
  [(ICTextViewScrollState *)self topLeftTextAttachmentScrollHeightOffsetRatio];
  [(ICTextViewScrollState *)self topLeftCharIndexAtCapture];
  v18 = ICHashWithHashKeys(v8, v11, v12, v13, v14, v15, v16, v17, v9);

  return v18;
}

+ (void)setupDateFormatter
{
  if (setupDateFormatter_onceToken != -1)
  {
    +[ICTextViewScrollState setupDateFormatter];
  }
}

uint64_t __43__ICTextViewScrollState_setupDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter;
  dateFormatter = v0;

  v2 = dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZZZ"];
}

- (ICNote)note
{
  WeakRetained = objc_loadWeakRetained(&self->_note);

  return WeakRetained;
}

- (void)initWithDictionary:note:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2151A1000, v0, OS_LOG_TYPE_DEBUG, "Loading text view scroll state from archive for note:%@", v1, 0xCu);
}

- (void)initWithDictionary:note:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2151A1000, v0, OS_LOG_TYPE_DEBUG, "Skipping loading text view scroll state from archive for note:%@", v1, 0xCu);
}

- (void)dataRepresentation
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_2151A1000, v0, OS_LOG_TYPE_ERROR, "ICTextViewScrollState: Unable to serialize dictionary %@", v1, 0xCu);
}

+ (void)scrollStateForTextView:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 editorController];
  v4 = [v3 note];
  v5 = [v4 identifier];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Captured Text View Scroll State for Note %@", v6, 0xCu);
}

@end