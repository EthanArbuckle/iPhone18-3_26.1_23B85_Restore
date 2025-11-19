@interface NTKRawImage
+ (id)rawImageWithImage:(id)a3 width:(int)a4 height:(int)a5;
- (NTKRawImage)initWithContent:(NTKRawImage *)self width:(SEL)a2 height:;
- (id)scaleToWidth:(int)a3 height:(int)a4;
- (void)dealloc;
- (void)write:(id)a3;
@end

@implementation NTKRawImage

- (NTKRawImage)initWithContent:(NTKRawImage *)self width:(SEL)a2 height:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v12.receiver = self;
  v12.super_class = NTKRawImage;
  v8 = [(NTKRawImage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_contents = v7;
    v8->_width = v6;
    v8->_height = v5;
    v10 = v8;
  }

  return v9;
}

- (void)dealloc
{
  free(self->_contents);
  v3.receiver = self;
  v3.super_class = NTKRawImage;
  [(NTKRawImage *)&v3 dealloc];
}

+ (id)rawImageWithImage:(id)a3 width:(int)a4 height:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = a3;
  v8 = [v7 CGImage];
  Width = CGImageGetWidth(v8);
  Height = CGImageGetHeight(v8);
  v11 = 0;
  if (v7 && Width >= 1 && Height >= 1)
  {
    v17 = malloc_type_malloc(16 * v6 * v5, 0x1000040451B5BE8uLL);
    v12 = v5 * v6;
    if (v5 * v6 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = malloc_type_malloc(4 * (v5 * v6), 0x100004052888210uLL);
    }

    v14 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    v15 = CGBitmapContextCreate(v13, v6, v5, 8uLL, (4 * v6), v14, 1u);
    bzero(v13, 4 * v12);
    v19.size.width = v6;
    v19.size.height = v5;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    CGContextDrawImage(v15, v19, v8);
    if (v12 >= 1)
    {
      CLKUIConvertToRGBfFromSRGB8_fast();
    }

    CGContextRelease(v15);
    CGColorSpaceRelease(v14);
    v11 = [[NTKRawImage alloc] initWithContent:v17 width:v6 height:v5];
    free(v13);
  }

  return v11;
}

- (id)scaleToWidth:(int)a3 height:(int)a4
{
  width = self->_width;
  if (width == a3 && self->_height == a4)
  {
    v14 = self;
  }

  else
  {
    v8 = *&a3;
    height = self->_height;
    v10 = malloc_type_malloc(16 * a3 * a4, 0x1000040451B5BE8uLL);
    v11 = v8 / width;
    contents = self->_contents;
    v68 = v10;
    v74 = height;
    v12 = a4 / height;
    if (height * v8 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = malloc_type_malloc(16 * (height * v8), 0x1000040451B5BE8uLL);
    }

    v15 = 1.0 / v11;
    v16 = (((1.0 / v12) * 2.0) + 1.0);
    v69 = v16;
    v70 = (((1.0 / v11) * 2.0) + 1.0);
    if (v70 > v16)
    {
      v16 = (((1.0 / v11) * 2.0) + 1.0);
    }

    if (v8 <= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = v8;
    }

    v18 = v16 * v17;
    if (v18 < 1)
    {
      v72 = 0;
      v73 = 0;
    }

    else
    {
      v19 = 4 * v18;
      v73 = malloc_type_malloc(v19, 0x100004052888210uLL);
      v72 = malloc_type_malloc(v19, 0x100004052888210uLL);
    }

    v66 = 1.0 / v12;
    if (v17 < 1)
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
      v21 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
    }

    if (v8 >= 1)
    {
      v22 = 0;
      do
      {
        v21[v22] = 0;
        v20[v22] = 0;
        v23 = v22 / v11;
        v24 = ((v23 + 0.5) - v15);
        v25 = (v24 + (v15 * 2.0));
        v26 = 0.0;
        if (v24 <= v25)
        {
          v27 = 0;
          v28 = v25 + 1;
          do
          {
            if ((v24 & 0x80000000) == 0 && v24 < width)
            {
              v29 = v11 * (v23 - v24);
              if (fabsf(v29) < 1.0)
              {
                v30 = v29 * 3.14159265;
                v31 = (cosf(v30) + 1.0) * 0.5;
                if (v31 > 0.0)
                {
                  v72[v22 * v70 + v27] = v24;
                  v73[v22 * v70 + v27] = v31;
                  v26 = v31 + *&v20[v22];
                  *&v20[v22] = v26;
                  v27 = v21[v22] + 1;
                  v21[v22] = v27;
                }
              }
            }

            ++v24;
          }

          while (v28 != v24);
        }

        *&v20[v22++] = 1.0 / v26;
      }

      while (v22 != v8);
    }

    if (v74 >= 1)
    {
      v32 = 0;
      v33 = 4 * v70;
      do
      {
        if (v8 >= 1)
        {
          v34 = 0;
          v35 = v72;
          v36 = v73;
          do
          {
            v37 = v21[v34];
            v38 = 0uLL;
            if (v37 >= 1)
            {
              v39 = v35;
              v40 = v36;
              do
              {
                v41 = *v39++;
                v42 = *&contents[4 * v32 * width + 4 * v41];
                *&v41 = *v40++;
                v38 = vmlaq_n_f32(v38, v42, *&v41);
                --v37;
              }

              while (v37);
            }

            v13[v34 + v32 * v8] = vmulq_n_f32(v38, *&v20[v34]);
            ++v34;
            v36 = (v36 + v33);
            v35 = (v35 + v33);
          }

          while (v34 != v8);
        }

        ++v32;
      }

      while (v32 != v74);
    }

    v71 = a4;
    if (a4 >= 1)
    {
      v43 = 0;
      do
      {
        v21[v43] = 0;
        v20[v43] = 0;
        v44 = v43 / v12;
        v45 = ((v44 + 0.5) - v66);
        v46 = (v45 + (v66 * 2.0));
        v47 = 0.0;
        if (v45 <= v46)
        {
          v48 = 0;
          v49 = v46 + 1;
          do
          {
            if ((v45 & 0x80000000) == 0 && v45 < v74)
            {
              v50 = v12 * (v44 - v45);
              if (fabsf(v50) < 1.0)
              {
                v51 = v50 * 3.14159265;
                v52 = (cosf(v51) + 1.0) * 0.5;
                if (v52 > 0.0)
                {
                  v72[v43 * v69 + v48] = v45;
                  v73[v43 * v69 + v48] = v52;
                  v47 = v52 + *&v20[v43];
                  *&v20[v43] = v47;
                  v48 = v21[v43] + 1;
                  v21[v43] = v48;
                }
              }
            }

            ++v45;
          }

          while (v49 != v45);
        }

        *&v20[v43++] = 1.0 / v47;
      }

      while (v43 != v71);
    }

    if (v8 >= 1)
    {
      v53 = 0;
      v54 = 4 * v69;
      do
      {
        if (v71 >= 1)
        {
          v55 = 0;
          v56 = v72;
          v57 = v73;
          do
          {
            v58 = v21[v55];
            v59 = 0uLL;
            if (v58 >= 1)
            {
              v60 = v56;
              v61 = v57;
              do
              {
                v62 = *v60++;
                v63 = v13[v53 + v62 * v8];
                v64 = *v61++;
                v59 = vmlaq_n_f32(v59, v63, v64);
                --v58;
              }

              while (v58);
            }

            v68[v53 + v55 * v8] = vmulq_n_f32(v59, *&v20[v55]);
            ++v55;
            v57 = (v57 + v54);
            v56 = (v56 + v54);
          }

          while (v55 != v71);
        }

        ++v53;
      }

      while (v53 != v8);
    }

    v14 = [[NTKRawImage alloc] initWithContent:v68 width:v8 height:v71];
    free(v21);
    free(v20);
    free(v72);
    free(v73);
    free(v13);
  }

  return v14;
}

- (void)write:(id)a3
{
  v4 = a3;
  width = self->_width;
  height = self->_height;
  v11 = height * width;
  v12 = height * width;
  v9 = v4;
  if (height * width <= 0)
  {
    v8 = v4;
    v7 = 0;
    v10 = 0;
  }

  else
  {
    v7 = malloc_type_malloc(4 * (height * width), 0x100004052888210uLL);
    width = self->_width;
    height = self->_height;
    v10 = v7;
    if (height * width >= 1)
    {
      CLKUIConvertToSRGB8FromRGBf_fast();
    }

    v8 = v9;
  }

  _NTKRawWriteToFile(&v10, width, height, v8);
  free(v7);
}

@end