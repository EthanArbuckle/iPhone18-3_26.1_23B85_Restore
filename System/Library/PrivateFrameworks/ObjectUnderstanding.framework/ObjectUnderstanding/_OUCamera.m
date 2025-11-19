@interface _OUCamera
- (CGSize)imageResolution;
- (_OUCamera)initWithDictionary:(id)a3;
- (__n128)initWithIntrinsic:(__n128)a3 transform:(__n128)a4;
- (__n128)intrinsics;
- (__n128)pose;
- (__n128)setIntrinsics:(__n128)a3;
- (__n128)setPose:(__n128)a3;
- (__n128)setTransform:(__n128)a3;
- (__n128)transform;
@end

@implementation _OUCamera

- (_OUCamera)initWithDictionary:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = _OUCamera;
  v5 = [(_OUCamera *)&v34 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = [v4 objectForKeyedSubscript:@"intrinsic"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  if ([v8 count] != 3)
  {

LABEL_17:
    goto LABEL_18;
  }

  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v8 objectAtIndexedSubscript:1];
  v11 = [v8 objectAtIndexedSubscript:2];
  for (i = 0; i != 3; ++i)
  {
    v13 = [v9 objectAtIndexedSubscript:i];
    [v13 floatValue];
    v33 = v14;
    v15 = [v10 objectAtIndexedSubscript:i];
    [v15 floatValue];
    v32 = v16;
    v17 = [v11 objectAtIndexedSubscript:i];
    [v17 floatValue];
    v18 = v33;
    DWORD1(v18) = v32;
    DWORD2(v18) = v19;
    *&v5[16 * i + 32] = v18;
  }

  v20 = [v4 objectForKeyedSubscript:@"image_resolution"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v20;
  }

  else
  {
    v8 = 0;
  }

  if (!v8 || [v8 count] != 2)
  {
    goto LABEL_17;
  }

  v21 = [v8 objectAtIndexedSubscript:0];
  [v21 floatValue];
  *(v5 + 1) = v22;

  v23 = [v8 objectAtIndexedSubscript:1];
  [v23 floatValue];
  *(v5 + 2) = v24;

  v25 = [v4 objectForKeyedSubscript:@"pose"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    v28 = float4x4FromNSArray(v26, (v5 + 144));

    if (v28)
    {
      v29 = [v4 objectForKeyedSubscript:@"transform"];
      v27 = objc_cast<NSArray>(v29);

      if (!v27)
      {
        goto LABEL_25;
      }

      v30 = float4x4FromNSArray(v27, (v5 + 80));

      if (v30)
      {
LABEL_24:
        v27 = v5;
        goto LABEL_25;
      }
    }
  }

LABEL_18:
  v27 = 0;
LABEL_25:

  return v27;
}

- (__n128)transform
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = *(a1 + 128);
  return result;
}

- (__n128)setTransform:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  return result;
}

- (__n128)intrinsics
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  return result;
}

- (__n128)setIntrinsics:(__n128)a3
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)pose
{
  result = *(a1 + 144);
  v2 = *(a1 + 160);
  v3 = *(a1 + 176);
  v4 = *(a1 + 192);
  return result;
}

- (__n128)setPose:(__n128)a3
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  result[12] = a5;
  return result;
}

- (__n128)initWithIntrinsic:(__n128)a3 transform:(__n128)a4
{
  v17.receiver = a1;
  v17.super_class = _OUCamera;
  v8 = [(_OUCamera *)&v17 init];
  if (v8)
  {
    *v8->_anon_20 = a2;
    *&v8->_anon_20[16] = a3;
    *&v8->_anon_20[32] = a4;
    *v8->_anon_50 = a5;
    result = a8;
    *&v8->_anon_50[16] = a6;
    *&v8->_anon_50[32] = a7;
    *&v8->_anon_50[48] = a8;
  }

  return result;
}

@end