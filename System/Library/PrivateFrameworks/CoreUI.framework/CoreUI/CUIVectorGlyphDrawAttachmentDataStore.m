@interface CUIVectorGlyphDrawAttachmentDataStore
+ (unsigned)_customDataAtom;
- (CUIVectorGlyphDrawAttachmentData)dataAtIndex:(SEL)a3;
- (CUIVectorGlyphDrawAttachmentDataStore)init;
- (CUIVectorGlyphDrawAttachmentDataStore)initWithSVGNode:(CGSVGNode *)a3;
- (CUIVectorGlyphDrawAttachmentDataStore)initWithSVGString:(id)a3;
- (id)copyApplyingScaleFactor:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createSVGString;
- (id)initAdoptingData:(id)a3 anchors:(id)a4;
- (void)computeNumEntries:(unint64_t *)a3 withScanner:(id)a4 fieldDelimiter:(id)a5;
- (void)dealloc;
- (void)encodeToSVGNode:(CGSVGNode *)a3;
@end

@implementation CUIVectorGlyphDrawAttachmentDataStore

- (CUIVectorGlyphDrawAttachmentDataStore)init
{
  v3 = malloc_type_malloc(0, 0x420CBEE2uLL);
  v4 = objc_alloc_init(NSData);
  v5 = [CUIVectorGlyphManagedPointArray createManagedPointArrayWrapping:v3, 0];

  return [(CUIVectorGlyphDrawAttachmentDataStore *)self initAdoptingData:v4 anchors:v5];
}

- (void)computeNumEntries:(unint64_t *)a3 withScanner:(id)a4 fieldDelimiter:(id)a5
{
  *a3 = 0;
  v9 = 0;
  if ([a4 scanUnsignedLongLong:&v9] && !v9)
  {
    if (([a4 isAtEnd] & 1) == 0)
    {
      [a4 setScanLocation:{objc_msgSend(a4, "scanLocation") + 1}];
    }

    if ([a4 scanUpToCharactersFromSet:a5 intoString:0])
    {
      v8 = 0;
      do
      {
        if (([a4 isAtEnd] & 1) == 0)
        {
          [a4 setScanLocation:{objc_msgSend(a4, "scanLocation") + 1}];
        }

        ++v8;
      }

      while (([a4 scanUpToCharactersFromSet:a5 intoString:0] & 1) != 0);
      if (v8 + 1 >= 5 && (v8 & 3) == 0)
      {
        *a3 = v8 >> 2;
      }
    }
  }
}

+ (unsigned)_customDataAtom
{
  if (_customDataAtom_onceToken != -1)
  {
    +[CUIVectorGlyphDrawAttachmentDataStore _customDataAtom];
  }

  return _customDataAtom_customDataAtom;
}

uint64_t __56__CUIVectorGlyphDrawAttachmentDataStore__customDataAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _customDataAtom_customDataAtom = result;
  return result;
}

- (CUIVectorGlyphDrawAttachmentDataStore)initWithSVGNode:(CGSVGNode *)a3
{
  ChildCount = CGSVGNodeGetChildCount();
  if (ChildCount)
  {
    v5 = ChildCount;
    v6 = [[NSMutableData alloc] initWithLength:8 * ChildCount];
    v7 = [CUIVectorGlyphManagedPointArray createWithPointCount:v5];
    v8 = 0;
    v9 = 8;
    do
    {
      CGSVGNodeGetChildAtIndex();
      [v7 rawArray];
      [v7 rawArray];
      CGSVGShapeNodeGetCircleGeometry();
      ++v8;
      v9 += 16;
    }

    while (v5 != v8);
    return [(CUIVectorGlyphDrawAttachmentDataStore *)self initAdoptingData:v6 anchors:v7];
  }

  else if (CGSVGNodeGetAttributeMap() && (+[CUIVectorGlyphDrawAttachmentDataStore _customDataAtom], CGSVGAttributeMapGetAttribute()))
  {
    v11 = CGSVGAttributeCopyString();
    v12 = [(CUIVectorGlyphDrawAttachmentDataStore *)self initWithSVGString:v11];

    return v12;
  }

  else
  {

    return [(CUIVectorGlyphDrawAttachmentDataStore *)self init];
  }
}

- (CUIVectorGlyphDrawAttachmentDataStore)initWithSVGString:(id)a3
{
  if (initWithSVGString__onceToken != -1)
  {
    [CUIVectorGlyphDrawAttachmentDataStore initWithSVGString:];
  }

  if ([a3 length])
  {
    v5 = [[NSScanner alloc] initWithString:a3];
    [v5 setCharactersToBeSkipped:0];
    v20 = 0;
    [(CUIVectorGlyphDrawAttachmentDataStore *)self computeNumEntries:&v20 withScanner:v5 fieldDelimiter:initWithSVGString__dataFieldDelimiter];
    if (v20)
    {
      [v5 setScanLocation:0];
      v6 = [NSMutableData alloc];
      v7 = [v6 initWithCapacity:8 * v20];
      v8 = [CUIVectorGlyphManagedPointArray createWithPointCount:v20];
      v19 = 0;
      if (![v5 scanUnsignedLongLong:&v19] || v19)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        [v5 scanUpToCharactersFromSet:initWithSVGString__digits intoString:0];
        v18 = 0;
        v17 = 0;
        if ([v5 isAtEnd])
        {
LABEL_8:
          v9 = [(CUIVectorGlyphDrawAttachmentDataStore *)self initAdoptingData:v7 anchors:v8];
LABEL_15:
          v11 = v9;

          return v11;
        }

        v12 = 0;
LABEL_17:
        v13 = 1;
        while (1)
        {
          v14 = v13;
          if (![v5 scanFloat:&v18])
          {
            break;
          }

          [v7 appendBytes:&v18 length:4];
          [v5 scanUpToCharactersFromSet:initWithSVGString__digits intoString:0];
          v13 = 0;
          if ((v14 & 1) == 0)
          {
            if (![v5 scanDouble:&v17])
            {
              break;
            }

            v15 = v17;
            *([v8 rawArray] + 2 * v12) = v15;
            [v5 scanUpToCharactersFromSet:initWithSVGString__digits intoString:0];
            if (![v5 scanDouble:&v17])
            {
              break;
            }

            v16 = v17;
            *([v8 rawArray] + 2 * v12 + 1) = v16;
            [v5 scanUpToCharactersFromSet:initWithSVGString__digits intoString:0];
            ++v12;
            if (![v5 isAtEnd])
            {
              goto LABEL_17;
            }

            goto LABEL_8;
          }
        }
      }
    }

    v9 = [(CUIVectorGlyphDrawAttachmentDataStore *)self init];
    goto LABEL_15;
  }

  return [(CUIVectorGlyphDrawAttachmentDataStore *)self init];
}

NSCharacterSet *__59__CUIVectorGlyphDrawAttachmentDataStore_initWithSVGString___block_invoke()
{
  initWithSVGString__dataFieldDelimiter = [NSCharacterSet characterSetWithRange:32, 1];
  result = +[NSCharacterSet decimalDigitCharacterSet];
  initWithSVGString__digits = result;
  return result;
}

- (id)createSVGString
{
  if (![(CUIVectorGlyphDrawAttachmentDataStore *)self count])
  {
    return 0;
  }

  v3 = objc_alloc_init(NSMutableString);
  [v3 appendString:@"0"];
  if ([(CUIVectorGlyphDrawAttachmentDataStore *)self count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 4;
    do
    {
      v12 = 0;
      v7 = *([(CUIVectorGlyphManagedPointArray *)[(CUIVectorGlyphDrawAttachmentDataStore *)self anchors] rawArray]+ v4);
      v8 = *([(CUIVectorGlyphManagedPointArray *)[(CUIVectorGlyphDrawAttachmentDataStore *)self anchors] rawArray]+ v4 + 8);
      [(NSData *)[(CUIVectorGlyphDrawAttachmentDataStore *)self data] getBytes:&v12 + 4 range:v6 - 4, 4];
      [(NSData *)[(CUIVectorGlyphDrawAttachmentDataStore *)self data] getBytes:&v12 range:v6, 4];
      v9 = [NSString alloc];
      v10 = [v9 initWithFormat:@" %f %f %f %f", *(&v12 + 1), *&v12, v7, v8];
      [v3 appendString:v10];

      ++v5;
      v4 += 16;
      v6 += 8;
    }

    while (v5 < [(CUIVectorGlyphDrawAttachmentDataStore *)self count]);
  }

  return v3;
}

- (void)encodeToSVGNode:(CGSVGNode *)a3
{
  v3 = [(CUIVectorGlyphDrawAttachmentDataStore *)self createSVGString];
  if (v3)
  {
    v4 = v3;
    +[CUIVectorGlyphDrawAttachmentDataStore _customDataAtom];
    CGSVGAttributeCreateWithString();
    CGSVGNodeSetAttribute();
    CGSVGAttributeRelease();
  }
}

- (id)initAdoptingData:(id)a3 anchors:(id)a4
{
  v7.receiver = self;
  v7.super_class = CUIVectorGlyphDrawAttachmentDataStore;
  result = [(CUIVectorGlyphDrawAttachmentDataStore *)&v7 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIVectorGlyphDrawAttachmentDataStore;
  [(CUIVectorGlyphDrawAttachmentDataStore *)&v3 dealloc];
}

- (CUIVectorGlyphDrawAttachmentData)dataAtIndex:(SEL)a3
{
  v11 = 0;
  [(NSData *)self->_data getBytes:&v11 + 4 range:8 * a4, 4];
  [(NSData *)self->_data getBytes:&v11 range:(8 * a4) | 4, 4];
  v7 = *([(CUIVectorGlyphManagedPointArray *)self->_anchors rawArray]+ 2 * a4);
  result = [(CUIVectorGlyphManagedPointArray *)self->_anchors rawArray];
  v9 = *(&result->var2.x + 2 * a4);
  v10 = v11;
  retstr->var0 = *(&v11 + 1);
  LODWORD(retstr->var1) = v10;
  retstr->var2.x = v7;
  retstr->var2.y = v9;
  return result;
}

- (id)copyApplyingScaleFactor:(double)a3
{
  __B = a3;
  v4 = [(CUIVectorGlyphManagedPointArray *)self->_anchors copy];
  v5 = [v4 rawArray];
  v6 = [v4 rawArray];
  [v4 rawArray];
  vDSP_vsmulD(v5, 1, &__B, v6, 1, 2 * v7);
  return [[CUIVectorGlyphDrawAttachmentDataStore alloc] initAdoptingData:self->_data anchors:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CUIVectorGlyphDrawAttachmentDataStore alloc];
  v5 = self->_data;
  v6 = self->_anchors;

  return [(CUIVectorGlyphDrawAttachmentDataStore *)v4 initAdoptingData:v5 anchors:v6];
}

@end