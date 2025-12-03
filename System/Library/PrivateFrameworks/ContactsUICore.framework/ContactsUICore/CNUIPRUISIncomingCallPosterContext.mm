@interface CNUIPRUISIncomingCallPosterContext
+ (id)emptyContext;
- (CNUIPRUISIncomingCallPosterContext)initWithContact:(id)contact showName:(BOOL)name;
- (CNUIPRUISIncomingCallPosterContext)initWithContact:(id)contact showName:(BOOL)name frame:(CGRect)frame;
- (CNUIPRUISIncomingCallPosterContext)initWithNameVariations:(id)variations preferredNameStyle:(unint64_t)style horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster;
@end

@implementation CNUIPRUISIncomingCallPosterContext

+ (id)emptyContext
{
  v2 = [self alloc];
  v3 = [v2 initWithNameVariations:0 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:*MEMORY[0x1E695F058] personalPoster:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v3;
}

- (CNUIPRUISIncomingCallPosterContext)initWithNameVariations:(id)variations preferredNameStyle:(unint64_t)style horizontalTitleBoundingRect:(CGRect)rect verticalTitleBoundingRect:(CGRect)boundingRect imageAssetID:(id)d personalPoster:(BOOL)poster
{
  posterCopy = poster;
  height = boundingRect.size.height;
  width = boundingRect.size.width;
  y = boundingRect.origin.y;
  x = boundingRect.origin.x;
  v14 = rect.size.height;
  v15 = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  variationsCopy = variations;
  dCopy = d;
  v31.receiver = self;
  v31.super_class = CNUIPRUISIncomingCallPosterContext;
  v22 = [(CNUIPRUISIncomingCallPosterContext *)&v31 init];
  if (v22)
  {
    v23 = style == 1;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v24 = getPRUISIncomingCallPosterContextClass_softClass;
    v36 = getPRUISIncomingCallPosterContextClass_softClass;
    if (!getPRUISIncomingCallPosterContextClass_softClass)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __getPRUISIncomingCallPosterContextClass_block_invoke;
      v32[3] = &unk_1E76E79E0;
      v32[4] = &v33;
      __getPRUISIncomingCallPosterContextClass_block_invoke(v32);
      v24 = v34[3];
    }

    v25 = v24;
    _Block_object_dispose(&v33, 8);
    v26 = [v24 alloc];
    wrappedNameVariations = [variationsCopy wrappedNameVariations];
    v28 = [v26 initWithNameVariations:wrappedNameVariations preferredNameStyle:v23 horizontalTitleBoundingRect:dCopy verticalTitleBoundingRect:posterCopy imageAssetID:v17 personalPoster:{v16, v15, v14, x, y, width, height}];
    wrappedIncomingCallPosterContext = v22->_wrappedIncomingCallPosterContext;
    v22->_wrappedIncomingCallPosterContext = v28;
  }

  return v22;
}

- (CNUIPRUISIncomingCallPosterContext)initWithContact:(id)contact showName:(BOOL)name
{
  nameCopy = name;
  v6 = MEMORY[0x1E69DCEB0];
  contactCopy = contact;
  mainScreen = [v6 mainScreen];
  [mainScreen bounds];
  v9 = [(CNUIPRUISIncomingCallPosterContext *)self initWithContact:contactCopy showName:nameCopy frame:?];

  return v9;
}

- (CNUIPRUISIncomingCallPosterContext)initWithContact:(id)contact showName:(BOOL)name frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contactCopy = contact;
  cnui_posterName = [contactCopy cnui_posterName];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    selfCopy = +[CNUIPRUISIncomingCallPosterContext emptyContext];
  }

  else
  {
    v13 = +[CNUIMeContactMonitor unifiedMeContactMonitor];
    v14 = [v13 isMeContact:contactCopy];

    v15 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithFrame:{x, y, width, height}];
    [CNUIIncomingCallSnapshotViewController horizontalNameLabelBoundingRectForName:cnui_posterName window:v15];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [CNUIIncomingCallSnapshotViewController verticalNameLabelBoundingRectForName:cnui_posterName window:v15];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [[CNUIPRUISIncomingCallPosterContextNameVariations alloc] initWithShortName:cnui_posterName fullName:0];
    self = [(CNUIPRUISIncomingCallPosterContext *)self initWithNameVariations:v32 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:v14 imageAssetID:v17 personalPoster:v19, v21, v23, v25, v27, v29, v31];

    selfCopy = self;
  }

  return selfCopy;
}

@end