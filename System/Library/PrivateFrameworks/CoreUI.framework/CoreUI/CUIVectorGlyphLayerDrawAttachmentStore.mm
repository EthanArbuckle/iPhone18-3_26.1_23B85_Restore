@interface CUIVectorGlyphLayerDrawAttachmentStore
- (CUIVectorGlyphLayerDrawAttachmentStore)init;
- (id)initFromSVGString:(id)string attachmentData:(id)data;
- (void)_setupEmpty;
- (void)computeCapacity:(unint64_t *)capacity numAttachments:(unint64_t *)attachments withScanner:(id)scanner usingAttachmentDelimiter:(id)delimiter fieldDelimiter:(id)fieldDelimiter digits:(id)digits;
- (void)dealloc;
@end

@implementation CUIVectorGlyphLayerDrawAttachmentStore

- (CUIVectorGlyphLayerDrawAttachmentStore)init
{
  v5.receiver = self;
  v5.super_class = CUIVectorGlyphLayerDrawAttachmentStore;
  v2 = [(CUIVectorGlyphLayerDrawAttachmentStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIVectorGlyphLayerDrawAttachmentStore *)v2 _setupEmpty];
  }

  return v3;
}

- (void)_setupEmpty
{
  self->_count = 0;
  self->_data = objc_alloc_init(NSData);
  self->_attachments = 0;
}

- (void)computeCapacity:(unint64_t *)capacity numAttachments:(unint64_t *)attachments withScanner:(id)scanner usingAttachmentDelimiter:(id)delimiter fieldDelimiter:(id)fieldDelimiter digits:(id)digits
{
  if ([scanner scanUpToCharactersFromSet:delimiter intoString:0])
  {
    v13 = 0;
    do
    {
      scanLocation = [scanner scanLocation];
      [scanner setScanLocation:v13];
      v18 = 0;
      if ([scanner scanUnsignedLongLong:&v18] && v18 <= 1)
      {
        [scanner scanCharactersFromSet:fieldDelimiter intoString:0];
        scanLocation2 = [scanner scanLocation];
        v16 = 1;
        while (scanLocation2 < scanLocation && [scanner scanUpToCharactersFromSet:fieldDelimiter intoString:0])
        {
          ++v16;
          [scanner scanCharactersFromSet:fieldDelimiter intoString:0];
          scanLocation2 = [scanner scanLocation];
        }

        if (v18)
        {
          v17 = 0x3FFFFFFFFFFFFFFALL;
        }

        else
        {
          v17 = 0x3FFFFFFFFFFFFFF8;
        }

        *capacity += 4 * ((v16 & 1) + v16 + v17) + 40;
        ++*attachments;
        v13 = scanLocation + 1;
        [scanner setScanLocation:scanLocation];
        if (([scanner isAtEnd] & 1) == 0)
        {
          [scanner setScanLocation:{objc_msgSend(scanner, "scanLocation") + 1}];
        }
      }
    }

    while (([scanner scanUpToCharactersFromSet:delimiter intoString:0] & 1) != 0);
  }
}

- (id)initFromSVGString:(id)string attachmentData:(id)data
{
  v37.receiver = self;
  v37.super_class = CUIVectorGlyphLayerDrawAttachmentStore;
  v5 = [(CUIVectorGlyphLayerDrawAttachmentStore *)&v37 init];
  if (initFromSVGString_attachmentData__onceToken != -1)
  {
    [CUIVectorGlyphLayerDrawAttachmentStore initFromSVGString:attachmentData:];
  }

  if (![string length])
  {
    goto LABEL_40;
  }

  v6 = [[NSScanner alloc] initWithString:string];
  [v6 setCharactersToBeSkipped:0];
  count = 0;
  v36 = 0;
  [(CUIVectorGlyphLayerDrawAttachmentStore *)v5 computeCapacity:&v36 numAttachments:&count withScanner:v6 usingAttachmentDelimiter:initFromSVGString_attachmentData__attachmentDelimiter fieldDelimiter:initFromSVGString_attachmentData__attachmentFieldDelimiter digits:initFromSVGString_attachmentData__digits];
  v7 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
  if (!v7)
  {
LABEL_39:

LABEL_40:
    [(CUIVectorGlyphLayerDrawAttachmentStore *)v5 _setupEmpty];
    return v5;
  }

  v8 = v7;
  v9 = [NSMutableData alloc];
  v10 = [v9 initWithCapacity:v36];
  [v6 setScanLocation:0];
  if ([v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__attachmentDelimiter intoString:0])
  {
    v26 = v5;
    scanLocation2 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v13;
      v8[v12] = [(NSData *)v10 length];
      scanLocation = [v6 scanLocation];
      [v6 setScanLocation:scanLocation2];
      v33 = 0;
      v34 = 0;
      if (![v6 scanUnsignedLongLong:&v34] || (v16 = v34, v34 > 1) || (objc_msgSend(v6, "scanUpToCharactersFromSet:intoString:", initFromSVGString_attachmentData__digits, 0), !objc_msgSend(v6, "scanUnsignedLongLong:", &v34)))
      {
LABEL_38:
        free(v8);

        v5 = v26;
        goto LABEL_39;
      }

      LODWORD(v33) = v34;
      [(NSData *)v10 appendBytes:&v33 length:4];
      [v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__digits intoString:0];
      v17 = [(NSData *)v10 length];
      if (v16)
      {
        LODWORD(v29) = 0;
        [(NSData *)v10 appendBytes:&v29 length:4];
        [(NSData *)v10 appendBytes:&v29 length:4];
      }

      else
      {
        if (![v6 scanFloat:&v33 + 4])
        {
          goto LABEL_38;
        }

        [(NSData *)v10 appendBytes:&v33 + 4 length:4];
        [v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__digits intoString:0];
        if (![v6 scanFloat:&v33 + 4])
        {
          goto LABEL_38;
        }

        [(NSData *)v10 appendBytes:&v33 + 4 length:4];
        [v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__digits intoString:0];
      }

      if (![v6 scanUnsignedLongLong:&v34])
      {
        goto LABEL_38;
      }

      LODWORD(v33) = v34;
      [(NSData *)v10 appendBytes:&v33 length:4];
      [v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__digits intoString:0];
      if (![v6 scanUnsignedLongLong:&v34])
      {
        goto LABEL_38;
      }

      v27 = v12;
      LODWORD(v33) = v34;
      [(NSData *)v10 appendBytes:&v33 length:4];
      [v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__digits intoString:0];
      v32 = 0;
      v18 = [(NSData *)v10 length];
      [(NSData *)v10 appendBytes:&v32 length:4];
      if (![v6 scanUnsignedLongLong:&v34])
      {
        goto LABEL_38;
      }

      v19 = v8;
      v20 = v34;
      v21 = v20 >= [data count];
      v8 = v19;
      if (v21)
      {
        goto LABEL_38;
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      if (data)
      {
        [data dataAtIndex:v34];
      }

      [(NSData *)v10 appendBytes:&v30 length:8];
      [(NSData *)v10 appendBytes:&v31 length:8];
      if (v16 == 1)
      {
        [(NSData *)v10 replaceBytesInRange:v17 withBytes:4, &v29];
        [(NSData *)v10 replaceBytesInRange:v17 + 4 withBytes:4, &v29 + 4];
      }

      [v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__digits intoString:0];
      while ([v6 scanLocation] < scanLocation)
      {
        if (![v6 scanUnsignedLongLong:&v34])
        {
          goto LABEL_38;
        }

        LODWORD(v33) = v34;
        [(NSData *)v10 appendBytes:&v33 length:4];
        [v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__digits intoString:0];
        ++v32;
      }

      [(NSData *)v10 replaceBytesInRange:v18 withBytes:4, &v32];
      if (v32)
      {
        LODWORD(v33) = 0;
        [(NSData *)v10 appendBytes:&v33 length:4];
      }

      [v6 setScanLocation:scanLocation];
      if (([v6 isAtEnd] & 1) == 0)
      {
        [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];
      }

      v12 = v27 + 1;
      scanLocation2 = [v6 scanLocation];
      v22 = [v6 scanUpToCharactersFromSet:initFromSVGString_attachmentData__attachmentDelimiter intoString:0];
      v13 = v14 + 1;
    }

    while ((v22 & 1) != 0);
    if (v27 != -1)
    {
      v23 = v19;
      do
      {
        v24 = *v23;
        *v23++ = [(NSData *)v10 bytes]+ v24;
        --v14;
      }

      while (v14);
    }

    v5 = v26;
  }

  else
  {
    v12 = 0;
  }

  v5->_data = v10;
  v5->_attachments = v8;
  v5->_count = v12;

  return v5;
}

NSCharacterSet *__75__CUIVectorGlyphLayerDrawAttachmentStore_initFromSVGString_attachmentData___block_invoke()
{
  initFromSVGString_attachmentData__attachmentDelimiter = [NSCharacterSet characterSetWithRange:44, 1];
  initFromSVGString_attachmentData__attachmentFieldDelimiter = [NSCharacterSet characterSetWithRange:32, 1];
  result = +[NSCharacterSet decimalDigitCharacterSet];
  initFromSVGString_attachmentData__digits = result;
  return result;
}

- (void)dealloc
{
  attachments = self->_attachments;
  if (attachments)
  {
    free(attachments);
  }

  v4.receiver = self;
  v4.super_class = CUIVectorGlyphLayerDrawAttachmentStore;
  [(CUIVectorGlyphLayerDrawAttachmentStore *)&v4 dealloc];
}

@end