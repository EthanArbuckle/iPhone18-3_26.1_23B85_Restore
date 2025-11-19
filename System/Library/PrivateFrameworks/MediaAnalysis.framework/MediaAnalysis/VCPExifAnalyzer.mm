@interface VCPExifAnalyzer
- (CGAffineTransform)transformUprightAboutTopLeft:(SEL)a3;
- (VCPExifAnalyzer)initWithProperties:(id)a3 forAnalysisTypes:(unint64_t)a4;
- (int)addFaceResults:(id)a3 flags:(unint64_t *)a4;
- (int)analyzeAsset:(unint64_t *)a3 results:(id *)a4;
@end

@implementation VCPExifAnalyzer

- (VCPExifAnalyzer)initWithProperties:(id)a3 forAnalysisTypes:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = VCPExifAnalyzer;
  v8 = [(VCPExifAnalyzer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      objc_storeStrong(&v8->_properties, a3);
      results = v9->_results;
      v9->_requestedAnalyses = a4;
      v9->_results = 0;

      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGAffineTransform)transformUprightAboutTopLeft:(SEL)a3
{
  if (a4 <= 4)
  {
    if (a4 == 2)
    {
      retstr->b = 0.0;
      retstr->c = 0.0;
      retstr->a = -1.0;
      __asm { FMOV            V0.2D, #1.0 }

      *&retstr->d = _Q0;
      retstr->ty = 0.0;
      return self;
    }

    if (a4 != 3)
    {
      if (a4 != 4)
      {
LABEL_13:
        v10 = MEMORY[0x1E695EFD0];
        v11 = *(MEMORY[0x1E695EFD0] + 16);
        *&retstr->a = *MEMORY[0x1E695EFD0];
        *&retstr->c = v11;
        v4 = *(v10 + 32);
        goto LABEL_14;
      }

      retstr->b = 0.0;
      retstr->c = 0.0;
      retstr->a = 1.0;
      *&retstr->d = xmmword_1C9F60600;
LABEL_19:
      retstr->ty = 1.0;
      return self;
    }

    retstr->b = 0.0;
    retstr->c = 0.0;
    retstr->a = -1.0;
    v13 = xmmword_1C9F60750;
LABEL_18:
    *&retstr->d = v13;
    goto LABEL_19;
  }

  if (a4 > 6)
  {
    if (a4 != 7)
    {
      if (a4 == 8)
      {
        *&retstr->a = xmmword_1C9F60790;
        retstr->c = 1.0;
        retstr->d = 0.0;
        retstr->tx = 0.0;
        retstr->ty = 1.0;
        return self;
      }

      goto LABEL_13;
    }

    retstr->a = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&retstr->b = _Q0;
    v13 = xmmword_1C9F61010;
    goto LABEL_18;
  }

  if (a4 != 5)
  {
    *&retstr->a = xmmword_1C9F61010;
    *&retstr->c = xmmword_1C9F60600;
    v4 = xmmword_1C9F60780;
LABEL_14:
    *&retstr->tx = v4;
    return self;
  }

  *&retstr->a = xmmword_1C9F61010;
  retstr->c = 1.0;
  retstr->d = 0.0;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
  return self;
}

- (int)addFaceResults:(id)a3 flags:(unint64_t *)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61 = v4;
  if (v4)
  {
    v5 = [v4 objectForKey:@"Orientation"];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&v75.a = *MEMORY[0x1E695EFD0];
    *&v75.c = v6;
    *&v75.tx = *(MEMORY[0x1E695EFD0] + 32);
    v55 = v5;
    if (v5)
    {
      -[VCPExifAnalyzer transformUprightAboutTopLeft:](self, "transformUprightAboutTopLeft:", [v5 intValue]);
      v75 = t1;
    }

    t1 = v75;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.a = 1.0;
    *&t2.d = xmmword_1C9F60600;
    t2.ty = 1.0;
    CGAffineTransformConcat(&v75, &t1, &t2);
    v7 = [v61 objectForKey:*MEMORY[0x1E696D8B0]];
    v52 = v7;
    if (!v7)
    {
      v62 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v8 = [v7 objectForKey:@"Regions"];
    v50 = v8;
    if (!v8)
    {
      v62 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v49 = [v8 objectForKey:*MEMORY[0x1E696D930]];
    if (!v49)
    {
      v62 = 0;
LABEL_48:

      goto LABEL_49;
    }

    v53 = [MEMORY[0x1E695DF70] array];
    if (v53)
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v49;
      v9 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
      if (v9)
      {
        v62 = 0;
        v66 = *v70;
        v65 = *MEMORY[0x1E696D938];
        v64 = *MEMORY[0x1E696D918];
        v59 = *MEMORY[0x1E696D948];
        v58 = *MEMORY[0x1E696D950];
        v57 = *MEMORY[0x1E696D940];
        v56 = *MEMORY[0x1E696D928];
        v10 = 0.0;
LABEL_10:
        v67 = v9;
        v11 = 0;
        while (1)
        {
          if (*v70 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v69 + 1) + 8 * v11);
          v13 = [v12 objectForKey:v65];
          if ([v13 isEqualToString:v64])
          {
            v68 = [v12 objectForKey:v59];
            v14 = [v12 objectForKey:v58];
            v15 = [v12 objectForKey:v57];
            v16 = [v12 objectForKey:v56];
            v17 = !v68 || v14 == 0;
            v18 = v17 || v15 == 0;
            v19 = v18 || v16 == 0;
            v20 = !v19;
            v63 = v20;
            if (v19)
            {
              v62 = -18;
            }

            else
            {
              memset(&t2, 0, 32);
              [v68 floatValue];
              v22 = v21;
              [v15 floatValue];
              v24 = v23;
              [v14 floatValue];
              v26 = v25;
              [v16 floatValue];
              v28 = v27;
              [v15 floatValue];
              v30 = v29;
              [v16 floatValue];
              v32 = (v22 + (v24 * -0.5));
              v35 = v31;
              t2.a = v32;
              t2.b = (v26 + (v28 * -0.5));
              t2.c = v30;
              t2.d = v31;
              v36 = v31 >= v30 ? v31 : v30;
              if (v10 < v36)
              {
                v10 = v36;
              }

              t1 = v75;
              v37 = v32;
              v33 = (v26 + (v28 * -0.5));
              v34 = v30;
              v87 = CGRectApplyAffineTransform(*(&v35 - 3), &t1);
              t2.a = v87.origin.x;
              t2.b = v87.origin.y;
              t2.c = v87.size.width;
              t2.d = v87.size.height;
              v38 = MediaAnalysisFacePosition(&t2);
              v83[0] = @"flags";
              v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:16 * (v36 >= 0.449999988)];
              v83[1] = @"attributes";
              v84[0] = v39;
              v81[0] = @"facePosition";
              v40 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
              v81[1] = @"faceBounds";
              v82[0] = v40;
              v88.origin.x = t2.a;
              v88.origin.y = t2.b;
              v88.size.width = t2.c;
              v88.size.height = t2.d;
              v41 = NSStringFromRect(v88);
              v82[1] = v41;
              v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
              v84[1] = v42;
              v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
              [v53 addObject:v43];
            }

            if (!v63)
            {
              break;
            }
          }

          if (v67 == ++v11)
          {
            v9 = [obj countByEnumeratingWithState:&v69 objects:v85 count:16];
            if (v9)
            {
              goto LABEL_10;
            }

            goto LABEL_44;
          }
        }
      }

      else
      {
        v62 = 0;
        v10 = 0.0;
LABEL_44:

        if (![v53 count])
        {
          goto LABEL_47;
        }

        *a4 |= 0x20uLL;
        [(NSMutableDictionary *)self->_results setObject:v53 forKey:@"FaceResults"];
        v44 = MediaAnalysisShotType(v10);
        results = self->_results;
        v78 = @"attributes";
        v76 = @"shotType";
        obj = [MEMORY[0x1E696AD98] numberWithInteger:v44];
        v77 = obj;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v79 = v13;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v80 = v46;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
        [(NSMutableDictionary *)results setObject:v47 forKey:@"ShotTypeResults"];
      }
    }

    else
    {
      v62 = -108;
    }

LABEL_47:

    goto LABEL_48;
  }

  v62 = -50;
LABEL_51:

  return v62;
}

- (int)analyzeAsset:(unint64_t *)a3 results:(id *)a4
{
  *a4 = 0;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  results = self->_results;
  self->_results = v6;

  v8 = self->_results;
  if (!v8)
  {
    return -108;
  }

  if (!self->_properties || (self->_requestedAnalyses & 4) == 0)
  {
    goto LABEL_6;
  }

  v9 = [VCPExifAnalyzer addFaceResults:"addFaceResults:flags:" flags:?];
  if (!v9)
  {
    v8 = self->_results;
LABEL_6:
    v10 = v8;
    v9 = 0;
    *a4 = v10;
  }

  return v9;
}

@end