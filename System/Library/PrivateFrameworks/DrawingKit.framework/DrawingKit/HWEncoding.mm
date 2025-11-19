@interface HWEncoding
+ (id)decodeHandwritingFromData:(id)a3;
+ (id)decodedBrushStrokesWithData:(id)a3 inCanvasBounds:(CGRect)a4 inStrokesFrame:(CGRect)a5 strokeDataFieldCount:(unsigned int)a6 count:(unint64_t)a7;
+ (id)encodeBrushStrokesAsData:(id)a3 inCanvasBounds:(CGRect)a4 inStrokesFrame:(CGRect)a5;
+ (id)encodeHandwriting:(id)a3 compress:(BOOL)a4;
+ (id)protoDrawingFromDrawing:(id)a3 compress:(BOOL)a4;
+ (id)protoMessageFromHandwriting:(id)a3;
+ (void)writeDataToDisk:(id)a3 withName:(id)a4;
@end

@implementation HWEncoding

+ (id)encodeHandwriting:(id)a3 compress:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v5 drawing];
  v8 = [v6 protoDrawingFromDrawing:v7 compress:v4];

  v9 = [objc_opt_class() protoMessageFromHandwriting:v5];

  v10 = [v8 data];
  [v9 setDrawing:v10];

  v11 = [v9 data];

  return v11;
}

+ (id)decodeHandwritingFromData:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_32;
  }

  v4 = [[HWPMessage alloc] initWithData:v3];
  if (!v4)
  {
    NSLog(&cfstr_UnableToUnarch_0.isa);
LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  v5 = [HWPDrawing alloc];
  v6 = [(HWPMessage *)v4 drawing];
  v7 = [(HWPDrawing *)v5 initWithData:v6];

  if (v7)
  {
    if ([(HWPDrawing *)v7 compressionAlgorithm]< 2)
    {
      v11 = [(HWPDrawing *)v7 strokes];
      if (!v11)
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

      v35 = [(HWPDrawing *)v7 compressionAlgorithm];
      if (v35 >= 7)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v35];
      }

      else
      {
        v36 = off_278FB76B0[v35];
      }

      v37 = [(HWPDrawing *)v7 strokes];
      v38 = [v37 length];

      v39 = [(HWPDrawing *)v7 decompressedLength];
      v40 = [(HWPDrawing *)v7 strokes];
      v41 = [v40 bytes];

      v42 = malloc_type_calloc(v39, 1uLL, 0x70119030uLL);
      if (v42)
      {
        v43 = v42;
        v44 = compression_decode_buffer(v42, v39, v41, v38, 0, v9);
        if (v44)
        {
          v11 = [MEMORY[0x277CBEA90] dataWithBytes:v43 length:v44];
        }

        else
        {
          NSLog(&cfstr_DecodingZuByte.isa, v38, v36);
          v11 = 0;
        }

        free(v43);
      }

      else
      {
        v11 = 0;
      }

      if (!v11)
      {
        goto LABEL_28;
      }
    }

    v12 = [(HWPDrawing *)v7 encodedCanvasSize];
    v13 = HW_CGSizeFromIntegralData(v12);
    v15 = v14;

    v16 = [(HWPDrawing *)v7 encodedStrokesFrame];
    v17 = HW_CGRectFromIntegralData(v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(HWPDrawing *)v7 strokesCount];
    v25 = [(HWPDrawing *)v7 strokeDataFieldCount];
    if (v25 < 4)
    {
      NSLog(&cfstr_InvalidStroked.isa);
LABEL_29:

      goto LABEL_30;
    }

    v26 = v25;
    v27 = objc_alloc_init(DKDrawing);
    [(DKDrawing *)v27 setStrokesFrame:v17, v19, v21, v23];
    [(DKDrawing *)v27 setCanvasBounds:0.0, 0.0, v13, v15];
    v28 = [HWEncoding decodedBrushStrokesWithData:v11 inCanvasBounds:v26 inStrokesFrame:v24 strokeDataFieldCount:0.0 count:0.0, v13, v15, v17, v19, v21, v23];
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
    v32 = [(HWPMessage *)v4 identifier];
    v33 = [v31 initWithUUIDString:v32];
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

+ (id)protoMessageFromHandwriting:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(HWPMessage);
    v5 = [v3 creationDate];
    [v5 timeIntervalSinceReferenceDate];
    [(HWPMessage *)v4 setCreationDate:(v6 * 1000.0)];

    v7 = [v3 uuid];

    v8 = [v7 UUIDString];
    [(HWPMessage *)v4 setIdentifier:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)encodeBrushStrokesAsData:(id)a3 inCanvasBounds:(CGRect)a4 inStrokesFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.origin.y;
  v10 = a4.origin.x;
  v66 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v55 = [v11 strokes];
  v12 = [v55 count];
  v13 = [v11 totalPoints];
  v53 = [MEMORY[0x277CBEB28] dataWithLength:8 * v13 + 2 * v12];
  v54 = [v53 mutableBytes];
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
      v23 = [v55 objectAtIndex:?];
      v24 = [v23 strokePoints];
      v25 = [v24 count];

      *(v54 + 2 * v15++) = v25;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v56 = v23;
      v26 = [v23 strokePoints];
      v27 = [v26 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v60;
        do
        {
          v30 = 0;
          v31 = v54 + 4 + 2 * v15;
          v15 += 4 * v28;
          do
          {
            if (*v60 != v29)
            {
              objc_enumerationMutation(v26);
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
          v28 = [v26 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v28);
      }

      v16 = v57 + 1;
    }

    while (v57 + 1 != v12);
  }

  return v53;
}

+ (id)decodedBrushStrokesWithData:(id)a3 inCanvasBounds:(CGRect)a4 inStrokesFrame:(CGRect)a5 strokeDataFieldCount:(unsigned int)a6 count:(unint64_t)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v15 = a3;
  v16 = v15;
  if (a6 > 3)
  {
    v17 = [v15 length];
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
      v42 = [v16 bytes];
      v40 = v16;
      v19 = [v16 length];
      if (v19 >= 2)
      {
        v20 = 0;
        v21 = 0;
        v48 = v19 >> 1;
        v22 = a6;
        v45 = 2 * a6;
        v46 = a6 - 1;
        v41 = a7;
        do
        {
          v44 = v21;
          v23 = objc_alloc_init(DKDrawingStroke);
          v47 = *(v42 + 2 * v20);
          if (*(v42 + 2 * v20))
          {
            v24 = 0;
            v25 = (v42 + 2 + 2 * v20++);
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

              while (v22 != v26);
              v20 += v22;
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
              v38 = [(DKDrawingStroke *)v23 strokePoints];
              [v38 addObject:v31];

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

+ (void)writeDataToDisk:(id)a3 withName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSTemporaryDirectory();
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  if ([v5 length])
  {
    v9 = v5;
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    v9 = [v10 stringWithFormat:@"handwriting_%@.data", v12];
  }

  v13 = [v8 URLByAppendingPathComponent:v9];

  v16 = 0;
  [v6 writeToURL:v13 options:1 error:&v16];

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

+ (id)protoDrawingFromDrawing:(id)a3 compress:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v5 = [a3 copy];
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
    if (v4)
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
    v34 = [v5 strokes];
    -[HWPDrawing setStrokesCount:](v6, "setStrokesCount:", [v34 count]);

    [(HWPDrawing *)v6 setStrokeDataFieldCount:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end