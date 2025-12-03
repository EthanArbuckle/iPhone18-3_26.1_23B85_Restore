@interface CKBrowserDragControllerTarget
+ (id)targetWithScreenCoordinate:(CGPoint)coordinate initialSize:(CGSize)size scale:(double)scale meshScaleFactor:(double)factor rotation:(double)rotation associatedLayoutIntent:(unint64_t)intent stickerIsRepositioning:(BOOL)repositioning stickerChatItem:(id)self0;
- (CGPoint)screenCoordinate;
- (CGSize)initialSize;
- (id)description;
@end

@implementation CKBrowserDragControllerTarget

+ (id)targetWithScreenCoordinate:(CGPoint)coordinate initialSize:(CGSize)size scale:(double)scale meshScaleFactor:(double)factor rotation:(double)rotation associatedLayoutIntent:(unint64_t)intent stickerIsRepositioning:(BOOL)repositioning stickerChatItem:(id)self0
{
  height = size.height;
  width = size.width;
  y = coordinate.y;
  x = coordinate.x;
  itemCopy = item;
  v20 = objc_alloc_init(CKBrowserDragControllerTarget);
  [(CKBrowserDragControllerTarget *)v20 setScreenCoordinate:x, y];
  [(CKBrowserDragControllerTarget *)v20 setInitialSize:width, height];
  [(CKBrowserDragControllerTarget *)v20 setScale:scale];
  [(CKBrowserDragControllerTarget *)v20 setMeshScaleFactor:factor];
  [(CKBrowserDragControllerTarget *)v20 setRotation:rotation];
  [(CKBrowserDragControllerTarget *)v20 setAssociatedLayoutIntent:intent];
  if (repositioning)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    -[CKBrowserDragControllerTarget setStickerIsRepositioning:](v20, "setStickerIsRepositioning:", [mEMORY[0x1E69A8070] isStickerRepositioningEnabled]);
  }

  else
  {
    [(CKBrowserDragControllerTarget *)v20 setStickerIsRepositioning:0];
  }

  [(CKBrowserDragControllerTarget *)v20 setStickerChatItem:itemCopy];

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CKBrowserDragControllerTarget *)self screenCoordinate];
  v4 = NSStringFromCGPoint(v16);
  [(CKBrowserDragControllerTarget *)self initialSize];
  v5 = NSStringFromCGSize(v17);
  [(CKBrowserDragControllerTarget *)self scale];
  v7 = v6;
  [(CKBrowserDragControllerTarget *)self rotation];
  v9 = v8;
  associatedLayoutIntent = [(CKBrowserDragControllerTarget *)self associatedLayoutIntent];
  stickerIsRepositioning = [(CKBrowserDragControllerTarget *)self stickerIsRepositioning];
  v12 = @"No";
  if (stickerIsRepositioning)
  {
    v12 = @"Yes";
  }

  v13 = [v3 stringWithFormat:@"CKBrowserDragControllerTarget coord: %@ size %@ scale %f rotation %f associatedIntent %tu isStickerRepositioning: %@", v4, v5, v7, v9, associatedLayoutIntent, v12];

  return v13;
}

- (CGPoint)screenCoordinate
{
  x = self->_screenCoordinate.x;
  y = self->_screenCoordinate.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)initialSize
{
  width = self->_initialSize.width;
  height = self->_initialSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end