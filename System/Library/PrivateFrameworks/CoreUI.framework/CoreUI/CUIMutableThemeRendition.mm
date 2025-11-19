@interface CUIMutableThemeRendition
- (CUIMutableThemeRendition)initWithCGImage:(CGImage *)a3 withDescription:(id)a4 forKey:(const _renditionkeytoken *)a5;
- (void)dealloc;
- (void)setName:(id)a3;
@end

@implementation CUIMutableThemeRendition

- (void)dealloc
{
  free(self->_renditionKey);
  CGImageRelease(self->_image);

  v3.receiver = self;
  v3.super_class = CUIMutableThemeRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (CUIMutableThemeRendition)initWithCGImage:(CGImage *)a3 withDescription:(id)a4 forKey:(const _renditionkeytoken *)a5
{
  v47.receiver = self;
  v47.super_class = CUIMutableThemeRendition;
  v9 = [(CUIMutableThemeRendition *)&v47 init];
  v10 = CGImageRetain(a3);
  v9->_image = v10;
  Width = CGImageGetWidth(v10);
  Height = CGImageGetHeight(v9->_image);
  v13 = [a4 resizingMode];
  -[CUIThemeRendition setExifOrientation:](v9, "setExifOrientation:", [a4 exifOrientation]);
  v14 = CUIRenditionKeyTokenCount(a5);
  v15 = v14 + 1;
  v16 = malloc_type_calloc((v14 + 1), 4uLL, 0x100004052888210uLL);
  v9->_renditionKey = v16;
  CUIRenditionKeyCopy(v16, a5, v15);
  [(CUIThemeRendition *)v9 setInternalScale:CUIRenditionKeyValueForAttribute(&v9->_renditionKey->identifier, 12)];
  LODWORD(a5) = [(CUIThemeRendition *)v9 internalScale];
  [a4 scale];
  if (a5 != v17)
  {
    [CUIMutableThemeRendition initWithCGImage:v9 withDescription:a4 forKey:a2];
  }

  if (![(CUIThemeRendition *)v9 internalScale])
  {
    [CUIMutableThemeRendition initWithCGImage:a2 withDescription:v9 forKey:?];
  }

  -[CUIThemeRendition setInternalTemplateRenderingMode:](v9, "setInternalTemplateRenderingMode:", [a4 templateRenderingMode]);
  -[CUIThemeRendition setBlendMode:](v9, "setBlendMode:", [a4 blendMode]);
  v18 = [a4 imageType];
  if (v18 > 2)
  {
    switch(v18)
    {
      case 3:
        [(CUIThemeRendition *)v9 setType:3];
        v19 = v9;
        if (v13 == 1)
        {
          v20 = 31;
        }

        else
        {
          v20 = 30;
        }

        goto LABEL_27;
      case 4:
        v21 = v9;
        v22 = 4;
        break;
      case 5:
        v21 = v9;
        v22 = 5;
        break;
      default:
        goto LABEL_28;
    }

    [(CUIThemeRendition *)v21 setType:v22];
    goto LABEL_28;
  }

  switch(v18)
  {
    case 0:
      [(CUIThemeRendition *)v9 setType:0];
      v19 = v9;
      if (v13 == 1)
      {
        v20 = 12;
      }

      else
      {
        v20 = 11;
      }

      goto LABEL_27;
    case 1:
      [(CUIThemeRendition *)v9 setType:1];
      v19 = v9;
      if (v13 == 1)
      {
        v20 = 21;
      }

      else
      {
        v20 = 20;
      }

      goto LABEL_27;
    case 2:
      [(CUIThemeRendition *)v9 setType:2];
      v19 = v9;
      if (v13 == 1)
      {
        v20 = 24;
      }

      else
      {
        v20 = 23;
      }

LABEL_27:
      [(CUIThemeRendition *)v19 setSubtype:v20];
      break;
  }

LABEL_28:
  y = NSZeroRect.origin.y;
  [a4 edgeInsets];
  v9->_sliceInformation = [[CUIRenditionSliceInformation alloc] initWithRenditionType:[(CUIThemeRendition *)v9 type] destinationRect:NSZeroRect.origin.x topLeftInset:y bottomRightInset:Width, Height, v25 * [(CUIThemeRendition *)v9 internalScale], v24 * [(CUIThemeRendition *)v9 internalScale], v27 * [(CUIThemeRendition *)v9 internalScale], v26 * [(CUIThemeRendition *)v9 internalScale]];
  [a4 alignmentEdgeInsets];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34 * [(CUIThemeRendition *)v9 internalScale];
  v36 = v31 * [(CUIThemeRendition *)v9 internalScale];
  v37 = v29 * [(CUIThemeRendition *)v9 internalScale];
  v38 = v33 * [(CUIThemeRendition *)v9 internalScale];
  v39 = [CUIRenditionMetrics alloc];
  v40 = [(CUIThemeRendition *)v9 internalScale];
  v9->_renditionMetrics = [(CUIRenditionMetrics *)v39 initWithImageSize:0 defaultImageSize:Width edgeBottomLeft:Height edgeTopRight:Width contentBottomLeft:Height contentTopRight:v37 baseline:v36 auxiliary1BottomLeft:v38 auxiliary1TopRight:v35 auxiliary2BottomLeft:v41 auxiliary2TopRight:v42 scalesVertically:v43 scalesHorizontally:v44 scale:v45, *&NSZeroSize.width, *&NSZeroSize.height, *&NSZeroSize.width, *&NSZeroSize.height, 0, *&NSZeroSize.width, *&NSZeroSize.height, *&NSZeroSize.width, *&NSZeroSize.height, *&NSZeroSize.width, *&NSZeroSize.height, *&NSZeroSize.width, *&NSZeroSize.height, COERCE__INT64(v40)];
  return v9;
}

- (void)setName:(id)a3
{
  if ([(CUIThemeRendition *)self internalName]!= a3)
  {

    [(CUIThemeRendition *)self setInternalName:a3];
  }
}

- (id)initWithCGImage:(void *)a1 withDescription:(void *)a2 forKey:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [a1 internalScale];
  [a2 scale];
  return [(NSAssertionHandler *)v6 handleFailureInMethod:a3 object:a1 file:@"CUIMutableThemeRendition.m" lineNumber:39 description:@"scale %u in rendition key does not match with scale %f passed in the image description", v7, v8];
}

@end