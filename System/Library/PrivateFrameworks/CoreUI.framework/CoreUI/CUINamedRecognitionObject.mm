@interface CUINamedRecognitionObject
- (CUINamedRecognitionObject)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (NSData)objectData;
- (id)description;
- (id)referenceOriginTransformation;
@end

@implementation CUINamedRecognitionObject

- (CUINamedRecognitionObject)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v7.receiver = self;
  v7.super_class = CUINamedRecognitionObject;
  v5 = [(CUINamedLookup *)&v7 initWithName:name usingRenditionKey:key fromTheme:theme];
  if ([(CUIThemeRendition *)[(CUINamedLookup *)v5 _rendition] type]!= 1014)
  {

    return 0;
  }

  return v5;
}

- (NSData)objectData
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition data];
}

- (id)referenceOriginTransformation
{
  _rendition = [self _rendition];

  return [_rendition transformation];
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = CUINamedRecognitionObject;
  v3 = [(CUINamedRecognitionObject *)&v15 description];
  v4 = [NSString stringWithFormat:@"\tColumns:\n"];
  [(CUINamedRecognitionObject *)self referenceOriginTransformation];
  v5 = 0;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  do
  {
    v4 = [NSString stringWithFormat:@"%@\t\t[%lu] = %f, %f, %f, %f\n", v4, v5, COERCE_FLOAT(*(&v11 + v5)), COERCE_FLOAT(HIDWORD(*(&v11 + 2 * v5))), COERCE_FLOAT(*(&v11 + 2 * v5 + 1)), COERCE_FLOAT(HIDWORD(*(&v11 + v5))), v11, v12, v13, v14];
    ++v5;
  }

  while (v5 != 4);
  return [NSString stringWithFormat:@"%@\n%@", v3, [NSString stringWithFormat:@"Name: %@\nVersion: %ld\nTransformation: \n%@", [(CUINamedLookup *)self name], [(CUINamedRecognitionObject *)self version], v4]];
}

@end