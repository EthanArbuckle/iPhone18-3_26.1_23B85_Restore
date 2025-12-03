@interface ISShapeDetection
+ (double)standardCornerRadiusForSize:(double)size;
+ (unint64_t)categorizeShapeWithWidth:(int)width height:(int)height cornerRadius:(int)radius;
- (BOOL)detectShapeInCGImage:(ISShapeDetection *)self bounds:(SEL)bounds cornerRadius:(CGImage *)radius;
- (BOOL)detectShapeInImageWithWidth:(ISShapeDetection *)self height:(SEL)height samples:(int)samples bounds:(int)bounds cornerRadius:(id)radius;
@end

@implementation ISShapeDetection

- (BOOL)detectShapeInCGImage:(ISShapeDetection *)self bounds:(SEL)bounds cornerRadius:(CGImage *)radius
{
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    *v3 = 0;
    v3[1] = 0;
  }

  if (v4)
  {
    *v4 = 0;
  }

  if (!radius)
  {
    return 0;
  }

  Width = CGImageGetWidth(radius);
  Height = CGImageGetHeight(radius);
  v11 = Height;
  if (v6)
  {
    *&v12 = 0;
    *(&v12 + 1) = __PAIR64__(Height, Width);
    *v6 = v12;
  }

  ColorSpace = CGImageGetColorSpace(radius);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(radius);
  v15 = 0;
  if (CGImageGetBitsPerComponent(radius) == 8 && BitsPerPixel == 32)
  {
    BytesPerRow = CGImageGetBytesPerRow(radius);
    if (BytesPerRow >= 0)
    {
      v17 = BytesPerRow;
    }

    else
    {
      v17 = BytesPerRow + 3;
    }

    AlphaInfo = CGImageGetAlphaInfo(radius);
    if (AlphaInfo == kCGImageAlphaNoneSkipLast)
    {
      return 1;
    }

    v19 = AlphaInfo;
    if ((AlphaInfo & 0xFFFFFFFD) == 1)
    {
      DataProvider = CGImageGetDataProvider(radius);
      if (DataProvider)
      {
        v21 = CGDataProviderCopyData(DataProvider);
        if (v21)
        {
          v22 = v21;
          BytePtr = CFDataGetBytePtr(v21);
          if (BytePtr)
          {
            v25[0] = Width;
            v25[1] = v11;
            v25[2] = (v17 >> 2) - Width;
            v25[3] = v19;
            v26 = BytePtr;
            v15 = [(ISShapeDetection *)self detectShapeInImageWithWidth:Width height:v11 samples:v25 bounds:v6 cornerRadius:v5];
            CFRelease(v22);
            return v15;
          }

          CFRelease(v22);
        }
      }
    }

    return 0;
  }

  return v15;
}

- (BOOL)detectShapeInImageWithWidth:(ISShapeDetection *)self height:(SEL)height samples:(int)samples bounds:(int)bounds cornerRadius:(id)radius
{
  v6 = v5;
  v7 = *&radius.var2;
  v8 = *&radius.var0;
  if (*&radius.var2)
  {
    *&v10 = 0;
    *(&v10 + 1) = __PAIR64__(bounds, samples);
    **&radius.var2 = v10;
  }

  if (v5)
  {
    *v5 = 0;
  }

  if (samples != bounds)
  {
    goto LABEL_83;
  }

  v11 = 0;
  v12 = samples / 2;
  v13 = (samples / 2) & ~((samples + (samples >> 31)) >> 31);
  while (v13 != v11)
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    UcharSampleOpacity_xy = ISSegmentationSamples_readUcharSampleOpacity_xy(&v67, v11++, samples / 2);
    if (UcharSampleOpacity_xy >= 0xFD)
    {
      v15 = v11 - 1;
      goto LABEL_11;
    }
  }

  v15 = v13;
LABEL_11:
  if (v15 == v12)
  {
    goto LABEL_83;
  }

  v16 = samples - 1;
  v17 = -1;
  v66 = samples - 1;
  v18 = v13;
  while (v18)
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    v19 = ISSegmentationSamples_readUcharSampleOpacity_xy(&v67, v16, samples / 2);
    --v18;
    ++v17;
    --v16;
    if (v19 >= 0xFD)
    {
      goto LABEL_17;
    }
  }

  v17 = v13;
LABEL_17:
  if (v17 == v12)
  {
    goto LABEL_83;
  }

  v20 = 0;
  while (v13 != v20)
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    v21 = ISSegmentationSamples_readUcharSampleOpacity_xy(&v67, samples / 2, v20++);
    if (v21 >= 0xFD)
    {
      v22 = v20 - 1;
      goto LABEL_23;
    }
  }

  v22 = v13;
LABEL_23:
  v65 = v22;
  if (v22 == v12)
  {
    goto LABEL_83;
  }

  v64 = v6;
  v23 = -1;
  v24 = samples - 1;
  v25 = v13;
  while (v25)
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    v26 = ISSegmentationSamples_readUcharSampleOpacity_xy(&v67, samples / 2, v24);
    --v25;
    ++v23;
    --v24;
    if (v26 >= 0xFD)
    {
      goto LABEL_29;
    }
  }

  v23 = v13;
LABEL_29:
  if (v23 == v12)
  {
    goto LABEL_83;
  }

  v27 = samples - v17 - v15;
  v28 = samples - v23 - v65;
  if (v7)
  {
    *&v29 = __PAIR64__(v65, v15);
    *(&v29 + 1) = __PAIR64__(v28, v27);
    *v7 = v29;
  }

  v30 = v27 - v28;
  if (v27 >= v28)
  {
    v31 = samples - v23 - v65;
  }

  else
  {
    v31 = samples - v17 - v15;
  }

  if (v27 <= v28)
  {
    v27 = samples - v23 - v65;
  }

  if ((v31 / v27) < 0.97)
  {
    v32 = v30 >= 0 ? v30 : -v30;
    if (v32 > 2)
    {
      goto LABEL_83;
    }
  }

  v63 = samples - v17;
  v33 = 0;
  v34 = v31 / 2;
  v35 = (v31 / 2) & ~((v31 + (v31 >> 31)) >> 31);
  while (v35 != v33)
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    v36 = ISSegmentationSamples_readUcharSampleOpacity_xy(&v67, v15 + v33, v65 + v33);
    ++v33;
    if (v36 >= 0xFD)
    {
      v37 = v33 - 1;
      goto LABEL_47;
    }
  }

  v37 = v35;
LABEL_47:
  if (v37 == v34)
  {
    goto LABEL_83;
  }

  v61 = v37;
  v62 = samples - v23;
  v38 = 0;
  v39 = ~v17 + samples;
  while (v35 != v38)
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    v40 = ISSegmentationSamples_readUcharSampleOpacity_xy(&v67, v39--, v65 + v38++);
    if (v40 >= 0xFD)
    {
      v41 = v38 - 1;
      goto LABEL_53;
    }
  }

  v41 = v35;
LABEL_53:
  if (v41 == v34)
  {
    goto LABEL_83;
  }

  v60 = v41;
  v42 = 0;
  v43 = ~v23 + samples;
  while (v35 != v42)
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    v44 = ISSegmentationSamples_readUcharSampleOpacity_xy(&v67, v15 + v42++, v43--);
    if (v44 >= 0xFD)
    {
      v45 = v42 - 1;
      goto LABEL_59;
    }
  }

  v45 = v35;
LABEL_59:
  if (v45 == v34)
  {
    goto LABEL_83;
  }

  v59 = v45;
  v46 = v66 - v23;
  v47 = v66 - v17;
  v48 = -1;
  v49 = v35;
  while (v49)
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    v50 = ISSegmentationSamples_readUcharSampleOpacity_xy(&v67, v47, v46);
    --v49;
    ++v48;
    --v46;
    --v47;
    if (v50 >= 0xFD)
    {
      goto LABEL_65;
    }
  }

  v48 = v35;
LABEL_65:
  if (v48 == v34)
  {
    goto LABEL_83;
  }

  v51 = v59;
  if (v59 >= v48)
  {
    v52 = v48;
  }

  else
  {
    v52 = v59;
  }

  if (v59 <= v48)
  {
    v51 = v48;
  }

  v53 = v61;
  if (v61 >= v60)
  {
    v54 = v60;
  }

  else
  {
    v54 = v61;
  }

  if (v61 <= v60)
  {
    v53 = v60;
  }

  if (v54 < v52)
  {
    v52 = v54;
  }

  if (v53 > v51)
  {
    v51 = v53;
  }

  v55 = fmin(v34, v51 * 3.41421356);
  v56 = ((v51 - v52) * 1.41421356);
  if (v64)
  {
    *v64 = v55;
  }

  if (v56 > 7)
  {
LABEL_83:
    LOBYTE(v57) = 0;
  }

  else
  {
    v67 = *v8;
    v68 = *(v8 + 16);
    v57 = validateTransparentMargin(samples, samples, &v67, v15, v63, v65, v62);
    if (v57)
    {
      v67 = *v8;
      v68 = *(v8 + 16);
      v57 = validateOpaqueCenter(&v67, v15, v63, v65, v62, v55);
      if (v57)
      {
        v67 = *v8;
        v68 = *(v8 + 16);
        v57 = validateCorner(&v67, v15, v15 + v55, v65, v65 + v55, v15 + v55, v65 + v55, (v55 + v56) + 1.75, v55 + -5.25);
        if (v57)
        {
          v67 = *v8;
          v68 = *(v8 + 16);
          v57 = validateCorner(&v67, v63 - v55, v63, v65, v65 + v55, v63 - v55, v65 + v55, (v55 + v56) + 1.75, v55 + -5.25);
          if (v57)
          {
            v67 = *v8;
            v68 = *(v8 + 16);
            v57 = validateCorner(&v67, v15, v15 + v55, v62 - v55, v62, v15 + v55, v62 - v55, (v55 + v56) + 1.75, v55 + -5.25);
            if (v57)
            {
              v67 = *v8;
              v68 = *(v8 + 16);
              LOBYTE(v57) = validateCorner(&v67, v63 - v55, v63, v62 - v55, v62, v63 - v55, v62 - v55, (v55 + v56) + 1.75, v55 + -5.25);
            }
          }
        }
      }
    }
  }

  return v57;
}

+ (double)standardCornerRadiusForSize:(double)size
{
  v4 = +[ISDefaults sharedInstance];
  isSolariumCornerRadiusEnabled = [v4 isSolariumCornerRadiusEnabled];

  v6 = 0.225;
  if (isSolariumCornerRadiusEnabled)
  {
    v6 = 0.26;
  }

  return v6 * size;
}

+ (unint64_t)categorizeShapeWithWidth:(int)width height:(int)height cornerRadius:(int)radius
{
  v6 = width - height;
  if (width >= height)
  {
    widthCopy = height;
  }

  else
  {
    widthCopy = width;
  }

  if (width <= height)
  {
    widthCopy2 = height;
  }

  else
  {
    widthCopy2 = width;
  }

  if ((widthCopy / widthCopy2) < 0.97)
  {
    if (v6 < 0)
    {
      v6 = height - width;
    }

    if (v6 > 2)
    {
      return 7;
    }
  }

  v10 = widthCopy;
  [self standardCornerRadiusForSize:widthCopy];
  radiusCopy = radius;
  if (v10 * 0.48 <= radius)
  {
    return 0;
  }

  if (!radius)
  {
    return 6;
  }

  if (v10 * 0.305 < radiusCopy)
  {
    return 1;
  }

  if (v10 * 0.115 > radiusCopy)
  {
    return 5;
  }

  v13 = v11;
  if (v10 * 0.002 < (radius - v13))
  {
    return 2;
  }

  if (v10 * 0.025 >= (v13 - radius))
  {
    return 3;
  }

  return 4;
}

@end