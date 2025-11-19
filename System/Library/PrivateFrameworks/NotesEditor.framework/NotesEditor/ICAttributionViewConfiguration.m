@interface ICAttributionViewConfiguration
+ (OS_dispatch_queue)loadDataQueue;
- (BOOL)hasValidRange;
- (BOOL)isAttributionHidden;
- (BOOL)isDisclosureImageHidden;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAttributionViewConfiguration:(id)a3;
- (BOOL)isStatusImageHidden;
- (BOOL)isTimestampHidden;
- (CGRect)adjustedFormattedTimestampFrame;
- (CGRect)adjustedFrame;
- (CGRect)associatedTextFrame;
- (CGRect)attributionFrame;
- (CGRect)disclosureImageFrame;
- (CGRect)formattedTimestampFrame;
- (CGRect)frame;
- (CGRect)rectForRange:(_NSRange)a3;
- (CGRect)statusImageFrame;
- (ICAttributionViewConfiguration)initWithConfiguration:(id)a3;
- (ICAttributionViewConfiguration)initWithSharedState:(id)a3 editGroups:(id)a4 parentConfiguration:(id)a5;
- (ICAttributionViewConfiguration)initWithSharedState:(id)a3 textEdit:(id)a4 parentConfiguration:(id)a5;
- (ICAttributionViewConfiguration)parentConfiguration;
- (NSOrderedSet)userIDs;
- (NSString)attributionUserID;
- (UIImage)disclosureImage;
- (_NSRange)range;
- (_NSRange)trimmedRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)editGroupForRange:(_NSRange)a3;
- (unint64_t)hash;
- (void)addEditGroup:(id)a3;
- (void)commonInitWithSharedState:(id)a3 range:(_NSRange)a4;
- (void)drawStatusImageInContext:(CGContext *)a3 canvasSize:(CGSize)a4;
- (void)loadDataWithCompletion:(id)a3;
- (void)setAdjustedFrame:(CGRect)a3;
- (void)setBlurred:(BOOL)a3;
- (void)setFocused:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTrimmedRange:(_NSRange)a3;
- (void)synchronouslyLoadData;
- (void)updateAttribution;
- (void)updateAttributionTextStorage;
- (void)updateChildConfigurations;
- (void)updateFormattedTimestampTextStorage;
- (void)updateFrames;
- (void)updateHighlightAlpha;
- (void)updateHighlightFrames;
- (void)updateStatusImage;
- (void)updateTimestamp;
- (void)updateUnreadUserIDs;
@end

@implementation ICAttributionViewConfiguration

+ (OS_dispatch_queue)loadDataQueue
{
  if (loadDataQueue_token != -1)
  {
    +[ICAttributionViewConfiguration loadDataQueue];
  }

  v3 = loadDataQueue_loadDataQueue;

  return v3;
}

void __47__ICAttributionViewConfiguration_loadDataQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.notes.attribution.configuration.load-data-queue", attr);
  v2 = loadDataQueue_loadDataQueue;
  loadDataQueue_loadDataQueue = v1;
}

- (ICAttributionViewConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v77.receiver = self;
  v77.super_class = ICAttributionViewConfiguration;
  v5 = [(ICAttributionViewConfiguration *)&v77 init];
  if (v5)
  {
    v6 = [v4 sharedState];
    sharedState = v5->_sharedState;
    v5->_sharedState = v6;

    v8 = [v4 editGroups];
    v9 = [v8 copy];
    editGroups = v5->_editGroups;
    v5->_editGroups = v9;

    v11 = [v4 textEdit];
    textEdit = v5->_textEdit;
    v5->_textEdit = v11;

    v5->_range.location = [v4 range];
    v5->_range.length = v13;
    v5->_trimmedRange.location = [v4 trimmedRange];
    v5->_trimmedRange.length = v14;
    [v4 frame];
    v5->_frame.origin.x = v15;
    v5->_frame.origin.y = v16;
    v5->_frame.size.width = v17;
    v5->_frame.size.height = v18;
    [v4 adjustedFrame];
    v5->_adjustedFrame.origin.x = v19;
    v5->_adjustedFrame.origin.y = v20;
    v5->_adjustedFrame.size.width = v21;
    v5->_adjustedFrame.size.height = v22;
    [v4 associatedTextFrame];
    v5->_associatedTextFrame.origin.x = v23;
    v5->_associatedTextFrame.origin.y = v24;
    v5->_associatedTextFrame.size.width = v25;
    v5->_associatedTextFrame.size.height = v26;
    v27 = [v4 attribution];
    attribution = v5->_attribution;
    v5->_attribution = v27;

    [v4 attributionFrame];
    v5->_attributionFrame.origin.x = v29;
    v5->_attributionFrame.origin.y = v30;
    v5->_attributionFrame.size.width = v31;
    v5->_attributionFrame.size.height = v32;
    v5->_forcesAttributionHidden = [v4 forcesAttributionHidden];
    v33 = [v4 attributionTextStorage];
    attributionTextStorage = v5->_attributionTextStorage;
    v5->_attributionTextStorage = v33;

    v35 = [v4 timestamp];
    timestamp = v5->_timestamp;
    v5->_timestamp = v35;

    v5->_forcesTimestampHidden = [v4 forcesTimestampHidden];
    v37 = [v4 formattedTimestamp];
    formattedTimestamp = v5->_formattedTimestamp;
    v5->_formattedTimestamp = v37;

    [v4 formattedTimestampFrame];
    v5->_formattedTimestampFrame.origin.x = v39;
    v5->_formattedTimestampFrame.origin.y = v40;
    v5->_formattedTimestampFrame.size.width = v41;
    v5->_formattedTimestampFrame.size.height = v42;
    v43 = [v4 formattedTimestampTextStorage];
    formattedTimestampTextStorage = v5->_formattedTimestampTextStorage;
    v5->_formattedTimestampTextStorage = v43;

    [v4 adjustedFormattedTimestampFrame];
    v5->_adjustedFormattedTimestampFrame.origin.x = v45;
    v5->_adjustedFormattedTimestampFrame.origin.y = v46;
    v5->_adjustedFormattedTimestampFrame.size.width = v47;
    v5->_adjustedFormattedTimestampFrame.size.height = v48;
    v49 = [v4 explicitTimestamp];
    explicitTimestamp = v5->_explicitTimestamp;
    v5->_explicitTimestamp = v49;

    [v4 disclosureImageFrame];
    v5->_disclosureImageFrame.origin.x = v51;
    v5->_disclosureImageFrame.origin.y = v52;
    v5->_disclosureImageFrame.size.width = v53;
    v5->_disclosureImageFrame.size.height = v54;
    v55 = [v4 statusImage];
    statusImage = v5->_statusImage;
    v5->_statusImage = v55;

    [v4 statusImageFrame];
    v5->_statusImageFrame.origin.x = v57;
    v5->_statusImageFrame.origin.y = v58;
    v5->_statusImageFrame.size.width = v59;
    v5->_statusImageFrame.size.height = v60;
    [v4 appliedHorizontalAdjustmentRatio];
    v5->_appliedHorizontalAdjustmentRatio = v61;
    [v4 preferredHighlightValue];
    v5->_preferredHighlightValue = v62;
    v63 = objc_alloc(MEMORY[0x277CBEB18]);
    v64 = [v4 highlightConfigurations];
    v65 = [v63 initWithArray:v64 copyItems:1];
    highlightConfigurations = v5->_highlightConfigurations;
    v5->_highlightConfigurations = v65;

    v67 = [v4 childConfigurations];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __56__ICAttributionViewConfiguration_initWithConfiguration___block_invoke;
    v75[3] = &unk_2781AE460;
    v68 = v5;
    v76 = v68;
    v69 = [v67 ic_map:v75];
    childConfigurations = v68->_childConfigurations;
    v68->_childConfigurations = v69;

    v68->_preview = [v4 isPreview];
    v68->_focused = [v4 isFocused];
    v68->_blurred = [v4 isBlurred];
    v71 = [v4 unreadUserIDs];
    v72 = [v71 copy];
    unreadUserIDs = v68->_unreadUserIDs;
    v68->_unreadUserIDs = v72;

    v68->_forceVisible = [v4 forceVisible];
    v68->_dataLoaded = [v4 isDataLoaded];
  }

  return v5;
}

id __56__ICAttributionViewConfiguration_initWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  [v3 setParentConfiguration:*(a1 + 32)];

  return v3;
}

- (ICAttributionViewConfiguration)initWithSharedState:(id)a3 editGroups:(id)a4 parentConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ICAttributionViewConfiguration;
  v11 = [(ICAttributionViewConfiguration *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_editGroups, a4);
    objc_storeWeak(&v12->_parentConfiguration, v10);
    v13 = [v9 firstObject];
    v14 = [v13 range];
    [(ICAttributionViewConfiguration *)v12 commonInitWithSharedState:v8 range:v14, v15];
  }

  return v12;
}

- (ICAttributionViewConfiguration)initWithSharedState:(id)a3 textEdit:(id)a4 parentConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ICAttributionViewConfiguration;
  v11 = [(ICAttributionViewConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_textEdit, a4);
    objc_storeWeak(&v12->_parentConfiguration, v10);
    v13 = [v9 range];
    [(ICAttributionViewConfiguration *)v12 commonInitWithSharedState:v8 range:v13, v14];
  }

  return v12;
}

- (id)debugDescription
{
  if ([(ICAttributionViewConfiguration *)self forcesAttributionHidden])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(ICAttributionViewConfiguration *)self attribution];
    v5 = [v4 string];
    v6 = [v3 stringWithFormat:@"[%@]", v5];
  }

  else
  {
    v4 = [(ICAttributionViewConfiguration *)self attribution];
    v6 = [v4 string];
  }

  if ([(ICAttributionViewConfiguration *)self forcesTimestampHidden])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(ICAttributionViewConfiguration *)self formattedTimestamp];
    v9 = [v8 string];
    v10 = [v7 stringWithFormat:@"[%@]", v9];
  }

  else
  {
    v8 = [(ICAttributionViewConfiguration *)self formattedTimestamp];
    v10 = [v8 string];
  }

  v11 = [(ICAttributionViewConfiguration *)self childConfigurations];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(ICAttributionViewConfiguration *)self childConfigurations];
    v14 = [v13 ic_map:&__block_literal_global_22];
    v15 = [v14 componentsJoinedByString:@"\n"];

    v16 = MEMORY[0x277CCACA8];
    [(ICAttributionViewConfiguration *)self adjustedFrame];
    v17 = ICStringFromRect();
    v18 = [v16 stringWithFormat:@"<Frame: %@\n Name: %@\n Time: %@\n%@>", v17, v6, v10, v15];
  }

  else
  {
    v19 = MEMORY[0x277CCACA8];
    [(ICAttributionViewConfiguration *)self adjustedFrame];
    v15 = ICStringFromRect();
    v18 = [v19 stringWithFormat:@"<Frame: %@\n Name: %@\n Time: %@>", v15, v6, v10];
  }

  return v18;
}

id __50__ICAttributionViewConfiguration_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 debugDescription];
  v3 = [v2 componentsSeparatedByString:@"\n"];
  v4 = [v3 ic_map:&__block_literal_global_28];
  v5 = [v4 componentsJoinedByString:@"\n"];

  return v5;
}

- (BOOL)isEqualToAttributionViewConfiguration:(id)a3
{
  v7 = a3;
  v8 = [(ICAttributionViewConfiguration *)self textEdit];
  if (!v8)
  {
    v15 = [v7 textEdit];
    if (!v15)
    {
      v15 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  v3 = [(ICAttributionViewConfiguration *)self textEdit];
  v4 = [v7 textEdit];
  if ([v3 isEqual:v4])
  {
    v9 = 1;
LABEL_7:
    v11 = [(ICAttributionViewConfiguration *)self editGroups];
    if (v11 || ([v7 editGroups], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [(ICAttributionViewConfiguration *)self editGroups];
      v13 = [v7 editGroups];
      v10 = [v12 isEqual:v13];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 1;
    }

LABEL_13:
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

LABEL_15:
  if (!v8)
  {
  }

  return v10;
}

- (BOOL)isAttributionHidden
{
  if (![(ICAttributionViewConfiguration *)self forcesAttributionHidden]&& ![(ICAttributionViewConfiguration *)self isBlurred])
  {
    v5 = [(ICAttributionViewConfiguration *)self parentConfiguration];
    if (!v5 && [(ICAttributionViewConfiguration *)self isFocused])
    {
      v4 = 1;
LABEL_12:

      return v4;
    }

    v6 = [(ICAttributionViewConfiguration *)self parentConfiguration];
    if (!v6 || (-[ICAttributionViewConfiguration parentConfiguration](self, "parentConfiguration"), v2 = objc_claimAutoreleasedReturnValue(), [v2 isFocused]))
    {
      v7 = [(ICAttributionViewConfiguration *)self parentConfiguration];
      v4 = [v7 isBlurred];

      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_12;
  }

  return 1;
}

- (BOOL)isTimestampHidden
{
  if ([(ICAttributionViewConfiguration *)self forcesTimestampHidden]|| [(ICAttributionViewConfiguration *)self isPreview]|| [(ICAttributionViewConfiguration *)self isFocused]|| [(ICAttributionViewConfiguration *)self isBlurred])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v5 = [(ICAttributionViewConfiguration *)self parentConfiguration];
    if (v5)
    {
      v6 = [(ICAttributionViewConfiguration *)self parentConfiguration];
      v3 = [v6 isFocused] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)isStatusImageHidden
{
  [(ICAttributionViewConfiguration *)self statusImageFrame];
  v4 = v3;
  v6 = v5;
  v7 = [(ICAttributionViewConfiguration *)self unreadUserIDs];
  if ([v7 count])
  {
    v8 = 1;
    if (![(ICAttributionViewConfiguration *)self isFocused]&& v6 != 0.0 && v4 != 0.0)
    {
      v9 = [(ICAttributionViewConfiguration *)self parentConfiguration];
      if (v9)
      {
        v10 = [(ICAttributionViewConfiguration *)self parentConfiguration];
        if ([v10 isFocused])
        {
          v8 = [(ICAttributionViewConfiguration *)self isBlurred];
        }
      }

      else
      {
        v8 = [(ICAttributionViewConfiguration *)self isBlurred];
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isDisclosureImageHidden
{
  if ([(ICAttributionViewConfiguration *)self isBlurred]|| [(ICAttributionViewConfiguration *)self isPreview])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(ICAttributionViewConfiguration *)self parentConfiguration];
    if (v4)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v5 = [(ICAttributionViewConfiguration *)self childConfigurations];
      if ([v5 count] > 1)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        v3 = ![(ICAttributionViewConfiguration *)self forcesTimestampHidden];
      }
    }
  }

  return v3;
}

- (void)setFocused:(BOOL)a3
{
  self->_focused = a3;
  if (a3)
  {
    self->_blurred = 0;
  }

  [(ICAttributionViewConfiguration *)self updateHighlightAlpha];
}

- (void)setBlurred:(BOOL)a3
{
  self->_blurred = a3;
  if (a3)
  {
    self->_focused = 0;
  }

  [(ICAttributionViewConfiguration *)self updateHighlightAlpha];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_frame, a3))
  {
    self->_frame.origin.x = x;
    self->_frame.origin.y = y;
    self->_frame.size.width = width;
    self->_frame.size.height = height;

    [(ICAttributionViewConfiguration *)self setAdjustedFrame:x, y, width, height];
  }
}

- (void)setAdjustedFrame:(CGRect)a3
{
  y = a3.origin.y;
  v20 = *MEMORY[0x277D85DE8];
  self->_adjustedFrame = a3;
  [(ICAttributionViewConfiguration *)self frame];
  v6 = y - v5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(ICAttributionViewConfiguration *)self highlightConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 frame];
        [v12 setAdjustedFrame:?];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [(ICAttributionViewConfiguration *)self childConfigurations];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__ICAttributionViewConfiguration_setAdjustedFrame___block_invoke;
  v14[3] = &unk_2781AE4C8;
  *&v14[5] = v6;
  v14[4] = self;
  [v13 enumerateObjectsUsingBlock:v14];
}

void __51__ICAttributionViewConfiguration_setAdjustedFrame___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a2;
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12 - *(a1 + 40);
    v14 = [*(a1 + 32) childConfigurations];
    v52 = [v14 objectAtIndexedSubscript:a3 - 1];

    [v52 adjustedFrame];
    v16 = v15;
    [v52 formattedTimestampFrame];
    if (v13 >= v16 + v17)
    {
      v18 = v13;
    }

    else
    {
      v18 = v16 + v17;
    }

    [v5 setAdjustedFrame:{v7, v18, v9, v11}];
    [v5 adjustedFrame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v52 adjustedFrame];
    v57.origin.x = v27;
    v57.origin.y = v28;
    v57.size.width = v29;
    v57.size.height = v30;
    v54.origin.x = v20;
    v54.origin.y = v22;
    v54.size.width = v24;
    v54.size.height = v26;
    v55 = CGRectIntersection(v54, v57);
    x = v55.origin.x;
    y = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
    [v52 formattedTimestampFrame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    if (!CGRectIsNull(v56))
    {
      [v52 formattedTimestampFrame];
      v36 = v43;
      v45 = v44;
      v40 = v46;
      v42 = v47;
      v48 = [*(a1 + 32) childConfigurations];
      v49 = [v48 firstObject];

      [v49 attributionFrame];
      if (height >= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = height;
      }

      v38 = v45 - v51;
    }

    [v52 setAdjustedFormattedTimestampFrame:{v36, v38, v40, v42}];
  }
}

- (void)setTrimmedRange:(_NSRange)a3
{
  if (self->_trimmedRange.location != a3.location || self->_trimmedRange.length != a3.length)
  {
    self->_trimmedRange = a3;
    [(ICAttributionViewConfiguration *)self rectForRange:?];

    [(ICAttributionViewConfiguration *)self setAssociatedTextFrame:?];
  }
}

- (void)addEditGroup:(id)a3
{
  v18 = a3;
  v4 = [(ICAttributionViewConfiguration *)self editGroups];
  v5 = [v4 arrayByAddingObject:v18];
  editGroups = self->_editGroups;
  self->_editGroups = v5;

  v20.location = [v18 range];
  v20.length = v7;
  self->_range = NSUnionRange(self->_range, v20);
  if ([(ICAttributionViewConfiguration *)self hasValidRange])
  {
    v8 = [(ICAttributionViewConfiguration *)self sharedState];
    v9 = [v8 noteTextStorage];
    v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v11 = [v18 range];
    v13 = [v9 ic_rangeByTrimmingCharactersInSet:v10 inRange:{v11, v12}];
    v15 = v14;

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v18 range];
      v15 = v16;
    }

    v21.location = v13;
    v21.length = v15;
    v17 = NSUnionRange(self->_trimmedRange, v21);
    [(ICAttributionViewConfiguration *)self setTrimmedRange:v17.location, v17.length];
  }
}

- (void)loadDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() loadDataQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ICAttributionViewConfiguration_loadDataWithCompletion___block_invoke;
  v7[3] = &unk_2781AE4F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __57__ICAttributionViewConfiguration_loadDataWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) synchronouslyLoadData];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)synchronouslyLoadData
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(ICAttributionViewConfiguration *)self hasValidRange])
  {
    v3 = [(ICAttributionViewConfiguration *)self sharedState];
    v4 = [v3 note];
    v5 = [v4 managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__ICAttributionViewConfiguration_synchronouslyLoadData__block_invoke;
    v16[3] = &unk_2781ABCF8;
    v16[4] = self;
    [v5 performBlockAndWait:v16];

    [(ICAttributionViewConfiguration *)self updateStatusImage];
    [(ICAttributionViewConfiguration *)self updateFrames];
    v6 = [(ICAttributionViewConfiguration *)self parentConfiguration];

    if (!v6)
    {
      [(ICAttributionViewConfiguration *)self updateHighlightFrames];
      [(ICAttributionViewConfiguration *)self updateChildConfigurations];
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [(ICAttributionViewConfiguration *)self childConfigurations];
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v12 + 1) + 8 * v11++) synchronouslyLoadData];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v9);
      }
    }

    [(ICAttributionViewConfiguration *)self setDataLoaded:1];
  }
}

uint64_t __55__ICAttributionViewConfiguration_synchronouslyLoadData__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateAttribution];
  [*(a1 + 32) updateTimestamp];
  v2 = *(a1 + 32);

  return [v2 updateUnreadUserIDs];
}

- (BOOL)hasValidRange
{
  v3 = [(ICAttributionViewConfiguration *)self sharedState];
  v4 = [v3 noteTextStorage];
  v5 = [v4 string];
  v6 = [(ICAttributionViewConfiguration *)self range];
  if ([v5 ic_rangeIsValid:{v6, v7}])
  {
    v8 = [(ICAttributionViewConfiguration *)self sharedState];
    v9 = [v8 noteTextStorage];
    v10 = [v9 string];
    v11 = [(ICAttributionViewConfiguration *)self trimmedRange];
    v13 = [v10 ic_rangeIsValid:{v11, v12}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICAttributionViewConfiguration *)self isEqualToAttributionViewConfiguration:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v28 = *MEMORY[0x277D85DE8];
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICAttributionViewConfiguration *)self textEdit];
    v5 = [v4 hash];
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB68] null];
      v5 = [v6 hash];
    }

    v7 = [(ICAttributionViewConfiguration *)self editGroups];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v9 hash];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v10 = ICHashWithObject(*(*(&v23 + 1) + 8 * i)) - v10 + 32 * v10;
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    self->_hash = ICHashWithHashKeys(v5, v16, v17, v18, v19, v20, v21, v22, v10);
    return self->_hash;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICAttributionViewConfiguration allocWithZone:a3];

  return [(ICAttributionViewConfiguration *)v4 initWithConfiguration:self];
}

- (void)commonInitWithSharedState:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v17 = a3;
  objc_storeStrong(&self->_sharedState, a3);
  self->_range.location = location;
  self->_range.length = length;
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  self->_frame.origin = *MEMORY[0x277CBF3A0];
  self->_frame.size = v8;
  self->_dataLoaded = 0;
  *&self->_focused = 0;
  if ([(ICAttributionViewConfiguration *)self hasValidRange])
  {
    v9 = [(ICAttributionViewConfiguration *)self sharedState];
    v10 = [v9 noteTextStorage];
    v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v10 ic_rangeByTrimmingCharactersInSet:v11 inRange:{location, length}];
    v14 = v13;

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = location;
    }

    else
    {
      v15 = v12;
    }

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = length;
    }

    else
    {
      v16 = v14;
    }

    [(ICAttributionViewConfiguration *)self setTrimmedRange:v15, v16];
    [(ICAttributionViewConfiguration *)self updateFrames];
  }
}

- (void)updateAttribution
{
  v36[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttributionViewConfiguration *)self attributionUserID];
  v4 = [(ICAttributionViewConfiguration *)self sharedState];
  v5 = [v4 shortNameForUserID:v3];

  v6 = *MEMORY[0x277D740C0];
  v35[0] = *MEMORY[0x277D740C0];
  v7 = [(ICAttributionViewConfiguration *)self sharedState];
  v8 = [v7 highlightColorForUserID:v3];
  v36[0] = v8;
  v9 = *MEMORY[0x277D740A8];
  v35[1] = *MEMORY[0x277D740A8];
  v10 = [(ICAttributionViewConfiguration *)self sharedState];
  v11 = [v10 primaryFont];
  v36[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v5 attributes:v12];
  v14 = [(ICAttributionViewConfiguration *)self userIDs];
  v15 = [v14 count];

  if (v15 >= 2)
  {
    v33[0] = v6;
    if ([MEMORY[0x277D75418] ic_isVision])
    {
      [MEMORY[0x277D75348] systemGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] secondaryLabelColor];
    }
    v16 = ;
    v33[1] = v9;
    v34[0] = v16;
    v17 = [(ICAttributionViewConfiguration *)self sharedState];
    v18 = [v17 secondaryFont];
    v34[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v20 = MEMORY[0x277CCACA8];
    v21 = [(ICAttributionViewConfiguration *)self userIDs];
    v22 = [v20 localizedStringWithFormat:@" + %lu", objc_msgSend(v21, "count") - 1];

    v23 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v22 attributes:v19];
    [v13 appendAttributedString:v23];
  }

  v24 = [(ICAttributionViewConfiguration *)self attribution];
  v25 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v13)
  {
    v26 = 0;
  }

  else
  {
    v26 = v13;
  }

  v27 = v26;
  if (v25 == v24)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28;
  if (v27 | v29)
  {
    v30 = v29;
    if (v27 && v29)
    {
      v31 = [v27 isEqual:v29];

      if (v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v32 = [v13 copy];
    [(ICAttributionViewConfiguration *)self setAttribution:v32];

    [(ICAttributionViewConfiguration *)self updateAttributionTextStorage];
  }

  else
  {
  }

LABEL_20:
}

- (void)updateStatusImage
{
  if (![(ICAttributionViewConfiguration *)self isStatusImageHidden])
  {
    [(ICAttributionViewConfiguration *)self statusImageFrame];
    v4 = v3;
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v3, v5}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__ICAttributionViewConfiguration_updateStatusImage__block_invoke;
    v11[3] = &unk_2781AE518;
    v11[4] = self;
    *&v11[5] = v4;
    *&v11[6] = v6;
    v8 = [v7 imageWithActions:v11];
    v9 = [v8 imageWithRenderingMode:1];
    statusImage = self->_statusImage;
    self->_statusImage = v9;
  }
}

uint64_t __51__ICAttributionViewConfiguration_updateStatusImage__block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = [a2 CGContext];
  v5 = a1[5];
  v6 = a1[6];

  return [v3 drawStatusImageInContext:v4 canvasSize:{v5, v6}];
}

- (void)drawStatusImageInContext:(CGContext *)a3 canvasSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v27 = *MEMORY[0x277D85DE8];
  v8 = [(ICAttributionViewConfiguration *)self unreadUserIDs];
  if ([v8 count] <= 2)
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 3.0;
  }

  v10 = [v8 count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = (height + -10.0) * 0.5;
    v15 = (width - ((v10 - 1) * v9 + 10.0)) * 0.5;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = v15 + 10.0;
        if (v15 + 10.0 <= 16.0)
        {
          v19 = *(*(&v22 + 1) + 8 * v17);
          v20 = [(ICAttributionViewConfiguration *)self sharedState:v18];
          v21 = [v20 highlightColorForUserID:v19];

          CGContextSetFillColorWithColor(a3, [v21 CGColor]);
          v28.size.width = 10.0;
          v28.size.height = 10.0;
          v28.origin.x = v15;
          v28.origin.y = v14;
          CGContextFillEllipseInRect(a3, v28);
          v15 = v9 + v15;
        }

        ++v17;
      }

      while (v13 != v17);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:{16, v18}];
    }

    while (v13);
  }
}

- (void)updateTimestamp
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttributionViewConfiguration *)self explicitTimestamp];

  if (v3)
  {
    v4 = [(ICAttributionViewConfiguration *)self explicitTimestamp];
    goto LABEL_9;
  }

  v5 = [(ICAttributionViewConfiguration *)self textEdit];

  if (v5)
  {
    v6 = [(ICAttributionViewConfiguration *)self textEdit];
    v4 = [v6 timestamp];
LABEL_8:

    goto LABEL_9;
  }

  v7 = [(ICAttributionViewConfiguration *)self editGroups];
  v8 = [v7 firstObject];
  v4 = [v8 latestTimestamp];

  v6 = [(ICAttributionViewConfiguration *)self editGroups];
  if ([v6 count] <= 1)
  {
    goto LABEL_8;
  }

  v9 = MEMORY[0x277CBEB98];
  v10 = [(ICAttributionViewConfiguration *)self editGroups];
  v11 = [v10 ic_compactMap:&__block_literal_global_50];
  v12 = [v9 setWithArray:v11];
  v13 = [v12 count];

  if (v13 == 1)
  {
    v14 = [(ICAttributionViewConfiguration *)self editGroups];
    v15 = [v14 valueForKeyPath:@"@max.latestTimestamp"];

    v4 = v15;
  }

LABEL_9:
  v16 = [v4 ic_briefFormattedDate];
  v17 = v16;
  v18 = &stru_282757698;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v34[0] = *MEMORY[0x277D740C0];
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v20 = ;
  v35[0] = v20;
  v34[1] = *MEMORY[0x277D740A8];
  v21 = [(ICAttributionViewConfiguration *)self sharedState];
  v22 = [v21 secondaryFont];
  v35[1] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v24 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v19 attributes:v23];
  [(ICAttributionViewConfiguration *)self setTimestamp:v4];
  v25 = [(ICAttributionViewConfiguration *)self formattedTimestamp];
  v26 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v24)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27;
  if (v26 == v25)
  {
    v29 = 0;
  }

  else
  {
    v29 = v25;
  }

  v30 = v29;
  if (v28 | v30)
  {
    v31 = v30;
    if (v28 && v30)
    {
      v32 = [v28 isEqual:v30];

      if (v32)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v33 = [v24 copy];
    [(ICAttributionViewConfiguration *)self setFormattedTimestamp:v33];

    [(ICAttributionViewConfiguration *)self updateFormattedTimestampTextStorage];
  }

  else
  {
  }

LABEL_28:
}

uint64_t __49__ICAttributionViewConfiguration_updateTimestamp__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  v4 = [a2 range];

  return [v2 valueWithRange:{v4, v3}];
}

- (UIImage)disclosureImage
{
  v3 = [(ICAttributionViewConfiguration *)self isFocused];
  v4 = [(ICAttributionViewConfiguration *)self sharedState];
  v5 = v4;
  if (v3)
  {
    [v4 expandedDisclosureImage];
  }

  else
  {
    [v4 collapsedDisclosureImage];
  }
  v6 = ;

  return v6;
}

- (void)updateFrames
{
  if ([(ICAttributionViewConfiguration *)self hasValidRange])
  {
    v3 = [(ICAttributionViewConfiguration *)self sharedState];
    v4 = [v3 primaryFont];
    [v4 lineHeight];
    v6 = v5;

    v7 = [(ICAttributionViewConfiguration *)self sharedState];
    v8 = [v7 secondaryFont];
    [v8 lineHeight];
    v10 = v9;

    v11 = [(ICAttributionViewConfiguration *)self sharedState];
    v12 = [v11 expandedDisclosureImage];
    [v12 size];
    v14 = v13 + 4.0;

    if ([(ICAttributionViewConfiguration *)self forcesAttributionHidden])
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v6;
    }

    v16 = [(ICAttributionViewConfiguration *)self sharedState];
    [v16 panelWidth];
    v18 = v17 - v14 + -16.0;

    self->_attributionFrame.origin.x = 0.0;
    self->_attributionFrame.origin.y = 0.0;
    self->_attributionFrame.size.width = v18;
    self->_attributionFrame.size.height = v15;
    self->_disclosureImageFrame.origin.x = v18;
    self->_disclosureImageFrame.origin.y = 0.0;
    self->_disclosureImageFrame.size.width = v14;
    self->_disclosureImageFrame.size.height = v15;
    v19 = [(ICAttributionViewConfiguration *)self isAttributionHidden];
    v20 = (v15 - v15) * -0.5;
    if (!v19)
    {
      v20 = 0.0;
    }

    self->_statusImageFrame.origin.x = self->_disclosureImageFrame.origin.x + self->_disclosureImageFrame.size.width;
    self->_statusImageFrame.origin.y = v20;
    self->_statusImageFrame.size.width = 16.0;
    self->_statusImageFrame.size.height = v15;
    if ([(ICAttributionViewConfiguration *)self forcesTimestampHidden]|| [(ICAttributionViewConfiguration *)self isDataLoaded]&& ([(ICAttributionViewConfiguration *)self timestamp], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
    {
      v10 = 0.0;
    }

    self->_formattedTimestampFrame.origin.x = 0.0;
    self->_formattedTimestampFrame.origin.y = self->_attributionFrame.size.height;
    self->_formattedTimestampFrame.size.width = v18;
    self->_formattedTimestampFrame.size.height = v10;
    v22 = [(ICAttributionViewConfiguration *)self trimmedRange];
    [(ICAttributionViewConfiguration *)self rectForRange:v22, v23];
    self->_associatedTextFrame.origin.x = v24;
    self->_associatedTextFrame.origin.y = v25;
    self->_associatedTextFrame.size.width = v26;
    self->_associatedTextFrame.size.height = v27;
    [(ICAttributionViewConfiguration *)self frame];
    v29 = v28;
    [(ICAttributionViewConfiguration *)self frame];
    if (v30 == 0.0)
    {
      [(ICAttributionViewConfiguration *)self frame];
      if (v31 == 0.0)
      {
        v32 = [(ICAttributionViewConfiguration *)self sharedState];
        [v32 topTextViewInset];
        v34 = v33;
        y = self->_associatedTextFrame.origin.y;
        v36 = [(ICAttributionViewConfiguration *)self parentConfiguration];
        [v36 adjustedFrame];
        v38 = v37;

        v39 = [(ICAttributionViewConfiguration *)self trimmedRange];
        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        v63 = 0;
        v52 = MEMORY[0x277D85DD0];
        v53 = 3221225472;
        v54 = __46__ICAttributionViewConfiguration_updateFrames__block_invoke;
        v55 = &unk_2781AE560;
        v58 = v39;
        v59 = 1;
        v56 = self;
        v57 = &v60;
        performBlockOnMainThreadAndWait();
        v29 = v34 + y - v38;
        if ((v61[3] & 1) == 0)
        {
          [(ICAttributionViewConfiguration *)self rectForRange:[(ICAttributionViewConfiguration *)self trimmedRange:v52], 1];
          v41 = v40;
          [(ICAttributionViewConfiguration *)self attributionFrame];
          if (v41 > v42)
          {
            [(ICAttributionViewConfiguration *)self attributionFrame];
            v29 = v29 + (v41 - v43) * 0.5;
          }
        }

        _Block_object_dispose(&v60, 8);
      }
    }

    v44 = [(ICAttributionViewConfiguration *)self sharedState:v52];
    [v44 panelWidth];
    self->_frame.origin.x = 0.0;
    self->_frame.origin.y = v29;
    self->_frame.size.width = v45;
    self->_frame.size.height = v15 + v10 + 4.0;

    size = self->_frame.size;
    self->_adjustedFrame.origin = self->_frame.origin;
    self->_adjustedFrame.size = size;
    v47 = [(ICAttributionViewConfiguration *)self sharedState];
    v48 = [v47 isRTL];

    if (v48)
    {
      self->_statusImageFrame.origin.x = 0.0;
      v49 = self->_statusImageFrame.size.width + 0.0;
      self->_disclosureImageFrame.origin.x = v49;
      v50 = v49 + self->_disclosureImageFrame.size.width;
      self->_attributionFrame.origin.x = v50;
      self->_formattedTimestampFrame.origin.x = v50;
    }

    v51 = self->_formattedTimestampFrame.size;
    self->_adjustedFormattedTimestampFrame.origin = self->_formattedTimestampFrame.origin;
    self->_adjustedFormattedTimestampFrame.size = v51;
  }
}

void __46__ICAttributionViewConfiguration_updateFrames__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 noteTextStorage];
  v4 = *MEMORY[0x277D74060];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ICAttributionViewConfiguration_updateFrames__block_invoke_2;
  v6[3] = &unk_2781ABC80;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  [v3 enumerateAttribute:v4 inRange:v5 options:*(a1 + 56) usingBlock:{0, v6}];
}

void __46__ICAttributionViewConfiguration_updateFrames__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)updateHighlightFrames
{
  if ([(ICAttributionViewConfiguration *)self hasValidRange])
  {
    v3 = [(ICAttributionViewConfiguration *)self parentConfiguration];

    v4 = [MEMORY[0x277CBEB18] array];
    v5 = v4;
    if (v3)
    {
      highlightConfigurations = self->_highlightConfigurations;
      self->_highlightConfigurations = v5;
    }

    else
    {
      v8 = MEMORY[0x277D85DD0];
      v7 = v4;
      performBlockOnMainThreadAndWait();
      if (([(NSMutableArray *)self->_highlightConfigurations isEqualToArray:v7, v8, 3221225472, __55__ICAttributionViewConfiguration_updateHighlightFrames__block_invoke, &unk_2781ABEB8, self]& 1) == 0)
      {
        objc_storeStrong(&self->_highlightConfigurations, v5);
      }

      [(ICAttributionViewConfiguration *)self updateHighlightAlpha];
    }
  }
}

void __55__ICAttributionViewConfiguration_updateHighlightFrames__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedState];
  v3 = [v2 noteTextStorage];
  v4 = *MEMORY[0x277D74060];
  v5 = [*(a1 + 32) range];
  v7 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ICAttributionViewConfiguration_updateHighlightFrames__block_invoke_2;
  v9[3] = &unk_2781AC8D0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v3 enumerateAttribute:v4 inRange:v5 options:v7 usingBlock:{0, v9}];
}

void __55__ICAttributionViewConfiguration_updateHighlightFrames__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v30 = ICDynamicCast();

  v8 = v30;
  if (v30)
  {
    v9 = MEMORY[0x277D35E00];
    v10 = [v30 fileType];
    if ([v9 typeUTIIsInlineDrawing:v10])
    {
    }

    else
    {
      v11 = MEMORY[0x277D35E00];
      v12 = [v30 fileType];
      LODWORD(v11) = [v11 typeUTIIsSystemPaper:v12];

      v8 = v30;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    [*(a1 + 32) rectForRange:{a3, a4}];
    v14 = v13;
    v16 = v15;
    v17 = [*(a1 + 32) sharedState];
    v18 = 0.0;
    if (([v17 isRTL] & 1) == 0)
    {
      [*(a1 + 32) statusImageFrame];
      v20 = v19;
      [*(a1 + 32) statusImageFrame];
      v18 = v20 + v21;
    }

    [*(a1 + 32) frame];
    v23 = v14 - v22 + 8.0;
    v24 = [*(a1 + 32) editGroupForRange:{a3, a4}];
    v25 = [v24 userID];

    v26 = [*(a1 + 32) sharedState];
    v27 = [v26 highlightColorForUserID:v25];

    v28 = objc_alloc_init(ICAttributionViewHighlightConfiguration);
    v29 = [v30 attachmentIdentifier];
    [(ICAttributionViewHighlightConfiguration *)v28 setIdentifier:v29];

    [(ICAttributionViewHighlightConfiguration *)v28 setFrame:v18, v23, 4.0, v16];
    [(ICAttributionViewHighlightConfiguration *)v28 setAdjustedFrame:v18, v23, 4.0, v16];
    [(ICAttributionViewHighlightConfiguration *)v28 setColor:v27];
    [*(a1 + 40) addObject:v28];

    v8 = v30;
  }

LABEL_8:
}

- (void)updateHighlightAlpha
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_highlightConfigurations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(ICAttributionViewConfiguration *)self isBlurred];
        v10 = 0.0;
        if (!v9)
        {
          [(ICAttributionViewConfiguration *)self preferredHighlightValue];
        }

        [v8 setAlpha:v10];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)updateChildConfigurations
{
  v138 = *MEMORY[0x277D85DE8];
  childConfigurations = self->_childConfigurations;
  self->_childConfigurations = MEMORY[0x277CBEBF8];

  v4 = [(ICAttributionViewConfiguration *)self parentConfiguration];

  if (v4)
  {
    return;
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = [(ICAttributionViewConfiguration *)self editGroups];
  v6 = [obj countByEnumeratingWithState:&v130 objects:v137 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v131;
    v108 = v129;
    v110 = *v131;
    do
    {
      v9 = 0;
      v112 = v7;
      do
      {
        if (*v131 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v116 = v9;
        v10 = *(*(&v130 + 1) + 8 * v9);
        v11 = [(ICAttributionViewConfiguration *)self editGroups];
        v12 = [v11 count];

        if (v12 >= 2)
        {
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v129[0] = __59__ICAttributionViewConfiguration_updateChildConfigurations__block_invoke;
          v129[1] = &unk_2781AE588;
          v129[2] = v10;
          v13 = [v5 ic_objectPassingTest:v128];
          if (v13)
          {
            v14 = [v10 latestTimestamp];
            v15 = [v13 timestamp];
            v16 = [v14 ic_isLaterThanDate:v15];

            v17 = v116;
            if (v16)
            {
              v18 = [v10 latestTimestamp];
              [v13 setExplicitTimestamp:v18];
              goto LABEL_25;
            }
          }

          else
          {
            v30 = [ICAttributionViewConfiguration alloc];
            v31 = [(ICAttributionViewConfiguration *)self sharedState];
            v136 = v10;
            v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
            v18 = [(ICAttributionViewConfiguration *)v30 initWithSharedState:v31 editGroups:v32 parentConfiguration:self];

            [(ICAttributionViewConfiguration *)v18 synchronouslyLoadData];
            [(ICAttributionViewConfiguration *)self frame];
            v34 = v33;
            [(ICAttributionViewConfiguration *)v18 frame];
            v36 = v35;
            v37 = [v5 lastObject];
            if (v37)
            {
              [(ICAttributionViewConfiguration *)v18 frame];
              v39 = v38;
              v34 = v40;
              v36 = v41;
              [v37 frame];
              v43 = v42;
              [v37 frame];
              v45 = v43 + v44;
            }

            else
            {
              v45 = 0.0;
              v39 = 0.0;
            }

            [(ICAttributionViewConfiguration *)v18 setFrame:v39, v45, v34, v36];
            [(ICAttributionViewConfiguration *)v18 setForceVisible:1];
            [v5 addObject:v18];

            v17 = v116;
LABEL_25:
          }

          goto LABEL_27;
        }

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v19 = [v10 edits];
        v20 = [v19 countByEnumeratingWithState:&v124 objects:v135 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v125;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v125 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v124 + 1) + 8 * i);
              v25 = [ICAttributionViewConfiguration alloc];
              v26 = [(ICAttributionViewConfiguration *)self sharedState];
              v27 = [(ICAttributionViewConfiguration *)v25 initWithSharedState:v26 textEdit:v24 parentConfiguration:self];

              -[ICAttributionViewConfiguration setForcesAttributionHidden:](v27, "setForcesAttributionHidden:", [v5 count] != 0);
              if (![v5 count])
              {
                [(ICAttributionViewConfiguration *)self frame];
                v29 = v28;
                [(ICAttributionViewConfiguration *)v27 frame];
                [(ICAttributionViewConfiguration *)v27 setFrame:0.0, 0.0, v29];
                [(ICAttributionViewConfiguration *)v27 setForceVisible:1];
              }

              [v5 addObject:v27];
            }

            v21 = [v19 countByEnumeratingWithState:&v124 objects:v135 count:16];
          }

          while (v21);
        }

        v8 = v110;
        v7 = v112;
        v17 = v116;
LABEL_27:
        v9 = v17 + 1;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v130 objects:v137 count:16];
    }

    while (v7);
  }

  v46 = [MEMORY[0x277CBEB18] array];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v113 = v5;
  v117 = [v113 countByEnumeratingWithState:&v120 objects:v134 count:16];
  if (!v117)
  {
    goto LABEL_63;
  }

  obja = *v121;
  v111 = v119;
  v109 = v46;
  do
  {
    for (j = 0; j != v117; ++j)
    {
      if (*v121 != obja)
      {
        objc_enumerationMutation(v113);
      }

      v48 = *(*(&v120 + 1) + 8 * j);
      [v48 synchronouslyLoadData];
      if (([v48 isAttributionHidden] & 1) == 0)
      {
        v118[0] = MEMORY[0x277D85DD0];
        v118[1] = 3221225472;
        v119[0] = __59__ICAttributionViewConfiguration_updateChildConfigurations__block_invoke_2;
        v119[1] = &unk_2781AE588;
        v119[2] = v48;
        v49 = [v46 ic_objectPassingTest:v118];
        if (v49)
        {
          v50 = v49;
          v51 = [v48 timestamp];
          v52 = [v50 timestamp];
          v53 = [v51 ic_isLaterThanDate:v52];

          if (v53)
          {
            v54 = [v48 timestamp];
            [v50 setExplicitTimestamp:v54];
          }

          goto LABEL_61;
        }
      }

      v55 = [v46 lastObject];
      v50 = v55;
      if (!v55)
      {
        [v48 forceVisible];
LABEL_60:
        [v46 addObject:v48];
        goto LABEL_61;
      }

      [v55 frame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      [v48 frame];
      v140.origin.x = v64;
      v140.origin.y = v65;
      v140.size.width = v66;
      v140.size.height = v67;
      v139.origin.x = v57;
      v139.origin.y = v59;
      v139.size.width = v61;
      v139.size.height = v63;
      if (!CGRectIntersectsRect(v139, v140))
      {
        [v48 frame];
        v69 = v68;
        [v50 frame];
        if (v69 > v70)
        {
          goto LABEL_49;
        }
      }

      v71 = [v50 timestamp];
      v72 = [v48 timestamp];
      if ([v71 ic_isEarlierThanDate:v72] && !objc_msgSend(v50, "forceVisible"))
      {
        v103 = [v48 forceVisible];

        if ((v103 & 1) == 0)
        {
          [v48 setForcesAttributionHidden:{objc_msgSend(v50, "isAttributionHidden")}];
          [v50 frame];
          [v48 setFrame:?];
          [v46 removeObject:v50];
          goto LABEL_60;
        }
      }

      else
      {
      }

      v73 = [v48 editGroups];
      if ([v73 count])
      {
        v74 = [v48 isAttributionHidden];

        if ((v74 & 1) == 0)
        {
          [v48 frame];
          v76 = v75;
          v78 = v77;
          v80 = v79;
          [v50 frame];
          v83 = v81 + v82;
          v84 = [v48 textEdit];
          v85 = [v84 range];
          [(ICAttributionViewConfiguration *)self rectForRange:v85, v86];
          v88 = v87;
          v90 = v89;

          if (([v48 forceVisible] & 1) != 0 || v80 + v83 <= v88 + v90)
          {
            [v48 setFrame:{v76, v83, v78, v80}];
LABEL_49:
            v91 = 0;
            goto LABEL_53;
          }
        }
      }

      else
      {
      }

      v91 = 1;
LABEL_53:
      v92 = [v48 formattedTimestamp];
      v93 = [v92 string];
      v94 = [v50 formattedTimestamp];
      v95 = [v94 string];
      v96 = [v93 isEqualToString:v95];

      v97 = [v48 timestamp];
      v98 = [v50 timestamp];
      [v97 timeIntervalSinceDate:v98];
      v100 = v99;

      v101 = -v100;
      if (v100 >= 0.0)
      {
        v101 = v100;
      }

      v102 = v101 >= 86400.0;
      v46 = v109;
      if (([v48 forceVisible] & 1) != 0 || (v102 & ~(v91 | v96)) != 0)
      {
        goto LABEL_60;
      }

LABEL_61:
    }

    v117 = [v113 countByEnumeratingWithState:&v120 objects:v134 count:16];
  }

  while (v117);
LABEL_63:

  if ([v46 count] == 1)
  {
    v104 = [(ICAttributionViewConfiguration *)self timestamp];
    v105 = [v46 firstObject];
    [v105 setExplicitTimestamp:v104];
  }

  v106 = [v46 copy];
  v107 = self->_childConfigurations;
  self->_childConfigurations = v106;
}

uint64_t __59__ICAttributionViewConfiguration_updateChildConfigurations__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userIDs];
  v4 = [*(a1 + 32) userID];
  v5 = [v3 containsObject:v4];

  return v5;
}

uint64_t __59__ICAttributionViewConfiguration_updateChildConfigurations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAttributionHidden])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 userIDs];
    v6 = [*(a1 + 32) userIDs];
    v4 = [v5 isEqual:v6];
  }

  return v4;
}

- (CGRect)rectForRange:(_NSRange)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_21552D17E;
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v16 = *MEMORY[0x277CBF3A0];
  v17 = v3;
  performBlockOnMainThreadAndWait();
  v4 = v13[4];
  v5 = v13[5];
  v6 = v13[6];
  v7 = v13[7];
  _Block_object_dispose(&v12, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

void __47__ICAttributionViewConfiguration_rectForRange___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) sharedState];
  v2 = [v8 textView];
  [v2 ic_rectForRange:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
}

- (id)editGroupForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(ICAttributionViewConfiguration *)self editGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ICAttributionViewConfiguration_editGroupForRange___block_invoke;
  v8[3] = &__block_descriptor_48_e34_B32__0__ICTTTextEditGroup_8Q16_B24l;
  v8[4] = location;
  v8[5] = length;
  v6 = [v5 ic_objectPassingTest:v8];

  return v6;
}

- (NSString)attributionUserID
{
  v3 = [(ICAttributionViewConfiguration *)self textEdit];
  if (v3)
  {
    v4 = [(ICAttributionViewConfiguration *)self sharedState];
    v5 = [v4 note];
    v6 = [(ICAttributionViewConfiguration *)self textEdit];
    v7 = [v6 replicaID];
    v8 = [v5 userIDForReplicaID:v7];
  }

  else
  {
    v4 = [(ICAttributionViewConfiguration *)self editGroups];
    v5 = [v4 firstObject];
    v8 = [v5 userID];
  }

  return v8;
}

- (NSOrderedSet)userIDs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v4 = [(ICAttributionViewConfiguration *)self textEdit];

  if (v4)
  {
    v5 = [(ICAttributionViewConfiguration *)self attributionUserID];
    [v3 ic_addNonNilObject:v5];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(ICAttributionViewConfiguration *)self editGroups];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) userID];
          [v3 ic_addNonNilObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = [v3 copy];

  return v11;
}

- (void)updateUnreadUserIDs
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEB40] orderedSet];
  v3 = [(ICAttributionViewConfiguration *)self textEdit];

  if (v3)
  {
    v4 = [(ICAttributionViewConfiguration *)self sharedState];
    v5 = [(ICAttributionViewConfiguration *)self timestamp];
    v6 = [(ICAttributionViewConfiguration *)self attributionUserID];
    v7 = [v4 isTimestampUnread:v5 forUserID:v6];

    if (v7)
    {
      v8 = [(ICAttributionViewConfiguration *)self attributionUserID];
      [v22 ic_addNonNilObject:v8];
LABEL_14:
    }
  }

  else
  {
    v9 = [(ICAttributionViewConfiguration *)self editGroups];

    if (v9)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = [(ICAttributionViewConfiguration *)self editGroups];
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            v15 = [(ICAttributionViewConfiguration *)self sharedState];
            v16 = [v14 latestTimestamp];
            v17 = [v14 userID];
            v18 = [v15 isTimestampUnread:v16 forUserID:v17];

            if (v18)
            {
              v19 = [v14 userID];
              [v22 ic_addNonNilObject:v19];
            }
          }

          v11 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v11);
      }

      goto LABEL_14;
    }
  }

  v20 = [v22 array];
  unreadUserIDs = self->_unreadUserIDs;
  self->_unreadUserIDs = v20;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)trimmedRange
{
  length = self->_trimmedRange.length;
  location = self->_trimmedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)attributionFrame
{
  x = self->_attributionFrame.origin.x;
  y = self->_attributionFrame.origin.y;
  width = self->_attributionFrame.size.width;
  height = self->_attributionFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)formattedTimestampFrame
{
  x = self->_formattedTimestampFrame.origin.x;
  y = self->_formattedTimestampFrame.origin.y;
  width = self->_formattedTimestampFrame.size.width;
  height = self->_formattedTimestampFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)disclosureImageFrame
{
  x = self->_disclosureImageFrame.origin.x;
  y = self->_disclosureImageFrame.origin.y;
  width = self->_disclosureImageFrame.size.width;
  height = self->_disclosureImageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)statusImageFrame
{
  x = self->_statusImageFrame.origin.x;
  y = self->_statusImageFrame.origin.y;
  width = self->_statusImageFrame.size.width;
  height = self->_statusImageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)associatedTextFrame
{
  x = self->_associatedTextFrame.origin.x;
  y = self->_associatedTextFrame.origin.y;
  width = self->_associatedTextFrame.size.width;
  height = self->_associatedTextFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adjustedFrame
{
  x = self->_adjustedFrame.origin.x;
  y = self->_adjustedFrame.origin.y;
  width = self->_adjustedFrame.size.width;
  height = self->_adjustedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adjustedFormattedTimestampFrame
{
  x = self->_adjustedFormattedTimestampFrame.origin.x;
  y = self->_adjustedFormattedTimestampFrame.origin.y;
  width = self->_adjustedFormattedTimestampFrame.size.width;
  height = self->_adjustedFormattedTimestampFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (ICAttributionViewConfiguration)parentConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_parentConfiguration);

  return WeakRetained;
}

- (void)updateAttributionTextStorage
{
  v2 = self;
  sub_21539AF9C(&selRef_attribution, &selRef_setAttributionTextStorage_);
}

- (void)updateFormattedTimestampTextStorage
{
  v2 = self;
  sub_21539AF9C(&selRef_formattedTimestamp, &selRef_setFormattedTimestampTextStorage_);
}

@end