@interface MUPDFUtilities
+ (CGAffineTransform)flattenRotationTransformForPage:(SEL)a3 outMediaBox:(CGPDFPage *)a4 outCropBox:(CGRect *)a5;
+ (id)createDictionaryFromPDFDictionary:(CGPDFDictionary *)a3;
+ (id)createPDFDateString:(id)a3;
+ (int64_t)exifOrientationOfPage:(CGPDFPage *)a3;
+ (unint64_t)indexOfDictionary:(CGPDFDictionary *)a3 inArray:(CGPDFArray *)a4;
+ (unint64_t)normalizedRotationAngleOfPage:(CGPDFPage *)a3;
@end

@implementation MUPDFUtilities

+ (id)createPDFDateString:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyyMMddHHmm"];
  v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v5 setCalendar:v6];

  v7 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  [v5 setTimeZone:v7];

  v8 = [v5 stringFromDate:v4];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"D:%@Z00'00'", v8];

  return v9;
}

+ (id)createDictionaryFromPDFDictionary:(CGPDFDictionary *)a3
{
  v6 = *byte_286962260;
  seenObjects = CFSetCreateMutable(0, 0, &v6);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  CGPDFDictionaryApplyFunction(a3, _dictionaryApplierFunction, v4);
  CFRelease(seenObjects);

  return v4;
}

+ (unint64_t)indexOfDictionary:(CGPDFDictionary *)a3 inArray:(CGPDFArray *)a4
{
  Count = CGPDFArrayGetCount(a4);
  if (!Count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    value = 0;
    if (CGPDFArrayGetDictionary(a4, v8, &value) && value == a3)
    {
      break;
    }

    if (v7 == ++v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

+ (unint64_t)normalizedRotationAngleOfPage:(CGPDFPage *)a3
{
  v3 = CGPDFPageGetRotationAngle(a3) % 360;
  if (v3 >= 0)
  {
    return v3;
  }

  else
  {
    return v3 + 360;
  }
}

+ (int64_t)exifOrientationOfPage:(CGPDFPage *)a3
{
  v3 = [a1 normalizedRotationAngleOfPage:a3];
  v4 = 1;
  if (v3 == 90)
  {
    v4 = 6;
  }

  if (v3 == 180)
  {
    v4 = 3;
  }

  if (v3 == 270)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

+ (CGAffineTransform)flattenRotationTransformForPage:(SEL)a3 outMediaBox:(CGPDFPage *)a4 outCropBox:(CGRect *)a5
{
  RotationAngle = CGPDFPageGetRotationAngle(a4);
  BoxRect = CGPDFPageGetBoxRect(a4, kCGPDFMediaBox);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v31 = CGPDFPageGetBoxRect(a4, kCGPDFCropBox);
  v15 = v31.size.width;
  v16 = v31.size.height;
  v17 = v31.origin.x - x;
  v18 = RotationAngle + 360 * (((RotationAngle & ~(RotationAngle >> 31)) - (RotationAngle + (RotationAngle >> 31))) / 0x168 + (RotationAngle >> 31));
  v19 = v18 - 360;
  if (v18 < 0x168)
  {
    v19 = 0;
  }

  v20 = v31.origin.y - y;
  v21 = v18 - 360 * ((v19 + 359) / 0x168);
  if (v21 > 179)
  {
    if (v21 == 180)
    {
      v36.origin.x = 0.0;
      v36.origin.y = 0.0;
      v36.size.width = width;
      v36.size.height = height;
      v26 = CGRectGetWidth(v36);
      v37.origin.x = v17;
      v37.origin.y = v20;
      v37.size.width = v15;
      v37.size.height = v16;
      v23 = v26 - (v17 + CGRectGetWidth(v37));
      v38.origin.x = 0.0;
      v38.origin.y = 0.0;
      v38.size.width = width;
      v38.size.height = height;
      v27 = CGRectGetHeight(v38);
      v39.origin.x = v23;
      v39.origin.y = v20;
      v39.size.width = v15;
      v39.size.height = v16;
      v20 = v27 - (v20 + CGRectGetHeight(v39));
      v22 = height;
      goto LABEL_14;
    }

    if (v21 == 270)
    {
      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v34.size.width = height;
      v34.size.height = width;
      v24 = CGRectGetWidth(v34);
      v35.origin.x = v17;
      v35.origin.y = v20;
      v35.size.width = v16;
      v35.size.height = v15;
      v22 = width;
      v23 = v24 - (v20 + CGRectGetWidth(v35));
      v20 = v17;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v21)
  {
    if (v21 == 90)
    {
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v32.size.width = height;
      v32.size.height = width;
      v29 = CGRectGetHeight(v32);
      v33.origin.x = v20;
      v33.origin.y = v20;
      v33.size.width = v16;
      v33.size.height = v15;
      v22 = width;
      v23 = v20;
      v20 = v29 - (v17 + CGRectGetHeight(v33));
LABEL_10:
      v25 = v16;
      v16 = v15;
      width = height;
      goto LABEL_15;
    }

LABEL_11:
    NSLog(&cfstr_SUnexpectedPag.isa, "+[MUPDFUtilities flattenRotationTransformForPage:outMediaBox:outCropBox:]", v21);
  }

  v22 = height;
  v23 = v17;
LABEL_14:
  v25 = v15;
LABEL_15:
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v40.origin.x = v23;
  v40.origin.y = v20;
  v40.size.width = v25;
  v40.size.height = v16;
  result = CGPDFPageGetDrawingTransform(retstr, a4, kCGPDFCropBox, v40, 0, 1);
  if (a5)
  {
    a5->origin.x = 0.0;
    a5->origin.y = 0.0;
    a5->size.width = width;
    a5->size.height = v22;
  }

  if (a6)
  {
    a6->origin.x = v23;
    a6->origin.y = v20;
    a6->size.width = v25;
    a6->size.height = v16;
  }

  return result;
}

@end