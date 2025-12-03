@interface CKAssociatedMessageChatItem
+ (CATransform3D)transformForImageViewWithGeometryDescriptor:(SEL)descriptor shouldScale:(IMAssociatedMessageGeometryDescriptor *)scale parentSize:(BOOL)size;
+ (CGPoint)locationForStickerReactionWithParentFrame:(CGRect)frame reactionIndex:(int64_t)index parentIsFromMe:(BOOL)me insets:(UIEdgeInsets)insets;
+ (CGRect)adjustContentAlignmentRect:(CGRect)rect forChatItemSize:(CGSize)size transcriptOrientation:(char)orientation;
+ (CGRect)frameForAssociatedMessageItemSize:(CGSize)size parentFrame:(CGRect)frame geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor;
+ (double)horizontalOriginForAssociatedMessageItemSize:(CGSize)size parentFrame:(CGRect)frame geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor;
+ (double)rotationForGUIDHash:(int64_t)hash;
+ (double)verticalOriginForAssociatedMessageItemSize:(CGSize)size parentFrame:(CGRect)frame geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor;
+ (void)applyTransformToView:(id)view viewFrame:(CGRect)frame parentSize:(CGSize)size forGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor;
- (BOOL)failed;
- (BOOL)parentMessageIsFromMe;
- (CATransform3D)transformForImageViewWithParentSize:(SEL)size shouldScale:(CGSize)scale;
- (CGRect)adjustContentAlignmentRect:(CGRect)rect forChatItemSize:(CGSize)size;
- (CGRect)adjustedParentFrameForPositioning:(CGRect)positioning;
- (CGRect)frameRelativeToParentFrame:(CGRect)frame;
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (NSDate)time;
- (NSString)associatedChatItemGUID;
- (NSString)associatedMessageGUID;
- (NSString)guid;
- (NSString)timestampString;
- (_NSRange)associatedMessageRange;
- (char)transcriptOrientation;
- (double)horizonalOriginRelativeToParentFrame:(CGRect)frame;
- (double)verticalOriginRelativeToParentFrame:(CGRect)frame;
- (id)loadTimestampString;
- (id)loadTranscriptDrawerText;
- (id)sender;
- (int64_t)associatedMessageType;
- (unint64_t)stickerPositionVersion;
@end

@implementation CKAssociatedMessageChatItem

+ (CATransform3D)transformForImageViewWithGeometryDescriptor:(SEL)descriptor shouldScale:(IMAssociatedMessageGeometryDescriptor *)scale parentSize:(BOOL)size
{
  width = a6.width;
  scale = 1.0;
  if (size)
  {
    if (scale->layoutIntent == 12)
    {
      scale = scale->scale;
    }

    else
    {
      parentPreviewWidth = scale->parentPreviewWidth;
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
  rotation = scale->rotation;
  v17 = v18;
  return CATransform3DRotate(retstr, &v17, rotation, 0.0, 0.0, 1.0);
}

+ (double)verticalOriginForAssociatedMessageItemSize:(CGSize)size parentFrame:(CGRect)frame geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor
{
  height = frame.size.height;
  y = frame.origin.y;
  v7 = size.height;
  yScalar = descriptor->yScalar;
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

+ (double)horizontalOriginForAssociatedMessageItemSize:(CGSize)size parentFrame:(CGRect)frame geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor
{
  width = frame.size.width;
  x = frame.origin.x;
  v7 = size.width;
  xScalar = descriptor->xScalar;
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

+ (CGRect)frameForAssociatedMessageItemSize:(CGSize)size parentFrame:(CGRect)frame geometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = size.height;
  v11 = size.width;
  v13 = *&descriptor->parentPreviewWidth;
  v21 = *&descriptor->layoutIntent;
  v22 = v13;
  v23 = *&descriptor->yScalar;
  rotation = descriptor->rotation;
  [self verticalOriginForAssociatedMessageItemSize:&v21 parentFrame:size.width geometryDescriptor:v10];
  v15 = v14;
  v16 = *&descriptor->parentPreviewWidth;
  v21 = *&descriptor->layoutIntent;
  v22 = v16;
  v23 = *&descriptor->yScalar;
  rotation = descriptor->rotation;
  [self horizontalOriginForAssociatedMessageItemSize:&v21 parentFrame:v11 geometryDescriptor:{v10, x, y, width, height}];
  v18 = v15;
  v19 = v11;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameRelativeToParentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (double)verticalOriginRelativeToParentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (double)horizonalOriginRelativeToParentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (CATransform3D)transformForImageViewWithParentSize:(SEL)size shouldScale:(CGSize)scale
{
  v5 = a5;
  height = scale.height;
  width = scale.width;
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

- (CGRect)adjustedParentFrameForPositioning:(CGRect)positioning
{
  height = positioning.size.height;
  width = positioning.size.width;
  y = positioning.origin.y;
  x = positioning.origin.x;
  v8 = objc_opt_class();
  [(CKChatItem *)self size];

  [v8 adjustedParentFrameForPositioning:x forItemSize:{y, width, height, v9, v10}];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)adjustContentAlignmentRect:(CGRect)rect forChatItemSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = rect.size.height;
  v7 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = objc_opt_class();
  transcriptOrientation = [(CKAssociatedMessageChatItem *)self transcriptOrientation];

  [v11 adjustContentAlignmentRect:transcriptOrientation forChatItemSize:x transcriptOrientation:{y, v7, v6, width, height}];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (CGRect)adjustContentAlignmentRect:(CGRect)rect forChatItemSize:(CGSize)size transcriptOrientation:(char)orientation
{
  orientationCopy = orientation;
  width = size.width;
  height = rect.size.height;
  v8 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (adjustContentAlignmentRect_forChatItemSize_transcriptOrientation__onceToken != -1)
  {
    +[CKAssociatedMessageChatItem(TranscriptLayout) adjustContentAlignmentRect:forChatItemSize:transcriptOrientation:];
  }

  if (orientationCopy == 2)
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = v8;
    v15.size.height = height;
    x = CGRectGetMaxX(v15) - width + *&adjustContentAlignmentRect_forChatItemSize_transcriptOrientation__sTailWidth;
  }

  else if (!orientationCopy)
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

+ (void)applyTransformToView:(id)view viewFrame:(CGRect)frame parentSize:(CGSize)size forGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor
{
  height = size.height;
  width = size.width;
  v28 = frame.size.width;
  v29 = frame.size.height;
  origin = frame.origin;
  y = frame.origin.y;
  v9 = MEMORY[0x1E695F058];
  v25 = *(MEMORY[0x1E695F058] + 16);
  v10 = CKMainScreenScale_once_28;
  viewCopy = view;
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
  [viewCopy setCenter:{vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v14, vmulq_f64(vsubq_f64(v13, v25), _Q2)), *&v12)), vdupq_lane_s64(v12, 0)), *&v25, origin}];
  [viewCopy setBounds:{v20, v21, v28, v29}];
  v22 = descriptor->layoutIntent - 12 < 0xFFFFFFFFFFFFFFF5;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = *&descriptor->parentPreviewWidth;
  v30 = *&descriptor->layoutIntent;
  v31 = v23;
  v32 = *&descriptor->yScalar;
  *&v33 = descriptor->rotation;
  [CKAssociatedMessageChatItem transformForImageViewWithGeometryDescriptor:&v30 shouldScale:v22 parentSize:width, height];
  layer = [viewCopy layer];

  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  [layer setTransform:&v30];
}

+ (CGPoint)locationForStickerReactionWithParentFrame:(CGRect)frame reactionIndex:(int64_t)index parentIsFromMe:(BOOL)me insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  meCopy = me;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  [CKStickerReactionLayoutHelper stickerCenterForIndex:index inFrame:!meCopy alignLeft:v23 stickerSize:v24, v25, v26, v28, v29];
  v31 = v30;
  v33 = v32;

  v34 = v31;
  v35 = v33;
  result.y = v35;
  result.x = v34;
  return result;
}

+ (double)rotationForGUIDHash:(int64_t)hash
{
  if (hash >= 0)
  {
    hashCopy = hash;
  }

  else
  {
    hashCopy = -hash;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 maxStickerReactionRotation];
  v6 = v5;

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 minStickerReactionRotation];
  v9 = v8;

  v10 = v9 + (hashCopy % (v6 - v9));
  if ((hashCopy & 1) == 0)
  {
    v10 = -v10;
  }

  return v10 * 3.14159265 / 180.0;
}

- (NSString)guid
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  guid = [iMAssociatedMessageChatItem guid];

  return guid;
}

- (NSString)associatedChatItemGUID
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  associatedMessageGUID = [iMAssociatedMessageChatItem associatedMessageGUID];
  v4 = IMAssociatedMessageDecodeGUID();

  return v4;
}

- (NSString)associatedMessageGUID
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  associatedMessageGUID = [iMAssociatedMessageChatItem associatedMessageGUID];

  return associatedMessageGUID;
}

- (BOOL)parentMessageIsFromMe
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  parentMessageIsFromMe = [iMAssociatedMessageChatItem parentMessageIsFromMe];

  return parentMessageIsFromMe;
}

- (unint64_t)stickerPositionVersion
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  stickerPositionVersion = [iMAssociatedMessageChatItem stickerPositionVersion];

  return stickerPositionVersion;
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
  isFromMe = [(CKChatItem *)self isFromMe];
  if (isFromMe)
  {
    iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
    failed = [iMAssociatedMessageChatItem failed];

    LOBYTE(isFromMe) = failed;
  }

  return isFromMe;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  if (iMAssociatedMessageChatItem)
  {
    v6 = iMAssociatedMessageChatItem;
    [iMAssociatedMessageChatItem geometryDescriptor];
    iMAssociatedMessageChatItem = v6;
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
  timestampDateFormatter = [v2 timestampDateFormatter];

  date = [MEMORY[0x1E695DF00] date];
  v5 = [timestampDateFormatter stringFromDate:date];

  v6 = +[CKUIBehavior sharedBehaviors];
  drawerTranscriptTextAttributes = [v6 drawerTranscriptTextAttributes];

  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:drawerTranscriptTextAttributes];
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
    loadTimestampString = [(CKAssociatedMessageChatItem *)self loadTimestampString];
    v5 = [loadTimestampString copy];
    v6 = self->_timestampString;
    self->_timestampString = v5;

    timestampString = self->_timestampString;
  }

  return timestampString;
}

- (NSDate)time
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  time = [iMAssociatedMessageChatItem time];

  return time;
}

- (id)sender
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  sender = [iMAssociatedMessageChatItem sender];

  return sender;
}

- (_NSRange)associatedMessageRange
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  associatedMessageRange = [iMAssociatedMessageChatItem associatedMessageRange];
  v5 = v4;

  v6 = associatedMessageRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (int64_t)associatedMessageType
{
  iMAssociatedMessageChatItem = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  associatedMessageType = [iMAssociatedMessageChatItem associatedMessageType];

  return associatedMessageType;
}

- (id)loadTimestampString
{
  time = [(CKAssociatedMessageChatItem *)self time];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [CKDateUtilities relativeDateFormatterFromDate:time toDate:date];
  v5 = [v4 stringFromDate:time];

  return v5;
}

@end