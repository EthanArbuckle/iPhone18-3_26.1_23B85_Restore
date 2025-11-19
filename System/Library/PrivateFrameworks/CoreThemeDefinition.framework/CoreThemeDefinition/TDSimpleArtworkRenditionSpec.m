@interface TDSimpleArtworkRenditionSpec
- ($56AE26BFB60993BDE24C7578AE3A2D7B)_edgeMetricsForAlignmentRect:(SEL)a3 originalRenditionSize:(CGRect)a4 newRenditionSize:(id)a5;
- (BOOL)canBePackedWithDocument:(id)a3;
- (BOOL)updatePackingPropertiesWithDocument:(id)a3;
- (CGImage)_createImageRefWithURL:(id)a3 andDocument:(id)a4 format:(unsigned int *)a5 vectorBased:(BOOL *)a6;
- (CGRect)alignmentRect;
- (CGRect)primitiveAlignmentRect;
- (CGSize)_scaleRecognitionImageFromSize:(CGSize)a3;
- (CGSize)physicalSizeInMeters;
- (id)_sliceRectanglesForRenditionSize:(id)a3 unadjustedSliceRectangles:(id *)a4 imageSlicesNeedAdjustment:(BOOL *)a5 newRenditionSize:(id *)a6;
- (id)associatedFileModificationDateWithDocument:(id)a3;
- (int)_rawPixelFormatOfCGImage:(CGImage *)a3;
- (void)awakeFromFetch;
- (void)copyAttributesInto:(id)a3;
- (void)dealloc;
- (void)drawPackableRenditionInContext:(CGContext *)a3 withDocument:(id)a4;
- (void)setAlignmentRect:(CGRect)a3;
- (void)setPhysicalSizeInMeters:(CGSize)a3;
@end

@implementation TDSimpleArtworkRenditionSpec

- (void)dealloc
{
  [(TDSimpleArtworkRenditionSpec *)self setHistogram:0];
  v3.receiver = self;
  v3.super_class = TDSimpleArtworkRenditionSpec;
  [(TDSimpleArtworkRenditionSpec *)&v3 dealloc];
}

- (CGRect)primitiveAlignmentRect
{
  x = self->_alignmentRect.origin.x;
  y = self->_alignmentRect.origin.y;
  width = self->_alignmentRect.size.width;
  height = self->_alignmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setAlignmentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TDSimpleArtworkRenditionSpec *)self willChangeValueForKey:@"alignmentRect"];
  self->_alignmentRect.origin.x = x;
  self->_alignmentRect.origin.y = y;
  self->_alignmentRect.size.width = width;
  self->_alignmentRect.size.height = height;
  [(TDSimpleArtworkRenditionSpec *)self didChangeValueForKey:@"alignmentRect"];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  v8 = NSStringFromRect(v10);

  [(TDSimpleArtworkRenditionSpec *)self setAlignmentRectString:v8];
}

- (CGRect)alignmentRect
{
  [(TDSimpleArtworkRenditionSpec *)self willAccessValueForKey:@"alignmentRect"];
  [(TDSimpleArtworkRenditionSpec *)self primitiveAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TDSimpleArtworkRenditionSpec *)self didAccessValueForKey:@"alignmentRect"];
  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setPhysicalSizeInMeters:(CGSize)a3
{
  v4 = NSStringFromSize(a3);

  [(TDSimpleArtworkRenditionSpec *)self setPhysicalSizeInMetersString:v4];
}

- (CGSize)physicalSizeInMeters
{
  v2 = [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMetersString];

  v5 = NSSizeFromString(v2);
  height = v5.height;
  width = v5.width;
  result.height = height;
  result.width = width;
  return result;
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = TDSimpleArtworkRenditionSpec;
  [(TDSimpleArtworkRenditionSpec *)&v3 awakeFromFetch];
  v4 = NSRectFromString([(TDSimpleArtworkRenditionSpec *)self alignmentRectString]);
  [(TDSimpleArtworkRenditionSpec *)self setPrimitiveAlignmentRect:v4.origin.x, v4.origin.y, v4.size.width, v4.size.height];
}

- (void)copyAttributesInto:(id)a3
{
  [(TDSimpleArtworkRenditionSpec *)self alignmentRect];
  [a3 setAlignmentRect:?];
  [a3 setNonAlphaImageAreaString:{-[TDSimpleArtworkRenditionSpec nonAlphaImageAreaString](self, "nonAlphaImageAreaString")}];
  [a3 setAlphaCrop:{-[TDSimpleArtworkRenditionSpec alphaCrop](self, "alphaCrop")}];
  [a3 setHeight:{-[TDSimpleArtworkRenditionSpec height](self, "height")}];
  [a3 setWidth:{-[TDSimpleArtworkRenditionSpec width](self, "width")}];
  [a3 setMonochrome:{-[TDSimpleArtworkRenditionSpec monochrome](self, "monochrome")}];
  [a3 setOpaque:{-[TDSimpleArtworkRenditionSpec opaque](self, "opaque")}];
  [a3 setCompressionType:{-[TDSimpleArtworkRenditionSpec compressionType](self, "compressionType")}];
  [a3 setRenditionType:{-[TDRenditionSpec renditionType](self, "renditionType")}];
  [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
  [a3 setPostScaleFactor:?];
  [a3 setAllowsPaletteImageCompression:{-[TDSimpleArtworkRenditionSpec allowsPaletteImageCompression](self, "allowsPaletteImageCompression")}];
  [a3 setAllowsHevcCompression:{-[TDSimpleArtworkRenditionSpec allowsHevcCompression](self, "allowsHevcCompression")}];
  [a3 setAllowsDeepmapCompression:{-[TDSimpleArtworkRenditionSpec allowsDeepmapCompression](self, "allowsDeepmapCompression")}];
  [a3 setAllowsDeepmap2Compression:{-[TDSimpleArtworkRenditionSpec allowsDeepmap2Compression](self, "allowsDeepmap2Compression")}];
  [a3 setPhysicalSizeInMetersString:{-[TDSimpleArtworkRenditionSpec physicalSizeInMetersString](self, "physicalSizeInMetersString")}];
  v5 = [(TDSimpleArtworkRenditionSpec *)self preserveForArchiveOnly];

  [a3 setPreserveForArchiveOnly:v5];
}

- (id)associatedFileModificationDateWithDocument:(id)a3
{
  v3 = [objc_msgSend(-[TDSimpleArtworkRenditionSpec asset](self "asset")];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];
  if (v5)
  {
    v6 = [v4 attributesOfItemAtPath:v3 error:0];
  }

  else
  {
    v6 = 0;
  }

  result = [v6 objectForKey:*MEMORY[0x277CCA150]];
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8 == 1)
  {
    NSLog(&cfstr_Tdsimpleartwor.isa, v3);
    v9 = MEMORY[0x277CBEAA8];

    return [v9 distantFuture];
  }

  return result;
}

- (id)_sliceRectanglesForRenditionSize:(id)a3 unadjustedSliceRectangles:(id *)a4 imageSlicesNeedAdjustment:(BOOL *)a5 newRenditionSize:(id *)a6
{
  v166 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [(TDSimpleArtworkRenditionSpec *)self _slicesToUseForCSI];
  v11 = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  if ([v10 count])
  {
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v160 objects:v165 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v161;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v161 != v14)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v160 + 1) + 8 * i) sliceRect];
          [v9 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:")}];
        }

        v13 = [v10 countByEnumeratingWithState:&v160 objects:v165 count:16];
      }

      while (v13);
    }
  }

  if (![v9 count])
  {
    [v9 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, a3.var0, a3.var1)}];
  }

  if (v11 - 1 > 1)
  {
    if (v11 == 3 && [v9 count] == 9)
    {
      [objc_msgSend(v9 objectAtIndex:{1), "rectValue"}];
      v49 = v48;
      v51 = v50;
      [objc_msgSend(v9 objectAtIndex:{2), "rectValue"}];
      v53 = v52 - (v49 + v51);
      [objc_msgSend(v9 objectAtIndex:{3), "rectValue"}];
      v55 = v54;
      v57 = v56;
      [objc_msgSend(v9 objectAtIndex:{6), "rectValue"}];
      v59 = v58 - (v55 + v57);
      if (v53 > 0.0 || v59 > 0.0)
      {
        v76 = (a6->var0 - v53);
        var1 = a6->var1;
        *a5 = 1;
        a6->var0 = v76;
        a6->var1 = (var1 - v59);
        goto LABEL_41;
      }
    }
  }

  else if ([v9 count] == 4)
  {
    *(&a6->var0 + (v11 != 1)) = 0;
    v16 = [MEMORY[0x277CBEB18] array];
    if ([v9 count])
    {
      v17 = 0;
      do
      {
        if (v17 != 2)
        {
          v18 = [v9 objectAtIndex:v17];
          [v16 addObject:v18];
          [v18 rectValue];
          if (v11 == 1)
          {
            v21 = v19;
          }

          else
          {
            v21 = v20;
          }

          *(&a6->var0 + (v11 != 1)) = (v21 + *(&a6->var0 + (v11 != 1)));
        }

        ++v17;
      }

      while (v17 < [v9 count]);
    }

    *a5 = 1;
    if (v11 == 2)
    {
      if ([v16 count] == 3)
      {
        [objc_msgSend(v16 objectAtIndex:{2), "rectValue"}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        [objc_msgSend(v16 objectAtIndex:{1), "rectValue"}];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v38 = v25 - (v32 + v36);
        if (v38 < 0.0)
        {
          v38 = 0.0;
        }

        v39 = v25 - v38;
        [objc_msgSend(v16 objectAtIndex:{0), "rectValue"}];
        v40 = MEMORY[0x277CBEA60];
        v41 = [MEMORY[0x277CCAE60] valueWithRect:?];
        v42 = [MEMORY[0x277CCAE60] valueWithRect:{v31, v33, v35, v37}];
        v43 = MEMORY[0x277CCAE60];
        v44 = v23;
        v45 = v39;
        v46 = v27;
        v47 = v29;
LABEL_37:
        v75 = [v40 arrayWithObjects:{v41, v42, objc_msgSend(v43, "valueWithRect:", v44, v45, v46, v47), 0}];
LABEL_55:
        v9 = v75;
        goto LABEL_31;
      }

      goto LABEL_57;
    }

    if (v11 == 1)
    {
      if ([v16 count] == 3)
      {
        [objc_msgSend(v16 objectAtIndex:{1), "rectValue"}];
        v63 = v62;
        v65 = v64;
        [objc_msgSend(v16 objectAtIndex:{2), "rectValue"}];
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v73 = v66 - (v63 + v65);
        if (v73 < 0.0)
        {
          v73 = 0.0;
        }

        v74 = v66 - v73;
        v40 = MEMORY[0x277CBEA60];
        v41 = [v16 objectAtIndex:0];
        v42 = [v16 objectAtIndex:1];
        v43 = MEMORY[0x277CCAE60];
        v44 = v74;
        v45 = v68;
        v46 = v70;
        v47 = v72;
        goto LABEL_37;
      }

LABEL_57:
      v9 = 0;
      goto LABEL_31;
    }

    if (v11 != 3)
    {
      goto LABEL_57;
    }

    v9 = v16;
LABEL_41:
    if ([v9 count] == 9)
    {
      [objc_msgSend(v9 objectAtIndex:{0), "rectValue"}];
      v156 = v79;
      v158 = v78;
      v154 = v81;
      v155 = v80;
      [objc_msgSend(v9 objectAtIndex:{1), "rectValue"}];
      v83 = v82;
      v152 = v85;
      v153 = v84;
      v87 = v86;
      [objc_msgSend(v9 objectAtIndex:{2), "rectValue"}];
      v89 = v88;
      v150 = v91;
      v151 = v90;
      v149 = v92;
      [objc_msgSend(v9 objectAtIndex:{3), "rectValue"}];
      v147 = v94;
      v148 = v93;
      v96 = v95;
      v129 = v97;
      [objc_msgSend(v9 objectAtIndex:{4), "rectValue"}];
      v145 = v99;
      v146 = v98;
      v143 = v101;
      v144 = v100;
      [objc_msgSend(v9 objectAtIndex:{5), "rectValue"}];
      v103 = v102;
      v141 = v105;
      v142 = v104;
      v140 = v106;
      [objc_msgSend(v9 objectAtIndex:{6), "rectValue"}];
      v138 = v108;
      v139 = v107;
      v110 = v109;
      v137 = v111;
      [objc_msgSend(v9 objectAtIndex:{7), "rectValue"}];
      v135 = v113;
      v136 = v112;
      v115 = v114;
      v134 = v116;
      [objc_msgSend(v9 objectAtIndex:{8), "rectValue"}];
      v132 = v120;
      v133 = v119;
      v121 = v89 - (v83 + v87);
      v122 = v117 - v121;
      if (v121 <= 0.0)
      {
        v123 = v89;
      }

      else
      {
        v123 = v89 - v121;
      }

      if (v121 <= 0.0)
      {
        v124 = v103;
      }

      else
      {
        v124 = v103 - v121;
      }

      if (v121 <= 0.0)
      {
        v125 = v117;
      }

      else
      {
        v125 = v117 - v121;
      }

      v126 = v110 - (v96 + v129);
      v127 = v118 - v126;
      if (v126 <= 0.0)
      {
        v128 = v118;
      }

      else
      {
        v110 = v110 - v126;
        v115 = v115 - v126;
        v128 = v118 - v126;
      }

      v130 = v128;
      v131 = v125;
      v164[0] = [MEMORY[0x277CCAE60] valueWithRect:{v158, v156, v155, v154, v127, v122}];
      v164[1] = [MEMORY[0x277CCAE60] valueWithRect:{v83, v153, v87, v152}];
      v164[2] = [MEMORY[0x277CCAE60] valueWithRect:{v123, v151, v150, v149}];
      v164[3] = [MEMORY[0x277CCAE60] valueWithRect:{v148, v96, v147, v129}];
      v164[4] = [MEMORY[0x277CCAE60] valueWithRect:{v146, v145, v144, v143}];
      v164[5] = [MEMORY[0x277CCAE60] valueWithRect:{v124, v142, v141, v140}];
      v164[6] = [MEMORY[0x277CCAE60] valueWithRect:{v139, v110, v138, v137}];
      v164[7] = [MEMORY[0x277CCAE60] valueWithRect:{v136, v115, v135, v134}];
      v164[8] = [MEMORY[0x277CCAE60] valueWithRect:{v131, v130, v133, v132}];
      v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:9];
      v16 = v9;
      goto LABEL_55;
    }

    v16 = v9;
    goto LABEL_57;
  }

  v16 = v9;
LABEL_31:
  *a4 = v16;
  v60 = *MEMORY[0x277D85DE8];
  return v9;
}

- ($56AE26BFB60993BDE24C7578AE3A2D7B)_edgeMetricsForAlignmentRect:(SEL)a3 originalRenditionSize:(CGRect)a4 newRenditionSize:(id)a5
{
  v6 = a4.size.width - (a5.var0 - a6.var0);
  v7 = a4.size.height - (a5.var1 - a6.var1);
  retstr->var0.width = a4.origin.x;
  retstr->var0.height = a4.origin.y;
  retstr->var1.width = a6.var0 - (a4.origin.x + v6);
  retstr->var1.height = a6.var1 - (a4.origin.y + v7);
  retstr->var2.width = v6;
  retstr->var2.height = v7;
  return self;
}

- (BOOL)canBePackedWithDocument:(id)a3
{
  v10.receiver = self;
  v10.super_class = TDSimpleArtworkRenditionSpec;
  v4 = [(TDRenditionSpec *)&v10 canBePackedWithDocument:a3];
  if (v4)
  {
    v5 = [(TDSimpleArtworkRenditionSpec *)self asset];
    v6 = [objc_msgSend(v5 "name")];
    if ([v6 length])
    {
      if ([v6 caseInsensitiveCompare:@"PDF"] && objc_msgSend(v6, "caseInsensitiveCompare:", @"SVG"))
      {
        if ((![v6 caseInsensitiveCompare:@"JPEG"] || !objc_msgSend(v6, "caseInsensitiveCompare:", @"JPG") || !objc_msgSend(v6, "caseInsensitiveCompare:", @"HEIF") || !objc_msgSend(v6, "caseInsensitiveCompare:", @"HEIC")) && (-[TDSimpleArtworkRenditionSpec alphaCrop](self, "alphaCrop") & 1) == 0)
        {
          [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
          if (v7 <= 0.0)
          {
            [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
            if (v8 <= 0.0)
            {
              LOBYTE(v4) = 0;
              return v4;
            }
          }
        }
      }

      else
      {
        v4 = [v5 scaleFactor];
        if (!v4)
        {
          return v4;
        }
      }
    }

    LOBYTE(v4) = 1;
  }

  return v4;
}

- (int)_rawPixelFormatOfCGImage:(CGImage *)a3
{
  v5 = 1095911234;
  if ([(TDSimpleArtworkRenditionSpec *)self allowsMultiPassEncoding])
  {
    v6 = [(TDSimpleArtworkRenditionSpec *)self monochrome];
    BitsPerComponent = CGImageGetBitsPerComponent(a3);
    if (BitsPerComponent <= 15)
    {
      v8 = 1095911234;
    }

    else
    {
      v8 = 1380401751;
    }

    if (BitsPerComponent <= 15)
    {
      v9 = 1195456544;
    }

    else
    {
      v9 = 1195454774;
    }

    if (v6)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

- (CGImage)_createImageRefWithURL:(id)a3 andDocument:(id)a4 format:(unsigned int *)a5 vectorBased:(BOOL *)a6
{
  v12 = [(TDSimpleArtworkRenditionSpec *)self asset];
  if (![objc_msgSend(a3 "pathExtension")])
  {
    v16 = [v12 scaleFactor];
    if (a5 && !v16)
    {
      Image = 0;
      v15 = 1346651680;
      goto LABEL_17;
    }

    v18 = CGPDFDocumentCreateWithURL(a3);
    if (v18)
    {
      v19 = v18;
      v91 = a2;
      v92 = a6;
      v20 = [v12 scaleFactor];
      v21 = v20;
      Page = CGPDFDocumentGetPage(v19, 1uLL);
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      v27 = [v12 fileScaleFactor];
      if (!v27)
      {
        v27 = +[TDAsset scaleFactorFromImageFilename:](TDAsset, "scaleFactorFromImageFilename:", [a3 path]);
      }

      if (!v20)
      {
        v21 = 1.0;
      }

      [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
      v29 = v21 * v28;
      v90 = v27;
      v30 = v27;
      v31 = round(width / v27 * v29);
      v32 = round(height / v27 * v29);
      if ((CGPDFPageContainsWideGamutContent() & 1) == 0)
      {
        goto LABEL_82;
      }

      v33 = 1;
      v34 = 4097;
      v35 = MEMORY[0x277CBF3E0];
      v36 = 16;
      for (i = 8; ; i = 4)
      {
        v71 = CGColorSpaceCreateWithName(*v35);
        v72 = CGBitmapContextCreate(0, v31, v32, v36, (v31 * i), v71, v34);
        if (!v72)
        {
          v89 = [MEMORY[0x277CCA890] currentHandler];
          v88 = [objc_msgSend(-[TDSimpleArtworkRenditionSpec production](self "production")];
          [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
          [v89 handleFailureInMethod:v91 object:self file:@"TDSimpleArtworkRenditionSpec.m" lineNumber:483 description:{@"CoreThemeDefinition: '%@' Unable to create bitmap context for %s (%fx%f) colorSpace:'%@' [pdfsize:%fx%f fileScale:%d postScaleFactor:%f scale:%f bpc:%d bpp:%d bitmapInfo:%d]", v88, "-[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:]", *&v31, *&v32, v71, *&width, *&height, v90, v87, *&v29, v36, i, v34}];
        }

        CGColorSpaceRelease(v71);
        CGContextScaleCTM(v72, v29 / v30, v29 / v30);
        CGContextTranslateCTM(v72, -x, -y);
        CGContextDrawPDFPage(v72, Page);
        Image = CGBitmapContextCreateImage(v72);
        if (v33 & 1) == 0 || (CUIImageIsWideGamut())
        {
          break;
        }

        CFRelease(Image);
        CFRelease(v72);
LABEL_82:
        v33 = 0;
        v34 = 8193;
        v35 = MEMORY[0x277CBF4B8];
        v36 = 8;
      }

      CFRelease(v72);
      CGPDFDocumentRelease(v19);
      a2 = v91;
      if (v92)
      {
        *v92 = 1;
      }

      if (a5)
      {
        *a5 = [(TDSimpleArtworkRenditionSpec *)self _rawPixelFormatOfCGImage:Image];
      }

      goto LABEL_92;
    }

    return 0;
  }

  if (![objc_msgSend(a3 "pathExtension")])
  {
    v17 = [v12 scaleFactor];
    if (a5 && !v17)
    {
      Image = 0;
      v15 = 1398163232;
      goto LABEL_17;
    }

    if ([objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")] || objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"))
    {
      v43 = +[TDVectorGlyphReader vectorGlyphReaderWithURL:platform:error:](TDVectorGlyphReader, "vectorGlyphReaderWithURL:platform:error:", a3, [a4 targetPlatform], 0);
      -[TDVectorGlyphReader canvasSizeForWeight:size:](v43, "canvasSizeForWeight:size:", [objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"));
      v45 = v44;
      v47 = v46;
      [(TDVectorGlyphReader *)v43 templateVersion];
      v48 = [(TDVectorGlyphReader *)v43 containsWideGamutContent];
      v49 = 0;
    }

    else
    {
      v68 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:a3 options:8 error:0];
      v49 = CGSVGDocumentCreateFromData();
      CGSVGDocumentGetCanvasSize();
      v45 = v69;
      v47 = v70;
      v48 = CGSVGDocumentContainsWideGamutContent();

      v43 = 0;
    }

    if (v45 != 0.0 && v47 != 0.0)
    {
      v93 = a6;
      v50 = [v12 scaleFactor];
      v51 = v50;
      [v12 fileScaleFactor];
      if (!v50)
      {
        v51 = 1.0;
      }

      [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
      v53 = v51 * v52;
      v54 = v45 * v53;
      v55 = ceil(v54);
      v56 = v47 * v53;
      if (v48)
      {
        v57 = 16;
      }

      else
      {
        v57 = 8;
      }

      if (v48)
      {
        v58 = 8.0;
      }

      else
      {
        v58 = 4.0;
      }

      if (v48)
      {
        v59 = 4097;
      }

      else
      {
        v59 = 8193;
      }

      v60 = MEMORY[0x277CBF3E0];
      if (!v48)
      {
        v60 = MEMORY[0x277CBF4B8];
      }

      v61 = CGColorSpaceCreateWithName(*v60);
      v62 = CGBitmapContextCreate(0, vcvtpd_u64_f64(v54), vcvtpd_u64_f64(v56), v57, (v55 * v58), v61, v59);
      if (!v62)
      {
        [TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:];
      }

      CGColorSpaceRelease(v61);
      if (v43)
      {
        [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
        v64 = v63;
        [(TDVectorGlyphReader *)v43 defaultPointSize];
        -[TDVectorGlyphReader drawInContext:atPointSize:scaleFactor:weight:size:](v43, "drawInContext:atPointSize:scaleFactor:weight:size:", v62, [objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"), v64 * v65, objc_msgSend(v12, "scaleFactor"));
      }

      else
      {
        CGContextScaleCTM(v62, v53, v53);
        CGContextDrawSVGDocument();
      }

      Image = CGBitmapContextCreateImage(v62);
      CFRelease(v62);
      CGSVGDocumentRelease();
      if (v93)
      {
        *v93 = 1;
      }

      if (a5)
      {
        *a5 = [(TDSimpleArtworkRenditionSpec *)self _rawPixelFormatOfCGImage:Image];
      }

      if (v43)
      {
      }

      goto LABEL_92;
    }

    if ([objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")] || objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"))
    {
      NSLog(&cfstr_SGotZeroWidthH.isa, "-[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:]", a3, [objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDSimpleArtworkRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"));
      if (v45 == 0.0 && v47 == 0.0)
      {
        [TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:];
      }
    }

    else
    {
      NSLog(&cfstr_SGotZeroWidthH_0.isa, "[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:]", a3);
      if (v45 == 0.0 && v47 == 0.0)
      {
        [TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:];
      }
    }

    if (v49)
    {
      CGSVGDocumentRelease();
    }

    return 0;
  }

  v13 = [a3 pathExtension];
  if ([v13 length])
  {
    if ([v13 caseInsensitiveCompare:@"JPEG"] && objc_msgSend(v13, "caseInsensitiveCompare:", @"JPG"))
    {
      if ([v13 caseInsensitiveCompare:@"HEIF"] && objc_msgSend(v13, "caseInsensitiveCompare:", @"HEIC"))
      {
        if ([v13 caseInsensitiveCompare:@"PNG"])
        {
          goto LABEL_9;
        }

LABEL_32:
        v41 = [v12 sourceImageWithDocument:a4];
        v42 = [v41 image];
        if (v41)
        {
          Image = v42;
          if (a5)
          {
            *a5 = [(TDSimpleArtworkRenditionSpec *)self _rawPixelFormatOfCGImage:v42];
          }

          goto LABEL_68;
        }

        return 0;
      }

      if (a5)
      {
        *a5 = 1212500294;
      }
    }

    else if (a5)
    {
      if (([(TDSimpleArtworkRenditionSpec *)self alphaCrop]& 1) != 0 || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v38 > 0.0) || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v39 > 0.0))
      {
        v40 = [(TDSimpleArtworkRenditionSpec *)self _rawPixelFormatOfCGImage:0];
      }

      else
      {
        v40 = 1246774599;
      }

      *a5 = v40;
    }

    v66 = [v12 sourceImageWithDocument:a4];
    v67 = [v66 image];
    if (v66)
    {
      Image = v67;
LABEL_68:
      CGImageRetain(Image);
      goto LABEL_92;
    }

    return 0;
  }

  if (![a3 checkResourceIsReachableAndReturnError:0])
  {
    goto LABEL_32;
  }

LABEL_9:
  Image = 0;
  if (a5)
  {
    v15 = 1145132097;
LABEL_17:
    *a5 = v15;
  }

LABEL_92:
  [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
  if (v73 > 0.0 || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v74 > 0.0))
  {
    v75 = CGImageGetWidth(Image);
    v76 = v75;
    v77 = CGImageGetHeight(Image);
    if (v75 <= 0x63)
    {
      [TDSimpleArtworkRenditionSpec _createImageRefWithURL:a2 andDocument:? format:? vectorBased:?];
    }

    [(TDSimpleArtworkRenditionSpec *)self _scaleRecognitionImageFromSize:v76, v77];
    if (v78 != v76 || v79 != v77)
    {
      v81 = v78;
      v82 = v79;
      memset(&dest, 0, sizeof(dest));
      v83 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      v96[0] = 0x2000000008;
      v96[1] = v83;
      v97 = 12289;
      memset(v99, 0, sizeof(v99));
      v98 = 0;
      src.height = v77;
      src.width = v76;
      src.data = 0;
      src.rowBytes = CGBitmapGetAlignedBytesPerRow();
      CGImageGetColorSpace(Image);
      v84 = CUIConvertCGImageFormat();
      CGColorSpaceRelease(v83);
      if (!v84)
      {
        dest.height = v82;
        dest.width = v81;
        dest.rowBytes = 32 * v81;
        dest.data = malloc_type_calloc(dest.rowBytes * v82, 1uLL, 0x100004077774924uLL);
        v85 = vImageScale_ARGB8888(&src, &dest, 0, 0x20u);
        CGBitmapFreeData();
        if (!v85)
        {
          CGImageRelease(Image);
          return MEMORY[0x24C1B1FF0](&dest, v96, 0, 0, 512, 0);
        }
      }
    }
  }

  return Image;
}

- (CGSize)_scaleRecognitionImageFromSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters];
  if (v6 > 0.0 || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v7 > 0.0))
  {
    if (width <= height)
    {
      if (height > 640.0)
      {
        width = round(width * (640.0 / height));
        height = 640.0;
      }
    }

    else if (width > 640.0)
    {
      height = round(height * (640.0 / width));
      width = 640.0;
    }
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)updatePackingPropertiesWithDocument:(id)a3
{
  v5 = [(TDSimpleArtworkRenditionSpec *)self asset];
  v81.receiver = self;
  v81.super_class = TDSimpleArtworkRenditionSpec;
  [(TDRenditionSpec *)&v81 updatePackingPropertiesWithDocument:a3];
  v6 = [v5 fileURLWithDocument:a3];
  v7 = [v6 pathExtension];
  v8 = [v7 length];
  if (![v7 caseInsensitiveCompare:@"PDF"])
  {
    if (![v5 scaleFactor])
    {
      return 1;
    }

    v22 = CGPDFDocumentCreateWithURL(v6);
    if (!v22)
    {
      return 1;
    }

    v23 = v22;
    Page = CGPDFDocumentGetPage(v22, 1uLL);
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    v27 = [v5 scaleFactor];
    [(TDSimpleArtworkRenditionSpec *)self postScaleFactor];
    v29 = v28 * v27;
    v30 = [v5 fileScaleFactor];
    if (!v30)
    {
      v30 = +[TDAsset scaleFactorFromImageFilename:](TDAsset, "scaleFactorFromImageFilename:", [v6 path]);
    }

    v32 = v30;
    LODWORD(v31) = llround(v29 * (width / v30));
    [(TDSimpleArtworkRenditionSpec *)self setWidth:v31];
    LODWORD(v33) = llround(v29 * (height / v32));
    [(TDSimpleArtworkRenditionSpec *)self setHeight:v33];
    if ([-[TDSimpleArtworkRenditionSpec production](self "production")])
    {
      [(TDSimpleArtworkRenditionSpec *)self setMonochrome:1];
    }

    else
    {
      LODWORD(v72) = 0;
      LOBYTE(v67) = 0;
      v41 = [(TDSimpleArtworkRenditionSpec *)self _createImageRefWithURL:v6 andDocument:a3 format:&v72 vectorBased:&v67];
      [(TDSimpleArtworkRenditionSpec *)self setMonochrome:CUIImageIsMonochrome()];
      CFRelease(v41);
    }

    v42 = v23;
LABEL_31:
    CFRelease(v42);
    return 1;
  }

  if (![objc_msgSend(v6 "pathExtension")])
  {
    if (![v5 scaleFactor] || (objc_msgSend(v5, "rawData") & 1) != 0)
    {
      return 1;
    }

    LODWORD(v72) = 0;
    LOBYTE(v67) = 0;
    v34 = [(TDSimpleArtworkRenditionSpec *)self _createImageRefWithURL:v6 andDocument:a3 format:&v72 vectorBased:&v67];
    [(TDSimpleArtworkRenditionSpec *)self setWidth:CGImageGetWidth(v34)];
    [(TDSimpleArtworkRenditionSpec *)self setHeight:CGImageGetHeight(v34)];
    if ([-[TDSimpleArtworkRenditionSpec production](self "production")])
    {
      IsMonochrome = 1;
    }

    else
    {
      IsMonochrome = CUIImageIsMonochrome();
    }

    [(TDSimpleArtworkRenditionSpec *)self setMonochrome:IsMonochrome];
    v42 = v34;
    goto LABEL_31;
  }

  if (v8)
  {
    if ([v7 caseInsensitiveCompare:@"JPEG"] && objc_msgSend(v7, "caseInsensitiveCompare:", @"JPG"))
    {
      if (![v7 caseInsensitiveCompare:@"PNG"])
      {
        v9 = [v5 sourceImageWithDocument:a3];
        if (v9)
        {
          v10 = v9;
          v80 = 0;
          v79 = 0;
          v78 = 0;
          v72 = 0;
          v73 = &v72;
          v74 = 0x4010000000;
          v75 = &unk_247A5213F;
          v11 = *(MEMORY[0x277CBF3A0] + 16);
          v76 = *MEMORY[0x277CBF3A0];
          v77 = v11;
          v67 = 0;
          v68 = &v67;
          v70 = &unk_247A5213F;
          v69 = 0x3010000000;
          v71 = *MEMORY[0x277CBF3A8];
          v63 = 0;
          v64 = &v63;
          v65 = 0x2020000000;
          v66 = 0;
          v59 = 0;
          v60 = &v59;
          v61 = 0x2020000000;
          v62 = 0;
          v55 = 0;
          v56 = &v55;
          v57 = 0x2020000000;
          v58 = 0;
          v51 = 0;
          v52 = &v51;
          v53 = 0x2020000000;
          v54 = 0;
          v47 = 0;
          v48 = &v47;
          v49 = 0x2020000000;
          v50 = 0;
          v12 = [(TDSimpleArtworkRenditionSpec *)self alphaCrop];
          v13 = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
          v48[3] = v13;
          [v10 size];
          [(TDSimpleArtworkRenditionSpec *)self _scaleRecognitionImageFromSize:?];
          v15 = v14;
          v17 = v16;
          v18 = [-[TDSimpleArtworkRenditionSpec production](self "production")];
          *(v60 + 24) = v18;
          v19 = [-[TDSimpleArtworkRenditionSpec production](self "production")];
          *(v56 + 24) = v19;
          global_queue = dispatch_get_global_queue(0, 0);
          v21 = dispatch_group_create();
          LODWORD(v80) = v15;
          HIDWORD(v80) = v17;
          [(TDSimpleArtworkRenditionSpec *)self _sliceRectanglesForRenditionSize:v80 unadjustedSliceRectangles:&v78 imageSlicesNeedAdjustment:&v79 newRenditionSize:&v80];
          [(TDSimpleArtworkRenditionSpec *)self setWidth:v80];
          [(TDSimpleArtworkRenditionSpec *)self setHeight:HIDWORD(v80)];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __68__TDSimpleArtworkRenditionSpec_updatePackingPropertiesWithDocument___block_invoke;
          block[3] = &unk_278EBB5B8;
          block[4] = v10;
          block[5] = &v47;
          v46 = v12;
          block[6] = &v67;
          block[7] = &v72;
          block[8] = &v59;
          block[9] = &v63;
          block[10] = v80;
          dispatch_group_async(v21, global_queue, block);
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __68__TDSimpleArtworkRenditionSpec_updatePackingPropertiesWithDocument___block_invoke_2;
          v44[3] = &unk_278EBB5E0;
          v44[6] = &v51;
          v44[4] = v10;
          v44[5] = &v55;
          dispatch_group_async(v21, global_queue, v44);
          dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
          dispatch_release(v21);
          if (((v48[3] == 0) & v12) == 1)
          {
            if (!CGRectIsEmpty(v73[1]))
            {
              [(TDSimpleArtworkRenditionSpec *)self setWidth:v73[1].size.width];
              [(TDSimpleArtworkRenditionSpec *)self setHeight:v73[1].size.height];
            }

            [(TDSimpleArtworkRenditionSpec *)self setOriginalImageSizeString:NSStringFromSize(v68[2])];
            [(TDSimpleArtworkRenditionSpec *)self setNonAlphaImageAreaString:NSStringFromRect(v73[1])];
          }

          else
          {
            [(TDSimpleArtworkRenditionSpec *)self setOpaque:*(v64 + 24)];
          }

          [(TDSimpleArtworkRenditionSpec *)self setMonochrome:*(v52 + 24)];
          _Block_object_dispose(&v47, 8);
          _Block_object_dispose(&v51, 8);
          _Block_object_dispose(&v55, 8);
          _Block_object_dispose(&v59, 8);
          _Block_object_dispose(&v63, 8);
          _Block_object_dispose(&v67, 8);
          _Block_object_dispose(&v72, 8);
        }
      }
    }

    else if (([(TDSimpleArtworkRenditionSpec *)self alphaCrop]& 1) != 0 || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v36 > 0.0) || ([(TDSimpleArtworkRenditionSpec *)self physicalSizeInMeters], v37 > 0.0))
    {
      v38 = [v5 sourceImageWithDocument:a3];
      if (v38)
      {
        LOBYTE(v63) = 0;
        v67 = 0;
        [v38 size];
        [(TDSimpleArtworkRenditionSpec *)self _scaleRecognitionImageFromSize:?];
        LODWORD(v72) = v39;
        HIDWORD(v72) = v40;
        [(TDSimpleArtworkRenditionSpec *)self _sliceRectanglesForRenditionSize:v72 unadjustedSliceRectangles:&v67 imageSlicesNeedAdjustment:&v63 newRenditionSize:&v72];
        [(TDSimpleArtworkRenditionSpec *)self setWidth:v72];
        [(TDSimpleArtworkRenditionSpec *)self setHeight:HIDWORD(v72)];
        [(TDSimpleArtworkRenditionSpec *)self setOpaque:1];
      }
    }
  }

  return 1;
}

__n128 __68__TDSimpleArtworkRenditionSpec_updatePackingPropertiesWithDocument___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) image])
  {
    if (*(*(*(a1 + 40) + 8) + 24) || *(a1 + 88) != 1)
    {
      v13 = *(*(*(a1 + 64) + 8) + 24);
      v14 = [*(a1 + 32) image];
      if (v13 == 1)
      {
        AlphaInfo = CUICGImageGetAlphaInfo();
      }

      else
      {
        AlphaInfo = CGImageGetAlphaInfo(v14);
      }

      if (AlphaInfo == 5 || AlphaInfo == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }
    }

    else
    {
      v3 = *(a1 + 80);
      v4.i64[0] = v3;
      v4.i64[1] = SHIDWORD(v3);
      *(*(*(a1 + 48) + 8) + 32) = vcvtq_f64_s64(v4);
      [*(a1 + 32) image];
      CUICalcNonAlphaAreaOfImage();
      v5 = *(*(a1 + 56) + 8);
      v5[4] = v6;
      v5[5] = v7;
      v5[6] = v8;
      v5[7] = v9;
      IsEmpty = CGRectIsEmpty(*(*(*(a1 + 56) + 8) + 32));
      v11 = *(a1 + 48);
      if (IsEmpty)
      {
        v12 = *(v11 + 8);
LABEL_18:
        *(v12 + 32) = *MEMORY[0x277CBF3A8];
        v18 = *(*(a1 + 56) + 8);
        result = *(MEMORY[0x277CBF3A0] + 16);
        *(v18 + 32) = *MEMORY[0x277CBF3A0];
        *(v18 + 48) = result;
        return result;
      }

      v17 = *(*(a1 + 56) + 8);
      result.n128_u64[0] = *(v17 + 56);
      v12 = *(v11 + 8);
      if (result.n128_f64[0] == *(v12 + 40))
      {
        result.n128_u64[0] = *(v17 + 48);
        if (result.n128_f64[0] == *(v12 + 32))
        {
          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

uint64_t __68__TDSimpleArtworkRenditionSpec_updatePackingPropertiesWithDocument___block_invoke_2(uint64_t result)
{
  v1 = result;
  if ((*(*(*(result + 40) + 8) + 24) & 1) != 0 || ([*(result + 32) image], result = CUIImageIsMonochrome(), result))
  {
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)drawPackableRenditionInContext:(CGContext *)a3 withDocument:(id)a4
{
  v57 = 0;
  v56 = 1246774599;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  [(TDRenditionSpec *)self packedPoint];
  v47 = v7;
  v48 = v8;
  v9 = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  v10 = -[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:](self, "_createImageRefWithURL:andDocument:format:vectorBased:", [-[TDSimpleArtworkRenditionSpec asset](self "asset")], a4, &v56, &v57);
  if (CGImageGetBitsPerComponent(v10) >= 9 && CGBitmapContextGetBitsPerComponent(a3) == 8)
  {
    v11 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    v12 = CUIConvertDeepImageTo8();
    if (v12)
    {
      v13 = v12;
      CFRelease(v10);
      v10 = v13;
    }

    CFRelease(v11);
  }

  Width = CGImageGetWidth(v10);
  Height = CGImageGetHeight(v10);
  v16 = Height;
  v53 = __PAIR64__(Height, Width);
  v17 = [(TDSimpleArtworkRenditionSpec *)self _sliceRectanglesForRenditionSize:__PAIR64__(Height unadjustedSliceRectangles:Width) imageSlicesNeedAdjustment:&v54 newRenditionSize:&v55, &v53];
  if (v55 == 1)
  {
    if (a3)
    {
      v18 = v17;
      if ([v54 count])
      {
        CGContextSaveGState(a3);
        x = *MEMORY[0x277CBF398];
        v51 = *(MEMORY[0x277CBF398] + 16);
        y = *(MEMORY[0x277CBF398] + 8);
        v50 = *(MEMORY[0x277CBF398] + 24);
        CGContextSetBlendMode(a3, kCGBlendModeCopy);
        if ([v18 count])
        {
          v20 = 0;
          v21 = v9 & 0xFFFFFFFE;
          do
          {
            [objc_msgSend(v54 objectAtIndex:{v20), "rectValue"}];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            [objc_msgSend(v18 objectAtIndex:{v20), "rectValue"}];
            if (v27 > 0.0 && v29 > 0.0)
            {
              v34 = v30;
              v35 = v32;
              v36 = v33;
              v49 = x;
              if (v21 == 2)
              {
                v37 = SHIDWORD(v53) - (v31 + v33);
              }

              else
              {
                v37 = v31;
              }

              v58.origin.x = v23;
              v58.origin.y = v25;
              v58.size.width = v27;
              v58.size.height = v29;
              v38 = CGImageCreateWithImageInRect(v10, v58);
              v59.origin.x = v47 + v34;
              v59.origin.y = v48 + v37;
              v59.size.width = v35;
              v59.size.height = v36;
              CGContextDrawImage(a3, v59, v38);
              CGImageRelease(v38);
              v60.origin.x = v49;
              v60.size.height = v50;
              v60.size.width = v51;
              v60.origin.y = y;
              v67.origin.x = v47 + v34;
              v67.origin.y = v48 + v37;
              v67.size.width = v35;
              v67.size.height = v36;
              v61 = CGRectUnion(v60, v67);
              x = v61.origin.x;
              v51 = v61.size.width;
              y = v61.origin.y;
              v50 = v61.size.height;
            }

            ++v20;
          }

          while (v20 < [v18 count]);
        }

        v39 = CGBitmapContextGetHeight(a3) - (v50 + y);
        Image = CGBitmapContextCreateImage(a3);
        v62.origin.x = x;
        v62.origin.y = v39;
        v62.size.width = v51;
        v62.size.height = v50;
        v41 = CGImageCreateWithImageInRect(Image, v62);
        CUICalculateExtrusionMaskOfImage();
        CUIDrawExtrudedImageInContext();
        CGImageRelease(Image);
        CGImageRelease(v41);
        CGContextRestoreGState(a3);
      }
    }
  }

  else if (a3)
  {
    v63 = NSRectFromString([(TDSimpleArtworkRenditionSpec *)self nonAlphaImageAreaString]);
    v42 = v63.origin.x;
    v43 = v63.origin.y;
    v44 = v63.size.width;
    v45 = v63.size.height;
    if (CGRectIsEmpty(v63))
    {
      CUICalculateExtrusionMaskOfImage();
      v64.origin.x = v47 + 0.0;
      v64.origin.y = v48 + 0.0;
      v64.size.width = Width;
      v64.size.height = v16;
      CGContextDrawImage(a3, v64, v10);
      CUIDrawExtrudedImageInContext();
    }

    else
    {
      v65.origin.x = v42;
      v65.origin.y = v43;
      v65.size.width = v44;
      v65.size.height = v45;
      v46 = CGImageCreateWithImageInRect(v10, v65);
      CUICalculateExtrusionMaskOfImage();
      v66.origin.x = v47 + 0.0;
      v66.origin.y = v48 + 0.0;
      v66.size.width = v44;
      v66.size.height = v45;
      CGContextDrawImage(a3, v66, v46);
      CUIDrawExtrudedImageInContext();
      CGImageRelease(v46);
    }
  }

  CGImageRelease(v10);
}

@end