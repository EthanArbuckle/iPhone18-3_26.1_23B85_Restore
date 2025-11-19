@interface CKBrowserDragControllerTarget
+ (id)targetWithScreenCoordinate:(CGPoint)a3 initialSize:(CGSize)a4 scale:(double)a5 meshScaleFactor:(double)a6 rotation:(double)a7 associatedLayoutIntent:(unint64_t)a8 stickerIsRepositioning:(BOOL)a9 stickerChatItem:(id)a10;
- (CGPoint)screenCoordinate;
- (CGSize)initialSize;
- (id)description;
@end

@implementation CKBrowserDragControllerTarget

+ (id)targetWithScreenCoordinate:(CGPoint)a3 initialSize:(CGSize)a4 scale:(double)a5 meshScaleFactor:(double)a6 rotation:(double)a7 associatedLayoutIntent:(unint64_t)a8 stickerIsRepositioning:(BOOL)a9 stickerChatItem:(id)a10
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v19 = a10;
  v20 = objc_alloc_init(CKBrowserDragControllerTarget);
  [(CKBrowserDragControllerTarget *)v20 setScreenCoordinate:x, y];
  [(CKBrowserDragControllerTarget *)v20 setInitialSize:width, height];
  [(CKBrowserDragControllerTarget *)v20 setScale:a5];
  [(CKBrowserDragControllerTarget *)v20 setMeshScaleFactor:a6];
  [(CKBrowserDragControllerTarget *)v20 setRotation:a7];
  [(CKBrowserDragControllerTarget *)v20 setAssociatedLayoutIntent:a8];
  if (a9)
  {
    v21 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    -[CKBrowserDragControllerTarget setStickerIsRepositioning:](v20, "setStickerIsRepositioning:", [v21 isStickerRepositioningEnabled]);
  }

  else
  {
    [(CKBrowserDragControllerTarget *)v20 setStickerIsRepositioning:0];
  }

  [(CKBrowserDragControllerTarget *)v20 setStickerChatItem:v19];

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
  v10 = [(CKBrowserDragControllerTarget *)self associatedLayoutIntent];
  v11 = [(CKBrowserDragControllerTarget *)self stickerIsRepositioning];
  v12 = @"No";
  if (v11)
  {
    v12 = @"Yes";
  }

  v13 = [v3 stringWithFormat:@"CKBrowserDragControllerTarget coord: %@ size %@ scale %f rotation %f associatedIntent %tu isStickerRepositioning: %@", v4, v5, v7, v9, v10, v12];

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