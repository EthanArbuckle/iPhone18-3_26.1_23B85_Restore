@interface HWEncoding
+ (id)decodeHandwritingFromData:(id)data;
+ (id)decodedBrushStrokesWithData:(id)data inCanvasBounds:(CGRect)bounds inStrokesFrame:(CGRect)frame strokeDataFieldCount:(unsigned int)count count:(unint64_t)a7;
+ (id)encodeBrushStrokesAsData:(id)data inCanvasBounds:(CGRect)bounds inStrokesFrame:(CGRect)frame;
+ (id)encodeHandwriting:(id)handwriting compress:(BOOL)compress;
+ (id)protoDrawingFromDrawing:(id)drawing compress:(BOOL)compress;
+ (id)protoMessageFromHandwriting:(id)handwriting;
+ (void)writeDataToDisk:(id)disk withName:(id)name;
@end

@implementation HWEncoding

+ (id)encodeHandwriting:(id)handwriting compress:(BOOL)compress
{
  compressCopy = compress;
  handwritingCopy = handwriting;
  v6 = objc_opt_class();
  drawing = [handwritingCopy drawing];
  v8 = [v6 protoDrawingFromDrawing:drawing compress:compressCopy];

  v9 = [objc_opt_class() protoMessageFromHandwriting:handwritingCopy];

  data = [v8 data];
  [v9 setDrawing:data];

  data2 = [v9 data];

  return data2;
}

+ (id)decodeHandwritingFromData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v10 = 0;
    goto LABEL_32;
  }

  v4 = [[HWPMessage alloc] initWithData:dataCopy];
  if (!v4)
  {
    NSLog(&cfstr_UnableToUnarch_0.isa);
LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  v5 = [HWPDrawing alloc];
  drawing = [(HWPMessage *)v4 drawing];
  v7 = [(HWPDrawing *)v5 initWithData:drawing];

  if (v7)
  {
    if ([(HWPDrawing *)v7 compressionAlgorithm]< 2)
    {
      strokes = [(HWPDrawing *)v7 strokes];
      if (!strokes)
      {
LABEL_28:
        NSLog(&cfstr_NoArchivedstro.isa);
        goto LABEL_29;
      }
    }

    else
    {
      v8 = [(HWPDrawing *)v7 compressionAlgorithm]- 2;
      if (v8 > 4)
      {
        v9 = -1;
      }

      else
      {
        v9 = dword_249D9D7F0[v8];
      }

      compressionAlgorithm = [(HWPDrawing *)v7 compressionAlgorithm];
      if (compressionAlgorithm >= 7)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", compressionAlgorithm];
      }

      else
      {
        v36 = off_278FB76B0[compressionAlgorithm];
      }

      strokes2 = [(HWPDrawing *)v7 strokes];
      v38 = [strokes2 length];

      decompressedLength = [(HWPDrawing *)v7 decompressedLength];
      strokes3 = [(HWPDrawing *)v7 strokes];
      bytes = [strokes3 bytes];

      v42 = malloc_type_calloc(decompressedLength, 1uLL, 0x70119030uLL);
      if (v42)
      {
        v43 = v42;
        v44 = compression_decode_buffer(v42, decompressedLength, bytes, v38, 0, v9);
        if (v44)
        {
          strokes = [MEMORY[0x277CBEA90] dataWithBytes:v43 length:v44];
        }

        else
        {
          NSLog(&cfstr_DecodingZuByte.isa, v38, v36);
          strokes = 0;
        }

        free(v43);
      }

      else
      {
        strokes = 0;
      }

      if (!strokes)
      {
        goto LABEL_28;
      }
    }

    encodedCanvasSize = [(HWPDrawing *)v7 encodedCanvasSize];
    v13 = HW_CGSizeFromIntegralData(encodedCanvasSize);
    v15 = v14;

    encodedStrokesFrame = [(HWPDrawing *)v7 encodedStrokesFrame];
    v17 = HW_CGRectFromIntegralData(encodedStrokesFrame);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    strokesCount = [(HWPDrawing *)v7 strokesCount];
    strokeDataFieldCount = [(HWPDrawing *)v7 strokeDataFieldCount];
    if (strokeDataFieldCount < 4)
    {
      NSLog(&cfstr_InvalidStroked.isa);
LABEL_29:

      goto LABEL_30;
    }

    v26 = strokeDataFieldCount;
    v27 = objc_alloc_init(DKDrawing);
    [(DKDrawing *)v27 setStrokesFrame:v17, v19, v21, v23];
    [(DKDrawing *)v27 setCanvasBounds:0.0, 0.0, v13, v15];
    v28 = [HWEncoding decodedBrushStrokesWithData:strokes inCanvasBounds:v26 inStrokesFrame:strokesCount strokeDataFieldCount:0.0 count:0.0, v13, v15, v17, v19, v21, v23];
    if (!v28)
    {
      NSLog(&cfstr_FailedToUnarch.isa);

      goto LABEL_29;
    }

    v29 = v28;
    [(DKDrawing *)v27 setStrokes:v28];
    v30 = [(HWPMessage *)v4 creationDate]/ 1000.0;
    v10 = [[HWHandwritingItem alloc] initWithDrawing:v27];
    v31 = objc_alloc(MEMORY[0x277CCAD78]);
    identifier = [(HWPMessage *)v4 identifier];
    v33 = [v31 initWithUUIDString:identifier];
    [(HWHandwritingItem *)v10 setUuid:v33];

    v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v30];
    [(HWHandwritingItem *)v10 setCreationDate:v34];
  }

  else
  {
    NSLog(&cfstr_UnableToUnarch.isa);
    v10 = 0;
  }

LABEL_31:
LABEL_32:

  return v10;
}

+ (id)protoMessageFromHandwriting:(id)handwriting
{
  if (handwriting)
  {
    handwritingCopy = handwriting;
    v4 = objc_alloc_init(HWPMessage);
    creationDate = [handwritingCopy creationDate];
    [creationDate timeIntervalSinceReferenceDate];
    [(HWPMessage *)v4 setCreationDate:(v6 * 1000.0)];

    uuid = [handwritingCopy uuid];

    uUIDString = [uuid UUIDString];
    [(HWPMessage *)v4 setIdentifier:uUIDString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)encodeBrushStrokesAsData:(id)data inCanvasBounds:(CGRect)bounds inStrokesFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = bounds.origin.y;
  v10 = bounds.origin.x;
  v66 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  strokes = [dataCopy strokes];
  v12 = [strokes count];
  totalPoints = [dataCopy totalPoints];
  v53 = [MEMORY[0x277CBEB28] dataWithLength:8 * totalPoints + 2 * v12];
  mutableBytes = [v53 mutableBytes];
  memset(&v64, 0, sizeof(v64));
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v63.a = *MEMORY[0x277CBF2C0];
  *&v63.c = v14;
  *&v63.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformTranslate(&v64, &v63, v10 - x, v9 - y);
  if (v12)
  {
    v15 = 0;
    v16 = 0;
    __asm { FMOV            V14.2S, #1.0 }

    v22 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v57 = v16;
      v23 = [strokes objectAtIndex:?];
      strokePoints = [v23 strokePoints];
      v25 = [strokePoints count];

      *(mutableBytes + 2 * v15++) = v25;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v56 = v23;
      strokePoints2 = [v23 strokePoints];
      v27 = [strokePoints2 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v60;
        do
        {
          v30 = 0;
          v31 = mutableBytes + 4 + 2 * v15;
          v15 += 4 * v28;
          do
          {
            if (*v60 != v29)
            {
              objc_enumerationMutation(strokePoints2);
            }

            v32 = *(*(&v59 + 1) + 8 * v30);
            [v32 location];
            [v32 setLocation:{vaddq_f64(*&v64.tx, vmlaq_n_f64(vmulq_n_f64(*&v64.c, v33), *&v64.a, v34))}];
            if (v32)
            {
              v35 = v32;
              [v35 location];
              v37 = v36;
              v39 = v38;
              v68.origin.x = 0.0;
              v68.origin.y = 0.0;
              v68.size.width = width;
              v68.size.height = height;
              v40 = v37 / CGRectGetWidth(v68);
              v69.origin.x = 0.0;
              v69.origin.y = 0.0;
              v69.size.width = width;
              v69.size.height = height;
              *&v41 = v39 / CGRectGetHeight(v69);
              v58 = v41;
              [v35 force];
              *&v42 = v42;
              *&v39 = *&v42 / *&MaxForceValue;
              [v35 velocity];
              v44 = v43;

              v45 = v44;
              v46.f32[0] = v45 / *&MaxVelocityValue;
              LODWORD(v47) = llroundf((*&v39 + 1.0) * 32767.0);
              v46.i32[1] = v58;
              v48 = vcvt_s32_f32(vrnda_f32(vmul_f32(vadd_f32(v46, _D14), v22)));
              v49.i64[0] = v48.u32[0];
              v49.i64[1] = v48.u32[1];
              v50 = vshlq_u64(v49, xmmword_249D9D7E0);
              v51 = v50.i64[0] | (v47 << 48) | __PAIR64__(v50.u32[1], llroundf((v40 + 1.0) * 32767.0)) | v50.i64[1];
            }

            else
            {
              v51 = 0;
            }

            *(v31 - 4) = v51;
            ++v30;
            v31 += 8;
          }

          while (v28 != v30);
          v28 = [strokePoints2 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v28);
      }

      v16 = v57 + 1;
    }

    while (v57 + 1 != v12);
  }

  return v53;
}

+ (id)decodedBrushStrokesWithData:(id)data inCanvasBounds:(CGRect)bounds inStrokesFrame:(CGRect)frame strokeDataFieldCount:(unsigned int)count count:(unint64_t)a7
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13 = bounds.origin.y;
  v14 = bounds.origin.x;
  dataCopy = data;
  v16 = dataCopy;
  if (count > 3)
  {
    v17 = [dataCopy length];
    v43 = 0;
    if (a7 && v17)
    {
      v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:a7];
      memset(&v50, 0, sizeof(v50));
      v18 = *(MEMORY[0x277CBF2C0] + 16);
      *&v49.a = *MEMORY[0x277CBF2C0];
      *&v49.c = v18;
      *&v49.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformTranslate(&v50, &v49, -(v14 - x), -(v13 - y));
      bytes = [v16 bytes];
      v40 = v16;
      v19 = [v16 length];
      if (v19 >= 2)
      {
        v20 = 0;
        v21 = 0;
        v48 = v19 >> 1;
        countCopy = count;
        v45 = 2 * count;
        v46 = count - 1;
        v41 = a7;
        do
        {
          v44 = v21;
          v23 = objc_alloc_init(DKDrawingStroke);
          v47 = *(bytes + 2 * v20);
          if (*(bytes + 2 * v20))
          {
            v24 = 0;
            v25 = (bytes + 2 + 2 * v20++);
            do
            {
              if (v46 + v20 >= v48)
              {
                break;
              }

              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = 0;
              do
              {
                if (v26 > 1)
                {
                  if (v26 == 2)
                  {
                    v28 = v25[2];
                  }

                  else if (v26 == 3)
                  {
                    v27 = v25[3];
                  }
                }

                else if (v26)
                {
                  if (v26 == 1)
                  {
                    v29 = v25[1];
                  }
                }

                else
                {
                  v30 = *v25;
                }

                ++v26;
              }

              while (countCopy != v26);
              v20 += countCopy;
              v31 = objc_alloc_init(DKDrawingStrokePoint);
              v52.origin.x = 0.0;
              v52.origin.y = 0.0;
              v52.size.width = width;
              v52.size.height = height;
              v32 = CGRectGetWidth(v52) * ((v30 / 32767.0) + -1.0);
              v53.origin.x = 0.0;
              v53.origin.y = 0.0;
              v53.size.width = width;
              v53.size.height = height;
              v33 = CGRectGetHeight(v53);
              v34 = ((v28 / 32767.0) + -1.0) * *&MaxVelocityValue;
              v35 = ((v27 / 32767.0) + -1.0) * *&MaxForceValue;
              [(DKDrawingStrokePoint *)v31 setLocation:v32, v33 * ((v29 / 32767.0) + -1.0)];
              [(DKDrawingStrokePoint *)v31 setForce:v35];
              [(DKDrawingStrokePoint *)v31 setVelocity:v34];
              [(DKDrawingStrokePoint *)v31 location];
              [(DKDrawingStrokePoint *)v31 setLocation:vaddq_f64(*&v50.tx, vmlaq_n_f64(vmulq_n_f64(*&v50.c, v36), *&v50.a, v37))];
              strokePoints = [(DKDrawingStroke *)v23 strokePoints];
              [strokePoints addObject:v31];

              ++v24;
              v25 = (v25 + v45);
            }

            while (v24 != v47);
          }

          else
          {
            ++v20;
          }

          [v43 addObject:v23];

          v21 = v44 + 1;
        }

        while (v44 + 1 < v41 && v20 < v48);
      }

      v16 = v40;
    }
  }

  else
  {
    NSLog(&cfstr_UnexpecedStrok.isa);
    v43 = 0;
  }

  return v43;
}

+ (void)writeDataToDisk:(id)disk withName:(id)name
{
  nameCopy = name;
  diskCopy = disk;
  v7 = NSTemporaryDirectory();
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  if ([nameCopy length])
  {
    v9 = nameCopy;
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v9 = [v10 stringWithFormat:@"handwriting_%@.data", uUIDString];
  }

  v13 = [v8 URLByAppendingPathComponent:v9];

  v16 = 0;
  [diskCopy writeToURL:v13 options:1 error:&v16];

  v14 = v16;
  v15 = v14;
  if (v14)
  {
    NSLog(&stru_285CFDA38.isa, v14);
  }

  else
  {
    NSLog(&cfstr_WrotePayloadTo.isa, v13);
  }
}

+ (id)protoDrawingFromDrawing:(id)drawing compress:(BOOL)compress
{
  if (drawing)
  {
    compressCopy = compress;
    v5 = [drawing copy];
    v6 = objc_alloc_init(HWPDrawing);
    [v5 canvasBounds];
    v9 = HW_DataFromIntegralCGSize(v7, v8);
    [v5 strokesFrame];
    v14 = HW_DataFromIntegralCGRect(v10, v11, v12, v13);
    [v5 canvasBounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v5 strokesFrame];
    v27 = [HWEncoding encodeBrushStrokesAsData:v5 inCanvasBounds:v16 inStrokesFrame:v18, v20, v22, v23, v24, v25, v26];
    v28 = v27;
    if (compressCopy)
    {
      v29 = [v27 length];
      v30 = malloc_type_calloc(v29, 1uLL, 0x100004077774924uLL);
      if (v30)
      {
        v31 = v30;
        v32 = compression_encode_buffer(v30, v29, [v28 bytes], v29, 0, COMPRESSION_LZMA);
        if (v32)
        {
          v33 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:v32];

          [(HWPDrawing *)v6 setCompressionAlgorithm:4];
          [(HWPDrawing *)v6 setDecompressedLength:v29];
          v28 = v33;
        }

        else
        {
          [(HWPDrawing *)v6 setCompressionAlgorithm:1];
        }

        free(v31);
      }
    }

    [(HWPDrawing *)v6 setEncodedCanvasSize:v9];
    [(HWPDrawing *)v6 setEncodedStrokesFrame:v14];
    [(HWPDrawing *)v6 setStrokes:v28];
    strokes = [v5 strokes];
    -[HWPDrawing setStrokesCount:](v6, "setStrokesCount:", [strokes count]);

    [(HWPDrawing *)v6 setStrokeDataFieldCount:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end