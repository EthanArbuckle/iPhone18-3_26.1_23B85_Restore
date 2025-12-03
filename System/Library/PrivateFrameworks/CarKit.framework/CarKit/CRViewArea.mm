@interface CRViewArea
- (CGRect)safeAreaPixelFrame;
- (CGRect)visiblePixelFrame;
- (CRViewArea)initWithAirPlayDictionary:(id)dictionary;
- (CRViewArea)initWithVisiblePixelFrame:(CGRect)frame safeAreaPixelFrame:(CGRect)pixelFrame;
- (id)description;
@end

@implementation CRViewArea

- (CRViewArea)initWithVisiblePixelFrame:(CGRect)frame safeAreaPixelFrame:(CGRect)pixelFrame
{
  height = pixelFrame.size.height;
  width = pixelFrame.size.width;
  y = pixelFrame.origin.y;
  x = pixelFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v13.receiver = self;
  v13.super_class = CRViewArea;
  result = [(CRViewArea *)&v13 init];
  if (result)
  {
    result->_visiblePixelFrame.origin.x = v11;
    result->_visiblePixelFrame.origin.y = v10;
    result->_visiblePixelFrame.size.width = v9;
    result->_visiblePixelFrame.size.height = v8;
    result->_safeAreaPixelFrame.origin.x = x;
    result->_safeAreaPixelFrame.origin.y = y;
    result->_safeAreaPixelFrame.size.width = width;
    result->_safeAreaPixelFrame.size.height = height;
  }

  return result;
}

- (CRViewArea)initWithAirPlayDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"safeArea"];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x1E695EFF8];
  v11 = v15;
  CROriginFromAirPlayDictionary(dictionaryCopy, &v15);
  v14 = *MEMORY[0x1E695F060];
  v10 = v14;
  CRSizeFromAirPlayDictionary(dictionaryCopy, &v14);
  v12 = v11;
  v13 = v10;
  if (v6)
  {
    CROriginFromAirPlayDictionary(v6, &v12);
    CRSizeFromAirPlayDictionary(v6, &v13);
  }

  v7 = [CRViewArea alloc];
  v8 = [(CRViewArea *)v7 initWithVisiblePixelFrame:v15 safeAreaPixelFrame:v14, v12, v13];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CRViewArea *)self visiblePixelFrame];
  v4 = BSStringFromCGRect();
  [(CRViewArea *)self safeAreaPixelFrame];
  v5 = BSStringFromCGRect();
  v6 = [v3 stringWithFormat:@"CRViewArea: visibleFrame: %@ safeAreaFrame: %@", v4, v5];;

  return v6;
}

- (CGRect)visiblePixelFrame
{
  x = self->_visiblePixelFrame.origin.x;
  y = self->_visiblePixelFrame.origin.y;
  width = self->_visiblePixelFrame.size.width;
  height = self->_visiblePixelFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)safeAreaPixelFrame
{
  x = self->_safeAreaPixelFrame.origin.x;
  y = self->_safeAreaPixelFrame.origin.y;
  width = self->_safeAreaPixelFrame.size.width;
  height = self->_safeAreaPixelFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end