@interface CUINamedTexture
- (BOOL)_cacheRenditionProperties;
- (CGRect)alphaCroppedRect;
- (CGSize)size;
- (CUINamedTexture)textureWithBufferAllocator:(id)allocator;
- (id)description;
@end

@implementation CUINamedTexture

- (BOOL)_cacheRenditionProperties
{
  v12.receiver = self;
  v12.super_class = CUINamedTexture;
  LODWORD(_rendition) = [(CUINamedLookup *)&v12 _cacheRenditionProperties];
  if (_rendition)
  {
    _rendition = [(CUINamedLookup *)self _rendition];
    if (_rendition)
    {
      v4 = _rendition;
      [(CUIThemeRendition *)_rendition scale];
      self->_scale = v5;
      self->_textureProperties = (*&self->_textureProperties & 0xFFFFFFF0 | [(CUIThemeRendition *)v4 exifOrientation]& 0xF);
      [(CUIThemeRendition *)v4 originalUncroppedSize];
      if (v7 == CGSizeZero.height && v6 == CGSizeZero.width)
      {
        v9 = 0;
      }

      else
      {
        v9 = 16;
      }

      self->_textureProperties = (v9 | *&self->_textureProperties & 0xFFFFFFEF);
      if ([(CUIThemeRendition *)v4 isOpaque])
      {
        v10 = 32;
      }

      else
      {
        v10 = 0;
      }

      self->_textureProperties = (*&self->_textureProperties & 0xFFFFFFDF | v10);
      LOBYTE(_rendition) = 1;
    }
  }

  return _rendition;
}

- (CGSize)size
{
  [-[CUIThemeRendition provideTextureInfo](-[CUINamedLookup _rendition](self "_rendition")];
  v4.i64[0] = v2;
  v4.i64[1] = v3;
  v5 = vcvtq_f64_u64(v4);
  v6 = v5.f64[1];
  result.width = v5.f64[0];
  result.height = v6;
  return result;
}

- (CUINamedTexture)textureWithBufferAllocator:(id)allocator
{
  _rendition = [(CUINamedLookup *)self _rendition];
  if (!_rendition || [(CUIThemeRendition *)_rendition type]!= 1007)
  {
    return 0;
  }

  v6 = objc_alloc_init(_CUTextureLink);
  [(_CUTextureLink *)v6 setNamedTexture:self];
  [(_CUTextureLink *)v6 setBufferAllocator:allocator];
  v7 = [[TXRTexture alloc] initWithDataSourceProvider:v6];
  v8 = v6;

  return v7;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = CUINamedTexture;
  v3 = [(CUINamedTexture *)&v11 description];
  [(CUINamedTexture *)self size];
  v5 = v4;
  [(CUINamedTexture *)self size];
  v7 = [NSString stringWithFormat:@"width: %f height: %f", v5, v6];
  name = [(CUINamedLookup *)self name];
  [(CUINamedTexture *)self scale];
  return [NSString stringWithFormat:@"%@\n%@", v3, [NSString stringWithFormat:@"Name: %@\nScale: %d\nSize: %@\nexifOrientation: %d, \nCropped: %d\nDisplay Gamut: %d", name, v9, v7, [(CUINamedTexture *)self exifOrientation], [(CUINamedTexture *)self isAlphaCropped], [(CUIRenditionKey *)[(CUINamedLookup *)self key] themeDisplayGamut]]];
}

- (CGRect)alphaCroppedRect
{
  _rendition = [(CUINamedLookup *)self _rendition];

  [(CUIThemeRendition *)_rendition alphaCroppedRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end