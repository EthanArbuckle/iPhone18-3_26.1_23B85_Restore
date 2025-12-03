@interface CUIThemeSchemaRendition
- ($01BB1521EC52D44A8E7628F5261DCEC8)contentInsets;
- (CGPoint)renditionCoordinatesForPartFeatures:(int64_t)features;
- (CGRect)alignmentRectangle;
- (CGRect)edgeInsets:(BOOL)insets;
- (CUIThemeSchemaRendition)initWithCoreUIOptions:(id)options forKey:(const _renditionkeytoken *)key;
- (double)scale;
- (id)defaultTemplateName;
- (id)description;
- (id)dimension1LocalizedString;
- (id)dimension2LocalizedString;
- (id)directionLocalizedString;
- (id)drawingLayerLocalizedString;
- (id)presentationStateLocalizedString;
- (id)previousStateLocalizedString;
- (id)previousValueLocalizedString;
- (id)scaleLocalizedString;
- (id)sizeLocalizedString;
- (id)slices;
- (id)stateLocalizedString;
- (id)stringForState:(unsigned __int16)state;
- (id)stringForValue:(unsigned __int16)value;
- (id)typeLocalizedString;
- (id)valueLocalizedString;
- (int64_t)columnSlices;
- (int64_t)rowSlices;
- (void)dealloc;
@end

@implementation CUIThemeSchemaRendition

- (CUIThemeSchemaRendition)initWithCoreUIOptions:(id)options forKey:(const _renditionkeytoken *)key
{
  v9.receiver = self;
  v9.super_class = CUIThemeSchemaRendition;
  v6 = [(CUIThemeSchemaRendition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_intrinsicSize = CGSizeZero;
    [(CUIThemeRendition *)v6 _initializeRenditionKey:key];
    [(CUIThemeRendition *)v7 setOpacity:1.0];
    [(CUIThemeRendition *)v7 setBlendMode:0];
    if ([NSBundle bundleWithIdentifier:@"com.apple.systemappearance"])
    {
      [(CUIThemeSchemaRendition *)v7 _initializeCoreUIOptions:options];
    }
  }

  return v7;
}

- (void)dealloc
{
  if (self->_nimages)
  {
    v3 = 0;
    image = self->_image;
    do
    {
      CGImageRelease(image[v3]);
      image[v3++] = 0;
    }

    while (v3 < self->_nimages);
  }

  v5.receiver = self;
  v5.super_class = CUIThemeSchemaRendition;
  [(CUIThemeRendition *)&v5 dealloc];
}

- (double)scale
{
  v2 = CUIRenditionKeyValueForAttribute([(CUIThemeRendition *)self key], 12);
  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

- (id)slices
{
  v3 = [NSMutableArray arrayWithCapacity:self->_nimages];
  if (self->_nimages)
  {
    v4 = 0;
    p_size = &self->_layoutRects[0].size;
    do
    {
      width = p_size[-1].width;
      height = p_size[-1].height;
      v8 = p_size->width;
      v9 = p_size->height;
      p_size += 2;
      [(NSMutableArray *)v3 addObject:[NSValue valueWithRect:width, height, v8, v9]];
      ++v4;
    }

    while (v4 < self->_nimages);
  }

  return [NSArray arrayWithArray:v3];
}

- (CGRect)alignmentRectangle
{
  x = self->_elementRect.origin.x;
  y = self->_elementRect.origin.y;
  width = self->_elementRect.size.width;
  height = self->_elementRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)edgeInsets:(BOOL)insets
{
  insetsCopy = insets;
  referenceImage = [(CUIThemeSchemaRendition *)self referenceImage];
  v6 = referenceImage;
  p_elementRect = &self->_elementRect;
  y = p_elementRect->origin.y;
  if (insetsCopy)
  {
    height = p_elementRect->size.height + 1.0;
  }

  else
  {
    height = p_elementRect->size.height;
  }

  [referenceImage size];
  if (height > v10)
  {
    [v6 size];
    height = v11;
  }

  v12 = y + -1.0;
  if (!insetsCopy)
  {
    v12 = y;
  }

  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  x = p_elementRect->origin.x;
  [v6 size];
  v16 = v15 - p_elementRect->size.width - p_elementRect->origin.x;
  [v6 size];
  v18 = v17 - height - v13;
  v19 = x;
  v20 = v13;
  v21 = v16;
  result.size.height = v18;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.var3 = right;
  result.var2 = bottom;
  result.var1 = left;
  result.var0 = top;
  return result;
}

- (id)defaultTemplateName
{
  v2 = [(CUIThemeRendition *)self key];
  v3 = CUISystemThemeRenditionKeyFormat();
  CUICopyKeySignature(v5, 0x100uLL, v2, v3, 0);
  return [NSString stringWithUTF8String:v5];
}

- (int64_t)columnSlices
{
  result = self->_columnSlices;
  if (result <= 0)
  {
    type = [(CUIThemeRendition *)self type];
    result = 1;
    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
LABEL_11:
          result = -1;
          goto LABEL_12;
        }

        result = 4;
      }
    }

    else if (type != 2)
    {
      if (type == 3)
      {
        result = 3;
      }

      else if (type != 1004)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    self->_columnSlices = result;
  }

  return result;
}

- (int64_t)rowSlices
{
  result = self->_rowSlices;
  if (result <= 0)
  {
    type = [(CUIThemeRendition *)self type];
    result = 1;
    if (type > 2)
    {
      if (type == 3)
      {
        result = 3;
        goto LABEL_10;
      }

      if (type != 1004)
      {
        goto LABEL_8;
      }
    }

    else if (type >= 2)
    {
      if (type == 2)
      {
        result = 4;
        goto LABEL_10;
      }

LABEL_8:
      result = -1;
    }

LABEL_10:
    self->_rowSlices = result;
  }

  return result;
}

- (CGPoint)renditionCoordinatesForPartFeatures:(int64_t)features
{
  featuresCopy = features;
  if (features)
  {
    value = [(CUIThemeSchemaRendition *)self value];
LABEL_6:
    v5 = value;
    goto LABEL_7;
  }

  if ((features & 0x4000) != 0)
  {
    value = [(CUIThemeSchemaRendition *)self dimension1];
    goto LABEL_6;
  }

  v5 = 0;
LABEL_7:
  if ((*&featuresCopy & 0x20004) == 0 || (featuresCopy & 0x10000) != 0)
  {
    if ((featuresCopy & 0x8000) != 0)
    {
      dimension2 = [(CUIThemeSchemaRendition *)self dimension2];
    }

    else
    {
      dimension2 = 0;
    }
  }

  else
  {
    presentationState = [(CUIThemeSchemaRendition *)self presentationState];
    v8 = presentationState == 1;
    if (!presentationState)
    {
      v8 = 2;
    }

    if ((*&featuresCopy & 0x20004) == 0x20004)
    {
      dimension2 = v8;
    }

    else
    {
      dimension2 = presentationState == 0;
    }
  }

  v10 = v5;
  v11 = dimension2;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaRendition;
  return [NSString stringWithFormat:@"%@ -- st:%u p.st:%u val:%u dim1:%u lay:%u scl:%u id:%u sz:%u dir:%u", [(CUIThemeRendition *)&v3 description], [(CUIThemeSchemaRendition *)self state], [(CUIThemeSchemaRendition *)self presentationState], [(CUIThemeSchemaRendition *)self value], [(CUIThemeSchemaRendition *)self dimension1], [(CUIThemeSchemaRendition *)self drawingLayer], [(CUIThemeSchemaRendition *)self keyScale], [(CUIThemeSchemaRendition *)self identifier], [(CUIThemeSchemaRendition *)self size], [(CUIThemeSchemaRendition *)self direction]];
}

- (id)typeLocalizedString
{
  v3 = objc_opt_class();
  type = [(CUIThemeRendition *)self type];

  return [v3 displayNameForRenditionType:type];
}

- (id)stringForState:(unsigned __int16)state
{
  stateCopy = state;
  v4 = +[NSBundle mainBundle];
  if (stateCopy > 5)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E724A5B8[stateCopy];
  }

  return [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_1F00D74D0 table:0];
}

- (id)stateLocalizedString
{
  state = [(CUIThemeSchemaRendition *)self state];

  return [(CUIThemeSchemaRendition *)self stringForState:state];
}

- (id)previousStateLocalizedString
{
  previousState = [(CUIThemeSchemaRendition *)self previousState];

  return [(CUIThemeSchemaRendition *)self stringForState:previousState];
}

- (id)directionLocalizedString
{
  direction = [(CUIThemeSchemaRendition *)self direction];
  v3 = +[NSBundle mainBundle];
  if (direction > 5)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E724A5E8[direction];
  }

  return [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_1F00D74D0 table:0];
}

- (id)stringForValue:(unsigned __int16)value
{
  valueCopy = value;
  v4 = +[NSBundle mainBundle];
  if (valueCopy > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E724A618[valueCopy];
  }

  return [(NSBundle *)v4 localizedStringForKey:v5 value:&stru_1F00D74D0 table:0];
}

- (id)valueLocalizedString
{
  value = [(CUIThemeSchemaRendition *)self value];

  return [(CUIThemeSchemaRendition *)self stringForValue:value];
}

- (id)previousValueLocalizedString
{
  previousValue = [(CUIThemeSchemaRendition *)self previousValue];

  return [(CUIThemeSchemaRendition *)self stringForValue:previousValue];
}

- (id)sizeLocalizedString
{
  v2 = [(CUIThemeSchemaRendition *)self size];
  v3 = +[NSBundle mainBundle];
  if (v2 > 3)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E724A630[v2];
  }

  return [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_1F00D74D0 table:0];
}

- (id)presentationStateLocalizedString
{
  presentationState = [(CUIThemeSchemaRendition *)self presentationState];
  v3 = +[NSBundle mainBundle];
  if (presentationState > 2)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E724A650[presentationState];
  }

  return [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_1F00D74D0 table:0];
}

- (id)dimension1LocalizedString
{
  v2 = [NSNumber numberWithUnsignedInteger:[(CUIThemeSchemaRendition *)self dimension1]];

  return [NSNumberFormatter localizedStringFromNumber:v2 numberStyle:1];
}

- (id)dimension2LocalizedString
{
  v2 = [NSNumber numberWithUnsignedInteger:[(CUIThemeSchemaRendition *)self dimension2]];

  return [NSNumberFormatter localizedStringFromNumber:v2 numberStyle:1];
}

- (id)drawingLayerLocalizedString
{
  drawingLayer = [(CUIThemeSchemaRendition *)self drawingLayer];
  v3 = +[NSBundle mainBundle];
  if (drawingLayer > 7)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E724A668[drawingLayer];
  }

  return [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_1F00D74D0 table:0];
}

- (id)scaleLocalizedString
{
  v2 = [NSNumber numberWithUnsignedInteger:[(CUIThemeSchemaRendition *)self keyScale]];

  return [NSNumberFormatter localizedStringFromNumber:v2 numberStyle:1];
}

@end