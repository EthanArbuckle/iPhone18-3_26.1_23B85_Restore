@interface CKAssociatedMessageChatItem
+ (CATransform3D)transformForImageViewWithGeometryDescriptor:(SEL)a3 shouldScale:(IMAssociatedMessageGeometryDescriptor *)a4 parentSize:(BOOL)a5;
+ (CGPoint)locationForStickerReactionWithParentFrame:(CGRect)a3 reactionIndex:(int64_t)a4 parentIsFromMe:(BOOL)a5 insets:(UIEdgeInsets)a6;
+ (CGRect)adjustContentAlignmentRect:(CGRect)a3 forChatItemSize:(CGSize)a4 transcriptOrientation:(char)a5;
+ (CGRect)frameForAssociatedMessageItemSize:(CGSize)a3 parentFrame:(CGRect)a4 geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a5;
+ (double)horizontalOriginForAssociatedMessageItemSize:(CGSize)a3 parentFrame:(CGRect)a4 geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a5;
+ (double)rotationForGUIDHash:(int64_t)a3;
+ (double)verticalOriginForAssociatedMessageItemSize:(CGSize)a3 parentFrame:(CGRect)a4 geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a5;
+ (void)applyTransformToView:(id)a3 viewFrame:(CGRect)a4 parentSize:(CGSize)a5 forGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a6;
- (BOOL)failed;
- (BOOL)parentMessageIsFromMe;
- (CATransform3D)transformForImageViewWithParentSize:(SEL)a3 shouldScale:(CGSize)a4;
- (CGRect)adjustContentAlignmentRect:(CGRect)a3 forChatItemSize:(CGSize)a4;
- (CGRect)adjustedParentFrameForPositioning:(CGRect)a3;
- (CGRect)frameRelativeToParentFrame:(CGRect)a3;
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (NSDate)time;
- (NSString)associatedChatItemGUID;
- (NSString)associatedMessageGUID;
- (NSString)guid;
- (NSString)timestampString;
- (_NSRange)associatedMessageRange;
- (char)transcriptOrientation;
- (double)horizonalOriginRelativeToParentFrame:(CGRect)a3;
- (double)verticalOriginRelativeToParentFrame:(CGRect)a3;
- (id)loadTimestampString;
- (id)loadTranscriptDrawerText;
- (id)sender;
- (int64_t)associatedMessageType;
- (unint64_t)stickerPositionVersion;
@end

@implementation CKAssociatedMessageChatItem

+ (CATransform3D)transformForImageViewWithGeometryDescriptor:(SEL)a3 shouldScale:(IMAssociatedMessageGeometryDescriptor *)a4 parentSize:(BOOL)a5
{
  width = a6.width;
  scale = 1.0;
  if (a5)
  {
    if (a4->layoutIntent == 12)
    {
      scale = a4->scale;
    }

    else
    {
      parentPreviewWidth = a4->parentPreviewWidth;
      if (parentPreviewWidth > 0.0)
      {
        scale = width / parentPreviewWidth;
      }
    }

    if (scale < 0.100000001)
    {
      scale = 0.100000001;
    }
  }

  v11 = *(MEMORY[0x1E69792E8] + 80);
  *&v18.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v18.m33 = v11;
  v12 = *(MEMORY[0x1E69792E8] + 112);
  *&v18.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v18.m43 = v12;
  v13 = *(MEMORY[0x1E69792E8] + 16);
  *&v18.m11 = *MEMORY[0x1E69792E8];
  *&v18.m13 = v13;
  v14 = *(MEMORY[0x1E69792E8] + 48);
  *&v18.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v18.m23 = v14;
  *&v17.m31 = *&v18.m31;
  *&v17.m33 = v11;
  *&v17.m41 = *&v18.m41;
  *&v17.m43 = v12;
  *&v17.m11 = *&v18.m11;
  *&v17.m13 = v13;
  *&v17.m21 = *&v18.m21;
  *&v17.m23 = v14;
  CATransform3DScale(&v18, &v17, scale, scale, 1.0);
  rotation = a4->rotation;
  v17 = v18;
  return CATransform3DRotate(retstr, &v17, rotation, 0.0, 0.0, 1.0);
}

+ (double)verticalOriginForAssociatedMessageItemSize:(CGSize)a3 parentFrame:(CGRect)a4 geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a5
{
  height = a4.size.height;
  y = a4.origin.y;
  v7 = a3.height;
  yScalar = a5->yScalar;
  if (CKMainScreenScale_once_28 != -1)
  {
    +[CKAssociatedMessageChatItem(TranscriptLayout) verticalOriginForAssociatedMessageItemSize:parentFrame:geometryDescriptor:];
  }

  v9 = *&CKMainScreenScale_sMainScreenScale_28;
  if (*&CKMainScreenScale_sMainScreenScale_28 == 0.0)
  {
    v9 = 1.0;
  }

  return round((y + height * yScalar + v7 * -0.5) * v9) / v9;
}

+ (double)horizontalOriginForAssociatedMessageItemSize:(CGSize)a3 parentFrame:(CGRect)a4 geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a5
{
  width = a4.size.width;
  x = a4.origin.x;
  v7 = a3.width;
  xScalar = a5->xScalar;
  if (CKMainScreenScale_once_28 != -1)
  {
    +[CKAssociatedMessageChatItem(TranscriptLayout) verticalOriginForAssociatedMessageItemSize:parentFrame:geometryDescriptor:];
  }

  v9 = *&CKMainScreenScale_sMainScreenScale_28;
  if (*&CKMainScreenScale_sMainScreenScale_28 == 0.0)
  {
    v9 = 1.0;
  }

  return round((x + width * xScalar + v7 * -0.5) * v9) / v9;
}

+ (CGRect)frameForAssociatedMessageItemSize:(CGSize)a3 parentFrame:(CGRect)a4 geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.height;
  v11 = a3.width;
  v13 = *&a5->parentPreviewWidth;
  v21 = *&a5->layoutIntent;
  v22 = v13;
  v23 = *&a5->yScalar;
  rotation = a5->rotation;
  [a1 verticalOriginForAssociatedMessageItemSize:&v21 parentFrame:a3.width geometryDescriptor:v10];
  v15 = v14;
  v16 = *&a5->parentPreviewWidth;
  v21 = *&a5->layoutIntent;
  v22 = v16;
  v23 = *&a5->yScalar;
  rotation = a5->rotation;
  [a1 horizontalOriginForAssociatedMessageItemSize:&v21 parentFrame:v11 geometryDescriptor:{v10, x, y, width, height}];
  v18 = v15;
  v19 = v11;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameRelativeToParentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  [(CKChatItem *)self size];
  v10 = v9;
  v12 = v11;
  [(CKAssociatedMessageChatItem *)self adjustedParentFrameForPositioning:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(CKAssociatedMessageChatItem *)self geometryDescriptor];
  [v8 frameForAssociatedMessageItemSize:v25 parentFrame:v10 geometryDescriptor:{v12, v14, v16, v18, v20}];
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)verticalOriginRelativeToParentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  [(CKChatItem *)self size];
  v10 = v9;
  v12 = v11;
  [(CKAssociatedMessageChatItem *)self adjustedParentFrameForPositioning:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(CKAssociatedMessageChatItem *)self geometryDescriptor];
  [v8 verticalOriginForAssociatedMessageItemSize:v22 parentFrame:v10 geometryDescriptor:{v12, v14, v16, v18, v20}];
  return result;
}

- (double)horizonalOriginRelativeToParentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  [(CKChatItem *)self size];
  v10 = v9;
  v12 = v11;
  [(CKAssociatedMessageChatItem *)self adjustedParentFrameForPositioning:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(CKAssociatedMessageChatItem *)self geometryDescriptor];
  [v8 horizontalOriginForAssociatedMessageItemSize:v22 parentFrame:v10 geometryDescriptor:{v12, v14, v16, v18, v20}];
  return result;
}

- (CATransform3D)transformForImageViewWithParentSize:(SEL)a3 shouldScale:(CGSize)a4
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v10 = objc_opt_class();
  result = [(CKAssociatedMessageChatItem *)self geometryDescriptor];
  if (v10)
  {
    return [v10 transformForImageViewWithGeometryDescriptor:v12 shouldScale:v5 parentSize:{width, height}];
  }

  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  return result;
}

- (CGRect)adjustedParentFrameForPositioning:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  [(CKChatItem *)self size];

  [v8 adjustedParentFrameForPositioning:x forItemSize:{y, width, height, v9, v10}];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)adjustContentAlignmentRect:(CGRect)a3 forChatItemSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.size.height;
  v7 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = objc_opt_class();
  v12 = [(CKAssociatedMessageChatItem *)self transcriptOrientation];

  [v11 adjustContentAlignmentRect:v12 forChatItemSize:x transcriptOrientation:{y, v7, v6, width, height}];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (CGRect)adjustContentAlignmentRect:(CGRect)a3 forChatItemSize:(CGSize)a4 transcriptOrientation:(char)a5
{
  v5 = a5;
  width = a4.width;
  height = a3.size.height;
  v8 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (adjustContentAlignmentRect_forChatItemSize_transcriptOrientation__onceToken != -1)
  {
    +[CKAssociatedMessageChatItem(TranscriptLayout) adjustContentAlignmentRect:forChatItemSize:transcriptOrientation:];
  }

  if (v5 == 2)
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = v8;
    v15.size.height = height;
    x = CGRectGetMaxX(v15) - width + *&adjustContentAlignmentRect_forChatItemSize_transcriptOrientation__sTailWidth;
  }

  else if (!v5)
  {
    x = x - *&adjustContentAlignmentRect_forChatItemSize_transcriptOrientation__sTailWidth;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void __114__CKAssociatedMessageChatItem_TranscriptLayout__adjustContentAlignmentRect_forChatItemSize_transcriptOrientation___block_invoke()
{
  v1 = +[CKUIBehavior sharedBehaviors];
  [v1 balloonMaskTailSizeForTailShape:1];
  adjustContentAlignmentRect_forChatItemSize_transcriptOrientation__sTailWidth = v0;
}

+ (void)applyTransformToView:(id)a3 viewFrame:(CGRect)a4 parentSize:(CGSize)a5 forGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)a6
{
  height = a5.height;
  width = a5.width;
  v28 = a4.size.width;
  v29 = a4.size.height;
  origin = a4.origin;
  y = a4.origin.y;
  v9 = MEMORY[0x1E695F058];
  v25 = *(MEMORY[0x1E695F058] + 16);
  v10 = CKMainScreenScale_once_28;
  v11 = a3;
  if (v10 != -1)
  {
    +[CKAssociatedMessageChatItem(TranscriptLayout) verticalOriginForAssociatedMessageItemSize:parentFrame:geometryDescriptor:];
  }

  v12 = CKMainScreenScale_sMainScreenScale_28;
  if (*&CKMainScreenScale_sMainScreenScale_28 == 0.0)
  {
    *&v12 = 1.0;
  }

  v13.f64[0] = v28;
  v13.f64[1] = v29;
  v14.f64[0] = origin.x;
  __asm { FMOV            V2.2D, #0.5 }

  v14.f64[1] = y;
  v20 = *v9;
  v21 = v9[1];
  [v11 setCenter:{vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v14, vmulq_f64(vsubq_f64(v13, v25), _Q2)), *&v12)), vdupq_lane_s64(v12, 0)), *&v25, origin}];
  [v11 setBounds:{v20, v21, v28, v29}];
  v22 = a6->layoutIntent - 12 < 0xFFFFFFFFFFFFFFF5;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = *&a6->parentPreviewWidth;
  v30 = *&a6->layoutIntent;
  v31 = v23;
  v32 = *&a6->yScalar;
  *&v33 = a6->rotation;
  [CKAssociatedMessageChatItem transformForImageViewWithGeometryDescriptor:&v30 shouldScale:v22 parentSize:width, height];
  v24 = [v11 layer];

  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  [v24 setTransform:&v30];
}

+ (CGPoint)locationForStickerReactionWithParentFrame:(CGRect)a3 reactionIndex:(int64_t)a4 parentIsFromMe:(BOOL)a5 insets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v10 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CKMainScreenScale_once_28 != -1)
  {
    +[CKAssociatedMessageChatItem(TranscriptLayout) verticalOriginForAssociatedMessageItemSize:parentFrame:geometryDescriptor:];
  }

  v16 = *&CKMainScreenScale_sMainScreenScale_28;
  v17 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_28 == 0.0)
  {
    v16 = 1.0;
  }

  v18 = floor(x * v16) / v16;
  v19 = floor(y * v16) / v16;
  v20 = *&CKMainScreenScale_sMainScreenScale_28;
  if (*&CKMainScreenScale_sMainScreenScale_28 == 0.0)
  {
    v20 = 1.0;
  }

  v21 = floor(width * v20) / v20;
  if (*&CKMainScreenScale_sMainScreenScale_28 != 0.0)
  {
    v17 = *&CKMainScreenScale_sMainScreenScale_28;
  }

  v22 = floor(height * v17) / v17;
  v23 = left + v18;
  v24 = top + v19;
  v25 = v21 - (left + right);
  v26 = v22 - (top + bottom);
  v27 = +[CKUIBehavior sharedBehaviors];
  [v27 stickerReactionSize];
  [CKStickerReactionLayoutHelper stickerCenterForIndex:a4 inFrame:!v10 alignLeft:v23 stickerSize:v24, v25, v26, v28, v29];
  v31 = v30;
  v33 = v32;

  v34 = v31;
  v35 = v33;
  result.y = v35;
  result.x = v34;
  return result;
}

+ (double)rotationForGUIDHash:(int64_t)a3
{
  if (a3 >= 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = -a3;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 maxStickerReactionRotation];
  v6 = v5;

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 minStickerReactionRotation];
  v9 = v8;

  v10 = v9 + (v3 % (v6 - v9));
  if ((v3 & 1) == 0)
  {
    v10 = -v10;
  }

  return v10 * 3.14159265 / 180.0;
}

- (NSString)guid
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 guid];

  return v3;
}

- (NSString)associatedChatItemGUID
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 associatedMessageGUID];
  v4 = IMAssociatedMessageDecodeGUID();

  return v4;
}

- (NSString)associatedMessageGUID
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 associatedMessageGUID];

  return v3;
}

- (BOOL)parentMessageIsFromMe
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 parentMessageIsFromMe];

  return v3;
}

- (unint64_t)stickerPositionVersion
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 stickerPositionVersion];

  return v3;
}

- (char)transcriptOrientation
{
  if ([(CKChatItem *)self isFromMe])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)failed
{
  v3 = [(CKChatItem *)self isFromMe];
  if (v3)
  {
    v4 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
    v5 = [v4 failed];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  v4 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  if (v4)
  {
    v6 = v4;
    [v4 geometryDescriptor];
    v4 = v6;
  }

  else
  {
    retstr->rotation = 0.0;
    *&retstr->parentPreviewWidth = 0u;
    *&retstr->yScalar = 0u;
    *&retstr->layoutIntent = 0u;
  }

  return result;
}

- (id)loadTranscriptDrawerText
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 timestampDateFormatter];

  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 stringFromDate:v4];

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 drawerTranscriptTextAttributes];

  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)timestampString
{
  timestampString = self->_timestampString;
  if (!timestampString)
  {
    v4 = [(CKAssociatedMessageChatItem *)self loadTimestampString];
    v5 = [v4 copy];
    v6 = self->_timestampString;
    self->_timestampString = v5;

    timestampString = self->_timestampString;
  }

  return timestampString;
}

- (NSDate)time
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 time];

  return v3;
}

- (id)sender
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 sender];

  return v3;
}

- (_NSRange)associatedMessageRange
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 associatedMessageRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (int64_t)associatedMessageType
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 associatedMessageType];

  return v3;
}

- (id)loadTimestampString
{
  v2 = [(CKAssociatedMessageChatItem *)self time];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [CKDateUtilities relativeDateFormatterFromDate:v2 toDate:v3];
  v5 = [v4 stringFromDate:v2];

  return v5;
}

@end