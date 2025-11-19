@interface VCPVideoMetaFaceAnalyzer
- (CGAffineTransform)flipTransform:(SEL)a3;
- (VCPVideoMetaFaceAnalyzer)initWithTransform:(CGAffineTransform *)a3;
- (id)publicResults;
- (int)finalizeAnalysis;
- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4;
@end

@implementation VCPVideoMetaFaceAnalyzer

- (VCPVideoMetaFaceAnalyzer)initWithTransform:(CGAffineTransform *)a3
{
  v14.receiver = self;
  v14.super_class = VCPVideoMetaFaceAnalyzer;
  v4 = [(VCPVideoMetaFaceAnalyzer *)&v14 init];
  v5 = v4;
  if (v4)
  {
    activeFaces = v4->_activeFaces;
    v4->_activeFaces = 0;

    v7 = *&a3->c;
    v13[0] = *&a3->a;
    v13[1] = v7;
    v13[2] = *&a3->tx;
    [(VCPVideoMetaFaceAnalyzer *)v5 flipTransform:v13];
    v9 = v13[4];
    v8 = v13[5];
    *&v5->_transform.a = v13[3];
    *&v5->_transform.c = v9;
    *&v5->_transform.tx = v8;
    faceResults = v5->_faceResults;
    v5->_faceResults = 0;

    v11 = v5;
  }

  return v5;
}

- (CGAffineTransform)flipTransform:(SEL)a3
{
  if (a4->tx != 0.0)
  {
    a4->tx = 1.0;
  }

  if (a4->ty != 0.0)
  {
    a4->ty = 1.0;
  }

  v10 = v4;
  v11 = v5;
  v8.b = 0.0;
  v8.c = 0.0;
  v6 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v6;
  *&t1.tx = *&a4->tx;
  v8.a = 1.0;
  *&v8.d = xmmword_1C9F60600;
  v8.ty = 1.0;
  return CGAffineTransformConcat(retstr, &t1, &v8);
}

- (int)processMetadataGroup:(id)a3 flags:(unint64_t *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = v5;
  if (v5)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = [v5 items];
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      obj = v6;
      v26 = *v39;
      while (2)
      {
        v27 = v7;
        for (i = 0; i != v27; ++i)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v38 + 1) + 8 * i);
          v10 = [v9 value];
          memset(&v37, 0, sizeof(v37));
          [v10 bounds];
          v11 = *&self->_transform.c;
          *&v36.a = *&self->_transform.a;
          v12 = *&self->_transform.tx;
          *&v36.c = v11;
          *&v36.tx = v12;
          v37 = CGRectApplyAffineTransform(v45, &v36);
          v13 = MediaAnalysisFacePosition(&v37);
          *a4 |= 0x20uLL;
          activeFaces = self->_activeFaces;
          if (!activeFaces)
          {
            v15 = [MEMORY[0x1E695DF90] dictionary];
            v16 = self->_activeFaces;
            self->_activeFaces = v15;

            activeFaces = self->_activeFaces;
            if (!activeFaces)
            {

              v22 = -108;
              goto LABEL_26;
            }
          }

          v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "faceID")}];
          v18 = [(NSMutableDictionary *)activeFaces objectForKey:v17];

          if (v18)
          {
            if (v9)
            {
              [v9 time];
              [v9 duration];
            }

            else
            {
              v33 = 0uLL;
              v34 = 0.0;
              memset(&v32, 0, sizeof(v32));
            }

            *&v36.a = v33;
            v36.c = v34;
            rhs = v32;
            CMTimeAdd(&v35, &v36, &rhs);
            *&v36.a = *&v35.value;
            *&v36.c = v35.epoch;
            [v18 setLast:&v36];
            [v18 setPosition:{objc_msgSend(v18, "position") | v13}];
          }

          else
          {
            v19 = objc_alloc_init(VCPFaceDetectionRange);
            if (v9)
            {
              [v9 time];
            }

            else
            {
              v30 = 0uLL;
              v31 = 0.0;
            }

            *&v36.a = v30;
            v36.c = v31;
            [(VCPFaceDetectionRange *)v19 setStart:&v36];
            if (v9)
            {
              [v9 time];
              [v9 duration];
            }

            else
            {
              v33 = 0uLL;
              v34 = 0.0;
              memset(&v32, 0, sizeof(v32));
            }

            *&v36.a = v33;
            v36.c = v34;
            rhs = v32;
            CMTimeAdd(&v29, &v36, &rhs);
            *&v36.a = *&v29.value;
            *&v36.c = v29.epoch;
            [(VCPFaceDetectionRange *)v19 setLast:&v36];
            [(VCPFaceDetectionRange *)v19 setBounds:v37.origin.x, v37.origin.y, v37.size.width, v37.size.height];
            [(VCPFaceDetectionRange *)v19 setPosition:v13];
            v20 = self->_activeFaces;
            v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "faceID")}];
            [(NSMutableDictionary *)v20 setObject:v19 forKey:v21];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v22 = 0;
LABEL_26:
      v6 = obj;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = -50;
  }

  return v22;
}

- (int)finalizeAnalysis
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_faceResults)
  {
    v2 = [MEMORY[0x1E695DF70] array];
    faceResults = self->_faceResults;
    self->_faceResults = v2;

    if (!self->_faceResults)
    {
      return -108;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_activeFaces;
    v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v4)
    {
      v17 = *v23;
      do
      {
        v19 = v4;
        for (i = 0; i != v19; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [(NSMutableDictionary *)self->_activeFaces objectForKey:*(*(&v22 + 1) + 8 * i)];
          v7 = v6;
          v8 = self->_faceResults;
          v30[0] = @"start";
          if (v6)
          {
            [v6 start];
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
          }

          time = rhs;
          v9 = CMTimeCopyAsDictionary(&time, 0);
          v31[0] = v9;
          v30[1] = @"duration";
          if (v7)
          {
            [v7 last];
            [v7 start];
          }

          else
          {
            memset(v20, 0, sizeof(v20));
          }

          time = v20[1];
          rhs = v20[0];
          CMTimeSubtract(&v21, &time, &rhs);
          time = v21;
          v10 = CMTimeCopyAsDictionary(&time, 0);
          v31[1] = v10;
          v31[2] = &unk_1F49BB998;
          v30[2] = @"flags";
          v30[3] = @"attributes";
          v28[0] = @"facePosition";
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "position")}];
          v28[1] = @"faceBounds";
          v29[0] = v11;
          [v7 bounds];
          v12 = NSStringFromRect(v34);
          v29[1] = v12;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
          v31[3] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
          [(NSMutableArray *)v8 addObject:v14];
        }

        v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v4);
    }
  }

  return 0;
}

- (id)publicResults
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_faceResults count];
  if (v3)
  {
    faceResults = self->_faceResults;
    v6 = @"FaceResults";
    v7[0] = faceResults;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

@end