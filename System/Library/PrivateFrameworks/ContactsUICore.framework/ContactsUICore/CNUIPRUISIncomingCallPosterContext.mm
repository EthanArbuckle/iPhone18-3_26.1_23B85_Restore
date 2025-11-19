@interface CNUIPRUISIncomingCallPosterContext
+ (id)emptyContext;
- (CNUIPRUISIncomingCallPosterContext)initWithContact:(id)a3 showName:(BOOL)a4;
- (CNUIPRUISIncomingCallPosterContext)initWithContact:(id)a3 showName:(BOOL)a4 frame:(CGRect)a5;
- (CNUIPRUISIncomingCallPosterContext)initWithNameVariations:(id)a3 preferredNameStyle:(unint64_t)a4 horizontalTitleBoundingRect:(CGRect)a5 verticalTitleBoundingRect:(CGRect)a6 imageAssetID:(id)a7 personalPoster:(BOOL)a8;
@end

@implementation CNUIPRUISIncomingCallPosterContext

+ (id)emptyContext
{
  v2 = [a1 alloc];
  v3 = [v2 initWithNameVariations:0 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:*MEMORY[0x1E695F058] personalPoster:{*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v3;
}

- (CNUIPRUISIncomingCallPosterContext)initWithNameVariations:(id)a3 preferredNameStyle:(unint64_t)a4 horizontalTitleBoundingRect:(CGRect)a5 verticalTitleBoundingRect:(CGRect)a6 imageAssetID:(id)a7 personalPoster:(BOOL)a8
{
  v8 = a8;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a5.size.height;
  v15 = a5.size.width;
  v16 = a5.origin.y;
  v17 = a5.origin.x;
  v20 = a3;
  v21 = a7;
  v31.receiver = self;
  v31.super_class = CNUIPRUISIncomingCallPosterContext;
  v22 = [(CNUIPRUISIncomingCallPosterContext *)&v31 init];
  if (v22)
  {
    v23 = a4 == 1;
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
    v27 = [v20 wrappedNameVariations];
    v28 = [v26 initWithNameVariations:v27 preferredNameStyle:v23 horizontalTitleBoundingRect:v21 verticalTitleBoundingRect:v8 imageAssetID:v17 personalPoster:{v16, v15, v14, x, y, width, height}];
    wrappedIncomingCallPosterContext = v22->_wrappedIncomingCallPosterContext;
    v22->_wrappedIncomingCallPosterContext = v28;
  }

  return v22;
}

- (CNUIPRUISIncomingCallPosterContext)initWithContact:(id)a3 showName:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69DCEB0];
  v7 = a3;
  v8 = [v6 mainScreen];
  [v8 bounds];
  v9 = [(CNUIPRUISIncomingCallPosterContext *)self initWithContact:v7 showName:v4 frame:?];

  return v9;
}

- (CNUIPRUISIncomingCallPosterContext)initWithContact:(id)a3 showName:(BOOL)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3;
  v11 = [v10 cnui_posterName];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v12 = +[CNUIPRUISIncomingCallPosterContext emptyContext];
  }

  else
  {
    v13 = +[CNUIMeContactMonitor unifiedMeContactMonitor];
    v14 = [v13 isMeContact:v10];

    v15 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithFrame:{x, y, width, height}];
    [CNUIIncomingCallSnapshotViewController horizontalNameLabelBoundingRectForName:v11 window:v15];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [CNUIIncomingCallSnapshotViewController verticalNameLabelBoundingRectForName:v11 window:v15];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [[CNUIPRUISIncomingCallPosterContextNameVariations alloc] initWithShortName:v11 fullName:0];
    self = [(CNUIPRUISIncomingCallPosterContext *)self initWithNameVariations:v32 preferredNameStyle:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:v14 imageAssetID:v17 personalPoster:v19, v21, v23, v25, v27, v29, v31];

    v12 = self;
  }

  return v12;
}

@end