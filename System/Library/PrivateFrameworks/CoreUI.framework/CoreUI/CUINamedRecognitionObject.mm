@interface CUINamedRecognitionObject
- (CUINamedRecognitionObject)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5;
- (NSData)objectData;
- (id)description;
- (id)referenceOriginTransformation;
@end

@implementation CUINamedRecognitionObject

- (CUINamedRecognitionObject)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = CUINamedRecognitionObject;
  v5 = [(CUINamedLookup *)&v7 initWithName:a3 usingRenditionKey:a4 fromTheme:a5];
  if ([(CUIThemeRendition *)[(CUINamedLookup *)v5 _rendition] type]!= 1014)
  {

    return 0;
  }

  return v5;
}

- (NSData)objectData
{
  v2 = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)v2 data];
}

- (id)referenceOriginTransformation
{
  v1 = [a1 _rendition];

  return [v1 transformation];
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