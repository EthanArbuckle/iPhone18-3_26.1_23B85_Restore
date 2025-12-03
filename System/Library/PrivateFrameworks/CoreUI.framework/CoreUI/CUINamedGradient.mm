@interface CUINamedGradient
- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name;
- (CGPoint)gradientEndPoint;
- (CGPoint)gradientStartPoint;
- (CUINamedGradient)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (id)mutableCopy;
- (void)_setColors:(id)colors andStops:(id)stops;
- (void)dealloc;
@end

@implementation CUINamedGradient

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedGradient;
  [(CUINamedLookup *)&v3 dealloc];
}

- (CGPoint)gradientEndPoint
{
  x = self->_gradientEnd.x;
  y = self->_gradientEnd.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)gradientStartPoint
{
  x = self->_gradientStart.x;
  y = self->_gradientStart.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CUINamedGradient)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v20.receiver = self;
  v20.super_class = CUINamedGradient;
  v6 = [(CUINamedLookup *)&v20 initWithName:name usingRenditionKey:key fromTheme:theme];
  v7 = v6;
  if (v6)
  {
    _rendition = [(CUINamedLookup *)v6 _rendition];
    if ([(CUIThemeRendition *)_rendition type]== 1021)
    {
      v7->_colorStops = [(CUIThemeRendition *)_rendition colorStops];
      v7->_gradientType = [(CUIThemeRendition *)_rendition gradientType];
      [(CUIThemeRendition *)_rendition gradientStartPoint];
      v7->_gradientStart.x = v15;
      v7->_gradientStart.y = v16;
      [(CUIThemeRendition *)_rendition gradientEndPoint];
      v7->_gradientEnd.x = v17;
      v7->_gradientEnd.y = v18;
    }

    else
    {
      _CUILog(4, "CoreUI: attempting to lookup a named gradient '%@' with a name that s not a gradient type in the AssetCatalog", v9, v10, v11, v12, v13, v14, name);

      return 0;
    }
  }

  return v7;
}

- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name
{
  v33.receiver = self;
  v33.super_class = CUINamedGradient;
  v11 = [CUINamedLookup _updateFromCatalog:sel__updateFromCatalog_displayGamut_deviceIdiom_appearanceName_ displayGamut:? deviceIdiom:? appearanceName:?];
  if (v11)
  {
    selfCopy = self;
    _rendition = [(CUINamedLookup *)self _rendition];
    v13 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    colorNames = [(CUIThemeRendition *)_rendition colorNames];
    v15 = [colorNames countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(colorNames);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = [catalog _appearancefallback_colorWithName:v19 displayGamut:gamut deviceIdiom:idiom appearanceName:name];
          if (!v20)
          {
            [(CUINamedLookup *)selfCopy name];
            _CUILog(4, "CoreUI: Couldn't resolve color named '%@' for NamedGradient %@", v21, v22, v23, v24, v25, v26, v19);

            LOBYTE(v11) = 0;
            return v11;
          }

          -[NSArray addObject:](v13, "addObject:", [v20 cgColor]);
        }

        v16 = [colorNames countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    selfCopy->_colors = v13;
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (void)_setColors:(id)colors andStops:(id)stops
{
  v8 = [colors count];
  if (v8 != [stops count])
  {
    [CUINamedGradient _setColors:a2 andStops:self];
  }

  colorStops = self->_colorStops;
  if (colorStops != colors)
  {
  }

  colors = self->_colors;
  if (colors != stops)
  {
  }

  self->_colors = [colors copy];
  self->_colorStops = [stops copy];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(CUIMutableNamedGradient);
  [(CUIMutableNamedGradient *)v3 setGradientType:[(CUINamedGradient *)self gradientType]];
  [(CUIMutableNamedGradient *)v3 setColors:[(CUINamedGradient *)self colors] andStops:[(CUINamedGradient *)self colorStops]];
  [(CUINamedGradient *)self gradientStartPoint];
  [(CUIMutableNamedGradient *)v3 setGradientStartPoint:?];
  [(CUINamedGradient *)self gradientEndPoint];
  [(CUIMutableNamedGradient *)v3 setGradientEndPoint:?];
  return v3;
}

- (id)_setColors:(uint64_t)a1 andStops:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"CUINamedGradient.m" lineNumber:82 description:@"Number of colors != Number of stops"];
}

@end